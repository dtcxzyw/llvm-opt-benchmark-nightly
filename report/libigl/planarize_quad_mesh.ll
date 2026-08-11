inline.NumInlined: 17087
inline.NumDeleted: 8655
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 204
begin_hunk_0_@_ZN5Eigen12SparseMatrixIdLi0ElEaSINS0_IdLi1ElEEEERS1_RKNS_16SparseMatrixBaseIT_EE:bb.a
.lr.ph73:                                         ; preds = %.lr.ph73, %.lr.ph73.preheader.new
  %.03472 = phi i64 [ 0, %.lr.ph73.preheader.new ], [ %i.ey, %.lr.ph73 ] ; 4 uses
  %.03571 = phi i64 [ 0, %.lr.ph73.preheader.new ], [ %i.ex, %.lr.ph73 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph73.preheader.new ], [ %niter.next.1, %.lr.ph73 ]
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %calloc, i64 %.03472 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !150
  store i64 %.03571, ptr %i.ep, align 8, !tbaa !150
  %i.er = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.03472
  store i64 %.03571, ptr %i.er, align 8, !tbaa !150
  %i.es = add nsw i64 %i.eq, %.03571              ; 3 uses
  %i.et = or disjoint i64 %.03472, 1              ; 2 uses
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %calloc, i64 %i.et ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8, !tbaa !150
  store i64 %i.es, ptr %i.eu, align 8, !tbaa !150
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %i.et
  store i64 %i.es, ptr %i.ew, align 8, !tbaa !150
  %i.ex = add nsw i64 %i.ev, %i.es                ; 3 uses
  %i.ey = add nuw nsw i64 %.03472, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1.not = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1.not, label %._crit_edge74.loopexit.unr-lcssa, label %.lr.ph73, !llvm.loop !302

bb.g:                                             ; preds = %._crit_edge74
  %i.ez = landingpad { ptr, i32 }
          cleanup
  call void @free(ptr noundef %.sroa.051.0109) #27
  br label %.body44

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1ElEEE13InnerIteratorC2ERKS3_l.exit47: ; preds = %.lr.ph80, %._crit_edge78
  %i.fa = phi i64 [ %i.fh, %._crit_edge78 ], [ %i.cm, %.lr.ph80 ]
  %.02879 = phi i64 [ %i.fi, %._crit_edge78 ], [ 0, %.lr.ph80 ] ; 4 uses
  %i.fb = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.02879
  %i.fc = load i64, ptr %i.fb, align 8, !tbaa !150 ; 2 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %.02879
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !150 ; 2 uses
  %i.ff = add nsw i64 %i.fe, %i.fc
  %i.fg = icmp sgt i64 %i.fe, 0
  br i1 %i.fg, label %.lr.ph77, label %._crit_edge78

._crit_edge78.loopexit:                           ; preds = %.lr.ph77
  %.pre = load i64, ptr %i.a, align 8, !tbaa !295
  br label %._crit_edge78

._crit_edge78:                                    ; preds = %._crit_edge78.loopexit, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1ElEEE13InnerIteratorC2ERKS3_l.exit47
  %i.fh = phi i64 [ %.pre, %._crit_edge78.loopexit ], [ %i.fa, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1ElEEE13InnerIteratorC2ERKS3_l.exit47 ] ; 2 uses
  %i.fi = add nuw nsw i64 %.02879, 1              ; 2 uses
  %i.fj = icmp slt i64 %i.fi, %i.fh
  br i1 %i.fj, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1ElEEE13InnerIteratorC2ERKS3_l.exit47, label %._crit_edge81, !llvm.loop !301

.lr.ph77:                                         ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1ElEEE13InnerIteratorC2ERKS3_l.exit47, %.lr.ph77
  %.sroa.8.076 = phi i64 [ %i.ft, %.lr.ph77 ], [ %i.fc, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1ElEEE13InnerIteratorC2ERKS3_l.exit47 ] ; 3 uses
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %.sroa.8.076
  %i.fl = load i64, ptr %i.fk, align 8, !tbaa !150
  %i.fm = getelementptr inbounds [8 x i8], ptr %.sroa.051.0109, i64 %i.fl ; 2 uses
  %i.fn = load i64, ptr %i.fm, align 8, !tbaa !150 ; 3 uses
  %i.fo = add nsw i64 %i.fn, 1
  store i64 %i.fo, ptr %i.fm, align 8, !tbaa !150
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %i.fn
  store i64 %.02879, ptr %i.fp, align 8, !tbaa !150
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %.sroa.8.076
  %i.fr = load double, ptr %i.fq, align 8, !tbaa !43
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %i.fn
  store double %i.fr, ptr %i.fs, align 8, !tbaa !43
  %i.ft = add nsw i64 %.sroa.8.076, 1             ; 2 uses
  %i.fu = icmp slt i64 %i.ft, %i.ff
  br i1 %i.fu, label %.lr.ph77, label %._crit_edge78.loopexit, !llvm.loop !300

._crit_edge81:                                    ; preds = %._crit_edge78, %._crit_edge78.us, %.preheader.._crit_edge81_crit_edge
  %i.fv = phi ptr [ %.pre88, %.preheader.._crit_edge81_crit_edge ], [ %i.cy, %._crit_edge78.us ], [ %i.cy, %._crit_edge78 ]
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.fy = load <2 x i64>, ptr %i.e, align 8, !tbaa !150
  %i.fz = load <2 x i64>, ptr %i.fx, align 8, !tbaa !150
  store <2 x i64> %i.fy, ptr %i.fx, align 8, !tbaa !150
  store <2 x i64> %i.fz, ptr %i.e, align 8, !tbaa !150
  %i.ga = load <2 x ptr>, ptr %i.h, align 8, !tbaa !268
  %i.gb = load <2 x ptr>, ptr %i.fw, align 8, !tbaa !268
  %i.gc = load ptr, ptr %i.fw, align 8, !tbaa !268
  store <2 x ptr> %i.ga, ptr %i.fw, align 8, !tbaa !268
  store <2 x ptr> %i.gb, ptr %i.h, align 8, !tbaa !268
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ge = load ptr, ptr %i.cl, align 8, !tbaa !247
  %i.gf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gg = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.gh = load <2 x ptr>, ptr %i.gd, align 8, !tbaa !254
  store ptr %i.ge, ptr %i.gd, align 8, !tbaa !247
  store ptr %i.fv, ptr %i.gf, align 8, !tbaa !268
  store <2 x ptr> %i.gh, ptr %i.cl, align 8, !tbaa !254
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.gj = load <2 x i64>, ptr %i.g, align 8, !tbaa !150
  %i.gk = load <2 x i64>, ptr %i.gi, align 8, !tbaa !150
  store <2 x i64> %i.gj, ptr %i.gi, align 8, !tbaa !150
  store <2 x i64> %i.gk, ptr %i.g, align 8, !tbaa !150
  call void @free(ptr noundef %.sroa.051.0109) #27
  call void @free(ptr noundef %i.gc) #27
  %i.gl = load ptr, ptr %i.n, align 8, !tbaa !244
  call void @free(ptr noundef %i.gl) #27
  %i.gm = load ptr, ptr %i.cl, align 8, !tbaa !242 ; 2 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge81
  call void @_ZdaPv(ptr noundef nonnull %i.gm) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge81
  %i.go = load ptr, ptr %i.gg, align 8, !tbaa !243 ; 2 uses
  %i.gp = icmp eq ptr %i.go, null
  br i1 %i.gp, label %_ZN5Eigen12SparseMatrixIdLi0ElED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.go) #29
  br label %_ZN5Eigen12SparseMatrixIdLi0ElED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0ElED2Ev.exit:         ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret ptr %0

.body44:                                          ; preds = %bb.g, %bb.f
  %.pn41 = phi { ptr, i32 } [ %i.ez, %bb.g ], [ %i.bq, %bb.f ]
  call void @_ZN5Eigen12SparseMatrixIdLi0ElED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #27
  br label %.body

.body:                                            ; preds = %bb.c, %.body44
  %.pn41.pn = phi { ptr, i32 } [ %.pn41, %.body44 ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn41.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi1ElED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !259
  tail call void @free(ptr noundef %i.b) #27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !262
  tail call void @free(ptr noundef %i.d) #27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !242  ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !243  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5Eigen8internal17CompressedStorageIdlED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #29
  br label %_ZN5Eigen8internal17CompressedStorageIdlED2Ev.exit

_ZN5Eigen8internal17CompressedStorageIdlED2Ev.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #15

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 comdat {
bb.a:
  %3 = alloca %"struct.__gnu_cxx::__ops::_Iter_less_iter", align 1 ; 3 uses
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %.lr.ph, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph45

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit
  %i.g = icmp eq i64 %i.at, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph45, !llvm.loop !303

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.020.lcssa = phi ptr [ %1, %.lr.ph ], [ %.1.i.i, %bb.b ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZSt11__make_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_RT0_(ptr noundef %0, ptr noundef %.020.lcssa, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %._crit_edge, %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i
  %.07.i.i = phi ptr [ %i.h, %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i ], [ %.020.lcssa, %._crit_edge ]
  %i.h = getelementptr inbounds i8, ptr %.07.i.i, i64 -8 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !150  ; 2 uses
  %i.j = load i64, ptr %0, align 8, !tbaa !150
  store i64 %i.j, ptr %i.h, align 8, !tbaa !150
  %i.k = ptrtoint ptr %i.h to i64
  %i.l = sub i64 %i.k, %i.a                       ; 3 uses
  %i.m = ashr exact i64 %i.l, 3                   ; 3 uses
  %i.n = add nsw i64 %i.m, -1
  %4 = sdiv i64 %i.n, 2
  %i.o = icmp sgt i64 %i.m, 2
  br i1 %i.o, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i, %.lr.ph.i.i.i.i
  %.029.i.i.i.i = phi i64 [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %i.p = shl i64 %.029.i.i.i.i, 1                 ; 3 uses
  %i.q = add i64 %i.p, 2                          ; 2 uses
  %i.r = getelementptr inbounds [8 x i8], ptr %0, i64 %i.q
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %i.u = load i64, ptr %i.r, align 8, !tbaa !150
  %i.v = load i64, ptr %i.t, align 8, !tbaa !150
  %i.w = icmp slt i64 %i.u, %i.v
  %i.x = or disjoint i64 %i.p, 1
  %spec.select.i.i.i.i = select i1 %i.w, i64 %i.x, i64 %i.q ; 4 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select.i.i.i.i
  %i.z = load i64, ptr %i.y, align 8, !tbaa !150
  %i.aa = getelementptr inbounds [8 x i8], ptr %0, i64 %.029.i.i.i.i
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !150
  %i.ab = icmp slt i64 %spec.select.i.i.i.i, %4
  br i1 %i.ab, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i, !llvm.loop !304

._crit_edge.i.i.i.i:                              ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %.lr.ph.i.i.i.i ] ; 5 uses
  %i.ac = and i64 %i.l, 8
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = add nsw i64 %i.m, -2
  %i.af = ashr exact i64 %i.ae, 1
  %i.ag = icmp eq i64 %.0.lcssa.i.i.i.i, %i.af
  br i1 %i.ag, label %.thread.i.i.i, label %bb.d

.thread.i.i.i:                                    ; preds = %bb.c
  %i.ah = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.ai = or disjoint i64 %i.ah, 1                ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ai
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !150
  %i.al = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i.i.i.i
  store i64 %i.ak, ptr %i.al, align 8, !tbaa !150
  br label %.lr.ph.i.i.i.i.i.preheader

bb.d:                                             ; preds = %bb.c, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.d, %.thread.i.i.i
  %.01317.i.i.i.i.i.ph = phi i64 [ %.0.lcssa.i.i.i.i, %bb.d ], [ %i.ai, %.thread.i.i.i ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %bb.e
  %.01317.i.i.i.i.i = phi i64 [ %.018.i.i67.i.i.i, %bb.e ], [ %.01317.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader ] ; 3 uses
  %.018.in.i.i.i.i.i = add nsw i64 %.01317.i.i.i.i.i, -1
  %.018.i.i67.i.i.i = lshr i64 %.018.in.i.i.i.i.i, 1 ; 3 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.018.i.i67.i.i.i
  %i.an = load i64, ptr %i.am, align 8, !tbaa !150 ; 2 uses
  %i.ao = icmp slt i64 %i.an, %i.i
  br i1 %i.ao, label %bb.e, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.ap = getelementptr inbounds [8 x i8], ptr %0, i64 %.01317.i.i.i.i.i
  store i64 %i.an, ptr %i.ap, align 8, !tbaa !150
  %.not8.i.i.i = icmp eq i64 %.018.i.i67.i.i.i, 0
  br i1 %.not8.i.i.i, label %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !305

_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i, %bb.d
  %.013.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.d ], [ %.01317.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ 0, %bb.e ]
  %i.aq = getelementptr inbounds [8 x i8], ptr %0, i64 %.013.lcssa.i.i.i.i.i
  store i64 %i.i, ptr %i.aq, align 8, !tbaa !150
  %i.ar = icmp sgt i64 %i.l, 8
  br i1 %i.ar, label %.lr.ph.i.i, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !306

.lr.ph45:                                         ; preds = %.lr.ph, %bb.b
  %.0121944 = phi i64 [ %i.at, %bb.b ], [ %2, %.lr.ph ]
  %.02043 = phi ptr [ %.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %i.as = phi i64 [ %i.br, %bb.b ], [ %i.c, %.lr.ph ]
  %i.at = add nsw i64 %.0121944, -1               ; 3 uses
  %i.au = lshr i64 %i.as, 4
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au ; 3 uses
  %i.aw = getelementptr inbounds i8, ptr %.02043, i64 -8 ; 3 uses
  %i.ax = load i64, ptr %i.e, align 8, !tbaa !150 ; 5 uses
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !150 ; 5 uses
  %i.az = icmp slt i64 %i.ax, %i.ay
  %i.ba = load i64, ptr %i.aw, align 8, !tbaa !150 ; 6 uses
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %.lr.ph45
  %i.bb = icmp slt i64 %i.ay, %i.ba
  br i1 %i.bb, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bc = load i64, ptr %0, align 8, !tbaa !150
  store i64 %i.ay, ptr %0, align 8, !tbaa !150
  store i64 %i.bc, ptr %i.av, align 8, !tbaa !150
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.h:                                             ; preds = %bb.f
  %i.bd = icmp slt i64 %i.ax, %i.ba
  %i.be = load i64, ptr %0, align 8, !tbaa !150   ; 2 uses
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i64 %i.ba, ptr %0, align 8, !tbaa !150
  store i64 %i.be, ptr %i.aw, align 8, !tbaa !150
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.j:                                             ; preds = %bb.h
  store i64 %i.ax, ptr %0, align 8, !tbaa !150
  store i64 %i.be, ptr %i.e, align 8, !tbaa !150
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.k:                                             ; preds = %.lr.ph45
  %i.bf = icmp slt i64 %i.ax, %i.ba
  br i1 %i.bf, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bg = load i64, ptr %0, align 8, !tbaa !150
  store i64 %i.ax, ptr %0, align 8, !tbaa !150
  store i64 %i.bg, ptr %i.e, align 8, !tbaa !150
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.m:                                             ; preds = %bb.k
  %i.bh = icmp slt i64 %i.ay, %i.ba
  %i.bi = load i64, ptr %0, align 8, !tbaa !150   ; 2 uses
  br i1 %i.bh, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  store i64 %i.ba, ptr %0, align 8, !tbaa !150
  store i64 %i.bi, ptr %i.aw, align 8, !tbaa !150
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

bb.o:                                             ; preds = %bb.m
  store i64 %i.ay, ptr %0, align 8, !tbaa !150
  store i64 %i.bi, ptr %i.av, align 8, !tbaa !150
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader: ; preds = %bb.o, %bb.n, %bb.l, %bb.j, %bb.i, %bb.g
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i

_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader, %bb.r
  %.013.i.i = phi ptr [ %.114.i.i, %bb.r ], [ %.02043, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %.0.i.i = phi ptr [ %i.bm, %bb.r ], [ %i.e, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i.preheader ]
  %i.bj = load i64, ptr %0, align 8, !tbaa !150   ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.p, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i
  %.1.i.i = phi ptr [ %.0.i.i, %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i ], [ %i.bm, %bb.p ] ; 8 uses
  %i.bk = load i64, ptr %.1.i.i, align 8, !tbaa !150 ; 2 uses
  %i.bl = icmp slt i64 %i.bk, %i.bj
  %i.bm = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 8 ; 2 uses
  br i1 %i.bl, label %bb.p, label %.preheader.i.i, !llvm.loop !307

.preheader.i.i:                                   ; preds = %bb.p, %.preheader.i.i
  %.013.pn.i.i = phi ptr [ %.114.i.i, %.preheader.i.i ], [ %.013.i.i, %bb.p ]
  %.114.i.i = getelementptr inbounds i8, ptr %.013.pn.i.i, i64 -8 ; 5 uses
  %i.bn = load i64, ptr %.114.i.i, align 8, !tbaa !150 ; 2 uses
  %i.bo = icmp slt i64 %i.bj, %i.bn
  br i1 %i.bo, label %.preheader.i.i, label %bb.q, !llvm.loop !308

bb.q:                                             ; preds = %.preheader.i.i
  %i.bp = icmp ult ptr %.1.i.i, %.114.i.i
  br i1 %i.bp, label %bb.r, label %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit

bb.r:                                             ; preds = %bb.q
  store i64 %i.bn, ptr %.1.i.i, align 8, !tbaa !150
  store i64 %i.bk, ptr %.114.i.i, align 8, !tbaa !150
  br label %_ZSt22__move_median_to_firstIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_S4_T0_.exit.i, !llvm.loop !309

_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit: ; preds = %bb.q
  tail call void @_ZSt16__introsort_loopIPllN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_T1_(ptr noundef nonnull %.1.i.i, ptr noundef %.02043, i64 noundef %i.at)
  %i.bq = ptrtoint ptr %.1.i.i to i64
  %i.br = sub i64 %i.bq, %i.a                     ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 128
  br i1 %i.bs, label %bb.b, label %_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit, !llvm.loop !303

_ZSt14__partial_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIPlN9__gnu_cxx5__ops15_Iter_less_iterEET_S4_S4_T0_.exit, %_ZSt10__pop_heapIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_S4_RT0_.exit.i.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZSt22__final_insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 128
  br i1 %i.d, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %scevgep = getelementptr i8, ptr %0, i64 8
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i, %bb.b
  %.019.i.idx = phi i64 [ 8, %bb.b ], [ %.019.i.add, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ] ; 4 uses
  %.pn18.i = phi ptr [ %0, %bb.b ], [ %.019.i.ptr, %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i ] ; 3 uses
  %.019.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.019.i.idx ; 4 uses
  %i.e = load i64, ptr %.019.i.ptr, align 8, !tbaa !150 ; 4 uses
  %i.f = load i64, ptr %0, align 8, !tbaa !150    ; 2 uses
  %i.g = icmp slt i64 %i.e, %i.f
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ugt i64 %.019.i.idx, 8
  br i1 %i.h, label %bb.e, label %bb.f, !prof !310

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %scevgep, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %.019.i.idx, i1 false)
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.f:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %.pn18.i, i64 8
  store i64 %i.f, ptr %i.i, align 8, !tbaa !150
  br label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

bb.g:                                             ; preds = %bb.c
  %i.j = load i64, ptr %.pn18.i, align 8, !tbaa !150 ; 2 uses
  %i.k = icmp slt i64 %i.e, %i.j
  br i1 %i.k, label %.lr.ph.i.i, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.i.i
  %i.l = phi i64 [ %i.m, %.lr.ph.i.i ], [ %i.j, %bb.g ]
  %.013.i.i = phi ptr [ %.0.i.i, %.lr.ph.i.i ], [ %.pn18.i, %bb.g ] ; 3 uses
  %.0912.i.i = phi ptr [ %.013.i.i, %.lr.ph.i.i ], [ %.019.i.ptr, %bb.g ]
  store i64 %i.l, ptr %.0912.i.i, align 8, !tbaa !150
  %.0.i.i = getelementptr inbounds i8, ptr %.013.i.i, i64 -8 ; 2 uses
  %i.m = load i64, ptr %.0.i.i, align 8, !tbaa !150 ; 2 uses
  %i.n = icmp slt i64 %i.e, %i.m
  br i1 %i.n, label %.lr.ph.i.i, label %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i, !llvm.loop !311

_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i:     ; preds = %.lr.ph.i.i, %bb.g, %bb.f, %bb.e
  %.sink.i = phi ptr [ %0, %bb.f ], [ %0, %bb.e ], [ %.019.i.ptr, %bb.g ], [ %.013.i.i, %.lr.ph.i.i ]
  store i64 %i.e, ptr %.sink.i, align 8, !tbaa !150
  %.019.i.add = add nuw nsw i64 %.019.i.idx, 8    ; 2 uses
  %.not.i = icmp eq i64 %.019.i.add, 128
  br i1 %.not.i, label %_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit, label %bb.c, !llvm.loop !312

_ZSt16__insertion_sortIPlN9__gnu_cxx5__ops15_Iter_less_iterEEvT_S4_T0_.exit: ; preds = %_ZSt13move_backwardIPlS0_ET0_T_S2_S1_.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %.not5.i = icmp eq ptr %i.o, %1
end_hunk_0
begin_hunk_1_@_ZN5Eigen12SparseMatrixIdLi0EiEaSINS0_IdLi1EiEEEERS1_RKNS_16SparseMatrixBaseIT_EE:bb.a
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.m) #27
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.e, align 8, !tbaa !49
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
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %calloc, i8 0, i64 %i.z, i1 false), !tbaa !154
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
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.ah, i1 false), !tbaa !81
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
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i, i8 0, i64 %i.an, i1 false), !tbaa !154
  br label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ao = icmp sgt i64 %i.b, 0
  br i1 %i.ao, label %.lr.ph70, label %._crit_edge71

.lr.ph70:                                         ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !138 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !334 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !340 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit.us, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit.us: ; preds = %.lr.ph70, %._crit_edge.us
  %.03669.us = phi i64 [ %i.cp, %._crit_edge.us ], [ 0, %.lr.ph70 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.03669.us ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !154 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !154 ; 2 uses
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = icmp slt i32 %i.ax, %i.az
  br i1 %i.bb, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.bc = sext i32 %i.ax to i64                   ; 4 uses
  %i.bd = sub nsw i64 %i.ba, %i.bc
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader, %.lr.ph.us.prol
  %.sroa.758.068.us.prol = phi i64 [ %i.bk, %.lr.ph.us.prol ], [ %i.bc, %.lr.ph.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader ]
  %i.be = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !154
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !154
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !154
  %i.bk = add nsw i64 %.sroa.758.068.us.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !344

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.sroa.758.068.us.unr = phi i64 [ %i.bc, %.lr.ph.us.preheader ], [ %i.bk, %.lr.ph.us.prol ]
  %i.bl = sub nsw i64 %i.bc, %i.ba
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.sroa.758.068.us = phi i64 [ %i.co, %.lr.ph.us ], [ %.sroa.758.068.us.unr, %.lr.ph.us.prol.loopexit ] ; 5 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !154
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !154
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !154
  %i.bt = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !154
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !154
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !154
  %i.ca = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !154
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !154
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !154
  %i.ch = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.ci = getelementptr i8, ptr %i.ch, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !154
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !154
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !154
  %i.co = add nsw i64 %.sroa.758.068.us, 4        ; 2 uses
  %exitcond84.not.3 = icmp eq i64 %i.co, %i.ba
  br i1 %exitcond84.not.3, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !345

._crit_edge.us:                                   ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.cp = add nuw nsw i64 %.03669.us, 1           ; 2 uses
  %exitcond85.not = icmp eq i64 %i.cp, %i.b
  br i1 %exitcond85.not, label %._crit_edge71, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit.us, !llvm.loop !346

._crit_edge71:                                    ; preds = %._crit_edge, %._crit_edge.us, %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.cq = icmp sgt i64 %i.d, 0
  br i1 %i.cq, label %bb.f, label %._crit_edge75

bb.f:                                             ; preds = %._crit_edge71
  %i.cr = icmp samesign ugt i64 %i.d, 4611686018427387903
  br i1 %i.cr, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.f
  %i.cs = tail call noalias ptr @malloc(i64 noundef %i.i) #30 ; 6 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.invoke.i, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %xtraiter113 = and i64 %i.d, 1
  %i.cu = icmp eq i64 %i.d, 1
  br i1 %i.cu, label %.lr.ph74.epil.preheader, label %.lr.ph74.preheader.new

.lr.ph74.preheader.new:                           ; preds = %.lr.ph74.preheader
  %unroll_iter = and i64 %i.d, 4611686018427387902
  br label %.lr.ph74

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %bb.f
  %i.cv = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cv, align 8, !tbaa !140
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
          to label %.cont.i unwind label %bb.g

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %.invoke.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body45

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %.lr.ph70, %._crit_edge
  %.03669 = phi i64 [ %i.de, %._crit_edge ], [ 0, %.lr.ph70 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.03669
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !154
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.03669
  %i.db = load i32, ptr %i.da, align 4, !tbaa !154 ; 2 uses
  %3 = sext i32 %i.db to i64
  %i.dc = add nsw i64 %3, %i.cz
  %i.dd = icmp sgt i32 %i.db, 0
  br i1 %i.dd, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.de = add nuw nsw i64 %.03669, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.de, %i.b
  br i1 %exitcond.not, label %._crit_edge71, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit, !llvm.loop !346

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit, %.lr.ph
  %.sroa.758.068 = phi i64 [ %i.dl, %.lr.ph ], [ %i.cz, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.758.068
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !154
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !154
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !154
  %i.dl = add nsw i64 %.sroa.758.068, 1           ; 2 uses
  %i.dm = icmp slt i64 %i.dl, %i.dc
  br i1 %i.dm, label %.lr.ph, label %._crit_edge, !llvm.loop !345

._crit_edge75.loopexit.unr-lcssa:                 ; preds = %.lr.ph74
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %._crit_edge75, label %.lr.ph74.epil.preheader

.lr.ph74.epil.preheader:                          ; preds = %._crit_edge75.loopexit.unr-lcssa, %.lr.ph74.preheader
  %.03473.epil.init = phi i64 [ 0, %.lr.ph74.preheader ], [ %i.gm, %._crit_edge75.loopexit.unr-lcssa ] ; 2 uses
  %.03572.epil.init = phi i32 [ 0, %.lr.ph74.preheader ], [ %i.gl, %._crit_edge75.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod116 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod116)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.03473.epil.init ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !154
  store i32 %.03572.epil.init, ptr %i.dn, align 4, !tbaa !154
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.03473.epil.init
  store i32 %.03572.epil.init, ptr %i.dp, align 4, !tbaa !154
  %i.dq = add nsw i32 %i.do, %.03572.epil.init
  br label %._crit_edge75

._crit_edge75:                                    ; preds = %.lr.ph74.epil.preheader, %._crit_edge75.loopexit.unr-lcssa, %._crit_edge71
  %.sroa.052.0106 = phi ptr [ null, %._crit_edge71 ], [ %i.cs, %._crit_edge75.loopexit.unr-lcssa ], [ %i.cs, %.lr.ph74.epil.preheader ] ; 6 uses
  %.035.lcssa = phi i32 [ 0, %._crit_edge71 ], [ %i.gl, %._crit_edge75.loopexit.unr-lcssa ], [ %i.dq, %.lr.ph74.epil.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.d
  store i32 %.035.lcssa, ptr %i.dr, align 4, !tbaa !154
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.dt = sext i32 %.035.lcssa to i64
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, i64 noundef %i.dt, double noundef 0.000000e+00)
          to label %.preheader unwind label %bb.h

.preheader:                                       ; preds = %._crit_edge75
  %i.du = load i64, ptr %i.a, align 8, !tbaa !335 ; 3 uses
  %i.dv = icmp sgt i64 %i.du, 0
  br i1 %i.dv, label %.lr.ph80, label %.preheader.._crit_edge81_crit_edge

.preheader.._crit_edge81_crit_edge:               ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !248
  br label %._crit_edge81

.lr.ph80:                                         ; preds = %.preheader
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !137 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !138 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !334 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !340 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8            ; 6 uses
  %i.eh = load ptr, ptr %i.ds, align 8            ; 4 uses
  br i1 %i.ee, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48.us, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48.us: ; preds = %.lr.ph80, %._crit_edge78.us
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %._crit_edge78.us ], [ 0, %.lr.ph80 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv90 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !154 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ei, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !154 ; 2 uses
  %i.em = sext i32 %i.el to i64                   ; 3 uses
  %i.en = icmp slt i32 %i.ej, %i.el
  br i1 %i.en, label %.lr.ph77.us.preheader, label %._crit_edge78.us

.lr.ph77.us.preheader:                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48.us
  %i.eo = sext i32 %i.ej to i64                   ; 6 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv90 to i32  ; 3 uses
  %i.eq = sub nsw i64 %i.em, %i.eo
  %xtraiter117 = and i64 %i.eq, 1
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph77.us.prol.loopexit, label %.lr.ph77.us.prol

.lr.ph77.us.prol:                                 ; preds = %.lr.ph77.us.preheader
  %i.er = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.eo
  %i.es = load i32, ptr %i.er, align 4, !tbaa !154
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !154 ; 2 uses
  %i.ew = add nsw i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !154
  %i.ex = sext i32 %i.ev to i64                   ; 2 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ex
  store i32 %i.ep, ptr %i.ey, align 4, !tbaa !154
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.eo
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !43
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ex
  store double %i.fa, ptr %i.fb, align 8, !tbaa !43
  %i.fc = add nsw i64 %i.eo, 1
  br label %.lr.ph77.us.prol.loopexit

.lr.ph77.us.prol.loopexit:                        ; preds = %.lr.ph77.us.prol, %.lr.ph77.us.preheader
  %.sroa.8.076.us.unr = phi i64 [ %i.eo, %.lr.ph77.us.preheader ], [ %i.fc, %.lr.ph77.us.prol ]
  %i.fd = add nsw i64 %i.em, -1
  %i.fe = icmp eq i64 %i.fd, %i.eo
  br i1 %i.fe, label %._crit_edge78.us, label %.lr.ph77.us

.lr.ph77.us:                                      ; preds = %.lr.ph77.us.prol.loopexit, %.lr.ph77.us
  %.sroa.8.076.us = phi i64 [ %i.gc, %.lr.ph77.us ], [ %.sroa.8.076.us.unr, %.lr.ph77.us.prol.loopexit ] ; 4 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %.sroa.8.076.us
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !154
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.fh ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !154 ; 2 uses
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !154
  %i.fl = sext i32 %i.fj to i64                   ; 2 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fl
  store i32 %i.ep, ptr %i.fm, align 4, !tbaa !154
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.sroa.8.076.us
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !43
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.fl
  store double %i.fo, ptr %i.fp, align 8, !tbaa !43
  %i.fq = add nsw i64 %.sroa.8.076.us, 1          ; 2 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !154
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.ft ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !154 ; 2 uses
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !154
  %i.fx = sext i32 %i.fv to i64                   ; 2 uses
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fx
  store i32 %i.ep, ptr %i.fy, align 4, !tbaa !154
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fq
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !43
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.fx
  store double %i.ga, ptr %i.gb, align 8, !tbaa !43
  %i.gc = add nsw i64 %.sroa.8.076.us, 2          ; 2 uses
  %exitcond89.not.1 = icmp eq i64 %i.gc, %i.em
  br i1 %exitcond89.not.1, label %._crit_edge78.us, label %.lr.ph77.us, !llvm.loop !347

._crit_edge78.us:                                 ; preds = %.lr.ph77.us.prol.loopexit, %.lr.ph77.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48.us
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next91, %i.du
  br i1 %exitcond93.not, label %._crit_edge81, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48.us, !llvm.loop !348

.lr.ph74:                                         ; preds = %.lr.ph74, %.lr.ph74.preheader.new
  %.03473 = phi i64 [ 0, %.lr.ph74.preheader.new ], [ %i.gm, %.lr.ph74 ] ; 4 uses
  %.03572 = phi i32 [ 0, %.lr.ph74.preheader.new ], [ %i.gl, %.lr.ph74 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph74.preheader.new ], [ %niter.next.1, %.lr.ph74 ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.03473 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !154
  store i32 %.03572, ptr %i.gd, align 4, !tbaa !154
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.03473
  store i32 %.03572, ptr %i.gf, align 4, !tbaa !154
  %i.gg = add nsw i32 %i.ge, %.03572              ; 3 uses
  %i.gh = or disjoint i64 %.03473, 1              ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !154
  store i32 %i.gg, ptr %i.gi, align 4, !tbaa !154
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.gh
  store i32 %i.gg, ptr %i.gk, align 4, !tbaa !154
  %i.gl = add nsw i32 %i.gj, %i.gg                ; 3 uses
  %i.gm = add nuw nsw i64 %.03473, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge75.loopexit.unr-lcssa, label %.lr.ph74, !llvm.loop !349

bb.h:                                             ; preds = %._crit_edge75
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @free(ptr noundef %.sroa.052.0106) #27
  br label %.body45

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48: ; preds = %.lr.ph80, %._crit_edge78
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge78 ], [ 0, %.lr.ph80 ] ; 4 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !154
  %i.gq = sext i32 %i.gp to i64                   ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !154 ; 2 uses
  %4 = sext i32 %i.gs to i64
  %i.gt = add nsw i64 %4, %i.gq
  %i.gu = icmp sgt i32 %i.gs, 0
  br i1 %i.gu, label %.lr.ph77.preheader, label %._crit_edge78

.lr.ph77.preheader:                               ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48
  %i.gv = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph77

._crit_edge78:                                    ; preds = %.lr.ph77, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next, %i.du
  br i1 %exitcond88.not, label %._crit_edge81, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi1EiEEE13InnerIteratorC2ERKS3_l.exit48, !llvm.loop !348

.lr.ph77:                                         ; preds = %.lr.ph77.preheader, %.lr.ph77
  %.sroa.8.076 = phi i64 [ %i.hh, %.lr.ph77 ], [ %i.gq, %.lr.ph77.preheader ] ; 3 uses
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %.sroa.8.076
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !154
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.gy ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !154 ; 2 uses
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !154
  %i.hc = sext i32 %i.ha to i64                   ; 2 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.hc
  store i32 %i.gv, ptr %i.hd, align 4, !tbaa !154
  %i.he = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.sroa.8.076
  %i.hf = load double, ptr %i.he, align 8, !tbaa !43
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.hc
  store double %i.hf, ptr %i.hg, align 8, !tbaa !43
  %i.hh = add nsw i64 %.sroa.8.076, 1             ; 2 uses
  %i.hi = icmp slt i64 %i.hh, %i.gt
  br i1 %i.hi, label %.lr.ph77, label %._crit_edge78, !llvm.loop !347

._crit_edge81:                                    ; preds = %._crit_edge78, %._crit_edge78.us, %.preheader.._crit_edge81_crit_edge
  %i.hj = phi ptr [ %.pre, %.preheader.._crit_edge81_crit_edge ], [ %i.eg, %._crit_edge78.us ], [ %i.eg, %._crit_edge78 ]
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hm = load <2 x i64>, ptr %i.e, align 8, !tbaa !150
  %i.hn = load <2 x i64>, ptr %i.hl, align 8, !tbaa !150
  store <2 x i64> %i.hm, ptr %i.hl, align 8, !tbaa !150
  store <2 x i64> %i.hn, ptr %i.e, align 8, !tbaa !150
  %i.ho = load <2 x ptr>, ptr %i.h, align 8, !tbaa !248
  %i.hp = load <2 x ptr>, ptr %i.hk, align 8, !tbaa !248
  %i.hq = load ptr, ptr %i.hk, align 8, !tbaa !248
  store <2 x ptr> %i.ho, ptr %i.hk, align 8, !tbaa !248
  store <2 x ptr> %i.hp, ptr %i.h, align 8, !tbaa !248
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hs = load ptr, ptr %i.ds, align 8, !tbaa !247
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hv = load <2 x ptr>, ptr %i.hr, align 8, !tbaa !254
  store ptr %i.hs, ptr %i.hr, align 8, !tbaa !247
  store ptr %i.hj, ptr %i.ht, align 8, !tbaa !248
  store <2 x ptr> %i.hv, ptr %i.ds, align 8, !tbaa !254
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.hx = load <2 x i64>, ptr %i.g, align 8, !tbaa !150
  %i.hy = load <2 x i64>, ptr %i.hw, align 8, !tbaa !150
  store <2 x i64> %i.hx, ptr %i.hw, align 8, !tbaa !150
  store <2 x i64> %i.hy, ptr %i.g, align 8, !tbaa !150
  call void @free(ptr noundef %.sroa.052.0106) #27
  call void @free(ptr noundef %i.hq) #27
  %i.hz = load ptr, ptr %i.n, align 8, !tbaa !136
  call void @free(ptr noundef %i.hz) #27
  %i.ia = load ptr, ptr %i.ds, align 8, !tbaa !137 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge81
  call void @_ZdaPv(ptr noundef nonnull %i.ia) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge81
  %i.ic = load ptr, ptr %i.hu, align 8, !tbaa !138 ; 2 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.ic) #29
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret ptr %0

.body45:                                          ; preds = %bb.h, %bb.g
  %.pn42 = phi { ptr, i32 } [ %i.gn, %bb.h ], [ %i.cw, %bb.g ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #27
  br label %.body

.body:                                            ; preds = %bb.c, %.body45
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %.body45 ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn42.pn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi1EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !334
  tail call void @free(ptr noundef %i.b) #27
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !340
  tail call void @free(ptr noundef %i.d) #27
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !137  ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !138  ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #29
  br label %_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit

_ZN5Eigen8internal17CompressedStorageIdiED2Ev.exit: ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12SparseMatrixIdLi1EiE19reserveInnerVectorsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvRKT_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !340  ; 4 uses
  %i.c = icmp eq ptr %i.b, null
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !335  ; 12 uses
  %i.f = shl i64 %i.e, 2                          ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #30 ; 7 uses
  store ptr %i.g, ptr %i.a, align 8, !tbaa !340
  %.not80 = icmp eq ptr %i.g, null
  br i1 %.not80, label %bb.c, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %.lr.ph106, label %._crit_edge107

.lr.ph106:                                        ; preds = %.preheader
  %i.i = load ptr, ptr %1, align 8, !tbaa !139    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !334  ; 4 uses
  %xtraiter153 = and i64 %i.e, 1
  %i.l = icmp eq i64 %i.e, 1
  br i1 %i.l, label %.epil.preheader152, label %.lr.ph106.new

.lr.ph106.new:                                    ; preds = %.lr.ph106
  %unroll_iter157 = and i64 %i.e, 9223372036854775806
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !140
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
  unreachable

._crit_edge107.loopexit.unr-lcssa:                ; preds = %bb.d
  %lcmp.mod154.not = icmp eq i64 %xtraiter153, 0
  br i1 %lcmp.mod154.not, label %._crit_edge107, label %.epil.preheader152

.epil.preheader152:                               ; preds = %._crit_edge107.loopexit.unr-lcssa, %.lr.ph106
  %.069105.epil.init = phi i64 [ 0, %.lr.ph106 ], [ %i.ba, %._crit_edge107.loopexit.unr-lcssa ]
  %.070104.epil.init = phi i32 [ 0, %.lr.ph106 ], [ %i.ay, %._crit_edge107.loopexit.unr-lcssa ]
  %.072103.epil.init = phi i64 [ 0, %.lr.ph106 ], [ %i.ar, %._crit_edge107.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod156 = trunc i64 %i.e to i1
  tail call void @llvm.assume(i1 %lcmp.mod156)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.072103.epil.init
  store i32 %.070104.epil.init, ptr %i.n, align 4, !tbaa !154
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %.072103.epil.init
  %i.p = load i32, ptr %i.o, align 4, !tbaa !154
  %i.q = sext i32 %i.p to i64
  %i.r = add nsw i64 %.069105.epil.init, %i.q
  br label %._crit_edge107

._crit_edge107:                                   ; preds = %.epil.preheader152, %._crit_edge107.loopexit.unr-lcssa, %.preheader
  %.069.lcssa = phi i64 [ 0, %.preheader ], [ %i.ba, %._crit_edge107.loopexit.unr-lcssa ], [ %i.r, %.epil.preheader152 ]
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 noundef %.069.lcssa)
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !334  ; 3 uses
  %i.v = load i64, ptr %i.d, align 8, !tbaa !335  ; 4 uses
  %i.w = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.v ; 2 uses
  %i.x = icmp sgt i64 %i.v, 0
  %i.y = load i32, ptr %i.w, align 4, !tbaa !154  ; 2 uses
  br i1 %i.x, label %.lr.ph117, label %._crit_edge118._crit_edge

.lr.ph117:                                        ; preds = %._crit_edge107
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !340
  br label %bb.e
end_hunk_1
begin_hunk_2_@_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_9TransposeIKS1_EEEERS1_RKNS_16SparseMatrixBaseIT_EE:bb.a
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.m) #27
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i64 %i.d, ptr %i.e, align 8, !tbaa !49
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
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %calloc, i8 0, i64 %i.z, i1 false), !tbaa !154
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
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.ah, i1 false), !tbaa !81
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
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i, i8 0, i64 %i.an, i1 false), !tbaa !154
  br label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ao = icmp sgt i64 %i.b, 0
  br i1 %i.ao, label %.lr.ph71, label %._crit_edge72

.lr.ph71:                                         ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !138 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !135 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !136 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us: ; preds = %.lr.ph71, %._crit_edge.us
  %.03370.us = phi i64 [ %i.cp, %._crit_edge.us ], [ 0, %.lr.ph71 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.03370.us ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !154 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !154 ; 2 uses
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = icmp slt i32 %i.ax, %i.az
  br i1 %i.bb, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us
  %i.bc = sext i32 %i.ax to i64                   ; 4 uses
  %i.bd = sub nsw i64 %i.ba, %i.bc
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader, %.lr.ph.us.prol
  %.sroa.755.069.us.prol = phi i64 [ %i.bk, %.lr.ph.us.prol ], [ %i.bc, %.lr.ph.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader ]
  %i.be = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !154
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !154
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !154
  %i.bk = add nsw i64 %.sroa.755.069.us.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !431

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.sroa.755.069.us.unr = phi i64 [ %i.bc, %.lr.ph.us.preheader ], [ %i.bk, %.lr.ph.us.prol ]
  %i.bl = sub nsw i64 %i.bc, %i.ba
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.sroa.755.069.us = phi i64 [ %i.co, %.lr.ph.us ], [ %.sroa.755.069.us.unr, %.lr.ph.us.prol.loopexit ] ; 5 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !154
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !154
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !154
  %i.bt = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !154
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !154
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !154
  %i.ca = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !154
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !154
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !154
  %i.ch = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.755.069.us
  %i.ci = getelementptr i8, ptr %i.ch, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !154
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !154
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !154
  %i.co = add nsw i64 %.sroa.755.069.us, 4        ; 2 uses
  %exitcond85.not.3 = icmp eq i64 %i.co, %i.ba
  br i1 %exitcond85.not.3, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !432

._crit_edge.us:                                   ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us
  %i.cp = add nuw nsw i64 %.03370.us, 1           ; 2 uses
  %exitcond86.not = icmp eq i64 %i.cp, %i.b
  br i1 %exitcond86.not, label %._crit_edge72, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us, !llvm.loop !433

._crit_edge72:                                    ; preds = %._crit_edge, %._crit_edge.us, %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.cq = icmp sgt i64 %i.d, 0
  br i1 %i.cq, label %bb.f, label %._crit_edge76

bb.f:                                             ; preds = %._crit_edge72
  %i.cr = icmp samesign ugt i64 %i.d, 4611686018427387903
  br i1 %i.cr, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.f
  %i.cs = tail call noalias ptr @malloc(i64 noundef %i.i) #30 ; 6 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.invoke.i, label %.lr.ph75.preheader

.lr.ph75.preheader:                               ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %xtraiter114 = and i64 %i.d, 1
  %i.cu = icmp eq i64 %i.d, 1
  br i1 %i.cu, label %.lr.ph75.epil.preheader, label %.lr.ph75.preheader.new

.lr.ph75.preheader.new:                           ; preds = %.lr.ph75.preheader
  %unroll_iter = and i64 %i.d, 4611686018427387902
  br label %.lr.ph75

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %bb.f
  %i.cv = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cv, align 8, !tbaa !140
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
          to label %.cont.i unwind label %bb.g

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %.invoke.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body42

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit: ; preds = %.lr.ph71, %._crit_edge
  %.03370 = phi i64 [ %i.de, %._crit_edge ], [ 0, %.lr.ph71 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.03370
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !154
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.03370
  %i.db = load i32, ptr %i.da, align 4, !tbaa !154 ; 2 uses
  %3 = sext i32 %i.db to i64
  %i.dc = add nsw i64 %3, %i.cz
  %i.dd = icmp sgt i32 %i.db, 0
  br i1 %i.dd, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit
  %i.de = add nuw nsw i64 %.03370, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.de, %i.b
  br i1 %exitcond.not, label %._crit_edge72, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, !llvm.loop !433

.lr.ph:                                           ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit, %.lr.ph
  %.sroa.755.069 = phi i64 [ %i.dl, %.lr.ph ], [ %i.cz, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit ] ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.755.069
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !154
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !154
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !154
  %i.dl = add nsw i64 %.sroa.755.069, 1           ; 2 uses
  %i.dm = icmp slt i64 %i.dl, %i.dc
  br i1 %i.dm, label %.lr.ph, label %._crit_edge, !llvm.loop !432

._crit_edge76.loopexit.unr-lcssa:                 ; preds = %.lr.ph75
  %lcmp.mod115.not = icmp eq i64 %xtraiter114, 0
  br i1 %lcmp.mod115.not, label %._crit_edge76, label %.lr.ph75.epil.preheader

.lr.ph75.epil.preheader:                          ; preds = %._crit_edge76.loopexit.unr-lcssa, %.lr.ph75.preheader
  %.03174.epil.init = phi i64 [ 0, %.lr.ph75.preheader ], [ %i.gm, %._crit_edge76.loopexit.unr-lcssa ] ; 2 uses
  %.03273.epil.init = phi i32 [ 0, %.lr.ph75.preheader ], [ %i.gl, %._crit_edge76.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod117 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod117)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.03174.epil.init ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !154
  store i32 %.03273.epil.init, ptr %i.dn, align 4, !tbaa !154
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.03174.epil.init
  store i32 %.03273.epil.init, ptr %i.dp, align 4, !tbaa !154
  %i.dq = add nsw i32 %i.do, %.03273.epil.init
  br label %._crit_edge76

._crit_edge76:                                    ; preds = %.lr.ph75.epil.preheader, %._crit_edge76.loopexit.unr-lcssa, %._crit_edge72
  %.sroa.049.0107 = phi ptr [ null, %._crit_edge72 ], [ %i.cs, %._crit_edge76.loopexit.unr-lcssa ], [ %i.cs, %.lr.ph75.epil.preheader ] ; 6 uses
  %.032.lcssa = phi i32 [ 0, %._crit_edge72 ], [ %i.gl, %._crit_edge76.loopexit.unr-lcssa ], [ %i.dq, %.lr.ph75.epil.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.d
  store i32 %.032.lcssa, ptr %i.dr, align 4, !tbaa !154
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.dt = sext i32 %.032.lcssa to i64
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, i64 noundef %i.dt, double noundef 0.000000e+00)
          to label %.preheader unwind label %bb.h

.preheader:                                       ; preds = %._crit_edge76
  %i.du = load i64, ptr %i.a, align 8, !tbaa !49  ; 3 uses
  %i.dv = icmp sgt i64 %i.du, 0
  br i1 %i.dv, label %.lr.ph81, label %.preheader.._crit_edge82_crit_edge

.preheader.._crit_edge82_crit_edge:               ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !248
  br label %._crit_edge82

.lr.ph81:                                         ; preds = %.preheader
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !137 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !138 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !135 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.466.0.copyload, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !136 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8            ; 6 uses
  %i.eh = load ptr, ptr %i.ds, align 8            ; 4 uses
  br i1 %i.ee, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45.us, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45.us: ; preds = %.lr.ph81, %._crit_edge79.us
  %indvars.iv91 = phi i64 [ %indvars.iv.next92, %._crit_edge79.us ], [ 0, %.lr.ph81 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv91 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !154 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ei, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !154 ; 2 uses
  %i.em = sext i32 %i.el to i64                   ; 3 uses
  %i.en = icmp slt i32 %i.ej, %i.el
  br i1 %i.en, label %.lr.ph78.us.preheader, label %._crit_edge79.us

.lr.ph78.us.preheader:                            ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45.us
  %i.eo = sext i32 %i.ej to i64                   ; 6 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv91 to i32  ; 3 uses
  %i.eq = sub nsw i64 %i.em, %i.eo
  %xtraiter118 = and i64 %i.eq, 1
  %lcmp.mod119.not = icmp eq i64 %xtraiter118, 0
  br i1 %lcmp.mod119.not, label %.lr.ph78.us.prol.loopexit, label %.lr.ph78.us.prol

.lr.ph78.us.prol:                                 ; preds = %.lr.ph78.us.preheader
  %i.er = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.eo
  %i.es = load i32, ptr %i.er, align 4, !tbaa !154
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %.sroa.049.0107, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !154 ; 2 uses
  %i.ew = add nsw i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !154
  %i.ex = sext i32 %i.ev to i64                   ; 2 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ex
  store i32 %i.ep, ptr %i.ey, align 4, !tbaa !154
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.eo
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !43
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ex
  store double %i.fa, ptr %i.fb, align 8, !tbaa !43
  %i.fc = add nsw i64 %i.eo, 1
  br label %.lr.ph78.us.prol.loopexit

.lr.ph78.us.prol.loopexit:                        ; preds = %.lr.ph78.us.prol, %.lr.ph78.us.preheader
  %.sroa.8.077.us.unr = phi i64 [ %i.eo, %.lr.ph78.us.preheader ], [ %i.fc, %.lr.ph78.us.prol ]
  %i.fd = add nsw i64 %i.em, -1
  %i.fe = icmp eq i64 %i.fd, %i.eo
  br i1 %i.fe, label %._crit_edge79.us, label %.lr.ph78.us

.lr.ph78.us:                                      ; preds = %.lr.ph78.us.prol.loopexit, %.lr.ph78.us
  %.sroa.8.077.us = phi i64 [ %i.gc, %.lr.ph78.us ], [ %.sroa.8.077.us.unr, %.lr.ph78.us.prol.loopexit ] ; 4 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %.sroa.8.077.us
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !154
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %.sroa.049.0107, i64 %i.fh ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !154 ; 2 uses
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !154
  %i.fl = sext i32 %i.fj to i64                   ; 2 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fl
  store i32 %i.ep, ptr %i.fm, align 4, !tbaa !154
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.sroa.8.077.us
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !43
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.fl
  store double %i.fo, ptr %i.fp, align 8, !tbaa !43
  %i.fq = add nsw i64 %.sroa.8.077.us, 1          ; 2 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !154
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %.sroa.049.0107, i64 %i.ft ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !154 ; 2 uses
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !154
  %i.fx = sext i32 %i.fv to i64                   ; 2 uses
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fx
  store i32 %i.ep, ptr %i.fy, align 4, !tbaa !154
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fq
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !43
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.fx
  store double %i.ga, ptr %i.gb, align 8, !tbaa !43
  %i.gc = add nsw i64 %.sroa.8.077.us, 2          ; 2 uses
  %exitcond90.not.1 = icmp eq i64 %i.gc, %i.em
  br i1 %exitcond90.not.1, label %._crit_edge79.us, label %.lr.ph78.us, !llvm.loop !434

._crit_edge79.us:                                 ; preds = %.lr.ph78.us.prol.loopexit, %.lr.ph78.us, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45.us
  %indvars.iv.next92 = add nuw nsw i64 %indvars.iv91, 1 ; 2 uses
  %exitcond94.not = icmp eq i64 %indvars.iv.next92, %i.du
  br i1 %exitcond94.not, label %._crit_edge82, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45.us, !llvm.loop !435

.lr.ph75:                                         ; preds = %.lr.ph75, %.lr.ph75.preheader.new
  %.03174 = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %i.gm, %.lr.ph75 ] ; 4 uses
  %.03273 = phi i32 [ 0, %.lr.ph75.preheader.new ], [ %i.gl, %.lr.ph75 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph75.preheader.new ], [ %niter.next.1, %.lr.ph75 ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.03174 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !154
  store i32 %.03273, ptr %i.gd, align 4, !tbaa !154
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.03174
  store i32 %.03273, ptr %i.gf, align 4, !tbaa !154
  %i.gg = add nsw i32 %i.ge, %.03273              ; 3 uses
  %i.gh = or disjoint i64 %.03174, 1              ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !154
  store i32 %i.gg, ptr %i.gi, align 4, !tbaa !154
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.gh
  store i32 %i.gg, ptr %i.gk, align 4, !tbaa !154
  %i.gl = add nsw i32 %i.gj, %i.gg                ; 3 uses
  %i.gm = add nuw nsw i64 %.03174, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge76.loopexit.unr-lcssa, label %.lr.ph75, !llvm.loop !436

bb.h:                                             ; preds = %._crit_edge76
  %i.gn = landingpad { ptr, i32 }
          cleanup
  call void @free(ptr noundef %.sroa.049.0107) #27
  br label %.body42

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45: ; preds = %.lr.ph81, %._crit_edge79
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge79 ], [ 0, %.lr.ph81 ] ; 4 uses
  %i.go = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv
  %i.gp = load i32, ptr %i.go, align 4, !tbaa !154
  %i.gq = sext i32 %i.gp to i64                   ; 2 uses
  %i.gr = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  %i.gs = load i32, ptr %i.gr, align 4, !tbaa !154 ; 2 uses
  %4 = sext i32 %i.gs to i64
  %i.gt = add nsw i64 %4, %i.gq
  %i.gu = icmp sgt i32 %i.gs, 0
  br i1 %i.gu, label %.lr.ph78.preheader, label %._crit_edge79

.lr.ph78.preheader:                               ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45
  %i.gv = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph78

._crit_edge79:                                    ; preds = %.lr.ph78, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond89.not = icmp eq i64 %indvars.iv.next, %i.du
  br i1 %exitcond89.not, label %._crit_edge82, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit45, !llvm.loop !435

.lr.ph78:                                         ; preds = %.lr.ph78.preheader, %.lr.ph78
  %.sroa.8.077 = phi i64 [ %i.hh, %.lr.ph78 ], [ %i.gq, %.lr.ph78.preheader ] ; 3 uses
  %i.gw = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %.sroa.8.077
  %i.gx = load i32, ptr %i.gw, align 4, !tbaa !154
  %i.gy = sext i32 %i.gx to i64
  %i.gz = getelementptr inbounds [4 x i8], ptr %.sroa.049.0107, i64 %i.gy ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 4, !tbaa !154 ; 2 uses
  %i.hb = add nsw i32 %i.ha, 1
  store i32 %i.hb, ptr %i.gz, align 4, !tbaa !154
  %i.hc = sext i32 %i.ha to i64                   ; 2 uses
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.hc
  store i32 %i.gv, ptr %i.hd, align 4, !tbaa !154
  %i.he = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.sroa.8.077
  %i.hf = load double, ptr %i.he, align 8, !tbaa !43
  %i.hg = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.hc
  store double %i.hf, ptr %i.hg, align 8, !tbaa !43
  %i.hh = add nsw i64 %.sroa.8.077, 1             ; 2 uses
  %i.hi = icmp slt i64 %i.hh, %i.gt
  br i1 %i.hi, label %.lr.ph78, label %._crit_edge79, !llvm.loop !434

._crit_edge82:                                    ; preds = %._crit_edge79, %._crit_edge79.us, %.preheader.._crit_edge82_crit_edge
  %i.hj = phi ptr [ %.pre, %.preheader.._crit_edge82_crit_edge ], [ %i.eg, %._crit_edge79.us ], [ %i.eg, %._crit_edge79 ]
  %i.hk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.hm = load <2 x i64>, ptr %i.e, align 8, !tbaa !150
  %i.hn = load <2 x i64>, ptr %i.hl, align 8, !tbaa !150
  store <2 x i64> %i.hm, ptr %i.hl, align 8, !tbaa !150
  store <2 x i64> %i.hn, ptr %i.e, align 8, !tbaa !150
  %i.ho = load <2 x ptr>, ptr %i.h, align 8, !tbaa !248
  %i.hp = load <2 x ptr>, ptr %i.hk, align 8, !tbaa !248
  %i.hq = load ptr, ptr %i.hk, align 8, !tbaa !248
  store <2 x ptr> %i.ho, ptr %i.hk, align 8, !tbaa !248
  store <2 x ptr> %i.hp, ptr %i.h, align 8, !tbaa !248
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.hs = load ptr, ptr %i.ds, align 8, !tbaa !247
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.hv = load <2 x ptr>, ptr %i.hr, align 8, !tbaa !254
  store ptr %i.hs, ptr %i.hr, align 8, !tbaa !247
  store ptr %i.hj, ptr %i.ht, align 8, !tbaa !248
  store <2 x ptr> %i.hv, ptr %i.ds, align 8, !tbaa !254
  %i.hw = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.hx = load <2 x i64>, ptr %i.g, align 8, !tbaa !150
  %i.hy = load <2 x i64>, ptr %i.hw, align 8, !tbaa !150
  store <2 x i64> %i.hx, ptr %i.hw, align 8, !tbaa !150
  store <2 x i64> %i.hy, ptr %i.g, align 8, !tbaa !150
  call void @free(ptr noundef %.sroa.049.0107) #27
  call void @free(ptr noundef %i.hq) #27
  %i.hz = load ptr, ptr %i.n, align 8, !tbaa !136
  call void @free(ptr noundef %i.hz) #27
  %i.ia = load ptr, ptr %i.ds, align 8, !tbaa !137 ; 2 uses
  %i.ib = icmp eq ptr %i.ia, null
  br i1 %i.ib, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge82
  call void @_ZdaPv(ptr noundef nonnull %i.ia) #29
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge82
  %i.ic = load ptr, ptr %i.hu, align 8, !tbaa !138 ; 2 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @_ZdaPv(ptr noundef nonnull %i.ic) #29
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret ptr %0

.body42:                                          ; preds = %bb.h, %bb.g
  %.pn39 = phi { ptr, i32 } [ %i.gn, %bb.h ], [ %i.cw, %bb.g ]
  call void @_ZN5Eigen12SparseMatrixIdLi0EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #27
  br label %.body

.body:                                            ; preds = %bb.c, %.body42
  %.pn39.pn = phi { ptr, i32 } [ %.pn39, %.body42 ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn39.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_S7_EEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !383, !range !238, !noundef !60
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_S7_EEEEvRKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !437, !nonnull !60, !align !221 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !168
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !49
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.f, i64 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !136  ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_S7_EEEEvRKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.j) #27
  store ptr null, ptr %i.i, align 8, !tbaa !136
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_S7_EEEEvRKT_.exit

_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_S7_EEEEvRKT_.exit: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS3_S7_EEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(25) %1)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS3_S7_EEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::SparseMatrix", align 8 ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !441, !nonnull !60, !align !221 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !437, !nonnull !60, !align !221 ; 11 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !49   ; 14 uses
  %i.g = load i8, ptr %1, align 8, !tbaa !383, !range !238, !noundef !60
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.z

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !168
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.j, i64 noundef %i.f)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 4 uses
  store i64 0, ptr %i.k, align 8, !tbaa !169
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !135
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !49
  %i.p = shl i64 %i.o, 2
  %i.q = add i64 %i.p, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.m, i8 0, i64 %i.q, i1 false)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !136  ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = load i64, ptr %i.n, align 8, !tbaa !49
  %i.u = shl i64 %i.t, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.s, i8 0, i64 %i.u, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit:   ; preds = %bb.b, %bb.c
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !437, !nonnull !60, !align !221 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !168  ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.z = load i64, ptr %i.y, align 8, !tbaa !49   ; 2 uses
  %i.aa = mul nsw i64 %i.z, %i.x
  %.sroa.speculated161 = tail call i64 @llvm.smax.i64(i64 %i.x, i64 %i.z)
  %i.ab = shl nsw i64 %.sroa.speculated161, 1
  %.sroa.speculated166 = tail call i64 @llvm.smin.i64(i64 %i.ab, i64 %i.aa)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  tail call void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 noundef %.sroa.speculated166)
  %i.ad = icmp sgt i64 %i.f, 0
  br i1 %i.ad, label %.lr.ph216, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge

.lr.ph216:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  br label %bb.g

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit, %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit
  %i.an = load ptr, ptr %i.r, align 8, !tbaa !136
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.d, label %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge
  %i.ap = load i64, ptr %i.k, align 8, !tbaa !169
  %i.aq = trunc i64 %i.ap to i32                  ; 2 uses
  %i.ar = load i64, ptr %i.n, align 8, !tbaa !49  ; 5 uses
end_hunk_2
begin_hunk_3_@_ZN5Eigen12SparseMatrixIdLi1EiEaSINS0_IdLi0EiEEEERS1_RKNS_16SparseMatrixBaseIT_EE:bb.a
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.m) #27
  br label %.body

bb.d:                                             ; preds = %bb.a
  store i64 %i.b, ptr %i.e, align 8, !tbaa !335
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.o = ptrtoint ptr %calloc to i64              ; 2 uses
  %i.p = and i64 %i.o, 3
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.q = lshr exact i64 %i.o, 2
  %i.r = sub nsw i64 0, %i.q
  %i.s = and i64 %i.r, 3
  %i.t = tail call i64 @llvm.smin.i64(i64 %i.s, i64 %i.b)
  br label %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.t, %bb.e ], [ %i.b, %bb.d ] ; 8 uses
  %i.u = sub i64 %i.b, %.0.i.i.i.i.i.i.i.i.i.i.i  ; 3 uses
  %i.v = sdiv i64 %i.u, 4                         ; 2 uses
  %i.w = shl nsw i64 %i.v, 2                      ; 2 uses
  %i.x = add i64 %i.w, %.0.i.i.i.i.i.i.i.i.i.i.i  ; 2 uses
  %i.y = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.y, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EilEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.z = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %calloc, i8 0, i64 %i.z, i1 false), !tbaa !154
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
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.ah, i1 false), !tbaa !81
  br label %._crit_edge.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIiEES8_EEEENS0_9assign_opIiiEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.ai = icmp slt i64 %i.x, %i.b
  br i1 %i.ai, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i:         ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.aj = shl i64 %i.v, 4
  %i.ak = shl nuw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  %i.al = getelementptr i8, ptr %calloc, i64 %i.aj
  %scevgep1.i = getelementptr i8, ptr %i.al, i64 %i.ak
  %i.am = sub i64 %i.u, %i.w
  %i.an = shl nuw i64 %i.am, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %scevgep1.i, i8 0, i64 %i.an, i1 false), !tbaa !154
  br label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.preheader.i, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.ao = icmp sgt i64 %i.d, 0
  br i1 %i.ao, label %.lr.ph70, label %._crit_edge71

.lr.ph70:                                         ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !138 ; 6 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !135 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !136 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us: ; preds = %.lr.ph70, %._crit_edge.us
  %.03669.us = phi i64 [ %i.cp, %._crit_edge.us ], [ 0, %.lr.ph70 ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.03669.us ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !154 ; 2 uses
  %i.ay = getelementptr i8, ptr %i.aw, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !154 ; 2 uses
  %i.ba = sext i32 %i.az to i64                   ; 3 uses
  %i.bb = icmp slt i32 %i.ax, %i.az
  br i1 %i.bb, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.bc = sext i32 %i.ax to i64                   ; 4 uses
  %i.bd = sub nsw i64 %i.ba, %i.bc
  %xtraiter = and i64 %i.bd, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader, %.lr.ph.us.prol
  %.sroa.758.068.us.prol = phi i64 [ %i.bk, %.lr.ph.us.prol ], [ %i.bc, %.lr.ph.us.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader ]
  %i.be = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us.prol
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !154
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !154
  %i.bj = add nsw i32 %i.bi, 1
  store i32 %i.bj, ptr %i.bh, align 4, !tbaa !154
  %i.bk = add nsw i64 %.sroa.758.068.us.prol, 1   ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !495

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.sroa.758.068.us.unr = phi i64 [ %i.bc, %.lr.ph.us.preheader ], [ %i.bk, %.lr.ph.us.prol ]
  %i.bl = sub nsw i64 %i.bc, %i.ba
  %i.bm = icmp ugt i64 %i.bl, -4
  br i1 %i.bm, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.sroa.758.068.us = phi i64 [ %i.co, %.lr.ph.us ], [ %.sroa.758.068.us.unr, %.lr.ph.us.prol.loopexit ] ; 5 uses
  %i.bn = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !154
  %i.bp = sext i32 %i.bo to i64
  %i.bq = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bp ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !154
  %i.bs = add nsw i32 %i.br, 1
  store i32 %i.bs, ptr %i.bq, align 4, !tbaa !154
  %i.bt = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !154
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.bw ; 2 uses
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !154
  %i.bz = add nsw i32 %i.by, 1
  store i32 %i.bz, ptr %i.bx, align 4, !tbaa !154
  %i.ca = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.cb = getelementptr i8, ptr %i.ca, i64 8
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !154
  %i.cd = sext i32 %i.cc to i64
  %i.ce = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !154
  %i.cg = add nsw i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !154
  %i.ch = getelementptr [4 x i8], ptr %i.aq, i64 %.sroa.758.068.us
  %i.ci = getelementptr i8, ptr %i.ch, i64 12
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !154
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.ck ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !154
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.cl, align 4, !tbaa !154
  %i.co = add nsw i64 %.sroa.758.068.us, 4        ; 2 uses
  %exitcond84.not.3 = icmp eq i64 %i.co, %i.ba
  br i1 %exitcond84.not.3, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !496

._crit_edge.us:                                   ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.cp = add nuw nsw i64 %.03669.us, 1           ; 2 uses
  %exitcond85.not = icmp eq i64 %i.cp, %i.d
  br i1 %exitcond85.not, label %._crit_edge71, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us, !llvm.loop !497

._crit_edge71:                                    ; preds = %._crit_edge, %._crit_edge.us, %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setZeroEv.exit
  %i.cq = icmp sgt i64 %i.b, 0
  br i1 %i.cq, label %bb.f, label %._crit_edge75

bb.f:                                             ; preds = %._crit_edge71
  %i.cr = icmp samesign ugt i64 %i.b, 4611686018427387903
  br i1 %i.cr, label %.invoke.i, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.f
  %i.cs = tail call noalias ptr @malloc(i64 noundef %i.i) #30 ; 6 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.invoke.i, label %.lr.ph74.preheader

.lr.ph74.preheader:                               ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i
  %xtraiter113 = and i64 %i.b, 1
  %i.cu = icmp eq i64 %i.b, 1
  br i1 %i.cu, label %.lr.ph74.epil.preheader, label %.lr.ph74.preheader.new

.lr.ph74.preheader.new:                           ; preds = %.lr.ph74.preheader
  %unroll_iter = and i64 %i.b, 4611686018427387902
  br label %.lr.ph74

.invoke.i:                                        ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %bb.f
  %i.cv = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.cv, align 8, !tbaa !140
  invoke void @__cxa_throw(ptr nonnull %i.cv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
          to label %.cont.i unwind label %bb.g

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.g:                                             ; preds = %.invoke.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body45

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %.lr.ph70, %._crit_edge
  %.03669 = phi i64 [ %i.de, %._crit_edge ], [ 0, %.lr.ph70 ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %.03669
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !154
  %i.cz = sext i32 %i.cy to i64                   ; 2 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %.03669
  %i.db = load i32, ptr %i.da, align 4, !tbaa !154 ; 2 uses
  %3 = sext i32 %i.db to i64
  %i.dc = add nsw i64 %3, %i.cz
  %i.dd = icmp sgt i32 %i.db, 0
  br i1 %i.dd, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.de = add nuw nsw i64 %.03669, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.de, %i.d
  br i1 %exitcond.not, label %._crit_edge71, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, !llvm.loop !497

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, %.lr.ph
  %.sroa.758.068 = phi i64 [ %i.dl, %.lr.ph ], [ %i.cz, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %.sroa.758.068
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !154
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.dh ; 2 uses
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !154
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 4, !tbaa !154
  %i.dl = add nsw i64 %.sroa.758.068, 1           ; 2 uses
  %i.dm = icmp slt i64 %i.dl, %i.dc
  br i1 %i.dm, label %.lr.ph, label %._crit_edge, !llvm.loop !496

._crit_edge75.loopexit.unr-lcssa:                 ; preds = %.lr.ph74
  %lcmp.mod114.not = icmp eq i64 %xtraiter113, 0
  br i1 %lcmp.mod114.not, label %._crit_edge75, label %.lr.ph74.epil.preheader

.lr.ph74.epil.preheader:                          ; preds = %._crit_edge75.loopexit.unr-lcssa, %.lr.ph74.preheader
  %.03473.epil.init = phi i64 [ 0, %.lr.ph74.preheader ], [ %i.gm, %._crit_edge75.loopexit.unr-lcssa ] ; 2 uses
  %.03572.epil.init = phi i32 [ 0, %.lr.ph74.preheader ], [ %i.gl, %._crit_edge75.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod116 = trunc i64 %i.b to i1
  tail call void @llvm.assume(i1 %lcmp.mod116)
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.03473.epil.init ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !154
  store i32 %.03572.epil.init, ptr %i.dn, align 4, !tbaa !154
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.03473.epil.init
  store i32 %.03572.epil.init, ptr %i.dp, align 4, !tbaa !154
  %i.dq = add nsw i32 %i.do, %.03572.epil.init
  br label %._crit_edge75

._crit_edge75:                                    ; preds = %.lr.ph74.epil.preheader, %._crit_edge75.loopexit.unr-lcssa, %._crit_edge71
  %.sroa.052.0106 = phi ptr [ null, %._crit_edge71 ], [ %i.cs, %._crit_edge75.loopexit.unr-lcssa ], [ %i.cs, %.lr.ph74.epil.preheader ] ; 6 uses
  %.035.lcssa = phi i32 [ 0, %._crit_edge71 ], [ %i.gl, %._crit_edge75.loopexit.unr-lcssa ], [ %i.dq, %.lr.ph74.epil.preheader ] ; 2 uses
  %i.dr = getelementptr inbounds [4 x i8], ptr %calloc, i64 %i.b
  store i32 %.035.lcssa, ptr %i.dr, align 4, !tbaa !154
  %i.ds = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.dt = sext i32 %.035.lcssa to i64
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE6resizeEld(ptr noundef nonnull align 8 dereferenceable(32) %i.ds, i64 noundef %i.dt, double noundef 0.000000e+00)
          to label %.preheader unwind label %bb.k

.preheader:                                       ; preds = %._crit_edge75
  %i.du = load i64, ptr %i.c, align 8, !tbaa !49  ; 3 uses
  %i.dv = icmp sgt i64 %i.du, 0
  br i1 %i.dv, label %.lr.ph80, label %.preheader.._crit_edge81_crit_edge

.preheader.._crit_edge81_crit_edge:               ; preds = %.preheader
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !248
  br label %._crit_edge81

.lr.ph80:                                         ; preds = %.preheader
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !137 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !138 ; 4 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !135 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !136 ; 2 uses
  %i.ee = icmp eq ptr %i.ed, null
  %i.ef = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8            ; 6 uses
  %i.eh = load ptr, ptr %i.ds, align 8            ; 4 uses
  br i1 %i.ee, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48.us, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48.us: ; preds = %.lr.ph80, %._crit_edge78.us
  %indvars.iv90 = phi i64 [ %indvars.iv.next91, %._crit_edge78.us ], [ 0, %.lr.ph80 ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv90 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !154 ; 2 uses
  %i.ek = getelementptr i8, ptr %i.ei, i64 4
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !154 ; 2 uses
  %i.em = sext i32 %i.el to i64                   ; 3 uses
  %i.en = icmp slt i32 %i.ej, %i.el
  br i1 %i.en, label %.lr.ph77.us.preheader, label %._crit_edge78.us

.lr.ph77.us.preheader:                            ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48.us
  %i.eo = sext i32 %i.ej to i64                   ; 6 uses
  %i.ep = trunc nuw nsw i64 %indvars.iv90 to i32  ; 3 uses
  %i.eq = sub nsw i64 %i.em, %i.eo
  %xtraiter117 = and i64 %i.eq, 1
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %.lr.ph77.us.prol.loopexit, label %.lr.ph77.us.prol

.lr.ph77.us.prol:                                 ; preds = %.lr.ph77.us.preheader
  %i.er = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.eo
  %i.es = load i32, ptr %i.er, align 4, !tbaa !154
  %i.et = sext i32 %i.es to i64
  %i.eu = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.et ; 2 uses
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !154 ; 2 uses
  %i.ew = add nsw i32 %i.ev, 1
  store i32 %i.ew, ptr %i.eu, align 4, !tbaa !154
  %i.ex = sext i32 %i.ev to i64                   ; 2 uses
  %i.ey = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.ex
  store i32 %i.ep, ptr %i.ey, align 4, !tbaa !154
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.eo
  %i.fa = load double, ptr %i.ez, align 8, !tbaa !43
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.ex
  store double %i.fa, ptr %i.fb, align 8, !tbaa !43
  %i.fc = add nsw i64 %i.eo, 1
  br label %.lr.ph77.us.prol.loopexit

.lr.ph77.us.prol.loopexit:                        ; preds = %.lr.ph77.us.prol, %.lr.ph77.us.preheader
  %.sroa.8.076.us.unr = phi i64 [ %i.eo, %.lr.ph77.us.preheader ], [ %i.fc, %.lr.ph77.us.prol ]
  %i.fd = add nsw i64 %i.em, -1
  %i.fe = icmp eq i64 %i.fd, %i.eo
  br i1 %i.fe, label %._crit_edge78.us, label %.lr.ph77.us

.lr.ph77.us:                                      ; preds = %.lr.ph77.us.prol.loopexit, %.lr.ph77.us
  %.sroa.8.076.us = phi i64 [ %i.gc, %.lr.ph77.us ], [ %.sroa.8.076.us.unr, %.lr.ph77.us.prol.loopexit ] ; 4 uses
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %.sroa.8.076.us
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !154
  %i.fh = sext i32 %i.fg to i64
  %i.fi = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.fh ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !154 ; 2 uses
  %i.fk = add nsw i32 %i.fj, 1
  store i32 %i.fk, ptr %i.fi, align 4, !tbaa !154
  %i.fl = sext i32 %i.fj to i64                   ; 2 uses
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fl
  store i32 %i.ep, ptr %i.fm, align 4, !tbaa !154
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.sroa.8.076.us
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !43
  %i.fp = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.fl
  store double %i.fo, ptr %i.fp, align 8, !tbaa !43
  %i.fq = add nsw i64 %.sroa.8.076.us, 1          ; 2 uses
  %i.fr = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.fq
  %i.fs = load i32, ptr %i.fr, align 4, !tbaa !154
  %i.ft = sext i32 %i.fs to i64
  %i.fu = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.ft ; 2 uses
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !154 ; 2 uses
  %i.fw = add nsw i32 %i.fv, 1
  store i32 %i.fw, ptr %i.fu, align 4, !tbaa !154
  %i.fx = sext i32 %i.fv to i64                   ; 2 uses
  %i.fy = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.fx
  store i32 %i.ep, ptr %i.fy, align 4, !tbaa !154
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %i.fq
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !43
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.fx
  store double %i.ga, ptr %i.gb, align 8, !tbaa !43
  %i.gc = add nsw i64 %.sroa.8.076.us, 2          ; 2 uses
  %exitcond89.not.1 = icmp eq i64 %i.gc, %i.em
  br i1 %exitcond89.not.1, label %._crit_edge78.us, label %.lr.ph77.us, !llvm.loop !498

._crit_edge78.us:                                 ; preds = %.lr.ph77.us.prol.loopexit, %.lr.ph77.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48.us
  %indvars.iv.next91 = add nuw nsw i64 %indvars.iv90, 1 ; 2 uses
  %exitcond93.not = icmp eq i64 %indvars.iv.next91, %i.du
  br i1 %exitcond93.not, label %._crit_edge81, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48.us, !llvm.loop !499

.lr.ph74:                                         ; preds = %.lr.ph74, %.lr.ph74.preheader.new
  %.03473 = phi i64 [ 0, %.lr.ph74.preheader.new ], [ %i.gm, %.lr.ph74 ] ; 4 uses
  %.03572 = phi i32 [ 0, %.lr.ph74.preheader.new ], [ %i.gl, %.lr.ph74 ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph74.preheader.new ], [ %niter.next.1, %.lr.ph74 ]
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %.03473 ; 2 uses
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !154
  store i32 %.03572, ptr %i.gd, align 4, !tbaa !154
  %i.gf = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %.03473
  store i32 %.03572, ptr %i.gf, align 4, !tbaa !154
  %i.gg = add nsw i32 %i.ge, %.03572              ; 3 uses
  %i.gh = or disjoint i64 %.03473, 1              ; 2 uses
  %i.gi = getelementptr inbounds nuw [4 x i8], ptr %calloc, i64 %i.gh ; 2 uses
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !154
  store i32 %i.gg, ptr %i.gi, align 4, !tbaa !154
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %i.gh
  store i32 %i.gg, ptr %i.gk, align 4, !tbaa !154
  %i.gl = add nsw i32 %i.gj, %i.gg                ; 3 uses
  %i.gm = add nuw nsw i64 %.03473, 2              ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge75.loopexit.unr-lcssa, label %.lr.ph74, !llvm.loop !500

._crit_edge81:                                    ; preds = %._crit_edge78, %._crit_edge78.us, %.preheader.._crit_edge81_crit_edge
  %i.gn = phi ptr [ %.pre, %.preheader.._crit_edge81_crit_edge ], [ %i.eg, %._crit_edge78.us ], [ %i.eg, %._crit_edge78 ]
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.gq = load <2 x i64>, ptr %i.e, align 8, !tbaa !150
  %i.gr = load <2 x i64>, ptr %i.gp, align 8, !tbaa !150
  store <2 x i64> %i.gq, ptr %i.gp, align 8, !tbaa !150
  store <2 x i64> %i.gr, ptr %i.e, align 8, !tbaa !150
  %i.gs = load <2 x ptr>, ptr %i.h, align 8, !tbaa !248
  %i.gt = load <2 x ptr>, ptr %i.go, align 8, !tbaa !248
  %i.gu = load ptr, ptr %i.go, align 8, !tbaa !248
  store <2 x ptr> %i.gs, ptr %i.go, align 8, !tbaa !248
  store <2 x ptr> %i.gt, ptr %i.h, align 8, !tbaa !248
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.gw = load ptr, ptr %i.ds, align 8, !tbaa !247
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gy = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.gz = load <2 x ptr>, ptr %i.gv, align 8, !tbaa !254
  store ptr %i.gw, ptr %i.gv, align 8, !tbaa !247
  store ptr %i.gn, ptr %i.gx, align 8, !tbaa !248
  store <2 x ptr> %i.gz, ptr %i.ds, align 8, !tbaa !254
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.hb = load <2 x i64>, ptr %i.g, align 8, !tbaa !150
  %i.hc = load <2 x i64>, ptr %i.ha, align 8, !tbaa !150
  store <2 x i64> %i.hb, ptr %i.ha, align 8, !tbaa !150
  store <2 x i64> %i.hc, ptr %i.g, align 8, !tbaa !150
  call void @free(ptr noundef %.sroa.052.0106) #27
  call void @free(ptr noundef %i.gu) #27
  %i.hd = load ptr, ptr %i.n, align 8, !tbaa !340
  call void @free(ptr noundef %i.hd) #27
  %i.he = load ptr, ptr %i.ds, align 8, !tbaa !137 ; 2 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge81
  call void @_ZdaPv(ptr noundef nonnull %i.he) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %._crit_edge81
  %i.hg = load ptr, ptr %i.gy, align 8, !tbaa !138 ; 2 uses
  %i.hh = icmp eq ptr %i.hg, null
  br i1 %i.hh, label %_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @_ZdaPv(ptr noundef nonnull %i.hg) #29
  br label %_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi1EiED2Ev.exit:         ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret ptr %0

bb.k:                                             ; preds = %._crit_edge75
  %i.hi = landingpad { ptr, i32 }
          cleanup
  call void @free(ptr noundef %.sroa.052.0106) #27
  br label %.body45

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48: ; preds = %.lr.ph80, %._crit_edge78
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge78 ], [ 0, %.lr.ph80 ] ; 4 uses
  %i.hj = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv
  %i.hk = load i32, ptr %i.hj, align 4, !tbaa !154
  %i.hl = sext i32 %i.hk to i64                   ; 2 uses
  %i.hm = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv
  %i.hn = load i32, ptr %i.hm, align 4, !tbaa !154 ; 2 uses
  %4 = sext i32 %i.hn to i64
  %i.ho = add nsw i64 %4, %i.hl
  %i.hp = icmp sgt i32 %i.hn, 0
  br i1 %i.hp, label %.lr.ph77.preheader, label %._crit_edge78

.lr.ph77.preheader:                               ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48
  %i.hq = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph77

._crit_edge78:                                    ; preds = %.lr.ph77, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond88.not = icmp eq i64 %indvars.iv.next, %i.du
  br i1 %exitcond88.not, label %._crit_edge81, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit48, !llvm.loop !499

.lr.ph77:                                         ; preds = %.lr.ph77.preheader, %.lr.ph77
  %.sroa.8.076 = phi i64 [ %i.ic, %.lr.ph77 ], [ %i.hl, %.lr.ph77.preheader ] ; 3 uses
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %.sroa.8.076
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !154
  %i.ht = sext i32 %i.hs to i64
  %i.hu = getelementptr inbounds [4 x i8], ptr %.sroa.052.0106, i64 %i.ht ; 2 uses
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !154 ; 2 uses
  %i.hw = add nsw i32 %i.hv, 1
  store i32 %i.hw, ptr %i.hu, align 4, !tbaa !154
  %i.hx = sext i32 %i.hv to i64                   ; 2 uses
  %i.hy = getelementptr inbounds [4 x i8], ptr %i.eg, i64 %i.hx
  store i32 %i.hq, ptr %i.hy, align 4, !tbaa !154
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.dx, i64 %.sroa.8.076
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !43
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.eh, i64 %i.hx
  store double %i.ia, ptr %i.ib, align 8, !tbaa !43
  %i.ic = add nsw i64 %.sroa.8.076, 1             ; 2 uses
  %i.id = icmp slt i64 %i.ic, %i.ho
  br i1 %i.id, label %.lr.ph77, label %._crit_edge78, !llvm.loop !498

.body45:                                          ; preds = %bb.k, %bb.g
  %.pn42 = phi { ptr, i32 } [ %i.hi, %bb.k ], [ %i.cw, %bb.g ]
  call void @_ZN5Eigen12SparseMatrixIdLi1EiED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %2) #27
  br label %.body

.body:                                            ; preds = %bb.c, %.body45
  %.pn42.pn = phi { ptr, i32 } [ %.pn42, %.body45 ], [ %i.l, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  resume { ptr, i32 } %.pn42.pn
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(24) ptr @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSIS2_EERS2_RKNS_9EigenBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !131  ; 4 uses
  %i.e = icmp eq i64 %i.b, 0
  %i.f = icmp eq i64 %i.d, 0
  %or.cond.i.i.i = or i1 %i.e, %i.f
  br i1 %or.cond.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sdiv i64 9223372036854775807, %i.d
  %i.h = icmp sgt i64 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit

bb.c:                                             ; preds = %bb.b
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !140
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit: ; preds = %bb.a, %bb.b
  %i.j = mul nsw i64 %i.d, %i.b
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.j, i64 noundef %i.b, i64 noundef %i.d)
  %i.k = load ptr, ptr %1, align 8, !tbaa !61     ; 8 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = load i64, ptr %i.a, align 8, !tbaa !9    ; 6 uses
  %i.n = load i64, ptr %i.c, align 8, !tbaa !131  ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !9
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.p, %i.m
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %.not8.i.i.i.i.i.i.i = icmp eq i64 %i.r, %i.n
  %or.cond.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 %.not8.i.i.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit
  %i.s = icmp eq i64 %i.m, 0
  %i.t = icmp eq i64 %i.n, 0
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.s, %i.t
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = sdiv i64 9223372036854775807, %i.n
  %i.v = icmp sgt i64 %i.m, %i.u
  br i1 %i.v, label %.noexc.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i

.noexc.i.i.i.i.i.i:                               ; preds = %bb.e
  %i.w = tail call ptr @__cxa_allocate_exception(i64 8) #27 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.w, align 8, !tbaa !140
  tail call void @__cxa_throw(ptr nonnull %i.w, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #31
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.x = mul nsw i64 %i.n, %i.m
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.x, i64 noundef %i.m, i64 noundef %i.n)
  %.pre.i.i.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !9
  %.pre20.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !tbaa !131
  br label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit
  %i.y = phi i64 [ %.pre20.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i ], [ %i.n, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit ]
  %i.z = phi i64 [ %.pre.i.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i ], [ %i.m, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE16_resize_to_matchIS2_EEvRKNS_9EigenBaseIT_EE.exit ]
  %i.aa = load ptr, ptr %0, align 8, !tbaa !61    ; 8 uses
  %i.ab = ptrtoaddr ptr %i.aa to i64
  %i.ac = mul nsw i64 %i.z, %i.y                  ; 7 uses
  %i.ad = sdiv i64 %i.ac, 2                       ; 2 uses
  %i.ae = shl nsw i64 %i.ad, 1                    ; 5 uses
  %i.af = icmp sgt i64 %i.ac, 1
  br i1 %i.af, label %.lr.ph.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  %i.ag = icmp slt i64 %i.ae, %i.ac
  br i1 %i.ag, label %.lr.ph.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i.i
  %i.ah = shl nsw i64 %i.ad, 1
  %i.ai = sub i64 %i.ac, %i.ah                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.ai, 8
  %i.aj = sub i64 %i.l, %i.ab
  %diff.check = icmp ugt i64 %i.aj, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.i.preheader11, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ai, -4                      ; 3 uses
  %i.ak = add i64 %i.ae, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.al = add i64 %i.ae, %index                   ; 2 uses
  %i.am = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.al ; 2 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.al ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %wide.load = load <2 x double>, ptr %i.an, align 8, !tbaa !43
  %wide.load10 = load <2 x double>, ptr %i.ao, align 8, !tbaa !43
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  store <2 x double> %wide.load, ptr %i.am, align 8, !tbaa !43
  store <2 x double> %wide.load10, ptr %i.ap, align 8, !tbaa !43
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aq = icmp eq i64 %index.next, %n.vec
  br i1 %i.aq, label %middle.block, label %vector.body, !llvm.loop !501

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ai, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i.preheader11

.lr.ph.i.i.i.i.i.i.i.i.preheader11:               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ae, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ak, %middle.block ] ; 4 uses
  %i.ar = sub i64 %i.ac, %.05.i.i.i.i.i.i.i.i.ph
  %xtraiter = and i64 %i.ar, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader11, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader11 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader11 ]
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.at = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.05.i.i.i.i.i.i.i.i.prol
  %i.au = load double, ptr %i.at, align 8, !tbaa !43
  store double %i.au, ptr %i.as, align 8, !tbaa !43
  %i.av = add nsw i64 %.05.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !502

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader11
  %.05.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.preheader11 ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.aw = sub i64 %.05.i.i.i.i.i.i.i.i.ph, %i.ac
  %i.ax = icmp ugt i64 %i.aw, -4
  br i1 %i.ax, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEaSERKS3_.exit, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ay = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.05.i.i.i.i.i.i.i.i
  %i.az = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.05.i.i.i.i.i.i.i.i
  %i.ba = load double, ptr %i.az, align 8, !tbaa !43
  store double %i.ba, ptr %i.ay, align 8, !tbaa !43
  %i.bb = add nsw i64 %.05.i.i.i.i.i.i.i.i, 1     ; 2 uses
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bb
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bb
  %i.be = load double, ptr %i.bd, align 8, !tbaa !43
  store double %i.be, ptr %i.bc, align 8, !tbaa !43
  %i.bf = add nsw i64 %.05.i.i.i.i.i.i.i.i, 2     ; 2 uses
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bf
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bf
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !43
  store double %i.bi, ptr %i.bg, align 8, !tbaa !43
  %i.bj = add nsw i64 %.05.i.i.i.i.i.i.i.i, 3     ; 2 uses
  %i.bk = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.bj
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.bj
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !43
end_hunk_3
begin_hunk_4_@_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_12SparseMatrixIdLi0EiEES3_S3_EEvRKT_RKT0_RT1_b:bb.a
  %i.qs = trunc i64 %.0301 to i32
  %i.qt = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !138
  %i.qu = getelementptr inbounds [4 x i8], ptr %i.qt, i64 %i.qn
  store i32 %i.qs, ptr %i.qu, align 4, !tbaa !154
  %i.qv = getelementptr inbounds [8 x i8], ptr %i.qq, i64 %i.qp
  store double %i.qh, ptr %i.qv, align 8, !tbaa !43
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  %i.qw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bi:                                            ; preds = %.lr.ph302, %bb.bg
  %i.qx = add nuw nsw i64 %.0301, 1               ; 2 uses
  %exitcond325.not = icmp eq i64 %i.qx, %i.b
  br i1 %exitcond325.not, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit, label %.lr.ph302, !llvm.loop !613

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit:   ; preds = %bb.at, %bb.bi, %bb.be, %._crit_edge297.thread, %.preheader272, %.preheader, %_ZSt4sortIPlEvT_S1_.exit
  %i.qy = add nuw nsw i64 %.0116305, 1            ; 2 uses
  %exitcond327.not = icmp eq i64 %i.qy, %i.d
  br i1 %exitcond327.not, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge, label %bb.af, !llvm.loop !614

_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit:  ; preds = %.lr.ph13.i, %middle.block480, %.critedge.i, %bb.ab, %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge
  br i1 %i.ab, label %bb.bj, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.bj:                                            ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit
  call void @free(ptr noundef nonnull %i.ae) #27
  call void @free(ptr noundef nonnull %i.ac) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE8finalizeEv.exit, %bb.bj
  br i1 %i.e, label %bb.bk, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit

bb.bk:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.ad) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.bk
  ret void

.body:                                            ; preds = %.loopexit270, %.loopexit.split-lp, %.loopexit274, %.loopexit.split-lp275, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i199, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i, %bb.bh, %bb.ay, %bb.ae
  %.pn128.pn.pn.pn.pn = phi { ptr, i32 } [ %i.pr, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i199 ], [ %lpad.loopexit.split-lp277, %.loopexit.split-lp275 ], [ %i.jv, %bb.ae ], [ %i.oo, %bb.ay ], [ %i.qw, %bb.bh ], [ %i.ne, %_ZN5Eigen8internal12scoped_arrayIdED2Ev.exit9.i.i ], [ %lpad.loopexit276, %.loopexit274 ], [ %lpad.loopexit, %.loopexit270 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  br i1 %i.ab, label %.split263, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195

.split263:                                        ; preds = %.body
  call void @free(ptr noundef nonnull %i.ae) #27
  call void @free(ptr noundef nonnull %i.ac) #27
  br i1 %i.e, label %bb.bl, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195

bb.bl:                                            ; preds = %.split265, %.split263, %.split, %.split261
  %.pn128.pn.pn.pn.pn.pn.pn.pn.pn257 = phi { ptr, i32 } [ %i.js, %.split ], [ %.pn128.pn.pn.pn.pn, %.split263 ], [ %i.jt, %.split261 ], [ %i.ju, %.split265 ]
  %i.qz = phi ptr [ %i.f, %.split ], [ %i.ad, %.split263 ], [ %i.u, %.split261 ], [ %i.u, %.split265 ]
  call void @free(ptr noundef %i.qz) #27
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195

_ZN5Eigen8internal28aligned_stack_memory_handlerIbED2Ev.exit195: ; preds = %.body, %.split265, %.split263, %.split261, %bb.bl
  %.pn128.pn.pn.pn.pn.pn.pn.pn.pn256 = phi { ptr, i32 } [ %i.jt, %.split261 ], [ %.pn128.pn.pn.pn.pn, %.split263 ], [ %.pn128.pn.pn.pn.pn.pn.pn.pn.pn257, %bb.bl ], [ %i.ju, %.split265 ], [ %.pn128.pn.pn.pn.pn, %.body ]
  resume { ptr, i32 } %.pn128.pn.pn.pn.pn.pn.pn.pn.pn256
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEC2INS_7ProductINS_12SparseMatrixIdLi0EiEES2_Li0EEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = load ptr, ptr %1, align 8, !tbaa !615, !nonnull !60, !align !221
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !168
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.c, i64 noundef 1)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_7ProductINS_12SparseMatrixIdLi0EiEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit unwind label %bb.d

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_7ProductINS_12SparseMatrixIdLi0EiEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !tbaa !615, !nonnull !60, !align !221 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !168  ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !41
  %.not.i.i.i = icmp eq i64 %i.h, %i.f
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_7ProductINS_12SparseMatrixIdLi0EiEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.f, i64 noundef 1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.b
  %.pr.i.i.i = load i64, ptr %i.g, align 8, !tbaa !41
  %.pre.i.i.i = load ptr, ptr %1, align 8, !tbaa !615
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_7ProductINS_12SparseMatrixIdLi0EiEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.i = phi ptr [ %i.d, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_7ProductINS_12SparseMatrixIdLi0EiEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit ], [ %.pre.i.i.i, %.noexc ] ; 5 uses
  %i.j = phi i64 [ %i.f, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE10resizeLikeINS_7ProductINS_12SparseMatrixIdLi0EiEES2_Li0EEEEEvRKNS_9EigenBaseIT_EE.exit ], [ %.pr.i.i.i, %.noexc ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !618, !nonnull !60, !align !221
  %i.m = icmp slt i64 %i.j, 1
  br i1 %i.m, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i: ; preds = %bb.c
  %i.n = load ptr, ptr %0, align 8, !tbaa !42
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %i.j, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.n, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !43
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i: ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.p = load i64, ptr %i.o, align 8, !tbaa !49   ; 3 uses
  %i.q = icmp sgt i64 %i.p, 0
  %i.r = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.t = load ptr, ptr %i.s, align 8              ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.v = load ptr, ptr %i.u, align 8              ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  br i1 %i.q, label %.split.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_7ProductINS_12SparseMatrixIdLi0EiEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit

.split.i.i.i.i.i.i.i.i:                           ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i
  %i.aa = icmp eq ptr %i.z, null
  %i.ab = load ptr, ptr %0, align 8               ; 4 uses
  br i1 %i.aa, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us.i.i.i.i.i.i.i.i, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i.i.i.i.i.i.i

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us.i.i.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i.i.i, %._crit_edge.us.us.i.i.i.i.i.i.i.i
  %.01623.us.us.i.i.i.i.i.i.i.i = phi i64 [ %i.bl, %._crit_edge.us.us.i.i.i.i.i.i.i.i ], [ 0, %.split.i.i.i.i.i.i.i.i ] ; 3 uses
  %gep26.us.us.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.r, i64 %.01623.us.us.i.i.i.i.i.i.i.i
  %i.ac = load double, ptr %gep26.us.us.i.i.i.i.i.i.i.i, align 8, !tbaa !43 ; 3 uses
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.01623.us.us.i.i.i.i.i.i.i.i ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !154 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ad, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !154 ; 2 uses
  %i.ah = sext i32 %i.ag to i64                   ; 3 uses
  %i.ai = icmp slt i32 %i.ae, %i.ag
  br i1 %i.ai, label %.lr.ph.us.us.preheader.i.i.i.i.i.i.i.i, label %._crit_edge.us.us.i.i.i.i.i.i.i.i

.lr.ph.us.us.preheader.i.i.i.i.i.i.i.i:           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us.i.i.i.i.i.i.i.i
  %i.aj = sext i32 %i.ae to i64                   ; 6 uses
  %i.ak = sub nsw i64 %i.ah, %i.aj
  %xtraiter = and i64 %i.ak, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.us.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.us.us.i.i.i.i.i.i.i.i.prol

.lr.ph.us.us.i.i.i.i.i.i.i.i.prol:                ; preds = %.lr.ph.us.us.preheader.i.i.i.i.i.i.i.i
  %i.al = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.aj
  %i.am = load double, ptr %i.al, align 8, !tbaa !43
  %i.an = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.aj
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !154
  %i.ap = sext i32 %i.ao to i64
  %gep.us.us.i.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %i.ab, i64 %i.ap ; 2 uses
  %i.aq = load double, ptr %gep.us.us.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !43
  %i.ar = tail call double @llvm.fmuladd.f64(double %i.am, double %i.ac, double %i.aq)
  store double %i.ar, ptr %gep.us.us.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !43
  %i.as = add nsw i64 %i.aj, 1
  br label %.lr.ph.us.us.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.us.us.i.i.i.i.i.i.i.i.prol.loopexit:       ; preds = %.lr.ph.us.us.i.i.i.i.i.i.i.i.prol, %.lr.ph.us.us.preheader.i.i.i.i.i.i.i.i
  %.sroa.8.022.us.us.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.aj, %.lr.ph.us.us.preheader.i.i.i.i.i.i.i.i ], [ %i.as, %.lr.ph.us.us.i.i.i.i.i.i.i.i.prol ]
  %i.at = add nsw i64 %i.ah, -1
  %i.au = icmp eq i64 %i.at, %i.aj
  br i1 %i.au, label %._crit_edge.us.us.i.i.i.i.i.i.i.i, label %.lr.ph.us.us.i.i.i.i.i.i.i.i

.lr.ph.us.us.i.i.i.i.i.i.i.i:                     ; preds = %.lr.ph.us.us.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.us.us.i.i.i.i.i.i.i.i
  %.sroa.8.022.us.us.i.i.i.i.i.i.i.i = phi i64 [ %i.bk, %.lr.ph.us.us.i.i.i.i.i.i.i.i ], [ %.sroa.8.022.us.us.i.i.i.i.i.i.i.i.unr, %.lr.ph.us.us.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.sroa.8.022.us.us.i.i.i.i.i.i.i.i
  %i.aw = load double, ptr %i.av, align 8, !tbaa !43
  %i.ax = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.sroa.8.022.us.us.i.i.i.i.i.i.i.i
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !154
  %i.az = sext i32 %i.ay to i64
  %gep.us.us.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.ab, i64 %i.az ; 2 uses
  %i.ba = load double, ptr %gep.us.us.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.aw, double %i.ac, double %i.ba)
  store double %i.bb, ptr %gep.us.us.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %i.bc = add nsw i64 %.sroa.8.022.us.us.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.bd = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.bc
  %i.be = load double, ptr %i.bd, align 8, !tbaa !43
  %i.bf = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.bc
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !154
  %i.bh = sext i32 %i.bg to i64
  %gep.us.us.i.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %i.ab, i64 %i.bh ; 2 uses
  %i.bi = load double, ptr %gep.us.us.i.i.i.i.i.i.i.i.1, align 8, !tbaa !43
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.be, double %i.ac, double %i.bi)
  store double %i.bj, ptr %gep.us.us.i.i.i.i.i.i.i.i.1, align 8, !tbaa !43
  %i.bk = add nsw i64 %.sroa.8.022.us.us.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond35.not.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.bk, %i.ah
  br i1 %exitcond35.not.i.i.i.i.i.i.i.i.1, label %._crit_edge.us.us.i.i.i.i.i.i.i.i, label %.lr.ph.us.us.i.i.i.i.i.i.i.i, !llvm.loop !619

._crit_edge.us.us.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.us.us.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.us.us.i.i.i.i.i.i.i.i, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us.i.i.i.i.i.i.i.i
  %i.bl = add nuw nsw i64 %.01623.us.us.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond36.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bl, %i.p
  br i1 %exitcond36.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_7ProductINS_12SparseMatrixIdLi0EiEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us.us.i.i.i.i.i.i.i.i, !llvm.loop !620

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.i.i
  %.01623.i.i.i.i.i.i.i.i = phi i64 [ %i.bu, %._crit_edge.i.i.i.i.i.i.i.i ], [ 0, %.split.i.i.i.i.i.i.i.i ] ; 4 uses
  %gep26.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.r, i64 %.01623.i.i.i.i.i.i.i.i
  %i.bm = load double, ptr %gep26.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %.01623.i.i.i.i.i.i.i.i
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !154
  %i.bp = sext i32 %i.bo to i64                   ; 2 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.01623.i.i.i.i.i.i.i.i
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !154 ; 2 uses
  %2 = sext i32 %i.br to i64
  %i.bs = add nsw i64 %2, %i.bp
  %i.bt = icmp sgt i32 %i.br, 0
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i.i.i.i.i.i.i
  %i.bu = add nuw nsw i64 %.01623.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bu, %i.p
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_7ProductINS_12SparseMatrixIdLi0EiEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i.i.i.i.i.i.i, !llvm.loop !620

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.8.022.i.i.i.i.i.i.i.i = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bp, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.sroa.8.022.i.i.i.i.i.i.i.i
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !43
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.v, i64 %.sroa.8.022.i.i.i.i.i.i.i.i
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !154
  %i.bz = sext i32 %i.by to i64
  %gep.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.ab, i64 %i.bz ; 2 uses
  %i.ca = load double, ptr %gep.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %i.cb = tail call double @llvm.fmuladd.f64(double %i.bw, double %i.bm, double %i.ca)
  store double %i.cb, ptr %gep.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %i.cc = add nsw i64 %.sroa.8.022.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cd = icmp slt i64 %i.cc, %i.bs
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, !llvm.loop !619

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE12_set_noaliasINS_7ProductINS_12SparseMatrixIdLi0EiEES2_Li0EEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %._crit_edge.us.us.i.i.i.i.i.i.i.i, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %i.cf = load ptr, ptr %0, align 8, !tbaa !42
  tail call void @free(ptr noundef %i.cf) #27
  resume { ptr, i32 } %i.ce
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
end_hunk_4
begin_hunk_5_@_ZN5Eigen8internal26permutation_matrix_productINS_7ProductINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0EEELi1ELb0ENS_10DenseShapeEE3runIS8_NS_17PermutationMatrixILin1ELin1EiEEEEvRT_RKT0_RKS9_:bb.a
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.bb
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !154
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bf
  %i.bh = load double, ptr %i.bc, align 8, !tbaa !43
  store double %i.bh, ptr %i.bg, align 8, !tbaa !43
  %i.bi = add nuw nsw i64 %.086, 4                ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit84.loopexit.unr-lcssa, label %bb.h, !llvm.loop !1882

.loopexit84.loopexit.unr-lcssa:                   ; preds = %bb.h
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit84, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit84.loopexit.unr-lcssa, %.lr.ph
  %.086.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.bi, %.loopexit84.loopexit.unr-lcssa ]
  %lcmp.mod111 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod111)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.086.epil = phi i64 [ %.086.epil.init, %.epil.preheader ], [ %i.bp, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %.086.epil
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.086.epil
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !154
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.bm
  %i.bo = load double, ptr %i.bj, align 8, !tbaa !43
  store double %i.bo, ptr %i.bn, align 8, !tbaa !43
  %i.bp = add nuw nsw i64 %.086.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit84, label %bb.i, !llvm.loop !1883

.loopexit84:                                      ; preds = %.loopexit84.loopexit.unr-lcssa, %bb.i, %.preheader83, %.critedge
  call void @free(ptr noundef %i.d) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEC2INS_7ProductINS_9TransposeINS_12SparseMatrixIdLi0EiEEEES1_Li0EEEEERKT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !456, !nonnull !60, !align !221
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !1884, !nonnull !60, !align !221
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %0, i64 noundef %i.d, i64 noundef 1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %.pr.i.i.i.i = load i64, ptr %i.e, align 8, !tbaa !41 ; 2 uses
  %.pre7.pre = load ptr, ptr %0, align 8          ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !1884, !nonnull !60, !align !221 ; 2 uses
  %i.j = icmp slt i64 %.pr.i.i.i.i, 1
  br i1 %i.j, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i: ; preds = %bb.c
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = shl nuw nsw i64 %.pr.i.i.i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %.pre7.pre, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !43
  %.pre = load ptr, ptr %0, align 8
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i: ; preds = %.thread, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i, %bb.c
  %i.k = phi ptr [ %i.i, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i ], [ %i.i, %bb.c ], [ %i.g, %.thread ]
  %i.l = phi ptr [ %.pre, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i.i.i.i.i.i ], [ %.pre7.pre, %bb.c ], [ null, %.thread ] ; 2 uses
  %.sroa.3.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i.i.i.i.i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !49   ; 3 uses
  %i.o = icmp sgt i64 %i.n, 0
  br i1 %i.o, label %.split.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6_init1INS_7ProductINS_9TransposeINS_12SparseMatrixIdLi0EiEEEES2_Li0EEESA_EEvRKNS_9DenseBaseIT0_EE.exit

.split.i.i.i.i.i.i.i.i.i:                         ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i.i.i.i.i.i, i64 32
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i.i.i.i.i.i, i64 24
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i.i.i.i.i.i, i64 48
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i.i.i.i.i.i.i, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !137  ; 10 uses
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !138  ; 10 uses
  %i.v = load ptr, ptr %i.q, align 8, !tbaa !135  ; 2 uses
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !136  ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  %i.y = load ptr, ptr %i.k, align 8              ; 10 uses
  br i1 %i.x, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.i.us.us.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.i.us.us.i.i.i.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i.i.i.i, %.loopexit.us.us.i.i.i.i.i.i.i.i.i
  %.019.us.us.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bz, %.loopexit.us.us.i.i.i.i.i.i.i.i.i ], [ 0, %.split.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.019.us.us.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !154 ; 2 uses
  %i.ab = getelementptr i8, ptr %i.z, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !154 ; 2 uses
  %i.ad = sext i32 %i.ac to i64                   ; 3 uses
  %i.ae = icmp sgt i32 %i.ac, %i.aa
  br i1 %i.ae, label %.lr.ph.i.us.us.preheader.i.i.i.i.i.i.i.i.i, label %.loopexit.us.us.i.i.i.i.i.i.i.i.i

.lr.ph.i.us.us.preheader.i.i.i.i.i.i.i.i.i:       ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.i.us.us.i.i.i.i.i.i.i.i.i
  %i.af = sext i32 %i.aa to i64                   ; 4 uses
  %i.ag = sub nsw i64 %i.ad, %i.af
  %xtraiter22 = and i64 %i.ag, 3                  ; 2 uses
  %lcmp.mod23.not = icmp eq i64 %xtraiter22, 0
  br i1 %lcmp.mod23.not, label %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol:            ; preds = %.lr.ph.i.us.us.preheader.i.i.i.i.i.i.i.i.i, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol
  %.013.i.us.us.i.i.i.i.i.i.i.i.i.prol = phi double [ %i.an, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol ], [ 0.000000e+00, %.lr.ph.i.us.us.preheader.i.i.i.i.i.i.i.i.i ]
  %.sroa.7.012.i.us.us.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ao, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol ], [ %i.af, %.lr.ph.i.us.us.preheader.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %prol.iter24 = phi i64 [ %prol.iter24.next, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.us.us.preheader.i.i.i.i.i.i.i.i.i ]
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.sroa.7.012.i.us.us.i.i.i.i.i.i.i.i.i.prol
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !43
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.sroa.7.012.i.us.us.i.i.i.i.i.i.i.i.i.prol
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !154
  %i.al = sext i32 %i.ak to i64
  %gep.i.us.us.i.i.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %i.y, i64 %i.al
  %i.am = load double, ptr %gep.i.us.us.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !43
  %i.an = tail call double @llvm.fmuladd.f64(double %i.ai, double %i.am, double %.013.i.us.us.i.i.i.i.i.i.i.i.i.prol) ; 3 uses
  %i.ao = add nsw i64 %.sroa.7.012.i.us.us.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter24.next = add i64 %prol.iter24, 1     ; 2 uses
  %prol.iter24.cmp.not = icmp eq i64 %prol.iter24.next, %xtraiter22
  br i1 %prol.iter24.cmp.not, label %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1886

.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.us.us.preheader.i.i.i.i.i.i.i.i.i
  %.lcssa.unr = phi double [ poison, %.lr.ph.i.us.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.an, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol ]
  %.013.i.us.us.i.i.i.i.i.i.i.i.i.unr = phi double [ 0.000000e+00, %.lr.ph.i.us.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.an, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.7.012.i.us.us.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.af, %.lr.ph.i.us.us.preheader.i.i.i.i.i.i.i.i.i ], [ %i.ao, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol ]
  %i.ap = sub nsw i64 %i.af, %i.ad
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %.loopexit.us.us.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i

.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i
  %.013.i.us.us.i.i.i.i.i.i.i.i.i = phi double [ %i.bv, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i ], [ %.013.i.us.us.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.7.012.i.us.us.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bw, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i ], [ %.sroa.7.012.i.us.us.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.sroa.7.012.i.us.us.i.i.i.i.i.i.i.i.i
  %i.as = load double, ptr %i.ar, align 8, !tbaa !43
  %i.at = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.sroa.7.012.i.us.us.i.i.i.i.i.i.i.i.i
  %i.au = load i32, ptr %i.at, align 4, !tbaa !154
  %i.av = sext i32 %i.au to i64
  %gep.i.us.us.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.y, i64 %i.av
  %i.aw = load double, ptr %gep.i.us.us.i.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.as, double %i.aw, double %.013.i.us.us.i.i.i.i.i.i.i.i.i)
  %i.ay = add nsw i64 %.sroa.7.012.i.us.us.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.az = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.ay
  %i.ba = load double, ptr %i.az, align 8, !tbaa !43
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ay
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !154
  %i.bd = sext i32 %i.bc to i64
  %gep.i.us.us.i.i.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %i.y, i64 %i.bd
  %i.be = load double, ptr %gep.i.us.us.i.i.i.i.i.i.i.i.i.1, align 8, !tbaa !43
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.ba, double %i.be, double %i.ax)
  %i.bg = add nsw i64 %.sroa.7.012.i.us.us.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.bg
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !43
  %i.bj = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.bg
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !154
  %i.bl = sext i32 %i.bk to i64
  %gep.i.us.us.i.i.i.i.i.i.i.i.i.2 = getelementptr [8 x i8], ptr %i.y, i64 %i.bl
  %i.bm = load double, ptr %gep.i.us.us.i.i.i.i.i.i.i.i.i.2, align 8, !tbaa !43
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bm, double %i.bf)
  %i.bo = add nsw i64 %.sroa.7.012.i.us.us.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !43
  %i.br = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.bo
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !154
  %i.bt = sext i32 %i.bs to i64
  %gep.i.us.us.i.i.i.i.i.i.i.i.i.3 = getelementptr [8 x i8], ptr %i.y, i64 %i.bt
  %i.bu = load double, ptr %gep.i.us.us.i.i.i.i.i.i.i.i.i.3, align 8, !tbaa !43
  %i.bv = tail call double @llvm.fmuladd.f64(double %i.bq, double %i.bu, double %i.bn) ; 2 uses
  %i.bw = add nsw i64 %.sroa.7.012.i.us.us.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.us.us.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.bw, %i.ad
  br i1 %exitcond.not.i.us.us.i.i.i.i.i.i.i.i.i.3, label %.loopexit.us.us.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i, !llvm.loop !1887

.loopexit.us.us.i.i.i.i.i.i.i.i.i:                ; preds = %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.i.us.us.i.i.i.i.i.i.i.i.i
  %.0.lcssa.i.us.us.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.i.us.us.i.i.i.i.i.i.i.i.i ], [ %.lcssa.unr, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.bv, %.lr.ph.i.us.us.i.i.i.i.i.i.i.i.i ]
  %gep.us.us.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.l, i64 %.019.us.us.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bx = load double, ptr %gep.us.us.i.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %i.by = fadd double %.0.lcssa.i.us.us.i.i.i.i.i.i.i.i.i, %i.bx
  store double %i.by, ptr %gep.us.us.i.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %i.bz = add nuw nsw i64 %.019.us.us.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond29.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bz, %i.n
  br i1 %exitcond29.not.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6_init1INS_7ProductINS_9TransposeINS_12SparseMatrixIdLi0EiEEEES2_Li0EEESA_EEvRKNS_9DenseBaseIT0_EE.exit, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.i.us.us.i.i.i.i.i.i.i.i.i, !llvm.loop !1888

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i
  %.019.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dy, %.loopexit.i.i.i.i.i.i.i.i.i ], [ 0, %.split.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %.019.i.i.i.i.i.i.i.i.i
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !154
  %i.cc = sext i32 %i.cb to i64                   ; 3 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %.019.i.i.i.i.i.i.i.i.i
  %i.ce = load i32, ptr %i.cd, align 4, !tbaa !154 ; 4 uses
  %2 = sext i32 %i.ce to i64                      ; 2 uses
  %i.cf = add nsw i64 %2, %i.cc
  %i.cg = icmp sgt i32 %i.ce, 0
  br i1 %i.cg, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader:             ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.i.i.i.i.i.i.i.i.i.i
  %xtraiter = and i64 %2, 3
  %3 = and i32 %i.ce, 3
  %lcmp.mod.not = icmp eq i32 %3, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol
  %.013.i.i.i.i.i.i.i.i.i.i.prol = phi double [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0.000000e+00, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.7.012.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ]
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.sroa.7.012.i.i.i.i.i.i.i.i.i.i.prol
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !43
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.sroa.7.012.i.i.i.i.i.i.i.i.i.i.prol
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !154
  %i.cl = sext i32 %i.ck to i64
  %gep.i.i.i.i.i.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %i.y, i64 %i.cl
  %i.cm = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.prol, align 8, !tbaa !43
  %i.cn = tail call double @llvm.fmuladd.f64(double %i.ci, double %i.cm, double %.013.i.i.i.i.i.i.i.i.i.i.prol) ; 3 uses
  %i.co = add nsw i64 %.sroa.7.012.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !1889

.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit:         ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader
  %.lcssa21.unr = phi double [ poison, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.013.i.i.i.i.i.i.i.i.i.i.unr = phi double [ 0.000000e+00, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %.sroa.7.012.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.co, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.cp = icmp ult i32 %i.ce, 4
  br i1 %i.cp, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %.013.i.i.i.i.i.i.i.i.i.i = phi double [ %i.du, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.013.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.7.012.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.dv, %.lr.ph.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.7.012.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.t, i64 %.sroa.7.012.i.i.i.i.i.i.i.i.i.i
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !43
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.u, i64 %.sroa.7.012.i.i.i.i.i.i.i.i.i.i
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !154
  %i.cu = sext i32 %i.ct to i64
  %gep.i.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.y, i64 %i.cu
  %i.cv = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %i.cw = tail call double @llvm.fmuladd.f64(double %i.cr, double %i.cv, double %.013.i.i.i.i.i.i.i.i.i.i)
  %i.cx = add nsw i64 %.sroa.7.012.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.cx
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !43
  %i.da = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.cx
  %i.db = load i32, ptr %i.da, align 4, !tbaa !154
  %i.dc = sext i32 %i.db to i64
  %gep.i.i.i.i.i.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %i.y, i64 %i.dc
  %i.dd = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.1, align 8, !tbaa !43
  %i.de = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.dd, double %i.cw)
  %i.df = add nsw i64 %.sroa.7.012.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.dg = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !43
  %i.di = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.df
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !154
  %i.dk = sext i32 %i.dj to i64
  %gep.i.i.i.i.i.i.i.i.i.i.2 = getelementptr [8 x i8], ptr %i.y, i64 %i.dk
  %i.dl = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.2, align 8, !tbaa !43
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dh, double %i.dl, double %i.de)
  %i.dn = add nsw i64 %.sroa.7.012.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.dn
  %i.dp = load double, ptr %i.do, align 8, !tbaa !43
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.dn
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !154
  %i.ds = sext i32 %i.dr to i64
  %gep.i.i.i.i.i.i.i.i.i.i.3 = getelementptr [8 x i8], ptr %i.y, i64 %i.ds
  %i.dt = load double, ptr %gep.i.i.i.i.i.i.i.i.i.i.3, align 8, !tbaa !43
  %i.du = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.dt, double %i.dm) ; 2 uses
  %i.dv = add nsw i64 %.sroa.7.012.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.dv, %i.cf
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %.loopexit.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1887

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.i.i.i.i.i.i.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i.i.i = phi double [ 0.000000e+00, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.i.i.i.i.i.i.i.i.i.i ], [ %.lcssa21.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.du, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %gep.i.i.i.i.i.i.i.i.i = getelementptr [8 x i8], ptr %i.l, i64 %.019.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dw = load double, ptr %gep.i.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %i.dx = fadd double %.0.lcssa.i.i.i.i.i.i.i.i.i.i, %i.dw
  store double %i.dx, ptr %gep.i.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %i.dy = add nuw nsw i64 %.019.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.dy, %i.n
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6_init1INS_7ProductINS_9TransposeINS_12SparseMatrixIdLi0EiEEEES2_Li0EEESA_EEvRKNS_9DenseBaseIT0_EE.exit, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeINS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS7_l.exit.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1888

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6_init1INS_7ProductINS_9TransposeINS_12SparseMatrixIdLi0EiEEEES2_Li0EEESA_EEvRKNS_9DenseBaseIT0_EE.exit: ; preds = %.loopexit.i.i.i.i.i.i.i.i.i, %.loopexit.us.us.i.i.i.i.i.i.i.i.i, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit.i.i.i.i.i
  ret void

bb.d:                                             ; preds = %bb.b
  %i.dz = landingpad { ptr, i32 }
          cleanup
  %i.ea = load ptr, ptr %0, align 8, !tbaa !42
  tail call void @free(ptr noundef %i.ea) #27
  resume { ptr, i32 } %i.dz
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal32sparse_solve_triangular_selectorIKNS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi6ELi2ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1890, !nonnull !60, !align !221 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !49   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 0
  %i.f = load ptr, ptr %1, align 8                ; 8 uses
  br i1 %i.e, label %.split, label %.split51

.split:                                           ; preds = %bb.a
  %.02144 = add nsw i64 %i.d, -1                  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !137  ; 6 uses
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !138  ; 8 uses
  %i.m = load ptr, ptr %i.h, align 8, !tbaa !135  ; 2 uses
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !136  ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, label %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit

_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us: ; preds = %.split, %._crit_edge.us.us
  %.02145.us.us = phi i64 [ %.021.us.us, %._crit_edge.us.us ], [ %.02144, %.split ] ; 6 uses
  %gep49.us.us = getelementptr [8 x i8], ptr %i.f, i64 %.02145.us.us ; 2 uses
  %i.p = load double, ptr %gep49.us.us, align 8, !tbaa !43 ; 4 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.m, i64 %.02145.us.us ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !154  ; 2 uses
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr i8, ptr %i.q, i64 4
  %i.u = load i32, ptr %i.t, align 4, !tbaa !154  ; 2 uses
  %i.v = sext i32 %i.u to i64                     ; 5 uses
  %i.w = icmp slt i32 %i.r, %i.u
  br i1 %i.w, label %.lr.ph.us.us, label %.critedge.us.us

.lr.ph.us.us:                                     ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, %bb.b
  %.sroa.10.039.us.us = phi i64 [ %i.ab, %bb.b ], [ %i.s, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us ] ; 3 uses
  %i.x = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.039.us.us
  %i.y = load i32, ptr %i.x, align 4, !tbaa !154
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = icmp sgt i64 %.02145.us.us, %i.z
  br i1 %i.aa, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.us.us
  %i.ab = add nsw i64 %.sroa.10.039.us.us, 1      ; 2 uses
  %exitcond64.not = icmp eq i64 %i.ab, %i.v
  br i1 %exitcond64.not, label %._crit_edge.us.us, label %.lr.ph.us.us, !llvm.loop !1896

bb.c:                                             ; preds = %.lr.ph.us.us
  %i.ac = icmp eq i64 %.02145.us.us, %i.z
  %i.ad = zext i1 %i.ac to i64
  %spec.select.us.us = add nsw i64 %.sroa.10.039.us.us, %i.ad
  br label %.critedge.us.us

.critedge.us.us:                                  ; preds = %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us, %bb.c
  %.sroa.10.1.us.us = phi i64 [ %spec.select.us.us, %bb.c ], [ %i.s, %_ZN5Eigen8internal15unary_evaluatorINS_9TransposeIKNS_12SparseMatrixIdLi0EiEEEENS0_13IteratorBasedEdE13InnerIteratorC2ERKS8_l.exit.us.us ] ; 7 uses
  %i.ae = icmp slt i64 %.sroa.10.1.us.us, %i.v
  br i1 %i.ae, label %.lr.ph42.us.us.preheader, label %._crit_edge.us.us

.lr.ph42.us.us.preheader:                         ; preds = %.critedge.us.us
  %i.af = sub i64 %i.v, %.sroa.10.1.us.us
  %xtraiter104 = and i64 %i.af, 1
  %lcmp.mod105.not = icmp eq i64 %xtraiter104, 0
  br i1 %lcmp.mod105.not, label %.lr.ph42.us.us.prol.loopexit, label %.lr.ph42.us.us.prol

.lr.ph42.us.us.prol:                              ; preds = %.lr.ph42.us.us.preheader
  %i.ag = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.1.us.us
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !43
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.1.us.us
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !154
  %i.ak = sext i32 %i.aj to i64
  %gep.us.us.prol = getelementptr [8 x i8], ptr %i.f, i64 %i.ak
  %i.al = load double, ptr %gep.us.us.prol, align 8, !tbaa !43
  %i.am = fneg double %i.ah
  %i.an = tail call double @llvm.fmuladd.f64(double %i.am, double %i.al, double %i.p) ; 2 uses
  %i.ao = add nsw i64 %.sroa.10.1.us.us, 1
  br label %.lr.ph42.us.us.prol.loopexit

.lr.ph42.us.us.prol.loopexit:                     ; preds = %.lr.ph42.us.us.prol, %.lr.ph42.us.us.preheader
  %.lcssa97.unr = phi double [ poison, %.lr.ph42.us.us.preheader ], [ %i.an, %.lr.ph42.us.us.prol ]
  %.02241.us.us.unr = phi double [ %i.p, %.lr.ph42.us.us.preheader ], [ %i.an, %.lr.ph42.us.us.prol ]
  %.sroa.10.240.us.us.unr = phi i64 [ %.sroa.10.1.us.us, %.lr.ph42.us.us.preheader ], [ %i.ao, %.lr.ph42.us.us.prol ]
  %i.ap = add nsw i64 %i.v, -1
  %i.aq = icmp eq i64 %.sroa.10.1.us.us, %i.ap
  br i1 %i.aq, label %._crit_edge.us.us, label %.lr.ph42.us.us

.lr.ph42.us.us:                                   ; preds = %.lr.ph42.us.us.prol.loopexit, %.lr.ph42.us.us
  %.02241.us.us = phi double [ %i.bh, %.lr.ph42.us.us ], [ %.02241.us.us.unr, %.lr.ph42.us.us.prol.loopexit ]
  %.sroa.10.240.us.us = phi i64 [ %i.bi, %.lr.ph42.us.us ], [ %.sroa.10.240.us.us.unr, %.lr.ph42.us.us.prol.loopexit ] ; 4 uses
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.k, i64 %.sroa.10.240.us.us
  %i.as = load double, ptr %i.ar, align 8, !tbaa !43
  %i.at = getelementptr inbounds [4 x i8], ptr %i.l, i64 %.sroa.10.240.us.us
  %i.au = load i32, ptr %i.at, align 4, !tbaa !154
  %i.av = sext i32 %i.au to i64
  %gep.us.us = getelementptr [8 x i8], ptr %i.f, i64 %i.av
  %i.aw = load double, ptr %gep.us.us, align 8, !tbaa !43
  %i.ax = fneg double %i.as
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double %i.aw, double %.02241.us.us)
  %i.az = add nsw i64 %.sroa.10.240.us.us, 1      ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.k, i64 %i.az
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !43
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.az
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !154
  %i.be = sext i32 %i.bd to i64
  %gep.us.us.1 = getelementptr [8 x i8], ptr %i.f, i64 %i.be
  %i.bf = load double, ptr %gep.us.us.1, align 8, !tbaa !43
  %i.bg = fneg double %i.bb
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bf, double %i.ay) ; 2 uses
  %i.bi = add nsw i64 %.sroa.10.240.us.us, 2      ; 2 uses
end_hunk_5
