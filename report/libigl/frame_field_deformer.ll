Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/frame_field_deformer?download=true
inline.NumInlined: 7666
inline.NumDeleted: 3720
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 56
loop-unroll.NumUnrolled: 66
begin_hunk_0_@_ZN5Eigen22SimplicialCholeskyBaseINS_18SimplicialCholeskyINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE20factorize_preorderedILb1EEEvRKS3_:bb.a

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.o = add nuw nsw i64 %i.m, 15
  %i.p = alloca i8, i64 %i.o, align 16
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.d:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.m) #31 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.d
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !82
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.d, %bb.c
  %i.t = phi ptr [ %i.p, %bb.c ], [ %i.q, %bb.d ] ; 6 uses
  %i.u = icmp ugt i64 %i.m, 131072                ; 2 uses
  %i.v = ashr exact i64 %sext, 30                 ; 5 uses
  %i.w = icmp ugt i64 %i.v, 131072                ; 3 uses
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.v) #31 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.z, align 8, !tbaa !82
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.noexc150 unwind label %bb.n

.noexc150:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.aa = add nuw nsw i64 %i.v, 15
  %i.ab = alloca i8, i64 %i.aa, align 16
  %i.ac = add nuw nsw i64 %i.v, 15
  %i.ad = alloca i8, i64 %i.ac, align 16
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit156

bb.i:                                             ; preds = %bb.f
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.v) #31 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %_ZN5Eigen8internal14aligned_mallocEm.exit156

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ag, align 8, !tbaa !82
  invoke void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.noexc155 unwind label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160

.noexc155:                                        ; preds = %bb.j
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit156:     ; preds = %bb.i, %bb.h
  %i.ah = phi ptr [ %i.ab, %bb.h ], [ %i.x, %bb.i ] ; 8 uses
  %i.ai = phi ptr [ %i.ad, %bb.h ], [ %i.ae, %bb.i ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !387
  %.not.i.i = icmp eq i64 %i.j, %i.al
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit156
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !79
  tail call void @free(ptr noundef %i.am) #27
  %.not190 = icmp eq i64 %sext, 0
  br i1 %.not190, label %.sink.split.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.k
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.m) #31 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.l, label %.sink.split.i.i

bb.l:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ap, align 8, !tbaa !82
  invoke void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
          to label %.noexc158 unwind label %bb.o

.noexc158:                                        ; preds = %bb.l
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.k
  %.sink.i.i = phi ptr [ %i.an, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.k ]
  store ptr %.sink.i.i, ptr %i.aj, align 8, !tbaa !79
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit156, %.sink.split.i.i
  store i64 %i.j, ptr %i.ak, align 8, !tbaa !387
  %i.aq = icmp sgt i32 %i.c, 0
  br i1 %i.aq, label %.lr.ph214, label %._crit_edge215

.lr.ph214:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !78 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !68
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !69
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !66
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !67 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bf = load ptr, ptr %i.aj, align 8, !tbaa !79 ; 2 uses
  %wide.trip.count231 = and i64 %i.b, 2147483647
  %wide.trip.count = and i64 %i.b, 2147483647
  br label %bb.p

bb.m:                                             ; preds = %._crit_edge211
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count231
  br i1 %exitcond232.not, label %._crit_edge215, label %bb.p, !llvm.loop !388

bb.n:                                             ; preds = %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161

bb.o:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.w, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161

bb.p:                                             ; preds = %.lr.ph214, %bb.m
  %indvars.iv228 = phi i64 [ 0, %.lr.ph214 ], [ %indvars.iv.next229, %bb.m ] ; 11 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv228 ; 4 uses
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !84
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv228
  %i.bk = trunc nuw nsw i64 %indvars.iv228 to i32 ; 3 uses
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !95
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv228
  store i32 0, ptr %i.bl, align 4, !tbaa !95
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv228 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !95
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr i8, ptr %i.bm, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !95
  %i.br = sext i32 %i.bq to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.r:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv228
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !95
  %i.bu = sext i32 %i.bt to i64
  %i.bv = add nsw i64 %i.bu, %i.bo
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.q, %bb.r
  %.sink.i = phi i64 [ %i.br, %bb.q ], [ %i.bv, %bb.r ] ; 2 uses
  %i.bw = icmp sgt i64 %.sink.i, %i.bo
  br i1 %i.bw, label %.lr.ph200, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.bx = load double, ptr %i.bd, align 8, !tbaa !37
  %i.by = load double, ptr %i.be, align 8, !tbaa !389
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bx, double 0.000000e+00, double %i.by)
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !84
  br label %._crit_edge211

.lr.ph200:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, %.loopexit
  %.0100199 = phi i32 [ %.2, %.loopexit ], [ %i.c, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %.sroa.8.0198 = phi i64 [ %i.dn, %.loopexit ], [ %i.bo, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %.sroa.8.0198
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !95 ; 2 uses
  %i.cc = sext i32 %i.cb to i64                   ; 4 uses
  %.not = icmp slt i64 %indvars.iv228, %i.cc
  br i1 %.not, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.lr.ph200
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.au, i64 %.sroa.8.0198
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !84
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.cc ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !84
  %i.ch = fadd double %i.ce, %i.cg
  store double %i.ch, ptr %i.cf, align 8, !tbaa !84
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.cc ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !95
  %i.ck = zext i32 %i.cj to i64
  %.not135191 = icmp eq i64 %indvars.iv228, %i.ck
  br i1 %.not135191, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.cl = load ptr, ptr %i.bc, align 8, !tbaa !78
  br label %bb.t

.lr.ph196.preheader:                              ; preds = %bb.t
  %i.cm = sext i32 %.0100199 to i64               ; 5 uses
  %min.iters.check = icmp samesign ult i64 %.098193, 7
  br i1 %min.iters.check, label %.lr.ph196.preheader256, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph196.preheader
  %i.cn = sub i64 %.098193, %i.cm
  %reass.sub = shl i64 %i.cn, 2
  %diff.check = icmp ult i64 %reass.sub, 28
  br i1 %diff.check, label %.lr.ph196.preheader256, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.db, 9223372036854775800     ; 3 uses
  %i.co = sub i64 %i.cm, %n.vec                   ; 2 uses
  %2 = and i64 %i.db, 7
  %invariant.gep = getelementptr [4 x i8], ptr %i.ah, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cp = sub i64 %.098193, %index
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -12
  %i.cs = getelementptr inbounds i8, ptr %i.cq, i64 -28
  %wide.load = load <4 x i32>, ptr %i.cr, align 4, !tbaa !95
  %wide.load254 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !95
  %i.ct = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ct ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.cv = getelementptr inbounds i8, ptr %gep, i64 -28
  store <4 x i32> %wide.load, ptr %i.cu, align 4, !tbaa !95
  store <4 x i32> %wide.load254, ptr %i.cv, align 4, !tbaa !95
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !390

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %.lr.ph196.preheader256

.lr.ph196.preheader256:                           ; preds = %vector.memcheck, %.lr.ph196.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.cm, %vector.memcheck ], [ %i.cm, %.lr.ph196.preheader ], [ %i.co, %middle.block ]
  %.1195.ph = phi i64 [ %i.db, %vector.memcheck ], [ %i.db, %.lr.ph196.preheader ], [ %2, %middle.block ]
  br label %.lr.ph196

bb.t:                                             ; preds = %.lr.ph, %bb.t
  %i.cx = phi ptr [ %i.ci, %.lr.ph ], [ %i.de, %bb.t ]
  %i.cy = phi i64 [ %i.cc, %.lr.ph ], [ %i.dd, %bb.t ]
  %.098193 = phi i64 [ 0, %.lr.ph ], [ %i.db, %bb.t ] ; 5 uses
  %.099192 = phi i32 [ %i.cb, %.lr.ph ], [ %i.dc, %bb.t ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.098193
  store i32 %.099192, ptr %i.cz, align 4, !tbaa !95
  store i32 %i.bk, ptr %i.cx, align 4, !tbaa !95
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cy
  %i.db = add nuw nsw i64 %.098193, 1             ; 6 uses
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !95 ; 2 uses
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.dd ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !95
  %i.dg = zext i32 %i.df to i64
  %.not135 = icmp eq i64 %indvars.iv228, %i.dg
  br i1 %.not135, label %.lr.ph196.preheader, label %bb.t, !llvm.loop !391

.lr.ph196:                                        ; preds = %.lr.ph196.preheader256, %.lr.ph196
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph196 ], [ %indvars.iv.ph, %.lr.ph196.preheader256 ]
  %.1195 = phi i64 [ %i.dh, %.lr.ph196 ], [ %.1195.ph, %.lr.ph196.preheader256 ] ; 2 uses
  %i.dh = add nsw i64 %.1195, -1                  ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !95
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv.next
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !95
  %i.dl = icmp sgt i64 %.1195, 1
  br i1 %i.dl, label %.lr.ph196, label %.loopexit.loopexit, !llvm.loop !392

.loopexit.loopexit:                               ; preds = %.lr.ph196, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.co, %middle.block ], [ %indvars.iv.next, %.lr.ph196 ]
  %i.dm = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %.loopexit.loopexit, %.lr.ph200
  %.2 = phi i32 [ %.0100199, %.lr.ph200 ], [ %i.dm, %.loopexit.loopexit ], [ %.0100199, %bb.s ] ; 3 uses
  %i.dn = add nsw i64 %.sroa.8.0198, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.dn, %.sink.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph200, !llvm.loop !393

._crit_edge:                                      ; preds = %.loopexit
  %.pre = load double, ptr %i.bi, align 8, !tbaa !84
  %i.do = load double, ptr %i.bd, align 8, !tbaa !37
  %i.dp = load double, ptr %i.be, align 8, !tbaa !389
  %i.dq = tail call double @llvm.fmuladd.f64(double %.pre, double %i.do, double %i.dp) ; 2 uses
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !84
  %i.dr = icmp slt i32 %.2, %i.c
  br i1 %i.dr, label %.lr.ph210, label %._crit_edge211

.lr.ph210:                                        ; preds = %._crit_edge
  %i.ds = sext i32 %.2 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph210, %._crit_edge205
  %indvars.iv224 = phi i64 [ %i.ds, %.lr.ph210 ], [ %indvars.iv.next225, %._crit_edge205 ] ; 2 uses
  %.097208 = phi double [ %i.dq, %.lr.ph210 ], [ %i.ex, %._crit_edge205 ]
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv224
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !95
  %i.dv = sext i32 %i.du to i64                   ; 4 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.dv ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !84 ; 3 uses
  store double 0.000000e+00, ptr %i.dw, align 8, !tbaa !84
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.dv
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !84
  %i.ea = fdiv double %i.dx, %i.dz                ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.dv
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !95 ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.dv ; 3 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !95 ; 2 uses
  %i.ef = add nsw i32 %i.ee, %i.ec
  %i.eg = sext i32 %i.ef to i64
  %i.eh = sext i32 %i.ec to i64                   ; 2 uses
  %i.ei = icmp sgt i32 %i.ee, 0
  br i1 %i.ei, label %.lr.ph204, label %._crit_edge205

.lr.ph204:                                        ; preds = %bb.u, %.lr.ph204
  %.0202 = phi i64 [ %i.es, %.lr.ph204 ], [ %i.eh, %bb.u ] ; 3 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.0202
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !84
  %i.el = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.0202
  %i.em = load i32, ptr %i.el, align 4, !tbaa !95
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.en ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !84
  %i.eq = fneg double %i.ek
  %i.er = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.dx, double %i.ep)
  store double %i.er, ptr %i.eo, align 8, !tbaa !84
  %i.es = add nsw i64 %.0202, 1                   ; 3 uses
  %i.et = icmp slt i64 %i.es, %i.eg
  br i1 %i.et, label %.lr.ph204, label %._crit_edge205, !llvm.loop !394

._crit_edge205:                                   ; preds = %.lr.ph204, %bb.u
  %.0.lcssa = phi i64 [ %i.eh, %bb.u ], [ %i.es, %.lr.ph204 ] ; 2 uses
  %i.eu = fmul double %i.dx, %i.ea
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.0.lcssa
  store i32 %i.bk, ptr %i.ev, align 4, !tbaa !95
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.0.lcssa
  store double %i.ea, ptr %i.ew, align 8, !tbaa !84
  %i.ex = fsub double %.097208, %i.eu             ; 2 uses
  %i.ey = load i32, ptr %i.ed, align 4, !tbaa !95
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ed, align 4, !tbaa !95
  %indvars.iv.next225 = add nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count
  br i1 %exitcond227.not, label %._crit_edge211, label %bb.u, !llvm.loop !395

._crit_edge211:                                   ; preds = %._crit_edge205, %._crit_edge.thread, %._crit_edge
  %.097.lcssa = phi double [ %i.dq, %._crit_edge ], [ %i.bz, %._crit_edge.thread ], [ %i.ex, %._crit_edge205 ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv228
  store double %.097.lcssa, ptr %i.fa, align 8, !tbaa !84
  %i.fb = fcmp une double %.097.lcssa, 0.000000e+00
  br i1 %i.fb, label %bb.m, label %._crit_edge215

._crit_edge215:                                   ; preds = %._crit_edge211, %bb.m, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %.2106 = phi i32 [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit ], [ 0, %bb.m ], [ 1, %._crit_edge211 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.2106, ptr %i.fc, align 4, !tbaa !20
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.fd, align 8, !tbaa !32
  br i1 %i.w, label %bb.v, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159

bb.v:                                             ; preds = %._crit_edge215
  call void @free(ptr noundef nonnull %i.ai) #27
  call void @free(ptr noundef nonnull %i.ah) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159: ; preds = %._crit_edge215, %bb.v
  br i1 %i.u, label %bb.w, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.w:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159
  call void @free(ptr noundef nonnull %i.t) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159, %bb.w
  ret void

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread: ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.ai) #27
  br label %bb.x

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160: ; preds = %bb.j
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread
  %i.ff = phi ptr [ %i.ah, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread ], [ %i.x, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160 ]
  %.pn136.pn.pn.pn.pn.pn187 = phi { ptr, i32 } [ %i.bh, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread ], [ %i.fe, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160 ]
  call void @free(ptr noundef nonnull %i.ff) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161: ; preds = %bb.o, %bb.x, %bb.n
  %.pn136.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.bh, %bb.o ], [ %.pn136.pn.pn.pn.pn.pn187, %bb.x ]
  br i1 %i.u, label %bb.y, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162

bb.y:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161
  call void @free(ptr noundef nonnull %i.t) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161, %bb.y
  resume { ptr, i32 } %.pn136.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen11AMDOrderingIiEclINS_12SparseMatrixIdLi0EiEEEEvRKT_RNS_17PermutationMatrixILin1ELin1EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::SparseMatrix", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  store i8 0, ptr %3, align 8, !tbaa !19
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 -1, ptr %i.a, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.d = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #31 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !66
  %.not6.i = icmp eq ptr %i.d, null
  br i1 %.not6.i, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !82
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
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
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #27
  br label %common.resume

_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit:         ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !9
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.d, align 4
  invoke void @_ZN5Eigen8internal25ordering_helper_at_plus_aINS_12SparseMatrixIdLi0EiEEEEvRKT_RS4_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit
  invoke void @_ZN5Eigen8internal23minimum_degree_orderingIdiEEvRNS_12SparseMatrixIT_Li0ET0_EERNS_17PermutationMatrixILin1ELin1ES4_EE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %bb.i
end_hunk_0
begin_hunk_1_@_ZN5Eigen22SimplicialCholeskyBaseINS_18SimplicialCholeskyINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE20factorize_preorderedILb0EEEvRKS3_:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68   ; 4 uses
  %sext = shl i64 %i.b, 32                        ; 8 uses
  %i.j = icmp slt i64 %sext, 0
  br i1 %i.j, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !82
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.l = lshr exact i64 %sext, 29                 ; 2 uses
  %i.m = icmp samesign ult i64 %sext, 70369281048576
  br i1 %i.m, label %_ZN5Eigen8internal14aligned_mallocEm.exit159, label %bb.c

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.l) #31 ; 4 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.d, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.d:                                             ; preds = %bb.c
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !82
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
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
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.q) #31 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !82
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
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
  %i.al = tail call noalias ptr @malloc(i64 noundef %i.q) #31 ; 2 uses
  %i.am = icmp eq ptr %i.al, null
  br i1 %i.am, label %bb.i, label %_ZN5Eigen8internal14aligned_mallocEm.exit164

bb.i:                                             ; preds = %bb.h
  %i.an = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.an, align 8, !tbaa !82
  invoke void @__cxa_throw(ptr nonnull %i.an, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
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
  %i.au = load i64, ptr %i.at, align 8, !tbaa !387
  %.not.i.i = icmp eq i64 %i.au, 0
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.j

bb.j:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit164
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !79
  tail call void @free(ptr noundef %i.aw) #27
  store ptr null, ptr %i.av, align 8, !tbaa !79
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit164, %bb.j
  store i64 0, ptr %i.at, align 8, !tbaa !387
  %i.ax = icmp sgt i32 %i.c, 0
  br i1 %i.ax, label %.lr.ph216, label %._crit_edge217

.lr.ph216:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !78 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !68
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !69
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !66
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !67 ; 2 uses
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
  store double 0.000000e+00, ptr %i.bn, align 8, !tbaa !84
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv230
  %i.bp = trunc nuw nsw i64 %indvars.iv230 to i32 ; 4 uses
  store i32 %i.bp, ptr %i.bo, align 4, !tbaa !95
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv230 ; 3 uses
  store i32 0, ptr %i.bq, align 4, !tbaa !95
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv230 ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !95
  %i.bt = sext i32 %i.bs to i64                   ; 3 uses
  br i1 %i.bi, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bu = getelementptr i8, ptr %i.br, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !95
  %i.bw = sext i32 %i.bv to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.m:                                             ; preds = %bb.k
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv230
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !95
  %i.bz = sext i32 %i.by to i64
  %i.ca = add nsw i64 %i.bz, %i.bt
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.l, %bb.m
  %.sink.i = phi i64 [ %i.bw, %bb.l ], [ %i.ca, %bb.m ] ; 2 uses
  %i.cb = icmp sgt i64 %.sink.i, %i.bt
  br i1 %i.cb, label %.lr.ph202, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.cc = load double, ptr %i.bk, align 8, !tbaa !37
  %i.cd = load double, ptr %i.bl, align 8, !tbaa !389
  %i.ce = tail call double @llvm.fmuladd.f64(double %i.cc, double 0.000000e+00, double %i.cd)
  store double 0.000000e+00, ptr %i.bn, align 8, !tbaa !84
  br label %._crit_edge213

.lr.ph202:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, %.loopexit
  %.0110201 = phi i32 [ %.2, %.loopexit ], [ %i.c, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %.sroa.8.0200 = phi i64 [ %i.ds, %.loopexit ], [ %i.bt, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %.sroa.8.0200
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !95 ; 2 uses
  %i.ch = sext i32 %i.cg to i64                   ; 4 uses
  %.not = icmp slt i64 %indvars.iv230, %i.ch
  br i1 %.not, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.lr.ph202
  %i.ci = getelementptr inbounds [8 x i8], ptr %i.bb, i64 %.sroa.8.0200
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !84
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ch ; 2 uses
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !84
  %i.cm = fadd double %i.cj, %i.cl
  store double %i.cm, ptr %i.ck, align 8, !tbaa !84
  %i.cn = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.ch ; 2 uses
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !95
  %i.cp = zext i32 %i.co to i64
  %.not143193 = icmp eq i64 %indvars.iv230, %i.cp
  br i1 %.not143193, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.cq = load ptr, ptr %i.bj, align 8, !tbaa !78
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
  %wide.load = load <4 x i32>, ptr %i.cw, align 4, !tbaa !95
  %wide.load255 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !95
  %i.cy = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.cy ; 2 uses
  %i.cz = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.da = getelementptr inbounds i8, ptr %gep, i64 -28
  store <4 x i32> %wide.load, ptr %i.cz, align 4, !tbaa !95
  store <4 x i32> %wide.load255, ptr %i.da, align 4, !tbaa !95
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !480

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
  store i32 %.0109194, ptr %i.de, align 4, !tbaa !95
  store i32 %i.bp, ptr %i.dc, align 4, !tbaa !95
  %i.df = getelementptr inbounds [4 x i8], ptr %i.cq, i64 %i.dd
  %i.dg = add nuw nsw i64 %.0108195, 1            ; 6 uses
  %i.dh = load i32, ptr %i.df, align 4, !tbaa !95 ; 2 uses
  %i.di = sext i32 %i.dh to i64                   ; 2 uses
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.di ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !95
  %i.dl = zext i32 %i.dk to i64
  %.not143 = icmp eq i64 %indvars.iv230, %i.dl
  br i1 %.not143, label %.lr.ph198.preheader, label %bb.o, !llvm.loop !481

.lr.ph198:                                        ; preds = %.lr.ph198.preheader257, %.lr.ph198
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph198 ], [ %indvars.iv.ph, %.lr.ph198.preheader257 ]
  %.1197 = phi i64 [ %i.dm, %.lr.ph198 ], [ %.1197.ph, %.lr.ph198.preheader257 ] ; 2 uses
  %i.dm = add nsw i64 %.1197, -1                  ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !95
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv.next
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !95
  %i.dq = icmp sgt i64 %.1197, 1
  br i1 %i.dq, label %.lr.ph198, label %.loopexit.loopexit, !llvm.loop !482

.loopexit.loopexit:                               ; preds = %.lr.ph198, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.ct, %middle.block ], [ %indvars.iv.next, %.lr.ph198 ]
  %i.dr = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.n, %.loopexit.loopexit, %.lr.ph202
  %.2 = phi i32 [ %.0110201, %.lr.ph202 ], [ %i.dr, %.loopexit.loopexit ], [ %.0110201, %bb.n ] ; 3 uses
  %i.ds = add nsw i64 %.sroa.8.0200, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ds, %.sink.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph202, !llvm.loop !483

._crit_edge:                                      ; preds = %.loopexit
  %.pre = load double, ptr %i.bn, align 8, !tbaa !84
  %i.dt = load double, ptr %i.bk, align 8, !tbaa !37
  %i.du = load double, ptr %i.bl, align 8, !tbaa !389
  %i.dv = tail call double @llvm.fmuladd.f64(double %.pre, double %i.dt, double %i.du) ; 2 uses
  store double 0.000000e+00, ptr %i.bn, align 8, !tbaa !84
  %i.dw = icmp slt i32 %.2, %i.c
  br i1 %i.dw, label %.lr.ph212.preheader, label %._crit_edge213

.lr.ph212.preheader:                              ; preds = %._crit_edge
  %i.dx = sext i32 %.2 to i64
  br label %.lr.ph212

.lr.ph212:                                        ; preds = %.lr.ph212.preheader, %._crit_edge207
  %indvars.iv226 = phi i64 [ %i.dx, %.lr.ph212.preheader ], [ %indvars.iv.next227, %._crit_edge207 ] ; 2 uses
  %.0107210 = phi double [ %i.dv, %.lr.ph212.preheader ], [ %i.fe, %._crit_edge207 ]
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.ap, i64 %indvars.iv226
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !95
  %i.ea = sext i32 %i.dz to i64                   ; 3 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ea ; 2 uses
  %i.ec = load double, ptr %i.eb, align 8, !tbaa !84
  store double 0.000000e+00, ptr %i.eb, align 8, !tbaa !84
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.ea
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !95 ; 3 uses
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ef
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !84
  %i.ei = fdiv double %i.ec, %i.eh                ; 4 uses
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ea ; 3 uses
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !95 ; 2 uses
  %i.el = add nsw i32 %i.ek, %i.ee
  %i.em = sext i32 %i.el to i64
  %i.en = add nsw i32 %i.ee, 1
  %i.eo = sext i32 %i.en to i64                   ; 2 uses
  %i.ep = icmp sgt i32 %i.ek, 1
  br i1 %i.ep, label %.lr.ph206, label %._crit_edge207

.lr.ph206:                                        ; preds = %.lr.ph212, %.lr.ph206
  %.0204 = phi i64 [ %i.ez, %.lr.ph206 ], [ %i.eo, %.lr.ph212 ] ; 3 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.0204
  %i.er = load double, ptr %i.eq, align 8, !tbaa !84
  %i.es = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.0204
  %i.et = load i32, ptr %i.es, align 4, !tbaa !95
  %i.eu = sext i32 %i.et to i64
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.eu ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !84
  %i.ex = fneg double %i.er
  %i.ey = tail call double @llvm.fmuladd.f64(double %i.ex, double %i.ei, double %i.ew)
  store double %i.ey, ptr %i.ev, align 8, !tbaa !84
  %i.ez = add nsw i64 %.0204, 1                   ; 3 uses
  %i.fa = icmp slt i64 %i.ez, %i.em
  br i1 %i.fa, label %.lr.ph206, label %._crit_edge207, !llvm.loop !484

._crit_edge207:                                   ; preds = %.lr.ph206, %.lr.ph212
  %.0.lcssa = phi i64 [ %i.eo, %.lr.ph212 ], [ %i.ez, %.lr.ph206 ] ; 2 uses
  %i.fb = fmul double %i.ei, %i.ei
  %i.fc = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.0.lcssa
  store i32 %i.bp, ptr %i.fc, align 4, !tbaa !95
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.0.lcssa
  store double %i.ei, ptr %i.fd, align 8, !tbaa !84
  %i.fe = fsub double %.0107210, %i.fb            ; 2 uses
  %i.ff = load i32, ptr %i.ej, align 4, !tbaa !95
  %i.fg = add nsw i32 %i.ff, 1
  store i32 %i.fg, ptr %i.ej, align 4, !tbaa !95
  %indvars.iv.next227 = add nsw i64 %indvars.iv226, 1 ; 2 uses
  %exitcond229.not = icmp eq i64 %indvars.iv.next227, %wide.trip.count
  br i1 %exitcond229.not, label %._crit_edge213.loopexit, label %.lr.ph212, !llvm.loop !485

._crit_edge213.loopexit:                          ; preds = %._crit_edge207
  %.pre235 = load i32, ptr %i.bq, align 4, !tbaa !95
  br label %._crit_edge213

._crit_edge213:                                   ; preds = %._crit_edge.thread, %._crit_edge213.loopexit, %._crit_edge
  %i.fh = phi i32 [ 0, %._crit_edge ], [ %.pre235, %._crit_edge213.loopexit ], [ 0, %._crit_edge.thread ] ; 2 uses
  %.0107.lcssa = phi double [ %i.dv, %._crit_edge ], [ %i.fe, %._crit_edge213.loopexit ], [ %i.ce, %._crit_edge.thread ] ; 2 uses
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv230
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !95
  %i.fk = add nsw i32 %i.fh, 1
  store i32 %i.fk, ptr %i.bq, align 4, !tbaa !95
  %i.fl = add nsw i32 %i.fh, %i.fj
  %i.fm = sext i32 %i.fl to i64                   ; 2 uses
  %i.fn = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.fm
  store i32 %i.bp, ptr %i.fn, align 4, !tbaa !95
  %i.fo = fcmp ugt double %.0107.lcssa, 0.000000e+00
  br i1 %i.fo, label %bb.p, label %._crit_edge217

bb.p:                                             ; preds = %._crit_edge213
  %i.fp = tail call double @sqrt(double noundef %.0107.lcssa) #27
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.fm
  store double %i.fp, ptr %i.fq, align 8, !tbaa !84
  %indvars.iv.next231 = add nuw nsw i64 %indvars.iv230, 1 ; 2 uses
  %exitcond234.not = icmp eq i64 %indvars.iv.next231, %wide.trip.count233
  br i1 %exitcond234.not, label %._crit_edge217, label %bb.k, !llvm.loop !486

._crit_edge217:                                   ; preds = %bb.p, %._crit_edge213, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %.2116 = phi i32 [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit ], [ 1, %._crit_edge213 ], [ 0, %bb.p ]
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.2116, ptr %i.fr, align 4, !tbaa !20
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.fs, align 8, !tbaa !32
  br i1 %i.ao, label %bb.q, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit165

bb.q:                                             ; preds = %._crit_edge217
  call void @free(ptr noundef nonnull %i.as) #27
  call void @free(ptr noundef nonnull %i.ap) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit165

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit165: ; preds = %._crit_edge217, %bb.q
  br i1 %i.ar, label %bb.r, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.r:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit165
  call void @free(ptr noundef nonnull %i.aq) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit165, %bb.r
  ret void

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit167: ; preds = %bb.i
  %i.ft = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef nonnull %i.v) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit168

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit168: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit167, %.split
  %.pn144.pn.pn.pn.pn.pn.pn.pn250 = phi { ptr, i32 } [ %i.bm, %.split ], [ %i.ft, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit167 ]
  tail call void @free(ptr noundef nonnull %i.n) #27
  resume { ptr, i32 } %.pn144.pn.pn.pn.pn.pn.pn.pn250
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKS3_EEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(41) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load double, ptr %i.a, align 8, !tbaa !133 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !304, !nonnull !144, !align !310 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !9    ; 14 uses
  %i.g = load i8, ptr %1, align 8, !tbaa !261, !range !143, !noundef !144
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !263
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.j, i64 noundef %i.f)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i64 0, ptr %i.k, align 8, !tbaa !313
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !9
  %i.p = shl i64 %i.o, 2
  %i.q = add i64 %i.p, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 0, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !67   ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.n, align 8, !tbaa !9
  %i.u = shl i64 %i.t, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.s, i8 0, i64 %i.u, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit:   ; preds = %bb.b, %bb.c
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !304, !nonnull !144, !align !310 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5Eigen9JacobiSVDINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi2EE7computeERKS2_j:bb.a
  store double %i.ko, ptr %i.ki, align 8, !tbaa !84
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kb, i64 16 ; 2 uses
  %i.kq = load double, ptr %i.mm, align 8, !tbaa !84 ; 2 uses
  %i.kr = load double, ptr %i.kp, align 8, !tbaa !84 ; 2 uses
  %i.ks = fmul double %i.kr, %i.gq
  %i.kt = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.kq, double %i.ks)
  store double %i.kt, ptr %i.mm, align 8, !tbaa !84
  %i.ku = fmul double %.sink.i.i.i.us, %i.kr
  %i.kv = tail call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.kq, double %i.ku)
  store double %i.kv, ptr %i.kp, align 8, !tbaa !84
  %i.kw = load i8, ptr %i.dz, align 1, !tbaa !683, !range !143, !noundef !144
  %i.kx = trunc nuw i8 %i.kw to i1
  %i.ky = load i8, ptr %i.ea, align 2, !range !143
  %i.kz = trunc nuw i8 %i.ky to i1
  %i.la = select i1 %i.kx, i1 true, i1 %i.kz
  br i1 %i.la, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i74.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i74.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit72.thread.us
  %i.lb = getelementptr inbounds i8, ptr %i.eb, i64 %.idx.i.us ; 4 uses
  %i.lc = load double, ptr %i.mn, align 8, !tbaa !84 ; 2 uses
  %i.ld = load double, ptr %i.lb, align 8, !tbaa !84 ; 2 uses
  %i.le = fmul double %i.ld, %i.gq
  %i.lf = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.lc, double %i.le)
  store double %i.lf, ptr %i.mn, align 8, !tbaa !84
  %i.lg = fmul double %.sink.i.i.i.us, %i.ld
  %i.lh = tail call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.lc, double %i.lg)
  store double %i.lh, ptr %i.lb, align 8, !tbaa !84
  %i.li = getelementptr inbounds nuw i8, ptr %i.lb, i64 8 ; 2 uses
  %i.lj = load double, ptr %i.mo, align 8, !tbaa !84 ; 2 uses
  %i.lk = load double, ptr %i.li, align 8, !tbaa !84 ; 2 uses
  %i.ll = fmul double %i.lk, %i.gq
  %i.lm = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.lj, double %i.ll)
  store double %i.lm, ptr %i.mo, align 8, !tbaa !84
  %i.ln = fmul double %.sink.i.i.i.us, %i.lk
  %i.lo = tail call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.lj, double %i.ln)
  store double %i.lo, ptr %i.li, align 8, !tbaa !84
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lb, i64 16 ; 2 uses
  %i.lq = load double, ptr %i.mp, align 8, !tbaa !84 ; 2 uses
  %i.lr = load double, ptr %i.lp, align 8, !tbaa !84 ; 2 uses
  %i.ls = fmul double %i.lr, %i.gq
  %i.lt = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.lq, double %i.ls)
  store double %i.lt, ptr %i.mp, align 8, !tbaa !84
  %i.lu = fmul double %.sink.i.i.i.us, %i.lr
  %i.lv = tail call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.lq, double %i.lu)
  store double %i.lv, ptr %i.lp, align 8, !tbaa !84
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us: ; preds = %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i74.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit72.thread.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.lw = load double, ptr %i.mf, align 8, !tbaa !84
  %i.lx = tail call noundef double @llvm.fabs.f64(double %i.lw) ; 2 uses
  %i.ly = load double, ptr %i.ev, align 8, !tbaa !84
  %i.lz = tail call noundef double @llvm.fabs.f64(double %i.ly) ; 2 uses
  %i.ma = fcmp olt double %i.lx, %i.lz
  %.sroa.speculated.us = select i1 %i.ma, double %i.lz, double %i.lx ; 2 uses
  %i.mb = fcmp olt double %.2187205.us, %.sroa.speculated.us
  %.sroa.speculated135.us = select i1 %i.mb, double %.sroa.speculated.us, double %.2187205.us
  br label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us, %bb.n
  %.3188.us = phi double [ %.sroa.speculated135.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us ], [ %.2187205.us, %bb.n ] ; 2 uses
  %.3.us = phi i1 [ false, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us ], [ %.2206.us, %bb.n ] ; 3 uses
  %i.mc = add nuw nsw i64 %.056207.us, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.mc, %.057210.us
  br i1 %exitcond.not, label %bb.t, label %bb.m, !llvm.loop !686

bb.t:                                             ; preds = %bb.s
  %i.md = add nuw nsw i64 %.057210.us, 1          ; 2 uses
  %exitcond219.not = icmp eq i64 %i.md, %i.dv     ; 3 uses
  %brmerge.not = select i1 %exitcond219.not, i1 %.3.us, i1 false
  %.mux = select i1 %exitcond219.not, i64 1, i64 %i.md
  %.3.us.mux = select i1 %exitcond219.not, i1 true, i1 %.3.us
  br i1 %brmerge.not, label %.preheader, label %.preheader201.us, !llvm.loop !687

.preheader201.us:                                 ; preds = %bb.t, %.preheader202.us.preheader
  %.057210.us = phi i64 [ %.mux, %bb.t ], [ 1, %.preheader202.us.preheader ] ; 4 uses
  %.1209.us = phi i1 [ %.3.us.mux, %bb.t ], [ true, %.preheader202.us.preheader ]
  %.1186208.us = phi double [ %.3188.us, %bb.t ], [ %i.ei, %.preheader202.us.preheader ]
  %i.me = getelementptr [8 x i8], ptr %i.dt, i64 %.057210.us ; 6 uses
  %.idx.i64.us = mul i64 %.057210.us, 24          ; 5 uses
  %invariant.gep.us = getelementptr i8, ptr %i.dt, i64 %.idx.i64.us ; 5 uses
  %i.mf = getelementptr i8, ptr %i.me, i64 %.idx.i64.us ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 24 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 48 ; 2 uses
  %i.mi = getelementptr inbounds i8, ptr %0, i64 %.idx.i64.us ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 16 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %invariant.gep.us, i64 8 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %invariant.gep.us, i64 16 ; 2 uses
  %i.mn = getelementptr inbounds i8, ptr %i.eb, i64 %.idx.i64.us ; 4 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 16 ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.dt, i64 %.idx.i64.us
  br label %bb.m

.preheader:                                       ; preds = %bb.t, %bb.l
  %i.mq = icmp sgt i64 %i.dv, 0
  br i1 %i.mq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %bb.u

._crit_edge:                                      ; preds = %bb.w, %.preheader
  %.lcssa = phi i64 [ %i.dv, %.preheader ], [ %i.nv, %bb.w ] ; 6 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.mt = insertelement <2 x double> poison, double %.0184, i64 0
  %i.mu = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mv = load <2 x double>, ptr %i.ms, align 8, !tbaa !91
  %i.mw = fmul <2 x double> %i.mu, %i.mv
  store <2 x double> %i.mw, ptr %i.ms, align 8, !tbaa !91
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.my = load double, ptr %i.mx, align 8, !tbaa !84
  %i.mz = fmul double %.0184, %i.my
  store double %i.mz, ptr %i.mx, align 8, !tbaa !84
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store i64 %.lcssa, ptr %i.na, align 8, !tbaa !688
  %i.nb = icmp sgt i64 %.lcssa, 0
  br i1 %i.nb, label %.lr.ph216.preheader, label %.loopexit

.lr.ph216.preheader:                              ; preds = %._crit_edge
  %i.nc = add nsw i64 %.lcssa, -2
  br label %.lr.ph216

bb.u:                                             ; preds = %.lr.ph, %bb.w
  %i.nd = phi i64 [ %i.dv, %.lr.ph ], [ %i.nv, %bb.w ]
  %.055213 = phi i64 [ 0, %.lr.ph ], [ %i.nw, %bb.w ] ; 4 uses
  %i.ne = getelementptr [8 x i8], ptr %i.dt, i64 %.055213
  %.idx.i82 = mul i64 %.055213, 24                ; 2 uses
  %i.nf = getelementptr i8, ptr %i.ne, i64 %.idx.i82
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !84 ; 2 uses
  %i.nh = tail call noundef double @llvm.fabs.f64(double %i.ng)
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %.055213
  store double %i.nh, ptr %i.ni, align 8, !tbaa !84
  %i.nj = load i8, ptr %i.dx, align 1, !tbaa !681, !range !143, !noundef !144
  %i.nk = trunc nuw i8 %i.nj to i1
  %i.nl = load i8, ptr %i.dy, align 8, !range !143
  %i.nm = trunc nuw i8 %i.nl to i1
  %i.nn = select i1 %i.nk, i1 true, i1 %i.nm
  %i.no = fcmp olt double %i.ng, 0.000000e+00
  %or.cond = and i1 %i.no, %i.nn
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.np = getelementptr inbounds i8, ptr %0, i64 %.idx.i82 ; 3 uses
  %i.nq = load <2 x double>, ptr %i.np, align 8, !tbaa !91
  %i.nr = fneg <2 x double> %i.nq
  store <2 x double> %i.nr, ptr %i.np, align 8, !tbaa !91
  %i.ns = getelementptr i8, ptr %i.np, i64 16     ; 2 uses
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !84
  %i.nu = fneg double %i.nt
  store double %i.nu, ptr %i.ns, align 8, !tbaa !84
  %.pre229 = load i64, ptr %i.du, align 8, !tbaa !184
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.nv = phi i64 [ %.pre229, %bb.v ], [ %i.nd, %bb.u ] ; 3 uses
  %i.nw = add nuw nsw i64 %.055213, 1             ; 2 uses
  %i.nx = icmp slt i64 %i.nw, %i.nv
  br i1 %i.nx, label %bb.u, label %._crit_edge, !llvm.loop !689

.lr.ph216:                                        ; preds = %.lr.ph216.preheader, %.thread195
  %.0214 = phi i64 [ %i.qb, %.thread195 ], [ 0, %.lr.ph216.preheader ] ; 9 uses
  %i.ny = xor i64 %.0214, -1
  %i.nz = add nsw i64 %.lcssa, %i.ny              ; 3 uses
  %i.oa = sub nsw i64 %.lcssa, %.0214             ; 2 uses
  %i.ob = sub nsw i64 3, %i.oa
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %i.ob ; 4 uses
  %i.od = load double, ptr %i.oc, align 8, !tbaa !84 ; 5 uses
  %i.oe = icmp sgt i64 %i.oa, 1
  br i1 %i.oe, label %.lr.ph.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread191

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph216
  %xtraiter = and i64 %i.nz, 1
  %i.of = icmp eq i64 %i.nc, %.0214
  br i1 %i.of, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.nz, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.sroa.7.0.i.i = phi double [ %i.od, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.7.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.02123.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.oq, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.og = phi double [ %i.od, %.lr.ph.i.i.i.i.preheader.new ], [ %i.op, %.lr.ph.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.oh = getelementptr [8 x i8], ptr %i.oc, i64 %.02123.i.i.i.i
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !84 ; 3 uses
  %i.oj = fcmp ogt double %i.oi, %i.og            ; 3 uses
  %.sroa.0.1.i.i = select i1 %i.oj, i64 %.02123.i.i.i.i, i64 %.sroa.0.0.i.i
  %.sroa.7.1.i.i = select i1 %i.oj, double %i.oi, double %.sroa.7.0.i.i
  %i.ok = select i1 %i.oj, double %i.oi, double %i.og ; 2 uses
  %i.ol = add nuw nsw i64 %.02123.i.i.i.i, 1      ; 2 uses
  %i.om = getelementptr [8 x i8], ptr %i.oc, i64 %i.ol
  %i.on = load double, ptr %i.om, align 8, !tbaa !84 ; 3 uses
  %i.oo = fcmp ogt double %i.on, %i.ok            ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.oo, i64 %i.ol, i64 %.sroa.0.1.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.oo, double %i.on, double %.sroa.7.1.i.i ; 3 uses
  %i.op = select i1 %i.oo, double %i.on, double %i.ok ; 2 uses
  %i.oq = add nuw nsw i64 %.02123.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !690

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.sroa.7.0.i.i.epil.init = phi double [ %i.od, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.02123.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.oq, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.od, %.lr.ph.i.i.i.i.preheader ], [ %i.op, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %lcmp.mod253 = trunc i64 %i.nz to i1
  tail call void @llvm.assume(i1 %lcmp.mod253)
  %i.or = getelementptr [8 x i8], ptr %i.oc, i64 %.02123.i.i.i.i.epil.init
  %i.os = load double, ptr %i.or, align 8, !tbaa !84 ; 2 uses
  %i.ot = fcmp ogt double %i.os, %.epil.init      ; 2 uses
  %.sroa.0.1.i.i.epil = select i1 %i.ot, i64 %.02123.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  %.sroa.7.1.i.i.epil = select i1 %i.ot, double %i.os, double %.sroa.7.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.7.1.i.i.lcssa = phi double [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.ou = fcmp une double %.sroa.7.1.i.i.lcssa, 0.000000e+00
  br i1 %i.ou, label %bb.x, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread191: ; preds = %.lr.ph216
  %i.ov = fcmp une double %i.od, 0.000000e+00
  br i1 %i.ov, label %.thread195, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread

bb.x:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit
  %.not63 = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not63, label %.thread195, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ow = add nuw nsw i64 %.sroa.0.1.i.i.lcssa, %.0214 ; 3 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %.0214 ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.ow ; 2 uses
  %i.oz = load double, ptr %i.ox, align 8, !tbaa !84
  %i.pa = load double, ptr %i.oy, align 8, !tbaa !84
  store double %i.pa, ptr %i.ox, align 8, !tbaa !84
  store double %i.oz, ptr %i.oy, align 8, !tbaa !84
  %i.pb = load i8, ptr %i.dx, align 1, !tbaa !681, !range !143, !noundef !144
  %i.pc = trunc nuw i8 %i.pb to i1
  %i.pd = load i8, ptr %i.dy, align 8, !range !143
  %i.pe = trunc nuw i8 %i.pd to i1
  %i.pf = select i1 %i.pc, i1 true, i1 %i.pe
  br i1 %i.pf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.idx.i.i.i.i84 = mul nuw nsw i64 %i.ow, 24
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i84 ; 3 uses
  %.idx.i.i.i.i85 = mul nuw nsw i64 %.0214, 24
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i85 ; 3 uses
  %i.pi = load <2 x double>, ptr %i.ph, align 8, !tbaa !91
  %i.pj = load <2 x double>, ptr %i.pg, align 8, !tbaa !91
  store <2 x double> %i.pj, ptr %i.ph, align 8, !tbaa !91
  store <2 x double> %i.pi, ptr %i.pg, align 8, !tbaa !91
  %i.pk = getelementptr i8, ptr %i.pg, i64 16     ; 2 uses
  %i.pl = getelementptr i8, ptr %i.ph, i64 16     ; 2 uses
  %i.pm = load double, ptr %i.pk, align 8, !tbaa !84
  %i.pn = load double, ptr %i.pl, align 8, !tbaa !84
  store double %i.pn, ptr %i.pk, align 8, !tbaa !84
  store double %i.pm, ptr %i.pl, align 8, !tbaa !84
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.po = load i8, ptr %i.dz, align 1, !tbaa !683, !range !143, !noundef !144
  %i.pp = trunc nuw i8 %i.po to i1
  %i.pq = load i8, ptr %i.ea, align 2, !range !143
  %i.pr = trunc nuw i8 %i.pq to i1
  %i.ps = select i1 %i.pp, i1 true, i1 %i.pr
  br i1 %i.ps, label %bb.ab, label %.thread195

bb.ab:                                            ; preds = %bb.aa
  %.idx.i.i.i.i86 = mul nuw nsw i64 %i.ow, 24
  %i.pt = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i.i.i.i86 ; 3 uses
  %.idx.i.i.i.i87 = mul nuw nsw i64 %.0214, 24
  %i.pu = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i.i.i.i87 ; 3 uses
  %i.pv = load <2 x double>, ptr %i.pu, align 8, !tbaa !91
  %i.pw = load <2 x double>, ptr %i.pt, align 8, !tbaa !91
  store <2 x double> %i.pw, ptr %i.pu, align 8, !tbaa !91
  store <2 x double> %i.pv, ptr %i.pt, align 8, !tbaa !91
  %i.px = getelementptr i8, ptr %i.pt, i64 16     ; 2 uses
  %i.py = getelementptr i8, ptr %i.pu, i64 16     ; 2 uses
  %i.pz = load double, ptr %i.px, align 8, !tbaa !84
  %i.qa = load double, ptr %i.py, align 8, !tbaa !84
  store double %i.qa, ptr %i.px, align 8, !tbaa !84
  store double %i.pz, ptr %i.py, align 8, !tbaa !84
  br label %.thread195

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread191
  store i64 %.0214, ptr %i.na, align 8, !tbaa !688
  br label %.loopexit

.thread195:                                       ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread191, %bb.x, %bb.ab, %bb.aa
  %i.qb = add nuw nsw i64 %.0214, 1               ; 2 uses
  %exitcond220.not = icmp eq i64 %i.qb, %.lcssa
  br i1 %exitcond220.not, label %.loopexit, label %.lr.ph216, !llvm.loop !691

.loopexit:                                        ; preds = %.thread195, %._crit_edge, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 1, ptr %i.qc, align 4, !tbaa !680
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %bb.c
  ret ptr %0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen18SimplicialCholeskyINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEE11_solve_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEES8_EEvRKNS_10MatrixBaseIT_EERNS9_IT0_EE(ptr noundef nonnull align 8 dereferenceable(185) %0, ptr noundef nonnull align 1 dereferenceable(1) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %4 = alloca %"class.Eigen::Product.1039", align 8 ; 5 uses
  %5 = alloca %"class.Eigen::TriangularView.1058", align 8 ; 5 uses
  %6 = alloca %"class.Eigen::TriangularView.1062", align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !20
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.bb

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !378  ; 5 uses
  %i.f = icmp sgt i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !81   ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !80
  %.not.i.i.i.i.i = icmp eq i64 %i.j, %i.e
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load i64, ptr %i.k, align 8
  %.not11.i.i.i.i.i = icmp eq i64 %i.l, %i.h
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not11.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = icmp eq i64 %i.h, 0
  br i1 %i.m, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sdiv i64 9223372036854775807, %i.h
  %i.o = icmp sgt i64 %i.e, %i.n
  br i1 %i.o, label %bb.f, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !82
  tail call void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.q = mul nsw i64 %i.h, %i.e
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.q, i64 noundef %i.e, i64 noundef %i.h)
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSINS_7ProductINS_17PermutationMatrixILin1ELin1EiEES2_Li2EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.c, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i
  tail call void @_ZN5Eigen8internal26permutation_matrix_productINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1ELb0ENS_10DenseShapeEE3runIS3_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS3_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit

bb.g:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %1, align 8, !tbaa !62     ; 8 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8, !tbaa !80   ; 6 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !81   ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !tbaa !80
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.y, %i.u
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8
  %.not8.i.i.i.i.i.i.i = icmp eq i64 %i.aa, %i.w
  %or.cond.i.i.i.i.i.i.i13 = select i1 %.not.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i13, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = icmp eq i64 %i.u, 0
  %i.ac = icmp eq i64 %i.w, 0
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.ab, %i.ac
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = sdiv i64 9223372036854775807, %i.w
  %i.ae = icmp sgt i64 %i.u, %i.ad
  br i1 %i.ae, label %.noexc.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.i
  %i.af = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.af, align 8, !tbaa !82
  tail call void @__cxa_throw(ptr nonnull %i.af, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #29
  unreachable
end_hunk_2
