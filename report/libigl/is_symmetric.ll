inline.NumInlined: 841
inline.NumDeleted: 432
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@_ZN3igl12is_symmetricIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEbRKNS1_10MatrixBaseIT_EE:bb.a
bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store ptr %0, ptr %2, align 8, !tbaa !15, !alias.scope !17
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = ptrtoint ptr %0 to i64
  store i64 %i.f, ptr %i.e, align 8, !alias.scope !17
  call void @_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_KNS_9TransposeIS7_EEEEEERKT_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(17) %2)
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !14
  %i.k = mul nsw i64 %i.j, %i.h
  %i.l = icmp eq i64 %i.k, 0
  %i.m = load ptr, ptr %1, align 8, !tbaa !20
  call void @free(ptr noundef %i.m) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.l, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef zeroext i1 @_ZN3igl12is_symmetricIdEEbRKN5Eigen12SparseMatrixIT_Li0EiEE(ptr noundef nonnull align 8 dereferenceable(72) %0) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.Eigen::SparseMatrix", align 8 ; 13 uses
  %2 = alloca %"class.Eigen::Transpose.13", align 8 ; 5 uses
  %3 = alloca %"class.Eigen::SparseMatrix", align 8 ; 12 uses
  %4 = alloca %"class.Eigen::CwiseBinaryOp.18", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !21   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !28
  %.not = icmp eq i64 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.b, 1
  br i1 %i.e, label %bb.u, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  store i8 0, ptr %2, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %0, ptr %i.f, align 8
  store i8 0, ptr %1, align 8, !tbaa !29
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.g, i8 0, i64 64, i1 false)
  %i.h = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_9TransposeIKS1_EEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.e unwind label %bb.d       ; 0 uses

common.resume:                                    ; preds = %.body, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.d ], [ %i.n, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.j) #18
  br label %common.resume

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  store i8 0, ptr %4, align 8, !tbaa !30, !alias.scope !32
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %0, ptr %i.k, align 8, !tbaa !35, !alias.scope !32
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %1, ptr %i.l, align 8, !tbaa !35, !alias.scope !32
  store i8 0, ptr %3, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.m, i8 0, i64 64, i1 false)
  invoke void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_20scalar_difference_opIddEEKS3_S7_EEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(25) %4)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_S7_EEEERKNS_16SparseMatrixBaseIT_EE.exit unwind label %.body

.body:                                            ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.o) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %1) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #18
  br label %common.resume

_ZN5Eigen12SparseMatrixIdLi0EiEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_S7_EEEERKNS_16SparseMatrixBaseIT_EE.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !37   ; 13 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_S7_EEEERKNS_16SparseMatrixBaseIT_EE.exit
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !38   ; 2 uses
  %i.u = load i64, ptr %i.m, align 8, !tbaa !28
  %i.v = getelementptr inbounds [4 x i8], ptr %i.t, i64 %i.u
  %i.w = load i32, ptr %i.v, align 4, !tbaa !39
  %i.x = load i32, ptr %i.t, align 4, !tbaa !39
  %i.y = sub nsw i32 %i.w, %i.x
  %i.z = sext i32 %i.y to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.g:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKS1_S7_EEEERKNS_16SparseMatrixBaseIT_EE.exit
  %i.aa = load i64, ptr %i.m, align 8, !tbaa !28  ; 11 uses
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ac = ptrtoint ptr %i.q to i64                ; 2 uses
  %i.ad = and i64 %i.ac, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ad, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.i, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ae = lshr exact i64 %i.ac, 2
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = and i64 %i.af, 3
  %i.ah = call i64 @llvm.smin.i64(i64 %i.ag, i64 %i.aa)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ah, %bb.i ], [ %i.aa, %bb.h ] ; 12 uses
  %i.ai = sub nsw i64 %i.aa, %.0.i.i.i.i.i.i.i.i  ; 5 uses
  %i.aj = sdiv i64 %i.ai, 8
  %i.ak = shl nsw i64 %i.aj, 3                    ; 2 uses
  %i.al = sdiv i64 %i.ai, 4                       ; 2 uses
  %i.am = shl nsw i64 %i.al, 2                    ; 2 uses
  %i.an = add nsw i64 %i.ak, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.ao = add nsw i64 %i.am, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.ai, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.n, label %bb.j

bb.j:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ap = getelementptr [4 x i8], ptr %i.q, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.aq = load <2 x i64>, ptr %i.ap, align 1, !tbaa !40 ; 2 uses
  %i.ar = icmp sgt i64 %i.ai, 7
  br i1 %i.ar, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr i8, ptr %i.ap, i64 16
  %i.at = load <4 x i32>, ptr %i.as, align 1, !tbaa !40 ; 2 uses
  %i.au = bitcast <2 x i64> %i.aq to <4 x i32>    ; 2 uses
  %i.av = icmp samesign ugt i64 %i.ai, 15
  br i1 %i.av, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.k
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.k
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.at, %bb.k ], [ %i.bg, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.au, %bb.k ], [ %i.bc, %.lr.ph.i.i.i.i ]
  %i.aw = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.ax = bitcast <4 x i32> %i.aw to <2 x i64>
  %i.ay = icmp sgt i64 %i.am, %i.ak
  br i1 %i.ay, label %bb.l, label %bb.m

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.bc, %.lr.ph.i.i.i.i ], [ %i.au, %.lr.ph.preheader.i.i.i.i ]
  %i.az = phi <4 x i32> [ %i.bg, %.lr.ph.i.i.i.i ], [ %i.at, %.lr.ph.preheader.i.i.i.i ]
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.05780.i.i.i.i
  %i.bb = load <4 x i32>, ptr %i.ba, align 1, !tbaa !40
  %i.bc = add <4 x i32> %i.bb, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.bd = getelementptr [4 x i8], ptr %i.q, i64 %.057.in79.i.i.i.i
  %i.be = getelementptr i8, ptr %i.bd, i64 48
  %i.bf = load <4 x i32>, ptr %i.be, align 1, !tbaa !40
  %i.bg = add <4 x i32> %i.bf, %i.az              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.bh = icmp slt i64 %.057.i.i.i.i, %i.an
  br i1 %i.bh, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !41

bb.l:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bi = getelementptr inbounds [4 x i8], ptr %i.q, i64 %i.an
  %i.bj = load <4 x i32>, ptr %i.bi, align 1, !tbaa !40
  %i.bk = add <4 x i32> %i.bj, %i.aw
  %i.bl = bitcast <4 x i32> %i.bk to <2 x i64>
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %._crit_edge.i.i.i.i, %bb.j
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.aq, %bb.j ], [ %i.bl, %bb.l ], [ %i.ax, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bm = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.bn = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.bo = shufflevector <4 x i32> %i.bn, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bp = add <4 x i32> %i.bo, %i.bm              ; 2 uses
  %shift = shufflevector <4 x i32> %i.bp, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.bp, %shift ; 2 uses
  %5 = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bq = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bq, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.m
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader83, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.br = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.br, %vector.ph ], [ %i.bu, %vector.body ]
  %vec.phi40 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bv, %vector.body ]
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %wide.load = load <4 x i32>, ptr %i.bs, align 4, !tbaa !39
  %wide.load41 = load <4 x i32>, ptr %i.bt, align 4, !tbaa !39
  %i.bu = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bv = add <4 x i32> %wide.load41, %vec.phi40  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !43

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bv, %i.bu
  %i.bx = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader83

.lr.ph85.i.i.i.i.preheader83:                     ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %5, %.lr.ph85.i.i.i.i.preheader ], [ %i.bx, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.m
  %.075.lcssa.i.i.i.i = phi i32 [ %5, %bb.m ], [ %i.bx, %middle.block ], [ %i.cn, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.by = icmp slt i64 %i.ao, %i.aa
  br i1 %i.by, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.bz = shl nsw i64 %i.al, 2
  %i.ca = add i64 %.0.i.i.i.i.i.i.i.i, %i.bz
  %i.cb = sub i64 %i.aa, %i.ca                    ; 3 uses
  %min.iters.check43 = icmp ult i64 %i.cb, 8
  br i1 %min.iters.check43, label %.lr.ph89.i.i.i.i.preheader78, label %vector.ph44

vector.ph44:                                      ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec45 = and i64 %i.cb, -8                    ; 3 uses
  %i.cc = add i64 %i.ao, %n.vec45
  %i.cd = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.ce = getelementptr [4 x i8], ptr %i.q, i64 %i.ao
  br label %vector.body46

vector.body46:                                    ; preds = %vector.body46, %vector.ph44
  %index47 = phi i64 [ 0, %vector.ph44 ], [ %index.next52, %vector.body46 ] ; 2 uses
  %vec.phi48 = phi <4 x i32> [ %i.cd, %vector.ph44 ], [ %i.ch, %vector.body46 ]
  %vec.phi49 = phi <4 x i32> [ zeroinitializer, %vector.ph44 ], [ %i.ci, %vector.body46 ]
  %i.cf = getelementptr [4 x i8], ptr %i.ce, i64 %index47 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %wide.load50 = load <4 x i32>, ptr %i.cf, align 4, !tbaa !39
  %wide.load51 = load <4 x i32>, ptr %i.cg, align 4, !tbaa !39
  %i.ch = add <4 x i32> %wide.load50, %vec.phi48  ; 2 uses
  %i.ci = add <4 x i32> %wide.load51, %vec.phi49  ; 2 uses
  %index.next52 = add nuw i64 %index47, 8         ; 2 uses
  %i.cj = icmp eq i64 %index.next52, %n.vec45
  br i1 %i.cj, label %middle.block53, label %vector.body46, !llvm.loop !46

middle.block53:                                   ; preds = %vector.body46
  %bin.rdx54 = add <4 x i32> %i.ci, %i.ch
  %i.ck = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx54) ; 2 uses
  %cmp.n55 = icmp eq i64 %i.cb, %n.vec45
  br i1 %cmp.n55, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph89.i.i.i.i.preheader78

.lr.ph89.i.i.i.i.preheader78:                     ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block53
  %.05588.i.i.i.i.ph = phi i64 [ %i.ao, %.lr.ph89.i.i.i.i.preheader ], [ %i.cc, %middle.block53 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.ck, %middle.block53 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader83, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.co, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader83 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.cn, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader83 ]
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.05683.i.i.i.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !39
  %i.cn = add nsw i32 %i.cm, %.07582.i.i.i.i      ; 2 uses
  %i.co = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.co, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !47

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader78, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.cs, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader78 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.cr, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader78 ]
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.q, i64 %.05588.i.i.i.i
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !39
  %i.cr = add nsw i32 %i.cq, %.187.i.i.i.i        ; 2 uses
  %i.cs = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.ct = icmp slt i64 %i.cs, %i.aa
  br i1 %i.ct, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, !llvm.loop !48

bb.n:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.cu = load i32, ptr %i.q, align 4, !tbaa !39  ; 3 uses
  %i.cv = icmp sgt i64 %i.aa, 1
  br i1 %i.cv, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.n
  %i.cw = add nsw i64 %i.aa, -1                   ; 2 uses
  %min.iters.check59 = icmp ult i64 %i.aa, 9
  br i1 %min.iters.check59, label %.lr.ph94.i.i.i.i.preheader75, label %vector.ph60

vector.ph60:                                      ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec61 = and i64 %i.cw, -8                    ; 3 uses
  %i.cx = or disjoint i64 %n.vec61, 1
  %i.cy = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cu, i64 0
  br label %vector.body62

vector.body62:                                    ; preds = %vector.body62, %vector.ph60
  %index63 = phi i64 [ 0, %vector.ph60 ], [ %index.next68, %vector.body62 ] ; 2 uses
  %vec.phi64 = phi <4 x i32> [ %i.cy, %vector.ph60 ], [ %i.dc, %vector.body62 ]
  %vec.phi65 = phi <4 x i32> [ zeroinitializer, %vector.ph60 ], [ %i.dd, %vector.body62 ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %index63 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 20
  %wide.load66 = load <4 x i32>, ptr %i.da, align 4, !tbaa !39
  %wide.load67 = load <4 x i32>, ptr %i.db, align 4, !tbaa !39
  %i.dc = add <4 x i32> %wide.load66, %vec.phi64  ; 2 uses
  %i.dd = add <4 x i32> %wide.load67, %vec.phi65  ; 2 uses
  %index.next68 = add nuw i64 %index63, 8         ; 2 uses
  %i.de = icmp eq i64 %index.next68, %n.vec61
  br i1 %i.de, label %middle.block69, label %vector.body62, !llvm.loop !49

middle.block69:                                   ; preds = %vector.body62
  %bin.rdx70 = add <4 x i32> %i.dd, %i.dc
  %i.df = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx70) ; 2 uses
  %cmp.n71 = icmp eq i64 %i.cw, %n.vec61
  br i1 %cmp.n71, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i.preheader75

.lr.ph94.i.i.i.i.preheader75:                     ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block69
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.cx, %middle.block69 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.cu, %.lr.ph94.i.i.i.i.preheader ], [ %i.df, %middle.block69 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader75, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.dj, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader75 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.di, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader75 ]
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %.092.i.i.i.i
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !39
  %i.di = add nsw i32 %i.dh, %.291.i.i.i.i        ; 2 uses
  %i.dj = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.dj, %i.aa
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, label %.lr.ph94.i.i.i.i, !llvm.loop !50

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block53, %middle.block69, %bb.n, %.preheader.i.i.i.i
  %.0.i.i = phi i32 [ %i.di, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.cu, %bb.n ], [ %i.df, %middle.block69 ], [ %i.ck, %middle.block53 ], [ %i.cr, %.lr.ph89.i.i.i.i ]
  %i.dk = sext i32 %.0.i.i to i64
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i, %bb.g, %bb.f
  %.0.i = phi i64 [ %i.z, %bb.f ], [ %i.dk, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i ], [ 0, %bb.g ]
  %i.dl = icmp eq i64 %.0.i, 0
  %i.dm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !38
  call void @free(ptr noundef %i.dn) #18
  %i.do = load ptr, ptr %i.p, align 8, !tbaa !37
  call void @free(ptr noundef %i.do) #18
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !51 ; 2 uses
  %i.dr = icmp eq ptr %i.dq, null
  br i1 %i.dr, label %bb.p, label %bb.o

bb.o:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  call void @_ZdaPv(ptr noundef nonnull %i.dq) #19
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !52 ; 2 uses
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @_ZdaPv(ptr noundef nonnull %i.dt) #19
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.p, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #18
  %i.dv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !38
  call void @free(ptr noundef %i.dw) #18
  %i.dx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !37
  call void @free(ptr noundef %i.dy) #18
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !51 ; 2 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %i.ea) #19
end_hunk_0
