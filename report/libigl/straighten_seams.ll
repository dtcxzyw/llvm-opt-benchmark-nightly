inline.NumInlined: 5387
inline.NumDeleted: 2526
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 83
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN5Eigen8internal43conservative_sparse_sparse_product_selectorINS_12SparseMatrixIbLi0EiEENS_9TransposeIS3_EES3_Li0ELi1ELi0EE3runERKS3_RKS5_RS3_:bb.a
          cleanup
  call void @_ZN5Eigen12SparseMatrixIbLi1EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #23
  br label %.body

.body:                                            ; preds = %bb.e, %bb.o
  %.pn = phi { ptr, i32 } [ %i.am, %bb.o ], [ %i.q, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN5Eigen12SparseMatrixIbLi1EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_9TransposeINS_12SparseMatrixIbLi0EiEEEENS3_IbLi1EiEES6_EEvRKT_RKT0_RT1_b(ptr nofree readonly captures(none) %.8.val, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %.8.val, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !485  ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !543  ; 14 uses
  %i.e = icmp ugt i64 %i.b, 131072                ; 4 uses
  br i1 %i.e, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.b) #24 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !117
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.b) #24 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %_ZN5Eigen8internal14aligned_mallocEm.exit140

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !117
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc139 unwind label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit150

.noexc139:                                        ; preds = %bb.e
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit140:     ; preds = %bb.d
  %i.l = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.l, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread

_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit140
  %i.m = shl nuw i64 %i.b, 3
  br label %bb.h

bb.f:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit140
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !117
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc141 unwind label %.split

.noexc141:                                        ; preds = %bb.f
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit: ; preds = %bb.a
  %i.o = add nuw nsw i64 %i.b, 15                 ; 2 uses
  %i.p = alloca i8, i64 %i.o, align 16            ; 2 uses
  %i.q = alloca i8, i64 %i.o, align 16            ; 2 uses
  %i.r = shl nuw nsw i64 %i.b, 3                  ; 2 uses
  %i.s = icmp samesign ult i64 %i.b, 16385
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit
  %i.t = add nuw nsw i64 %i.r, 15
  %i.u = alloca i8, i64 %i.t, align 16
  br label %bb.j

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit
  %i.v = phi i64 [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread ], [ %i.r, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit ]
  %i.w = phi ptr [ %i.f, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread ], [ %i.p, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit ] ; 2 uses
  %i.x = phi ptr [ %i.i, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread ], [ %i.q, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit ] ; 2 uses
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.v) #24 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aa, align 8, !tbaa !117
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc143 unwind label %.split43

.noexc143:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ab = phi ptr [ %i.p, %bb.g ], [ %i.w, %bb.h ] ; 5 uses
  %i.ac = phi ptr [ %i.q, %bb.g ], [ %i.x, %bb.h ] ; 5 uses
  %i.ad = phi ptr [ %i.u, %bb.g ], [ %i.y, %bb.h ] ; 4 uses
  %i.ae = icmp samesign ugt i64 %i.b, 16384       ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ab, i8 0, i64 %i.b, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.8.val, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !263 ; 13 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !244 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !240
  %i.am = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !56
  %i.ao = load i32, ptr %i.aj, align 4, !tbaa !56
  %i.ap = sub nsw i32 %i.an, %i.ao
  %i.aq = sext i32 %i.ap to i64
  br label %_ZNK5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIbLi0EiEEEENS0_13IteratorBasedEbE16nonZerosEstimateEv.exit

bb.l:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.8.val, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !240 ; 11 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZNK5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIbLi0EiEEEENS0_13IteratorBasedEbE16nonZerosEstimateEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.av = and i64 %i.au, 3
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.n, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.aw = lshr exact i64 %i.au, 2
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = and i64 %i.ax, 3
  %i.az = tail call i64 @llvm.smin.i64(i64 %i.ay, i64 %i.as)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.az, %bb.n ], [ %i.as, %bb.m ] ; 12 uses
  %i.ba = sub nsw i64 %i.as, %.0.i.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.bb = sdiv i64 %i.ba, 8
  %i.bc = shl nsw i64 %i.bb, 3                    ; 2 uses
  %i.bd = sdiv i64 %i.ba, 4                       ; 2 uses
  %i.be = shl nsw i64 %i.bd, 2                    ; 2 uses
  %i.bf = add nsw i64 %i.bc, %.0.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bg = add nsw i64 %i.be, %.0.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %.off.i.i.i.i.i.i = add i64 %i.ba, 3
  %.not.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i, 7
  br i1 %.not.i.i.i.i.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i
  %i.bh = getelementptr [4 x i8], ptr %i.ag, i64 %.0.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bi = load <2 x i64>, ptr %i.bh, align 1, !tbaa !67 ; 2 uses
  %i.bj = icmp sgt i64 %i.ba, 7
  br i1 %i.bj, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr i8, ptr %i.bh, i64 16
  %i.bl = load <4 x i32>, ptr %i.bk, align 1, !tbaa !67 ; 2 uses
  %i.bm = bitcast <2 x i64> %i.bi to <4 x i32>    ; 2 uses
  %i.bn = icmp samesign ugt i64 %i.ba, 15
  br i1 %i.bn, label %.lr.ph.preheader.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i.i:                     ; preds = %bb.p
  %.05777.i.i.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i, %bb.p
  %.lcssa.i.i.i.i.i.i = phi <4 x i32> [ %i.bl, %bb.p ], [ %i.by, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i.i.i = phi <4 x i32> [ %i.bm, %bb.p ], [ %i.bu, %.lr.ph.i.i.i.i.i.i ]
  %i.bo = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i.i.i, %.lcssa.i.i.i.i.i.i ; 2 uses
  %i.bp = bitcast <4 x i32> %i.bo to <2 x i64>
  %i.bq = icmp sgt i64 %i.be, %i.bc
  br i1 %i.bq, label %bb.q, label %bb.r

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i
  %.05780.i.i.i.i.i.i = phi i64 [ %.057.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.05777.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i.i.i = phi i64 [ %.05780.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i.i ]
  %.sroa.067.078.i.i.i.i.i.i = phi <4 x i32> [ %i.bu, %.lr.ph.i.i.i.i.i.i ], [ %i.bm, %.lr.ph.preheader.i.i.i.i.i.i ]
  %i.br = phi <4 x i32> [ %i.by, %.lr.ph.i.i.i.i.i.i ], [ %i.bl, %.lr.ph.preheader.i.i.i.i.i.i ]
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05780.i.i.i.i.i.i
  %i.bt = load <4 x i32>, ptr %i.bs, align 1, !tbaa !67
  %i.bu = add <4 x i32> %i.bt, %.sroa.067.078.i.i.i.i.i.i ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.ag, i64 %.057.in79.i.i.i.i.i.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 48
  %i.bx = load <4 x i32>, ptr %i.bw, align 1, !tbaa !67
  %i.by = add <4 x i32> %i.bx, %i.br              ; 2 uses
  %.057.i.i.i.i.i.i = add nsw i64 %.05780.i.i.i.i.i.i, 8 ; 2 uses
  %i.bz = icmp slt i64 %.057.i.i.i.i.i.i, %i.bf
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !544

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i.i
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.bf
  %i.cb = load <4 x i32>, ptr %i.ca, align 1, !tbaa !67
  %i.cc = add <4 x i32> %i.cb, %i.bo
  %i.cd = bitcast <4 x i32> %i.cc to <2 x i64>
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i.i.i, %bb.o
  %.sroa.067.2.i.i.i.i.i.i = phi <2 x i64> [ %i.bi, %bb.o ], [ %i.cd, %bb.q ], [ %i.bp, %._crit_edge.i.i.i.i.i.i ] ; 2 uses
  %i.ce = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i.i to <4 x i32>
  %i.cf = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i.i to <4 x i32>
  %i.cg = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ch = add <4 x i32> %i.cg, %i.ce              ; 2 uses
  %shift = shufflevector <4 x i32> %i.ch, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.ch, %shift ; 2 uses
  %2 = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ci = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ci, label %.lr.ph85.i.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.preheader:                   ; preds = %bb.r
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.i.i.preheader134, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.cj = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cj, %vector.ph ], [ %i.cm, %vector.body ]
  %vec.phi13 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cn, %vector.body ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load = load <4 x i32>, ptr %i.ck, align 4, !tbaa !56
  %wide.load14 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !56
  %i.cm = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.cn = add <4 x i32> %wide.load14, %vec.phi13  ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !545

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cn, %i.cm
  %i.cp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.preheader134

.lr.ph85.i.i.i.i.i.i.preheader134:                ; preds = %.lr.ph85.i.i.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.i.i.ph = phi i32 [ %2, %.lr.ph85.i.i.i.i.i.i.preheader ], [ %i.cp, %middle.block ]
  br label %.lr.ph85.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %.lr.ph85.i.i.i.i.i.i, %middle.block, %bb.r
  %.075.lcssa.i.i.i.i.i.i = phi i32 [ %2, %bb.r ], [ %i.cp, %middle.block ], [ %i.df, %.lr.ph85.i.i.i.i.i.i ] ; 3 uses
  %i.cq = icmp slt i64 %i.bg, %i.as
  br i1 %i.cq, label %.lr.ph89.i.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i.i

.lr.ph89.i.i.i.i.i.i.preheader:                   ; preds = %.preheader.i.i.i.i.i.i
  %i.cr = shl nsw i64 %i.bd, 2
  %i.cs = add i64 %.0.i.i.i.i.i.i.i.i.i.i, %i.cr
  %i.ct = sub i64 %i.as, %i.cs                    ; 3 uses
  %min.iters.check16 = icmp ult i64 %i.ct, 8
  br i1 %min.iters.check16, label %.lr.ph89.i.i.i.i.i.i.preheader129, label %vector.ph17

vector.ph17:                                      ; preds = %.lr.ph89.i.i.i.i.i.i.preheader
  %n.vec18 = and i64 %i.ct, -8                    ; 3 uses
  %i.cu = add i64 %i.bg, %n.vec18
  %i.cv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i.i, i64 0
  %i.cw = getelementptr [4 x i8], ptr %i.ag, i64 %i.bg
  br label %vector.body19

vector.body19:                                    ; preds = %vector.body19, %vector.ph17
  %index20 = phi i64 [ 0, %vector.ph17 ], [ %index.next25, %vector.body19 ] ; 2 uses
  %vec.phi21 = phi <4 x i32> [ %i.cv, %vector.ph17 ], [ %i.cz, %vector.body19 ]
  %vec.phi22 = phi <4 x i32> [ zeroinitializer, %vector.ph17 ], [ %i.da, %vector.body19 ]
  %i.cx = getelementptr [4 x i8], ptr %i.cw, i64 %index20 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load23 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !56
  %wide.load24 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !56
  %i.cz = add <4 x i32> %wide.load23, %vec.phi21  ; 2 uses
  %i.da = add <4 x i32> %wide.load24, %vec.phi22  ; 2 uses
  %index.next25 = add nuw i64 %index20, 8         ; 2 uses
  %i.db = icmp eq i64 %index.next25, %n.vec18
  br i1 %i.db, label %middle.block26, label %vector.body19, !llvm.loop !546

middle.block26:                                   ; preds = %vector.body19
  %bin.rdx27 = add <4 x i32> %i.da, %i.cz
  %i.dc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx27) ; 2 uses
  %cmp.n28 = icmp eq i64 %i.ct, %n.vec18
  br i1 %cmp.n28, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i.i, label %.lr.ph89.i.i.i.i.i.i.preheader129

.lr.ph89.i.i.i.i.i.i.preheader129:                ; preds = %.lr.ph89.i.i.i.i.i.i.preheader, %middle.block26
  %.05588.i.i.i.i.i.i.ph = phi i64 [ %i.bg, %.lr.ph89.i.i.i.i.i.i.preheader ], [ %i.cu, %middle.block26 ]
  %.187.i.i.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i.i.i, %.lr.ph89.i.i.i.i.i.i.preheader ], [ %i.dc, %middle.block26 ]
  br label %.lr.ph89.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i:                             ; preds = %.lr.ph85.i.i.i.i.i.i.preheader134, %.lr.ph85.i.i.i.i.i.i
  %.05683.i.i.i.i.i.i = phi i64 [ %i.dg, %.lr.ph85.i.i.i.i.i.i ], [ %.05683.i.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.i.preheader134 ] ; 2 uses
  %.07582.i.i.i.i.i.i = phi i32 [ %i.df, %.lr.ph85.i.i.i.i.i.i ], [ %.07582.i.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.i.preheader134 ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.05683.i.i.i.i.i.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !56
  %i.df = add nsw i32 %i.de, %.07582.i.i.i.i.i.i  ; 2 uses
  %i.dg = add nuw nsw i64 %.05683.i.i.i.i.i.i, 1  ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.dg, %.0.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i, label %.preheader.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i, !llvm.loop !547

.lr.ph89.i.i.i.i.i.i:                             ; preds = %.lr.ph89.i.i.i.i.i.i.preheader129, %.lr.ph89.i.i.i.i.i.i
  %.05588.i.i.i.i.i.i = phi i64 [ %i.dk, %.lr.ph89.i.i.i.i.i.i ], [ %.05588.i.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.i.preheader129 ] ; 2 uses
  %.187.i.i.i.i.i.i = phi i32 [ %i.dj, %.lr.ph89.i.i.i.i.i.i ], [ %.187.i.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.i.preheader129 ]
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05588.i.i.i.i.i.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !56
  %i.dj = add nsw i32 %i.di, %.187.i.i.i.i.i.i    ; 2 uses
  %i.dk = add nsw i64 %.05588.i.i.i.i.i.i, 1      ; 2 uses
  %i.dl = icmp slt i64 %i.dk, %i.as
  br i1 %i.dl, label %.lr.ph89.i.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i.i, !llvm.loop !548

bb.s:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i
  %i.dm = load i32, ptr %i.ag, align 4, !tbaa !56 ; 3 uses
  %i.dn = icmp sgt i64 %i.as, 1
  br i1 %i.dn, label %.lr.ph94.i.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i.i

.lr.ph94.i.i.i.i.i.i.preheader:                   ; preds = %bb.s
  %i.do = add nsw i64 %i.as, -1                   ; 2 uses
  %min.iters.check32 = icmp ult i64 %i.as, 9
  br i1 %min.iters.check32, label %.lr.ph94.i.i.i.i.i.i.preheader125, label %vector.ph33

vector.ph33:                                      ; preds = %.lr.ph94.i.i.i.i.i.i.preheader
  %n.vec34 = and i64 %i.do, -8                    ; 3 uses
  %i.dp = or disjoint i64 %n.vec34, 1
  %i.dq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.dm, i64 0
  br label %vector.body35

vector.body35:                                    ; preds = %vector.body35, %vector.ph33
  %index36 = phi i64 [ 0, %vector.ph33 ], [ %index.next41, %vector.body35 ] ; 2 uses
  %vec.phi37 = phi <4 x i32> [ %i.dq, %vector.ph33 ], [ %i.du, %vector.body35 ]
  %vec.phi38 = phi <4 x i32> [ zeroinitializer, %vector.ph33 ], [ %i.dv, %vector.body35 ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index36 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %wide.load39 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !56
  %wide.load40 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !56
  %i.du = add <4 x i32> %wide.load39, %vec.phi37  ; 2 uses
  %i.dv = add <4 x i32> %wide.load40, %vec.phi38  ; 2 uses
  %index.next41 = add nuw i64 %index36, 8         ; 2 uses
  %i.dw = icmp eq i64 %index.next41, %n.vec34
  br i1 %i.dw, label %middle.block42, label %vector.body35, !llvm.loop !549

middle.block42:                                   ; preds = %vector.body35
  %bin.rdx43 = add <4 x i32> %i.dv, %i.du
  %i.dx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx43) ; 2 uses
  %cmp.n44 = icmp eq i64 %i.do, %n.vec34
  br i1 %cmp.n44, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i.i, label %.lr.ph94.i.i.i.i.i.i.preheader125

.lr.ph94.i.i.i.i.i.i.preheader125:                ; preds = %.lr.ph94.i.i.i.i.i.i.preheader, %middle.block42
  %.092.i.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i.i.preheader ], [ %i.dp, %middle.block42 ]
  %.291.i.i.i.i.i.i.ph = phi i32 [ %i.dm, %.lr.ph94.i.i.i.i.i.i.preheader ], [ %i.dx, %middle.block42 ]
  br label %.lr.ph94.i.i.i.i.i.i

.lr.ph94.i.i.i.i.i.i:                             ; preds = %.lr.ph94.i.i.i.i.i.i.preheader125, %.lr.ph94.i.i.i.i.i.i
  %.092.i.i.i.i.i.i = phi i64 [ %i.eb, %.lr.ph94.i.i.i.i.i.i ], [ %.092.i.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.i.preheader125 ] ; 2 uses
  %.291.i.i.i.i.i.i = phi i32 [ %i.ea, %.lr.ph94.i.i.i.i.i.i ], [ %.291.i.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.i.preheader125 ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.092.i.i.i.i.i.i
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !56
  %i.ea = add nsw i32 %i.dz, %.291.i.i.i.i.i.i    ; 2 uses
  %i.eb = add nuw nsw i64 %.092.i.i.i.i.i.i, 1    ; 2 uses
  %exitcond102.not.i.i.i.i.i.i = icmp eq i64 %i.eb, %i.as
  br i1 %exitcond102.not.i.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i.i, label %.lr.ph94.i.i.i.i.i.i, !llvm.loop !550

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i.i: ; preds = %.lr.ph89.i.i.i.i.i.i, %.lr.ph94.i.i.i.i.i.i, %middle.block26, %middle.block42, %bb.s, %.preheader.i.i.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %i.ea, %.lr.ph94.i.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %i.dm, %bb.s ], [ %i.dx, %middle.block42 ], [ %i.dc, %middle.block26 ], [ %i.dj, %.lr.ph89.i.i.i.i.i.i ]
  %i.ec = sext i32 %.0.i.i.i.i to i64
  br label %_ZNK5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIbLi0EiEEEENS0_13IteratorBasedEbE16nonZerosEstimateEv.exit

_ZNK5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIbLi0EiEEEENS0_13IteratorBasedEbE16nonZerosEstimateEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i.i, %bb.l, %bb.k
  %.0.i.i.i = phi i64 [ %i.aq, %bb.k ], [ %i.ec, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i.i ], [ 0, %bb.l ]
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !409 ; 13 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIbLi0EiEEEENS0_13IteratorBasedEbE16nonZerosEstimateEv.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !406 ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.d
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !56
  %i.ek = load i32, ptr %i.eh, align 4, !tbaa !56
  %i.el = sub nsw i32 %i.ej, %i.ek
  %i.em = sext i32 %i.el to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi1EiEEEEE16nonZerosEstimateEv.exit

bb.u:                                             ; preds = %_ZNK5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIbLi0EiEEEENS0_13IteratorBasedEbE16nonZerosEstimateEv.exit
  %i.en = icmp eq i64 %i.d, 0
  br i1 %i.en, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi1EiEEEEE16nonZerosEstimateEv.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eo = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.ep = and i64 %i.eo, 3
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.w, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.eq = lshr exact i64 %i.eo, 2
  %i.er = sub nsw i64 0, %i.eq
  %i.es = and i64 %i.er, 3
  %i.et = tail call i64 @llvm.smin.i64(i64 %i.es, i64 %i.d)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.et, %bb.w ], [ %i.d, %bb.v ] ; 12 uses
  %i.eu = sub nsw i64 %i.d, %.0.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.ev = sdiv i64 %i.eu, 8
  %i.ew = shl nsw i64 %i.ev, 3                    ; 2 uses
  %i.ex = sdiv i64 %i.eu, 4                       ; 2 uses
  %i.ey = shl nsw i64 %i.ex, 2                    ; 2 uses
  %i.ez = add nsw i64 %i.ew, %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.fa = add nsw i64 %i.ey, %.0.i.i.i.i.i.i.i.i.i ; 4 uses
  %.off.i.i.i.i.i = add i64 %i.eu, 3
  %.not.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i, 7
  br i1 %.not.i.i.i.i.i, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.fb = getelementptr [4 x i8], ptr %i.ee, i64 %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.fc = load <2 x i64>, ptr %i.fb, align 1, !tbaa !67 ; 2 uses
  %i.fd = icmp sgt i64 %i.eu, 7
  br i1 %i.fd, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.fe = getelementptr i8, ptr %i.fb, i64 16
  %i.ff = load <4 x i32>, ptr %i.fe, align 1, !tbaa !67 ; 2 uses
  %i.fg = bitcast <2 x i64> %i.fc to <4 x i32>    ; 2 uses
  %i.fh = icmp samesign ugt i64 %i.eu, 15
  br i1 %i.fh, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.y
  %.05777.i.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.y
  %.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.ff, %bb.y ], [ %i.fs, %.lr.ph.i.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.fg, %bb.y ], [ %i.fo, %.lr.ph.i.i.i.i.i ]
  %i.fi = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i.i, %.lcssa.i.i.i.i.i ; 2 uses
  %i.fj = bitcast <4 x i32> %i.fi to <2 x i64>
  %i.fk = icmp sgt i64 %i.ey, %i.ew
  br i1 %i.fk, label %bb.z, label %bb.aa

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.05780.i.i.i.i.i = phi i64 [ %.057.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.05777.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i.i = phi i64 [ %.05780.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.067.078.i.i.i.i.i = phi <4 x i32> [ %i.fo, %.lr.ph.i.i.i.i.i ], [ %i.fg, %.lr.ph.preheader.i.i.i.i.i ]
  %i.fl = phi <4 x i32> [ %i.fs, %.lr.ph.i.i.i.i.i ], [ %i.ff, %.lr.ph.preheader.i.i.i.i.i ]
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %.05780.i.i.i.i.i
  %i.fn = load <4 x i32>, ptr %i.fm, align 1, !tbaa !67
  %i.fo = add <4 x i32> %i.fn, %.sroa.067.078.i.i.i.i.i ; 2 uses
  %i.fp = getelementptr [4 x i8], ptr %i.ee, i64 %.057.in79.i.i.i.i.i
  %i.fq = getelementptr i8, ptr %i.fp, i64 48
  %i.fr = load <4 x i32>, ptr %i.fq, align 1, !tbaa !67
  %i.fs = add <4 x i32> %i.fr, %i.fl              ; 2 uses
  %.057.i.i.i.i.i = add nsw i64 %.05780.i.i.i.i.i, 8 ; 2 uses
  %i.ft = icmp slt i64 %.057.i.i.i.i.i, %i.ez
  br i1 %i.ft, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !544

bb.z:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ez
  %i.fv = load <4 x i32>, ptr %i.fu, align 1, !tbaa !67
  %i.fw = add <4 x i32> %i.fv, %i.fi
  %i.fx = bitcast <4 x i32> %i.fw to <2 x i64>
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i.i.i.i, %bb.x
  %.sroa.067.2.i.i.i.i.i = phi <2 x i64> [ %i.fc, %bb.x ], [ %i.fx, %bb.z ], [ %i.fj, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.fy = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32>
  %i.fz = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32>
  %i.ga = shufflevector <4 x i32> %i.fz, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.gb = add <4 x i32> %i.ga, %i.fy              ; 2 uses
  %shift106 = shufflevector <4 x i32> %i.gb, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop107 = add nsw <4 x i32> %i.gb, %shift106 ; 2 uses
  %3 = extractelement <4 x i32> %foldExtExtBinop107, i64 0 ; 2 uses
  %i.gc = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gc, label %.lr.ph85.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.aa
  %min.iters.check48 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check48, label %.lr.ph85.i.i.i.i.i.preheader119, label %vector.ph49

vector.ph49:                                      ; preds = %.lr.ph85.i.i.i.i.i.preheader
  %n.vec50 = and i64 %.0.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.gd = shufflevector <4 x i32> %foldExtExtBinop107, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body51

vector.body51:                                    ; preds = %vector.body51, %vector.ph49
  %index52 = phi i64 [ 0, %vector.ph49 ], [ %index.next57, %vector.body51 ] ; 2 uses
  %vec.phi53 = phi <4 x i32> [ %i.gd, %vector.ph49 ], [ %i.gg, %vector.body51 ]
  %vec.phi54 = phi <4 x i32> [ zeroinitializer, %vector.ph49 ], [ %i.gh, %vector.body51 ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %index52 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %wide.load55 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !56
  %wide.load56 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !56
  %i.gg = add <4 x i32> %wide.load55, %vec.phi53  ; 2 uses
  %i.gh = add <4 x i32> %wide.load56, %vec.phi54  ; 2 uses
  %index.next57 = add nuw i64 %index52, 8         ; 2 uses
  %i.gi = icmp eq i64 %index.next57, %n.vec50
  br i1 %i.gi, label %middle.block58, label %vector.body51, !llvm.loop !551

middle.block58:                                   ; preds = %vector.body51
  %bin.rdx59 = add <4 x i32> %i.gh, %i.gg
  %i.gj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx59) ; 2 uses
  %cmp.n60 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i, %n.vec50
  br i1 %cmp.n60, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.preheader119

.lr.ph85.i.i.i.i.i.preheader119:                  ; preds = %.lr.ph85.i.i.i.i.i.preheader, %middle.block58
  %.05683.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i.preheader ], [ %n.vec50, %middle.block58 ]
  %.07582.i.i.i.i.i.ph = phi i32 [ %3, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.gj, %middle.block58 ]
  br label %.lr.ph85.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph85.i.i.i.i.i, %middle.block58, %bb.aa
  %.075.lcssa.i.i.i.i.i = phi i32 [ %3, %bb.aa ], [ %i.gj, %middle.block58 ], [ %i.gz, %.lr.ph85.i.i.i.i.i ] ; 3 uses
  %i.gk = icmp slt i64 %i.fa, %i.d
  br i1 %i.gk, label %.lr.ph89.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph89.i.i.i.i.i.preheader:                     ; preds = %.preheader.i.i.i.i.i
  %i.gl = shl nsw i64 %i.ex, 2
  %i.gm = add i64 %.0.i.i.i.i.i.i.i.i.i, %i.gl
  %i.gn = sub i64 %i.d, %i.gm                     ; 3 uses
  %min.iters.check64 = icmp ult i64 %i.gn, 8
  br i1 %min.iters.check64, label %.lr.ph89.i.i.i.i.i.preheader114, label %vector.ph65

vector.ph65:                                      ; preds = %.lr.ph89.i.i.i.i.i.preheader
  %n.vec66 = and i64 %i.gn, -8                    ; 3 uses
  %i.go = add i64 %i.fa, %n.vec66
  %i.gp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i, i64 0
  %i.gq = getelementptr [4 x i8], ptr %i.ee, i64 %i.fa
  br label %vector.body67

vector.body67:                                    ; preds = %vector.body67, %vector.ph65
  %index68 = phi i64 [ 0, %vector.ph65 ], [ %index.next73, %vector.body67 ] ; 2 uses
  %vec.phi69 = phi <4 x i32> [ %i.gp, %vector.ph65 ], [ %i.gt, %vector.body67 ]
  %vec.phi70 = phi <4 x i32> [ zeroinitializer, %vector.ph65 ], [ %i.gu, %vector.body67 ]
  %i.gr = getelementptr [4 x i8], ptr %i.gq, i64 %index68 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.load71 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !56
  %wide.load72 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !56
  %i.gt = add <4 x i32> %wide.load71, %vec.phi69  ; 2 uses
  %i.gu = add <4 x i32> %wide.load72, %vec.phi70  ; 2 uses
  %index.next73 = add nuw i64 %index68, 8         ; 2 uses
  %i.gv = icmp eq i64 %index.next73, %n.vec66
  br i1 %i.gv, label %middle.block74, label %vector.body67, !llvm.loop !552

middle.block74:                                   ; preds = %vector.body67
  %bin.rdx75 = add <4 x i32> %i.gu, %i.gt
  %i.gw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx75) ; 2 uses
  %cmp.n76 = icmp eq i64 %i.gn, %n.vec66
  br i1 %cmp.n76, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph89.i.i.i.i.i.preheader114

.lr.ph89.i.i.i.i.i.preheader114:                  ; preds = %.lr.ph89.i.i.i.i.i.preheader, %middle.block74
  %.05588.i.i.i.i.i.ph = phi i64 [ %i.fa, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.go, %middle.block74 ]
  %.187.i.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i.i, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.gw, %middle.block74 ]
  br label %.lr.ph89.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.preheader119, %.lr.ph85.i.i.i.i.i
  %.05683.i.i.i.i.i = phi i64 [ %i.ha, %.lr.ph85.i.i.i.i.i ], [ %.05683.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader119 ] ; 2 uses
  %.07582.i.i.i.i.i = phi i32 [ %i.gz, %.lr.ph85.i.i.i.i.i ], [ %.07582.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader119 ]
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.05683.i.i.i.i.i
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !56
  %i.gz = add nsw i32 %i.gy, %.07582.i.i.i.i.i    ; 2 uses
  %i.ha = add nuw nsw i64 %.05683.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.ha, %.0.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i, !llvm.loop !553

.lr.ph89.i.i.i.i.i:                               ; preds = %.lr.ph89.i.i.i.i.i.preheader114, %.lr.ph89.i.i.i.i.i
  %.05588.i.i.i.i.i = phi i64 [ %i.he, %.lr.ph89.i.i.i.i.i ], [ %.05588.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader114 ] ; 2 uses
  %.187.i.i.i.i.i = phi i32 [ %i.hd, %.lr.ph89.i.i.i.i.i ], [ %.187.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader114 ]
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %.05588.i.i.i.i.i
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !56
  %i.hd = add nsw i32 %i.hc, %.187.i.i.i.i.i      ; 2 uses
  %i.he = add nsw i64 %.05588.i.i.i.i.i, 1        ; 2 uses
  %i.hf = icmp slt i64 %i.he, %i.d
  br i1 %i.hf, label %.lr.ph89.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, !llvm.loop !554

bb.ab:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.hg = load i32, ptr %i.ee, align 4, !tbaa !56 ; 3 uses
  %i.hh = icmp sgt i64 %i.d, 1
  br i1 %i.hh, label %.lr.ph94.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph94.i.i.i.i.i.preheader:                     ; preds = %bb.ab
  %i.hi = add nsw i64 %i.d, -1                    ; 2 uses
  %min.iters.check80 = icmp ult i64 %i.d, 9
  br i1 %min.iters.check80, label %.lr.ph94.i.i.i.i.i.preheader110, label %vector.ph81

vector.ph81:                                      ; preds = %.lr.ph94.i.i.i.i.i.preheader
  %n.vec82 = and i64 %i.hi, -8                    ; 3 uses
  %i.hj = or disjoint i64 %n.vec82, 1
  %i.hk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.hg, i64 0
  br label %vector.body83

vector.body83:                                    ; preds = %vector.body83, %vector.ph81
  %index84 = phi i64 [ 0, %vector.ph81 ], [ %index.next89, %vector.body83 ] ; 2 uses
  %vec.phi85 = phi <4 x i32> [ %i.hk, %vector.ph81 ], [ %i.ho, %vector.body83 ]
  %vec.phi86 = phi <4 x i32> [ zeroinitializer, %vector.ph81 ], [ %i.hp, %vector.body83 ]
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %index84 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 20
  %wide.load87 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !56
  %wide.load88 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !56
  %i.ho = add <4 x i32> %wide.load87, %vec.phi85  ; 2 uses
  %i.hp = add <4 x i32> %wide.load88, %vec.phi86  ; 2 uses
  %index.next89 = add nuw i64 %index84, 8         ; 2 uses
  %i.hq = icmp eq i64 %index.next89, %n.vec82
  br i1 %i.hq, label %middle.block90, label %vector.body83, !llvm.loop !555

middle.block90:                                   ; preds = %vector.body83
  %bin.rdx91 = add <4 x i32> %i.hp, %i.ho
  %i.hr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx91) ; 2 uses
  %cmp.n92 = icmp eq i64 %i.hi, %n.vec82
  br i1 %cmp.n92, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i.preheader110

.lr.ph94.i.i.i.i.i.preheader110:                  ; preds = %.lr.ph94.i.i.i.i.i.preheader, %middle.block90
  %.092.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.hj, %middle.block90 ]
  %.291.i.i.i.i.i.ph = phi i32 [ %i.hg, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.hr, %middle.block90 ]
  br label %.lr.ph94.i.i.i.i.i

.lr.ph94.i.i.i.i.i:                               ; preds = %.lr.ph94.i.i.i.i.i.preheader110, %.lr.ph94.i.i.i.i.i
  %.092.i.i.i.i.i = phi i64 [ %i.hv, %.lr.ph94.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader110 ] ; 2 uses
  %.291.i.i.i.i.i = phi i32 [ %i.hu, %.lr.ph94.i.i.i.i.i ], [ %.291.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader110 ]
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.092.i.i.i.i.i
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !56
  %i.hu = add nsw i32 %i.ht, %.291.i.i.i.i.i      ; 2 uses
  %i.hv = add nuw nsw i64 %.092.i.i.i.i.i, 1      ; 2 uses
  %exitcond102.not.i.i.i.i.i = icmp eq i64 %i.hv, %i.d
  br i1 %exitcond102.not.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i, !llvm.loop !556

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i: ; preds = %.lr.ph89.i.i.i.i.i, %.lr.ph94.i.i.i.i.i, %middle.block74, %middle.block90, %bb.ab, %.preheader.i.i.i.i.i
  %.0.i.i.i145 = phi i32 [ %i.hu, %.lr.ph94.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.hg, %bb.ab ], [ %i.hr, %middle.block90 ], [ %i.gw, %middle.block74 ], [ %i.hd, %.lr.ph89.i.i.i.i.i ]
  %i.hw = sext i32 %.0.i.i.i145 to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi1EiEEEEE16nonZerosEstimateEv.exit

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi1EiEEEEE16nonZerosEstimateEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, %bb.u, %bb.t
  %.0.i.i = phi i64 [ %i.em, %bb.t ], [ %i.hw, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i ], [ 0, %bb.u ]
  %i.hx = add nsw i64 %.0.i.i, %.0.i.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 4 uses
  store i64 0, ptr %i.hy, align 8, !tbaa !541
  %i.hz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !406
  %i.ib = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !543
  %i.id = shl i64 %i.ic, 2
  %i.ie = add i64 %i.id, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ia, i8 0, i64 %i.ie, i1 false)
  %i.if = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !409 ; 2 uses
  %.not.i = icmp eq ptr %i.ig, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIbLi1EiE7setZeroEv.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi1EiEEEEE16nonZerosEstimateEv.exit
  %i.ih = load i64, ptr %i.ib, align 8, !tbaa !543
  %i.ii = shl i64 %i.ih, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ig, i8 0, i64 %i.ii, i1 false)
  br label %_ZN5Eigen12SparseMatrixIbLi1EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIbLi1EiE7setZeroEv.exit:   ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi1EiEEEEE16nonZerosEstimateEv.exit, %bb.ac
  %i.ij = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  invoke void @_ZN5Eigen8internal17CompressedStorageIbiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.ij, i64 noundef %i.hx)
          to label %_ZN5Eigen12SparseMatrixIbLi1EiE7reserveEl.exit.preheader unwind label %bb.ag

_ZN5Eigen12SparseMatrixIbLi1EiE7reserveEl.exit.preheader: ; preds = %_ZN5Eigen12SparseMatrixIbLi1EiE7setZeroEv.exit
  %i.ik = icmp sgt i64 %i.d, 0
  br i1 %i.ik, label %.lr.ph77, label %_ZN5Eigen12SparseMatrixIbLi1EiE7reserveEl.exit._crit_edge

.lr.ph77:                                         ; preds = %_ZN5Eigen12SparseMatrixIbLi1EiE7reserveEl.exit.preheader
  %i.il = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.io = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.ip = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.iq = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  br label %bb.ah
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal43conservative_sparse_sparse_product_selectorINS_12SparseMatrixIbLi0EiEES3_S3_Li0ELi0ELi0EE3runERKS3_S6_RS3_:bb.a
  br label %bb.z

bb.z:                                             ; preds = %.body, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bc, %bb.x ]
  call void @_ZN5Eigen12SparseMatrixIbLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %common.resume

bb.aa:                                            ; preds = %_ZN5Eigen12SparseMatrixIbLi0EiED2Ev.exit21, %_ZN5Eigen12SparseMatrixIbLi0EiED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_12SparseMatrixIbLi0EiEES3_S3_EEvRKT_RKT0_RT1_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !485  ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !240  ; 14 uses
  %i.e = icmp ugt i64 %i.b, 131072                ; 4 uses
  br i1 %i.e, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.b) #24 ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !117
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.i = tail call noalias ptr @malloc(i64 noundef %i.b) #24 ; 3 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %_ZN5Eigen8internal14aligned_mallocEm.exit143

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !117
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc142 unwind label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit194

.noexc142:                                        ; preds = %bb.e
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit143:     ; preds = %bb.d
  %i.l = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.l, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread

_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit143
  %i.m = shl nuw i64 %i.b, 3
  br label %bb.h

bb.f:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit143
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !117
  invoke void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc144 unwind label %.split

.noexc144:                                        ; preds = %bb.f
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit: ; preds = %bb.a
  %i.o = add nuw nsw i64 %i.b, 15                 ; 2 uses
  %i.p = alloca i8, i64 %i.o, align 16            ; 2 uses
  %i.q = alloca i8, i64 %i.o, align 16            ; 2 uses
  %i.r = shl nuw nsw i64 %i.b, 3                  ; 2 uses
  %i.s = icmp samesign ult i64 %i.b, 16385
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit
  %i.t = add nuw nsw i64 %i.r, 15
  %i.u = alloca i8, i64 %i.t, align 16
  br label %bb.j

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit
  %i.v = phi i64 [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread ], [ %i.r, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit ]
  %i.w = phi ptr [ %i.f, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread ], [ %i.p, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit ] ; 2 uses
  %i.x = phi ptr [ %i.i, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread ], [ %i.q, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit ] ; 2 uses
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.v) #24 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aa, align 8, !tbaa !117
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc146 unwind label %.split257

.noexc146:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ab = phi ptr [ %i.p, %bb.g ], [ %i.w, %bb.h ] ; 7 uses
  %i.ac = phi ptr [ %i.q, %bb.g ], [ %i.x, %bb.h ] ; 7 uses
  %i.ad = phi ptr [ %i.u, %bb.g ], [ %i.y, %bb.h ] ; 8 uses
  %i.ae = icmp samesign ugt i64 %i.b, 16384       ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ab, i8 0, i64 %i.b, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !263 ; 13 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !244 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !240
  %i.am = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !56
  %i.ao = load i32, ptr %i.aj, align 4, !tbaa !56
  %i.ap = sub nsw i32 %i.an, %i.ao
  %i.aq = sext i32 %i.ap to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEEEE16nonZerosEstimateEv.exit

bb.l:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !240 ; 11 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEEEE16nonZerosEstimateEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.av = and i64 %i.au, 3
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.n, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.aw = lshr exact i64 %i.au, 2
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = and i64 %i.ax, 3
  %i.az = tail call i64 @llvm.smin.i64(i64 %i.ay, i64 %i.as)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i: ; preds = %bb.n, %bb.m
  %.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.az, %bb.n ], [ %i.as, %bb.m ] ; 12 uses
  %i.ba = sub nsw i64 %i.as, %.0.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.bb = sdiv i64 %i.ba, 8
  %i.bc = shl nsw i64 %i.bb, 3                    ; 2 uses
  %i.bd = sdiv i64 %i.ba, 4                       ; 2 uses
  %i.be = shl nsw i64 %i.bd, 2                    ; 2 uses
  %i.bf = add nsw i64 %i.bc, %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bg = add nsw i64 %i.be, %.0.i.i.i.i.i.i.i.i.i ; 4 uses
  %.off.i.i.i.i.i = add i64 %i.ba, 3
  %.not.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i, 7
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.bh = getelementptr [4 x i8], ptr %i.ag, i64 %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bi = load <2 x i64>, ptr %i.bh, align 1, !tbaa !67 ; 2 uses
  %i.bj = icmp sgt i64 %i.ba, 7
  br i1 %i.bj, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr i8, ptr %i.bh, i64 16
  %i.bl = load <4 x i32>, ptr %i.bk, align 1, !tbaa !67 ; 2 uses
  %i.bm = bitcast <2 x i64> %i.bi to <4 x i32>    ; 2 uses
  %i.bn = icmp samesign ugt i64 %i.ba, 15
  br i1 %i.bn, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.p
  %.05777.i.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.p
  %.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.bl, %bb.p ], [ %i.by, %.lr.ph.i.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.bm, %bb.p ], [ %i.bu, %.lr.ph.i.i.i.i.i ]
  %i.bo = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i.i, %.lcssa.i.i.i.i.i ; 2 uses
  %i.bp = bitcast <4 x i32> %i.bo to <2 x i64>
  %i.bq = icmp sgt i64 %i.be, %i.bc
  br i1 %i.bq, label %bb.q, label %bb.r

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.05780.i.i.i.i.i = phi i64 [ %.057.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.05777.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i.i = phi i64 [ %.05780.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.067.078.i.i.i.i.i = phi <4 x i32> [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %i.bm, %.lr.ph.preheader.i.i.i.i.i ]
  %i.br = phi <4 x i32> [ %i.by, %.lr.ph.i.i.i.i.i ], [ %i.bl, %.lr.ph.preheader.i.i.i.i.i ]
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05780.i.i.i.i.i
  %i.bt = load <4 x i32>, ptr %i.bs, align 1, !tbaa !67
  %i.bu = add <4 x i32> %i.bt, %.sroa.067.078.i.i.i.i.i ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.ag, i64 %.057.in79.i.i.i.i.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 48
  %i.bx = load <4 x i32>, ptr %i.bw, align 1, !tbaa !67
  %i.by = add <4 x i32> %i.bx, %i.br              ; 2 uses
  %.057.i.i.i.i.i = add nsw i64 %.05780.i.i.i.i.i, 8 ; 2 uses
  %i.bz = icmp slt i64 %.057.i.i.i.i.i, %i.bf
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !544

bb.q:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.bf
  %i.cb = load <4 x i32>, ptr %i.ca, align 1, !tbaa !67
  %i.cc = add <4 x i32> %i.cb, %i.bo
  %i.cd = bitcast <4 x i32> %i.cc to <2 x i64>
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge.i.i.i.i.i, %bb.o
  %.sroa.067.2.i.i.i.i.i = phi <2 x i64> [ %i.bi, %bb.o ], [ %i.cd, %bb.q ], [ %i.bp, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ce = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32>
  %i.cf = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32>
  %i.cg = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ch = add <4 x i32> %i.cg, %i.ce              ; 2 uses
  %shift = shufflevector <4 x i32> %i.ch, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.ch, %shift ; 2 uses
  %4 = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ci = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ci, label %.lr.ph85.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.r
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.i.preheader516, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.cj = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cj, %vector.ph ], [ %i.cm, %vector.body ]
  %vec.phi392 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cn, %vector.body ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load = load <4 x i32>, ptr %i.ck, align 4, !tbaa !56
  %wide.load393 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !56
  %i.cm = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.cn = add <4 x i32> %wide.load393, %vec.phi392 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !613

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cn, %i.cm
  %i.cp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.preheader516

.lr.ph85.i.i.i.i.i.preheader516:                  ; preds = %.lr.ph85.i.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.i.ph = phi i32 [ %4, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.cp, %middle.block ]
  br label %.lr.ph85.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph85.i.i.i.i.i, %middle.block, %bb.r
  %.075.lcssa.i.i.i.i.i = phi i32 [ %4, %bb.r ], [ %i.cp, %middle.block ], [ %i.df, %.lr.ph85.i.i.i.i.i ] ; 3 uses
  %i.cq = icmp slt i64 %i.bg, %i.as
  br i1 %i.cq, label %.lr.ph89.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph89.i.i.i.i.i.preheader:                     ; preds = %.preheader.i.i.i.i.i
  %i.cr = shl nsw i64 %i.bd, 2
  %i.cs = add i64 %.0.i.i.i.i.i.i.i.i.i, %i.cr
  %i.ct = sub i64 %i.as, %i.cs                    ; 3 uses
  %min.iters.check395 = icmp ult i64 %i.ct, 8
  br i1 %min.iters.check395, label %.lr.ph89.i.i.i.i.i.preheader511, label %vector.ph396

vector.ph396:                                     ; preds = %.lr.ph89.i.i.i.i.i.preheader
  %n.vec397 = and i64 %i.ct, -8                   ; 3 uses
  %i.cu = add i64 %i.bg, %n.vec397
  %i.cv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i, i64 0
  %i.cw = getelementptr [4 x i8], ptr %i.ag, i64 %i.bg
  br label %vector.body398

vector.body398:                                   ; preds = %vector.body398, %vector.ph396
  %index399 = phi i64 [ 0, %vector.ph396 ], [ %index.next404, %vector.body398 ] ; 2 uses
  %vec.phi400 = phi <4 x i32> [ %i.cv, %vector.ph396 ], [ %i.cz, %vector.body398 ]
  %vec.phi401 = phi <4 x i32> [ zeroinitializer, %vector.ph396 ], [ %i.da, %vector.body398 ]
  %i.cx = getelementptr [4 x i8], ptr %i.cw, i64 %index399 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load402 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !56
  %wide.load403 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !56
  %i.cz = add <4 x i32> %wide.load402, %vec.phi400 ; 2 uses
  %i.da = add <4 x i32> %wide.load403, %vec.phi401 ; 2 uses
  %index.next404 = add nuw i64 %index399, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next404, %n.vec397
  br i1 %i.db, label %middle.block405, label %vector.body398, !llvm.loop !614

middle.block405:                                  ; preds = %vector.body398
  %bin.rdx406 = add <4 x i32> %i.da, %i.cz
  %i.dc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx406) ; 2 uses
  %cmp.n407 = icmp eq i64 %i.ct, %n.vec397
  br i1 %cmp.n407, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph89.i.i.i.i.i.preheader511

.lr.ph89.i.i.i.i.i.preheader511:                  ; preds = %.lr.ph89.i.i.i.i.i.preheader, %middle.block405
  %.05588.i.i.i.i.i.ph = phi i64 [ %i.bg, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.cu, %middle.block405 ]
  %.187.i.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i.i, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.dc, %middle.block405 ]
  br label %.lr.ph89.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.preheader516, %.lr.ph85.i.i.i.i.i
  %.05683.i.i.i.i.i = phi i64 [ %i.dg, %.lr.ph85.i.i.i.i.i ], [ %.05683.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader516 ] ; 2 uses
  %.07582.i.i.i.i.i = phi i32 [ %i.df, %.lr.ph85.i.i.i.i.i ], [ %.07582.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader516 ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.05683.i.i.i.i.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !56
  %i.df = add nsw i32 %i.de, %.07582.i.i.i.i.i    ; 2 uses
  %i.dg = add nuw nsw i64 %.05683.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dg, %.0.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i, !llvm.loop !615

.lr.ph89.i.i.i.i.i:                               ; preds = %.lr.ph89.i.i.i.i.i.preheader511, %.lr.ph89.i.i.i.i.i
  %.05588.i.i.i.i.i = phi i64 [ %i.dk, %.lr.ph89.i.i.i.i.i ], [ %.05588.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader511 ] ; 2 uses
  %.187.i.i.i.i.i = phi i32 [ %i.dj, %.lr.ph89.i.i.i.i.i ], [ %.187.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader511 ]
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05588.i.i.i.i.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !56
  %i.dj = add nsw i32 %i.di, %.187.i.i.i.i.i      ; 2 uses
  %i.dk = add nsw i64 %.05588.i.i.i.i.i, 1        ; 2 uses
  %i.dl = icmp slt i64 %i.dk, %i.as
  br i1 %i.dl, label %.lr.ph89.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, !llvm.loop !616

bb.s:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.dm = load i32, ptr %i.ag, align 4, !tbaa !56 ; 3 uses
  %i.dn = icmp sgt i64 %i.as, 1
  br i1 %i.dn, label %.lr.ph94.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph94.i.i.i.i.i.preheader:                     ; preds = %bb.s
  %i.do = add nsw i64 %i.as, -1                   ; 2 uses
  %min.iters.check411 = icmp ult i64 %i.as, 9
  br i1 %min.iters.check411, label %.lr.ph94.i.i.i.i.i.preheader507, label %vector.ph412

vector.ph412:                                     ; preds = %.lr.ph94.i.i.i.i.i.preheader
  %n.vec413 = and i64 %i.do, -8                   ; 3 uses
  %i.dp = or disjoint i64 %n.vec413, 1
  %i.dq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.dm, i64 0
  br label %vector.body414

vector.body414:                                   ; preds = %vector.body414, %vector.ph412
  %index415 = phi i64 [ 0, %vector.ph412 ], [ %index.next420, %vector.body414 ] ; 2 uses
  %vec.phi416 = phi <4 x i32> [ %i.dq, %vector.ph412 ], [ %i.du, %vector.body414 ]
  %vec.phi417 = phi <4 x i32> [ zeroinitializer, %vector.ph412 ], [ %i.dv, %vector.body414 ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index415 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %wide.load418 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !56
  %wide.load419 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !56
  %i.du = add <4 x i32> %wide.load418, %vec.phi416 ; 2 uses
  %i.dv = add <4 x i32> %wide.load419, %vec.phi417 ; 2 uses
  %index.next420 = add nuw i64 %index415, 8       ; 2 uses
  %i.dw = icmp eq i64 %index.next420, %n.vec413
  br i1 %i.dw, label %middle.block421, label %vector.body414, !llvm.loop !617

middle.block421:                                  ; preds = %vector.body414
  %bin.rdx422 = add <4 x i32> %i.dv, %i.du
  %i.dx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx422) ; 2 uses
  %cmp.n423 = icmp eq i64 %i.do, %n.vec413
  br i1 %cmp.n423, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i.preheader507

.lr.ph94.i.i.i.i.i.preheader507:                  ; preds = %.lr.ph94.i.i.i.i.i.preheader, %middle.block421
  %.092.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.dp, %middle.block421 ]
  %.291.i.i.i.i.i.ph = phi i32 [ %i.dm, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.dx, %middle.block421 ]
  br label %.lr.ph94.i.i.i.i.i

.lr.ph94.i.i.i.i.i:                               ; preds = %.lr.ph94.i.i.i.i.i.preheader507, %.lr.ph94.i.i.i.i.i
  %.092.i.i.i.i.i = phi i64 [ %i.eb, %.lr.ph94.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader507 ] ; 2 uses
  %.291.i.i.i.i.i = phi i32 [ %i.ea, %.lr.ph94.i.i.i.i.i ], [ %.291.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader507 ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.092.i.i.i.i.i
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !56
  %i.ea = add nsw i32 %i.dz, %.291.i.i.i.i.i      ; 2 uses
  %i.eb = add nuw nsw i64 %.092.i.i.i.i.i, 1      ; 2 uses
  %exitcond102.not.i.i.i.i.i = icmp eq i64 %i.eb, %i.as
  br i1 %exitcond102.not.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i, !llvm.loop !618

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i: ; preds = %.lr.ph89.i.i.i.i.i, %.lr.ph94.i.i.i.i.i, %middle.block405, %middle.block421, %bb.s, %.preheader.i.i.i.i.i
  %.0.i.i.i = phi i32 [ %i.ea, %.lr.ph94.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.dm, %bb.s ], [ %i.dx, %middle.block421 ], [ %i.dc, %middle.block405 ], [ %i.dj, %.lr.ph89.i.i.i.i.i ]
  %i.ec = sext i32 %.0.i.i.i to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEEEE16nonZerosEstimateEv.exit

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEEEE16nonZerosEstimateEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, %bb.l, %bb.k
  %.0.i.i = phi i64 [ %i.aq, %bb.k ], [ %i.ec, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i ], [ 0, %bb.l ]
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !263 ; 13 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.t, label %bb.u

bb.t:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEEEE16nonZerosEstimateEv.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !244 ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.d
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !56
  %i.ek = load i32, ptr %i.eh, align 4, !tbaa !56
  %i.el = sub nsw i32 %i.ej, %i.ek
  %i.em = sext i32 %i.el to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEEEE16nonZerosEstimateEv.exit182

bb.u:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEEEE16nonZerosEstimateEv.exit
  %i.en = icmp eq i64 %i.d, 0
  br i1 %i.en, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEEEE16nonZerosEstimateEv.exit182, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.eo = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.ep = and i64 %i.eo, 3
  %.not.i.i.i.i.i.i.i.i.i148 = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i148, label %bb.w, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i149

bb.w:                                             ; preds = %bb.v
  %i.eq = lshr exact i64 %i.eo, 2
  %i.er = sub nsw i64 0, %i.eq
  %i.es = and i64 %i.er, 3
  %i.et = tail call i64 @llvm.smin.i64(i64 %i.es, i64 %i.d)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i149

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i149: ; preds = %bb.w, %bb.v
  %.0.i.i.i.i.i.i.i.i.i150 = phi i64 [ %i.et, %bb.w ], [ %i.d, %bb.v ] ; 12 uses
  %i.eu = sub nsw i64 %i.d, %.0.i.i.i.i.i.i.i.i.i150 ; 5 uses
  %i.ev = sdiv i64 %i.eu, 8
  %i.ew = shl nsw i64 %i.ev, 3                    ; 2 uses
  %i.ex = sdiv i64 %i.eu, 4                       ; 2 uses
  %i.ey = shl nsw i64 %i.ex, 2                    ; 2 uses
  %i.ez = add nsw i64 %i.ew, %.0.i.i.i.i.i.i.i.i.i150 ; 2 uses
  %i.fa = add nsw i64 %i.ey, %.0.i.i.i.i.i.i.i.i.i150 ; 4 uses
  %.off.i.i.i.i.i151 = add i64 %i.eu, 3
  %.not.i.i.i.i.i152 = icmp ult i64 %.off.i.i.i.i.i151, 7
  br i1 %.not.i.i.i.i.i152, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i149
  %i.fb = getelementptr [4 x i8], ptr %i.ee, i64 %.0.i.i.i.i.i.i.i.i.i150 ; 2 uses
  %i.fc = load <2 x i64>, ptr %i.fb, align 1, !tbaa !67 ; 2 uses
  %i.fd = icmp sgt i64 %i.eu, 7
  br i1 %i.fd, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.fe = getelementptr i8, ptr %i.fb, i64 16
  %i.ff = load <4 x i32>, ptr %i.fe, align 1, !tbaa !67 ; 2 uses
  %i.fg = bitcast <2 x i64> %i.fc to <4 x i32>    ; 2 uses
  %i.fh = icmp samesign ugt i64 %i.eu, 15
  br i1 %i.fh, label %.lr.ph.preheader.i.i.i.i.i171, label %._crit_edge.i.i.i.i.i168

.lr.ph.preheader.i.i.i.i.i171:                    ; preds = %bb.y
  %.05777.i.i.i.i.i172 = add nsw i64 %.0.i.i.i.i.i.i.i.i.i150, 8
  br label %.lr.ph.i.i.i.i.i173

._crit_edge.i.i.i.i.i168:                         ; preds = %.lr.ph.i.i.i.i.i173, %bb.y
  %.lcssa.i.i.i.i.i169 = phi <4 x i32> [ %i.ff, %bb.y ], [ %i.fs, %.lr.ph.i.i.i.i.i173 ]
  %.sroa.067.0.lcssa.i.i.i.i.i170 = phi <4 x i32> [ %i.fg, %bb.y ], [ %i.fo, %.lr.ph.i.i.i.i.i173 ]
  %i.fi = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i.i170, %.lcssa.i.i.i.i.i169 ; 2 uses
  %i.fj = bitcast <4 x i32> %i.fi to <2 x i64>
  %i.fk = icmp sgt i64 %i.ey, %i.ew
  br i1 %i.fk, label %bb.z, label %bb.aa

.lr.ph.i.i.i.i.i173:                              ; preds = %.lr.ph.i.i.i.i.i173, %.lr.ph.preheader.i.i.i.i.i171
  %.05780.i.i.i.i.i174 = phi i64 [ %.057.i.i.i.i.i177, %.lr.ph.i.i.i.i.i173 ], [ %.05777.i.i.i.i.i172, %.lr.ph.preheader.i.i.i.i.i171 ] ; 3 uses
  %.057.in79.i.i.i.i.i175 = phi i64 [ %.05780.i.i.i.i.i174, %.lr.ph.i.i.i.i.i173 ], [ %.0.i.i.i.i.i.i.i.i.i150, %.lr.ph.preheader.i.i.i.i.i171 ]
  %.sroa.067.078.i.i.i.i.i176 = phi <4 x i32> [ %i.fo, %.lr.ph.i.i.i.i.i173 ], [ %i.fg, %.lr.ph.preheader.i.i.i.i.i171 ]
  %i.fl = phi <4 x i32> [ %i.fs, %.lr.ph.i.i.i.i.i173 ], [ %i.ff, %.lr.ph.preheader.i.i.i.i.i171 ]
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %.05780.i.i.i.i.i174
  %i.fn = load <4 x i32>, ptr %i.fm, align 1, !tbaa !67
  %i.fo = add <4 x i32> %i.fn, %.sroa.067.078.i.i.i.i.i176 ; 2 uses
  %i.fp = getelementptr [4 x i8], ptr %i.ee, i64 %.057.in79.i.i.i.i.i175
  %i.fq = getelementptr i8, ptr %i.fp, i64 48
  %i.fr = load <4 x i32>, ptr %i.fq, align 1, !tbaa !67
  %i.fs = add <4 x i32> %i.fr, %i.fl              ; 2 uses
  %.057.i.i.i.i.i177 = add nsw i64 %.05780.i.i.i.i.i174, 8 ; 2 uses
  %i.ft = icmp slt i64 %.057.i.i.i.i.i177, %i.ez
  br i1 %i.ft, label %.lr.ph.i.i.i.i.i173, label %._crit_edge.i.i.i.i.i168, !llvm.loop !544

bb.z:                                             ; preds = %._crit_edge.i.i.i.i.i168
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ez
  %i.fv = load <4 x i32>, ptr %i.fu, align 1, !tbaa !67
  %i.fw = add <4 x i32> %i.fv, %i.fi
  %i.fx = bitcast <4 x i32> %i.fw to <2 x i64>
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %._crit_edge.i.i.i.i.i168, %bb.x
  %.sroa.067.2.i.i.i.i.i153 = phi <2 x i64> [ %i.fc, %bb.x ], [ %i.fx, %bb.z ], [ %i.fj, %._crit_edge.i.i.i.i.i168 ] ; 2 uses
  %i.fy = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i153 to <4 x i32>
  %i.fz = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i153 to <4 x i32>
  %i.ga = shufflevector <4 x i32> %i.fz, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.gb = add <4 x i32> %i.ga, %i.fy              ; 2 uses
  %shift485 = shufflevector <4 x i32> %i.gb, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop486 = add nsw <4 x i32> %i.gb, %shift485 ; 2 uses
  %5 = extractelement <4 x i32> %foldExtExtBinop486, i64 0 ; 2 uses
  %i.gc = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i150, 0
  br i1 %i.gc, label %.lr.ph85.i.i.i.i.i164.preheader, label %.preheader.i.i.i.i.i156

.lr.ph85.i.i.i.i.i164.preheader:                  ; preds = %bb.aa
  %min.iters.check427 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i150, 8
  br i1 %min.iters.check427, label %.lr.ph85.i.i.i.i.i164.preheader501, label %vector.ph428

vector.ph428:                                     ; preds = %.lr.ph85.i.i.i.i.i164.preheader
  %n.vec429 = and i64 %.0.i.i.i.i.i.i.i.i.i150, 9223372036854775800 ; 3 uses
  %i.gd = shufflevector <4 x i32> %foldExtExtBinop486, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body430

vector.body430:                                   ; preds = %vector.body430, %vector.ph428
  %index431 = phi i64 [ 0, %vector.ph428 ], [ %index.next436, %vector.body430 ] ; 2 uses
  %vec.phi432 = phi <4 x i32> [ %i.gd, %vector.ph428 ], [ %i.gg, %vector.body430 ]
  %vec.phi433 = phi <4 x i32> [ zeroinitializer, %vector.ph428 ], [ %i.gh, %vector.body430 ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %index431 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %wide.load434 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !56
  %wide.load435 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !56
  %i.gg = add <4 x i32> %wide.load434, %vec.phi432 ; 2 uses
  %i.gh = add <4 x i32> %wide.load435, %vec.phi433 ; 2 uses
  %index.next436 = add nuw i64 %index431, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next436, %n.vec429
  br i1 %i.gi, label %middle.block437, label %vector.body430, !llvm.loop !619

middle.block437:                                  ; preds = %vector.body430
  %bin.rdx438 = add <4 x i32> %i.gh, %i.gg
  %i.gj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx438) ; 2 uses
  %cmp.n439 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i150, %n.vec429
  br i1 %cmp.n439, label %.preheader.i.i.i.i.i156, label %.lr.ph85.i.i.i.i.i164.preheader501

.lr.ph85.i.i.i.i.i164.preheader501:               ; preds = %.lr.ph85.i.i.i.i.i164.preheader, %middle.block437
  %.05683.i.i.i.i.i165.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i164.preheader ], [ %n.vec429, %middle.block437 ]
  %.07582.i.i.i.i.i166.ph = phi i32 [ %5, %.lr.ph85.i.i.i.i.i164.preheader ], [ %i.gj, %middle.block437 ]
  br label %.lr.ph85.i.i.i.i.i164

.preheader.i.i.i.i.i156:                          ; preds = %.lr.ph85.i.i.i.i.i164, %middle.block437, %bb.aa
  %.075.lcssa.i.i.i.i.i157 = phi i32 [ %5, %bb.aa ], [ %i.gj, %middle.block437 ], [ %i.gz, %.lr.ph85.i.i.i.i.i164 ] ; 3 uses
  %i.gk = icmp slt i64 %i.fa, %i.d
  br i1 %i.gk, label %.lr.ph89.i.i.i.i.i161.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i158

.lr.ph89.i.i.i.i.i161.preheader:                  ; preds = %.preheader.i.i.i.i.i156
  %i.gl = shl nsw i64 %i.ex, 2
  %i.gm = add i64 %.0.i.i.i.i.i.i.i.i.i150, %i.gl
  %i.gn = sub i64 %i.d, %i.gm                     ; 3 uses
  %min.iters.check443 = icmp ult i64 %i.gn, 8
  br i1 %min.iters.check443, label %.lr.ph89.i.i.i.i.i161.preheader496, label %vector.ph444

vector.ph444:                                     ; preds = %.lr.ph89.i.i.i.i.i161.preheader
  %n.vec445 = and i64 %i.gn, -8                   ; 3 uses
  %i.go = add i64 %i.fa, %n.vec445
  %i.gp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i157, i64 0
  %i.gq = getelementptr [4 x i8], ptr %i.ee, i64 %i.fa
  br label %vector.body446

vector.body446:                                   ; preds = %vector.body446, %vector.ph444
  %index447 = phi i64 [ 0, %vector.ph444 ], [ %index.next452, %vector.body446 ] ; 2 uses
  %vec.phi448 = phi <4 x i32> [ %i.gp, %vector.ph444 ], [ %i.gt, %vector.body446 ]
  %vec.phi449 = phi <4 x i32> [ zeroinitializer, %vector.ph444 ], [ %i.gu, %vector.body446 ]
  %i.gr = getelementptr [4 x i8], ptr %i.gq, i64 %index447 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.load450 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !56
  %wide.load451 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !56
  %i.gt = add <4 x i32> %wide.load450, %vec.phi448 ; 2 uses
  %i.gu = add <4 x i32> %wide.load451, %vec.phi449 ; 2 uses
  %index.next452 = add nuw i64 %index447, 8       ; 2 uses
  %i.gv = icmp eq i64 %index.next452, %n.vec445
  br i1 %i.gv, label %middle.block453, label %vector.body446, !llvm.loop !620

middle.block453:                                  ; preds = %vector.body446
  %bin.rdx454 = add <4 x i32> %i.gu, %i.gt
  %i.gw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx454) ; 2 uses
  %cmp.n455 = icmp eq i64 %i.gn, %n.vec445
  br i1 %cmp.n455, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i158, label %.lr.ph89.i.i.i.i.i161.preheader496

.lr.ph89.i.i.i.i.i161.preheader496:               ; preds = %.lr.ph89.i.i.i.i.i161.preheader, %middle.block453
  %.05588.i.i.i.i.i162.ph = phi i64 [ %i.fa, %.lr.ph89.i.i.i.i.i161.preheader ], [ %i.go, %middle.block453 ]
  %.187.i.i.i.i.i163.ph = phi i32 [ %.075.lcssa.i.i.i.i.i157, %.lr.ph89.i.i.i.i.i161.preheader ], [ %i.gw, %middle.block453 ]
  br label %.lr.ph89.i.i.i.i.i161

.lr.ph85.i.i.i.i.i164:                            ; preds = %.lr.ph85.i.i.i.i.i164.preheader501, %.lr.ph85.i.i.i.i.i164
  %.05683.i.i.i.i.i165 = phi i64 [ %i.ha, %.lr.ph85.i.i.i.i.i164 ], [ %.05683.i.i.i.i.i165.ph, %.lr.ph85.i.i.i.i.i164.preheader501 ] ; 2 uses
  %.07582.i.i.i.i.i166 = phi i32 [ %i.gz, %.lr.ph85.i.i.i.i.i164 ], [ %.07582.i.i.i.i.i166.ph, %.lr.ph85.i.i.i.i.i164.preheader501 ]
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.05683.i.i.i.i.i165
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !56
  %i.gz = add nsw i32 %i.gy, %.07582.i.i.i.i.i166 ; 2 uses
  %i.ha = add nuw nsw i64 %.05683.i.i.i.i.i165, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i167 = icmp eq i64 %i.ha, %.0.i.i.i.i.i.i.i.i.i150
  br i1 %exitcond.not.i.i.i.i.i167, label %.preheader.i.i.i.i.i156, label %.lr.ph85.i.i.i.i.i164, !llvm.loop !621

.lr.ph89.i.i.i.i.i161:                            ; preds = %.lr.ph89.i.i.i.i.i161.preheader496, %.lr.ph89.i.i.i.i.i161
  %.05588.i.i.i.i.i162 = phi i64 [ %i.he, %.lr.ph89.i.i.i.i.i161 ], [ %.05588.i.i.i.i.i162.ph, %.lr.ph89.i.i.i.i.i161.preheader496 ] ; 2 uses
  %.187.i.i.i.i.i163 = phi i32 [ %i.hd, %.lr.ph89.i.i.i.i.i161 ], [ %.187.i.i.i.i.i163.ph, %.lr.ph89.i.i.i.i.i161.preheader496 ]
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %.05588.i.i.i.i.i162
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !56
  %i.hd = add nsw i32 %i.hc, %.187.i.i.i.i.i163   ; 2 uses
  %i.he = add nsw i64 %.05588.i.i.i.i.i162, 1     ; 2 uses
  %i.hf = icmp slt i64 %i.he, %i.d
  br i1 %i.hf, label %.lr.ph89.i.i.i.i.i161, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i158, !llvm.loop !622

bb.ab:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i149
  %i.hg = load i32, ptr %i.ee, align 4, !tbaa !56 ; 3 uses
  %i.hh = icmp sgt i64 %i.d, 1
  br i1 %i.hh, label %.lr.ph94.i.i.i.i.i178.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i158

.lr.ph94.i.i.i.i.i178.preheader:                  ; preds = %bb.ab
  %i.hi = add nsw i64 %i.d, -1                    ; 2 uses
  %min.iters.check459 = icmp ult i64 %i.d, 9
  br i1 %min.iters.check459, label %.lr.ph94.i.i.i.i.i178.preheader492, label %vector.ph460

vector.ph460:                                     ; preds = %.lr.ph94.i.i.i.i.i178.preheader
  %n.vec461 = and i64 %i.hi, -8                   ; 3 uses
  %i.hj = or disjoint i64 %n.vec461, 1
  %i.hk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.hg, i64 0
  br label %vector.body462

vector.body462:                                   ; preds = %vector.body462, %vector.ph460
  %index463 = phi i64 [ 0, %vector.ph460 ], [ %index.next468, %vector.body462 ] ; 2 uses
  %vec.phi464 = phi <4 x i32> [ %i.hk, %vector.ph460 ], [ %i.ho, %vector.body462 ]
  %vec.phi465 = phi <4 x i32> [ zeroinitializer, %vector.ph460 ], [ %i.hp, %vector.body462 ]
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %index463 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 20
  %wide.load466 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !56
  %wide.load467 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !56
  %i.ho = add <4 x i32> %wide.load466, %vec.phi464 ; 2 uses
  %i.hp = add <4 x i32> %wide.load467, %vec.phi465 ; 2 uses
  %index.next468 = add nuw i64 %index463, 8       ; 2 uses
  %i.hq = icmp eq i64 %index.next468, %n.vec461
  br i1 %i.hq, label %middle.block469, label %vector.body462, !llvm.loop !623

middle.block469:                                  ; preds = %vector.body462
  %bin.rdx470 = add <4 x i32> %i.hp, %i.ho
  %i.hr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx470) ; 2 uses
  %cmp.n471 = icmp eq i64 %i.hi, %n.vec461
  br i1 %cmp.n471, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i158, label %.lr.ph94.i.i.i.i.i178.preheader492

.lr.ph94.i.i.i.i.i178.preheader492:               ; preds = %.lr.ph94.i.i.i.i.i178.preheader, %middle.block469
  %.092.i.i.i.i.i179.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i178.preheader ], [ %i.hj, %middle.block469 ]
  %.291.i.i.i.i.i180.ph = phi i32 [ %i.hg, %.lr.ph94.i.i.i.i.i178.preheader ], [ %i.hr, %middle.block469 ]
  br label %.lr.ph94.i.i.i.i.i178

.lr.ph94.i.i.i.i.i178:                            ; preds = %.lr.ph94.i.i.i.i.i178.preheader492, %.lr.ph94.i.i.i.i.i178
  %.092.i.i.i.i.i179 = phi i64 [ %i.hv, %.lr.ph94.i.i.i.i.i178 ], [ %.092.i.i.i.i.i179.ph, %.lr.ph94.i.i.i.i.i178.preheader492 ] ; 2 uses
  %.291.i.i.i.i.i180 = phi i32 [ %i.hu, %.lr.ph94.i.i.i.i.i178 ], [ %.291.i.i.i.i.i180.ph, %.lr.ph94.i.i.i.i.i178.preheader492 ]
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.092.i.i.i.i.i179
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !56
  %i.hu = add nsw i32 %i.ht, %.291.i.i.i.i.i180   ; 2 uses
  %i.hv = add nuw nsw i64 %.092.i.i.i.i.i179, 1   ; 2 uses
  %exitcond102.not.i.i.i.i.i181 = icmp eq i64 %i.hv, %i.d
  br i1 %exitcond102.not.i.i.i.i.i181, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i158, label %.lr.ph94.i.i.i.i.i178, !llvm.loop !624

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i158: ; preds = %.lr.ph89.i.i.i.i.i161, %.lr.ph94.i.i.i.i.i178, %middle.block453, %middle.block469, %bb.ab, %.preheader.i.i.i.i.i156
  %.0.i.i.i159 = phi i32 [ %i.hu, %.lr.ph94.i.i.i.i.i178 ], [ %.075.lcssa.i.i.i.i.i157, %.preheader.i.i.i.i.i156 ], [ %i.hg, %bb.ab ], [ %i.hr, %middle.block469 ], [ %i.gw, %middle.block453 ], [ %i.hd, %.lr.ph89.i.i.i.i.i161 ]
  %i.hw = sext i32 %.0.i.i.i159 to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEEEE16nonZerosEstimateEv.exit182

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEEEE16nonZerosEstimateEv.exit182: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i158, %bb.u, %bb.t
  %.0.i.i160 = phi i64 [ %i.em, %bb.t ], [ %i.hw, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i158 ], [ 0, %bb.u ]
  %i.hx = add nsw i64 %.0.i.i160, %.0.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 7 uses
  store i64 0, ptr %i.hy, align 8, !tbaa !541
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !244
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !240
  %i.id = shl i64 %i.ic, 2
  %i.ie = add i64 %i.id, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ia, i8 0, i64 %i.ie, i1 false)
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !263 ; 2 uses
  %.not.i = icmp eq ptr %i.ig, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIbLi0EiE7setZeroEv.exit, label %bb.ac

bb.ac:                                            ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEEEE16nonZerosEstimateEv.exit182
  %i.ih = load i64, ptr %i.ib, align 8, !tbaa !240
  %i.ii = shl i64 %i.ih, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ig, i8 0, i64 %i.ii, i1 false)
  br label %_ZN5Eigen12SparseMatrixIbLi0EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIbLi0EiE7setZeroEv.exit:   ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEEEE16nonZerosEstimateEv.exit182, %bb.ac
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  invoke void @_ZN5Eigen8internal17CompressedStorageIbiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.ij, i64 noundef %i.hx)
          to label %_ZN5Eigen12SparseMatrixIbLi0EiE7reserveEl.exit.preheader unwind label %bb.ag

_ZN5Eigen12SparseMatrixIbLi0EiE7reserveEl.exit.preheader: ; preds = %_ZN5Eigen12SparseMatrixIbLi0EiE7setZeroEv.exit
  %i.ik = icmp sgt i64 %i.d, 0
  br i1 %i.ik, label %.lr.ph308, label %_ZN5Eigen12SparseMatrixIbLi0EiE7reserveEl.exit._crit_edge

.lr.ph308:                                        ; preds = %_ZN5Eigen12SparseMatrixIbLi0EiE7reserveEl.exit.preheader
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 9 uses
  %i.is = udiv i64 %i.b, 11
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_12SparseMatrixIbLi0ElEENS2_IbLi0EiEES3_EEvRKT_RKT0_RT1_b:bb.a
bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit
  %i.t = add nuw nsw i64 %i.r, 15
  %i.u = alloca i8, i64 %i.t, align 16
  br label %bb.j

bb.h:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit
  %i.v = phi i64 [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread ], [ %i.r, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit ]
  %i.w = phi ptr [ %i.f, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread ], [ %i.p, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit ] ; 2 uses
  %i.x = phi ptr [ %i.i, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit.thread ], [ %i.q, %_ZN5Eigen8internal23check_size_for_overflowIlEEvm.exit ] ; 2 uses
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.v) #24 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aa, align 8, !tbaa !117
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc146 unwind label %.split223

.noexc146:                                        ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ab = phi ptr [ %i.p, %bb.g ], [ %i.w, %bb.h ] ; 7 uses
  %i.ac = phi ptr [ %i.q, %bb.g ], [ %i.x, %bb.h ] ; 7 uses
  %i.ad = phi ptr [ %i.u, %bb.g ], [ %i.y, %bb.h ] ; 8 uses
  %i.ae = icmp samesign ugt i64 %i.b, 16384       ; 2 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ab, i8 0, i64 %i.b, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !696 ; 4 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !690 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !691
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.al
  %i.an = load i64, ptr %i.am, align 8, !tbaa !362
  %i.ao = load i64, ptr %i.aj, align 8, !tbaa !362
  %i.ap = sub nsw i64 %i.an, %i.ao
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0ElEEEEE16nonZerosEstimateEv.exit

bb.l:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !691 ; 5 uses
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0ElEEEEE16nonZerosEstimateEv.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = load i64, ptr %i.ag, align 8, !tbaa !362 ; 3 uses
  %i.au = icmp sgt i64 %i.ar, 1
  br i1 %i.au, label %.lr.ph.i.i.i.i.i.preheader, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0ElEEEEE16nonZerosEstimateEv.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.m
  %i.av = add nsw i64 %i.ar, -1                   ; 2 uses
  %min.iters.check = icmp ult i64 %i.ar, 5
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader403, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader
  %n.vec = and i64 %i.av, -4                      ; 3 uses
  %i.aw = or disjoint i64 %n.vec, 1
  %i.ax = insertelement <2 x i64> <i64 poison, i64 0>, i64 %i.at, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ %i.ax, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi334 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %i.ay = getelementptr [8 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.az = getelementptr i8, ptr %i.ay, i64 8
  %i.ba = getelementptr i8, ptr %i.ay, i64 24
  %wide.load = load <2 x i64>, ptr %i.az, align 8, !tbaa !362
  %wide.load335 = load <2 x i64>, ptr %i.ba, align 8, !tbaa !362
  %i.bb = add <2 x i64> %wide.load, %vec.phi      ; 2 uses
  %i.bc = add <2 x i64> %wide.load335, %vec.phi334 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !732

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bc, %i.bb
  %i.be = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0ElEEEEE16nonZerosEstimateEv.exit, label %.lr.ph.i.i.i.i.i.preheader403

.lr.ph.i.i.i.i.i.preheader403:                    ; preds = %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.01724.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader ], [ %i.aw, %middle.block ]
  %.02223.i.i.i.i.i.ph = phi i64 [ %i.at, %.lr.ph.i.i.i.i.i.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader403, %.lr.ph.i.i.i.i.i
  %.01724.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %.01724.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader403 ] ; 2 uses
  %.02223.i.i.i.i.i = phi i64 [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %.02223.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader403 ]
  %i.bf = getelementptr [8 x i8], ptr %i.ag, i64 %.01724.i.i.i.i.i
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !362
  %i.bh = add nsw i64 %i.bg, %.02223.i.i.i.i.i    ; 2 uses
  %i.bi = add nuw nsw i64 %.01724.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.bi, %i.ar
  br i1 %exitcond.not.i.i.i.i.i, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0ElEEEEE16nonZerosEstimateEv.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !733

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0ElEEEEE16nonZerosEstimateEv.exit: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %bb.m, %bb.l, %bb.k
  %.0.i.i = phi i64 [ %i.ap, %bb.k ], [ 0, %bb.l ], [ %i.at, %bb.m ], [ %i.be, %middle.block ], [ %i.bh, %.lr.ph.i.i.i.i.i ]
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !263 ; 13 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0ElEEEEE16nonZerosEstimateEv.exit
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !244 ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.d
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !56
  %i.bq = load i32, ptr %i.bn, align 4, !tbaa !56
  %i.br = sub nsw i32 %i.bp, %i.bq
  %i.bs = sext i32 %i.br to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEEEE16nonZerosEstimateEv.exit

bb.o:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0ElEEEEE16nonZerosEstimateEv.exit
  %i.bt = icmp eq i64 %i.d, 0
  br i1 %i.bt, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEEEE16nonZerosEstimateEv.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bu = ptrtoint ptr %i.bk to i64               ; 2 uses
  %i.bv = and i64 %i.bu, 3
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.q, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.bw = lshr exact i64 %i.bu, 2
  %i.bx = sub nsw i64 0, %i.bw
  %i.by = and i64 %i.bx, 3
  %i.bz = tail call i64 @llvm.smin.i64(i64 %i.by, i64 %i.d)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bz, %bb.q ], [ %i.d, %bb.p ] ; 12 uses
  %i.ca = sub nsw i64 %i.d, %.0.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.cb = sdiv i64 %i.ca, 8
  %i.cc = shl nsw i64 %i.cb, 3                    ; 2 uses
  %i.cd = sdiv i64 %i.ca, 4                       ; 2 uses
  %i.ce = shl nsw i64 %i.cd, 2                    ; 2 uses
  %i.cf = add nsw i64 %i.cc, %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.cg = add nsw i64 %i.ce, %.0.i.i.i.i.i.i.i.i.i ; 4 uses
  %.off.i.i.i.i.i = add i64 %i.ca, 3
  %.not.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i, 7
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.r

bb.r:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.ch = getelementptr [4 x i8], ptr %i.bk, i64 %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ci = load <2 x i64>, ptr %i.ch, align 1, !tbaa !67 ; 2 uses
  %i.cj = icmp sgt i64 %i.ca, 7
  br i1 %i.cj, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.ck = getelementptr i8, ptr %i.ch, i64 16
  %i.cl = load <4 x i32>, ptr %i.ck, align 1, !tbaa !67 ; 2 uses
  %i.cm = bitcast <2 x i64> %i.ci to <4 x i32>    ; 2 uses
  %i.cn = icmp samesign ugt i64 %i.ca, 15
  br i1 %i.cn, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.s
  %.05777.i.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i.i150

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i150, %bb.s
  %.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.cl, %bb.s ], [ %i.cy, %.lr.ph.i.i.i.i.i150 ]
  %.sroa.067.0.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.cm, %bb.s ], [ %i.cu, %.lr.ph.i.i.i.i.i150 ]
  %i.co = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i.i, %.lcssa.i.i.i.i.i ; 2 uses
  %i.cp = bitcast <4 x i32> %i.co to <2 x i64>
  %i.cq = icmp sgt i64 %i.ce, %i.cc
  br i1 %i.cq, label %bb.t, label %bb.u

.lr.ph.i.i.i.i.i150:                              ; preds = %.lr.ph.i.i.i.i.i150, %.lr.ph.preheader.i.i.i.i.i
  %.05780.i.i.i.i.i = phi i64 [ %.057.i.i.i.i.i, %.lr.ph.i.i.i.i.i150 ], [ %.05777.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i.i = phi i64 [ %.05780.i.i.i.i.i, %.lr.ph.i.i.i.i.i150 ], [ %.0.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.067.078.i.i.i.i.i = phi <4 x i32> [ %i.cu, %.lr.ph.i.i.i.i.i150 ], [ %i.cm, %.lr.ph.preheader.i.i.i.i.i ]
  %i.cr = phi <4 x i32> [ %i.cy, %.lr.ph.i.i.i.i.i150 ], [ %i.cl, %.lr.ph.preheader.i.i.i.i.i ]
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %.05780.i.i.i.i.i
  %i.ct = load <4 x i32>, ptr %i.cs, align 1, !tbaa !67
  %i.cu = add <4 x i32> %i.ct, %.sroa.067.078.i.i.i.i.i ; 2 uses
  %i.cv = getelementptr [4 x i8], ptr %i.bk, i64 %.057.in79.i.i.i.i.i
  %i.cw = getelementptr i8, ptr %i.cv, i64 48
  %i.cx = load <4 x i32>, ptr %i.cw, align 1, !tbaa !67
  %i.cy = add <4 x i32> %i.cx, %i.cr              ; 2 uses
  %.057.i.i.i.i.i = add nsw i64 %.05780.i.i.i.i.i, 8 ; 2 uses
  %i.cz = icmp slt i64 %.057.i.i.i.i.i, %i.cf
  br i1 %i.cz, label %.lr.ph.i.i.i.i.i150, label %._crit_edge.i.i.i.i.i, !llvm.loop !544

bb.t:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.da = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.cf
  %i.db = load <4 x i32>, ptr %i.da, align 1, !tbaa !67
  %i.dc = add <4 x i32> %i.db, %i.co
  %i.dd = bitcast <4 x i32> %i.dc to <2 x i64>
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge.i.i.i.i.i, %bb.r
  %.sroa.067.2.i.i.i.i.i = phi <2 x i64> [ %i.ci, %bb.r ], [ %i.dd, %bb.t ], [ %i.cp, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.de = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32>
  %i.df = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32>
  %i.dg = shufflevector <4 x i32> %i.df, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.dh = add <4 x i32> %i.dg, %i.de              ; 2 uses
  %shift = shufflevector <4 x i32> %i.dh, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.dh, %shift ; 2 uses
  %4 = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  %i.di = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.di, label %.lr.ph85.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.u
  %min.iters.check337 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check337, label %.lr.ph85.i.i.i.i.i.preheader397, label %vector.ph338

vector.ph338:                                     ; preds = %.lr.ph85.i.i.i.i.i.preheader
  %n.vec339 = and i64 %.0.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.dj = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body340

vector.body340:                                   ; preds = %vector.body340, %vector.ph338
  %index341 = phi i64 [ 0, %vector.ph338 ], [ %index.next346, %vector.body340 ] ; 2 uses
  %vec.phi342 = phi <4 x i32> [ %i.dj, %vector.ph338 ], [ %i.dm, %vector.body340 ]
  %vec.phi343 = phi <4 x i32> [ zeroinitializer, %vector.ph338 ], [ %i.dn, %vector.body340 ]
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %index341 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %wide.load344 = load <4 x i32>, ptr %i.dk, align 4, !tbaa !56
  %wide.load345 = load <4 x i32>, ptr %i.dl, align 4, !tbaa !56
  %i.dm = add <4 x i32> %wide.load344, %vec.phi342 ; 2 uses
  %i.dn = add <4 x i32> %wide.load345, %vec.phi343 ; 2 uses
  %index.next346 = add nuw i64 %index341, 8       ; 2 uses
  %i.do = icmp eq i64 %index.next346, %n.vec339
  br i1 %i.do, label %middle.block347, label %vector.body340, !llvm.loop !734

middle.block347:                                  ; preds = %vector.body340
  %bin.rdx348 = add <4 x i32> %i.dn, %i.dm
  %i.dp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx348) ; 2 uses
  %cmp.n349 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i, %n.vec339
  br i1 %cmp.n349, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.preheader397

.lr.ph85.i.i.i.i.i.preheader397:                  ; preds = %.lr.ph85.i.i.i.i.i.preheader, %middle.block347
  %.05683.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i.preheader ], [ %n.vec339, %middle.block347 ]
  %.07582.i.i.i.i.i.ph = phi i32 [ %4, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.dp, %middle.block347 ]
  br label %.lr.ph85.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph85.i.i.i.i.i, %middle.block347, %bb.u
  %.075.lcssa.i.i.i.i.i = phi i32 [ %4, %bb.u ], [ %i.dp, %middle.block347 ], [ %i.ef, %.lr.ph85.i.i.i.i.i ] ; 3 uses
  %i.dq = icmp slt i64 %i.cg, %i.d
  br i1 %i.dq, label %.lr.ph89.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph89.i.i.i.i.i.preheader:                     ; preds = %.preheader.i.i.i.i.i
  %i.dr = shl nsw i64 %i.cd, 2
  %i.ds = add i64 %.0.i.i.i.i.i.i.i.i.i, %i.dr
  %i.dt = sub i64 %i.d, %i.ds                     ; 3 uses
  %min.iters.check353 = icmp ult i64 %i.dt, 8
  br i1 %min.iters.check353, label %.lr.ph89.i.i.i.i.i.preheader392, label %vector.ph354

vector.ph354:                                     ; preds = %.lr.ph89.i.i.i.i.i.preheader
  %n.vec355 = and i64 %i.dt, -8                   ; 3 uses
  %i.du = add i64 %i.cg, %n.vec355
  %i.dv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i, i64 0
  %i.dw = getelementptr [4 x i8], ptr %i.bk, i64 %i.cg
  br label %vector.body356

vector.body356:                                   ; preds = %vector.body356, %vector.ph354
  %index357 = phi i64 [ 0, %vector.ph354 ], [ %index.next362, %vector.body356 ] ; 2 uses
  %vec.phi358 = phi <4 x i32> [ %i.dv, %vector.ph354 ], [ %i.dz, %vector.body356 ]
  %vec.phi359 = phi <4 x i32> [ zeroinitializer, %vector.ph354 ], [ %i.ea, %vector.body356 ]
  %i.dx = getelementptr [4 x i8], ptr %i.dw, i64 %index357 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %wide.load360 = load <4 x i32>, ptr %i.dx, align 4, !tbaa !56
  %wide.load361 = load <4 x i32>, ptr %i.dy, align 4, !tbaa !56
  %i.dz = add <4 x i32> %wide.load360, %vec.phi358 ; 2 uses
  %i.ea = add <4 x i32> %wide.load361, %vec.phi359 ; 2 uses
  %index.next362 = add nuw i64 %index357, 8       ; 2 uses
  %i.eb = icmp eq i64 %index.next362, %n.vec355
  br i1 %i.eb, label %middle.block363, label %vector.body356, !llvm.loop !735

middle.block363:                                  ; preds = %vector.body356
  %bin.rdx364 = add <4 x i32> %i.ea, %i.dz
  %i.ec = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx364) ; 2 uses
  %cmp.n365 = icmp eq i64 %i.dt, %n.vec355
  br i1 %cmp.n365, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph89.i.i.i.i.i.preheader392

.lr.ph89.i.i.i.i.i.preheader392:                  ; preds = %.lr.ph89.i.i.i.i.i.preheader, %middle.block363
  %.05588.i.i.i.i.i.ph = phi i64 [ %i.cg, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.du, %middle.block363 ]
  %.187.i.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i.i, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.ec, %middle.block363 ]
  br label %.lr.ph89.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.preheader397, %.lr.ph85.i.i.i.i.i
  %.05683.i.i.i.i.i = phi i64 [ %i.eg, %.lr.ph85.i.i.i.i.i ], [ %.05683.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader397 ] ; 2 uses
  %.07582.i.i.i.i.i = phi i32 [ %i.ef, %.lr.ph85.i.i.i.i.i ], [ %.07582.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader397 ]
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.05683.i.i.i.i.i
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !56
  %i.ef = add nsw i32 %i.ee, %.07582.i.i.i.i.i    ; 2 uses
  %i.eg = add nuw nsw i64 %.05683.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i149 = icmp eq i64 %i.eg, %.0.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i149, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i, !llvm.loop !736

.lr.ph89.i.i.i.i.i:                               ; preds = %.lr.ph89.i.i.i.i.i.preheader392, %.lr.ph89.i.i.i.i.i
  %.05588.i.i.i.i.i = phi i64 [ %i.ek, %.lr.ph89.i.i.i.i.i ], [ %.05588.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader392 ] ; 2 uses
  %.187.i.i.i.i.i = phi i32 [ %i.ej, %.lr.ph89.i.i.i.i.i ], [ %.187.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader392 ]
  %i.eh = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %.05588.i.i.i.i.i
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !56
  %i.ej = add nsw i32 %i.ei, %.187.i.i.i.i.i      ; 2 uses
  %i.ek = add nsw i64 %.05588.i.i.i.i.i, 1        ; 2 uses
  %i.el = icmp slt i64 %i.ek, %i.d
  br i1 %i.el, label %.lr.ph89.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, !llvm.loop !737

bb.v:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.em = load i32, ptr %i.bk, align 4, !tbaa !56 ; 3 uses
  %i.en = icmp sgt i64 %i.d, 1
  br i1 %i.en, label %.lr.ph94.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph94.i.i.i.i.i.preheader:                     ; preds = %bb.v
  %i.eo = add nsw i64 %i.d, -1                    ; 2 uses
  %min.iters.check369 = icmp ult i64 %i.d, 9
  br i1 %min.iters.check369, label %.lr.ph94.i.i.i.i.i.preheader388, label %vector.ph370

vector.ph370:                                     ; preds = %.lr.ph94.i.i.i.i.i.preheader
  %n.vec371 = and i64 %i.eo, -8                   ; 3 uses
  %i.ep = or disjoint i64 %n.vec371, 1
  %i.eq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.em, i64 0
  br label %vector.body372

vector.body372:                                   ; preds = %vector.body372, %vector.ph370
  %index373 = phi i64 [ 0, %vector.ph370 ], [ %index.next378, %vector.body372 ] ; 2 uses
  %vec.phi374 = phi <4 x i32> [ %i.eq, %vector.ph370 ], [ %i.eu, %vector.body372 ]
  %vec.phi375 = phi <4 x i32> [ zeroinitializer, %vector.ph370 ], [ %i.ev, %vector.body372 ]
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %index373 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 4
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 20
  %wide.load376 = load <4 x i32>, ptr %i.es, align 4, !tbaa !56
  %wide.load377 = load <4 x i32>, ptr %i.et, align 4, !tbaa !56
  %i.eu = add <4 x i32> %wide.load376, %vec.phi374 ; 2 uses
  %i.ev = add <4 x i32> %wide.load377, %vec.phi375 ; 2 uses
  %index.next378 = add nuw i64 %index373, 8       ; 2 uses
  %i.ew = icmp eq i64 %index.next378, %n.vec371
  br i1 %i.ew, label %middle.block379, label %vector.body372, !llvm.loop !738

middle.block379:                                  ; preds = %vector.body372
  %bin.rdx380 = add <4 x i32> %i.ev, %i.eu
  %i.ex = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx380) ; 2 uses
  %cmp.n381 = icmp eq i64 %i.eo, %n.vec371
  br i1 %cmp.n381, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i.preheader388

.lr.ph94.i.i.i.i.i.preheader388:                  ; preds = %.lr.ph94.i.i.i.i.i.preheader, %middle.block379
  %.092.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.ep, %middle.block379 ]
  %.291.i.i.i.i.i.ph = phi i32 [ %i.em, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.ex, %middle.block379 ]
  br label %.lr.ph94.i.i.i.i.i

.lr.ph94.i.i.i.i.i:                               ; preds = %.lr.ph94.i.i.i.i.i.preheader388, %.lr.ph94.i.i.i.i.i
  %.092.i.i.i.i.i = phi i64 [ %i.fb, %.lr.ph94.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader388 ] ; 2 uses
  %.291.i.i.i.i.i = phi i32 [ %i.fa, %.lr.ph94.i.i.i.i.i ], [ %.291.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader388 ]
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %.092.i.i.i.i.i
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !56
  %i.fa = add nsw i32 %i.ez, %.291.i.i.i.i.i      ; 2 uses
  %i.fb = add nuw nsw i64 %.092.i.i.i.i.i, 1      ; 2 uses
  %exitcond102.not.i.i.i.i.i = icmp eq i64 %i.fb, %i.d
  br i1 %exitcond102.not.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i, !llvm.loop !739

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i: ; preds = %.lr.ph89.i.i.i.i.i, %.lr.ph94.i.i.i.i.i, %middle.block363, %middle.block379, %bb.v, %.preheader.i.i.i.i.i
  %.0.i.i.i = phi i32 [ %i.fa, %.lr.ph94.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.em, %bb.v ], [ %i.ex, %middle.block379 ], [ %i.ec, %middle.block363 ], [ %i.ej, %.lr.ph89.i.i.i.i.i ]
  %i.fc = sext i32 %.0.i.i.i to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEEEE16nonZerosEstimateEv.exit

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEEEE16nonZerosEstimateEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, %bb.o, %bb.n
  %.0.i.i148 = phi i64 [ %i.bs, %bb.n ], [ %i.fc, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i ], [ 0, %bb.o ]
  %i.fd = add nsw i64 %.0.i.i148, %.0.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 7 uses
  store i64 0, ptr %i.fe, align 8, !tbaa !703
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !690
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !691
  %i.fj = shl i64 %i.fi, 3
  %i.fk = add i64 %i.fj, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fg, i8 0, i64 %i.fk, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !696 ; 2 uses
  %.not.i = icmp eq ptr %i.fm, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIbLi0ElE7setZeroEv.exit, label %bb.w

bb.w:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEEEE16nonZerosEstimateEv.exit
  %i.fn = load i64, ptr %i.fh, align 8, !tbaa !691
  %i.fo = shl i64 %i.fn, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.fm, i8 0, i64 %i.fo, i1 false)
  br label %_ZN5Eigen12SparseMatrixIbLi0ElE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIbLi0ElE7setZeroEv.exit:   ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEEEE16nonZerosEstimateEv.exit, %bb.w
  %i.fp = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  invoke void @_ZN5Eigen8internal17CompressedStorageIblE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.fp, i64 noundef %i.fd)
          to label %_ZN5Eigen12SparseMatrixIbLi0ElE7reserveEl.exit.preheader unwind label %bb.aa

_ZN5Eigen12SparseMatrixIbLi0ElE7reserveEl.exit.preheader: ; preds = %_ZN5Eigen12SparseMatrixIbLi0ElE7setZeroEv.exit
  %i.fq = icmp sgt i64 %i.d, 0
  br i1 %i.fq, label %.lr.ph267, label %_ZN5Eigen12SparseMatrixIbLi0ElE7reserveEl.exit._crit_edge

.lr.ph267:                                        ; preds = %_ZN5Eigen12SparseMatrixIbLi0ElE7reserveEl.exit.preheader
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.fx = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 9 uses
  %i.fy = udiv i64 %i.b, 11
end_hunk_2
