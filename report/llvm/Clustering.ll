Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/Clustering?download=true
inline.NumInlined: 2678
inline.NumDeleted: 1488
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 17
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS_8ArrayRefImEE:bb.a
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !47
  %i.hz = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.0, i64 %.01213.i.i.i56.i.i.i.i.i
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !47
  %i.ic = fsub double %i.hy, %i.ib                ; 2 uses
  %i.id = call double @llvm.fmuladd.f64(double %i.ic, double %i.ic, double %.014.i.i.i55.i.i.i.i.i)
  %i.ie = or disjoint i64 %.01213.i.i.i56.i.i.i.i.i, 1 ; 2 uses
  %i.if = getelementptr inbounds nuw [104 x i8], ptr %i.hn, i64 %i.ie
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !47
  %i.ii = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.0, i64 %i.ie
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 32
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !47
  %i.il = fsub double %i.ih, %i.ik                ; 2 uses
  %i.im = call double @llvm.fmuladd.f64(double %i.il, double %i.il, double %i.id) ; 3 uses
  %i.in = add nuw i64 %.01213.i.i.i56.i.i.i.i.i, 2 ; 2 uses
  %niter196.next.1 = add i64 %niter196, 2         ; 2 uses
  %niter196.ncmp.1 = icmp eq i64 %niter196.next.1, %unroll_iter195
  br i1 %niter196.ncmp.1, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit60.i.i.i.i.i.unr-lcssa", label %bb.i, !llvm.loop !61

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit60.i.i.i.i.i.unr-lcssa": ; preds = %bb.i
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  br i1 %lcmp.mod192.not, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit60.i.i.i.i.i", label %.epil.preheader190

.epil.preheader190:                               ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit60.i.i.i.i.i.unr-lcssa", %.lr.ph.i.i.i54.i.i.i.i.i
  %.014.i.i.i55.i.i.i.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i.i54.i.i.i.i.i ], [ %i.im, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit60.i.i.i.i.i.unr-lcssa" ]
  %.01213.i.i.i56.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i54.i.i.i.i.i ], [ %i.in, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit60.i.i.i.i.i.unr-lcssa" ] ; 2 uses
  %lcmp.mod194 = trunc i64 %i.hu to i1
  call void @llvm.assume(i1 %lcmp.mod194)
  %i.io = getelementptr inbounds nuw [104 x i8], ptr %i.hn, i64 %.01213.i.i.i56.i.i.i.i.i.epil.init
  %i.ip = getelementptr inbounds nuw i8, ptr %i.io, i64 32
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !47
  %i.ir = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.0, i64 %.01213.i.i.i56.i.i.i.i.i.epil.init
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 32
  %i.it = load double, ptr %i.is, align 8, !tbaa !47
  %i.iu = fsub double %i.iq, %i.it                ; 2 uses
  %i.iv = call double @llvm.fmuladd.f64(double %i.iu, double %i.iu, double %.014.i.i.i55.i.i.i.i.i.epil.init)
  br label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit60.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit60.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit60.i.i.i.i.i.unr-lcssa", %.epil.preheader190
  %.lcssa155 = phi double [ %i.im, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit60.i.i.i.i.i.unr-lcssa" ], [ %i.iv, %.epil.preheader190 ]
  %i.iw = fcmp ugt double %.lcssa155, %i.bb
  br i1 %i.iw, label %"_ZN4llvm6all_ofIRNS_8ArrayRefImEEZNKS_8exegesis19BenchmarkClustering16areAllNeighboursES2_E3$_0EEbOT_T0_.exit", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit60.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit60.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit60.i.i.i.i.i", %bb.h
  %i.ix = getelementptr inbounds nuw i8, ptr %.029.lcssa.i.i.i.i.i, i64 8
  br label %bb.j

bb.j:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit60.thread.i.i.i.i.i", %._crit_edge._crit_edge.i.i.i.i.i
  %i.iy = phi ptr [ %i.hk, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit60.thread.i.i.i.i.i" ], [ %.pre112.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ] ; 2 uses
  %.1.i.i.i.i.i = phi ptr [ %i.ix, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit60.thread.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i.i ] ; 3 uses
  %.1.val.i.i.i.i.i = load i64, ptr %.1.i.i.i.i.i, align 8, !tbaa !63
  %i.iz = getelementptr inbounds nuw [336 x i8], ptr %i.iy, i64 %.1.val.i.i.i.i.i ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 224
  %i.jb = load ptr, ptr %i.ja, align 8, !tbaa !42 ; 5 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 232
  %i.jd = load ptr, ptr %i.jc, align 8, !tbaa !42 ; 2 uses
  %i.je = icmp eq ptr %i.jb, %i.jd
  br i1 %i.je, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit67.thread.i.i.i.i.i", label %.lr.ph.i.i.i61.i.i.i.i.i

.lr.ph.i.i.i61.i.i.i.i.i:                         ; preds = %bb.j
  %i.jf = ptrtoint ptr %i.jd to i64
  %i.jg = ptrtoint ptr %i.jb to i64
  %i.jh = sub i64 %i.jf, %i.jg                    ; 2 uses
  %i.ji = sdiv exact i64 %i.jh, 104               ; 3 uses
  %xtraiter198 = and i64 %i.ji, 1
  %i.jj = icmp eq i64 %i.jh, 104
  br i1 %i.jj, label %.epil.preheader197, label %.lr.ph.i.i.i61.i.i.i.i.i.new

.lr.ph.i.i.i61.i.i.i.i.i.new:                     ; preds = %.lr.ph.i.i.i61.i.i.i.i.i
  %unroll_iter202 = and i64 %i.ji, -2
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %.lr.ph.i.i.i61.i.i.i.i.i.new
  %.014.i.i.i62.i.i.i.i.i = phi double [ 0.000000e+00, %.lr.ph.i.i.i61.i.i.i.i.i.new ], [ %i.ka, %bb.k ]
  %.01213.i.i.i63.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i61.i.i.i.i.i.new ], [ %i.kb, %bb.k ] ; 4 uses
  %niter203 = phi i64 [ 0, %.lr.ph.i.i.i61.i.i.i.i.i.new ], [ %niter203.next.1, %bb.k ]
  %i.jk = getelementptr inbounds nuw [104 x i8], ptr %i.jb, i64 %.01213.i.i.i63.i.i.i.i.i
  %i.jl = getelementptr inbounds nuw i8, ptr %i.jk, i64 32
  %i.jm = load double, ptr %i.jl, align 8, !tbaa !47
  %i.jn = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.0, i64 %.01213.i.i.i63.i.i.i.i.i
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 32
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !47
  %i.jq = fsub double %i.jm, %i.jp                ; 2 uses
  %i.jr = call double @llvm.fmuladd.f64(double %i.jq, double %i.jq, double %.014.i.i.i62.i.i.i.i.i)
  %i.js = or disjoint i64 %.01213.i.i.i63.i.i.i.i.i, 1 ; 2 uses
  %i.jt = getelementptr inbounds nuw [104 x i8], ptr %i.jb, i64 %i.js
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 32
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !47
  %i.jw = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.0, i64 %i.js
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !47
  %i.jz = fsub double %i.jv, %i.jy                ; 2 uses
  %i.ka = call double @llvm.fmuladd.f64(double %i.jz, double %i.jz, double %i.jr) ; 3 uses
  %i.kb = add nuw i64 %.01213.i.i.i63.i.i.i.i.i, 2 ; 2 uses
  %niter203.next.1 = add i64 %niter203, 2         ; 2 uses
  %niter203.ncmp.1 = icmp eq i64 %niter203.next.1, %unroll_iter202
  br i1 %niter203.ncmp.1, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit67.i.i.i.i.i.unr-lcssa", label %bb.k, !llvm.loop !61

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit67.i.i.i.i.i.unr-lcssa": ; preds = %bb.k
  %lcmp.mod199.not = icmp eq i64 %xtraiter198, 0
  br i1 %lcmp.mod199.not, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit67.i.i.i.i.i", label %.epil.preheader197

.epil.preheader197:                               ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit67.i.i.i.i.i.unr-lcssa", %.lr.ph.i.i.i61.i.i.i.i.i
  %.014.i.i.i62.i.i.i.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i.i61.i.i.i.i.i ], [ %i.ka, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit67.i.i.i.i.i.unr-lcssa" ]
  %.01213.i.i.i63.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i61.i.i.i.i.i ], [ %i.kb, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit67.i.i.i.i.i.unr-lcssa" ] ; 2 uses
  %lcmp.mod201 = trunc i64 %i.ji to i1
  call void @llvm.assume(i1 %lcmp.mod201)
  %i.kc = getelementptr inbounds nuw [104 x i8], ptr %i.jb, i64 %.01213.i.i.i63.i.i.i.i.i.epil.init
  %i.kd = getelementptr inbounds nuw i8, ptr %i.kc, i64 32
  %i.ke = load double, ptr %i.kd, align 8, !tbaa !47
  %i.kf = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.0, i64 %.01213.i.i.i63.i.i.i.i.i.epil.init
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kf, i64 32
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !47
  %i.ki = fsub double %i.ke, %i.kh                ; 2 uses
  %i.kj = call double @llvm.fmuladd.f64(double %i.ki, double %i.ki, double %.014.i.i.i62.i.i.i.i.i.epil.init)
  br label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit67.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit67.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit67.i.i.i.i.i.unr-lcssa", %.epil.preheader197
  %.lcssa154 = phi double [ %i.ka, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit67.i.i.i.i.i.unr-lcssa" ], [ %i.kj, %.epil.preheader197 ]
  %i.kk = fcmp ugt double %.lcssa154, %i.bb
  br i1 %i.kk, label %"_ZN4llvm6all_ofIRNS_8ArrayRefImEEZNKS_8exegesis19BenchmarkClustering16areAllNeighboursES2_E3$_0EEbOT_T0_.exit", label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit67.thread.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit67.thread.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit67.i.i.i.i.i", %bb.j
  %i.kl = getelementptr inbounds nuw i8, ptr %.1.i.i.i.i.i, i64 8
  br label %bb.l

bb.l:                                             ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit67.thread.i.i.i.i.i", %._crit_edge._crit_edge113.i.i.i.i.i
  %i.km = phi ptr [ %i.iy, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit67.thread.i.i.i.i.i" ], [ %.pre116.i.i.i.i.i, %._crit_edge._crit_edge113.i.i.i.i.i ]
  %.2.i.i.i.i.i = phi ptr [ %i.kl, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit67.thread.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i, %._crit_edge._crit_edge113.i.i.i.i.i ] ; 2 uses
  %.2.val.i.i.i.i.i = load i64, ptr %.2.i.i.i.i.i, align 8, !tbaa !63
  %i.kn = getelementptr inbounds nuw [336 x i8], ptr %i.km, i64 %.2.val.i.i.i.i.i ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 224
  %i.kp = load ptr, ptr %i.ko, align 8, !tbaa !42 ; 5 uses
  %i.kq = getelementptr inbounds nuw i8, ptr %i.kn, i64 232
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !42 ; 2 uses
  %i.ks = icmp eq ptr %i.kp, %i.kr
  br i1 %i.ks, label %"_ZN4llvm6all_ofIRNS_8ArrayRefImEEZNKS_8exegesis19BenchmarkClustering16areAllNeighboursES2_E3$_0EEbOT_T0_.exit", label %.lr.ph.i.i.i68.i.i.i.i.i

.lr.ph.i.i.i68.i.i.i.i.i:                         ; preds = %bb.l
  %i.kt = ptrtoint ptr %i.kr to i64
  %i.ku = ptrtoint ptr %i.kp to i64
  %i.kv = sub i64 %i.kt, %i.ku                    ; 2 uses
  %i.kw = sdiv exact i64 %i.kv, 104               ; 3 uses
  %xtraiter205 = and i64 %i.kw, 1
  %i.kx = icmp eq i64 %i.kv, 104
  br i1 %i.kx, label %.epil.preheader204, label %.lr.ph.i.i.i68.i.i.i.i.i.new

.lr.ph.i.i.i68.i.i.i.i.i.new:                     ; preds = %.lr.ph.i.i.i68.i.i.i.i.i
  %unroll_iter209 = and i64 %i.kw, -2
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.lr.ph.i.i.i68.i.i.i.i.i.new
  %.014.i.i.i69.i.i.i.i.i = phi double [ 0.000000e+00, %.lr.ph.i.i.i68.i.i.i.i.i.new ], [ %i.lo, %bb.m ]
  %.01213.i.i.i70.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i68.i.i.i.i.i.new ], [ %i.lp, %bb.m ] ; 4 uses
  %niter210 = phi i64 [ 0, %.lr.ph.i.i.i68.i.i.i.i.i.new ], [ %niter210.next.1, %bb.m ]
  %i.ky = getelementptr inbounds nuw [104 x i8], ptr %i.kp, i64 %.01213.i.i.i70.i.i.i.i.i
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  %i.la = load double, ptr %i.kz, align 8, !tbaa !47
  %i.lb = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.0, i64 %.01213.i.i.i70.i.i.i.i.i
  %i.lc = getelementptr inbounds nuw i8, ptr %i.lb, i64 32
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !47
  %i.le = fsub double %i.la, %i.ld                ; 2 uses
  %i.lf = call double @llvm.fmuladd.f64(double %i.le, double %i.le, double %.014.i.i.i69.i.i.i.i.i)
  %i.lg = or disjoint i64 %.01213.i.i.i70.i.i.i.i.i, 1 ; 2 uses
  %i.lh = getelementptr inbounds nuw [104 x i8], ptr %i.kp, i64 %i.lg
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 32
  %i.lj = load double, ptr %i.li, align 8, !tbaa !47
  %i.lk = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.0, i64 %i.lg
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 32
  %i.lm = load double, ptr %i.ll, align 8, !tbaa !47
  %i.ln = fsub double %i.lj, %i.lm                ; 2 uses
  %i.lo = call double @llvm.fmuladd.f64(double %i.ln, double %i.ln, double %i.lf) ; 3 uses
  %i.lp = add nuw i64 %.01213.i.i.i70.i.i.i.i.i, 2 ; 2 uses
  %niter210.next.1 = add i64 %niter210, 2         ; 2 uses
  %niter210.ncmp.1 = icmp eq i64 %niter210.next.1, %unroll_iter209
  br i1 %niter210.ncmp.1, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit74.i.i.i.i.i.unr-lcssa", label %bb.m, !llvm.loop !61

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit74.i.i.i.i.i.unr-lcssa": ; preds = %bb.m
  %lcmp.mod206.not = icmp eq i64 %xtraiter205, 0
  br i1 %lcmp.mod206.not, label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit74.i.i.i.i.i", label %.epil.preheader204

.epil.preheader204:                               ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit74.i.i.i.i.i.unr-lcssa", %.lr.ph.i.i.i68.i.i.i.i.i
  %.014.i.i.i69.i.i.i.i.i.epil.init = phi double [ 0.000000e+00, %.lr.ph.i.i.i68.i.i.i.i.i ], [ %i.lo, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit74.i.i.i.i.i.unr-lcssa" ]
  %.01213.i.i.i70.i.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i68.i.i.i.i.i ], [ %i.lp, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit74.i.i.i.i.i.unr-lcssa" ] ; 2 uses
  %lcmp.mod208 = trunc i64 %i.kw to i1
  call void @llvm.assume(i1 %lcmp.mod208)
  %i.lq = getelementptr inbounds nuw [104 x i8], ptr %i.kp, i64 %.01213.i.i.i70.i.i.i.i.i.epil.init
  %i.lr = getelementptr inbounds nuw i8, ptr %i.lq, i64 32
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !47
  %i.lt = getelementptr inbounds nuw [104 x i8], ptr %.sroa.0.0, i64 %.01213.i.i.i70.i.i.i.i.i.epil.init
  %i.lu = getelementptr inbounds nuw i8, ptr %i.lt, i64 32
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !47
  %i.lw = fsub double %i.ls, %i.lv                ; 2 uses
  %i.lx = call double @llvm.fmuladd.f64(double %i.lw, double %i.lw, double %.014.i.i.i69.i.i.i.i.i.epil.init)
  br label %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit74.i.i.i.i.i"

"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit74.i.i.i.i.i": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit74.i.i.i.i.i.unr-lcssa", %.epil.preheader204
  %.lcssa = phi double [ %i.lo, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit74.i.i.i.i.i.unr-lcssa" ], [ %i.lx, %.epil.preheader204 ]
  %i.ly = fcmp ugt double %.lcssa, %i.bb
  %spec.select = select i1 %i.ly, ptr %.2.i.i.i.i.i, ptr %i.a
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefImEEZNKS_8exegesis19BenchmarkClustering16areAllNeighboursES2_E3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefImEEZNKS_8exegesis19BenchmarkClustering16areAllNeighboursES2_E3$_0EEbOT_T0_.exit.loopexit.split.loop.exit": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit39.i.i.i.i.i"
  %i.lz = getelementptr inbounds nuw i8, ptr %.02998.i.i.i.i.i, i64 8
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefImEEZNKS_8exegesis19BenchmarkClustering16areAllNeighboursES2_E3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefImEEZNKS_8exegesis19BenchmarkClustering16areAllNeighboursES2_E3$_0EEbOT_T0_.exit.loopexit.split.loop.exit135": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit46.i.i.i.i.i"
  %i.ma = getelementptr inbounds nuw i8, ptr %.02998.i.i.i.i.i, i64 16
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefImEEZNKS_8exegesis19BenchmarkClustering16areAllNeighboursES2_E3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefImEEZNKS_8exegesis19BenchmarkClustering16areAllNeighboursES2_E3$_0EEbOT_T0_.exit.loopexit.split.loop.exit137": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit53.i.i.i.i.i"
  %i.mb = getelementptr inbounds nuw i8, ptr %.02998.i.i.i.i.i, i64 24
  br label %"_ZN4llvm6all_ofIRNS_8ArrayRefImEEZNKS_8exegesis19BenchmarkClustering16areAllNeighboursES2_E3$_0EEbOT_T0_.exit"

"_ZN4llvm6all_ofIRNS_8ArrayRefImEEZNKS_8exegesis19BenchmarkClustering16areAllNeighboursES2_E3$_0EEbOT_T0_.exit": ; preds = %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit74.i.i.i.i.i", %"_ZN4llvm6all_ofIRNS_8ArrayRefImEEZNKS_8exegesis19BenchmarkClustering16areAllNeighboursES2_E3$_0EEbOT_T0_.exit.loopexit.split.loop.exit", %"_ZN4llvm6all_ofIRNS_8ArrayRefImEEZNKS_8exegesis19BenchmarkClustering16areAllNeighboursES2_E3$_0EEbOT_T0_.exit.loopexit.split.loop.exit135", %"_ZN4llvm6all_ofIRNS_8ArrayRefImEEZNKS_8exegesis19BenchmarkClustering16areAllNeighboursES2_E3$_0EEbOT_T0_.exit.loopexit.split.loop.exit137", %._crit_edge.i.i.i.i.i, %bb.l, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit60.i.i.i.i.i", %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit67.i.i.i.i.i"
  %.028.i.i.i.i.i = phi ptr [ %.1.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit67.i.i.i.i.i" ], [ %i.ma, %"_ZN4llvm6all_ofIRNS_8ArrayRefImEEZNKS_8exegesis19BenchmarkClustering16areAllNeighboursES2_E3$_0EEbOT_T0_.exit.loopexit.split.loop.exit135" ], [ %spec.select, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit74.i.i.i.i.i" ], [ %.029.lcssa.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit60.i.i.i.i.i" ], [ %i.a, %._crit_edge.i.i.i.i.i ], [ %i.a, %bb.l ], [ %i.mb, %"_ZN4llvm6all_ofIRNS_8ArrayRefImEEZNKS_8exegesis19BenchmarkClustering16areAllNeighboursES2_E3$_0EEbOT_T0_.exit.loopexit.split.loop.exit137" ], [ %i.lz, %"_ZN4llvm6all_ofIRNS_8ArrayRefImEEZNKS_8exegesis19BenchmarkClustering16areAllNeighboursES2_E3$_0EEbOT_T0_.exit.loopexit.split.loop.exit" ], [ %.02998.i.i.i.i.i, %"_ZN9__gnu_cxx5__ops12_Iter_negateIZNK4llvm8exegesis19BenchmarkClustering16areAllNeighboursENS2_8ArrayRefImEEE3$_0EclIPKmEEbT_.exit.i.i.i.i.i" ] ; 2 uses
  %.not4.i.i.i = icmp eq ptr %.sroa.0.0, %.sroa.13.0
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN4llvm6all_ofIRNS_8ArrayRefImEEZNKS_8exegesis19BenchmarkClustering16areAllNeighboursES2_E3$_0EEbOT_T0_.exit", %_ZSt8_DestroyIN4llvm8exegesis16BenchmarkMeasureEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.mk, %_ZSt8_DestroyIN4llvm8exegesis16BenchmarkMeasureEEvPT_.exit.i.i.i ], [ %.sroa.0.0, %"_ZN4llvm6all_ofIRNS_8ArrayRefImEEZNKS_8exegesis19BenchmarkClustering16areAllNeighboursES2_E3$_0EEbOT_T0_.exit" ] ; 5 uses
  %i.mc = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.md = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 72
  %i.me = load ptr, ptr %i.md, align 8, !tbaa !74
  call void @_ZNSt8_Rb_treeIN4llvm8exegesis15ValidationEventESt4pairIKS2_lESt10_Select1stIS5_ESt4lessIS2_ESaIS5_EE8_M_eraseEPSt13_Rb_tree_nodeIS5_E(ptr noundef nonnull align 8 dereferenceable(48) %i.mc, ptr noundef %i.me)
  %i.mf = load ptr, ptr %.05.i.i.i, align 8, !tbaa !94 ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.mh = icmp eq ptr %i.mf, %i.mg
  br i1 %i.mh, label %_ZSt8_DestroyIN4llvm8exegesis16BenchmarkMeasureEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.mi = load i64, ptr %i.mg, align 8, !tbaa !95
  %i.mj = add i64 %i.mi, 1
  call void @_ZdlPvm(ptr noundef %i.mf, i64 noundef %i.mj) #22
  br label %_ZSt8_DestroyIN4llvm8exegesis16BenchmarkMeasureEEvPT_.exit.i.i.i

_ZSt8_DestroyIN4llvm8exegesis16BenchmarkMeasureEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.mk = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 104 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.mk, %.sroa.13.0
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i, label %.lr.ph.i.i.i, !llvm.loop !96

_ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i: ; preds = %_ZSt8_DestroyIN4llvm8exegesis16BenchmarkMeasureEEvPT_.exit.i.i.i, %"_ZN4llvm6all_ofIRNS_8ArrayRefImEEZNKS_8exegesis19BenchmarkClustering16areAllNeighboursES2_E3$_0EEbOT_T0_.exit"
  %.not.i.i1.i = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN4llvm8exegesis16BenchmarkMeasureESaIS2_EED2Ev.exit, label %bb.n

bb.n:                                             ; preds = %_ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i
  %i.ml = ptrtoint ptr %.sroa.15.0 to i64
  %i.mm = ptrtoint ptr %.sroa.0.0 to i64
  %i.mn = sub i64 %i.ml, %i.mm
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0.0, i64 noundef %i.mn) #22
  br label %_ZNSt6vectorIN4llvm8exegesis16BenchmarkMeasureESaIS2_EED2Ev.exit

_ZNSt6vectorIN4llvm8exegesis16BenchmarkMeasureESaIS2_EED2Ev.exit: ; preds = %bb.a, %_ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i, %bb.n
  %i.mo = phi ptr [ %i.c, %bb.n ], [ %i.c, %_ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i ], [ %i.b, %bb.a ]
  %.028.i.i.i.i.i122127 = phi ptr [ %.028.i.i.i.i.i, %bb.n ], [ %.028.i.i.i.i.i, %_ZSt8_DestroyIPN4llvm8exegesis16BenchmarkMeasureEEvT_S4_.exit.i ], [ %i.a, %bb.a ]
  %i.mp = load ptr, ptr %3, align 8, !tbaa !71    ; 3 uses
  %i.mq = load ptr, ptr %i.mo, align 8, !tbaa !65 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.mp, %i.mq
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN4llvm8exegesis19PerInstructionStatsEEvT_S4_.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorIN4llvm8exegesis16BenchmarkMeasureESaIS2_EED2Ev.exit, %_ZSt8_DestroyIN4llvm8exegesis19PerInstructionStatsEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.mw, %_ZSt8_DestroyIN4llvm8exegesis19PerInstructionStatsEEvPT_.exit.i.i.i.i ], [ %i.mp, %_ZNSt6vectorIN4llvm8exegesis16BenchmarkMeasureESaIS2_EED2Ev.exit ] ; 3 uses
  %i.mr = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !94 ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16 ; 2 uses
  %i.mt = icmp eq ptr %i.mr, %i.ms
  br i1 %i.mt, label %_ZSt8_DestroyIN4llvm8exegesis19PerInstructionStatsEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.mu = load i64, ptr %i.ms, align 8, !tbaa !95
  %i.mv = add i64 %i.mu, 1
  call void @_ZdlPvm(ptr noundef %i.mr, i64 noundef %i.mv) #22
  br label %_ZSt8_DestroyIN4llvm8exegesis19PerInstructionStatsEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN4llvm8exegesis19PerInstructionStatsEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.mw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.mw, %i.mq
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN4llvm8exegesis19PerInstructionStatsEEvT_S4_.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !97

_ZSt8_DestroyIPN4llvm8exegesis19PerInstructionStatsEEvT_S4_.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN4llvm8exegesis19PerInstructionStatsEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !71
  br label %_ZSt8_DestroyIPN4llvm8exegesis19PerInstructionStatsEEvT_S4_.exit.i.i

_ZSt8_DestroyIPN4llvm8exegesis19PerInstructionStatsEEvT_S4_.exit.i.i: ; preds = %_ZSt8_DestroyIPN4llvm8exegesis19PerInstructionStatsEEvT_S4_.exitthread-pre-split.i.i, %_ZNSt6vectorIN4llvm8exegesis16BenchmarkMeasureESaIS2_EED2Ev.exit
  %i.mx = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN4llvm8exegesis19PerInstructionStatsEEvT_S4_.exitthread-pre-split.i.i ], [ %i.mp, %_ZNSt6vectorIN4llvm8exegesis16BenchmarkMeasureESaIS2_EED2Ev.exit ] ; 3 uses
  %.not.i.i1.i.i = icmp eq ptr %i.mx, null
  br i1 %.not.i.i1.i.i, label %_ZN4llvm8exegesis25SchedClassClusterCentroidD2Ev.exit, label %bb.o

bb.o:                                             ; preds = %_ZSt8_DestroyIPN4llvm8exegesis19PerInstructionStatsEEvT_S4_.exit.i.i
  %i.my = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.mz = load ptr, ptr %i.my, align 8, !tbaa !98
  %i.na = ptrtoint ptr %i.mz to i64
  %i.nb = ptrtoint ptr %i.mx to i64
  %i.nc = sub i64 %i.na, %i.nb
  call void @_ZdlPvm(ptr noundef nonnull %i.mx, i64 noundef %i.nc) #22
  br label %_ZN4llvm8exegesis25SchedClassClusterCentroidD2Ev.exit

_ZN4llvm8exegesis25SchedClassClusterCentroidD2Ev.exit: ; preds = %_ZSt8_DestroyIPN4llvm8exegesis19PerInstructionStatsEEvT_S4_.exit.i.i, %bb.o
  %i.nd = icmp eq ptr %i.a, %.028.i.i.i.i.i122127
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %i.nd

.lr.ph:                                           ; preds = %bb.a, %_ZN4llvm8exegesis25SchedClassClusterCentroid8addPointENS_8ArrayRefINS0_16BenchmarkMeasureEEE.exit
  %.041 = phi ptr [ %i.oa, %_ZN4llvm8exegesis25SchedClassClusterCentroid8addPointENS_8ArrayRefINS0_16BenchmarkMeasureEEE.exit ], [ %1, %bb.a ] ; 2 uses
  %i.ne = load i64, ptr %.041, align 8, !tbaa !63
  %i.nf = load ptr, ptr %0, align 8, !tbaa !13, !nonnull !35, !align !36
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !40
  %i.nh = getelementptr inbounds nuw [336 x i8], ptr %i.ng, i64 %i.ne ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 224
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !45 ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nh, i64 232
  %i.nl = load ptr, ptr %i.nk, align 8, !tbaa !99 ; 3 uses
  %i.nm = ptrtoint ptr %i.nl to i64
  %i.nn = ptrtoint ptr %i.nj to i64
  %i.no = sub i64 %i.nm, %i.nn
  %i.np = sdiv exact i64 %i.no, 104
  %i.nq = icmp eq ptr %i.nl, %i.nj
  br i1 %i.nq, label %_ZN4llvm8exegesis25SchedClassClusterCentroid8addPointENS_8ArrayRefINS0_16BenchmarkMeasureEEE.exit, label %bb.p

bb.p:                                             ; preds = %.lr.ph
  %i.nr = load ptr, ptr %3, align 8, !tbaa !79    ; 2 uses
  %i.ns = load ptr, ptr %i.b, align 8, !tbaa !79  ; 2 uses
  %i.nt = icmp eq ptr %i.nr, %i.ns
  br i1 %i.nt, label %bb.q, label %_ZNSt6vectorIN4llvm8exegesis19PerInstructionStatsESaIS2_EE6resizeEm.exit.i

bb.q:                                             ; preds = %bb.p
  call void @_ZNSt6vectorIN4llvm8exegesis19PerInstructionStatsESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.np)
  %.pre.i16 = load ptr, ptr %3, align 8, !tbaa !79, !noalias !100
  %.pre18.i17 = load ptr, ptr %i.b, align 8, !tbaa !79, !noalias !105
  br label %_ZNSt6vectorIN4llvm8exegesis19PerInstructionStatsESaIS2_EE6resizeEm.exit.i

_ZNSt6vectorIN4llvm8exegesis19PerInstructionStatsESaIS2_EE6resizeEm.exit.i: ; preds = %bb.q, %bb.p
  %i.nu = phi ptr [ %i.ns, %bb.p ], [ %.pre18.i17, %bb.q ] ; 2 uses
  %i.nv = phi ptr [ %i.nr, %bb.p ], [ %.pre.i16, %bb.q ] ; 2 uses
  %.not32 = icmp eq ptr %i.nv, %i.nu
  br i1 %.not32, label %_ZN4llvm8exegesis25SchedClassClusterCentroid8addPointENS_8ArrayRefINS0_16BenchmarkMeasureEEE.exit, label %.lr.ph.i12

.lr.ph.i12:                                       ; preds = %_ZNSt6vectorIN4llvm8exegesis19PerInstructionStatsESaIS2_EE6resizeEm.exit.i, %.lr.ph.i12
  %.sroa.05.017.i = phi ptr [ %i.nx, %.lr.ph.i12 ], [ %i.nj, %_ZNSt6vectorIN4llvm8exegesis19PerInstructionStatsESaIS2_EE6resizeEm.exit.i ] ; 2 uses
  %.sroa.7.016.i13 = phi ptr [ %i.nw, %.lr.ph.i12 ], [ %i.nv, %_ZNSt6vectorIN4llvm8exegesis19PerInstructionStatsESaIS2_EE6resizeEm.exit.i ] ; 2 uses
  call void @_ZN4llvm8exegesis19PerInstructionStats4pushERKNS0_16BenchmarkMeasureE(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.016.i13, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.05.017.i) #23
  %i.nw = getelementptr inbounds nuw i8, ptr %.sroa.7.016.i13, i64 64 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.05.017.i, i64 104 ; 2 uses
  %i.ny = icmp ne ptr %i.nw, %i.nu
  %i.nz = icmp ne ptr %i.nx, %i.nl
  %.not3.i.i14 = select i1 %i.ny, i1 %i.nz, i1 false
  br i1 %.not3.i.i14, label %.lr.ph.i12, label %_ZN4llvm8exegesis25SchedClassClusterCentroid8addPointENS_8ArrayRefINS0_16BenchmarkMeasureEEE.exit

_ZN4llvm8exegesis25SchedClassClusterCentroid8addPointENS_8ArrayRefINS0_16BenchmarkMeasureEEE.exit: ; preds = %.lr.ph.i12, %_ZNSt6vectorIN4llvm8exegesis19PerInstructionStatsESaIS2_EE6resizeEm.exit.i, %.lr.ph
  %i.oa = getelementptr inbounds nuw i8, ptr %.041, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.oa, %i.a
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN4llvm8exegesis25SchedClassClusterCentroid8addPointENS_8ArrayRefINS0_16BenchmarkMeasureEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !79     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79   ; 2 uses
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.b, label %_ZNSt6vectorIN4llvm8exegesis19PerInstructionStatsESaIS2_EE6resizeEm.exit

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZNSt6vectorIN4llvm8exegesis19PerInstructionStatsESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2)
  %.pre = load ptr, ptr %0, align 8, !tbaa !79, !noalias !110
  %.pre18 = load ptr, ptr %i.b, align 8, !tbaa !79, !noalias !115
  br label %_ZNSt6vectorIN4llvm8exegesis19PerInstructionStatsESaIS2_EE6resizeEm.exit

_ZNSt6vectorIN4llvm8exegesis19PerInstructionStatsESaIS2_EE6resizeEm.exit: ; preds = %bb.c, %bb.a
  %i.e = phi ptr [ %i.c, %bb.a ], [ %.pre18, %bb.c ] ; 2 uses
  %i.f = phi ptr [ %i.a, %bb.a ], [ %.pre, %bb.c ] ; 2 uses
  %.idx = mul nuw nsw i64 %2, 104
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.h = icmp ne ptr %i.f, %i.e
  %i.i = icmp ne i64 %2, 0
  %.not3.i15 = select i1 %i.h, i1 %i.i, i1 false
  br i1 %.not3.i15, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %_ZNSt6vectorIN4llvm8exegesis19PerInstructionStatsESaIS2_EE6resizeEm.exit
  ret void

.lr.ph:                                           ; preds = %_ZNSt6vectorIN4llvm8exegesis19PerInstructionStatsESaIS2_EE6resizeEm.exit, %.lr.ph
  %.sroa.05.017 = phi ptr [ %i.k, %.lr.ph ], [ %1, %_ZNSt6vectorIN4llvm8exegesis19PerInstructionStatsESaIS2_EE6resizeEm.exit ] ; 2 uses
  %.sroa.7.016 = phi ptr [ %i.j, %.lr.ph ], [ %i.f, %_ZNSt6vectorIN4llvm8exegesis19PerInstructionStatsESaIS2_EE6resizeEm.exit ] ; 2 uses
  tail call void @_ZN4llvm8exegesis19PerInstructionStats4pushERKNS0_16BenchmarkMeasureE(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.7.016, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.05.017) #23
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.7.016, i64 64 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.05.017, i64 104 ; 2 uses
  %i.l = icmp ne ptr %i.j, %i.e
  %i.m = icmp ne ptr %i.k, %i.g
  %.not3.i = select i1 %i.l, i1 %i.m, i1 false
  br i1 %.not3.i, label %.lr.ph, label %._crit_edge
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm8exegesis25SchedClassClusterCentroid10getAsPointEv(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.38") align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !65   ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !tbaa !71     ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  %i.g = ashr exact i64 %i.f, 6                   ; 5 uses
  %i.h = icmp ugt i64 %i.g, 88686269585142075
  br i1 %i.h, label %bb.b, label %_ZNSt6vectorIN4llvm8exegesis16BenchmarkMeasureESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #20
  unreachable
end_hunk_0
