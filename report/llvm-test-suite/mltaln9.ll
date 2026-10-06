Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/mltaln9?download=true
inline.NumInlined: 16
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 91
loop-unroll.NumUnrolled: 95
begin_hunk_0_@getgapfreq:bb.a
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %bb.e ], [ 0, %.lr.ph24 ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %bb.e ], [ 0, %.lr.ph24 ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv
  %i.m = load i8, ptr %i.l, align 1, !tbaa !14
  %i.n = icmp eq i8 %i.m, 45
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph24.new
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !24
  %i.q = fadd float %i.p, %i.i
  store float %i.q, ptr %i.o, align 4, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph24.new, %bb.b
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.next
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  %i.t = icmp eq i8 %i.s, 45
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !24
  %i.w = fadd float %i.v, %i.i
  store float %i.w, ptr %i.u, align 4, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %.lr.ph24.new, !llvm.loop !521

._crit_edge.unr-lcssa:                            ; preds = %bb.e
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph24
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph24 ], [ %indvars.iv.next.1, %._crit_edge.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod37)
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 %indvars.iv.epil.init
  %i.y = load i8, ptr %i.x, align 1, !tbaa !14
  %i.z = icmp eq i8 %i.y, 45
  br i1 %i.z, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %.epil.preheader
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !24
  %i.ac = fadd float %i.ab, %i.i
  store float %i.ac, ptr %i.aa, align 4, !tbaa !24
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.f, %._crit_edge.unr-lcssa
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %exitcond34.not = icmp eq i64 %indvars.iv.next31, %wide.trip.count33
  br i1 %exitcond34.not, label %._crit_edge27.split, label %.lr.ph24, !llvm.loop !522

._crit_edge27.split:                              ; preds = %._crit_edge, %bb.a, %.preheader
  %i.ad = sext i32 %4 to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ad
  store float 0.000000e+00, ptr %i.ae, align 4, !tbaa !24
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @st_getGapPattern(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #12 {
bb.a:
  %.not131 = icmp eq i32 %4, -1
  br i1 %.not131, label %.preheader129.thread, label %.lr.ph

.preheader129:                                    ; preds = %bb.c
  %i.a = icmp sgt i32 %1, 0
  br i1 %i.a, label %.lr.ph145, label %.preheader

.preheader129.thread:                             ; preds = %bb.a
  %i.b = icmp sgt i32 %1, 0
  br i1 %i.b, label %.lr.ph145.split.us, label %._crit_edge155

.lr.ph145:                                        ; preds = %.preheader129
  %.not113136 = icmp slt i32 %4, 0
  br i1 %.not113136, label %.lr.ph145.split.us, label %.lr.ph143.preheader

.lr.ph143.preheader:                              ; preds = %.lr.ph145
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph143

.lr.ph145.split.us:                               ; preds = %.preheader129.thread, %.lr.ph145
  store ptr null, ptr %0, align 8, !tbaa !530
  br label %._crit_edge155

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.c = phi i32 [ %i.f, %bb.c ], [ %4, %bb.a ]   ; 2 uses
  %.096132 = phi ptr [ %i.e, %bb.c ], [ %0, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.096132, align 8, !tbaa !530 ; 2 uses
  %.not119 = icmp eq ptr %i.d, null
  br i1 %.not119, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  tail call void @free(ptr noundef nonnull %i.d) #33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.096132, i64 8
  store ptr null, ptr %.096132, align 8, !tbaa !530
  %i.f = add nsw i32 %i.c, -1
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.preheader129, label %.lr.ph, !llvm.loop !523

.preheader:                                       ; preds = %._crit_edge, %.preheader129
  %.not110152 = icmp slt i32 %4, 0
  br i1 %.not110152, label %._crit_edge155, label %.lr.ph154.preheader

.lr.ph154.preheader:                              ; preds = %.preheader
  %i.g = add nuw i32 %4, 1
  %wide.trip.count171 = zext i32 %i.g to i64
  br label %.lr.ph154

.lr.ph143:                                        ; preds = %.lr.ph143.preheader, %._crit_edge
  %indvars.iv161 = phi i64 [ 0, %.lr.ph143.preheader ], [ %indvars.iv.next162, %._crit_edge ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv161
  %i.i = load double, ptr %i.h, align 8, !tbaa !26
  %i.j = fptrunc double %i.i to float
  store ptr null, ptr %0, align 8, !tbaa !530
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv161
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !18
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph143, %bb.k
  %.0141 = phi i32 [ 0, %.lr.ph143 ], [ %.1, %bb.k ] ; 5 uses
  %.094140 = phi ptr [ %i.l, %.lr.ph143 ], [ %.195121, %bb.k ] ; 3 uses
  %.197139 = phi ptr [ %0, %.lr.ph143 ], [ %i.ap, %bb.k ] ; 3 uses
  %.099138 = phi i1 [ false, %.lr.ph143 ], [ %i.ao, %bb.k ]
  %.1105137 = phi i32 [ 0, %.lr.ph143 ], [ %i.aq, %bb.k ] ; 3 uses
  %.not114 = icmp eq i32 %.1105137, %4
  br i1 %.not114, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %.094140, i64 1 ; 2 uses
  %i.n = load i8, ptr %.094140, align 1, !tbaa !14
  %i.o = icmp eq i8 %i.n, 45
  br i1 %i.o, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.p = add nsw i32 %.0141, 1
  br label %bb.k

.thread:                                          ; preds = %bb.d, %bb.e
  %.195122 = phi ptr [ %i.m, %bb.e ], [ %.094140, %bb.d ] ; 2 uses
  %i.q = icmp ne i32 %.0141, 0
  %or.cond = select i1 %.099138, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.g, label %bb.k

bb.g:                                             ; preds = %.thread
  %i.r = load ptr, ptr %.197139, align 8, !tbaa !530 ; 6 uses
  %.not115 = icmp eq ptr %i.r, null
  br i1 %.not115, label %.loopexit, label %.preheader127

.preheader127:                                    ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load i32, ptr %i.s, align 4, !tbaa !532  ; 2 uses
  %.not116133 = icmp eq i32 %i.t, -1
  br i1 %.not116133, label %.loopexit, label %.lr.ph135

.lr.ph135:                                        ; preds = %.preheader127, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 1, %.preheader127 ] ; 3 uses
  %i.u = phi i32 [ %i.x, %bb.h ], [ %i.t, %.preheader127 ]
  %i.v = icmp eq i32 %i.u, %.0141
  br i1 %i.v, label %.loopexit128.loopexit, label %bb.h

bb.h:                                             ; preds = %.lr.ph135
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv.next
  %i.x = load i32, ptr %i.w, align 4, !tbaa !532  ; 2 uses
  %.not116 = icmp eq i32 %i.x, -1
  br i1 %.not116, label %.loopexit.loopexit, label %.lr.ph135, !llvm.loop !524

.loopexit.loopexit:                               ; preds = %bb.h
  %i.y = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader127, %bb.g
  %.1101.ph = phi i32 [ 1, %bb.g ], [ 1, %.preheader127 ], [ %i.y, %.loopexit.loopexit ] ; 2 uses
  %i.z = add nuw nsw i32 %.1101.ph, 3
  %i.aa = zext nneg i32 %i.z to i64
  %i.ab = shl nuw nsw i64 %i.aa, 3
  %i.ac = tail call ptr @realloc(ptr noundef %i.r, i64 noundef %i.ab) #36 ; 4 uses
  store ptr %i.ac, ptr %.197139, align 8, !tbaa !530
  %.not117 = icmp eq ptr %i.ac, null
  br i1 %.not117, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.loopexit
  %i.ad = load ptr, ptr @stderr, align 8, !tbaa !20
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.34, i64 29, i64 1, ptr %i.ad) #30 ; 0 uses
  %i.ae = load ptr, ptr @stderr, align 8, !tbaa !20
  %fwrite118 = tail call i64 @fwrite(ptr nonnull @.str.35, i64 53, i64 1, ptr %i.ae) #30 ; 0 uses
  tail call void @exit(i32 noundef 1) #32
  unreachable

bb.j:                                             ; preds = %.loopexit
  %i.af = zext nneg i32 %.1101.ph to i64          ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.af ; 4 uses
  %5 = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  store float 0.000000e+00, ptr %5, align 4, !tbaa !533
  store i32 %.0141, ptr %i.ag, align 4, !tbaa !532
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i32 -1, ptr %i.ah, align 4, !tbaa !532
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 12
  store float 0.000000e+00, ptr %i.ai, align 4, !tbaa !533
  br label %.loopexit128

.loopexit128.loopexit:                            ; preds = %.lr.ph135
  %.phi.trans.insert = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %indvars.iv
  %.phi.trans.insert173 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 4
  %.pre = load float, ptr %.phi.trans.insert173, align 4, !tbaa !533
  br label %.loopexit128

.loopexit128:                                     ; preds = %.loopexit128.loopexit, %bb.j
  %.pre-phi = phi i64 [ %indvars.iv, %.loopexit128.loopexit ], [ %i.af, %bb.j ]
  %i.aj = phi float [ %.pre, %.loopexit128.loopexit ], [ 0.000000e+00, %bb.j ]
  %i.ak = phi ptr [ %i.r, %.loopexit128.loopexit ], [ %i.ac, %bb.j ]
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %.pre-phi
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.an = fadd float %i.aj, %i.j
  store float %i.an, ptr %i.am, align 4, !tbaa !533
  br label %bb.k

bb.k:                                             ; preds = %.thread, %.loopexit128, %bb.f
  %i.ao = phi i1 [ true, %bb.f ], [ false, %.loopexit128 ], [ false, %.thread ]
  %.195121 = phi ptr [ %i.m, %bb.f ], [ %.195122, %.loopexit128 ], [ %.195122, %.thread ]
  %.1 = phi i32 [ %i.p, %bb.f ], [ 0, %.loopexit128 ], [ %.0141, %.thread ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.197139, i64 8
  %i.aq = add nuw i32 %.1105137, 1
  %exitcond.not = icmp eq i32 %.1105137, %4
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !525

._crit_edge:                                      ; preds = %bb.k
  %indvars.iv.next162 = add nuw nsw i64 %indvars.iv161, 1 ; 2 uses
  %exitcond164.not = icmp eq i64 %indvars.iv.next162, %wide.trip.count
  br i1 %exitcond164.not, label %.preheader, label %.lr.ph143, !llvm.loop !526

.lr.ph154:                                        ; preds = %.lr.ph154.preheader, %bb.n
  %indvars.iv168 = phi i64 [ 0, %.lr.ph154.preheader ], [ %indvars.iv.next169, %bb.n ] ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv168 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !530 ; 5 uses
  %.not111 = icmp eq ptr %i.as, null
  br i1 %.not111, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph154
  store i32 0, ptr %i.as, align 4, !tbaa !532
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4 ; 2 uses
  store float 0.000000e+00, ptr %i.at, align 4, !tbaa !533
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8 ; 3 uses
  %i.av = load i32, ptr %i.au, align 4, !tbaa !532
  %.not112146 = icmp eq i32 %i.av, -1
  br i1 %.not112146, label %._crit_edge150, label %.lr.ph149

.lr.ph149:                                        ; preds = %bb.l, %.lr.ph149
  %indvars.iv165 = phi i64 [ %indvars.iv.next166, %.lr.ph149 ], [ 1, %bb.l ]
  %i.aw = phi float [ %i.ba, %.lr.ph149 ], [ 0.000000e+00, %bb.l ]
  %i.ax = phi ptr [ %i.bb, %.lr.ph149 ], [ %i.au, %bb.l ]
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %i.az = load float, ptr %i.ay, align 4, !tbaa !533
  %i.ba = fadd float %i.az, %i.aw                 ; 3 uses
  store float %i.ba, ptr %i.at, align 4, !tbaa !533
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.next166 ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !532
  %.not112 = icmp eq i32 %i.bc, -1
  br i1 %.not112, label %._crit_edge150, label %.lr.ph149, !llvm.loop !527

._crit_edge150:                                   ; preds = %.lr.ph149, %bb.l
  %i.bd = phi float [ 0.000000e+00, %bb.l ], [ %i.ba, %.lr.ph149 ]
  %.lcssa = phi ptr [ %i.au, %bb.l ], [ %i.bb, %.lr.ph149 ] ; 3 uses
  %i.be = fsub float 1.000000e+00, %i.bd
  %i.bf = getelementptr inbounds nuw i8, ptr %.lcssa, i64 4
  store float %i.be, ptr %i.bf, align 4, !tbaa !533
  store i32 0, ptr %.lcssa, align 4, !tbaa !532
  %i.bg = getelementptr inbounds nuw i8, ptr %.lcssa, i64 8
  store i32 -1, ptr %i.bg, align 4, !tbaa !532
  br label %bb.n

bb.m:                                             ; preds = %.lr.ph154
  %i.bh = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 3, i64 noundef 8) #37 ; 6 uses
  store ptr %i.bh, ptr %i.ar, align 8, !tbaa !530
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store float 0.000000e+00, ptr %i.bi, align 4, !tbaa !533
  store i32 0, ptr %i.bh, align 4, !tbaa !532
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 12
  store float 1.000000e+00, ptr %i.bj, align 4, !tbaa !533
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i32 0, ptr %i.bk, align 4, !tbaa !532
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i32 -1, ptr %i.bl, align 4, !tbaa !532
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge150, %bb.m
  %indvars.iv.next169 = add nuw nsw i64 %indvars.iv168, 1 ; 2 uses
  %exitcond172.not = icmp eq i64 %indvars.iv.next169, %wide.trip.count171
  br i1 %exitcond172.not, label %._crit_edge155, label %.lr.ph154, !llvm.loop !528

._crit_edge155:                                   ; preds = %bb.n, %.lr.ph145.split.us, %.preheader129.thread, %.preheader
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local float @naiveRpairscore(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  %i.b = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.us.preheader, label %._crit_edge153

.preheader.us.preheader:                          ; preds = %bb.a
  %wide.trip.count160 = zext nneg i32 %0 to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  %i.c = sitofp i32 %6 to double
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv157 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next158, %._crit_edge.us ] ; 3 uses
  %.084152.us = phi float [ 0.000000e+00, %.preheader.us.preheader ], [ %i.ay, %._crit_edge.us ]
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %indvars.iv157
  %i.e = load double, ptr %i.d, align 8, !tbaa !26
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv157
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18   ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !14    ; 3 uses
  %i.i = icmp eq i8 %i.h, 45
  %i.j = sext i8 %i.h to i64
  %i.k = getelementptr inbounds [512 x i8], ptr @amino_dis, i64 %i.j
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.n
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %.185150.us = phi float [ %.084152.us, %.preheader.us ], [ %i.ay, %bb.n ]
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %indvars.iv
  %i.m = load double, ptr %i.l, align 8, !tbaa !26
  %i.n = fmul double %i.e, %i.m
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18   ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14    ; 3 uses
  %.not.us = icmp eq i8 %i.q, 45
  %i.r = xor i1 %.not.us, %i.i
  %i.s = sext i8 %i.q to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !13
  %i.v = sitofp i32 %i.u to float
  %i.w = fpext float %i.v to double
  %i.x = select i1 %i.r, double %i.c, double 0.000000e+00
  %i.y = tail call double @llvm.fmuladd.f64(double %i.x, double 5.000000e-01, double %i.w)
  %i.z = fadd double %i.y, 0.000000e+00
  br label %bb.c

bb.c:                                             ; preds = %.thread136.us, %bb.b
  %.pr.us = phi i8 [ %i.q, %bb.b ], [ %i.aj, %.thread136.us ] ; 2 uses
  %i.aa = phi i8 [ %i.h, %bb.b ], [ %i.ak, %.thread136.us ]
  %.083.in.us = phi double [ %i.z, %bb.b ], [ %i.au, %.thread136.us ]
  %.pn.us = phi ptr [ %i.g, %bb.b ], [ %.081.us, %.thread136.us ]
  %.pn105.us = phi ptr [ %i.p, %bb.b ], [ %.080.us, %.thread136.us ]
  %.080.us = getelementptr i8, ptr %.pn105.us, i64 1 ; 3 uses
  %.081.us = getelementptr i8, ptr %.pn.us, i64 1 ; 3 uses
  %.083.us = fptrunc double %.083.in.us to float  ; 2 uses
  switch i8 %i.aa, label %bb.i [
    i8 0, label %bb.n
    i8 45, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.ab = icmp eq i8 %.pr.us, 45
  %.pre162 = load i8, ptr %.081.us, align 1, !tbaa !14 ; 3 uses
  %i.ac = icmp eq i8 %.pre162, 45                 ; 2 uses
  %i.ad = load i8, ptr %.080.us, align 1, !tbaa !14 ; 5 uses
  %.not95.us = icmp eq i8 %i.ad, 45               ; 4 uses
  br i1 %i.ab, label %bb.e, label %.thread140.us

bb.e:                                             ; preds = %bb.d
  br i1 %i.ac, label %.thread122.us, label %bb.f

bb.f:                                             ; preds = %bb.e
  %spec.select110.us = select i1 %.not95.us, i32 %6, i32 0
  br label %.thread136.us

.thread122.us:                                    ; preds = %bb.e
  %spec.select109.us = select i1 %.not95.us, i32 0, i32 %6
  br label %.thread136.us

.thread140.us:                                    ; preds = %bb.d
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.thread140.us
  %i.ae = zext i1 %.not95.us to i32
  %spec.select115.us = shl nsw i32 %6, %i.ae
  br label %.thread136.us

bb.h:                                             ; preds = %.thread140.us
  %spec.select116.us = select i1 %.not95.us, i32 %6, i32 0
  br label %.thread136.us

bb.i:                                             ; preds = %bb.c
  %.not92.us = icmp eq i8 %.pr.us, 45
  %.pre163 = load i8, ptr %.081.us, align 1, !tbaa !14 ; 3 uses
  %i.af = icmp eq i8 %.pre163, 45                 ; 2 uses
  %i.ag = load i8, ptr %.080.us, align 1, !tbaa !14 ; 7 uses
  br i1 %.not92.us, label %.thread127.us, label %bb.j
end_hunk_0
