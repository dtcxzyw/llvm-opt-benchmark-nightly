inline.NumInlined: 1491
inline.NumDeleted: 706
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 12
begin_hunk_0

@_ZTISt9bad_alloc = external constant ptr
@_ZTVSt9bad_alloc = external constant { [5 x ptr] }, align 8
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl7hessianIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEdEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_12SparseMatrixIT1_Li0EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %4 = alloca %"class.Eigen::SparseMatrix", align 8 ; 15 uses
  %5 = alloca %"class.Eigen::SparseMatrix", align 8 ; 17 uses
  %6 = alloca %"class.Eigen::Block", align 8      ; 10 uses
  %7 = alloca %"class.Eigen::Block.12", align 8   ; 8 uses
  %8 = alloca %"class.Eigen::SparseMatrix", align 8 ; 15 uses
  %9 = alloca %"class.Eigen::Matrix", align 8     ; 9 uses
  %10 = alloca %"class.Eigen::DiagonalMatrix", align 8 ; 10 uses
  %11 = alloca %"class.Eigen::DiagonalWrapper", align 8 ; 9 uses
  %12 = alloca %"class.Eigen::Product", align 8   ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  store i8 0, ptr %4, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  store i64 -1, ptr %i.d, align 8, !tbaa !17
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, i8 0, i64 56, i1 false)
  %i.g = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #21 ; 3 uses
  store ptr %i.g, ptr %i.f, align 8, !tbaa !22
  %.not6.i = icmp eq ptr %i.g, null
  br i1 %.not6.i, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !23
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc54 unwind label %bb.c

.noexc54:                                         ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.ba, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.i, %bb.c ], [ %.pn39.pn.pn.pn, %bb.ba ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.j) #20
  br label %common.resume

_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit:         ; preds = %bb.a
  store i64 0, ptr %i.d, align 8, !tbaa !17
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  store i32 0, ptr %i.g, align 4
  invoke void @_ZN3igl4gradIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEEEEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERNS1_12SparseMatrixINS6_6ScalarELi0EiEEb(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 8 dereferenceable(72) %4, i1 noundef zeroext false)
          to label %bb.d unwind label %bb.t

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !25
  %sext = shl i64 %i.b, 32
  %i.n = ashr exact i64 %sext, 32                 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !27
  %i.q = mul nsw i64 %i.p, %i.n                   ; 2 uses
  store i8 0, ptr %5, align 8, !tbaa !14
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.r, i8 0, i64 64, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.m, ptr %i.s, align 8, !tbaa !28
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.u = shl i64 %i.q, 2
  %i.v = add i64 %i.u, 4
  %calloc = call ptr @calloc(i64 1, i64 %i.v)     ; 2 uses
  store ptr %calloc, ptr %i.t, align 8, !tbaa !22
  %.not6.i58 = icmp eq ptr %calloc, null
  br i1 %.not6.i58, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !23
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc59 unwind label %bb.f

.noexc59:                                         ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.y) #20
  br label %.body

bb.g:                                             ; preds = %bb.d
  store i64 %i.q, ptr %i.r, align 8, !tbaa !17
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.aa = load ptr, ptr %i.k, align 8, !tbaa !29  ; 13 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.f, align 8, !tbaa !22  ; 2 uses
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !17
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !30
  %i.ag = load i32, ptr %i.ac, align 4, !tbaa !30
  %i.ah = sub nsw i32 %i.af, %i.ag
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = load i64, ptr %i.d, align 8, !tbaa !17  ; 11 uses
  %i.aj = icmp eq i64 %i.ai, 0
  br i1 %i.aj, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread, label %bb.j

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread: ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 40
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit

bb.j:                                             ; preds = %bb.i
  %i.al = ptrtoint ptr %i.aa to i64               ; 2 uses
  %i.am = and i64 %i.al, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.k, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.k:                                             ; preds = %bb.j
  %i.an = lshr exact i64 %i.al, 2
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = and i64 %i.ao, 3
  %i.aq = call i64 @llvm.smin.i64(i64 %i.ap, i64 %i.ai)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.aq, %bb.k ], [ %i.ai, %bb.j ] ; 12 uses
  %i.ar = sub nsw i64 %i.ai, %.0.i.i.i.i.i.i.i.i  ; 5 uses
  %i.as = sdiv i64 %i.ar, 8
  %i.at = shl nsw i64 %i.as, 3                    ; 2 uses
  %i.au = sdiv i64 %i.ar, 4                       ; 2 uses
  %i.av = shl nsw i64 %i.au, 2                    ; 2 uses
  %i.aw = add nsw i64 %i.at, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.ax = add nsw i64 %i.av, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.ar, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ay = getelementptr [4 x i8], ptr %i.aa, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.az = load <2 x i64>, ptr %i.ay, align 1, !tbaa !31 ; 2 uses
  %i.ba = icmp sgt i64 %i.ar, 7
  br i1 %i.ba, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr i8, ptr %i.ay, i64 16
  %i.bc = load <4 x i32>, ptr %i.bb, align 1, !tbaa !31 ; 2 uses
  %i.bd = bitcast <2 x i64> %i.az to <4 x i32>    ; 2 uses
  %i.be = icmp samesign ugt i64 %i.ar, 15
  br i1 %i.be, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.m
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.m
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.bc, %bb.m ], [ %i.bp, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.bd, %bb.m ], [ %i.bl, %.lr.ph.i.i.i.i ]
  %i.bf = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.bg = bitcast <4 x i32> %i.bf to <2 x i64>
  %i.bh = icmp sgt i64 %i.av, %i.at
  br i1 %i.bh, label %bb.n, label %bb.o

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.bl, %.lr.ph.i.i.i.i ], [ %i.bd, %.lr.ph.preheader.i.i.i.i ]
  %i.bi = phi <4 x i32> [ %i.bp, %.lr.ph.i.i.i.i ], [ %i.bc, %.lr.ph.preheader.i.i.i.i ]
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %.05780.i.i.i.i
  %i.bk = load <4 x i32>, ptr %i.bj, align 1, !tbaa !31
  %i.bl = add <4 x i32> %i.bk, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.bm = getelementptr [4 x i8], ptr %i.aa, i64 %.057.in79.i.i.i.i
  %i.bn = getelementptr i8, ptr %i.bm, i64 48
  %i.bo = load <4 x i32>, ptr %i.bn, align 1, !tbaa !31
  %i.bp = add <4 x i32> %i.bo, %i.bi              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.bq = icmp slt i64 %.057.i.i.i.i, %i.aw
  br i1 %i.bq, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !32

bb.n:                                             ; preds = %._crit_edge.i.i.i.i
  %i.br = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %i.aw
  %i.bs = load <4 x i32>, ptr %i.br, align 1, !tbaa !31
  %i.bt = add <4 x i32> %i.bs, %i.bf
  %i.bu = bitcast <4 x i32> %i.bt to <2 x i64>
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %._crit_edge.i.i.i.i, %bb.l
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.az, %bb.l ], [ %i.bu, %bb.n ], [ %i.bg, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bv = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.bw = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.bx = shufflevector <4 x i32> %i.bw, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.by = add <4 x i32> %i.bx, %i.bv              ; 2 uses
  %shift = shufflevector <4 x i32> %i.by, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.by, %shift
  %13 = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.bw) ; 2 uses
  %i.bz = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bz, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.o
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader176, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.ca = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ca, %vector.ph ], [ %i.cd, %vector.body ]
  %vec.phi133 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ce, %vector.body ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 16
  %wide.load = load <4 x i32>, ptr %i.cb, align 4, !tbaa !30
  %wide.load134 = load <4 x i32>, ptr %i.cc, align 4, !tbaa !30
  %i.cd = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ce = add <4 x i32> %wide.load134, %vec.phi133 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !34

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ce, %i.cd
  %i.cg = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader176

.lr.ph85.i.i.i.i.preheader176:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %13, %.lr.ph85.i.i.i.i.preheader ], [ %i.cg, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.o
  %.075.lcssa.i.i.i.i = phi i32 [ %13, %bb.o ], [ %i.cg, %middle.block ], [ %i.cw, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.ch = icmp slt i64 %i.ax, %i.ai
  br i1 %i.ch, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.ci = shl nsw i64 %i.au, 2
  %i.cj = add i64 %.0.i.i.i.i.i.i.i.i, %i.ci
  %i.ck = sub i64 %i.ai, %i.cj                    ; 3 uses
  %min.iters.check136 = icmp ult i64 %i.ck, 8
  br i1 %min.iters.check136, label %.lr.ph89.i.i.i.i.preheader171, label %vector.ph137

vector.ph137:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec138 = and i64 %i.ck, -8                   ; 3 uses
  %i.cl = add i64 %i.ax, %n.vec138
  %i.cm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.cn = getelementptr [4 x i8], ptr %i.aa, i64 %i.ax
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph137
  %index140 = phi i64 [ 0, %vector.ph137 ], [ %index.next145, %vector.body139 ] ; 2 uses
  %vec.phi141 = phi <4 x i32> [ %i.cm, %vector.ph137 ], [ %i.cq, %vector.body139 ]
  %vec.phi142 = phi <4 x i32> [ zeroinitializer, %vector.ph137 ], [ %i.cr, %vector.body139 ]
  %i.co = getelementptr [4 x i8], ptr %i.cn, i64 %index140 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  %wide.load143 = load <4 x i32>, ptr %i.co, align 4, !tbaa !30
  %wide.load144 = load <4 x i32>, ptr %i.cp, align 4, !tbaa !30
  %i.cq = add <4 x i32> %wide.load143, %vec.phi141 ; 2 uses
  %i.cr = add <4 x i32> %wide.load144, %vec.phi142 ; 2 uses
  %index.next145 = add nuw i64 %index140, 8       ; 2 uses
  %i.cs = icmp eq i64 %index.next145, %n.vec138
  br i1 %i.cs, label %middle.block146, label %vector.body139, !llvm.loop !37

middle.block146:                                  ; preds = %vector.body139
  %bin.rdx147 = add <4 x i32> %i.cr, %i.cq
  %i.ct = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx147) ; 2 uses
  %cmp.n148 = icmp eq i64 %i.ck, %n.vec138
  br i1 %cmp.n148, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph89.i.i.i.i.preheader171

.lr.ph89.i.i.i.i.preheader171:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block146
  %.05588.i.i.i.i.ph = phi i64 [ %i.ax, %.lr.ph89.i.i.i.i.preheader ], [ %i.cl, %middle.block146 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.ct, %middle.block146 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader176, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.cx, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader176 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.cw, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader176 ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.05683.i.i.i.i
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !30
  %i.cw = add nsw i32 %i.cv, %.07582.i.i.i.i      ; 2 uses
  %i.cx = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.cx, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !38

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader171, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.db, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader171 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.da, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader171 ]
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.aa, i64 %.05588.i.i.i.i
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !30
  %i.da = add nsw i32 %i.cz, %.187.i.i.i.i        ; 2 uses
  %i.db = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.dc = icmp slt i64 %i.db, %i.ai
  br i1 %i.dc, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !39

bb.p:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.dd = load i32, ptr %i.aa, align 4, !tbaa !30 ; 3 uses
  %i.de = icmp sgt i64 %i.ai, 1
  br i1 %i.de, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.p
  %i.df = add nsw i64 %i.ai, -1                   ; 2 uses
  %min.iters.check152 = icmp ult i64 %i.ai, 9
  br i1 %min.iters.check152, label %.lr.ph94.i.i.i.i.preheader168, label %vector.ph153

vector.ph153:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec154 = and i64 %i.df, -8                   ; 3 uses
  %i.dg = or disjoint i64 %n.vec154, 1
  %i.dh = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.dd, i64 0
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph153
  %index156 = phi i64 [ 0, %vector.ph153 ], [ %index.next161, %vector.body155 ] ; 2 uses
  %vec.phi157 = phi <4 x i32> [ %i.dh, %vector.ph153 ], [ %i.dl, %vector.body155 ]
  %vec.phi158 = phi <4 x i32> [ zeroinitializer, %vector.ph153 ], [ %i.dm, %vector.body155 ]
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %index156 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 4
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  %wide.load159 = load <4 x i32>, ptr %i.dj, align 4, !tbaa !30
  %wide.load160 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !30
  %i.dl = add <4 x i32> %wide.load159, %vec.phi157 ; 2 uses
  %i.dm = add <4 x i32> %wide.load160, %vec.phi158 ; 2 uses
  %index.next161 = add nuw i64 %index156, 8       ; 2 uses
  %i.dn = icmp eq i64 %index.next161, %n.vec154
  br i1 %i.dn, label %middle.block162, label %vector.body155, !llvm.loop !40

middle.block162:                                  ; preds = %vector.body155
  %bin.rdx163 = add <4 x i32> %i.dm, %i.dl
  %i.do = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx163) ; 2 uses
  %cmp.n164 = icmp eq i64 %i.df, %n.vec154
  br i1 %cmp.n164, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i.preheader168

.lr.ph94.i.i.i.i.preheader168:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block162
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.dg, %middle.block162 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.dd, %.lr.ph94.i.i.i.i.preheader ], [ %i.do, %middle.block162 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader168, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.ds, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader168 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.dr, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader168 ]
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.092.i.i.i.i
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !30
  %i.dr = add nsw i32 %i.dq, %.291.i.i.i.i        ; 2 uses
  %i.ds = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.ds, %i.ai
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !41

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block146, %middle.block162, %.preheader.i.i.i.i, %bb.p, %bb.h
  %.0.i.i.sink = phi i32 [ %i.ah, %bb.h ], [ %i.dr, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.dd, %bb.p ], [ %i.do, %middle.block162 ], [ %i.ct, %middle.block146 ], [ %i.da, %.lr.ph89.i.i.i.i ] ; 2 uses
  %i.dt = sext i32 %.0.i.i.sink to i64            ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 3 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.dw = icmp sgt i32 %.0.i.i.sink, 0
  br i1 %i.dw, label %bb.q, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit

bb.q:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.dx = shl nuw nsw i64 %i.dt, 3
  %i.dy = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dx) #23
          to label %.noexc61 unwind label %bb.u   ; 2 uses

.noexc61:                                         ; preds = %bb.q
  %i.dz = shl nuw nsw i64 %i.dt, 2
  %i.ea = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dz) #23
          to label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i: ; preds = %.noexc61
  %i.eb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.dy) #24
  br label %.body62

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i: ; preds = %.noexc61
  store ptr %i.dy, ptr %i.du, align 8, !tbaa !42
  %i.ec = getelementptr inbounds nuw i8, ptr %5, i64 48
  store ptr %i.ea, ptr %i.ec, align 8, !tbaa !43
  store i64 %i.dt, ptr %i.dv, align 8, !tbaa !44
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit:   ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.ed = phi ptr [ %i.ak, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread ], [ %i.du, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i ], [ %i.du, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit ]
  %i.ee = icmp sgt i32 %i.c, 0
  br i1 %i.ee, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.eg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.eh = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.ei = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.ej = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.ek = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.em = getelementptr inbounds nuw i8, ptr %7, i64 24
  %wide.trip.count = and i64 %i.b, 2147483647
  br label %bb.v
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld:bb.a
bb.d:                                             ; preds = %bb.b
  %i.j = icmp ugt i64 %.sroa.speculated, 2305843009213693951
  %i.k = shl nuw i64 %.sroa.speculated, 3
  %i.l = select i1 %i.j, i64 -1, i64 %i.k
  %i.m = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.l) #23 ; 3 uses
  %i.n = icmp ugt i64 %.sroa.speculated, 4611686018427387903
  %i.o = shl nuw i64 %.sroa.speculated, 2
  %i.p = select i1 %i.n, i64 -1, i64 %i.o
  %i.q = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.p) #23
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i unwind label %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i:   ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !107
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.s, i64 %.sroa.speculated) ; 3 uses
  %i.t = icmp sgt i64 %.sroa.speculated.i, 0
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !42  ; 3 uses
  br i1 %i.t, label %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre23.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !43
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i
  %.idx.i = shl nuw nsw i64 %.sroa.speculated.i, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.m, ptr align 8 %.pre.i, i64 %.idx.i, i1 false)
  %.idx22.i = shl nuw nsw i64 %.sroa.speculated.i, 2
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !88   ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.q, ptr align 4 %i.v, i64 %.idx22.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i

_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i:  ; preds = %bb.d
  %i.w = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.m) #24
  resume { ptr, i32 } %i.w

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i: ; preds = %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i
  %i.x = phi ptr [ %.pre23.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i ], [ %i.v, %_ZN5Eigen8internal10smart_copyIdEEvPKT_S4_PS2_.exit.i ] ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.y, align 8, !tbaa !43
  store i64 %.sroa.speculated, ptr %i.a, align 8, !tbaa !44
  %i.z = icmp eq ptr %i.x, null
  br i1 %i.z, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.x) #24
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i:  ; preds = %bb.e, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i
  %i.aa = icmp eq ptr %.pre.i, null
  br i1 %i.aa, label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i) #24
  br label %_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit

_ZN5Eigen8internal17CompressedStorageIdiE10reallocateEl.exit: ; preds = %bb.f, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i, %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %1, ptr %i.ab, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen3RefIKNS_12SparseMatrixIdLi0EiEELi0ENS_11OuterStrideILin1EEEED2Ev(ptr noundef nonnull align 8 dead_on_return(137) dereferenceable(137) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load i8, ptr %i.a, align 8, !tbaa !94, !range !112, !noundef !90
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !22
  tail call void @free(ptr noundef %i.e) #20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !29
  tail call void @free(ptr noundef %i.g) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !87   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !88   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_ZdaPv(ptr noundef nonnull %i.l) #24
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.e, %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13SparseRefBaseINS_3RefIKNS_12SparseMatrixIdLi0EiEELi0ENS_11OuterStrideILin1EEEEEE9constructIS4_EEvRT_(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !22   ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !17   ; 24 uses
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = mul nsw i64 %i.g, %i.e
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !29, !nonnull !90, !noundef !90 ; 12 uses
  %i.k = icmp eq i64 %i.g, 0
  br i1 %i.k, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.m = and i64 %i.l, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.m, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.d, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.n = lshr exact i64 %i.l, 2
  %i.o = sub nsw i64 0, %i.n
  %i.p = and i64 %i.o, 3
  %i.q = tail call i64 @llvm.smin.i64(i64 %i.p, i64 %i.g)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.q, %bb.d ], [ %i.g, %bb.c ] ; 12 uses
  %i.r = sub nsw i64 %i.g, %.0.i.i.i.i.i.i.i.i    ; 5 uses
  %i.s = sdiv i64 %i.r, 8
  %i.t = shl nsw i64 %i.s, 3                      ; 2 uses
  %i.u = sdiv i64 %i.r, 4                         ; 2 uses
  %i.v = shl nsw i64 %i.u, 2                      ; 2 uses
  %i.w = add nsw i64 %i.t, %.0.i.i.i.i.i.i.i.i    ; 2 uses
  %i.x = add nsw i64 %i.v, %.0.i.i.i.i.i.i.i.i    ; 4 uses
  %.off.i.i.i.i = add i64 %i.r, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.i, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.y = getelementptr [4 x i8], ptr %i.j, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.z = load <2 x i64>, ptr %i.y, align 1, !tbaa !31 ; 2 uses
  %i.aa = icmp sgt i64 %i.r, 7
  br i1 %i.aa, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %i.y, i64 16
  %i.ac = load <4 x i32>, ptr %i.ab, align 1, !tbaa !31 ; 2 uses
  %i.ad = bitcast <2 x i64> %i.z to <4 x i32>     ; 2 uses
  %i.ae = icmp samesign ugt i64 %i.r, 15
  br i1 %i.ae, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.f
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.f
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.ac, %bb.f ], [ %i.ap, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.ad, %bb.f ], [ %i.al, %.lr.ph.i.i.i.i ]
  %i.af = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.ag = bitcast <4 x i32> %i.af to <2 x i64>
  %i.ah = icmp sgt i64 %i.v, %i.t
  br i1 %i.ah, label %bb.g, label %bb.h

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.al, %.lr.ph.i.i.i.i ], [ %i.ad, %.lr.ph.preheader.i.i.i.i ]
  %i.ai = phi <4 x i32> [ %i.ap, %.lr.ph.i.i.i.i ], [ %i.ac, %.lr.ph.preheader.i.i.i.i ]
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.05780.i.i.i.i
  %i.ak = load <4 x i32>, ptr %i.aj, align 1, !tbaa !31
  %i.al = add <4 x i32> %i.ak, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.am = getelementptr [4 x i8], ptr %i.j, i64 %.057.in79.i.i.i.i
  %i.an = getelementptr i8, ptr %i.am, i64 48
  %i.ao = load <4 x i32>, ptr %i.an, align 1, !tbaa !31
  %i.ap = add <4 x i32> %i.ao, %i.ai              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.aq = icmp slt i64 %.057.i.i.i.i, %i.w
  br i1 %i.aq, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !32

bb.g:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.w
  %i.as = load <4 x i32>, ptr %i.ar, align 1, !tbaa !31
  %i.at = add <4 x i32> %i.as, %i.af
  %i.au = bitcast <4 x i32> %i.at to <2 x i64>
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge.i.i.i.i, %bb.e
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.z, %bb.e ], [ %i.au, %bb.g ], [ %i.ag, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.av = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.aw = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32> ; 2 uses
  %i.ax = shufflevector <4 x i32> %i.aw, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ay = add <4 x i32> %i.ax, %i.av              ; 2 uses
  %shift = shufflevector <4 x i32> %i.ay, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.ay, %shift
  %2 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.aw) ; 2 uses
  %i.az = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.az, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.h
  %min.iters.check143 = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check143, label %.lr.ph85.i.i.i.i.preheader202, label %vector.ph144

vector.ph144:                                     ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec145 = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.ba = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph144
  %index147 = phi i64 [ 0, %vector.ph144 ], [ %index.next152, %vector.body146 ] ; 2 uses
  %vec.phi148 = phi <4 x i32> [ %i.ba, %vector.ph144 ], [ %i.bd, %vector.body146 ]
  %vec.phi149 = phi <4 x i32> [ zeroinitializer, %vector.ph144 ], [ %i.be, %vector.body146 ]
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index147 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %wide.load150 = load <4 x i32>, ptr %i.bb, align 4, !tbaa !30
  %wide.load151 = load <4 x i32>, ptr %i.bc, align 4, !tbaa !30
  %i.bd = add <4 x i32> %wide.load150, %vec.phi148 ; 2 uses
  %i.be = add <4 x i32> %wide.load151, %vec.phi149 ; 2 uses
  %index.next152 = add nuw i64 %index147, 8       ; 2 uses
  %i.bf = icmp eq i64 %index.next152, %n.vec145
  br i1 %i.bf, label %middle.block153, label %vector.body146, !llvm.loop !130

middle.block153:                                  ; preds = %vector.body146
  %bin.rdx154 = add <4 x i32> %i.be, %i.bd
  %i.bg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx154) ; 2 uses
  %cmp.n155 = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec145
  br i1 %cmp.n155, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader202

.lr.ph85.i.i.i.i.preheader202:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block153
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec145, %middle.block153 ]
  %.07582.i.i.i.i.ph = phi i32 [ %2, %.lr.ph85.i.i.i.i.preheader ], [ %i.bg, %middle.block153 ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block153, %bb.h
  %.075.lcssa.i.i.i.i = phi i32 [ %2, %bb.h ], [ %i.bg, %middle.block153 ], [ %i.bw, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.bh = icmp slt i64 %i.x, %i.g
  br i1 %i.bh, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.bi = shl nsw i64 %i.u, 2
  %i.bj = add i64 %.0.i.i.i.i.i.i.i.i, %i.bi
  %i.bk = sub i64 %i.g, %i.bj                     ; 3 uses
  %min.iters.check159 = icmp ult i64 %i.bk, 8
  br i1 %min.iters.check159, label %.lr.ph89.i.i.i.i.preheader197, label %vector.ph160

vector.ph160:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec161 = and i64 %i.bk, -8                   ; 3 uses
  %i.bl = add i64 %i.x, %n.vec161
  %i.bm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.bn = getelementptr [4 x i8], ptr %i.j, i64 %i.x
  br label %vector.body162

vector.body162:                                   ; preds = %vector.body162, %vector.ph160
  %index163 = phi i64 [ 0, %vector.ph160 ], [ %index.next168, %vector.body162 ] ; 2 uses
  %vec.phi164 = phi <4 x i32> [ %i.bm, %vector.ph160 ], [ %i.bq, %vector.body162 ]
  %vec.phi165 = phi <4 x i32> [ zeroinitializer, %vector.ph160 ], [ %i.br, %vector.body162 ]
  %i.bo = getelementptr [4 x i8], ptr %i.bn, i64 %index163 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load166 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !30
  %wide.load167 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !30
  %i.bq = add <4 x i32> %wide.load166, %vec.phi164 ; 2 uses
  %i.br = add <4 x i32> %wide.load167, %vec.phi165 ; 2 uses
  %index.next168 = add nuw i64 %index163, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next168, %n.vec161
  br i1 %i.bs, label %middle.block169, label %vector.body162, !llvm.loop !131

middle.block169:                                  ; preds = %vector.body162
  %bin.rdx170 = add <4 x i32> %i.br, %i.bq
  %i.bt = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx170) ; 2 uses
  %cmp.n171 = icmp eq i64 %i.bk, %n.vec161
  br i1 %cmp.n171, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph89.i.i.i.i.preheader197

.lr.ph89.i.i.i.i.preheader197:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block169
  %.05588.i.i.i.i.ph = phi i64 [ %i.x, %.lr.ph89.i.i.i.i.preheader ], [ %i.bl, %middle.block169 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.bt, %middle.block169 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader202, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.bx, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader202 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.bw, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader202 ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.05683.i.i.i.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !30
  %i.bw = add nsw i32 %i.bv, %.07582.i.i.i.i      ; 2 uses
  %i.bx = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.bx, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !132

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader197, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.cb, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader197 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.ca, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader197 ]
  %i.by = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.05588.i.i.i.i
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !30
  %i.ca = add nsw i32 %i.bz, %.187.i.i.i.i        ; 2 uses
  %i.cb = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cc = icmp slt i64 %i.cb, %i.g
  br i1 %i.cc, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !133

bb.i:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.cd = load i32, ptr %i.j, align 4, !tbaa !30  ; 3 uses
  %i.ce = icmp sgt i64 %i.g, 1
  br i1 %i.ce, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.i
  %i.cf = add nsw i64 %i.g, -1                    ; 3 uses
  %min.iters.check175 = icmp ult i64 %i.cf, 8
  br i1 %min.iters.check175, label %.lr.ph94.i.i.i.i.preheader194, label %vector.ph176

vector.ph176:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec177 = and i64 %i.cf, -8                   ; 3 uses
  %i.cg = or disjoint i64 %n.vec177, 1
  %i.ch = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.cd, i64 0
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next184, %vector.body178 ] ; 2 uses
  %vec.phi180 = phi <4 x i32> [ %i.ch, %vector.ph176 ], [ %i.cl, %vector.body178 ]
  %vec.phi181 = phi <4 x i32> [ zeroinitializer, %vector.ph176 ], [ %i.cm, %vector.body178 ]
  %i.ci = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index179 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 20
  %wide.load182 = load <4 x i32>, ptr %i.cj, align 4, !tbaa !30
  %wide.load183 = load <4 x i32>, ptr %i.ck, align 4, !tbaa !30
  %i.cl = add <4 x i32> %wide.load182, %vec.phi180 ; 2 uses
  %i.cm = add <4 x i32> %wide.load183, %vec.phi181 ; 2 uses
  %index.next184 = add nuw i64 %index179, 8       ; 2 uses
  %i.cn = icmp eq i64 %index.next184, %n.vec177
  br i1 %i.cn, label %middle.block185, label %vector.body178, !llvm.loop !134

middle.block185:                                  ; preds = %vector.body178
  %bin.rdx186 = add <4 x i32> %i.cm, %i.cl
  %i.co = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx186) ; 2 uses
  %cmp.n187 = icmp eq i64 %i.cf, %n.vec177
  br i1 %cmp.n187, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i.preheader194

.lr.ph94.i.i.i.i.preheader194:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block185
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.cg, %middle.block185 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.cd, %.lr.ph94.i.i.i.i.preheader ], [ %i.co, %middle.block185 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader194, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.cs, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader194 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.cr, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader194 ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.092.i.i.i.i
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !30
  %i.cr = add nsw i32 %i.cq, %.291.i.i.i.i        ; 2 uses
  %i.cs = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.cs, %i.g
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !135

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block169, %middle.block185, %.preheader.i.i.i.i, %bb.i, %bb.b
  %.0.i = phi i32 [ %i.cr, %.lr.ph94.i.i.i.i ], [ 0, %bb.b ], [ %i.cd, %bb.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.co, %middle.block185 ], [ %i.bt, %middle.block169 ], [ %i.ca, %.lr.ph89.i.i.i.i ]
  %i.ct = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cu = load <2 x ptr>, ptr %i.ct, align 8, !tbaa !128
  store i8 0, ptr %0, align 8, !tbaa !92
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %i.cv, align 8, !tbaa !136
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %i.cw, align 8, !tbaa !137
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i32 0, ptr %i.cx, align 8, !tbaa !30
  br label %bb.t

bb.j:                                             ; preds = %bb.a
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !29 ; 14 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.db = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.g
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !30
  %i.dd = load i32, ptr %i.b, align 4, !tbaa !30
  %i.de = sub nsw i32 %i.dc, %i.dd
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47

bb.l:                                             ; preds = %bb.j
  %i.df = icmp eq i64 %i.g, 0
  br i1 %i.df, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.dg = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.dh = and i64 %i.dg, 3
  %.not.i.i.i.i.i.i.i.i13 = icmp eq i64 %i.dh, 0
  br i1 %.not.i.i.i.i.i.i.i.i13, label %bb.n, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i14

bb.n:                                             ; preds = %bb.m
  %i.di = lshr exact i64 %i.dg, 2
  %i.dj = sub nsw i64 0, %i.di
  %i.dk = and i64 %i.dj, 3
  %i.dl = tail call i64 @llvm.smin.i64(i64 %i.dk, i64 %i.g)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i14

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i14: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i15 = phi i64 [ %i.dl, %bb.n ], [ %i.g, %bb.m ] ; 12 uses
  %i.dm = sub nsw i64 %i.g, %.0.i.i.i.i.i.i.i.i15 ; 5 uses
  %i.dn = sdiv i64 %i.dm, 8
  %i.do = shl nsw i64 %i.dn, 3                    ; 2 uses
  %i.dp = sdiv i64 %i.dm, 4                       ; 2 uses
  %i.dq = shl nsw i64 %i.dp, 2                    ; 2 uses
  %i.dr = add nsw i64 %i.do, %.0.i.i.i.i.i.i.i.i15 ; 2 uses
  %i.ds = add nsw i64 %i.dq, %.0.i.i.i.i.i.i.i.i15 ; 4 uses
  %.off.i.i.i.i16 = add i64 %i.dm, 3
  %.not.i.i.i.i17 = icmp ult i64 %.off.i.i.i.i16, 7
  br i1 %.not.i.i.i.i17, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i14
  %i.dt = getelementptr [4 x i8], ptr %i.cz, i64 %.0.i.i.i.i.i.i.i.i15 ; 2 uses
  %i.du = load <2 x i64>, ptr %i.dt, align 1, !tbaa !31 ; 2 uses
  %i.dv = icmp sgt i64 %i.dm, 7
  br i1 %i.dv, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.dw = getelementptr i8, ptr %i.dt, i64 16
  %i.dx = load <4 x i32>, ptr %i.dw, align 1, !tbaa !31 ; 2 uses
  %i.dy = bitcast <2 x i64> %i.du to <4 x i32>    ; 2 uses
  %i.dz = icmp samesign ugt i64 %i.dm, 15
  br i1 %i.dz, label %.lr.ph.preheader.i.i.i.i36, label %._crit_edge.i.i.i.i33

.lr.ph.preheader.i.i.i.i36:                       ; preds = %bb.p
  %.05777.i.i.i.i37 = add nsw i64 %.0.i.i.i.i.i.i.i.i15, 8
  br label %.lr.ph.i.i.i.i38

._crit_edge.i.i.i.i33:                            ; preds = %.lr.ph.i.i.i.i38, %bb.p
  %.lcssa.i.i.i.i34 = phi <4 x i32> [ %i.dx, %bb.p ], [ %i.ek, %.lr.ph.i.i.i.i38 ]
  %.sroa.067.0.lcssa.i.i.i.i35 = phi <4 x i32> [ %i.dy, %bb.p ], [ %i.eg, %.lr.ph.i.i.i.i38 ]
  %i.ea = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i35, %.lcssa.i.i.i.i34 ; 2 uses
  %i.eb = bitcast <4 x i32> %i.ea to <2 x i64>
  %i.ec = icmp sgt i64 %i.dq, %i.do
  br i1 %i.ec, label %bb.q, label %bb.r

.lr.ph.i.i.i.i38:                                 ; preds = %.lr.ph.i.i.i.i38, %.lr.ph.preheader.i.i.i.i36
  %.05780.i.i.i.i39 = phi i64 [ %.057.i.i.i.i42, %.lr.ph.i.i.i.i38 ], [ %.05777.i.i.i.i37, %.lr.ph.preheader.i.i.i.i36 ] ; 3 uses
  %.057.in79.i.i.i.i40 = phi i64 [ %.05780.i.i.i.i39, %.lr.ph.i.i.i.i38 ], [ %.0.i.i.i.i.i.i.i.i15, %.lr.ph.preheader.i.i.i.i36 ]
  %.sroa.067.078.i.i.i.i41 = phi <4 x i32> [ %i.eg, %.lr.ph.i.i.i.i38 ], [ %i.dy, %.lr.ph.preheader.i.i.i.i36 ]
  %i.ed = phi <4 x i32> [ %i.ek, %.lr.ph.i.i.i.i38 ], [ %i.dx, %.lr.ph.preheader.i.i.i.i36 ]
  %i.ee = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %.05780.i.i.i.i39
  %i.ef = load <4 x i32>, ptr %i.ee, align 1, !tbaa !31
  %i.eg = add <4 x i32> %i.ef, %.sroa.067.078.i.i.i.i41 ; 2 uses
  %i.eh = getelementptr [4 x i8], ptr %i.cz, i64 %.057.in79.i.i.i.i40
  %i.ei = getelementptr i8, ptr %i.eh, i64 48
  %i.ej = load <4 x i32>, ptr %i.ei, align 1, !tbaa !31
  %i.ek = add <4 x i32> %i.ej, %i.ed              ; 2 uses
  %.057.i.i.i.i42 = add nsw i64 %.05780.i.i.i.i39, 8 ; 2 uses
  %i.el = icmp slt i64 %.057.i.i.i.i42, %i.dr
  br i1 %i.el, label %.lr.ph.i.i.i.i38, label %._crit_edge.i.i.i.i33, !llvm.loop !32

bb.q:                                             ; preds = %._crit_edge.i.i.i.i33
  %i.em = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %i.dr
  %i.en = load <4 x i32>, ptr %i.em, align 1, !tbaa !31
  %i.eo = add <4 x i32> %i.en, %i.ea
  %i.ep = bitcast <4 x i32> %i.eo to <2 x i64>
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i33, %bb.o
  %.sroa.067.2.i.i.i.i18 = phi <2 x i64> [ %i.du, %bb.o ], [ %i.ep, %bb.q ], [ %i.eb, %._crit_edge.i.i.i.i33 ] ; 2 uses
  %i.eq = bitcast <2 x i64> %.sroa.067.2.i.i.i.i18 to <4 x i32>
  %i.er = bitcast <2 x i64> %.sroa.067.2.i.i.i.i18 to <4 x i32> ; 2 uses
  %i.es = shufflevector <4 x i32> %i.er, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.et = add <4 x i32> %i.es, %i.eq              ; 2 uses
  %shift191 = shufflevector <4 x i32> %i.et, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop192 = add nsw <4 x i32> %i.et, %shift191
  %3 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.er) ; 2 uses
  %i.eu = icmp sgt i64 %.0.i.i.i.i.i.i.i.i15, 0
  br i1 %i.eu, label %.lr.ph85.i.i.i.i29.preheader, label %.preheader.i.i.i.i21

.lr.ph85.i.i.i.i29.preheader:                     ; preds = %bb.r
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i15, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i29.preheader217, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i29.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i15, 9223372036854775800 ; 3 uses
  %i.ev = shufflevector <4 x i32> %foldExtExtBinop192, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ev, %vector.ph ], [ %i.ey, %vector.body ]
  %vec.phi108 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.ez, %vector.body ]
  %i.ew = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %index ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %wide.load = load <4 x i32>, ptr %i.ew, align 4, !tbaa !30
  %wide.load109 = load <4 x i32>, ptr %i.ex, align 4, !tbaa !30
  %i.ey = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.ez = add <4 x i32> %wide.load109, %vec.phi108 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.fa = icmp eq i64 %index.next, %n.vec
  br i1 %i.fa, label %middle.block, label %vector.body, !llvm.loop !138

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.ez, %i.ey
  %i.fb = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i15, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i21, label %.lr.ph85.i.i.i.i29.preheader217

.lr.ph85.i.i.i.i29.preheader217:                  ; preds = %.lr.ph85.i.i.i.i29.preheader, %middle.block
  %.05683.i.i.i.i30.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i29.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i31.ph = phi i32 [ %3, %.lr.ph85.i.i.i.i29.preheader ], [ %i.fb, %middle.block ]
  br label %.lr.ph85.i.i.i.i29

.preheader.i.i.i.i21:                             ; preds = %.lr.ph85.i.i.i.i29, %middle.block, %bb.r
  %.075.lcssa.i.i.i.i22 = phi i32 [ %3, %bb.r ], [ %i.fb, %middle.block ], [ %i.fr, %.lr.ph85.i.i.i.i29 ] ; 3 uses
  %i.fc = icmp slt i64 %i.ds, %i.g
  br i1 %i.fc, label %.lr.ph89.i.i.i.i26.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47

.lr.ph89.i.i.i.i26.preheader:                     ; preds = %.preheader.i.i.i.i21
  %i.fd = shl nsw i64 %i.dp, 2
  %i.fe = add i64 %.0.i.i.i.i.i.i.i.i15, %i.fd
  %i.ff = sub i64 %i.g, %i.fe                     ; 3 uses
  %min.iters.check111 = icmp ult i64 %i.ff, 8
  br i1 %min.iters.check111, label %.lr.ph89.i.i.i.i26.preheader212, label %vector.ph112

vector.ph112:                                     ; preds = %.lr.ph89.i.i.i.i26.preheader
  %n.vec113 = and i64 %i.ff, -8                   ; 3 uses
  %i.fg = add i64 %i.ds, %n.vec113
  %i.fh = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i22, i64 0
  %i.fi = getelementptr [4 x i8], ptr %i.cz, i64 %i.ds
  br label %vector.body114

vector.body114:                                   ; preds = %vector.body114, %vector.ph112
  %index115 = phi i64 [ 0, %vector.ph112 ], [ %index.next120, %vector.body114 ] ; 2 uses
  %vec.phi116 = phi <4 x i32> [ %i.fh, %vector.ph112 ], [ %i.fl, %vector.body114 ]
  %vec.phi117 = phi <4 x i32> [ zeroinitializer, %vector.ph112 ], [ %i.fm, %vector.body114 ]
  %i.fj = getelementptr [4 x i8], ptr %i.fi, i64 %index115 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16
  %wide.load118 = load <4 x i32>, ptr %i.fj, align 4, !tbaa !30
  %wide.load119 = load <4 x i32>, ptr %i.fk, align 4, !tbaa !30
  %i.fl = add <4 x i32> %wide.load118, %vec.phi116 ; 2 uses
  %i.fm = add <4 x i32> %wide.load119, %vec.phi117 ; 2 uses
  %index.next120 = add nuw i64 %index115, 8       ; 2 uses
  %i.fn = icmp eq i64 %index.next120, %n.vec113
  br i1 %i.fn, label %middle.block121, label %vector.body114, !llvm.loop !139

middle.block121:                                  ; preds = %vector.body114
  %bin.rdx122 = add <4 x i32> %i.fm, %i.fl
  %i.fo = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx122) ; 2 uses
  %cmp.n123 = icmp eq i64 %i.ff, %n.vec113
  br i1 %cmp.n123, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47, label %.lr.ph89.i.i.i.i26.preheader212

.lr.ph89.i.i.i.i26.preheader212:                  ; preds = %.lr.ph89.i.i.i.i26.preheader, %middle.block121
  %.05588.i.i.i.i27.ph = phi i64 [ %i.ds, %.lr.ph89.i.i.i.i26.preheader ], [ %i.fg, %middle.block121 ]
  %.187.i.i.i.i28.ph = phi i32 [ %.075.lcssa.i.i.i.i22, %.lr.ph89.i.i.i.i26.preheader ], [ %i.fo, %middle.block121 ]
  br label %.lr.ph89.i.i.i.i26

.lr.ph85.i.i.i.i29:                               ; preds = %.lr.ph85.i.i.i.i29.preheader217, %.lr.ph85.i.i.i.i29
  %.05683.i.i.i.i30 = phi i64 [ %i.fs, %.lr.ph85.i.i.i.i29 ], [ %.05683.i.i.i.i30.ph, %.lr.ph85.i.i.i.i29.preheader217 ] ; 2 uses
  %.07582.i.i.i.i31 = phi i32 [ %i.fr, %.lr.ph85.i.i.i.i29 ], [ %.07582.i.i.i.i31.ph, %.lr.ph85.i.i.i.i29.preheader217 ]
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.05683.i.i.i.i30
  %i.fq = load i32, ptr %i.fp, align 4, !tbaa !30
  %i.fr = add nsw i32 %i.fq, %.07582.i.i.i.i31    ; 2 uses
  %i.fs = add nuw nsw i64 %.05683.i.i.i.i30, 1    ; 2 uses
  %exitcond.not.i.i.i.i32 = icmp eq i64 %i.fs, %.0.i.i.i.i.i.i.i.i15
  br i1 %exitcond.not.i.i.i.i32, label %.preheader.i.i.i.i21, label %.lr.ph85.i.i.i.i29, !llvm.loop !140

.lr.ph89.i.i.i.i26:                               ; preds = %.lr.ph89.i.i.i.i26.preheader212, %.lr.ph89.i.i.i.i26
  %.05588.i.i.i.i27 = phi i64 [ %i.fw, %.lr.ph89.i.i.i.i26 ], [ %.05588.i.i.i.i27.ph, %.lr.ph89.i.i.i.i26.preheader212 ] ; 2 uses
  %.187.i.i.i.i28 = phi i32 [ %i.fv, %.lr.ph89.i.i.i.i26 ], [ %.187.i.i.i.i28.ph, %.lr.ph89.i.i.i.i26.preheader212 ]
  %i.ft = getelementptr inbounds [4 x i8], ptr %i.cz, i64 %.05588.i.i.i.i27
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !30
  %i.fv = add nsw i32 %i.fu, %.187.i.i.i.i28      ; 2 uses
  %i.fw = add nsw i64 %.05588.i.i.i.i27, 1        ; 2 uses
  %i.fx = icmp slt i64 %i.fw, %i.g
  br i1 %i.fx, label %.lr.ph89.i.i.i.i26, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47, !llvm.loop !141

bb.s:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i14
  %i.fy = load i32, ptr %i.cz, align 4, !tbaa !30 ; 3 uses
  %i.fz = icmp sgt i64 %i.g, 1
  br i1 %i.fz, label %.lr.ph94.i.i.i.i43.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47

.lr.ph94.i.i.i.i43.preheader:                     ; preds = %bb.s
  %i.ga = add nsw i64 %i.g, -1                    ; 2 uses
  %min.iters.check127 = icmp ult i64 %i.g, 9
  br i1 %min.iters.check127, label %.lr.ph94.i.i.i.i43.preheader208, label %vector.ph128

vector.ph128:                                     ; preds = %.lr.ph94.i.i.i.i43.preheader
  %n.vec129 = and i64 %i.ga, -8                   ; 3 uses
  %i.gb = or disjoint i64 %n.vec129, 1
  %i.gc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.fy, i64 0
  br label %vector.body130

vector.body130:                                   ; preds = %vector.body130, %vector.ph128
  %index131 = phi i64 [ 0, %vector.ph128 ], [ %index.next136, %vector.body130 ] ; 2 uses
  %vec.phi132 = phi <4 x i32> [ %i.gc, %vector.ph128 ], [ %i.gg, %vector.body130 ]
  %vec.phi133 = phi <4 x i32> [ zeroinitializer, %vector.ph128 ], [ %i.gh, %vector.body130 ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %index131 ; 2 uses
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 4
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 20
  %wide.load134 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !30
  %wide.load135 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !30
  %i.gg = add <4 x i32> %wide.load134, %vec.phi132 ; 2 uses
  %i.gh = add <4 x i32> %wide.load135, %vec.phi133 ; 2 uses
  %index.next136 = add nuw i64 %index131, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next136, %n.vec129
  br i1 %i.gi, label %middle.block137, label %vector.body130, !llvm.loop !142

middle.block137:                                  ; preds = %vector.body130
  %bin.rdx138 = add <4 x i32> %i.gh, %i.gg
  %i.gj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx138) ; 2 uses
  %cmp.n139 = icmp eq i64 %i.ga, %n.vec129
  br i1 %cmp.n139, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47, label %.lr.ph94.i.i.i.i43.preheader208

.lr.ph94.i.i.i.i43.preheader208:                  ; preds = %.lr.ph94.i.i.i.i43.preheader, %middle.block137
  %.092.i.i.i.i44.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i43.preheader ], [ %i.gb, %middle.block137 ]
  %.291.i.i.i.i45.ph = phi i32 [ %i.fy, %.lr.ph94.i.i.i.i43.preheader ], [ %i.gj, %middle.block137 ]
  br label %.lr.ph94.i.i.i.i43

.lr.ph94.i.i.i.i43:                               ; preds = %.lr.ph94.i.i.i.i43.preheader208, %.lr.ph94.i.i.i.i43
  %.092.i.i.i.i44 = phi i64 [ %i.gn, %.lr.ph94.i.i.i.i43 ], [ %.092.i.i.i.i44.ph, %.lr.ph94.i.i.i.i43.preheader208 ] ; 2 uses
  %.291.i.i.i.i45 = phi i32 [ %i.gm, %.lr.ph94.i.i.i.i43 ], [ %.291.i.i.i.i45.ph, %.lr.ph94.i.i.i.i43.preheader208 ]
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.cz, i64 %.092.i.i.i.i44
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !30
  %i.gm = add nsw i32 %i.gl, %.291.i.i.i.i45      ; 2 uses
  %i.gn = add nuw nsw i64 %.092.i.i.i.i44, 1      ; 2 uses
  %exitcond102.not.i.i.i.i46 = icmp eq i64 %i.gn, %i.g
  br i1 %exitcond102.not.i.i.i.i46, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47, label %.lr.ph94.i.i.i.i43, !llvm.loop !143

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47: ; preds = %.lr.ph89.i.i.i.i26, %.lr.ph94.i.i.i.i43, %middle.block121, %middle.block137, %.preheader.i.i.i.i21, %bb.s, %bb.k, %bb.l
  %.0.i25 = phi i32 [ %i.de, %bb.k ], [ 0, %bb.l ], [ %i.gm, %.lr.ph94.i.i.i.i43 ], [ %.075.lcssa.i.i.i.i22, %.preheader.i.i.i.i21 ], [ %i.fy, %bb.s ], [ %i.gj, %middle.block137 ], [ %i.fo, %middle.block121 ], [ %i.fv, %.lr.ph89.i.i.i.i26 ]
  %i.go = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.gp = load <2 x ptr>, ptr %i.go, align 8, !tbaa !128
  store i8 0, ptr %0, align 8, !tbaa !92
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.g, ptr %i.gq, align 8, !tbaa !136
  %i.gr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.e, ptr %i.gr, align 8, !tbaa !137
  %i.gs = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.gs, align 8, !tbaa !30
  br label %bb.t

bb.t:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %.0.i25.sink = phi i32 [ %.0.i25, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47 ], [ %.0.i, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit ]
  %.sink94 = phi ptr [ %i.b, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47 ], [ %i.cx, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit ]
  %.sink = phi ptr [ %i.cz, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47 ], [ null, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit ]
  %i.gt = phi <2 x ptr> [ %i.gp, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit47 ], [ %i.cu, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit ]
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %.0.i25.sink, ptr %i.gu, align 4, !tbaa !30
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sink94, ptr %i.gv, align 8, !tbaa !104
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.gx = shufflevector <2 x ptr> %i.gt, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.gx, ptr %i.gw, align 8, !tbaa !128
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.sink, ptr %i.gy, align 8, !tbaa !108
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_5BlockIS3_Lin1ELin1ELb0EEEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(48) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !144, !nonnull !90, !align !91 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !52   ; 14 uses
  %i.e = load i8, ptr %1, align 8, !tbaa !48, !range !112, !noundef !90
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.p

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !52
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.h, i64 noundef %i.d)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi1ElEES3_EEvRT_RKT0_:bb.a
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body84 ], [ %i.cy, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  br label %.body68

_ZN5Eigen12SparseMatrixIdLi1ElE8finalizeEv.exit:  ; preds = %.lr.ph13.i, %.critedge.i, %bb.d, %_ZN5Eigen12SparseMatrixIdLi1ElE7reserveEl.exit._crit_edge, %_ZN5Eigen12SparseMatrixIdLi1ElED2Ev.exit
  ret void

.body68:                                          ; preds = %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i, %.body
  %.pn47.pn = phi { ptr, i32 } [ %.pn.pn.pn, %.body ], [ %i.cf, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ]
  resume { ptr, i32 } %.pn47.pn
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_12SparseMatrixIdLi1EiEENS2_IdLi1ElEES3_EEvRKT_RKT0_RT1_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !194  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !193  ; 8 uses
  %i.e = icmp ugt i64 %i.b, 131072                ; 5 uses
  br i1 %i.e, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.b) #21 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !23
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.b
  %i.i = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.i, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.j = shl nuw i64 %i.b, 3
  br label %bb.e

bb.d:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !23
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc137 unwind label %.split

.noexc137:                                        ; preds = %bb.d
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.l = add nuw nsw i64 %i.b, 15
  %i.m = alloca i8, i64 %i.l, align 16            ; 2 uses
  %i.n = shl nuw nsw i64 %i.b, 3                  ; 3 uses
  %i.o = icmp samesign ult i64 %i.b, 16385
  br i1 %i.o, label %_ZN5Eigen8internal14aligned_mallocEm.exit140.thread, label %bb.e

_ZN5Eigen8internal14aligned_mallocEm.exit140.thread: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.p = add nuw nsw i64 %i.n, 15
  %i.q = alloca i8, i64 %i.p, align 16
  %i.r = add nuw nsw i64 %i.n, 15
  %i.s = alloca i8, i64 %i.r, align 16
  br label %bb.h

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.t = phi i64 [ %i.j, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread ], [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ] ; 2 uses
  %i.u = phi ptr [ %i.f, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread ], [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ] ; 3 uses
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #21 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit140

bb.f:                                             ; preds = %bb.e
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !23
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc139 unwind label %.split202

.noexc139:                                        ; preds = %bb.f
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit140:     ; preds = %bb.e
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.t) #21 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit140
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aa, align 8, !tbaa !23
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc144 unwind label %.split206

.noexc144:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit140, %_ZN5Eigen8internal14aligned_mallocEm.exit140.thread
  %i.ab = phi i1 [ false, %_ZN5Eigen8internal14aligned_mallocEm.exit140.thread ], [ true, %_ZN5Eigen8internal14aligned_mallocEm.exit140 ] ; 2 uses
  %i.ac = phi ptr [ %i.q, %_ZN5Eigen8internal14aligned_mallocEm.exit140.thread ], [ %i.v, %_ZN5Eigen8internal14aligned_mallocEm.exit140 ] ; 5 uses
  %i.ad = phi ptr [ %i.m, %_ZN5Eigen8internal14aligned_mallocEm.exit140.thread ], [ %i.u, %_ZN5Eigen8internal14aligned_mallocEm.exit140 ] ; 5 uses
  %i.ae = phi ptr [ %i.s, %_ZN5Eigen8internal14aligned_mallocEm.exit140.thread ], [ %i.y, %_ZN5Eigen8internal14aligned_mallocEm.exit140 ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ad, i8 0, i64 %i.b, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !199 ; 13 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !197 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !198
  %i.am = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !30
  %i.ao = load i32, ptr %i.aj, align 4, !tbaa !30
  %i.ap = sub nsw i32 %i.an, %i.ao
  %i.aq = sext i32 %i.ap to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEEEE16nonZerosEstimateEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !198 ; 11 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEEEE16nonZerosEstimateEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.av = and i64 %i.au, 3
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.l, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.aw = lshr exact i64 %i.au, 2
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = and i64 %i.ax, 3
  %i.az = tail call i64 @llvm.smin.i64(i64 %i.ay, i64 %i.as)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.az, %bb.l ], [ %i.as, %bb.k ] ; 12 uses
  %i.ba = sub nsw i64 %i.as, %.0.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.bb = sdiv i64 %i.ba, 8
  %i.bc = shl nsw i64 %i.bb, 3                    ; 2 uses
  %i.bd = sdiv i64 %i.ba, 4                       ; 2 uses
  %i.be = shl nsw i64 %i.bd, 2                    ; 2 uses
  %i.bf = add nsw i64 %i.bc, %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bg = add nsw i64 %i.be, %.0.i.i.i.i.i.i.i.i.i ; 4 uses
  %.off.i.i.i.i.i = add i64 %i.ba, 3
  %.not.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i, 7
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.bh = getelementptr [4 x i8], ptr %i.ag, i64 %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bi = load <2 x i64>, ptr %i.bh, align 1, !tbaa !31 ; 2 uses
  %i.bj = icmp sgt i64 %i.ba, 7
  br i1 %i.bj, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr i8, ptr %i.bh, i64 16
  %i.bl = load <4 x i32>, ptr %i.bk, align 1, !tbaa !31 ; 2 uses
  %i.bm = bitcast <2 x i64> %i.bi to <4 x i32>    ; 2 uses
  %i.bn = icmp samesign ugt i64 %i.ba, 15
  br i1 %i.bn, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.n
  %.05777.i.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.n
  %.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.bl, %bb.n ], [ %i.by, %.lr.ph.i.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.bm, %bb.n ], [ %i.bu, %.lr.ph.i.i.i.i.i ]
  %i.bo = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i.i, %.lcssa.i.i.i.i.i ; 2 uses
  %i.bp = bitcast <4 x i32> %i.bo to <2 x i64>
  %i.bq = icmp sgt i64 %i.be, %i.bc
  br i1 %i.bq, label %bb.o, label %bb.p

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.05780.i.i.i.i.i = phi i64 [ %.057.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.05777.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i.i = phi i64 [ %.05780.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.067.078.i.i.i.i.i = phi <4 x i32> [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %i.bm, %.lr.ph.preheader.i.i.i.i.i ]
  %i.br = phi <4 x i32> [ %i.by, %.lr.ph.i.i.i.i.i ], [ %i.bl, %.lr.ph.preheader.i.i.i.i.i ]
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05780.i.i.i.i.i
  %i.bt = load <4 x i32>, ptr %i.bs, align 1, !tbaa !31
  %i.bu = add <4 x i32> %i.bt, %.sroa.067.078.i.i.i.i.i ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.ag, i64 %.057.in79.i.i.i.i.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 48
  %i.bx = load <4 x i32>, ptr %i.bw, align 1, !tbaa !31
  %i.by = add <4 x i32> %i.bx, %i.br              ; 2 uses
  %.057.i.i.i.i.i = add nsw i64 %.05780.i.i.i.i.i, 8 ; 2 uses
  %i.bz = icmp slt i64 %.057.i.i.i.i.i, %i.bf
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !32

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.bf
  %i.cb = load <4 x i32>, ptr %i.ca, align 1, !tbaa !31
  %i.cc = add <4 x i32> %i.cb, %i.bo
  %i.cd = bitcast <4 x i32> %i.cc to <2 x i64>
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i.i, %bb.m
  %.sroa.067.2.i.i.i.i.i = phi <2 x i64> [ %i.bi, %bb.m ], [ %i.cd, %bb.o ], [ %i.bp, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ce = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32>
  %i.cf = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32> ; 2 uses
  %i.cg = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ch = add <4 x i32> %i.cg, %i.ce              ; 2 uses
  %shift = shufflevector <4 x i32> %i.ch, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.ch, %shift
  %3 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cf) ; 2 uses
  %i.ci = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ci, label %.lr.ph85.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.p
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.i.preheader83, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.cj = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cj, %vector.ph ], [ %i.cm, %vector.body ]
  %vec.phi8 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cn, %vector.body ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load = load <4 x i32>, ptr %i.ck, align 4, !tbaa !30
  %wide.load9 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !30
  %i.cm = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.cn = add <4 x i32> %wide.load9, %vec.phi8    ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !220

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cn, %i.cm
  %i.cp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.preheader83

.lr.ph85.i.i.i.i.i.preheader83:                   ; preds = %.lr.ph85.i.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.i.ph = phi i32 [ %3, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.cp, %middle.block ]
  br label %.lr.ph85.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph85.i.i.i.i.i, %middle.block, %bb.p
  %.075.lcssa.i.i.i.i.i = phi i32 [ %3, %bb.p ], [ %i.cp, %middle.block ], [ %i.df, %.lr.ph85.i.i.i.i.i ] ; 3 uses
  %i.cq = icmp slt i64 %i.bg, %i.as
  br i1 %i.cq, label %.lr.ph89.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph89.i.i.i.i.i.preheader:                     ; preds = %.preheader.i.i.i.i.i
  %i.cr = shl nsw i64 %i.bd, 2
  %i.cs = add i64 %.0.i.i.i.i.i.i.i.i.i, %i.cr
  %i.ct = sub i64 %i.as, %i.cs                    ; 3 uses
  %min.iters.check11 = icmp ult i64 %i.ct, 8
  br i1 %min.iters.check11, label %.lr.ph89.i.i.i.i.i.preheader78, label %vector.ph12

vector.ph12:                                      ; preds = %.lr.ph89.i.i.i.i.i.preheader
  %n.vec13 = and i64 %i.ct, -8                    ; 3 uses
  %i.cu = add i64 %i.bg, %n.vec13
  %i.cv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i, i64 0
  %i.cw = getelementptr [4 x i8], ptr %i.ag, i64 %i.bg
  br label %vector.body14

vector.body14:                                    ; preds = %vector.body14, %vector.ph12
  %index15 = phi i64 [ 0, %vector.ph12 ], [ %index.next20, %vector.body14 ] ; 2 uses
  %vec.phi16 = phi <4 x i32> [ %i.cv, %vector.ph12 ], [ %i.cz, %vector.body14 ]
  %vec.phi17 = phi <4 x i32> [ zeroinitializer, %vector.ph12 ], [ %i.da, %vector.body14 ]
  %i.cx = getelementptr [4 x i8], ptr %i.cw, i64 %index15 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load18 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !30
  %wide.load19 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !30
  %i.cz = add <4 x i32> %wide.load18, %vec.phi16  ; 2 uses
  %i.da = add <4 x i32> %wide.load19, %vec.phi17  ; 2 uses
  %index.next20 = add nuw i64 %index15, 8         ; 2 uses
  %i.db = icmp eq i64 %index.next20, %n.vec13
  br i1 %i.db, label %middle.block21, label %vector.body14, !llvm.loop !221

middle.block21:                                   ; preds = %vector.body14
  %bin.rdx22 = add <4 x i32> %i.da, %i.cz
  %i.dc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx22) ; 2 uses
  %cmp.n23 = icmp eq i64 %i.ct, %n.vec13
  br i1 %cmp.n23, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph89.i.i.i.i.i.preheader78

.lr.ph89.i.i.i.i.i.preheader78:                   ; preds = %.lr.ph89.i.i.i.i.i.preheader, %middle.block21
  %.05588.i.i.i.i.i.ph = phi i64 [ %i.bg, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.cu, %middle.block21 ]
  %.187.i.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i.i, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.dc, %middle.block21 ]
  br label %.lr.ph89.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.preheader83, %.lr.ph85.i.i.i.i.i
  %.05683.i.i.i.i.i = phi i64 [ %i.dg, %.lr.ph85.i.i.i.i.i ], [ %.05683.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader83 ] ; 2 uses
  %.07582.i.i.i.i.i = phi i32 [ %i.df, %.lr.ph85.i.i.i.i.i ], [ %.07582.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader83 ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.05683.i.i.i.i.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !30
  %i.df = add nsw i32 %i.de, %.07582.i.i.i.i.i    ; 2 uses
  %i.dg = add nuw nsw i64 %.05683.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dg, %.0.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i, !llvm.loop !222

.lr.ph89.i.i.i.i.i:                               ; preds = %.lr.ph89.i.i.i.i.i.preheader78, %.lr.ph89.i.i.i.i.i
  %.05588.i.i.i.i.i = phi i64 [ %i.dk, %.lr.ph89.i.i.i.i.i ], [ %.05588.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader78 ] ; 2 uses
  %.187.i.i.i.i.i = phi i32 [ %i.dj, %.lr.ph89.i.i.i.i.i ], [ %.187.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader78 ]
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05588.i.i.i.i.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !30
  %i.dj = add nsw i32 %i.di, %.187.i.i.i.i.i      ; 2 uses
  %i.dk = add nsw i64 %.05588.i.i.i.i.i, 1        ; 2 uses
  %i.dl = icmp slt i64 %i.dk, %i.as
  br i1 %i.dl, label %.lr.ph89.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, !llvm.loop !223

bb.q:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.dm = load i32, ptr %i.ag, align 4, !tbaa !30 ; 3 uses
  %i.dn = icmp sgt i64 %i.as, 1
  br i1 %i.dn, label %.lr.ph94.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph94.i.i.i.i.i.preheader:                     ; preds = %bb.q
  %i.do = add nsw i64 %i.as, -1                   ; 2 uses
  %min.iters.check27 = icmp ult i64 %i.as, 9
  br i1 %min.iters.check27, label %.lr.ph94.i.i.i.i.i.preheader74, label %vector.ph28

vector.ph28:                                      ; preds = %.lr.ph94.i.i.i.i.i.preheader
  %n.vec29 = and i64 %i.do, -8                    ; 3 uses
  %i.dp = or disjoint i64 %n.vec29, 1
  %i.dq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.dm, i64 0
  br label %vector.body30

vector.body30:                                    ; preds = %vector.body30, %vector.ph28
  %index31 = phi i64 [ 0, %vector.ph28 ], [ %index.next36, %vector.body30 ] ; 2 uses
  %vec.phi32 = phi <4 x i32> [ %i.dq, %vector.ph28 ], [ %i.du, %vector.body30 ]
  %vec.phi33 = phi <4 x i32> [ zeroinitializer, %vector.ph28 ], [ %i.dv, %vector.body30 ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index31 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %wide.load34 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !30
  %wide.load35 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !30
  %i.du = add <4 x i32> %wide.load34, %vec.phi32  ; 2 uses
  %i.dv = add <4 x i32> %wide.load35, %vec.phi33  ; 2 uses
  %index.next36 = add nuw i64 %index31, 8         ; 2 uses
  %i.dw = icmp eq i64 %index.next36, %n.vec29
  br i1 %i.dw, label %middle.block37, label %vector.body30, !llvm.loop !224

middle.block37:                                   ; preds = %vector.body30
  %bin.rdx38 = add <4 x i32> %i.dv, %i.du
  %i.dx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx38) ; 2 uses
  %cmp.n39 = icmp eq i64 %i.do, %n.vec29
  br i1 %cmp.n39, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i.preheader74

.lr.ph94.i.i.i.i.i.preheader74:                   ; preds = %.lr.ph94.i.i.i.i.i.preheader, %middle.block37
  %.092.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.dp, %middle.block37 ]
  %.291.i.i.i.i.i.ph = phi i32 [ %i.dm, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.dx, %middle.block37 ]
  br label %.lr.ph94.i.i.i.i.i

.lr.ph94.i.i.i.i.i:                               ; preds = %.lr.ph94.i.i.i.i.i.preheader74, %.lr.ph94.i.i.i.i.i
  %.092.i.i.i.i.i = phi i64 [ %i.eb, %.lr.ph94.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader74 ] ; 2 uses
  %.291.i.i.i.i.i = phi i32 [ %i.ea, %.lr.ph94.i.i.i.i.i ], [ %.291.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader74 ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.092.i.i.i.i.i
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !30
  %i.ea = add nsw i32 %i.dz, %.291.i.i.i.i.i      ; 2 uses
  %i.eb = add nuw nsw i64 %.092.i.i.i.i.i, 1      ; 2 uses
  %exitcond102.not.i.i.i.i.i = icmp eq i64 %i.eb, %i.as
  br i1 %exitcond102.not.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i, !llvm.loop !225

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i: ; preds = %.lr.ph89.i.i.i.i.i, %.lr.ph94.i.i.i.i.i, %middle.block21, %middle.block37, %bb.q, %.preheader.i.i.i.i.i
  %.0.i.i.i = phi i32 [ %i.ea, %.lr.ph94.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.dm, %bb.q ], [ %i.dx, %middle.block37 ], [ %i.dc, %middle.block21 ], [ %i.dj, %.lr.ph89.i.i.i.i.i ]
  %i.ec = sext i32 %.0.i.i.i to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEEEE16nonZerosEstimateEv.exit

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEEEE16nonZerosEstimateEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, %bb.j, %bb.i
  %.0.i.i = phi i64 [ %i.aq, %bb.i ], [ %i.ec, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i ], [ 0, %bb.j ]
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !188 ; 4 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEEEE16nonZerosEstimateEv.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !183 ; 2 uses
  %i.ei = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.d
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !107
  %i.ek = load i64, ptr %i.eh, align 8, !tbaa !107
  %i.el = sub nsw i64 %i.ej, %i.ek
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi1ElEEEEE16nonZerosEstimateEv.exit

bb.s:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEEEE16nonZerosEstimateEv.exit
  %i.em = icmp eq i64 %i.d, 0
  br i1 %i.em, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi1ElEEEEE16nonZerosEstimateEv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.en = load i64, ptr %i.ee, align 8, !tbaa !107 ; 3 uses
  %i.eo = icmp sgt i64 %i.d, 1
  br i1 %i.eo, label %.lr.ph.i.i.i.i.i147.preheader, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi1ElEEEEE16nonZerosEstimateEv.exit

.lr.ph.i.i.i.i.i147.preheader:                    ; preds = %bb.t
  %i.ep = add nsw i64 %i.d, -1                    ; 2 uses
  %min.iters.check43 = icmp ult i64 %i.d, 5
  br i1 %min.iters.check43, label %.lr.ph.i.i.i.i.i147.preheader70, label %vector.ph44

vector.ph44:                                      ; preds = %.lr.ph.i.i.i.i.i147.preheader
  %n.vec45 = and i64 %i.ep, -4                    ; 3 uses
  %i.eq = or disjoint i64 %n.vec45, 1
  %i.er = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.en, i64 0
  br label %vector.body46

vector.body46:                                    ; preds = %vector.body46, %vector.ph44
  %index47 = phi i64 [ 0, %vector.ph44 ], [ %index.next52, %vector.body46 ] ; 2 uses
  %vec.phi48 = phi <2 x i64> [ %i.er, %vector.ph44 ], [ %i.ev, %vector.body46 ]
  %vec.phi49 = phi <2 x i64> [ zeroinitializer, %vector.ph44 ], [ %i.ew, %vector.body46 ]
  %i.es = getelementptr [8 x i8], ptr %i.ee, i64 %index47 ; 2 uses
  %i.et = getelementptr i8, ptr %i.es, i64 8
end_hunk_2
