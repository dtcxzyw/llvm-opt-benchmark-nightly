inline.NumInlined: 7499
inline.NumDeleted: 3448
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 120
loop-unroll.NumUnrolled: 123
begin_hunk_0_@_ZN5Eigen8internal43conservative_sparse_sparse_product_selectorINS_12SparseMatrixIdLi0EiEES3_S3_Li0ELi0ELi0EE3runERKS3_S6_RS3_:bb.a
  br label %bb.z

bb.z:                                             ; preds = %.body, %bb.x
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.bc, %bb.x ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %4) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %common.resume

bb.aa:                                            ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit21, %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_12SparseMatrixIdLi0EiEES3_S3_EEvRKT_RKT0_RT1_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3) unnamed_addr #6 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !87   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66   ; 14 uses
  %i.e = icmp ugt i64 %i.b, 131072                ; 5 uses
  br i1 %i.e, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.b) #33 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !68
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.b
  %i.i = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.i, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.j = shl nuw i64 %i.b, 3
  br label %bb.e

bb.d:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc140 unwind label %.split

.noexc140:                                        ; preds = %bb.d
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.l = add nuw nsw i64 %i.b, 15
  %i.m = alloca i8, i64 %i.l, align 16            ; 2 uses
  %i.n = shl nuw nsw i64 %i.b, 3                  ; 3 uses
  %i.o = icmp samesign ult i64 %i.b, 16385
  br i1 %i.o, label %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread, label %bb.e

_ZN5Eigen8internal14aligned_mallocEm.exit143.thread: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.p = add nuw nsw i64 %i.n, 15
  %i.q = alloca i8, i64 %i.p, align 16
  %i.r = add nuw nsw i64 %i.n, 15
  %i.s = alloca i8, i64 %i.r, align 16
  br label %bb.h

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.t = phi i64 [ %i.j, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread ], [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ] ; 2 uses
  %i.u = phi ptr [ %i.f, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread ], [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ] ; 3 uses
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #33 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit143

bb.f:                                             ; preds = %bb.e
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc142 unwind label %.split261

.noexc142:                                        ; preds = %bb.f
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit143:     ; preds = %bb.e
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.t) #33 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit143
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aa, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc147 unwind label %.split265

.noexc147:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit143, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread
  %i.ab = phi i1 [ false, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ true, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 2 uses
  %i.ac = phi ptr [ %i.q, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ %i.v, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 7 uses
  %i.ad = phi ptr [ %i.m, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ %i.u, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 7 uses
  %i.ae = phi ptr [ %i.s, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ %i.y, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 8 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ad, i8 0, i64 %i.b, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !88 ; 13 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !67 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !66
  %i.am = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !70
  %i.ao = load i32, ptr %i.aj, align 4, !tbaa !70
  %i.ap = sub nsw i32 %i.an, %i.ao
  %i.aq = sext i32 %i.ap to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !66 ; 11 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit, label %bb.k

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
  %i.bi = load <2 x i64>, ptr %i.bh, align 1, !tbaa !116 ; 2 uses
  %i.bj = icmp sgt i64 %i.ba, 7
  br i1 %i.bj, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr i8, ptr %i.bh, i64 16
  %i.bl = load <4 x i32>, ptr %i.bk, align 1, !tbaa !116 ; 2 uses
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
  %i.bt = load <4 x i32>, ptr %i.bs, align 1, !tbaa !116
  %i.bu = add <4 x i32> %i.bt, %.sroa.067.078.i.i.i.i.i ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.ag, i64 %.057.in79.i.i.i.i.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 48
  %i.bx = load <4 x i32>, ptr %i.bw, align 1, !tbaa !116
  %i.by = add <4 x i32> %i.bx, %i.br              ; 2 uses
  %.057.i.i.i.i.i = add nsw i64 %.05780.i.i.i.i.i, 8 ; 2 uses
  %i.bz = icmp slt i64 %.057.i.i.i.i.i, %i.bf
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !1016

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.bf
  %i.cb = load <4 x i32>, ptr %i.ca, align 1, !tbaa !116
  %i.cc = add <4 x i32> %i.cb, %i.bo
  %i.cd = bitcast <4 x i32> %i.cc to <2 x i64>
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i.i, %bb.m
  %.sroa.067.2.i.i.i.i.i = phi <2 x i64> [ %i.bi, %bb.m ], [ %i.cd, %bb.o ], [ %i.bp, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ce = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32>
  %i.cf = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32>
  %i.cg = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ch = add <4 x i32> %i.cg, %i.ce              ; 2 uses
  %shift = shufflevector <4 x i32> %i.ch, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.ch, %shift ; 2 uses
  %4 = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ci = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ci, label %.lr.ph85.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.p
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.i.preheader515, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.cj = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cj, %vector.ph ], [ %i.cm, %vector.body ]
  %vec.phi391 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cn, %vector.body ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load = load <4 x i32>, ptr %i.ck, align 4, !tbaa !70
  %wide.load392 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !70
  %i.cm = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.cn = add <4 x i32> %wide.load392, %vec.phi391 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !1017

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cn, %i.cm
  %i.cp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.preheader515

.lr.ph85.i.i.i.i.i.preheader515:                  ; preds = %.lr.ph85.i.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.i.ph = phi i32 [ %4, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.cp, %middle.block ]
  br label %.lr.ph85.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph85.i.i.i.i.i, %middle.block, %bb.p
  %.075.lcssa.i.i.i.i.i = phi i32 [ %4, %bb.p ], [ %i.cp, %middle.block ], [ %i.df, %.lr.ph85.i.i.i.i.i ] ; 3 uses
  %i.cq = icmp slt i64 %i.bg, %i.as
  br i1 %i.cq, label %.lr.ph89.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph89.i.i.i.i.i.preheader:                     ; preds = %.preheader.i.i.i.i.i
  %i.cr = shl nsw i64 %i.bd, 2
  %i.cs = add i64 %.0.i.i.i.i.i.i.i.i.i, %i.cr
  %i.ct = sub i64 %i.as, %i.cs                    ; 3 uses
  %min.iters.check394 = icmp ult i64 %i.ct, 8
  br i1 %min.iters.check394, label %.lr.ph89.i.i.i.i.i.preheader510, label %vector.ph395

vector.ph395:                                     ; preds = %.lr.ph89.i.i.i.i.i.preheader
  %n.vec396 = and i64 %i.ct, -8                   ; 3 uses
  %i.cu = add i64 %i.bg, %n.vec396
  %i.cv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i, i64 0
  %i.cw = getelementptr [4 x i8], ptr %i.ag, i64 %i.bg
  br label %vector.body397

vector.body397:                                   ; preds = %vector.body397, %vector.ph395
  %index398 = phi i64 [ 0, %vector.ph395 ], [ %index.next403, %vector.body397 ] ; 2 uses
  %vec.phi399 = phi <4 x i32> [ %i.cv, %vector.ph395 ], [ %i.cz, %vector.body397 ]
  %vec.phi400 = phi <4 x i32> [ zeroinitializer, %vector.ph395 ], [ %i.da, %vector.body397 ]
  %i.cx = getelementptr [4 x i8], ptr %i.cw, i64 %index398 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load401 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !70
  %wide.load402 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !70
  %i.cz = add <4 x i32> %wide.load401, %vec.phi399 ; 2 uses
  %i.da = add <4 x i32> %wide.load402, %vec.phi400 ; 2 uses
  %index.next403 = add nuw i64 %index398, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next403, %n.vec396
  br i1 %i.db, label %middle.block404, label %vector.body397, !llvm.loop !1018

middle.block404:                                  ; preds = %vector.body397
  %bin.rdx405 = add <4 x i32> %i.da, %i.cz
  %i.dc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx405) ; 2 uses
  %cmp.n406 = icmp eq i64 %i.ct, %n.vec396
  br i1 %cmp.n406, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph89.i.i.i.i.i.preheader510

.lr.ph89.i.i.i.i.i.preheader510:                  ; preds = %.lr.ph89.i.i.i.i.i.preheader, %middle.block404
  %.05588.i.i.i.i.i.ph = phi i64 [ %i.bg, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.cu, %middle.block404 ]
  %.187.i.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i.i, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.dc, %middle.block404 ]
  br label %.lr.ph89.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.preheader515, %.lr.ph85.i.i.i.i.i
  %.05683.i.i.i.i.i = phi i64 [ %i.dg, %.lr.ph85.i.i.i.i.i ], [ %.05683.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader515 ] ; 2 uses
  %.07582.i.i.i.i.i = phi i32 [ %i.df, %.lr.ph85.i.i.i.i.i ], [ %.07582.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader515 ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.05683.i.i.i.i.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !70
  %i.df = add nsw i32 %i.de, %.07582.i.i.i.i.i    ; 2 uses
  %i.dg = add nuw nsw i64 %.05683.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dg, %.0.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i, !llvm.loop !1019

.lr.ph89.i.i.i.i.i:                               ; preds = %.lr.ph89.i.i.i.i.i.preheader510, %.lr.ph89.i.i.i.i.i
  %.05588.i.i.i.i.i = phi i64 [ %i.dk, %.lr.ph89.i.i.i.i.i ], [ %.05588.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader510 ] ; 2 uses
  %.187.i.i.i.i.i = phi i32 [ %i.dj, %.lr.ph89.i.i.i.i.i ], [ %.187.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader510 ]
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05588.i.i.i.i.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !70
  %i.dj = add nsw i32 %i.di, %.187.i.i.i.i.i      ; 2 uses
  %i.dk = add nsw i64 %.05588.i.i.i.i.i, 1        ; 2 uses
  %i.dl = icmp slt i64 %i.dk, %i.as
  br i1 %i.dl, label %.lr.ph89.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, !llvm.loop !1020

bb.q:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.dm = load i32, ptr %i.ag, align 4, !tbaa !70 ; 3 uses
  %i.dn = icmp sgt i64 %i.as, 1
  br i1 %i.dn, label %.lr.ph94.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph94.i.i.i.i.i.preheader:                     ; preds = %bb.q
  %i.do = add nsw i64 %i.as, -1                   ; 2 uses
  %min.iters.check410 = icmp ult i64 %i.as, 9
  br i1 %min.iters.check410, label %.lr.ph94.i.i.i.i.i.preheader506, label %vector.ph411

vector.ph411:                                     ; preds = %.lr.ph94.i.i.i.i.i.preheader
  %n.vec412 = and i64 %i.do, -8                   ; 3 uses
  %i.dp = or disjoint i64 %n.vec412, 1
  %i.dq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.dm, i64 0
  br label %vector.body413

vector.body413:                                   ; preds = %vector.body413, %vector.ph411
  %index414 = phi i64 [ 0, %vector.ph411 ], [ %index.next419, %vector.body413 ] ; 2 uses
  %vec.phi415 = phi <4 x i32> [ %i.dq, %vector.ph411 ], [ %i.du, %vector.body413 ]
  %vec.phi416 = phi <4 x i32> [ zeroinitializer, %vector.ph411 ], [ %i.dv, %vector.body413 ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index414 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %wide.load417 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !70
  %wide.load418 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !70
  %i.du = add <4 x i32> %wide.load417, %vec.phi415 ; 2 uses
  %i.dv = add <4 x i32> %wide.load418, %vec.phi416 ; 2 uses
  %index.next419 = add nuw i64 %index414, 8       ; 2 uses
  %i.dw = icmp eq i64 %index.next419, %n.vec412
  br i1 %i.dw, label %middle.block420, label %vector.body413, !llvm.loop !1021

middle.block420:                                  ; preds = %vector.body413
  %bin.rdx421 = add <4 x i32> %i.dv, %i.du
  %i.dx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx421) ; 2 uses
  %cmp.n422 = icmp eq i64 %i.do, %n.vec412
  br i1 %cmp.n422, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i.preheader506

.lr.ph94.i.i.i.i.i.preheader506:                  ; preds = %.lr.ph94.i.i.i.i.i.preheader, %middle.block420
  %.092.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.dp, %middle.block420 ]
  %.291.i.i.i.i.i.ph = phi i32 [ %i.dm, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.dx, %middle.block420 ]
  br label %.lr.ph94.i.i.i.i.i

.lr.ph94.i.i.i.i.i:                               ; preds = %.lr.ph94.i.i.i.i.i.preheader506, %.lr.ph94.i.i.i.i.i
  %.092.i.i.i.i.i = phi i64 [ %i.eb, %.lr.ph94.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader506 ] ; 2 uses
  %.291.i.i.i.i.i = phi i32 [ %i.ea, %.lr.ph94.i.i.i.i.i ], [ %.291.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader506 ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.092.i.i.i.i.i
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !70
  %i.ea = add nsw i32 %i.dz, %.291.i.i.i.i.i      ; 2 uses
  %i.eb = add nuw nsw i64 %.092.i.i.i.i.i, 1      ; 2 uses
  %exitcond102.not.i.i.i.i.i = icmp eq i64 %i.eb, %i.as
  br i1 %exitcond102.not.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i, !llvm.loop !1022

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i: ; preds = %.lr.ph89.i.i.i.i.i, %.lr.ph94.i.i.i.i.i, %middle.block404, %middle.block420, %bb.q, %.preheader.i.i.i.i.i
  %.0.i.i.i = phi i32 [ %i.ea, %.lr.ph94.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.dm, %bb.q ], [ %i.dx, %middle.block420 ], [ %i.dc, %middle.block404 ], [ %i.dj, %.lr.ph89.i.i.i.i.i ]
  %i.ec = sext i32 %.0.i.i.i to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, %bb.j, %bb.i
  %.0.i.i = phi i64 [ %i.aq, %bb.i ], [ %i.ec, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i ], [ 0, %bb.j ]
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !88 ; 13 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !67 ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.d
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !70
  %i.ek = load i32, ptr %i.eh, align 4, !tbaa !70
  %i.el = sub nsw i32 %i.ej, %i.ek
  %i.em = sext i32 %i.el to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183

bb.s:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit
  %i.en = icmp eq i64 %i.d, 0
  br i1 %i.en, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eo = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.ep = and i64 %i.eo, 3
  %.not.i.i.i.i.i.i.i.i.i149 = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i149, label %bb.u, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150

bb.u:                                             ; preds = %bb.t
  %i.eq = lshr exact i64 %i.eo, 2
  %i.er = sub nsw i64 0, %i.eq
  %i.es = and i64 %i.er, 3
  %i.et = tail call i64 @llvm.smin.i64(i64 %i.es, i64 %i.d)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i.i151 = phi i64 [ %i.et, %bb.u ], [ %i.d, %bb.t ] ; 12 uses
  %i.eu = sub nsw i64 %i.d, %.0.i.i.i.i.i.i.i.i.i151 ; 5 uses
  %i.ev = sdiv i64 %i.eu, 8
  %i.ew = shl nsw i64 %i.ev, 3                    ; 2 uses
  %i.ex = sdiv i64 %i.eu, 4                       ; 2 uses
  %i.ey = shl nsw i64 %i.ex, 2                    ; 2 uses
  %i.ez = add nsw i64 %i.ew, %.0.i.i.i.i.i.i.i.i.i151 ; 2 uses
  %i.fa = add nsw i64 %i.ey, %.0.i.i.i.i.i.i.i.i.i151 ; 4 uses
  %.off.i.i.i.i.i152 = add i64 %i.eu, 3
  %.not.i.i.i.i.i153 = icmp ult i64 %.off.i.i.i.i.i152, 7
  br i1 %.not.i.i.i.i.i153, label %bb.z, label %bb.v

bb.v:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150
  %i.fb = getelementptr [4 x i8], ptr %i.ee, i64 %.0.i.i.i.i.i.i.i.i.i151 ; 2 uses
  %i.fc = load <2 x i64>, ptr %i.fb, align 1, !tbaa !116 ; 2 uses
  %i.fd = icmp sgt i64 %i.eu, 7
  br i1 %i.fd, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.fe = getelementptr i8, ptr %i.fb, i64 16
  %i.ff = load <4 x i32>, ptr %i.fe, align 1, !tbaa !116 ; 2 uses
  %i.fg = bitcast <2 x i64> %i.fc to <4 x i32>    ; 2 uses
  %i.fh = icmp samesign ugt i64 %i.eu, 15
  br i1 %i.fh, label %.lr.ph.preheader.i.i.i.i.i172, label %._crit_edge.i.i.i.i.i169

.lr.ph.preheader.i.i.i.i.i172:                    ; preds = %bb.w
  %.05777.i.i.i.i.i173 = add nsw i64 %.0.i.i.i.i.i.i.i.i.i151, 8
  br label %.lr.ph.i.i.i.i.i174

._crit_edge.i.i.i.i.i169:                         ; preds = %.lr.ph.i.i.i.i.i174, %bb.w
  %.lcssa.i.i.i.i.i170 = phi <4 x i32> [ %i.ff, %bb.w ], [ %i.fs, %.lr.ph.i.i.i.i.i174 ]
  %.sroa.067.0.lcssa.i.i.i.i.i171 = phi <4 x i32> [ %i.fg, %bb.w ], [ %i.fo, %.lr.ph.i.i.i.i.i174 ]
  %i.fi = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i.i171, %.lcssa.i.i.i.i.i170 ; 2 uses
  %i.fj = bitcast <4 x i32> %i.fi to <2 x i64>
  %i.fk = icmp sgt i64 %i.ey, %i.ew
  br i1 %i.fk, label %bb.x, label %bb.y

.lr.ph.i.i.i.i.i174:                              ; preds = %.lr.ph.i.i.i.i.i174, %.lr.ph.preheader.i.i.i.i.i172
  %.05780.i.i.i.i.i175 = phi i64 [ %.057.i.i.i.i.i178, %.lr.ph.i.i.i.i.i174 ], [ %.05777.i.i.i.i.i173, %.lr.ph.preheader.i.i.i.i.i172 ] ; 3 uses
  %.057.in79.i.i.i.i.i176 = phi i64 [ %.05780.i.i.i.i.i175, %.lr.ph.i.i.i.i.i174 ], [ %.0.i.i.i.i.i.i.i.i.i151, %.lr.ph.preheader.i.i.i.i.i172 ]
  %.sroa.067.078.i.i.i.i.i177 = phi <4 x i32> [ %i.fo, %.lr.ph.i.i.i.i.i174 ], [ %i.fg, %.lr.ph.preheader.i.i.i.i.i172 ]
  %i.fl = phi <4 x i32> [ %i.fs, %.lr.ph.i.i.i.i.i174 ], [ %i.ff, %.lr.ph.preheader.i.i.i.i.i172 ]
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %.05780.i.i.i.i.i175
  %i.fn = load <4 x i32>, ptr %i.fm, align 1, !tbaa !116
  %i.fo = add <4 x i32> %i.fn, %.sroa.067.078.i.i.i.i.i177 ; 2 uses
  %i.fp = getelementptr [4 x i8], ptr %i.ee, i64 %.057.in79.i.i.i.i.i176
  %i.fq = getelementptr i8, ptr %i.fp, i64 48
  %i.fr = load <4 x i32>, ptr %i.fq, align 1, !tbaa !116
  %i.fs = add <4 x i32> %i.fr, %i.fl              ; 2 uses
  %.057.i.i.i.i.i178 = add nsw i64 %.05780.i.i.i.i.i175, 8 ; 2 uses
  %i.ft = icmp slt i64 %.057.i.i.i.i.i178, %i.ez
  br i1 %i.ft, label %.lr.ph.i.i.i.i.i174, label %._crit_edge.i.i.i.i.i169, !llvm.loop !1016

bb.x:                                             ; preds = %._crit_edge.i.i.i.i.i169
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ez
  %i.fv = load <4 x i32>, ptr %i.fu, align 1, !tbaa !116
  %i.fw = add <4 x i32> %i.fv, %i.fi
  %i.fx = bitcast <4 x i32> %i.fw to <2 x i64>
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i.i.i.i.i169, %bb.v
  %.sroa.067.2.i.i.i.i.i154 = phi <2 x i64> [ %i.fc, %bb.v ], [ %i.fx, %bb.x ], [ %i.fj, %._crit_edge.i.i.i.i.i169 ] ; 2 uses
  %i.fy = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i154 to <4 x i32>
  %i.fz = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i154 to <4 x i32>
  %i.ga = shufflevector <4 x i32> %i.fz, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.gb = add <4 x i32> %i.ga, %i.fy              ; 2 uses
  %shift484 = shufflevector <4 x i32> %i.gb, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop485 = add nsw <4 x i32> %i.gb, %shift484 ; 2 uses
  %5 = extractelement <4 x i32> %foldExtExtBinop485, i64 0 ; 2 uses
  %i.gc = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i151, 0
  br i1 %i.gc, label %.lr.ph85.i.i.i.i.i165.preheader, label %.preheader.i.i.i.i.i157

.lr.ph85.i.i.i.i.i165.preheader:                  ; preds = %bb.y
  %min.iters.check426 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i151, 8
  br i1 %min.iters.check426, label %.lr.ph85.i.i.i.i.i165.preheader500, label %vector.ph427

vector.ph427:                                     ; preds = %.lr.ph85.i.i.i.i.i165.preheader
  %n.vec428 = and i64 %.0.i.i.i.i.i.i.i.i.i151, 9223372036854775800 ; 3 uses
  %i.gd = shufflevector <4 x i32> %foldExtExtBinop485, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body429

vector.body429:                                   ; preds = %vector.body429, %vector.ph427
  %index430 = phi i64 [ 0, %vector.ph427 ], [ %index.next435, %vector.body429 ] ; 2 uses
  %vec.phi431 = phi <4 x i32> [ %i.gd, %vector.ph427 ], [ %i.gg, %vector.body429 ]
  %vec.phi432 = phi <4 x i32> [ zeroinitializer, %vector.ph427 ], [ %i.gh, %vector.body429 ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %index430 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %wide.load433 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !70
  %wide.load434 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !70
  %i.gg = add <4 x i32> %wide.load433, %vec.phi431 ; 2 uses
  %i.gh = add <4 x i32> %wide.load434, %vec.phi432 ; 2 uses
  %index.next435 = add nuw i64 %index430, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next435, %n.vec428
  br i1 %i.gi, label %middle.block436, label %vector.body429, !llvm.loop !1023

middle.block436:                                  ; preds = %vector.body429
  %bin.rdx437 = add <4 x i32> %i.gh, %i.gg
  %i.gj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx437) ; 2 uses
  %cmp.n438 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i151, %n.vec428
  br i1 %cmp.n438, label %.preheader.i.i.i.i.i157, label %.lr.ph85.i.i.i.i.i165.preheader500

.lr.ph85.i.i.i.i.i165.preheader500:               ; preds = %.lr.ph85.i.i.i.i.i165.preheader, %middle.block436
  %.05683.i.i.i.i.i166.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i165.preheader ], [ %n.vec428, %middle.block436 ]
  %.07582.i.i.i.i.i167.ph = phi i32 [ %5, %.lr.ph85.i.i.i.i.i165.preheader ], [ %i.gj, %middle.block436 ]
  br label %.lr.ph85.i.i.i.i.i165

.preheader.i.i.i.i.i157:                          ; preds = %.lr.ph85.i.i.i.i.i165, %middle.block436, %bb.y
  %.075.lcssa.i.i.i.i.i158 = phi i32 [ %5, %bb.y ], [ %i.gj, %middle.block436 ], [ %i.gz, %.lr.ph85.i.i.i.i.i165 ] ; 3 uses
  %i.gk = icmp slt i64 %i.fa, %i.d
  br i1 %i.gk, label %.lr.ph89.i.i.i.i.i162.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159

.lr.ph89.i.i.i.i.i162.preheader:                  ; preds = %.preheader.i.i.i.i.i157
  %i.gl = shl nsw i64 %i.ex, 2
  %i.gm = add i64 %.0.i.i.i.i.i.i.i.i.i151, %i.gl
  %i.gn = sub i64 %i.d, %i.gm                     ; 3 uses
  %min.iters.check442 = icmp ult i64 %i.gn, 8
  br i1 %min.iters.check442, label %.lr.ph89.i.i.i.i.i162.preheader495, label %vector.ph443

vector.ph443:                                     ; preds = %.lr.ph89.i.i.i.i.i162.preheader
  %n.vec444 = and i64 %i.gn, -8                   ; 3 uses
  %i.go = add i64 %i.fa, %n.vec444
  %i.gp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i158, i64 0
  %i.gq = getelementptr [4 x i8], ptr %i.ee, i64 %i.fa
  br label %vector.body445

vector.body445:                                   ; preds = %vector.body445, %vector.ph443
  %index446 = phi i64 [ 0, %vector.ph443 ], [ %index.next451, %vector.body445 ] ; 2 uses
  %vec.phi447 = phi <4 x i32> [ %i.gp, %vector.ph443 ], [ %i.gt, %vector.body445 ]
  %vec.phi448 = phi <4 x i32> [ zeroinitializer, %vector.ph443 ], [ %i.gu, %vector.body445 ]
  %i.gr = getelementptr [4 x i8], ptr %i.gq, i64 %index446 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.load449 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !70
  %wide.load450 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !70
  %i.gt = add <4 x i32> %wide.load449, %vec.phi447 ; 2 uses
  %i.gu = add <4 x i32> %wide.load450, %vec.phi448 ; 2 uses
  %index.next451 = add nuw i64 %index446, 8       ; 2 uses
  %i.gv = icmp eq i64 %index.next451, %n.vec444
  br i1 %i.gv, label %middle.block452, label %vector.body445, !llvm.loop !1024

middle.block452:                                  ; preds = %vector.body445
  %bin.rdx453 = add <4 x i32> %i.gu, %i.gt
  %i.gw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx453) ; 2 uses
  %cmp.n454 = icmp eq i64 %i.gn, %n.vec444
  br i1 %cmp.n454, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, label %.lr.ph89.i.i.i.i.i162.preheader495

.lr.ph89.i.i.i.i.i162.preheader495:               ; preds = %.lr.ph89.i.i.i.i.i162.preheader, %middle.block452
  %.05588.i.i.i.i.i163.ph = phi i64 [ %i.fa, %.lr.ph89.i.i.i.i.i162.preheader ], [ %i.go, %middle.block452 ]
  %.187.i.i.i.i.i164.ph = phi i32 [ %.075.lcssa.i.i.i.i.i158, %.lr.ph89.i.i.i.i.i162.preheader ], [ %i.gw, %middle.block452 ]
  br label %.lr.ph89.i.i.i.i.i162

.lr.ph85.i.i.i.i.i165:                            ; preds = %.lr.ph85.i.i.i.i.i165.preheader500, %.lr.ph85.i.i.i.i.i165
  %.05683.i.i.i.i.i166 = phi i64 [ %i.ha, %.lr.ph85.i.i.i.i.i165 ], [ %.05683.i.i.i.i.i166.ph, %.lr.ph85.i.i.i.i.i165.preheader500 ] ; 2 uses
  %.07582.i.i.i.i.i167 = phi i32 [ %i.gz, %.lr.ph85.i.i.i.i.i165 ], [ %.07582.i.i.i.i.i167.ph, %.lr.ph85.i.i.i.i.i165.preheader500 ]
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.05683.i.i.i.i.i166
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !70
  %i.gz = add nsw i32 %i.gy, %.07582.i.i.i.i.i167 ; 2 uses
  %i.ha = add nuw nsw i64 %.05683.i.i.i.i.i166, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i168 = icmp eq i64 %i.ha, %.0.i.i.i.i.i.i.i.i.i151
  br i1 %exitcond.not.i.i.i.i.i168, label %.preheader.i.i.i.i.i157, label %.lr.ph85.i.i.i.i.i165, !llvm.loop !1025

.lr.ph89.i.i.i.i.i162:                            ; preds = %.lr.ph89.i.i.i.i.i162.preheader495, %.lr.ph89.i.i.i.i.i162
  %.05588.i.i.i.i.i163 = phi i64 [ %i.he, %.lr.ph89.i.i.i.i.i162 ], [ %.05588.i.i.i.i.i163.ph, %.lr.ph89.i.i.i.i.i162.preheader495 ] ; 2 uses
  %.187.i.i.i.i.i164 = phi i32 [ %i.hd, %.lr.ph89.i.i.i.i.i162 ], [ %.187.i.i.i.i.i164.ph, %.lr.ph89.i.i.i.i.i162.preheader495 ]
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %.05588.i.i.i.i.i163
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !70
  %i.hd = add nsw i32 %i.hc, %.187.i.i.i.i.i164   ; 2 uses
  %i.he = add nsw i64 %.05588.i.i.i.i.i163, 1     ; 2 uses
  %i.hf = icmp slt i64 %i.he, %i.d
  br i1 %i.hf, label %.lr.ph89.i.i.i.i.i162, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, !llvm.loop !1026

bb.z:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150
  %i.hg = load i32, ptr %i.ee, align 4, !tbaa !70 ; 3 uses
  %i.hh = icmp sgt i64 %i.d, 1
  br i1 %i.hh, label %.lr.ph94.i.i.i.i.i179.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159

.lr.ph94.i.i.i.i.i179.preheader:                  ; preds = %bb.z
  %i.hi = add nsw i64 %i.d, -1                    ; 2 uses
  %min.iters.check458 = icmp ult i64 %i.d, 9
  br i1 %min.iters.check458, label %.lr.ph94.i.i.i.i.i179.preheader491, label %vector.ph459

vector.ph459:                                     ; preds = %.lr.ph94.i.i.i.i.i179.preheader
  %n.vec460 = and i64 %i.hi, -8                   ; 3 uses
  %i.hj = or disjoint i64 %n.vec460, 1
  %i.hk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.hg, i64 0
  br label %vector.body461

vector.body461:                                   ; preds = %vector.body461, %vector.ph459
  %index462 = phi i64 [ 0, %vector.ph459 ], [ %index.next467, %vector.body461 ] ; 2 uses
  %vec.phi463 = phi <4 x i32> [ %i.hk, %vector.ph459 ], [ %i.ho, %vector.body461 ]
  %vec.phi464 = phi <4 x i32> [ zeroinitializer, %vector.ph459 ], [ %i.hp, %vector.body461 ]
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %index462 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 20
  %wide.load465 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !70
  %wide.load466 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !70
  %i.ho = add <4 x i32> %wide.load465, %vec.phi463 ; 2 uses
  %i.hp = add <4 x i32> %wide.load466, %vec.phi464 ; 2 uses
  %index.next467 = add nuw i64 %index462, 8       ; 2 uses
  %i.hq = icmp eq i64 %index.next467, %n.vec460
  br i1 %i.hq, label %middle.block468, label %vector.body461, !llvm.loop !1027

middle.block468:                                  ; preds = %vector.body461
  %bin.rdx469 = add <4 x i32> %i.hp, %i.ho
  %i.hr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx469) ; 2 uses
  %cmp.n470 = icmp eq i64 %i.hi, %n.vec460
  br i1 %cmp.n470, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, label %.lr.ph94.i.i.i.i.i179.preheader491

.lr.ph94.i.i.i.i.i179.preheader491:               ; preds = %.lr.ph94.i.i.i.i.i179.preheader, %middle.block468
  %.092.i.i.i.i.i180.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i179.preheader ], [ %i.hj, %middle.block468 ]
  %.291.i.i.i.i.i181.ph = phi i32 [ %i.hg, %.lr.ph94.i.i.i.i.i179.preheader ], [ %i.hr, %middle.block468 ]
  br label %.lr.ph94.i.i.i.i.i179

.lr.ph94.i.i.i.i.i179:                            ; preds = %.lr.ph94.i.i.i.i.i179.preheader491, %.lr.ph94.i.i.i.i.i179
  %.092.i.i.i.i.i180 = phi i64 [ %i.hv, %.lr.ph94.i.i.i.i.i179 ], [ %.092.i.i.i.i.i180.ph, %.lr.ph94.i.i.i.i.i179.preheader491 ] ; 2 uses
  %.291.i.i.i.i.i181 = phi i32 [ %i.hu, %.lr.ph94.i.i.i.i.i179 ], [ %.291.i.i.i.i.i181.ph, %.lr.ph94.i.i.i.i.i179.preheader491 ]
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.092.i.i.i.i.i180
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !70
  %i.hu = add nsw i32 %i.ht, %.291.i.i.i.i.i181   ; 2 uses
  %i.hv = add nuw nsw i64 %.092.i.i.i.i.i180, 1   ; 2 uses
  %exitcond102.not.i.i.i.i.i182 = icmp eq i64 %i.hv, %i.d
  br i1 %exitcond102.not.i.i.i.i.i182, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, label %.lr.ph94.i.i.i.i.i179, !llvm.loop !1028

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159: ; preds = %.lr.ph89.i.i.i.i.i162, %.lr.ph94.i.i.i.i.i179, %middle.block452, %middle.block468, %bb.z, %.preheader.i.i.i.i.i157
  %.0.i.i.i160 = phi i32 [ %i.hu, %.lr.ph94.i.i.i.i.i179 ], [ %.075.lcssa.i.i.i.i.i158, %.preheader.i.i.i.i.i157 ], [ %i.hg, %bb.z ], [ %i.hr, %middle.block468 ], [ %i.gw, %middle.block452 ], [ %i.hd, %.lr.ph89.i.i.i.i.i162 ]
  %i.hw = sext i32 %.0.i.i.i160 to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, %bb.s, %bb.r
  %.0.i.i161 = phi i64 [ %i.em, %bb.r ], [ %i.hw, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159 ], [ 0, %bb.s ]
  %i.hx = add nsw i64 %.0.i.i161, %.0.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 7 uses
  store i64 0, ptr %i.hy, align 8, !tbaa !741
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !67
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !66
  %i.id = shl i64 %i.ic, 2
  %i.ie = add i64 %i.id, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ia, i8 0, i64 %i.ie, i1 false)
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !88 ; 2 uses
  %.not.i = icmp eq ptr %i.ig, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183
  %i.ih = load i64, ptr %i.ib, align 8, !tbaa !66
  %i.ii = shl i64 %i.ih, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ig, i8 0, i64 %i.ii, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit:   ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183, %bb.aa
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.ij, i64 noundef %i.hx)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit.preheader unwind label %bb.ae

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit.preheader: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit
  %i.ik = icmp sgt i64 %i.d, 0
  br i1 %i.ik, label %.lr.ph307, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge

.lr.ph307:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit.preheader
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 9 uses
  %i.is = udiv i64 %i.b, 11
end_hunk_0
begin_hunk_1_@_ZN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE20factorize_preorderedILb1EEEvRKS3_:bb.a
_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161: ; preds = %bb.o, %bb.x, %bb.n
  %.pn136.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.bh, %bb.o ], [ %.pn136.pn.pn.pn.pn.pn187, %bb.x ]
  br i1 %i.u, label %bb.y, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162

bb.y:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161
  call void @free(ptr noundef nonnull %i.t) #32
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161, %bb.y
  resume { ptr, i32 } %.pn136.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen11AMDOrderingIiEclINS_12SparseMatrixIdLi0EiEEEEvRKT_RNS_17PermutationMatrixILin1ELin1EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::SparseMatrix", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i8 0, ptr %3, align 8, !tbaa !65
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 -1, ptr %i.a, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.d = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #33 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !67
  %.not6.i = icmp eq ptr %i.d, null
  br i1 %.not6.i, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #32
  br label %common.resume

_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit:         ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !66
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.d, align 4
  invoke void @_ZN5Eigen8internal25ordering_helper_at_plus_aINS_12SparseMatrixIdLi0EiEEEEvRKT_RS4_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit
  invoke void @_ZN5Eigen8internal23minimum_degree_orderingIdiEEvRNS_12SparseMatrixIT_Li0ET0_EERNS_17PermutationMatrixILin1ELin1ES4_EE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !67
  call void @free(ptr noundef %i.i) #32
  %i.j = load ptr, ptr %i.h, align 8, !tbaa !88
  call void @free(ptr noundef %i.j) #32
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !89   ; 2 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_ZdaPv(ptr noundef nonnull %i.l) #36
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !90   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.o) #36
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  ret void

bb.i:                                             ; preds = %bb.d, %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %3) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal24permute_symm_to_fullsymmILi1ENS_12SparseMatrixIdLi0EiEELi0EEEvRKT0_RNS2_INS4_6ScalarEXT1_ENS4_12StorageIndexEEEPKS8_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef %2) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !87   ; 25 uses
  %.not.i.i.not = icmp eq i64 %i.b, 0
  %i.c = icmp sgt i64 %i.b, 0                     ; 3 uses
  br i1 %i.c, label %bb.b, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ugt i64 %i.b, 4611686018427387903
  br i1 %i.d, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.b
  %i.e = shl nuw i64 %i.b, 2
  %calloc = tail call ptr @calloc(i64 1, i64 %i.e) ; 2 uses
  %i.f = icmp eq ptr %calloc, null
  br i1 %i.f, label %.invoke, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.b
  %i.g = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.g, align 8, !tbaa !68
  invoke void @__cxa_throw(ptr nonnull %i.g, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont unwind label %bb.h

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.a
  %.sroa.0126.2144 = phi ptr [ null, %bb.a ], [ %calloc, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ] ; 30 uses
  invoke void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %1, i64 noundef %i.b, i64 noundef %i.b)
          to label %.preheader147 unwind label %bb.h

.preheader147:                                    ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  br i1 %i.c, label %.lr.ph154, label %._crit_edge155

.lr.ph154:                                        ; preds = %.preheader147
  %.not102 = icmp eq ptr %2, null                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !90   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !67
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !88   ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br label %bb.i

._crit_edge155:                                   ; preds = %.preheader147
  br i1 %.not.i.i.not, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %._crit_edge155.thread

._crit_edge155.thread:                            ; preds = %._crit_edge, %._crit_edge155
  %i.o = sdiv i64 %i.b, 8
  %i.p = shl nsw i64 %i.o, 3                      ; 3 uses
  %i.q = sdiv i64 %i.b, 4                         ; 2 uses
  %i.r = shl nsw i64 %i.q, 2                      ; 5 uses
  %.off.i.i.i = add i64 %i.b, 3
  %.not.i.i.i = icmp ult i64 %.off.i.i.i, 7
  br i1 %.not.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %._crit_edge155.thread
  %i.s = load <2 x i64>, ptr %.sroa.0126.2144, align 16, !tbaa !116 ; 2 uses
  %i.t = icmp sgt i64 %i.b, 7
  br i1 %i.t, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0126.2144, i64 16
  %i.v = load <4 x i32>, ptr %i.u, align 16, !tbaa !116 ; 2 uses
  %i.w = bitcast <2 x i64> %i.s to <4 x i32>      ; 2 uses
  %i.x = icmp samesign ugt i64 %i.b, 15
  br i1 %i.x, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.d
  %.lcssa.i.i.i = phi <4 x i32> [ %i.v, %bb.d ], [ %i.ai, %.lr.ph.i.i.i ]
  %.sroa.064.0.lcssa.i.i.i = phi <4 x i32> [ %i.w, %bb.d ], [ %i.ae, %.lr.ph.i.i.i ]
  %i.y = add <4 x i32> %.sroa.064.0.lcssa.i.i.i, %.lcssa.i.i.i ; 2 uses
  %i.z = bitcast <4 x i32> %i.y to <2 x i64>
  %i.aa = icmp sgt i64 %i.r, %i.p
  br i1 %i.aa, label %bb.e, label %bb.f

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %.05775.i.i.i = phi i64 [ %.057.i.i.i, %.lr.ph.i.i.i ], [ 8, %bb.d ] ; 3 uses
  %.057.in74.i.i.i = phi i64 [ %.05775.i.i.i, %.lr.ph.i.i.i ], [ 0, %bb.d ]
  %.sroa.064.073.i.i.i = phi <4 x i32> [ %i.ae, %.lr.ph.i.i.i ], [ %i.w, %bb.d ]
  %i.ab = phi <4 x i32> [ %i.ai, %.lr.ph.i.i.i ], [ %i.v, %bb.d ]
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %.05775.i.i.i
  %i.ad = load <4 x i32>, ptr %i.ac, align 16, !tbaa !116
  %i.ae = add <4 x i32> %i.ad, %.sroa.064.073.i.i.i ; 2 uses
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %.057.in74.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.ah = load <4 x i32>, ptr %i.ag, align 16, !tbaa !116
  %i.ai = add <4 x i32> %i.ah, %i.ab              ; 2 uses
  %.057.i.i.i = add nuw nsw i64 %.05775.i.i.i, 8  ; 2 uses
  %i.aj = icmp slt i64 %.057.i.i.i, %i.p
  br i1 %i.aj, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !llvm.loop !1146

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %i.p
  %i.al = load <4 x i32>, ptr %i.ak, align 16, !tbaa !116
  %i.am = add <4 x i32> %i.al, %i.y
  %i.an = bitcast <4 x i32> %i.am to <2 x i64>
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i, %bb.c
  %.sroa.064.2.i.i.i = phi <2 x i64> [ %i.s, %bb.c ], [ %i.an, %bb.e ], [ %i.z, %._crit_edge.i.i.i ] ; 2 uses
  %i.ao = bitcast <2 x i64> %.sroa.064.2.i.i.i to <4 x i32>
  %i.ap = bitcast <2 x i64> %.sroa.064.2.i.i.i to <4 x i32>
  %i.aq = shufflevector <4 x i32> %i.ap, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ar = add <4 x i32> %i.aq, %i.ao              ; 2 uses
  %shift = shufflevector <4 x i32> %i.ar, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.ar, %shift ; 2 uses
  %3 = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  %i.as = icmp slt i64 %i.r, %i.b
  br i1 %i.as, label %.lr.ph80.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit

.lr.ph80.i.i.i.preheader:                         ; preds = %bb.f
  %i.at = shl nsw i64 %i.q, 2
  %i.au = sub i64 %i.b, %i.at                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.au, 8
  br i1 %min.iters.check, label %.lr.ph80.i.i.i.preheader238, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph80.i.i.i.preheader
  %n.vec = and i64 %i.au, -8                      ; 3 uses
  %i.av = add i64 %i.r, %n.vec
  %i.aw = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.ax = getelementptr [4 x i8], ptr %.sroa.0126.2144, i64 %i.r
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.aw, %vector.ph ], [ %i.ba, %vector.body ]
  %vec.phi215 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %i.ay = getelementptr [4 x i8], ptr %i.ax, i64 %index ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %wide.load = load <4 x i32>, ptr %i.ay, align 4, !tbaa !70
  %wide.load216 = load <4 x i32>, ptr %i.az, align 4, !tbaa !70
  %i.ba = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bb = add <4 x i32> %wide.load216, %vec.phi215 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bc = icmp eq i64 %index.next, %n.vec
  br i1 %i.bc, label %middle.block, label %vector.body, !llvm.loop !1147

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bb, %i.ba
  %i.bd = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph80.i.i.i.preheader238

.lr.ph80.i.i.i.preheader238:                      ; preds = %.lr.ph80.i.i.i.preheader, %middle.block
  %.05578.i.i.i.ph = phi i64 [ %i.r, %.lr.ph80.i.i.i.preheader ], [ %i.av, %middle.block ]
  %.177.i.i.i.ph = phi i32 [ %3, %.lr.ph80.i.i.i.preheader ], [ %i.bd, %middle.block ]
  br label %.lr.ph80.i.i.i

.lr.ph80.i.i.i:                                   ; preds = %.lr.ph80.i.i.i.preheader238, %.lr.ph80.i.i.i
  %.05578.i.i.i = phi i64 [ %i.bh, %.lr.ph80.i.i.i ], [ %.05578.i.i.i.ph, %.lr.ph80.i.i.i.preheader238 ] ; 2 uses
  %.177.i.i.i = phi i32 [ %i.bg, %.lr.ph80.i.i.i ], [ %.177.i.i.i.ph, %.lr.ph80.i.i.i.preheader238 ]
  %i.be = getelementptr inbounds [4 x i8], ptr %.sroa.0126.2144, i64 %.05578.i.i.i
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !70
  %i.bg = add nsw i32 %i.bf, %.177.i.i.i          ; 2 uses
  %i.bh = add nsw i64 %.05578.i.i.i, 1            ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bh, %i.b
  br i1 %exitcond.not.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph80.i.i.i, !llvm.loop !1148

bb.g:                                             ; preds = %._crit_edge155.thread
  %i.bi = load i32, ptr %.sroa.0126.2144, align 4, !tbaa !70 ; 3 uses
  %i.bj = icmp sgt i64 %i.b, 1
  br i1 %i.bj, label %.lr.ph85.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit

.lr.ph85.i.i.i.preheader:                         ; preds = %bb.g
  %i.bk = add nsw i64 %i.b, -1                    ; 2 uses
  %min.iters.check218 = icmp ult i64 %i.b, 9
  br i1 %min.iters.check218, label %.lr.ph85.i.i.i.preheader235, label %vector.ph219

vector.ph219:                                     ; preds = %.lr.ph85.i.i.i.preheader
  %n.vec220 = and i64 %i.bk, -8                   ; 3 uses
  %i.bl = or disjoint i64 %n.vec220, 1
  %i.bm = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.bi, i64 0
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph219
  %index222 = phi i64 [ 0, %vector.ph219 ], [ %index.next227, %vector.body221 ] ; 2 uses
  %vec.phi223 = phi <4 x i32> [ %i.bm, %vector.ph219 ], [ %i.bq, %vector.body221 ]
  %vec.phi224 = phi <4 x i32> [ zeroinitializer, %vector.ph219 ], [ %i.br, %vector.body221 ]
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %index222 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %wide.load225 = load <4 x i32>, ptr %i.bo, align 4, !tbaa !70
  %wide.load226 = load <4 x i32>, ptr %i.bp, align 4, !tbaa !70
  %i.bq = add <4 x i32> %wide.load225, %vec.phi223 ; 2 uses
  %i.br = add <4 x i32> %wide.load226, %vec.phi224 ; 2 uses
  %index.next227 = add nuw i64 %index222, 8       ; 2 uses
  %i.bs = icmp eq i64 %index.next227, %n.vec220
  br i1 %i.bs, label %middle.block228, label %vector.body221, !llvm.loop !1149

middle.block228:                                  ; preds = %vector.body221
  %bin.rdx229 = add <4 x i32> %i.br, %i.bq
  %i.bt = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx229) ; 2 uses
  %cmp.n230 = icmp eq i64 %i.bk, %n.vec220
  br i1 %cmp.n230, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph85.i.i.i.preheader235

.lr.ph85.i.i.i.preheader235:                      ; preds = %.lr.ph85.i.i.i.preheader, %middle.block228
  %.083.i.i.i.ph = phi i64 [ 1, %.lr.ph85.i.i.i.preheader ], [ %i.bl, %middle.block228 ]
  %.282.i.i.i.ph = phi i32 [ %i.bi, %.lr.ph85.i.i.i.preheader ], [ %i.bt, %middle.block228 ]
  br label %.lr.ph85.i.i.i

.lr.ph85.i.i.i:                                   ; preds = %.lr.ph85.i.i.i.preheader235, %.lr.ph85.i.i.i
  %.083.i.i.i = phi i64 [ %i.bx, %.lr.ph85.i.i.i ], [ %.083.i.i.i.ph, %.lr.ph85.i.i.i.preheader235 ] ; 2 uses
  %.282.i.i.i = phi i32 [ %i.bw, %.lr.ph85.i.i.i ], [ %.282.i.i.i.ph, %.lr.ph85.i.i.i.preheader235 ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %.083.i.i.i
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !70
  %i.bw = add nsw i32 %i.bv, %.282.i.i.i          ; 2 uses
  %i.bx = add nuw nsw i64 %.083.i.i.i, 1          ; 2 uses
  %exitcond92.not.i.i.i = icmp eq i64 %i.bx, %i.b
  br i1 %exitcond92.not.i.i.i, label %_ZNK5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE3sumEv.exit, label %.lr.ph85.i.i.i, !llvm.loop !1150

bb.h:                                             ; preds = %.invoke, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  %.sroa.0126.0 = phi ptr [ %.sroa.0126.2144, %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit ], [ null, %.invoke ]
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %bb.ai

bb.i:                                             ; preds = %.lr.ph154, %._crit_edge
  %.084152 = phi i64 [ 0, %.lr.ph154 ], [ %i.dd, %._crit_edge ] ; 10 uses
  br i1 %.not102, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.084152
  %i.ca = load i32, ptr %i.bz, align 4, !tbaa !70
  %i.cb = sext i32 %i.ca to i64
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cc = phi i64 [ %i.cb, %bb.j ], [ %.084152, %bb.i ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.084152 ; 2 uses
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !70
  %i.cf = sext i32 %i.ce to i64                   ; 4 uses
  br i1 %i.n, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.cg = getelementptr i8, ptr %i.cd, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !70
  %i.ci = sext i32 %i.ch to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.m:                                             ; preds = %bb.k
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.084152
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !70
  %i.cl = sext i32 %i.ck to i64
  %i.cm = add nsw i64 %i.cl, %i.cf
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.l, %bb.m
  %.sink.i = phi i64 [ %i.ci, %bb.l ], [ %i.cm, %bb.m ] ; 3 uses
  %i.cn = icmp sgt i64 %.sink.i, %i.cf
  br i1 %i.cn, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.co = getelementptr inbounds [4 x i8], ptr %.sroa.0126.2144, i64 %i.cc ; 4 uses
  br i1 %.not102, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0126.2144, i64 %.084152 ; 2 uses
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.q
  %.sroa.9.0151.us = phi i64 [ %i.dc, %bb.q ], [ %i.cf, %.lr.ph.split.us.preheader ] ; 2 uses
  %i.cq = getelementptr inbounds [4 x i8], ptr %i.i, i64 %.sroa.9.0151.us
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !70
  %i.cs = sext i32 %i.cr to i64                   ; 3 uses
  %i.ct = icmp eq i64 %.084152, %i.cs
  br i1 %i.ct, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split.us
  %i.cu = icmp slt i64 %.084152, %i.cs
  br i1 %i.cu, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.cv = getelementptr inbounds [4 x i8], ptr %.sroa.0126.2144, i64 %i.cs ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !70
  %i.cx = add nsw i32 %i.cw, 1
  store i32 %i.cx, ptr %i.cv, align 4, !tbaa !70
  %i.cy = load i32, ptr %i.co, align 4, !tbaa !70
  %i.cz = add nsw i32 %i.cy, 1
  store i32 %i.cz, ptr %i.co, align 4, !tbaa !70
  br label %bb.q

bb.p:                                             ; preds = %.lr.ph.split.us
  %i.da = load i32, ptr %i.cp, align 4, !tbaa !70
  %i.db = add nsw i32 %i.da, 1
  store i32 %i.db, ptr %i.cp, align 4, !tbaa !70
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  %i.dc = add nsw i64 %.sroa.9.0151.us, 1         ; 2 uses
  %exitcond173.not = icmp eq i64 %i.dc, %.sink.i
  br i1 %exitcond173.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !1151

._crit_edge:                                      ; preds = %bb.u, %bb.q, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.dd = add nuw nsw i64 %.084152, 1             ; 2 uses
  %exitcond174.not = icmp eq i64 %i.dd, %i.b
  br i1 %exitcond174.not, label %._crit_edge155.thread, label %bb.i, !llvm.loop !1152

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.u
  %.sroa.9.0151 = phi i64 [ %i.du, %bb.u ], [ %i.cf, %.lr.ph ] ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.i, i64 %.sroa.9.0151
  %i.df = load i32, ptr %i.de, align 4, !tbaa !70
  %i.dg = sext i32 %i.df to i64                   ; 3 uses
  %i.dh = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !70
  %i.dj = sext i32 %i.di to i64                   ; 2 uses
  %i.dk = icmp eq i64 %.084152, %i.dg
  br i1 %i.dk, label %bb.r, label %bb.s
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal25ordering_helper_at_plus_aINS_12SparseMatrixIdLi0EiEEEEvRKT_RS4_:bb.a
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !70 ; 2 uses
  %i.bh = getelementptr i8, ptr %i.bf, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !70 ; 2 uses
  %i.bj = icmp slt i32 %i.bg, %i.bi
  br i1 %i.bj, label %.lr.ph.us.preheader.epil, label %._crit_edge17

.lr.ph.us.preheader.epil:                         ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.epil.preheader
  %i.bk = sext i32 %i.bi to i64
  %i.bl = sext i32 %i.bg to i64                   ; 2 uses
  %i.bm = shl nsw i64 %i.bl, 3
  %scevgep20.epil = getelementptr i8, ptr %i.n, i64 %i.bm
  %i.bn = sub nsw i64 %i.bk, %i.bl
  %i.bo = shl nsw i64 %i.bn, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep20.epil, i8 0, i64 %i.bo, i1 false), !tbaa !54
  br label %._crit_edge17

._crit_edge17.loopexit31.unr-lcssa:               ; preds = %._crit_edge.1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge17, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader: ; preds = %._crit_edge17.loopexit31.unr-lcssa, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.preheader ], [ %indvars.iv.next.1, %._crit_edge17.loopexit31.unr-lcssa ] ; 2 uses
  %lcmp.mod32 = trunc i64 %i.k to i1
  call void @llvm.assume(i1 %lcmp.mod32)
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv.epil.init
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !70 ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %.lr.ph.preheader.epil, label %._crit_edge17

.lr.ph.preheader.epil:                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader
  %i.bs = zext nneg i32 %i.bq to i64
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv.epil.init
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !70
  %i.bv = sext i32 %i.bu to i64
  %i.bw = shl nsw i64 %i.bv, 3
  %scevgep.epil = getelementptr i8, ptr %i.n, i64 %i.bw
  %i.bx = shl nuw nsw i64 %i.bs, 3
  call void @llvm.memset.p0.i64(ptr align 8 %scevgep.epil, i8 0, i64 %i.bx, i1 false), !tbaa !54
  br label %._crit_edge17

._crit_edge17:                                    ; preds = %._crit_edge17.loopexit31.unr-lcssa, %.lr.ph.preheader.epil, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.epil.preheader, %._crit_edge17.loopexit.unr-lcssa, %.lr.ph.us.preheader.epil, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.epil.preheader, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store i8 0, ptr %4, align 8, !tbaa !614, !alias.scope !1158
  %i.by = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.by, align 8, !tbaa !77, !alias.scope !1158
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %0, ptr %i.bz, align 8, !tbaa !77, !alias.scope !1158
  %i.ca = invoke noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_S7_EEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.g unwind label %bb.k       ; 0 uses

bb.g:                                             ; preds = %._crit_edge17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !67
  call void @free(ptr noundef %i.cb) #32
  %i.cc = load ptr, ptr %i.h, align 8, !tbaa !88
  call void @free(ptr noundef %i.cc) #32
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !89 ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @_ZdaPv(ptr noundef nonnull %i.ce) #36
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !90 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.ch) #36
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  ret void

bb.k:                                             ; preds = %._crit_edge17
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.f
  %.pn = phi { ptr, i32 } [ %i.am, %bb.f ], [ %i.cj, %bb.k ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #32
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal23minimum_degree_orderingIdiEEvRNS_12SparseMatrixIT_Li0ET0_EERNS_17PermutationMatrixILin1ELin1ES4_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #6 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !66   ; 32 uses
  %i.c = trunc i64 %i.b to i32                    ; 17 uses
  %i.d = sitofp i32 %i.c to double
  %i.e = tail call double @sqrt(double noundef %i.d) #32
  %i.f = fmul double %i.e, 1.000000e+01
  %i.g = fptosi double %i.f to i32
  %.sroa.speculated548 = tail call i32 @llvm.smax.i32(i32 %i.g, i32 16)
  %i.h = add nsw i32 %i.c, -2
  %.sroa.speculated543 = tail call i32 @llvm.smin.i32(i32 %.sroa.speculated548, i32 %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !88   ; 13 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !67   ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.b
  %i.o = load i32, ptr %i.n, align 4, !tbaa !70
  %i.p = load i32, ptr %i.m, align 4, !tbaa !70
  %i.q = sub nsw i32 %i.o, %i.p
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.c:                                             ; preds = %bb.a
  %i.r = icmp eq i64 %i.b, 0
  br i1 %i.r, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.t = and i64 %i.s, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.u = lshr exact i64 %i.s, 2
  %i.v = sub nsw i64 0, %i.u
  %i.w = and i64 %i.v, 3
  %i.x = tail call i64 @llvm.smin.i64(i64 %i.w, i64 %i.b)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.x, %bb.e ], [ %i.b, %bb.d ] ; 12 uses
  %i.y = sub nsw i64 %i.b, %.0.i.i.i.i.i.i.i.i    ; 5 uses
  %i.z = sdiv i64 %i.y, 8
  %i.aa = shl nsw i64 %i.z, 3                     ; 2 uses
  %i.ab = sdiv i64 %i.y, 4                        ; 2 uses
  %i.ac = shl nsw i64 %i.ab, 2                    ; 2 uses
  %i.ad = add nsw i64 %i.aa, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.ae = add nsw i64 %i.ac, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.y, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.j, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.af = getelementptr [4 x i8], ptr %i.j, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.ag = load <2 x i64>, ptr %i.af, align 1, !tbaa !116 ; 2 uses
  %i.ah = icmp sgt i64 %i.y, 7
  br i1 %i.ah, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr i8, ptr %i.af, i64 16
  %i.aj = load <4 x i32>, ptr %i.ai, align 1, !tbaa !116 ; 2 uses
  %i.ak = bitcast <2 x i64> %i.ag to <4 x i32>    ; 2 uses
  %i.al = icmp samesign ugt i64 %i.y, 15
  br i1 %i.al, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.g
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.g
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.aj, %bb.g ], [ %i.aw, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.ak, %bb.g ], [ %i.as, %.lr.ph.i.i.i.i ]
  %i.am = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.an = bitcast <4 x i32> %i.am to <2 x i64>
  %i.ao = icmp sgt i64 %i.ac, %i.aa
  br i1 %i.ao, label %bb.h, label %bb.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.as, %.lr.ph.i.i.i.i ], [ %i.ak, %.lr.ph.preheader.i.i.i.i ]
  %i.ap = phi <4 x i32> [ %i.aw, %.lr.ph.i.i.i.i ], [ %i.aj, %.lr.ph.preheader.i.i.i.i ]
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.05780.i.i.i.i
  %i.ar = load <4 x i32>, ptr %i.aq, align 1, !tbaa !116
  %i.as = add <4 x i32> %i.ar, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.at = getelementptr [4 x i8], ptr %i.j, i64 %.057.in79.i.i.i.i
  %i.au = getelementptr i8, ptr %i.at, i64 48
  %i.av = load <4 x i32>, ptr %i.au, align 1, !tbaa !116
  %i.aw = add <4 x i32> %i.av, %i.ap              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.ax = icmp slt i64 %.057.i.i.i.i, %i.ad
  br i1 %i.ax, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1016

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.ad
  %i.az = load <4 x i32>, ptr %i.ay, align 1, !tbaa !116
  %i.ba = add <4 x i32> %i.az, %i.am
  %i.bb = bitcast <4 x i32> %i.ba to <2 x i64>
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i, %bb.f
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ag, %bb.f ], [ %i.bb, %bb.h ], [ %i.an, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.bc = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.bd = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.be = shufflevector <4 x i32> %i.bd, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.bf = add <4 x i32> %i.be, %i.bc              ; 2 uses
  %shift = shufflevector <4 x i32> %i.bf, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.bf, %shift ; 2 uses
  %2 = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  %i.bg = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.bg, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.preheader1355, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.bh = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.bh, %vector.ph ], [ %i.bk, %vector.body ]
  %vec.phi1169 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bl, %vector.body ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load = load <4 x i32>, ptr %i.bi, align 4, !tbaa !70
  %wide.load1170 = load <4 x i32>, ptr %i.bj, align 4, !tbaa !70
  %i.bk = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.bl = add <4 x i32> %wide.load1170, %vec.phi1169 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bm = icmp eq i64 %index.next, %n.vec
  br i1 %i.bm, label %middle.block, label %vector.body, !llvm.loop !1161

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.bl, %i.bk
  %i.bn = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader1355

.lr.ph85.i.i.i.i.preheader1355:                   ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.ph = phi i32 [ %2, %.lr.ph85.i.i.i.i.preheader ], [ %i.bn, %middle.block ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block, %bb.i
  %.075.lcssa.i.i.i.i = phi i32 [ %2, %bb.i ], [ %i.bn, %middle.block ], [ %i.cd, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.bo = icmp slt i64 %i.ae, %i.b
  br i1 %i.bo, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.bp = shl nsw i64 %i.ab, 2
  %i.bq = add i64 %.0.i.i.i.i.i.i.i.i, %i.bp
  %i.br = sub i64 %i.b, %i.bq                     ; 3 uses
  %min.iters.check1172 = icmp ult i64 %i.br, 8
  br i1 %min.iters.check1172, label %.lr.ph89.i.i.i.i.preheader1350, label %vector.ph1173

vector.ph1173:                                    ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec1174 = and i64 %i.br, -8                  ; 3 uses
  %i.bs = add i64 %i.ae, %n.vec1174
  %i.bt = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.bu = getelementptr [4 x i8], ptr %i.j, i64 %i.ae
  br label %vector.body1175

vector.body1175:                                  ; preds = %vector.body1175, %vector.ph1173
  %index1176 = phi i64 [ 0, %vector.ph1173 ], [ %index.next1181, %vector.body1175 ] ; 2 uses
  %vec.phi1177 = phi <4 x i32> [ %i.bt, %vector.ph1173 ], [ %i.bx, %vector.body1175 ]
  %vec.phi1178 = phi <4 x i32> [ zeroinitializer, %vector.ph1173 ], [ %i.by, %vector.body1175 ]
  %i.bv = getelementptr [4 x i8], ptr %i.bu, i64 %index1176 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %wide.load1179 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !70
  %wide.load1180 = load <4 x i32>, ptr %i.bw, align 4, !tbaa !70
  %i.bx = add <4 x i32> %wide.load1179, %vec.phi1177 ; 2 uses
  %i.by = add <4 x i32> %wide.load1180, %vec.phi1178 ; 2 uses
  %index.next1181 = add nuw i64 %index1176, 8     ; 2 uses
  %i.bz = icmp eq i64 %index.next1181, %n.vec1174
  br i1 %i.bz, label %middle.block1182, label %vector.body1175, !llvm.loop !1162

middle.block1182:                                 ; preds = %vector.body1175
  %bin.rdx1183 = add <4 x i32> %i.by, %i.bx
  %i.ca = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1183) ; 2 uses
  %cmp.n1184 = icmp eq i64 %i.br, %n.vec1174
  br i1 %cmp.n1184, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph89.i.i.i.i.preheader1350

.lr.ph89.i.i.i.i.preheader1350:                   ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block1182
  %.05588.i.i.i.i.ph = phi i64 [ %i.ae, %.lr.ph89.i.i.i.i.preheader ], [ %i.bs, %middle.block1182 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.ca, %middle.block1182 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader1355, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.ce, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader1355 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.cd, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader1355 ]
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.05683.i.i.i.i
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !70
  %i.cd = add nsw i32 %i.cc, %.07582.i.i.i.i      ; 2 uses
  %i.ce = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ce, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !1163

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader1350, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.ci, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader1350 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.ch, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader1350 ]
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.05588.i.i.i.i
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !70
  %i.ch = add nsw i32 %i.cg, %.187.i.i.i.i        ; 2 uses
  %i.ci = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.cj = icmp slt i64 %i.ci, %i.b
  br i1 %i.cj, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !1164

bb.j:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.ck = load i32, ptr %i.j, align 4, !tbaa !70  ; 3 uses
  %i.cl = icmp sgt i64 %i.b, 1
  br i1 %i.cl, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.j
  %i.cm = add nsw i64 %i.b, -1                    ; 2 uses
  %min.iters.check1188 = icmp ult i64 %i.b, 9
  br i1 %min.iters.check1188, label %.lr.ph94.i.i.i.i.preheader1346, label %vector.ph1189

vector.ph1189:                                    ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec1190 = and i64 %i.cm, -8                  ; 3 uses
  %i.cn = or disjoint i64 %n.vec1190, 1
  %i.co = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ck, i64 0
  br label %vector.body1191

vector.body1191:                                  ; preds = %vector.body1191, %vector.ph1189
  %index1192 = phi i64 [ 0, %vector.ph1189 ], [ %index.next1197, %vector.body1191 ] ; 2 uses
  %vec.phi1193 = phi <4 x i32> [ %i.co, %vector.ph1189 ], [ %i.cs, %vector.body1191 ]
  %vec.phi1194 = phi <4 x i32> [ zeroinitializer, %vector.ph1189 ], [ %i.ct, %vector.body1191 ]
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %index1192 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 20
  %wide.load1195 = load <4 x i32>, ptr %i.cq, align 4, !tbaa !70
  %wide.load1196 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !70
  %i.cs = add <4 x i32> %wide.load1195, %vec.phi1193 ; 2 uses
  %i.ct = add <4 x i32> %wide.load1196, %vec.phi1194 ; 2 uses
  %index.next1197 = add nuw i64 %index1192, 8     ; 2 uses
  %i.cu = icmp eq i64 %index.next1197, %n.vec1190
  br i1 %i.cu, label %middle.block1198, label %vector.body1191, !llvm.loop !1165

middle.block1198:                                 ; preds = %vector.body1191
  %bin.rdx1199 = add <4 x i32> %i.ct, %i.cs
  %i.cv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx1199) ; 2 uses
  %cmp.n1200 = icmp eq i64 %i.cm, %n.vec1190
  br i1 %cmp.n1200, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i.preheader1346

.lr.ph94.i.i.i.i.preheader1346:                   ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block1198
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.cn, %middle.block1198 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.ck, %.lr.ph94.i.i.i.i.preheader ], [ %i.cv, %middle.block1198 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader1346, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.cz, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader1346 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.cy, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader1346 ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %.092.i.i.i.i
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !70
  %i.cy = add nsw i32 %i.cx, %.291.i.i.i.i        ; 2 uses
  %i.cz = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.cz, %i.b
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !1166

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block1182, %middle.block1198, %.preheader.i.i.i.i, %bb.j, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.q, %bb.b ], [ 0, %bb.c ], [ %i.cy, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.ck, %bb.j ], [ %i.cv, %middle.block1198 ], [ %i.ca, %middle.block1182 ], [ %i.ch, %.lr.ph89.i.i.i.i ] ; 3 uses
  %i.da = add nsw i32 %i.c, 1                     ; 11 uses
  %i.db = sext i32 %i.da to i64                   ; 7 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !168
  %.not.i.i.i = icmp eq i64 %i.dd, %i.db
  br i1 %.not.i.i.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.de = load ptr, ptr %1, align 8, !tbaa !120
  tail call void @free(ptr noundef %i.de) #32
  %i.df = icmp sgt i32 %i.c, -1
  br i1 %i.df, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, label %.sink.split.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %bb.k
  %i.dg = shl nuw nsw i64 %i.db, 2
  %i.dh = tail call noalias ptr @malloc(i64 noundef %i.dg) #33 ; 2 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.l, label %.sink.split.i.i.i

bb.l:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  %i.dj = tail call ptr @__cxa_allocate_exception(i64 8) #32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.dj, align 8, !tbaa !68
  tail call void @__cxa_throw(ptr nonnull %i.dj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

.sink.split.i.i.i:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, %bb.k
  %.sink.i.i.i = phi ptr [ %i.dh, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i ], [ null, %bb.k ]
  store ptr %.sink.i.i.i, ptr %1, align 8, !tbaa !120
  br label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit

_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit: ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, %.sink.split.i.i.i
  store i64 %i.db, ptr %i.dc, align 8, !tbaa !168
  %i.dk = sdiv i32 %.0.i, 5
  %i.dl = shl nsw i32 %i.c, 1
  %i.dm = add i32 %.0.i, %i.dl
  %i.dn = add i32 %i.dm, %i.dk                    ; 2 uses
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.dp, i64 noundef %i.do, double noundef 0.000000e+00)
  %i.dq = shl i32 %i.c, 3
  %i.dr = add i32 %i.dq, 8
  %i.ds = icmp slt i32 %i.dr, 0
  br i1 %i.ds, label %bb.m, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit

bb.m:                                             ; preds = %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit
end_hunk_2
begin_hunk_3_@_ZNK5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEESA_EEvRKNS_10MatrixBaseIT_EERNSB_IT0_EE:bb.a
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  %i.u = icmp slt i64 %i.s, %i.o
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSERKS3_.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.v = shl nsw i64 %i.r, 1
  %i.w = sub i64 %i.o, %i.v                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.w, 8
  %i.x = sub i64 %i.j, %i.q
  %diff.check = icmp ugt i64 %i.x, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader273, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.w, -4                       ; 3 uses
  %i.y = add i64 %i.s, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.z = add i64 %i.s, %index                     ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.z ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %wide.load = load <2 x double>, ptr %i.ab, align 8, !tbaa !54
  %wide.load130 = load <2 x double>, ptr %i.ac, align 8, !tbaa !54
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <2 x double> %wide.load, ptr %i.aa, align 8, !tbaa !54
  store <2 x double> %wide.load130, ptr %i.ad, align 8, !tbaa !54
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1216

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.w, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSERKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader273

.lr.ph.i.i.i.i.i.i.i.i.preheader273:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.y, %middle.block ] ; 4 uses
  %i.af = sub i64 %i.o, %.05.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.af, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader273, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader273 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader273 ]
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !54
  store double %i.ai, ptr %i.ag, align 8, !tbaa !54
  %i.aj = add nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !1217

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader273
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader273 ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ak = sub i64 %.05.i.i.i.i.i.i.i.i.ph, %i.o
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSERKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.p, i64 %.05.i.i.i.i.i.i.i.i
  %i.an = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.05.i.i.i.i.i.i.i.i
  %i.ao = load double, ptr %i.an, align 8, !tbaa !54
  store double %i.ao, ptr %i.am, align 8, !tbaa !54
  %i.ap = add nsw i64 %.05.i.i.i.i.i.i.i.i, 1     ; 2 uses
  %i.aq = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ap
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ap
  %i.as = load double, ptr %i.ar, align 8, !tbaa !54
  store double %i.as, ptr %i.aq, align 8, !tbaa !54
  %i.at = add nsw i64 %.05.i.i.i.i.i.i.i.i, 2     ; 2 uses
  %i.au = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.at
  %i.av = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.at
  %i.aw = load double, ptr %i.av, align 8, !tbaa !54
  store double %i.aw, ptr %i.au, align 8, !tbaa !54
  %i.ax = add nsw i64 %.05.i.i.i.i.i.i.i.i, 3     ; 2 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.ax
  %i.az = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ax
  %i.ba = load double, ptr %i.az, align 8, !tbaa !54
  store double %i.ba, ptr %i.ay, align 8, !tbaa !54
  %i.bb = add nsw i64 %.05.i.i.i.i.i.i.i.i, 4     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bb, %i.o
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSERKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1218

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %.011.i.i.i.i.i.i.i = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.f ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %.011.i.i.i.i.i.i.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %.011.i.i.i.i.i.i.i
  %i.be = load <2 x double>, ptr %i.bd, align 16, !tbaa !116
  store <2 x double> %i.be, ptr %i.bc, align 16, !tbaa !116
  %i.bf = add nuw nsw i64 %.011.i.i.i.i.i.i.i, 2  ; 2 uses
  %i.bg = icmp slt i64 %i.bf, %i.s
  br i1 %i.bg, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !484

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSERKS3_.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !88 ; 13 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSERKS3_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !67 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !66
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bm, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !70
  %i.br = load i32, ptr %i.bm, align 4, !tbaa !70
  %i.bs = sub nsw i32 %i.bq, %i.br
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

bb.h:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSERKS3_.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bu = load i64, ptr %i.bt, align 8, !tbaa !66 ; 11 uses
  %i.bv = icmp eq i64 %i.bu, 0
  br i1 %i.bv, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bw = ptrtoint ptr %i.bj to i64               ; 2 uses
  %i.bx = and i64 %i.bw, 3
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bx, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.j, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.by = lshr exact i64 %i.bw, 2
  %i.bz = sub nsw i64 0, %i.by
  %i.ca = and i64 %i.bz, 3
  %i.cb = tail call i64 @llvm.smin.i64(i64 %i.ca, i64 %i.bu)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.cb, %bb.j ], [ %i.bu, %bb.i ] ; 12 uses
  %i.cc = sub nsw i64 %i.bu, %.0.i.i.i.i.i.i.i.i  ; 5 uses
  %i.cd = sdiv i64 %i.cc, 8
  %i.ce = shl nsw i64 %i.cd, 3                    ; 2 uses
  %i.cf = sdiv i64 %i.cc, 4                       ; 2 uses
  %i.cg = shl nsw i64 %i.cf, 2                    ; 2 uses
  %i.ch = add nsw i64 %i.ce, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.ci = add nsw i64 %i.cg, %.0.i.i.i.i.i.i.i.i  ; 4 uses
  %.off.i.i.i.i = add i64 %i.cc, 3
  %.not.i.i.i.i = icmp ult i64 %.off.i.i.i.i, 7
  br i1 %.not.i.i.i.i, label %bb.o, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.cj = getelementptr [4 x i8], ptr %i.bj, i64 %.0.i.i.i.i.i.i.i.i ; 2 uses
  %i.ck = load <2 x i64>, ptr %i.cj, align 1, !tbaa !116 ; 2 uses
  %i.cl = icmp sgt i64 %i.cc, 7
  br i1 %i.cl, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.cm = getelementptr i8, ptr %i.cj, i64 16
  %i.cn = load <4 x i32>, ptr %i.cm, align 1, !tbaa !116 ; 2 uses
  %i.co = bitcast <2 x i64> %i.ck to <4 x i32>    ; 2 uses
  %i.cp = icmp samesign ugt i64 %i.cc, 15
  br i1 %i.cp, label %.lr.ph.preheader.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.l
  %.05777.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %bb.l
  %.lcssa.i.i.i.i = phi <4 x i32> [ %i.cn, %bb.l ], [ %i.da, %.lr.ph.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i = phi <4 x i32> [ %i.co, %bb.l ], [ %i.cw, %.lr.ph.i.i.i.i ]
  %i.cq = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i, %.lcssa.i.i.i.i ; 2 uses
  %i.cr = bitcast <4 x i32> %i.cq to <2 x i64>
  %i.cs = icmp sgt i64 %i.cg, %i.ce
  br i1 %i.cs, label %bb.m, label %bb.n

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i
  %.05780.i.i.i.i = phi i64 [ %.057.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.05777.i.i.i.i, %.lr.ph.preheader.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i = phi i64 [ %.05780.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %.sroa.067.078.i.i.i.i = phi <4 x i32> [ %i.cw, %.lr.ph.i.i.i.i ], [ %i.co, %.lr.ph.preheader.i.i.i.i ]
  %i.ct = phi <4 x i32> [ %i.da, %.lr.ph.i.i.i.i ], [ %i.cn, %.lr.ph.preheader.i.i.i.i ]
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %.05780.i.i.i.i
  %i.cv = load <4 x i32>, ptr %i.cu, align 1, !tbaa !116
  %i.cw = add <4 x i32> %i.cv, %.sroa.067.078.i.i.i.i ; 2 uses
  %i.cx = getelementptr [4 x i8], ptr %i.bj, i64 %.057.in79.i.i.i.i
  %i.cy = getelementptr i8, ptr %i.cx, i64 48
  %i.cz = load <4 x i32>, ptr %i.cy, align 1, !tbaa !116
  %i.da = add <4 x i32> %i.cz, %i.ct              ; 2 uses
  %.057.i.i.i.i = add nsw i64 %.05780.i.i.i.i, 8  ; 2 uses
  %i.db = icmp slt i64 %.057.i.i.i.i, %i.ch
  br i1 %i.db, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !1016

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %i.ch
  %i.dd = load <4 x i32>, ptr %i.dc, align 1, !tbaa !116
  %i.de = add <4 x i32> %i.dd, %i.cq
  %i.df = bitcast <4 x i32> %i.de to <2 x i64>
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i.i.i, %bb.k
  %.sroa.067.2.i.i.i.i = phi <2 x i64> [ %i.ck, %bb.k ], [ %i.df, %bb.m ], [ %i.cr, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.dg = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.dh = bitcast <2 x i64> %.sroa.067.2.i.i.i.i to <4 x i32>
  %i.di = shufflevector <4 x i32> %i.dh, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.dj = add <4 x i32> %i.di, %i.dg              ; 2 uses
  %shift = shufflevector <4 x i32> %i.dj, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.dj, %shift ; 2 uses
  %5 = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  %i.dk = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.dk, label %.lr.ph85.i.i.i.i.preheader, label %.preheader.i.i.i.i

.lr.ph85.i.i.i.i.preheader:                       ; preds = %bb.n
  %min.iters.check132 = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check132, label %.lr.ph85.i.i.i.i.preheader267, label %vector.ph133

vector.ph133:                                     ; preds = %.lr.ph85.i.i.i.i.preheader
  %n.vec134 = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.dl = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body135

vector.body135:                                   ; preds = %vector.body135, %vector.ph133
  %index136 = phi i64 [ 0, %vector.ph133 ], [ %index.next140, %vector.body135 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.dl, %vector.ph133 ], [ %i.do, %vector.body135 ]
  %vec.phi137 = phi <4 x i32> [ zeroinitializer, %vector.ph133 ], [ %i.dp, %vector.body135 ]
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %index136 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 16
  %wide.load138 = load <4 x i32>, ptr %i.dm, align 4, !tbaa !70
  %wide.load139 = load <4 x i32>, ptr %i.dn, align 4, !tbaa !70
  %i.do = add <4 x i32> %wide.load138, %vec.phi   ; 2 uses
  %i.dp = add <4 x i32> %wide.load139, %vec.phi137 ; 2 uses
  %index.next140 = add nuw i64 %index136, 8       ; 2 uses
  %i.dq = icmp eq i64 %index.next140, %n.vec134
  br i1 %i.dq, label %middle.block141, label %vector.body135, !llvm.loop !1219

middle.block141:                                  ; preds = %vector.body135
  %bin.rdx = add <4 x i32> %i.dp, %i.do
  %i.dr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n142 = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec134
  br i1 %cmp.n142, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i.preheader267

.lr.ph85.i.i.i.i.preheader267:                    ; preds = %.lr.ph85.i.i.i.i.preheader, %middle.block141
  %.05683.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.preheader ], [ %n.vec134, %middle.block141 ]
  %.07582.i.i.i.i.ph = phi i32 [ %5, %.lr.ph85.i.i.i.i.preheader ], [ %i.dr, %middle.block141 ]
  br label %.lr.ph85.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i, %middle.block141, %bb.n
  %.075.lcssa.i.i.i.i = phi i32 [ %5, %bb.n ], [ %i.dr, %middle.block141 ], [ %i.eh, %.lr.ph85.i.i.i.i ] ; 3 uses
  %i.ds = icmp slt i64 %i.ci, %i.bu
  br i1 %i.ds, label %.lr.ph89.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph89.i.i.i.i.preheader:                       ; preds = %.preheader.i.i.i.i
  %i.dt = shl nsw i64 %i.cf, 2
  %i.du = add i64 %.0.i.i.i.i.i.i.i.i, %i.dt
  %i.dv = sub i64 %i.bu, %i.du                    ; 3 uses
  %min.iters.check145 = icmp ult i64 %i.dv, 8
  br i1 %min.iters.check145, label %.lr.ph89.i.i.i.i.preheader262, label %vector.ph146

vector.ph146:                                     ; preds = %.lr.ph89.i.i.i.i.preheader
  %n.vec147 = and i64 %i.dv, -8                   ; 3 uses
  %i.dw = add i64 %i.ci, %n.vec147
  %i.dx = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i, i64 0
  %i.dy = getelementptr [4 x i8], ptr %i.bj, i64 %i.ci
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph146
  %index149 = phi i64 [ 0, %vector.ph146 ], [ %index.next154, %vector.body148 ] ; 2 uses
  %vec.phi150 = phi <4 x i32> [ %i.dx, %vector.ph146 ], [ %i.eb, %vector.body148 ]
  %vec.phi151 = phi <4 x i32> [ zeroinitializer, %vector.ph146 ], [ %i.ec, %vector.body148 ]
  %i.dz = getelementptr [4 x i8], ptr %i.dy, i64 %index149 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 16
  %wide.load152 = load <4 x i32>, ptr %i.dz, align 4, !tbaa !70
  %wide.load153 = load <4 x i32>, ptr %i.ea, align 4, !tbaa !70
  %i.eb = add <4 x i32> %wide.load152, %vec.phi150 ; 2 uses
  %i.ec = add <4 x i32> %wide.load153, %vec.phi151 ; 2 uses
  %index.next154 = add nuw i64 %index149, 8       ; 2 uses
  %i.ed = icmp eq i64 %index.next154, %n.vec147
  br i1 %i.ed, label %middle.block155, label %vector.body148, !llvm.loop !1220

middle.block155:                                  ; preds = %vector.body148
  %bin.rdx156 = add <4 x i32> %i.ec, %i.eb
  %i.ee = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx156) ; 2 uses
  %cmp.n157 = icmp eq i64 %i.dv, %n.vec147
  br i1 %cmp.n157, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph89.i.i.i.i.preheader262

.lr.ph89.i.i.i.i.preheader262:                    ; preds = %.lr.ph89.i.i.i.i.preheader, %middle.block155
  %.05588.i.i.i.i.ph = phi i64 [ %i.ci, %.lr.ph89.i.i.i.i.preheader ], [ %i.dw, %middle.block155 ]
  %.187.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i, %.lr.ph89.i.i.i.i.preheader ], [ %i.ee, %middle.block155 ]
  br label %.lr.ph89.i.i.i.i

.lr.ph85.i.i.i.i:                                 ; preds = %.lr.ph85.i.i.i.i.preheader267, %.lr.ph85.i.i.i.i
  %.05683.i.i.i.i = phi i64 [ %i.ei, %.lr.ph85.i.i.i.i ], [ %.05683.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader267 ] ; 2 uses
  %.07582.i.i.i.i = phi i32 [ %i.eh, %.lr.ph85.i.i.i.i ], [ %.07582.i.i.i.i.ph, %.lr.ph85.i.i.i.i.preheader267 ]
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.05683.i.i.i.i
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !70
  %i.eh = add nsw i32 %i.eg, %.07582.i.i.i.i      ; 2 uses
  %i.ei = add nuw nsw i64 %.05683.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.ei, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.preheader.i.i.i.i, label %.lr.ph85.i.i.i.i, !llvm.loop !1221

.lr.ph89.i.i.i.i:                                 ; preds = %.lr.ph89.i.i.i.i.preheader262, %.lr.ph89.i.i.i.i
  %.05588.i.i.i.i = phi i64 [ %i.em, %.lr.ph89.i.i.i.i ], [ %.05588.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader262 ] ; 2 uses
  %.187.i.i.i.i = phi i32 [ %i.el, %.lr.ph89.i.i.i.i ], [ %.187.i.i.i.i.ph, %.lr.ph89.i.i.i.i.preheader262 ]
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.bj, i64 %.05588.i.i.i.i
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !70
  %i.el = add nsw i32 %i.ek, %.187.i.i.i.i        ; 2 uses
  %i.em = add nsw i64 %.05588.i.i.i.i, 1          ; 2 uses
  %i.en = icmp slt i64 %i.em, %i.bu
  br i1 %i.en, label %.lr.ph89.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, !llvm.loop !1222

bb.o:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i
  %i.eo = load i32, ptr %i.bj, align 4, !tbaa !70 ; 3 uses
  %i.ep = icmp sgt i64 %i.bu, 1
  br i1 %i.ep, label %.lr.ph94.i.i.i.i.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit

.lr.ph94.i.i.i.i.preheader:                       ; preds = %bb.o
  %i.eq = add nsw i64 %i.bu, -1                   ; 2 uses
  %min.iters.check161 = icmp ult i64 %i.bu, 9
  br i1 %min.iters.check161, label %.lr.ph94.i.i.i.i.preheader258, label %vector.ph162

vector.ph162:                                     ; preds = %.lr.ph94.i.i.i.i.preheader
  %n.vec163 = and i64 %i.eq, -8                   ; 3 uses
  %i.er = or disjoint i64 %n.vec163, 1
  %i.es = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.eo, i64 0
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph162
  %index165 = phi i64 [ 0, %vector.ph162 ], [ %index.next170, %vector.body164 ] ; 2 uses
  %vec.phi166 = phi <4 x i32> [ %i.es, %vector.ph162 ], [ %i.ew, %vector.body164 ]
  %vec.phi167 = phi <4 x i32> [ zeroinitializer, %vector.ph162 ], [ %i.ex, %vector.body164 ]
  %i.et = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %index165 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 4
  %i.ev = getelementptr inbounds nuw i8, ptr %i.et, i64 20
  %wide.load168 = load <4 x i32>, ptr %i.eu, align 4, !tbaa !70
  %wide.load169 = load <4 x i32>, ptr %i.ev, align 4, !tbaa !70
  %i.ew = add <4 x i32> %wide.load168, %vec.phi166 ; 2 uses
  %i.ex = add <4 x i32> %wide.load169, %vec.phi167 ; 2 uses
  %index.next170 = add nuw i64 %index165, 8       ; 2 uses
  %i.ey = icmp eq i64 %index.next170, %n.vec163
  br i1 %i.ey, label %middle.block171, label %vector.body164, !llvm.loop !1223

middle.block171:                                  ; preds = %vector.body164
  %bin.rdx172 = add <4 x i32> %i.ex, %i.ew
  %i.ez = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx172) ; 2 uses
  %cmp.n173 = icmp eq i64 %i.eq, %n.vec163
  br i1 %cmp.n173, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i.preheader258

.lr.ph94.i.i.i.i.preheader258:                    ; preds = %.lr.ph94.i.i.i.i.preheader, %middle.block171
  %.092.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.preheader ], [ %i.er, %middle.block171 ]
  %.291.i.i.i.i.ph = phi i32 [ %i.eo, %.lr.ph94.i.i.i.i.preheader ], [ %i.ez, %middle.block171 ]
  br label %.lr.ph94.i.i.i.i

.lr.ph94.i.i.i.i:                                 ; preds = %.lr.ph94.i.i.i.i.preheader258, %.lr.ph94.i.i.i.i
  %.092.i.i.i.i = phi i64 [ %i.fd, %.lr.ph94.i.i.i.i ], [ %.092.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader258 ] ; 2 uses
  %.291.i.i.i.i = phi i32 [ %i.fc, %.lr.ph94.i.i.i.i ], [ %.291.i.i.i.i.ph, %.lr.ph94.i.i.i.i.preheader258 ]
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %.092.i.i.i.i
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !70
  %i.fc = add nsw i32 %i.fb, %.291.i.i.i.i        ; 2 uses
  %i.fd = add nuw nsw i64 %.092.i.i.i.i, 1        ; 2 uses
  %exitcond102.not.i.i.i.i = icmp eq i64 %i.fd, %i.bu
  br i1 %exitcond102.not.i.i.i.i, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit, label %.lr.ph94.i.i.i.i, !llvm.loop !1224

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit: ; preds = %.lr.ph89.i.i.i.i, %.lr.ph94.i.i.i.i, %middle.block155, %middle.block171, %.preheader.i.i.i.i, %bb.o, %bb.g
  %.0.i.in = phi i32 [ %i.bs, %bb.g ], [ %i.fc, %.lr.ph94.i.i.i.i ], [ %.075.lcssa.i.i.i.i, %.preheader.i.i.i.i ], [ %i.eo, %bb.o ], [ %i.ez, %middle.block171 ], [ %i.ee, %middle.block155 ], [ %i.el, %.lr.ph89.i.i.i.i ]
  %i.fe = icmp sgt i32 %.0.i.in, 0
  br i1 %i.fe, label %bb.p, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread

bb.p:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #32
  store i8 0, ptr %3, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.bh, ptr %i.ff, align 8
  call void @_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj5ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRNS_10MatrixBaseIT_EE(ptr noundef nonnull align 1 dereferenceable(1) %3, ptr noundef nonnull align 1 dereferenceable(1) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #32
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread: ; preds = %bb.h, %bb.p, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.fh = load i64, ptr %i.fg, align 8, !tbaa !58 ; 4 uses
  %i.fi = icmp sgt i64 %i.fh, 0
  br i1 %i.fi, label %bb.q, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit

bb.q:                                             ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !59 ; 6 uses
  %i.fl = ptrtoaddr ptr %i.fk to i64
  %i.fm = load ptr, ptr %2, align 8, !tbaa !59    ; 7 uses
  %i.fn = ptrtoaddr ptr %i.fm to i64
  %i.fo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !58
  %.not.i.i.i.i.i.i.i11 = icmp eq i64 %i.fp, %i.fh
  br i1 %.not.i.i.i.i.i.i.i11, label %bb.r, label %thread-pre-split.i.i.i.i.i.i12

thread-pre-split.i.i.i.i.i.i12:                   ; preds = %bb.q
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.fh, i64 noundef 1)
  %.pr.i.i.i.i.i.i13 = load i64, ptr %i.fo, align 8, !tbaa !58
  %.pre = load ptr, ptr %2, align 8, !tbaa !59
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split.i.i.i.i.i.i12, %bb.q
  %i.fq = phi ptr [ %.pre, %thread-pre-split.i.i.i.i.i.i12 ], [ %i.fm, %bb.q ] ; 6 uses
  %i.fr = phi i64 [ %.pr.i.i.i.i.i.i13, %thread-pre-split.i.i.i.i.i.i12 ], [ %i.fh, %bb.q ] ; 8 uses
  %i.fs = ptrtoaddr ptr %i.fq to i64              ; 2 uses
  %i.ft = sdiv i64 %i.fr, 2                       ; 2 uses
  %i.fu = shl nsw i64 %i.ft, 1                    ; 6 uses
  %i.fv = icmp sgt i64 %i.fr, 1
  br i1 %i.fv, label %.lr.ph.i.i.i.i.i.i.i18, label %._crit_edge.i.i.i.i.i.i.i14

._crit_edge.i.i.i.i.i.i.i14:                      ; preds = %.lr.ph.i.i.i.i.i.i.i18, %bb.r
end_hunk_3
begin_hunk_4_@_ZNK5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE11_solve_implINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEESA_EEvRKNS_10MatrixBaseIT_EERNSB_IT0_EE:bb.a
.lr.ph.i.i.i.i.i.i.i.i15.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i14
  %i.fx = shl nsw i64 %i.ft, 1
  %i.fy = sub i64 %i.fr, %i.fx                    ; 2 uses
  %min.iters.check180 = icmp ult i64 %i.fy, 2
  br i1 %min.iters.check180, label %.lr.ph.i.i.i.i.i.i.i.i15.preheader257, label %vector.memcheck176

vector.memcheck176:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i15.preheader
  %i.fz = sub i64 %i.fl, %i.fs
  %diff.check177 = icmp ugt i64 %i.fz, -16
  %i.ga = sub i64 %i.fn, %i.fs
  %diff.check178 = icmp ugt i64 %i.ga, -16
  %conflict.rdx = or i1 %diff.check177, %diff.check178
  br i1 %conflict.rdx, label %.lr.ph.i.i.i.i.i.i.i.i15.preheader257, label %vector.ph181

vector.ph181:                                     ; preds = %vector.memcheck176
  %i.gb = and i64 %i.fr, 1                        ; 2 uses
  %n.vec182 = sub i64 %i.fy, %i.gb                ; 2 uses
  %i.gc = add i64 %i.fu, %n.vec182
  br label %vector.body183

vector.body183:                                   ; preds = %vector.body183, %vector.ph181
  %index184 = phi i64 [ 0, %vector.ph181 ], [ %index.next187, %vector.body183 ] ; 2 uses
  %i.gd = add i64 %i.fu, %index184                ; 3 uses
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.gd
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %i.gd
  %wide.load185 = load <2 x double>, ptr %i.gf, align 8, !tbaa !54
  %i.gg = fdiv <2 x double> splat (double 1.000000e+00), %wide.load185
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.gd
  %wide.load186 = load <2 x double>, ptr %i.gh, align 8, !tbaa !54
  %i.gi = fmul <2 x double> %i.gg, %wide.load186
  store <2 x double> %i.gi, ptr %i.ge, align 8, !tbaa !54
  %index.next187 = add nuw i64 %index184, 2       ; 2 uses
  %i.gj = icmp eq i64 %index.next187, %n.vec182
  br i1 %i.gj, label %middle.block188, label %vector.body183, !llvm.loop !1225

middle.block188:                                  ; preds = %vector.body183
  %cmp.n189 = icmp eq i64 %i.gb, 0
  br i1 %cmp.n189, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i15.preheader257

.lr.ph.i.i.i.i.i.i.i.i15.preheader257:            ; preds = %vector.memcheck176, %.lr.ph.i.i.i.i.i.i.i.i15.preheader, %middle.block188
  %.05.i.i.i.i.i.i.i.i16.ph = phi i64 [ %i.fu, %vector.memcheck176 ], [ %i.fu, %.lr.ph.i.i.i.i.i.i.i.i15.preheader ], [ %i.gc, %middle.block188 ] ; 7 uses
  %i.gk = sub i64 %i.fr, %.05.i.i.i.i.i.i.i.i16.ph
  %.neg = add i64 %.05.i.i.i.i.i.i.i.i16.ph, 1
  %xtraiter274 = and i64 %i.gk, 1
  %lcmp.mod275.not = icmp eq i64 %xtraiter274, 0
  br i1 %lcmp.mod275.not, label %.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i15.prol

.lr.ph.i.i.i.i.i.i.i.i15.prol:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i15.preheader257
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %.05.i.i.i.i.i.i.i.i16.ph
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %.05.i.i.i.i.i.i.i.i16.ph
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !54
  %i.go = fdiv double 1.000000e+00, %i.gn
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %.05.i.i.i.i.i.i.i.i16.ph
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !54
  %i.gr = fmul double %i.go, %i.gq
  store double %i.gr, ptr %i.gl, align 8, !tbaa !54
  %i.gs = add nsw i64 %.05.i.i.i.i.i.i.i.i16.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i15.prol, %.lr.ph.i.i.i.i.i.i.i.i15.preheader257
  %.05.i.i.i.i.i.i.i.i16.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i16.ph, %.lr.ph.i.i.i.i.i.i.i.i15.preheader257 ], [ %i.gs, %.lr.ph.i.i.i.i.i.i.i.i15.prol ]
  %i.gt = icmp eq i64 %i.fr, %.neg
  br i1 %i.gt, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i15

.lr.ph.i.i.i.i.i.i.i.i15:                         ; preds = %.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i15
  %.05.i.i.i.i.i.i.i.i16 = phi i64 [ %i.hj, %.lr.ph.i.i.i.i.i.i.i.i15 ], [ %.05.i.i.i.i.i.i.i.i16.unr, %.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit ] ; 5 uses
  %i.gu = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %.05.i.i.i.i.i.i.i.i16
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %.05.i.i.i.i.i.i.i.i16
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !54
  %i.gx = fdiv double 1.000000e+00, %i.gw
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %.05.i.i.i.i.i.i.i.i16
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !54
  %i.ha = fmul double %i.gx, %i.gz
  store double %i.ha, ptr %i.gu, align 8, !tbaa !54
  %i.hb = add nsw i64 %.05.i.i.i.i.i.i.i.i16, 1   ; 3 uses
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.fq, i64 %i.hb
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %i.hb
  %i.he = load double, ptr %i.hd, align 8, !tbaa !54
  %i.hf = fdiv double 1.000000e+00, %i.he
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.fm, i64 %i.hb
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !54
  %i.hi = fmul double %i.hf, %i.hh
  store double %i.hi, ptr %i.hc, align 8, !tbaa !54
  %i.hj = add nsw i64 %.05.i.i.i.i.i.i.i.i16, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i17.1 = icmp eq i64 %i.hj, %i.fr
  br i1 %exitcond.not.i.i.i.i.i.i.i.i17.1, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.lr.ph.i.i.i.i.i.i.i.i15, !llvm.loop !1226

.lr.ph.i.i.i.i.i.i.i18:                           ; preds = %bb.r, %.lr.ph.i.i.i.i.i.i.i18
  %.011.i.i.i.i.i.i.i19 = phi i64 [ %i.hr, %.lr.ph.i.i.i.i.i.i.i18 ], [ 0, %bb.r ] ; 4 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.011.i.i.i.i.i.i.i19
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %.011.i.i.i.i.i.i.i19
  %i.hm = load <2 x double>, ptr %i.hl, align 16, !tbaa !116
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.011.i.i.i.i.i.i.i19
  %i.ho = load <2 x double>, ptr %i.hn, align 16, !tbaa !116
  %i.hp = fdiv <2 x double> splat (double 1.000000e+00), %i.ho
  %i.hq = fmul <2 x double> %i.hm, %i.hp
  store <2 x double> %i.hq, ptr %i.hk, align 16, !tbaa !116
  %i.hr = add nuw nsw i64 %.011.i.i.i.i.i.i.i19, 2 ; 2 uses
  %i.hs = icmp slt i64 %i.hr, %i.fu
  br i1 %i.hs, label %.lr.ph.i.i.i.i.i.i.i18, label %._crit_edge.i.i.i.i.i.i.i14, !llvm.loop !1227

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i.i15.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i15, %middle.block188, %._crit_edge.i.i.i.i.i.i.i14, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit.thread
  %i.ht = load ptr, ptr %i.bi, align 8, !tbaa !88 ; 13 uses
  %i.hu = icmp eq ptr %i.ht, null
  br i1 %i.hu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !67 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !66
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.hw, i64 %i.hy
  %i.ia = load i32, ptr %i.hz, align 4, !tbaa !70
  %i.ib = load i32, ptr %i.hw, align 4, !tbaa !70
  %i.ic = sub nsw i32 %i.ia, %i.ib
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54

bb.t:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_15DiagonalWrapperIKNS_12CwiseUnaryOpINS_8internal17scalar_inverse_opIdEEKS2_EEEES2_Li1EEEEERS2_RKNS_9DenseBaseIT_EE.exit
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ie = load i64, ptr %i.id, align 8, !tbaa !66 ; 11 uses
  %i.if = icmp eq i64 %i.ie, 0
  br i1 %i.if, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ig = ptrtoint ptr %i.ht to i64               ; 2 uses
  %i.ih = and i64 %i.ig, 3
  %.not.i.i.i.i.i.i.i.i20 = icmp eq i64 %i.ih, 0
  br i1 %.not.i.i.i.i.i.i.i.i20, label %bb.v, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i21

bb.v:                                             ; preds = %bb.u
  %i.ii = lshr exact i64 %i.ig, 2
  %i.ij = sub nsw i64 0, %i.ii
  %i.ik = and i64 %i.ij, 3
  %i.il = call i64 @llvm.smin.i64(i64 %i.ik, i64 %i.ie)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i21

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i21: ; preds = %bb.v, %bb.u
  %.0.i.i.i.i.i.i.i.i22 = phi i64 [ %i.il, %bb.v ], [ %i.ie, %bb.u ] ; 12 uses
  %i.im = sub nsw i64 %i.ie, %.0.i.i.i.i.i.i.i.i22 ; 5 uses
  %i.in = sdiv i64 %i.im, 8
  %i.io = shl nsw i64 %i.in, 3                    ; 2 uses
  %i.ip = sdiv i64 %i.im, 4                       ; 2 uses
  %i.iq = shl nsw i64 %i.ip, 2                    ; 2 uses
  %i.ir = add nsw i64 %i.io, %.0.i.i.i.i.i.i.i.i22 ; 2 uses
  %i.is = add nsw i64 %i.iq, %.0.i.i.i.i.i.i.i.i22 ; 4 uses
  %.off.i.i.i.i23 = add i64 %i.im, 3
  %.not.i.i.i.i24 = icmp ult i64 %.off.i.i.i.i23, 7
  br i1 %.not.i.i.i.i24, label %bb.aa, label %bb.w

bb.w:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i21
  %i.it = getelementptr [4 x i8], ptr %i.ht, i64 %.0.i.i.i.i.i.i.i.i22 ; 2 uses
  %i.iu = load <2 x i64>, ptr %i.it, align 1, !tbaa !116 ; 2 uses
  %i.iv = icmp sgt i64 %i.im, 7
  br i1 %i.iv, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.iw = getelementptr i8, ptr %i.it, i64 16
  %i.ix = load <4 x i32>, ptr %i.iw, align 1, !tbaa !116 ; 2 uses
  %i.iy = bitcast <2 x i64> %i.iu to <4 x i32>    ; 2 uses
  %i.iz = icmp samesign ugt i64 %i.im, 15
  br i1 %i.iz, label %.lr.ph.preheader.i.i.i.i43, label %._crit_edge.i.i.i.i40

.lr.ph.preheader.i.i.i.i43:                       ; preds = %bb.x
  %.05777.i.i.i.i44 = add nsw i64 %.0.i.i.i.i.i.i.i.i22, 8
  br label %.lr.ph.i.i.i.i45

._crit_edge.i.i.i.i40:                            ; preds = %.lr.ph.i.i.i.i45, %bb.x
  %.lcssa.i.i.i.i41 = phi <4 x i32> [ %i.ix, %bb.x ], [ %i.jk, %.lr.ph.i.i.i.i45 ]
  %.sroa.067.0.lcssa.i.i.i.i42 = phi <4 x i32> [ %i.iy, %bb.x ], [ %i.jg, %.lr.ph.i.i.i.i45 ]
  %i.ja = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i42, %.lcssa.i.i.i.i41 ; 2 uses
  %i.jb = bitcast <4 x i32> %i.ja to <2 x i64>
  %i.jc = icmp sgt i64 %i.iq, %i.io
  br i1 %i.jc, label %bb.y, label %bb.z

.lr.ph.i.i.i.i45:                                 ; preds = %.lr.ph.i.i.i.i45, %.lr.ph.preheader.i.i.i.i43
  %.05780.i.i.i.i46 = phi i64 [ %.057.i.i.i.i49, %.lr.ph.i.i.i.i45 ], [ %.05777.i.i.i.i44, %.lr.ph.preheader.i.i.i.i43 ] ; 3 uses
  %.057.in79.i.i.i.i47 = phi i64 [ %.05780.i.i.i.i46, %.lr.ph.i.i.i.i45 ], [ %.0.i.i.i.i.i.i.i.i22, %.lr.ph.preheader.i.i.i.i43 ]
  %.sroa.067.078.i.i.i.i48 = phi <4 x i32> [ %i.jg, %.lr.ph.i.i.i.i45 ], [ %i.iy, %.lr.ph.preheader.i.i.i.i43 ]
  %i.jd = phi <4 x i32> [ %i.jk, %.lr.ph.i.i.i.i45 ], [ %i.ix, %.lr.ph.preheader.i.i.i.i43 ]
  %i.je = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %.05780.i.i.i.i46
  %i.jf = load <4 x i32>, ptr %i.je, align 1, !tbaa !116
  %i.jg = add <4 x i32> %i.jf, %.sroa.067.078.i.i.i.i48 ; 2 uses
  %i.jh = getelementptr [4 x i8], ptr %i.ht, i64 %.057.in79.i.i.i.i47
  %i.ji = getelementptr i8, ptr %i.jh, i64 48
  %i.jj = load <4 x i32>, ptr %i.ji, align 1, !tbaa !116
  %i.jk = add <4 x i32> %i.jj, %i.jd              ; 2 uses
  %.057.i.i.i.i49 = add nsw i64 %.05780.i.i.i.i46, 8 ; 2 uses
  %i.jl = icmp slt i64 %.057.i.i.i.i49, %i.ir
  br i1 %i.jl, label %.lr.ph.i.i.i.i45, label %._crit_edge.i.i.i.i40, !llvm.loop !1016

bb.y:                                             ; preds = %._crit_edge.i.i.i.i40
  %i.jm = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %i.ir
  %i.jn = load <4 x i32>, ptr %i.jm, align 1, !tbaa !116
  %i.jo = add <4 x i32> %i.jn, %i.ja
  %i.jp = bitcast <4 x i32> %i.jo to <2 x i64>
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i.i.i.i40, %bb.w
  %.sroa.067.2.i.i.i.i25 = phi <2 x i64> [ %i.iu, %bb.w ], [ %i.jp, %bb.y ], [ %i.jb, %._crit_edge.i.i.i.i40 ] ; 2 uses
  %i.jq = bitcast <2 x i64> %.sroa.067.2.i.i.i.i25 to <4 x i32>
  %i.jr = bitcast <2 x i64> %.sroa.067.2.i.i.i.i25 to <4 x i32>
  %i.js = shufflevector <4 x i32> %i.jr, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.jt = add <4 x i32> %i.js, %i.jq              ; 2 uses
  %shift240 = shufflevector <4 x i32> %i.jt, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop241 = add nsw <4 x i32> %i.jt, %shift240 ; 2 uses
  %6 = extractelement <4 x i32> %foldExtExtBinop241, i64 0 ; 2 uses
  %i.ju = icmp sgt i64 %.0.i.i.i.i.i.i.i.i22, 0
  br i1 %i.ju, label %.lr.ph85.i.i.i.i36.preheader, label %.preheader.i.i.i.i28

.lr.ph85.i.i.i.i36.preheader:                     ; preds = %bb.z
  %min.iters.check192 = icmp ult i64 %.0.i.i.i.i.i.i.i.i22, 8
  br i1 %min.iters.check192, label %.lr.ph85.i.i.i.i36.preheader251, label %vector.ph193

vector.ph193:                                     ; preds = %.lr.ph85.i.i.i.i36.preheader
  %n.vec194 = and i64 %.0.i.i.i.i.i.i.i.i22, 9223372036854775800 ; 3 uses
  %i.jv = shufflevector <4 x i32> %foldExtExtBinop241, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body195

vector.body195:                                   ; preds = %vector.body195, %vector.ph193
  %index196 = phi i64 [ 0, %vector.ph193 ], [ %index.next201, %vector.body195 ] ; 2 uses
  %vec.phi197 = phi <4 x i32> [ %i.jv, %vector.ph193 ], [ %i.jy, %vector.body195 ]
  %vec.phi198 = phi <4 x i32> [ zeroinitializer, %vector.ph193 ], [ %i.jz, %vector.body195 ]
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %index196 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %wide.load199 = load <4 x i32>, ptr %i.jw, align 4, !tbaa !70
  %wide.load200 = load <4 x i32>, ptr %i.jx, align 4, !tbaa !70
  %i.jy = add <4 x i32> %wide.load199, %vec.phi197 ; 2 uses
  %i.jz = add <4 x i32> %wide.load200, %vec.phi198 ; 2 uses
  %index.next201 = add nuw i64 %index196, 8       ; 2 uses
  %i.ka = icmp eq i64 %index.next201, %n.vec194
  br i1 %i.ka, label %middle.block202, label %vector.body195, !llvm.loop !1228

middle.block202:                                  ; preds = %vector.body195
  %bin.rdx203 = add <4 x i32> %i.jz, %i.jy
  %i.kb = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx203) ; 2 uses
  %cmp.n204 = icmp eq i64 %.0.i.i.i.i.i.i.i.i22, %n.vec194
  br i1 %cmp.n204, label %.preheader.i.i.i.i28, label %.lr.ph85.i.i.i.i36.preheader251

.lr.ph85.i.i.i.i36.preheader251:                  ; preds = %.lr.ph85.i.i.i.i36.preheader, %middle.block202
  %.05683.i.i.i.i37.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i36.preheader ], [ %n.vec194, %middle.block202 ]
  %.07582.i.i.i.i38.ph = phi i32 [ %6, %.lr.ph85.i.i.i.i36.preheader ], [ %i.kb, %middle.block202 ]
  br label %.lr.ph85.i.i.i.i36

.preheader.i.i.i.i28:                             ; preds = %.lr.ph85.i.i.i.i36, %middle.block202, %bb.z
  %.075.lcssa.i.i.i.i29 = phi i32 [ %6, %bb.z ], [ %i.kb, %middle.block202 ], [ %i.kr, %.lr.ph85.i.i.i.i36 ] ; 3 uses
  %i.kc = icmp slt i64 %i.is, %i.ie
  br i1 %i.kc, label %.lr.ph89.i.i.i.i33.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54

.lr.ph89.i.i.i.i33.preheader:                     ; preds = %.preheader.i.i.i.i28
  %i.kd = shl nsw i64 %i.ip, 2
  %i.ke = add i64 %.0.i.i.i.i.i.i.i.i22, %i.kd
  %i.kf = sub i64 %i.ie, %i.ke                    ; 3 uses
  %min.iters.check208 = icmp ult i64 %i.kf, 8
  br i1 %min.iters.check208, label %.lr.ph89.i.i.i.i33.preheader246, label %vector.ph209

vector.ph209:                                     ; preds = %.lr.ph89.i.i.i.i33.preheader
  %n.vec210 = and i64 %i.kf, -8                   ; 3 uses
  %i.kg = add i64 %i.is, %n.vec210
  %i.kh = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i29, i64 0
  %i.ki = getelementptr [4 x i8], ptr %i.ht, i64 %i.is
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph209
  %index212 = phi i64 [ 0, %vector.ph209 ], [ %index.next217, %vector.body211 ] ; 2 uses
  %vec.phi213 = phi <4 x i32> [ %i.kh, %vector.ph209 ], [ %i.kl, %vector.body211 ]
  %vec.phi214 = phi <4 x i32> [ zeroinitializer, %vector.ph209 ], [ %i.km, %vector.body211 ]
  %i.kj = getelementptr [4 x i8], ptr %i.ki, i64 %index212 ; 2 uses
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kj, i64 16
  %wide.load215 = load <4 x i32>, ptr %i.kj, align 4, !tbaa !70
  %wide.load216 = load <4 x i32>, ptr %i.kk, align 4, !tbaa !70
  %i.kl = add <4 x i32> %wide.load215, %vec.phi213 ; 2 uses
  %i.km = add <4 x i32> %wide.load216, %vec.phi214 ; 2 uses
  %index.next217 = add nuw i64 %index212, 8       ; 2 uses
  %i.kn = icmp eq i64 %index.next217, %n.vec210
  br i1 %i.kn, label %middle.block218, label %vector.body211, !llvm.loop !1229

middle.block218:                                  ; preds = %vector.body211
  %bin.rdx219 = add <4 x i32> %i.km, %i.kl
  %i.ko = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx219) ; 2 uses
  %cmp.n220 = icmp eq i64 %i.kf, %n.vec210
  br i1 %cmp.n220, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54, label %.lr.ph89.i.i.i.i33.preheader246

.lr.ph89.i.i.i.i33.preheader246:                  ; preds = %.lr.ph89.i.i.i.i33.preheader, %middle.block218
  %.05588.i.i.i.i34.ph = phi i64 [ %i.is, %.lr.ph89.i.i.i.i33.preheader ], [ %i.kg, %middle.block218 ]
  %.187.i.i.i.i35.ph = phi i32 [ %.075.lcssa.i.i.i.i29, %.lr.ph89.i.i.i.i33.preheader ], [ %i.ko, %middle.block218 ]
  br label %.lr.ph89.i.i.i.i33

.lr.ph85.i.i.i.i36:                               ; preds = %.lr.ph85.i.i.i.i36.preheader251, %.lr.ph85.i.i.i.i36
  %.05683.i.i.i.i37 = phi i64 [ %i.ks, %.lr.ph85.i.i.i.i36 ], [ %.05683.i.i.i.i37.ph, %.lr.ph85.i.i.i.i36.preheader251 ] ; 2 uses
  %.07582.i.i.i.i38 = phi i32 [ %i.kr, %.lr.ph85.i.i.i.i36 ], [ %.07582.i.i.i.i38.ph, %.lr.ph85.i.i.i.i36.preheader251 ]
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.05683.i.i.i.i37
  %i.kq = load i32, ptr %i.kp, align 4, !tbaa !70
  %i.kr = add nsw i32 %i.kq, %.07582.i.i.i.i38    ; 2 uses
  %i.ks = add nuw nsw i64 %.05683.i.i.i.i37, 1    ; 2 uses
  %exitcond.not.i.i.i.i39 = icmp eq i64 %i.ks, %.0.i.i.i.i.i.i.i.i22
  br i1 %exitcond.not.i.i.i.i39, label %.preheader.i.i.i.i28, label %.lr.ph85.i.i.i.i36, !llvm.loop !1230

.lr.ph89.i.i.i.i33:                               ; preds = %.lr.ph89.i.i.i.i33.preheader246, %.lr.ph89.i.i.i.i33
  %.05588.i.i.i.i34 = phi i64 [ %i.kw, %.lr.ph89.i.i.i.i33 ], [ %.05588.i.i.i.i34.ph, %.lr.ph89.i.i.i.i33.preheader246 ] ; 2 uses
  %.187.i.i.i.i35 = phi i32 [ %i.kv, %.lr.ph89.i.i.i.i33 ], [ %.187.i.i.i.i35.ph, %.lr.ph89.i.i.i.i33.preheader246 ]
  %i.kt = getelementptr inbounds [4 x i8], ptr %i.ht, i64 %.05588.i.i.i.i34
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !70
  %i.kv = add nsw i32 %i.ku, %.187.i.i.i.i35      ; 2 uses
  %i.kw = add nsw i64 %.05588.i.i.i.i34, 1        ; 2 uses
  %i.kx = icmp slt i64 %i.kw, %i.ie
  br i1 %i.kx, label %.lr.ph89.i.i.i.i33, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54, !llvm.loop !1231

bb.aa:                                            ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i21
  %i.ky = load i32, ptr %i.ht, align 4, !tbaa !70 ; 3 uses
  %i.kz = icmp sgt i64 %i.ie, 1
  br i1 %i.kz, label %.lr.ph94.i.i.i.i50.preheader, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54

.lr.ph94.i.i.i.i50.preheader:                     ; preds = %bb.aa
  %i.la = add nsw i64 %i.ie, -1                   ; 2 uses
  %min.iters.check224 = icmp ult i64 %i.ie, 9
  br i1 %min.iters.check224, label %.lr.ph94.i.i.i.i50.preheader243, label %vector.ph225

vector.ph225:                                     ; preds = %.lr.ph94.i.i.i.i50.preheader
  %n.vec226 = and i64 %i.la, -8                   ; 3 uses
  %i.lb = or disjoint i64 %n.vec226, 1
  %i.lc = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.ky, i64 0
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph225
  %index228 = phi i64 [ 0, %vector.ph225 ], [ %index.next233, %vector.body227 ] ; 2 uses
  %vec.phi229 = phi <4 x i32> [ %i.lc, %vector.ph225 ], [ %i.lg, %vector.body227 ]
  %vec.phi230 = phi <4 x i32> [ zeroinitializer, %vector.ph225 ], [ %i.lh, %vector.body227 ]
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %index228 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  %i.lf = getelementptr inbounds nuw i8, ptr %i.ld, i64 20
  %wide.load231 = load <4 x i32>, ptr %i.le, align 4, !tbaa !70
  %wide.load232 = load <4 x i32>, ptr %i.lf, align 4, !tbaa !70
  %i.lg = add <4 x i32> %wide.load231, %vec.phi229 ; 2 uses
  %i.lh = add <4 x i32> %wide.load232, %vec.phi230 ; 2 uses
  %index.next233 = add nuw i64 %index228, 8       ; 2 uses
  %i.li = icmp eq i64 %index.next233, %n.vec226
  br i1 %i.li, label %middle.block234, label %vector.body227, !llvm.loop !1232

middle.block234:                                  ; preds = %vector.body227
  %bin.rdx235 = add <4 x i32> %i.lh, %i.lg
  %i.lj = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx235) ; 2 uses
  %cmp.n236 = icmp eq i64 %i.la, %n.vec226
  br i1 %cmp.n236, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54, label %.lr.ph94.i.i.i.i50.preheader243

.lr.ph94.i.i.i.i50.preheader243:                  ; preds = %.lr.ph94.i.i.i.i50.preheader, %middle.block234
  %.092.i.i.i.i51.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i50.preheader ], [ %i.lb, %middle.block234 ]
  %.291.i.i.i.i52.ph = phi i32 [ %i.ky, %.lr.ph94.i.i.i.i50.preheader ], [ %i.lj, %middle.block234 ]
  br label %.lr.ph94.i.i.i.i50

.lr.ph94.i.i.i.i50:                               ; preds = %.lr.ph94.i.i.i.i50.preheader243, %.lr.ph94.i.i.i.i50
  %.092.i.i.i.i51 = phi i64 [ %i.ln, %.lr.ph94.i.i.i.i50 ], [ %.092.i.i.i.i51.ph, %.lr.ph94.i.i.i.i50.preheader243 ] ; 2 uses
  %.291.i.i.i.i52 = phi i32 [ %i.lm, %.lr.ph94.i.i.i.i50 ], [ %.291.i.i.i.i52.ph, %.lr.ph94.i.i.i.i50.preheader243 ]
  %i.lk = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.092.i.i.i.i51
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !70
  %i.lm = add nsw i32 %i.ll, %.291.i.i.i.i52      ; 2 uses
  %i.ln = add nuw nsw i64 %.092.i.i.i.i51, 1      ; 2 uses
  %exitcond102.not.i.i.i.i53 = icmp eq i64 %i.ln, %i.ie
  br i1 %exitcond102.not.i.i.i.i53, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54, label %.lr.ph94.i.i.i.i50, !llvm.loop !1233

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54: ; preds = %.lr.ph89.i.i.i.i33, %.lr.ph94.i.i.i.i50, %middle.block218, %middle.block234, %.preheader.i.i.i.i28, %bb.aa, %bb.s
  %.0.i32.in = phi i32 [ %i.ic, %bb.s ], [ %i.lm, %.lr.ph94.i.i.i.i50 ], [ %.075.lcssa.i.i.i.i29, %.preheader.i.i.i.i28 ], [ %i.ky, %bb.aa ], [ %i.lj, %middle.block234 ], [ %i.ko, %middle.block218 ], [ %i.kv, %.lr.ph89.i.i.i.i33 ]
  %i.lo = icmp sgt i32 %.0.i32.in, 0
  br i1 %i.lo, label %bb.ab, label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread

bb.ab:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #32
  store i8 0, ptr %4, align 8, !tbaa !1234, !alias.scope !1236
  %i.lp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store i8 0, ptr %i.lp, align 8, !alias.scope !1236
  %.sroa.41.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.bh, ptr %.sroa.41.0..sroa_idx.i.i, align 8, !alias.scope !1236
  call void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi6ELi2ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(16) %i.lp, ptr noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #32
  br label %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread

_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread: ; preds = %bb.t, %bb.ab, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54
  %i.lq = load i64, ptr %i.d, align 8, !tbaa !168
  %i.lr = icmp sgt i64 %i.lq, 0
  br i1 %i.lr, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread
  %i.ls = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.lu = load i64, ptr %i.lt, align 8, !tbaa !168 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.lw = load i64, ptr %i.lv, align 8, !tbaa !58
  %.not.i.i.i.i.i57 = icmp eq i64 %i.lw, %i.lu
  br i1 %.not.i.i.i.i.i57, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit59, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %i.lu, i64 noundef 1)
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit59

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit59: ; preds = %bb.ac, %bb.ad
  call void @_ZN5Eigen8internal26permutation_matrix_productINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi1ELb0ENS_10DenseShapeEE3runIS3_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.ls, ptr noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.a, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit59, %_ZNK5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE8nonZerosEv.exit54.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen18TriangularViewImplIKNS_12SparseMatrixIdLi0EiEELj5ENS_6SparseEE12solveInPlaceINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEvRNS_10MatrixBaseIT_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1241, !nonnull !95, !align !158 ; 5 uses
end_hunk_4
