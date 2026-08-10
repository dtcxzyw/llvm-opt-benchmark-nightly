inline.NumInlined: 1691
inline.NumDeleted: 598
loop-unroll.NumRuntimeUnrolled: 29
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_12SparseMatrixIiLi0EiEES3_S3_EEvRKT_RKT0_RT1_b:bb.a
bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !88
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.b
  %i.i = icmp ugt i64 %i.b, 4611686018427387903
  br i1 %i.i, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.thread

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.thread: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.j = shl nuw i64 %i.b, 2
  br label %bb.e

bb.d:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !88
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.noexc140 unwind label %.split

.noexc140:                                        ; preds = %bb.d
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit: ; preds = %bb.a
  %i.l = add nuw nsw i64 %i.b, 15
  %i.m = alloca i8, i64 %i.l, align 16            ; 3 uses
  %i.n = shl nuw nsw i64 %i.b, 2                  ; 2 uses
  %i.o = icmp samesign ult i64 %i.b, 32769
  br i1 %i.o, label %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.thread, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit
  %i.p = phi i64 [ %i.j, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.thread ], [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit ]
  %i.q = phi ptr [ %i.f, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.thread ], [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit ] ; 3 uses
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #26 ; 3 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit143

bb.f:                                             ; preds = %bb.e
  %i.t = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.t, align 8, !tbaa !88
  invoke void @__cxa_throw(ptr nonnull %i.t, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.noexc142 unwind label %.split255

.noexc142:                                        ; preds = %bb.f
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit143:     ; preds = %bb.e
  %i.u = icmp samesign ugt i64 %i.b, 2305843009213693951
  br i1 %i.u, label %bb.g, label %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread

_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit143
  %i.v = shl nuw i64 %i.b, 3
  br label %bb.i

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit143
  %i.w = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !88
  invoke void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.noexc144 unwind label %.split253.thread

.noexc144:                                        ; preds = %bb.g
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit
  %i.x = add nuw nsw i64 %i.n, 15
  %i.y = alloca i8, i64 %i.x, align 16            ; 2 uses
  %i.z = shl nuw nsw i64 %i.b, 3                  ; 2 uses
  %i.aa = icmp samesign ult i64 %i.b, 16385
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit
  %i.ab = add nuw nsw i64 %i.z, 15
  %i.ac = alloca i8, i64 %i.ab, align 16
  br label %bb.k

bb.i:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit
  %i.ad = phi i64 [ %i.v, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread ], [ %i.z, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit ]
  %i.ae = phi ptr [ %i.q, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread ], [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit ] ; 2 uses
  %i.af = phi ptr [ %i.r, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread ], [ %i.y, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit ] ; 2 uses
  %i.ag = phi i1 [ true, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread ], [ false, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit ] ; 2 uses
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ad) #26 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aj, align 8, !tbaa !88
  invoke void @__cxa_throw(ptr nonnull %i.aj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #24
          to label %.noexc147 unwind label %.split358

.noexc147:                                        ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.h
  %i.ak = phi ptr [ %i.m, %bb.h ], [ %i.ae, %bb.i ] ; 7 uses
  %i.al = phi ptr [ %i.y, %bb.h ], [ %i.af, %bb.i ] ; 8 uses
  %i.am = phi i1 [ false, %bb.h ], [ %i.ag, %bb.i ] ; 3 uses
  %i.an = phi ptr [ %i.ac, %bb.h ], [ %i.ah, %bb.i ] ; 8 uses
  %i.ao = icmp samesign ugt i64 %i.b, 16384       ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ak, i8 0, i64 %i.b, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !93 ; 13 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !87 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.av = load i64, ptr %i.au, align 8, !tbaa !92
  %i.aw = getelementptr inbounds [4 x i8], ptr %i.at, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !78
  %i.ay = load i32, ptr %i.at, align 4, !tbaa !78
  %i.az = sub nsw i32 %i.ax, %i.ay
  %i.ba = sext i32 %i.az to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEEEE16nonZerosEstimateEv.exit

bb.m:                                             ; preds = %bb.k
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !92 ; 11 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEEEE16nonZerosEstimateEv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.be = ptrtoint ptr %i.aq to i64               ; 2 uses
  %i.bf = and i64 %i.be, 3
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bf, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.o, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.bg = lshr exact i64 %i.be, 2
  %i.bh = sub nsw i64 0, %i.bg
  %i.bi = and i64 %i.bh, 3
  %i.bj = tail call i64 @llvm.smin.i64(i64 %i.bi, i64 %i.bc)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n
  %.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bj, %bb.o ], [ %i.bc, %bb.n ] ; 12 uses
  %i.bk = sub nsw i64 %i.bc, %.0.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.bl = sdiv i64 %i.bk, 8
  %i.bm = shl nsw i64 %i.bl, 3                    ; 2 uses
  %i.bn = sdiv i64 %i.bk, 4                       ; 2 uses
  %i.bo = shl nsw i64 %i.bn, 2                    ; 2 uses
  %i.bp = add nsw i64 %i.bm, %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bq = add nsw i64 %i.bo, %.0.i.i.i.i.i.i.i.i.i ; 4 uses
  %.off.i.i.i.i.i = add i64 %i.bk, 3
  %.not.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i, 7
  br i1 %.not.i.i.i.i.i, label %bb.t, label %bb.p

bb.p:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.br = getelementptr [4 x i8], ptr %i.aq, i64 %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bs = load <2 x i64>, ptr %i.br, align 1, !tbaa !119 ; 2 uses
  %i.bt = icmp sgt i64 %i.bk, 7
  br i1 %i.bt, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.bu = getelementptr i8, ptr %i.br, i64 16
  %i.bv = load <4 x i32>, ptr %i.bu, align 1, !tbaa !119 ; 2 uses
  %i.bw = bitcast <2 x i64> %i.bs to <4 x i32>    ; 2 uses
  %i.bx = icmp samesign ugt i64 %i.bk, 15
  br i1 %i.bx, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.q
  %.05777.i.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.q
  %.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.bv, %bb.q ], [ %i.ci, %.lr.ph.i.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.bw, %bb.q ], [ %i.ce, %.lr.ph.i.i.i.i.i ]
  %i.by = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i.i, %.lcssa.i.i.i.i.i ; 2 uses
  %i.bz = bitcast <4 x i32> %i.by to <2 x i64>
  %i.ca = icmp sgt i64 %i.bo, %i.bm
  br i1 %i.ca, label %bb.r, label %bb.s

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.05780.i.i.i.i.i = phi i64 [ %.057.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.05777.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i.i = phi i64 [ %.05780.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.067.078.i.i.i.i.i = phi <4 x i32> [ %i.ce, %.lr.ph.i.i.i.i.i ], [ %i.bw, %.lr.ph.preheader.i.i.i.i.i ]
  %i.cb = phi <4 x i32> [ %i.ci, %.lr.ph.i.i.i.i.i ], [ %i.bv, %.lr.ph.preheader.i.i.i.i.i ]
  %i.cc = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.05780.i.i.i.i.i
  %i.cd = load <4 x i32>, ptr %i.cc, align 1, !tbaa !119
  %i.ce = add <4 x i32> %i.cd, %.sroa.067.078.i.i.i.i.i ; 2 uses
  %i.cf = getelementptr [4 x i8], ptr %i.aq, i64 %.057.in79.i.i.i.i.i
  %i.cg = getelementptr i8, ptr %i.cf, i64 48
  %i.ch = load <4 x i32>, ptr %i.cg, align 1, !tbaa !119
  %i.ci = add <4 x i32> %i.ch, %i.cb              ; 2 uses
  %.057.i.i.i.i.i = add nsw i64 %.05780.i.i.i.i.i, 8 ; 2 uses
  %i.cj = icmp slt i64 %.057.i.i.i.i.i, %i.bp
  br i1 %i.cj, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !383

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.bp
  %i.cl = load <4 x i32>, ptr %i.ck, align 1, !tbaa !119
  %i.cm = add <4 x i32> %i.cl, %i.by
  %i.cn = bitcast <4 x i32> %i.cm to <2 x i64>
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge.i.i.i.i.i, %bb.p
  %.sroa.067.2.i.i.i.i.i = phi <2 x i64> [ %i.bs, %bb.p ], [ %i.cn, %bb.r ], [ %i.bz, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.co = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32>
  %i.cp = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32> ; 2 uses
  %i.cq = shufflevector <4 x i32> %i.cp, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.cr = add <4 x i32> %i.cq, %i.co              ; 2 uses
  %shift = shufflevector <4 x i32> %i.cr, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.cr, %shift
  %4 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.cp) ; 2 uses
  %i.cs = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cs, label %.lr.ph85.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.s
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.i.preheader518, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.ct = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.ct, %vector.ph ], [ %i.cw, %vector.body ]
  %vec.phi394 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cx, %vector.body ]
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %wide.load = load <4 x i32>, ptr %i.cu, align 4, !tbaa !78
  %wide.load395 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !78
  %i.cw = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.cx = add <4 x i32> %wide.load395, %vec.phi394 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !384

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cx, %i.cw
  %i.cz = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.preheader518

.lr.ph85.i.i.i.i.i.preheader518:                  ; preds = %.lr.ph85.i.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.i.ph = phi i32 [ %4, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.cz, %middle.block ]
  br label %.lr.ph85.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph85.i.i.i.i.i, %middle.block, %bb.s
  %.075.lcssa.i.i.i.i.i = phi i32 [ %4, %bb.s ], [ %i.cz, %middle.block ], [ %i.dp, %.lr.ph85.i.i.i.i.i ] ; 3 uses
  %i.da = icmp slt i64 %i.bq, %i.bc
  br i1 %i.da, label %.lr.ph89.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph89.i.i.i.i.i.preheader:                     ; preds = %.preheader.i.i.i.i.i
  %i.db = shl nsw i64 %i.bn, 2
  %i.dc = add i64 %.0.i.i.i.i.i.i.i.i.i, %i.db
  %i.dd = sub i64 %i.bc, %i.dc                    ; 3 uses
  %min.iters.check397 = icmp ult i64 %i.dd, 8
  br i1 %min.iters.check397, label %.lr.ph89.i.i.i.i.i.preheader513, label %vector.ph398

vector.ph398:                                     ; preds = %.lr.ph89.i.i.i.i.i.preheader
  %n.vec399 = and i64 %i.dd, -8                   ; 3 uses
  %i.de = add i64 %i.bq, %n.vec399
  %i.df = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i, i64 0
  %i.dg = getelementptr [4 x i8], ptr %i.aq, i64 %i.bq
  br label %vector.body400

vector.body400:                                   ; preds = %vector.body400, %vector.ph398
  %index401 = phi i64 [ 0, %vector.ph398 ], [ %index.next406, %vector.body400 ] ; 2 uses
  %vec.phi402 = phi <4 x i32> [ %i.df, %vector.ph398 ], [ %i.dj, %vector.body400 ]
  %vec.phi403 = phi <4 x i32> [ zeroinitializer, %vector.ph398 ], [ %i.dk, %vector.body400 ]
  %i.dh = getelementptr [4 x i8], ptr %i.dg, i64 %index401 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load404 = load <4 x i32>, ptr %i.dh, align 4, !tbaa !78
  %wide.load405 = load <4 x i32>, ptr %i.di, align 4, !tbaa !78
  %i.dj = add <4 x i32> %wide.load404, %vec.phi402 ; 2 uses
  %i.dk = add <4 x i32> %wide.load405, %vec.phi403 ; 2 uses
  %index.next406 = add nuw i64 %index401, 8       ; 2 uses
  %i.dl = icmp eq i64 %index.next406, %n.vec399
  br i1 %i.dl, label %middle.block407, label %vector.body400, !llvm.loop !385

middle.block407:                                  ; preds = %vector.body400
  %bin.rdx408 = add <4 x i32> %i.dk, %i.dj
  %i.dm = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx408) ; 2 uses
  %cmp.n409 = icmp eq i64 %i.dd, %n.vec399
  br i1 %cmp.n409, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph89.i.i.i.i.i.preheader513

.lr.ph89.i.i.i.i.i.preheader513:                  ; preds = %.lr.ph89.i.i.i.i.i.preheader, %middle.block407
  %.05588.i.i.i.i.i.ph = phi i64 [ %i.bq, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.de, %middle.block407 ]
  %.187.i.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i.i, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.dm, %middle.block407 ]
  br label %.lr.ph89.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.preheader518, %.lr.ph85.i.i.i.i.i
  %.05683.i.i.i.i.i = phi i64 [ %i.dq, %.lr.ph85.i.i.i.i.i ], [ %.05683.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader518 ] ; 2 uses
  %.07582.i.i.i.i.i = phi i32 [ %i.dp, %.lr.ph85.i.i.i.i.i ], [ %.07582.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader518 ]
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.05683.i.i.i.i.i
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !78
  %i.dp = add nsw i32 %i.do, %.07582.i.i.i.i.i    ; 2 uses
  %i.dq = add nuw nsw i64 %.05683.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dq, %.0.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i, !llvm.loop !386

.lr.ph89.i.i.i.i.i:                               ; preds = %.lr.ph89.i.i.i.i.i.preheader513, %.lr.ph89.i.i.i.i.i
  %.05588.i.i.i.i.i = phi i64 [ %i.du, %.lr.ph89.i.i.i.i.i ], [ %.05588.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader513 ] ; 2 uses
  %.187.i.i.i.i.i = phi i32 [ %i.dt, %.lr.ph89.i.i.i.i.i ], [ %.187.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader513 ]
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.05588.i.i.i.i.i
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !78
  %i.dt = add nsw i32 %i.ds, %.187.i.i.i.i.i      ; 2 uses
  %i.du = add nsw i64 %.05588.i.i.i.i.i, 1        ; 2 uses
  %i.dv = icmp slt i64 %i.du, %i.bc
  br i1 %i.dv, label %.lr.ph89.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, !llvm.loop !387

bb.t:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.dw = load i32, ptr %i.aq, align 4, !tbaa !78 ; 3 uses
  %i.dx = icmp sgt i64 %i.bc, 1
  br i1 %i.dx, label %.lr.ph94.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph94.i.i.i.i.i.preheader:                     ; preds = %bb.t
  %i.dy = add nsw i64 %i.bc, -1                   ; 2 uses
  %min.iters.check413 = icmp ult i64 %i.bc, 9
  br i1 %min.iters.check413, label %.lr.ph94.i.i.i.i.i.preheader509, label %vector.ph414

vector.ph414:                                     ; preds = %.lr.ph94.i.i.i.i.i.preheader
  %n.vec415 = and i64 %i.dy, -8                   ; 3 uses
  %i.dz = or disjoint i64 %n.vec415, 1
  %i.ea = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.dw, i64 0
  br label %vector.body416

vector.body416:                                   ; preds = %vector.body416, %vector.ph414
  %index417 = phi i64 [ 0, %vector.ph414 ], [ %index.next422, %vector.body416 ] ; 2 uses
  %vec.phi418 = phi <4 x i32> [ %i.ea, %vector.ph414 ], [ %i.ee, %vector.body416 ]
  %vec.phi419 = phi <4 x i32> [ zeroinitializer, %vector.ph414 ], [ %i.ef, %vector.body416 ]
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %index417 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 20
  %wide.load420 = load <4 x i32>, ptr %i.ec, align 4, !tbaa !78
  %wide.load421 = load <4 x i32>, ptr %i.ed, align 4, !tbaa !78
  %i.ee = add <4 x i32> %wide.load420, %vec.phi418 ; 2 uses
  %i.ef = add <4 x i32> %wide.load421, %vec.phi419 ; 2 uses
  %index.next422 = add nuw i64 %index417, 8       ; 2 uses
  %i.eg = icmp eq i64 %index.next422, %n.vec415
  br i1 %i.eg, label %middle.block423, label %vector.body416, !llvm.loop !388

middle.block423:                                  ; preds = %vector.body416
  %bin.rdx424 = add <4 x i32> %i.ef, %i.ee
  %i.eh = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx424) ; 2 uses
  %cmp.n425 = icmp eq i64 %i.dy, %n.vec415
  br i1 %cmp.n425, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i.preheader509

.lr.ph94.i.i.i.i.i.preheader509:                  ; preds = %.lr.ph94.i.i.i.i.i.preheader, %middle.block423
  %.092.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.dz, %middle.block423 ]
  %.291.i.i.i.i.i.ph = phi i32 [ %i.dw, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.eh, %middle.block423 ]
  br label %.lr.ph94.i.i.i.i.i

.lr.ph94.i.i.i.i.i:                               ; preds = %.lr.ph94.i.i.i.i.i.preheader509, %.lr.ph94.i.i.i.i.i
  %.092.i.i.i.i.i = phi i64 [ %i.el, %.lr.ph94.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader509 ] ; 2 uses
  %.291.i.i.i.i.i = phi i32 [ %i.ek, %.lr.ph94.i.i.i.i.i ], [ %.291.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader509 ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.aq, i64 %.092.i.i.i.i.i
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !78
  %i.ek = add nsw i32 %i.ej, %.291.i.i.i.i.i      ; 2 uses
  %i.el = add nuw nsw i64 %.092.i.i.i.i.i, 1      ; 2 uses
  %exitcond102.not.i.i.i.i.i = icmp eq i64 %i.el, %i.bc
  br i1 %exitcond102.not.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i, !llvm.loop !389

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i: ; preds = %.lr.ph89.i.i.i.i.i, %.lr.ph94.i.i.i.i.i, %middle.block407, %middle.block423, %bb.t, %.preheader.i.i.i.i.i
  %.0.i.i.i = phi i32 [ %i.ek, %.lr.ph94.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.dw, %bb.t ], [ %i.eh, %middle.block423 ], [ %i.dm, %middle.block407 ], [ %i.dt, %.lr.ph89.i.i.i.i.i ]
  %i.em = sext i32 %.0.i.i.i to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEEEE16nonZerosEstimateEv.exit

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEEEE16nonZerosEstimateEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, %bb.m, %bb.l
  %.0.i.i = phi i64 [ %i.ba, %bb.l ], [ %i.em, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i ], [ 0, %bb.m ]
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !93 ; 13 uses
  %i.ep = icmp eq ptr %i.eo, null
  br i1 %i.ep, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEEEE16nonZerosEstimateEv.exit
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !87 ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.d
  %i.et = load i32, ptr %i.es, align 4, !tbaa !78
  %i.eu = load i32, ptr %i.er, align 4, !tbaa !78
  %i.ev = sub nsw i32 %i.et, %i.eu
  %i.ew = sext i32 %i.ev to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEEEE16nonZerosEstimateEv.exit183

bb.v:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEEEE16nonZerosEstimateEv.exit
  %i.ex = icmp eq i64 %i.d, 0
  br i1 %i.ex, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEEEE16nonZerosEstimateEv.exit183, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ey = ptrtoint ptr %i.eo to i64               ; 2 uses
  %i.ez = and i64 %i.ey, 3
  %.not.i.i.i.i.i.i.i.i.i149 = icmp eq i64 %i.ez, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i149, label %bb.x, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150

bb.x:                                             ; preds = %bb.w
  %i.fa = lshr exact i64 %i.ey, 2
  %i.fb = sub nsw i64 0, %i.fa
  %i.fc = and i64 %i.fb, 3
  %i.fd = tail call i64 @llvm.smin.i64(i64 %i.fc, i64 %i.d)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150: ; preds = %bb.x, %bb.w
  %.0.i.i.i.i.i.i.i.i.i151 = phi i64 [ %i.fd, %bb.x ], [ %i.d, %bb.w ] ; 12 uses
  %i.fe = sub nsw i64 %i.d, %.0.i.i.i.i.i.i.i.i.i151 ; 5 uses
  %i.ff = sdiv i64 %i.fe, 8
  %i.fg = shl nsw i64 %i.ff, 3                    ; 2 uses
  %i.fh = sdiv i64 %i.fe, 4                       ; 2 uses
  %i.fi = shl nsw i64 %i.fh, 2                    ; 2 uses
  %i.fj = add nsw i64 %i.fg, %.0.i.i.i.i.i.i.i.i.i151 ; 2 uses
  %i.fk = add nsw i64 %i.fi, %.0.i.i.i.i.i.i.i.i.i151 ; 4 uses
  %.off.i.i.i.i.i152 = add i64 %i.fe, 3
  %.not.i.i.i.i.i153 = icmp ult i64 %.off.i.i.i.i.i152, 7
  br i1 %.not.i.i.i.i.i153, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150
  %i.fl = getelementptr [4 x i8], ptr %i.eo, i64 %.0.i.i.i.i.i.i.i.i.i151 ; 2 uses
  %i.fm = load <2 x i64>, ptr %i.fl, align 1, !tbaa !119 ; 2 uses
  %i.fn = icmp sgt i64 %i.fe, 7
  br i1 %i.fn, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.fo = getelementptr i8, ptr %i.fl, i64 16
  %i.fp = load <4 x i32>, ptr %i.fo, align 1, !tbaa !119 ; 2 uses
  %i.fq = bitcast <2 x i64> %i.fm to <4 x i32>    ; 2 uses
  %i.fr = icmp samesign ugt i64 %i.fe, 15
  br i1 %i.fr, label %.lr.ph.preheader.i.i.i.i.i172, label %._crit_edge.i.i.i.i.i169

.lr.ph.preheader.i.i.i.i.i172:                    ; preds = %bb.z
  %.05777.i.i.i.i.i173 = add nsw i64 %.0.i.i.i.i.i.i.i.i.i151, 8
  br label %.lr.ph.i.i.i.i.i174

._crit_edge.i.i.i.i.i169:                         ; preds = %.lr.ph.i.i.i.i.i174, %bb.z
  %.lcssa.i.i.i.i.i170 = phi <4 x i32> [ %i.fp, %bb.z ], [ %i.gc, %.lr.ph.i.i.i.i.i174 ]
  %.sroa.067.0.lcssa.i.i.i.i.i171 = phi <4 x i32> [ %i.fq, %bb.z ], [ %i.fy, %.lr.ph.i.i.i.i.i174 ]
  %i.fs = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i.i171, %.lcssa.i.i.i.i.i170 ; 2 uses
  %i.ft = bitcast <4 x i32> %i.fs to <2 x i64>
  %i.fu = icmp sgt i64 %i.fi, %i.fg
  br i1 %i.fu, label %bb.aa, label %bb.ab

.lr.ph.i.i.i.i.i174:                              ; preds = %.lr.ph.i.i.i.i.i174, %.lr.ph.preheader.i.i.i.i.i172
  %.05780.i.i.i.i.i175 = phi i64 [ %.057.i.i.i.i.i178, %.lr.ph.i.i.i.i.i174 ], [ %.05777.i.i.i.i.i173, %.lr.ph.preheader.i.i.i.i.i172 ] ; 3 uses
  %.057.in79.i.i.i.i.i176 = phi i64 [ %.05780.i.i.i.i.i175, %.lr.ph.i.i.i.i.i174 ], [ %.0.i.i.i.i.i.i.i.i.i151, %.lr.ph.preheader.i.i.i.i.i172 ]
  %.sroa.067.078.i.i.i.i.i177 = phi <4 x i32> [ %i.fy, %.lr.ph.i.i.i.i.i174 ], [ %i.fq, %.lr.ph.preheader.i.i.i.i.i172 ]
  %i.fv = phi <4 x i32> [ %i.gc, %.lr.ph.i.i.i.i.i174 ], [ %i.fp, %.lr.ph.preheader.i.i.i.i.i172 ]
  %i.fw = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %.05780.i.i.i.i.i175
  %i.fx = load <4 x i32>, ptr %i.fw, align 1, !tbaa !119
  %i.fy = add <4 x i32> %i.fx, %.sroa.067.078.i.i.i.i.i177 ; 2 uses
  %i.fz = getelementptr [4 x i8], ptr %i.eo, i64 %.057.in79.i.i.i.i.i176
  %i.ga = getelementptr i8, ptr %i.fz, i64 48
  %i.gb = load <4 x i32>, ptr %i.ga, align 1, !tbaa !119
  %i.gc = add <4 x i32> %i.gb, %i.fv              ; 2 uses
  %.057.i.i.i.i.i178 = add nsw i64 %.05780.i.i.i.i.i175, 8 ; 2 uses
  %i.gd = icmp slt i64 %.057.i.i.i.i.i178, %i.fj
  br i1 %i.gd, label %.lr.ph.i.i.i.i.i174, label %._crit_edge.i.i.i.i.i169, !llvm.loop !383

bb.aa:                                            ; preds = %._crit_edge.i.i.i.i.i169
  %i.ge = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %i.fj
  %i.gf = load <4 x i32>, ptr %i.ge, align 1, !tbaa !119
  %i.gg = add <4 x i32> %i.gf, %i.fs
  %i.gh = bitcast <4 x i32> %i.gg to <2 x i64>
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %._crit_edge.i.i.i.i.i169, %bb.y
  %.sroa.067.2.i.i.i.i.i154 = phi <2 x i64> [ %i.fm, %bb.y ], [ %i.gh, %bb.aa ], [ %i.ft, %._crit_edge.i.i.i.i.i169 ] ; 2 uses
  %i.gi = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i154 to <4 x i32>
  %i.gj = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i154 to <4 x i32> ; 2 uses
  %i.gk = shufflevector <4 x i32> %i.gj, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.gl = add <4 x i32> %i.gk, %i.gi              ; 2 uses
  %shift487 = shufflevector <4 x i32> %i.gl, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop488 = add nsw <4 x i32> %i.gl, %shift487
  %5 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.gj) ; 2 uses
  %i.gm = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i151, 0
  br i1 %i.gm, label %.lr.ph85.i.i.i.i.i165.preheader, label %.preheader.i.i.i.i.i157

.lr.ph85.i.i.i.i.i165.preheader:                  ; preds = %bb.ab
  %min.iters.check429 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i151, 8
  br i1 %min.iters.check429, label %.lr.ph85.i.i.i.i.i165.preheader503, label %vector.ph430

vector.ph430:                                     ; preds = %.lr.ph85.i.i.i.i.i165.preheader
  %n.vec431 = and i64 %.0.i.i.i.i.i.i.i.i.i151, 9223372036854775800 ; 3 uses
  %i.gn = shufflevector <4 x i32> %foldExtExtBinop488, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body432

vector.body432:                                   ; preds = %vector.body432, %vector.ph430
  %index433 = phi i64 [ 0, %vector.ph430 ], [ %index.next438, %vector.body432 ] ; 2 uses
  %vec.phi434 = phi <4 x i32> [ %i.gn, %vector.ph430 ], [ %i.gq, %vector.body432 ]
  %vec.phi435 = phi <4 x i32> [ zeroinitializer, %vector.ph430 ], [ %i.gr, %vector.body432 ]
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %index433 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %wide.load436 = load <4 x i32>, ptr %i.go, align 4, !tbaa !78
  %wide.load437 = load <4 x i32>, ptr %i.gp, align 4, !tbaa !78
  %i.gq = add <4 x i32> %wide.load436, %vec.phi434 ; 2 uses
  %i.gr = add <4 x i32> %wide.load437, %vec.phi435 ; 2 uses
  %index.next438 = add nuw i64 %index433, 8       ; 2 uses
  %i.gs = icmp eq i64 %index.next438, %n.vec431
  br i1 %i.gs, label %middle.block439, label %vector.body432, !llvm.loop !390

middle.block439:                                  ; preds = %vector.body432
  %bin.rdx440 = add <4 x i32> %i.gr, %i.gq
  %i.gt = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx440) ; 2 uses
  %cmp.n441 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i151, %n.vec431
  br i1 %cmp.n441, label %.preheader.i.i.i.i.i157, label %.lr.ph85.i.i.i.i.i165.preheader503

.lr.ph85.i.i.i.i.i165.preheader503:               ; preds = %.lr.ph85.i.i.i.i.i165.preheader, %middle.block439
  %.05683.i.i.i.i.i166.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i165.preheader ], [ %n.vec431, %middle.block439 ]
  %.07582.i.i.i.i.i167.ph = phi i32 [ %5, %.lr.ph85.i.i.i.i.i165.preheader ], [ %i.gt, %middle.block439 ]
  br label %.lr.ph85.i.i.i.i.i165

.preheader.i.i.i.i.i157:                          ; preds = %.lr.ph85.i.i.i.i.i165, %middle.block439, %bb.ab
  %.075.lcssa.i.i.i.i.i158 = phi i32 [ %5, %bb.ab ], [ %i.gt, %middle.block439 ], [ %i.hj, %.lr.ph85.i.i.i.i.i165 ] ; 3 uses
  %i.gu = icmp slt i64 %i.fk, %i.d
  br i1 %i.gu, label %.lr.ph89.i.i.i.i.i162.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159

.lr.ph89.i.i.i.i.i162.preheader:                  ; preds = %.preheader.i.i.i.i.i157
  %i.gv = shl nsw i64 %i.fh, 2
  %i.gw = add i64 %.0.i.i.i.i.i.i.i.i.i151, %i.gv
  %i.gx = sub i64 %i.d, %i.gw                     ; 3 uses
  %min.iters.check445 = icmp ult i64 %i.gx, 8
  br i1 %min.iters.check445, label %.lr.ph89.i.i.i.i.i162.preheader498, label %vector.ph446

vector.ph446:                                     ; preds = %.lr.ph89.i.i.i.i.i162.preheader
  %n.vec447 = and i64 %i.gx, -8                   ; 3 uses
  %i.gy = add i64 %i.fk, %n.vec447
  %i.gz = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i158, i64 0
  %i.ha = getelementptr [4 x i8], ptr %i.eo, i64 %i.fk
  br label %vector.body448

vector.body448:                                   ; preds = %vector.body448, %vector.ph446
  %index449 = phi i64 [ 0, %vector.ph446 ], [ %index.next454, %vector.body448 ] ; 2 uses
  %vec.phi450 = phi <4 x i32> [ %i.gz, %vector.ph446 ], [ %i.hd, %vector.body448 ]
  %vec.phi451 = phi <4 x i32> [ zeroinitializer, %vector.ph446 ], [ %i.he, %vector.body448 ]
  %i.hb = getelementptr [4 x i8], ptr %i.ha, i64 %index449 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  %wide.load452 = load <4 x i32>, ptr %i.hb, align 4, !tbaa !78
  %wide.load453 = load <4 x i32>, ptr %i.hc, align 4, !tbaa !78
  %i.hd = add <4 x i32> %wide.load452, %vec.phi450 ; 2 uses
  %i.he = add <4 x i32> %wide.load453, %vec.phi451 ; 2 uses
  %index.next454 = add nuw i64 %index449, 8       ; 2 uses
  %i.hf = icmp eq i64 %index.next454, %n.vec447
  br i1 %i.hf, label %middle.block455, label %vector.body448, !llvm.loop !391

middle.block455:                                  ; preds = %vector.body448
  %bin.rdx456 = add <4 x i32> %i.he, %i.hd
  %i.hg = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx456) ; 2 uses
  %cmp.n457 = icmp eq i64 %i.gx, %n.vec447
  br i1 %cmp.n457, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, label %.lr.ph89.i.i.i.i.i162.preheader498

.lr.ph89.i.i.i.i.i162.preheader498:               ; preds = %.lr.ph89.i.i.i.i.i162.preheader, %middle.block455
  %.05588.i.i.i.i.i163.ph = phi i64 [ %i.fk, %.lr.ph89.i.i.i.i.i162.preheader ], [ %i.gy, %middle.block455 ]
  %.187.i.i.i.i.i164.ph = phi i32 [ %.075.lcssa.i.i.i.i.i158, %.lr.ph89.i.i.i.i.i162.preheader ], [ %i.hg, %middle.block455 ]
  br label %.lr.ph89.i.i.i.i.i162

.lr.ph85.i.i.i.i.i165:                            ; preds = %.lr.ph85.i.i.i.i.i165.preheader503, %.lr.ph85.i.i.i.i.i165
  %.05683.i.i.i.i.i166 = phi i64 [ %i.hk, %.lr.ph85.i.i.i.i.i165 ], [ %.05683.i.i.i.i.i166.ph, %.lr.ph85.i.i.i.i.i165.preheader503 ] ; 2 uses
  %.07582.i.i.i.i.i167 = phi i32 [ %i.hj, %.lr.ph85.i.i.i.i.i165 ], [ %.07582.i.i.i.i.i167.ph, %.lr.ph85.i.i.i.i.i165.preheader503 ]
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %.05683.i.i.i.i.i166
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !78
  %i.hj = add nsw i32 %i.hi, %.07582.i.i.i.i.i167 ; 2 uses
  %i.hk = add nuw nsw i64 %.05683.i.i.i.i.i166, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i168 = icmp eq i64 %i.hk, %.0.i.i.i.i.i.i.i.i.i151
  br i1 %exitcond.not.i.i.i.i.i168, label %.preheader.i.i.i.i.i157, label %.lr.ph85.i.i.i.i.i165, !llvm.loop !392

.lr.ph89.i.i.i.i.i162:                            ; preds = %.lr.ph89.i.i.i.i.i162.preheader498, %.lr.ph89.i.i.i.i.i162
  %.05588.i.i.i.i.i163 = phi i64 [ %i.ho, %.lr.ph89.i.i.i.i.i162 ], [ %.05588.i.i.i.i.i163.ph, %.lr.ph89.i.i.i.i.i162.preheader498 ] ; 2 uses
  %.187.i.i.i.i.i164 = phi i32 [ %i.hn, %.lr.ph89.i.i.i.i.i162 ], [ %.187.i.i.i.i.i164.ph, %.lr.ph89.i.i.i.i.i162.preheader498 ]
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.eo, i64 %.05588.i.i.i.i.i163
  %i.hm = load i32, ptr %i.hl, align 4, !tbaa !78
  %i.hn = add nsw i32 %i.hm, %.187.i.i.i.i.i164   ; 2 uses
  %i.ho = add nsw i64 %.05588.i.i.i.i.i163, 1     ; 2 uses
  %i.hp = icmp slt i64 %i.ho, %i.d
  br i1 %i.hp, label %.lr.ph89.i.i.i.i.i162, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, !llvm.loop !393

bb.ac:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150
  %i.hq = load i32, ptr %i.eo, align 4, !tbaa !78 ; 3 uses
  %i.hr = icmp sgt i64 %i.d, 1
  br i1 %i.hr, label %.lr.ph94.i.i.i.i.i179.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159

.lr.ph94.i.i.i.i.i179.preheader:                  ; preds = %bb.ac
  %i.hs = add nsw i64 %i.d, -1                    ; 2 uses
  %min.iters.check461 = icmp ult i64 %i.d, 9
  br i1 %min.iters.check461, label %.lr.ph94.i.i.i.i.i179.preheader494, label %vector.ph462

vector.ph462:                                     ; preds = %.lr.ph94.i.i.i.i.i179.preheader
  %n.vec463 = and i64 %i.hs, -8                   ; 3 uses
  %i.ht = or disjoint i64 %n.vec463, 1
  %i.hu = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.hq, i64 0
  br label %vector.body464

vector.body464:                                   ; preds = %vector.body464, %vector.ph462
  %index465 = phi i64 [ 0, %vector.ph462 ], [ %index.next470, %vector.body464 ] ; 2 uses
  %vec.phi466 = phi <4 x i32> [ %i.hu, %vector.ph462 ], [ %i.hy, %vector.body464 ]
  %vec.phi467 = phi <4 x i32> [ zeroinitializer, %vector.ph462 ], [ %i.hz, %vector.body464 ]
  %i.hv = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %index465 ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 4
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hv, i64 20
  %wide.load468 = load <4 x i32>, ptr %i.hw, align 4, !tbaa !78
  %wide.load469 = load <4 x i32>, ptr %i.hx, align 4, !tbaa !78
  %i.hy = add <4 x i32> %wide.load468, %vec.phi466 ; 2 uses
  %i.hz = add <4 x i32> %wide.load469, %vec.phi467 ; 2 uses
  %index.next470 = add nuw i64 %index465, 8       ; 2 uses
  %i.ia = icmp eq i64 %index.next470, %n.vec463
  br i1 %i.ia, label %middle.block471, label %vector.body464, !llvm.loop !394

middle.block471:                                  ; preds = %vector.body464
  %bin.rdx472 = add <4 x i32> %i.hz, %i.hy
  %i.ib = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx472) ; 2 uses
  %cmp.n473 = icmp eq i64 %i.hs, %n.vec463
  br i1 %cmp.n473, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, label %.lr.ph94.i.i.i.i.i179.preheader494

.lr.ph94.i.i.i.i.i179.preheader494:               ; preds = %.lr.ph94.i.i.i.i.i179.preheader, %middle.block471
  %.092.i.i.i.i.i180.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i179.preheader ], [ %i.ht, %middle.block471 ]
  %.291.i.i.i.i.i181.ph = phi i32 [ %i.hq, %.lr.ph94.i.i.i.i.i179.preheader ], [ %i.ib, %middle.block471 ]
  br label %.lr.ph94.i.i.i.i.i179

.lr.ph94.i.i.i.i.i179:                            ; preds = %.lr.ph94.i.i.i.i.i179.preheader494, %.lr.ph94.i.i.i.i.i179
  %.092.i.i.i.i.i180 = phi i64 [ %i.if, %.lr.ph94.i.i.i.i.i179 ], [ %.092.i.i.i.i.i180.ph, %.lr.ph94.i.i.i.i.i179.preheader494 ] ; 2 uses
  %.291.i.i.i.i.i181 = phi i32 [ %i.ie, %.lr.ph94.i.i.i.i.i179 ], [ %.291.i.i.i.i.i181.ph, %.lr.ph94.i.i.i.i.i179.preheader494 ]
  %i.ic = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %.092.i.i.i.i.i180
  %i.id = load i32, ptr %i.ic, align 4, !tbaa !78
  %i.ie = add nsw i32 %i.id, %.291.i.i.i.i.i181   ; 2 uses
  %i.if = add nuw nsw i64 %.092.i.i.i.i.i180, 1   ; 2 uses
  %exitcond102.not.i.i.i.i.i182 = icmp eq i64 %i.if, %i.d
  br i1 %exitcond102.not.i.i.i.i.i182, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, label %.lr.ph94.i.i.i.i.i179, !llvm.loop !395

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159: ; preds = %.lr.ph89.i.i.i.i.i162, %.lr.ph94.i.i.i.i.i179, %middle.block455, %middle.block471, %bb.ac, %.preheader.i.i.i.i.i157
  %.0.i.i.i160 = phi i32 [ %i.ie, %.lr.ph94.i.i.i.i.i179 ], [ %.075.lcssa.i.i.i.i.i158, %.preheader.i.i.i.i.i157 ], [ %i.hq, %bb.ac ], [ %i.ib, %middle.block471 ], [ %i.hg, %middle.block455 ], [ %i.hn, %.lr.ph89.i.i.i.i.i162 ]
  %i.ig = sext i32 %.0.i.i.i160 to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEEEE16nonZerosEstimateEv.exit183

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEEEE16nonZerosEstimateEv.exit183: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, %bb.v, %bb.u
  %.0.i.i161 = phi i64 [ %i.ew, %bb.u ], [ %i.ig, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159 ], [ 0, %bb.v ]
  %i.ih = add nsw i64 %.0.i.i161, %.0.i.i
  %i.ii = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 7 uses
  store i64 0, ptr %i.ii, align 8, !tbaa !306
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !87
  %i.il = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.im = load i64, ptr %i.il, align 8, !tbaa !92
  %i.in = shl i64 %i.im, 2
  %i.io = add i64 %i.in, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ik, i8 0, i64 %i.io, i1 false)
  %i.ip = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !93 ; 2 uses
  %.not.i = icmp eq ptr %i.iq, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIiLi0EiE7setZeroEv.exit, label %bb.ad

bb.ad:                                            ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEEEE16nonZerosEstimateEv.exit183
  %i.ir = load i64, ptr %i.il, align 8, !tbaa !92
  %i.is = shl i64 %i.ir, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.iq, i8 0, i64 %i.is, i1 false)
  br label %_ZN5Eigen12SparseMatrixIiLi0EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIiLi0EiE7setZeroEv.exit:   ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIiLi0EiEEEEE16nonZerosEstimateEv.exit183, %bb.ad
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  invoke void @_ZN5Eigen8internal17CompressedStorageIiiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.it, i64 noundef %i.ih)
          to label %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit.preheader unwind label %bb.ah

_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit.preheader: ; preds = %_ZN5Eigen12SparseMatrixIiLi0EiE7setZeroEv.exit
  %i.iu = icmp sgt i64 %i.d, 0
  br i1 %i.iu, label %.lr.ph297, label %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit._crit_edge

.lr.ph297:                                        ; preds = %_ZN5Eigen12SparseMatrixIiLi0EiE7reserveEl.exit.preheader
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ix = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.iy = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.iz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.jb = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 9 uses
  %i.jc = udiv i64 %i.b, 11
end_hunk_0
