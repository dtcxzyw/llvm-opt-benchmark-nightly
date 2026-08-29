Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/selfuncs?download=true
inline.NumInlined: 290
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0_@get_variable_range:bb.a
bb.h:                                             ; preds = %bb.g
  call void @free_attstatsslot(ptr noundef nonnull %6) #12
  br label %.thread11

.thread11:                                        ; preds = %statistic_proc_security_check.exit, %bb.h
  %i.at = load ptr, ptr %i.f, align 8
  %i.au = call zeroext i1 @get_attstatsslot(ptr noundef nonnull %6, ptr noundef %i.at, i32 noundef 2, i32 noundef 0, i32 noundef 1) #12
  br i1 %i.au, label %bb.i, label %.thread21

bb.i:                                             ; preds = %.thread11
  %i.av = load i16, ptr %i.d, align 2
  %i.aw = load i8, ptr %i.e, align 1, !range !4, !noundef !5
  %i.ax = trunc nuw i8 %i.aw to i1
  call fastcc void @get_stats_slot_range(ptr noundef %6, i32 noundef %i.h, ptr noundef %5, i32 noundef %2, i16 noundef signext %i.av, i1 noundef zeroext %i.ax, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  call void @free_attstatsslot(ptr noundef nonnull %6) #12
  %.pre = load i8, ptr %i.c, align 1, !range !4
  %.pre.fr = freeze i8 %.pre
  %i.ay = trunc i8 %.pre.fr to i1                 ; 2 uses
  %spec.select = select i1 %i.ay, i32 1, i32 3
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.thread13
  %.pre6816 = phi i1 [ true, %.thread13 ], [ %i.ay, %bb.i ] ; 2 uses
  %i.az = phi i32 [ 1, %.thread13 ], [ %spec.select, %bb.i ]
  %i.ba = load ptr, ptr %i.f, align 8
  %i.bb = call zeroext i1 @get_attstatsslot(ptr noundef nonnull %6, ptr noundef %i.ba, i32 noundef 1, i32 noundef 0, i32 noundef %i.az) #12
  br i1 %i.bb, label %bb.k, label %bb.o

.thread21:                                        ; preds = %.thread11
  %i.bc = load ptr, ptr %i.f, align 8
  %i.bd = call zeroext i1 @get_attstatsslot(ptr noundef nonnull %6, ptr noundef %i.bc, i32 noundef 1, i32 noundef 0, i32 noundef 3) #12
  br i1 %i.bd, label %.preheader, label %bb.o

bb.k:                                             ; preds = %bb.j
  br i1 %.pre6816, label %.thread, label %.preheader

.preheader:                                       ; preds = %.thread21, %bb.k
  %i.be = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.bf = load i32, ptr %i.be, align 8            ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.bi = load ptr, ptr %i.bh, align 8            ; 5 uses
  %wide.trip.count = zext nneg i32 %i.bf to i64   ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.bj = icmp ult i32 %i.bf, 4
  br i1 %i.bj, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2147483644
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.l ] ; 5 uses
  %.0253 = phi double [ 0.000000e+00, %.lr.ph.new ], [ %i.cc, %bb.l ]
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.l ]
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bl = load float, ptr %i.bk, align 4
  %i.bm = fpext float %i.bl to double
  %i.bn = fadd double %.0253, %i.bm
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bq = load float, ptr %i.bp, align 4
  %i.br = fpext float %i.bq to double
  %i.bs = fadd double %i.bn, %i.br
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load float, ptr %i.bu, align 4
  %i.bw = fpext float %i.bv to double
  %i.bx = fadd double %i.bs, %i.bw
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.ca = load float, ptr %i.bz, align 4
  %i.cb = fpext float %i.ca to double
  %i.cc = fadd double %i.bx, %i.cb                ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %._crit_edge.loopexit.unr-lcssa, label %bb.l, !llvm.loop !31

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %._crit_edge.loopexit.unr-lcssa ]
  %.0253.epil.init = phi double [ 0.000000e+00, %.lr.ph ], [ %i.cc, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod27 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod27)
  br label %bb.m

bb.m:                                             ; preds = %bb.m, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.m ] ; 2 uses
  %.0253.epil = phi double [ %.0253.epil.init, %.epil.preheader ], [ %i.cg, %bb.m ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.m ]
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv.epil
  %i.ce = load float, ptr %i.cd, align 4
  %i.cf = fpext float %i.ce to double
  %i.cg = fadd double %.0253.epil, %i.cf          ; 2 uses
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.m, !llvm.loop !32

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.m, %.preheader
  %.025.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.cc, %._crit_edge.loopexit.unr-lcssa ], [ %i.cg, %bb.m ]
  %i.ch = load ptr, ptr %i.f, align 8
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  %.val = load ptr, ptr %i.ci, align 8            ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.ck = load i8, ptr %i.cj, align 2
  %i.cl = zext i8 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %.val, i64 %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.co = load float, ptr %i.cn, align 4
  %i.cp = fpext float %i.co to double
  %i.cq = fadd double %.025.lcssa, %i.cp
  %i.cr = fcmp ogt double %i.cq, 9.999900e-01
  br i1 %i.cr, label %.thread, label %bb.n

.thread:                                          ; preds = %bb.k, %._crit_edge
  %i.cs = load i16, ptr %i.d, align 2
  %i.ct = load i8, ptr %i.e, align 1, !range !4, !noundef !5
  %i.cu = trunc nuw i8 %i.ct to i1
  call fastcc void @get_stats_slot_range(ptr noundef %6, i32 noundef %i.h, ptr noundef %5, i32 noundef %2, i16 noundef signext %i.cs, i1 noundef zeroext %i.cu, ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c)
  %.pre6.pre = load i8, ptr %i.c, align 1, !range !4
  %i.cv = trunc nuw i8 %.pre6.pre to i1
  br label %bb.n

bb.n:                                             ; preds = %.thread, %._crit_edge
  %.pre6 = phi i1 [ %i.cv, %.thread ], [ false, %._crit_edge ]
  call void @free_attstatsslot(ptr noundef nonnull %6) #12
  br label %bb.o

bb.o:                                             ; preds = %.thread21, %bb.n, %bb.j
  %.pre-phi = phi i1 [ %.pre6, %bb.n ], [ %.pre6816, %bb.j ], [ false, %.thread21 ]
  %i.cw = load i64, ptr %i.a, align 8
  store i64 %i.cw, ptr %3, align 8
  %i.cx = load i64, ptr %i.b, align 8
  store i64 %i.cx, ptr %4, align 8
  br label %statistic_proc_security_check.exit.thread

statistic_proc_security_check.exit.thread:        ; preds = %bb.f, %bb.e, %bb.c, %bb.a, %bb.o
  %.027 = phi i1 [ %.pre-phi, %bb.o ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i1 %.027
}

; Function Attrs: nounwind uwtable
define internal fastcc double @scalarineqsel(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4, ptr nofree noundef nonnull readonly captures(none) %5, i64 noundef %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.FmgrInfo, align 8           ; 5 uses
  %i.a = alloca double, align 8                   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %5, align 8                ; 3 uses
  %.not64 = icmp eq ptr %i.d, null
  br i1 %.not64, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %i.d, align 4
  %i.f = icmp eq i32 %i.e, 6
  br i1 %i.f, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i16, ptr %i.g, align 8
  %i.i = icmp eq i16 %i.h, -1
  br i1 %i.i, label %bb.e, label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.m = load i32, ptr %i.l, align 8              ; 3 uses
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.j, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = inttoptr i64 %6 to ptr                   ; 3 uses
  %.val65 = load i16, ptr %i.o, align 2
  %i.p = getelementptr i8, ptr %i.o, i64 2
  %.val66 = load i16, ptr %i.p, align 2
  %i.q = zext i16 %.val65 to i32
  %i.r = shl nuw i32 %i.q, 16
  %i.s = zext i16 %.val66 to i32
  %i.t = or disjoint i32 %i.r, %i.s
  %i.u = uitofp i32 %i.t to double                ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 200
  %i.w = load double, ptr %i.v, align 8           ; 3 uses
  %i.x = uitofp i32 %i.m to double
  %i.y = fadd double %i.x, -5.000000e-01          ; 2 uses
  %i.z = fdiv double %i.w, %i.y                   ; 2 uses
  %i.aa = add i32 %i.m, -1
  %9 = uitofp i32 %i.aa to double
  %10 = fcmp ult double %i.u, %9
  %i.ab = fmul double %i.z, 5.000000e-01
  %.055 = select i1 %10, double %i.z, double %i.ab ; 2 uses
  %i.ac = fcmp ogt double %.055, 0.000000e+00
  br i1 %i.ac, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr i8, ptr %i.o, i64 4
  %.val67 = load i16, ptr %i.ad, align 2
  %i.ae = uitofp i16 %.val67 to double
  %i.af = fdiv double %i.ae, %.055                ; 2 uses
  %i.ag = fcmp olt double %i.af, 1.000000e+00
  %i.ah = select i1 %i.ag, double %i.af, double 1.000000e+00
  %i.ai = fadd double %i.ah, %i.u
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.056 = phi double [ %i.ai, %bb.g ], [ %i.u, %bb.f ]
  %i.aj = fdiv double %.056, %i.y                 ; 2 uses
  %i.ak = xor i1 %2, %3
  %i.al = fcmp ult double %i.w, 1.000000e+00
  %or.cond = or i1 %i.ak, %i.al
  %i.am = fdiv double 1.000000e+00, %i.w
  %i.an = fsub double %i.aj, %i.am
  %.057 = select i1 %or.cond, double %i.aj, double %i.an ; 2 uses
  %i.ao = fsub double 1.000000e+00, %.057
  %.158 = select i1 %2, double %i.ao, double %.057 ; 3 uses
  %i.ap = fcmp olt double %.158, 0.000000e+00
  %i.aq = fcmp ogt double %.158, 1.000000e+00
  %spec.store.select = select i1 %i.aq, double 1.000000e+00, double %.158
  %.2 = select i1 %i.ap, double 0.000000e+00, double %spec.store.select
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.ar = getelementptr i8, ptr %i.c, i64 16
  %.val = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.at = load i8, ptr %i.as, align 2
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 %i.au
  %i.aw = tail call i32 @get_opcode(i32 noundef %1) #12
  call void @fmgr_info(i32 noundef %i.aw, ptr noundef nonnull %8) #12
  %i.ax = call double @mcv_selectivity(ptr noundef nonnull %5, ptr noundef nonnull %8, i32 noundef %4, i64 noundef %6, i1 noundef zeroext true, ptr noundef nonnull %i.a)
  %i.ay = call double @ineq_histogram_selectivity(ptr noundef %0, ptr noundef nonnull %5, i32 noundef %1, ptr noundef nonnull %8, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef %4, i64 noundef %6, i32 noundef %7) ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ba = load float, ptr %i.az, align 4
  %i.bb = fpext float %i.ba to double
  %i.bc = fsub double 1.000000e+00, %i.bb
  %i.bd = load double, ptr %i.a, align 8
  %i.be = fsub double %i.bc, %i.bd
  %i.bf = fcmp ult double %i.ay, 0.000000e+00
  %. = select i1 %i.bf, double 5.000000e-01, double %i.ay
  %.3 = fmul double %., %i.be
  %i.bg = fadd double %i.ax, %.3                  ; 3 uses
  %i.bh = fcmp olt double %i.bg, 0.000000e+00
  %i.bi = fcmp ogt double %i.bg, 1.000000e+00
  %spec.store.select1 = select i1 %i.bi, double 1.000000e+00, double %i.bg
  %.4 = select i1 %i.bh, double 0.000000e+00, double %spec.store.select1
  br label %bb.j

bb.j:                                             ; preds = %bb.b, %bb.c, %bb.d, %bb.h, %bb.e, %bb.i
  %.1 = phi double [ %.4, %bb.i ], [ 1.000000e+00, %bb.e ], [ %.2, %bb.h ], [ f0x3FD5555555555555, %bb.d ], [ f0x3FD5555555555555, %bb.c ], [ f0x3FD5555555555555, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  ret double %.1
}

; Function Attrs: nounwind uwtable
define dso_local i64 @matchingsel(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = load i64, ptr %i.d, align 8
  %i.f = trunc i64 %i.e to i32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.h = load i64, ptr %i.g, align 8
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i64, ptr %i.j, align 8
  %i.l = trunc i64 %i.k to i32
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = load i32, ptr %i.m, align 8
  %i.o = tail call double @generic_restriction_selectivity(ptr noundef %i.c, i32 noundef %i.f, i32 noundef %i.n, ptr noundef %i.i, i32 noundef %i.l, double noundef 1.000000e-02)
  %i.p = bitcast double %i.o to i64
  ret i64 %i.p
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @matchingjoinsel(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #6 {
bb.a:
  ret i64 4576918229304087675
}

; Function Attrs: nounwind uwtable
define dso_local double @estimate_num_groups(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, double noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.VariableStatData, align 8   ; 10 uses
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca double, align 8                   ; 5 uses
  %.not = icmp eq ptr %4, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %4, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call double @clamp_row_est(double noundef %2) #12 ; 5 uses
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %bb.ai, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not194 = icmp eq ptr %3, null                 ; 2 uses
  br i1 %.not194, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr %3, align 8
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.ai, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4
  %.not196.not235 = icmp sgt i32 %i.h, 0
  br i1 %.not196.not235, label %.lr.ph241, label %.critedge.thread347

.lr.ph241:                                        ; preds = %bb.f
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 44
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph241, %.loopexit
  %indvars.iv320 = phi i64 [ 0, %.lr.ph241 ], [ %indvars.iv.next321, %.loopexit ] ; 2 uses
  %.0152239 = phi i32 [ 0, %.lr.ph241 ], [ %.2154.ph, %.loopexit ] ; 3 uses
  %.0158238 = phi double [ 1.000000e+00, %.lr.ph241 ], [ %.1159.ph, %.loopexit ] ; 7 uses
  %.0163237 = phi double [ 1.000000e+00, %.lr.ph241 ], [ %.2165.ph, %.loopexit ] ; 3 uses
  %.0167236 = phi ptr [ null, %.lr.ph241 ], [ %.2169.ph, %.loopexit ] ; 6 uses
  %i.m = load ptr, ptr %i.i, align 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %indvars.iv320
  %i.o = load ptr, ptr %i.n, align 8              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  br i1 %.not194, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %3, align 8
  %i.q = add i32 %.0152239, 1                     ; 2 uses
  %i.r = call zeroext i1 @list_member_int(ptr noundef %i.p, i32 noundef %.0152239) #12
  br i1 %i.r, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1153 = phi i32 [ %i.q, %bb.h ], [ %.0152239, %bb.g ] ; 6 uses
  %i.s = call double @expression_returns_set_rows(ptr noundef %0, ptr noundef %i.o) #12 ; 2 uses
  %i.t = fcmp olt double %.0163237, %i.s
  %.1164 = select i1 %i.t, double %i.s, double %.0163237 ; 6 uses
  %i.u = call i32 @exprType(ptr noundef %i.o) #12
  %i.v = icmp eq i32 %i.u, 16
  br i1 %i.v, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.w = fmul double %.0158238, 2.000000e+00
  br label %.loopexit

bb.k:                                             ; preds = %bb.i
  call void @examine_variable(ptr noundef %0, ptr noundef %i.o, i32 noundef 0, ptr noundef nonnull %5)
  %i.x = load ptr, ptr %i.j, align 8
  %i.y = icmp ne ptr %i.x, null
  %i.z = load i8, ptr %i.k, align 4, !range !4
  %i.aa = trunc nuw i8 %i.z to i1
  %or.cond = select i1 %i.y, i1 true, i1 %i.aa
  br i1 %or.cond, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.ab = call fastcc ptr @add_unique_group_var(ptr noundef %0, ptr noundef %.0167236, ptr noundef %i.o, ptr noundef %5) ; 2 uses
  %i.ac = load ptr, ptr %i.j, align 8             ; 2 uses
  %.not200 = icmp eq ptr %i.ac, null
  br i1 %.not200, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = load ptr, ptr %i.l, align 8
  call void %i.ad(ptr noundef nonnull %i.ac) #12
  br label %.loopexit

bb.n:                                             ; preds = %bb.k
  %i.ae = call ptr @pull_var_clause(ptr noundef %i.o, i32 noundef 42) #12 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.o, label %.preheader228

.preheader228:                                    ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %.not198232 = icmp sgt i32 %i.ah, 0
  br i1 %.not198232, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader228
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.aj = call zeroext i1 @contain_volatile_functions(ptr noundef %i.o) #12
end_hunk_0
begin_hunk_1_@gistcostestimate:bb.a
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = tail call nnan double @llvm.log.f64(double %i.o)
  %i.r = tail call nnan double @llvm.ceil.f64(double %i.q)
  %i.s = fmul double %i.r, %.pre                  ; 2 uses
  %i.t = fadd double %.pre22, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.v = load double, ptr %i.u, align 8           ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.x = load double, ptr %i.w, align 8
  %i.y = tail call double @llvm.fmuladd.f64(double %i.v, double %i.s, double %i.x)
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.z = phi double [ %i.y, %bb.e ], [ %.pre25, %._crit_edge ]
  %i.aa = phi double [ %i.v, %bb.e ], [ %.pre23, %._crit_edge ]
  %i.ab = phi double [ %i.t, %bb.e ], [ %.pre22, %._crit_edge ]
  %i.ac = add i32 %i.m, 1
  %i.ad = sitofp i32 %i.ac to double
  %i.ae = fmul nnan double %i.ad, 5.000000e+01
  %i.af = fmul double %.pre, %i.ae                ; 2 uses
  %i.ag = fadd double %i.ab, %i.af
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.aa, double %i.af, double %i.z)
  store double %i.ag, ptr %3, align 8
  store double %i.ah, ptr %4, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aj = load double, ptr %i.ai, align 8
  store double %i.aj, ptr %5, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.al = load double, ptr %i.ak, align 8
  store double %i.al, ptr %6, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.an = load double, ptr %i.am, align 8
  store double %i.an, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @spgcostestimate(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, double noundef %2, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %3, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %4, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %5, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %6, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %7) local_unnamed_addr #0 {
bb.a:
  %8 = alloca %struct.GenericCosts, align 8       ; 13 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %8, i8 0, i64 72, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 64
  store i32 1, ptr %i.c, align 8
  call void @genericcostestimate(ptr noundef %0, ptr noundef %1, double noundef %2, ptr noundef nonnull %8)
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = load i32, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp ugt i32 %i.h, 1
  br i1 %i.i, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.j = uitofp i32 %i.h to double
  %i.k = tail call double @log(double noundef %i.j) #12
  %i.l = fdiv double %i.k, f0x40126BB1BBB55516
  %i.m = fptosi double %i.l to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.sink = phi i32 [ %i.m, %bb.c ], [ 0, %bb.b ]  ; 2 uses
  store i32 %.sink, ptr %i.d, align 8
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.a
  %i.n = phi i32 [ %i.e, %bb.a ], [ %.sink, %.sink.split ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.p = load double, ptr %i.o, align 8           ; 2 uses
  %i.q = fcmp ogt double %i.p, 1.000000e+00
  %.pre = load double, ptr @cpu_operator_cost, align 8 ; 2 uses
  %.pre22 = load double, ptr %8, align 8          ; 2 uses
  br i1 %i.q, label %bb.e, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %8, i64 56
  %.pre23 = load double, ptr %.phi.trans.insert, align 8
  %.phi.trans.insert24 = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.pre25 = load double, ptr %.phi.trans.insert24, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = tail call nnan double @llvm.log.f64(double %i.p)
  %i.s = tail call nnan double @llvm.ceil.f64(double %i.r)
  %i.t = fmul double %i.s, %.pre                  ; 2 uses
  %i.u = fadd double %.pre22, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.w = load double, ptr %i.v, align 8           ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.y = load double, ptr %i.x, align 8
  %i.z = tail call double @llvm.fmuladd.f64(double %i.w, double %i.t, double %i.y)
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e
  %i.aa = phi double [ %i.z, %bb.e ], [ %.pre25, %._crit_edge ]
  %i.ab = phi double [ %i.w, %bb.e ], [ %.pre23, %._crit_edge ]
  %i.ac = phi double [ %i.u, %bb.e ], [ %.pre22, %._crit_edge ]
  %i.ad = add i32 %i.n, 1
  %i.ae = sitofp i32 %i.ad to double
  %i.af = fmul nnan double %i.ae, 5.000000e+01
  %i.ag = fmul double %.pre, %i.af                ; 2 uses
  %i.ah = fadd double %i.ac, %i.ag
  %i.ai = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.ag, double %i.aa)
  store double %i.ah, ptr %3, align 8
  store double %i.ai, ptr %4, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ak = load double, ptr %i.aj, align 8
  store double %i.ak, ptr %5, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.am = load double, ptr %i.al, align 8
  store double %i.am, ptr %6, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ao = load double, ptr %i.an, align 8
  store double %i.ao, ptr %7, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @gincostestimate(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, double noundef %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4, ptr nofree noundef captures(none) %5, ptr nofree noundef writeonly captures(none) %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i16, align 2                      ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  %i.c = alloca i8, align 1                       ; 5 uses
  %i.d = alloca i32, align 4                      ; 6 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  %i.f = alloca ptr, align 8                      ; 6 uses
  %8 = alloca %struct.GinQualCounts, align 8      ; 9 uses
  %9 = alloca %struct.GinQualCounts, align 8      ; 16 uses
  %i.g = alloca double, align 8                   ; 5 uses
  %10 = alloca %struct.GinStatsData, align 8      ; 9 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.i = load ptr, ptr %i.h, align 8              ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.k, null
  br i1 %.not.i, label %get_quals_from_indexclauses.exit, label %.lr.ph37.i

.lr.ph37.i:                                       ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = load i32, ptr %i.l, align 4              ; 2 uses
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph47.i, label %get_quals_from_indexclauses.exit

.lr.ph47.i:                                       ; preds = %.lr.ph37.i, %.critedge26.i
  %i.p = phi i32 [ %i.ag, %.critedge26.i ], [ %i.n, %.lr.ph37.i ] ; 2 uses
  %indvars.iv50.i = phi i64 [ %indvars.iv.next51.i, %.critedge26.i ], [ 0, %.lr.ph37.i ] ; 2 uses
  %.03645.i = phi ptr [ %.1.lcssa.i, %.critedge26.i ], [ null, %.lr.ph37.i ] ; 3 uses
  %i.q = load ptr, ptr %i.m, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv50.i
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 2 uses
  %.not23.i = icmp eq ptr %i.u, null
  br i1 %.not23.i, label %.critedge26.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph47.i
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.x = load i32, ptr %i.v, align 4
  %i.y = icmp sgt i32 %i.x, 0
  br i1 %i.y, label %.lr.ph34.i, label %.critedge26.i

.lr.ph34.i:                                       ; preds = %.lr.ph.i, %.lr.ph34.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph34.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.12832.i = phi ptr [ %i.ac, %.lr.ph34.i ], [ %.03645.i, %.lr.ph.i ]
  %i.z = load ptr, ptr %i.w, align 8
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv.i
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call ptr @lappend(ptr noundef %.12832.i, ptr noundef %i.ab) #12 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ad = load i32, ptr %i.v, align 4
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv.next.i, %i.ae
  br i1 %i.af, label %.lr.ph34.i, label %.critedge26.loopexit.i

.critedge26.loopexit.i:                           ; preds = %.lr.ph34.i
  %.pre.i = load i32, ptr %i.l, align 4
  br label %.critedge26.i

.critedge26.i:                                    ; preds = %.critedge26.loopexit.i, %.lr.ph.i, %.lr.ph47.i
  %i.ag = phi i32 [ %i.p, %.lr.ph47.i ], [ %i.p, %.lr.ph.i ], [ %.pre.i, %.critedge26.loopexit.i ] ; 2 uses
  %.1.lcssa.i = phi ptr [ %.03645.i, %.lr.ph47.i ], [ %.03645.i, %.lr.ph.i ], [ %i.ac, %.critedge26.loopexit.i ] ; 2 uses
  %indvars.iv.next51.i = add nuw nsw i64 %indvars.iv50.i, 1 ; 2 uses
  %i.ah = sext i32 %i.ag to i64
  %i.ai = icmp slt i64 %indvars.iv.next51.i, %i.ah
  br i1 %i.ai, label %.lr.ph47.i, label %get_quals_from_indexclauses.exit

get_quals_from_indexclauses.exit:                 ; preds = %.critedge26.i, %bb.a, %.lr.ph37.i
  %.0.lcssa.i = phi ptr [ null, %.lr.ph37.i ], [ null, %bb.a ], [ %.1.lcssa.i, %.critedge26.i ] ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ak = load i32, ptr %i.aj, align 8            ; 2 uses
  %i.al = uitofp i32 %i.ak to double              ; 7 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.an = load double, ptr %i.am, align 8         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #12
  %i.ao = getelementptr inbounds nuw i8, ptr %i.i, i64 173
  %i.ap = load i8, ptr %i.ao, align 1, !range !4, !noundef !5
  %i.aq = trunc nuw i8 %i.ap to i1
  br i1 %i.aq, label %bb.c, label %bb.b

bb.b:                                             ; preds = %get_quals_from_indexclauses.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = tail call ptr @index_open(i32 noundef %i.as, i32 noundef 0) #12 ; 2 uses
  call void @ginGetStats(ptr noundef %i.at, ptr noundef nonnull %10) #12
  call void @index_close(ptr noundef %i.at, i32 noundef 0) #12
  %.pre = load i32, ptr %10, align 8
  %11 = uitofp i32 %.pre to double
  br label %bb.d

bb.c:                                             ; preds = %get_quals_from_indexclauses.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %10, i8 0, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %12 = phi double [ 0.000000e+00, %bb.c ], [ %11, %bb.b ] ; 2 uses
  %13 = fcmp olt double %12, %i.al
  %..a = select i1 %13, double %12, double 0.000000e+00 ; 3 uses
  %.not = icmp eq i32 %i.ak, 0
  br i1 %.not, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 4
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = uitofp i32 %i.av to double              ; 3 uses
  %14 = fcmp ugt double %i.aw, %i.al
  br i1 %14, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = fmul nnan double %i.al, 2.500000e-01
  %i.ay = fcmp olt double %i.ax, %i.aw
  %i.az = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ba = load i32, ptr %i.az, align 8            ; 2 uses
  %i.bb = icmp ne i32 %i.ba, 0
  %or.cond = select i1 %i.ay, i1 %i.bb, i1 false
  %i.bc = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %i.be = icmp sgt i64 %i.bd, 0
  %or.cond5 = select i1 %or.cond, i1 %i.be, i1 false
  br i1 %or.cond5, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bf = fdiv double %i.al, %i.aw                ; 3 uses
  %i.bg = uitofp i32 %i.ba to double
  %i.bh = fmul double %i.bf, %i.bg
  %i.bi = call double @llvm.ceil.f64(double %i.bh) ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %10, i64 12
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = uitofp i32 %i.bk to double
  %i.bm = fmul double %i.bf, %i.bl
  %i.bn = call double @llvm.ceil.f64(double %i.bm) ; 2 uses
  %i.bo = uitofp nneg i64 %i.bd to double
  %i.bp = fmul double %i.bf, %i.bo
  %i.bq = call double @llvm.ceil.f64(double %i.bp)
  %i.br = fsub double %i.al, %..a                 ; 3 uses
  %i.bs = fcmp olt double %i.bi, %i.br
  %i.bt = select i1 %i.bs, double %i.bi, double %i.br ; 2 uses
  %i.bu = fsub double %i.br, %i.bt                ; 2 uses
  %i.bv = fcmp olt double %i.bn, %i.bu
  %.216 = select i1 %i.bv, double %i.bn, double %i.bu
  br label %bb.i

bb.h:                                             ; preds = %bb.f, %bb.e, %bb.d
  %i.bw = fcmp ogt double %i.al, 1.000000e+01
  %i.bx = select i1 %i.bw, double %i.al, double 1.000000e+01
  %i.by = fsub double %i.bx, %..a                 ; 2 uses
  %i.bz = fmul nnan double %i.by, 9.000000e-01
  %i.ca = call double @llvm.floor.f64(double %i.bz) ; 3 uses
  %i.cb = fsub double %i.by, %i.ca
  %i.cc = fmul nnan double %i.ca, 1.000000e+02
  %i.cd = call double @llvm.floor.f64(double %i.cc)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0199 = phi double [ %i.bt, %bb.g ], [ %i.ca, %bb.h ] ; 4 uses
  %.0198 = phi double [ %.216, %bb.g ], [ %i.cb, %bb.h ] ; 6 uses
  %.0196 = phi double [ %i.bq, %bb.g ], [ %i.cd, %bb.h ] ; 2 uses
  %i.ce = fcmp olt double %.0196, 1.000000e+00
  %spec.store.select = select i1 %i.ce, double 1.000000e+00, double %.0196 ; 8 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.cg = load ptr, ptr %i.cf, align 8            ; 3 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %add_predicate_to_index_quals.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cg, i64 4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4
  %.not20.i = icmp sgt i32 %i.cj, 0
  br i1 %.not20.i, label %.lr.ph.i222, label %.critedge.i

.lr.ph.i222:                                      ; preds = %.preheader.i
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph.i222
  %indvars.iv.i223 = phi i64 [ 0, %.lr.ph.i222 ], [ %indvars.iv.next.i224, %bb.l ] ; 2 uses
  %.01821.i = phi ptr [ null, %.lr.ph.i222 ], [ %.1.i, %bb.l ] ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %indvars.iv.i223
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = call ptr @list_make1_impl(i32 noundef 1, ptr %i.cn) #12 ; 2 uses
  %i.cp = call zeroext i1 @predicate_implied_by(ptr noundef %i.co, ptr noundef %.0.lcssa.i, i1 noundef zeroext false) #12
  br i1 %i.cp, label %bb.l, label %bb.k

.critedge.i:                                      ; preds = %bb.l, %.preheader.i
  %.018.lcssa.i = phi ptr [ null, %.preheader.i ], [ %.1.i, %bb.l ]
  %i.cq = call ptr @list_concat(ptr noundef %.018.lcssa.i, ptr noundef %.0.lcssa.i) #12
  br label %add_predicate_to_index_quals.exit

bb.k:                                             ; preds = %bb.j
  %i.cr = call ptr @list_concat(ptr noundef %.01821.i, ptr noundef %i.co) #12
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1.i = phi ptr [ %.01821.i, %bb.j ], [ %i.cr, %bb.k ] ; 2 uses
  %indvars.iv.next.i224 = add nuw nsw i64 %indvars.iv.i223, 1 ; 2 uses
  %i.cs = load i32, ptr %i.ci, align 4
  %i.ct = sext i32 %i.cs to i64
  %.not.i225 = icmp slt i64 %indvars.iv.next.i224, %i.ct
  br i1 %.not.i225, label %bb.j, label %.critedge.i, !llvm.loop !49

add_predicate_to_index_quals.exit:                ; preds = %bb.i, %.critedge.i
  %.0.i = phi ptr [ %i.cq, %.critedge.i ], [ %.0.lcssa.i, %bb.i ]
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 112
  %i.cx = load i32, ptr %i.cw, align 8
  %i.cy = call double @clauselist_selectivity(ptr noundef %0, ptr noundef %.0.i, i32 noundef %i.cx, i32 noundef 0, ptr noundef null) #12
  store double %i.cy, ptr %5, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.da = load i32, ptr %i.cz, align 8
  call void @get_tablespace_page_costs(i32 noundef %i.da, ptr noundef nonnull %i.g, ptr noundef null) #12
  store double 0.000000e+00, ptr %6, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %9, i8 0, i64 88, i1 false)
  %i.db = getelementptr inbounds nuw i8, ptr %9, i64 88 ; 5 uses
  store double 1.000000e+00, ptr %i.db, align 8
  %i.dc = load ptr, ptr %i.j, align 8             ; 3 uses
  %.not212.a = icmp eq ptr %i.dc, null
  br i1 %.not212.a, label %.preheader, label %.lr.ph254

.lr.ph254:                                        ; preds = %add_predicate_to_index_quals.exit
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 4 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.df = getelementptr inbounds nuw i8, ptr %9, i64 72 ; 4 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 80 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.di = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %8, i64 72
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.dl = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.dm = load i32, ptr %i.dd, align 4
  %i.dn = icmp sgt i32 %i.dm, 0
  br i1 %i.dn, label %.lr.ph298.preheader, label %.preheader

.lr.ph298.preheader:                              ; preds = %.lr.ph254
  %i.do = insertelement <2 x double> poison, double %spec.store.select, i64 0
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph298

.lr.ph298:                                        ; preds = %.lr.ph298.preheader, %.critedge218
  %.0193252297 = phi i1 [ %.4, %.critedge218 ], [ true, %.lr.ph298.preheader ] ; 2 uses
  %indvars.iv262296 = phi i64 [ %indvars.iv.next263, %.critedge218 ], [ 0, %.lr.ph298.preheader ] ; 2 uses
  %i.dq = load ptr, ptr %i.de, align 8
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dq, i64 %indvars.iv262296
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8            ; 3 uses
  %.not214 = icmp eq ptr %i.du, null
  br i1 %.not214, label %.critedge218, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph298
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 4 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ds, i64 26 ; 2 uses
  %i.dy = load i32, ptr %i.dv, align 4
  %i.dz = icmp sgt i32 %i.dy, 0
  br i1 %i.dz, label %.lr.ph292, label %.critedge218

.critedge:                                        ; preds = %.critedge218
  br i1 %.4, label %.preheader, label %bb.ag

.preheader:                                       ; preds = %.lr.ph254, %add_predicate_to_index_quals.exit, %.critedge
  %i.ea = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.eb = load i32, ptr %i.ea, align 8            ; 2 uses
  %i.ec = icmp sgt i32 %i.eb, 0
  br i1 %i.ec, label %.lr.ph258, label %._crit_edge

.lr.ph258:                                        ; preds = %.preheader
  %i.ed = getelementptr inbounds nuw i8, ptr %9, i64 32
  %wide.trip.count = zext nneg i32 %i.eb to i64
  br label %bb.ah

.lr.ph292:                                        ; preds = %.lr.ph, %bb.af
  %indvars.iv291 = phi i64 [ %indvars.iv.next, %bb.af ], [ 0, %.lr.ph ] ; 2 uses
  %i.ee = load ptr, ptr %i.dw, align 8
  %i.ef = getelementptr inbounds nuw [8 x i8], ptr %i.ee, i64 %indvars.iv291
  %i.eg = load ptr, ptr %i.ef, align 8
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8            ; 6 uses
  %i.ej = load i32, ptr %i.ei, align 4
  switch i32 %i.ej, label %bb.ae [
    i32 17, label %bb.m
    i32 20, label %bb.q
  ]

bb.m:                                             ; preds = %.lr.ph292
  %i.ek = load i16, ptr %i.dx, align 2
  %i.el = sext i16 %i.ek to i32
  %i.em = getelementptr i8, ptr %i.ei, i64 4
  %.val = load i32, ptr %i.em, align 4
  %i.en = getelementptr i8, ptr %i.ei, i64 32
  %.val219 = load ptr, ptr %i.en, align 8
  %i.eo = getelementptr i8, ptr %.val219, i64 16
  %.val219.val = load ptr, ptr %i.eo, align 8
  %i.ep = getelementptr i8, ptr %.val219.val, i64 8
  %.val219.val.val = load ptr, ptr %i.ep, align 8
  %i.eq = call ptr @estimate_expression_value(ptr noundef %0, ptr noundef %.val219.val.val) #12 ; 3 uses
  %i.er = load i32, ptr %i.eq, align 4            ; 2 uses
  %i.es = icmp eq i32 %i.er, 27
  br i1 %i.es, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.et = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.eu = load ptr, ptr %i.et, align 8            ; 2 uses
  %.pr.i = load i32, ptr %i.eu, align 4
  br label %bb.o

end_hunk_1
