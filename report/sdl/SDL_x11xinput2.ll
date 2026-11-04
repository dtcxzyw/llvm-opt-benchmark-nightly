Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_x11xinput2?download=true
inline.NumInlined: 30
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@xinput2_get_device_info:bb.a
  %.095126.lcssa = phi ptr [ %.095123, %.lr.ph.preheader ], [ %.095, %.lr.ph ] ; 4 uses
  %.096125.lcssa = phi ptr [ null, %.lr.ph.preheader ], [ %.095126149, %.lr.ph ] ; 2 uses
  %.not106 = icmp eq ptr %.096125.lcssa, null
  br i1 %.not106, label %bb.s, label %bb.b

bb.b:                                             ; preds = %.lr.ph._crit_edge
  %i.g = getelementptr inbounds nuw i8, ptr %.095126.lcssa, i64 64 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.096125.lcssa, i64 64
  store ptr %i.h, ptr %i.i, align 8
  %i.j = load ptr, ptr %i.b, align 8
  store ptr %i.j, ptr %i.g, align 8
  store ptr %.095126.lcssa, ptr %i.b, align 8
  br label %bb.s

.lr.ph150:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %.095126149 = phi ptr [ %.095, %.lr.ph ], [ %.095123, %.lr.ph.preheader ] ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.095126149, i64 64
  %.095 = load ptr, ptr %i.k, align 8             ; 4 uses
  %.not = icmp eq ptr %.095, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !22

._crit_edge:                                      ; preds = %.lr.ph150, %bb.a
  %i.l = tail call noalias dereferenceable_or_null(72) ptr @SDL_calloc_REAL(i64 noundef 1, i64 noundef 72) #10 ; 14 uses
  %.not104 = icmp eq ptr %i.l, null
  br i1 %.not104, label %bb.s, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %i.m = load ptr, ptr @X11_XIQueryDevice, align 8
  %i.n = load ptr, ptr %0, align 8
  %i.o = call ptr %i.m(ptr noundef %i.n, i32 noundef %1, ptr noundef nonnull %i.a) #9 ; 4 uses
  %.not105 = icmp eq ptr %i.o, null
  br i1 %.not105, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @SDL_free_REAL(ptr noundef nonnull %i.l) #9
  br label %bb.s

bb.e:                                             ; preds = %bb.c
  store i32 %1, ptr %i.l, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 28
  store i32 0, ptr %i.a, align 4
  %i.q = load i32, ptr %i.p, align 4              ; 2 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph135, label %._crit_edge136

.lr.ph135:                                        ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.t = load i64, ptr @xinput2_rel_x_atom, align 8 ; 2 uses
  %i.u = load i64, ptr @xinput2_abs_x_atom, align 8 ; 2 uses
  %i.v = load i64, ptr @xinput2_rel_y_atom, align 8 ; 2 uses
  %i.w = load i64, ptr @xinput2_abs_y_atom, align 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.l, i64 13
  %i.z = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.l, i64 12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.pre = load ptr, ptr %i.s, align 8
  %i.af = zext nneg i32 %i.q to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph135, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph135 ], [ %indvars.iv.next, %bb.r ] ; 2 uses
  %.0132 = phi i32 [ 0, %.lr.ph135 ], [ %.2.ph, %bb.r ] ; 4 uses
  %.079131 = phi i1 [ false, %.lr.ph135 ], [ %.3.ph, %bb.r ] ; 7 uses
  %.082130 = phi i1 [ false, %.lr.ph135 ], [ %.385.ph, %bb.r ] ; 7 uses
  %.086129 = phi i8 [ 0, %.lr.ph135 ], [ %.389.ph, %bb.r ] ; 6 uses
  %.090128 = phi i8 [ 0, %.lr.ph135 ], [ %.393.ph, %bb.r ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.pre, i64 %indvars.iv
  %i.ah = load ptr, ptr %i.ag, align 8            ; 10 uses
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = icmp eq i32 %i.ai, 2
  br i1 %i.aj, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 16 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8            ; 4 uses
  %i.am = icmp eq i64 %i.al, %i.t
  br i1 %i.am, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.an = icmp ne i64 %i.al, %i.u
  %i.ao = trunc nuw i8 %.090128 to i1             ; 2 uses
  %or.cond = select i1 %i.an, i1 true, i1 %i.ao
  br i1 %or.cond, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ap = icmp ne i32 %.0132, 0
  %or.cond3 = select i1 %i.ap, i1 true, i1 %i.ao
  %or.cond5 = select i1 %or.cond3, i1 true, i1 %.082130
  br i1 %or.cond5, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ar = load i32, ptr %i.aq, align 8
  store i32 %i.ar, ptr %i.ab, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 52
  %i.at = load i32, ptr %i.as, align 4
  %i.au = icmp eq i32 %i.at, 0
  %i.av = zext i1 %i.au to i8
  store i8 %i.av, ptr %i.ac, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.ax = load double, ptr %i.aw, align 8
  store double %i.ax, ptr %i.ad, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.az = load double, ptr %i.ay, align 8
  store double %i.az, ptr %i.ae, align 8
  %i.ba = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.bb = icmp eq i64 %i.ba, %i.t
  br i1 %i.bb, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bc = icmp eq i64 %i.ba, %i.u
  %spec.select = select i1 %i.bc, i1 true, i1 %.082130
  br label %bb.q

bb.l:                                             ; preds = %bb.i
  %i.bd = icmp eq i64 %i.al, %i.v
  br i1 %i.bd, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.be = icmp ne i64 %i.al, %i.w
  %i.bf = trunc nuw i8 %.086129 to i1             ; 2 uses
  %or.cond7 = select i1 %i.be, i1 true, i1 %i.bf
  br i1 %or.cond7, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bg = icmp ne i32 %.0132, 1
  %or.cond9 = select i1 %i.bg, i1 true, i1 %i.bf
  %or.cond11 = select i1 %or.cond9, i1 true, i1 %.079131
  br i1 %or.cond11, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.bi = load i32, ptr %i.bh, align 8
  store i32 %i.bi, ptr %i.x, align 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ah, i64 52
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = icmp eq i32 %i.bk, 0
  %i.bm = zext i1 %i.bl to i8
  store i8 %i.bm, ptr %i.y, align 1
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.bo = load double, ptr %i.bn, align 8
  store double %i.bo, ptr %i.z, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ah, i64 32
  %i.bq = load double, ptr %i.bp, align 8
  store double %i.bq, ptr %i.aa, align 8
  %i.br = load i64, ptr %i.ak, align 8            ; 2 uses
  %i.bs = icmp eq i64 %i.br, %i.v
  br i1 %i.bs, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = icmp eq i64 %i.br, %i.w
  %spec.select107 = select i1 %i.bt, i1 true, i1 %.079131
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.k, %bb.o, %bb.j, %bb.n
  %.191 = phi i8 [ %.090128, %bb.n ], [ 1, %bb.j ], [ %.090128, %bb.p ], [ %.090128, %bb.k ], [ %.090128, %bb.o ] ; 2 uses
  %.187 = phi i8 [ %.086129, %bb.n ], [ %.086129, %bb.j ], [ %.086129, %bb.p ], [ %.086129, %bb.k ], [ 1, %bb.o ] ; 2 uses
  %.183 = phi i1 [ %.082130, %bb.n ], [ %.082130, %bb.j ], [ %.082130, %bb.p ], [ %spec.select, %bb.k ], [ %.082130, %bb.o ]
  %.180 = phi i1 [ %.079131, %bb.n ], [ %.079131, %bb.j ], [ %spec.select107, %bb.p ], [ %.079131, %bb.k ], [ %.079131, %bb.o ]
  %i.bu = trunc nuw i8 %.191 to i1
  %i.bv = trunc nuw i8 %.187 to i1
  %or.cond13 = select i1 %i.bu, i1 %i.bv, i1 false
  %i.bw = add nsw i32 %.0132, 1
  br i1 %or.cond13, label %._crit_edge136, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.f
  %.393.ph = phi i8 [ %.090128, %bb.f ], [ %.191, %bb.q ]
  %.389.ph = phi i8 [ %.086129, %bb.f ], [ %.187, %bb.q ]
  %.385.ph = phi i1 [ %.082130, %bb.f ], [ %.183, %bb.q ]
  %.3.ph = phi i1 [ %.079131, %bb.f ], [ %.180, %bb.q ]
  %.2.ph = phi i32 [ %.0132, %bb.f ], [ %i.bw, %bb.q ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.bx = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.bx, ptr %i.a, align 4
  %i.by = icmp samesign ult i64 %indvars.iv.next, %i.af
  br i1 %i.by, label %bb.f, label %._crit_edge136, !llvm.loop !23

._crit_edge136:                                   ; preds = %bb.r, %bb.q, %bb.e
  %i.bz = load ptr, ptr @X11_XIFreeDeviceInfo, align 8
  call void %i.bz(ptr noundef nonnull %i.o) #9
  %i.ca = load ptr, ptr %i.b, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  store ptr %i.ca, ptr %i.cb, align 8
  store ptr %i.l, ptr %i.b, align 8
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %.lr.ph._crit_edge, %bb.b, %._crit_edge136, %bb.d
  %.097 = phi ptr [ %.095126.lcssa, %.lr.ph._crit_edge ], [ %i.l, %._crit_edge136 ], [ null, %bb.d ], [ %.095126.lcssa, %bb.b ], [ null, %._crit_edge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret ptr %.097
}

; Function Attrs: nounwind uwtable
define internal fastcc void @parse_relative_valuators(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @SDL_GetMouse() #9         ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8              ; 7 uses
  %i.f = icmp sgt i32 %i.e, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.thread:                                          ; preds = %bb.a
  br i1 %i.f, label %.lr.ph.thread, label %._crit_edge

.lr.ph.thread:                                    ; preds = %.thread
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 48
  br label %.lr.ph.split.us.preheader

.lr.ph:                                           ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  %i.j = load i8, ptr %i.i, align 8, !range !3, !noundef !4
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br i1 %i.k, label %.lr.ph.split.preheader, label %.lr.ph.split.us.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph.thread, %.lr.ph
  %6 = phi ptr [ %3, %.lr.ph.thread ], [ %i.p, %.lr.ph ] ; 2 uses
  %7 = phi ptr [ %2, %.lr.ph.thread ], [ %i.o, %.lr.ph ]
  %i.r = phi ptr [ %i.h, %.lr.ph.thread ], [ %i.m, %.lr.ph ]
  %i.s = phi ptr [ %i.g, %.lr.ph.thread ], [ %i.l, %.lr.ph ]
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.g
  %.pre75.pre86 = phi i32 [ %i.e, %.lr.ph.split.us.preheader ], [ %.pre75.pre87, %bb.g ] ; 4 uses
  %.pre62.pre77 = phi i32 [ %i.e, %.lr.ph.split.us.preheader ], [ %.pre62.pre78, %bb.g ] ; 2 uses
  %.pre6270 = phi i32 [ %i.e, %.lr.ph.split.us.preheader ], [ %.pre6271, %bb.g ]
  %.sroa.0.0 = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %.sroa.0.3, %bb.g ] ; 4 uses
  %.sroa.8.0 = phi double [ 0.000000e+00, %.lr.ph.split.us.preheader ], [ %.sroa.8.3, %bb.g ] ; 4 uses
  %i.x = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %i.as, %bb.g ] ; 5 uses
  %.03545.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %.2.us, %bb.g ] ; 3 uses
  %.03644.us = phi i32 [ 0, %.lr.ph.split.us.preheader ], [ %.138.us, %bb.g ] ; 4 uses
  %8 = load ptr, ptr %i.s, align 8
  %i.y = lshr i32 %i.x, 3
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1
  %i.ac = zext i8 %i.ab to i32
  %i.ad = and i32 %i.x, 7
  %i.ae = shl nuw nsw i32 1, %i.ad
  %i.af = and i32 %i.ae, %i.ac
  %.not40.us = icmp eq i32 %i.af, 0
  br i1 %.not40.us, label %bb.g, label %.preheader.us.preheader

.preheader.us.preheader:                          ; preds = %.lr.ph.split.us
  %i.ag = load i32, ptr %i.r, align 4
  %i.ah = icmp eq i32 %i.ag, %i.x
  br i1 %i.ah, label %bb.c, label %.preheader.us.1

.preheader.us.1:                                  ; preds = %.preheader.us.preheader
  %i.ai = load i32, ptr %i.u, align 4
  %i.aj = icmp eq i32 %i.ai, %i.x
  br i1 %i.aj, label %bb.d, label %.loopexit.us

bb.c:                                             ; preds = %.preheader.us.preheader
  %i.ak = load ptr, ptr %i.t, align 8
  %i.al = sext i32 %.03644.us to i64
  %i.am = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.al
  %i.an = load double, ptr %i.am, align 8         ; 3 uses
  %i.ao = load i8, ptr %7, align 1, !range !3, !noundef !4
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.f, label %.else68

bb.d:                                             ; preds = %.preheader.us.1
  %9 = load ptr, ptr %i.t, align 8
  %10 = sext i32 %.03644.us to i64
  %11 = getelementptr inbounds [8 x i8], ptr %9, i64 %10
  %12 = load double, ptr %11, align 8             ; 3 uses
  %13 = load i8, ptr %i.v, align 1, !range !3, !noundef !4
  %14 = trunc nuw i8 %13 to i1
  br i1 %14, label %bb.f, label %.then67

.then67:                                          ; preds = %bb.d
  %15 = load double, ptr %i.w, align 8
  %16 = fsub double %12, %15
  br label %bb.e

.else68:                                          ; preds = %bb.c
  %17 = load double, ptr %6, align 8
  %18 = fsub double %i.an, %17
  br label %bb.e

bb.e:                                             ; preds = %.else68, %.then67
  %19 = phi ptr [ %i.w, %.then67 ], [ %6, %.else68 ]
  %20 = phi double [ %12, %.then67 ], [ %i.an, %.else68 ]
  %.sroa.0.10 = phi double [ %.sroa.0.0, %.then67 ], [ %18, %.else68 ]
  %.sroa.8.10 = phi double [ %16, %.then67 ], [ %.sroa.8.0, %.else68 ]
  store double %20, ptr %19, align 8
  %.pre75.pre.pre = load i32, ptr %i.d, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.e
  %.pre75.pre = phi i32 [ %.pre75.pre.pre, %bb.e ], [ %.pre75.pre86, %bb.c ], [ %.pre75.pre86, %bb.d ] ; 2 uses
  %.sroa.0.1 = phi double [ %.sroa.0.10, %bb.e ], [ %i.an, %bb.c ], [ %.sroa.0.0, %bb.d ]
  %.sroa.8.1 = phi double [ %.sroa.8.10, %bb.e ], [ %.sroa.8.0, %bb.c ], [ %12, %bb.d ]
  %i.aq = add nuw nsw i32 %.03545.us, 1
  br label %.loopexit.us

.loopexit.us:                                     ; preds = %.preheader.us.1, %bb.f
  %.pre62.pre79 = phi i32 [ %.pre75.pre, %bb.f ], [ %.pre75.pre86, %.preheader.us.1 ]
  %.pre62 = phi i32 [ %.pre75.pre, %bb.f ], [ %.pre62.pre77, %.preheader.us.1 ] ; 2 uses
  %.sroa.0.2 = phi double [ %.sroa.0.1, %bb.f ], [ %.sroa.0.0, %.preheader.us.1 ]
  %.sroa.8.2 = phi double [ %.sroa.8.1, %bb.f ], [ %.sroa.8.0, %.preheader.us.1 ]
  %.1.us = phi i32 [ %i.aq, %bb.f ], [ %.03545.us, %.preheader.us.1 ]
  %i.ar = add nsw i32 %.03644.us, 1
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.us, %.lr.ph.split.us
  %.pre75.pre87 = phi i32 [ %.pre75.pre86, %.lr.ph.split.us ], [ %.pre62.pre79, %.loopexit.us ]
  %.pre62.pre78 = phi i32 [ %.pre62.pre77, %.lr.ph.split.us ], [ %.pre62, %.loopexit.us ]
  %.pre6271 = phi i32 [ %.pre6270, %.lr.ph.split.us ], [ %.pre62, %.loopexit.us ] ; 2 uses
  %.sroa.0.3 = phi double [ %.sroa.0.0, %.lr.ph.split.us ], [ %.sroa.0.2, %.loopexit.us ] ; 2 uses
  %.sroa.8.3 = phi double [ %.sroa.8.0, %.lr.ph.split.us ], [ %.sroa.8.2, %.loopexit.us ] ; 2 uses
  %.138.us = phi i32 [ %.03644.us, %.lr.ph.split.us ], [ %i.ar, %.loopexit.us ]
  %.2.us = phi i32 [ %.03545.us, %.lr.ph.split.us ], [ %.1.us, %.loopexit.us ] ; 2 uses
  %i.as = add nuw nsw i32 %i.x, 1                 ; 2 uses
  %i.at = shl nsw i32 %.pre6271, 3
  %i.au = icmp slt i32 %i.as, %i.at
  %i.av = icmp slt i32 %.2.us, 2
  %i.aw = select i1 %i.au, i1 %i.av, i1 false
  br i1 %i.aw, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !24

._crit_edge:                                      ; preds = %bb.g, %bb.l, %.thread, %bb.b
  %.sroa.0.4 = phi double [ 0.000000e+00, %.thread ], [ %.sroa.0.8, %bb.l ], [ 0.000000e+00, %bb.b ], [ %.sroa.0.3, %bb.g ]
  %.sroa.8.4 = phi double [ 0.000000e+00, %.thread ], [ %.sroa.8.8, %bb.l ], [ 0.000000e+00, %bb.b ], [ %.sroa.8.3, %bb.g ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 193
  %i.ay = load i8, ptr %i.ax, align 1, !range !3, !noundef !4
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.m, label %bb.o

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.l
  %.pre.pre82 = phi i32 [ %i.e, %.lr.ph.split.preheader ], [ %.pre.pre83, %bb.l ] ; 4 uses
  %.pre.pre73 = phi i32 [ %i.e, %.lr.ph.split.preheader ], [ %.pre.pre74, %bb.l ] ; 2 uses
  %.pre65 = phi i32 [ %i.e, %.lr.ph.split.preheader ], [ %.pre66, %bb.l ]
  %.sroa.0.5 = phi double [ 0.000000e+00, %.lr.ph.split.preheader ], [ %.sroa.0.8, %bb.l ] ; 4 uses
  %.sroa.8.5 = phi double [ 0.000000e+00, %.lr.ph.split.preheader ], [ %.sroa.8.8, %bb.l ] ; 4 uses
  %i.ba = phi i32 [ 0, %.lr.ph.split.preheader ], [ %i.bv, %bb.l ] ; 5 uses
  %.03545 = phi i32 [ 0, %.lr.ph.split.preheader ], [ %.2, %bb.l ] ; 3 uses
  %.03644 = phi i32 [ 0, %.lr.ph.split.preheader ], [ %.138, %bb.l ] ; 4 uses
  %21 = load ptr, ptr %i.l, align 8
  %i.bb = lshr i32 %i.ba, 3
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr %21, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i32
  %i.bg = and i32 %i.ba, 7
  %i.bh = shl nuw nsw i32 1, %i.bg
  %i.bi = and i32 %i.bh, %i.bf
  %.not40 = icmp eq i32 %i.bi, 0
  br i1 %.not40, label %bb.l, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.lr.ph.split
  %i.bj = load i32, ptr %i.m, align 4
  %i.bk = icmp eq i32 %i.bj, %i.ba
  br i1 %i.bk, label %22, label %.preheader.1

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.bl = load i32, ptr %4, align 4
  %i.bm = icmp eq i32 %i.bl, %i.ba
  br i1 %i.bm, label %bb.h, label %.loopexit

22:                                               ; preds = %.preheader.preheader
  %23 = load ptr, ptr %i.n, align 8
  %24 = sext i32 %.03644 to i64
  %25 = getelementptr inbounds [8 x i8], ptr %23, i64 %24
  %26 = load double, ptr %25, align 8             ; 3 uses
  %27 = load i8, ptr %i.o, align 4, !range !3, !noundef !4
  %28 = trunc nuw i8 %27 to i1
  br i1 %28, label %bb.k, label %bb.i

bb.h:                                             ; preds = %.preheader.1
  %i.bn = load ptr, ptr %i.n, align 8
  %i.bo = sext i32 %.03644 to i64
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load double, ptr %i.bp, align 8         ; 3 uses
  %i.br = load i8, ptr %5, align 1, !range !3, !noundef !4
  %i.bs = trunc nuw i8 %i.br to i1
  br i1 %i.bs, label %bb.k, label %.then73

.then73:                                          ; preds = %bb.h
  %29 = load double, ptr %i.q, align 8
  %30 = fsub double %i.bq, %29
  br label %bb.j

bb.i:                                             ; preds = %22
  %31 = load double, ptr %i.p, align 8
  %32 = fsub double %26, %31
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.then73
  %33 = phi ptr [ %i.q, %.then73 ], [ %i.p, %bb.i ]
  %34 = phi double [ %i.bq, %.then73 ], [ %26, %bb.i ]
  %.sroa.0.12 = phi double [ %.sroa.0.5, %.then73 ], [ %32, %bb.i ]
  %.sroa.8.12 = phi double [ %30, %.then73 ], [ %.sroa.8.5, %bb.i ]
  store double %34, ptr %33, align 8
  %.pre.pre.pre = load i32, ptr %i.d, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %22, %bb.j
  %.pre.pre = phi i32 [ %.pre.pre.pre, %bb.j ], [ %.pre.pre82, %22 ], [ %.pre.pre82, %bb.h ] ; 2 uses
  %.sroa.0.6 = phi double [ %.sroa.0.12, %bb.j ], [ %26, %22 ], [ %.sroa.0.5, %bb.h ]
  %.sroa.8.6 = phi double [ %.sroa.8.12, %bb.j ], [ %.sroa.8.5, %22 ], [ %i.bq, %bb.h ]
  %i.bt = add nuw nsw i32 %.03545, 1
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.1, %bb.k
  %.pre.pre75 = phi i32 [ %.pre.pre, %bb.k ], [ %.pre.pre82, %.preheader.1 ]
  %.pre = phi i32 [ %.pre.pre, %bb.k ], [ %.pre.pre73, %.preheader.1 ] ; 2 uses
  %.sroa.0.7 = phi double [ %.sroa.0.6, %bb.k ], [ %.sroa.0.5, %.preheader.1 ]
  %.sroa.8.7 = phi double [ %.sroa.8.6, %bb.k ], [ %.sroa.8.5, %.preheader.1 ]
  %.1 = phi i32 [ %i.bt, %bb.k ], [ %.03545, %.preheader.1 ]
  %i.bu = add nsw i32 %.03644, 1
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph.split, %.loopexit
  %.pre.pre83 = phi i32 [ %.pre.pre82, %.lr.ph.split ], [ %.pre.pre75, %.loopexit ]
  %.pre.pre74 = phi i32 [ %.pre.pre73, %.lr.ph.split ], [ %.pre, %.loopexit ]
  %.pre66 = phi i32 [ %.pre65, %.lr.ph.split ], [ %.pre, %.loopexit ] ; 2 uses
  %.sroa.0.8 = phi double [ %.sroa.0.5, %.lr.ph.split ], [ %.sroa.0.7, %.loopexit ] ; 2 uses
  %.sroa.8.8 = phi double [ %.sroa.8.5, %.lr.ph.split ], [ %.sroa.8.7, %.loopexit ] ; 2 uses
  %.138 = phi i32 [ %.03644, %.lr.ph.split ], [ %i.bu, %.loopexit ]
  %.2 = phi i32 [ %.03545, %.lr.ph.split ], [ %.1, %.loopexit ] ; 2 uses
  %i.bv = add nuw nsw i32 %i.ba, 1                ; 2 uses
  %i.bw = shl nsw i32 %.pre66, 3
  %i.bx = icmp slt i32 %i.bv, %i.bw
  %i.by = icmp slt i32 %.2, 2
  %i.bz = select i1 %i.bx, i1 %i.by, i1 false
  br i1 %i.bz, label %.lr.ph.split, label %._crit_edge, !llvm.loop !24

bb.m:                                             ; preds = %._crit_edge
  %i.ca = tail call ptr @SDL_GetKeyboardFocus_REAL() #9
  %.not39 = icmp eq ptr %i.ca, null
  br i1 %.not39, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = fptrunc double %.sroa.0.4 to float
  %i.ci = fptrunc double %.sroa.8.4 to float
  tail call void @SDL_SendMouseMotion(i64 noundef %i.cc, ptr noundef %i.ce, i32 noundef %i.cg, i1 noundef zeroext true, float noundef %i.ch, float noundef %i.ci) #9
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %._crit_edge
  ret void
}

declare void @X11_HandleKeyEvent(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @SDL_SendPenTouch(i64 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare void @SDL_SendPenButton(i64 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #3

declare ptr @SDL_GetMouseFocus_REAL() local_unnamed_addr #3

declare ptr @SDL_GetKeyboardFocus_REAL() local_unnamed_addr #3

declare zeroext i1 @X11_IsWheelEvent(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @X11_HandleButtonPress(ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @X11_HandleButtonRelease(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #3

declare void @SDL_SendPenMotion(i64 noundef, i32 noundef, ptr noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @X11_PenAxesFromValuators(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @SDL_SendPenAxis(i64 noundef, i32 noundef, ptr noundef, i32 noundef, float noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @xinput2_parse_scrollable_valuators(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @scrollable_device_count, align 4 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph48, label %._crit_edge49

.lr.ph48:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

._crit_edge49:                                    ; preds = %.loopexit, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph48, %.loopexit
  %i.h = phi i32 [ %i.a, %.lr.ph48 ], [ %i.bs, %.loopexit ] ; 2 uses
  %indvars.iv51 = phi i64 [ 0, %.lr.ph48 ], [ %indvars.iv.next52, %.loopexit ] ; 2 uses
  %i.i = load ptr, ptr @scrollable_devices, align 8
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %indvars.iv51 ; 3 uses
  %i.k = load i32, ptr %i.c, align 4
  %i.l = load i32, ptr %i.j, align 8
  %i.m = icmp eq i32 %i.k, %i.l
  br i1 %i.m, label %.preheader40, label %.loopexit

.preheader40:                                     ; preds = %bb.b
  %i.n = load i32, ptr %i.d, align 8              ; 3 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph45, label %.loopexit

.lr.ph45:                                         ; preds = %.preheader40
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph45, %bb.j
  %.pre5456 = phi i32 [ %i.n, %.lr.ph45 ], [ %.pre5457, %bb.j ] ; 2 uses
  %i.r = phi i32 [ %i.n, %.lr.ph45 ], [ %i.bo, %bb.j ]
  %.03843 = phi i32 [ 0, %.lr.ph45 ], [ %i.bp, %bb.j ] ; 4 uses
  %.03942 = phi i32 [ 0, %.lr.ph45 ], [ %.1, %bb.j ] ; 3 uses
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = lshr i32 %.03843, 3
  %i.u = zext nneg i32 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i32
  %i.y = and i32 %.03843, 7
  %i.z = shl nuw nsw i32 1, %i.y
  %i.aa = and i32 %i.z, %i.x
  %.not = icmp eq i32 %i.aa, 0
  br i1 %.not, label %bb.j, label %.preheader

.preheader:                                       ; preds = %bb.c
  %i.ab = load i32, ptr %i.p, align 4             ; 2 uses
  %i.ac = icmp sgt i32 %i.ab, 0
  br i1 %i.ac, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.ad = sext i32 %.03942 to i64
  br label %bb.d

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre54.pre = load i32, ptr %i.d, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %.pre54 = phi i32 [ %.pre54.pre, %._crit_edge.loopexit ], [ %.pre5456, %.preheader ] ; 2 uses
  %i.ae = add nsw i32 %.03942, 1
  br label %bb.j

bb.d:                                             ; preds = %.lr.ph, %bb.i
  %i.af = phi i32 [ %i.ab, %.lr.ph ], [ %i.bl, %bb.i ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.i ] ; 2 uses
  %i.ag = load ptr, ptr %i.q, align 8
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %indvars.iv ; 5 uses
  %i.ai = load i32, ptr %i.ah, align 8
  %i.aj = icmp eq i32 %i.ai, %.03843
  br i1 %i.aj, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ak = load ptr, ptr %i.f, align 8
  %i.al = getelementptr inbounds [8 x i8], ptr %i.ak, i64 %i.ad
  %i.am = load double, ptr %i.al, align 8         ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.ao = load double, ptr %i.an, align 8
  %i.ap = fsub double %i.ao, %i.am
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ar = load double, ptr %i.aq, align 8
  %i.as = fdiv double %i.ap, %i.ar                ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ah, i64 24 ; 2 uses
  %i.au = load i8, ptr %i.at, align 8, !range !3, !noundef !4
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.aw = tail call double @SDL_fabs_REAL(double noundef %i.as) #9
  %i.ax = fcmp olt double %i.aw, f0x41DE666666299999
  br i1 %i.ax, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ah, i64 4
  %i.az = load i32, ptr %i.ay, align 4            ; 2 uses
  %i.ba = icmp eq i32 %i.az, 2
  %i.bb = icmp eq i32 %i.az, 1
  %i.bc = tail call ptr @SDL_GetMouse() #9
  %i.bd = load i64, ptr %i.g, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 136
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = load i32, ptr %i.c, align 4
  %i.bh = fptrunc double %i.as to float           ; 2 uses
  %i.bi = fneg float %i.bh
  %i.bj = select i1 %i.ba, float %i.bi, float -0.000000e+00
  %i.bk = select i1 %i.bb, float %i.bh, float 0.000000e+00
  tail call void @SDL_SendMouseWheel(i64 noundef %i.bd, ptr noundef %i.bf, i32 noundef %i.bg, float noundef %i.bj, float noundef %i.bk, i32 noundef 0) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  store double %i.am, ptr %i.an, align 8
  store i8 1, ptr %i.at, align 8
  %.pre = load i32, ptr %i.p, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %i.bl = phi i32 [ %.pre, %bb.h ], [ %i.af, %bb.d ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bm = sext i32 %i.bl to i64
  %i.bn = icmp slt i64 %indvars.iv.next, %i.bm
  br i1 %i.bn, label %bb.d, label %._crit_edge.loopexit, !llvm.loop !25

bb.j:                                             ; preds = %bb.c, %._crit_edge
  %.pre5457 = phi i32 [ %.pre54, %._crit_edge ], [ %.pre5456, %bb.c ]
  %i.bo = phi i32 [ %.pre54, %._crit_edge ], [ %i.r, %bb.c ] ; 2 uses
  %.1 = phi i32 [ %i.ae, %._crit_edge ], [ %.03942, %bb.c ]
  %i.bp = add nuw nsw i32 %.03843, 1              ; 2 uses
  %i.bq = shl nsw i32 %i.bo, 3
  %i.br = icmp slt i32 %i.bp, %i.bq
  br i1 %i.br, label %bb.c, label %.loopexit.loopexit, !llvm.loop !26

.loopexit.loopexit:                               ; preds = %bb.j
  %.pre55 = load i32, ptr @scrollable_device_count, align 4
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader40, %bb.b
  %i.bs = phi i32 [ %.pre55, %.loopexit.loopexit ], [ %i.h, %.preheader40 ], [ %i.h, %bb.b ] ; 2 uses
  %indvars.iv.next52 = add nuw nsw i64 %indvars.iv51, 1 ; 2 uses
  %i.bt = sext i32 %i.bs to i64
  %i.bu = icmp slt i64 %indvars.iv.next52, %i.bt
  br i1 %i.bu, label %bb.b, label %._crit_edge49, !llvm.loop !27
}

declare ptr @SDL_GetMouse() local_unnamed_addr #3

declare zeroext i1 @X11_ProcessHitTest(ptr noundef, ptr noundef, float noundef, float noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @SDL_SendMouseMotion(i64 noundef, ptr noundef, i32 noundef, i1 noundef zeroext, float noundef, float noundef) local_unnamed_addr #3

declare void @SDL_SendTouch(i64 noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare void @SDL_SendTouchMotion(i64 noundef, i64 noundef, i64 noundef, ptr noundef, float noundef, float noundef, float noundef) local_unnamed_addr #3

declare i32 @SDL_SendPinch(i32 noundef, i64 noundef, ptr noundef, float noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @X11_InitXinput2Multitouch(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #6 {
bb.a:
  store i1 false, ptr @xinput2_grabbed_touch_raised, align 1
  store i32 0, ptr @xinput2_active_touch_count, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: read, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @X11_Xinput2HandlesMotionForWindow(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
end_hunk_0
