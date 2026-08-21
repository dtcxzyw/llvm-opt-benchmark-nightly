Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_eigen?download=true
inline.NumInlined: 23967
inline.NumDeleted: 11511
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 155
loop-unroll.NumUnrolled: 180
begin_hunk_0_@_ZN5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi2ENS_11AMDOrderingIiEEEEE20factorize_preorderedILb0EEEvRKS3_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !377  ; 4 uses
  %sext = shl i64 %i.b, 32                        ; 8 uses
  %i.j = icmp slt i64 %sext, 0
  br i1 %i.j, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #38 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #41
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.l = lshr exact i64 %sext, 29                 ; 2 uses
  %i.m = icmp samesign ult i64 %sext, 70369281048576
  br i1 %i.m, label %_ZN5Eigen8internal14aligned_mallocEm.exit159, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.l) #43 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #38 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #41
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.c
  %i.q = lshr exact i64 %sext, 30                 ; 4 uses
  %i.r = icmp samesign ult i64 %sext, 140738562097152
  br i1 %i.r, label %_ZN5Eigen8internal14aligned_mallocEm.exit159.thread244, label %bb.e

_ZN5Eigen8internal14aligned_mallocEm.exit159.thread244: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.s = add nuw nsw i64 %i.q, 15
  %i.t = alloca i8, i64 %i.s, align 16
  %i.u = icmp samesign ugt i64 %sext, 140737488355328
  br label %bb.g

bb.e:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.q) #43 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #38 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #41
          to label %.noexc158 unwind label %.split

.noexc158:                                        ; preds = %bb.f
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit159:     ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.y = add nuw nsw i64 %i.l, 15
  %i.z = alloca i8, i64 %i.y, align 16
  %i.aa = icmp samesign ugt i64 %sext, 70368744177664
  %i.ab = lshr exact i64 %sext, 30                ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 15
  %i.ad = alloca i8, i64 %i.ac, align 16
  br label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit159, %_ZN5Eigen8internal14aligned_mallocEm.exit159.thread244
  %i.ae = phi i1 [ %i.u, %_ZN5Eigen8internal14aligned_mallocEm.exit159.thread244 ], [ false, %_ZN5Eigen8internal14aligned_mallocEm.exit159 ]
  %i.af = phi ptr [ %i.t, %_ZN5Eigen8internal14aligned_mallocEm.exit159.thread244 ], [ %i.ad, %_ZN5Eigen8internal14aligned_mallocEm.exit159 ]
  %i.ag = phi ptr [ %i.n, %_ZN5Eigen8internal14aligned_mallocEm.exit159.thread244 ], [ %i.z, %_ZN5Eigen8internal14aligned_mallocEm.exit159 ]
  %i.ah = phi i1 [ true, %_ZN5Eigen8internal14aligned_mallocEm.exit159.thread244 ], [ %i.aa, %_ZN5Eigen8internal14aligned_mallocEm.exit159 ]
  %i.ai = phi i64 [ %i.q, %_ZN5Eigen8internal14aligned_mallocEm.exit159.thread244 ], [ %i.ab, %_ZN5Eigen8internal14aligned_mallocEm.exit159 ]
  %i.aj = add nuw nsw i64 %i.ai, 15
  %i.ak = alloca i8, i64 %i.aj, align 16
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit164

bb.h:                                             ; preds = %bb.e
  %i.al = tail call noalias ptr @malloc(i64 noundef %i.q) #43 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.i, label %_ZN5Eigen8internal14aligned_mallocEm.exit164

bb.i:                                             ; preds = %bb.h
  %i.an = tail call ptr @__cxa_allocate_exception(i64 8) #38 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.an, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #41
          to label %.noexc163 unwind label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit167

.noexc163:                                        ; preds = %bb.i
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit164:     ; preds = %bb.h, %bb.g
  %i.ao = phi i1 [ %i.ae, %bb.g ], [ true, %bb.h ]
  %i.ap = phi ptr [ %i.af, %bb.g ], [ %i.v, %bb.h ] ; 7 uses
  %i.aq = phi ptr [ %i.ag, %bb.g ], [ %i.n, %bb.h ] ; 5 uses
  %i.ar = phi i1 [ %i.ah, %bb.g ], [ true, %bb.h ]
  %i.as = phi ptr [ %i.ak, %bb.g ], [ %i.al, %bb.h ] ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !tbaa !665
  %.not.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit164
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !666
  tail call void @free(ptr noundef %i.aw) #38
  store ptr null, ptr %i.av, align 8, !tbaa !666
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit164, %bb.j
  store i64 0, ptr %i.at, align 8, !tbaa !665
  %i.ax = icmp sgt i32 %i.c, 0
  br i1 %i.ax, label %.lr.ph216, label %._crit_edge217

.lr.ph216:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !422 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !377
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !378
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !375
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !376 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, null
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %wide.trip.count233 = and i64 %i.b, 2147483647
  %wide.trip.count = and i64 %i.b, 2147483647
  br label %bb.k

.split:                                           ; preds = %bb.f
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit168

bb.k:                                             ; preds = %.lr.ph216, %bb.p
  %indvars.iv230 = phi i64 [ 0, %.lr.ph216 ], [ %indvars.iv.next231, %bb.p ] ; 11 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv230 ; 4 uses
  store double 0.000000e+00, ptr %i.bn, align 8, !tbaa !399
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv230
  %i.bp = trunc nuw nsw i64 %indvars.iv230 to i32 ; 4 uses
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !32
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv230 ; 3 uses
  store i32 0, ptr %i.bq, align 4, !tbaa !32
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv230 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !32
  %i.bt = sext i32 %i.bs to i64                   ; 3 uses
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr i8, ptr %i.br, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !32
  %i.bw = sext i32 %i.bv to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.m:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv230
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !32
  %i.bz = sext i32 %i.by to i64
  %i.ca = add nsw i64 %i.bz, %i.bt
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.l, %bb.m
  %.sink.i = phi i64 [ %i.bw, %bb.l ], [ %i.ca, %bb.m ] ; 2 uses
  %i.cb = icmp sgt i64 %.sink.i, %i.bt
  br i1 %i.cb, label %.lr.ph202, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.cc = load double, ptr %i.bk, align 8, !tbaa !374
  %i.cd = load double, ptr %i.bl, align 8, !tbaa !667
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cc, double 0.000000e+00, double %i.cd)
  store double 0.000000e+00, ptr %i.bn, align 8, !tbaa !399
  br label %._crit_edge213

.lr.ph202:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, %.loopexit
  %.0110201 = phi i32 [ %.2, %.loopexit ], [ %i.c, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %.sroa.8.0200 = phi i64 [ %i.ds, %.loopexit ], [ %i.bt, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %.sroa.8.0200
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !32 ; 2 uses
  %i.ch = sext i32 %i.cg to i64                   ; 4 uses
  %.not = icmp slt i64 %indvars.iv230, %i.ch
  br i1 %.not, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.lr.ph202
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %.sroa.8.0200
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !399
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ch ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !399
  %i.cm = fadd double %i.cj, %i.cl
  store double %i.cm, ptr %i.ck, align 8, !tbaa !399
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.ch ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !32
  %i.cp = zext i32 %i.co to i64
  %.not143193 = icmp eq i64 %indvars.iv230, %i.cp
  br i1 %.not143193, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.cq = load ptr, ptr %i.bj, align 8, !tbaa !422
  br label %bb.o

.lr.ph198.preheader:                              ; preds = %bb.o
  %i.cr = sext i32 %.0110201 to i64               ; 5 uses
  %min.iters.check = icmp samesign ult i64 %.0108195, 7
  br i1 %min.iters.check, label %.lr.ph198.preheader257, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph198.preheader
  %i.cs = sub i64 %.0108195, %i.cr
  %reass.sub = shl i64 %i.cs, 2
  %diff.check = icmp ult i64 %reass.sub, 28
  br i1 %diff.check, label %.lr.ph198.preheader257, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.dg, 9223372036854775800     ; 3 uses
  %i.ct = sub i64 %i.cr, %n.vec                   ; 2 uses
  %2 = and i64 %i.dg, 7
  %invariant.gep = getelementptr [4 x i8], ptr %i.ap, i64 %i.cr
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cu = sub i64 %.0108195, %index
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.cu ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %i.cv, i64 -12
  %i.cx = getelementptr inbounds i8, ptr %i.cv, i64 -28
  %wide.load = load <4 x i32>, ptr %i.cw, align 4, !tbaa !32
  %wide.load255 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !32
  %i.cy = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cy ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.da = getelementptr inbounds i8, ptr %gep, i64 -28
  store <4 x i32> %wide.load, ptr %i.cz, align 4, !tbaa !32
  store <4 x i32> %wide.load255, ptr %i.da, align 4, !tbaa !32
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !668

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dg, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %.lr.ph198.preheader257

.lr.ph198.preheader257:                           ; preds = %vector.memcheck, %.lr.ph198.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.cr, %vector.memcheck ], [ %i.cr, %.lr.ph198.preheader ], [ %i.ct, %middle.block ]
  %.1197.ph = phi i64 [ %i.dg, %vector.memcheck ], [ %i.dg, %.lr.ph198.preheader ], [ %2, %middle.block ]
  br label %.lr.ph198

bb.o:                                             ; preds = %.lr.ph, %bb.o
  %i.dc = phi ptr [ %i.cn, %.lr.ph ], [ %i.dj, %bb.o ]
  %i.dd = phi i64 [ %i.ch, %.lr.ph ], [ %i.di, %bb.o ]
  %.0108195 = phi i64 [ 0, %.lr.ph ], [ %i.dg, %bb.o ] ; 5 uses
  %.0109194 = phi i32 [ %i.cg, %.lr.ph ], [ %i.dh, %bb.o ]
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %.0108195
  store i32 %.0109194, ptr %i.de, align 4, !tbaa !32
  store i32 %i.bp, ptr %i.dc, align 4, !tbaa !32
  %i.df = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.dd
  %i.dg = add nuw nsw i64 %.0108195, 1            ; 6 uses
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !32 ; 2 uses
  %i.di = sext i32 %i.dh to i64                   ; 2 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !32
  %i.dl = zext i32 %i.dk to i64
  %.not143 = icmp eq i64 %indvars.iv230, %i.dl
  br i1 %.not143, label %.lr.ph198.preheader, label %bb.o, !llvm.loop !669

.lr.ph198:                                        ; preds = %.lr.ph198.preheader257, %.lr.ph198
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph198 ], [ %indvars.iv.ph, %.lr.ph198.preheader257 ]
  %.1197 = phi i64 [ %i.dm, %.lr.ph198 ], [ %.1197.ph, %.lr.ph198.preheader257 ] ; 2 uses
  %i.dm = add nsw i64 %.1197, -1                  ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !32
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv.next
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !32
  %i.dq = icmp sgt i64 %.1197, 1
  br i1 %i.dq, label %.lr.ph198, label %.loopexit.loopexit, !llvm.loop !670

.loopexit.loopexit:                               ; preds = %.lr.ph198, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.ct, %middle.block ], [ %indvars.iv.next, %.lr.ph198 ]
  %i.dr = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.loopexit, %.lr.ph202
  %.2 = phi i32 [ %.0110201, %.lr.ph202 ], [ %i.dr, %.loopexit.loopexit ], [ %.0110201, %bb.n ] ; 3 uses
  %i.ds = add nsw i64 %.sroa.8.0200, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ds, %.sink.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph202, !llvm.loop !671

._crit_edge:                                      ; preds = %.loopexit
  %.pre = load double, ptr %i.bn, align 8, !tbaa !399
  %i.dt = load double, ptr %i.bk, align 8, !tbaa !374
  %i.du = load double, ptr %i.bl, align 8, !tbaa !667
  %i.dv = tail call double @llvm.fmuladd.f64(double %.pre, double %i.dt, double %i.du) ; 2 uses
  store double 0.000000e+00, ptr %i.bn, align 8, !tbaa !399
  %i.dw = icmp slt i32 %.2, %i.c
  br i1 %i.dw, label %.lr.ph212.preheader, label %._crit_edge213

.lr.ph212.preheader:                              ; preds = %._crit_edge
  %i.dx = sext i32 %.2 to i64
  br label %.lr.ph212

.lr.ph212:                                        ; preds = %.lr.ph212.preheader, %._crit_edge207
  %indvars.iv226 = phi i64 [ %i.dx, %.lr.ph212.preheader ], [ %indvars.iv.next227, %._crit_edge207 ] ; 2 uses
  %.0107210 = phi double [ %i.dv, %.lr.ph212.preheader ], [ %i.fe, %._crit_edge207 ]
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv226
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !32
  %i.ea = sext i32 %i.dz to i64                   ; 3 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ea ; 2 uses
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !399
  store double 0.000000e+00, ptr %i.eb, align 8, !tbaa !399
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ea
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !32 ; 3 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ef
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !399
  %i.ei = fdiv double %i.ec, %i.eh                ; 4 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ea ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !32 ; 2 uses
  %i.el = add nsw i32 %i.ek, %i.ee
  %i.em = sext i32 %i.el to i64
  %i.en = add nsw i32 %i.ee, 1
  %i.eo = sext i32 %i.en to i64                   ; 2 uses
  %i.ep = icmp sgt i32 %i.ek, 1
  br i1 %i.ep, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %.lr.ph212, %.lr.ph206
  %.0204 = phi i64 [ %i.ez, %.lr.ph206 ], [ %i.eo, %.lr.ph212 ] ; 3 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.0204
  %i.er = load double, ptr %i.eq, align 8, !tbaa !399
  %i.es = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.0204
  %i.et = load i32, ptr %i.es, align 4, !tbaa !32
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.eu ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !399
  %i.ex = fneg double %i.er
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.ei, double %i.ew)
  store double %i.ey, ptr %i.ev, align 8, !tbaa !399
  %i.ez = add nsw i64 %.0204, 1                   ; 3 uses
  %i.fa = icmp slt i64 %i.ez, %i.em
  br i1 %i.fa, label %.lr.ph206, label %._crit_edge207, !llvm.loop !672

._crit_edge207:                                   ; preds = %.lr.ph206, %.lr.ph212
  %.0.lcssa = phi i64 [ %i.eo, %.lr.ph212 ], [ %i.ez, %.lr.ph206 ] ; 2 uses
  %i.fb = fmul double %i.ei, %i.ei
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.0.lcssa
  store i32 %i.bp, ptr %i.fc, align 4, !tbaa !32
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.0.lcssa
  store double %i.ei, ptr %i.fd, align 8, !tbaa !399
  %i.fe = fsub double %.0107210, %i.fb            ; 2 uses
  %i.ff = load i32, ptr %i.ej, align 4, !tbaa !32
  %i.fg = add nsw i32 %i.ff, 1
  store i32 %i.fg, ptr %i.ej, align 4, !tbaa !32
  %indvars.iv.next227 = add nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count
  br i1 %exitcond229.not, label %._crit_edge213.loopexit, label %.lr.ph212, !llvm.loop !673

._crit_edge213.loopexit:                          ; preds = %._crit_edge207
  %.pre235 = load i32, ptr %i.bq, align 4, !tbaa !32
  br label %._crit_edge213

._crit_edge213:                                   ; preds = %._crit_edge.thread, %._crit_edge213.loopexit, %._crit_edge
  %i.fh = phi i32 [ 0, %._crit_edge ], [ %.pre235, %._crit_edge213.loopexit ], [ 0, %._crit_edge.thread ] ; 2 uses
  %.0107.lcssa = phi double [ %i.dv, %._crit_edge ], [ %i.fe, %._crit_edge213.loopexit ], [ %i.ce, %._crit_edge.thread ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv230
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !32
  %i.fk = add nsw i32 %i.fh, 1
  store i32 %i.fk, ptr %i.bq, align 4, !tbaa !32
  %i.fl = add nsw i32 %i.fh, %i.fj
  %i.fm = sext i32 %i.fl to i64                   ; 2 uses
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.fm
  store i32 %i.bp, ptr %i.fn, align 4, !tbaa !32
  %i.fo = fcmp ugt double %.0107.lcssa, 0.000000e+00
  br i1 %i.fo, label %bb.p, label %._crit_edge217

bb.p:                                             ; preds = %._crit_edge213
  %i.fp = tail call double @sqrt(double noundef %.0107.lcssa) #38
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.fm
  store double %i.fp, ptr %i.fq, align 8, !tbaa !399
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count233
  br i1 %exitcond234.not, label %._crit_edge217, label %bb.k, !llvm.loop !674

._crit_edge217:                                   ; preds = %bb.p, %._crit_edge213, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %.2116 = phi i32 [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit ], [ 1, %._crit_edge213 ], [ 0, %bb.p ]
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.2116, ptr %i.fr, align 4, !tbaa !371
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.fs, align 8, !tbaa !372
  br i1 %i.ao, label %bb.q, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit165

bb.q:                                             ; preds = %._crit_edge217
  call void @free(ptr noundef nonnull %i.as) #38
  call void @free(ptr noundef nonnull %i.ap) #38
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit165

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit165: ; preds = %._crit_edge217, %bb.q
  br i1 %i.ar, label %bb.r, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.r:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit165
  call void @free(ptr noundef nonnull %i.aq) #38
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit165, %bb.r
  ret void

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit167: ; preds = %bb.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef nonnull %i.v) #38
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit168

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit168: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit167, %.split
  %.pn144.pn.pn.pn.pn.pn.pn.pn250 = phi { ptr, i32 } [ %i.bm, %.split ], [ %i.ft, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit167 ]
  tail call void @free(ptr noundef nonnull %i.n) #38
  resume { ptr, i32 } %.pn144.pn.pn.pn.pn.pn.pn.pn250
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #26

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef, i32 noundef) unnamed_addr #3 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #10 align 2

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #16

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #3 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %4 = alloca %"struct.g2o::TripletEntry", align 8 ; 4 uses
  %5 = alloca %"struct.__gnu_cxx::__ops::_Iter_comp_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 4                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph29

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEENS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEET_SD_SD_T0_.exit
  %i.i = icmp eq i64 %i.af, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph29, !llvm.loop !675

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
end_hunk_0
begin_hunk_1_@_ZN3g2o11BlockSolverINS_17BlockSolverTraitsILin1ELin1EEEE5solveEv:bb.a
  %niter511 = phi i64 [ %niter511.next.3, %.lr.ph.i.i.i.i.i.i35.i140.us ], [ 0, %.lr.ph.i.i.i.i.i.i35.i140.preheader.us ]
  %i.vg = mul nsw i64 %.01724.i.i.i.i.i.i36.i141.us, %i.ui
  %i.vh = getelementptr [8 x i8], ptr %i.vc, i64 %i.vg
  %i.vi = load double, ptr %i.vh, align 8, !tbaa !399
  %i.vj = getelementptr [8 x i8], ptr %i.tx, i64 %.01724.i.i.i.i.i.i36.i141.us
  %i.vk = load double, ptr %i.vj, align 8, !tbaa !399
  %i.vl = fmul double %i.vi, %i.vk
  %i.vm = fadd double %.02223.i.i.i.i.i.i37.i142.us, %i.vl
  %i.vn = add nuw nsw i64 %.01724.i.i.i.i.i.i36.i141.us, 1 ; 2 uses
  %i.vo = mul nsw i64 %i.vn, %i.ui
  %i.vp = getelementptr [8 x i8], ptr %i.vc, i64 %i.vo
  %i.vq = load double, ptr %i.vp, align 8, !tbaa !399
  %i.vr = getelementptr [8 x i8], ptr %i.tx, i64 %i.vn
  %i.vs = load double, ptr %i.vr, align 8, !tbaa !399
  %i.vt = fmul double %i.vq, %i.vs
  %i.vu = fadd double %i.vm, %i.vt
  %i.vv = add nuw nsw i64 %.01724.i.i.i.i.i.i36.i141.us, 2 ; 2 uses
  %i.vw = mul nsw i64 %i.vv, %i.ui
  %i.vx = getelementptr [8 x i8], ptr %i.vc, i64 %i.vw
  %i.vy = load double, ptr %i.vx, align 8, !tbaa !399
  %i.vz = getelementptr [8 x i8], ptr %i.tx, i64 %i.vv
  %i.wa = load double, ptr %i.vz, align 8, !tbaa !399
  %i.wb = fmul double %i.vy, %i.wa
  %i.wc = fadd double %i.vu, %i.wb
  %i.wd = add nuw nsw i64 %.01724.i.i.i.i.i.i36.i141.us, 3 ; 2 uses
  %i.we = mul nsw i64 %i.wd, %i.ui
  %i.wf = getelementptr [8 x i8], ptr %i.vc, i64 %i.we
  %i.wg = load double, ptr %i.wf, align 8, !tbaa !399
  %i.wh = getelementptr [8 x i8], ptr %i.tx, i64 %i.wd
  %i.wi = load double, ptr %i.wh, align 8, !tbaa !399
  %i.wj = fmul double %i.wg, %i.wi
  %i.wk = fadd double %i.wc, %i.wj                ; 3 uses
  %i.wl = add nuw nsw i64 %.01724.i.i.i.i.i.i36.i141.us, 4 ; 2 uses
  %niter511.next.3 = add i64 %niter511, 4         ; 2 uses
  %niter511.ncmp.3 = icmp eq i64 %niter511.next.3, %unroll_iter510
  br i1 %niter511.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us.unr-lcssa, label %.lr.ph.i.i.i.i.i.i35.i140.us, !llvm.loop !898

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i35.i140.us
  br i1 %lcmp.mod507.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us, label %.lr.ph.i.i.i.i.i.i35.i140.us.epil.preheader

.lr.ph.i.i.i.i.i.i35.i140.us.epil.preheader:      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us.unr-lcssa, %.lr.ph.i.i.i.i.i.i35.i140.preheader.us
  %.01724.i.i.i.i.i.i36.i141.us.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i35.i140.preheader.us ], [ %i.wl, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us.unr-lcssa ]
  %.02223.i.i.i.i.i.i37.i142.us.epil.init = phi double [ %i.vf, %.lr.ph.i.i.i.i.i.i35.i140.preheader.us ], [ %i.wk, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod509)
  br label %.lr.ph.i.i.i.i.i.i35.i140.us.epil

.lr.ph.i.i.i.i.i.i35.i140.us.epil:                ; preds = %.lr.ph.i.i.i.i.i.i35.i140.us.epil, %.lr.ph.i.i.i.i.i.i35.i140.us.epil.preheader
  %.01724.i.i.i.i.i.i36.i141.us.epil = phi i64 [ %i.wt, %.lr.ph.i.i.i.i.i.i35.i140.us.epil ], [ %.01724.i.i.i.i.i.i36.i141.us.epil.init, %.lr.ph.i.i.i.i.i.i35.i140.us.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i37.i142.us.epil = phi double [ %i.ws, %.lr.ph.i.i.i.i.i.i35.i140.us.epil ], [ %.02223.i.i.i.i.i.i37.i142.us.epil.init, %.lr.ph.i.i.i.i.i.i35.i140.us.epil.preheader ]
  %epil.iter506 = phi i64 [ %epil.iter506.next, %.lr.ph.i.i.i.i.i.i35.i140.us.epil ], [ 0, %.lr.ph.i.i.i.i.i.i35.i140.us.epil.preheader ]
  %i.wm = mul nsw i64 %.01724.i.i.i.i.i.i36.i141.us.epil, %i.ui
  %i.wn = getelementptr [8 x i8], ptr %i.vc, i64 %i.wm
  %i.wo = load double, ptr %i.wn, align 8, !tbaa !399
  %i.wp = getelementptr [8 x i8], ptr %i.tx, i64 %.01724.i.i.i.i.i.i36.i141.us.epil
  %i.wq = load double, ptr %i.wp, align 8, !tbaa !399
  %i.wr = fmul double %i.wo, %i.wq
  %i.ws = fadd double %.02223.i.i.i.i.i.i37.i142.us.epil, %i.wr ; 2 uses
  %i.wt = add nuw nsw i64 %.01724.i.i.i.i.i.i36.i141.us.epil, 1
  %epil.iter506.next = add i64 %epil.iter506, 1   ; 2 uses
  %epil.iter506.cmp.not = icmp eq i64 %epil.iter506.next, %xtraiter505
  br i1 %epil.iter506.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us, label %.lr.ph.i.i.i.i.i.i35.i140.us.epil, !llvm.loop !917

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us: ; preds = %.lr.ph.i.i.i.i.i.i35.i140.us.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us.unr-lcssa
  %.lcssa482 = phi double [ %i.wk, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us.unr-lcssa ], [ %i.ws, %.lr.ph.i.i.i.i.i.i35.i140.us.epil ]
  %gep58.i.us = getelementptr [8 x i8], ptr %invariant.gep57.i, i64 %.055.i.us
  store double %.lcssa482, ptr %gep58.i.us, align 8, !tbaa !399
  %i.wu = add nsw i64 %.055.i.us, 1               ; 2 uses
  %i.wv = icmp slt i64 %i.wu, %i.pn
  br i1 %i.wv, label %.lr.ph.i.i.i.i.i.i35.i140.preheader.us, label %._crit_edge.i137, !llvm.loop !918

._crit_edge.i137:                                 ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.us, %middle.block, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.us.preheader.i, %.preheader.i136
  %i.ww = add nsw i64 %.03259.i, %i.po
  %i.wx = srem i64 %i.ww, 2
  %.sroa.speculated.i138 = call i64 @llvm.smin.i64(i64 %i.pn, i64 %i.wx)
  %i.wy = add nuw nsw i64 %.03160.i, 1            ; 2 uses
  %exitcond70.not.i = icmp eq i64 %i.wy, %i.pm
  br i1 %exitcond70.not.i, label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductIS1_S1_Li0EEEEERKNS_9EigenBaseIT_EE.exit, label %.lr.ph62.i, !llvm.loop !919

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader476, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i
  %.055.i = phi i64 [ %i.xd, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i ], [ %.055.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.preheader476 ] ; 3 uses
  %i.wz = getelementptr inbounds [8 x i8], ptr %i.tt, i64 %.055.i
  %i.xa = load double, ptr %i.wz, align 8, !tbaa !399
  %i.xb = load double, ptr %i.tx, align 8, !tbaa !399
  %i.xc = fmul double %i.xa, %i.xb
  %gep58.i = getelementptr [8 x i8], ptr %invariant.gep57.i, i64 %.055.i
  store double %i.xc, ptr %gep58.i, align 8, !tbaa !399
  %i.xd = add nsw i64 %.055.i, 1                  ; 2 uses
  %i.xe = icmp slt i64 %i.xd, %i.pn
  br i1 %i.xe, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_S4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i, label %._crit_edge.i137, !llvm.loop !920

bb.ag:                                            ; preds = %_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductIS3_S3_Li0EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_.exit.i.i
  %i.xf = mul nsw i64 %.pr, %i.on                 ; 2 uses
  %i.xg = icmp slt i64 %i.xf, 1
  br i1 %i.xg, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i: ; preds = %bb.ag
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.xf, 3
  call void @llvm.memset.p0.i64(ptr align 8 %i.om, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !399
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11setConstantERKd.exit.loopexit.i.i, %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store double 1.000000e+00, ptr %i.a, align 8, !tbaa !399
  invoke void @_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS_10DenseShapeES4_Li8EE13scaleAndAddToIS3_EEvRT_RKS3_SA_RKd(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.nj, ptr noundef nonnull align 8 dereferenceable(24) %i.fn, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc124 unwind label %.loopexit

.noexc124:                                        ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductIS1_S1_Li0EEEEERKNS_9EigenBaseIT_EE.exit

.loopexit:                                        ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE7setZeroEv.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body115

.loopexit.split-lp:                               ; preds = %.invoke.i113.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body115

_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductIS1_S1_Li0EEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %._crit_edge.i137, %.noexc124, %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS_10DenseShapeES4_Li3EE12eval_dynamicIS3_NS0_9assign_opIddEEEEvRT_RKS3_SC_RKT0_.exit.i
  %.not.i97 = icmp eq i32 %i.nh, 0
  br i1 %.not.i97, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductIS1_S1_Li0EEEEERKNS_9EigenBaseIT_EE.exit
  %i.xh = load ptr, ptr %i.dx, align 8, !tbaa !770
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !450, !nonnull !432, !align !451
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !435
  %i.xk = sext i32 %i.nh to i64
  %i.xl = getelementptr [4 x i8], ptr %i.xj, i64 %i.xk
  %i.xm = getelementptr i8, ptr %i.xl, i64 -4
  %i.xn = load i32, ptr %i.xm, align 4, !tbaa !32
  %i.xo = sext i32 %i.xn to i64
  br label %bb.ai

bb.ai:                                            ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductIS1_S1_Li0EEEEERKNS_9EigenBaseIT_EE.exit, %bb.ah
  %i.xp = phi i64 [ %i.xo, %bb.ah ], [ 0, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2INS_7ProductIS1_S1_Li0EEEEERKNS_9EigenBaseIT_EE.exit ]
  %i.xq = load ptr, ptr %i.da, align 8, !tbaa !553
  %i.xr = getelementptr inbounds nuw [8 x i8], ptr %i.xq, i64 %i.xp ; 3 uses
  %i.xs = load i64, ptr %i.nk, align 8, !tbaa !452 ; 3 uses
  %i.xt = icmp eq i64 %i.xs, 1
  br i1 %i.xt, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %bb.ai
  %i.xu = load ptr, ptr %i.nj, align 8, !tbaa !454, !noalias !921 ; 6 uses
  %i.xv = load ptr, ptr %4, align 8, !tbaa !666, !noalias !924 ; 6 uses
  %i.xw = load i64, ptr %i.dt, align 8, !tbaa !665, !noalias !924 ; 4 uses
  %i.xx = icmp eq i64 %i.xw, 0
  br i1 %i.xx, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.xy = load double, ptr %i.xu, align 8, !tbaa !399
  %i.xz = load double, ptr %i.xv, align 8, !tbaa !399
  %i.ya = fmul double %i.xy, %i.xz                ; 3 uses
  %i.yb = icmp sgt i64 %i.xw, 1
  br i1 %i.yb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader:           ; preds = %bb.ak
  %i.yc = add nsw i64 %i.xw, -1                   ; 2 uses
  %i.yd = add nsw i64 %i.xw, -2
  %xtraiter512 = and i64 %i.yc, 3                 ; 3 uses
  %i.ye = icmp ult i64 %i.yd, 3
  br i1 %i.ye, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter517 = and i64 %i.yc, -4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.01724.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.zg, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %.02223.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.ya, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.zf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %niter518 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter518.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i ]
  %i.yf = getelementptr [8 x i8], ptr %i.xu, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i
  %i.yg = load double, ptr %i.yf, align 8, !tbaa !399
  %i.yh = getelementptr [8 x i8], ptr %i.xv, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i
  %i.yi = load double, ptr %i.yh, align 8, !tbaa !399
  %i.yj = fmul double %i.yg, %i.yi
  %i.yk = fadd double %.02223.i.i.i.i.i.i.i.i.i.i.i, %i.yj
  %i.yl = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ym = getelementptr [8 x i8], ptr %i.xu, i64 %i.yl
  %i.yn = load double, ptr %i.ym, align 8, !tbaa !399
  %i.yo = getelementptr [8 x i8], ptr %i.xv, i64 %i.yl
  %i.yp = load double, ptr %i.yo, align 8, !tbaa !399
  %i.yq = fmul double %i.yn, %i.yp
  %i.yr = fadd double %i.yk, %i.yq
  %i.ys = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.yt = getelementptr [8 x i8], ptr %i.xu, i64 %i.ys
  %i.yu = load double, ptr %i.yt, align 8, !tbaa !399
  %i.yv = getelementptr [8 x i8], ptr %i.xv, i64 %i.ys
  %i.yw = load double, ptr %i.yv, align 8, !tbaa !399
  %i.yx = fmul double %i.yu, %i.yw
  %i.yy = fadd double %i.yr, %i.yx
  %i.yz = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.za = getelementptr [8 x i8], ptr %i.xu, i64 %i.yz
  %i.zb = load double, ptr %i.za, align 8, !tbaa !399
  %i.zc = getelementptr [8 x i8], ptr %i.xv, i64 %i.yz
  %i.zd = load double, ptr %i.zc, align 8, !tbaa !399
  %i.ze = fmul double %i.zb, %i.zd
  %i.zf = fadd double %i.yy, %i.ze                ; 3 uses
  %i.zg = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter518.next.3 = add nuw nsw i64 %niter518, 4 ; 2 uses
  %niter518.ncmp.3 = icmp eq i64 %niter518.next.3, %unroll_iter517
  br i1 %niter518.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !927

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod514.not = icmp eq i64 %xtraiter512, 0
  br i1 %lcmp.mod514.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:      ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.zg, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.ya, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.zf, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod516 = icmp ne i64 %xtraiter512, 0
  call void @llvm.assume(i1 %lcmp.mod516)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil:                ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.01724.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.zn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.01724.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.zm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.02223.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter513 = phi i64 [ %epil.iter513.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.zh = getelementptr [8 x i8], ptr %i.xu, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.zi = load double, ptr %i.zh, align 8, !tbaa !399
  %i.zj = getelementptr [8 x i8], ptr %i.xv, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.zk = load double, ptr %i.zj, align 8, !tbaa !399
  %i.zl = fmul double %i.zi, %i.zk
  %i.zm = fadd double %.02223.i.i.i.i.i.i.i.i.i.i.i.epil, %i.zl ; 2 uses
  %i.zn = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter513.next = add i64 %epil.iter513, 1   ; 2 uses
  %epil.iter513.cmp.not = icmp eq i64 %epil.iter513.next, %xtraiter512
  br i1 %epil.iter513.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !928

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.ak, %bb.aj
  %.0.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.aj ], [ %i.ya, %bb.ak ], [ %i.zf, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.zm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.zo = load double, ptr %i.xr, align 8, !tbaa !399
  %i.zp = fadd double %.0.i.i.i.i.i.i.i.i.i, %i.zo
  store double %i.zp, ptr %i.xr, align 8, !tbaa !399
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS2_IdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEERS6_RKNS7_IT_EE.exit

bb.al:                                            ; preds = %bb.ai
  %i.zq = getelementptr inbounds nuw i8, ptr %i.nj, i64 16
  %i.zr = load i64, ptr %i.zq, align 8, !tbaa !463
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #38
  %i.zs = load ptr, ptr %i.nj, align 8, !tbaa !454
  store ptr %i.zs, ptr %1, align 8, !tbaa !929
  store i64 %i.xs, ptr %i.ea, align 8, !tbaa !931
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.zt = load ptr, ptr %4, align 8, !tbaa !666
  store ptr %i.zt, ptr %2, align 8, !tbaa !932
  store i64 1, ptr %i.eb, align 8, !tbaa !934
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %i.xs, i64 noundef %i.zr, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %i.xr, i64 noundef 1, double noundef 1.000000e+00)
          to label %.noexc100 unwind label %bb.an

.noexc100:                                        ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #38
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS2_IdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEERS6_RKNS7_IT_EE.exit

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS2_IdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %.noexc100, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i
  %i.zu = load ptr, ptr %i.ec, align 8, !tbaa !770
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zu, i64 16
  %i.zw = sext i32 %i.nh to i64
  %i.zx = load ptr, ptr %i.zv, align 8, !tbaa !379
  %i.zy = getelementptr inbounds nuw [24 x i8], ptr %i.zx, i64 %i.zw
  %i.zz = load ptr, ptr %i.zy, align 8, !tbaa !442
  %i.aaa = load ptr, ptr %i.mq, align 8, !tbaa !442 ; 3 uses
  %i.aab = load ptr, ptr %i.ms, align 8, !tbaa !442 ; 2 uses
  %i.aac = ptrtoint ptr %i.aab to i64
  %i.aad = ptrtoint ptr %i.aaa to i64
  %i.aae = sub i64 %i.aac, %i.aad
  %i.aaf = ashr exact i64 %i.aae, 4               ; 2 uses
  %i.aag = icmp sgt i64 %i.aaf, 0
  br i1 %i.aag, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESt6vectorIS8_SaIS8_EEEES8_ET_SF_SF_RKT0_.exit

_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i: ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS2_IdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEERS6_RKNS7_IT_EE.exit, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i
  %.016.i.i = phi i64 [ %.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.aaf, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS2_IdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEERS6_RKNS7_IT_EE.exit ] ; 2 uses
  %.sroa.011.015.i.i = phi ptr [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ], [ %i.aaa, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS2_IdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEERS6_RKNS7_IT_EE.exit ] ; 2 uses
  %i.aah = lshr i64 %.016.i.i, 1                  ; 3 uses
  %i.aai = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.015.i.i, i64 %i.aah ; 2 uses
  %i.aaj = load i32, ptr %i.aai, align 8, !tbaa !449
  %i.aak = icmp slt i32 %i.aaj, %i.nh             ; 2 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aai, i64 16
  %i.aam = xor i64 %i.aah, -1
  %i.aan = add nsw i64 %.016.i.i, %i.aam
  %.sroa.011.1.i.i = select i1 %i.aak, ptr %i.aal, ptr %.sroa.011.015.i.i ; 2 uses
  %.1.i.i = select i1 %i.aak, i64 %i.aan, i64 %i.aah ; 2 uses
  %i.aao = icmp sgt i64 %.1.i.i, 0
  br i1 %i.aao, label %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, label %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESt6vectorIS8_SaIS8_EEEES8_ET_SF_SF_RKT0_.exit, !llvm.loop !935

_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESt6vectorIS8_SaIS8_EEEES8_ET_SF_SF_RKT0_.exit: ; preds = %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS2_IdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEERS6_RKNS7_IT_EE.exit
  %.sroa.011.0.lcssa.i.i = phi ptr [ %i.aaa, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEpLINS_7ProductINS2_IdLin1ELin1ELi0ELin1ELin1EEES3_Li0EEEEERS6_RKNS7_IT_EE.exit ], [ %.sroa.011.1.i.i, %_ZSt9__advanceIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESt6vectorIS8_SaIS8_EEEElEvRT_T0_St26random_access_iterator_tag.exit.i.i ] ; 2 uses
  %.not223251 = icmp eq ptr %.sroa.011.0.lcssa.i.i, %i.aab
  br i1 %.not223251, label %._crit_edge255, label %.lr.ph254

.lr.ph254:                                        ; preds = %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESt6vectorIS8_SaIS8_EEEES8_ET_SF_SF_RKT0_.exit, %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_7ProductIS2_NS_9TransposeIKS2_EELi0EEEEERS2_RKNS3_IT_EE.exit
  %.sroa.0159.0253 = phi ptr [ %i.agz, %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_7ProductIS2_NS_9TransposeIKS2_EELi0EEEEERS2_RKNS3_IT_EE.exit ], [ %.sroa.011.0.lcssa.i.i, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESt6vectorIS8_SaIS8_EEEES8_ET_SF_SF_RKT0_.exit ] ; 3 uses
  %.sroa.0165.0252 = phi ptr [ %.sroa.0165.1, %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_7ProductIS2_NS_9TransposeIKS2_EELi0EEEEERS2_RKNS3_IT_EE.exit ], [ %i.zz, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESt6vectorIS8_SaIS8_EEEES8_ET_SF_SF_RKT0_.exit ]
  %i.aap = load i32, ptr %.sroa.0159.0253, align 8, !tbaa !449
  %i.aaq = getelementptr inbounds nuw i8, ptr %.sroa.0159.0253, i64 8
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !446 ; 6 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph254
  %.sroa.0165.1 = phi ptr [ %.sroa.0165.0252, %.lr.ph254 ], [ %i.aau, %bb.am ] ; 4 uses
  %i.aas = load i32, ptr %.sroa.0165.1, align 8, !tbaa !449
  %i.aat = icmp slt i32 %i.aas, %i.aap
  %i.aau = getelementptr inbounds nuw i8, ptr %.sroa.0165.1, i64 16
  br i1 %i.aat, label %bb.am, label %bb.ao, !llvm.loop !936

bb.an:                                            ; preds = %bb.al
  %i.aav = landingpad { ptr, i32 }
          cleanup
  br label %.body115

bb.ao:                                            ; preds = %bb.am
  %i.aaw = getelementptr inbounds nuw i8, ptr %.sroa.0165.1, i64 8
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !446 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  store ptr %6, ptr %7, align 8
  store ptr %i.aar, ptr %i.ed, align 8
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aar, i64 16 ; 3 uses
  %i.aaz = load i64, ptr %i.aay, align 8, !tbaa !463 ; 2 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aax, i64 8
  %i.abb = load i64, ptr %i.aba, align 8, !tbaa !452 ; 9 uses
  %i.abc = add nsw i64 %i.abb, %i.aaz
  %i.abd = getelementptr inbounds nuw i8, ptr %i.aax, i64 16
  %i.abe = load i64, ptr %i.abd, align 8, !tbaa !463 ; 3 uses
  %i.abf = add nsw i64 %i.abc, %i.abe
  %i.abg = icmp slt i64 %i.abf, 20
  %i.abh = icmp sgt i64 %i.aaz, 0
  %or.cond.i.i.i.i = and i1 %i.abh, %i.abg
  br i1 %or.cond.i.i.i.i, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %bb.ao
  %i.abi = load ptr, ptr %6, align 8, !tbaa !454
  %i.abj = load i64, ptr %i.dy, align 8, !tbaa !452 ; 3 uses
  %i.abk = load ptr, ptr %i.aar, align 8, !tbaa !454
  %i.abl = getelementptr inbounds nuw i8, ptr %i.aar, i64 8 ; 3 uses
  %i.abm = load i64, ptr %i.abl, align 8, !tbaa !452 ; 3 uses
  %i.abn = load i64, ptr %i.dz, align 8, !tbaa !463 ; 5 uses
  %i.abo = load ptr, ptr %i.aax, align 8, !tbaa !454 ; 3 uses
  %i.abp = and i64 %i.abb, 1
  %i.abq = icmp sgt i64 %i.abe, 0
  br i1 %i.abq, label %.lr.ph58.i.preheader, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_7ProductIS2_NS_9TransposeIKS2_EELi0EEEEERS2_RKNS3_IT_EE.exit

.lr.ph58.i.preheader:                             ; preds = %bb.ap
  %i.abr = icmp sgt i64 %i.abn, 0
  %xtraiter527 = and i64 %i.abn, 1
  %i.abs = icmp eq i64 %i.abn, 1
  %unroll_iter534 = and i64 %i.abn, 9223372036854775806
  %lcmp.mod531.not = icmp eq i64 %xtraiter527, 0
  %lcmp.mod533 = trunc i64 %i.abn to i1
  br label %.lr.ph58.i

.lr.ph58.i:                                       ; preds = %.lr.ph58.i.preheader, %._crit_edge.i118
  %.03156.i = phi i64 [ %i.afq, %._crit_edge.i118 ], [ 0, %.lr.ph58.i.preheader ] ; 7 uses
  %.03255.i = phi i64 [ %.sroa.speculated.i, %._crit_edge.i118 ], [ 0, %.lr.ph58.i.preheader ] ; 5 uses
  %i.abt = sub nsw i64 %i.abb, %.03255.i          ; 2 uses
  %i.abu = and i64 %i.abt, -2
  %i.abv = add nsw i64 %i.abu, %.03255.i          ; 3 uses
  %i.abw = icmp sgt i64 %.03255.i, 0
  br i1 %i.abw, label %bb.aq, label %.preheader45.i

.preheader45.loopexit.i.loopexit.unr-lcssa:       ; preds = %.lr.ph.i.i.i.i.i.i.i
  %lcmp.mod521.not = icmp eq i64 %xtraiter519, 0
  br i1 %lcmp.mod521.not, label %.preheader45.loopexit.i, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.epil.preheader:              ; preds = %.preheader45.loopexit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.afb, %.preheader45.loopexit.i.loopexit.unr-lcssa ] ; 2 uses
  %.02223.i.i.i.i.i.i.i.epil.init = phi double [ %i.aeg, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.afa, %.preheader45.loopexit.i.loopexit.unr-lcssa ]
  %lcmp.mod523 = trunc i64 %i.aei to i1
  call void @llvm.assume(i1 %lcmp.mod523)
  %i.abx = mul nsw i64 %.01724.i.i.i.i.i.i.i.epil.init, %i.aec
  %i.aby = getelementptr [8 x i8], ptr %i.adx, i64 %i.abx
  %i.abz = load double, ptr %i.aby, align 8, !tbaa !399
  %i.aca = mul nsw i64 %.01724.i.i.i.i.i.i.i.epil.init, %i.aed
  %i.acb = getelementptr [8 x i8], ptr %i.adz, i64 %i.aca
  %i.acc = load double, ptr %i.acb, align 8, !tbaa !399
  %i.acd = fmul double %i.abz, %i.acc
  %i.ace = fadd double %.02223.i.i.i.i.i.i.i.epil.init, %i.acd
  br label %.preheader45.loopexit.i

.preheader45.loopexit.i:                          ; preds = %.lr.ph.i.i.i.i.i.i.i.epil.preheader, %.preheader45.loopexit.i.loopexit.unr-lcssa, %bb.ar, %bb.aq
  %.0.i.i.i.i.i = phi double [ 0.000000e+00, %bb.aq ], [ %i.aeg, %bb.ar ], [ %i.afa, %.preheader45.loopexit.i.loopexit.unr-lcssa ], [ %i.ace, %.lr.ph.i.i.i.i.i.i.i.epil.preheader ]
  %i.acf = load double, ptr %invariant.gep.i, align 8, !tbaa !399
  %i.acg = fsub double %i.acf, %.0.i.i.i.i.i
  store double %i.acg, ptr %invariant.gep.i, align 8, !tbaa !399
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %.preheader45.loopexit.i, %.lr.ph58.i
  %i.ach = icmp sgt i64 %i.abt, 1
  br i1 %i.ach, label %.lr.ph50.i.preheader, label %.preheader.i117

.lr.ph50.i.preheader:                             ; preds = %.preheader45.i
  %i.aci = mul nsw i64 %.03156.i, %i.abb
  %invariant.gep249 = getelementptr [8 x i8], ptr %i.abo, i64 %i.aci
  %i.acj = getelementptr [8 x i8], ptr %i.abk, i64 %.03156.i ; 3 uses
  br i1 %i.abr, label %.lr.ph50.i.us, label %.preheader.i117

.lr.ph50.i.us:                                    ; preds = %.lr.ph50.i.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.us
  %.02949.i.us = phi i64 [ %i.adu, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.us ], [ %.03255.i, %.lr.ph50.i.preheader ] ; 3 uses
  %i.ack = getelementptr inbounds [8 x i8], ptr %i.abi, i64 %.02949.i.us ; 3 uses
  br i1 %i.abs, label %.epil.preheader526, label %.lr.ph50.i.us.new

.lr.ph50.i.us.new:                                ; preds = %.lr.ph50.i.us, %.lr.ph50.i.us.new
  %i.acl = phi <2 x double> [ %i.adg, %.lr.ph50.i.us.new ], [ zeroinitializer, %.lr.ph50.i.us ]
  %.013.i.i.i.i.i.us = phi i64 [ %i.adh, %.lr.ph50.i.us.new ], [ 0, %.lr.ph50.i.us ] ; 4 uses
  %niter535 = phi i64 [ %niter535.next.1, %.lr.ph50.i.us.new ], [ 0, %.lr.ph50.i.us ]
  %i.acm = mul nsw i64 %.013.i.i.i.i.i.us, %i.abj
  %i.acn = getelementptr inbounds [8 x i8], ptr %i.ack, i64 %i.acm
  %i.aco = load <2 x double>, ptr %i.acn, align 1, !tbaa !17
  %i.acp = mul nsw i64 %.013.i.i.i.i.i.us, %i.abm
  %i.acq = getelementptr [8 x i8], ptr %i.acj, i64 %i.acp
  %i.acr = load double, ptr %i.acq, align 8, !tbaa !399
  %i.acs = insertelement <2 x double> poison, double %i.acr, i64 0
  %i.act = shufflevector <2 x double> %i.acs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.acu = fmul <2 x double> %i.aco, %i.act
  %i.acv = fadd <2 x double> %i.acl, %i.acu
  %i.acw = or disjoint i64 %.013.i.i.i.i.i.us, 1  ; 2 uses
  %i.acx = mul nsw i64 %i.acw, %i.abj
  %i.acy = getelementptr inbounds [8 x i8], ptr %i.ack, i64 %i.acx
  %i.acz = load <2 x double>, ptr %i.acy, align 1, !tbaa !17
  %i.ada = mul nsw i64 %i.acw, %i.abm
  %i.adb = getelementptr [8 x i8], ptr %i.acj, i64 %i.ada
  %i.adc = load double, ptr %i.adb, align 8, !tbaa !399
  %i.add = insertelement <2 x double> poison, double %i.adc, i64 0
  %i.ade = shufflevector <2 x double> %i.add, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adf = fmul <2 x double> %i.acz, %i.ade
  %i.adg = fadd <2 x double> %i.acv, %i.adf       ; 3 uses
  %i.adh = add nuw nsw i64 %.013.i.i.i.i.i.us, 2  ; 2 uses
  %niter535.next.1 = add nuw nsw i64 %niter535, 2 ; 2 uses
  %niter535.ncmp.1 = icmp eq i64 %niter535.next.1, %unroll_iter534
  br i1 %niter535.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.us.unr-lcssa, label %.lr.ph50.i.us.new, !llvm.loop !937

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.us.unr-lcssa: ; preds = %.lr.ph50.i.us.new
  br i1 %lcmp.mod531.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.us, label %.epil.preheader526

.epil.preheader526:                               ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.us.unr-lcssa, %.lr.ph50.i.us
  %.epil.init530 = phi <2 x double> [ zeroinitializer, %.lr.ph50.i.us ], [ %i.adg, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.us.unr-lcssa ]
  %.013.i.i.i.i.i.us.epil.init = phi i64 [ 0, %.lr.ph50.i.us ], [ %i.adh, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.us.unr-lcssa ] ; 2 uses
  call void @llvm.assume(i1 %lcmp.mod533)
  %i.adi = mul nsw i64 %.013.i.i.i.i.i.us.epil.init, %i.abj
  %i.adj = getelementptr inbounds [8 x i8], ptr %i.ack, i64 %i.adi
  %i.adk = load <2 x double>, ptr %i.adj, align 1, !tbaa !17
  %i.adl = mul nsw i64 %.013.i.i.i.i.i.us.epil.init, %i.abm
  %i.adm = getelementptr [8 x i8], ptr %i.acj, i64 %i.adl
  %i.adn = load double, ptr %i.adm, align 8, !tbaa !399
  %i.ado = insertelement <2 x double> poison, double %i.adn, i64 0
  %i.adp = shufflevector <2 x double> %i.ado, <2 x double> poison, <2 x i32> zeroinitializer
  %i.adq = fmul <2 x double> %i.adk, %i.adp
  %i.adr = fadd <2 x double> %.epil.init530, %i.adq
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.us

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.us: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.us.unr-lcssa, %.epil.preheader526
  %.lcssa485 = phi <2 x double> [ %i.adg, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.us.unr-lcssa ], [ %i.adr, %.epil.preheader526 ]
  %gep250.us = getelementptr [8 x i8], ptr %invariant.gep249, i64 %.02949.i.us ; 2 uses
  %i.ads = load <2 x double>, ptr %gep250.us, align 16, !tbaa !17
  %i.adt = fsub <2 x double> %i.ads, %.lcssa485
  store <2 x double> %i.adt, ptr %gep250.us, align 16, !tbaa !17
  %i.adu = add nsw i64 %.02949.i.us, 2            ; 2 uses
  %i.adv = icmp slt i64 %i.adu, %i.abv
  br i1 %i.adv, label %.lr.ph50.i.us, label %.preheader.i117, !llvm.loop !938

bb.aq:                                            ; preds = %.lr.ph58.i
  %i.adw = mul nsw i64 %.03156.i, %i.abb
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.abo, i64 %i.adw ; 2 uses
  %i.adx = load ptr, ptr %6, align 8, !tbaa !454, !noalias !939 ; 4 uses
  %i.ady = load ptr, ptr %i.aar, align 8, !tbaa !454, !noalias !942
  %i.adz = getelementptr inbounds nuw [8 x i8], ptr %i.ady, i64 %.03156.i ; 4 uses
  %i.aea = load i64, ptr %i.aay, align 8, !tbaa !463, !noalias !942 ; 4 uses
  %i.aeb = icmp eq i64 %i.aea, 0
  br i1 %i.aeb, label %.preheader45.loopexit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.aec = load i64, ptr %i.dy, align 8, !tbaa !452 ; 3 uses
  %i.aed = load i64, ptr %i.abl, align 8, !tbaa !452 ; 3 uses
  %i.aee = load double, ptr %i.adx, align 8, !tbaa !399
  %i.aef = load double, ptr %i.adz, align 8, !tbaa !399
  %i.aeg = fmul double %i.aee, %i.aef             ; 3 uses
  %i.aeh = icmp sgt i64 %i.aea, 1
  br i1 %i.aeh, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %.preheader45.loopexit.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.ar
  %i.aei = add nsw i64 %i.aea, -1                 ; 3 uses
  %xtraiter519 = and i64 %i.aei, 1
  %i.aej = icmp eq i64 %i.aea, 2
  br i1 %i.aej, label %.lr.ph.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %unroll_iter524 = and i64 %i.aei, -2
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.preheader.new
  %.01724.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.new ], [ %i.afb, %.lr.ph.i.i.i.i.i.i.i ] ; 4 uses
  %.02223.i.i.i.i.i.i.i = phi double [ %i.aeg, %.lr.ph.i.i.i.i.i.i.i.preheader.new ], [ %i.afa, %.lr.ph.i.i.i.i.i.i.i ]
  %niter525 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.new ], [ %niter525.next.1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.aek = mul nsw i64 %.01724.i.i.i.i.i.i.i, %i.aec
  %i.ael = getelementptr [8 x i8], ptr %i.adx, i64 %i.aek
  %i.aem = load double, ptr %i.ael, align 8, !tbaa !399
  %i.aen = mul nsw i64 %.01724.i.i.i.i.i.i.i, %i.aed
  %i.aeo = getelementptr [8 x i8], ptr %i.adz, i64 %i.aen
  %i.aep = load double, ptr %i.aeo, align 8, !tbaa !399
  %i.aeq = fmul double %i.aem, %i.aep
  %i.aer = fadd double %.02223.i.i.i.i.i.i.i, %i.aeq
  %i.aes = add nuw nsw i64 %.01724.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.aet = mul nsw i64 %i.aes, %i.aec
  %i.aeu = getelementptr [8 x i8], ptr %i.adx, i64 %i.aet
  %i.aev = load double, ptr %i.aeu, align 8, !tbaa !399
  %i.aew = mul nsw i64 %i.aes, %i.aed
  %i.aex = getelementptr [8 x i8], ptr %i.adz, i64 %i.aew
  %i.aey = load double, ptr %i.aex, align 8, !tbaa !399
  %i.aez = fmul double %i.aev, %i.aey
  %i.afa = fadd double %i.aer, %i.aez             ; 3 uses
  %i.afb = add nuw nsw i64 %.01724.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter525.next.1 = add nuw nsw i64 %niter525, 2 ; 2 uses
  %niter525.ncmp.1 = icmp eq i64 %niter525.next.1, %unroll_iter524
  br i1 %niter525.ncmp.1, label %.preheader45.loopexit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !945

.preheader.i117:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE24assignPacketByOuterInnerILi16ELi0EDv2_dEEvll.exit.i.loopexit.us, %.lr.ph50.i.preheader, %.preheader45.i
  %i.afc = icmp slt i64 %i.abv, %i.abb
  br i1 %i.afc, label %.lr.ph52.i, label %._crit_edge.i118

.lr.ph52.i:                                       ; preds = %.preheader.i117
  %i.afd = load ptr, ptr %6, align 8, !tbaa !454, !noalias !946
  %i.afe = mul nsw i64 %.03156.i, %i.abb
  %invariant.gep53.i = getelementptr [8 x i8], ptr %i.abo, i64 %i.afe
  %i.aff = load ptr, ptr %i.aar, align 8, !tbaa !454, !noalias !949
  %i.afg = getelementptr inbounds nuw [8 x i8], ptr %i.aff, i64 %.03156.i ; 4 uses
  %i.afh = load i64, ptr %i.aay, align 8, !tbaa !463, !noalias !949 ; 4 uses
  %i.afi = icmp eq i64 %i.afh, 0
  %i.afj = load i64, ptr %i.dy, align 8           ; 3 uses
  %i.afk = icmp sgt i64 %i.afh, 1
  br i1 %i.afi, label %._crit_edge.i118, label %.lr.ph52.i.split

.lr.ph52.i.split:                                 ; preds = %.lr.ph52.i
  %i.afl = load i64, ptr %i.abl, align 8, !tbaa !452 ; 3 uses
  %i.afm = add i64 %i.afh, -1                     ; 3 uses
  %xtraiter536 = and i64 %i.afm, 1
  %i.afn = icmp eq i64 %i.afh, 2
  %unroll_iter541 = and i64 %i.afm, -2
  %lcmp.mod538.not = icmp eq i64 %xtraiter536, 0
  %lcmp.mod540 = trunc i64 %i.afm to i1
  br label %bb.as

._crit_edge.i118:                                 ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i, %.lr.ph52.i, %.preheader.i117
  %i.afo = add nsw i64 %.03255.i, %i.abp
  %i.afp = srem i64 %i.afo, 2
  %.sroa.speculated.i = call i64 @llvm.smin.i64(i64 %i.abb, i64 %i.afp)
  %i.afq = add nuw nsw i64 %.03156.i, 1           ; 2 uses
  %exitcond62.not.i = icmp eq i64 %i.afq, %i.abe
  br i1 %exitcond62.not.i, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_7ProductIS2_NS_9TransposeIKS2_EELi0EEEEERS2_RKNS3_IT_EE.exit, label %.lr.ph58.i, !llvm.loop !952

bb.as:                                            ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i, %.lr.ph52.i.split
  %.051.i = phi i64 [ %i.abv, %.lr.ph52.i.split ], [ %i.agx, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i ] ; 3 uses
  %i.afr = getelementptr inbounds [8 x i8], ptr %i.afd, i64 %.051.i ; 4 uses
  %i.afs = load double, ptr %i.afr, align 8, !tbaa !399
  %i.aft = load double, ptr %i.afg, align 8, !tbaa !399
  %i.afu = fmul double %i.afs, %i.aft             ; 3 uses
  br i1 %i.afk, label %.lr.ph.i.i.i.i.i.i35.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i

.lr.ph.i.i.i.i.i.i35.i.preheader:                 ; preds = %bb.as
  br i1 %i.afn, label %.lr.ph.i.i.i.i.i.i35.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i35.i

.lr.ph.i.i.i.i.i.i35.i:                           ; preds = %.lr.ph.i.i.i.i.i.i35.i.preheader, %.lr.ph.i.i.i.i.i.i35.i
  %.01724.i.i.i.i.i.i36.i = phi i64 [ %i.agm, %.lr.ph.i.i.i.i.i.i35.i ], [ 1, %.lr.ph.i.i.i.i.i.i35.i.preheader ] ; 4 uses
  %.02223.i.i.i.i.i.i37.i = phi double [ %i.agl, %.lr.ph.i.i.i.i.i.i35.i ], [ %i.afu, %.lr.ph.i.i.i.i.i.i35.i.preheader ]
  %niter542 = phi i64 [ %niter542.next.1, %.lr.ph.i.i.i.i.i.i35.i ], [ 0, %.lr.ph.i.i.i.i.i.i35.i.preheader ]
  %i.afv = mul nsw i64 %.01724.i.i.i.i.i.i36.i, %i.afj
  %i.afw = getelementptr [8 x i8], ptr %i.afr, i64 %i.afv
  %i.afx = load double, ptr %i.afw, align 8, !tbaa !399
  %i.afy = mul nsw i64 %.01724.i.i.i.i.i.i36.i, %i.afl
  %i.afz = getelementptr [8 x i8], ptr %i.afg, i64 %i.afy
  %i.aga = load double, ptr %i.afz, align 8, !tbaa !399
  %i.agb = fmul double %i.afx, %i.aga
  %i.agc = fadd double %.02223.i.i.i.i.i.i37.i, %i.agb
  %i.agd = add nuw nsw i64 %.01724.i.i.i.i.i.i36.i, 1 ; 2 uses
  %i.age = mul nsw i64 %i.agd, %i.afj
  %i.agf = getelementptr [8 x i8], ptr %i.afr, i64 %i.age
  %i.agg = load double, ptr %i.agf, align 8, !tbaa !399
  %i.agh = mul nsw i64 %i.agd, %i.afl
  %i.agi = getelementptr [8 x i8], ptr %i.afg, i64 %i.agh
  %i.agj = load double, ptr %i.agi, align 8, !tbaa !399
  %i.agk = fmul double %i.agg, %i.agj
  %i.agl = fadd double %i.agc, %i.agk             ; 3 uses
  %i.agm = add nuw nsw i64 %.01724.i.i.i.i.i.i36.i, 2 ; 2 uses
  %niter542.next.1 = add nuw nsw i64 %niter542, 2 ; 2 uses
  %niter542.ncmp.1 = icmp eq i64 %niter542.next.1, %unroll_iter541
  br i1 %niter542.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i35.i, !llvm.loop !945

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i35.i
  br i1 %lcmp.mod538.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i, label %.lr.ph.i.i.i.i.i.i35.i.epil.preheader

.lr.ph.i.i.i.i.i.i35.i.epil.preheader:            ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i35.i.preheader
  %.01724.i.i.i.i.i.i36.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i35.i.preheader ], [ %i.agm, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.unr-lcssa ] ; 2 uses
  %.02223.i.i.i.i.i.i37.i.epil.init = phi double [ %i.afu, %.lr.ph.i.i.i.i.i.i35.i.preheader ], [ %i.agl, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.unr-lcssa ]
  call void @llvm.assume(i1 %lcmp.mod540)
  %i.agn = mul nsw i64 %.01724.i.i.i.i.i.i36.i.epil.init, %i.afj
  %i.ago = getelementptr [8 x i8], ptr %i.afr, i64 %i.agn
  %i.agp = load double, ptr %i.ago, align 8, !tbaa !399
  %i.agq = mul nsw i64 %.01724.i.i.i.i.i.i36.i.epil.init, %i.afl
  %i.agr = getelementptr [8 x i8], ptr %i.afg, i64 %i.agq
  %i.ags = load double, ptr %i.agr, align 8, !tbaa !399
  %i.agt = fmul double %i.agp, %i.ags
  %i.agu = fadd double %.02223.i.i.i.i.i.i37.i.epil.init, %i.agt
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i: ; preds = %.lr.ph.i.i.i.i.i.i35.i.epil.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.unr-lcssa, %bb.as
  %.0.i.i.i.i34.i = phi double [ %i.afu, %bb.as ], [ %i.agl, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductIS4_NS_9TransposeIKS4_EELi1EEEEENS0_13sub_assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit39.i.loopexit.unr-lcssa ], [ %i.agu, %.lr.ph.i.i.i.i.i.i35.i.epil.preheader ]
  %gep54.i = getelementptr [8 x i8], ptr %invariant.gep53.i, i64 %.051.i ; 2 uses
  %i.agv = load double, ptr %gep54.i, align 8, !tbaa !399
  %i.agw = fsub double %i.agv, %.0.i.i.i.i34.i
  store double %i.agw, ptr %gep54.i, align 8, !tbaa !399
  %i.agx = add nsw i64 %.051.i, 1                 ; 2 uses
  %i.agy = icmp slt i64 %i.agx, %i.abb
  br i1 %i.agy, label %bb.as, label %._crit_edge.i118, !llvm.loop !953

bb.at:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #38
  store double -1.000000e+00, ptr %i.b, align 8, !tbaa !399
  invoke void @_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS3_EENS_10DenseShapeES7_Li8EE13scaleAndAddToIS3_EEvRT_RS5_RKS6_RKd(ptr noundef nonnull align 8 dereferenceable(24) %i.aax, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.ed, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc104 unwind label %bb.au

.noexc104:                                        ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  br label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_7ProductIS2_NS_9TransposeIKS2_EELi0EEEEERS2_RKNS3_IT_EE.exit

_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_7ProductIS2_NS_9TransposeIKS2_EELi0EEEEERS2_RKNS3_IT_EE.exit: ; preds = %._crit_edge.i118, %.noexc104, %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  %i.agz = getelementptr inbounds nuw i8, ptr %.sroa.0159.0253, i64 16 ; 2 uses
  %i.aha = load ptr, ptr %i.ms, align 8, !tbaa !442
  %.not223 = icmp eq ptr %i.agz, %i.aha
  br i1 %.not223, label %._crit_edge255, label %.lr.ph254, !llvm.loop !954

bb.au:                                            ; preds = %bb.at
  %i.ahb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %.body115

._crit_edge255:                                   ; preds = %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEmIINS_7ProductIS2_NS_9TransposeIKS2_EELi0EEEEERS2_RKNS3_IT_EE.exit, %_ZSt11lower_boundIN9__gnu_cxx17__normal_iteratorIPKN3g2o20SparseBlockMatrixCCSIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE8RowBlockESt6vectorIS8_SaIS8_EEEES8_ET_SF_SF_RKT0_.exit
  %i.ahc = load ptr, ptr %6, align 8, !tbaa !454
  call void @free(ptr noundef %i.ahc) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  %i.ahd = getelementptr inbounds nuw i8, ptr %.sroa.0176.0257, i64 16 ; 2 uses
  %i.ahe = load ptr, ptr %i.ms, align 8, !tbaa !442
  %.not222 = icmp eq ptr %i.ahd, %i.ahe
  br i1 %.not222, label %._crit_edge260, label %.lr.ph259, !llvm.loop !955

.body115:                                         ; preds = %bb.an, %bb.au, %.loopexit, %.loopexit.split-lp
  %.pn83.pn.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ], [ %i.ahb, %bb.au ], [ %i.aav, %bb.an ]
  %i.ahf = load ptr, ptr %6, align 8, !tbaa !454
  call void @free(ptr noundef %i.ahf) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %bb.av

bb.av:                                            ; preds = %.body115, %.body
  %.pn88 = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %.pn83.pn.pn.pn, %.body115 ]
  %i.ahg = load ptr, ptr %4, align 8, !tbaa !666
  call void @free(ptr noundef %i.ahg) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %common.resume

._crit_edge267:                                   ; preds = %scalar.ph446.prol.loopexit, %scalar.ph446, %middle.block457, %._crit_edge263
  %i.ahh = load ptr, ptr @_ZN3g2o18G2OBatchStatistics12_globalStatsE, align 8, !tbaa !397 ; 6 uses
  %.not81 = icmp eq ptr %i.ahh, null              ; 2 uses
  br i1 %.not81, label %bb.ax, label %bb.aw

scalar.ph446:                                     ; preds = %scalar.ph446.prol.loopexit, %scalar.ph446
  %indvars.iv295 = phi i64 [ %indvars.iv.next296.3, %scalar.ph446 ], [ %indvars.iv295.unr, %scalar.ph446.prol.loopexit ] ; 6 uses
  %i.ahi = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv295
  %i.ahj = load double, ptr %i.ahi, align 8, !tbaa !399
  %i.ahk = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv295 ; 2 uses
  %i.ahl = load double, ptr %i.ahk, align 8, !tbaa !399
  %i.ahm = fsub double %i.ahl, %i.ahj
  store double %i.ahm, ptr %i.ahk, align 8, !tbaa !399
  %indvars.iv.next296 = add nuw nsw i64 %indvars.iv295, 1 ; 2 uses
  %i.ahn = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next296
  %i.aho = load double, ptr %i.ahn, align 8, !tbaa !399
  %i.ahp = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.next296 ; 2 uses
  %i.ahq = load double, ptr %i.ahp, align 8, !tbaa !399
  %i.ahr = fsub double %i.ahq, %i.aho
  store double %i.ahr, ptr %i.ahp, align 8, !tbaa !399
  %indvars.iv.next296.1 = add nuw nsw i64 %indvars.iv295, 2 ; 2 uses
  %i.ahs = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next296.1
  %i.aht = load double, ptr %i.ahs, align 8, !tbaa !399
  %i.ahu = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.next296.1 ; 2 uses
  %i.ahv = load double, ptr %i.ahu, align 8, !tbaa !399
  %i.ahw = fsub double %i.ahv, %i.aht
  store double %i.ahw, ptr %i.ahu, align 8, !tbaa !399
  %indvars.iv.next296.2 = add nuw nsw i64 %indvars.iv295, 3 ; 2 uses
  %i.ahx = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %indvars.iv.next296.2
  %i.ahy = load double, ptr %i.ahx, align 8, !tbaa !399
  %i.ahz = getelementptr inbounds nuw [8 x i8], ptr %i.eo, i64 %indvars.iv.next296.2 ; 2 uses
  %i.aia = load double, ptr %i.ahz, align 8, !tbaa !399
  %i.aib = fsub double %i.aia, %i.ahy
  store double %i.aib, ptr %i.ahz, align 8, !tbaa !399
  %indvars.iv.next296.3 = add nuw nsw i64 %indvars.iv295, 4 ; 2 uses
  %exitcond298.not.3 = icmp eq i64 %indvars.iv.next296.3, %wide.trip.count
  br i1 %exitcond298.not.3, label %._crit_edge267, label %scalar.ph446, !llvm.loop !956

bb.aw:                                            ; preds = %._crit_edge267
  %i.aic = call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.aid = fsub double %i.aic, %i.h
  %i.aie = getelementptr inbounds nuw i8, ptr %i.ahh, i64 56
  store double %i.aid, ptr %i.aie, align 8, !tbaa !957
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %._crit_edge267
  %i.aif = call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.aig = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aih = load ptr, ptr %i.aig, align 8, !tbaa !84 ; 2 uses
  %i.aii = load ptr, ptr %i.aj, align 8, !tbaa !416
  %i.aij = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aik = load ptr, ptr %i.aij, align 8, !tbaa !860
  %i.ail = load ptr, ptr %i.ee, align 8, !tbaa !553
  %i.aim = load ptr, ptr %i.aih, align 8, !tbaa !29
  %i.ain = getelementptr inbounds nuw i8, ptr %i.aim, i64 24
  %i.aio = load ptr, ptr %i.ain, align 8
  %i.aip = call noundef zeroext i1 %i.aio(ptr noundef nonnull align 8 dereferenceable(9) %i.aih, ptr noundef nonnull align 8 dereferenceable(73) %i.aii, ptr noundef %i.aik, ptr noundef %i.ail)
  br i1 %.not81, label %bb.bb, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.aiq = call noundef double @_ZN3g2o18get_monotonic_timeEv()
  %i.air = fsub double %i.aiq, %i.aif
  %i.ais = getelementptr inbounds nuw i8, ptr %i.ahh, i64 88
  store double %i.air, ptr %i.ais, align 8, !tbaa !861
  %i.ait = load ptr, ptr %i.bj, align 8, !tbaa !416 ; 2 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 24
  %i.aiv = getelementptr inbounds nuw i8, ptr %i.ait, i64 32
  %i.aiw = load ptr, ptr %i.aiv, align 8, !tbaa !433 ; 2 uses
  %i.aix = load ptr, ptr %i.aiu, align 8, !tbaa !435
  %.not.i105 = icmp eq ptr %i.aiw, %i.aix
  br i1 %.not.i105, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit106, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.aiy = getelementptr inbounds i8, ptr %i.aiw, i64 -4
  %i.aiz = load i32, ptr %i.aiy, align 4, !tbaa !32
  %i.aja = sext i32 %i.aiz to i64
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit106

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit106: ; preds = %bb.ay, %bb.az
  %i.ajb = phi i64 [ %i.aja, %bb.az ], [ 0, %bb.ay ] ; 2 uses
  %i.ajc = getelementptr inbounds nuw i8, ptr %i.ahh, i64 136
  store i64 %i.ajb, ptr %i.ajc, align 8, !tbaa !862
  %i.ajd = load ptr, ptr %i.dg, align 8, !tbaa !416 ; 2 uses
  %i.aje = getelementptr inbounds nuw i8, ptr %i.ajd, i64 24
  %i.ajf = getelementptr inbounds nuw i8, ptr %i.ajd, i64 32
  %i.ajg = load ptr, ptr %i.ajf, align 8, !tbaa !433 ; 2 uses
  %i.ajh = load ptr, ptr %i.aje, align 8, !tbaa !435
  %.not.i107 = icmp eq ptr %i.ajg, %i.ajh
  br i1 %.not.i107, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit108, label %bb.ba

bb.ba:                                            ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit106
  %i.aji = getelementptr inbounds i8, ptr %i.ajg, i64 -4
  %i.ajj = load i32, ptr %i.aji, align 4, !tbaa !32
  %i.ajk = sext i32 %i.ajj to i64
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit108

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit108: ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit106, %bb.ba
  %i.ajl = phi i64 [ %i.ajk, %bb.ba ], [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit106 ] ; 2 uses
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ahh, i64 144
  store i64 %i.ajl, ptr %i.ajm, align 8, !tbaa !958
  %i.ajn = add nsw i64 %i.ajl, %i.ajb
  %i.ajo = getelementptr inbounds nuw i8, ptr %i.ahh, i64 128
  store i64 %i.ajn, ptr %i.ajo, align 8, !tbaa !863
  br label %bb.bb

bb.bb:                                            ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit108, %bb.ax
  br i1 %i.aip, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.ajp = load ptr, ptr %i.aij, align 8, !tbaa !860 ; 8 uses
  %i.ajq = load ptr, ptr %i.da, align 8, !tbaa !553 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #38
  %i.ajr = load i32, ptr %i.dc, align 8, !tbaa !802 ; 4 uses
  %i.ajs = sext i32 %i.ajr to i64                 ; 3 uses
  %i.ajt = getelementptr inbounds [8 x i8], ptr %i.ajp, i64 %i.ajs ; 2 uses
  store ptr %i.ajt, ptr %i.c, align 8, !tbaa !553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #38
  %i.aju = getelementptr inbounds [8 x i8], ptr %i.ajq, i64 %i.ajs ; 2 uses
  store ptr %i.aju, ptr %i.d, align 8, !tbaa !553
  %i.ajv = load ptr, ptr %i.eg, align 8, !tbaa !858
  %i.ajw = getelementptr inbounds [8 x i8], ptr %i.ajv, i64 %i.ajs
  %i.ajx = icmp sgt i32 %i.ajr, 0
  br i1 %i.ajx, label %.lr.ph270.preheader, label %._crit_edge271

end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal10redux_implINS0_13scalar_max_opIddLi0EEENS0_15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEEELi0ELi0EE3runISG_EEdRKSH_RKS3_RKT_:bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !452, !noalias !1170 ; 30 uses
  %i.d = icmp eq i64 %i.c, 0                      ; 2 uses
  br i1 %i.d, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !454  ; 11 uses
  %i.f = sdiv i64 %i.c, 4
  %i.g = shl nsw i64 %i.f, 2                      ; 3 uses
  %i.h = sdiv i64 %i.c, 2
  %i.i = shl nsw i64 %i.h, 1                      ; 6 uses
  %.off.i.i.i.i.i.i.i = add i64 %i.c, 1
  %.not.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i, 3
  br i1 %.not.i.i.i.i.i.i.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load <2 x double>, ptr %i.e, align 1, !tbaa !17
  %i.k = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.j) ; 3 uses
  %i.l = icmp sgt i64 %i.c, 3
  br i1 %i.l, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.e, i64 16
  %i.n = load <2 x double>, ptr %i.m, align 1, !tbaa !17
  %i.o = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.n) ; 2 uses
  %i.p = icmp samesign ugt i64 %i.c, 7
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.d
  %.075.lcssa.i.i.i.i.i.i.i = phi <2 x double> [ %i.o, %bb.d ], [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i.i.i = phi <2 x double> [ %i.k, %bb.d ], [ %i.v, %.lr.ph.i.i.i.i.i.i.i ]
  %i.q = fadd <2 x double> %.075.lcssa.i.i.i.i.i.i.i, %.072.lcssa.i.i.i.i.i.i.i ; 2 uses
  %i.r = icmp sgt i64 %i.i, %i.g
  br i1 %i.r, label %bb.e, label %bb.f

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i
  %.05480.i.i.i.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ 4, %bb.d ] ; 3 uses
  %.054.in79.i.i.i.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ 0, %bb.d ]
  %.07278.i.i.i.i.i.i.i = phi <2 x double> [ %i.v, %.lr.ph.i.i.i.i.i.i.i ], [ %i.k, %bb.d ]
  %.07577.i.i.i.i.i.i.i = phi <2 x double> [ %i.aa, %.lr.ph.i.i.i.i.i.i.i ], [ %i.o, %bb.d ]
  %i.s = getelementptr [8 x i8], ptr %i.e, i64 %.05480.i.i.i.i.i.i.i
  %i.t = load <2 x double>, ptr %i.s, align 1, !tbaa !17
  %i.u = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.t)
  %i.v = fadd <2 x double> %.07278.i.i.i.i.i.i.i, %i.u ; 2 uses
  %i.w = getelementptr [8 x i8], ptr %i.e, i64 %.054.in79.i.i.i.i.i.i.i
  %i.x = getelementptr i8, ptr %i.w, i64 48
  %i.y = load <2 x double>, ptr %i.x, align 1, !tbaa !17
  %i.z = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.y)
  %i.aa = fadd <2 x double> %.07577.i.i.i.i.i.i.i, %i.z ; 2 uses
  %.054.i.i.i.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.ab = icmp slt i64 %.054.i.i.i.i.i.i.i, %i.g
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, !llvm.loop !1173

bb.e:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ac = getelementptr [8 x i8], ptr %i.e, i64 %i.g
  %i.ad = load <2 x double>, ptr %i.ac, align 1, !tbaa !17
  %i.ae = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.ad)
  %i.af = fadd <2 x double> %i.q, %i.ae
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i.i.i.i.i, %bb.c
  %.274.i.i.i.i.i.i.i = phi <2 x double> [ %i.k, %bb.c ], [ %i.af, %bb.e ], [ %i.q, %._crit_edge.i.i.i.i.i.i.i ] ; 2 uses
  %shift = shufflevector <2 x double> %.274.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %.274.i.i.i.i.i.i.i, %shift
  %i.ag = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 3 uses
  %i.ah = icmp slt i64 %i.i, %i.c
  br i1 %i.ah, label %.lr.ph85.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit

.lr.ph85.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.f
  %i.ai = sub i64 %i.c, %i.i
  %xtraiter = and i64 %i.ai, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph85.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph85.i.i.i.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.i.prol = phi i64 [ %i.an, %.lr.ph85.i.i.i.i.i.i.i.prol ], [ %i.i, %.lr.ph85.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.i.i.i.prol = phi double [ %i.am, %.lr.ph85.i.i.i.i.i.i.i.prol ], [ %i.ag, %.lr.ph85.i.i.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.i.preheader ]
  %i.aj = getelementptr [8 x i8], ptr %i.e, i64 %.05283.i.i.i.i.i.i.i.prol
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !399
  %i.al = tail call noundef double @llvm.fabs.f64(double %i.ak)
  %i.am = fadd double %.182.i.i.i.i.i.i.i.prol, %i.al ; 3 uses
  %i.an = add nsw i64 %.05283.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.prol, !llvm.loop !1174

.lr.ph85.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph85.i.i.i.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.i.preheader
  %.lcssa169.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.i.preheader ], [ %i.am, %.lr.ph85.i.i.i.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.i.unr = phi i64 [ %i.i, %.lr.ph85.i.i.i.i.i.i.i.preheader ], [ %i.an, %.lr.ph85.i.i.i.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.i.unr = phi double [ %i.ag, %.lr.ph85.i.i.i.i.i.i.i.preheader ], [ %i.am, %.lr.ph85.i.i.i.i.i.i.i.prol ]
  %i.ao = sub i64 %i.i, %i.c
  %i.ap = icmp ugt i64 %i.ao, -4
  br i1 %i.ap, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit, label %.lr.ph85.i.i.i.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i:                           ; preds = %.lr.ph85.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i
  %.05283.i.i.i.i.i.i.i = phi i64 [ %i.bj, %.lr.ph85.i.i.i.i.i.i.i ], [ %.05283.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i.i.i = phi double [ %i.bi, %.lr.ph85.i.i.i.i.i.i.i ], [ %.182.i.i.i.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i.prol.loopexit ]
  %i.aq = getelementptr [8 x i8], ptr %i.e, i64 %.05283.i.i.i.i.i.i.i
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !399
  %i.as = tail call noundef double @llvm.fabs.f64(double %i.ar)
  %i.at = fadd double %.182.i.i.i.i.i.i.i, %i.as
  %i.au = getelementptr [8 x i8], ptr %i.e, i64 %.05283.i.i.i.i.i.i.i
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %i.aw = load double, ptr %i.av, align 8, !tbaa !399
  %i.ax = tail call noundef double @llvm.fabs.f64(double %i.aw)
  %i.ay = fadd double %i.at, %i.ax
  %i.az = getelementptr [8 x i8], ptr %i.e, i64 %.05283.i.i.i.i.i.i.i
  %i.ba = getelementptr i8, ptr %i.az, i64 16
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !399
  %i.bc = tail call noundef double @llvm.fabs.f64(double %i.bb)
  %i.bd = fadd double %i.ay, %i.bc
  %i.be = getelementptr [8 x i8], ptr %i.e, i64 %.05283.i.i.i.i.i.i.i
  %i.bf = getelementptr i8, ptr %i.be, i64 24
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !399
  %i.bh = tail call noundef double @llvm.fabs.f64(double %i.bg)
  %i.bi = fadd double %i.bd, %i.bh                ; 2 uses
  %i.bj = add nsw i64 %.05283.i.i.i.i.i.i.i, 4    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bj, %i.c
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit, label %.lr.ph85.i.i.i.i.i.i.i, !llvm.loop !1175

bb.g:                                             ; preds = %bb.b
  %i.bk = load double, ptr %i.e, align 8, !tbaa !399
  %i.bl = tail call noundef double @llvm.fabs.f64(double %i.bk)
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit: ; preds = %.lr.ph85.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i, %bb.a, %bb.f, %bb.g
  %.0.i.i.i.i.i = phi double [ 0.000000e+00, %bb.a ], [ %i.ag, %bb.f ], [ %i.bl, %bb.g ], [ %.lcssa169.unr, %.lr.ph85.i.i.i.i.i.i.i.prol.loopexit ], [ %i.bi, %.lr.ph85.i.i.i.i.i.i.i ] ; 9 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !1167, !nonnull !432, !align !451
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !463 ; 9 uses
  %i.bq = icmp sgt i64 %i.bp, 1
  br i1 %i.bq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit
  %i.br = sdiv i64 %i.c, 4
  %i.bs = shl nsw i64 %i.br, 2                    ; 3 uses
  %i.bt = sdiv i64 %i.c, 2
  %i.bu = shl nsw i64 %i.bt, 1                    ; 10 uses
  %i.bv = icmp sgt i64 %i.c, 3
  %i.bw = icmp samesign ugt i64 %i.c, 7
  %i.bx = icmp sgt i64 %i.bu, %i.bs
  %i.by = icmp slt i64 %i.bu, %i.c                ; 2 uses
  br i1 %i.d, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.preheader, label %.lr.ph.split

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.preheader: ; preds = %.lr.ph
  %i.bz = add nsw i64 %i.bp, -1                   ; 2 uses
  %i.ca = add nsw i64 %i.bp, -2
  %xtraiter188 = and i64 %i.bz, 7                 ; 3 uses
  %i.cb = icmp ult i64 %i.ca, 7
  br i1 %i.cb, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil.preheader, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.preheader.new

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.preheader.new: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.preheader
  %unroll_iter192 = and i64 %i.bz, -8
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.preheader.new
  %.05864.us = phi double [ %.0.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.preheader.new ], [ %i.cd, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us ] ; 2 uses
  %niter193 = phi i64 [ 0, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.preheader.new ], [ %niter193.next.7, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us ]
  %i.cc = fcmp olt double %.05864.us, 0.000000e+00
  %i.cd = select i1 %i.cc, double 0.000000e+00, double %.05864.us ; 3 uses
  %niter193.next.7 = add i64 %niter193, 8         ; 2 uses
  %niter193.ncmp.7 = icmp eq i64 %niter193.next.7, %unroll_iter192
  br i1 %niter193.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us, !llvm.loop !1176

.lr.ph.split:                                     ; preds = %.lr.ph
  %.off.i.i.i.i.i.i.i18 = add i64 %i.c, 1
  %.not.i.i.i.i.i.i.i19 = icmp ult i64 %.off.i.i.i.i.i.i.i18, 3
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !454 ; 8 uses
  br i1 %.not.i.i.i.i.i.i.i19, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.preheader, label %.lr.ph.split.split

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.preheader: ; preds = %.lr.ph.split
  %i.cf = add nsw i64 %i.bp, -1                   ; 3 uses
  %xtraiter182 = and i64 %i.cf, 1
  %i.cg = icmp eq i64 %i.bp, 2
  br i1 %i.cg, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.epil.preheader, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.preheader.new

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.preheader.new: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.preheader
  %unroll_iter186 = and i64 %i.cf, -2
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.preheader.new
  %.01765.us66 = phi i64 [ 1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.preheader.new ], [ %i.cu, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68 ] ; 3 uses
  %.05864.us67 = phi double [ %.0.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.preheader.new ], [ %i.ct, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68 ] ; 2 uses
  %niter187 = phi i64 [ 0, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.preheader.new ], [ %niter187.next.1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68 ]
  %i.ch = mul nsw i64 %.01765.us66, %i.c
  %i.ci = getelementptr [8 x i8], ptr %i.ce, i64 %i.ch
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !399
  %i.ck = tail call noundef double @llvm.fabs.f64(double %i.cj) ; 2 uses
  %i.cl = fcmp olt double %.05864.us67, %i.ck
  %i.cm = select i1 %i.cl, double %i.ck, double %.05864.us67 ; 2 uses
  %i.cn = add nuw nsw i64 %.01765.us66, 1
  %i.co = mul nsw i64 %i.cn, %i.c
  %i.cp = getelementptr [8 x i8], ptr %i.ce, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !399
  %i.cr = tail call noundef double @llvm.fabs.f64(double %i.cq) ; 2 uses
  %i.cs = fcmp olt double %i.cm, %i.cr
  %i.ct = select i1 %i.cs, double %i.cr, double %i.cm ; 3 uses
  %i.cu = add nuw nsw i64 %.01765.us66, 2         ; 2 uses
  %niter187.next.1 = add nuw nsw i64 %niter187, 2 ; 2 uses
  %niter187.ncmp.1 = icmp eq i64 %niter187.next.1, %unroll_iter186
  br i1 %niter187.ncmp.1, label %._crit_edge.loopexit157.unr-lcssa, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68, !llvm.loop !1176

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  br i1 %i.bv, label %.lr.ph.split.split.split.us.preheader, label %.lr.ph.split.split.split

.lr.ph.split.split.split.us.preheader:            ; preds = %.lr.ph.split.split
  %i.cv = sub nsw i64 %i.c, %i.bu
  %xtraiter179 = and i64 %i.cv, 3                 ; 2 uses
  %lcmp.mod180.not = icmp eq i64 %xtraiter179, 0
  %i.cw = sub nsw i64 %i.bu, %i.c
  %i.cx = icmp ugt i64 %i.cw, -4
  br label %.lr.ph.split.split.split.us

.lr.ph.split.split.split.us:                      ; preds = %.lr.ph.split.split.split.us.preheader, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us74
  %.01765.us72 = phi i64 [ %i.ew, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us74 ], [ 1, %.lr.ph.split.split.split.us.preheader ] ; 2 uses
  %.05864.us73 = phi double [ %i.ev, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us74 ], [ %.0.i.i.i.i.i, %.lr.ph.split.split.split.us.preheader ] ; 2 uses
  %i.cy = mul nuw nsw i64 %.01765.us72, %i.c
  %i.cz = getelementptr [8 x i8], ptr %i.ce, i64 %i.cy ; 10 uses
  %i.da = load <2 x double>, ptr %i.cz, align 1, !tbaa !17
  %i.db = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.da) ; 2 uses
  %i.dc = getelementptr i8, ptr %i.cz, i64 16
  %i.dd = load <2 x double>, ptr %i.dc, align 1, !tbaa !17
  %i.de = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dd) ; 2 uses
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i.i.i29.us, label %._crit_edge.i.i.i.i.i.i.i26.us

.lr.ph.i.i.i.i.i.i.i29.us:                        ; preds = %.lr.ph.split.split.split.us, %.lr.ph.i.i.i.i.i.i.i29.us
  %.05480.i.i.i.i.i.i.i30.us = phi i64 [ %.054.i.i.i.i.i.i.i34.us, %.lr.ph.i.i.i.i.i.i.i29.us ], [ 4, %.lr.ph.split.split.split.us ] ; 3 uses
  %.054.in79.i.i.i.i.i.i.i31.us = phi i64 [ %.05480.i.i.i.i.i.i.i30.us, %.lr.ph.i.i.i.i.i.i.i29.us ], [ 0, %.lr.ph.split.split.split.us ]
  %.07278.i.i.i.i.i.i.i32.us = phi <2 x double> [ %i.di, %.lr.ph.i.i.i.i.i.i.i29.us ], [ %i.db, %.lr.ph.split.split.split.us ]
  %.07577.i.i.i.i.i.i.i33.us = phi <2 x double> [ %i.dn, %.lr.ph.i.i.i.i.i.i.i29.us ], [ %i.de, %.lr.ph.split.split.split.us ]
  %i.df = getelementptr [8 x i8], ptr %i.cz, i64 %.05480.i.i.i.i.i.i.i30.us
  %i.dg = load <2 x double>, ptr %i.df, align 1, !tbaa !17
  %i.dh = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dg)
  %i.di = fadd <2 x double> %.07278.i.i.i.i.i.i.i32.us, %i.dh ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %i.cz, i64 %.054.in79.i.i.i.i.i.i.i31.us
  %i.dk = getelementptr i8, ptr %i.dj, i64 48
  %i.dl = load <2 x double>, ptr %i.dk, align 1, !tbaa !17
  %i.dm = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dl)
  %i.dn = fadd <2 x double> %.07577.i.i.i.i.i.i.i33.us, %i.dm ; 2 uses
  %.054.i.i.i.i.i.i.i34.us = add nuw nsw i64 %.05480.i.i.i.i.i.i.i30.us, 4 ; 2 uses
  %i.do = icmp slt i64 %.054.i.i.i.i.i.i.i34.us, %i.bs
  br i1 %i.do, label %.lr.ph.i.i.i.i.i.i.i29.us, label %._crit_edge.i.i.i.i.i.i.i26.us, !llvm.loop !1173

._crit_edge.i.i.i.i.i.i.i26.us:                   ; preds = %.lr.ph.i.i.i.i.i.i.i29.us, %.lr.ph.split.split.split.us
  %.075.lcssa.i.i.i.i.i.i.i27.us = phi <2 x double> [ %i.de, %.lr.ph.split.split.split.us ], [ %i.dn, %.lr.ph.i.i.i.i.i.i.i29.us ]
  %.072.lcssa.i.i.i.i.i.i.i28.us = phi <2 x double> [ %i.db, %.lr.ph.split.split.split.us ], [ %i.di, %.lr.ph.i.i.i.i.i.i.i29.us ]
  %i.dp = fadd <2 x double> %.075.lcssa.i.i.i.i.i.i.i27.us, %.072.lcssa.i.i.i.i.i.i.i28.us ; 2 uses
  br i1 %i.bx, label %bb.h, label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i26.us
  %i.dq = getelementptr [8 x i8], ptr %i.cz, i64 %i.bs
  %i.dr = load <2 x double>, ptr %i.dq, align 1, !tbaa !17
  %i.ds = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dr)
  %i.dt = fadd <2 x double> %i.dp, %i.ds
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge.i.i.i.i.i.i.i26.us
  %.274.i.i.i.i.i.i.i20.us = phi <2 x double> [ %i.dp, %._crit_edge.i.i.i.i.i.i.i26.us ], [ %i.dt, %bb.h ] ; 2 uses
  %shift148 = shufflevector <2 x double> %.274.i.i.i.i.i.i.i20.us, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop149 = fadd <2 x double> %.274.i.i.i.i.i.i.i20.us, %shift148
  %i.du = extractelement <2 x double> %foldExtExtBinop149, i64 0 ; 3 uses
  br i1 %i.by, label %.lr.ph85.i.i.i.i.i.i.i22.us.preheader, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us74

.lr.ph85.i.i.i.i.i.i.i22.us.preheader:            ; preds = %bb.i
  br i1 %lcmp.mod180.not, label %.lr.ph85.i.i.i.i.i.i.i22.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i22.us.prol

.lr.ph85.i.i.i.i.i.i.i22.us.prol:                 ; preds = %.lr.ph85.i.i.i.i.i.i.i22.us.preheader, %.lr.ph85.i.i.i.i.i.i.i22.us.prol
  %.05283.i.i.i.i.i.i.i23.us.prol = phi i64 [ %i.dz, %.lr.ph85.i.i.i.i.i.i.i22.us.prol ], [ %i.bu, %.lr.ph85.i.i.i.i.i.i.i22.us.preheader ] ; 2 uses
  %.182.i.i.i.i.i.i.i24.us.prol = phi double [ %i.dy, %.lr.ph85.i.i.i.i.i.i.i22.us.prol ], [ %i.du, %.lr.ph85.i.i.i.i.i.i.i22.us.preheader ]
  %prol.iter181 = phi i64 [ %prol.iter181.next, %.lr.ph85.i.i.i.i.i.i.i22.us.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.i22.us.preheader ]
  %i.dv = getelementptr [8 x i8], ptr %i.cz, i64 %.05283.i.i.i.i.i.i.i23.us.prol
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !399
  %i.dx = tail call noundef double @llvm.fabs.f64(double %i.dw)
  %i.dy = fadd double %.182.i.i.i.i.i.i.i24.us.prol, %i.dx ; 3 uses
  %i.dz = add nuw nsw i64 %.05283.i.i.i.i.i.i.i23.us.prol, 1 ; 2 uses
  %prol.iter181.next = add i64 %prol.iter181, 1   ; 2 uses
  %prol.iter181.cmp.not = icmp eq i64 %prol.iter181.next, %xtraiter179
  br i1 %prol.iter181.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i22.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i22.us.prol, !llvm.loop !1177

.lr.ph85.i.i.i.i.i.i.i22.us.prol.loopexit:        ; preds = %.lr.ph85.i.i.i.i.i.i.i22.us.prol, %.lr.ph85.i.i.i.i.i.i.i22.us.preheader
  %.lcssa162.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.i22.us.preheader ], [ %i.dy, %.lr.ph85.i.i.i.i.i.i.i22.us.prol ]
  %.05283.i.i.i.i.i.i.i23.us.unr = phi i64 [ %i.bu, %.lr.ph85.i.i.i.i.i.i.i22.us.preheader ], [ %i.dz, %.lr.ph85.i.i.i.i.i.i.i22.us.prol ]
  %.182.i.i.i.i.i.i.i24.us.unr = phi double [ %i.du, %.lr.ph85.i.i.i.i.i.i.i22.us.preheader ], [ %i.dy, %.lr.ph85.i.i.i.i.i.i.i22.us.prol ]
  br i1 %i.cx, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us74, label %.lr.ph85.i.i.i.i.i.i.i22.us

.lr.ph85.i.i.i.i.i.i.i22.us:                      ; preds = %.lr.ph85.i.i.i.i.i.i.i22.us.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i22.us
  %.05283.i.i.i.i.i.i.i23.us = phi i64 [ %i.et, %.lr.ph85.i.i.i.i.i.i.i22.us ], [ %.05283.i.i.i.i.i.i.i23.us.unr, %.lr.ph85.i.i.i.i.i.i.i22.us.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i.i.i24.us = phi double [ %i.es, %.lr.ph85.i.i.i.i.i.i.i22.us ], [ %.182.i.i.i.i.i.i.i24.us.unr, %.lr.ph85.i.i.i.i.i.i.i22.us.prol.loopexit ]
  %i.ea = getelementptr [8 x i8], ptr %i.cz, i64 %.05283.i.i.i.i.i.i.i23.us
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !399
  %i.ec = tail call noundef double @llvm.fabs.f64(double %i.eb)
  %i.ed = fadd double %.182.i.i.i.i.i.i.i24.us, %i.ec
  %i.ee = getelementptr [8 x i8], ptr %i.cz, i64 %.05283.i.i.i.i.i.i.i23.us
  %i.ef = getelementptr i8, ptr %i.ee, i64 8
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !399
  %i.eh = tail call noundef double @llvm.fabs.f64(double %i.eg)
  %i.ei = fadd double %i.ed, %i.eh
  %i.ej = getelementptr [8 x i8], ptr %i.cz, i64 %.05283.i.i.i.i.i.i.i23.us
  %i.ek = getelementptr i8, ptr %i.ej, i64 16
  %i.el = load double, ptr %i.ek, align 8, !tbaa !399
  %i.em = tail call noundef double @llvm.fabs.f64(double %i.el)
  %i.en = fadd double %i.ei, %i.em
  %i.eo = getelementptr [8 x i8], ptr %i.cz, i64 %.05283.i.i.i.i.i.i.i23.us
  %i.ep = getelementptr i8, ptr %i.eo, i64 24
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !399
  %i.er = tail call noundef double @llvm.fabs.f64(double %i.eq)
  %i.es = fadd double %i.en, %i.er                ; 2 uses
  %i.et = add nuw nsw i64 %.05283.i.i.i.i.i.i.i23.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i25.us.3 = icmp eq i64 %i.et, %i.c
  br i1 %exitcond.not.i.i.i.i.i.i.i25.us.3, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us74, label %.lr.ph85.i.i.i.i.i.i.i22.us, !llvm.loop !1175

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us74: ; preds = %.lr.ph85.i.i.i.i.i.i.i22.us.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i22.us, %bb.i
  %.0.i.i.i.i.i21.us75 = phi double [ %i.du, %bb.i ], [ %.lcssa162.unr, %.lr.ph85.i.i.i.i.i.i.i22.us.prol.loopexit ], [ %i.es, %.lr.ph85.i.i.i.i.i.i.i22.us ] ; 2 uses
  %i.eu = fcmp olt double %.05864.us73, %.0.i.i.i.i.i21.us75
  %i.ev = select i1 %i.eu, double %.0.i.i.i.i.i21.us75, double %.05864.us73 ; 2 uses
  %i.ew = add nuw nsw i64 %.01765.us72, 1         ; 2 uses
  %exitcond107.not = icmp eq i64 %i.ew, %i.bp
  br i1 %exitcond107.not, label %._crit_edge, label %.lr.ph.split.split.split.us, !llvm.loop !1176

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  br i1 %i.by, label %.lr.ph85.i.i.i.i.i.i.i22.preheader.us86.preheader, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader: ; preds = %.lr.ph.split.split.split
  %i.ex = add nsw i64 %i.bp, -1                   ; 3 uses
  %xtraiter172 = and i64 %i.ex, 1
  %i.ey = icmp eq i64 %i.bp, 2
  br i1 %i.ey, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.epil.preheader, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader.new

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader.new: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader
  %unroll_iter = and i64 %i.ex, -2
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35

.lr.ph85.i.i.i.i.i.i.i22.preheader.us86.preheader: ; preds = %.lr.ph.split.split.split
  %i.ez = sub i64 %i.c, %i.bu
  %xtraiter176 = and i64 %i.ez, 3                 ; 2 uses
  %lcmp.mod177.not = icmp eq i64 %xtraiter176, 0
  %i.fa = sub i64 %i.bu, %i.c
  %i.fb = icmp ugt i64 %i.fa, -4
  br label %.lr.ph85.i.i.i.i.i.i.i22.preheader.us86

.lr.ph85.i.i.i.i.i.i.i22.preheader.us86:          ; preds = %.lr.ph85.i.i.i.i.i.i.i22.preheader.us86.preheader, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.loopexit.us87
  %.01765.us78 = phi i64 [ %i.gi, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.loopexit.us87 ], [ 1, %.lr.ph85.i.i.i.i.i.i.i22.preheader.us86.preheader ] ; 2 uses
  %.05864.us79 = phi double [ %i.gh, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.loopexit.us87 ], [ %.0.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.i.i22.preheader.us86.preheader ] ; 2 uses
  %i.fc = mul nsw i64 %.01765.us78, %i.c
  %i.fd = getelementptr [8 x i8], ptr %i.ce, i64 %i.fc ; 6 uses
  %i.fe = load <2 x double>, ptr %i.fd, align 1, !tbaa !17
  %i.ff = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.fe) ; 2 uses
  %shift151 = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop152 = fadd <2 x double> %i.ff, %shift151
  %i.fg = extractelement <2 x double> %foldExtExtBinop152, i64 0 ; 2 uses
  br i1 %lcmp.mod177.not, label %.lr.ph85.i.i.i.i.i.i.i22.us80.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i22.us80.prol

.lr.ph85.i.i.i.i.i.i.i22.us80.prol:               ; preds = %.lr.ph85.i.i.i.i.i.i.i22.preheader.us86, %.lr.ph85.i.i.i.i.i.i.i22.us80.prol
  %.05283.i.i.i.i.i.i.i23.us81.prol = phi i64 [ %i.fl, %.lr.ph85.i.i.i.i.i.i.i22.us80.prol ], [ %i.bu, %.lr.ph85.i.i.i.i.i.i.i22.preheader.us86 ] ; 2 uses
  %.182.i.i.i.i.i.i.i24.us82.prol = phi double [ %i.fk, %.lr.ph85.i.i.i.i.i.i.i22.us80.prol ], [ %i.fg, %.lr.ph85.i.i.i.i.i.i.i22.preheader.us86 ]
  %prol.iter178 = phi i64 [ %prol.iter178.next, %.lr.ph85.i.i.i.i.i.i.i22.us80.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.i22.preheader.us86 ]
  %i.fh = getelementptr [8 x i8], ptr %i.fd, i64 %.05283.i.i.i.i.i.i.i23.us81.prol
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !399
  %i.fj = tail call noundef double @llvm.fabs.f64(double %i.fi)
  %i.fk = fadd double %.182.i.i.i.i.i.i.i24.us82.prol, %i.fj ; 3 uses
  %i.fl = add nsw i64 %.05283.i.i.i.i.i.i.i23.us81.prol, 1 ; 2 uses
  %prol.iter178.next = add i64 %prol.iter178, 1   ; 2 uses
  %prol.iter178.cmp.not = icmp eq i64 %prol.iter178.next, %xtraiter176
  br i1 %prol.iter178.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i22.us80.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i22.us80.prol, !llvm.loop !1178

.lr.ph85.i.i.i.i.i.i.i22.us80.prol.loopexit:      ; preds = %.lr.ph85.i.i.i.i.i.i.i22.us80.prol, %.lr.ph85.i.i.i.i.i.i.i22.preheader.us86
  %.lcssa165.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.i22.preheader.us86 ], [ %i.fk, %.lr.ph85.i.i.i.i.i.i.i22.us80.prol ]
  %.05283.i.i.i.i.i.i.i23.us81.unr = phi i64 [ %i.bu, %.lr.ph85.i.i.i.i.i.i.i22.preheader.us86 ], [ %i.fl, %.lr.ph85.i.i.i.i.i.i.i22.us80.prol ]
  %.182.i.i.i.i.i.i.i24.us82.unr = phi double [ %i.fg, %.lr.ph85.i.i.i.i.i.i.i22.preheader.us86 ], [ %i.fk, %.lr.ph85.i.i.i.i.i.i.i22.us80.prol ]
  br i1 %i.fb, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.loopexit.us87, label %.lr.ph85.i.i.i.i.i.i.i22.us80

.lr.ph85.i.i.i.i.i.i.i22.us80:                    ; preds = %.lr.ph85.i.i.i.i.i.i.i22.us80.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i22.us80
  %.05283.i.i.i.i.i.i.i23.us81 = phi i64 [ %i.gf, %.lr.ph85.i.i.i.i.i.i.i22.us80 ], [ %.05283.i.i.i.i.i.i.i23.us81.unr, %.lr.ph85.i.i.i.i.i.i.i22.us80.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i.i.i24.us82 = phi double [ %i.ge, %.lr.ph85.i.i.i.i.i.i.i22.us80 ], [ %.182.i.i.i.i.i.i.i24.us82.unr, %.lr.ph85.i.i.i.i.i.i.i22.us80.prol.loopexit ]
  %i.fm = getelementptr [8 x i8], ptr %i.fd, i64 %.05283.i.i.i.i.i.i.i23.us81
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !399
  %i.fo = tail call noundef double @llvm.fabs.f64(double %i.fn)
  %i.fp = fadd double %.182.i.i.i.i.i.i.i24.us82, %i.fo
  %i.fq = getelementptr [8 x i8], ptr %i.fd, i64 %.05283.i.i.i.i.i.i.i23.us81
  %i.fr = getelementptr i8, ptr %i.fq, i64 8
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !399
  %i.ft = tail call noundef double @llvm.fabs.f64(double %i.fs)
  %i.fu = fadd double %i.fp, %i.ft
  %i.fv = getelementptr [8 x i8], ptr %i.fd, i64 %.05283.i.i.i.i.i.i.i23.us81
  %i.fw = getelementptr i8, ptr %i.fv, i64 16
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !399
  %i.fy = tail call noundef double @llvm.fabs.f64(double %i.fx)
  %i.fz = fadd double %i.fu, %i.fy
  %i.ga = getelementptr [8 x i8], ptr %i.fd, i64 %.05283.i.i.i.i.i.i.i23.us81
  %i.gb = getelementptr i8, ptr %i.ga, i64 24
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !399
  %i.gd = tail call noundef double @llvm.fabs.f64(double %i.gc)
  %i.ge = fadd double %i.fz, %i.gd                ; 2 uses
  %i.gf = add nsw i64 %.05283.i.i.i.i.i.i.i23.us81, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i25.us83.3 = icmp eq i64 %i.gf, %i.c
  br i1 %exitcond.not.i.i.i.i.i.i.i25.us83.3, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.loopexit.us87, label %.lr.ph85.i.i.i.i.i.i.i22.us80, !llvm.loop !1175

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.loopexit.us87: ; preds = %.lr.ph85.i.i.i.i.i.i.i22.us80, %.lr.ph85.i.i.i.i.i.i.i22.us80.prol.loopexit
  %.lcssa165 = phi double [ %.lcssa165.unr, %.lr.ph85.i.i.i.i.i.i.i22.us80.prol.loopexit ], [ %i.ge, %.lr.ph85.i.i.i.i.i.i.i22.us80 ] ; 2 uses
  %i.gg = fcmp olt double %.05864.us79, %.lcssa165
  %i.gh = select i1 %i.gg, double %.lcssa165, double %.05864.us79 ; 2 uses
  %i.gi = add nuw nsw i64 %.01765.us78, 1         ; 2 uses
  %exitcond106.not = icmp eq i64 %i.gi, %i.bp
  br i1 %exitcond106.not, label %._crit_edge, label %.lr.ph85.i.i.i.i.i.i.i22.preheader.us86, !llvm.loop !1176

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader.new
  %.01765 = phi i64 [ 1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader.new ], [ %i.gy, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35 ] ; 3 uses
  %.05864 = phi double [ %.0.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader.new ], [ %i.gx, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35 ] ; 2 uses
  %niter = phi i64 [ 0, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader.new ], [ %niter.next.1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35 ]
  %i.gj = mul nsw i64 %.01765, %i.c
  %i.gk = getelementptr [8 x i8], ptr %i.ce, i64 %i.gj
  %i.gl = load <2 x double>, ptr %i.gk, align 1, !tbaa !17
  %i.gm = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.gl) ; 2 uses
  %shift154 = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop155 = fadd <2 x double> %i.gm, %shift154
  %i.gn = extractelement <2 x double> %foldExtExtBinop155, i64 0 ; 2 uses
  %i.go = fcmp olt double %.05864, %i.gn
  %i.gp = select i1 %i.go, double %i.gn, double %.05864 ; 2 uses
  %i.gq = add nuw nsw i64 %.01765, 1
  %i.gr = mul nsw i64 %i.gq, %i.c
  %i.gs = getelementptr [8 x i8], ptr %i.ce, i64 %i.gr
  %i.gt = load <2 x double>, ptr %i.gs, align 1, !tbaa !17
  %i.gu = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.gt) ; 2 uses
  %shift154.1 = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop155.1 = fadd <2 x double> %i.gu, %shift154.1
  %i.gv = extractelement <2 x double> %foldExtExtBinop155.1, i64 0 ; 2 uses
  %i.gw = fcmp olt double %i.gp, %i.gv
  %i.gx = select i1 %i.gw, double %i.gv, double %i.gp ; 3 uses
  %i.gy = add nuw nsw i64 %.01765, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit167.unr-lcssa, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35, !llvm.loop !1176

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod189.not, label %._crit_edge, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil.preheader

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.preheader
  %.05864.us.epil.init = phi double [ %.0.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.preheader ], [ %i.cd, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod191 = icmp ne i64 %xtraiter188, 0
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil.preheader
  %.05864.us.epil = phi double [ %i.ha, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil ], [ %.05864.us.epil.init, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil ], [ 0, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil.preheader ]
  %i.gz = fcmp olt double %.05864.us.epil, 0.000000e+00
  %i.ha = select i1 %i.gz, double 0.000000e+00, double %.05864.us.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter188
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil, !llvm.loop !1179

._crit_edge.loopexit157.unr-lcssa:                ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %._crit_edge, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.epil.preheader

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.epil.preheader: ; preds = %._crit_edge.loopexit157.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.preheader
  %.01765.us66.epil.init = phi i64 [ 1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.preheader ], [ %i.cu, %._crit_edge.loopexit157.unr-lcssa ]
  %.05864.us67.epil.init = phi double [ %.0.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.preheader ], [ %i.ct, %._crit_edge.loopexit157.unr-lcssa ] ; 2 uses
  %lcmp.mod185 = trunc i64 %i.cf to i1
  tail call void @llvm.assume(i1 %lcmp.mod185)
  %i.hb = mul nsw i64 %.01765.us66.epil.init, %i.c
  %i.hc = getelementptr [8 x i8], ptr %i.ce, i64 %i.hb
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !399
  %i.he = tail call noundef double @llvm.fabs.f64(double %i.hd) ; 2 uses
  %i.hf = fcmp olt double %.05864.us67.epil.init, %i.he
  %i.hg = select i1 %i.hf, double %i.he, double %.05864.us67.epil.init
  br label %._crit_edge

._crit_edge.loopexit167.unr-lcssa:                ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35
  %lcmp.mod173.not = icmp eq i64 %xtraiter172, 0
  br i1 %lcmp.mod173.not, label %._crit_edge, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.epil.preheader

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.epil.preheader: ; preds = %._crit_edge.loopexit167.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader
  %.01765.epil.init = phi i64 [ 1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader ], [ %i.gy, %._crit_edge.loopexit167.unr-lcssa ]
  %.05864.epil.init = phi double [ %.0.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader ], [ %i.gx, %._crit_edge.loopexit167.unr-lcssa ] ; 2 uses
  %lcmp.mod175 = trunc i64 %i.ex to i1
  tail call void @llvm.assume(i1 %lcmp.mod175)
  %i.hh = mul nsw i64 %.01765.epil.init, %i.c
  %i.hi = getelementptr [8 x i8], ptr %i.ce, i64 %i.hh
  %i.hj = load <2 x double>, ptr %i.hi, align 1, !tbaa !17
  %i.hk = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.hj) ; 2 uses
  %shift154.epil = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop155.epil = fadd <2 x double> %i.hk, %shift154.epil
  %i.hl = extractelement <2 x double> %foldExtExtBinop155.epil, i64 0 ; 2 uses
  %i.hm = fcmp olt double %.05864.epil.init, %i.hl
  %i.hn = select i1 %i.hm, double %i.hl, double %.05864.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.epil.preheader, %._crit_edge.loopexit167.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.loopexit.us87, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us74, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.epil.preheader, %._crit_edge.loopexit157.unr-lcssa, %._crit_edge.loopexit.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit
  %.058.lcssa = phi double [ %.0.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit ], [ %i.ha, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil ], [ %i.hg, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.epil.preheader ], [ %i.ev, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us74 ], [ %i.gh, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.loopexit.us87 ], [ %i.cd, %._crit_edge.loopexit.unr-lcssa ], [ %i.ct, %._crit_edge.loopexit157.unr-lcssa ], [ %i.gx, %._crit_edge.loopexit167.unr-lcssa ], [ %i.hn, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.epil.preheader ]
  ret double %.058.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #26

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE10blocked_luEllPdlPiRil(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, i64 noundef %6) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.Eigen::internal::evaluator.797", align 8 ; 10 uses
  %8 = alloca %"struct.Eigen::internal::evaluator.801", align 8 ; 5 uses
  %9 = alloca %"class.Eigen::internal::restricted_packet_dense_assignment_kernel", align 8 ; 7 uses
  %10 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %11 = alloca %"class.Eigen::Ref", align 8       ; 7 uses
  %12 = alloca %"class.Eigen::Ref", align 8       ; 7 uses
  %13 = alloca %"class.Eigen::Ref", align 8       ; 10 uses
  %14 = alloca %"class.Eigen::Ref", align 8       ; 9 uses
  %15 = alloca %"class.Eigen::Ref", align 8       ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #38
  %i.c = icmp eq i64 %3, 0
  %i.d = icmp eq i64 %1, 1
  %i.e = or i1 %i.d, %i.c
  %i.f = select i1 %i.e, i64 %0, i64 %3           ; 12 uses
  store ptr %2, ptr %11, align 8, !tbaa !1180
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %0, ptr %i.g, align 8, !tbaa !394
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %1, ptr %i.h, align 8, !tbaa !394
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %i.f, ptr %i.i, align 8, !tbaa !394
  %.sroa.speculated161 = tail call i64 @llvm.smin.i64(i64 %1, i64 %0) ; 10 uses
  %i.j = icmp slt i64 %.sroa.speculated161, 17
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef i64 @_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE12unblocked_luERNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEPiRi(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.l = lshr i64 %.sroa.speculated161, 3
  %i.m = and i64 %i.l, 1152921504606846960        ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.n, i64 8, i64 %i.m          ; 3 uses
  %.sroa.speculated156 = tail call i64 @llvm.smin.i64(i64 %6, i64 %i.o) ; 9 uses
  store i32 0, ptr %5, align 4, !tbaa !32
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.al = icmp eq i64 %i.f, 0                     ; 3 uses
  %i.am = shl i64 %.sroa.speculated156, 3
  %i.an = shl i64 %i.f, 3
  %scevgep202 = getelementptr i8, ptr %2, i64 -8
  %i.ao = shl i64 %.sroa.speculated161, 3
  %i.ap = mul i64 %.sroa.speculated156, -8
  %i.aq = shl i64 %.sroa.speculated156, 3
  %i.ar = shl i64 %.sroa.speculated156, 4
  %smin215 = tail call i64 @llvm.smin.i64(i64 %i.o, i64 %6)
  %smin = tail call i64 @llvm.smin.i64(i64 %i.o, i64 %6)
  %i.as = getelementptr i8, ptr %2, i64 %i.ao
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit
  %indvar = phi i64 [ 0, %bb.c ], [ %indvar.next, %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit ] ; 8 uses
  %.053190 = phi i64 [ -1, %bb.c ], [ %.1, %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit ] ; 2 uses
  %storemerge187 = phi i64 [ 0, %bb.c ], [ %i.gs, %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit ] ; 25 uses
  %i.at = mul i64 %.sroa.speculated156, %indvar
  %i.au = xor i64 %i.at, -1
  %i.av = add i64 %.sroa.speculated161, %i.au
  %i.aw = mul i64 %i.aq, %indvar
  %scevgep213 = getelementptr i8, ptr %2, i64 %i.aw ; 2 uses
  %i.ax = mul i64 %i.ar, %indvar
  %i.ay = getelementptr i8, ptr %2, i64 %i.ax
  %scevgep214 = getelementptr i8, ptr %i.ay, i64 -8
  %i.az = mul i64 %.sroa.speculated156, %indvar
  %i.ba = sub i64 %.sroa.speculated161, %i.az
  %smin216 = call i64 @llvm.smin.i64(i64 %smin215, i64 %i.ba)
  %i.bb = shl i64 %smin216, 3
  %scevgep217 = getelementptr i8, ptr %scevgep214, i64 %i.bb
  %i.bc = mul i64 %i.am, %indvar
  %scevgep = getelementptr i8, ptr %2, i64 %i.bc
  %i.bd = mul i64 %.sroa.speculated156, %indvar
  %i.be = sub i64 %.sroa.speculated161, %i.bd
  %smin200 = call i64 @llvm.smin.i64(i64 %smin, i64 %i.be) ; 2 uses
  %i.bf = add i64 %smin200, %storemerge187        ; 2 uses
  %i.bg = mul i64 %i.an, %i.bf                    ; 2 uses
  %scevgep201 = getelementptr i8, ptr %scevgep, i64 %i.bg
  %i.bh = mul i64 %i.f, %i.bf
  %i.bi = add i64 %.sroa.speculated161, %i.bh
  %i.bj = shl i64 %i.bi, 3
  %scevgep203 = getelementptr i8, ptr %scevgep202, i64 %i.bj
  %i.bk = mul i64 %i.ap, %indvar
  %scevgep204 = getelementptr i8, ptr %i.as, i64 %i.bk
  %i.bl = shl i64 %smin200, 3
  %i.bm = sub i64 %i.bg, %i.bl
  %i.bn = sub i64 %.sroa.speculated161, %storemerge187 ; 2 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %.sroa.speculated156, i64 %i.bn) ; 16 uses
  %i.bo = sub nsw i64 %0, %storemerge187          ; 3 uses
  %i.bp = sub nsw i64 %i.bo, %.sroa.speculated    ; 4 uses
  %i.bq = add i64 %.sroa.speculated, %storemerge187 ; 7 uses
  %i.br = sub i64 %.sroa.speculated161, %i.bq     ; 8 uses
  %i.bs = icmp eq i64 %storemerge187, 1
  %i.bt = or i1 %i.bs, %i.al
  %i.bu = select i1 %i.bt, i64 %0, i64 %i.f       ; 4 uses
  %i.bv = mul nsw i64 %i.f, %i.bq                 ; 3 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bv ; 2 uses
  %i.bx = icmp eq i64 %i.br, 1
  %i.by = or i1 %i.bx, %i.al                      ; 3 uses
  %i.bz = select i1 %i.by, i64 %0, i64 %i.f       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #38
  %i.ca = getelementptr inbounds [8 x i8], ptr %2, i64 %storemerge187 ; 2 uses
  %i.cb = mul nsw i64 %i.f, %storemerge187        ; 3 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.cb
  %i.cd = icmp eq i64 %.sroa.speculated, 1
  %i.ce = or i1 %i.cd, %i.al                      ; 2 uses
  %i.cf = select i1 %i.ce, i64 %.sroa.speculated, i64 %i.f
  store ptr %i.cc, ptr %12, align 8, !tbaa !1180
  store i64 %.sroa.speculated, ptr %i.p, align 8, !tbaa !394
  store i64 %.sroa.speculated, ptr %i.q, align 8, !tbaa !394
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE10blocked_luEllPdlPiRil:bb.a
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS3_INS_7ProductIS9_S9_Li1EEEEENS0_13sub_assign_opIddEEEELi4ELi0EE3runERSG_(ptr noundef nonnull align 8 dereferenceable(32) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  br label %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit

bb.g:                                             ; preds = %_ZNK5Eigen18TriangularViewImplINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5ENS_5DenseEE12solveInPlaceIS6_EEvRKNS_10MatrixBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #38
  store double -1.000000e+00, ptr %i.a, align 8, !tbaa !399
  call void @_ZN5Eigen8internal20generic_product_implINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES7_NS_10DenseShapeES8_Li8EE13scaleAndAddToIS7_EEvRT_RKS7_SE_RKd(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #38
  br label %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit

.lr.ph.i.i.i.i.i.i59.preheader:                   ; preds = %.lr.ph.i.i.i.i.i.i59.preheader.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit
  %.0184 = phi i64 [ %i.gq, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit ], [ %storemerge187, %.lr.ph.i.i.i.i.i.i59.preheader.preheader ] ; 3 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %.0184 ; 4 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %4, i64 %.0184
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !32
  %i.fo = sext i32 %i.fn to i64                   ; 2 uses
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.bw, i64 %i.fo ; 5 uses
  br i1 %or.cond249, label %vector.memcheck, label %.lr.ph.i.i.i.i.i.i59.preheader250

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i59.preheader
  %i.fq = shl nsw i64 %i.fo, 3
  %scevgep206 = getelementptr i8, ptr %scevgep205, i64 %i.fq
  %bound0 = icmp ult ptr %scevgep201, %scevgep206
  %bound1 = icmp ult ptr %i.fp, %scevgep203
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i59.preheader250, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %index ; 3 uses
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %index ; 3 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fr, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.fr, align 8, !tbaa !399, !alias.scope !1205, !noalias !1208
  %wide.load207 = load <2 x double>, ptr %i.ft, align 8, !tbaa !399, !alias.scope !1205, !noalias !1208
  %i.fu = getelementptr inbounds nuw i8, ptr %i.fs, i64 16 ; 2 uses
  %wide.load208 = load <2 x double>, ptr %i.fs, align 8, !tbaa !399, !alias.scope !1208
  %wide.load209 = load <2 x double>, ptr %i.fu, align 8, !tbaa !399, !alias.scope !1208
  store <2 x double> %wide.load208, ptr %i.fr, align 8, !tbaa !399, !alias.scope !1205, !noalias !1208
  store <2 x double> %wide.load209, ptr %i.ft, align 8, !tbaa !399, !alias.scope !1205, !noalias !1208
  store <2 x double> %wide.load, ptr %i.fs, align 8, !tbaa !399, !alias.scope !1208
  store <2 x double> %wide.load207, ptr %i.fu, align 8, !tbaa !399, !alias.scope !1208
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fv = icmp eq i64 %index.next, %n.vec
  br i1 %i.fv, label %middle.block, label %vector.body, !llvm.loop !1210

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit, label %.lr.ph.i.i.i.i.i.i59.preheader250

.lr.ph.i.i.i.i.i.i59.preheader250:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i59.preheader, %middle.block
  %.05.i.i.i.i.i.i60.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i59.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.fw = add i64 %.sroa.speculated, %.05.i.i.i.i.i.i60.ph
  br i1 %lcmp.mod254.not, label %.lr.ph.i.i.i.i.i.i59.prol.loopexit, label %.lr.ph.i.i.i.i.i.i59.prol

.lr.ph.i.i.i.i.i.i59.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i59.preheader250
  %i.fx = mul nsw i64 %.05.i.i.i.i.i.i60.ph, %i.bz ; 2 uses
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.fx ; 2 uses
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.fx ; 2 uses
  %i.ga = load double, ptr %i.fy, align 8, !tbaa !399
  %i.gb = load double, ptr %i.fz, align 8, !tbaa !399
  store double %i.gb, ptr %i.fy, align 8, !tbaa !399
  store double %i.ga, ptr %i.fz, align 8, !tbaa !399
  %i.gc = or disjoint i64 %.05.i.i.i.i.i.i60.ph, 1
  br label %.lr.ph.i.i.i.i.i.i59.prol.loopexit

.lr.ph.i.i.i.i.i.i59.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i59.prol, %.lr.ph.i.i.i.i.i.i59.preheader250
  %.05.i.i.i.i.i.i60.unr = phi i64 [ %.05.i.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i.i59.preheader250 ], [ %i.gc, %.lr.ph.i.i.i.i.i.i59.prol ]
  %i.gd = icmp eq i64 %i.av, %i.fw
  br i1 %i.gd, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit, label %.lr.ph.i.i.i.i.i.i59

.lr.ph.i.i.i.i.i.i59:                             ; preds = %.lr.ph.i.i.i.i.i.i59.prol.loopexit, %.lr.ph.i.i.i.i.i.i59
  %.05.i.i.i.i.i.i60 = phi i64 [ %i.gp, %.lr.ph.i.i.i.i.i.i59 ], [ %.05.i.i.i.i.i.i60.unr, %.lr.ph.i.i.i.i.i.i59.prol.loopexit ] ; 3 uses
  %i.ge = mul nsw i64 %.05.i.i.i.i.i.i60, %i.bz   ; 2 uses
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.ge ; 2 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.ge ; 2 uses
  %i.gh = load double, ptr %i.gf, align 8, !tbaa !399
  %i.gi = load double, ptr %i.gg, align 8, !tbaa !399
  store double %i.gi, ptr %i.gf, align 8, !tbaa !399
  store double %i.gh, ptr %i.gg, align 8, !tbaa !399
  %i.gj = add nuw nsw i64 %.05.i.i.i.i.i.i60, 1
  %i.gk = mul nsw i64 %i.gj, %i.bz                ; 2 uses
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.fl, i64 %i.gk ; 2 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %i.fp, i64 %i.gk ; 2 uses
  %i.gn = load double, ptr %i.gl, align 8, !tbaa !399
  %i.go = load double, ptr %i.gm, align 8, !tbaa !399
  store double %i.go, ptr %i.gl, align 8, !tbaa !399
  store double %i.gn, ptr %i.gm, align 8, !tbaa !399
  %i.gp = add nuw nsw i64 %.05.i.i.i.i.i.i60, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i61.1 = icmp eq i64 %i.gp, %i.br
  br i1 %exitcond.not.i.i.i.i.i.i61.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit, label %.lr.ph.i.i.i.i.i.i59, !llvm.loop !1211

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i59.prol.loopexit, %.lr.ph.i.i.i.i.i.i59, %middle.block
  %i.gq = add nsw i64 %.0184, 1                   ; 2 uses
  %i.gr = icmp slt i64 %i.gq, %i.bq
  br i1 %i.gr, label %.lr.ph.i.i.i.i.i.i59.preheader, label %._crit_edge186.split, !llvm.loop !1212

_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %bb.g, %bb.f, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #38
  %i.gs = add nsw i64 %storemerge187, %.sroa.speculated156 ; 2 uses
  %i.gt = icmp slt i64 %i.gs, %.sroa.speculated161
  %indvar.next = add i64 %indvar, 1
  br i1 %i.gt, label %bb.d, label %.loopexit, !llvm.loop !1213

.loopexit:                                        ; preds = %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit, %bb.b
  %.051 = phi i64 [ %i.k, %bb.b ], [ %.1, %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #38
  ret i64 %.051
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE12unblocked_luERNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEPiRi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !394  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !394  ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %i.b) ; 2 uses
  store i32 0, ptr %2, align 4, !tbaa !32
  %i.e = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = add nsw i64 %i.b, -1
  %i.h = add i64 %i.b, 4294967295
  %i.i = add i64 %i.b, 4294967295
  %i.j = add i64 %i.b, -2
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit, %bb.a
  %.0.lcssa = phi i64 [ -1, %bb.a ], [ %.1, %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit ]
  ret i64 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit
  %.0172 = phi i64 [ -1, %.lr.ph ], [ %.1, %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit ] ; 5 uses
  %.043171 = phi i64 [ 0, %.lr.ph ], [ %i.jo, %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit ] ; 21 uses
  %i.k = xor i64 %.043171, -1
  %i.l = add i64 %i.b, %i.k                       ; 3 uses
  %i.m = sub i64 %i.i, %.043171
  %sext266 = shl i64 %i.m, 32
  %i.n = ashr exact i64 %sext266, 29              ; 2 uses
  %i.o = shl i64 %.043171, 3
  %i.p = sub i64 %i.h, %.043171
  %sext267 = shl i64 %i.p, 32
  %i.q = ashr exact i64 %sext267, 29              ; 2 uses
  %i.r = shl i64 %.043171, 3
  %i.s = xor i64 %.043171, -1                     ; 2 uses
  %i.t = add i64 %i.b, %i.s                       ; 3 uses
  %i.u = add i64 %i.d, %i.s
  %i.v = load ptr, ptr %0, align 8, !tbaa !1180, !noalias !1214 ; 5 uses
  %i.w = load i64, ptr %i.f, align 8, !tbaa !394, !noalias !1214 ; 5 uses
  %i.x = mul nsw i64 %i.w, %.043171
  %i.y = getelementptr [8 x i8], ptr %i.v, i64 %i.x ; 3 uses
  %i.z = load i64, ptr %i.a, align 8, !tbaa !394, !noalias !1214 ; 2 uses
  %i.aa = sub nsw i64 %i.b, %.043171              ; 2 uses
  %i.ab = sub nsw i64 %i.z, %i.aa
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.ab ; 4 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !399 ; 2 uses
  %i.ae = icmp sgt i64 %i.aa, 1
  br i1 %i.ae, label %.lr.ph.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.af = tail call noundef double @llvm.fabs.f64(double %i.ad) ; 4 uses
  %xtraiter = and i64 %i.l, 1
  %i.ag = icmp eq i64 %i.j, %.043171
  br i1 %i.ag, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.l, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.sroa.7.0.i.i = phi double [ %i.af, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.7.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.02125.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.at, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.ah = phi double [ %i.af, %.lr.ph.i.i.i.i.preheader.new ], [ %i.as, %.lr.ph.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.ai = getelementptr [8 x i8], ptr %i.ac, i64 %.02125.i.i.i.i
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !399
  %i.ak = tail call noundef double @llvm.fabs.f64(double %i.aj) ; 3 uses
  %i.al = fcmp ogt double %i.ak, %i.ah            ; 3 uses
  %.sroa.0.1.i.i = select i1 %i.al, i64 %.02125.i.i.i.i, i64 %.sroa.0.0.i.i
  %.sroa.7.1.i.i = select i1 %i.al, double %i.ak, double %.sroa.7.0.i.i
  %i.am = select i1 %i.al, double %i.ak, double %i.ah ; 2 uses
  %i.an = add nuw nsw i64 %.02125.i.i.i.i, 1      ; 2 uses
  %i.ao = getelementptr [8 x i8], ptr %i.ac, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !399
  %i.aq = tail call noundef double @llvm.fabs.f64(double %i.ap) ; 3 uses
  %i.ar = fcmp ogt double %i.aq, %i.am            ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.ar, i64 %i.an, i64 %.sroa.0.1.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.ar, double %i.aq, double %.sroa.7.1.i.i ; 3 uses
  %i.as = select i1 %i.ar, double %i.aq, double %i.am ; 2 uses
  %i.at = add nuw nsw i64 %.02125.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !1217

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.sroa.7.0.i.i.epil.init = phi double [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.02125.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.at, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.af, %.lr.ph.i.i.i.i.preheader ], [ %i.as, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %lcmp.mod275 = trunc i64 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod275)
  %i.au = getelementptr [8 x i8], ptr %i.ac, i64 %.02125.i.i.i.i.epil.init
  %i.av = load double, ptr %i.au, align 8, !tbaa !399
  %i.aw = tail call noundef double @llvm.fabs.f64(double %i.av) ; 2 uses
  %i.ax = fcmp ogt double %i.aw, %.epil.init      ; 2 uses
  %.sroa.0.1.i.i.epil = select i1 %i.ax, i64 %.02125.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  %.sroa.7.1.i.i.epil = select i1 %i.ax, double %i.aw, double %.sroa.7.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.7.1.i.i.lcssa = phi double [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.ay = add nuw i64 %.sroa.0.1.i.i.lcssa, %.043171 ; 3 uses
  %i.az = trunc i64 %i.ay to i32
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.043171
  store i32 %i.az, ptr %i.ba, align 4, !tbaa !32
  %i.bb = fcmp une double %.sroa.7.1.i.i.lcssa, 0.000000e+00
  br i1 %i.bb, label %bb.c, label %bb.f

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread: ; preds = %bb.b
  %i.bc = trunc i64 %.043171 to i32
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.043171
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !32
  %i.be = fcmp une double %i.ad, 0.000000e+00
  br i1 %i.be, label %.thread, label %bb.f

bb.c:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %.not = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bf = getelementptr [8 x i8], ptr %i.v, i64 %.043171 ; 5 uses
  %i.bg = load i64, ptr %i.c, align 8, !tbaa !394, !noalias !1218 ; 9 uses
  %i.bh = getelementptr [8 x i8], ptr %i.v, i64 %i.ay ; 5 uses
  %i.bi = icmp sgt i64 %i.bg, 0
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.d
  %min.iters.check253 = icmp ugt i64 %i.bg, 7
  %ident.check.not = icmp eq i64 %i.w, 1
  %or.cond = and i1 %min.iters.check253, %ident.check.not
  br i1 %or.cond, label %vector.memcheck245, label %.lr.ph.i.i.i.i.i.i.preheader272

vector.memcheck245:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.bj = shl i64 %i.bg, 3
  %i.bk = add nuw i64 %.043171, %i.bg
  %i.bl = shl i64 %i.bk, 3
  %scevgep246 = getelementptr i8, ptr %i.v, i64 %i.bl
  %scevgep247 = getelementptr i8, ptr %i.v, i64 %i.bj
  %i.bm = shl i64 %i.ay, 3
  %scevgep248 = getelementptr i8, ptr %scevgep247, i64 %i.bm
  %bound0249 = icmp ult ptr %i.bf, %scevgep248
  %bound1250 = icmp ult ptr %i.bh, %scevgep246
  %found.conflict251 = and i1 %bound0249, %bound1250
  br i1 %found.conflict251, label %.lr.ph.i.i.i.i.i.i.preheader272, label %vector.ph254

vector.ph254:                                     ; preds = %vector.memcheck245
  %n.vec255 = and i64 %i.bg, 9223372036854775804  ; 3 uses
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph254
  %index257 = phi i64 [ 0, %vector.ph254 ], [ %index.next262, %vector.body256 ] ; 3 uses
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %index257 ; 3 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %index257 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load258 = load <2 x double>, ptr %i.bn, align 8, !tbaa !399, !alias.scope !1221, !noalias !1224
  %wide.load259 = load <2 x double>, ptr %i.bp, align 8, !tbaa !399, !alias.scope !1221, !noalias !1224
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %wide.load260 = load <2 x double>, ptr %i.bo, align 8, !tbaa !399, !alias.scope !1224
  %wide.load261 = load <2 x double>, ptr %i.bq, align 8, !tbaa !399, !alias.scope !1224
  store <2 x double> %wide.load260, ptr %i.bn, align 8, !tbaa !399, !alias.scope !1221, !noalias !1224
  store <2 x double> %wide.load261, ptr %i.bp, align 8, !tbaa !399, !alias.scope !1221, !noalias !1224
  store <2 x double> %wide.load258, ptr %i.bo, align 8, !tbaa !399, !alias.scope !1224
  store <2 x double> %wide.load259, ptr %i.bq, align 8, !tbaa !399, !alias.scope !1224
  %index.next262 = add nuw i64 %index257, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next262, %n.vec255
  br i1 %i.br, label %middle.block263, label %vector.body256, !llvm.loop !1226

middle.block263:                                  ; preds = %vector.body256
  %cmp.n264 = icmp eq i64 %i.bg, %n.vec255
  br i1 %cmp.n264, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.preheader272

.lr.ph.i.i.i.i.i.i.preheader272:                  ; preds = %vector.memcheck245, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block263
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck245 ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec255, %middle.block263 ] ; 4 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  %xtraiter276 = and i64 %i.bg, 1
  %lcmp.mod277.not = icmp eq i64 %xtraiter276, 0
  br i1 %lcmp.mod277.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader272
  %i.bs = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.w   ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !399
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !399
  store double %i.bw, ptr %i.bt, align 8, !tbaa !399
  store double %i.bv, ptr %i.bu, align 8, !tbaa !399
  %i.bx = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader272
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader272 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.by = icmp eq i64 %i.bg, %.neg
  br i1 %i.by, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.bz = mul nsw i64 %.05.i.i.i.i.i.i, %i.w      ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bz ; 2 uses
  %i.cc = load double, ptr %i.ca, align 8, !tbaa !399
  %i.cd = load double, ptr %i.cb, align 8, !tbaa !399
  store double %i.cd, ptr %i.ca, align 8, !tbaa !399
  store double %i.cc, ptr %i.cb, align 8, !tbaa !399
  %i.ce = add nuw nsw i64 %.05.i.i.i.i.i.i, 1
  %i.cf = mul nsw i64 %i.ce, %i.w                 ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.cf ; 2 uses
  %i.ci = load double, ptr %i.cg, align 8, !tbaa !399
  %i.cj = load double, ptr %i.ch, align 8, !tbaa !399
  store double %i.cj, ptr %i.cg, align 8, !tbaa !399
  store double %i.ci, ptr %i.ch, align 8, !tbaa !399
  %i.ck = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ck, %i.bg
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1227

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block263, %bb.d
  %i.cl = load i32, ptr %2, align 4, !tbaa !32
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %2, align 4, !tbaa !32
  br label %.thread

.thread:                                          ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, %bb.c
  %i.cn = getelementptr [8 x i8], ptr %i.y, i64 %.043171
  %sext = shl i64 %i.t, 32
  %i.co = ashr exact i64 %sext, 32                ; 7 uses
  %i.cp = sub nsw i64 %i.z, %i.co
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.cp ; 6 uses
  %i.cr = load double, ptr %i.cn, align 8, !tbaa !399, !noalias !1228 ; 5 uses
  %i.cs = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.ct = and i64 %i.cs, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.thread
  %i.cu = lshr exact i64 %i.cs, 3
  %i.cv = and i64 %i.cu, 1
  %i.cw = tail call i64 @llvm.smin.i64(i64 %i.cv, i64 %i.co)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.e, %.thread
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.cw, %bb.e ], [ %i.co, %.thread ] ; 9 uses
  %i.cx = sub nsw i64 %i.co, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.cy = sdiv i64 %i.cx, 2
  %i.cz = shl nsw i64 %i.cy, 1                    ; 2 uses
  %i.da = add nsw i64 %i.cz, %.0.i.i.i.i.i.i.i    ; 5 uses
  %i.db = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.db, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check233 = icmp eq i64 %.0.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check233, label %.lr.ph.i.i.i.i.i.i.i.preheader271, label %vector.ph234

vector.ph234:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec235 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert236 = insertelement <2 x double> poison, double %i.cr, i64 0
  %broadcast.splat237 = shufflevector <2 x double> %broadcast.splatinsert236, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body238

vector.body238:                                   ; preds = %vector.body238, %vector.ph234
  %index239 = phi i64 [ 0, %vector.ph234 ], [ %index.next241, %vector.body238 ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %index239 ; 2 uses
  %wide.load240 = load <2 x double>, ptr %i.dc, align 8, !tbaa !399
  %i.dd = fdiv <2 x double> %wide.load240, %broadcast.splat237
  store <2 x double> %i.dd, ptr %i.dc, align 8, !tbaa !399
  %index.next241 = add nuw i64 %index239, 2       ; 2 uses
  %i.de = icmp eq i64 %index.next241, %n.vec235
  br i1 %i.de, label %middle.block242, label %vector.body238, !llvm.loop !1231

middle.block242:                                  ; preds = %vector.body238
  %cmp.n243 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec235
  br i1 %cmp.n243, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader271

.lr.ph.i.i.i.i.i.i.i.preheader271:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block242
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec235, %middle.block242 ]
  br label %.lr.ph.i.i.i.i.i.i.i

end_hunk_3
begin_hunk_4_@_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld:bb.a
  %.1227.lcssa = phi i64 [ %.0226.lcssa, %.preheader408 ], [ %i.je, %._crit_edge470 ] ; 3 uses
  %i.fw = icmp slt i64 %.1227.lcssa, %i.e
  br i1 %i.fw, label %.preheader405.lr.ph, label %.preheader404

.preheader405.lr.ph:                              ; preds = %.preheader406
  %.not236477 = icmp slt i64 %1, 2
  %i.fx = and i64 %1, -2                          ; 2 uses
  %i.fy = add i64 %1, -2                          ; 2 uses
  %i.fz = lshr i64 %i.fy, 1                       ; 2 uses
  %i.ga = add nuw i64 %i.fz, 1                    ; 2 uses
  %i.gb = icmp eq i64 %i.fz, 0
  %unroll_iter = and i64 %i.ga, -2
  %i.gc = and i64 %i.fy, 2
  %lcmp.mod.not.not = icmp eq i64 %i.gc, 0
  %lcmp.mod671 = trunc i64 %i.ga to i1
  %xtraiter672 = and i64 %1, 1
  %lcmp.mod673.not = icmp eq i64 %xtraiter672, 0
  br label %.preheader405

bb.d:                                             ; preds = %.lr.ph456, %bb.d
  %i.gd = phi i64 [ 2, %.lr.ph456 ], [ %i.gx, %bb.d ] ; 2 uses
  %.0214455 = phi i64 [ 0, %.lr.ph456 ], [ %i.gd, %bb.d ] ; 2 uses
  %.0399454 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.gk, %bb.d ]
  %.0401453 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.go, %bb.d ]
  %.0402452 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.gs, %bb.d ]
  %.0403451 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.gw, %bb.d ]
  %i.ge = getelementptr [8 x i8], ptr %i.fo, i64 %.0214455
  %i.gf = load <2 x double>, ptr %i.ge, align 1, !tbaa !17 ; 4 uses
  %i.gg = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0214455 ; 4 uses
  %i.gh = getelementptr [8 x i8], ptr %i.gg, i64 %i.fp
  %i.gi = load <2 x double>, ptr %i.gh, align 1, !tbaa !17
  %i.gj = fmul <2 x double> %i.gf, %i.gi
  %i.gk = fadd <2 x double> %.0399454, %i.gj      ; 2 uses
  %i.gl = getelementptr [8 x i8], ptr %i.gg, i64 %i.fr
  %i.gm = load <2 x double>, ptr %i.gl, align 1, !tbaa !17
  %i.gn = fmul <2 x double> %i.gf, %i.gm
  %i.go = fadd <2 x double> %.0401453, %i.gn      ; 2 uses
  %i.gp = getelementptr [8 x i8], ptr %i.gg, i64 %i.ft
  %i.gq = load <2 x double>, ptr %i.gp, align 1, !tbaa !17
  %i.gr = fmul <2 x double> %i.gf, %i.gq
  %i.gs = fadd <2 x double> %.0402452, %i.gr      ; 2 uses
  %i.gt = getelementptr [8 x i8], ptr %i.gg, i64 %i.fv
  %i.gu = load <2 x double>, ptr %i.gt, align 1, !tbaa !17
  %i.gv = fmul <2 x double> %i.gf, %i.gu
  %i.gw = fadd <2 x double> %.0403451, %i.gv      ; 2 uses
  %i.gx = add nuw nsw i64 %i.gd, 2                ; 2 uses
  %.not237 = icmp sgt i64 %i.gx, %1
  br i1 %.not237, label %._crit_edge457, label %bb.d, !llvm.loop !1524

._crit_edge457:                                   ; preds = %bb.d, %.preheader407
  %.0403.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.gw, %bb.d ] ; 2 uses
  %.0402.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.gs, %bb.d ] ; 2 uses
  %.0401.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.go, %bb.d ] ; 2 uses
  %.0399.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.gk, %bb.d ] ; 2 uses
  %.0214.lcssa = phi i64 [ 0, %.preheader407 ], [ %i.z, %bb.d ] ; 2 uses
  %i.gy = shufflevector <2 x double> %.0399.lcssa, <2 x double> %.0401.lcssa, <2 x i32> <i32 0, i32 2>
  %i.gz = shufflevector <2 x double> %.0402.lcssa, <2 x double> %.0403.lcssa, <2 x i32> <i32 0, i32 2>
  %i.ha = shufflevector <2 x double> %i.gy, <2 x double> %i.gz, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hb = shufflevector <2 x double> %.0399.lcssa, <2 x double> %.0401.lcssa, <2 x i32> <i32 1, i32 3>
  %i.hc = shufflevector <2 x double> %.0402.lcssa, <2 x double> %.0403.lcssa, <2 x i32> <i32 1, i32 3>
  %i.hd = shufflevector <2 x double> %i.hb, <2 x double> %i.hc, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.he = fadd <4 x double> %i.ha, %i.hd          ; 2 uses
  %i.hf = icmp slt i64 %.0214.lcssa, %1
  br i1 %i.hf, label %.lr.ph469, label %._crit_edge457.._crit_edge470_crit_edge

._crit_edge457.._crit_edge470_crit_edge:          ; preds = %._crit_edge457
  %.pre565 = add nuw nsw i64 %.1227475, 1
  %.pre567 = add nuw nsw i64 %.1227475, 2
  %.pre569 = add nuw nsw i64 %.1227475, 3
  br label %._crit_edge470

.lr.ph469:                                        ; preds = %._crit_edge457
  %i.hg = load ptr, ptr %3, align 8, !tbaa !929
  %i.hh = mul nsw i64 %.1227475, %.sroa.33.0.copyload
  %i.hi = add nuw nsw i64 %.1227475, 1            ; 2 uses
  %i.hj = mul nsw i64 %i.hi, %.sroa.33.0.copyload
  %i.hk = add nuw nsw i64 %.1227475, 2            ; 2 uses
  %i.hl = mul nsw i64 %i.hk, %.sroa.33.0.copyload
  %i.hm = add nuw nsw i64 %.1227475, 3            ; 2 uses
  %i.hn = mul nsw i64 %i.hm, %.sroa.33.0.copyload
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph469, %bb.e
  %.1215463 = phi i64 [ %.0214.lcssa, %.lr.ph469 ], [ %i.ii, %bb.e ] ; 3 uses
  %i.ho = phi <4 x double> [ %i.he, %.lr.ph469 ], [ %i.ih, %bb.e ]
  %i.hp = getelementptr [8 x i8], ptr %i.hg, i64 %.1215463
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !399
  %i.hr = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.1215463 ; 4 uses
  %i.hs = getelementptr [8 x i8], ptr %i.hr, i64 %i.hh
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !399
  %i.hu = getelementptr [8 x i8], ptr %i.hr, i64 %i.hj
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !399
  %i.hw = getelementptr [8 x i8], ptr %i.hr, i64 %i.hl
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !399
  %i.hy = getelementptr [8 x i8], ptr %i.hr, i64 %i.hn
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !399
  %i.ia = insertelement <4 x double> poison, double %i.hq, i64 0
  %i.ib = shufflevector <4 x double> %i.ia, <4 x double> poison, <4 x i32> zeroinitializer
  %i.ic = insertelement <4 x double> poison, double %i.ht, i64 0
  %i.id = insertelement <4 x double> %i.ic, double %i.hv, i64 1
  %i.ie = insertelement <4 x double> %i.id, double %i.hx, i64 2
  %i.if = insertelement <4 x double> %i.ie, double %i.hz, i64 3
  %i.ig = fmul <4 x double> %i.ib, %i.if
  %i.ih = fadd <4 x double> %i.ho, %i.ig          ; 2 uses
  %i.ii = add nuw nsw i64 %.1215463, 1            ; 2 uses
  %exitcond549.not = icmp eq i64 %i.ii, %1
  br i1 %exitcond549.not, label %._crit_edge470, label %bb.e, !llvm.loop !1525

._crit_edge470:                                   ; preds = %bb.e, %._crit_edge457.._crit_edge470_crit_edge
  %.pre-phi570 = phi i64 [ %.pre569, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hm, %bb.e ]
  %.pre-phi568 = phi i64 [ %.pre567, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hk, %bb.e ]
  %.pre-phi566 = phi i64 [ %.pre565, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hi, %bb.e ]
  %i.ij = phi <4 x double> [ %i.he, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.ih, %bb.e ] ; 4 uses
  %i.ik = mul nsw i64 %.1227475, %5
  %i.il = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ik ; 2 uses
  %i.im = load double, ptr %i.il, align 8, !tbaa !399
  %i.in = extractelement <4 x double> %i.ij, i64 0
  %i.io = tail call double @llvm.fmuladd.f64(double %6, double %i.in, double %i.im)
  store double %i.io, ptr %i.il, align 8, !tbaa !399
  %i.ip = mul nsw i64 %.pre-phi566, %5
  %i.iq = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ip ; 2 uses
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !399
  %i.is = extractelement <4 x double> %i.ij, i64 1
  %i.it = tail call double @llvm.fmuladd.f64(double %6, double %i.is, double %i.ir)
  store double %i.it, ptr %i.iq, align 8, !tbaa !399
  %i.iu = mul nsw i64 %.pre-phi568, %5
  %i.iv = getelementptr inbounds [8 x i8], ptr %4, i64 %i.iu ; 2 uses
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !399
  %i.ix = extractelement <4 x double> %i.ij, i64 2
  %i.iy = tail call double @llvm.fmuladd.f64(double %6, double %i.ix, double %i.iw)
  store double %i.iy, ptr %i.iv, align 8, !tbaa !399
  %i.iz = mul nsw i64 %.pre-phi570, %5
  %i.ja = getelementptr inbounds [8 x i8], ptr %4, i64 %i.iz ; 2 uses
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !399
  %i.jc = extractelement <4 x double> %i.ij, i64 3
  %i.jd = tail call double @llvm.fmuladd.f64(double %6, double %i.jc, double %i.jb)
  store double %i.jd, ptr %i.ja, align 8, !tbaa !399
  %i.je = add nuw nsw i64 %.1227475, 4            ; 3 uses
  %i.jf = icmp slt i64 %i.je, %i.d
  br i1 %i.jf, label %.preheader407, label %.preheader406, !llvm.loop !1526

.preheader405:                                    ; preds = %.preheader405.lr.ph, %._crit_edge491
  %.2494 = phi i64 [ %.1227.lcssa, %.preheader405.lr.ph ], [ %i.nl, %._crit_edge491 ] ; 7 uses
  br i1 %.not236477, label %._crit_edge482, label %.lr.ph481

.lr.ph481:                                        ; preds = %.preheader405
  %i.jg = load ptr, ptr %3, align 8, !tbaa !929   ; 3 uses
  %i.jh = mul nsw i64 %.2494, %.sroa.33.0.copyload ; 3 uses
  %i.ji = add nuw nsw i64 %.2494, 1
  %i.jj = mul nsw i64 %i.ji, %.sroa.33.0.copyload ; 3 uses
  br i1 %i.gb, label %.epil.preheader, label %.lr.ph481.new

.preheader404:                                    ; preds = %._crit_edge491, %.preheader406
  %.2.lcssa = phi i64 [ %.1227.lcssa, %.preheader406 ], [ %i.nl, %._crit_edge491 ] ; 2 uses
  %i.jk = icmp slt i64 %.2.lcssa, %0
  br i1 %i.jk, label %.preheader.lr.ph, label %._crit_edge512

.preheader.lr.ph:                                 ; preds = %.preheader404
  %.not496 = icmp slt i64 %1, 2
  %i.jl = and i64 %1, -2                          ; 2 uses
  %i.jm = add i64 %1, -2                          ; 2 uses
  %i.jn = lshr i64 %i.jm, 1
  %i.jo = add nuw i64 %i.jn, 1                    ; 2 uses
  %xtraiter675 = and i64 %i.jo, 3                 ; 3 uses
  %i.jp = icmp ult i64 %i.jm, 6
  %unroll_iter680 = and i64 %i.jo, -4
  %lcmp.mod677.not = icmp eq i64 %xtraiter675, 0
  %lcmp.mod679 = icmp ne i64 %xtraiter675, 0
  br label %.preheader

.lr.ph481.new:                                    ; preds = %.lr.ph481, %.lr.ph481.new
  %i.jq = phi i64 [ %i.ko, %.lr.ph481.new ], [ 2, %.lr.ph481 ] ; 4 uses
  %.0208480 = phi i64 [ %i.kc, %.lr.ph481.new ], [ 0, %.lr.ph481 ] ; 2 uses
  %.0398479 = phi <2 x double> [ %i.kn, %.lr.ph481.new ], [ zeroinitializer, %.lr.ph481 ]
  %.0400478 = phi <2 x double> [ %i.kj, %.lr.ph481.new ], [ zeroinitializer, %.lr.ph481 ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph481.new ], [ 0, %.lr.ph481 ]
  %i.jr = getelementptr [8 x i8], ptr %i.jg, i64 %.0208480
  %i.js = load <2 x double>, ptr %i.jr, align 1, !tbaa !17 ; 2 uses
  %i.jt = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208480 ; 2 uses
  %i.ju = getelementptr [8 x i8], ptr %i.jt, i64 %i.jh
  %i.jv = load <2 x double>, ptr %i.ju, align 1, !tbaa !17
  %i.jw = fmul <2 x double> %i.js, %i.jv
  %i.jx = fadd <2 x double> %.0400478, %i.jw
  %i.jy = getelementptr [8 x i8], ptr %i.jt, i64 %i.jj
  %i.jz = load <2 x double>, ptr %i.jy, align 1, !tbaa !17
  %i.ka = fmul <2 x double> %i.js, %i.jz
  %i.kb = fadd <2 x double> %.0398479, %i.ka
  %i.kc = add nuw nsw i64 %i.jq, 2                ; 2 uses
  %i.kd = getelementptr [8 x i8], ptr %i.jg, i64 %i.jq
  %i.ke = load <2 x double>, ptr %i.kd, align 1, !tbaa !17 ; 2 uses
  %i.kf = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.jq ; 2 uses
  %i.kg = getelementptr [8 x i8], ptr %i.kf, i64 %i.jh
  %i.kh = load <2 x double>, ptr %i.kg, align 1, !tbaa !17
  %i.ki = fmul <2 x double> %i.ke, %i.kh
  %i.kj = fadd <2 x double> %i.jx, %i.ki          ; 3 uses
  %i.kk = getelementptr [8 x i8], ptr %i.kf, i64 %i.jj
  %i.kl = load <2 x double>, ptr %i.kk, align 1, !tbaa !17
  %i.km = fmul <2 x double> %i.ke, %i.kl
  %i.kn = fadd <2 x double> %i.kb, %i.km          ; 3 uses
  %i.ko = add nuw nsw i64 %i.jq, 4
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge482.loopexit.unr-lcssa, label %.lr.ph481.new, !llvm.loop !1527

._crit_edge482.loopexit.unr-lcssa:                ; preds = %.lr.ph481.new
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge482

.epil.preheader:                                  ; preds = %._crit_edge482.loopexit.unr-lcssa, %.lr.ph481
  %.0208480.epil.init = phi i64 [ 0, %.lr.ph481 ], [ %i.kc, %._crit_edge482.loopexit.unr-lcssa ] ; 2 uses
  %.0398479.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.kn, %._crit_edge482.loopexit.unr-lcssa ]
  %.0400478.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.kj, %._crit_edge482.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod671)
  %i.kp = getelementptr [8 x i8], ptr %i.jg, i64 %.0208480.epil.init
  %i.kq = load <2 x double>, ptr %i.kp, align 1, !tbaa !17 ; 2 uses
  %i.kr = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208480.epil.init ; 2 uses
  %i.ks = getelementptr [8 x i8], ptr %i.kr, i64 %i.jh
  %i.kt = load <2 x double>, ptr %i.ks, align 1, !tbaa !17
  %i.ku = fmul <2 x double> %i.kq, %i.kt
  %i.kv = fadd <2 x double> %.0400478.epil.init, %i.ku
  %i.kw = getelementptr [8 x i8], ptr %i.kr, i64 %i.jj
  %i.kx = load <2 x double>, ptr %i.kw, align 1, !tbaa !17
  %i.ky = fmul <2 x double> %i.kq, %i.kx
  %i.kz = fadd <2 x double> %.0398479.epil.init, %i.ky
  br label %._crit_edge482

._crit_edge482:                                   ; preds = %.epil.preheader, %._crit_edge482.loopexit.unr-lcssa, %.preheader405
  %.0400.lcssa = phi <2 x double> [ zeroinitializer, %.preheader405 ], [ %i.kj, %._crit_edge482.loopexit.unr-lcssa ], [ %i.kv, %.epil.preheader ] ; 2 uses
  %.0398.lcssa = phi <2 x double> [ zeroinitializer, %.preheader405 ], [ %i.kn, %._crit_edge482.loopexit.unr-lcssa ], [ %i.kz, %.epil.preheader ] ; 2 uses
  %.0208.lcssa = phi i64 [ 0, %.preheader405 ], [ %i.fx, %._crit_edge482.loopexit.unr-lcssa ], [ %i.fx, %.epil.preheader ] ; 6 uses
  %i.la = shufflevector <2 x double> %.0400.lcssa, <2 x double> %.0398.lcssa, <2 x i32> <i32 0, i32 2>
  %i.lb = shufflevector <2 x double> %.0400.lcssa, <2 x double> %.0398.lcssa, <2 x i32> <i32 1, i32 3>
  %i.lc = fadd <2 x double> %i.la, %i.lb          ; 3 uses
  %i.ld = icmp slt i64 %.0208.lcssa, %1
  br i1 %i.ld, label %.lr.ph490, label %._crit_edge482.._crit_edge491_crit_edge

._crit_edge482.._crit_edge491_crit_edge:          ; preds = %._crit_edge482
  %.pre571 = add nuw nsw i64 %.2494, 1
  br label %._crit_edge491

.lr.ph490:                                        ; preds = %._crit_edge482
  %i.le = load ptr, ptr %3, align 8, !tbaa !929   ; 3 uses
  %i.lf = mul nsw i64 %.2494, %.sroa.33.0.copyload ; 3 uses
  %i.lg = add nuw nsw i64 %.2494, 1               ; 3 uses
  %i.lh = mul nsw i64 %i.lg, %.sroa.33.0.copyload ; 3 uses
  %.neg = or disjoint i64 %.0208.lcssa, 1
  br i1 %lcmp.mod673.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph490
  %i.li = getelementptr [8 x i8], ptr %i.le, i64 %.0208.lcssa
  %i.lj = load double, ptr %i.li, align 8, !tbaa !399
  %i.lk = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208.lcssa ; 2 uses
  %i.ll = getelementptr [8 x i8], ptr %i.lk, i64 %i.lf
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !399
  %i.ln = getelementptr [8 x i8], ptr %i.lk, i64 %i.lh
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !399
  %i.lp = insertelement <2 x double> poison, double %i.lj, i64 0
  %i.lq = shufflevector <2 x double> %i.lp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lr = insertelement <2 x double> poison, double %i.lm, i64 0
  %i.ls = insertelement <2 x double> %i.lr, double %i.lo, i64 1
  %i.lt = fmul <2 x double> %i.lq, %i.ls
  %i.lu = fadd <2 x double> %i.lc, %i.lt          ; 2 uses
  %i.lv = or disjoint i64 %.0208.lcssa, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph490
  %.lcssa651.unr = phi <2 x double> [ poison, %.lr.ph490 ], [ %i.lu, %.prol.loopexit.unr-lcssa ]
  %.1209486.unr = phi i64 [ %.0208.lcssa, %.lr.ph490 ], [ %i.lv, %.prol.loopexit.unr-lcssa ]
  %.unr = phi <2 x double> [ %i.lc, %.lr.ph490 ], [ %i.lu, %.prol.loopexit.unr-lcssa ]
  %i.lw = icmp eq i64 %1, %.neg
  br i1 %i.lw, label %._crit_edge491, label %.lr.ph490.new

.lr.ph490.new:                                    ; preds = %.prol.loopexit, %.lr.ph490.new
  %.1209486 = phi i64 [ %i.mz, %.lr.ph490.new ], [ %.1209486.unr, %.prol.loopexit ] ; 4 uses
  %i.lx = phi <2 x double> [ %i.my, %.lr.ph490.new ], [ %.unr, %.prol.loopexit ]
  %i.ly = getelementptr [8 x i8], ptr %i.le, i64 %.1209486
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !399
  %i.ma = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.1209486 ; 2 uses
  %i.mb = getelementptr [8 x i8], ptr %i.ma, i64 %i.lf
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !399
  %i.md = getelementptr [8 x i8], ptr %i.ma, i64 %i.lh
  %i.me = load double, ptr %i.md, align 8, !tbaa !399
  %i.mf = insertelement <2 x double> poison, double %i.lz, i64 0
  %i.mg = shufflevector <2 x double> %i.mf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mh = insertelement <2 x double> poison, double %i.mc, i64 0
  %i.mi = insertelement <2 x double> %i.mh, double %i.me, i64 1
  %i.mj = fmul <2 x double> %i.mg, %i.mi
  %i.mk = fadd <2 x double> %i.lx, %i.mj
  %i.ml = add nuw nsw i64 %.1209486, 1            ; 2 uses
  %i.mm = getelementptr [8 x i8], ptr %i.le, i64 %i.ml
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !399
  %i.mo = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.ml ; 2 uses
  %i.mp = getelementptr [8 x i8], ptr %i.mo, i64 %i.lf
  %i.mq = load double, ptr %i.mp, align 8, !tbaa !399
  %i.mr = getelementptr [8 x i8], ptr %i.mo, i64 %i.lh
  %i.ms = load double, ptr %i.mr, align 8, !tbaa !399
  %i.mt = insertelement <2 x double> poison, double %i.mn, i64 0
  %i.mu = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mv = insertelement <2 x double> poison, double %i.mq, i64 0
  %i.mw = insertelement <2 x double> %i.mv, double %i.ms, i64 1
  %i.mx = fmul <2 x double> %i.mu, %i.mw
  %i.my = fadd <2 x double> %i.mk, %i.mx          ; 2 uses
  %i.mz = add nuw nsw i64 %.1209486, 2            ; 2 uses
  %exitcond550.not.1 = icmp eq i64 %i.mz, %1
  br i1 %exitcond550.not.1, label %._crit_edge491, label %.lr.ph490.new, !llvm.loop !1528

._crit_edge491:                                   ; preds = %.prol.loopexit, %.lr.ph490.new, %._crit_edge482.._crit_edge491_crit_edge
  %.pre-phi572 = phi i64 [ %.pre571, %._crit_edge482.._crit_edge491_crit_edge ], [ %i.lg, %.lr.ph490.new ], [ %i.lg, %.prol.loopexit ]
  %i.na = phi <2 x double> [ %i.lc, %._crit_edge482.._crit_edge491_crit_edge ], [ %.lcssa651.unr, %.prol.loopexit ], [ %i.my, %.lr.ph490.new ] ; 2 uses
  %i.nb = mul nsw i64 %.2494, %5
  %i.nc = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nb ; 2 uses
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !399
  %i.ne = extractelement <2 x double> %i.na, i64 0
  %i.nf = tail call double @llvm.fmuladd.f64(double %6, double %i.ne, double %i.nd)
  store double %i.nf, ptr %i.nc, align 8, !tbaa !399
  %i.ng = mul nsw i64 %.pre-phi572, %5
  %i.nh = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ng ; 2 uses
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !399
  %i.nj = extractelement <2 x double> %i.na, i64 1
  %i.nk = tail call double @llvm.fmuladd.f64(double %6, double %i.nj, double %i.ni)
  store double %i.nk, ptr %i.nh, align 8, !tbaa !399
  %i.nl = add nuw nsw i64 %.2494, 2               ; 3 uses
  %i.nm = icmp slt i64 %i.nl, %i.e
  br i1 %i.nm, label %.preheader405, label %.preheader404, !llvm.loop !1529

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge507
  %.3511 = phi i64 [ %.2.lcssa, %.preheader.lr.ph ], [ %i.qk, %._crit_edge507 ] ; 4 uses
  br i1 %.not496, label %._crit_edge500, label %.lr.ph499

.lr.ph499:                                        ; preds = %.preheader
  %i.nn = load ptr, ptr %3, align 8, !tbaa !929   ; 5 uses
  %i.no = mul nsw i64 %.3511, %.sroa.33.0.copyload
  %invariant.gep = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.no ; 5 uses
  br i1 %i.jp, label %.epil.preheader674, label %.lr.ph499.new

.lr.ph499.new:                                    ; preds = %.lr.ph499, %.lr.ph499.new
  %i.np = phi i64 [ %i.on, %.lr.ph499.new ], [ 2, %.lr.ph499 ] ; 6 uses
  %.0205498 = phi i64 [ %i.oh, %.lr.ph499.new ], [ 0, %.lr.ph499 ] ; 2 uses
  %.0392497 = phi <2 x double> [ %i.om, %.lr.ph499.new ], [ zeroinitializer, %.lr.ph499 ]
  %niter681 = phi i64 [ %niter681.next.3, %.lr.ph499.new ], [ 0, %.lr.ph499 ]
  %i.nq = getelementptr [8 x i8], ptr %i.nn, i64 %.0205498
  %i.nr = load <2 x double>, ptr %i.nq, align 1, !tbaa !17
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0205498
  %i.ns = load <2 x double>, ptr %gep, align 1, !tbaa !17
  %i.nt = fmul <2 x double> %i.nr, %i.ns
  %i.nu = fadd <2 x double> %.0392497, %i.nt
  %i.nv = add nuw nsw i64 %i.np, 2                ; 2 uses
  %i.nw = getelementptr [8 x i8], ptr %i.nn, i64 %i.np
  %i.nx = load <2 x double>, ptr %i.nw, align 1, !tbaa !17
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.np
  %i.ny = load <2 x double>, ptr %gep.1, align 1, !tbaa !17
  %i.nz = fmul <2 x double> %i.nx, %i.ny
  %i.oa = fadd <2 x double> %i.nu, %i.nz
  %i.ob = add nuw nsw i64 %i.np, 4                ; 2 uses
  %i.oc = getelementptr [8 x i8], ptr %i.nn, i64 %i.nv
  %i.od = load <2 x double>, ptr %i.oc, align 1, !tbaa !17
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.nv
  %i.oe = load <2 x double>, ptr %gep.2, align 1, !tbaa !17
  %i.of = fmul <2 x double> %i.od, %i.oe
  %i.og = fadd <2 x double> %i.oa, %i.of
  %i.oh = add nuw nsw i64 %i.np, 6                ; 2 uses
  %i.oi = getelementptr [8 x i8], ptr %i.nn, i64 %i.ob
  %i.oj = load <2 x double>, ptr %i.oi, align 1, !tbaa !17
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ob
  %i.ok = load <2 x double>, ptr %gep.3, align 1, !tbaa !17
  %i.ol = fmul <2 x double> %i.oj, %i.ok
  %i.om = fadd <2 x double> %i.og, %i.ol          ; 3 uses
  %i.on = add nuw nsw i64 %i.np, 8                ; 2 uses
  %niter681.next.3 = add i64 %niter681, 4         ; 2 uses
  %niter681.ncmp.3 = icmp eq i64 %niter681.next.3, %unroll_iter680
  br i1 %niter681.ncmp.3, label %._crit_edge500.loopexit.unr-lcssa, label %.lr.ph499.new, !llvm.loop !1530

._crit_edge500.loopexit.unr-lcssa:                ; preds = %.lr.ph499.new
  br i1 %lcmp.mod677.not, label %._crit_edge500, label %.epil.preheader674

.epil.preheader674:                               ; preds = %._crit_edge500.loopexit.unr-lcssa, %.lr.ph499
  %.epil.init = phi i64 [ 2, %.lr.ph499 ], [ %i.on, %._crit_edge500.loopexit.unr-lcssa ]
  %.0205498.epil.init = phi i64 [ 0, %.lr.ph499 ], [ %i.oh, %._crit_edge500.loopexit.unr-lcssa ]
  %.0392497.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph499 ], [ %i.om, %._crit_edge500.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod679)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader674
  %i.oo = phi i64 [ %.epil.init, %.epil.preheader674 ], [ %i.ou, %bb.f ] ; 2 uses
  %.0205498.epil = phi i64 [ %.0205498.epil.init, %.epil.preheader674 ], [ %i.oo, %bb.f ] ; 2 uses
  %.0392497.epil = phi <2 x double> [ %.0392497.epil.init, %.epil.preheader674 ], [ %i.ot, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader674 ], [ %epil.iter.next, %bb.f ]
  %i.op = getelementptr [8 x i8], ptr %i.nn, i64 %.0205498.epil
  %i.oq = load <2 x double>, ptr %i.op, align 1, !tbaa !17
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0205498.epil
  %i.or = load <2 x double>, ptr %gep.epil, align 1, !tbaa !17
  %i.os = fmul <2 x double> %i.oq, %i.or
  %i.ot = fadd <2 x double> %.0392497.epil, %i.os ; 2 uses
  %i.ou = add nuw nsw i64 %i.oo, 2
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter675
  br i1 %epil.iter.cmp.not, label %._crit_edge500, label %bb.f, !llvm.loop !1531

._crit_edge500:                                   ; preds = %._crit_edge500.loopexit.unr-lcssa, %bb.f, %.preheader
  %.0392.lcssa = phi <2 x double> [ zeroinitializer, %.preheader ], [ %i.om, %._crit_edge500.loopexit.unr-lcssa ], [ %i.ot, %bb.f ] ; 2 uses
  %.0205.lcssa = phi i64 [ 0, %.preheader ], [ %i.jl, %bb.f ], [ %i.jl, %._crit_edge500.loopexit.unr-lcssa ] ; 5 uses
  %shift = shufflevector <2 x double> %.0392.lcssa, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
end_hunk_4
begin_hunk_5_@_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi2ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE:bb.a
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit198

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit198: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.ad
  ret void

bb.ae:                                            ; preds = %bb.g
  %i.gn = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit203

bb.af:                                            ; preds = %bb.k
  %i.go = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit203

.lr.ph:                                           ; preds = %.lr.ph.lr.ph, %.loopexit
  %i.gp = phi i64 [ %i.av, %.lr.ph.lr.ph ], [ %i.gl, %.loopexit ] ; 5 uses
  %.sroa.speculated219374 = phi i64 [ %.sroa.speculated219373, %.lr.ph.lr.ph ], [ %.sroa.speculated219, %.loopexit ] ; 2 uses
  %i.gq = mul nsw i64 %i.gp, %3
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.gq
  br label %bb.ag

bb.ag:                                            ; preds = %.lr.ph, %bb.am
  %.0323 = phi i64 [ 0, %.lr.ph ], [ %i.gw, %bb.am ] ; 4 uses
  %i.gr = sub nsw i64 %i.gp, %.0323
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.gr, i64 %.sroa.speculated244) ; 3 uses
  %i.gs = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.gs, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #38
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0323
  store ptr %gep, ptr %14, align 8
  store i64 %3, ptr %i.at, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %.sroa.speculated219374, i64 noundef %.sroa.speculated, i64 noundef 0, i64 noundef 0)
          to label %bb.ai unwind label %.split

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #38
  %i.gt = getelementptr [8 x i8], ptr %4, i64 %.0323
  store ptr %i.gt, ptr %15, align 8
  store i64 %6, ptr %i.au, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.r, ptr noundef nonnull %i.af, i64 noundef %.sroa.speculated, i64 noundef %.sroa.speculated219374, i64 noundef %1, double noundef -1.000000e+00, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.aj unwind label %.split334

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %bb.am

.split:                                           ; preds = %bb.ah
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.ak

bb.ak:                                            ; preds = %.split.us332, %.split
  %.us-phi = phi { ptr, i32 } [ %i.gu, %.split ], [ %i.gg, %.split.us332 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #38
  br label %.body

.split334:                                        ; preds = %bb.ai
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

bb.al:                                            ; preds = %.split334.us, %.split334
  %.us-phi335 = phi { ptr, i32 } [ %i.gv, %.split334 ], [ %i.gh, %.split334.us ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #38
  br label %.body

bb.am:                                            ; preds = %bb.aj, %bb.ag
  %i.gw = add nsw i64 %.0323, %.sroa.speculated244 ; 2 uses
  %i.gx = icmp slt i64 %i.gw, %i.gp
  br i1 %i.gx, label %bb.ag, label %.loopexit, !llvm.loop !1563

.body:                                            ; preds = %.split.us.split.us, %.split321.us.split.us, %.split318.us.split.us, %bb.al, %bb.ak, %bb.o
  %.pn163.pn.pn.pn = phi { ptr, i32 } [ %i.ak, %bb.o ], [ %.us-phi, %bb.ak ], [ %i.gj, %.split318.us.split.us ], [ %.us-phi335, %bb.al ], [ %i.gi, %.split.us.split.us ], [ %i.gk, %.split321.us.split.us ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  br i1 %i.ag, label %bb.an, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit203

bb.an:                                            ; preds = %.body
  call void @free(ptr noundef %i.ae) #38
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit203

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit203: ; preds = %bb.an, %.body, %bb.af, %bb.ae
  %.pn163.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.gn, %bb.ae ], [ %i.go, %bb.af ], [ %.pn163.pn.pn.pn, %.body ], [ %.pn163.pn.pn.pn, %bb.an ]
  br i1 %i.s, label %bb.ao, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit204

bb.ao:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit203
  call void @free(ptr noundef %i.q) #38
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit204

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit204: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit203, %bb.ao
  resume { ptr, i32 } %.pn163.pn.pn.pn.pn.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS0_IdLin1ELin1ELi0ELin1ELin1EEES1_Li0EEEEERKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %3 = alloca %"class.Eigen::internal::const_blas_data_mapper.894", align 8 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !1578, !nonnull !432, !align !451 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !452  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1580, !nonnull !432, !align !451
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.c, i64 noundef 1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %.pr.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !665 ; 2 uses
  %.pre.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !1578 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1580, !nonnull !432, !align !451 ; 2 uses
  %i.i = icmp slt i64 %.pr.i.i.i.i, 1
  br i1 %i.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i: ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !666
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.pr.i.i.i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.j, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !399
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i: ; preds = %.thread, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i, %bb.c
  %i.k = phi ptr [ %i.f, %.thread ], [ %i.h, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i ], [ %i.h, %bb.c ] ; 3 uses
  %i.l = phi ptr [ %i.a, %.thread ], [ %.pre.i.i.i.i, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i ], [ %.pre.i.i.i.i, %bb.c ] ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !452  ; 3 uses
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i
  %i.p = load ptr, ptr %i.l, align 8, !tbaa !454, !noalias !1581 ; 6 uses
  %i.q = load ptr, ptr %i.k, align 8, !tbaa !666, !noalias !1584 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.s = load i64, ptr %i.r, align 8, !tbaa !665, !noalias !1584 ; 4 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load double, ptr %i.p, align 8, !tbaa !399
  %i.v = load double, ptr %i.q, align 8, !tbaa !399
  %i.w = fmul double %i.u, %i.v                   ; 3 uses
  %i.x = icmp sgt i64 %i.s, 1
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.e
  %i.y = add nsw i64 %i.s, -1                     ; 2 uses
  %i.z = add nsw i64 %i.s, -2
  %xtraiter = and i64 %i.y, 3                     ; 3 uses
  %i.aa = icmp ult i64 %i.z, 3
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.y, -4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.01724.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %.02223.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ab = getelementptr [8 x i8], ptr %i.p, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !399
  %i.ad = getelementptr [8 x i8], ptr %i.q, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !399
  %i.af = fmul double %i.ac, %i.ae
  %i.ag = fadd double %.02223.i.i.i.i.i.i.i.i.i.i.i.i, %i.af
  %i.ah = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %i.p, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !399
  %i.ak = getelementptr [8 x i8], ptr %i.q, i64 %i.ah
  %i.al = load double, ptr %i.ak, align 8, !tbaa !399
  %i.am = fmul double %i.aj, %i.al
  %i.an = fadd double %i.ag, %i.am
  %i.ao = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.p, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !399
  %i.ar = getelementptr [8 x i8], ptr %i.q, i64 %i.ao
  %i.as = load double, ptr %i.ar, align 8, !tbaa !399
  %i.at = fmul double %i.aq, %i.as
  %i.au = fadd double %i.an, %i.at
  %i.av = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.p, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !399
  %i.ay = getelementptr [8 x i8], ptr %i.q, i64 %i.av
  %i.az = load double, ptr %i.ay, align 8, !tbaa !399
  %i.ba = fmul double %i.ax, %i.az
  %i.bb = fadd double %i.au, %i.ba                ; 3 uses
  %i.bc = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !927

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:    ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bc, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.w, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.bb, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.01724.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.01724.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.02223.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.bd = getelementptr [8 x i8], ptr %i.p, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.be = load double, ptr %i.bd, align 8, !tbaa !399
  %i.bf = getelementptr [8 x i8], ptr %i.q, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !399
  %i.bh = fmul double %i.be, %i.bg
  %i.bi = fadd double %.02223.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.bh ; 2 uses
  %i.bj = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !1587

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.d ], [ %i.w, %bb.e ], [ %i.bb, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.bk = load ptr, ptr %0, align 8, !tbaa !666   ; 2 uses
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !399
  %i.bm = fadd double %.0.i.i.i.i.i.i.i.i.i.i, %i.bl
  store double %i.bm, ptr %i.bk, align 8, !tbaa !399
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6_init1INS_7ProductINS1_IdLin1ELin1ELi0ELin1ELin1EEES2_Li0EEES7_EEvRKNS_9DenseBaseIT0_EE.exit

bb.f:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !463
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.bp = load ptr, ptr %i.l, align 8, !tbaa !454
  store ptr %i.bp, ptr %2, align 8, !tbaa !929
  %i.bq = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.n, ptr %i.bq, align 8, !tbaa !931
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  %i.br = load ptr, ptr %i.k, align 8, !tbaa !666
  store ptr %i.br, ptr %3, align 8, !tbaa !932
  %i.bs = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.bs, align 8, !tbaa !934
  %i.bt = load ptr, ptr %0, align 8, !tbaa !666
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %i.n, i64 noundef %i.bo, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.bt, i64 noundef 1, double noundef 1.000000e+00)
          to label %.noexc3 unwind label %bb.g

.noexc3:                                          ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6_init1INS_7ProductINS1_IdLin1ELin1ELi0ELin1ELin1EEES2_Li0EEES7_EEvRKNS_9DenseBaseIT0_EE.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6_init1INS_7ProductINS1_IdLin1ELin1ELi0ELin1ELin1EEES2_Li0EEES7_EEvRKNS_9DenseBaseIT0_EE.exit: ; preds = %.noexc3, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS2_IdLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.i.i.i.i.i.i
  ret void

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.bu = landingpad { ptr, i32 }
          cleanup
  %i.bv = load ptr, ptr %0, align 8, !tbaa !666
  call void @free(ptr noundef %i.bv) #38
  resume { ptr, i32 } %i.bu
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #20 comdat align 2 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  %i.b = icmp eq i64 %2, 0
  %or.cond.i = or i1 %i.a, %i.b
  br i1 %or.cond.i, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sdiv i64 9223372036854775807, %2
  %i.d = icmp sgt i64 %1, %i.c
  br i1 %i.d, label %bb.c, label %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #38 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #41
  unreachable

_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit: ; preds = %bb.a, %bb.b
  %i.f = mul nsw i64 %2, %1                       ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !665
  %.not.i = icmp eq i64 %i.f, %i.h
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit
  %i.i = load ptr, ptr %0, align 8, !tbaa !666
  tail call void @free(ptr noundef %i.i) #38
  %i.j = icmp sgt i64 %i.f, 0
  br i1 %i.j, label %bb.e, label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  %i.k = icmp samesign ugt i64 %i.f, 2305843009213693951
  br i1 %i.k, label %bb.f, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.l = tail call ptr @__cxa_allocate_exception(i64 8) #38 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.l, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #41
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.e
  %i.m = shl nuw i64 %i.f, 3
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #43 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.g, label %.sink.split.i

bb.g:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #38 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #41
  unreachable

.sink.split.i:                                    ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %.sink.i = phi ptr [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i ], [ null, %bb.d ]
  store ptr %.sink.i, ptr %0, align 8, !tbaa !666
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELi1ELi0EE6resizeElll.exit: ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit, %.sink.split.i
  store i64 %1, ptr %i.g, align 8, !tbaa !665
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES3_NS_10DenseShapeES4_Li8EE13scaleAndAddToIS3_EEvRT_RKS3_SA_RKd(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::Transpose.1224", align 8 ; 8 uses
  %5 = alloca %"class.Eigen::Transpose.553", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::Transpose.1063", align 8 ; 8 uses
  %7 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %8 = alloca %"class.Eigen::internal::const_blas_data_mapper.894", align 8 ; 5 uses
  %9 = alloca %"class.Eigen::internal::gemm_blocking_space.865", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !463  ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKS3_Lin1ELi1ELb1EEENS_10DenseShapeES8_Li7EE13scaleAndAddToINS4_IS3_Lin1ELi1ELb1EEEEEvRT_RS5_RS7_RKd.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !452  ; 9 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKS3_Lin1ELi1ELb1EEENS_10DenseShapeES8_Li7EE13scaleAndAddToINS4_IS3_Lin1ELi1ELb1EEEEEvRT_RS5_RS7_RKd.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !463  ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKS3_Lin1ELi1ELb1EEENS_10DenseShapeES8_Li7EE13scaleAndAddToINS4_IS3_Lin1ELi1ELb1EEEEEvRT_RS5_RS7_RKd.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !463  ; 3 uses
  %i.l = icmp eq i64 %i.k, 1
  br i1 %i.l, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %0, align 8, !tbaa !454, !noalias !1588 ; 3 uses
  %i.n = load ptr, ptr %2, align 8, !tbaa !454, !noalias !1591 ; 7 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !452, !noalias !1591 ; 4 uses
  %i.q = icmp eq i64 %i.e, 1
  %i.r = load double, ptr %3, align 8, !tbaa !399 ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %1, align 8, !tbaa !454, !noalias !1594 ; 6 uses
  %i.t = icmp eq i64 %i.p, 0
  br i1 %i.t, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.u = load double, ptr %i.s, align 8, !tbaa !399
  %i.v = load double, ptr %i.n, align 8, !tbaa !399
  %i.w = fmul double %i.u, %i.v                   ; 3 uses
  %i.x = icmp sgt i64 %i.p, 1
  br i1 %i.x, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.g
  %i.y = add nsw i64 %i.p, -1                     ; 2 uses
  %i.z = add nsw i64 %i.p, -2
  %xtraiter72 = and i64 %i.y, 3                   ; 3 uses
  %i.aa = icmp ult i64 %i.z, 3
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter77 = and i64 %i.y, -4
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %.01724.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.bc, %.lr.ph.i.i.i.i.i.i ] ; 6 uses
  %.02223.i.i.i.i.i.i = phi double [ %i.w, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.bb, %.lr.ph.i.i.i.i.i.i ]
  %niter78 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter78.next.3, %.lr.ph.i.i.i.i.i.i ]
  %i.ab = getelementptr [8 x i8], ptr %i.s, i64 %.01724.i.i.i.i.i.i
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !399
  %i.ad = getelementptr [8 x i8], ptr %i.n, i64 %.01724.i.i.i.i.i.i
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !399
  %i.af = fmul double %i.ac, %i.ae
  %i.ag = fadd double %.02223.i.i.i.i.i.i, %i.af
  %i.ah = add nuw nsw i64 %.01724.i.i.i.i.i.i, 1  ; 2 uses
  %i.ai = getelementptr [8 x i8], ptr %i.s, i64 %i.ah
  %i.aj = load double, ptr %i.ai, align 8, !tbaa !399
  %i.ak = getelementptr [8 x i8], ptr %i.n, i64 %i.ah
  %i.al = load double, ptr %i.ak, align 8, !tbaa !399
  %i.am = fmul double %i.aj, %i.al
  %i.an = fadd double %i.ag, %i.am
  %i.ao = add nuw nsw i64 %.01724.i.i.i.i.i.i, 2  ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %i.s, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !399
  %i.ar = getelementptr [8 x i8], ptr %i.n, i64 %i.ao
  %i.as = load double, ptr %i.ar, align 8, !tbaa !399
  %i.at = fmul double %i.aq, %i.as
  %i.au = fadd double %i.an, %i.at
  %i.av = add nuw nsw i64 %.01724.i.i.i.i.i.i, 3  ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.s, i64 %i.av
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !399
  %i.ay = getelementptr [8 x i8], ptr %i.n, i64 %i.av
  %i.az = load double, ptr %i.ay, align 8, !tbaa !399
  %i.ba = fmul double %i.ax, %i.az
  %i.bb = fadd double %i.au, %i.ba                ; 3 uses
  %i.bc = add nuw nsw i64 %.01724.i.i.i.i.i.i, 4  ; 2 uses
  %niter78.next.3 = add nuw nsw i64 %niter78, 4   ; 2 uses
  %niter78.ncmp.3 = icmp eq i64 %niter78.next.3, %unroll_iter77
  br i1 %niter78.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1597

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod74.not = icmp eq i64 %xtraiter72, 0
  br i1 %lcmp.mod74.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bc, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.i.epil.init = phi double [ %i.w, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.bb, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod76 = icmp ne i64 %xtraiter72, 0
  tail call void @llvm.assume(i1 %lcmp.mod76)
  br label %.lr.ph.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.epil:                          ; preds = %.lr.ph.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader
  %.01724.i.i.i.i.i.i.epil = phi i64 [ %i.bj, %.lr.ph.i.i.i.i.i.i.epil ], [ %.01724.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i.epil = phi double [ %i.bi, %.lr.ph.i.i.i.i.i.i.epil ], [ %.02223.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %epil.iter73 = phi i64 [ %epil.iter73.next, %.lr.ph.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %i.bd = getelementptr [8 x i8], ptr %i.s, i64 %.01724.i.i.i.i.i.i.epil
  %i.be = load double, ptr %i.bd, align 8, !tbaa !399
  %i.bf = getelementptr [8 x i8], ptr %i.n, i64 %.01724.i.i.i.i.i.i.epil
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !399
  %i.bh = fmul double %i.be, %i.bg
  %i.bi = fadd double %.02223.i.i.i.i.i.i.epil, %i.bh ; 2 uses
  %i.bj = add nuw nsw i64 %.01724.i.i.i.i.i.i.epil, 1
  %epil.iter73.next = add i64 %epil.iter73, 1     ; 2 uses
  %epil.iter73.cmp.not = icmp eq i64 %epil.iter73.next, %xtraiter72
  br i1 %epil.iter73.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i, label %.lr.ph.i.i.i.i.i.i.epil, !llvm.loop !1598

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.epil, %bb.g, %bb.f
  %.0.i.i.i.i = phi double [ 0.000000e+00, %bb.f ], [ %i.w, %bb.g ], [ %i.bb, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IS4_Lin1ELi1ELb1EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.loopexit.unr-lcssa ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.epil ]
  %i.bk = load double, ptr %i.m, align 8, !tbaa !399
  %i.bl = tail call double @llvm.fmuladd.f64(double %i.r, double %.0.i.i.i.i, double %i.bk)
  store double %i.bl, ptr %i.m, align 8, !tbaa !399
  br label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKS3_Lin1ELi1ELb1EEENS_10DenseShapeES8_Li7EE13scaleAndAddToINS4_IS3_Lin1ELi1ELb1EEEEEvRT_RS5_RS7_RKd.exit

bb.h:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  %i.bm = load ptr, ptr %1, align 8, !tbaa !454
  store ptr %i.bm, ptr %7, align 8, !tbaa !929
  %i.bn = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.e, ptr %i.bn, align 8, !tbaa !931
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #38
  store ptr %i.n, ptr %8, align 8, !tbaa !932
  %i.bo = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 1, ptr %i.bo, align 8, !tbaa !934
  call void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %i.e, i64 noundef %i.b, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef %i.m, i64 noundef 1, double noundef %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  br label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKS3_Lin1ELi1ELb1EEENS_10DenseShapeES8_Li7EE13scaleAndAddToINS4_IS3_Lin1ELi1ELb1EEEEEvRT_RS5_RS7_RKd.exit

bb.i:                                             ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !452 ; 2 uses
  %i.br = icmp eq i64 %i.bq, 1
  br i1 %i.br, label %bb.j, label %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_S5_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i

bb.j:                                             ; preds = %bb.i
  %i.bs = load ptr, ptr %0, align 8, !tbaa !454, !noalias !1599 ; 3 uses
  %i.bt = load ptr, ptr %1, align 8, !tbaa !454, !noalias !1602 ; 7 uses
  %i.bu = icmp eq i64 %i.h, 1
  br i1 %i.bu, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bv = load double, ptr %3, align 8, !tbaa !399
  %i.bw = load ptr, ptr %2, align 8, !tbaa !454, !noalias !1605 ; 6 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.by = load i64, ptr %i.bx, align 8, !tbaa !452, !noalias !1605 ; 4 uses
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = load double, ptr %i.bt, align 8, !tbaa !399
  %i.cb = load double, ptr %i.bw, align 8, !tbaa !399
  %i.cc = fmul double %i.ca, %i.cb                ; 3 uses
  %i.cd = icmp sgt i64 %i.by, 1
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i.i29.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i

.lr.ph.i.i.i.i.i.i29.preheader:                   ; preds = %bb.l
  %i.ce = add nsw i64 %i.by, -1                   ; 2 uses
  %i.cf = add nsw i64 %i.by, -2
  %xtraiter = and i64 %i.ce, 3                    ; 3 uses
  %i.cg = icmp ult i64 %i.cf, 3
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i.i29.epil.preheader, label %.lr.ph.i.i.i.i.i.i29.preheader.new

.lr.ph.i.i.i.i.i.i29.preheader.new:               ; preds = %.lr.ph.i.i.i.i.i.i29.preheader
  %unroll_iter = and i64 %i.ce, -4
  br label %.lr.ph.i.i.i.i.i.i29

.lr.ph.i.i.i.i.i.i29:                             ; preds = %.lr.ph.i.i.i.i.i.i29, %.lr.ph.i.i.i.i.i.i29.preheader.new
  %.01724.i.i.i.i.i.i30 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i29.preheader.new ], [ %i.dm, %.lr.ph.i.i.i.i.i.i29 ] ; 6 uses
  %.02223.i.i.i.i.i.i31 = phi double [ %i.cc, %.lr.ph.i.i.i.i.i.i29.preheader.new ], [ %i.dl, %.lr.ph.i.i.i.i.i.i29 ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i29.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i29 ]
  %i.ch = mul nsw i64 %.01724.i.i.i.i.i.i30, %i.e
  %i.ci = getelementptr [8 x i8], ptr %i.bt, i64 %i.ch
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !399
  %i.ck = getelementptr [8 x i8], ptr %i.bw, i64 %.01724.i.i.i.i.i.i30
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !399
  %i.cm = fmul double %i.cj, %i.cl
  %i.cn = fadd double %.02223.i.i.i.i.i.i31, %i.cm
  %i.co = add nuw nsw i64 %.01724.i.i.i.i.i.i30, 1 ; 2 uses
  %i.cp = mul nsw i64 %i.co, %i.e
  %i.cq = getelementptr [8 x i8], ptr %i.bt, i64 %i.cp
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !399
  %i.cs = getelementptr [8 x i8], ptr %i.bw, i64 %i.co
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !399
  %i.cu = fmul double %i.cr, %i.ct
  %i.cv = fadd double %i.cn, %i.cu
  %i.cw = add nuw nsw i64 %.01724.i.i.i.i.i.i30, 2 ; 2 uses
  %i.cx = mul nsw i64 %i.cw, %i.e
  %i.cy = getelementptr [8 x i8], ptr %i.bt, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !399
  %i.da = getelementptr [8 x i8], ptr %i.bw, i64 %i.cw
  %i.db = load double, ptr %i.da, align 8, !tbaa !399
  %i.dc = fmul double %i.cz, %i.db
  %i.dd = fadd double %i.cv, %i.dc
  %i.de = add nuw nsw i64 %.01724.i.i.i.i.i.i30, 3 ; 2 uses
  %i.df = mul nsw i64 %i.de, %i.e
  %i.dg = getelementptr [8 x i8], ptr %i.bt, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !399
  %i.di = getelementptr [8 x i8], ptr %i.bw, i64 %i.de
  %i.dj = load double, ptr %i.di, align 8, !tbaa !399
  %i.dk = fmul double %i.dh, %i.dj
  %i.dl = fadd double %i.dd, %i.dk                ; 3 uses
  %i.dm = add nuw nsw i64 %.01724.i.i.i.i.i.i30, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i29, !llvm.loop !1608

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i29
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i, label %.lr.ph.i.i.i.i.i.i29.epil.preheader

.lr.ph.i.i.i.i.i.i29.epil.preheader:              ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i29.preheader
  %.01724.i.i.i.i.i.i30.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.dm, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.i31.epil.init = phi double [ %i.cc, %.lr.ph.i.i.i.i.i.i29.preheader ], [ %i.dl, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.loopexit.unr-lcssa ]
  %lcmp.mod71 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod71)
  br label %.lr.ph.i.i.i.i.i.i29.epil

.lr.ph.i.i.i.i.i.i29.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i29.epil, %.lr.ph.i.i.i.i.i.i29.epil.preheader
  %.01724.i.i.i.i.i.i30.epil = phi i64 [ %i.du, %.lr.ph.i.i.i.i.i.i29.epil ], [ %.01724.i.i.i.i.i.i30.epil.init, %.lr.ph.i.i.i.i.i.i29.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i31.epil = phi double [ %i.dt, %.lr.ph.i.i.i.i.i.i29.epil ], [ %.02223.i.i.i.i.i.i31.epil.init, %.lr.ph.i.i.i.i.i.i29.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i29.epil ], [ 0, %.lr.ph.i.i.i.i.i.i29.epil.preheader ]
  %i.dn = mul nsw i64 %.01724.i.i.i.i.i.i30.epil, %i.e
  %i.do = getelementptr [8 x i8], ptr %i.bt, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !399
  %i.dq = getelementptr [8 x i8], ptr %i.bw, i64 %.01724.i.i.i.i.i.i30.epil
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !399
  %i.ds = fmul double %i.dp, %i.dr
  %i.dt = fadd double %.02223.i.i.i.i.i.i31.epil, %i.ds ; 2 uses
  %i.du = add nuw nsw i64 %.01724.i.i.i.i.i.i30.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i, label %.lr.ph.i.i.i.i.i.i29.epil, !llvm.loop !1609

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i29.epil, %bb.l, %bb.k
  %.0.i.i.i.i28 = phi double [ 0.000000e+00, %bb.k ], [ %i.cc, %bb.l ], [ %i.dl, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEELi1ELin1ELb1EEEE3dotINS1_IS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSC_17scalar_product_opIdSG_EEE10ReturnTypeERKNS0_ISE_EE.exit.i.loopexit.unr-lcssa ], [ %i.dt, %.lr.ph.i.i.i.i.i.i29.epil ]
  %i.dv = load double, ptr %i.bs, align 8, !tbaa !399
  %i.dw = tail call double @llvm.fmuladd.f64(double %i.bv, double %.0.i.i.i.i28, double %i.dv)
  store double %i.dw, ptr %i.bs, align 8, !tbaa !399
  br label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKS3_Lin1ELi1ELb1EEENS_10DenseShapeES8_Li7EE13scaleAndAddToINS4_IS3_Lin1ELi1ELb1EEEEEvRT_RS5_RS7_RKd.exit

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  store ptr %i.bt, ptr %6, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.b, ptr %.sroa.535.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.10.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  store ptr %i.bs, ptr %4, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.k, ptr %.sroa.539.0..sroa_idx, align 8
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %.sroa.640.0..sroa_idx, align 8
  %.sroa.741.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.943.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.741.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.943.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  store ptr %2, ptr %5, align 8
  call void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS4_IKNS_5BlockIS7_Li1ELin1ELb0EEEEENS4_INS9_IS6_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSL_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEKNS_5BlockIKS3_Lin1ELi1ELb1EEENS_10DenseShapeES8_Li7EE13scaleAndAddToINS4_IS3_Lin1ELi1ELb1EEEEEvRT_RS5_RS7_RKd.exit

_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES5_S5_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i: ; preds = %bb.i
  %i.dx = load double, ptr %3, align 8, !tbaa !399
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #38
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 16, i1 false)
  %i.dy = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 3 uses
  store i64 %i.bq, ptr %i.dy, align 8, !tbaa !1267
  %i.dz = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 3 uses
  store i64 %i.k, ptr %i.dz, align 8, !tbaa !1270
end_hunk_5
begin_hunk_6_@_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi1ELb0ELb0EEclEPdRKS3_llll:bb.a
  %i.ec = add nuw nsw i64 %.050, 3
  %i.ed = mul nsw i64 %i.cm, %i.ec
  %i.ee = getelementptr [8 x i8], ptr %i.cp, i64 %i.ed
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !399
  %i.eg = getelementptr [8 x i8], ptr %1, i64 %.349
  %i.eh = getelementptr i8, ptr %i.eg, i64 24
  store double %i.ef, ptr %i.eh, align 8, !tbaa !399
  %i.ei = add nsw i64 %.349, 4                    ; 2 uses
  %i.ej = add nuw nsw i64 %.050, 4                ; 2 uses
  %exitcond56.not.3 = icmp eq i64 %i.ej, %3
  br i1 %exitcond56.not.3, label %._crit_edge, label %scalar.ph81, !llvm.loop !1663
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS_5BlockIKNS_3MapIKNS5_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEESB_EEvRKT_RKT0_RT1_RKNSO_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::const_blas_data_mapper.894", align 8 ; 6 uses
  %5 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1610, !nonnull !432, !align !451 ; 3 uses
  %i.b = load double, ptr %3, align 8, !tbaa !399
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !394  ; 4 uses
  %i.e = icmp ugt i64 %i.d, 2305843009213693951
  br i1 %i.e, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #38 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #41
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !tbaa !1664   ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.g

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.h = shl nuw i64 %i.d, 3                      ; 2 uses
  %i.i = icmp samesign ult i64 %i.d, 16385
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = add nuw nsw i64 %i.h, 15
  %i.k = alloca i8, i64 %i.j, align 16            ; 2 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.l = tail call noalias ptr @malloc(i64 noundef %i.h) #43 ; 3 uses
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = tail call ptr @__cxa_allocate_exception(i64 8) #38 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.n, align 8, !tbaa !29
  tail call void @__cxa_throw(ptr nonnull %i.n, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #41
  unreachable

bb.g:                                             ; preds = %bb.d, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit, %bb.e
  %i.o = phi ptr [ null, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.k, %bb.d ], [ %i.l, %bb.e ] ; 2 uses
  %i.p = phi ptr [ %i.g, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ], [ %i.k, %bb.d ], [ %i.l, %bb.e ]
  %i.q = icmp samesign ugt i64 %i.d, 16384        ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.s = load i64, ptr %i.r, align 8, !tbaa !463
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !452  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !454
  store ptr %i.v, ptr %4, align 8, !tbaa !932
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.u, ptr %i.w, align 8, !tbaa !934
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  store ptr %i.p, ptr %5, align 8, !tbaa !929
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %i.x, align 8, !tbaa !931
  %i.y = load ptr, ptr %2, align 8, !tbaa !666
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdNS2_IdlLi0EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %i.s, i64 noundef %i.u, ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %i.y, i64 noundef 1, double noundef %i.b)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br i1 %i.q, label %bb.i, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.i:                                             ; preds = %bb.h
  call void @free(ptr noundef %i.o) #38
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %bb.h, %bb.i
  ret void

bb.j:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br i1 %i.q, label %bb.k, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit24

bb.k:                                             ; preds = %bb.j
  call void @free(ptr noundef %i.o) #38
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit24

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit24: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.z
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS0_IdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIKNS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELi0EEEEERKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(80) %1) unnamed_addr #20 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %3 = alloca %"class.Eigen::internal::const_blas_data_mapper.894", align 8 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !1666, !nonnull !432, !align !451 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !452  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.c, i64 noundef 1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  %.pr.i.i.i.i = load i64, ptr %i.d, align 8, !tbaa !665 ; 2 uses
  %.pre.i.i.i.i = load ptr, ptr %1, align 8, !tbaa !1666 ; 2 uses
  %i.e = icmp slt i64 %.pr.i.i.i.i, 1
  br i1 %i.e, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i: ; preds = %bb.c
  %i.f = load ptr, ptr %0, align 8, !tbaa !666
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.pr.i.i.i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.f, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !399
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i: ; preds = %bb.a, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i, %bb.c
  %i.g = phi ptr [ %.pre.i.i.i.i, %bb.c ], [ %.pre.i.i.i.i, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !452  ; 3 uses
  %i.k = icmp eq i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.f

bb.d:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i
  %i.l = load ptr, ptr %i.g, align 8, !tbaa !454, !noalias !1674 ; 6 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !1664, !noalias !1677 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.o = load i64, ptr %i.n, align 8, !tbaa !394, !noalias !1677 ; 4 uses
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = load double, ptr %i.l, align 8, !tbaa !399
  %i.r = load double, ptr %i.m, align 8, !tbaa !399
  %i.s = fmul double %i.q, %i.r                   ; 3 uses
  %i.t = icmp sgt i64 %i.o, 1
  br i1 %i.t, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.e
  %i.u = add nsw i64 %i.o, -1                     ; 2 uses
  %i.v = add nsw i64 %i.o, -2
  %xtraiter = and i64 %i.u, 3                     ; 3 uses
  %i.w = icmp ult i64 %i.v, 3
  br i1 %i.w, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new:     ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.u, -4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.01724.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ay, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %.02223.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.ax, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.x = getelementptr [8 x i8], ptr %i.l, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i
  %i.y = load double, ptr %i.x, align 8, !tbaa !399
  %i.z = getelementptr [8 x i8], ptr %i.m, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i
  %i.aa = load double, ptr %i.z, align 8, !tbaa !399
  %i.ab = fmul double %i.y, %i.aa
  %i.ac = fadd double %.02223.i.i.i.i.i.i.i.i.i.i.i.i, %i.ab
  %i.ad = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ae = getelementptr [8 x i8], ptr %i.l, i64 %i.ad
  %i.af = load double, ptr %i.ae, align 8, !tbaa !399
  %i.ag = getelementptr [8 x i8], ptr %i.m, i64 %i.ad
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !399
  %i.ai = fmul double %i.af, %i.ah
  %i.aj = fadd double %i.ac, %i.ai
  %i.ak = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.al = getelementptr [8 x i8], ptr %i.l, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !399
  %i.an = getelementptr [8 x i8], ptr %i.m, i64 %i.ak
  %i.ao = load double, ptr %i.an, align 8, !tbaa !399
  %i.ap = fmul double %i.am, %i.ao
  %i.aq = fadd double %i.aj, %i.ap
  %i.ar = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.as = getelementptr [8 x i8], ptr %i.l, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !399
  %i.au = getelementptr [8 x i8], ptr %i.m, i64 %i.ar
  %i.av = load double, ptr %i.au, align 8, !tbaa !399
  %i.aw = fmul double %i.at, %i.av
  %i.ax = fadd double %i.aq, %i.aw                ; 3 uses
  %i.ay = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1680

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:    ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ay, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.s, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ax, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod8 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod8)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.01724.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.bf, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.01724.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.02223.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.az = getelementptr [8 x i8], ptr %i.l, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.ba = load double, ptr %i.az, align 8, !tbaa !399
  %i.bb = getelementptr [8 x i8], ptr %i.m, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !399
  %i.bd = fmul double %i.ba, %i.bc
  %i.be = fadd double %.02223.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.bd ; 2 uses
  %i.bf = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !1681

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.d ], [ %i.s, %bb.e ], [ %i.ax, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.be, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.bg = load ptr, ptr %0, align 8, !tbaa !666   ; 2 uses
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !399
  %i.bi = fadd double %.0.i.i.i.i.i.i.i.i.i.i, %i.bh
  store double %i.bi, ptr %i.bg, align 8, !tbaa !399
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6_init1INS_7ProductINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIKNS_3MapIKS2_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELi0EEESF_EEvRKNS_9DenseBaseIT0_EE.exit

bb.f:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !463
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  %i.bl = load ptr, ptr %i.g, align 8, !tbaa !454
  store ptr %i.bl, ptr %2, align 8, !tbaa !929
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %i.j, ptr %i.bm, align 8, !tbaa !931
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #38
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %3, align 8, !tbaa !932
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 1, ptr %i.bn, align 8, !tbaa !934
  %i.bo = load ptr, ptr %0, align 8, !tbaa !666
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %i.j, i64 noundef %i.bk, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef %i.bo, i64 noundef 1, double noundef 1.000000e+00)
          to label %.noexc3 unwind label %bb.g

.noexc3:                                          ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #38
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6_init1INS_7ProductINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIKNS_3MapIKS2_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELi0EEESF_EEvRKNS_9DenseBaseIT0_EE.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6_init1INS_7ProductINS1_IdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIKNS_3MapIKS2_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELi0EEESF_EEvRKNS_9DenseBaseIT0_EE.exit: ; preds = %.noexc3, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i
  ret void

bb.g:                                             ; preds = %bb.f, %bb.b
  %i.bp = landingpad { ptr, i32 }
          cleanup
  %i.bq = load ptr, ptr %0, align 8, !tbaa !666
  call void @free(ptr noundef %i.bq) #38
  resume { ptr, i32 } %i.bp
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !766  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !765    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !768
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = ashr exact i64 %i.k, 4                   ; 2 uses
  %i.m = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = shl nuw nsw i64 %1, 4                    ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.p, i1 false)
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !766
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #41
  unreachable

_ZNKSt6vectorIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 576460752303423487) ; 2 uses
  %i.t = shl nuw nsw i64 %i.s, 4
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #42 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = shl nuw nsw i64 %1, 4
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.v, i8 0, i64 %i.w, i1 false)
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.ac, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 3 uses
  %.0911.i.i.i = phi ptr [ %i.ab, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1682)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1685)
  %i.x = load ptr, ptr %.0911.i.i.i, align 8, !tbaa !553, !alias.scope !1685, !noalias !1682
  store ptr %i.x, ptr %.012.i.i.i, align 8, !tbaa !666, !alias.scope !1682, !noalias !1685
  %i.y = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !16, !alias.scope !1685, !noalias !1682
  store i64 %i.aa, ptr %i.y, align 8, !tbaa !665, !alias.scope !1682, !noalias !1685
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i, i8 0, i64 16, i1 false), !alias.scope !1685, !noalias !1682
  %i.ab = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16
  %.not.i.i.i = icmp eq ptr %i.ab, %i.b
  br i1 %.not.i.i.i, label %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i, !llvm.loop !1687

_ZNSt6vectorIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit: ; preds = %.lr.ph.i.i.i, %_ZNKSt6vectorIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE12_M_check_lenEmPKc.exit
  %.not.i36 = icmp eq ptr %i.c, null
  br i1 %.not.i36, label %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE13_M_deallocateEPS2_m.exit37, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !768
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = sub i64 %i.ae, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.af) #39
  br label %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE13_M_deallocateEPS2_m.exit37

_ZNSt12_Vector_baseIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE13_M_deallocateEPS2_m.exit37: ; preds = %_ZNSt6vectorIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, %bb.e
  store ptr %i.u, ptr %0, align 8, !tbaa !765
  %i.ag = getelementptr inbounds nuw [16 x i8], ptr %i.v, i64 %1
  store ptr %i.ag, ptr %i.a, align 8, !tbaa !766
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %i.s
  store ptr %i.ah, ptr %i.h, align 8, !tbaa !768
  br label %bb.f

bb.f:                                             ; preds = %_ZSt27__uninitialized_default_n_aIPN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEmS2_ET_S4_T0_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEESaIS2_EE13_M_deallocateEPS2_m.exit37, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE30multiplySymmetricUpperTriangleERPdPKd(ptr noundef nonnull align 8 dereferenceable(73) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Transpose.553", align 8 ; 4 uses
  %4 = alloca %"class.Eigen::Block.1377", align 8 ; 9 uses
  %i.a = alloca double, align 8                   ; 6 uses
  %5 = alloca %"class.Eigen::Matrix", align 8     ; 8 uses
  %6 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 5 uses
  %7 = alloca %"class.Eigen::internal::const_blas_data_mapper.894", align 8 ; 5 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !553    ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !433
  %i.e = load ptr, ptr %0, align 8, !tbaa !435    ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = getelementptr i8, ptr %i.e, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -4       ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !32   ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = icmp slt i32 %i.k, 0
  %i.n = shl nsw i64 %i.l, 3
  %i.o = select i1 %i.m, i64 -1, i64 %i.n
  %i.p = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.o) #42 ; 3 uses
  store ptr %i.p, ptr %1, align 8, !tbaa !553
  %i.q = load i32, ptr %i.j, align 4, !tbaa !32
  %i.r = sext i32 %i.q to i64
  %i.s = shl nsw i64 %i.r, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.p, i8 0, i64 %i.s, i1 false)
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv.exit: ; preds = %bb.b, %bb.a
  %i.t = phi ptr [ %i.p, %bb.b ], [ %i.b, %bb.a ] ; 8 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !433  ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !tbaa !435
  %.not.i25 = icmp eq ptr %i.w, %i.x
  br i1 %.not.i25, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv.exit
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !32
  %i.aa = sext i32 %i.z to i64
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit: ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv.exit, %bb.c
  %i.ab = phi i64 [ %i.aa, %bb.c ], [ 0, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4rowsEv.exit ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !456 ; 2 uses
  %i.af = load ptr, ptr %i.ac, align 8, !tbaa !459 ; 2 uses
  %.not102 = icmp eq ptr %i.ae, %i.af
  br i1 %.not102, label %._crit_edge, label %.lr.ph101

.lr.ph101:                                        ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.cast.i28 = ptrtoint ptr %2 to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %.sroa.876.8..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.1279.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.sroa.1683.56..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64
  br label %bb.d

._crit_edge:                                      ; preds = %.critedge, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE4colsEv.exit
  ret void

bb.d:                                             ; preds = %.lr.ph101, %.critedge
  %i.al = phi ptr [ %i.af, %.lr.ph101 ], [ %i.qh, %.critedge ] ; 3 uses
  %i.am = phi ptr [ %i.ae, %.lr.ph101 ], [ %i.qi, %.critedge ]
  %.021100 = phi i64 [ 0, %.lr.ph101 ], [ %i.qj, %.critedge ] ; 5 uses
  %i.an = and i64 %.021100, 4294967295
  %.not.i26 = icmp eq i64 %i.an, 0
  br i1 %.not.i26, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14colBaseOfBlockEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = load ptr, ptr %i.u, align 8, !tbaa !435
  %sext = shl i64 %.021100, 32
  %i.ap = ashr exact i64 %sext, 30
  %i.aq = getelementptr i8, ptr %i.ao, i64 %i.ap
  %i.ar = getelementptr i8, ptr %i.aq, i64 -4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !32
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14colBaseOfBlockEi.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14colBaseOfBlockEi.exit: ; preds = %bb.d, %bb.e
  %i.at = phi i32 [ %i.as, %bb.e ], [ 0, %bb.d ]  ; 3 uses
  %i.au = getelementptr inbounds nuw [48 x i8], ptr %i.al, i64 %.021100 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !340 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.not8998 = icmp eq ptr %i.aw, %i.ax
  br i1 %.not8998, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14colBaseOfBlockEi.exit
  %i.ay = sext i32 %i.at to i64                   ; 4 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ay ; 7 uses
  %i.ba = getelementptr [8 x i8], ptr %i.t, i64 %i.ay ; 15 uses
  %i.bb = ptrtoint ptr %i.ba to i64               ; 2 uses
  %i.bc = and i64 %i.bb, 7
  %.not.i.i.i.i.i4.i = icmp eq i64 %i.bc, 0
  %i.bd = lshr exact i64 %i.bb, 3
  %i.be = and i64 %i.bd, 1
  %i.bf = shl nsw i64 %i.ay, 3                    ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.bf
  %scevgep144 = getelementptr i8, ptr %i.t, i64 %i.bf
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.x
  %i.bg = phi ptr [ %i.al, %.lr.ph ], [ %i.qd, %bb.x ]
  %.sroa.038.099 = phi ptr [ %i.aw, %.lr.ph ], [ %i.qc, %bb.x ] ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.038.099, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.038.099, i64 40
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !461 ; 6 uses
  %i.bk = load i32, ptr %i.bh, align 8, !tbaa !540 ; 2 uses
  %.not.i27 = icmp eq i32 %i.bk, 0
  br i1 %.not.i27, label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bl = load ptr, ptr %0, align 8, !tbaa !435
  %i.bm = sext i32 %i.bk to i64
  %i.bn = getelementptr [4 x i8], ptr %i.bl, i64 %i.bm
  %i.bo = getelementptr i8, ptr %i.bn, i64 -4
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !32
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit: ; preds = %bb.f, %bb.g
  %i.bq = phi i32 [ %i.bp, %bb.g ], [ 0, %bb.f ]  ; 3 uses
  %.not24 = icmp sgt i32 %i.bq, %i.at
  br i1 %.not24, label %.critedge.loopexit, label %bb.h

bb.h:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 3 uses
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !463 ; 5 uses
  %i.bt = sext i32 %i.bq to i64                   ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bv = load i64, ptr %i.bu, align 8, !tbaa !452 ; 16 uses
  %i.bw = getelementptr [8 x i8], ptr %i.t, i64 %i.bt ; 15 uses
  %i.bx = icmp sgt i64 %i.bv, 0
  br i1 %i.bx, label %bb.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i.thread

bb.i:                                             ; preds = %bb.h
  %i.by = icmp samesign ugt i64 %i.bv, 2305843009213693951
  br i1 %i.by, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

.invoke:                                          ; preds = %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.bz = call ptr @__cxa_allocate_exception(i64 8) #38 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bz, align 8, !tbaa !29
  invoke void @__cxa_throw(ptr nonnull %i.bz, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #41
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.i
  %i.ca = shl nuw i64 %i.bv, 3
  %calloc = call ptr @calloc(i64 1, i64 %i.ca)    ; 5 uses
  %i.cb = icmp eq ptr %calloc, null
  br i1 %i.cb, label %.invoke, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.cc = icmp eq i64 %i.bv, 1
  br i1 %i.cc, label %bb.j, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i.thread

bb.j:                                             ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i
  %i.cd = load ptr, ptr %i.bj, align 8, !tbaa !454, !noalias !1688 ; 6 uses
  %i.ce = icmp eq i64 %i.bs, 0
  br i1 %i.ce, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cf = load double, ptr %i.cd, align 8, !tbaa !399
  %i.cg = load double, ptr %i.az, align 8, !tbaa !399
  %i.ch = fmul double %i.cf, %i.cg                ; 3 uses
  %i.ci = icmp sgt i64 %i.bs, 1
  br i1 %i.ci, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %bb.k
  %i.cj = add nsw i64 %i.bs, -1                   ; 2 uses
  %i.ck = add nsw i64 %i.bs, -2
  %xtraiter = and i64 %i.cj, 3                    ; 3 uses
  %i.cl = icmp ult i64 %i.ck, 3
  br i1 %i.cl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.cj, -4
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new
  %.01724.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.dn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %.02223.i.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.dm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.cm = getelementptr [8 x i8], ptr %i.cd, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !399
  %i.co = getelementptr [8 x i8], ptr %i.az, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cp = load double, ptr %i.co, align 8, !tbaa !399
  %i.cq = fmul double %i.cn, %i.cp
  %i.cr = fadd double %.02223.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.cq
  %i.cs = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ct = getelementptr [8 x i8], ptr %i.cd, i64 %i.cs
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !399
  %i.cv = getelementptr [8 x i8], ptr %i.az, i64 %i.cs
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !399
  %i.cx = fmul double %i.cu, %i.cw
  %i.cy = fadd double %i.cr, %i.cx
  %i.cz = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.da = getelementptr [8 x i8], ptr %i.cd, i64 %i.cz
  %i.db = load double, ptr %i.da, align 8, !tbaa !399
  %i.dc = getelementptr [8 x i8], ptr %i.az, i64 %i.cz
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !399
  %i.de = fmul double %i.db, %i.dd
  %i.df = fadd double %i.cy, %i.de
  %i.dg = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.dh = getelementptr [8 x i8], ptr %i.cd, i64 %i.dg
  %i.di = load double, ptr %i.dh, align 8, !tbaa !399
  %i.dj = getelementptr [8 x i8], ptr %i.az, i64 %i.dg
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !399
  %i.dl = fmul double %i.di, %i.dk
  %i.dm = fadd double %i.df, %i.dl                ; 3 uses
  %i.dn = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1680

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader:  ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dn, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %.02223.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init = phi double [ %i.ch, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.dm, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod215 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod215)
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %.01724.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi i64 [ %i.du, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.01724.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %.02223.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = phi double [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ %.02223.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  %i.do = getelementptr [8 x i8], ptr %i.cd, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.dp = load double, ptr %i.do, align 8, !tbaa !399
  %i.dq = getelementptr [8 x i8], ptr %i.az, i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !399
  %i.ds = fmul double %i.dp, %i.dr
  %i.dt = fadd double %.02223.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %i.ds ; 2 uses
  %i.du = add nuw nsw i64 %.01724.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, !llvm.loop !1691

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i.i: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil, %bb.k, %bb.j
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %bb.j ], [ %i.ch, %bb.k ], [ %i.dm, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.dt, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.epil ]
  %i.dv = load double, ptr %calloc, align 8, !tbaa !399
  %i.dw = fadd double %.0.i.i.i.i.i.i.i.i.i.i.i, %i.dv
  store double %i.dw, ptr %calloc, align 8, !tbaa !399
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS0_IdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIKNS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELi0EEEEERKT_.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i.thread: ; preds = %bb.h, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i
  %.sroa.057.188 = phi ptr [ %calloc, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i ], [ null, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  %i.dx = load ptr, ptr %i.bj, align 8, !tbaa !454
  store ptr %i.dx, ptr %6, align 8, !tbaa !929
  store i64 %i.bv, ptr %i.ag, align 8, !tbaa !931
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #38
  store ptr %i.az, ptr %7, align 8, !tbaa !932
  store i64 1, ptr %i.ah, align 8, !tbaa !934
  invoke void @_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi0EEELi0ELb0EdNS2_IdlLi1EEELb0ELi0EE3runEllRKS3_RKS4_Pdld(i64 noundef %i.bv, i64 noundef %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef %.sroa.057.188, i64 noundef 1, double noundef 1.000000e+00)
          to label %.noexc3.i unwind label %.loopexit

.noexc3.i:                                        ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS0_IdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIKNS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELi0EEEEERKT_.exit

common.resume:                                    ; preds = %.loopexit, %.loopexit.split-lp, %bb.w
  %.sink = phi ptr [ %i.lz, %bb.w ], [ %.sroa.057.188, %.loopexit ], [ null, %.loopexit.split-lp ]
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi94, %bb.w ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @free(ptr noundef %.sink) #38
  resume { ptr, i32 } %common.resume.op

.loopexit:                                        ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i.i.thread
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS0_IdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIKNS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELi0EEEEERKT_.exit: ; preds = %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i.i, %.noexc3.i
  %.sroa.057.187 = phi ptr [ %calloc, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELin1ELb0EEEE3dotINS1_IKNS1_IKNS_3MapIKNS2_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSJ_17scalar_product_opIdSN_EEE10ReturnTypeERKNS0_ISL_EE.exit.i.i.i.i.i.i.i.i ], [ %.sroa.057.188, %.noexc3.i ] ; 18 uses
  %i.dy = ptrtoint ptr %i.bw to i64               ; 2 uses
  %i.dz = and i64 %i.dy, 7
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.dz, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.l, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i

bb.l:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS0_IdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIKNS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELi0EEEEERKT_.exit
  %i.ea = lshr exact i64 %i.dy, 3
  %i.eb = and i64 %i.ea, 1
  %i.ec = call i64 @llvm.smin.i64(i64 %i.eb, i64 %i.bv)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i: ; preds = %bb.l, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS0_IdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIKNS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELi0EEEEERKT_.exit
  %.0.i.i.i.i.i.i.i.i = phi i64 [ %i.ec, %bb.l ], [ %i.bv, %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS0_IdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIKNS_3MapIKS1_Li0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEELi0EEEEERKT_.exit ] ; 14 uses
  %i.ed = sub nsw i64 %i.bv, %.0.i.i.i.i.i.i.i.i  ; 2 uses
  %i.ee = sdiv i64 %i.ed, 2                       ; 2 uses
  %i.ef = shl nsw i64 %i.ee, 1                    ; 2 uses
  %i.eg = add nsw i64 %i.ef, %.0.i.i.i.i.i.i.i.i  ; 6 uses
  %i.eh = icmp sgt i64 %.0.i.i.i.i.i.i.i.i, 0
  br i1 %i.eh, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEENS5_IS9_EENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i
  %min.iters.check193 = icmp ult i64 %.0.i.i.i.i.i.i.i.i, 6
  br i1 %min.iters.check193, label %.lr.ph.i.i.i.i.i.i.i.i.preheader210, label %vector.memcheck186

vector.memcheck186:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %i.ei = shl i64 %.0.i.i.i.i.i.i.i.i, 3
  %i.ej = add i64 %.0.i.i.i.i.i.i.i.i, %i.bt
  %i.ek = shl i64 %i.ej, 3
  %scevgep187 = getelementptr i8, ptr %i.t, i64 %i.ek
  %scevgep188 = getelementptr i8, ptr %.sroa.057.187, i64 %i.ei
  %bound0189 = icmp ult ptr %i.bw, %scevgep188
  %bound1190 = icmp ult ptr %.sroa.057.187, %scevgep187
  %found.conflict191 = and i1 %bound0189, %bound1190
  br i1 %found.conflict191, label %.lr.ph.i.i.i.i.i.i.i.i.preheader210, label %vector.ph194

vector.ph194:                                     ; preds = %vector.memcheck186
  %n.vec195 = and i64 %.0.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph194
  %index197 = phi i64 [ 0, %vector.ph194 ], [ %index.next202, %vector.body196 ] ; 3 uses
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %index197 ; 3 uses
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %.sroa.057.187, i64 %index197 ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load198 = load <2 x double>, ptr %i.em, align 8, !tbaa !399, !alias.scope !1692
  %wide.load199 = load <2 x double>, ptr %i.en, align 8, !tbaa !399, !alias.scope !1692
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 16 ; 2 uses
  %wide.load200 = load <2 x double>, ptr %i.el, align 8, !tbaa !399, !alias.scope !1695, !noalias !1692
  %wide.load201 = load <2 x double>, ptr %i.eo, align 8, !tbaa !399, !alias.scope !1695, !noalias !1692
  %i.ep = fadd <2 x double> %wide.load198, %wide.load200
  %i.eq = fadd <2 x double> %wide.load199, %wide.load201
  store <2 x double> %i.ep, ptr %i.el, align 8, !tbaa !399, !alias.scope !1695, !noalias !1692
  store <2 x double> %i.eq, ptr %i.eo, align 8, !tbaa !399, !alias.scope !1695, !noalias !1692
  %index.next202 = add nuw i64 %index197, 4       ; 2 uses
  %i.er = icmp eq i64 %index.next202, %n.vec195
  br i1 %i.er, label %middle.block203, label %vector.body196, !llvm.loop !1697

middle.block203:                                  ; preds = %vector.body196
  %cmp.n204 = icmp eq i64 %.0.i.i.i.i.i.i.i.i, %n.vec195
  br i1 %cmp.n204, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEENS5_IS9_EENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader210

.lr.ph.i.i.i.i.i.i.i.i.preheader210:              ; preds = %vector.memcheck186, %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block203
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck186 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %n.vec195, %middle.block203 ] ; 3 uses
  %xtraiter216 = and i64 %.0.i.i.i.i.i.i.i.i, 3   ; 2 uses
  %lcmp.mod217.not = icmp eq i64 %xtraiter216, 0
  br i1 %lcmp.mod217.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader210, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ex, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader210 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader210 ]
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.05.i.i.i.i.i.i.i.i.prol ; 2 uses
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %.sroa.057.187, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.eu = load double, ptr %i.et, align 8, !tbaa !399
  %i.ev = load double, ptr %i.es, align 8, !tbaa !399
  %i.ew = fadd double %i.eu, %i.ev
  store double %i.ew, ptr %i.es, align 8, !tbaa !399
  %i.ex = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter216
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !1698

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader210
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader210 ], [ %i.ex, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.ey = sub nsw i64 %.05.i.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i.i
  %i.ez = icmp ugt i64 %i.ey, -4
  br i1 %i.ez, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEENS5_IS9_EENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.fx, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.05.i.i.i.i.i.i.i.i ; 2 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %.sroa.057.187, i64 %.05.i.i.i.i.i.i.i.i
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !399
  %i.fd = load double, ptr %i.fa, align 8, !tbaa !399
  %i.fe = fadd double %i.fc, %i.fd
  store double %i.fe, ptr %i.fa, align 8, !tbaa !399
  %i.ff = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.ff ; 2 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %.sroa.057.187, i64 %i.ff
  %i.fi = load double, ptr %i.fh, align 8, !tbaa !399
  %i.fj = load double, ptr %i.fg, align 8, !tbaa !399
  %i.fk = fadd double %i.fi, %i.fj
  store double %i.fk, ptr %i.fg, align 8, !tbaa !399
  %i.fl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.fl ; 2 uses
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.057.187, i64 %i.fl
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !399
  %i.fp = load double, ptr %i.fm, align 8, !tbaa !399
  %i.fq = fadd double %i.fo, %i.fp
  store double %i.fq, ptr %i.fm, align 8, !tbaa !399
  %i.fr = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.fr ; 2 uses
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %.sroa.057.187, i64 %i.fr
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !399
  %i.fv = load double, ptr %i.fs, align 8, !tbaa !399
  %i.fw = fadd double %i.fu, %i.fv
  store double %i.fw, ptr %i.fs, align 8, !tbaa !399
  %i.fx = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.fx, %.0.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEENS5_IS9_EENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1699

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEENS5_IS9_EENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %middle.block203, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i
  %i.fy = icmp sgt i64 %i.ed, 1
  br i1 %i.fy, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELin1ELi1ELb0EEEEENS5_IS9_EENS0_13add_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i
  %i.fz = icmp slt i64 %i.eg, %i.bv
  br i1 %i.fz, label %.lr.ph.i17.i.i.i.i.i.i.i.preheader, label %_ZN3g2o8internal4axpyIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEvRKT_RKNS2_3MapIKNS3_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS2_6StrideILi0ELi0EEEEEiRNS8_IS9_Li0ESC_EEi.exit

.lr.ph.i17.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i
end_hunk_6
