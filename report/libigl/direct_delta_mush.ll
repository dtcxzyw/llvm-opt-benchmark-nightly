Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/direct_delta_mush?download=true
inline.NumInlined: 8135
inline.NumDeleted: 4104
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 42
loop-unroll.NumUnrolled: 65
begin_hunk_0_@_ZNK5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEESA_EEvRKNS_10MatrixBaseIT_EERNSB_IT0_EE:bb.a
  br label %.lr.ph89.i.i.i.i25

.lr.ph85.i.i.i.i28:                               ; preds = %.lr.ph85.i.i.i.i28.preheader278, %.lr.ph85.i.i.i.i28
  %.05683.i.i.i.i29 = phi i64 [ %i.oa, %.lr.ph85.i.i.i.i28 ], [ %.05683.i.i.i.i29.ph, %.lr.ph85.i.i.i.i28.preheader278 ] ; 2 uses
  %.07582.i.i.i.i30 = phi i32 [ %i.nz, %.lr.ph85.i.i.i.i28 ], [ %.07582.i.i.i.i30.ph, %.lr.ph85.i.i.i.i28.preheader278 ]
  %i.nx = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %.05683.i.i.i.i29
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !125
  %i.nz = add nsw i32 %i.ny, %.07582.i.i.i.i30    ; 2 uses
  %i.oa = add nuw nsw i64 %.05683.i.i.i.i29, 1    ; 2 uses
  %exitcond.not.i.i.i.i31 = icmp eq i64 %i.oa, %.0.i.i.i.i.i.i.i.i14
  br i1 %exitcond.not.i.i.i.i31, label %.preheader.i.i.i.i20, label %.lr.ph85.i.i.i.i28, !llvm.loop !580

.lr.ph89.i.i.i.i25:                               ; preds = %.lr.ph89.i.i.i.i25.preheader273, %.lr.ph89.i.i.i.i25
  %.05588.i.i.i.i26 = phi i64 [ %i.oe, %.lr.ph89.i.i.i.i25 ], [ %.05588.i.i.i.i26.ph, %.lr.ph89.i.i.i.i25.preheader273 ] ; 2 uses
  %.187.i.i.i.i27 = phi i32 [ %i.od, %.lr.ph89.i.i.i.i25 ], [ %.187.i.i.i.i27.ph, %.lr.ph89.i.i.i.i25.preheader273 ]
  %i.ob = getelementptr inbounds [4 x i8], ptr %i.lb, i64 %.05588.i.i.i.i26
  %i.oc = load i32, ptr %i.ob, align 4, !tbaa !125
  %i.od = add nsw i32 %i.oc, %.187.i.i.i.i27      ; 2 uses
  %i.oe = add nsw i64 %.05588.i.i.i.i26, 1        ; 2 uses
  %i.of = icmp slt i64 %i.oe, %i.lm
  br i1 %i.of, label %.lr.ph89.i.i.i.i25, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46, !llvm.loop !581

bb.ak:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i13
  %i.og = load i32, ptr %i.lb, align 4, !tbaa !125 ; 3 uses
  %i.oh = icmp sgt i64 %i.lm, 1
  br i1 %i.oh, label %.lr.ph94.i.i.i.i42.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46

.lr.ph94.i.i.i.i42.preheader:                     ; preds = %bb.ak
  %i.oi = add nsw i64 %i.lm, -1                   ; 2 uses
  %min.iters.check251 = icmp ult i64 %i.lm, 9
  br i1 %min.iters.check251, label %.lr.ph94.i.i.i.i42.preheader270, label %vector.ph252

vector.ph252:                                     ; preds = %.lr.ph94.i.i.i.i42.preheader
  %n.vec253 = and i64 %i.oi, -8                   ; 3 uses
  %i.oj = or disjoint i64 %n.vec253, 1
  %i.ok = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.og, i64 0
  br label %vector.body254

vector.body254:                                   ; preds = %vector.body254, %vector.ph252
  %index255 = phi i64 [ 0, %vector.ph252 ], [ %index.next260, %vector.body254 ] ; 2 uses
  %vec.phi256 = phi <4 x i32> [ %i.ok, %vector.ph252 ], [ %i.oo, %vector.body254 ]
  %vec.phi257 = phi <4 x i32> [ zeroinitializer, %vector.ph252 ], [ %i.op, %vector.body254 ]
  %i.ol = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %index255 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 4
  %i.on = getelementptr inbounds nuw i8, ptr %i.ol, i64 20
  %wide.load258 = load <4 x i32>, ptr %i.om, align 4, !tbaa !125
  %wide.load259 = load <4 x i32>, ptr %i.on, align 4, !tbaa !125
  %i.oo = add <4 x i32> %wide.load258, %vec.phi256 ; 2 uses
  %i.op = add <4 x i32> %wide.load259, %vec.phi257 ; 2 uses
  %index.next260 = add nuw i64 %index255, 8       ; 2 uses
  %i.oq = icmp eq i64 %index.next260, %n.vec253
  br i1 %i.oq, label %middle.block261, label %vector.body254, !llvm.loop !582

middle.block261:                                  ; preds = %vector.body254
  %bin.rdx262 = add <4 x i32> %i.op, %i.oo
  %i.or = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx262) ; 2 uses
  %cmp.n263 = icmp eq i64 %i.oi, %n.vec253
  br i1 %cmp.n263, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46, label %.lr.ph94.i.i.i.i42.preheader270

.lr.ph94.i.i.i.i42.preheader270:                  ; preds = %.lr.ph94.i.i.i.i42.preheader, %middle.block261
  %.092.i.i.i.i43.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i42.preheader ], [ %i.oj, %middle.block261 ]
  %.291.i.i.i.i44.ph = phi i32 [ %i.og, %.lr.ph94.i.i.i.i42.preheader ], [ %i.or, %middle.block261 ]
  br label %.lr.ph94.i.i.i.i42

.lr.ph94.i.i.i.i42:                               ; preds = %.lr.ph94.i.i.i.i42.preheader270, %.lr.ph94.i.i.i.i42
  %.092.i.i.i.i43 = phi i64 [ %i.ov, %.lr.ph94.i.i.i.i42 ], [ %.092.i.i.i.i43.ph, %.lr.ph94.i.i.i.i42.preheader270 ] ; 2 uses
  %.291.i.i.i.i44 = phi i32 [ %i.ou, %.lr.ph94.i.i.i.i42 ], [ %.291.i.i.i.i44.ph, %.lr.ph94.i.i.i.i42.preheader270 ]
  %i.os = getelementptr inbounds nuw [4 x i8], ptr %i.lb, i64 %.092.i.i.i.i43
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !125
  %i.ou = add nsw i32 %i.ot, %.291.i.i.i.i44      ; 2 uses
  %i.ov = add nuw nsw i64 %.092.i.i.i.i43, 1      ; 2 uses
  %exitcond102.not.i.i.i.i45 = icmp eq i64 %i.ov, %i.lm
  br i1 %exitcond102.not.i.i.i.i45, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46, label %.lr.ph94.i.i.i.i42, !llvm.loop !583

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46: ; preds = %.lr.ph89.i.i.i.i25, %.lr.ph94.i.i.i.i42, %middle.block245, %middle.block261, %.preheader.i.i.i.i20, %bb.ak, %bb.ac
  %.0.i24.in = phi i32 [ %i.lk, %bb.ac ], [ %i.ou, %.lr.ph94.i.i.i.i42 ], [ %.075.lcssa.i.i.i.i21, %.preheader.i.i.i.i20 ], [ %i.og, %bb.ak ], [ %i.or, %middle.block261 ], [ %i.nw, %middle.block245 ], [ %i.od, %.lr.ph89.i.i.i.i25 ]
  %i.ow = icmp sgt i32 %.0.i24.in, 0
  br i1 %i.ow, label %bb.al, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread

bb.al:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  store i8 0, ptr %5, align 8, !tbaa !591, !alias.scope !592
  %i.ox = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i8 0, ptr %i.ox, align 8, !alias.scope !592
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.cb, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !592
  call void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi6ELi2ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(16) %i.ox, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread: ; preds = %bb.ad, %bb.al, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46
  %i.oy = load i64, ptr %i.d, align 8, !tbaa !163
  %i.oz = icmp sgt i64 %i.oy, 0
  br i1 %i.oz, label %bb.am, label %bb.aq

bb.am:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread
  %i.pa = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.pb = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.pc = load i64, ptr %i.pb, align 8, !tbaa !163 ; 5 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.pe = load i64, ptr %i.pd, align 8, !tbaa !25 ; 4 uses
  %i.pf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.pg = load i64, ptr %i.pf, align 8, !tbaa !22
  %.not.i.i.i.i.i49 = icmp eq i64 %i.pg, %i.pc
  br i1 %.not.i.i.i.i.i49, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit56, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ph = icmp eq i64 %i.pc, 0
  %i.pi = icmp eq i64 %i.pe, 0
  %or.cond.i.i.i.i.i.i.i52 = or i1 %i.ph, %i.pi
  br i1 %or.cond.i.i.i.i.i.i.i52, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i53, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.pj = sdiv i64 9223372036854775807, %i.pe
  %i.pk = icmp sgt i64 %i.pc, %i.pj
  br i1 %i.pk, label %bb.ap, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i53

bb.ap:                                            ; preds = %bb.ao
  %i.pl = call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.pl, align 8, !tbaa !82
  call void @__cxa_throw(ptr nonnull %i.pl, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i53: ; preds = %bb.ao, %bb.an
  %i.pm = mul nsw i64 %i.pe, %i.pc
  call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.pm, i64 noundef %i.pc, i64 noundef %i.pe)
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit56

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit56: ; preds = %bb.am, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i53
  call void @_ZN5Eigen8internal26permutation_matrix_productINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELb0ENS_10DenseShapeEE3runIS3_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.pa, ptr noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.aq

bb.aq:                                            ; preds = %bb.a, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit56, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit46.thread
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26permutation_matrix_productINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELb0ENS_10DenseShapeEE3runIS3_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !22   ; 13 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !36     ; 7 uses
  %i.d = ptrtoaddr ptr %i.c to i64
  %i.e = load ptr, ptr %2, align 8, !tbaa !36     ; 3 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = icmp eq ptr %i.c, %i.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 7 uses
  %i.j = icmp eq i64 %i.i, %i.b
  %i.k = select i1 %i.g, i1 %i.j, i1 false
  br i1 %i.k, label %bb.b, label %.preheader78

.preheader78:                                     ; preds = %bb.a
  %i.l = icmp sgt i64 %i.b, 0
  br i1 %i.l, label %.lr.ph, label %.loopexit79

.lr.ph:                                           ; preds = %.preheader78
  %i.m = load ptr, ptr %1, align 8, !tbaa !131
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !25   ; 7 uses
  %i.p = icmp sgt i64 %i.o, 0
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.preheader, label %.loopexit79

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.preheader:   ; preds = %.lr.ph
  %min.iters.check = icmp ult i64 %i.o, 14
  %ident.check = icmp ne i64 %i.i, 1
  %ident.check124 = icmp ne i64 %i.b, 1
  %i.q = or i1 %ident.check, %ident.check124
  %n.vec = and i64 %i.o, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.o, %n.vec
  %xtraiter = and i64 %i.o, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !163  ; 6 uses
  %i.t = icmp sgt i64 %i.s, 0
  br i1 %i.t, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %calloc = tail call ptr @calloc(i64 1, i64 %i.s) ; 11 uses
  %i.u = icmp eq ptr %calloc, null
  br i1 %i.u, label %.noexc.i, label %.preheader.lr.ph

.noexc.i:                                         ; preds = %bb.c
  %i.v = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.v, align 8, !tbaa !82
  tail call void @__cxa_throw(ptr nonnull %i.v, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

.preheader.lr.ph:                                 ; preds = %bb.c
  %i.w = load ptr, ptr %1, align 8                ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8
  %.fr90 = freeze i64 %i.y                        ; 9 uses
  %i.z = icmp sgt i64 %.fr90, 0
  br i1 %i.z, label %.preheader.us.preheader, label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %3 = shl i64 %.fr90, 3
  %scevgep131 = getelementptr i8, ptr %i.c, i64 %3
  %min.iters.check132 = icmp ugt i64 %.fr90, 5
  %ident.check127.not = icmp eq i64 %i.b, 1
  %or.cond = select i1 %min.iters.check132, i1 %ident.check127.not, i1 false
  %n.vec135 = and i64 %.fr90, 9223372036854775804 ; 3 uses
  %cmp.n144 = icmp eq i64 %.fr90, %n.vec135
  %xtraiter152 = and i64 %.fr90, 1
  %lcmp.mod153.not = icmp eq i64 %xtraiter152, 0
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %.loopexit.us
  %.03889.us = phi i64 [ %i.ag, %.loopexit.us ], [ 0, %.preheader.us.preheader ] ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.preheader.us
  %indvar = phi i64 [ %indvar.next, %bb.e ], [ 0, %.preheader.us ] ; 2 uses
  %.182.us = phi i64 [ %i.ad, %bb.e ], [ %.03889.us, %.preheader.us ] ; 8 uses
  %i.aa = getelementptr inbounds i8, ptr %calloc, i64 %.182.us
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !150, !range !71, !noundef !72
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ad = add nsw i64 %.182.us, 1                 ; 2 uses
  %i.ae = icmp slt i64 %i.ad, %i.s
  %indvar.next = add i64 %indvar, 1
  br i1 %i.ae, label %bb.d, label %.critedge, !llvm.loop !593

bb.f:                                             ; preds = %bb.d
  %i.af = getelementptr inbounds i8, ptr %calloc, i64 %.182.us
  %i.ag = add nsw i64 %.182.us, 1                 ; 2 uses
  store i8 1, ptr %i.af, align 1, !tbaa !150
  %.037.in.in83.us = getelementptr inbounds [4 x i8], ptr %i.w, i64 %.182.us
  %.037.in84.us = load i32, ptr %.037.in.in83.us, align 4, !tbaa !125
  %.03785.us = sext i32 %.037.in84.us to i64      ; 2 uses
  %.not4486.us = icmp eq i64 %.182.us, %.03785.us
  br i1 %.not4486.us, label %.loopexit.us, label %.lr.ph88.us

.lr.ph88.us:                                      ; preds = %bb.f
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.182.us ; 5 uses
  %i.ai = add i64 %.fr90, %.03889.us
  %i.aj = add i64 %indvar, %i.ai
  %i.ak = shl i64 %i.aj, 3
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.ak
  br label %.lr.ph.i.i.i.i.i.i.preheader.us.us

.lr.ph.i.i.i.i.i.i.preheader.us.us:               ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4swapIS4_EEvRKNS0_IT_EE.exit.loopexit.us.us, %.lr.ph88.us
  %.03787.us.us = phi i64 [ %.03785.us, %.lr.ph88.us ], [ %.037.us.us, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4swapIS4_EEvRKNS0_IT_EE.exit.loopexit.us.us ] ; 4 uses
  %i.al = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.03787.us.us ; 5 uses
  br i1 %or.cond, label %vector.memcheck133, label %.lr.ph.i.i.i.i.i.i.us.us.preheader

vector.memcheck133:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader.us.us
  %i.am = shl nsw i64 %.03787.us.us, 3
  %i.an = getelementptr i8, ptr %scevgep131, i64 %i.am
  %bound0 = icmp ult ptr %i.al, %scevgep
  %bound1 = icmp ult ptr %i.ah, %i.an
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.us.us.preheader, label %vector.body136

vector.body136:                                   ; preds = %vector.memcheck133, %vector.body136
  %index137 = phi i64 [ %index.next142, %vector.body136 ], [ 0, %vector.memcheck133 ] ; 3 uses
  %i.ao = getelementptr inbounds [8 x i8], ptr %i.al, i64 %index137 ; 3 uses
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %index137 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %wide.load138 = load <2 x double>, ptr %i.ao, align 8, !tbaa !52, !alias.scope !605, !noalias !606
  %wide.load139 = load <2 x double>, ptr %i.aq, align 8, !tbaa !52, !alias.scope !605, !noalias !606
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %wide.load140 = load <2 x double>, ptr %i.ap, align 8, !tbaa !52, !alias.scope !606
  %wide.load141 = load <2 x double>, ptr %i.ar, align 8, !tbaa !52, !alias.scope !606
  store <2 x double> %wide.load140, ptr %i.ao, align 8, !tbaa !52, !alias.scope !605, !noalias !606
  store <2 x double> %wide.load141, ptr %i.aq, align 8, !tbaa !52, !alias.scope !605, !noalias !606
  store <2 x double> %wide.load138, ptr %i.ap, align 8, !tbaa !52, !alias.scope !606
  store <2 x double> %wide.load139, ptr %i.ar, align 8, !tbaa !52, !alias.scope !606
  %index.next142 = add nuw i64 %index137, 4       ; 2 uses
  %i.as = icmp eq i64 %index.next142, %n.vec135
  br i1 %i.as, label %middle.block143, label %vector.body136, !llvm.loop !597

middle.block143:                                  ; preds = %vector.body136
  br i1 %cmp.n144, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4swapIS4_EEvRKNS0_IT_EE.exit.loopexit.us.us, label %.lr.ph.i.i.i.i.i.i.us.us.preheader

.lr.ph.i.i.i.i.i.i.us.us.preheader:               ; preds = %vector.memcheck133, %.lr.ph.i.i.i.i.i.i.preheader.us.us, %middle.block143
  %.05.i.i.i.i.i.i.us.us.ph = phi i64 [ 0, %vector.memcheck133 ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader.us.us ], [ %n.vec135, %middle.block143 ] ; 4 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.us.us.ph, 1
  br i1 %lcmp.mod153.not, label %.lr.ph.i.i.i.i.i.i.us.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.us.us.prol

.lr.ph.i.i.i.i.i.i.us.us.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.us.us.preheader
  %i.at = mul nsw i64 %.05.i.i.i.i.i.i.us.us.ph, %i.b ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.at ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.at ; 2 uses
  %i.aw = load double, ptr %i.au, align 8, !tbaa !52
  %i.ax = load double, ptr %i.av, align 8, !tbaa !52
  store double %i.ax, ptr %i.au, align 8, !tbaa !52
  store double %i.aw, ptr %i.av, align 8, !tbaa !52
  %i.ay = or disjoint i64 %.05.i.i.i.i.i.i.us.us.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.us.us.prol.loopexit

.lr.ph.i.i.i.i.i.i.us.us.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.us.us.prol, %.lr.ph.i.i.i.i.i.i.us.us.preheader
  %.05.i.i.i.i.i.i.us.us.unr = phi i64 [ %.05.i.i.i.i.i.i.us.us.ph, %.lr.ph.i.i.i.i.i.i.us.us.preheader ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.us.us.prol ]
  %i.az = icmp eq i64 %.fr90, %.neg
  br i1 %i.az, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4swapIS4_EEvRKNS0_IT_EE.exit.loopexit.us.us, label %.lr.ph.i.i.i.i.i.i.us.us

.lr.ph.i.i.i.i.i.i.us.us:                         ; preds = %.lr.ph.i.i.i.i.i.i.us.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.us.us
  %.05.i.i.i.i.i.i.us.us = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i.i.us.us ], [ %.05.i.i.i.i.i.i.us.us.unr, %.lr.ph.i.i.i.i.i.i.us.us.prol.loopexit ] ; 3 uses
  %i.ba = mul nsw i64 %.05.i.i.i.i.i.i.us.us, %i.b ; 2 uses
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.ba ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.ba ; 2 uses
  %i.bd = load double, ptr %i.bb, align 8, !tbaa !52
  %i.be = load double, ptr %i.bc, align 8, !tbaa !52
  store double %i.be, ptr %i.bb, align 8, !tbaa !52
  store double %i.bd, ptr %i.bc, align 8, !tbaa !52
  %i.bf = add nuw nsw i64 %.05.i.i.i.i.i.i.us.us, 1
  %i.bg = mul nsw i64 %i.bf, %i.b                 ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.bg ; 2 uses
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.ah, i64 %i.bg ; 2 uses
  %i.bj = load double, ptr %i.bh, align 8, !tbaa !52
  %i.bk = load double, ptr %i.bi, align 8, !tbaa !52
  store double %i.bk, ptr %i.bh, align 8, !tbaa !52
  store double %i.bj, ptr %i.bi, align 8, !tbaa !52
  %i.bl = add nuw nsw i64 %.05.i.i.i.i.i.i.us.us, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.us.us.1 = icmp eq i64 %i.bl, %.fr90
  br i1 %exitcond.not.i.i.i.i.i.i.us.us.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4swapIS4_EEvRKNS0_IT_EE.exit.loopexit.us.us, label %.lr.ph.i.i.i.i.i.i.us.us, !llvm.loop !598

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4swapIS4_EEvRKNS0_IT_EE.exit.loopexit.us.us: ; preds = %.lr.ph.i.i.i.i.i.i.us.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.us.us, %middle.block143
  %i.bm = getelementptr inbounds i8, ptr %calloc, i64 %.03787.us.us
  store i8 1, ptr %i.bm, align 1, !tbaa !150
  %.037.in.in.us.us = getelementptr inbounds [4 x i8], ptr %i.w, i64 %.03787.us.us
  %.037.in.us.us = load i32, ptr %.037.in.in.us.us, align 4, !tbaa !125
  %.037.us.us = sext i32 %.037.in.us.us to i64    ; 2 uses
  %.not44.us.us = icmp eq i64 %.182.us, %.037.us.us
  br i1 %.not44.us.us, label %.loopexit.us, label %.lr.ph.i.i.i.i.i.i.preheader.us.us, !llvm.loop !599

.loopexit.us:                                     ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4swapIS4_EEvRKNS0_IT_EE.exit.loopexit.us.us, %bb.f
  %i.bn = icmp slt i64 %i.ag, %i.s
  br i1 %i.bn, label %.preheader.us, label %.critedge, !llvm.loop !600

.loopexit:                                        ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4swapIS4_EEvRKNS0_IT_EE.exit, %bb.h
  %i.bo = icmp slt i64 %i.bv, %i.s
  br i1 %i.bo, label %.preheader.backedge, label %.critedge

.preheader:                                       ; preds = %.preheader.lr.ph, %.preheader.backedge
  %.182 = phi i64 [ %.182.be, %.preheader.backedge ], [ 0, %.preheader.lr.ph ] ; 7 uses
  %i.bp = getelementptr inbounds i8, ptr %calloc, i64 %.182
  %i.bq = load i8, ptr %i.bp, align 1, !tbaa !150, !range !71, !noundef !72
  %i.br = trunc nuw i8 %i.bq to i1
  br i1 %i.br, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader
  %i.bs = add nsw i64 %.182, 1                    ; 2 uses
  %i.bt = icmp slt i64 %i.bs, %i.s
  br i1 %i.bt, label %.preheader.backedge, label %.critedge

.preheader.backedge:                              ; preds = %bb.g, %.loopexit
  %.182.be = phi i64 [ %i.bs, %bb.g ], [ %i.bv, %.loopexit ]
  br label %.preheader

bb.h:                                             ; preds = %.preheader
  %i.bu = getelementptr inbounds i8, ptr %calloc, i64 %.182
  %i.bv = add nsw i64 %.182, 1                    ; 2 uses
  store i8 1, ptr %i.bu, align 1, !tbaa !150
  %.037.in.in83 = getelementptr inbounds [4 x i8], ptr %i.w, i64 %.182
  %.037.in84 = load i32, ptr %.037.in.in83, align 4, !tbaa !125
  %.03785 = sext i32 %.037.in84 to i64            ; 2 uses
  %.not4486 = icmp eq i64 %.182, %.03785
  br i1 %.not4486, label %.loopexit, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4swapIS4_EEvRKNS0_IT_EE.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4swapIS4_EEvRKNS0_IT_EE.exit: ; preds = %bb.h, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4swapIS4_EEvRKNS0_IT_EE.exit
  %.03787 = phi i64 [ %.037, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4swapIS4_EEvRKNS0_IT_EE.exit ], [ %.03785, %bb.h ] ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %calloc, i64 %.03787
  store i8 1, ptr %i.bw, align 1, !tbaa !150
  %.037.in.in = getelementptr inbounds [4 x i8], ptr %i.w, i64 %.03787
  %.037.in = load i32, ptr %.037.in.in, align 4, !tbaa !125
  %.037 = sext i32 %.037.in to i64                ; 2 uses
  %.not44 = icmp eq i64 %.182, %.037
  br i1 %.not44, label %.loopexit, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE4swapIS4_EEvRKNS0_IT_EE.exit, !llvm.loop !599

.critedge:                                        ; preds = %.loopexit, %bb.g, %.loopexit.us, %bb.e, %bb.b
  %.sroa.068.076108 = phi ptr [ %calloc, %.loopexit.us ], [ null, %bb.b ], [ %calloc, %bb.e ], [ %calloc, %bb.g ], [ %calloc, %.loopexit ]
  tail call void @free(ptr noundef %.sroa.068.076108) #24
  br label %.loopexit79

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.preheader, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit
  %.081 = phi i64 [ %i.dt, %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.preheader ] ; 4 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %.081 ; 6 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.081
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !125
  %i.ca = sext i32 %i.bz to i64                   ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ca ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %i.q
  br i1 %brmerge, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader151, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %i.cc = shl i64 %.081, 3
  %i.cd = add i64 %i.cc, %i.f
  %i.ce = sub i64 %i.d, %i.cd
  %i.cf = shl nsw i64 %i.ca, 3
  %i.cg = add i64 %i.ce, %i.cf
  %i.ch = add i64 %i.cg, -1
  %diff.check = icmp ult i64 %i.ch, 31
  br i1 %diff.check, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader151, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %index ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %index ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %wide.load = load <2 x double>, ptr %i.cj, align 8, !tbaa !52
  %wide.load125 = load <2 x double>, ptr %i.ck, align 8, !tbaa !52
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store <2 x double> %wide.load, ptr %i.ci, align 8, !tbaa !52
  store <2 x double> %wide.load125, ptr %i.cl, align 8, !tbaa !52
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cm = icmp eq i64 %index.next, %n.vec
  br i1 %i.cm, label %middle.block, label %vector.body, !llvm.loop !601

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader151

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader151:          ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %vector.memcheck, %middle.block
  %.05.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ %n.vec, %middle.block ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader151, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.cs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader151 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader151 ]
  %i.cn = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, %i.i
  %i.co = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cn
  %i.cp = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, %i.b
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !52
  store double %i.cr, ptr %i.co, align 8, !tbaa !52
  %i.cs = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !602

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader151
  %.05.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader151 ], [ %i.cs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ct = sub nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.ph, %i.o
  %i.cu = icmp ugt i64 %i.ct, -4
  br i1 %i.cu, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ds, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cv = mul nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.i
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.cv
  %i.cx = mul nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, %i.b
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !52
  store double %i.cz, ptr %i.cw, align 8, !tbaa !52
  %i.da = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.db = mul nsw i64 %i.da, %i.i
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.db
  %i.dd = mul nuw nsw i64 %i.da, %i.b
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.dd
  %i.df = load double, ptr %i.de, align 8, !tbaa !52
  store double %i.df, ptr %i.dc, align 8, !tbaa !52
  %i.dg = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.dh = mul nsw i64 %i.dg, %i.i
  %i.di = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.dh
  %i.dj = mul nuw nsw i64 %i.dg, %i.b
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.dj
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !52
  store double %i.dl, ptr %i.di, align 8, !tbaa !52
  %i.dm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.dn = mul nsw i64 %i.dm, %i.i
  %i.do = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %i.dn
  %i.dp = mul nuw nsw i64 %i.dm, %i.b
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !52
  store double %i.dr, ptr %i.do, align 8, !tbaa !52
  %i.ds = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ds, %i.o
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !603

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %middle.block
  %i.dt = add nuw nsw i64 %.081, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.dt, %i.b
  br i1 %exitcond.not, label %.loopexit79, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, !llvm.loop !604

.loopexit79:                                      ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEaSINS0_IKS2_Li1ELin1ELb0EEEEERS3_RKNS_9DenseBaseIT_EE.exit.loopexit, %.preheader78, %.lr.ph, %.critedge
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKNS2_IdLin1ELi1ELi0ELin1ELi1EEEEEEES3_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #2 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !615, !nonnull !72, !align !130 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !616, !nonnull !72, !align !130 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !90   ; 5 uses
  %i.f = ptrtoaddr ptr %i.e to i64
  %i.g = load ptr, ptr %i.b, align 8, !tbaa !36   ; 4 uses
  %i.h = ptrtoaddr ptr %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !22   ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !89   ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.n = load i64, ptr %i.m, align 8, !tbaa !25   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !22
  %.not.i = icmp eq i64 %i.p, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %.not8.i = icmp eq i64 %i.r, %i.n
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = icmp eq i64 %i.l, 0
  %i.t = icmp eq i64 %i.n, 0
  %or.cond.i.i.i = or i1 %i.s, %i.t
  br i1 %or.cond.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = sdiv i64 9223372036854775807, %i.n
  %i.v = icmp sgt i64 %i.l, %i.u
  br i1 %i.v, label %.noexc, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

.noexc:                                           ; preds = %bb.c
  %i.w = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !82
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.c, %bb.b
  %i.x = mul nsw i64 %i.n, %i.l
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.x, i64 noundef %i.l, i64 noundef %i.n)
  %.pr = load i64, ptr %i.q, align 8, !tbaa !25
  %.pre = load i64, ptr %i.o, align 8, !tbaa !22
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.a
  %i.y = phi i64 [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.l, %bb.a ] ; 11 uses
  %i.z = phi i64 [ %.pr, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.n, %bb.a ] ; 2 uses
  %i.aa = load ptr, ptr %0, align 8, !tbaa !36    ; 4 uses
  %i.ab = and i64 %i.y, 1
  %i.ac = icmp sgt i64 %i.z, 0
  br i1 %i.ac, label %.lr.ph54.i.preheader, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS0_17scalar_inverse_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEES5_Li1EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSL_.exit

.lr.ph54.i.preheader:                             ; preds = %bb.d
  %i.ad = ptrtoaddr ptr %i.aa to i64              ; 2 uses
  %i.ae = shl i64 %i.y, 3
  %i.af = sub i64 %i.y, %i.j
  %i.ag = shl i64 %i.af, 3
  %i.ah = sub i64 %i.ad, %i.h
  %i.ai = sub i64 %i.ad, %i.f
  %invariant.op = add i64 %i.ai, -1
  %invariant.op40 = add i64 %i.ah, -1
  br label %.lr.ph54.i

.lr.ph54.i:                                       ; preds = %.lr.ph54.i.preheader, %._crit_edge.i
  %.03152.i = phi i64 [ %i.bu, %._crit_edge.i ], [ 0, %.lr.ph54.i.preheader ] ; 9 uses
end_hunk_0
