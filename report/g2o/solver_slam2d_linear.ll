Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_slam2d_linear?download=true
inline.NumInlined: 3205
inline.NumDeleted: 1582
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN5Eigen22SimplicialCholeskyBaseINS_13SimplicialLLTINS_12SparseMatrixIdLi0EiEELi2ENS_11AMDOrderingIiEEEEE20factorize_preorderedILb0EEEvRKS3_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !170  ; 4 uses
  %sext = shl i64 %i.b, 32                        ; 8 uses
  %i.j = icmp slt i64 %sext, 0
  br i1 %i.j, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !11
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #32
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.l = lshr exact i64 %sext, 29                 ; 2 uses
  %i.m = icmp samesign ult i64 %sext, 70369281048576
  br i1 %i.m, label %_ZN5Eigen8internal14aligned_mallocEm.exit159, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.l) #36 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !11
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #32
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
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.q) #36 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !11
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #32
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
  %i.al = tail call noalias ptr @malloc(i64 noundef %i.q) #36 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.i, label %_ZN5Eigen8internal14aligned_mallocEm.exit164

bb.i:                                             ; preds = %bb.h
  %i.an = tail call ptr @__cxa_allocate_exception(i64 8) #30 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.an, align 8, !tbaa !11
  invoke void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #32
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
  %i.au = load i64, ptr %i.at, align 8, !tbaa !79
  %.not.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit164
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !76
  tail call void @free(ptr noundef %i.aw) #30
  store ptr null, ptr %i.av, align 8, !tbaa !76
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit164, %bb.j
  store i64 0, ptr %i.at, align 8, !tbaa !79
  %i.ax = icmp sgt i32 %i.c, 0
  br i1 %i.ax, label %.lr.ph216, label %._crit_edge217

.lr.ph216:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !192 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !170
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !171
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !161
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !160 ; 2 uses
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
  store double 0.000000e+00, ptr %i.bn, align 8, !tbaa !63
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv230
  %i.bp = trunc nuw nsw i64 %indvars.iv230 to i32 ; 4 uses
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !33
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv230 ; 3 uses
  store i32 0, ptr %i.bq, align 4, !tbaa !33
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv230 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !33
  %i.bt = sext i32 %i.bs to i64                   ; 3 uses
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr i8, ptr %i.br, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !33
  %i.bw = sext i32 %i.bv to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.m:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv230
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !33
  %i.bz = sext i32 %i.by to i64
  %i.ca = add nsw i64 %i.bz, %i.bt
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.l, %bb.m
  %.sink.i = phi i64 [ %i.bw, %bb.l ], [ %i.ca, %bb.m ] ; 2 uses
  %i.cb = icmp sgt i64 %.sink.i, %i.bt
  br i1 %i.cb, label %.lr.ph202, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.cc = load double, ptr %i.bk, align 8, !tbaa !148
  %i.cd = load double, ptr %i.bl, align 8, !tbaa !444
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cc, double 0.000000e+00, double %i.cd)
  store double 0.000000e+00, ptr %i.bn, align 8, !tbaa !63
  br label %._crit_edge213

.lr.ph202:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, %.loopexit
  %.0110201 = phi i32 [ %.2, %.loopexit ], [ %i.c, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %.sroa.8.0200 = phi i64 [ %i.ds, %.loopexit ], [ %i.bt, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %.sroa.8.0200
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !33 ; 2 uses
  %i.ch = sext i32 %i.cg to i64                   ; 4 uses
  %.not = icmp slt i64 %indvars.iv230, %i.ch
  br i1 %.not, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.lr.ph202
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %.sroa.8.0200
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !63
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ch ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !63
  %i.cm = fadd double %i.cj, %i.cl
  store double %i.cm, ptr %i.ck, align 8, !tbaa !63
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.ch ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !33
  %i.cp = zext i32 %i.co to i64
  %.not143193 = icmp eq i64 %indvars.iv230, %i.cp
  br i1 %.not143193, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.cq = load ptr, ptr %i.bj, align 8, !tbaa !192
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
  %wide.load = load <4 x i32>, ptr %i.cw, align 4, !tbaa !33
  %wide.load255 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !33
  %i.cy = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cy ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.da = getelementptr inbounds i8, ptr %gep, i64 -28
  store <4 x i32> %wide.load, ptr %i.cz, align 4, !tbaa !33
  store <4 x i32> %wide.load255, ptr %i.da, align 4, !tbaa !33
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !445

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
  store i32 %.0109194, ptr %i.de, align 4, !tbaa !33
  store i32 %i.bp, ptr %i.dc, align 4, !tbaa !33
  %i.df = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.dd
  %i.dg = add nuw nsw i64 %.0108195, 1            ; 6 uses
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !33 ; 2 uses
  %i.di = sext i32 %i.dh to i64                   ; 2 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !33
  %i.dl = zext i32 %i.dk to i64
  %.not143 = icmp eq i64 %indvars.iv230, %i.dl
  br i1 %.not143, label %.lr.ph198.preheader, label %bb.o, !llvm.loop !446

.lr.ph198:                                        ; preds = %.lr.ph198.preheader257, %.lr.ph198
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph198 ], [ %indvars.iv.ph, %.lr.ph198.preheader257 ]
  %.1197 = phi i64 [ %i.dm, %.lr.ph198 ], [ %.1197.ph, %.lr.ph198.preheader257 ] ; 2 uses
  %i.dm = add nsw i64 %.1197, -1                  ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !33
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv.next
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !33
  %i.dq = icmp sgt i64 %.1197, 1
  br i1 %i.dq, label %.lr.ph198, label %.loopexit.loopexit, !llvm.loop !447

.loopexit.loopexit:                               ; preds = %.lr.ph198, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.ct, %middle.block ], [ %indvars.iv.next, %.lr.ph198 ]
  %i.dr = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.loopexit, %.lr.ph202
  %.2 = phi i32 [ %.0110201, %.lr.ph202 ], [ %i.dr, %.loopexit.loopexit ], [ %.0110201, %bb.n ] ; 3 uses
  %i.ds = add nsw i64 %.sroa.8.0200, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ds, %.sink.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph202, !llvm.loop !448

._crit_edge:                                      ; preds = %.loopexit
  %.pre = load double, ptr %i.bn, align 8, !tbaa !63
  %i.dt = load double, ptr %i.bk, align 8, !tbaa !148
  %i.du = load double, ptr %i.bl, align 8, !tbaa !444
  %i.dv = tail call double @llvm.fmuladd.f64(double %.pre, double %i.dt, double %i.du) ; 2 uses
  store double 0.000000e+00, ptr %i.bn, align 8, !tbaa !63
  %i.dw = icmp slt i32 %.2, %i.c
  br i1 %i.dw, label %.lr.ph212.preheader, label %._crit_edge213

.lr.ph212.preheader:                              ; preds = %._crit_edge
  %i.dx = sext i32 %.2 to i64
  br label %.lr.ph212

.lr.ph212:                                        ; preds = %.lr.ph212.preheader, %._crit_edge207
  %indvars.iv226 = phi i64 [ %i.dx, %.lr.ph212.preheader ], [ %indvars.iv.next227, %._crit_edge207 ] ; 2 uses
  %.0107210 = phi double [ %i.dv, %.lr.ph212.preheader ], [ %i.fe, %._crit_edge207 ]
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv226
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !33
  %i.ea = sext i32 %i.dz to i64                   ; 3 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ea ; 2 uses
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !63
  store double 0.000000e+00, ptr %i.eb, align 8, !tbaa !63
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ea
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !33 ; 3 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ef
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !63
  %i.ei = fdiv double %i.ec, %i.eh                ; 4 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ea ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !33 ; 2 uses
  %i.el = add nsw i32 %i.ek, %i.ee
  %i.em = sext i32 %i.el to i64
  %i.en = add nsw i32 %i.ee, 1
  %i.eo = sext i32 %i.en to i64                   ; 2 uses
  %i.ep = icmp sgt i32 %i.ek, 1
  br i1 %i.ep, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %.lr.ph212, %.lr.ph206
  %.0204 = phi i64 [ %i.ez, %.lr.ph206 ], [ %i.eo, %.lr.ph212 ] ; 3 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.0204
  %i.er = load double, ptr %i.eq, align 8, !tbaa !63
  %i.es = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.0204
  %i.et = load i32, ptr %i.es, align 4, !tbaa !33
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.eu ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !63
  %i.ex = fneg double %i.er
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.ei, double %i.ew)
  store double %i.ey, ptr %i.ev, align 8, !tbaa !63
  %i.ez = add nsw i64 %.0204, 1                   ; 3 uses
  %i.fa = icmp slt i64 %i.ez, %i.em
  br i1 %i.fa, label %.lr.ph206, label %._crit_edge207, !llvm.loop !449

._crit_edge207:                                   ; preds = %.lr.ph206, %.lr.ph212
  %.0.lcssa = phi i64 [ %i.eo, %.lr.ph212 ], [ %i.ez, %.lr.ph206 ] ; 2 uses
  %i.fb = fmul double %i.ei, %i.ei
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.0.lcssa
  store i32 %i.bp, ptr %i.fc, align 4, !tbaa !33
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.0.lcssa
  store double %i.ei, ptr %i.fd, align 8, !tbaa !63
  %i.fe = fsub double %.0107210, %i.fb            ; 2 uses
  %i.ff = load i32, ptr %i.ej, align 4, !tbaa !33
  %i.fg = add nsw i32 %i.ff, 1
  store i32 %i.fg, ptr %i.ej, align 4, !tbaa !33
  %indvars.iv.next227 = add nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count
  br i1 %exitcond229.not, label %._crit_edge213.loopexit, label %.lr.ph212, !llvm.loop !450

._crit_edge213.loopexit:                          ; preds = %._crit_edge207
  %.pre235 = load i32, ptr %i.bq, align 4, !tbaa !33
  br label %._crit_edge213

._crit_edge213:                                   ; preds = %._crit_edge.thread, %._crit_edge213.loopexit, %._crit_edge
  %i.fh = phi i32 [ 0, %._crit_edge ], [ %.pre235, %._crit_edge213.loopexit ], [ 0, %._crit_edge.thread ] ; 2 uses
  %.0107.lcssa = phi double [ %i.dv, %._crit_edge ], [ %i.fe, %._crit_edge213.loopexit ], [ %i.ce, %._crit_edge.thread ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv230
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !33
  %i.fk = add nsw i32 %i.fh, 1
  store i32 %i.fk, ptr %i.bq, align 4, !tbaa !33
  %i.fl = add nsw i32 %i.fh, %i.fj
  %i.fm = sext i32 %i.fl to i64                   ; 2 uses
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.fm
  store i32 %i.bp, ptr %i.fn, align 4, !tbaa !33
  %i.fo = fcmp ugt double %.0107.lcssa, 0.000000e+00
  br i1 %i.fo, label %bb.p, label %._crit_edge217

bb.p:                                             ; preds = %._crit_edge213
  %i.fp = tail call double @sqrt(double noundef %.0107.lcssa) #30
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.fm
  store double %i.fp, ptr %i.fq, align 8, !tbaa !63
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count233
  br i1 %exitcond234.not, label %._crit_edge217, label %bb.k, !llvm.loop !451

._crit_edge217:                                   ; preds = %bb.p, %._crit_edge213, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %.2116 = phi i32 [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit ], [ 1, %._crit_edge213 ], [ 0, %bb.p ]
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.2116, ptr %i.fr, align 4, !tbaa !145
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.fs, align 8, !tbaa !146
  br i1 %i.ao, label %bb.q, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit165

bb.q:                                             ; preds = %._crit_edge217
  call void @free(ptr noundef nonnull %i.as) #30
  call void @free(ptr noundef nonnull %i.ap) #30
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit165

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit165: ; preds = %._crit_edge217, %bb.q
  br i1 %i.ar, label %bb.r, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.r:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit165
  call void @free(ptr noundef nonnull %i.aq) #30
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit165, %bb.r
  ret void

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit167: ; preds = %bb.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef nonnull %i.v) #30
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit168

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit168: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit167, %.split
  %.pn144.pn.pn.pn.pn.pn.pn.pn250 = phi { ptr, i32 } [ %i.bm, %.split ], [ %i.ft, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit167 ]
  tail call void @free(ptr noundef nonnull %i.n) #30
  resume { ptr, i32 } %.pn144.pn.pn.pn.pn.pn.pn.pn250
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #24

; Function Attrs: mustprogress uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEEC1EPKcSt13_Ios_Openmode(ptr noundef nonnull align 8 dereferenceable(248), ptr noundef, i32 noundef) unnamed_addr #0 align 2

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt14basic_ofstreamIcSt11char_traitsIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(248)) unnamed_addr #3 align 2

; Function Attrs: noreturn
declare void @_ZSt19__throw_logic_errorPKc(ptr noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #25

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5rfindEcm(ptr noundef nonnull align 8 dereferenceable(32), i8 noundef signext, i64 noundef) local_unnamed_addr #2

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPN3g2o12TripletEntryESt6vectorIS3_SaIS3_EEEElNS0_5__ops15_Iter_comp_iterINS2_14TripletColSortEEEEvT_SD_T0_T1_(ptr %0, ptr %1, i64 noundef %2) local_unnamed_addr #0 comdat {
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
end_hunk_0
