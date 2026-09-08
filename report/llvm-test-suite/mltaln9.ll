Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mltaln9?download=true
inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 95
begin_hunk_0_@score_calc4:bb.a
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv127
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !28
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv127
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18   ; 2 uses
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.lr.ph76.us
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %._crit_edge.us.us ], [ %indvars.iv120, %.lr.ph76.us ] ; 3 uses
  %.15174.us.us = phi double [ %i.bd, %._crit_edge.us.us ], [ %.05088.us, %.lr.ph76.us ]
  %.15373.us.us = phi double [ %.4.us.us, %._crit_edge.us.us ], [ %.05287.us, %.lr.ph76.us ]
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv122
  %i.u = load double, ptr %i.t, align 8, !tbaa !26
  %spec.store.select.us.us = select i1 %i.g, double 1.000000e+00, double %i.u ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv122
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18   ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph.us.us
  %.064.us.us = phi i64 [ 0, %.lr.ph.us.us ], [ %.1.us.us, %bb.f ] ; 2 uses
  %.25463.us.us = phi double [ %.15373.us.us, %.lr.ph.us.us ], [ %.3.us.us, %bb.f ] ; 2 uses
  %.05562.us.us = phi i32 [ 0, %.lr.ph.us.us ], [ %i.ba, %bb.f ] ; 3 uses
  %i.x = sext i32 %.05562.us.us to i64            ; 4 uses
  %i.y = getelementptr inbounds i8, ptr %i.s, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !14    ; 2 uses
  %i.aa = icmp eq i8 %i.z, 45                     ; 2 uses
  %i.ab = getelementptr inbounds i8, ptr %i.w, i64 %i.x
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14  ; 3 uses
  %i.ad = icmp eq i8 %i.ac, 45
  %or.cond = select i1 %i.aa, i1 %i.ad, i1 false
  br i1 %or.cond, label %bb.f, label %._crit_edge132

._crit_edge132:                                   ; preds = %bb.b
  %i.ae = sext i8 %i.z to i64
  %i.af = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.ae
  %i.ag = sext i8 %i.ac to i64
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.af, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !13
  %i.aj = add nsw i32 %i.k, %i.ai
  %i.ak = sext i32 %i.aj to i64
  %i.al = add nsw i64 %.064.us.us, %i.ak          ; 3 uses
  %i.am = fadd double %spec.store.select.us.us, %.25463.us.us ; 5 uses
  br i1 %i.aa, label %.preheader, label %bb.c

bb.c:                                             ; preds = %._crit_edge132
  %i.an = icmp eq i8 %i.ac, 45
  br i1 %i.an, label %.preheader140, label %bb.f

.preheader140:                                    ; preds = %bb.c, %.preheader140
  %indvars.iv114 = phi i64 [ %indvars.iv.next115, %.preheader140 ], [ %i.x, %bb.c ] ; 2 uses
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %i.ao = getelementptr inbounds i8, ptr %i.w, i64 %indvars.iv.next115
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !14
  %i.aq = icmp eq i8 %i.ap, 45
  br i1 %i.aq, label %.preheader140, label %bb.d, !llvm.loop !113

bb.d:                                             ; preds = %.preheader140
  %i.ar = add nsw i64 %i.al, %i.o                 ; 2 uses
  %i.as = trunc nsw i64 %indvars.iv114 to i32     ; 2 uses
  %i.at = icmp slt i32 %i.h, %i.as
  br i1 %i.at, label %._crit_edge.us.us, label %bb.f

.preheader:                                       ; preds = %._crit_edge132, %.preheader
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %.preheader ], [ %i.x, %._crit_edge132 ] ; 2 uses
  %indvars.iv.next118 = add nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.au = getelementptr inbounds i8, ptr %i.s, i64 %indvars.iv.next118
  %i.av = load i8, ptr %i.au, align 1, !tbaa !14
  %i.aw = icmp eq i8 %i.av, 45
  br i1 %i.aw, label %.preheader, label %bb.e, !llvm.loop !114

bb.e:                                             ; preds = %.preheader
  %i.ax = add nsw i64 %i.al, %i.o                 ; 2 uses
  %i.ay = trunc nsw i64 %indvars.iv117 to i32     ; 2 uses
  %i.az = icmp slt i32 %i.h, %i.ay
  br i1 %i.az, label %._crit_edge.us.us, label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.e, %bb.d, %bb.c
  %.358.us.us = phi i32 [ %.05562.us.us, %bb.b ], [ %i.ay, %bb.e ], [ %i.as, %bb.d ], [ %.05562.us.us, %bb.c ]
  %.3.us.us = phi double [ %.25463.us.us, %bb.b ], [ %i.am, %bb.e ], [ %i.am, %bb.d ], [ %i.am, %bb.c ] ; 2 uses
  %.1.us.us = phi i64 [ %.064.us.us, %bb.b ], [ %i.ax, %bb.e ], [ %i.ar, %bb.d ], [ %i.al, %bb.c ] ; 2 uses
  %i.ba = add nsw i32 %.358.us.us, 1              ; 2 uses
  %i.bb = icmp slt i32 %i.ba, %i.c
  br i1 %i.bb, label %bb.b, label %._crit_edge.us.us, !llvm.loop !115

._crit_edge.us.us:                                ; preds = %bb.f, %bb.e, %bb.d
  %.4.us.us = phi double [ %i.am, %bb.d ], [ %i.am, %bb.e ], [ %.3.us.us, %bb.f ] ; 3 uses
  %.2.us.us = phi i64 [ %i.ar, %bb.d ], [ %i.ax, %bb.e ], [ %.1.us.us, %bb.f ]
  %i.bc = sitofp i64 %.2.us.us to double
  %i.bd = tail call double @llvm.fmuladd.f64(double %i.bc, double %spec.store.select.us.us, double %.15174.us.us) ; 3 uses
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %.loopexit.us, label %.lr.ph.us.us, !llvm.loop !116

.loopexit.us:                                     ; preds = %._crit_edge.us.us
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %._crit_edge, label %.lr.ph76.us, !llvm.loop !117

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.g, label %._crit_edge, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  %wide.trip.count112 = zext nneg i32 %i.d to i64
  %wide.trip.count = zext nneg i32 %1 to i64      ; 3 uses
  %i.be = add nsw i64 %wide.trip.count, -2
  br label %.lr.ph76

.loopexit:                                        ; preds = %.lr.ph76.new, %.prol.loopexit
  %.lcssa144 = phi double [ %.lcssa144.unr, %.prol.loopexit ], [ %i.cc, %.lr.ph76.new ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond113.not = icmp eq i64 %indvars.iv.next110, %wide.trip.count112
  br i1 %exitcond113.not, label %._crit_edge, label %.lr.ph76, !llvm.loop !117

.lr.ph76:                                         ; preds = %.loopexit, %.lr.ph.split.split.preheader
  %indvars.iv109 = phi i64 [ 0, %.lr.ph.split.split.preheader ], [ %indvars.iv.next110, %.loopexit ] ; 4 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph.split.split.preheader ], [ %indvars.iv.next, %.loopexit ] ; 3 uses
  %.05088 = phi double [ 0.000000e+00, %.lr.ph.split.split.preheader ], [ %.lcssa144, %.loopexit ] ; 2 uses
  %i.bf = xor i64 %indvars.iv109, -1
  %i.bg = add nsw i64 %i.bf, %wide.trip.count
  %i.bh = sub i64 %i.be, %indvars.iv109
  %indvars.iv.next110 = add nuw nsw i64 %indvars.iv109, 1 ; 2 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv109
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !28 ; 5 uses
  %xtraiter = and i64 %i.bg, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph76, %.prol.preheader
  %indvars.iv106.prol = phi i64 [ %indvars.iv.next107.prol, %.prol.preheader ], [ %indvars.iv, %.lr.ph76 ] ; 2 uses
  %.15174.prol = phi double [ %i.bm, %.prol.preheader ], [ %.05088, %.lr.ph76 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph76 ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv106.prol
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !26
  %i.bm = tail call double @llvm.fmuladd.f64(double %i.bl, double 0.000000e+00, double %.15174.prol) ; 3 uses
  %indvars.iv.next107.prol = add nuw nsw i64 %indvars.iv106.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !118

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph76
  %.lcssa144.unr = phi double [ poison, %.lr.ph76 ], [ %i.bm, %.prol.preheader ]
  %indvars.iv106.unr = phi i64 [ %indvars.iv, %.lr.ph76 ], [ %indvars.iv.next107.prol, %.prol.preheader ]
  %.15174.unr = phi double [ %.05088, %.lr.ph76 ], [ %i.bm, %.prol.preheader ]
  %i.bn = icmp ult i64 %i.bh, 3
  br i1 %i.bn, label %.loopexit, label %.lr.ph76.new

.lr.ph76.new:                                     ; preds = %.prol.loopexit, %.lr.ph76.new
  %indvars.iv106 = phi i64 [ %indvars.iv.next107.3, %.lr.ph76.new ], [ %indvars.iv106.unr, %.prol.loopexit ] ; 5 uses
  %.15174 = phi double [ %i.cc, %.lr.ph76.new ], [ %.15174.unr, %.prol.loopexit ]
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv106
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !26
  %i.bq = tail call double @llvm.fmuladd.f64(double %i.bp, double 0.000000e+00, double %.15174)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv106
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !26
  %i.bu = tail call double @llvm.fmuladd.f64(double %i.bt, double 0.000000e+00, double %i.bq)
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv106
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load double, ptr %i.bw, align 8, !tbaa !26
  %i.by = tail call double @llvm.fmuladd.f64(double %i.bx, double 0.000000e+00, double %i.bu)
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bj, i64 %indvars.iv106
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 24
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !26
  %i.cc = tail call double @llvm.fmuladd.f64(double %i.cb, double 0.000000e+00, double %i.by) ; 2 uses
  %indvars.iv.next107.3 = add nuw nsw i64 %indvars.iv106, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next107.3, %wide.trip.count
  br i1 %exitcond.not.3, label %.loopexit, label %.lr.ph76.new, !llvm.loop !116

._crit_edge:                                      ; preds = %.loopexit, %.loopexit.us, %.lr.ph.split, %bb.a
  %.052.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %.4.us.us, %.loopexit.us ], [ 0.000000e+00, %.lr.ph.split ], [ 0.000000e+00, %.loopexit ]
  %.050.lcssa = phi double [ 0.000000e+00, %bb.a ], [ %i.bd, %.loopexit.us ], [ 0.000000e+00, %.lr.ph.split ], [ %.lcssa144, %.loopexit ]
  %i.cd = fdiv double %.050.lcssa, %.052.lcssa
  ret double %i.cd
}

; Function Attrs: nounwind uwtable
define dso_local void @upg2(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [50000 x double], align 16        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.b = load ptr, ptr @upg2.pair, align 8, !tbaa !32 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @njob, align 4, !tbaa !13  ; 2 uses
  %i.d = tail call ptr @AllocateCharMtx(i32 noundef %i.c, i32 noundef %i.c) #33 ; 2 uses
  store ptr %i.d, ptr @upg2.pair, align 8, !tbaa !32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi ptr [ %i.d, %bb.b ], [ %i.b, %bb.a ] ; 11 uses
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %.preheader155.lr.ph, label %._crit_edge199

.preheader155.lr.ph:                              ; preds = %bb.c
  %i.g = zext nneg i32 %0 to i64
  %i.h = shl nuw nsw i64 %i.g, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.h, i1 false), !tbaa !26
  %wide.trip.count205 = zext nneg i32 %0 to i64   ; 15 uses
  %xtraiter = and i64 %wide.trip.count205, 3      ; 3 uses
  %i.i = icmp ult i32 %0, 4
  %unroll_iter = and i64 %wide.trip.count205, 2147483644
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod256 = icmp ne i64 %xtraiter, 0
  br label %.preheader155

.preheader155:                                    ; preds = %.preheader155.lr.ph, %._crit_edge
  %indvars.iv202 = phi i64 [ 0, %.preheader155.lr.ph ], [ %indvars.iv.next203, %._crit_edge ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv202 ; 5 uses
  br i1 %i.i, label %.epil.preheader, label %.preheader155.new

.lr.ph162:                                        ; preds = %._crit_edge
  %xtraiter258 = and i64 %wide.trip.count205, 3   ; 3 uses
  %i.k = icmp ult i32 %0, 4
  br i1 %i.k, label %.epil.preheader257, label %.lr.ph162.new

.lr.ph162.new:                                    ; preds = %.lr.ph162
  %unroll_iter262 = and i64 %wide.trip.count205, 2147483644
  br label %bb.f

.preheader155.new:                                ; preds = %.preheader155, %.preheader155.new
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.preheader155.new ], [ 0, %.preheader155 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader155.new ], [ 0, %.preheader155 ]
  %i.l = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  store i8 0, ptr %i.m, align 1, !tbaa !14
  %i.n = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %indvars.iv
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  store i8 0, ptr %i.p, align 1, !tbaa !14
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %indvars.iv
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 2
  store i8 0, ptr %i.s, align 1, !tbaa !14
  %i.t = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 3
  store i8 0, ptr %i.v, align 1, !tbaa !14
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.unr-lcssa, label %.preheader155.new, !llvm.loop !119

._crit_edge.unr-lcssa:                            ; preds = %.preheader155.new
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.preheader155
  %indvars.iv.epil.init = phi i64 [ 0, %.preheader155 ], [ %indvars.iv.next.3, %._crit_edge.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod256)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.d ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %indvars.iv.epil
  store i8 0, ptr %i.x, align 1, !tbaa !14
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.d, !llvm.loop !120

._crit_edge:                                      ; preds = %bb.d, %._crit_edge.unr-lcssa
  %indvars.iv.next203 = add nuw nsw i64 %indvars.iv202, 1 ; 2 uses
  %exitcond206.not = icmp eq i64 %indvars.iv.next203, %wide.trip.count205
  br i1 %exitcond206.not, label %.lr.ph162, label %.preheader155, !llvm.loop !121

.preheader153.unr-lcssa:                          ; preds = %bb.f
  %lcmp.mod260.not = icmp eq i64 %xtraiter258, 0
  br i1 %lcmp.mod260.not, label %.preheader153, label %.epil.preheader257

.epil.preheader257:                               ; preds = %.preheader153.unr-lcssa, %.lr.ph162
  %indvars.iv207.epil.init = phi i64 [ 0, %.lr.ph162 ], [ %indvars.iv.next208.3, %.preheader153.unr-lcssa ]
  %lcmp.mod261 = icmp ne i64 %xtraiter258, 0
  tail call void @llvm.assume(i1 %lcmp.mod261)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader257
  %indvars.iv207.epil = phi i64 [ %indvars.iv207.epil.init, %.epil.preheader257 ], [ %indvars.iv.next208.epil, %bb.e ] ; 3 uses
  %epil.iter259 = phi i64 [ 0, %.epil.preheader257 ], [ %epil.iter259.next, %bb.e ]
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv207.epil
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !18
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv207.epil
  store i8 1, ptr %i.aa, align 1, !tbaa !14
  %indvars.iv.next208.epil = add nuw nsw i64 %indvars.iv207.epil, 1
  %epil.iter259.next = add i64 %epil.iter259, 1   ; 2 uses
  %epil.iter259.cmp.not = icmp eq i64 %epil.iter259.next, %xtraiter258
  br i1 %epil.iter259.cmp.not, label %.preheader153, label %bb.e, !llvm.loop !122

.preheader153:                                    ; preds = %bb.e, %.preheader153.unr-lcssa
  %.not255 = icmp eq i32 %0, 1
  br i1 %.not255, label %._crit_edge199, label %.preheader152.lr.ph

.preheader152.lr.ph:                              ; preds = %.preheader153
  %i.ab = add nsw i32 %0, -1
  %wide.trip.count248 = zext nneg i32 %i.ab to i64 ; 2 uses
  %wide.trip.count217 = zext nneg i32 %0 to i64
  %i.ac = add nsw i64 %wide.trip.count205, -2
  %xtraiter267 = and i64 %wide.trip.count205, 1
  %unroll_iter272 = and i64 %wide.trip.count205, 2147483646
  %lcmp.mod269.not = icmp eq i64 %xtraiter267, 0
  %lcmp.mod271 = trunc i32 %0 to i1
  %xtraiter275 = and i64 %wide.trip.count205, 1
  %unroll_iter280 = and i64 %wide.trip.count205, 2147483646
  %lcmp.mod277.not = icmp eq i64 %xtraiter275, 0
  %lcmp.mod279 = trunc i32 %0 to i1
  %xtraiter283 = and i64 %wide.trip.count205, 1
  %unroll_iter287 = and i64 %wide.trip.count205, 2147483646
  %lcmp.mod285.not = icmp eq i64 %xtraiter283, 0
  %lcmp.mod286 = trunc i32 %0 to i1
  %xtraiter290 = and i64 %wide.trip.count205, 3   ; 3 uses
  %i.ad = icmp ult i32 %0, 4
  %unroll_iter294 = and i64 %wide.trip.count205, 2147483644
  %lcmp.mod292.not = icmp eq i64 %xtraiter290, 0
  %lcmp.mod293 = icmp ne i64 %xtraiter290, 0
  br label %.lr.ph175.preheader

bb.f:                                             ; preds = %bb.f, %.lr.ph162.new
  %indvars.iv207 = phi i64 [ 0, %.lr.ph162.new ], [ %indvars.iv.next208.3, %bb.f ] ; 6 uses
  %niter263 = phi i64 [ 0, %.lr.ph162.new ], [ %niter263.next.3, %bb.f ]
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv207
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %indvars.iv207
  store i8 1, ptr %i.ag, align 1, !tbaa !14
  %indvars.iv.next208 = or disjoint i64 %indvars.iv207, 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next208
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !18
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv.next208
  store i8 1, ptr %i.aj, align 1, !tbaa !14
  %indvars.iv.next208.1 = or disjoint i64 %indvars.iv207, 2 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next208.1
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %indvars.iv.next208.1
  store i8 1, ptr %i.am, align 1, !tbaa !14
  %indvars.iv.next208.2 = or disjoint i64 %indvars.iv207, 3 ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next208.2
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %indvars.iv.next208.2
  store i8 1, ptr %i.ap, align 1, !tbaa !14
  %indvars.iv.next208.3 = add nuw nsw i64 %indvars.iv207, 4 ; 2 uses
  %niter263.next.3 = add i64 %niter263, 4         ; 2 uses
  %niter263.ncmp.3 = icmp eq i64 %niter263.next.3, %unroll_iter262
  br i1 %niter263.ncmp.3, label %.preheader153.unr-lcssa, label %bb.f, !llvm.loop !123

.lr.ph175.preheader:                              ; preds = %._crit_edge197, %.preheader152.lr.ph
  %indvars.iv245 = phi i64 [ 0, %.preheader152.lr.ph ], [ %indvars.iv.next246, %._crit_edge197 ] ; 4 uses
  br label %.lr.ph168

.loopexit:                                        ; preds = %.lr.ph168.new, %.prol.loopexit
  %.2137.lcssa = phi float [ %.2137.lcssa.unr, %.prol.loopexit ], [ %.2137.1, %.lr.ph168.new ] ; 2 uses
  %.2134.lcssa = phi i32 [ %.2134.lcssa.unr, %.prol.loopexit ], [ %.2134.1, %.lr.ph168.new ] ; 6 uses
  %.2131.lcssa = phi i32 [ %.2131.lcssa.unr, %.prol.loopexit ], [ %.2131.1, %.lr.ph168.new ] ; 5 uses
  %indvars.iv.next213 = add nuw nsw i64 %indvars.iv212, 1
  %exitcond223.not = icmp eq i64 %indvars.iv.next220, %wide.trip.count248
  br i1 %exitcond223.not, label %.lr.ph181, label %.lr.ph168, !llvm.loop !124

.lr.ph181:                                        ; preds = %.loopexit
  %i.aq = sext i32 %.2134.lcssa to i64
  %i.ar = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !18 ; 3 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv245 ; 3 uses
  br label %.lr.ph181.new

.lr.ph168:                                        ; preds = %.loopexit, %.lr.ph175.preheader
  %indvars.iv219 = phi i64 [ 0, %.lr.ph175.preheader ], [ %indvars.iv.next220, %.loopexit ] ; 5 uses
  %indvars.iv212 = phi i64 [ 1, %.lr.ph175.preheader ], [ %indvars.iv.next213, %.loopexit ] ; 5 uses
  %.0129174 = phi i32 [ -1, %.lr.ph175.preheader ], [ %.2131.lcssa, %.loopexit ] ; 2 uses
  %.0132173 = phi i32 [ -1, %.lr.ph175.preheader ], [ %.2134.lcssa, %.loopexit ] ; 2 uses
  %.0135172 = phi float [ 9.999000e+03, %.lr.ph175.preheader ], [ %.2137.lcssa, %.loopexit ] ; 3 uses
  %4 = xor i64 %indvars.iv219, -1
  %5 = add nsw i64 %4, %wide.trip.count205
  %indvars.iv.next220 = add nuw nsw i64 %indvars.iv219, 1 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv219
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !28 ; 3 uses
  %i.aw = trunc nuw nsw i64 %indvars.iv219 to i32 ; 2 uses
  %xtraiter264 = and i64 %5, 1
  %lcmp.mod265.not = icmp eq i64 %xtraiter264, 0
  br i1 %lcmp.mod265.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph168
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv212
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !26 ; 2 uses
  %i.az = fpext float %.0135172 to double
  %i.ba = fcmp olt double %i.ay, %i.az            ; 3 uses
  %i.bb = fptrunc double %i.ay to float
  %.2137.prol = select i1 %i.ba, float %i.bb, float %.0135172 ; 2 uses
  %.2134.prol = select i1 %i.ba, i32 %i.aw, i32 %.0132173 ; 2 uses
  %i.bc = trunc nuw nsw i64 %indvars.iv212 to i32
  %.2131.prol = select i1 %i.ba, i32 %i.bc, i32 %.0129174 ; 2 uses
  %indvars.iv.next215.prol = add nuw nsw i64 %indvars.iv212, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph168
  %.2137.lcssa.unr = phi float [ poison, %.lr.ph168 ], [ %.2137.prol, %.prol.loopexit.unr-lcssa ]
  %.2134.lcssa.unr = phi i32 [ poison, %.lr.ph168 ], [ %.2134.prol, %.prol.loopexit.unr-lcssa ]
  %.2131.lcssa.unr = phi i32 [ poison, %.lr.ph168 ], [ %.2131.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv214.unr = phi i64 [ %indvars.iv212, %.lr.ph168 ], [ %indvars.iv.next215.prol, %.prol.loopexit.unr-lcssa ]
  %.1130166.unr = phi i32 [ %.0129174, %.lr.ph168 ], [ %.2131.prol, %.prol.loopexit.unr-lcssa ]
  %.1133165.unr = phi i32 [ %.0132173, %.lr.ph168 ], [ %.2134.prol, %.prol.loopexit.unr-lcssa ]
  %.1136164.unr = phi float [ %.0135172, %.lr.ph168 ], [ %.2137.prol, %.prol.loopexit.unr-lcssa ]
  %i.bd = icmp eq i64 %i.ac, %indvars.iv219
  br i1 %i.bd, label %.loopexit, label %.lr.ph168.new

.lr.ph168.new:                                    ; preds = %.prol.loopexit, %.lr.ph168.new
  %indvars.iv214 = phi i64 [ %indvars.iv.next215.1, %.lr.ph168.new ], [ %indvars.iv214.unr, %.prol.loopexit ] ; 4 uses
  %.1130166 = phi i32 [ %.2131.1, %.lr.ph168.new ], [ %.1130166.unr, %.prol.loopexit ]
  %.1133165 = phi i32 [ %.2134.1, %.lr.ph168.new ], [ %.1133165.unr, %.prol.loopexit ]
  %.1136164 = phi float [ %.2137.1, %.lr.ph168.new ], [ %.1136164.unr, %.prol.loopexit ] ; 2 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv214
  %i.bf = load double, ptr %i.be, align 8, !tbaa !26 ; 2 uses
  %i.bg = fpext float %.1136164 to double
  %i.bh = fcmp olt double %i.bf, %i.bg            ; 3 uses
  %i.bi = fptrunc double %i.bf to float
  %.2137 = select i1 %i.bh, float %i.bi, float %.1136164 ; 2 uses
  %i.bj = trunc nuw nsw i64 %indvars.iv214 to i32
  %.2131 = select i1 %i.bh, i32 %i.bj, i32 %.1130166
  %indvars.iv.next215 = add nuw nsw i64 %indvars.iv214, 1 ; 2 uses
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %indvars.iv.next215
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !26 ; 2 uses
  %i.bm = fpext float %.2137 to double
  %i.bn = fcmp olt double %i.bl, %i.bm            ; 3 uses
  %i.bo = fptrunc double %i.bl to float
  %.2137.1 = select i1 %i.bn, float %i.bo, float %.2137 ; 2 uses
  %i.bp = select i1 %i.bn, i1 true, i1 %i.bh
  %.2134.1 = select i1 %i.bp, i32 %i.aw, i32 %.1133165 ; 2 uses
  %i.bq = trunc nuw nsw i64 %indvars.iv.next215 to i32
  %.2131.1 = select i1 %i.bn, i32 %i.bq, i32 %.2131 ; 2 uses
  %indvars.iv.next215.1 = add nuw nsw i64 %indvars.iv214, 2 ; 2 uses
  %exitcond218.not.1 = icmp eq i64 %indvars.iv.next215.1, %wide.trip.count217
  br i1 %exitcond218.not.1, label %.loopexit, label %.lr.ph168.new, !llvm.loop !125

.lr.ph181.new:                                    ; preds = %bb.j, %.lr.ph181
  %indvars.iv224 = phi i64 [ 0, %.lr.ph181 ], [ %indvars.iv.next225.1, %bb.j ] ; 4 uses
  %.0180 = phi i32 [ 0, %.lr.ph181 ], [ %.1.1, %bb.j ] ; 3 uses
  %niter273 = phi i64 [ 0, %.lr.ph181 ], [ %niter273.next.1, %bb.j ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv224
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !14
  %i.bt = icmp sgt i8 %i.bs, 0
  br i1 %i.bt, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph181.new
  %i.bu = load ptr, ptr %i.at, align 8, !tbaa !34
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !36
  %i.bw = sext i32 %.0180 to i64
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bv, i64 %i.bw
  %i.by = trunc nuw nsw i64 %indvars.iv224 to i32
  store i32 %i.by, ptr %i.bx, align 4, !tbaa !13
  %i.bz = add nsw i32 %.0180, 1
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph181.new, %bb.g
  %.1 = phi i32 [ %i.bz, %bb.g ], [ %.0180, %.lr.ph181.new ] ; 3 uses
  %indvars.iv.next225 = or disjoint i64 %indvars.iv224, 1 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.next225
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !14
  %i.cc = icmp sgt i8 %i.cb, 0
  br i1 %i.cc, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.cd = load ptr, ptr %i.at, align 8, !tbaa !34
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !36
  %i.cf = sext i32 %.1 to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.ce, i64 %i.cf
  %i.ch = trunc nuw nsw i64 %indvars.iv.next225 to i32
  store i32 %i.ch, ptr %i.cg, align 4, !tbaa !13
  %i.ci = add nsw i32 %.1, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.1 = phi i32 [ %i.ci, %bb.i ], [ %.1, %bb.h ] ; 5 uses
  %indvars.iv.next225.1 = add nuw nsw i64 %indvars.iv224, 2 ; 3 uses
  %niter273.next.1 = add i64 %niter273, 2         ; 2 uses
  %niter273.ncmp.1 = icmp eq i64 %niter273.next.1, %unroll_iter272
  br i1 %niter273.ncmp.1, label %.lr.ph187.unr-lcssa, label %.lr.ph181.new, !llvm.loop !126

.lr.ph187.unr-lcssa:                              ; preds = %bb.j
  br i1 %lcmp.mod269.not, label %.lr.ph187, label %.epil.preheader266

.epil.preheader266:                               ; preds = %.lr.ph187.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod271)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.as, i64 %indvars.iv.next225.1
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !14
  %i.cl = icmp sgt i8 %i.ck, 0
  br i1 %i.cl, label %bb.k, label %.lr.ph187

bb.k:                                             ; preds = %.epil.preheader266
  %i.cm = load ptr, ptr %i.at, align 8, !tbaa !34
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !36
  %i.co = sext i32 %.1.1 to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.co
  %i.cq = trunc nuw nsw i64 %indvars.iv.next225.1 to i32
  store i32 %i.cq, ptr %i.cp, align 4, !tbaa !13
  %i.cr = add nsw i32 %.1.1, 1
  br label %.lr.ph187

.lr.ph187:                                        ; preds = %.epil.preheader266, %bb.k, %.lr.ph187.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %.lr.ph187.unr-lcssa ], [ %i.cr, %bb.k ], [ %.1.1, %.epil.preheader266 ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv245
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !34 ; 3 uses
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !36
  %i.cv = sext i32 %.1.lcssa to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %i.cv
  store i32 -1, ptr %i.cw, align 4, !tbaa !13
  %i.cx = sext i32 %.2131.lcssa to i64            ; 5 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.cx
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !18 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.ct, i64 8 ; 3 uses
  br label %.lr.ph187.new

.lr.ph187.new:                                    ; preds = %bb.o, %.lr.ph187
  %indvars.iv229 = phi i64 [ 0, %.lr.ph187 ], [ %indvars.iv.next230.1, %bb.o ] ; 4 uses
  %.2185 = phi i32 [ 0, %.lr.ph187 ], [ %.3.1, %bb.o ] ; 3 uses
  %niter281 = phi i64 [ 0, %.lr.ph187 ], [ %niter281.next.1, %bb.o ]
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv229
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !14
  %i.dd = icmp sgt i8 %i.dc, 0
  br i1 %i.dd, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph187.new
  %i.de = load ptr, ptr %i.da, align 8, !tbaa !36
  %i.df = sext i32 %.2185 to i64
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.de, i64 %i.df
  %i.dh = trunc nuw nsw i64 %indvars.iv229 to i32
  store i32 %i.dh, ptr %i.dg, align 4, !tbaa !13
  %i.di = add nsw i32 %.2185, 1
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph187.new, %bb.l
  %.3 = phi i32 [ %i.di, %bb.l ], [ %.2185, %.lr.ph187.new ] ; 3 uses
  %indvars.iv.next230 = or disjoint i64 %indvars.iv229, 1 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next230
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !14
  %i.dl = icmp sgt i8 %i.dk, 0
  br i1 %i.dl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dm = load ptr, ptr %i.da, align 8, !tbaa !36
  %i.dn = sext i32 %.3 to i64
  %i.do = getelementptr inbounds [4 x i8], ptr %i.dm, i64 %i.dn
  %i.dp = trunc nuw nsw i64 %indvars.iv.next230 to i32
  store i32 %i.dp, ptr %i.do, align 4, !tbaa !13
  %i.dq = add nsw i32 %.3, 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.3.1 = phi i32 [ %i.dq, %bb.n ], [ %.3, %bb.m ] ; 5 uses
  %indvars.iv.next230.1 = add nuw nsw i64 %indvars.iv229, 2 ; 3 uses
  %niter281.next.1 = add i64 %niter281, 2         ; 2 uses
  %niter281.ncmp.1 = icmp eq i64 %niter281.next.1, %unroll_iter280
  br i1 %niter281.ncmp.1, label %.lr.ph192.unr-lcssa, label %.lr.ph187.new, !llvm.loop !127

.lr.ph192.unr-lcssa:                              ; preds = %bb.o
  br i1 %lcmp.mod277.not, label %.lr.ph192, label %.epil.preheader274

.epil.preheader274:                               ; preds = %.lr.ph192.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod279)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cz, i64 %indvars.iv.next230.1
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !14
  %i.dt = icmp sgt i8 %i.ds, 0
  br i1 %i.dt, label %bb.p, label %.lr.ph192

bb.p:                                             ; preds = %.epil.preheader274
  %i.du = load ptr, ptr %i.da, align 8, !tbaa !36
  %i.dv = sext i32 %.3.1 to i64
  %i.dw = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.dv
  %i.dx = trunc nuw nsw i64 %indvars.iv.next230.1 to i32
  store i32 %i.dx, ptr %i.dw, align 4, !tbaa !13
  %i.dy = add nsw i32 %.3.1, 1
  br label %.lr.ph192

.lr.ph192:                                        ; preds = %.epil.preheader274, %bb.p, %.lr.ph192.unr-lcssa
  %.3.lcssa = phi i32 [ %.3.1, %.lr.ph192.unr-lcssa ], [ %i.dy, %bb.p ], [ %.3.1, %.epil.preheader274 ]
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.cx
  %.pre250 = load double, ptr %.phi.trans.insert, align 8, !tbaa !26
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !36
  %i.eb = sext i32 %.3.lcssa to i64
  %i.ec = getelementptr inbounds [4 x i8], ptr %i.ea, i64 %i.eb
  store i32 -1, ptr %i.ec, align 4, !tbaa !13
  %i.ed = fpext float %.2137.lcssa to double
  %i.ee = fmul double %i.ed, 5.000000e-01         ; 3 uses
  %i.ef = sext i32 %.2134.lcssa to i64            ; 3 uses
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ef ; 2 uses
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !26
  %i.ei = fsub double %i.ee, %i.eh
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv245
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !28 ; 2 uses
  store double %i.ei, ptr %i.ek, align 8, !tbaa !26
  %i.el = fsub double %i.ee, %.pre250
  %i.em = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store double %i.el, ptr %i.em, align 8, !tbaa !26
  store double %i.ee, ptr %i.eg, align 8, !tbaa !26
  %i.en = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.cx ; 3 uses
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ef ; 3 uses
  br label %.lr.ph192.new

.lr.ph194.unr-lcssa:                              ; preds = %.lr.ph192.new
  br i1 %lcmp.mod285.not, label %.lr.ph194, label %.epil.preheader282

.epil.preheader282:                               ; preds = %.lr.ph194.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod286)
  %i.ep = load ptr, ptr %i.en, align 8, !tbaa !18
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %indvars.iv.next235.1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !14
  %i.es = icmp sgt i8 %i.er, 0
  %i.et = zext i1 %i.es to i8
  %i.eu = load ptr, ptr %i.eo, align 8, !tbaa !18
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 %indvars.iv.next235.1 ; 2 uses
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !14
  %i.ex = add i8 %i.ew, %i.et
  store i8 %i.ex, ptr %i.ev, align 1, !tbaa !14
  br label %.lr.ph194

.lr.ph194:                                        ; preds = %.lr.ph194.unr-lcssa, %.epil.preheader282
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.cx ; 5 uses
  br i1 %i.ad, label %.epil.preheader289, label %.lr.ph194.new

.lr.ph192.new:                                    ; preds = %.lr.ph192.new, %.lr.ph192
  %indvars.iv234 = phi i64 [ 0, %.lr.ph192 ], [ %indvars.iv.next235.1, %.lr.ph192.new ] ; 4 uses
  %niter288 = phi i64 [ 0, %.lr.ph192 ], [ %niter288.next.1, %.lr.ph192.new ]
  %i.ez = load ptr, ptr %i.en, align 8, !tbaa !18
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %indvars.iv234
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !14
  %i.fc = icmp sgt i8 %i.fb, 0
  %i.fd = zext i1 %i.fc to i8
  %i.fe = load ptr, ptr %i.eo, align 8, !tbaa !18
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %indvars.iv234 ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !14
  %i.fh = add i8 %i.fg, %i.fd
  store i8 %i.fh, ptr %i.ff, align 1, !tbaa !14
  %indvars.iv.next235 = or disjoint i64 %indvars.iv234, 1 ; 2 uses
  %i.fi = load ptr, ptr %i.en, align 8, !tbaa !18
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %indvars.iv.next235
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !14
  %i.fl = icmp sgt i8 %i.fk, 0
  %i.fm = zext i1 %i.fl to i8
  %i.fn = load ptr, ptr %i.eo, align 8, !tbaa !18
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %indvars.iv.next235 ; 2 uses
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !14
  %i.fq = add i8 %i.fp, %i.fm
  store i8 %i.fq, ptr %i.fo, align 1, !tbaa !14
  %indvars.iv.next235.1 = add nuw nsw i64 %indvars.iv234, 2 ; 3 uses
  %niter288.next.1 = add i64 %niter288, 2         ; 2 uses
  %niter288.ncmp.1 = icmp eq i64 %niter288.next.1, %unroll_iter287
  br i1 %niter288.ncmp.1, label %.lr.ph194.unr-lcssa, label %.lr.ph192.new, !llvm.loop !128

.lr.ph196.unr-lcssa:                              ; preds = %.lr.ph194.new
  br i1 %lcmp.mod292.not, label %.lr.ph196, label %.epil.preheader289

.epil.preheader289:                               ; preds = %.lr.ph196.unr-lcssa, %.lr.ph194
  %indvars.iv239.epil.init = phi i64 [ 0, %.lr.ph194 ], [ %indvars.iv.next240.3, %.lr.ph196.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod293)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %.epil.preheader289
  %indvars.iv239.epil = phi i64 [ %indvars.iv239.epil.init, %.epil.preheader289 ], [ %indvars.iv.next240.epil, %bb.q ] ; 2 uses
  %epil.iter291 = phi i64 [ 0, %.epil.preheader289 ], [ %epil.iter291.next, %bb.q ]
  %i.fr = load ptr, ptr %i.ey, align 8, !tbaa !18
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv239.epil
  store i8 0, ptr %i.fs, align 1, !tbaa !14
  %indvars.iv.next240.epil = add nuw nsw i64 %indvars.iv239.epil, 1
  %epil.iter291.next = add i64 %epil.iter291, 1   ; 2 uses
  %epil.iter291.cmp.not = icmp eq i64 %epil.iter291.next, %xtraiter290
  br i1 %epil.iter291.cmp.not, label %.lr.ph196, label %bb.q, !llvm.loop !129

.lr.ph196:                                        ; preds = %bb.q, %.lr.ph196.unr-lcssa
  %i.ft = getelementptr inbounds [8 x i8], ptr %1, i64 %i.ef
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !28
  %i.fv = getelementptr inbounds [8 x i8], ptr %i.fu, i64 %i.cx
  br label %bb.r

.lr.ph194.new:                                    ; preds = %.lr.ph194, %.lr.ph194.new
  %indvars.iv239 = phi i64 [ %indvars.iv.next240.3, %.lr.ph194.new ], [ 0, %.lr.ph194 ] ; 5 uses
  %niter295 = phi i64 [ %niter295.next.3, %.lr.ph194.new ], [ 0, %.lr.ph194 ]
  %i.fw = load ptr, ptr %i.ey, align 8, !tbaa !18
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %indvars.iv239
  store i8 0, ptr %i.fx, align 1, !tbaa !14
  %i.fy = load ptr, ptr %i.ey, align 8, !tbaa !18
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 %indvars.iv239
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 1
  store i8 0, ptr %i.ga, align 1, !tbaa !14
  %i.gb = load ptr, ptr %i.ey, align 8, !tbaa !18
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 %indvars.iv239
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 2
  store i8 0, ptr %i.gd, align 1, !tbaa !14
  %i.ge = load ptr, ptr %i.ey, align 8, !tbaa !18
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %indvars.iv239
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 3
  store i8 0, ptr %i.gg, align 1, !tbaa !14
  %indvars.iv.next240.3 = add nuw nsw i64 %indvars.iv239, 4 ; 2 uses
  %niter295.next.3 = add i64 %niter295, 4         ; 2 uses
  %niter295.ncmp.3 = icmp eq i64 %niter295.next.3, %unroll_iter294
  br i1 %niter295.ncmp.3, label %.lr.ph196.unr-lcssa, label %.lr.ph194.new, !llvm.loop !130

bb.r:                                             ; preds = %.lr.ph196, %bb.t
  %.8195 = phi i32 [ 0, %.lr.ph196 ], [ %i.gz, %bb.t ] ; 7 uses
  %.not148 = icmp eq i32 %.8195, %.2134.lcssa
  %.not149 = icmp eq i32 %.8195, %.2131.lcssa
  %or.cond = select i1 %.not148, i1 true, i1 %.not149
  br i1 %or.cond, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gh = tail call i32 @llvm.smin.i32(i32 %.8195, i32 %.2134.lcssa)
  %i.gi = sext i32 %i.gh to i64
  %i.gj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gi
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !28
  %i.gl = tail call i32 @llvm.smax.i32(i32 %.8195, i32 %.2134.lcssa)
  %i.gm = zext nneg i32 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.gk, i64 %i.gm ; 2 uses
  %i.go = load double, ptr %i.gn, align 8, !tbaa !26
  %i.gp = tail call i32 @llvm.smin.i32(i32 %.8195, i32 %.2131.lcssa)
  %i.gq = sext i32 %i.gp to i64
  %i.gr = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gq
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !28
  %i.gt = tail call i32 @llvm.smax.i32(i32 %.8195, i32 %.2131.lcssa)
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.gs, i64 %i.gu ; 2 uses
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !26
  %i.gx = fadd double %i.go, %i.gw
  %i.gy = fmul double %i.gx, 5.000000e-01
  store double %i.gy, ptr %i.gn, align 8, !tbaa !26
  store double 9.999000e+03, ptr %i.gv, align 8, !tbaa !26
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  store double 9.999000e+03, ptr %i.fv, align 8, !tbaa !26
  %i.gz = add nuw nsw i32 %.8195, 1               ; 2 uses
  %exitcond244.not = icmp eq i32 %i.gz, %0
  br i1 %exitcond244.not, label %._crit_edge197, label %bb.r, !llvm.loop !131

._crit_edge197:                                   ; preds = %bb.t
  %indvars.iv.next246 = add nuw nsw i64 %indvars.iv245, 1 ; 2 uses
  %exitcond249.not = icmp eq i64 %indvars.iv.next246, %wide.trip.count248
  br i1 %exitcond249.not, label %._crit_edge199, label %.lr.ph175.preheader, !llvm.loop !132

._crit_edge199:                                   ; preds = %._crit_edge197, %bb.c, %.preheader153
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

declare ptr @AllocateCharMtx(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define dso_local void @loadtree(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readnone captures(none) %4) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [2 x i32], align 4                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.b = tail call noalias ptr @fopen(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9) ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.d = tail call i64 @fwrite(ptr nonnull @.str.10, i64 23, i64 1, ptr %i.c) #30 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @loadtree.hist, align 8, !tbaa !36
  %.not201 = icmp eq ptr %i.e, null
  br i1 %.not201, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr @njob, align 4, !tbaa !13
  %i.g = tail call ptr @AllocateIntVec(i32 noundef %i.f) #33
  store ptr %i.g, ptr @loadtree.hist, align 8, !tbaa !36
  %i.h = load i32, ptr @njob, align 4, !tbaa !13  ; 2 uses
  %i.i = sext i32 %i.h to i64
  %i.j = mul nsw i64 %i.i, 24
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #34
  store ptr %i.k, ptr @loadtree.ac, align 8, !tbaa !38
  %i.l = tail call ptr @AllocateIntVec(i32 noundef %i.h) #33
  store ptr %i.l, ptr @loadtree.nmemar, align 8, !tbaa !36
  %i.m = load i32, ptr @njob, align 4, !tbaa !13
  %i.n = tail call ptr @AllocateFloatVec(i32 noundef %i.m) #33
  %i.o = load i32, ptr @njob, align 4, !tbaa !13
  %i.p = tail call ptr @AllocateIntVec(i32 noundef %i.o) #33
  %i.q = load i32, ptr @njob, align 4, !tbaa !13
  %i.r = mul nsw i32 %i.q, 50
  %i.s = tail call ptr @AllocateCharVec(i32 noundef %i.r) #33
  store ptr %i.s, ptr @loadtree.treetmp, align 8, !tbaa !18
  %i.t = tail call ptr @AllocateCharVec(i32 noundef 30) #33
  store ptr %i.t, ptr @loadtree.nametmp, align 8, !tbaa !18
  %i.u = load i32, ptr @njob, align 4, !tbaa !13  ; 2 uses
  %i.v = mul nsw i32 %i.u, 50
  %i.w = tail call ptr @AllocateCharMtx(i32 noundef %i.u, i32 noundef %i.v) #33
  store ptr %i.w, ptr @loadtree.tree, align 8, !tbaa !32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0170 = phi ptr [ null, %bb.c ], [ %i.p, %bb.d ]
  %.0 = phi ptr [ null, %bb.c ], [ %i.n, %bb.d ]  ; 2 uses
  %i.x = icmp sgt i32 %0, 0
  br i1 %i.x, label %.preheader218.lr.ph, label %._crit_edge226.thread

.preheader218.lr.ph:                              ; preds = %bb.e
  %i.y = tail call ptr @__ctype_b_loc() #35       ; 2 uses
  %wide.trip.count = zext nneg i32 %0 to i64      ; 7 uses
  br label %.preheader218

.preheader218:                                    ; preds = %.preheader218.lr.ph, %bb.g
  %indvars.iv259 = phi i64 [ 0, %.preheader218.lr.ph ], [ %indvars.iv.next260, %bb.g ] ; 3 uses
  %i.z = load ptr, ptr @loadtree.nametmp, align 8, !tbaa !18 ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(30) %i.z, i8 0, i64 30, i1 false), !tbaa !14
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv259 ; 2 uses
  br label %bb.f

.lr.ph.preheader:                                 ; preds = %bb.g
  %.pre278 = load ptr, ptr @loadtree.ac, align 8, !tbaa !38 ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.ab = icmp eq i32 %0, 1
  br i1 %i.ab, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %i.ac = load ptr, ptr @loadtree.ac, align 8, !tbaa !38 ; 8 uses
  br label %.lr.ph

bb.f:                                             ; preds = %bb.f, %.preheader218
  %indvars.iv = phi i64 [ 0, %.preheader218 ], [ %indvars.iv.next.1, %bb.f ] ; 4 uses
  %i.ad = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.ae = load ptr, ptr %i.aa, align 8, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %indvars.iv
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14  ; 2 uses
  %i.ah = sext i8 %i.ag to i64
  %i.ai = getelementptr inbounds [2 x i8], ptr %i.ad, i64 %i.ah
  %i.aj = load i16, ptr %i.ai, align 2, !tbaa !42
  %i.ak = and i16 %i.aj, 8
  %.not211 = icmp eq i16 %i.ak, 0
  %spec.select = select i1 %.not211, i8 95, i8 %i.ag
  %i.al = getelementptr inbounds nuw i8, ptr %i.z, i64 %indvars.iv
  store i8 %spec.select, ptr %i.al, align 1, !tbaa !14
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !40
  %i.an = load ptr, ptr %i.aa, align 8, !tbaa !18
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.next
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !14  ; 2 uses
  %i.aq = sext i8 %i.ap to i64
  %i.ar = getelementptr inbounds [2 x i8], ptr %i.am, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !42
  %i.at = and i16 %i.as, 8
  %.not211.1 = icmp eq i16 %i.at, 0
end_hunk_0
begin_hunk_1_@supg:bb.a
  %.3.lcssa = phi ptr [ %.3.3, %.lr.ph205.unr-lcssa ], [ %.3.epil, %bb.ab ]
  %.phi.trans.insert = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.dq
  %.pre275 = load float, ptr %.phi.trans.insert, align 4, !tbaa !24
  store i32 -1, ptr %.3.lcssa, align 4, !tbaa !13
  %i.es = fpext float %.2131.lcssa to double
  %i.et = fmul double %i.es, 5.000000e-01         ; 3 uses
  %i.eu = sext i32 %.2128.lcssa to i64            ; 5 uses
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.eu ; 2 uses
  %i.ew = load float, ptr %i.ev, align 4, !tbaa !24
  %i.ex = fpext float %i.ew to double
  %i.ey = fsub double %i.et, %i.ex
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv266
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !28 ; 2 uses
  store double %i.ey, ptr %i.fa, align 8, !tbaa !26
  %i.fb = fpext float %.pre275 to double
  %i.fc = fsub double %i.et, %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store double %i.fc, ptr %i.fd, align 8, !tbaa !26
  %i.fe = fptrunc double %i.et to float
  store float %i.fe, ptr %i.ev, align 4, !tbaa !24
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.dq ; 3 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.eu ; 3 uses
  br label %bb.ac

.lr.ph207.unr-lcssa:                              ; preds = %bb.ac
  br i1 %lcmp.mod315.not, label %.lr.ph207, label %.epil.preheader312

.epil.preheader312:                               ; preds = %.lr.ph207.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod316)
  %i.fh = load ptr, ptr %i.ff, align 8, !tbaa !18
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 %indvars.iv.next256.1
  %i.fj = load i8, ptr %i.fi, align 1, !tbaa !14
  %i.fk = icmp sgt i8 %i.fj, 0
  %i.fl = zext i1 %i.fk to i8
  %i.fm = load ptr, ptr %i.fg, align 8, !tbaa !18
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 %indvars.iv.next256.1 ; 2 uses
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !14
  %i.fp = add i8 %i.fo, %i.fl
  store i8 %i.fp, ptr %i.fn, align 1, !tbaa !14
  br label %.lr.ph207

.lr.ph207:                                        ; preds = %.lr.ph207.unr-lcssa, %.epil.preheader312
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.dq ; 5 uses
  br i1 %i.bd, label %.epil.preheader319, label %.lr.ph207.new

bb.ac:                                            ; preds = %bb.ac, %.lr.ph205
  %indvars.iv255 = phi i64 [ 0, %.lr.ph205 ], [ %indvars.iv.next256.1, %bb.ac ] ; 4 uses
  %niter318 = phi i64 [ 0, %.lr.ph205 ], [ %niter318.next.1, %bb.ac ]
  %i.fr = load ptr, ptr %i.ff, align 8, !tbaa !18
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 %indvars.iv255
  %i.ft = load i8, ptr %i.fs, align 1, !tbaa !14
  %i.fu = icmp sgt i8 %i.ft, 0
  %i.fv = zext i1 %i.fu to i8
  %i.fw = load ptr, ptr %i.fg, align 8, !tbaa !18
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %indvars.iv255 ; 2 uses
  %i.fy = load i8, ptr %i.fx, align 1, !tbaa !14
  %i.fz = add i8 %i.fy, %i.fv
  store i8 %i.fz, ptr %i.fx, align 1, !tbaa !14
  %indvars.iv.next256 = or disjoint i64 %indvars.iv255, 1 ; 2 uses
  %i.ga = load ptr, ptr %i.ff, align 8, !tbaa !18
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 %indvars.iv.next256
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !14
  %i.gd = icmp sgt i8 %i.gc, 0
  %i.ge = zext i1 %i.gd to i8
  %i.gf = load ptr, ptr %i.fg, align 8, !tbaa !18
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %indvars.iv.next256 ; 2 uses
  %i.gh = load i8, ptr %i.gg, align 1, !tbaa !14
  %i.gi = add i8 %i.gh, %i.ge
  store i8 %i.gi, ptr %i.gg, align 1, !tbaa !14
  %indvars.iv.next256.1 = add nuw nsw i64 %indvars.iv255, 2 ; 3 uses
  %niter318.next.1 = add i64 %niter318, 2         ; 2 uses
  %niter318.ncmp.1 = icmp eq i64 %niter318.next.1, %unroll_iter317
  br i1 %niter318.ncmp.1, label %.lr.ph207.unr-lcssa, label %bb.ac, !llvm.loop !276

.lr.ph210.unr-lcssa:                              ; preds = %.lr.ph207.new
  br i1 %lcmp.mod322.not, label %.lr.ph210, label %.epil.preheader319

.epil.preheader319:                               ; preds = %.lr.ph210.unr-lcssa, %.lr.ph207
  %indvars.iv260.epil.init = phi i64 [ 0, %.lr.ph207 ], [ %indvars.iv.next261.3, %.lr.ph210.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod323)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %.epil.preheader319
  %indvars.iv260.epil = phi i64 [ %indvars.iv260.epil.init, %.epil.preheader319 ], [ %indvars.iv.next261.epil, %bb.ad ] ; 2 uses
  %epil.iter321 = phi i64 [ 0, %.epil.preheader319 ], [ %epil.iter321.next, %bb.ad ]
  %i.gj = load ptr, ptr %i.fq, align 8, !tbaa !18
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv260.epil
  store i8 0, ptr %i.gk, align 1, !tbaa !14
  %indvars.iv.next261.epil = add nuw nsw i64 %indvars.iv260.epil, 1
  %epil.iter321.next = add i64 %epil.iter321, 1   ; 2 uses
  %epil.iter321.cmp.not = icmp eq i64 %epil.iter321.next, %xtraiter320
  br i1 %epil.iter321.cmp.not, label %.lr.ph210, label %bb.ad, !llvm.loop !277

.lr.ph210:                                        ; preds = %bb.ad, %.lr.ph210.unr-lcssa
  %i.gl = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %i.eu
  br label %bb.ae

.lr.ph207.new:                                    ; preds = %.lr.ph207, %.lr.ph207.new
  %indvars.iv260 = phi i64 [ %indvars.iv.next261.3, %.lr.ph207.new ], [ 0, %.lr.ph207 ] ; 5 uses
  %niter325 = phi i64 [ %niter325.next.3, %.lr.ph207.new ], [ 0, %.lr.ph207 ]
  %i.gm = load ptr, ptr %i.fq, align 8, !tbaa !18
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 %indvars.iv260
  store i8 0, ptr %i.gn, align 1, !tbaa !14
  %i.go = load ptr, ptr %i.fq, align 8, !tbaa !18
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %indvars.iv260
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 1
  store i8 0, ptr %i.gq, align 1, !tbaa !14
  %i.gr = load ptr, ptr %i.fq, align 8, !tbaa !18
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 %indvars.iv260
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 2
  store i8 0, ptr %i.gt, align 1, !tbaa !14
  %i.gu = load ptr, ptr %i.fq, align 8, !tbaa !18
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gu, i64 %indvars.iv260
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 3
  store i8 0, ptr %i.gw, align 1, !tbaa !14
  %indvars.iv.next261.3 = add nuw nsw i64 %indvars.iv260, 4 ; 2 uses
  %niter325.next.3 = add i64 %niter325, 4         ; 2 uses
  %niter325.ncmp.3 = icmp eq i64 %niter325.next.3, %unroll_iter324
  br i1 %niter325.ncmp.3, label %.lr.ph210.unr-lcssa, label %.lr.ph207.new, !llvm.loop !278

bb.ae:                                            ; preds = %.lr.ph210, %bb.ai
  %.9208 = phi i32 [ 0, %.lr.ph210 ], [ %i.hr, %bb.ai ] ; 8 uses
  %.not153 = icmp eq i32 %.9208, %.2128.lcssa
  %.not154 = icmp eq i32 %.9208, %.2.lcssa
  %or.cond = select i1 %.not153, i1 true, i1 %.not154
  br i1 %or.cond, label %bb.ai, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.gx = icmp slt i32 %.9208, %.2128.lcssa
  br i1 %i.gx, label %._crit_edge276, label %bb.ag

._crit_edge276:                                   ; preds = %bb.af
  %.pre277 = zext nneg i32 %.9208 to i64          ; 2 uses
  br label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %.9..0 = tail call i32 @llvm.smin.i32(i32 %.9208, i32 %.2.lcssa)
  %.0..9 = tail call i32 @llvm.smax.i32(i32 %.9208, i32 %.2.lcssa)
  %.pre271 = zext nneg i32 %.9208 to i64
  %.pre273 = zext nneg i32 %.0..9 to i64
  %.pre279 = sext i32 %.9..0 to i64
  br label %bb.ah

bb.ah:                                            ; preds = %._crit_edge276, %bb.ag
  %.pre-phi280 = phi i64 [ %.pre277, %._crit_edge276 ], [ %.pre279, %bb.ag ]
  %.pre-phi278 = phi i64 [ %.pre277, %._crit_edge276 ], [ %i.eu, %bb.ag ]
  %.pre-phi274 = phi i64 [ %i.dq, %._crit_edge276 ], [ %.pre273, %bb.ag ]
  %.pre-phi272 = phi i64 [ %i.eu, %._crit_edge276 ], [ %.pre271, %bb.ag ]
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %.pre-phi278
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !22
  %i.ha = getelementptr inbounds [4 x i8], ptr %i.gz, i64 %.pre-phi272 ; 2 uses
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !24 ; 3 uses
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.ax, i64 %.pre-phi280
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !22
  %i.he = getelementptr inbounds [4 x i8], ptr %i.hd, i64 %.pre-phi274 ; 2 uses
  %i.hf = load float, ptr %i.he, align 4, !tbaa !24 ; 3 uses
  %i.hg = fcmp olt float %i.hb, %i.hf
  %i.hh = select i1 %i.hg, float %i.hb, float %i.hf
  %i.hi = fpext float %i.hh to double
  %i.hj = fadd float %i.hb, %i.hf
  %i.hk = fpext float %i.hj to double
  %i.hl = fmul double %i.hk, 5.000000e-01
  %i.hm = fmul double %i.hl, 1.000000e-01
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.hi, double 9.000000e-01, double %i.hm)
  %i.ho = fptrunc double %i.hn to float
  store float %i.ho, ptr %i.ha, align 4, !tbaa !24
  store float 9.999000e+03, ptr %i.he, align 4, !tbaa !24
  %i.hp = load ptr, ptr %i.gl, align 8, !tbaa !22
  %i.hq = getelementptr inbounds [4 x i8], ptr %i.hp, i64 %i.dq
  store float 9.999000e+03, ptr %i.hq, align 4, !tbaa !24
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ae, %bb.ah
  %i.hr = add nuw nsw i32 %.9208, 1               ; 2 uses
  %exitcond265.not = icmp eq i32 %i.hr, %0
  br i1 %exitcond265.not, label %._crit_edge211, label %bb.ae, !llvm.loop !279

._crit_edge211:                                   ; preds = %bb.ai
  %indvars.iv.next267 = add nuw nsw i64 %indvars.iv266, 1 ; 2 uses
  %exitcond270.not = icmp eq i64 %indvars.iv.next267, %wide.trip.count269
  br i1 %exitcond270.not, label %._crit_edge214, label %.lr.ph186.preheader, !llvm.loop !280

._crit_edge214:                                   ; preds = %._crit_edge211, %bb.c, %.preheader156
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @spg(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #12 {
bb.a:
  %i.a = alloca [50000 x double], align 16        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  %i.b = load i32, ptr @njob, align 4, !tbaa !13  ; 2 uses
  %i.c = tail call ptr @AllocateDoubleMtx(i32 noundef %i.b, i32 noundef %i.b) #33 ; 5 uses
  %i.d = load i32, ptr @njob, align 4, !tbaa !13  ; 2 uses
  %i.e = tail call ptr @AllocateCharMtx(i32 noundef %i.d, i32 noundef %i.d) #33 ; 11 uses
  %i.f = icmp sgt i32 %0, 0
  br i1 %i.f, label %.preheader201.preheader, label %._crit_edge247

.preheader201.preheader:                          ; preds = %bb.a
  %wide.trip.count252 = zext nneg i32 %0 to i64   ; 19 uses
  %i.g = add nsw i64 %wide.trip.count252, -1      ; 2 uses
  %min.iters.check = icmp ult i32 %0, 4
  %n.vec = and i64 %wide.trip.count252, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count252
  %xtraiter = and i64 %wide.trip.count252, 3      ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader201

.preheader201:                                    ; preds = %.preheader201.preheader, %._crit_edge
  %indvars.iv249 = phi i64 [ 0, %.preheader201.preheader ], [ %indvars.iv.next250, %._crit_edge ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv249
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !28   ; 7 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv249
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !28   ; 7 uses
  %i.l = ptrtoaddr ptr %i.k to i64
  %i.m = ptrtoaddr ptr %i.i to i64
  %i.n = sub i64 %i.m, %i.l
  %diff.check = icmp ugt i64 %i.n, -32
  %or.cond318 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond318, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader201, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader201 ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %index ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %wide.load = load <2 x double>, ptr %i.o, align 8, !tbaa !26
  %wide.load315 = load <2 x double>, ptr %i.p, align 8, !tbaa !26
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %index ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x double> %wide.load, ptr %i.q, align 8, !tbaa !26
  store <2 x double> %wide.load315, ptr %i.r, align 8, !tbaa !26
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.s = icmp eq i64 %index.next, %n.vec
  br i1 %i.s, label %middle.block, label %vector.body, !llvm.loop !281

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader201, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.preheader201 ], [ %n.vec, %middle.block ] ; 3 uses
  %i.t = sub nsw i64 %i.g, %indvars.iv.ph
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %scalar.ph.prol ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.prol
  %i.v = load double, ptr %i.u, align 8, !tbaa !26
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.prol
  store double %i.v, ptr %i.w, align 8, !tbaa !26
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !282

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %scalar.ph.preheader ], [ %indvars.iv.next.prol, %scalar.ph.prol ]
  %i.x = icmp ult i64 %i.t, 3
  br i1 %i.x, label %._crit_edge, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %scalar.ph ], [ %indvars.iv.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.z = load double, ptr %i.y, align 8, !tbaa !26
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  store double %i.z, ptr %i.aa, align 8, !tbaa !26
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !26
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next
  store double %i.ac, ptr %i.ad, align 8, !tbaa !26
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.1
  %i.af = load double, ptr %i.ae, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.1
  store double %i.af, ptr %i.ag, align 8, !tbaa !26
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next.2
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !26
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next.2
  store double %i.ai, ptr %i.aj, align 8, !tbaa !26
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count252
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph, !llvm.loop !283

._crit_edge:                                      ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %indvars.iv.next250 = add nuw nsw i64 %indvars.iv249, 1 ; 2 uses
  %exitcond253.not = icmp eq i64 %indvars.iv.next250, %wide.trip.count252
  br i1 %exitcond253.not, label %.preheader198.preheader, label %.preheader201, !llvm.loop !284

.preheader198.preheader:                          ; preds = %._crit_edge
  %i.ak = zext nneg i32 %0 to i64
  %i.al = shl nuw nsw i64 %i.ak, 3
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %i.a, i8 0, i64 %i.al, i1 false), !tbaa !26
  %wide.trip.count265 = zext nneg i32 %0 to i64
  %xtraiter319 = and i64 %wide.trip.count252, 3   ; 3 uses
  %i.am = icmp ult i32 %0, 4
  %unroll_iter = and i64 %wide.trip.count252, 2147483644
  %lcmp.mod320.not = icmp eq i64 %xtraiter319, 0
  %lcmp.mod321 = icmp ne i64 %xtraiter319, 0
  br label %.preheader198

.preheader198:                                    ; preds = %.preheader198.preheader, %._crit_edge207
  %indvars.iv262 = phi i64 [ 0, %.preheader198.preheader ], [ %indvars.iv.next263, %._crit_edge207 ] ; 2 uses
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv262 ; 5 uses
  br i1 %i.am, label %.epil.preheader, label %.preheader198.new

.lr.ph210.preheader:                              ; preds = %._crit_edge207
  %xtraiter322 = and i64 %wide.trip.count252, 3   ; 3 uses
  %i.ao = icmp ult i32 %0, 4
  br i1 %i.ao, label %.lr.ph210.epil.preheader, label %.lr.ph210.preheader.new

.lr.ph210.preheader.new:                          ; preds = %.lr.ph210.preheader
  %unroll_iter326 = and i64 %wide.trip.count252, 2147483644
  br label %.lr.ph210

.preheader198.new:                                ; preds = %.preheader198, %.preheader198.new
  %indvars.iv257 = phi i64 [ %indvars.iv.next258.3, %.preheader198.new ], [ 0, %.preheader198 ] ; 5 uses
  %niter = phi i64 [ %niter.next.3, %.preheader198.new ], [ 0, %.preheader198 ]
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %indvars.iv257
  store i8 0, ptr %i.aq, align 1, !tbaa !14
  %i.ar = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv257
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  store i8 0, ptr %i.at, align 1, !tbaa !14
  %i.au = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv257
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i8 0, ptr %i.aw, align 1, !tbaa !14
  %i.ax = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv257
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 3
  store i8 0, ptr %i.az, align 1, !tbaa !14
  %indvars.iv.next258.3 = add nuw nsw i64 %indvars.iv257, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge207.unr-lcssa, label %.preheader198.new, !llvm.loop !285

._crit_edge207.unr-lcssa:                         ; preds = %.preheader198.new
  br i1 %lcmp.mod320.not, label %._crit_edge207, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge207.unr-lcssa, %.preheader198
  %indvars.iv257.epil.init = phi i64 [ 0, %.preheader198 ], [ %indvars.iv.next258.3, %._crit_edge207.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod321)
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.epil.preheader
  %indvars.iv257.epil = phi i64 [ %indvars.iv257.epil.init, %.epil.preheader ], [ %indvars.iv.next258.epil, %bb.b ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.b ]
  %i.ba = load ptr, ptr %i.an, align 8, !tbaa !18
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %indvars.iv257.epil
  store i8 0, ptr %i.bb, align 1, !tbaa !14
  %indvars.iv.next258.epil = add nuw nsw i64 %indvars.iv257.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter319
  br i1 %epil.iter.cmp.not, label %._crit_edge207, label %bb.b, !llvm.loop !286

._crit_edge207:                                   ; preds = %bb.b, %._crit_edge207.unr-lcssa
  %indvars.iv.next263 = add nuw nsw i64 %indvars.iv262, 1 ; 2 uses
  %exitcond266.not = icmp eq i64 %indvars.iv.next263, %wide.trip.count265
  br i1 %exitcond266.not, label %.lr.ph210.preheader, label %.preheader198, !llvm.loop !287

.preheader196.unr-lcssa:                          ; preds = %.lr.ph210
  %lcmp.mod324.not = icmp eq i64 %xtraiter322, 0
  br i1 %lcmp.mod324.not, label %.preheader196, label %.lr.ph210.epil.preheader

.lr.ph210.epil.preheader:                         ; preds = %.preheader196.unr-lcssa, %.lr.ph210.preheader
  %indvars.iv267.epil.init = phi i64 [ 0, %.lr.ph210.preheader ], [ %indvars.iv.next268.3, %.preheader196.unr-lcssa ]
  %lcmp.mod325 = icmp ne i64 %xtraiter322, 0
  tail call void @llvm.assume(i1 %lcmp.mod325)
  br label %.lr.ph210.epil

.lr.ph210.epil:                                   ; preds = %.lr.ph210.epil, %.lr.ph210.epil.preheader
  %indvars.iv267.epil = phi i64 [ %indvars.iv267.epil.init, %.lr.ph210.epil.preheader ], [ %indvars.iv.next268.epil, %.lr.ph210.epil ] ; 3 uses
  %epil.iter323 = phi i64 [ 0, %.lr.ph210.epil.preheader ], [ %epil.iter323.next, %.lr.ph210.epil ]
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv267.epil
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !18
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %indvars.iv267.epil
  store i8 1, ptr %i.be, align 1, !tbaa !14
  %indvars.iv.next268.epil = add nuw nsw i64 %indvars.iv267.epil, 1
  %epil.iter323.next = add i64 %epil.iter323, 1   ; 2 uses
  %epil.iter323.cmp.not = icmp eq i64 %epil.iter323.next, %xtraiter322
  br i1 %epil.iter323.cmp.not, label %.preheader196, label %.lr.ph210.epil, !llvm.loop !288

.preheader196:                                    ; preds = %.lr.ph210.epil, %.preheader196.unr-lcssa
  %.not314 = icmp eq i32 %0, 1
  br i1 %.not314, label %._crit_edge247, label %.preheader195.lr.ph

.preheader195.lr.ph:                              ; preds = %.preheader196
  %i.bf = add nsw i32 %0, -1
  %wide.trip.count308 = zext nneg i32 %i.bf to i64 ; 2 uses
  %wide.trip.count277 = zext nneg i32 %0 to i64
  %i.bg = add nsw i64 %wide.trip.count252, -2
  %xtraiter332 = and i64 %wide.trip.count252, 1
  %unroll_iter337 = and i64 %wide.trip.count252, 2147483646
  %lcmp.mod334.not = icmp eq i64 %xtraiter332, 0
  %lcmp.mod336 = trunc i32 %0 to i1
  %xtraiter340 = and i64 %wide.trip.count252, 1
  %unroll_iter345 = and i64 %wide.trip.count252, 2147483646
  %lcmp.mod342.not = icmp eq i64 %xtraiter340, 0
  %lcmp.mod344 = trunc i32 %0 to i1
  %xtraiter348 = and i64 %wide.trip.count252, 1
  %unroll_iter352 = and i64 %wide.trip.count252, 2147483646
  %lcmp.mod350.not = icmp eq i64 %xtraiter348, 0
  %lcmp.mod351 = trunc i32 %0 to i1
  %xtraiter355 = and i64 %wide.trip.count252, 3   ; 3 uses
  %i.bh = icmp ult i32 %0, 4
  %unroll_iter359 = and i64 %wide.trip.count252, 2147483644
  %lcmp.mod357.not = icmp eq i64 %xtraiter355, 0
  %lcmp.mod358 = icmp ne i64 %xtraiter355, 0
  br label %.lr.ph223.preheader

.lr.ph210:                                        ; preds = %.lr.ph210, %.lr.ph210.preheader.new
  %indvars.iv267 = phi i64 [ 0, %.lr.ph210.preheader.new ], [ %indvars.iv.next268.3, %.lr.ph210 ] ; 6 uses
  %niter327 = phi i64 [ 0, %.lr.ph210.preheader.new ], [ %niter327.next.3, %.lr.ph210 ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv267
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !18
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %indvars.iv267
  store i8 1, ptr %i.bk, align 1, !tbaa !14
  %indvars.iv.next268 = or disjoint i64 %indvars.iv267, 1 ; 2 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next268
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !18
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 %indvars.iv.next268
  store i8 1, ptr %i.bn, align 1, !tbaa !14
  %indvars.iv.next268.1 = or disjoint i64 %indvars.iv267, 2 ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next268.1
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !18
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv.next268.1
  store i8 1, ptr %i.bq, align 1, !tbaa !14
  %indvars.iv.next268.2 = or disjoint i64 %indvars.iv267, 3 ; 2 uses
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.next268.2
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !18
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %indvars.iv.next268.2
  store i8 1, ptr %i.bt, align 1, !tbaa !14
  %indvars.iv.next268.3 = add nuw nsw i64 %indvars.iv267, 4 ; 2 uses
  %niter327.next.3 = add i64 %niter327, 4         ; 2 uses
  %niter327.ncmp.3 = icmp eq i64 %niter327.next.3, %unroll_iter326
  br i1 %niter327.ncmp.3, label %.preheader196.unr-lcssa, label %.lr.ph210, !llvm.loop !289

.lr.ph223.preheader:                              ; preds = %._crit_edge245, %.preheader195.lr.ph
  %indvars.iv305 = phi i64 [ 0, %.preheader195.lr.ph ], [ %indvars.iv.next306, %._crit_edge245 ] ; 4 uses
  br label %.lr.ph216

.loopexit:                                        ; preds = %.lr.ph216.new, %.prol.loopexit
  %.2175.lcssa = phi float [ %.2175.lcssa.unr, %.prol.loopexit ], [ %.2175.1, %.lr.ph216.new ] ; 2 uses
  %.2172.lcssa = phi i32 [ %.2172.lcssa.unr, %.prol.loopexit ], [ %.2172.1, %.lr.ph216.new ] ; 6 uses
  %.2169.lcssa = phi i32 [ %.2169.lcssa.unr, %.prol.loopexit ], [ %.2169.1, %.lr.ph216.new ] ; 5 uses
  %indvars.iv.next273 = add nuw nsw i64 %indvars.iv272, 1
  %exitcond283.not = icmp eq i64 %indvars.iv.next280, %wide.trip.count308
  br i1 %exitcond283.not, label %.lr.ph229, label %.lr.ph216, !llvm.loop !290

.lr.ph229:                                        ; preds = %.loopexit
  %i.bu = sext i32 %.2172.lcssa to i64
  %i.bv = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.bu
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !18 ; 3 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv305 ; 3 uses
  br label %.lr.ph229.new

.lr.ph216:                                        ; preds = %.loopexit, %.lr.ph223.preheader
  %indvars.iv279 = phi i64 [ 0, %.lr.ph223.preheader ], [ %indvars.iv.next280, %.loopexit ] ; 5 uses
  %indvars.iv272 = phi i64 [ 1, %.lr.ph223.preheader ], [ %indvars.iv.next273, %.loopexit ] ; 5 uses
  %.0167222 = phi i32 [ -1, %.lr.ph223.preheader ], [ %.2169.lcssa, %.loopexit ] ; 2 uses
  %.0170221 = phi i32 [ -1, %.lr.ph223.preheader ], [ %.2172.lcssa, %.loopexit ] ; 2 uses
  %.0173220 = phi float [ 9.999000e+03, %.lr.ph223.preheader ], [ %.2175.lcssa, %.loopexit ] ; 3 uses
  %i.by = sub i64 %i.g, %indvars.iv279
  %indvars.iv.next280 = add nuw nsw i64 %indvars.iv279, 1 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv279
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !28 ; 3 uses
  %i.cb = trunc nuw nsw i64 %indvars.iv279 to i32 ; 2 uses
  %xtraiter328 = and i64 %i.by, 1
  %lcmp.mod329.not = icmp eq i64 %xtraiter328, 0
  br i1 %lcmp.mod329.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph216
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv272
  %i.cd = load double, ptr %i.cc, align 8, !tbaa !26 ; 2 uses
  %i.ce = fpext float %.0173220 to double
  %i.cf = fcmp olt double %i.cd, %i.ce            ; 3 uses
  %i.cg = fptrunc double %i.cd to float
  %.2175.prol = select i1 %i.cf, float %i.cg, float %.0173220 ; 2 uses
  %.2172.prol = select i1 %i.cf, i32 %i.cb, i32 %.0170221 ; 2 uses
  %i.ch = trunc nuw nsw i64 %indvars.iv272 to i32
  %.2169.prol = select i1 %i.cf, i32 %i.ch, i32 %.0167222 ; 2 uses
  %indvars.iv.next275.prol = add nuw nsw i64 %indvars.iv272, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph216
  %.2175.lcssa.unr = phi float [ poison, %.lr.ph216 ], [ %.2175.prol, %.prol.loopexit.unr-lcssa ]
  %.2172.lcssa.unr = phi i32 [ poison, %.lr.ph216 ], [ %.2172.prol, %.prol.loopexit.unr-lcssa ]
  %.2169.lcssa.unr = phi i32 [ poison, %.lr.ph216 ], [ %.2169.prol, %.prol.loopexit.unr-lcssa ]
  %indvars.iv274.unr = phi i64 [ %indvars.iv272, %.lr.ph216 ], [ %indvars.iv.next275.prol, %.prol.loopexit.unr-lcssa ]
  %.1168214.unr = phi i32 [ %.0167222, %.lr.ph216 ], [ %.2169.prol, %.prol.loopexit.unr-lcssa ]
  %.1171213.unr = phi i32 [ %.0170221, %.lr.ph216 ], [ %.2172.prol, %.prol.loopexit.unr-lcssa ]
  %.1174212.unr = phi float [ %.0173220, %.lr.ph216 ], [ %.2175.prol, %.prol.loopexit.unr-lcssa ]
  %i.ci = icmp eq i64 %i.bg, %indvars.iv279
  br i1 %i.ci, label %.loopexit, label %.lr.ph216.new

.lr.ph216.new:                                    ; preds = %.prol.loopexit, %.lr.ph216.new
  %indvars.iv274 = phi i64 [ %indvars.iv.next275.1, %.lr.ph216.new ], [ %indvars.iv274.unr, %.prol.loopexit ] ; 4 uses
  %.1168214 = phi i32 [ %.2169.1, %.lr.ph216.new ], [ %.1168214.unr, %.prol.loopexit ]
  %.1171213 = phi i32 [ %.2172.1, %.lr.ph216.new ], [ %.1171213.unr, %.prol.loopexit ]
  %.1174212 = phi float [ %.2175.1, %.lr.ph216.new ], [ %.1174212.unr, %.prol.loopexit ] ; 2 uses
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv274
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !26 ; 2 uses
  %i.cl = fpext float %.1174212 to double
  %i.cm = fcmp olt double %i.ck, %i.cl            ; 3 uses
  %i.cn = fptrunc double %i.ck to float
  %.2175 = select i1 %i.cm, float %i.cn, float %.1174212 ; 2 uses
  %i.co = trunc nuw nsw i64 %indvars.iv274 to i32
  %.2169 = select i1 %i.cm, i32 %i.co, i32 %.1168214
  %indvars.iv.next275 = add nuw nsw i64 %indvars.iv274, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %indvars.iv.next275
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !26 ; 2 uses
  %i.cr = fpext float %.2175 to double
  %i.cs = fcmp olt double %i.cq, %i.cr            ; 3 uses
  %i.ct = fptrunc double %i.cq to float
  %.2175.1 = select i1 %i.cs, float %i.ct, float %.2175 ; 2 uses
  %i.cu = select i1 %i.cs, i1 true, i1 %i.cm
  %.2172.1 = select i1 %i.cu, i32 %i.cb, i32 %.1171213 ; 2 uses
  %i.cv = trunc nuw nsw i64 %indvars.iv.next275 to i32
  %.2169.1 = select i1 %i.cs, i32 %i.cv, i32 %.2169 ; 2 uses
  %indvars.iv.next275.1 = add nuw nsw i64 %indvars.iv274, 2 ; 2 uses
  %exitcond278.not.1 = icmp eq i64 %indvars.iv.next275.1, %wide.trip.count277
  br i1 %exitcond278.not.1, label %.loopexit, label %.lr.ph216.new, !llvm.loop !291

.lr.ph229.new:                                    ; preds = %bb.f, %.lr.ph229
  %indvars.iv284 = phi i64 [ 0, %.lr.ph229 ], [ %indvars.iv.next285.1, %bb.f ] ; 4 uses
  %.0228 = phi i32 [ 0, %.lr.ph229 ], [ %.1.1, %bb.f ] ; 3 uses
  %niter338 = phi i64 [ 0, %.lr.ph229 ], [ %niter338.next.1, %bb.f ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv284
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !14
  %i.cy = icmp sgt i8 %i.cx, 0
  br i1 %i.cy, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph229.new
  %i.cz = load ptr, ptr %i.bx, align 8, !tbaa !34
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !36
  %i.db = sext i32 %.0228 to i64
  %i.dc = getelementptr inbounds [4 x i8], ptr %i.da, i64 %i.db
  %i.dd = trunc nuw nsw i64 %indvars.iv284 to i32
  store i32 %i.dd, ptr %i.dc, align 4, !tbaa !13
  %i.de = add nsw i32 %.0228, 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph229.new, %bb.c
  %.1 = phi i32 [ %i.de, %bb.c ], [ %.0228, %.lr.ph229.new ] ; 3 uses
  %indvars.iv.next285 = or disjoint i64 %indvars.iv284, 1 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv.next285
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !14
  %i.dh = icmp sgt i8 %i.dg, 0
  br i1 %i.dh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.di = load ptr, ptr %i.bx, align 8, !tbaa !34
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !36
  %i.dk = sext i32 %.1 to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.dj, i64 %i.dk
  %i.dm = trunc nuw nsw i64 %indvars.iv.next285 to i32
  store i32 %i.dm, ptr %i.dl, align 4, !tbaa !13
  %i.dn = add nsw i32 %.1, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.1.1 = phi i32 [ %i.dn, %bb.e ], [ %.1, %bb.d ] ; 5 uses
  %indvars.iv.next285.1 = add nuw nsw i64 %indvars.iv284, 2 ; 3 uses
  %niter338.next.1 = add i64 %niter338, 2         ; 2 uses
  %niter338.ncmp.1 = icmp eq i64 %niter338.next.1, %unroll_iter337
  br i1 %niter338.ncmp.1, label %.lr.ph235.unr-lcssa, label %.lr.ph229.new, !llvm.loop !292

.lr.ph235.unr-lcssa:                              ; preds = %bb.f
  br i1 %lcmp.mod334.not, label %.lr.ph235, label %.epil.preheader331

.epil.preheader331:                               ; preds = %.lr.ph235.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod336)
  %i.do = getelementptr inbounds nuw i8, ptr %i.bw, i64 %indvars.iv.next285.1
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !14
  %i.dq = icmp sgt i8 %i.dp, 0
  br i1 %i.dq, label %bb.g, label %.lr.ph235

bb.g:                                             ; preds = %.epil.preheader331
  %i.dr = load ptr, ptr %i.bx, align 8, !tbaa !34
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !36
  %i.dt = sext i32 %.1.1 to i64
  %i.du = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.dt
  %i.dv = trunc nuw nsw i64 %indvars.iv.next285.1 to i32
  store i32 %i.dv, ptr %i.du, align 4, !tbaa !13
  %i.dw = add nsw i32 %.1.1, 1
  br label %.lr.ph235

.lr.ph235:                                        ; preds = %.epil.preheader331, %bb.g, %.lr.ph235.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %.lr.ph235.unr-lcssa ], [ %i.dw, %bb.g ], [ %.1.1, %.epil.preheader331 ]
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv305
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !34 ; 3 uses
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !36
  %i.ea = sext i32 %.1.lcssa to i64
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.ea
  store i32 -1, ptr %i.eb, align 4, !tbaa !13
  %i.ec = sext i32 %.2169.lcssa to i64            ; 5 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !18 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dy, i64 8 ; 3 uses
  br label %.lr.ph235.new

.lr.ph235.new:                                    ; preds = %bb.k, %.lr.ph235
  %indvars.iv289 = phi i64 [ 0, %.lr.ph235 ], [ %indvars.iv.next290.1, %bb.k ] ; 4 uses
  %.2233 = phi i32 [ 0, %.lr.ph235 ], [ %.3.1, %bb.k ] ; 3 uses
  %niter346 = phi i64 [ 0, %.lr.ph235 ], [ %niter346.next.1, %bb.k ]
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv289
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !14
  %i.ei = icmp sgt i8 %i.eh, 0
  br i1 %i.ei, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph235.new
  %i.ej = load ptr, ptr %i.ef, align 8, !tbaa !36
  %i.ek = sext i32 %.2233 to i64
  %i.el = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.ek
  %i.em = trunc nuw nsw i64 %indvars.iv289 to i32
  store i32 %i.em, ptr %i.el, align 4, !tbaa !13
  %i.en = add nsw i32 %.2233, 1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph235.new, %bb.h
  %.3 = phi i32 [ %i.en, %bb.h ], [ %.2233, %.lr.ph235.new ] ; 3 uses
  %indvars.iv.next290 = or disjoint i64 %indvars.iv289, 1 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv.next290
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !14
  %i.eq = icmp sgt i8 %i.ep, 0
  br i1 %i.eq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.er = load ptr, ptr %i.ef, align 8, !tbaa !36
  %i.es = sext i32 %.3 to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %i.er, i64 %i.es
  %i.eu = trunc nuw nsw i64 %indvars.iv.next290 to i32
  store i32 %i.eu, ptr %i.et, align 4, !tbaa !13
  %i.ev = add nsw i32 %.3, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.3.1 = phi i32 [ %i.ev, %bb.j ], [ %.3, %bb.i ] ; 5 uses
  %indvars.iv.next290.1 = add nuw nsw i64 %indvars.iv289, 2 ; 3 uses
  %niter346.next.1 = add i64 %niter346, 2         ; 2 uses
  %niter346.ncmp.1 = icmp eq i64 %niter346.next.1, %unroll_iter345
  br i1 %niter346.ncmp.1, label %.lr.ph240.unr-lcssa, label %.lr.ph235.new, !llvm.loop !293

.lr.ph240.unr-lcssa:                              ; preds = %bb.k
  br i1 %lcmp.mod342.not, label %.lr.ph240, label %.epil.preheader339

.epil.preheader339:                               ; preds = %.lr.ph240.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod344)
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ee, i64 %indvars.iv.next290.1
  %i.ex = load i8, ptr %i.ew, align 1, !tbaa !14
  %i.ey = icmp sgt i8 %i.ex, 0
  br i1 %i.ey, label %bb.l, label %.lr.ph240

bb.l:                                             ; preds = %.epil.preheader339
  %i.ez = load ptr, ptr %i.ef, align 8, !tbaa !36
  %i.fa = sext i32 %.3.1 to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ez, i64 %i.fa
  %i.fc = trunc nuw nsw i64 %indvars.iv.next290.1 to i32
  store i32 %i.fc, ptr %i.fb, align 4, !tbaa !13
  %i.fd = add nsw i32 %.3.1, 1
  br label %.lr.ph240

.lr.ph240:                                        ; preds = %.epil.preheader339, %bb.l, %.lr.ph240.unr-lcssa
  %.3.lcssa = phi i32 [ %.3.1, %.lr.ph240.unr-lcssa ], [ %i.fd, %bb.l ], [ %.3.1, %.epil.preheader339 ]
  %.phi.trans.insert = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ec
  %.pre310 = load double, ptr %.phi.trans.insert, align 8, !tbaa !26
  %i.fe = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !36
  %i.fg = sext i32 %.3.lcssa to i64
  %i.fh = getelementptr inbounds [4 x i8], ptr %i.ff, i64 %i.fg
  store i32 -1, ptr %i.fh, align 4, !tbaa !13
  %i.fi = fpext float %.2175.lcssa to double
  %i.fj = fmul double %i.fi, 5.000000e-01         ; 3 uses
  %i.fk = sext i32 %.2172.lcssa to i64            ; 3 uses
  %i.fl = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.fk ; 2 uses
  %i.fm = load double, ptr %i.fl, align 8, !tbaa !26
  %i.fn = fsub double %i.fj, %i.fm
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv305
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !28 ; 2 uses
  store double %i.fn, ptr %i.fp, align 8, !tbaa !26
  %i.fq = fsub double %i.fj, %.pre310
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 8
  store double %i.fq, ptr %i.fr, align 8, !tbaa !26
  store double %i.fj, ptr %i.fl, align 8, !tbaa !26
  %i.fs = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ec ; 3 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.fk ; 3 uses
  br label %.lr.ph240.new

.lr.ph242.unr-lcssa:                              ; preds = %.lr.ph240.new
  br i1 %lcmp.mod350.not, label %.lr.ph242, label %.epil.preheader347

.epil.preheader347:                               ; preds = %.lr.ph242.unr-lcssa
  tail call void @llvm.assume(i1 %lcmp.mod351)
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !18
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 %indvars.iv.next295.1
  %i.fw = load i8, ptr %i.fv, align 1, !tbaa !14
  %i.fx = icmp sgt i8 %i.fw, 0
  %i.fy = zext i1 %i.fx to i8
  %i.fz = load ptr, ptr %i.ft, align 8, !tbaa !18
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 %indvars.iv.next295.1 ; 2 uses
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !14
  %i.gc = add i8 %i.gb, %i.fy
  store i8 %i.gc, ptr %i.ga, align 1, !tbaa !14
  br label %.lr.ph242

.lr.ph242:                                        ; preds = %.lr.ph242.unr-lcssa, %.epil.preheader347
  %i.gd = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.ec ; 5 uses
  br i1 %i.bh, label %.epil.preheader354, label %.lr.ph242.new

.lr.ph240.new:                                    ; preds = %.lr.ph240.new, %.lr.ph240
  %indvars.iv294 = phi i64 [ 0, %.lr.ph240 ], [ %indvars.iv.next295.1, %.lr.ph240.new ] ; 4 uses
  %niter353 = phi i64 [ 0, %.lr.ph240 ], [ %niter353.next.1, %.lr.ph240.new ]
  %i.ge = load ptr, ptr %i.fs, align 8, !tbaa !18
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %indvars.iv294
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !14
  %i.gh = icmp sgt i8 %i.gg, 0
  %i.gi = zext i1 %i.gh to i8
  %i.gj = load ptr, ptr %i.ft, align 8, !tbaa !18
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 %indvars.iv294 ; 2 uses
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !14
  %i.gm = add i8 %i.gl, %i.gi
  store i8 %i.gm, ptr %i.gk, align 1, !tbaa !14
  %indvars.iv.next295 = or disjoint i64 %indvars.iv294, 1 ; 2 uses
  %i.gn = load ptr, ptr %i.fs, align 8, !tbaa !18
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 %indvars.iv.next295
  %i.gp = load i8, ptr %i.go, align 1, !tbaa !14
  %i.gq = icmp sgt i8 %i.gp, 0
  %i.gr = zext i1 %i.gq to i8
  %i.gs = load ptr, ptr %i.ft, align 8, !tbaa !18
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 %indvars.iv.next295 ; 2 uses
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !14
  %i.gv = add i8 %i.gu, %i.gr
  store i8 %i.gv, ptr %i.gt, align 1, !tbaa !14
  %indvars.iv.next295.1 = add nuw nsw i64 %indvars.iv294, 2 ; 3 uses
  %niter353.next.1 = add i64 %niter353, 2         ; 2 uses
  %niter353.ncmp.1 = icmp eq i64 %niter353.next.1, %unroll_iter352
  br i1 %niter353.ncmp.1, label %.lr.ph242.unr-lcssa, label %.lr.ph240.new, !llvm.loop !294

.lr.ph244.unr-lcssa:                              ; preds = %.lr.ph242.new
  br i1 %lcmp.mod357.not, label %.lr.ph244, label %.epil.preheader354

.epil.preheader354:                               ; preds = %.lr.ph244.unr-lcssa, %.lr.ph242
  %indvars.iv299.epil.init = phi i64 [ 0, %.lr.ph242 ], [ %indvars.iv.next300.3, %.lr.ph244.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod358)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader354
  %indvars.iv299.epil = phi i64 [ %indvars.iv299.epil.init, %.epil.preheader354 ], [ %indvars.iv.next300.epil, %bb.m ] ; 2 uses
  %epil.iter356 = phi i64 [ 0, %.epil.preheader354 ], [ %epil.iter356.next, %bb.m ]
  %i.gw = load ptr, ptr %i.gd, align 8, !tbaa !18
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 %indvars.iv299.epil
  store i8 0, ptr %i.gx, align 1, !tbaa !14
  %indvars.iv.next300.epil = add nuw nsw i64 %indvars.iv299.epil, 1
  %epil.iter356.next = add i64 %epil.iter356, 1   ; 2 uses
  %epil.iter356.cmp.not = icmp eq i64 %epil.iter356.next, %xtraiter355
  br i1 %epil.iter356.cmp.not, label %.lr.ph244, label %bb.m, !llvm.loop !295

.lr.ph244:                                        ; preds = %bb.m, %.lr.ph244.unr-lcssa
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.fk
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !28
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.ec
  br label %bb.n

.lr.ph242.new:                                    ; preds = %.lr.ph242, %.lr.ph242.new
  %indvars.iv299 = phi i64 [ %indvars.iv.next300.3, %.lr.ph242.new ], [ 0, %.lr.ph242 ] ; 5 uses
  %niter360 = phi i64 [ %niter360.next.3, %.lr.ph242.new ], [ 0, %.lr.ph242 ]
  %i.hb = load ptr, ptr %i.gd, align 8, !tbaa !18
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 %indvars.iv299
  store i8 0, ptr %i.hc, align 1, !tbaa !14
  %i.hd = load ptr, ptr %i.gd, align 8, !tbaa !18
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 %indvars.iv299
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 1
  store i8 0, ptr %i.hf, align 1, !tbaa !14
  %i.hg = load ptr, ptr %i.gd, align 8, !tbaa !18
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 %indvars.iv299
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 2
  store i8 0, ptr %i.hi, align 1, !tbaa !14
  %i.hj = load ptr, ptr %i.gd, align 8, !tbaa !18
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hj, i64 %indvars.iv299
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 3
  store i8 0, ptr %i.hl, align 1, !tbaa !14
  %indvars.iv.next300.3 = add nuw nsw i64 %indvars.iv299, 4 ; 2 uses
  %niter360.next.3 = add i64 %niter360, 4         ; 2 uses
  %niter360.ncmp.3 = icmp eq i64 %niter360.next.3, %unroll_iter359
  br i1 %niter360.ncmp.3, label %.lr.ph244.unr-lcssa, label %.lr.ph242.new, !llvm.loop !296

bb.n:                                             ; preds = %.lr.ph244, %bb.p
  %.9243 = phi i32 [ 0, %.lr.ph244 ], [ %i.id, %bb.p ] ; 7 uses
  %.not = icmp eq i32 %.9243, %.2172.lcssa
  %.not192 = icmp eq i32 %.9243, %.2169.lcssa
  %or.cond = select i1 %.not, i1 true, i1 %.not192
  br i1 %or.cond, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.hm = tail call i32 @llvm.smin.i32(i32 %.9243, i32 %.2172.lcssa)
  %i.hn = sext i32 %i.hm to i64
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.hn
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !28
  %i.hq = tail call i32 @llvm.smax.i32(i32 %.9243, i32 %.2172.lcssa)
  %i.hr = zext nneg i32 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.hr ; 2 uses
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !26 ; 2 uses
  %i.hu = tail call i32 @llvm.smin.i32(i32 %.9243, i32 %.2169.lcssa)
  %i.hv = sext i32 %i.hu to i64
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.hv
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !28
  %i.hy = tail call i32 @llvm.smax.i32(i32 %.9243, i32 %.2169.lcssa)
  %i.hz = zext nneg i32 %i.hy to i64
  %i.ia = getelementptr inbounds nuw [8 x i8], ptr %i.hx, i64 %i.hz ; 2 uses
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !26 ; 2 uses
  %i.ic = fcmp olt double %i.ht, %i.ib
  %. = select i1 %i.ic, double %i.ht, double %i.ib
  store double %., ptr %i.hs, align 8, !tbaa !26
  store double 9.999000e+03, ptr %i.ia, align 8, !tbaa !26
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  store double 9.999000e+03, ptr %i.ha, align 8, !tbaa !26
  %i.id = add nuw nsw i32 %.9243, 1               ; 2 uses
  %exitcond304.not = icmp eq i32 %i.id, %0
  br i1 %exitcond304.not, label %._crit_edge245, label %bb.n, !llvm.loop !297

._crit_edge245:                                   ; preds = %bb.p
  %indvars.iv.next306 = add nuw nsw i64 %indvars.iv305, 1 ; 2 uses
  %exitcond309.not = icmp eq i64 %indvars.iv.next306, %wide.trip.count308
  br i1 %exitcond309.not, label %._crit_edge247, label %.lr.ph223.preheader, !llvm.loop !298

._crit_edge247:                                   ; preds = %._crit_edge245, %bb.a, %.preheader196
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  ret void
}

declare ptr @AllocateDoubleMtx(i32 noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind memory(none) uwtable
define dso_local double @ipower(double noundef %0, i32 noundef %1) local_unnamed_addr #21 {
bb.a:
  %.not10 = icmp eq i32 %1, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.013 = phi double [ %.1, %.lr.ph ], [ 1.000000e+00, %bb.a ] ; 2 uses
  %.0712 = phi i32 [ %i.d, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %.0811 = phi double [ %i.c, %.lr.ph ], [ %0, %bb.a ] ; 3 uses
  %i.a = and i32 %.0712, 1
  %.not9 = icmp eq i32 %i.a, 0
  %i.b = fmul double %.0811, %.013
  %.1 = select i1 %.not9, double %.013, double %i.b ; 2 uses
  %i.c = fmul double %.0811, %.0811
  %i.d = ashr i32 %.0712, 1                       ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !3

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi double [ 1.000000e+00, %bb.a ], [ %.1, %.lr.ph ]
  ret double %.0.lcssa
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @countnode(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #2 {
bb.a:
  %i.a = add nsw i32 %0, -2
  %i.b = icmp slt i32 %0, 2
  br i1 %i.b, label %bb.b, label %.preheader89.preheader

.preheader89.preheader:                           ; preds = %bb.a
  %i.c = zext nneg i32 %0 to i64
  %i.d = shl nuw nsw i64 %i.c, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 16 @countnode.rootnode, i8 0, i64 %i.d, i1 false), !tbaa !26
  %.not = icmp eq i32 %0, 2
  br i1 %.not, label %.preheader83, label %.preheader87.preheader

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !20
  %i.f = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.e, ptr noundef nonnull @.str.27, i32 noundef %0) #31 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

.preheader87.preheader:                           ; preds = %.preheader89.preheader
  %wide.trip.count = zext nneg i32 %i.a to i64    ; 2 uses
  br label %.preheader87

.preheader87:                                     ; preds = %.preheader87.preheader, %._crit_edge101
  %indvars.iv124 = phi i64 [ 0, %.preheader87.preheader ], [ %indvars.iv.next125, %._crit_edge101 ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv124
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !34   ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 3 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !13   ; 3 uses
  %i.k = icmp sgt i32 %i.j, -1                    ; 2 uses
  br i1 %i.k, label %.lr.ph, label %.preheader86.thread

.preheader83:                                     ; preds = %._crit_edge101, %.preheader89.preheader
  %.pre-phi = phi i64 [ 0, %.preheader89.preheader ], [ %wide.trip.count, %._crit_edge101 ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.pre-phi
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !34   ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36   ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !13   ; 2 uses
  %i.p = icmp sgt i32 %i.o, -1
  br i1 %i.p, label %.preheader.lr.ph, label %._crit_edge106

.preheader.lr.ph:                                 ; preds = %.preheader83
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !36   ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !13   ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %.preheader.us, label %._crit_edge106

.preheader.us:                                    ; preds = %.preheader.lr.ph, %._crit_edge.us107
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %._crit_edge.us107 ], [ 0, %.preheader.lr.ph ]
  %i.u = phi i32 [ %i.ao, %._crit_edge.us107 ], [ %i.o, %.preheader.lr.ph ] ; 3 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr @countnode.rootnode, i64 %i.v
  %i.x = load double, ptr %i.w, align 8, !tbaa !26
  br label %bb.c

bb.c:                                             ; preds = %.preheader.us, %bb.c
  %indvars.iv130 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next131, %bb.c ]
  %i.y = phi i32 [ %i.s, %.preheader.us ], [ %i.al, %bb.c ] ; 3 uses
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @countnode.rootnode, i64 %i.z
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !26
  %i.ac = fadd double %i.x, %i.ab
  %i.ad = tail call i32 @llvm.smin.i32(i32 %i.u, i32 %i.y)
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ae
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28
  %i.ah = tail call i32 @llvm.smax.i32(i32 %i.u, i32 %i.y)
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.ai
  store double %i.ac, ptr %i.aj, align 8, !tbaa !26
  %indvars.iv.next131 = add nuw nsw i64 %indvars.iv130, 1 ; 2 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next131
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !13 ; 2 uses
  %i.am = icmp sgt i32 %i.al, -1
end_hunk_1
