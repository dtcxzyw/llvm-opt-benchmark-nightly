Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/planarize_quad_mesh?download=true
inline.NumInlined: 17087
inline.NumDeleted: 8655
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 204
begin_hunk_0_@_ZN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE20factorize_preorderedILb1EEEvRKS3_:bb.a

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.o = add nuw nsw i64 %i.m, 15
  %i.p = alloca i8, i64 %i.o, align 16
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.d:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.m) #30 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.d
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !140
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.d, %bb.c
  %i.t = phi ptr [ %i.p, %bb.c ], [ %i.q, %bb.d ] ; 6 uses
  %i.u = icmp ugt i64 %i.m, 131072                ; 2 uses
  %i.v = ashr exact i64 %sext, 30                 ; 5 uses
  %i.w = icmp ugt i64 %i.v, 131072                ; 3 uses
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.v) #30 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.z, align 8, !tbaa !140
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
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
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.v) #30 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %_ZN5Eigen8internal14aligned_mallocEm.exit156

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ag, align 8, !tbaa !140
  invoke void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
          to label %.noexc155 unwind label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160

.noexc155:                                        ; preds = %bb.j
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit156:     ; preds = %bb.i, %bb.h
  %i.ah = phi ptr [ %i.ab, %bb.h ], [ %i.x, %bb.i ] ; 8 uses
  %i.ai = phi ptr [ %i.ad, %bb.h ], [ %i.ae, %bb.i ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !41
  %.not.i.i = icmp eq i64 %i.j, %i.al
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit156
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !42
  tail call void @free(ptr noundef %i.am) #27
  %.not190 = icmp eq i64 %sext, 0
  br i1 %.not190, label %.sink.split.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.k
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.m) #30 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.l, label %.sink.split.i.i

bb.l:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ap, align 8, !tbaa !140
  invoke void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
          to label %.noexc158 unwind label %bb.o

.noexc158:                                        ; preds = %bb.l
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.k
  %.sink.i.i = phi ptr [ %i.an, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.k ]
  store ptr %.sink.i.i, ptr %i.aj, align 8, !tbaa !42
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit156, %.sink.split.i.i
  store i64 %i.j, ptr %i.ak, align 8, !tbaa !41
  %i.aq = icmp sgt i32 %i.c, 0
  br i1 %i.aq, label %.lr.ph214, label %._crit_edge215

.lr.ph214:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !139 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !137
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !138
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !135
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !136 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bf = load ptr, ptr %i.aj, align 8, !tbaa !42 ; 2 uses
  %wide.trip.count231 = and i64 %i.b, 2147483647
  %wide.trip.count = and i64 %i.b, 2147483647
  br label %bb.p

bb.m:                                             ; preds = %._crit_edge211
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count231
  br i1 %exitcond232.not, label %._crit_edge215, label %bb.p, !llvm.loop !363

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
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !43
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv228
  %i.bk = trunc nuw nsw i64 %indvars.iv228 to i32 ; 3 uses
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !154
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv228
  store i32 0, ptr %i.bl, align 4, !tbaa !154
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv228 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !154
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr i8, ptr %i.bm, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !154
  %i.br = sext i32 %i.bq to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.r:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv228
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !154
  %i.bu = sext i32 %i.bt to i64
  %i.bv = add nsw i64 %i.bu, %i.bo
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.q, %bb.r
  %.sink.i = phi i64 [ %i.br, %bb.q ], [ %i.bv, %bb.r ] ; 2 uses
  %i.bw = icmp sgt i64 %.sink.i, %i.bo
  br i1 %i.bw, label %.lr.ph200, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.bx = load double, ptr %i.bd, align 8, !tbaa !55
  %i.by = load double, ptr %i.be, align 8, !tbaa !364
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bx, double 0.000000e+00, double %i.by)
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !43
  br label %._crit_edge211

.lr.ph200:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, %.loopexit
  %.0100199 = phi i32 [ %.2, %.loopexit ], [ %i.c, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %.sroa.8.0198 = phi i64 [ %i.dn, %.loopexit ], [ %i.bo, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %.sroa.8.0198
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !154 ; 2 uses
  %i.cc = sext i32 %i.cb to i64                   ; 4 uses
  %.not = icmp slt i64 %indvars.iv228, %i.cc
  br i1 %.not, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.lr.ph200
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.au, i64 %.sroa.8.0198
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !43
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.cc ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !43
  %i.ch = fadd double %i.ce, %i.cg
  store double %i.ch, ptr %i.cf, align 8, !tbaa !43
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.cc ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !154
  %i.ck = zext i32 %i.cj to i64
  %.not135191 = icmp eq i64 %indvars.iv228, %i.ck
  br i1 %.not135191, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.cl = load ptr, ptr %i.bc, align 8, !tbaa !139
  br label %bb.t

.lr.ph196.preheader:                              ; preds = %bb.t
  %i.cm = sext i32 %.0100199 to i64               ; 5 uses
  %2 = add i64 %.098193, 2
  %smin = tail call i64 @llvm.smin.i64(i64 %i.db, i64 1)
  %3 = sub i64 %2, %smin                          ; 3 uses
  %min.iters.check = icmp ult i64 %3, 8
  br i1 %min.iters.check, label %.lr.ph196.preheader256, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph196.preheader
  %i.cn = sub i64 %.098193, %i.cm
  %reass.sub = shl i64 %i.cn, 2
  %diff.check = icmp ult i64 %reass.sub, 28
  br i1 %diff.check, label %.lr.ph196.preheader256, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %3, -8                         ; 4 uses
  %i.co = sub i64 %i.cm, %n.vec                   ; 2 uses
  %4 = sub i64 %i.db, %n.vec
  %invariant.gep = getelementptr [4 x i8], ptr %i.ah, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cp = sub i64 %.098193, %index
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -12
  %i.cs = getelementptr inbounds i8, ptr %i.cq, i64 -28
  %wide.load = load <4 x i32>, ptr %i.cr, align 4, !tbaa !154
  %wide.load254 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !154
  %i.ct = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ct ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.cv = getelementptr inbounds i8, ptr %gep, i64 -28
  store <4 x i32> %wide.load, ptr %i.cu, align 4, !tbaa !154
  store <4 x i32> %wide.load254, ptr %i.cv, align 4, !tbaa !154
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !365

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %3, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %.lr.ph196.preheader256

.lr.ph196.preheader256:                           ; preds = %vector.memcheck, %.lr.ph196.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.cm, %vector.memcheck ], [ %i.cm, %.lr.ph196.preheader ], [ %i.co, %middle.block ]
  %.1195.ph = phi i64 [ %i.db, %vector.memcheck ], [ %i.db, %.lr.ph196.preheader ], [ %4, %middle.block ]
  br label %.lr.ph196

bb.t:                                             ; preds = %.lr.ph, %bb.t
  %i.cx = phi ptr [ %i.ci, %.lr.ph ], [ %i.de, %bb.t ]
  %i.cy = phi i64 [ %i.cc, %.lr.ph ], [ %i.dd, %bb.t ]
  %.098193 = phi i64 [ 0, %.lr.ph ], [ %i.db, %bb.t ] ; 5 uses
  %.099192 = phi i32 [ %i.cb, %.lr.ph ], [ %i.dc, %bb.t ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.098193
  store i32 %.099192, ptr %i.cz, align 4, !tbaa !154
  store i32 %i.bk, ptr %i.cx, align 4, !tbaa !154
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cy
  %i.db = add nuw i64 %.098193, 1                 ; 5 uses
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !154 ; 2 uses
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.dd ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !154
  %i.dg = zext i32 %i.df to i64
  %.not135 = icmp eq i64 %indvars.iv228, %i.dg
  br i1 %.not135, label %.lr.ph196.preheader, label %bb.t, !llvm.loop !366

.lr.ph196:                                        ; preds = %.lr.ph196.preheader256, %.lr.ph196
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph196 ], [ %indvars.iv.ph, %.lr.ph196.preheader256 ]
  %.1195 = phi i64 [ %i.dh, %.lr.ph196 ], [ %.1195.ph, %.lr.ph196.preheader256 ] ; 2 uses
  %i.dh = add nsw i64 %.1195, -1                  ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !154
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv.next
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !154
  %i.dl = icmp sgt i64 %.1195, 1
  br i1 %i.dl, label %.lr.ph196, label %.loopexit.loopexit, !llvm.loop !367

.loopexit.loopexit:                               ; preds = %.lr.ph196, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.co, %middle.block ], [ %indvars.iv.next, %.lr.ph196 ]
  %i.dm = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %.loopexit.loopexit, %.lr.ph200
  %.2 = phi i32 [ %.0100199, %.lr.ph200 ], [ %i.dm, %.loopexit.loopexit ], [ %.0100199, %bb.s ] ; 3 uses
  %i.dn = add nsw i64 %.sroa.8.0198, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.dn, %.sink.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph200, !llvm.loop !368

._crit_edge:                                      ; preds = %.loopexit
  %.pre = load double, ptr %i.bi, align 8, !tbaa !43
  %i.do = load double, ptr %i.bd, align 8, !tbaa !55
  %i.dp = load double, ptr %i.be, align 8, !tbaa !364
  %i.dq = tail call double @llvm.fmuladd.f64(double %.pre, double %i.do, double %i.dp) ; 2 uses
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !43
  %i.dr = icmp slt i32 %.2, %i.c
  br i1 %i.dr, label %.lr.ph210, label %._crit_edge211

.lr.ph210:                                        ; preds = %._crit_edge
  %i.ds = sext i32 %.2 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph210, %._crit_edge205
  %indvars.iv224 = phi i64 [ %i.ds, %.lr.ph210 ], [ %indvars.iv.next225, %._crit_edge205 ] ; 2 uses
  %.097208 = phi double [ %i.dq, %.lr.ph210 ], [ %i.ex, %._crit_edge205 ]
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv224
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !154
  %i.dv = sext i32 %i.du to i64                   ; 4 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.dv ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !43 ; 3 uses
  store double 0.000000e+00, ptr %i.dw, align 8, !tbaa !43
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.dv
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !43
  %i.ea = fdiv double %i.dx, %i.dz                ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.dv
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !154 ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.dv ; 3 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !154 ; 2 uses
  %i.ef = add nsw i32 %i.ee, %i.ec
  %i.eg = sext i32 %i.ef to i64
  %i.eh = sext i32 %i.ec to i64                   ; 2 uses
  %i.ei = icmp sgt i32 %i.ee, 0
  br i1 %i.ei, label %.lr.ph204, label %._crit_edge205

.lr.ph204:                                        ; preds = %bb.u, %.lr.ph204
  %.0202 = phi i64 [ %i.es, %.lr.ph204 ], [ %i.eh, %bb.u ] ; 3 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.0202
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !43
  %i.el = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.0202
  %i.em = load i32, ptr %i.el, align 4, !tbaa !154
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.en ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !43
  %i.eq = fneg double %i.ek
  %i.er = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.dx, double %i.ep)
  store double %i.er, ptr %i.eo, align 8, !tbaa !43
  %i.es = add nsw i64 %.0202, 1                   ; 3 uses
  %i.et = icmp slt i64 %i.es, %i.eg
  br i1 %i.et, label %.lr.ph204, label %._crit_edge205, !llvm.loop !369

._crit_edge205:                                   ; preds = %.lr.ph204, %bb.u
  %.0.lcssa = phi i64 [ %i.eh, %bb.u ], [ %i.es, %.lr.ph204 ] ; 2 uses
  %i.eu = fmul double %i.dx, %i.ea
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.0.lcssa
  store i32 %i.bk, ptr %i.ev, align 4, !tbaa !154
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.0.lcssa
  store double %i.ea, ptr %i.ew, align 8, !tbaa !43
  %i.ex = fsub double %.097208, %i.eu             ; 2 uses
  %i.ey = load i32, ptr %i.ed, align 4, !tbaa !154
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ed, align 4, !tbaa !154
  %indvars.iv.next225 = add nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count
  br i1 %exitcond227.not, label %._crit_edge211, label %bb.u, !llvm.loop !370

._crit_edge211:                                   ; preds = %._crit_edge205, %._crit_edge.thread, %._crit_edge
  %.097.lcssa = phi double [ %i.dq, %._crit_edge ], [ %i.bz, %._crit_edge.thread ], [ %i.ex, %._crit_edge205 ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv228
  store double %.097.lcssa, ptr %i.fa, align 8, !tbaa !43
  %i.fb = fcmp une double %.097.lcssa, 0.000000e+00
  br i1 %i.fb, label %bb.m, label %._crit_edge215

._crit_edge215:                                   ; preds = %._crit_edge211, %bb.m, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %.2106 = phi i32 [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit ], [ 0, %bb.m ], [ 1, %._crit_edge211 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.2106, ptr %i.fc, align 4, !tbaa !52
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.fd, align 8, !tbaa !53
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
  store i8 0, ptr %3, align 8, !tbaa !50
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 -1, ptr %i.a, align 8, !tbaa !49
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.d = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #30 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !135
  %.not6.i = icmp eq ptr %i.d, null
  br i1 %.not6.i, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !140
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
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
  store i64 0, ptr %i.a, align 8, !tbaa !49
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.d, align 4
  invoke void @_ZN5Eigen8internal25ordering_helper_at_plus_aINS_12SparseMatrixIdLi0EiEEEEvRKT_RS4_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit
  invoke void @_ZN5Eigen8internal23minimum_degree_orderingIdiEEvRNS_12SparseMatrixIT_Li0ET0_EERNS_17PermutationMatrixILin1ELin1ES4_EE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %bb.i
end_hunk_0
begin_hunk_1_@_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEC2INS_7ProductINS_12SparseMatrixIdLi0EiEES2_Li0EEEEERKNS_9DenseBaseIT_EE:bb.a
  %.01623.i.i.i.i.i.i.i.i = phi i64 [ %i.bv, %._crit_edge.i.i.i.i.i.i.i.i ], [ 0, %.split.i.i.i.i.i.i.i.i ] ; 4 uses
  %gep26.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.r, i64 %.01623.i.i.i.i.i.i.i.i
  %i.bm = load double, ptr %gep26.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.01623.i.i.i.i.i.i.i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !154
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.01623.i.i.i.i.i.i.i.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !154 ; 2 uses
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = add nsw i64 %i.bs, %i.bp
  %i.bu = icmp sgt i32 %i.br, 0
  br i1 %i.bu, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i.i.i.i.i.i.i
  %i.bv = add nuw nsw i64 %.01623.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bv, %i.p
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_7ProductINS_12SparseMatrixIdLi0EiEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i.i.i.i.i.i.i, !llvm.loop !620

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.8.022.i.i.i.i.i.i.i.i = phi i64 [ %i.cd, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bp, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.sroa.8.022.i.i.i.i.i.i.i.i
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !43
  %i.by = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.sroa.8.022.i.i.i.i.i.i.i.i
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !154
  %i.ca = sext i32 %i.bz to i64
  %gep.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.ab, i64 %i.ca ; 2 uses
  %i.cb = load double, ptr %gep.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.bx, double %i.bm, double %i.cb)
  store double %i.cc, ptr %gep.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %i.cd = add nsw i64 %.sroa.8.022.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ce = icmp slt i64 %i.cd, %i.bt
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !619

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_7ProductINS_12SparseMatrixIdLi0EiEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %._crit_edge.us.us.i.i.i.i.i.i.i.i, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = load ptr, ptr %0, align 8, !tbaa !42
  tail call void @free(ptr noundef %i.cg) #27
  resume { ptr, i32 } %i.cf
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal20generic_product_implINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIS3_EENS_10DenseShapeES6_Li8EE13scaleAndAddToINS2_IdLi3ELi3ELi0ELi3ELi3EEEEEvRT_RKS3_RKS5_RKd(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Eigen::internal::gemm_blocking_space", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !131  ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !9
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %2, align 8, !tbaa !621    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !9
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load double, ptr %3, align 8, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 16, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  store i64 3, ptr %i.l, align 8, !tbaa !623
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 3 uses
  store i64 3, ptr %i.m, align 8, !tbaa !625
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  store i64 %i.b, ptr %i.n, align 8, !tbaa !626
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull align 8 dereferenceable(8) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.m, i64 noundef 1)
  %i.o = load i64, ptr %i.l, align 8, !tbaa !623
  %i.p = load i64, ptr %i.n, align 8, !tbaa !626  ; 2 uses
  %i.q = mul nsw i64 %i.p, %i.o
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %i.q, ptr %i.r, align 8, !tbaa !627
  %i.s = load i64, ptr %i.m, align 8, !tbaa !625
  %i.t = mul nsw i64 %i.s, %i.p
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.t, ptr %i.u, align 8, !tbaa !629
  %i.v = load i64, ptr %i.d, align 8, !tbaa !9    ; 2 uses
  %i.w = load ptr, ptr %2, align 8, !tbaa !621, !nonnull !60, !align !221
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !9    ; 2 uses
  %i.z = icmp eq i64 %i.y, -1
  %i.aa = load i64, ptr %i.h, align 8, !tbaa !9   ; 2 uses
  %..i.i = select i1 %i.z, i64 %i.aa, i64 %i.y
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !131
  %i.ac = load ptr, ptr %1, align 8, !tbaa !61
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !61
  invoke void @_ZN5Eigen8internal29general_matrix_matrix_productIldLi0ELb0EdLi1ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE(i64 noundef %i.v, i64 noundef %..i.i, i64 noundef %i.ab, ptr noundef nonnull %i.ac, i64 noundef %i.v, ptr noundef nonnull %i.ad, i64 noundef %i.aa, ptr noundef nonnull %0, i64 noundef 1, i64 noundef 3, double noundef %i.k, ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef null)
          to label %_ZN5Eigen8internal16parallelize_gemmILb0ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi1ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS6_EENS5_IdLi3ELi3ELi0ELi3ELi3EEENS0_19gemm_blocking_spaceILi0EddLi3ELi3ELin1ELi1ELb0EEEEElEEvRKT0_T1_SH_SH_b.exit unwind label %bb.f

_ZN5Eigen8internal16parallelize_gemmILb0ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi1ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS6_EENS5_IdLi3ELi3ELi0ELi3ELi3EEENS0_19gemm_blocking_spaceILi0EddLi3ELi3ELin1ELi1ELb0EEEEElEEvRKT0_T1_SH_SH_b.exit: ; preds = %bb.d
  %i.ae = load ptr, ptr %4, align 8, !tbaa !630
  call void @free(ptr noundef %i.ae) #27
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !631
  call void @free(ptr noundef %i.ag) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %_ZN5Eigen8internal16parallelize_gemmILb0ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi0ELb0EdLi1ELb0ELi0ELi1EEENS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS6_EENS5_IdLi3ELi3ELi0ELi3ELi3EEENS0_19gemm_blocking_spaceILi0EddLi3ELi3ELin1ELi1ELb0EEEEElEEvRKT0_T1_SH_SH_b.exit
  ret void

bb.f:                                             ; preds = %bb.d
  %i.ah = landingpad { ptr, i32 }
          cleanup
  %i.ai = load ptr, ptr %4, align 8, !tbaa !630
  call void @free(ptr noundef %i.ai) #27
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !631
  call void @free(ptr noundef %i.ak) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  resume { ptr, i32 } %i.ah
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEENS3_INS_7ProductINS4_IdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS8_EELi1EEEEENS0_9assign_opIddEEEELi4ELi0EE3runERSG_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !632, !nonnull !60, !align !221
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = lshr exact i64 %i.c, 3
  %i.e = and i64 %i.d, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  br label %bb.a

bb.a:                                             ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %._crit_edge
  %.03461 = phi i64 [ 0, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit ], [ %i.dm, %._crit_edge ] ; 7 uses
  %.03560 = phi i64 [ %i.e, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit ], [ %i.dl, %._crit_edge ] ; 5 uses
  %.not = icmp eq i64 %.03560, 0
  br i1 %.not, label %bb.c, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !634, !nonnull !60, !align !221
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !635
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !637, !nonnull !60, !align !221 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !638, !nonnull !60, !align !221 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !61, !noalias !639 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.idx.i.i.i = mul nuw nsw i64 %.03461, 24
  %invariant.gep = getelementptr i8, ptr %i.h, i64 %.idx.i.i.i
  %i.m = load ptr, ptr %i.l, align 8, !noalias !642 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !61, !noalias !642
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.03461 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !131, !noalias !642 ; 4 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEENS2_INS_7ProductINS3_IdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS7_EELi1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !9    ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.v = load i64, ptr %i.u, align 8, !tbaa !9    ; 3 uses
  %i.w = load double, ptr %i.k, align 8, !tbaa !43
  %i.x = load double, ptr %i.o, align 8, !tbaa !43
  %i.y = fmul double %i.w, %i.x                   ; 3 uses
  %i.z = icmp sgt i64 %i.q, 1
  br i1 %i.z, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEENS2_INS_7ProductINS3_IdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS7_EELi1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.b
  %i.aa = add nsw i64 %i.q, -1                    ; 3 uses
  %xtraiter = and i64 %i.aa, 1
  %i.ab = icmp eq i64 %i.q, 2
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %i.aa, -2
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %.01724.i.i.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.at, %.lr.ph.i.i.i.i.i.i ] ; 4 uses
  %.02223.i.i.i.i.i.i = phi double [ %i.y, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.as, %.lr.ph.i.i.i.i.i.i ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i.i.i ]
  %i.ac = mul nsw i64 %.01724.i.i.i.i.i.i, %i.t
  %i.ad = getelementptr [8 x i8], ptr %i.k, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !43
  %i.af = mul nsw i64 %.01724.i.i.i.i.i.i, %i.v
  %i.ag = getelementptr [8 x i8], ptr %i.o, i64 %i.af
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !43
  %i.ai = fmul double %i.ae, %i.ah
  %i.aj = fadd double %.02223.i.i.i.i.i.i, %i.ai
  %i.ak = add nuw nsw i64 %.01724.i.i.i.i.i.i, 1  ; 2 uses
  %i.al = mul nsw i64 %i.ak, %i.t
  %i.am = getelementptr [8 x i8], ptr %i.k, i64 %i.al
  %i.an = load double, ptr %i.am, align 8, !tbaa !43
  %i.ao = mul nsw i64 %i.ak, %i.v
  %i.ap = getelementptr [8 x i8], ptr %i.o, i64 %i.ao
  %i.aq = load double, ptr %i.ap, align 8, !tbaa !43
  %i.ar = fmul double %i.an, %i.aq
  %i.as = fadd double %i.aj, %i.ar                ; 3 uses
  %i.at = add nuw nsw i64 %.01724.i.i.i.i.i.i, 2  ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEENS2_INS_7ProductINS3_IdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS7_EELi1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !645

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEENS2_INS_7ProductINS3_IdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS7_EELi1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEENS2_INS_7ProductINS3_IdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS7_EELi1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEENS2_INS_7ProductINS3_IdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS7_EELi1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %.01724.i.i.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.at, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEENS2_INS_7ProductINS3_IdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS7_EELi1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.unr-lcssa ] ; 2 uses
  %.02223.i.i.i.i.i.i.epil.init = phi double [ %i.y, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.as, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEENS2_INS_7ProductINS3_IdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS7_EELi1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.unr-lcssa ]
  %lcmp.mod77 = trunc i64 %i.aa to i1
  tail call void @llvm.assume(i1 %lcmp.mod77)
  %i.au = mul nsw i64 %.01724.i.i.i.i.i.i.epil.init, %i.t
  %i.av = getelementptr [8 x i8], ptr %i.k, i64 %i.au
  %i.aw = load double, ptr %i.av, align 8, !tbaa !43
  %i.ax = mul nsw i64 %.01724.i.i.i.i.i.i.epil.init, %i.v
  %i.ay = getelementptr [8 x i8], ptr %i.o, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !43
  %i.ba = fmul double %i.aw, %i.az
  %i.bb = fadd double %.02223.i.i.i.i.i.i.epil.init, %i.ba
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEENS2_INS_7ProductINS3_IdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS7_EELi1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEENS2_INS_7ProductINS3_IdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS7_EELi1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit: ; preds = %.lr.ph.i.i.i.i.i.i.epil.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEENS2_INS_7ProductINS3_IdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS7_EELi1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.unr-lcssa, %.lr.ph, %bb.b
  %.0.i.i.i.i = phi double [ 0.000000e+00, %.lr.ph ], [ %i.y, %bb.b ], [ %i.as, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEENS2_INS_7ProductINS3_IdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS7_EELi1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.loopexit.unr-lcssa ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  store double %.0.i.i.i.i, ptr %invariant.gep, align 8, !tbaa !43
  br label %bb.c

.preheader.loopexit.unr-lcssa:                    ; preds = %bb.d
  %lcmp.mod79.not = icmp eq i64 %xtraiter78, 0
  br i1 %lcmp.mod79.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.loopexit.unr-lcssa, %.lr.ph.i.i.i.i
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i ], [ %i.da, %.preheader.loopexit.unr-lcssa ]
  %.013.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.db, %.preheader.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod81 = trunc i64 %i.bs to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %i.bc = mul nsw i64 %.013.i.i.i.i.epil.init, %i.ca
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.bc
  %i.be = load <2 x double>, ptr %i.bd, align 1, !tbaa !81
  %i.bf = mul nsw i64 %.013.i.i.i.i.epil.init, %i.cc
  %i.bg = getelementptr [8 x i8], ptr %i.cd, i64 %i.bf
  %i.bh = load double, ptr %i.bg, align 8, !tbaa !43
  %i.bi = insertelement <2 x double> poison, double %i.bh, i64 0
  %i.bj = shufflevector <2 x double> %i.bi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bk = fmul <2 x double> %i.be, %i.bj
  %i.bl = fadd <2 x double> %.epil.init, %i.bk
  br label %.preheader

.preheader:                                       ; preds = %.epil.preheader, %.preheader.loopexit.unr-lcssa, %bb.c
  %.0.i.i.i = phi <2 x double> [ zeroinitializer, %bb.c ], [ %i.da, %.preheader.loopexit.unr-lcssa ], [ %i.bl, %.epil.preheader ]
  %i.bm = getelementptr [8 x i8], ptr %i.bp, i64 %.03560
  %i.bn = getelementptr i8, ptr %i.bm, i64 %.idx.i.i.i37
  store <2 x double> %.0.i.i.i, ptr %i.bn, align 16, !tbaa !81
  %.not69.not = icmp eq i64 %.03560, 0
  br i1 %.not69.not, label %bb.e, label %._crit_edge

bb.c:                                             ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEENS2_INS_7ProductINS3_IdLin1ELin1ELi0ELin1ELin1EEENS_9TransposeIKS7_EELi1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit, %bb.a
  %.idx.i.i.i37 = mul nuw nsw i64 %.03461, 24
  %i.bo = load ptr, ptr %0, align 8, !tbaa !634, !nonnull !60, !align !221
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !635
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !637, !nonnull !60, !align !221 ; 5 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !527 ; 5 uses
  %i.bt = icmp sgt i64 %i.bs, 0
  br i1 %i.bt, label %.lr.ph.i.i.i.i, label %.preheader

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %i.by = load ptr, ptr %i.bv, align 8, !tbaa !646
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %.03560 ; 3 uses
  %i.ca = load i64, ptr %i.bw, align 8, !tbaa !526 ; 3 uses
  %i.cb = load ptr, ptr %i.bu, align 8, !tbaa !646
  %i.cc = load i64, ptr %i.bx, align 8, !tbaa !526 ; 3 uses
  %i.cd = getelementptr [8 x i8], ptr %i.cb, i64 %.03461 ; 3 uses
  %xtraiter78 = and i64 %i.bs, 1
  %i.ce = icmp eq i64 %i.bs, 1
  br i1 %i.ce, label %.epil.preheader, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter82 = and i64 %i.bs, 9223372036854775806
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i.new
  %i.cf = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i.new ], [ %i.da, %bb.d ]
  %.013.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %i.db, %bb.d ] ; 4 uses
  %niter83 = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter83.next.1, %bb.d ]
  %i.cg = mul nsw i64 %.013.i.i.i.i, %i.ca
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cg
  %i.ci = load <2 x double>, ptr %i.ch, align 1, !tbaa !81
  %i.cj = mul nsw i64 %.013.i.i.i.i, %i.cc
  %i.ck = getelementptr [8 x i8], ptr %i.cd, i64 %i.cj
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !43
  %i.cm = insertelement <2 x double> poison, double %i.cl, i64 0
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = fmul <2 x double> %i.ci, %i.cn
  %i.cp = fadd <2 x double> %i.cf, %i.co
  %i.cq = or disjoint i64 %.013.i.i.i.i, 1        ; 2 uses
  %i.cr = mul nsw i64 %i.cq, %i.ca
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.bz, i64 %i.cr
  %i.ct = load <2 x double>, ptr %i.cs, align 1, !tbaa !81
  %i.cu = mul nsw i64 %i.cq, %i.cc
  %i.cv = getelementptr [8 x i8], ptr %i.cd, i64 %i.cu
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !43
  %i.cx = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fmul <2 x double> %i.ct, %i.cy
  %i.da = fadd <2 x double> %i.cp, %i.cz          ; 3 uses
  %i.db = add nuw nsw i64 %.013.i.i.i.i, 2        ; 2 uses
  %niter83.next.1 = add nuw nsw i64 %niter83, 2   ; 2 uses
  %niter83.ncmp.1 = icmp eq i64 %niter83.next.1, %unroll_iter82
  br i1 %niter83.ncmp.1, label %.preheader.loopexit.unr-lcssa, label %bb.d, !llvm.loop !647

._crit_edge.loopexit.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i.i.i.i.i40
  %lcmp.mod85.not = icmp eq i64 %xtraiter84, 0
  br i1 %lcmp.mod85.not, label %._crit_edge.loopexit, label %.lr.ph.i.i.i.i.i.i40.epil.preheader

.lr.ph.i.i.i.i.i.i40.epil.preheader:              ; preds = %._crit_edge.loopexit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i40.preheader
  %.01724.i.i.i.i.i.i41.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i40.preheader ], [ %i.fb, %._crit_edge.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %.02223.i.i.i.i.i.i42.epil.init = phi double [ %i.eg, %.lr.ph.i.i.i.i.i.i40.preheader ], [ %i.fa, %._crit_edge.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod87 = trunc i64 %i.ei to i1
  tail call void @llvm.assume(i1 %lcmp.mod87)
  %i.dc = mul nsw i64 %.01724.i.i.i.i.i.i41.epil.init, %i.eb
  %i.dd = getelementptr [8 x i8], ptr %i.dt, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !43
  %i.df = mul nsw i64 %.01724.i.i.i.i.i.i41.epil.init, %i.ed
  %i.dg = getelementptr [8 x i8], ptr %i.dw, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !43
  %i.di = fmul double %i.de, %i.dh
  %i.dj = fadd double %.02223.i.i.i.i.i.i42.epil.init, %i.di
  br label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %.lr.ph.i.i.i.i.i.i40.epil.preheader, %._crit_edge.loopexit.loopexit.unr-lcssa, %bb.f, %bb.e
  %.0.i.i.i.i38 = phi double [ 0.000000e+00, %bb.e ], [ %i.eg, %bb.f ], [ %i.fa, %._crit_edge.loopexit.loopexit.unr-lcssa ], [ %i.dj, %.lr.ph.i.i.i.i.i.i40.epil.preheader ]
  %gep59 = getelementptr i8, ptr %invariant.gep58, i64 16
  store double %.0.i.i.i.i38, ptr %gep59, align 8, !tbaa !43
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.dk = and i64 %.03560, 1
  %i.dl = xor i64 %i.dk, 1
  %i.dm = add nuw nsw i64 %.03461, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.dm, 3
  br i1 %exitcond.not, label %bb.g, label %bb.a, !llvm.loop !648

bb.e:                                             ; preds = %.preheader
  %i.dn = load ptr, ptr %0, align 8, !tbaa !634, !nonnull !60, !align !221
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !635
  %i.dp = load ptr, ptr %i.f, align 8, !tbaa !637, !nonnull !60, !align !221 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !638, !nonnull !60, !align !221 ; 2 uses
  %.idx.i.i.i39 = mul nuw nsw i64 %.03461, 24
  %invariant.gep58 = getelementptr i8, ptr %i.do, i64 %.idx.i.i.i39
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  %i.ds = load ptr, ptr %i.dq, align 8, !tbaa !61, !noalias !649
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16 ; 4 uses
  %i.du = load ptr, ptr %i.dr, align 8, !noalias !652 ; 3 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !61, !noalias !652
  %i.dw = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %.03461 ; 4 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !131, !noalias !652 ; 4 uses
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %._crit_edge.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !9  ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !9  ; 3 uses
  %i.ee = load double, ptr %i.dt, align 8, !tbaa !43
  %i.ef = load double, ptr %i.dw, align 8, !tbaa !43
  %i.eg = fmul double %i.ee, %i.ef                ; 3 uses
  %i.eh = icmp sgt i64 %i.dy, 1
  br i1 %i.eh, label %.lr.ph.i.i.i.i.i.i40.preheader, label %._crit_edge.loopexit

.lr.ph.i.i.i.i.i.i40.preheader:                   ; preds = %bb.f
  %i.ei = add nsw i64 %i.dy, -1                   ; 3 uses
  %xtraiter84 = and i64 %i.ei, 1
  %i.ej = icmp eq i64 %i.dy, 2
  br i1 %i.ej, label %.lr.ph.i.i.i.i.i.i40.epil.preheader, label %.lr.ph.i.i.i.i.i.i40.preheader.new

.lr.ph.i.i.i.i.i.i40.preheader.new:               ; preds = %.lr.ph.i.i.i.i.i.i40.preheader
  %unroll_iter88 = and i64 %i.ei, -2
  br label %.lr.ph.i.i.i.i.i.i40

.lr.ph.i.i.i.i.i.i40:                             ; preds = %.lr.ph.i.i.i.i.i.i40, %.lr.ph.i.i.i.i.i.i40.preheader.new
  %.01724.i.i.i.i.i.i41 = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i40.preheader.new ], [ %i.fb, %.lr.ph.i.i.i.i.i.i40 ] ; 4 uses
  %.02223.i.i.i.i.i.i42 = phi double [ %i.eg, %.lr.ph.i.i.i.i.i.i40.preheader.new ], [ %i.fa, %.lr.ph.i.i.i.i.i.i40 ]
  %niter89 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i40.preheader.new ], [ %niter89.next.1, %.lr.ph.i.i.i.i.i.i40 ]
  %i.ek = mul nsw i64 %.01724.i.i.i.i.i.i41, %i.eb
  %i.el = getelementptr [8 x i8], ptr %i.dt, i64 %i.ek
  %i.em = load double, ptr %i.el, align 8, !tbaa !43
  %i.en = mul nsw i64 %.01724.i.i.i.i.i.i41, %i.ed
  %i.eo = getelementptr [8 x i8], ptr %i.dw, i64 %i.en
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !43
  %i.eq = fmul double %i.em, %i.ep
  %i.er = fadd double %.02223.i.i.i.i.i.i42, %i.eq
  %i.es = add nuw nsw i64 %.01724.i.i.i.i.i.i41, 1 ; 2 uses
  %i.et = mul nsw i64 %i.es, %i.eb
  %i.eu = getelementptr [8 x i8], ptr %i.dt, i64 %i.et
  %i.ev = load double, ptr %i.eu, align 8, !tbaa !43
  %i.ew = mul nsw i64 %i.es, %i.ed
  %i.ex = getelementptr [8 x i8], ptr %i.dw, i64 %i.ew
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !43
  %i.ez = fmul double %i.ev, %i.ey
  %i.fa = fadd double %i.er, %i.ez                ; 3 uses
  %i.fb = add nuw nsw i64 %.01724.i.i.i.i.i.i41, 2 ; 2 uses
  %niter89.next.1 = add nuw i64 %niter89, 2       ; 2 uses
  %niter89.ncmp.1 = icmp eq i64 %niter89.next.1, %unroll_iter88
  br i1 %niter89.ncmp.1, label %._crit_edge.loopexit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i40, !llvm.loop !645

bb.g:                                             ; preds = %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit, !prof !655

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #27
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN5Eigen8internal10CacheSizesC2Ev(ptr noundef nonnull align 8 dereferenceable(24) @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #27
  br label %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes) #27
  resume { ptr, i32 } %i.d

_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.e = load i64, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, align 8, !tbaa !656 ; 4 uses
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 8), align 8, !tbaa !658 ; 4 uses
  %i.g = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_E12m_cacheSizes, i64 16), align 8, !tbaa !659 ; 3 uses
  %i.h = icmp sgt i64 %3, 1
  br i1 %i.h, label %bb.f, label %bb.o

bb.f:                                             ; preds = %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit
  %i.i = add nsw i64 %i.e, -128
  %i.j = sdiv i64 %i.i, 64
  %i.k = tail call i64 @llvm.smax.i64(i64 %i.j, i64 8)
  %i.l = tail call i64 @llvm.umin.i64(i64 %i.k, i64 320) ; 2 uses
  %i.m = load i64, ptr %0, align 8, !tbaa !150    ; 2 uses
  %i.n = icmp slt i64 %i.l, %i.m
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = and i64 %i.l, 504                        ; 2 uses
  store i64 %i.o, ptr %0, align 8, !tbaa !150
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.p = phi i64 [ %i.o, %bb.g ], [ %i.m, %bb.f ]
  %i.q = sub nsw i64 %i.f, %i.e
  %i.r = shl i64 %i.p, 5
  %i.s = udiv i64 %i.q, %i.r                      ; 2 uses
  %i.t = load i64, ptr %2, align 8, !tbaa !150    ; 2 uses
  %i.u = add nsw i64 %3, -1                       ; 2 uses
  %i.v = add i64 %i.u, %i.t
  %i.w = sdiv i64 %i.v, %3                        ; 2 uses
  %.not114 = icmp sgt i64 %i.s, %i.w
  br i1 %.not114, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = and i64 %i.s, 576460752303423484
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.y = add nsw i64 %i.w, 3                      ; 2 uses
  %i.z = srem i64 %i.y, 4
  %i.aa = sub nsw i64 %i.y, %i.z
  %.sroa.speculated153 = tail call i64 @llvm.smin.i64(i64 %i.aa, i64 %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %storemerge184 = phi i64 [ %i.x, %bb.i ], [ %.sroa.speculated153, %bb.j ]
  store i64 %storemerge184, ptr %2, align 8, !tbaa !150
  %i.ab = icmp sgt i64 %i.g, %i.f
  br i1 %i.ab, label %bb.l, label %.critedge116

bb.l:                                             ; preds = %bb.k
  %i.ac = sub nsw i64 %i.g, %i.f
  %i.ad = load i64, ptr %0, align 8, !tbaa !150
  %i.ae = shl i64 %3, 3
  %i.af = mul i64 %i.ae, %i.ad
  %i.ag = udiv i64 %i.ac, %i.af                   ; 3 uses
  %i.ah = load i64, ptr %1, align 8, !tbaa !150   ; 2 uses
  %i.ai = add i64 %i.u, %i.ah
  %i.aj = sdiv i64 %i.ai, %3                      ; 2 uses
  %i.ak = icmp slt i64 %i.ag, %i.aj
  %i.al = icmp samesign ugt i64 %i.ag, 3
  %or.cond = select i1 %i.ak, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.am = and i64 %i.ag, 2305843009213693948
  store i64 %i.am, ptr %1, align 8, !tbaa !150
  br label %.critedge116

bb.n:                                             ; preds = %bb.l
  %i.an = add nsw i64 %i.aj, 3                    ; 2 uses
  %i.ao = srem i64 %i.an, 4
  %i.ap = sub nsw i64 %i.an, %i.ao
  %.sroa.speculated149 = tail call i64 @llvm.smin.i64(i64 %i.ap, i64 %i.ah)
  store i64 %.sroa.speculated149, ptr %1, align 8, !tbaa !150
  br label %.critedge116

bb.o:                                             ; preds = %_ZN5Eigen8internal20manage_caching_sizesENS_6ActionEPlS2_S2_.exit
  %i.aq = load i64, ptr %1, align 8, !tbaa !150   ; 2 uses
  %i.ar = load i64, ptr %2, align 8, !tbaa !150
  %i.as = tail call i64 @llvm.smax.i64(i64 %i.aq, i64 %i.ar)
  %i.at = load i64, ptr %0, align 8, !tbaa !150   ; 8 uses
  %.sroa.speculated145 = tail call i64 @llvm.smax.i64(i64 %i.at, i64 %i.as)
  %i.au = icmp slt i64 %.sroa.speculated145, 48
  br i1 %i.au, label %.critedge116, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.av = add nsw i64 %i.e, -128                  ; 2 uses
  %i.aw = sdiv i64 %i.av, 64
  %i.ax = and i64 %i.aw, -8
  %.sroa.speculated140 = tail call i64 @llvm.smax.i64(i64 %i.ax, i64 1) ; 7 uses
  %i.ay = icmp sgt i64 %i.at, %.sroa.speculated140
  br i1 %i.ay, label %bb.q, label %bb.t

bb.q:                                             ; preds = %bb.p
  %i.az = urem i64 %i.at, %.sroa.speculated140    ; 2 uses
  %i.ba = udiv i64 %i.at, %.sroa.speculated140
  %i.bb = icmp eq i64 %i.az, 0
  br i1 %i.bb, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = xor i64 %i.az, -1
  %i.bd = add nsw i64 %.sroa.speculated140, %i.bc
  %i.be = shl i64 %i.ba, 3
  %i.bf = add i64 %i.be, 8
  %i.bg = sdiv i64 %i.bd, %i.bf
  %i.bh = shl nsw i64 %i.bg, 3
  %i.bi = sub nsw i64 %.sroa.speculated140, %i.bh
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.r
  %i.bj = phi i64 [ %i.bi, %bb.r ], [ %.sroa.speculated140, %bb.q ] ; 2 uses
  store i64 %i.bj, ptr %0, align 8, !tbaa !150
  %.pre = load i64, ptr %1, align 8, !tbaa !150
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.p
  %i.bk = phi i64 [ %i.bj, %bb.s ], [ %i.at, %bb.p ] ; 5 uses
  %i.bl = phi i64 [ %.pre, %bb.s ], [ %i.aq, %bb.p ] ; 6 uses
  %i.bm = shl i64 %i.bl, 3
  %i.bn = mul i64 %i.bm, %i.bk
  %i.bo = sub nsw i64 %i.av, %i.bn                ; 2 uses
  %i.bp = shl nsw i64 %i.bk, 5
  %.not = icmp slt i64 %i.bo, %i.bp
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bq = shl i64 %i.bk, 3
  %i.br = udiv i64 %i.bo, %i.bq
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.bs = shl i64 %.sroa.speculated140, 5
  %i.bt = udiv i64 4718592, %i.bs
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %storemerge = phi i64 [ %i.bt, %bb.v ], [ %i.br, %bb.u ]
  %i.bu = shl i64 %i.bk, 4
  %i.bv = udiv i64 1572864, %i.bu
  %.sroa.speculated135 = tail call i64 @llvm.smin.i64(i64 %storemerge, i64 %i.bv)
  %i.bw = and i64 %.sroa.speculated135, -4        ; 6 uses
  %i.bx = load i64, ptr %2, align 8, !tbaa !150   ; 4 uses
  %i.by = icmp sgt i64 %i.bx, %i.bw
  br i1 %i.by, label %bb.x, label %bb.aa

bb.x:                                             ; preds = %bb.w
  %i.bz = srem i64 %i.bx, %i.bw                   ; 2 uses
  %i.ca = sdiv i64 %i.bx, %i.bw
  %i.cb = icmp eq i64 %i.bz, 0
  br i1 %i.cb, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cc = sub nsw i64 %i.bw, %i.bz
  %i.cd = shl i64 %i.ca, 2
  %i.ce = add i64 %i.cd, 4
  %i.cf = sdiv i64 %i.cc, %i.ce
  %i.cg = shl nsw i64 %i.cf, 2
  %i.ch = sub nsw i64 %i.bw, %i.cg
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.ci = phi i64 [ %i.ch, %bb.y ], [ %i.bw, %bb.x ]
  store i64 %i.ci, ptr %2, align 8, !tbaa !150
  br label %.critedge116

bb.aa:                                            ; preds = %bb.w
end_hunk_1
begin_hunk_2_@_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21computeFromHessenbergINS_8internal40HessenbergDecompositionMatrixHReturnTypeIS2_EES2_EERS3_RKT_RKT0_b:bb.a
  store <2 x double> %i.i, ptr %i.g, align 16, !tbaa !81
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load <2 x double>, ptr %i.k, align 16, !tbaa !81 ; 2 uses
  store <2 x double> %i.l, ptr %i.j, align 16, !tbaa !81
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.o = load double, ptr %i.n, align 16, !tbaa !43 ; 2 uses
  store double %i.o, ptr %i.m, align 16, !tbaa !43
  store double 0.000000e+00, ptr %i.d, align 16, !tbaa !43
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 144
  br i1 %3, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = icmp eq ptr %i.q, %2
  br i1 %i.r, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load <2 x double>, ptr %2, align 8, !tbaa !81
  store <2 x double> %i.s, ptr %i.q, align 8, !tbaa !81
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.v = load <2 x double>, ptr %i.u, align 8, !tbaa !81
  store <2 x double> %i.v, ptr %i.t, align 8, !tbaa !81
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.y = load <2 x double>, ptr %i.x, align 8, !tbaa !81
  store <2 x double> %i.y, ptr %i.w, align 8, !tbaa !81
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.ab = load <2 x double>, ptr %i.aa, align 8, !tbaa !81
  store <2 x double> %i.ab, ptr %i.z, align 8, !tbaa !81
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !43
  store double %i.ae, ptr %i.ac, align 8, !tbaa !43
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !564 ; 2 uses
  %i.ah = icmp eq i64 %i.ag, -1
  %spec.select67 = select i1 %i.ah, i64 120, i64 %i.ag ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store double 0.000000e+00, ptr %i.a, align 8, !tbaa !43
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load <2 x double>, ptr %i.ai, align 8, !tbaa !81
  %i.ak = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.l) ; 2 uses
  %i.al = insertelement <2 x double> %i.i, double %i.o, i64 0
  %i.am = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.al)
  %i.an = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.c) ; 2 uses
  %shift = shufflevector <2 x double> %i.an, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.an, %shift
  %i.ao = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aj) ; 2 uses
  %i.ap = shufflevector <2 x double> %i.ak, <2 x double> %i.ao, <2 x i32> <i32 0, i32 2>
  %i.aq = shufflevector <2 x double> %i.ak, <2 x double> %i.ao, <2 x i32> <i32 1, i32 3>
  %i.ar = fadd <2 x double> %i.ap, %i.aq
  %i.as = fadd <2 x double> %i.ar, %i.am          ; 2 uses
  %shift87 = shufflevector <2 x double> %i.as, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop88 = fadd <2 x double> %foldExtExtBinop, %shift87
  %foldExtExtBinop90 = fadd <2 x double> %i.as, %foldExtExtBinop88
  %i.at = extractelement <2 x double> %foldExtExtBinop90, i64 0 ; 2 uses
  %i.au = fmul double %i.at, f0x3970000000000000  ; 2 uses
  %i.av = fcmp olt double %i.au, f0x0010000000000000
  %.sroa.speculated = select i1 %i.av, double f0x0010000000000000, double %i.au ; 2 uses
  %i.aw = fcmp une double %i.at, 0.000000e+00
  br i1 %i.aw, label %.preheader, label %.loopexit

.preheader:                                       ; preds = %bb.d
  %.07.i.i.i.i.ptr.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.07.i.i.i.i.ptr.2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.e

bb.e:                                             ; preds = %.preheader, %bb.s
  %.049 = phi i64 [ %.251, %bb.s ], [ 2, %.preheader ] ; 21 uses
  %.046 = phi i64 [ %.248, %bb.s ], [ 0, %.preheader ] ; 2 uses
  %.044 = phi i64 [ %.2, %bb.s ], [ 0, %.preheader ] ; 4 uses
  %i.ax = icmp sgt i64 %.049, 0
  br i1 %i.ax, label %.lr.ph, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21findSmallSubdiagEntryElRKd.exit

bb.f:                                             ; preds = %.lr.ph
  %i.ay = icmp sgt i64 %.014.i83, 1
  br i1 %i.ay, label %.lr.ph, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21findSmallSubdiagEntryElRKd.exit

.lr.ph:                                           ; preds = %bb.e, %bb.f
  %.014.i83 = phi i64 [ %i.az, %bb.f ], [ %.049, %bb.e ] ; 5 uses
  %i.az = add nsw i64 %.014.i83, -1               ; 3 uses
  %i.ba = getelementptr [8 x i8], ptr %0, i64 %i.az
  %.idx.i.i = mul i64 %i.az, 24                   ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ba, i64 %.idx.i.i
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !43
  %i.bd = call noundef double @llvm.fabs.f64(double %i.bc)
  %i.be = getelementptr [8 x i8], ptr %0, i64 %.014.i83 ; 2 uses
  %.idx.i15.i = mul i64 %.014.i83, 24
  %i.bf = getelementptr i8, ptr %i.be, i64 %.idx.i15.i
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !43
  %i.bh = call noundef double @llvm.fabs.f64(double %i.bg)
  %i.bi = fadd double %i.bd, %i.bh
  %i.bj = fmul double %i.bi, f0x3CB0000000000000  ; 2 uses
  %i.bk = fcmp olt double %i.bj, %.sroa.speculated
  %.sroa.speculated.i = select i1 %i.bk, double %.sroa.speculated, double %i.bj
  %i.bl = getelementptr i8, ptr %i.be, i64 %.idx.i.i
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !43
  %i.bn = call noundef double @llvm.fabs.f64(double %i.bm)
  %i.bo = fcmp ugt double %i.bn, %.sroa.speculated.i
  br i1 %i.bo, label %bb.f, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21findSmallSubdiagEntryElRKd.exit

_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21findSmallSubdiagEntryElRKd.exit: ; preds = %.lr.ph, %bb.f, %bb.e
  %.014.lcssa.i = phi i64 [ 0, %bb.e ], [ %.014.i83, %.lr.ph ], [ 0, %bb.f ] ; 6 uses
  %i.bp = icmp eq i64 %.014.lcssa.i, %.049
  br i1 %i.bp, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21findSmallSubdiagEntryElRKd.exit
  %i.bq = getelementptr [8 x i8], ptr %0, i64 %.049
  %.idx.i = mul i64 %.049, 24
  %i.br = getelementptr i8, ptr %i.bq, i64 %.idx.i ; 3 uses
  %i.bs = load double, ptr %i.br, align 8, !tbaa !43
  %i.bt = load double, ptr %i.a, align 8, !tbaa !43
  %i.bu = fadd double %i.bs, %i.bt
  store double %i.bu, ptr %i.br, align 8, !tbaa !43
  %.not80 = icmp eq i64 %.049, 0
  br i1 %.not80, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bv = getelementptr i8, ptr %i.br, i64 -24
  store double 0.000000e+00, ptr %i.bv, align 8, !tbaa !43
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bw = add nsw i64 %.049, -1
  br label %bb.s

bb.j:                                             ; preds = %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE21findSmallSubdiagEntryElRKd.exit
  %i.bx = add nsw i64 %.049, -1                   ; 3 uses
  %i.by = icmp eq i64 %.014.lcssa.i, %i.bx
  br i1 %i.by, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15splitOffTwoRowsElbRKd(ptr noundef nonnull align 16 dereferenceable(320) %0, i64 noundef %.049, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %i.bz = add nsw i64 %.049, -2
  br label %bb.s

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ca = getelementptr [8 x i8], ptr %0, i64 %.049 ; 2 uses
  %.idx.i.i60 = mul i64 %.049, 24                 ; 2 uses
  %i.cb = getelementptr i8, ptr %i.ca, i64 %.idx.i.i60
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !43 ; 11 uses
  %i.cd = getelementptr [8 x i8], ptr %0, i64 %i.bx ; 2 uses
  %.idx.i62.i = mul i64 %i.bx, 24                 ; 2 uses
  %i.ce = getelementptr i8, ptr %i.cd, i64 %.idx.i62.i
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !43 ; 4 uses
  %i.cg = getelementptr i8, ptr %i.ca, i64 %.idx.i62.i
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !43 ; 2 uses
  %i.ci = getelementptr i8, ptr %i.cd, i64 %.idx.i.i60 ; 2 uses
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !43
  %i.ck = fmul double %i.ch, %i.cj                ; 4 uses
  switch i64 %.046, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit [
    i64 10, label %bb.m
    i64 30, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.cl = load double, ptr %i.a, align 8, !tbaa !43
  %i.cm = fadd double %i.cc, %i.cl
  store double %i.cm, ptr %i.a, align 8, !tbaa !43
  %.not69.i = icmp slt i64 %.049, 0
  br i1 %.not69.i, label %._crit_edge.i, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.m
  %i.cn = add nuw i64 %.049, 1                    ; 2 uses
  %xtraiter95 = and i64 %i.cn, 3                  ; 3 uses
  %i.co = icmp ult i64 %.049, 3
  br i1 %i.co, label %.lr.ph.i.epil.preheader, label %.lr.ph.i.preheader.new

.lr.ph.i.preheader.new:                           ; preds = %.lr.ph.i.preheader
  %unroll_iter99 = and i64 %i.cn, -4
  br label %.lr.ph.i

._crit_edge.i.loopexit.unr-lcssa:                 ; preds = %.lr.ph.i
  %lcmp.mod97.not = icmp eq i64 %xtraiter95, 0
  br i1 %lcmp.mod97.not, label %._crit_edge.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.preheader
  %.05870.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.dv, %._crit_edge.i.loopexit.unr-lcssa ]
  %lcmp.mod98 = icmp ne i64 %xtraiter95, 0
  call void @llvm.assume(i1 %lcmp.mod98)
  br label %.lr.ph.i.epil

.lr.ph.i.epil:                                    ; preds = %.lr.ph.i.epil, %.lr.ph.i.epil.preheader
  %.05870.i.epil = phi i64 [ %i.ct, %.lr.ph.i.epil ], [ %.05870.i.epil.init, %.lr.ph.i.epil.preheader ] ; 3 uses
  %epil.iter96 = phi i64 [ %epil.iter96.next, %.lr.ph.i.epil ], [ 0, %.lr.ph.i.epil.preheader ]
  %i.cp = getelementptr [8 x i8], ptr %0, i64 %.05870.i.epil
  %.idx.i67.i.epil = mul i64 %.05870.i.epil, 24
  %i.cq = getelementptr i8, ptr %i.cp, i64 %.idx.i67.i.epil ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !43
  %i.cs = fsub double %i.cr, %i.cc
  store double %i.cs, ptr %i.cq, align 8, !tbaa !43
  %i.ct = add nuw i64 %.05870.i.epil, 1
  %epil.iter96.next = add i64 %epil.iter96, 1     ; 2 uses
  %epil.iter96.cmp.not = icmp eq i64 %epil.iter96.next, %xtraiter95
  br i1 %epil.iter96.cmp.not, label %._crit_edge.i, label %.lr.ph.i.epil, !llvm.loop !902

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit.unr-lcssa, %.lr.ph.i.epil, %bb.m
  %i.cu = call noundef double @llvm.fabs.f64(double %i.ch)
  %i.cv = getelementptr i8, ptr %i.ci, i64 -48
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !43
  %i.cx = call noundef double @llvm.fabs.f64(double %i.cw)
  %i.cy = fadd double %i.cu, %i.cx                ; 3 uses
  %i.cz = fmul double %i.cy, 7.500000e-01         ; 2 uses
  %i.da = fmul double %i.cy, -4.375000e-01
  %i.db = fmul double %i.cy, %i.da
  br label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.i.preheader.new
  %.05870.i = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %i.dv, %.lr.ph.i ] ; 6 uses
  %niter100 = phi i64 [ 0, %.lr.ph.i.preheader.new ], [ %niter100.next.3, %.lr.ph.i ]
  %i.dc = getelementptr [8 x i8], ptr %0, i64 %.05870.i
  %.idx.i67.i = mul i64 %.05870.i, 24
  %i.dd = getelementptr i8, ptr %i.dc, i64 %.idx.i67.i ; 2 uses
  %i.de = load double, ptr %i.dd, align 16, !tbaa !43
  %i.df = fsub double %i.de, %i.cc
  store double %i.df, ptr %i.dd, align 16, !tbaa !43
  %i.dg = or disjoint i64 %.05870.i, 1            ; 2 uses
  %i.dh = getelementptr [8 x i8], ptr %0, i64 %i.dg
  %.idx.i67.i.1 = mul i64 %i.dg, 24
  %i.di = getelementptr i8, ptr %i.dh, i64 %.idx.i67.i.1 ; 2 uses
  %i.dj = load double, ptr %i.di, align 16, !tbaa !43
  %i.dk = fsub double %i.dj, %i.cc
  store double %i.dk, ptr %i.di, align 16, !tbaa !43
  %i.dl = or disjoint i64 %.05870.i, 2            ; 2 uses
  %i.dm = getelementptr [8 x i8], ptr %0, i64 %i.dl
  %.idx.i67.i.2 = mul i64 %i.dl, 24
  %i.dn = getelementptr i8, ptr %i.dm, i64 %.idx.i67.i.2 ; 2 uses
  %i.do = load double, ptr %i.dn, align 16, !tbaa !43
  %i.dp = fsub double %i.do, %i.cc
  store double %i.dp, ptr %i.dn, align 16, !tbaa !43
  %i.dq = or disjoint i64 %.05870.i, 3            ; 2 uses
  %i.dr = getelementptr [8 x i8], ptr %0, i64 %i.dq
  %.idx.i67.i.3 = mul i64 %i.dq, 24
  %i.ds = getelementptr i8, ptr %i.dr, i64 %.idx.i67.i.3 ; 2 uses
  %i.dt = load double, ptr %i.ds, align 16, !tbaa !43
  %i.du = fsub double %i.dt, %i.cc
  store double %i.du, ptr %i.ds, align 16, !tbaa !43
  %i.dv = add nuw i64 %.05870.i, 4                ; 2 uses
  %niter100.next.3 = add i64 %niter100, 4         ; 2 uses
  %niter100.ncmp.3 = icmp eq i64 %niter100.next.3, %unroll_iter99
  br i1 %niter100.ncmp.3, label %._crit_edge.i.loopexit.unr-lcssa, label %.lr.ph.i, !llvm.loop !903

bb.n:                                             ; preds = %bb.l
  %i.dw = fsub double %i.cf, %i.cc
  %i.dx = fmul double %i.dw, 5.000000e-01         ; 3 uses
  %i.dy = call double @llvm.fmuladd.f64(double %i.dx, double %i.dx, double %i.ck) ; 2 uses
  %i.dz = fcmp ogt double %i.dy, 0.000000e+00
  br i1 %i.dz, label %bb.o, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit

bb.o:                                             ; preds = %bb.n
  %i.ea = call double @sqrt(double noundef %i.dy) #27 ; 2 uses
  %i.eb = fcmp olt double %i.cf, %i.cc
  %i.ec = fneg double %i.ea
  %.057.i = select i1 %i.eb, double %i.ec, double %i.ea
  %i.ed = fadd double %i.dx, %.057.i
  %i.ee = fdiv double %i.ck, %i.ed
  %i.ef = fsub double %i.cc, %i.ee                ; 6 uses
  %i.eg = load double, ptr %i.a, align 8, !tbaa !43
  %i.eh = fadd double %i.eg, %i.ef
  store double %i.eh, ptr %i.a, align 8, !tbaa !43
  %.not6171.i = icmp slt i64 %.049, 0
  br i1 %.not6171.i, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit, label %.lr.ph74.i.preheader

.lr.ph74.i.preheader:                             ; preds = %bb.o
  %i.ei = add nuw i64 %.049, 1                    ; 2 uses
  %xtraiter = and i64 %i.ei, 3                    ; 3 uses
  %i.ej = icmp ult i64 %.049, 3
  br i1 %i.ej, label %.lr.ph74.i.epil.preheader, label %.lr.ph74.i.preheader.new

.lr.ph74.i.preheader.new:                         ; preds = %.lr.ph74.i.preheader
  %unroll_iter = and i64 %i.ei, -4
  br label %.lr.ph74.i

.lr.ph74.i:                                       ; preds = %.lr.ph74.i, %.lr.ph74.i.preheader.new
  %.072.i = phi i64 [ 0, %.lr.ph74.i.preheader.new ], [ %i.fd, %.lr.ph74.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph74.i.preheader.new ], [ %niter.next.3, %.lr.ph74.i ]
  %i.ek = getelementptr [8 x i8], ptr %0, i64 %.072.i
  %.idx.i68.i = mul i64 %.072.i, 24
  %i.el = getelementptr i8, ptr %i.ek, i64 %.idx.i68.i ; 2 uses
  %i.em = load double, ptr %i.el, align 16, !tbaa !43
  %i.en = fsub double %i.em, %i.ef
  store double %i.en, ptr %i.el, align 16, !tbaa !43
  %i.eo = or disjoint i64 %.072.i, 1              ; 2 uses
  %i.ep = getelementptr [8 x i8], ptr %0, i64 %i.eo
  %.idx.i68.i.1 = mul i64 %i.eo, 24
  %i.eq = getelementptr i8, ptr %i.ep, i64 %.idx.i68.i.1 ; 2 uses
  %i.er = load double, ptr %i.eq, align 16, !tbaa !43
  %i.es = fsub double %i.er, %i.ef
  store double %i.es, ptr %i.eq, align 16, !tbaa !43
  %i.et = or disjoint i64 %.072.i, 2              ; 2 uses
  %i.eu = getelementptr [8 x i8], ptr %0, i64 %i.et
  %.idx.i68.i.2 = mul i64 %i.et, 24
  %i.ev = getelementptr i8, ptr %i.eu, i64 %.idx.i68.i.2 ; 2 uses
  %i.ew = load double, ptr %i.ev, align 16, !tbaa !43
  %i.ex = fsub double %i.ew, %i.ef
  store double %i.ex, ptr %i.ev, align 16, !tbaa !43
  %i.ey = or disjoint i64 %.072.i, 3              ; 2 uses
  %i.ez = getelementptr [8 x i8], ptr %0, i64 %i.ey
  %.idx.i68.i.3 = mul i64 %i.ey, 24
  %i.fa = getelementptr i8, ptr %i.ez, i64 %.idx.i68.i.3 ; 2 uses
  %i.fb = load double, ptr %i.fa, align 16, !tbaa !43
  %i.fc = fsub double %i.fb, %i.ef
  store double %i.fc, ptr %i.fa, align 16, !tbaa !43
  %i.fd = add nuw i64 %.072.i, 4                  ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit.loopexit.unr-lcssa, label %.lr.ph74.i, !llvm.loop !904

_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph74.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit, label %.lr.ph74.i.epil.preheader

.lr.ph74.i.epil.preheader:                        ; preds = %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit.loopexit.unr-lcssa, %.lr.ph74.i.preheader
  %.072.i.epil.init = phi i64 [ 0, %.lr.ph74.i.preheader ], [ %i.fd, %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit.loopexit.unr-lcssa ]
  %lcmp.mod94 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod94)
  br label %.lr.ph74.i.epil

.lr.ph74.i.epil:                                  ; preds = %.lr.ph74.i.epil, %.lr.ph74.i.epil.preheader
  %.072.i.epil = phi i64 [ %i.fi, %.lr.ph74.i.epil ], [ %.072.i.epil.init, %.lr.ph74.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph74.i.epil ], [ 0, %.lr.ph74.i.epil.preheader ]
  %i.fe = getelementptr [8 x i8], ptr %0, i64 %.072.i.epil
  %.idx.i68.i.epil = mul i64 %.072.i.epil, 24
  %i.ff = getelementptr i8, ptr %i.fe, i64 %.idx.i68.i.epil ; 2 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !43
  %i.fh = fsub double %i.fg, %i.ef
  store double %i.fh, ptr %i.ff, align 8, !tbaa !43
  %i.fi = add nuw i64 %.072.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit, label %.lr.ph74.i.epil, !llvm.loop !905

_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit: ; preds = %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit.loopexit.unr-lcssa, %.lr.ph74.i.epil, %._crit_edge.i, %bb.o, %bb.l, %bb.n
  %.sroa.11.0 = phi double [ %i.ck, %bb.l ], [ %i.ck, %bb.n ], [ %i.db, %._crit_edge.i ], [ f0x3FEED916872B020C, %bb.o ], [ f0x3FEED916872B020C, %.lr.ph74.i.epil ], [ f0x3FEED916872B020C, %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit.loopexit.unr-lcssa ]
  %.sroa.7.1 = phi double [ %i.cf, %bb.l ], [ %i.cf, %bb.n ], [ %i.cz, %._crit_edge.i ], [ f0x3FEED916872B020C, %bb.o ], [ f0x3FEED916872B020C, %.lr.ph74.i.epil ], [ f0x3FEED916872B020C, %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit.loopexit.unr-lcssa ]
  %.sroa.0.1 = phi double [ %i.cc, %bb.l ], [ %i.cc, %bb.n ], [ %i.cz, %._crit_edge.i ], [ f0x3FEED916872B020C, %bb.o ], [ f0x3FEED916872B020C, %.lr.ph74.i.epil ], [ f0x3FEED916872B020C, %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit.loopexit.unr-lcssa ]
  %i.fj = add nsw i64 %.046, 1
  %i.fk = add nsw i64 %.044, 1
  %.not = icmp slt i64 %.044, %spec.select67      ; 2 uses
  br i1 %.not, label %bb.p, label %bb.r

bb.p:                                             ; preds = %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit
  %i.fl = add nsw i64 %.049, -2                   ; 3 uses
  %.not55.i = icmp slt i64 %i.fl, %.014.lcssa.i
  br i1 %.not55.i, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE17initFrancisQRStepEllRKNS1_IdLi3ELi1ELi0ELi3ELi1EEERlRS4_.exit, label %.lr.ph.i61.preheader

.lr.ph.i61.preheader:                             ; preds = %bb.p
  %i.fm = fneg double %.sroa.11.0
  br label %.lr.ph.i61

.lr.ph.i61:                                       ; preds = %.lr.ph.i61.preheader, %bb.q
  %storemerge56.i = phi i64 [ %i.gk, %bb.q ], [ %i.fl, %.lr.ph.i61.preheader ] ; 6 uses
  %i.fn = getelementptr [8 x i8], ptr %0, i64 %storemerge56.i ; 4 uses
  %.idx.i.i62 = mul i64 %storemerge56.i, 24       ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 %.idx.i.i62
  %i.fp = load double, ptr %i.fo, align 8, !tbaa !43 ; 4 uses
  %i.fq = fsub double %.sroa.0.1, %i.fp           ; 2 uses
  %i.fr = fsub double %.sroa.7.1, %i.fp           ; 2 uses
  %i.fs = call double @llvm.fmuladd.f64(double %i.fq, double %i.fr, double %i.fm)
  %i.ft = add nsw i64 %storemerge56.i, 1          ; 2 uses
  %i.fu = getelementptr [8 x i8], ptr %0, i64 %i.ft ; 2 uses
  %i.fv = getelementptr i8, ptr %i.fu, i64 %.idx.i.i62
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !43
  %i.fx = fdiv double %i.fs, %i.fw
  %.idx.i48.i = mul i64 %i.ft, 24                 ; 3 uses
  %i.fy = getelementptr i8, ptr %i.fn, i64 %.idx.i48.i
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !43
  %i.ga = fadd double %i.fz, %i.fx                ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fu, i64 %.idx.i48.i
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !43 ; 2 uses
  %i.gd = fsub double %i.gc, %i.fp
  %i.ge = fsub double %i.gd, %i.fq
  %i.gf = fsub double %i.ge, %i.fr                ; 2 uses
  %i.gg = getelementptr i8, ptr %i.fn, i64 16
  %i.gh = getelementptr i8, ptr %i.gg, i64 %.idx.i48.i
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !43 ; 2 uses
  %i.gj = icmp eq i64 %storemerge56.i, %.014.lcssa.i
  br i1 %i.gj, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE17initFrancisQRStepEllRKNS1_IdLi3ELi1ELi0ELi3ELi1EEERlRS4_.exit.loopexit, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i61
  %i.gk = add nsw i64 %storemerge56.i, -1         ; 3 uses
  %.idx.i51.i = mul i64 %i.gk, 24                 ; 2 uses
  %i.gl = getelementptr i8, ptr %i.fn, i64 %.idx.i51.i
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !43
  %i.gn = call noundef double @llvm.fabs.f64(double %i.gf)
  %i.go = call noundef double @llvm.fabs.f64(double %i.gi)
  %i.gp = fadd double %i.go, %i.gn
  %i.gq = fmul double %i.gp, %i.gm
  %i.gr = getelementptr [8 x i8], ptr %0, i64 %i.gk
  %i.gs = getelementptr i8, ptr %i.gr, i64 %.idx.i51.i
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !43
  %i.gu = call noundef double @llvm.fabs.f64(double %i.gt)
  %i.gv = call noundef double @llvm.fabs.f64(double %i.fp)
  %i.gw = fadd double %i.gv, %i.gu
  %i.gx = call noundef double @llvm.fabs.f64(double %i.gc)
  %i.gy = fadd double %i.gx, %i.gw
  %i.gz = fmul double %i.ga, %i.gy
  %i.ha = call noundef double @llvm.fabs.f64(double %i.gq)
  %i.hb = fmul double %i.gz, f0x3CB0000000000000
  %i.hc = fcmp olt double %i.ha, %i.hb
  br i1 %i.hc, label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE17initFrancisQRStepEllRKNS1_IdLi3ELi1ELi0ELi3ELi1EEERlRS4_.exit.loopexit, label %.lr.ph.i61

_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE17initFrancisQRStepEllRKNS1_IdLi3ELi1ELi0ELi3ELi1EEERlRS4_.exit.loopexit: ; preds = %bb.q, %.lr.ph.i61
  %storemerge.lcssa.i.ph = phi i64 [ %storemerge56.i, %bb.q ], [ %.014.lcssa.i, %.lr.ph.i61 ]
  store double %i.ga, ptr %4, align 8, !tbaa !43
  store double %i.gf, ptr %.07.i.i.i.i.ptr.1.i.i.i.i.i.i, align 8, !tbaa !43
  store double %i.gi, ptr %.07.i.i.i.i.ptr.2.i.i.i.i.i.i, align 8, !tbaa !43
  br label %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE17initFrancisQRStepEllRKNS1_IdLi3ELi1ELi0ELi3ELi1EEERlRS4_.exit

_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE17initFrancisQRStepEllRKNS1_IdLi3ELi1ELi0ELi3ELi1EEERlRS4_.exit: ; preds = %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE17initFrancisQRStepEllRKNS1_IdLi3ELi1ELi0ELi3ELi1EEERlRS4_.exit.loopexit, %bb.p
  %storemerge.lcssa.i = phi i64 [ %i.fl, %bb.p ], [ %storemerge.lcssa.i.ph, %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE17initFrancisQRStepEllRKNS1_IdLi3ELi1ELi0ELi3ELi1EEERlRS4_.exit.loopexit ]
  call void @_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE20performFrancisQRStepElllbRKNS1_IdLi3ELi1ELi0ELi3ELi1EEEPd(ptr noundef nonnull align 16 dereferenceable(320) %0, i64 noundef %.014.lcssa.i, i64 noundef %storemerge.lcssa.i, i64 noundef %.049, i1 noundef zeroext %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull %i.p)
  br label %bb.r

bb.r:                                             ; preds = %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE12computeShiftEllRdRNS1_IdLi3ELi1ELi0ELi3ELi1EEE.exit, %_ZN5Eigen9RealSchurINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE17initFrancisQRStepEllRKNS1_IdLi3ELi1ELi0ELi3ELi1EEERlRS4_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.i, %bb.k
  %.251 = phi i64 [ %.049, %bb.r ], [ %i.bw, %bb.i ], [ %i.bz, %bb.k ] ; 2 uses
  %.248 = phi i64 [ %i.fj, %bb.r ], [ 0, %bb.i ], [ 0, %bb.k ]
  %.2 = phi i64 [ %i.fk, %bb.r ], [ %.044, %bb.i ], [ %.044, %bb.k ] ; 2 uses
  %.1 = phi i1 [ %.not, %bb.r ], [ true, %bb.i ], [ true, %bb.k ]
  %.old1 = icmp sgt i64 %.251, -1
  %or.cond57 = select i1 %.1, i1 %.old1, i1 false
  br i1 %or.cond57, label %bb.e, label %.loopexit

.loopexit:                                        ; preds = %bb.s, %bb.d
  %.3 = phi i64 [ 0, %bb.d ], [ %.2, %bb.s ]
  %.not56 = icmp sgt i64 %.3, %spec.select67
  %spec.select = select i1 %.not56, i32 2, i32 0
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i32 %spec.select, ptr %i.hd, align 16, !tbaa !808
  %i.he = zext i1 %3 to i8
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 308
  store i8 1, ptr %i.hf, align 4, !tbaa !557
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 309
  store i8 %i.he, ptr %i.hg, align 1, !tbaa !563
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen23HessenbergDecompositionINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE8_computeERS2_RNS1_IdLi2ELi1ELi0ELi2ELi1EEERNS1_IdLi1ELi3ELi1ELi1ELi3EEE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 16 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::VectorBlock.872", align 8 ; 12 uses
  %i.a = alloca double, align 8                   ; 8 uses
  %i.b = alloca double, align 8                   ; 12 uses
  %4 = alloca %"class.Eigen::VectorBlock.836", align 8 ; 18 uses
  %5 = alloca %"class.Eigen::Block.850", align 8  ; 14 uses
  %6 = alloca %"class.Eigen::VectorBlock.836", align 8 ; 16 uses
  %7 = alloca %"class.Eigen::Block.861", align 8  ; 13 uses
  %8 = alloca %"class.Eigen::VectorBlock.836", align 8 ; 16 uses
  %i.c = alloca double, align 8                   ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40 ; 2 uses
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.850.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 64 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 120 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 136 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 40 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 48 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %.sroa.637.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48 ; 2 uses
  %.sroa.738.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.sroa.839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 88 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %7, i64 40 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 56
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 72 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 88 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.ae, ptr %4, align 8, !tbaa !906, !alias.scope !908
  store i64 2, ptr %i.d, align 8, !tbaa !848, !alias.scope !908
  store ptr %0, ptr %i.e, align 8
  store ptr %0, ptr %.sroa.547.0..sroa_idx, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.648.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 3, ptr %.sroa.850.0..sroa_idx, align 8
  store i64 1, ptr %i.f, align 8, !tbaa !848, !alias.scope !908
  store i64 3, ptr %i.g, align 8, !tbaa !911, !alias.scope !908
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.af, ptr %3, align 8, !tbaa !921
  store i64 1, ptr %i.h, align 8, !tbaa !848
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.i, ptr noundef nonnull align 8 dereferenceable(96) %4, i64 96, i1 false)
  store i64 1, ptr %i.j, align 8, !tbaa !848
  store i64 3, ptr %i.k, align 8, !tbaa !923
  call void @_ZNK5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEE15makeHouseholderINS_11VectorBlockIS5_Lin1EEEEEvRT_RdSC_(ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(144) %3, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  %i.ag = load double, ptr %i.a, align 8, !tbaa !43
  store double %i.ag, ptr %i.ae, align 8, !tbaa !43
  %i.ah = load double, ptr %i.b, align 8, !tbaa !43
  store double %i.ah, ptr %1, align 16, !tbaa !43
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ai, ptr %5, align 8, !tbaa !843, !alias.scope !928
  store i64 2, ptr %i.l, align 8, !tbaa !848, !alias.scope !928
  store i64 2, ptr %i.m, align 8, !tbaa !848, !alias.scope !928
  store ptr %0, ptr %i.n, align 8, !tbaa !541, !alias.scope !928
  store i64 1, ptr %i.o, align 8, !tbaa !848, !alias.scope !928
  store i64 1, ptr %i.p, align 8, !tbaa !848, !alias.scope !928
  store i64 3, ptr %i.q, align 8, !tbaa !849, !alias.scope !928
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal29general_matrix_vector_productIldNS0_22const_blas_data_mapperIdlLi1EEELi1ELb0EdS3_Lb0ELi1EE3runEllRKS3_S6_Pdld:bb.a
  %i.gf = add i64 %1, -2                          ; 2 uses
  %i.gg = lshr i64 %i.gf, 1                       ; 2 uses
  %i.gh = add nuw i64 %i.gg, 1                    ; 2 uses
  %i.gi = icmp eq i64 %i.gg, 0
  %unroll_iter = and i64 %i.gh, -2
  %i.gj = and i64 %i.gf, 2
  %lcmp.mod.not.not = icmp eq i64 %i.gj, 0
  %lcmp.mod671 = trunc i64 %i.gh to i1
  %xtraiter672 = and i64 %1, 1
  %lcmp.mod673.not = icmp eq i64 %xtraiter672, 0
  br label %.preheader405

bb.d:                                             ; preds = %.lr.ph456, %bb.d
  %i.gk = phi i64 [ 2, %.lr.ph456 ], [ %i.hf, %bb.d ] ; 2 uses
  %.0214455 = phi i64 [ 0, %.lr.ph456 ], [ %i.gk, %bb.d ] ; 2 uses
  %.0399454 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.gs, %bb.d ]
  %.0401453 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.gw, %bb.d ]
  %.0402452 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.ha, %bb.d ]
  %.0403451 = phi <2 x double> [ zeroinitializer, %.lr.ph456 ], [ %i.he, %bb.d ]
  %i.gl = mul nsw i64 %i.fu, %.0214455
  %i.gm = getelementptr [8 x i8], ptr %i.ft, i64 %i.gl
  %i.gn = load <2 x double>, ptr %i.gm, align 1, !tbaa !81 ; 4 uses
  %i.go = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0214455 ; 4 uses
  %i.gp = getelementptr [8 x i8], ptr %i.go, i64 %i.fv
  %i.gq = load <2 x double>, ptr %i.gp, align 1, !tbaa !81
  %i.gr = fmul <2 x double> %i.gn, %i.gq
  %i.gs = fadd <2 x double> %.0399454, %i.gr      ; 2 uses
  %i.gt = getelementptr [8 x i8], ptr %i.go, i64 %i.fx
  %i.gu = load <2 x double>, ptr %i.gt, align 1, !tbaa !81
  %i.gv = fmul <2 x double> %i.gn, %i.gu
  %i.gw = fadd <2 x double> %.0401453, %i.gv      ; 2 uses
  %i.gx = getelementptr [8 x i8], ptr %i.go, i64 %i.fz
  %i.gy = load <2 x double>, ptr %i.gx, align 1, !tbaa !81
  %i.gz = fmul <2 x double> %i.gn, %i.gy
  %i.ha = fadd <2 x double> %.0402452, %i.gz      ; 2 uses
  %i.hb = getelementptr [8 x i8], ptr %i.go, i64 %i.gb
  %i.hc = load <2 x double>, ptr %i.hb, align 1, !tbaa !81
  %i.hd = fmul <2 x double> %i.gn, %i.hc
  %i.he = fadd <2 x double> %.0403451, %i.hd      ; 2 uses
  %i.hf = add nuw nsw i64 %i.gk, 2                ; 2 uses
  %.not237 = icmp sgt i64 %i.hf, %1
  br i1 %.not237, label %._crit_edge457, label %bb.d, !llvm.loop !1461

._crit_edge457:                                   ; preds = %bb.d, %.preheader407
  %.0403.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.he, %bb.d ] ; 2 uses
  %.0402.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.ha, %bb.d ] ; 2 uses
  %.0401.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.gw, %bb.d ] ; 2 uses
  %.0399.lcssa = phi <2 x double> [ zeroinitializer, %.preheader407 ], [ %i.gs, %bb.d ] ; 2 uses
  %.0214.lcssa = phi i64 [ 0, %.preheader407 ], [ %i.ac, %bb.d ] ; 2 uses
  %i.hg = shufflevector <2 x double> %.0399.lcssa, <2 x double> %.0401.lcssa, <2 x i32> <i32 0, i32 2>
  %i.hh = shufflevector <2 x double> %.0402.lcssa, <2 x double> %.0403.lcssa, <2 x i32> <i32 0, i32 2>
  %i.hi = shufflevector <2 x double> %i.hg, <2 x double> %i.hh, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hj = shufflevector <2 x double> %.0399.lcssa, <2 x double> %.0401.lcssa, <2 x i32> <i32 1, i32 3>
  %i.hk = shufflevector <2 x double> %.0402.lcssa, <2 x double> %.0403.lcssa, <2 x i32> <i32 1, i32 3>
  %i.hl = shufflevector <2 x double> %i.hj, <2 x double> %i.hk, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.hm = fadd <4 x double> %i.hi, %i.hl          ; 2 uses
  %i.hn = icmp slt i64 %.0214.lcssa, %1
  br i1 %i.hn, label %.lr.ph469, label %._crit_edge457.._crit_edge470_crit_edge

._crit_edge457.._crit_edge470_crit_edge:          ; preds = %._crit_edge457
  %.pre565 = add nuw nsw i64 %.1227475, 1
  %.pre567 = add nuw nsw i64 %.1227475, 2
  %.pre569 = add nuw nsw i64 %.1227475, 3
  br label %._crit_edge470

.lr.ph469:                                        ; preds = %._crit_edge457
  %i.ho = load ptr, ptr %3, align 8, !tbaa !684
  %i.hp = load i64, ptr %i.ab, align 8, !tbaa !686
  %i.hq = mul nsw i64 %.1227475, %.sroa.33.0.copyload
  %i.hr = add nuw nsw i64 %.1227475, 1            ; 2 uses
  %i.hs = mul nsw i64 %i.hr, %.sroa.33.0.copyload
  %i.ht = add nuw nsw i64 %.1227475, 2            ; 2 uses
  %i.hu = mul nsw i64 %i.ht, %.sroa.33.0.copyload
  %i.hv = add nuw nsw i64 %.1227475, 3            ; 2 uses
  %i.hw = mul nsw i64 %i.hv, %.sroa.33.0.copyload
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph469, %bb.e
  %.1215463 = phi i64 [ %.0214.lcssa, %.lr.ph469 ], [ %i.is, %bb.e ] ; 3 uses
  %i.hx = phi <4 x double> [ %i.hm, %.lr.ph469 ], [ %i.ir, %bb.e ]
  %i.hy = mul nsw i64 %i.hp, %.1215463
  %i.hz = getelementptr [8 x i8], ptr %i.ho, i64 %i.hy
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !43
  %i.ib = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.1215463 ; 4 uses
  %i.ic = getelementptr [8 x i8], ptr %i.ib, i64 %i.hq
  %i.id = load double, ptr %i.ic, align 8, !tbaa !43
  %i.ie = getelementptr [8 x i8], ptr %i.ib, i64 %i.hs
  %i.if = load double, ptr %i.ie, align 8, !tbaa !43
  %i.ig = getelementptr [8 x i8], ptr %i.ib, i64 %i.hu
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !43
  %i.ii = getelementptr [8 x i8], ptr %i.ib, i64 %i.hw
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !43
  %i.ik = insertelement <4 x double> poison, double %i.ia, i64 0
  %i.il = shufflevector <4 x double> %i.ik, <4 x double> poison, <4 x i32> zeroinitializer
  %i.im = insertelement <4 x double> poison, double %i.id, i64 0
  %i.in = insertelement <4 x double> %i.im, double %i.if, i64 1
  %i.io = insertelement <4 x double> %i.in, double %i.ih, i64 2
  %i.ip = insertelement <4 x double> %i.io, double %i.ij, i64 3
  %i.iq = fmul <4 x double> %i.il, %i.ip
  %i.ir = fadd <4 x double> %i.hx, %i.iq          ; 2 uses
  %i.is = add nuw nsw i64 %.1215463, 1            ; 2 uses
  %exitcond549.not = icmp eq i64 %i.is, %1
  br i1 %exitcond549.not, label %._crit_edge470, label %bb.e, !llvm.loop !1462

._crit_edge470:                                   ; preds = %bb.e, %._crit_edge457.._crit_edge470_crit_edge
  %.pre-phi570 = phi i64 [ %.pre569, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hv, %bb.e ]
  %.pre-phi568 = phi i64 [ %.pre567, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.ht, %bb.e ]
  %.pre-phi566 = phi i64 [ %.pre565, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.hr, %bb.e ]
  %i.it = phi <4 x double> [ %i.hm, %._crit_edge457.._crit_edge470_crit_edge ], [ %i.ir, %bb.e ] ; 4 uses
  %i.iu = mul nsw i64 %.1227475, %5
  %i.iv = getelementptr inbounds [8 x i8], ptr %4, i64 %i.iu ; 2 uses
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !43
  %i.ix = extractelement <4 x double> %i.it, i64 0
  %i.iy = tail call double @llvm.fmuladd.f64(double %6, double %i.ix, double %i.iw)
  store double %i.iy, ptr %i.iv, align 8, !tbaa !43
  %i.iz = mul nsw i64 %.pre-phi566, %5
  %i.ja = getelementptr inbounds [8 x i8], ptr %4, i64 %i.iz ; 2 uses
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !43
  %i.jc = extractelement <4 x double> %i.it, i64 1
  %i.jd = tail call double @llvm.fmuladd.f64(double %6, double %i.jc, double %i.jb)
  store double %i.jd, ptr %i.ja, align 8, !tbaa !43
  %i.je = mul nsw i64 %.pre-phi568, %5
  %i.jf = getelementptr inbounds [8 x i8], ptr %4, i64 %i.je ; 2 uses
  %i.jg = load double, ptr %i.jf, align 8, !tbaa !43
  %i.jh = extractelement <4 x double> %i.it, i64 2
  %i.ji = tail call double @llvm.fmuladd.f64(double %6, double %i.jh, double %i.jg)
  store double %i.ji, ptr %i.jf, align 8, !tbaa !43
  %i.jj = mul nsw i64 %.pre-phi570, %5
  %i.jk = getelementptr inbounds [8 x i8], ptr %4, i64 %i.jj ; 2 uses
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !43
  %i.jm = extractelement <4 x double> %i.it, i64 3
  %i.jn = tail call double @llvm.fmuladd.f64(double %6, double %i.jm, double %i.jl)
  store double %i.jn, ptr %i.jk, align 8, !tbaa !43
  %i.jo = add nuw nsw i64 %.1227475, 4            ; 3 uses
  %i.jp = icmp slt i64 %i.jo, %i.d
  br i1 %i.jp, label %.preheader407, label %.preheader406, !llvm.loop !1463

.preheader405:                                    ; preds = %.preheader405.lr.ph, %._crit_edge491
  %.2494 = phi i64 [ %.1227.lcssa, %.preheader405.lr.ph ], [ %i.oe, %._crit_edge491 ] ; 7 uses
  br i1 %.not236477, label %._crit_edge482, label %.lr.ph481

.lr.ph481:                                        ; preds = %.preheader405
  %i.jq = load ptr, ptr %3, align 8, !tbaa !684   ; 3 uses
  %i.jr = load i64, ptr %i.gd, align 8, !tbaa !686 ; 3 uses
  %i.js = mul nsw i64 %.2494, %.sroa.33.0.copyload ; 3 uses
  %i.jt = add nuw nsw i64 %.2494, 1
  %i.ju = mul nsw i64 %i.jt, %.sroa.33.0.copyload ; 3 uses
  br i1 %i.gi, label %.epil.preheader, label %.lr.ph481.new

.preheader404:                                    ; preds = %._crit_edge491, %.preheader406
  %.2.lcssa = phi i64 [ %.1227.lcssa, %.preheader406 ], [ %i.oe, %._crit_edge491 ] ; 2 uses
  %i.jv = icmp slt i64 %.2.lcssa, %0
  br i1 %i.jv, label %.preheader.lr.ph, label %._crit_edge512

.preheader.lr.ph:                                 ; preds = %.preheader404
  %.not496 = icmp slt i64 %1, 2
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.jx = and i64 %1, -2                          ; 2 uses
  %i.jy = add i64 %1, -2                          ; 2 uses
  %i.jz = lshr i64 %i.jy, 1
  %i.ka = add nuw i64 %i.jz, 1                    ; 2 uses
  %xtraiter675 = and i64 %i.ka, 3                 ; 3 uses
  %i.kb = icmp ult i64 %i.jy, 6
  %unroll_iter680 = and i64 %i.ka, -4
  %lcmp.mod677.not = icmp eq i64 %xtraiter675, 0
  %lcmp.mod679 = icmp ne i64 %xtraiter675, 0
  br label %.preheader

.lr.ph481.new:                                    ; preds = %.lr.ph481, %.lr.ph481.new
  %i.kc = phi i64 [ %i.lc, %.lr.ph481.new ], [ 2, %.lr.ph481 ] ; 4 uses
  %.0208480 = phi i64 [ %i.kp, %.lr.ph481.new ], [ 0, %.lr.ph481 ] ; 2 uses
  %.0398479 = phi <2 x double> [ %i.lb, %.lr.ph481.new ], [ zeroinitializer, %.lr.ph481 ]
  %.0400478 = phi <2 x double> [ %i.kx, %.lr.ph481.new ], [ zeroinitializer, %.lr.ph481 ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph481.new ], [ 0, %.lr.ph481 ]
  %i.kd = mul nsw i64 %i.jr, %.0208480
  %i.ke = getelementptr [8 x i8], ptr %i.jq, i64 %i.kd
  %i.kf = load <2 x double>, ptr %i.ke, align 1, !tbaa !81 ; 2 uses
  %i.kg = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208480 ; 2 uses
  %i.kh = getelementptr [8 x i8], ptr %i.kg, i64 %i.js
  %i.ki = load <2 x double>, ptr %i.kh, align 1, !tbaa !81
  %i.kj = fmul <2 x double> %i.kf, %i.ki
  %i.kk = fadd <2 x double> %.0400478, %i.kj
  %i.kl = getelementptr [8 x i8], ptr %i.kg, i64 %i.ju
  %i.km = load <2 x double>, ptr %i.kl, align 1, !tbaa !81
  %i.kn = fmul <2 x double> %i.kf, %i.km
  %i.ko = fadd <2 x double> %.0398479, %i.kn
  %i.kp = add nuw nsw i64 %i.kc, 2                ; 2 uses
  %i.kq = mul nsw i64 %i.jr, %i.kc
  %i.kr = getelementptr [8 x i8], ptr %i.jq, i64 %i.kq
  %i.ks = load <2 x double>, ptr %i.kr, align 1, !tbaa !81 ; 2 uses
  %i.kt = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.kc ; 2 uses
  %i.ku = getelementptr [8 x i8], ptr %i.kt, i64 %i.js
  %i.kv = load <2 x double>, ptr %i.ku, align 1, !tbaa !81
  %i.kw = fmul <2 x double> %i.ks, %i.kv
  %i.kx = fadd <2 x double> %i.kk, %i.kw          ; 3 uses
  %i.ky = getelementptr [8 x i8], ptr %i.kt, i64 %i.ju
  %i.kz = load <2 x double>, ptr %i.ky, align 1, !tbaa !81
  %i.la = fmul <2 x double> %i.ks, %i.kz
  %i.lb = fadd <2 x double> %i.ko, %i.la          ; 3 uses
  %i.lc = add nuw nsw i64 %i.kc, 4
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge482.loopexit.unr-lcssa, label %.lr.ph481.new, !llvm.loop !1464

._crit_edge482.loopexit.unr-lcssa:                ; preds = %.lr.ph481.new
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %._crit_edge482

.epil.preheader:                                  ; preds = %._crit_edge482.loopexit.unr-lcssa, %.lr.ph481
  %.0208480.epil.init = phi i64 [ 0, %.lr.ph481 ], [ %i.kp, %._crit_edge482.loopexit.unr-lcssa ] ; 2 uses
  %.0398479.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.lb, %._crit_edge482.loopexit.unr-lcssa ]
  %.0400478.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph481 ], [ %i.kx, %._crit_edge482.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod671)
  %i.ld = mul nsw i64 %i.jr, %.0208480.epil.init
  %i.le = getelementptr [8 x i8], ptr %i.jq, i64 %i.ld
  %i.lf = load <2 x double>, ptr %i.le, align 1, !tbaa !81 ; 2 uses
  %i.lg = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208480.epil.init ; 2 uses
  %i.lh = getelementptr [8 x i8], ptr %i.lg, i64 %i.js
  %i.li = load <2 x double>, ptr %i.lh, align 1, !tbaa !81
  %i.lj = fmul <2 x double> %i.lf, %i.li
  %i.lk = fadd <2 x double> %.0400478.epil.init, %i.lj
  %i.ll = getelementptr [8 x i8], ptr %i.lg, i64 %i.ju
  %i.lm = load <2 x double>, ptr %i.ll, align 1, !tbaa !81
  %i.ln = fmul <2 x double> %i.lf, %i.lm
  %i.lo = fadd <2 x double> %.0398479.epil.init, %i.ln
  br label %._crit_edge482

._crit_edge482:                                   ; preds = %.epil.preheader, %._crit_edge482.loopexit.unr-lcssa, %.preheader405
  %.0400.lcssa = phi <2 x double> [ zeroinitializer, %.preheader405 ], [ %i.kx, %._crit_edge482.loopexit.unr-lcssa ], [ %i.lk, %.epil.preheader ] ; 2 uses
  %.0398.lcssa = phi <2 x double> [ zeroinitializer, %.preheader405 ], [ %i.lb, %._crit_edge482.loopexit.unr-lcssa ], [ %i.lo, %.epil.preheader ] ; 2 uses
  %.0208.lcssa = phi i64 [ 0, %.preheader405 ], [ %i.ge, %._crit_edge482.loopexit.unr-lcssa ], [ %i.ge, %.epil.preheader ] ; 6 uses
  %i.lp = shufflevector <2 x double> %.0400.lcssa, <2 x double> %.0398.lcssa, <2 x i32> <i32 0, i32 2>
  %i.lq = shufflevector <2 x double> %.0400.lcssa, <2 x double> %.0398.lcssa, <2 x i32> <i32 1, i32 3>
  %i.lr = fadd <2 x double> %i.lp, %i.lq          ; 3 uses
  %i.ls = icmp slt i64 %.0208.lcssa, %1
  br i1 %i.ls, label %.lr.ph490, label %._crit_edge482.._crit_edge491_crit_edge

._crit_edge482.._crit_edge491_crit_edge:          ; preds = %._crit_edge482
  %.pre571 = add nuw nsw i64 %.2494, 1
  br label %._crit_edge491

.lr.ph490:                                        ; preds = %._crit_edge482
  %i.lt = load ptr, ptr %3, align 8, !tbaa !684   ; 3 uses
  %i.lu = load i64, ptr %i.gd, align 8, !tbaa !686 ; 3 uses
  %i.lv = mul nsw i64 %.2494, %.sroa.33.0.copyload ; 3 uses
  %i.lw = add nuw nsw i64 %.2494, 1               ; 3 uses
  %i.lx = mul nsw i64 %i.lw, %.sroa.33.0.copyload ; 3 uses
  %.neg = or disjoint i64 %.0208.lcssa, 1
  br i1 %lcmp.mod673.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph490
  %i.ly = mul nsw i64 %i.lu, %.0208.lcssa
  %i.lz = getelementptr [8 x i8], ptr %i.lt, i64 %i.ly
  %i.ma = load double, ptr %i.lz, align 8, !tbaa !43
  %i.mb = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.0208.lcssa ; 2 uses
  %i.mc = getelementptr [8 x i8], ptr %i.mb, i64 %i.lv
  %i.md = load double, ptr %i.mc, align 8, !tbaa !43
  %i.me = getelementptr [8 x i8], ptr %i.mb, i64 %i.lx
  %i.mf = load double, ptr %i.me, align 8, !tbaa !43
  %i.mg = insertelement <2 x double> poison, double %i.ma, i64 0
  %i.mh = shufflevector <2 x double> %i.mg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mi = insertelement <2 x double> poison, double %i.md, i64 0
  %i.mj = insertelement <2 x double> %i.mi, double %i.mf, i64 1
  %i.mk = fmul <2 x double> %i.mh, %i.mj
  %i.ml = fadd <2 x double> %i.lr, %i.mk          ; 2 uses
  %i.mm = or disjoint i64 %.0208.lcssa, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph490
  %.lcssa651.unr = phi <2 x double> [ poison, %.lr.ph490 ], [ %i.ml, %.prol.loopexit.unr-lcssa ]
  %.1209486.unr = phi i64 [ %.0208.lcssa, %.lr.ph490 ], [ %i.mm, %.prol.loopexit.unr-lcssa ]
  %.unr = phi <2 x double> [ %i.lr, %.lr.ph490 ], [ %i.ml, %.prol.loopexit.unr-lcssa ]
  %i.mn = icmp eq i64 %1, %.neg
  br i1 %i.mn, label %._crit_edge491, label %.lr.ph490.new

.lr.ph490.new:                                    ; preds = %.prol.loopexit, %.lr.ph490.new
  %.1209486 = phi i64 [ %i.ns, %.lr.ph490.new ], [ %.1209486.unr, %.prol.loopexit ] ; 4 uses
  %i.mo = phi <2 x double> [ %i.nr, %.lr.ph490.new ], [ %.unr, %.prol.loopexit ]
  %i.mp = mul nsw i64 %i.lu, %.1209486
  %i.mq = getelementptr [8 x i8], ptr %i.lt, i64 %i.mp
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !43
  %i.ms = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %.1209486 ; 2 uses
  %i.mt = getelementptr [8 x i8], ptr %i.ms, i64 %i.lv
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !43
  %i.mv = getelementptr [8 x i8], ptr %i.ms, i64 %i.lx
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !43
  %i.mx = insertelement <2 x double> poison, double %i.mr, i64 0
  %i.my = shufflevector <2 x double> %i.mx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mz = insertelement <2 x double> poison, double %i.mu, i64 0
  %i.na = insertelement <2 x double> %i.mz, double %i.mw, i64 1
  %i.nb = fmul <2 x double> %i.my, %i.na
  %i.nc = fadd <2 x double> %i.mo, %i.nb
  %i.nd = add nuw nsw i64 %.1209486, 1            ; 2 uses
  %i.ne = mul nsw i64 %i.lu, %i.nd
  %i.nf = getelementptr [8 x i8], ptr %i.lt, i64 %i.ne
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !43
  %i.nh = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.nd ; 2 uses
  %i.ni = getelementptr [8 x i8], ptr %i.nh, i64 %i.lv
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !43
  %i.nk = getelementptr [8 x i8], ptr %i.nh, i64 %i.lx
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !43
  %i.nm = insertelement <2 x double> poison, double %i.ng, i64 0
  %i.nn = shufflevector <2 x double> %i.nm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.no = insertelement <2 x double> poison, double %i.nj, i64 0
  %i.np = insertelement <2 x double> %i.no, double %i.nl, i64 1
  %i.nq = fmul <2 x double> %i.nn, %i.np
  %i.nr = fadd <2 x double> %i.nc, %i.nq          ; 2 uses
  %i.ns = add nuw nsw i64 %.1209486, 2            ; 2 uses
  %exitcond550.not.1 = icmp eq i64 %i.ns, %1
  br i1 %exitcond550.not.1, label %._crit_edge491, label %.lr.ph490.new, !llvm.loop !1465

._crit_edge491:                                   ; preds = %.prol.loopexit, %.lr.ph490.new, %._crit_edge482.._crit_edge491_crit_edge
  %.pre-phi572 = phi i64 [ %.pre571, %._crit_edge482.._crit_edge491_crit_edge ], [ %i.lw, %.lr.ph490.new ], [ %i.lw, %.prol.loopexit ]
  %i.nt = phi <2 x double> [ %i.lr, %._crit_edge482.._crit_edge491_crit_edge ], [ %.lcssa651.unr, %.prol.loopexit ], [ %i.nr, %.lr.ph490.new ] ; 2 uses
  %i.nu = mul nsw i64 %.2494, %5
  %i.nv = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nu ; 2 uses
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !43
  %i.nx = extractelement <2 x double> %i.nt, i64 0
  %i.ny = tail call double @llvm.fmuladd.f64(double %6, double %i.nx, double %i.nw)
  store double %i.ny, ptr %i.nv, align 8, !tbaa !43
  %i.nz = mul nsw i64 %.pre-phi572, %5
  %i.oa = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nz ; 2 uses
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !43
  %i.oc = extractelement <2 x double> %i.nt, i64 1
  %i.od = tail call double @llvm.fmuladd.f64(double %6, double %i.oc, double %i.ob)
  store double %i.od, ptr %i.oa, align 8, !tbaa !43
  %i.oe = add nuw nsw i64 %.2494, 2               ; 3 uses
  %i.of = icmp slt i64 %i.oe, %i.e
  br i1 %i.of, label %.preheader405, label %.preheader404, !llvm.loop !1466

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge507
  %.3511 = phi i64 [ %.2.lcssa, %.preheader.lr.ph ], [ %i.rp, %._crit_edge507 ] ; 4 uses
  br i1 %.not496, label %._crit_edge500, label %.lr.ph499

.lr.ph499:                                        ; preds = %.preheader
  %i.og = load ptr, ptr %3, align 8, !tbaa !684   ; 5 uses
  %i.oh = load i64, ptr %i.jw, align 8, !tbaa !686 ; 5 uses
  %i.oi = mul nsw i64 %.3511, %.sroa.33.0.copyload
  %invariant.gep = getelementptr [8 x i8], ptr %.sroa.0329.0.copyload, i64 %i.oi ; 5 uses
  br i1 %i.kb, label %.epil.preheader674, label %.lr.ph499.new

.lr.ph499.new:                                    ; preds = %.lr.ph499, %.lr.ph499.new
  %i.oj = phi i64 [ %i.pl, %.lr.ph499.new ], [ 2, %.lr.ph499 ] ; 6 uses
  %.0205498 = phi i64 [ %i.pe, %.lr.ph499.new ], [ 0, %.lr.ph499 ] ; 2 uses
  %.0392497 = phi <2 x double> [ %i.pk, %.lr.ph499.new ], [ zeroinitializer, %.lr.ph499 ]
  %niter681 = phi i64 [ %niter681.next.3, %.lr.ph499.new ], [ 0, %.lr.ph499 ]
  %i.ok = mul nsw i64 %i.oh, %.0205498
  %i.ol = getelementptr [8 x i8], ptr %i.og, i64 %i.ok
  %i.om = load <2 x double>, ptr %i.ol, align 1, !tbaa !81
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0205498
  %i.on = load <2 x double>, ptr %gep, align 1, !tbaa !81
  %i.oo = fmul <2 x double> %i.om, %i.on
  %i.op = fadd <2 x double> %.0392497, %i.oo
  %i.oq = add nuw nsw i64 %i.oj, 2                ; 2 uses
  %i.or = mul nsw i64 %i.oh, %i.oj
  %i.os = getelementptr [8 x i8], ptr %i.og, i64 %i.or
  %i.ot = load <2 x double>, ptr %i.os, align 1, !tbaa !81
  %gep.1 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.oj
  %i.ou = load <2 x double>, ptr %gep.1, align 1, !tbaa !81
  %i.ov = fmul <2 x double> %i.ot, %i.ou
  %i.ow = fadd <2 x double> %i.op, %i.ov
  %i.ox = add nuw nsw i64 %i.oj, 4                ; 2 uses
  %i.oy = mul nsw i64 %i.oh, %i.oq
  %i.oz = getelementptr [8 x i8], ptr %i.og, i64 %i.oy
  %i.pa = load <2 x double>, ptr %i.oz, align 1, !tbaa !81
  %gep.2 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.oq
  %i.pb = load <2 x double>, ptr %gep.2, align 1, !tbaa !81
  %i.pc = fmul <2 x double> %i.pa, %i.pb
  %i.pd = fadd <2 x double> %i.ow, %i.pc
  %i.pe = add nuw nsw i64 %i.oj, 6                ; 2 uses
  %i.pf = mul nsw i64 %i.oh, %i.ox
  %i.pg = getelementptr [8 x i8], ptr %i.og, i64 %i.pf
  %i.ph = load <2 x double>, ptr %i.pg, align 1, !tbaa !81
  %gep.3 = getelementptr [8 x i8], ptr %invariant.gep, i64 %i.ox
  %i.pi = load <2 x double>, ptr %gep.3, align 1, !tbaa !81
  %i.pj = fmul <2 x double> %i.ph, %i.pi
  %i.pk = fadd <2 x double> %i.pd, %i.pj          ; 3 uses
  %i.pl = add nuw nsw i64 %i.oj, 8                ; 2 uses
  %niter681.next.3 = add i64 %niter681, 4         ; 2 uses
  %niter681.ncmp.3 = icmp eq i64 %niter681.next.3, %unroll_iter680
  br i1 %niter681.ncmp.3, label %._crit_edge500.loopexit.unr-lcssa, label %.lr.ph499.new, !llvm.loop !1467

._crit_edge500.loopexit.unr-lcssa:                ; preds = %.lr.ph499.new
  br i1 %lcmp.mod677.not, label %._crit_edge500, label %.epil.preheader674

.epil.preheader674:                               ; preds = %._crit_edge500.loopexit.unr-lcssa, %.lr.ph499
  %.epil.init = phi i64 [ 2, %.lr.ph499 ], [ %i.pl, %._crit_edge500.loopexit.unr-lcssa ]
  %.0205498.epil.init = phi i64 [ 0, %.lr.ph499 ], [ %i.pe, %._crit_edge500.loopexit.unr-lcssa ]
  %.0392497.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph499 ], [ %i.pk, %._crit_edge500.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod679)
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.epil.preheader674
  %i.pm = phi i64 [ %.epil.init, %.epil.preheader674 ], [ %i.pt, %bb.f ] ; 2 uses
  %.0205498.epil = phi i64 [ %.0205498.epil.init, %.epil.preheader674 ], [ %i.pm, %bb.f ] ; 2 uses
  %.0392497.epil = phi <2 x double> [ %.0392497.epil.init, %.epil.preheader674 ], [ %i.ps, %bb.f ]
  %epil.iter = phi i64 [ 0, %.epil.preheader674 ], [ %epil.iter.next, %bb.f ]
  %i.pn = mul nsw i64 %i.oh, %.0205498.epil
  %i.po = getelementptr [8 x i8], ptr %i.og, i64 %i.pn
  %i.pp = load <2 x double>, ptr %i.po, align 1, !tbaa !81
  %gep.epil = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0205498.epil
  %i.pq = load <2 x double>, ptr %gep.epil, align 1, !tbaa !81
end_hunk_3
