Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/straighten_seams?download=true
inline.NumInlined: 5387
inline.NumDeleted: 2526
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 83
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_9TransposeINS_12SparseMatrixIbLi0EiEEEENS3_IbLi1EiEES6_EEvRKT_RKT0_RT1_b:bb.a
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.in = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.io = getelementptr inbounds nuw i8, ptr %.8.val, i64 40
  %i.ip = getelementptr inbounds nuw i8, ptr %.8.val, i64 48
  %i.iq = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  br label %bb.ah

_ZN5Eigen12SparseMatrixIbLi1EiE7reserveEl.exit._crit_edge: ; preds = %_ZN5Eigen12SparseMatrixIbLi1EiE7reserveEl.exit, %_ZN5Eigen12SparseMatrixIbLi1EiE7reserveEl.exit.preheader
  %i.is = load ptr, ptr %i.if, align 8, !tbaa !409
  %i.it = icmp eq ptr %i.is, null
  br i1 %i.it, label %bb.ad, label %_ZN5Eigen12SparseMatrixIbLi1EiE8finalizeEv.exit

bb.ad:                                            ; preds = %_ZN5Eigen12SparseMatrixIbLi1EiE7reserveEl.exit._crit_edge
  %i.iu = load i64, ptr %i.hy, align 8, !tbaa !543
  %i.iv = trunc i64 %i.iu to i32                  ; 2 uses
  %i.iw = load i64, ptr %i.ib, align 8, !tbaa !545 ; 5 uses
  %i.ix = icmp sgt i64 %i.iw, -1
  br i1 %i.ix, label %.lr.ph.i, label %_ZN5Eigen12SparseMatrixIbLi1EiE8finalizeEv.exit

.lr.ph.i:                                         ; preds = %bb.ad
  %i.iy = load ptr, ptr %i.hz, align 8, !tbaa !406 ; 3 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i
  %.08.i = phi i64 [ %i.iw, %.lr.ph.i ], [ %i.jc, %bb.af ] ; 4 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %.08.i
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !56
  %i.jb = icmp eq i32 %i.ja, 0
  br i1 %i.jb, label %bb.af, label %.critedge.i

bb.af:                                            ; preds = %bb.ae
  %i.jc = add nsw i64 %.08.i, -1
  %i.jd = icmp sgt i64 %.08.i, 0
  br i1 %i.jd, label %bb.ae, label %.critedge.i, !llvm.loop !559

.critedge.i:                                      ; preds = %bb.af, %bb.ae
  %.0.lcssa.i = phi i64 [ -1, %bb.af ], [ %.08.i, %bb.ae ] ; 5 uses
  %.not.not11.i = icmp slt i64 %.0.lcssa.i, %i.iw
  br i1 %.not.not11.i, label %.lr.ph13.i.preheader, label %_ZN5Eigen12SparseMatrixIbLi1EiE8finalizeEv.exit

.lr.ph13.i.preheader:                             ; preds = %.critedge.i
  %i.je = sub i64 %i.iw, %.0.lcssa.i              ; 3 uses
  %min.iters.check96 = icmp ult i64 %i.je, 8
  br i1 %min.iters.check96, label %.lr.ph13.i.preheader109, label %vector.ph97

vector.ph97:                                      ; preds = %.lr.ph13.i.preheader
  %n.vec98 = and i64 %i.je, -8                    ; 3 uses
  %i.jf = add i64 %.0.lcssa.i, %n.vec98
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.iv, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jg = getelementptr [4 x i8], ptr %i.iy, i64 %.0.lcssa.i
  br label %vector.body99

vector.body99:                                    ; preds = %vector.body99, %vector.ph97
  %index100 = phi i64 [ 0, %vector.ph97 ], [ %index.next101, %vector.body99 ] ; 2 uses
  %i.jh = getelementptr [4 x i8], ptr %i.jg, i64 %index100 ; 2 uses
  %i.ji = getelementptr i8, ptr %i.jh, i64 4
  %i.jj = getelementptr i8, ptr %i.jh, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.ji, align 4, !tbaa !56
  store <4 x i32> %broadcast.splat, ptr %i.jj, align 4, !tbaa !56
  %index.next101 = add nuw i64 %index100, 8       ; 2 uses
  %i.jk = icmp eq i64 %index.next101, %n.vec98
  br i1 %i.jk, label %middle.block102, label %vector.body99, !llvm.loop !560

middle.block102:                                  ; preds = %vector.body99
  %cmp.n103 = icmp eq i64 %i.je, %n.vec98
  br i1 %cmp.n103, label %_ZN5Eigen12SparseMatrixIbLi1EiE8finalizeEv.exit, label %.lr.ph13.i.preheader109

.lr.ph13.i.preheader109:                          ; preds = %.lr.ph13.i.preheader, %middle.block102
  %.1.in12.i.ph = phi i64 [ %.0.lcssa.i, %.lr.ph13.i.preheader ], [ %i.jf, %middle.block102 ]
  br label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %.lr.ph13.i.preheader109, %.lr.ph13.i
  %.1.in12.i = phi i64 [ %.1.i, %.lr.ph13.i ], [ %.1.in12.i.ph, %.lr.ph13.i.preheader109 ]
  %.1.i = add nsw i64 %.1.in12.i, 1               ; 3 uses
  %i.jl = getelementptr inbounds [4 x i8], ptr %i.iy, i64 %.1.i
  store i32 %i.iv, ptr %i.jl, align 4, !tbaa !56
  %exitcond.not.i = icmp eq i64 %.1.i, %i.iw
  br i1 %exitcond.not.i, label %_ZN5Eigen12SparseMatrixIbLi1EiE8finalizeEv.exit, label %.lr.ph13.i, !llvm.loop !561

.split:                                           ; preds = %bb.f
  %i.jm = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit150.thread49

.split43:                                         ; preds = %bb.i
  %i.jn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.e, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit150.thread49, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit151

bb.ag:                                            ; preds = %_ZN5Eigen12SparseMatrixIbLi1EiE7setZeroEv.exit
  %i.jo = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %.lr.ph77, %_ZN5Eigen12SparseMatrixIbLi1EiE7reserveEl.exit
  %.010776 = phi i64 [ 0, %.lr.ph77 ], [ %i.ng, %_ZN5Eigen12SparseMatrixIbLi1EiE7reserveEl.exit ] ; 5 uses
  %i.jp = load ptr, ptr %i.hz, align 8, !tbaa !406
  %i.jq = getelementptr inbounds nuw [4 x i8], ptr %i.jp, i64 %.010776 ; 2 uses
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !56
  %i.js = getelementptr i8, ptr %i.jq, i64 4
  store i32 %i.jr, ptr %i.js, align 4, !tbaa !56
  %i.jt = load ptr, ptr %i.il, align 8, !tbaa !264
  %i.ju = load ptr, ptr %i.im, align 8, !tbaa !265
  %i.jv = load ptr, ptr %i.in, align 8, !tbaa !406
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.jv, i64 %.010776 ; 2 uses
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !56
  %i.jy = sext i32 %i.jx to i64                   ; 3 uses
  %i.jz = load ptr, ptr %i.ed, align 8, !tbaa !409 ; 2 uses
  %i.ka = icmp eq ptr %i.jz, null
  br i1 %i.ka, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.kb = getelementptr i8, ptr %i.jw, i64 4
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !56
  %i.kd = sext i32 %i.kc to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi1EiEEE13InnerIteratorC2ERKS3_l.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %.010776
  %i.kf = load i32, ptr %i.ke, align 4, !tbaa !56
  %i.kg = sext i32 %i.kf to i64
  %i.kh = add nsw i64 %i.kg, %i.jy
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi1EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi1EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.ai, %bb.aj
  %.sink.i = phi i64 [ %i.kd, %bb.ai ], [ %i.kh, %bb.aj ] ; 2 uses
  %i.ki = icmp sgt i64 %.sink.i, %i.jy
  br i1 %i.ki, label %.lr.ph71, label %_ZN5Eigen12SparseMatrixIbLi1EiE7reserveEl.exit

.lr.ph71:                                         ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi1EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.kj = load ptr, ptr %i.io, align 8, !tbaa !264
  %i.kk = load ptr, ptr %i.ip, align 8, !tbaa !265
  %i.kl = load ptr, ptr %i.iq, align 8, !tbaa !244
  %i.km = load ptr, ptr %i.af, align 8, !tbaa !263 ; 2 uses
  %i.kn = icmp eq ptr %i.km, null
  br label %bb.ak

.preheader:                                       ; preds = %._crit_edge
  %i.ko = icmp sgt i64 %.1.lcssa, 0
  br i1 %i.ko, label %.lr.ph74.preheader, label %_ZN5Eigen12SparseMatrixIbLi1EiE7reserveEl.exit

.lr.ph74.preheader:                               ; preds = %.preheader
  %.pre = load i64, ptr %i.hy, align 8, !tbaa !543
  br label %.lr.ph74

bb.ak:                                            ; preds = %.lr.ph71, %._crit_edge
  %.010670 = phi i64 [ 0, %.lr.ph71 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.87.069 = phi i64 [ %i.jy, %.lr.ph71 ], [ %i.lf, %._crit_edge ] ; 3 uses
  %i.kp = getelementptr inbounds i8, ptr %i.jt, i64 %.sroa.87.069
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !198, !range !203, !noundef !204 ; 2 uses
  %i.kr = getelementptr inbounds [4 x i8], ptr %i.ju, i64 %.sroa.87.069
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !56
  %i.kt = sext i32 %i.ks to i64                   ; 2 uses
  %i.ku = getelementptr inbounds [4 x i8], ptr %i.kl, i64 %i.kt ; 2 uses
  %i.kv = load i32, ptr %i.ku, align 4, !tbaa !56
  %i.kw = sext i32 %i.kv to i64                   ; 3 uses
  br i1 %i.kn, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.kx = getelementptr i8, ptr %i.ku, i64 4
  %i.ky = load i32, ptr %i.kx, align 4, !tbaa !56
  %i.kz = sext i32 %i.ky to i64
  br label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIbLi0EiEEEENS0_13IteratorBasedEbE13InnerIteratorC2ERKS7_l.exit

bb.am:                                            ; preds = %bb.ak
  %i.la = getelementptr inbounds [4 x i8], ptr %i.km, i64 %i.kt
  %i.lb = load i32, ptr %i.la, align 4, !tbaa !56
  %i.lc = sext i32 %i.lb to i64
  %i.ld = add nsw i64 %i.lc, %i.kw
  br label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIbLi0EiEEEENS0_13IteratorBasedEbE13InnerIteratorC2ERKS7_l.exit

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIbLi0EiEEEENS0_13IteratorBasedEbE13InnerIteratorC2ERKS7_l.exit: ; preds = %bb.al, %bb.am
  %.sink.i.i = phi i64 [ %i.kz, %bb.al ], [ %i.ld, %bb.am ] ; 2 uses
  %i.le = icmp sgt i64 %.sink.i.i, %i.kw
  br i1 %i.le, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ap, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIbLi0EiEEEENS0_13IteratorBasedEbE13InnerIteratorC2ERKS7_l.exit
  %.1.lcssa = phi i64 [ %.010670, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIbLi0EiEEEENS0_13IteratorBasedEbE13InnerIteratorC2ERKS7_l.exit ], [ %.2, %bb.ap ] ; 3 uses
  %i.lf = add nsw i64 %.sroa.87.069, 1            ; 2 uses
  %exitcond90.not = icmp eq i64 %i.lf, %.sink.i
  br i1 %exitcond90.not, label %.preheader, label %bb.ak, !llvm.loop !562

.lr.ph:                                           ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIbLi0EiEEEENS0_13IteratorBasedEbE13InnerIteratorC2ERKS7_l.exit, %bb.ap
  %.168 = phi i64 [ %.2, %bb.ap ], [ %.010670, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIbLi0EiEEEENS0_13IteratorBasedEbE13InnerIteratorC2ERKS7_l.exit ] ; 3 uses
  %.sroa.8.067 = phi i64 [ %i.lu, %bb.ap ], [ %i.kw, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIbLi0EiEEEENS0_13IteratorBasedEbE13InnerIteratorC2ERKS7_l.exit ] ; 3 uses
  %i.lg = getelementptr inbounds [4 x i8], ptr %i.kk, i64 %.sroa.8.067
  %i.lh = load i32, ptr %i.lg, align 4, !tbaa !56
  %i.li = sext i32 %i.lh to i64                   ; 4 uses
  %i.lj = getelementptr inbounds i8, ptr %i.kj, i64 %.sroa.8.067
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !198, !range !203, !noundef !204 ; 2 uses
  %i.ll = getelementptr inbounds i8, ptr %i.ab, i64 %i.li ; 2 uses
  %i.lm = load i8, ptr %i.ll, align 1, !tbaa !198, !range !203, !noundef !204
  %i.ln = trunc nuw i8 %i.lm to i1
  br i1 %i.ln, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph
  store i8 1, ptr %i.ll, align 1, !tbaa !198
  %2 = and i8 %i.lk, %i.kq
  %i.lo = getelementptr inbounds i8, ptr %i.ac, i64 %i.li
  store i8 %2, ptr %i.lo, align 1, !tbaa !198
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %.168
  store i64 %i.li, ptr %i.lp, align 8, !tbaa !362
  %i.lq = add nsw i64 %.168, 1
  br label %bb.ap

bb.ao:                                            ; preds = %.lr.ph
  %3 = and i8 %i.lk, %i.kq
  %i.lr = getelementptr inbounds i8, ptr %i.ac, i64 %i.li ; 2 uses
  %i.ls = load i8, ptr %i.lr, align 1, !tbaa !198, !range !203, !noundef !204
  %i.lt = or i8 %i.ls, %3
  store i8 %i.lt, ptr %i.lr, align 1, !tbaa !198
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.2 = phi i64 [ %.168, %bb.ao ], [ %i.lq, %bb.an ] ; 2 uses
  %i.lu = add nsw i64 %.sroa.8.067, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.lu, %.sink.i.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !563

.lr.ph74:                                         ; preds = %.lr.ph74.preheader, %bb.av
  %i.lv = phi i64 [ %i.mg, %bb.av ], [ %.pre, %.lr.ph74.preheader ] ; 5 uses
  %.010573 = phi i64 [ %i.nf, %bb.av ], [ 0, %.lr.ph74.preheader ] ; 2 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.010573
  %i.lx = load i64, ptr %i.lw, align 8, !tbaa !362 ; 3 uses
  %i.ly = getelementptr inbounds i8, ptr %i.ac, i64 %i.lx
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !198, !range !203, !noundef !204
  %i.ma = load ptr, ptr %i.hz, align 8, !tbaa !406
  %i.mb = getelementptr [4 x i8], ptr %i.ma, i64 %.010776
  %i.mc = getelementptr i8, ptr %i.mb, i64 4      ; 2 uses
  %i.md = load i32, ptr %i.mc, align 4, !tbaa !56 ; 2 uses
  %i.me = sext i32 %i.md to i64
  %i.mf = add nsw i32 %i.md, 1
  store i32 %i.mf, ptr %i.mc, align 4, !tbaa !56
  %i.mg = add nsw i64 %i.lv, 1                    ; 4 uses
  %i.mh = load i64, ptr %i.ir, align 8, !tbaa !564
  %.not = icmp sgt i64 %i.mh, %i.lv
  br i1 %.not, label %bb.av, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph74
  %i.mi = sitofp i64 %i.mg to double
  %i.mj = fptosi double %i.mi to i64
  %i.mk = add nsw i64 %i.mg, %i.mj
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.mk, i64 2147483647) ; 6 uses
  %.not54 = icmp sgt i64 %.sroa.speculated.i, %i.lv
  br i1 %.not54, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ml = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ml, align 8, !tbaa !117
  invoke void @__cxa_throw(ptr nonnull %i.ml, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc152 unwind label %.loopexit.split-lp

.noexc152:                                        ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.mm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %.sroa.speculated.i) #27
          to label %.noexc153 unwind label %.loopexit ; 3 uses

.noexc153:                                        ; preds = %bb.as
  %i.mn = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903
  %i.mo = shl nuw i64 %.sroa.speculated.i, 2
  %i.mp = select i1 %i.mn, i64 -1, i64 %i.mo
  %i.mq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mp) #27
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i unwind label %_ZN5Eigen8internal12scoped_arrayIbED2Ev.exit9.i.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i: ; preds = %.noexc153
  %i.mr = load i64, ptr %i.hy, align 8, !tbaa !362
  %.sroa.speculated.i.i = tail call i64 @llvm.smin.i64(i64 %i.mr, i64 %.sroa.speculated.i) ; 3 uses
  %i.ms = icmp sgt i64 %.sroa.speculated.i.i, 0
  %.pre.i.i = load ptr, ptr %i.ij, align 8, !tbaa !565 ; 3 uses
  br i1 %i.ms, label %_ZN5Eigen8internal10smart_copyIbEEvPKT_S4_PS2_.exit.i.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.pre22.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !465
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal10smart_copyIbEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mm, ptr align 1 %.pre.i.i, i64 %.sroa.speculated.i.i, i1 false)
  %.idx.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 2
  %i.mt = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !265 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mq, ptr align 4 %i.mt, i64 %.idx.i.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal12scoped_arrayIbED2Ev.exit9.i.i: ; preds = %.noexc153
  %i.mu = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdaPv(ptr noundef nonnull %i.mm) #26
  br label %.body

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal10smart_copyIbEEvPKT_S4_PS2_.exit.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i
  %i.mv = phi ptr [ %.pre22.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i ], [ %i.mt, %_ZN5Eigen8internal10smart_copyIbEEvPKT_S4_PS2_.exit.i.i ] ; 2 uses
  store ptr %i.mm, ptr %i.ij, align 8, !tbaa !565
  store ptr %i.mq, ptr %.phi.trans.insert.i.i, align 8, !tbaa !465
  store i64 %.sroa.speculated.i, ptr %i.ir, align 8, !tbaa !564
  %i.mw = icmp eq ptr %i.mv, null
  br i1 %i.mw, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, label %bb.at

bb.at:                                            ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %i.mv) #26
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i: ; preds = %bb.at, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  %i.mx = icmp eq ptr %.pre.i.i, null
  br i1 %i.mx, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i
  tail call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #26
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph74, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, %bb.au
  store i64 %i.mg, ptr %i.hy, align 8, !tbaa !543
  %i.my = load ptr, ptr %i.ij, align 8, !tbaa !264 ; 2 uses
  %i.mz = getelementptr inbounds i8, ptr %i.my, i64 %i.lv
  store i8 0, ptr %i.mz, align 1, !tbaa !198
  %i.na = trunc i64 %i.lx to i32
  %i.nb = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !265
  %i.nc = getelementptr inbounds [4 x i8], ptr %i.nb, i64 %i.lv
  store i32 %i.na, ptr %i.nc, align 4, !tbaa !56
  %i.nd = getelementptr inbounds i8, ptr %i.my, i64 %i.me
  store i8 %i.lz, ptr %i.nd, align 1, !tbaa !198
  %i.ne = getelementptr inbounds i8, ptr %i.ab, i64 %i.lx
  store i8 0, ptr %i.ne, align 1, !tbaa !198
  %i.nf = add nuw nsw i64 %.010573, 1             ; 2 uses
  %exitcond91.not = icmp eq i64 %i.nf, %.1.lcssa
  br i1 %exitcond91.not, label %_ZN5Eigen12SparseMatrixIbLi1EiE7reserveEl.exit, label %.lr.ph74, !llvm.loop !566

.loopexit:                                        ; preds = %bb.as
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.ar
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN5Eigen12SparseMatrixIbLi1EiE7reserveEl.exit:   ; preds = %bb.av, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi1EiEEE13InnerIteratorC2ERKS3_l.exit, %.preheader
  %i.ng = add nuw nsw i64 %.010776, 1             ; 2 uses
  %exitcond92.not = icmp eq i64 %i.ng, %i.d
  br i1 %exitcond92.not, label %_ZN5Eigen12SparseMatrixIbLi1EiE7reserveEl.exit._crit_edge, label %bb.ah, !llvm.loop !567

_ZN5Eigen12SparseMatrixIbLi1EiE8finalizeEv.exit:  ; preds = %.lr.ph13.i, %middle.block102, %.critedge.i, %bb.ad, %_ZN5Eigen12SparseMatrixIbLi1EiE7reserveEl.exit._crit_edge
  br i1 %i.ae, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit148.a

_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit: ; preds = %_ZN5Eigen12SparseMatrixIbLi1EiE8finalizeEv.exit
  call void @free(ptr noundef nonnull %i.ad) #23
  br i1 %i.e, label %bb.aw, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit148.a

bb.aw:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit
  call void @free(ptr noundef %i.ac) #23
  call void @free(ptr noundef %i.ab) #23
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit148.a

_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit148.a: ; preds = %_ZN5Eigen12SparseMatrixIbLi1EiE8finalizeEv.exit, %_ZN5Eigen8internal28aligned_stack_memory_handlerIlED2Ev.exit, %bb.aw
  ret void

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %_ZN5Eigen8internal12scoped_arrayIbED2Ev.exit9.i.i, %bb.ag
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.mu, %_ZN5Eigen8internal12scoped_arrayIbED2Ev.exit9.i.i ], [ %i.jo, %bb.ag ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  br i1 %i.ae, label %.split40, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit151

.split40:                                         ; preds = %.body
  call void @free(ptr noundef nonnull %i.ad) #23
  br i1 %i.e, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit150.thread49, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit151

_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit150.thread49: ; preds = %.split, %.split40, %.split43
  %.pn.pn.pn.pn.pn.pn.pn39 = phi { ptr, i32 } [ %i.jm, %.split ], [ %i.jn, %.split43 ], [ %.pn.pn.pn.pn.pn, %.split40 ]
  %i.nh = phi ptr [ %i.f, %.split ], [ %i.w, %.split43 ], [ %i.ab, %.split40 ]
  %i.ni = phi ptr [ %i.i, %.split ], [ %i.x, %.split43 ], [ %i.ac, %.split40 ]
  call void @free(ptr noundef nonnull %i.ni) #23
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit150.thread52

_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit150: ; preds = %bb.e
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit150.thread52

_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit150.thread52: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit150, %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit150.thread49
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn51 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn39, %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit150.thread49 ], [ %i.nj, %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit150 ]
  %i.nk = phi ptr [ %i.nh, %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit150.thread49 ], [ %i.f, %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit150 ]
  call void @free(ptr noundef %i.nk) #23
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit151

_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit151: ; preds = %.body, %.split43, %.split40, %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit150.thread52
  %.pn.pn.pn.pn.pn.pn.pn.pn.pn48 = phi { ptr, i32 } [ %.pn.pn.pn.pn.pn.pn.pn.pn.pn51, %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit150.thread52 ], [ %i.jn, %.split43 ], [ %.pn.pn.pn.pn.pn, %.split40 ], [ %.pn.pn.pn.pn.pn, %.body ]
  resume { ptr, i32 } %.pn.pn.pn.pn.pn.pn.pn.pn.pn48
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIbLi0EiEaSINS0_IbLi1EiEEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix", align 8 ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !545  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !544  ; 13 uses
  store i8 0, ptr %2, align 8, !tbaa !238
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.b, ptr %i.f, align 8, !tbaa !488
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.i = shl i64 %i.d, 2                          ; 2 uses
  %i.j = add i64 %i.i, 4
  %calloc = tail call ptr @calloc(i64 1, i64 %i.j) ; 16 uses
  store ptr %calloc, ptr %i.h, align 8, !tbaa !244
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %bb.b, label %bb.d
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_12SparseMatrixIbLi0EiEES3_S3_EEvRKT_RKT0_RT1_b:bb.a
  %.not377 = icmp eq i64 %i.b, 0
  br label %bb.ah

_ZN5Eigen12SparseMatrixIbLi0EiE7reserveEl.exit._crit_edge: ; preds = %_ZN5Eigen12SparseMatrixIbLi0EiE7reserveEl.exit, %_ZN5Eigen12SparseMatrixIbLi0EiE7reserveEl.exit.preheader
  %i.iw = load ptr, ptr %i.if, align 8, !tbaa !263
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %bb.ad, label %_ZN5Eigen12SparseMatrixIbLi0EiE8finalizeEv.exit

bb.ad:                                            ; preds = %_ZN5Eigen12SparseMatrixIbLi0EiE7reserveEl.exit._crit_edge
  %i.iy = load i64, ptr %i.hy, align 8, !tbaa !543
  %i.iz = trunc i64 %i.iy to i32                  ; 2 uses
  %i.ja = load i64, ptr %i.ib, align 8, !tbaa !240 ; 5 uses
  %i.jb = icmp sgt i64 %i.ja, -1
  br i1 %i.jb, label %.lr.ph.i, label %_ZN5Eigen12SparseMatrixIbLi0EiE8finalizeEv.exit

.lr.ph.i:                                         ; preds = %bb.ad
  %i.jc = load ptr, ptr %i.hz, align 8, !tbaa !244 ; 3 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.af, %.lr.ph.i
  %.08.i = phi i64 [ %i.ja, %.lr.ph.i ], [ %i.jg, %bb.af ] ; 4 uses
  %i.jd = getelementptr inbounds nuw [4 x i8], ptr %i.jc, i64 %.08.i
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !56
  %i.jf = icmp eq i32 %i.je, 0
  br i1 %i.jf, label %bb.af, label %.critedge.i

bb.af:                                            ; preds = %bb.ae
  %i.jg = add nsw i64 %.08.i, -1
  %i.jh = icmp sgt i64 %.08.i, 0
  br i1 %i.jh, label %bb.ae, label %.critedge.i, !llvm.loop !604

.critedge.i:                                      ; preds = %bb.af, %bb.ae
  %.0.lcssa.i = phi i64 [ -1, %bb.af ], [ %.08.i, %bb.ae ] ; 5 uses
  %.not.not11.i = icmp slt i64 %.0.lcssa.i, %i.ja
  br i1 %.not.not11.i, label %.lr.ph13.i.preheader, label %_ZN5Eigen12SparseMatrixIbLi0EiE8finalizeEv.exit

.lr.ph13.i.preheader:                             ; preds = %.critedge.i
  %i.ji = sub i64 %i.ja, %.0.lcssa.i              ; 3 uses
  %min.iters.check476 = icmp ult i64 %i.ji, 8
  br i1 %min.iters.check476, label %.lr.ph13.i.preheader489, label %vector.ph477

vector.ph477:                                     ; preds = %.lr.ph13.i.preheader
  %n.vec478 = and i64 %i.ji, -8                   ; 3 uses
  %i.jj = add i64 %.0.lcssa.i, %n.vec478
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.iz, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.jk = getelementptr [4 x i8], ptr %i.jc, i64 %.0.lcssa.i
  br label %vector.body479

vector.body479:                                   ; preds = %vector.body479, %vector.ph477
  %index480 = phi i64 [ 0, %vector.ph477 ], [ %index.next481, %vector.body479 ] ; 2 uses
  %i.jl = getelementptr [4 x i8], ptr %i.jk, i64 %index480 ; 2 uses
  %i.jm = getelementptr i8, ptr %i.jl, i64 4
  %i.jn = getelementptr i8, ptr %i.jl, i64 20
  store <4 x i32> %broadcast.splat, ptr %i.jm, align 4, !tbaa !56
  store <4 x i32> %broadcast.splat, ptr %i.jn, align 4, !tbaa !56
  %index.next481 = add nuw i64 %index480, 8       ; 2 uses
  %i.jo = icmp eq i64 %index.next481, %n.vec478
  br i1 %i.jo, label %middle.block482, label %vector.body479, !llvm.loop !626

middle.block482:                                  ; preds = %vector.body479
  %cmp.n483 = icmp eq i64 %i.ji, %n.vec478
  br i1 %cmp.n483, label %_ZN5Eigen12SparseMatrixIbLi0EiE8finalizeEv.exit, label %.lr.ph13.i.preheader489

.lr.ph13.i.preheader489:                          ; preds = %.lr.ph13.i.preheader, %middle.block482
  %.1.in12.i.ph = phi i64 [ %.0.lcssa.i, %.lr.ph13.i.preheader ], [ %i.jj, %middle.block482 ]
  br label %.lr.ph13.i

.lr.ph13.i:                                       ; preds = %.lr.ph13.i.preheader489, %.lr.ph13.i
  %.1.in12.i = phi i64 [ %.1.i, %.lr.ph13.i ], [ %.1.in12.i.ph, %.lr.ph13.i.preheader489 ]
  %.1.i = add nsw i64 %.1.in12.i, 1               ; 3 uses
  %i.jp = getelementptr inbounds [4 x i8], ptr %i.jc, i64 %.1.i
  store i32 %i.iz, ptr %i.jp, align 4, !tbaa !56
  %exitcond.not.i = icmp eq i64 %.1.i, %i.ja
  br i1 %exitcond.not.i, label %_ZN5Eigen12SparseMatrixIbLi0EiE8finalizeEv.exit, label %.lr.ph13.i, !llvm.loop !627

.split:                                           ; preds = %bb.f
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit194.thread263

.split257:                                        ; preds = %bb.i
  %i.jr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.e, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit194.thread263, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195

bb.ag:                                            ; preds = %_ZN5Eigen12SparseMatrixIbLi0EiE7setZeroEv.exit
  %i.js = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ah:                                            ; preds = %.lr.ph308, %_ZN5Eigen12SparseMatrixIbLi0EiE7reserveEl.exit
  %.0107306 = phi i64 [ 0, %.lr.ph308 ], [ %i.qq, %_ZN5Eigen12SparseMatrixIbLi0EiE7reserveEl.exit ] ; 7 uses
  %i.jt = load ptr, ptr %i.hz, align 8, !tbaa !244
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.jt, i64 %.0107306 ; 2 uses
  %i.jv = load i32, ptr %i.ju, align 4, !tbaa !56
  %i.jw = getelementptr i8, ptr %i.ju, i64 4
  store i32 %i.jv, ptr %i.jw, align 4, !tbaa !56
  %i.jx = load ptr, ptr %i.il, align 8, !tbaa !264
  %i.jy = load ptr, ptr %i.im, align 8, !tbaa !265
  %i.jz = load ptr, ptr %i.in, align 8, !tbaa !244
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.jz, i64 %.0107306 ; 2 uses
  %i.kb = load i32, ptr %i.ka, align 4, !tbaa !56
  %i.kc = sext i32 %i.kb to i64                   ; 3 uses
  %i.kd = load ptr, ptr %i.ed, align 8, !tbaa !263 ; 2 uses
  %i.ke = icmp eq ptr %i.kd, null
  br i1 %i.ke, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.kf = getelementptr i8, ptr %i.ka, i64 4
  %i.kg = load i32, ptr %i.kf, align 4, !tbaa !56
  %i.kh = sext i32 %i.kg to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.aj:                                            ; preds = %bb.ah
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.kd, i64 %.0107306
  %i.kj = load i32, ptr %i.ki, align 4, !tbaa !56
  %i.kk = sext i32 %i.kj to i64
  %i.kl = add nsw i64 %i.kk, %i.kc
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.ai, %bb.aj
  %.sink.i = phi i64 [ %i.kh, %bb.ai ], [ %i.kl, %bb.aj ] ; 2 uses
  %i.km = icmp sgt i64 %.sink.i, %i.kc
  br i1 %i.km, label %.lr.ph297, label %._crit_edge298.thread

.lr.ph297:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.kn = load ptr, ptr %i.io, align 8, !tbaa !264
  %i.ko = load ptr, ptr %i.ip, align 8, !tbaa !265
  %i.kp = load ptr, ptr %i.iq, align 8, !tbaa !244
  %i.kq = load ptr, ptr %i.af, align 8, !tbaa !263 ; 2 uses
  %i.kr = icmp eq ptr %i.kq, null
  br label %bb.ak

._crit_edge298:                                   ; preds = %._crit_edge
  br i1 %3, label %bb.aw, label %.preheader273

._crit_edge298.thread:                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  br i1 %3, label %bb.aw, label %_ZN5Eigen12SparseMatrixIbLi0EiE7reserveEl.exit

.preheader273:                                    ; preds = %._crit_edge298
  %i.ks = icmp sgt i64 %.1.lcssa, 0
  br i1 %i.ks, label %.lr.ph301.preheader, label %_ZN5Eigen12SparseMatrixIbLi0EiE7reserveEl.exit

.lr.ph301.preheader:                              ; preds = %.preheader273
  %.pre = load i64, ptr %i.hy, align 8, !tbaa !543
  br label %.lr.ph301.a

bb.ak:                                            ; preds = %.lr.ph297, %._crit_edge
  %.0106296 = phi i64 [ 0, %.lr.ph297 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.8221.0295 = phi i64 [ %i.kc, %.lr.ph297 ], [ %i.lj, %._crit_edge ] ; 3 uses
  %i.kt = getelementptr inbounds i8, ptr %i.jx, i64 %.sroa.8221.0295
  %i.ku = load i8, ptr %i.kt, align 1, !tbaa !198, !range !203, !noundef !204 ; 2 uses
  %i.kv = getelementptr inbounds [4 x i8], ptr %i.jy, i64 %.sroa.8221.0295
  %i.kw = load i32, ptr %i.kv, align 4, !tbaa !56
  %i.kx = sext i32 %i.kw to i64                   ; 2 uses
  %i.ky = getelementptr inbounds [4 x i8], ptr %i.kp, i64 %i.kx ; 2 uses
  %i.kz = load i32, ptr %i.ky, align 4, !tbaa !56
  %i.la = sext i32 %i.kz to i64                   ; 3 uses
  br i1 %i.kr, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.lb = getelementptr i8, ptr %i.ky, i64 4
  %i.lc = load i32, ptr %i.lb, align 4, !tbaa !56
  %i.ld = sext i32 %i.lc to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit185

bb.am:                                            ; preds = %bb.ak
  %i.le = getelementptr inbounds [4 x i8], ptr %i.kq, i64 %i.kx
  %i.lf = load i32, ptr %i.le, align 4, !tbaa !56
  %i.lg = sext i32 %i.lf to i64
  %i.lh = add nsw i64 %i.lg, %i.la
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit185

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit185: ; preds = %bb.al, %bb.am
  %.sink.i184 = phi i64 [ %i.ld, %bb.al ], [ %i.lh, %bb.am ] ; 2 uses
  %i.li = icmp sgt i64 %.sink.i184, %i.la
  br i1 %i.li, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ap, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit185
  %.1.lcssa = phi i64 [ %.0106296, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit185 ], [ %.2, %bb.ap ] ; 4 uses
  %i.lj = add nsw i64 %.sroa.8221.0295, 1         ; 2 uses
  %exitcond324.not.a = icmp eq i64 %i.lj, %.sink.i
  br i1 %exitcond324.not.a, label %._crit_edge298, label %bb.ak, !llvm.loop !628

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit185, %bb.ap
  %.1294 = phi i64 [ %.2, %bb.ap ], [ %.0106296, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit185 ] ; 3 uses
  %.sroa.8.0293 = phi i64 [ %i.ly, %bb.ap ], [ %i.la, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit185 ] ; 3 uses
  %i.lk = getelementptr inbounds [4 x i8], ptr %i.ko, i64 %.sroa.8.0293
  %i.ll = load i32, ptr %i.lk, align 4, !tbaa !56
  %i.lm = sext i32 %i.ll to i64                   ; 4 uses
  %i.ln = getelementptr inbounds i8, ptr %i.kn, i64 %.sroa.8.0293
  %i.lo = load i8, ptr %i.ln, align 1, !tbaa !198, !range !203, !noundef !204 ; 2 uses
  %i.lp = getelementptr inbounds i8, ptr %i.ab, i64 %i.lm ; 2 uses
  %i.lq = load i8, ptr %i.lp, align 1, !tbaa !198, !range !203, !noundef !204
  %i.lr = trunc nuw i8 %i.lq to i1
  br i1 %i.lr, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %.lr.ph
  store i8 1, ptr %i.lp, align 1, !tbaa !198
  %4 = and i8 %i.lo, %i.ku
  %i.ls = getelementptr inbounds i8, ptr %i.ac, i64 %i.lm
  store i8 %4, ptr %i.ls, align 1, !tbaa !198
  %i.lt = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %.1294
  store i64 %i.lm, ptr %i.lt, align 8, !tbaa !362
  %i.lu = add nsw i64 %.1294, 1
  br label %bb.ap

bb.ao:                                            ; preds = %.lr.ph
  %5 = and i8 %i.lo, %i.ku
  %i.lv = getelementptr inbounds i8, ptr %i.ac, i64 %i.lm ; 2 uses
  %i.lw = load i8, ptr %i.lv, align 1, !tbaa !198, !range !203, !noundef !204
  %i.lx = or i8 %i.lw, %5
  store i8 %i.lx, ptr %i.lv, align 1, !tbaa !198
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an
  %.2 = phi i64 [ %.1294, %bb.ao ], [ %i.lu, %bb.an ] ; 2 uses
  %i.ly = add nsw i64 %.sroa.8.0293, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ly, %.sink.i184
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !629

.lr.ph301.a:                                      ; preds = %.lr.ph301.preheader, %bb.av
  %i.lz = phi i64 [ %i.mk, %bb.av ], [ %.pre, %.lr.ph301.preheader ] ; 5 uses
  %.0105300 = phi i64 [ %i.nj, %bb.av ], [ 0, %.lr.ph301.preheader ] ; 2 uses
  %i.ma = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.0105300
  %i.mb = load i64, ptr %i.ma, align 8, !tbaa !362 ; 3 uses
  %i.mc = getelementptr inbounds i8, ptr %i.ac, i64 %i.mb
  %i.md = load i8, ptr %i.mc, align 1, !tbaa !198, !range !203, !noundef !204
  %i.me = load ptr, ptr %i.hz, align 8, !tbaa !244
  %i.mf = getelementptr [4 x i8], ptr %i.me, i64 %.0107306
  %i.mg = getelementptr i8, ptr %i.mf, i64 4      ; 2 uses
  %i.mh = load i32, ptr %i.mg, align 4, !tbaa !56 ; 2 uses
  %i.mi = sext i32 %i.mh to i64
  %i.mj = add nsw i32 %i.mh, 1
  store i32 %i.mj, ptr %i.mg, align 4, !tbaa !56
  %i.mk = add nsw i64 %i.lz, 1                    ; 4 uses
  %i.ml = load i64, ptr %i.ir, align 8, !tbaa !564
  %.not = icmp sgt i64 %i.ml, %i.lz
  br i1 %.not, label %bb.av, label %bb.aq

bb.aq:                                            ; preds = %.lr.ph301.a
  %i.mm = sitofp i64 %i.mk to double
  %i.mn = fptosi double %i.mm to i64
  %i.mo = add nsw i64 %i.mk, %i.mn
  %.sroa.speculated.i = call i64 @llvm.smin.i64(i64 %i.mo, i64 2147483647) ; 6 uses
  %.not268.a = icmp sgt i64 %.sroa.speculated.i, %i.lz
  br i1 %.not268.a, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.mp = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.mp, align 8, !tbaa !117
  invoke void @__cxa_throw(ptr nonnull %i.mp, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc196 unwind label %.loopexit.split-lp276

.noexc196:                                        ; preds = %bb.ar
  unreachable

bb.as:                                            ; preds = %bb.aq
  %i.mq = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %.sroa.speculated.i) #27
          to label %.noexc197 unwind label %.loopexit275 ; 3 uses

.noexc197:                                        ; preds = %bb.as
  %i.mr = icmp ugt i64 %.sroa.speculated.i, 4611686018427387903
  %i.ms = shl nuw i64 %.sroa.speculated.i, 2
  %i.mt = select i1 %i.mr, i64 -1, i64 %i.ms
  %i.mu = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.mt) #27
          to label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i unwind label %_ZN5Eigen8internal12scoped_arrayIbED2Ev.exit9.i.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i: ; preds = %.noexc197
  %i.mv = load i64, ptr %i.hy, align 8, !tbaa !362
  %.sroa.speculated.i.i = call i64 @llvm.smin.i64(i64 %i.mv, i64 %.sroa.speculated.i) ; 3 uses
  %i.mw = icmp sgt i64 %.sroa.speculated.i.i, 0
  %.pre.i.i = load ptr, ptr %i.ij, align 8, !tbaa !565 ; 3 uses
  br i1 %i.mw, label %_ZN5Eigen8internal10smart_copyIbEEvPKT_S4_PS2_.exit.i.i, label %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i

_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  %.pre22.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !465
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal10smart_copyIbEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.mq, ptr align 1 %.pre.i.i, i64 %.sroa.speculated.i.i, i1 false)
  %.idx.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 2
  %i.mx = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !265 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.mu, ptr align 4 %i.mx, i64 %.idx.i.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal12scoped_arrayIbED2Ev.exit9.i.i: ; preds = %.noexc197
  %i.my = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.mq) #26
  br label %.body

_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal10smart_copyIbEEvPKT_S4_PS2_.exit.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i
  %i.mz = phi ptr [ %.pre22.i.i, %_ZN5Eigen8internal12scoped_arrayIiEC2El.exit._ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit_crit_edge.i.i ], [ %i.mx, %_ZN5Eigen8internal10smart_copyIbEEvPKT_S4_PS2_.exit.i.i ] ; 2 uses
  store ptr %i.mq, ptr %i.ij, align 8, !tbaa !565
  store ptr %i.mu, ptr %.phi.trans.insert.i.i, align 8, !tbaa !465
  store i64 %.sroa.speculated.i, ptr %i.ir, align 8, !tbaa !564
  %i.na = icmp eq ptr %i.mz, null
  br i1 %i.na, label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, label %bb.at

bb.at:                                            ; preds = %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.mz) #26
  br label %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i

_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i: ; preds = %bb.at, %_ZN5Eigen8internal10smart_copyIiEEvPKT_S4_PS2_.exit.i.i
  %i.nb = icmp eq ptr %.pre.i.i, null
  br i1 %i.nb, label %bb.av, label %bb.au

bb.au:                                            ; preds = %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #26
  br label %bb.av

bb.av:                                            ; preds = %.lr.ph301.a, %_ZN5Eigen8internal12scoped_arrayIiED2Ev.exit8.i.i, %bb.au
  store i64 %i.mk, ptr %i.hy, align 8, !tbaa !543
  %i.nc = load ptr, ptr %i.ij, align 8, !tbaa !264 ; 2 uses
  %i.nd = getelementptr inbounds i8, ptr %i.nc, i64 %i.lz
  store i8 0, ptr %i.nd, align 1, !tbaa !198
  %i.ne = trunc i64 %i.mb to i32
  %i.nf = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !265
  %i.ng = getelementptr inbounds [4 x i8], ptr %i.nf, i64 %i.lz
  store i32 %i.ne, ptr %i.ng, align 4, !tbaa !56
  %i.nh = getelementptr inbounds i8, ptr %i.nc, i64 %i.mi
  store i8 %i.md, ptr %i.nh, align 1, !tbaa !198
  %i.ni = getelementptr inbounds i8, ptr %i.ab, i64 %i.mb
  store i8 0, ptr %i.ni, align 1, !tbaa !198
  %i.nj = add nuw nsw i64 %.0105300, 1            ; 2 uses
  %exitcond325.not.a = icmp eq i64 %i.nj, %.1.lcssa
  br i1 %exitcond325.not.a, label %_ZN5Eigen12SparseMatrixIbLi0EiE7reserveEl.exit, label %.lr.ph301.a, !llvm.loop !630

.loopexit275:                                     ; preds = %bb.as
  %lpad.loopexit277 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp276:                            ; preds = %bb.ar
  %lpad.loopexit.split-lp278 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aw:                                            ; preds = %._crit_edge298.thread, %._crit_edge298
  %.0106.lcssa359 = phi i64 [ 0, %._crit_edge298.thread ], [ %.1.lcssa, %._crit_edge298 ] ; 8 uses
  %or.cond = icmp slt i64 %.0106.lcssa359, %i.it
  br i1 %or.cond, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.nk = trunc i64 %.0106.lcssa359 to i32        ; 2 uses
  %i.nl = lshr i32 %i.nk, 1
  %i.nm = or i32 %i.nl, %i.nk                     ; 2 uses
  %i.nn = lshr i32 %i.nm, 2
  %i.no = or i32 %i.nn, %i.nm                     ; 2 uses
  %i.np = lshr i32 %i.no, 4
  %i.nq = or i32 %i.np, %i.no                     ; 2 uses
  %i.nr = lshr i32 %i.nq, 8
  %i.ns = or i32 %i.nr, %i.nq                     ; 2 uses
  %i.nt = lshr i32 %i.ns, 16
  %i.nu = or i32 %i.nt, %i.ns
  %i.nv = mul i32 %i.nu, 130329821
  %i.nw = lshr i32 %i.nv, 27
  %i.nx = zext nneg i32 %i.nw to i64
  %i.ny = getelementptr inbounds nuw [4 x i8], ptr @_ZZN5Eigen6numext4log2EiE5table, i64 %i.nx
  %i.nz = load i32, ptr %i.ny, align 4, !tbaa !56
  %i.oa = sext i32 %i.nz to i64
  %i.ob = mul nsw i64 %.0106.lcssa359, %i.oa
  %i.oc = icmp slt i64 %i.ob, %i.iv
  br i1 %i.oc, label %bb.ay, label %.preheader

.preheader:                                       ; preds = %bb.ax
  br i1 %.not377, label %_ZN5Eigen12SparseMatrixIbLi0EiE7reserveEl.exit, label %.lr.ph303

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.od = icmp sgt i64 %.0106.lcssa359, 1
  br i1 %i.od, label %bb.az, label %_ZSt4sortIPlEvT_S1_.exit

bb.az:                                            ; preds = %bb.ay
  %.idx = shl nuw nsw i64 %.0106.lcssa359, 3
  %i.oe = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx ; 2 uses
  %i.of = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0106.lcssa359, i1 true)
  %i.og = shl nuw nsw i64 %i.of, 1
  %i.oh = xor i64 %i.og, 126
  invoke void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.oe, i64 noundef %i.oh)
          to label %.noexc187 unwind label %bb.ba

.noexc187:                                        ; preds = %bb.az
  invoke void @_ZSt22__final_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.oe)
          to label %.lr.ph305.preheader unwind label %bb.ba

bb.ba:                                            ; preds = %.noexc187, %bb.az
  %i.oi = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZSt4sortIPlEvT_S1_.exit:                         ; preds = %bb.ay
  %i.oj = icmp eq i64 %.0106.lcssa359, 1
  br i1 %i.oj, label %.lr.ph305.preheader, label %_ZN5Eigen12SparseMatrixIbLi0EiE7reserveEl.exit

.lr.ph305.preheader:                              ; preds = %.noexc187, %_ZSt4sortIPlEvT_S1_.exit
  br label %.lr.ph305

.lr.ph305:                                        ; preds = %.lr.ph305.preheader, %bb.bg
  %.0104304 = phi i64 [ %i.pu, %bb.bg ], [ 0, %.lr.ph305.preheader ] ; 2 uses
  %i.ok = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.0104304
  %i.ol = load i64, ptr %i.ok, align 8, !tbaa !362 ; 3 uses
  %i.om = getelementptr inbounds i8, ptr %i.ac, i64 %i.ol
  %i.on = load i8, ptr %i.om, align 1, !tbaa !198, !range !203, !noundef !204
  %i.oo = load ptr, ptr %i.hz, align 8, !tbaa !244
  %i.op = getelementptr [4 x i8], ptr %i.oo, i64 %.0107306
  %i.oq = getelementptr i8, ptr %i.op, i64 4      ; 2 uses
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !56 ; 2 uses
  %i.os = sext i32 %i.or to i64
  %i.ot = add nsw i32 %i.or, 1
  store i32 %i.ot, ptr %i.oq, align 4, !tbaa !56
  %i.ou = load i64, ptr %i.hy, align 8, !tbaa !543 ; 5 uses
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal26call_dense_assignment_loopINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEENS_13CwiseBinaryOpINS0_20scalar_boolean_or_opEKS3_KNS_12ArrayWrapperIKNS_7ProductINS_12SparseMatrixIbLi0EiEENS_13MatrixWrapperIS3_EELi0EEEEEEENS0_9assign_opIbbEEEEvRT_RKT0_RKT1_:bb.a
  store <8 x i8> %i.at, ptr %i.aq, align 1, !tbaa !198
  %index.next26 = add nuw i64 %index23, 8         ; 2 uses
  %i.au = icmp eq i64 %index.next26, %n.vec22
  br i1 %i.au, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !656

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n27 = icmp eq i64 %i.an, 0
  br i1 %cmp.n27, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_13CwiseBinaryOpINS0_20scalar_boolean_or_opEKS5_KNS_12ArrayWrapperIKNS_7ProductINS_12SparseMatrixIbLi0EiEENS_13MatrixWrapperIS5_EELi0EEEEEEEEENS0_9assign_opIbbEELi0EEELi3ELi0EE3runERSO_.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.05.i.i.ph = phi i64 [ %i.r, %iter.check ], [ %i.r, %vector.memcheck ], [ %i.ac, %vec.epilog.iter.check ], [ %i.ao, %vec.epilog.middle.block ] ; 4 uses
  %i.av = sub i64 %i.h, %.05.i.i.ph
  %xtraiter = and i64 %i.av, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %.05.i.i.prol = phi i64 [ %i.bc, %vec.epilog.scalar.ph.prol ], [ %.05.i.i.ph, %vec.epilog.scalar.ph.preheader ] ; 4 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.aw = getelementptr inbounds i8, ptr %i.o, i64 %.05.i.i.prol
  %i.ax = getelementptr inbounds i8, ptr %i.u, i64 %.05.i.i.prol
  %i.ay = getelementptr inbounds i8, ptr %i.v, i64 %.05.i.i.prol
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !198, !range !203, !noundef !204
  %i.ba = load i8, ptr %i.ax, align 1, !tbaa !198, !range !203, !noundef !204
  %i.bb = or i8 %i.ba, %i.az
  store i8 %i.bb, ptr %i.aw, align 1, !tbaa !198
  %i.bc = add nsw i64 %.05.i.i.prol, 1            ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !657

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %.05.i.i.unr = phi i64 [ %.05.i.i.ph, %vec.epilog.scalar.ph.preheader ], [ %i.bc, %vec.epilog.scalar.ph.prol ]
  %i.bd = sub i64 %.05.i.i.ph, %i.h
  %i.be = icmp ugt i64 %i.bd, -4
  br i1 %i.be, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_13CwiseBinaryOpINS0_20scalar_boolean_or_opEKS5_KNS_12ArrayWrapperIKNS_7ProductINS_12SparseMatrixIbLi0EiEENS_13MatrixWrapperIS5_EELi0EEEEEEEEENS0_9assign_opIbbEELi0EEELi3ELi0EE3runERSO_.exit, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %.05.i.i = phi i64 [ %i.cg, %vec.epilog.scalar.ph ], [ %.05.i.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 7 uses
  %i.bf = getelementptr inbounds i8, ptr %i.o, i64 %.05.i.i
  %i.bg = getelementptr inbounds i8, ptr %i.u, i64 %.05.i.i
  %i.bh = getelementptr inbounds i8, ptr %i.v, i64 %.05.i.i
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !198, !range !203, !noundef !204
  %i.bj = load i8, ptr %i.bg, align 1, !tbaa !198, !range !203, !noundef !204
  %i.bk = or i8 %i.bj, %i.bi
  store i8 %i.bk, ptr %i.bf, align 1, !tbaa !198
  %i.bl = add nsw i64 %.05.i.i, 1                 ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %i.o, i64 %i.bl
  %i.bn = getelementptr inbounds i8, ptr %i.u, i64 %i.bl
  %i.bo = getelementptr inbounds i8, ptr %i.v, i64 %i.bl
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !198, !range !203, !noundef !204
  %i.bq = load i8, ptr %i.bn, align 1, !tbaa !198, !range !203, !noundef !204
  %i.br = or i8 %i.bq, %i.bp
  store i8 %i.br, ptr %i.bm, align 1, !tbaa !198
  %i.bs = add nsw i64 %.05.i.i, 2                 ; 3 uses
  %i.bt = getelementptr inbounds i8, ptr %i.o, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.u, i64 %i.bs
  %i.bv = getelementptr inbounds i8, ptr %i.v, i64 %i.bs
  %i.bw = load i8, ptr %i.bv, align 1, !tbaa !198, !range !203, !noundef !204
  %i.bx = load i8, ptr %i.bu, align 1, !tbaa !198, !range !203, !noundef !204
  %i.by = or i8 %i.bx, %i.bw
  store i8 %i.by, ptr %i.bt, align 1, !tbaa !198
  %i.bz = add nsw i64 %.05.i.i, 3                 ; 3 uses
  %i.ca = getelementptr inbounds i8, ptr %i.o, i64 %i.bz
  %i.cb = getelementptr inbounds i8, ptr %i.u, i64 %i.bz
  %i.cc = getelementptr inbounds i8, ptr %i.v, i64 %i.bz
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !198, !range !203, !noundef !204
  %i.ce = load i8, ptr %i.cb, align 1, !tbaa !198, !range !203, !noundef !204
  %i.cf = or i8 %i.ce, %i.cd
  store i8 %i.cf, ptr %i.ca, align 1, !tbaa !198
  %i.cg = add nsw i64 %.05.i.i, 4                 ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cg, %i.h
  br i1 %exitcond.not.i.i.3, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_13CwiseBinaryOpINS0_20scalar_boolean_or_opEKS5_KNS_12ArrayWrapperIKNS_7ProductINS_12SparseMatrixIbLi0EiEENS_13MatrixWrapperIS5_EELi0EEEEEEEEENS0_9assign_opIbbEELi0EEELi3ELi0EE3runERSO_.exit, label %vec.epilog.scalar.ph, !llvm.loop !658

.lr.ph.i:                                         ; preds = %bb.e, %.lr.ph.i
  %.011.i = phi i64 [ %i.cp, %.lr.ph.i ], [ 0, %bb.e ] ; 4 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.o, i64 %.011.i
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !651
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.011.i
  %i.ck = load <2 x i64>, ptr %i.cj, align 16, !tbaa !67
  %i.cl = load ptr, ptr %i.d, align 8, !tbaa !653
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.011.i
  %i.cn = load <2 x i64>, ptr %i.cm, align 16, !tbaa !67
  %i.co = or <2 x i64> %i.cn, %i.ck
  store <2 x i64> %i.co, ptr %i.ch, align 16, !tbaa !67
  %i.cp = add nuw nsw i64 %.011.i, 16             ; 2 uses
  %i.cq = icmp slt i64 %i.cp, %i.r
  br i1 %i.cq, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !659

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS3_INS_13CwiseBinaryOpINS0_20scalar_boolean_or_opEKS5_KNS_12ArrayWrapperIKNS_7ProductINS_12SparseMatrixIbLi0EiEENS_13MatrixWrapperIS5_EELi0EEEEEEEEENS0_9assign_opIbbEELi0EEELi3ELi0EE3runERSO_.exit: ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %._crit_edge.i
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !197
  call void @free(ptr noundef %i.cs) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void

bb.f:                                             ; preds = %bb.d
  %i.ct = landingpad { ptr, i32 }
          cleanup
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !197
  call void @free(ptr noundef %i.cv) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %i.ct
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_12SparseMatrixIbLi0EiEENS_13MatrixWrapperINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEELi0EEELi7ENS_11SparseShapeENS_10DenseShapeEbbEC2ERKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i:
  store ptr null, ptr %0, align 8, !tbaa !648
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !650, !nonnull !204, !align !222
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !488  ; 4 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN5Eigen9DenseBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i, label %bb.a

bb.a:                                             ; preds = %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i
  %i.f = icmp sgt i64 %i.d, 0
  br i1 %i.f, label %bb.b, label %_ZN5Eigen9DenseBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.sink.split

bb.b:                                             ; preds = %bb.a
  %calloc = tail call ptr @calloc(i64 1, i64 %i.d) ; 3 uses
  %i.g = icmp eq ptr %calloc, null
  br i1 %i.g, label %.invoke.i, label %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.invoke.i:                                        ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !117
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.cont.i unwind label %.body

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.body:                                            ; preds = %.invoke.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !197
  tail call void @free(ptr noundef %i.j) #23
  resume { ptr, i32 } %i.i

.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i:     ; preds = %bb.b
  store ptr %calloc, ptr %i.a, align 8, !tbaa !197
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.sink.split

_ZN5Eigen9DenseBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.sink.split: ; preds = %bb.a, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sink.ph = phi ptr [ %calloc, %.lr.ph.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ null, %bb.a ]
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.d, ptr %i.k, align 8, !tbaa !195
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i

_ZN5Eigen9DenseBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.sink.split, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i
  %.sink = phi ptr [ null, %_ZN5Eigen8internal28check_rows_cols_for_overflowILin1EE3runIlEEvT_S4_.exit.i.i.i ], [ %.sink.ph, %_ZN5Eigen9DenseBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.sink.split ] ; 5 uses
  store ptr %.sink, ptr %0, align 8, !tbaa !648
  %i.l = load ptr, ptr %1, align 8, !tbaa !650, !nonnull !204, !align !222 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !240  ; 3 uses
  %i.o = icmp sgt i64 %i.n, 0
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.q = load ptr, ptr %i.p, align 8              ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.s = load ptr, ptr %i.r, align 8              ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  br i1 %i.o, label %.split.i.i.i.i.i, label %_ZN5Eigen8internal25generic_product_impl_baseINS_12SparseMatrixIbLi0EiEENS_13MatrixWrapperINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS0_20generic_product_implIS3_S7_NS_11SparseShapeENS_10DenseShapeELi7EEEE6evalToINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS3_RKS7_.exit

.split.i.i.i.i.i:                                 ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.y = load i64, ptr %i.x, align 8
  %i.z = inttoptr i64 %i.y to ptr
  %i.aa = icmp eq ptr %i.w, null
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !197 ; 2 uses
  br i1 %i.aa, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us.i.i.i.i.i, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i.i.i.i

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us.i.i.i.i.i: ; preds = %.split.i.i.i.i.i, %._crit_edge.us.us.i.i.i.i.i
  %.01728.us.us.i.i.i.i.i = phi i64 [ %i.bm, %._crit_edge.us.us.i.i.i.i.i ], [ 0, %.split.i.i.i.i.i ] ; 3 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 %.01728.us.us.i.i.i.i.i
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !198, !range !203, !noundef !204 ; 3 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.01728.us.us.i.i.i.i.i ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !56 ; 2 uses
  %i.ag = getelementptr i8, ptr %i.ae, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !56 ; 2 uses
  %i.ai = sext i32 %i.ah to i64                   ; 3 uses
  %i.aj = icmp slt i32 %i.af, %i.ah
  br i1 %i.aj, label %.lr.ph.us.us.preheader.i.i.i.i.i, label %._crit_edge.us.us.i.i.i.i.i

.lr.ph.us.us.preheader.i.i.i.i.i:                 ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us.i.i.i.i.i
  %i.ak = sext i32 %i.af to i64                   ; 6 uses
  %i.al = sub nsw i64 %i.ai, %i.ak
  %xtraiter = and i64 %i.al, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.us.i.i.i.i.i.prol.loopexit, label %.lr.ph.us.us.i.i.i.i.i.prol

.lr.ph.us.us.i.i.i.i.i.prol:                      ; preds = %.lr.ph.us.us.preheader.i.i.i.i.i
  %i.am = getelementptr inbounds i8, ptr %i.q, i64 %i.ak
  %i.an = load i8, ptr %i.am, align 1, !tbaa !198, !range !203, !noundef !204
  %2 = and i8 %i.an, %i.ad
  %i.ao = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.ak
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !56
  %i.aq = sext i32 %i.ap to i64
  %gep.us.us.i.i.i.i.i.prol = getelementptr i8, ptr %.sink, i64 %i.aq ; 2 uses
  %i.ar = load i8, ptr %gep.us.us.i.i.i.i.i.prol, align 1, !tbaa !198, !range !203, !noundef !204
  %i.as = or i8 %i.ar, %2
  store i8 %i.as, ptr %gep.us.us.i.i.i.i.i.prol, align 1, !tbaa !198
  %i.at = add nsw i64 %i.ak, 1
  br label %.lr.ph.us.us.i.i.i.i.i.prol.loopexit

.lr.ph.us.us.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.us.us.i.i.i.i.i.prol, %.lr.ph.us.us.preheader.i.i.i.i.i
  %.sroa.8.027.us.us.i.i.i.i.i.unr = phi i64 [ %i.ak, %.lr.ph.us.us.preheader.i.i.i.i.i ], [ %i.at, %.lr.ph.us.us.i.i.i.i.i.prol ]
  %i.au = add nsw i64 %i.ai, -1
  %i.av = icmp eq i64 %i.au, %i.ak
  br i1 %i.av, label %._crit_edge.us.us.i.i.i.i.i, label %.lr.ph.us.us.i.i.i.i.i

.lr.ph.us.us.i.i.i.i.i:                           ; preds = %.lr.ph.us.us.i.i.i.i.i.prol.loopexit, %.lr.ph.us.us.i.i.i.i.i
  %.sroa.8.027.us.us.i.i.i.i.i = phi i64 [ %i.bl, %.lr.ph.us.us.i.i.i.i.i ], [ %.sroa.8.027.us.us.i.i.i.i.i.unr, %.lr.ph.us.us.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.aw = getelementptr inbounds i8, ptr %i.q, i64 %.sroa.8.027.us.us.i.i.i.i.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !198, !range !203, !noundef !204
  %3 = and i8 %i.ax, %i.ad
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.sroa.8.027.us.us.i.i.i.i.i
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !56
  %i.ba = sext i32 %i.az to i64
  %gep.us.us.i.i.i.i.i = getelementptr i8, ptr %.sink, i64 %i.ba ; 2 uses
  %i.bb = load i8, ptr %gep.us.us.i.i.i.i.i, align 1, !tbaa !198, !range !203, !noundef !204
  %i.bc = or i8 %i.bb, %3
  store i8 %i.bc, ptr %gep.us.us.i.i.i.i.i, align 1, !tbaa !198
  %i.bd = add nsw i64 %.sroa.8.027.us.us.i.i.i.i.i, 1 ; 2 uses
  %i.be = getelementptr inbounds i8, ptr %i.q, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !tbaa !198, !range !203, !noundef !204
  %4 = and i8 %i.bf, %i.ad
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.bd
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !56
  %i.bi = sext i32 %i.bh to i64
  %gep.us.us.i.i.i.i.i.1 = getelementptr i8, ptr %.sink, i64 %i.bi ; 2 uses
  %i.bj = load i8, ptr %gep.us.us.i.i.i.i.i.1, align 1, !tbaa !198, !range !203, !noundef !204
  %i.bk = or i8 %i.bj, %4
  store i8 %i.bk, ptr %gep.us.us.i.i.i.i.i.1, align 1, !tbaa !198
  %i.bl = add nsw i64 %.sroa.8.027.us.us.i.i.i.i.i, 2 ; 2 uses
  %exitcond37.not.i.i.i.i.i.1 = icmp eq i64 %i.bl, %i.ai
  br i1 %exitcond37.not.i.i.i.i.i.1, label %._crit_edge.us.us.i.i.i.i.i, label %.lr.ph.us.us.i.i.i.i.i, !llvm.loop !660

._crit_edge.us.us.i.i.i.i.i:                      ; preds = %.lr.ph.us.us.i.i.i.i.i.prol.loopexit, %.lr.ph.us.us.i.i.i.i.i, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us.i.i.i.i.i
  %i.bm = add nuw nsw i64 %.01728.us.us.i.i.i.i.i, 1 ; 2 uses
  %exitcond38.not.i.i.i.i.i = icmp eq i64 %i.bm, %i.n
  br i1 %exitcond38.not.i.i.i.i.i, label %_ZN5Eigen8internal25generic_product_impl_baseINS_12SparseMatrixIbLi0EiEENS_13MatrixWrapperINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS0_20generic_product_implIS3_S7_NS_11SparseShapeENS_10DenseShapeELi7EEEE6evalToINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS3_RKS7_.exit, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us.i.i.i.i.i, !llvm.loop !661

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i.i.i.i: ; preds = %.split.i.i.i.i.i, %._crit_edge.i.i.i.i.i
  %.01728.i.i.i.i.i = phi i64 [ %i.bx, %._crit_edge.i.i.i.i.i ], [ 0, %.split.i.i.i.i.i ] ; 4 uses
  %i.bn = getelementptr i8, ptr %i.ab, i64 %.01728.i.i.i.i.i
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !198, !range !203, !noundef !204
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.01728.i.i.i.i.i
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !56
  %i.br = sext i32 %i.bq to i64                   ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.01728.i.i.i.i.i
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !56 ; 2 uses
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = add nsw i64 %i.bu, %i.br
  %i.bw = icmp sgt i32 %i.bt, 0
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i.i.i.i
  %i.bx = add nuw nsw i64 %.01728.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.bx, %i.n
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5Eigen8internal25generic_product_impl_baseINS_12SparseMatrixIbLi0EiEENS_13MatrixWrapperINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS0_20generic_product_implIS3_S7_NS_11SparseShapeENS_10DenseShapeELi7EEEE6evalToINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS3_RKS7_.exit, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i.i.i.i, !llvm.loop !661

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.8.027.i.i.i.i.i = phi i64 [ %i.cf, %.lr.ph.i.i.i.i.i ], [ %i.br, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i.i.i.i ] ; 3 uses
  %i.by = getelementptr inbounds i8, ptr %i.q, i64 %.sroa.8.027.i.i.i.i.i
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !198, !range !203, !noundef !204
  %5 = and i8 %i.bz, %i.bo
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.s, i64 %.sroa.8.027.i.i.i.i.i
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !56
  %i.cc = sext i32 %i.cb to i64
  %gep.i.i.i.i.i = getelementptr i8, ptr %.sink, i64 %i.cc ; 2 uses
  %i.cd = load i8, ptr %gep.i.i.i.i.i, align 1, !tbaa !198, !range !203, !noundef !204
  %i.ce = or i8 %i.cd, %5
  store i8 %i.ce, ptr %gep.i.i.i.i.i, align 1, !tbaa !198
  %i.cf = add nsw i64 %.sroa.8.027.i.i.i.i.i, 1   ; 2 uses
  %i.cg = icmp slt i64 %i.cf, %i.bv
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !660

_ZN5Eigen8internal25generic_product_impl_baseINS_12SparseMatrixIbLi0EiEENS_13MatrixWrapperINS_5ArrayIbLin1ELi1ELi0ELin1ELi1EEEEENS0_20generic_product_implIS3_S7_NS_11SparseShapeENS_10DenseShapeELi7EEEE6evalToINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEEEvRT_RKS3_RKS7_.exit: ; preds = %._crit_edge.i.i.i.i.i, %._crit_edge.us.us.i.i.i.i.i, %_ZN5Eigen9DenseBaseINS_6MatrixIbLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIbLi0EiEaSINS_9TransposeIS1_EEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #17 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix", align 8 ; 15 uses
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.467.0.copyload = load ptr, ptr %.sroa.467.0..sroa_idx, align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.a = getelementptr inbounds nuw i8, ptr %.sroa.467.0.copyload, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !240  ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.467.0.copyload, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !488  ; 13 uses
  store i8 0, ptr %2, align 8, !tbaa !238
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, i8 0, i64 64, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.b, ptr %i.f, align 8, !tbaa !488
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.i = shl i64 %i.d, 2                          ; 2 uses
  %i.j = add i64 %i.i, 4
  %calloc = tail call ptr @calloc(i64 1, i64 %i.j) ; 16 uses
  store ptr %calloc, ptr %i.h, align 8, !tbaa !244
  %.not6.i = icmp eq ptr %calloc, null
  br i1 %.not6.i, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !117
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIbiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.m) #23
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.e, align 8, !tbaa !240
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = ptrtoint ptr %calloc to i64              ; 2 uses
  %i.p = and i64 %i.o, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = lshr exact i64 %i.o, 2
  %i.r = sub nsw i64 0, %i.q
  %i.s = and i64 %i.r, 3
  %i.t = tail call i64 @llvm.smin.i64(i64 %i.s, i64 %i.d)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.t, %bb.e ], [ %i.d, %bb.d ] ; 8 uses
  %i.u = sub i64 %i.d, %.0.i.i.i.i.i.i.i.i.i.i.i  ; 3 uses
  %i.v = sdiv i64 %i.u, 4                         ; 2 uses
  %i.w = shl nsw i64 %i.v, 2                      ; 2 uses
  %i.x = add i64 %i.w, %.0.i.i.i.i.i.i.i.i.i.i.i  ; 2 uses
  %i.y = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.z = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %calloc, i8 0, i64 %i.z, i1 false), !tbaa !56
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.aa = icmp sgt i64 %i.u, 3
  br i1 %i.aa, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i:             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ab = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  %scevgep.i = getelementptr i8, ptr %calloc, i64 %i.ab
  %i.ac = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 4
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.x, i64 %i.ac)
  %i.ad = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.ae = add i64 %smax.i, %i.ad
  %i.af = shl i64 %i.ae, 2
  %i.ag = and i64 %i.af, -16
  %i.ah = add i64 %i.ag, 16
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.ah, i1 false), !tbaa !67
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ai = icmp slt i64 %i.x, %i.d
  br i1 %i.ai, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.aj = shl i64 %i.v, 4
  %i.ak = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.al = getelementptr i8, ptr %calloc, i64 %i.aj
  %scevgep1.i = getelementptr i8, ptr %i.al, i64 %i.ak
  %i.am = sub i64 %i.u, %i.w
  %i.an = shl nuw i64 %i.am, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i, i8 0, i64 %i.an, i1 false), !tbaa !56
  br label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ao = icmp sgt i64 %i.b, 0
  br i1 %i.ao, label %.lr.ph72, label %._crit_edge73

.lr.ph72:                                         ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.467.0.copyload, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !265 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.467.0.copyload, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !244 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.467.0.copyload, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !263 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIbLi0EiEEEENS0_13IteratorBasedEbE13InnerIteratorC2ERKS7_l.exit.us, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIbLi0EiEEEENS0_13IteratorBasedEbE13InnerIteratorC2ERKS7_l.exit

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIbLi0EiEEEENS0_13IteratorBasedEbE13InnerIteratorC2ERKS7_l.exit.us: ; preds = %.lr.ph72, %._crit_edge.us
  %.02771.us = phi i64 [ %i.cp, %._crit_edge.us ], [ 0, %.lr.ph72 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.02771.us ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !56 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !56 ; 2 uses
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = icmp slt i32 %i.ax, %i.az
  br i1 %i.bb, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIbLi0EiEEEENS0_13IteratorBasedEbE13InnerIteratorC2ERKS7_l.exit.us
  %i.bc = sext i32 %i.ax to i64                   ; 4 uses
  %i.bd = sub nsw i64 %i.ba, %i.bc
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader, %.lr.ph.us.prol
  %.sroa.755.070.us.prol = phi i64 [ %i.bk, %.lr.ph.us.prol ], [ %i.bc, %.lr.ph.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader ]
  %i.be = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.755.070.us.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !56
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !56
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !56
  %i.bk = add nsw i64 %.sroa.755.070.us.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !662

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.sroa.755.070.us.unr = phi i64 [ %i.bc, %.lr.ph.us.preheader ], [ %i.bk, %.lr.ph.us.prol ]
  %i.bl = sub nsw i64 %i.bc, %i.ba
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.sroa.755.070.us = phi i64 [ %i.co, %.lr.ph.us ], [ %.sroa.755.070.us.unr, %.lr.ph.us.prol.loopexit ] ; 5 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.755.070.us
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !56
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !56
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !56
  %i.bt = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.755.070.us
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !56
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !56
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !56
  %i.ca = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.755.070.us
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !56
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !56
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !56
  %i.ch = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.755.070.us
  %i.ci = getelementptr i8, ptr %i.ch, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !56
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !56
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !56
  %i.co = add nsw i64 %.sroa.755.070.us, 4        ; 2 uses
  %exitcond86.not.3 = icmp eq i64 %i.co, %i.ba
  br i1 %exitcond86.not.3, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !663

._crit_edge.us:                                   ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIbLi0EiEEEENS0_13IteratorBasedEbE13InnerIteratorC2ERKS7_l.exit.us
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_12SparseMatrixIbLi0ElEENS2_IbLi0EiEES3_EEvRKT_RKT0_RT1_b:bb.a
  %i.ff = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !691
  %i.fh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !692
  %i.fj = shl i64 %i.fi, 3
  %i.fk = add i64 %i.fj, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.fg, i8 0, i64 %i.fk, i1 false)
  %i.fl = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !697 ; 2 uses
  %.not.i = icmp eq ptr %i.fm, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIbLi0ElE7setZeroEv.exit, label %bb.w

bb.w:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEEEE16nonZerosEstimateEv.exit
  %i.fn = load i64, ptr %i.fh, align 8, !tbaa !692
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
  %i.fz = tail call i64 @llvm.umin.i64(i64 %i.fy, i64 200)
  %i.ga = mul nsw i64 %i.b, 100
  %i.gb = udiv i64 %i.ga, 139
  %.not322 = icmp eq i64 %i.b, 0
  br label %bb.ab

_ZN5Eigen12SparseMatrixIbLi0ElE7reserveEl.exit._crit_edge: ; preds = %_ZN5Eigen12SparseMatrixIbLi0ElE7reserveEl.exit, %_ZN5Eigen12SparseMatrixIbLi0ElE7reserveEl.exit.preheader
  %i.gc = load ptr, ptr %i.fl, align 8, !tbaa !697
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %bb.x, label %_ZN5Eigen12SparseMatrixIbLi0ElE8finalizeEv.exit

bb.x:                                             ; preds = %_ZN5Eigen12SparseMatrixIbLi0ElE7reserveEl.exit._crit_edge
  %i.ge = load i64, ptr %i.fe, align 8, !tbaa !704
  %i.gf = load i64, ptr %i.fh, align 8, !tbaa !692 ; 3 uses
  %i.gg = icmp sgt i64 %i.gf, -1
  br i1 %i.gg, label %.lr.ph.i, label %_ZN5Eigen12SparseMatrixIbLi0ElE8finalizeEv.exit

.lr.ph.i:                                         ; preds = %bb.x
  %i.gh = load ptr, ptr %i.ff, align 8, !tbaa !691 ; 2 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph.i
  %.08.i = phi i64 [ %i.gf, %.lr.ph.i ], [ %i.gl, %bb.z ] ; 4 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %.08.i
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !362
  %i.gk = icmp eq i64 %i.gj, 0
  br i1 %i.gk, label %bb.z, label %.critedge.i

bb.z:                                             ; preds = %bb.y
  %i.gl = add nsw i64 %.08.i, -1
  %i.gm = icmp sgt i64 %.08.i, 0
  br i1 %i.gm, label %bb.y, label %.critedge.i, !llvm.loop !716

.critedge.i:                                      ; preds = %bb.z, %bb.y
  %.0.lcssa.i = phi i64 [ -1, %bb.z ], [ %.08.i, %bb.y ] ; 2 uses
  %.not.not11.i = icmp slt i64 %.0.lcssa.i, %i.gf
  br i1 %.not.not11.i, label %.lr.ph13.i, label %_ZN5Eigen12SparseMatrixIbLi0ElE8finalizeEv.exit

.lr.ph13.i:                                       ; preds = %.critedge.i, %.lr.ph13.i
  %.1.in12.i = phi i64 [ %.1.i, %.lr.ph13.i ], [ %.0.lcssa.i, %.critedge.i ]
  %.1.i = add nsw i64 %.1.in12.i, 1               ; 3 uses
  %i.gn = getelementptr inbounds [8 x i8], ptr %i.gh, i64 %.1.i
  store i64 %i.ge, ptr %i.gn, align 8, !tbaa !362
  %i.go = load i64, ptr %i.fh, align 8, !tbaa !692
  %.not.not.i = icmp slt i64 %.1.i, %i.go
  br i1 %.not.not.i, label %.lr.ph13.i, label %_ZN5Eigen12SparseMatrixIbLi0ElE8finalizeEv.exit, !llvm.loop !717

.split:                                           ; preds = %bb.f
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit161.thread229

.split223:                                        ; preds = %bb.i
  %i.gq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.e, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit161.thread229, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit162

bb.aa:                                            ; preds = %_ZN5Eigen12SparseMatrixIbLi0ElE7setZeroEv.exit
  %i.gr = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ab:                                            ; preds = %.lr.ph267, %_ZN5Eigen12SparseMatrixIbLi0ElE7reserveEl.exit
  %.0107265 = phi i64 [ 0, %.lr.ph267 ], [ %i.nh, %_ZN5Eigen12SparseMatrixIbLi0ElE7reserveEl.exit ] ; 7 uses
  %i.gs = load ptr, ptr %i.ff, align 8, !tbaa !691
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %.0107265 ; 2 uses
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !362
  %i.gv = getelementptr i8, ptr %i.gt, i64 8
  store i64 %i.gu, ptr %i.gv, align 8, !tbaa !362
  %i.gw = load ptr, ptr %i.fr, align 8, !tbaa !264
  %i.gx = load ptr, ptr %i.fs, align 8, !tbaa !265
  %i.gy = load ptr, ptr %i.ft, align 8, !tbaa !244
  %i.gz = getelementptr inbounds nuw [4 x i8], ptr %i.gy, i64 %.0107265 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !56
  %i.hb = sext i32 %i.ha to i64                   ; 3 uses
  %i.hc = load ptr, ptr %i.bj, align 8, !tbaa !263 ; 2 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.he = getelementptr i8, ptr %i.gz, i64 4
  %i.hf = load i32, ptr %i.he, align 4, !tbaa !56
  %i.hg = sext i32 %i.hf to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.ad:                                            ; preds = %bb.ab
  %i.hh = getelementptr inbounds nuw [4 x i8], ptr %i.hc, i64 %.0107265
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !56
  %i.hj = sext i32 %i.hi to i64
  %i.hk = add nsw i64 %i.hj, %i.hb
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.ac, %bb.ad
  %.sink.i = phi i64 [ %i.hg, %bb.ac ], [ %i.hk, %bb.ad ] ; 2 uses
  %i.hl = icmp sgt i64 %.sink.i, %i.hb
  br i1 %i.hl, label %.lr.ph256, label %._crit_edge257.thread

.lr.ph256:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.hm = load ptr, ptr %i.fu, align 8, !tbaa !695
  %i.hn = load ptr, ptr %i.fv, align 8, !tbaa !696
  %i.ho = load ptr, ptr %i.fw, align 8, !tbaa !691
  %i.hp = load ptr, ptr %i.af, align 8, !tbaa !697 ; 2 uses
  %i.hq = icmp eq ptr %i.hp, null
  br label %bb.ae

._crit_edge257:                                   ; preds = %._crit_edge
  br i1 %3, label %bb.aq, label %.preheader237

._crit_edge257.thread:                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  br i1 %3, label %bb.aq, label %_ZN5Eigen12SparseMatrixIbLi0ElE7reserveEl.exit

.preheader237:                                    ; preds = %._crit_edge257
  %i.hr = icmp sgt i64 %.1.lcssa, 0
  br i1 %i.hr, label %.lr.ph260.a, label %_ZN5Eigen12SparseMatrixIbLi0ElE7reserveEl.exit

bb.ae:                                            ; preds = %.lr.ph256, %._crit_edge
  %.0106255 = phi i64 [ 0, %.lr.ph256 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %.sroa.8187.0254 = phi i64 [ %i.hb, %.lr.ph256 ], [ %i.if, %._crit_edge ] ; 3 uses
  %i.hs = getelementptr inbounds i8, ptr %i.gw, i64 %.sroa.8187.0254
  %i.ht = load i8, ptr %i.hs, align 1, !tbaa !198, !range !203, !noundef !204 ; 2 uses
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.gx, i64 %.sroa.8187.0254
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !56
  %i.hw = sext i32 %i.hv to i64                   ; 2 uses
  %i.hx = getelementptr inbounds [8 x i8], ptr %i.ho, i64 %i.hw ; 2 uses
  %i.hy = load i64, ptr %i.hx, align 8, !tbaa !362 ; 3 uses
  br i1 %i.hq, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.hz = getelementptr i8, ptr %i.hx, i64 8
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !362
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0ElEEE13InnerIteratorC2ERKS3_l.exit

bb.ag:                                            ; preds = %bb.ae
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.hp, i64 %i.hw
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !362
  %i.id = add nsw i64 %i.ic, %i.hy
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0ElEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0ElEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.af, %bb.ag
  %.sink.i152 = phi i64 [ %i.ia, %bb.af ], [ %i.id, %bb.ag ] ; 2 uses
  %i.ie = icmp slt i64 %i.hy, %.sink.i152
  br i1 %i.ie, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.aj, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0ElEEE13InnerIteratorC2ERKS3_l.exit
  %.1.lcssa = phi i64 [ %.0106255, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0ElEEE13InnerIteratorC2ERKS3_l.exit ], [ %.2, %bb.aj ] ; 4 uses
  %i.if = add nsw i64 %.sroa.8187.0254, 1         ; 2 uses
  %exitcond278.not.a = icmp eq i64 %i.if, %.sink.i
  br i1 %exitcond278.not.a, label %._crit_edge257, label %bb.ae, !llvm.loop !737

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0ElEEE13InnerIteratorC2ERKS3_l.exit, %bb.aj
  %.1253 = phi i64 [ %.2, %bb.aj ], [ %.0106255, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0ElEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %.sroa.8.0252 = phi i64 [ %i.it, %bb.aj ], [ %i.hy, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIbLi0ElEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.hn, i64 %.sroa.8.0252
  %i.ih = load i64, ptr %i.ig, align 8, !tbaa !362 ; 4 uses
  %i.ii = getelementptr inbounds i8, ptr %i.hm, i64 %.sroa.8.0252
  %i.ij = load i8, ptr %i.ii, align 1, !tbaa !198, !range !203, !noundef !204 ; 2 uses
  %i.ik = getelementptr inbounds i8, ptr %i.ab, i64 %i.ih ; 2 uses
  %i.il = load i8, ptr %i.ik, align 1, !tbaa !198, !range !203, !noundef !204
  %i.im = trunc nuw i8 %i.il to i1
  br i1 %i.im, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph
  store i8 1, ptr %i.ik, align 1, !tbaa !198
  %4 = and i8 %i.ij, %i.ht
  %i.in = getelementptr inbounds i8, ptr %i.ac, i64 %i.ih
  store i8 %4, ptr %i.in, align 1, !tbaa !198
  %i.io = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %.1253
  store i64 %i.ih, ptr %i.io, align 8, !tbaa !362
  %i.ip = add nsw i64 %.1253, 1
  br label %bb.aj

bb.ai:                                            ; preds = %.lr.ph
  %5 = and i8 %i.ij, %i.ht
  %i.iq = getelementptr inbounds i8, ptr %i.ac, i64 %i.ih ; 2 uses
  %i.ir = load i8, ptr %i.iq, align 1, !tbaa !198, !range !203, !noundef !204
  %i.is = or i8 %i.ir, %5
  store i8 %i.is, ptr %i.iq, align 1, !tbaa !198
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.2 = phi i64 [ %.1253, %bb.ai ], [ %i.ip, %bb.ah ] ; 2 uses
  %i.it = add nsw i64 %.sroa.8.0252, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.it, %.sink.i152
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !738

.lr.ph260.a:                                      ; preds = %.preheader237, %bb.ap
  %.0105259 = phi i64 [ %i.kd, %bb.ap ], [ 0, %.preheader237 ] ; 2 uses
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.0105259
  %i.iv = load i64, ptr %i.iu, align 8, !tbaa !362 ; 3 uses
  %i.iw = getelementptr inbounds i8, ptr %i.ac, i64 %i.iv
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !198, !range !203, !noundef !204
  %i.iy = load ptr, ptr %i.ff, align 8, !tbaa !691
  %i.iz = getelementptr [8 x i8], ptr %i.iy, i64 %.0107265
  %i.ja = getelementptr i8, ptr %i.iz, i64 8      ; 2 uses
  %i.jb = load i64, ptr %i.ja, align 8, !tbaa !362 ; 2 uses
  %i.jc = add nsw i64 %i.jb, 1
  store i64 %i.jc, ptr %i.ja, align 8, !tbaa !362
  %i.jd = load i64, ptr %i.fe, align 8, !tbaa !704 ; 4 uses
  %i.je = add nsw i64 %i.jd, 1                    ; 3 uses
  %i.jf = load i64, ptr %i.fx, align 8, !tbaa !719
  %.not = icmp sgt i64 %i.jf, %i.jd
  br i1 %.not, label %bb.ap, label %bb.ak

bb.ak:                                            ; preds = %.lr.ph260.a
  %i.jg = sitofp i64 %i.je to double
  %i.jh = fptosi double %i.jg to i64              ; 2 uses
  %i.ji = add nsw i64 %i.je, %i.jh                ; 5 uses
  %i.jj = icmp slt i64 %i.jh, 0
  br i1 %i.jj, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.jk = call ptr @__cxa_allocate_exception(i64 8) #23 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.jk, align 8, !tbaa !117
  invoke void @__cxa_throw(ptr nonnull %i.jk, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #25
          to label %.noexc163 unwind label %.loopexit.split-lp240

.noexc163:                                        ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.jl = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ji) #27
          to label %.noexc164 unwind label %.loopexit239 ; 3 uses

.noexc164:                                        ; preds = %bb.am
  %i.jm = icmp ugt i64 %i.ji, 2305843009213693951
  %i.jn = shl nuw i64 %i.ji, 3
  %i.jo = select i1 %i.jm, i64 -1, i64 %i.jn
  %i.jp = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.jo) #27
          to label %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i unwind label %_ZN5Eigen8internal12scoped_arrayIbED2Ev.exit9.i.i ; 2 uses

_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i: ; preds = %.noexc164
  %i.jq = load i64, ptr %i.fe, align 8, !tbaa !362
  %.sroa.speculated.i.i = call i64 @llvm.smin.i64(i64 %i.jq, i64 %i.ji) ; 3 uses
  %i.jr = icmp sgt i64 %.sroa.speculated.i.i, 0
  %.pre.i.i = load ptr, ptr %i.fp, align 8, !tbaa !565 ; 3 uses
  br i1 %i.jr, label %_ZN5Eigen8internal10smart_copyIbEEvPKT_S4_PS2_.exit.i.i, label %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i

_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i
  %.pre22.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !720
  br label %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal10smart_copyIbEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jl, ptr align 1 %.pre.i.i, i64 %.sroa.speculated.i.i, i1 false)
  %.idx.i.i = shl nuw nsw i64 %.sroa.speculated.i.i, 3
  %i.js = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !696 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.jp, ptr align 8 %i.js, i64 %.idx.i.i, i1 false)
  br label %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i

_ZN5Eigen8internal12scoped_arrayIbED2Ev.exit9.i.i: ; preds = %.noexc164
  %i.jt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdaPv(ptr noundef nonnull %i.jl) #26
  br label %.body

_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i: ; preds = %_ZN5Eigen8internal10smart_copyIbEEvPKT_S4_PS2_.exit.i.i, %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i
  %i.ju = phi ptr [ %.pre22.i.i, %_ZN5Eigen8internal12scoped_arrayIlEC2El.exit._ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit_crit_edge.i.i ], [ %i.js, %_ZN5Eigen8internal10smart_copyIbEEvPKT_S4_PS2_.exit.i.i ] ; 2 uses
  store ptr %i.jl, ptr %i.fp, align 8, !tbaa !565
  store ptr %i.jp, ptr %.phi.trans.insert.i.i, align 8, !tbaa !720
  store i64 %i.ji, ptr %i.fx, align 8, !tbaa !719
  %i.jv = icmp eq ptr %i.ju, null
  br i1 %i.jv, label %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i, label %bb.an

bb.an:                                            ; preds = %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i
  call void @_ZdaPv(ptr noundef nonnull %i.ju) #26
  br label %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i

_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i: ; preds = %bb.an, %_ZN5Eigen8internal10smart_copyIlEEvPKT_S4_PS2_.exit.i.i
  %i.jw = icmp eq ptr %.pre.i.i, null
  br i1 %i.jw, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i
  call void @_ZdaPv(ptr noundef nonnull %.pre.i.i) #26
  br label %bb.ap

bb.ap:                                            ; preds = %.lr.ph260.a, %_ZN5Eigen8internal12scoped_arrayIlED2Ev.exit8.i.i, %bb.ao
  store i64 %i.je, ptr %i.fe, align 8, !tbaa !704
  %i.jx = load ptr, ptr %i.fp, align 8, !tbaa !695 ; 2 uses
  %i.jy = getelementptr inbounds i8, ptr %i.jx, i64 %i.jd
  store i8 0, ptr %i.jy, align 1, !tbaa !198
  %i.jz = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !696
  %i.ka = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.jd
  store i64 %i.iv, ptr %i.ka, align 8, !tbaa !362
  %i.kb = getelementptr inbounds i8, ptr %i.jx, i64 %i.jb
  store i8 %i.ix, ptr %i.kb, align 1, !tbaa !198
  %i.kc = getelementptr inbounds i8, ptr %i.ab, i64 %i.iv
  store i8 0, ptr %i.kc, align 1, !tbaa !198
  %i.kd = add nuw nsw i64 %.0105259, 1            ; 2 uses
  %exitcond279.not.a = icmp eq i64 %i.kd, %.1.lcssa
  br i1 %exitcond279.not.a, label %_ZN5Eigen12SparseMatrixIbLi0ElE7reserveEl.exit, label %.lr.ph260.a, !llvm.loop !739

.loopexit239:                                     ; preds = %bb.am
  %lpad.loopexit241 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp240:                            ; preds = %bb.al
  %lpad.loopexit.split-lp242 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.aq:                                            ; preds = %._crit_edge257.thread, %._crit_edge257
  %.0106.lcssa309 = phi i64 [ 0, %._crit_edge257.thread ], [ %.1.lcssa, %._crit_edge257 ] ; 8 uses
  %or.cond = icmp slt i64 %.0106.lcssa309, %i.fz
  br i1 %or.cond, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ke = trunc i64 %.0106.lcssa309 to i32        ; 2 uses
  %i.kf = lshr i32 %i.ke, 1
  %i.kg = or i32 %i.kf, %i.ke                     ; 2 uses
  %i.kh = lshr i32 %i.kg, 2
  %i.ki = or i32 %i.kh, %i.kg                     ; 2 uses
  %i.kj = lshr i32 %i.ki, 4
  %i.kk = or i32 %i.kj, %i.ki                     ; 2 uses
  %i.kl = lshr i32 %i.kk, 8
  %i.km = or i32 %i.kl, %i.kk                     ; 2 uses
  %i.kn = lshr i32 %i.km, 16
  %i.ko = or i32 %i.kn, %i.km
  %i.kp = mul i32 %i.ko, 130329821
  %i.kq = lshr i32 %i.kp, 27
  %i.kr = zext nneg i32 %i.kq to i64
  %i.ks = getelementptr inbounds nuw [4 x i8], ptr @_ZZN5Eigen6numext4log2EiE5table, i64 %i.kr
  %i.kt = load i32, ptr %i.ks, align 4, !tbaa !56
  %i.ku = sext i32 %i.kt to i64
  %i.kv = mul nsw i64 %.0106.lcssa309, %i.ku
  %i.kw = icmp slt i64 %i.kv, %i.gb
  br i1 %i.kw, label %bb.as, label %.preheader

.preheader:                                       ; preds = %bb.ar
  br i1 %.not322, label %_ZN5Eigen12SparseMatrixIbLi0ElE7reserveEl.exit, label %.lr.ph262

bb.as:                                            ; preds = %bb.aq, %bb.ar
  %i.kx = icmp sgt i64 %.0106.lcssa309, 1
  br i1 %i.kx, label %bb.at, label %_ZSt4sortIPlEvT_S1_.exit

bb.at:                                            ; preds = %bb.as
  %.idx = shl nuw nsw i64 %.0106.lcssa309, 3
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx ; 2 uses
  %i.kz = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.0106.lcssa309, i1 true)
  %i.la = shl nuw nsw i64 %i.kz, 1
  %i.lb = xor i64 %i.la, 126
  invoke void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ky, i64 noundef %i.lb)
          to label %.noexc154 unwind label %bb.au

.noexc154:                                        ; preds = %bb.at
  invoke void @_ZSt22__final_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ky)
          to label %.lr.ph264.preheader unwind label %bb.au

bb.au:                                            ; preds = %.noexc154, %bb.at
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZSt4sortIPlEvT_S1_.exit:                         ; preds = %bb.as
  %i.ld = icmp eq i64 %.0106.lcssa309, 1
  br i1 %i.ld, label %.lr.ph264.preheader, label %_ZN5Eigen12SparseMatrixIbLi0ElE7reserveEl.exit

.lr.ph264.preheader:                              ; preds = %.noexc154, %_ZSt4sortIPlEvT_S1_.exit
  br label %.lr.ph264

.lr.ph264:                                        ; preds = %.lr.ph264.preheader, %bb.ba
  %.0104263 = phi i64 [ %i.mn, %bb.ba ], [ 0, %.lr.ph264.preheader ] ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.0104263
  %i.lf = load i64, ptr %i.le, align 8, !tbaa !362 ; 3 uses
  %i.lg = getelementptr inbounds i8, ptr %i.ac, i64 %i.lf
  %i.lh = load i8, ptr %i.lg, align 1, !tbaa !198, !range !203, !noundef !204
  %i.li = load ptr, ptr %i.ff, align 8, !tbaa !691
  %i.lj = getelementptr [8 x i8], ptr %i.li, i64 %.0107265
  %i.lk = getelementptr i8, ptr %i.lj, i64 8      ; 2 uses
  %i.ll = load i64, ptr %i.lk, align 8, !tbaa !362 ; 2 uses
  %i.lm = add nsw i64 %i.ll, 1
  store i64 %i.lm, ptr %i.lk, align 8, !tbaa !362
  %i.ln = load i64, ptr %i.fe, align 8, !tbaa !704 ; 4 uses
  %i.lo = add nsw i64 %i.ln, 1                    ; 3 uses
  %i.lp = load i64, ptr %i.fx, align 8, !tbaa !719
  %.not234 = icmp sgt i64 %i.lp, %i.ln
  br i1 %.not234, label %bb.ba, label %bb.av
end_hunk_3
