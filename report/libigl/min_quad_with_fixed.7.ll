Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.7?download=true
inline.NumInlined: 12514
inline.NumDeleted: 4719
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 215
loop-unroll.NumUnrolled: 222
begin_hunk_0_@_ZN5Eigen8internal12SparseLUImplIdiE6pivotLElRKdRNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEES7_RlRNS0_13LU_GlobalLU_tIS6_NS5_IdLin1ELi1ELi0ELin1ELi1EEEEE:bb.a
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.2 = phi i64 [ %spec.select, %bb.e ], [ %.195, %bb.d ] ; 3 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.am, i64 %.2 ; 3 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !104
  %i.bt = sext i32 %i.bs to i64                   ; 2 uses
  store i64 %i.bt, ptr %5, align 8, !tbaa !84
  %i.bu = trunc i64 %1 to i32
  %i.bv = load ptr, ptr %3, align 8, !tbaa !78
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bt
  store i32 %i.bu, ptr %i.bw, align 4, !tbaa !104
  %.not = icmp eq i64 %.2, %i.j
  br i1 %.not, label %.loopexit104, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.am, i64 %i.j ; 2 uses
  %i.by = load i32, ptr %i.br, align 4, !tbaa !104
  %i.bz = load i32, ptr %i.bx, align 4, !tbaa !104
  store i32 %i.bz, ptr %i.br, align 4, !tbaa !104
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !104
  %.not103111 = icmp slt i64 %i.j, 0
  br i1 %.not103111, label %.loopexit104, label %.lr.ph114

.lr.ph114:                                        ; preds = %bb.g
  %i.ca = getelementptr [8 x i8], ptr %i.af, i64 %.2 ; 3 uses
  %i.cb = getelementptr [8 x i8], ptr %i.af, i64 %i.j ; 3 uses
  %i.cc = add i64 %1, 1
  %i.cd = sub i64 %i.cc, %i.i                     ; 3 uses
  %xtraiter = and i64 %i.cd, 1
  %i.ce = icmp eq i64 %i.j, 0
  br i1 %i.ce, label %.epil.preheader, label %.lr.ph114.new

.lr.ph114.new:                                    ; preds = %.lr.ph114
  %unroll_iter = and i64 %i.cd, -2
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph114.new
  %.091112 = phi i64 [ 0, %.lr.ph114.new ], [ %i.cq, %bb.h ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph114.new ], [ %niter.next.1, %bb.h ]
  %i.cf = mul nsw i64 %.091112, %i.ab             ; 2 uses
  %i.cg = getelementptr [8 x i8], ptr %i.ca, i64 %i.cf ; 2 uses
  %i.ch = getelementptr [8 x i8], ptr %i.cb, i64 %i.cf ; 2 uses
  %i.ci = load double, ptr %i.cg, align 8, !tbaa !152
  %i.cj = load double, ptr %i.ch, align 8, !tbaa !152
  store double %i.cj, ptr %i.cg, align 8, !tbaa !152
  store double %i.ci, ptr %i.ch, align 8, !tbaa !152
  %i.ck = or disjoint i64 %.091112, 1
  %i.cl = mul nsw i64 %i.ck, %i.ab                ; 2 uses
  %i.cm = getelementptr [8 x i8], ptr %i.ca, i64 %i.cl ; 2 uses
  %i.cn = getelementptr [8 x i8], ptr %i.cb, i64 %i.cl ; 2 uses
  %i.co = load double, ptr %i.cm, align 8, !tbaa !152
  %i.cp = load double, ptr %i.cn, align 8, !tbaa !152
  store double %i.cp, ptr %i.cm, align 8, !tbaa !152
  store double %i.co, ptr %i.cn, align 8, !tbaa !152
  %i.cq = add nuw i64 %.091112, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit104.loopexit.unr-lcssa, label %bb.h, !llvm.loop !819

.loopexit104.loopexit.unr-lcssa:                  ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit104, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit104.loopexit.unr-lcssa, %.lr.ph114
  %.091112.epil.init = phi i64 [ 0, %.lr.ph114 ], [ %i.cq, %.loopexit104.loopexit.unr-lcssa ]
  %lcmp.mod132 = trunc i64 %i.cd to i1
  tail call void @llvm.assume(i1 %lcmp.mod132)
  %i.cr = mul nsw i64 %.091112.epil.init, %i.ab   ; 2 uses
  %i.cs = getelementptr [8 x i8], ptr %i.ca, i64 %i.cr ; 2 uses
  %i.ct = getelementptr [8 x i8], ptr %i.cb, i64 %i.cr ; 2 uses
  %i.cu = load double, ptr %i.cs, align 8, !tbaa !152
  %i.cv = load double, ptr %i.ct, align 8, !tbaa !152
  store double %i.cv, ptr %i.cs, align 8, !tbaa !152
  store double %i.cu, ptr %i.ct, align 8, !tbaa !152
  br label %.loopexit104

.loopexit104:                                     ; preds = %.epil.preheader, %.loopexit104.loopexit.unr-lcssa, %bb.g, %bb.f
  %i.cw = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.j
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !152
  %i.cy = fdiv double 1.000000e+00, %i.cx         ; 2 uses
  %.0115 = add nsw i64 %i.j, 1                    ; 4 uses
  %i.cz = icmp slt i64 %.0115, %i.t
  br i1 %i.cz, label %.lr.ph118.preheader, label %.loopexit

.lr.ph118.preheader:                              ; preds = %.loopexit104
  %i.da = add nsw i64 %i.i, %i.s
  %i.db = xor i64 %1, -1
  %i.dc = add i64 %i.da, %i.db
  %i.dd = sub i64 %i.dc, %i.o                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.dd, 4
  br i1 %min.iters.check, label %.lr.ph118.preheader131, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph118.preheader
  %n.vec = and i64 %i.dd, -4                      ; 3 uses
  %i.de = add i64 %.0115, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.cy, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.df = getelementptr [8 x i8], ptr %i.aj, i64 %.0115
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.df, i64 %index ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.dg, align 8, !tbaa !152
  %wide.load130 = load <2 x double>, ptr %i.dh, align 8, !tbaa !152
  %i.di = fmul <2 x double> %broadcast.splat, %wide.load
  %i.dj = fmul <2 x double> %broadcast.splat, %wide.load130
  store <2 x double> %i.di, ptr %i.dg, align 8, !tbaa !152
  store <2 x double> %i.dj, ptr %i.dh, align 8, !tbaa !152
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.dk = icmp eq i64 %index.next, %n.vec
  br i1 %i.dk, label %middle.block, label %vector.body, !llvm.loop !820

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.dd, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph118.preheader131

.lr.ph118.preheader131:                           ; preds = %.lr.ph118.preheader, %middle.block
  %.0116.ph = phi i64 [ %.0115, %.lr.ph118.preheader ], [ %i.de, %middle.block ]
  br label %.lr.ph118

.lr.ph118:                                        ; preds = %.lr.ph118.preheader131, %.lr.ph118
  %.0116 = phi i64 [ %.0, %.lr.ph118 ], [ %.0116.ph, %.lr.ph118.preheader131 ] ; 2 uses
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %.0116 ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !152
  %i.dn = fmul double %i.cy, %i.dm
  store double %i.dn, ptr %i.dl, align 8, !tbaa !152
  %.0 = add nsw i64 %.0116, 1                     ; 2 uses
  %i.do = icmp slt i64 %.0, %i.t
  br i1 %i.do, label %.lr.ph118, label %.loopexit, !llvm.loop !821

.loopexit:                                        ; preds = %.lr.ph118, %middle.block, %.loopexit104, %.thread
  %.098 = phi i64 [ %i.bi, %.thread ], [ 0, %.loopexit104 ], [ 0, %middle.block ], [ 0, %.lr.ph118 ]
  ret i64 %.098
}

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #5 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal12SparseLUImplIdiE6pruneLElRKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEllS6_NS_3RefIS4_Li0ENS_11InnerStrideILi1EEEEERS4_RNS0_13LU_GlobalLU_tIS4_NS3_IdLin1ELi1ELi0ELin1ELi1EEEEE(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef align 8 dead_on_return %6, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 8 dereferenceable(184) %8) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !78   ; 3 uses
  %i.c = getelementptr inbounds [4 x i8], ptr %i.b, i64 %1
  %i.d = load i32, ptr %i.c, align 4, !tbaa !104
  %i.e = icmp sgt i64 %4, 0
  br i1 %i.e, label %.lr.ph95, label %._crit_edge96

.lr.ph95:                                         ; preds = %bb.a
  %i.f = load ptr, ptr %5, align 8, !tbaa !78
  %i.g = load ptr, ptr %6, align 8, !tbaa !689
  %i.h = load ptr, ptr %7, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.l = load ptr, ptr %i.k, align 8              ; 5 uses
  %i.m = load ptr, ptr %8, align 8
  %i.n = load ptr, ptr %2, align 8                ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph95, %.thread
  %.07793 = phi i64 [ 0, %.lr.ph95 ], [ %i.co, %.thread ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.07793
  %i.r = load i32, ptr %i.q, align 4, !tbaa !104  ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 6 uses
  %i.t = add nsw i64 %i.s, 1                      ; 2 uses
  %i.u = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.s
  %i.v = load i32, ptr %i.u, align 4, !tbaa !104
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.s
  %i.y = load i32, ptr %i.x, align 4, !tbaa !104  ; 3 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.t
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !104
  %i.ab = icmp eq i32 %i.y, %i.aa
  %.not = icmp eq i32 %i.y, %i.d
  %or.cond = select i1 %i.ab, i1 true, i1 %.not
  br i1 %or.cond, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.h, i64 %i.s ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !104
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.t
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !104 ; 3 uses
  %.not80 = icmp slt i32 %i.ad, %i.af
  br i1 %.not80, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.s ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !104 ; 2 uses
  %i.ai = sext i32 %i.ah to i64                   ; 4 uses
  %i.aj = add i32 %i.af, -1
  %i.ak = sext i32 %i.aj to i64                   ; 3 uses
  %.not8187.not = icmp slt i32 %i.ah, %i.af
  br i1 %.not8187.not, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %bb.e
  %smax = tail call i64 @llvm.smax.i64(i64 %i.ai, i64 %i.ak)
  br label %.lr.ph

bb.f:                                             ; preds = %.lr.ph
  %i.al = add nsw i64 %.088, 1
  %exitcond.not = icmp eq i64 %.088, %smax
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !822

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %.088 = phi i64 [ %i.al, %bb.f ], [ %i.ai, %.lr.ph.preheader ] ; 3 uses
  %i.am = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.088
  %i.an = load i32, ptr %i.am, align 4, !tbaa !104
  %i.ao = sext i32 %i.an to i64
  %i.ap = icmp eq i64 %3, %i.ao
  br i1 %i.ap, label %.lr.ph92, label %bb.f

.lr.ph92:                                         ; preds = %.lr.ph
  %i.aq = sext i32 %i.y to i64
  %i.ar = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !104
  %i.at = icmp eq i32 %i.r, %i.as
  %.fr = freeze i1 %i.at
  br i1 %.fr, label %.lr.ph92.split.us, label %.lr.ph92.split

.lr.ph92.split.us:                                ; preds = %.lr.ph92, %bb.k
  %.291.us = phi i64 [ %.3.us, %bb.k ], [ %i.ak, %.lr.ph92 ] ; 5 uses
  %.27290.us = phi i64 [ %.373.us, %bb.k ], [ %i.ai, %.lr.ph92 ] ; 5 uses
  %i.au = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.291.us ; 2 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !104 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !104
  %i.az = icmp eq i32 %i.ay, -1
  br i1 %i.az, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.lr.ph92.split.us
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.27290.us ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !104 ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !104
  %.not83.us = icmp eq i32 %i.be, -1
  br i1 %.not83.us, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bf = add nsw i64 %.27290.us, 1
  br label %bb.k

bb.i:                                             ; preds = %bb.g
  store i32 %i.av, ptr %i.ba, align 4, !tbaa !104
  store i32 %i.bb, ptr %i.au, align 4, !tbaa !104
  %i.bg = load ptr, ptr %i.o, align 8, !tbaa !78
  %i.bh = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.s
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !104
  %i.bj = sext i32 %i.bi to i64                   ; 2 uses
  %i.bk = load i32, ptr %i.ag, align 4, !tbaa !104
  %i.bl = sext i32 %i.bk to i64                   ; 2 uses
  %i.bm = sub nsw i64 %.27290.us, %i.bl
  %i.bn = sub nsw i64 %.291.us, %i.bl
  %i.bo = load ptr, ptr %i.p, align 8, !tbaa !232 ; 2 uses
  %i.bp = getelementptr [8 x i8], ptr %i.bo, i64 %i.bm
  %i.bq = getelementptr [8 x i8], ptr %i.bp, i64 %i.bj ; 2 uses
  %i.br = getelementptr [8 x i8], ptr %i.bo, i64 %i.bn
  %i.bs = getelementptr [8 x i8], ptr %i.br, i64 %i.bj ; 2 uses
  %i.bt = load double, ptr %i.bq, align 8, !tbaa !152
  %i.bu = load double, ptr %i.bs, align 8, !tbaa !152
  store double %i.bu, ptr %i.bq, align 8, !tbaa !152
  store double %i.bt, ptr %i.bs, align 8, !tbaa !152
  %i.bv = add nsw i64 %.27290.us, 1
  %i.bw = add nsw i64 %.291.us, -1
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph92.split.us
  %i.bx = add nsw i64 %.291.us, -1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.373.us = phi i64 [ %.27290.us, %bb.j ], [ %i.bf, %bb.h ], [ %i.bv, %bb.i ] ; 3 uses
  %.3.us = phi i64 [ %i.bx, %bb.j ], [ %.291.us, %bb.h ], [ %i.bw, %bb.i ] ; 2 uses
  %.not82.us = icmp sgt i64 %.373.us, %.3.us
  br i1 %.not82.us, label %._crit_edge, label %.lr.ph92.split.us, !llvm.loop !823

.lr.ph92.split:                                   ; preds = %.lr.ph92, %bb.p
  %.291 = phi i64 [ %.3, %bb.p ], [ %i.ak, %.lr.ph92 ] ; 4 uses
  %.27290 = phi i64 [ %.373, %bb.p ], [ %i.ai, %.lr.ph92 ] ; 4 uses
  %i.by = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.291 ; 2 uses
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !104 ; 2 uses
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ca
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !104
  %i.cd = icmp eq i32 %i.cc, -1
  br i1 %i.cd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph92.split
  %i.ce = add nsw i64 %.291, -1
  br label %bb.p

bb.m:                                             ; preds = %.lr.ph92.split
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.27290 ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !104 ; 2 uses
  %i.ch = sext i32 %i.cg to i64
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !104
  %.not83 = icmp eq i32 %i.cj, -1
  br i1 %.not83, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = add nsw i64 %.27290, 1
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  store i32 %i.bz, ptr %i.cf, align 4, !tbaa !104
  store i32 %i.cg, ptr %i.by, align 4, !tbaa !104
  %i.cl = add nsw i64 %.27290, 1
  %i.cm = add nsw i64 %.291, -1
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l
  %.373 = phi i64 [ %.27290, %bb.l ], [ %i.ck, %bb.n ], [ %i.cl, %bb.o ] ; 3 uses
  %.3 = phi i64 [ %i.ce, %bb.l ], [ %.291, %bb.n ], [ %i.cm, %bb.o ] ; 2 uses
  %.not82 = icmp sgt i64 %.373, %.3
  br i1 %.not82, label %._crit_edge, label %.lr.ph92.split, !llvm.loop !823

._crit_edge:                                      ; preds = %bb.p, %bb.k
  %.272.lcssa = phi i64 [ %.373.us, %bb.k ], [ %.373, %bb.p ]
  %i.cn = trunc i64 %.272.lcssa to i32
  store i32 %i.cn, ptr %i.ac, align 4, !tbaa !104
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.e, %bb.d, %._crit_edge, %bb.c, %bb.b
  %i.co = add nuw nsw i64 %.07793, 1              ; 2 uses
  %exitcond98.not = icmp eq i64 %i.co, %4
  br i1 %exitcond98.not, label %._crit_edge96, label %bb.b, !llvm.loop !824

._crit_edge96:                                    ; preds = %.thread, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN5Eigen8internal12SparseLUImplIdiE6expandINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEElRT_RlllS8_(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, i64 noundef %3, i64 noundef %4, ptr noundef nonnull align 8 dereferenceable(8) %5) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Eigen::Matrix.4", align 8   ; 10 uses
  %i.a = load i64, ptr %5, align 8, !tbaa !84
  %i.b = icmp eq i64 %i.a, 0
  %i.c = icmp ne i64 %4, 0                        ; 2 uses
  %or.cond = or i1 %i.c, %i.b
  %i.d = load i64, ptr %2, align 8, !tbaa !84     ; 3 uses
  br i1 %or.cond, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = add nsw i64 %i.d, 1
  %i.f = sitofp i64 %i.d to float
  %i.g = fmul nnan float %i.f, 1.500000e+00
  %i.h = fptosi float %i.g to i64
  %.sroa.speculated81 = tail call i64 @llvm.smax.i64(i64 %i.e, i64 %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.051 = phi i64 [ %.sroa.speculated81, %bb.b ], [ %i.d, %bb.a ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  %i.i = icmp sgt i64 %3, 0                       ; 2 uses
  br i1 %i.i, label %thread-pre-split.i.i.i.i.i.i.i, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_5BlockIS1_Lin1ELi1ELb0EEEEERS1_RKNS_9DenseBaseIT_EE.exit

thread-pre-split.i.i.i.i.i.i.i:                   ; preds = %bb.c
  %i.j = load ptr, ptr %1, align 8, !tbaa !232, !noalias !825 ; 8 uses
  %i.k = ptrtoaddr ptr %i.j to i64
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %6, i64 noundef %3, i64 noundef 1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %thread-pre-split.i.i.i.i.i.i.i
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.pr.i.i.i.i.i.i.i = load i64, ptr %i.l, align 8, !tbaa !306 ; 7 uses
  %.pre = load ptr, ptr %6, align 8, !tbaa !232   ; 8 uses
  %.pre120 = ptrtoaddr ptr %.pre to i64
  %i.m = sdiv i64 %.pr.i.i.i.i.i.i.i, 2
  %i.n = shl nsw i64 %i.m, 1                      ; 6 uses
  %i.o = icmp sgt i64 %.pr.i.i.i.i.i.i.i, 1
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.d
  %i.p = icmp slt i64 %i.n, %.pr.i.i.i.i.i.i.i
  br i1 %i.p, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEaSINS_5BlockIS1_Lin1ELi1ELb0EEEEERS1_RKNS_9DenseBaseIT_EE.exit

.lr.ph.i.i.i.i.i.i.i.i.i.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i.i.i
  %i.q = sub i64 %.pr.i.i.i.i.i.i.i, %i.n         ; 3 uses
  %min.iters.check = icmp ult i64 %i.q, 8
  %i.r = sub i64 %i.k, %.pre120
  %diff.check = icmp ugt i64 %i.r, -32
  %or.cond150 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond150, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader160, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.q, -4                       ; 3 uses
  %i.s = add i64 %i.n, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.t = add i64 %i.n, %index                     ; 2 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %.pre, i64 %i.t ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.t ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <2 x double>, ptr %i.v, align 8, !tbaa !152
  %wide.load121 = load <2 x double>, ptr %i.w, align 8, !tbaa !152
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store <2 x double> %wide.load, ptr %i.u, align 8, !tbaa !152
  store <2 x double> %wide.load121, ptr %i.x, align 8, !tbaa !152
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
end_hunk_0
