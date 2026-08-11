inline.NumInlined: 18
inline.NumDeleted: 4
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@furtherest_point_in_list:bb.a
  %..0110 = select i1 %i.bp, double %i.bo, double %.0110209 ; 2 uses
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = load double, ptr %i.br, align 8, !tbaa !8 ; 2 uses
  %i.bt = fcmp ogt double %i.bs, %..0110
  %..0110.1 = select i1 %i.bt, double %i.bs, double %..0110 ; 2 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.bw = load double, ptr %i.bv, align 8, !tbaa !8 ; 2 uses
  %i.bx = fcmp ogt double %i.bw, %..0110.1
  %..0110.2 = select i1 %i.bx, double %i.bw, double %..0110.1 ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !8 ; 2 uses
  %i.cb = fcmp ogt double %i.ca, %..0110.2
  %..0110.3 = select i1 %i.cb, double %i.ca, double %..0110.2 ; 3 uses
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.i.unr-lcssa, label %.lr.ph, !llvm.loop !59

.split115:                                        ; preds = %bb.a
  %i.cc = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !56 ; 8 uses
  %i.ce = icmp sgt i32 %0, 0
  br i1 %i.ce, label %.lr.ph55.i138, label %distance_to_group.exit

.lr.ph55.i138:                                    ; preds = %.split115
  %i.cf = icmp sgt i32 %1, 0
  %wide.trip.count.i.i139 = zext i32 %1 to i64    ; 3 uses
  br i1 %i.cf, label %.lr.ph.preheader.i.us.preheader.i140, label %distance_to_group.exit

.lr.ph.preheader.i.us.preheader.i140:             ; preds = %.lr.ph55.i138
  %wide.trip.count72.i141 = zext nneg i32 %0 to i64
  %xtraiter330 = and i64 %wide.trip.count.i.i139, 3 ; 3 uses
  %i.cg = icmp ult i32 %1, 4
  %unroll_iter335 = and i64 %wide.trip.count.i.i139, 2147483644
  %lcmp.mod332.not = icmp eq i64 %xtraiter330, 0
  %lcmp.mod334 = icmp ne i64 %xtraiter330, 0
  br label %.lr.ph.preheader.i.us.i142

.lr.ph.preheader.i.us.i142:                       ; preds = %dist.exit.loopexit.us.i150, %.lr.ph.preheader.i.us.preheader.i140
  %indvars.iv69.i143 = phi i64 [ 0, %.lr.ph.preheader.i.us.preheader.i140 ], [ %indvars.iv.next70.i152, %dist.exit.loopexit.us.i150 ] ; 3 uses
  %.054.us.i144 = phi double [ 0.000000e+00, %.lr.ph.preheader.i.us.preheader.i140 ], [ %.1.us.i151, %dist.exit.loopexit.us.i150 ] ; 2 uses
  %i.ch = mul nuw nsw i64 %indvars.iv69.i143, %wide.trip.count.i.i139
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ch ; 5 uses
  br i1 %i.cg, label %.lr.ph.i.us.i145.epil.preheader, label %.lr.ph.i.us.i145

.lr.ph.i.us.i145:                                 ; preds = %.lr.ph.preheader.i.us.i142, %.lr.ph.i.us.i145
  %indvars.iv.i.us.i146 = phi i64 [ %indvars.iv.next.i.us.i148.3, %.lr.ph.i.us.i145 ], [ 0, %.lr.ph.preheader.i.us.i142 ] ; 6 uses
  %.014.i.us.i147 = phi double [ %i.dg, %.lr.ph.i.us.i145 ], [ 0.000000e+00, %.lr.ph.preheader.i.us.i142 ]
  %niter336 = phi i64 [ %niter336.next.3, %.lr.ph.i.us.i145 ], [ 0, %.lr.ph.preheader.i.us.i142 ]
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.i.us.i146
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !8
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.i.us.i146
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !8
  %i.cn = fsub double %i.ck, %i.cm                ; 2 uses
  %i.co = tail call double @llvm.fmuladd.f64(double %i.cn, double %i.cn, double %.014.i.us.i147)
  %indvars.iv.next.i.us.i148 = or disjoint i64 %indvars.iv.i.us.i146, 1 ; 2 uses
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next.i.us.i148
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !8
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next.i.us.i148
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !8
  %i.ct = fsub double %i.cq, %i.cs                ; 2 uses
  %i.cu = tail call double @llvm.fmuladd.f64(double %i.ct, double %i.ct, double %i.co)
  %indvars.iv.next.i.us.i148.1 = or disjoint i64 %indvars.iv.i.us.i146, 2 ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next.i.us.i148.1
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !8
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next.i.us.i148.1
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !8
  %i.cz = fsub double %i.cw, %i.cy                ; 2 uses
  %i.da = tail call double @llvm.fmuladd.f64(double %i.cz, double %i.cz, double %i.cu)
  %indvars.iv.next.i.us.i148.2 = or disjoint i64 %indvars.iv.i.us.i146, 3 ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.next.i.us.i148.2
  %i.dc = load double, ptr %i.db, align 8, !tbaa !8
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next.i.us.i148.2
  %i.de = load double, ptr %i.dd, align 8, !tbaa !8
  %i.df = fsub double %i.dc, %i.de                ; 2 uses
  %i.dg = tail call double @llvm.fmuladd.f64(double %i.df, double %i.df, double %i.da) ; 3 uses
  %indvars.iv.next.i.us.i148.3 = add nuw nsw i64 %indvars.iv.i.us.i146, 4 ; 2 uses
  %niter336.next.3 = add i64 %niter336, 4         ; 2 uses
  %niter336.ncmp.3 = icmp eq i64 %niter336.next.3, %unroll_iter335
  br i1 %niter336.ncmp.3, label %dist.exit.loopexit.us.i150.unr-lcssa, label %.lr.ph.i.us.i145, !llvm.loop !14

dist.exit.loopexit.us.i150.unr-lcssa:             ; preds = %.lr.ph.i.us.i145
  br i1 %lcmp.mod332.not, label %dist.exit.loopexit.us.i150, label %.lr.ph.i.us.i145.epil.preheader

.lr.ph.i.us.i145.epil.preheader:                  ; preds = %dist.exit.loopexit.us.i150.unr-lcssa, %.lr.ph.preheader.i.us.i142
  %indvars.iv.i.us.i146.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.us.i142 ], [ %indvars.iv.next.i.us.i148.3, %dist.exit.loopexit.us.i150.unr-lcssa ]
  %.014.i.us.i147.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader.i.us.i142 ], [ %i.dg, %dist.exit.loopexit.us.i150.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod334)
  br label %.lr.ph.i.us.i145.epil

.lr.ph.i.us.i145.epil:                            ; preds = %.lr.ph.i.us.i145.epil, %.lr.ph.i.us.i145.epil.preheader
  %indvars.iv.i.us.i146.epil = phi i64 [ %indvars.iv.i.us.i146.epil.init, %.lr.ph.i.us.i145.epil.preheader ], [ %indvars.iv.next.i.us.i148.epil, %.lr.ph.i.us.i145.epil ] ; 3 uses
  %.014.i.us.i147.epil = phi double [ %.014.i.us.i147.epil.init, %.lr.ph.i.us.i145.epil.preheader ], [ %i.dm, %.lr.ph.i.us.i145.epil ]
  %epil.iter331 = phi i64 [ 0, %.lr.ph.i.us.i145.epil.preheader ], [ %epil.iter331.next, %.lr.ph.i.us.i145.epil ]
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.ci, i64 %indvars.iv.i.us.i146.epil
  %i.di = load double, ptr %i.dh, align 8, !tbaa !8
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.i.us.i146.epil
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !8
  %i.dl = fsub double %i.di, %i.dk                ; 2 uses
  %i.dm = tail call double @llvm.fmuladd.f64(double %i.dl, double %i.dl, double %.014.i.us.i147.epil) ; 2 uses
  %indvars.iv.next.i.us.i148.epil = add nuw nsw i64 %indvars.iv.i.us.i146.epil, 1
  %epil.iter331.next = add i64 %epil.iter331, 1   ; 2 uses
  %epil.iter331.cmp.not = icmp eq i64 %epil.iter331.next, %xtraiter330
  br i1 %epil.iter331.cmp.not, label %dist.exit.loopexit.us.i150, label %.lr.ph.i.us.i145.epil, !llvm.loop !60

dist.exit.loopexit.us.i150:                       ; preds = %.lr.ph.i.us.i145.epil, %dist.exit.loopexit.us.i150.unr-lcssa
  %.lcssa310 = phi double [ %i.dg, %dist.exit.loopexit.us.i150.unr-lcssa ], [ %i.dm, %.lr.ph.i.us.i145.epil ]
  %i.dn = tail call double @sqrt(double noundef %.lcssa310) #13 ; 2 uses
  %i.do = icmp eq i64 %indvars.iv69.i143, 0
  %i.dp = fcmp uge double %.054.us.i144, %i.dn
  %i.dq = select i1 %i.do, i1 true, i1 %i.dp
  %.1.us.i151 = select i1 %i.dq, double %i.dn, double %.054.us.i144 ; 2 uses
  %indvars.iv.next70.i152 = add nuw nsw i64 %indvars.iv69.i143, 1 ; 2 uses
  %exitcond73.not.i153 = icmp eq i64 %indvars.iv.next70.i152, %wide.trip.count72.i141
  br i1 %exitcond73.not.i153, label %distance_to_group.exit, label %.lr.ph.preheader.i.us.i142, !llvm.loop !18

distance_to_group.exit.loopexit313.unr-lcssa:     ; preds = %dist.exit47.peel.next.i
  %lcmp.mod318.not = icmp eq i64 %xtraiter316, 0
  br i1 %lcmp.mod318.not, label %distance_to_group.exit, label %dist.exit47.peel.next.i.epil.preheader

dist.exit47.peel.next.i.epil.preheader:           ; preds = %distance_to_group.exit.loopexit313.unr-lcssa, %dist.exit47.peel.next.i.preheader
  %indvars.iv.i.epil.init = phi i64 [ 1, %dist.exit47.peel.next.i.preheader ], [ %indvars.iv.next.i.1, %distance_to_group.exit.loopexit313.unr-lcssa ]
  %.252.i.epil.init = phi double [ %i.o, %dist.exit47.peel.next.i.preheader ], [ %.2..i.1, %distance_to_group.exit.loopexit313.unr-lcssa ] ; 2 uses
  %lcmp.mod320 = trunc i64 %i.c to i1
  tail call void @llvm.assume(i1 %lcmp.mod320)
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv.i.epil.init
  %i.ds = load double, ptr %i.dr, align 8, !tbaa !8
  %i.dt = fmul double %i.ds, 0.000000e+00         ; 2 uses
  %i.du = fcmp olt double %.252.i.epil.init, %i.dt
  %.2..i.epil = select i1 %i.du, double %.252.i.epil.init, double %i.dt
  br label %distance_to_group.exit

distance_to_group.exit:                           ; preds = %dist.exit47.peel.next.i.epil.preheader, %distance_to_group.exit.loopexit313.unr-lcssa, %bb.e, %dist.exit.loopexit.us.i150, %.preheader48.i, %.lr.ph55.i138, %.split115, %bb.b
  %i.dv = phi ptr [ %i.cd, %dist.exit.loopexit.us.i150 ], [ %i.f, %.preheader48.i ], [ %i.k, %bb.b ], [ %i.k, %bb.e ], [ %i.cd, %.lr.ph55.i138 ], [ %i.cd, %.split115 ], [ %i.k, %distance_to_group.exit.loopexit313.unr-lcssa ], [ %i.k, %dist.exit47.peel.next.i.epil.preheader ]
  %phi.call = phi double [ %.1.us.i151, %dist.exit.loopexit.us.i150 ], [ 0.000000e+00, %.preheader48.i ], [ %i.o, %bb.b ], [ %.3.us.i, %bb.e ], [ 0.000000e+00, %.lr.ph55.i138 ], [ 0.000000e+00, %.split115 ], [ %.2..i.1, %distance_to_group.exit.loopexit313.unr-lcssa ], [ %.2..i.epil, %dist.exit47.peel.next.i.epil.preheader ] ; 2 uses
  %.1111 = phi double [ 1.000000e+00, %dist.exit.loopexit.us.i150 ], [ 0.000000e+00, %.preheader48.i ], [ %..0110.lcssa, %bb.b ], [ %..0110.lcssa, %bb.e ], [ 1.000000e+00, %.lr.ph55.i138 ], [ 1.000000e+00, %.split115 ], [ %..0110.lcssa, %distance_to_group.exit.loopexit313.unr-lcssa ], [ %..0110.lcssa, %dist.exit47.peel.next.i.epil.preheader ] ; 2 uses
  store double %phi.call, ptr %6, align 8, !tbaa !8
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 8
  store double %phi.call, ptr %i.dw, align 8, !tbaa !21
  %i.dx = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %.not125 = icmp eq ptr %i.dx, null
  %i.dy = sext i32 %1 to i64                      ; 4 uses
  br i1 %.not125, label %bb.f, label %distance_to_group.exit._crit_edge

bb.f:                                             ; preds = %distance_to_group.exit
  %mul.ov.i = icmp slt i32 %1, 0
  br i1 %mul.ov.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.dz = load ptr, ptr @stderr, align 8, !tbaa !29
  %i.ea = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.dz, ptr noundef nonnull @.str.6, i64 noundef %i.dy, i64 noundef 8) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.eb = icmp ne i32 %1, 0
  %i.ec = tail call noalias ptr @calloc(i64 noundef %i.dy, i64 noundef 8) #16 ; 3 uses
  %i.ed = icmp eq ptr %i.ec, null
  %or.cond3.i = and i1 %i.eb, %i.ed
  br i1 %or.cond3.i, label %bb.i, label %gv_calloc.exit

bb.i:                                             ; preds = %bb.h
  %i.ee = load ptr, ptr @stderr, align 8, !tbaa !29
  %i.ef = shl nuw nsw i64 %i.dy, 3
  %i.eg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ee, ptr noundef nonnull @.str.7, i64 noundef %i.ef) #14 ; 0 uses
  tail call fastcc void @graphviz_exit() #15
  unreachable

gv_calloc.exit:                                   ; preds = %bb.h
  store ptr %i.ec, ptr %7, align 8, !tbaa !28
  br label %distance_to_group.exit._crit_edge

distance_to_group.exit._crit_edge:                ; preds = %distance_to_group.exit, %gv_calloc.exit
  %i.eh = phi ptr [ %i.ec, %gv_calloc.exit ], [ %i.dx, %distance_to_group.exit ]
  %i.ei = shl nsw i64 %i.dy, 3                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %i.eh, ptr align 8 %i.dv, i64 %i.ei, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, i8 0, i64 48, i1 false)
  %i.ej = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store ptr %4, ptr %i.ej, align 8, !tbaa !31
  %i.ek = call i64 @gv_list_append_slot_(ptr noundef nonnull %8, i64 noundef 8) #13
  %i.el = load ptr, ptr %i.ej, align 8, !tbaa !31
  %i.em = load ptr, ptr %8, align 8, !tbaa !34
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.ek
  store ptr %i.el, ptr %i.en, align 8, !tbaa !35
  %i.eo = icmp sgt i32 %5, 0
  br i1 %i.eo, label %.lr.ph229, label %.preheader

.lr.ph229:                                        ; preds = %distance_to_group.exit._crit_edge
  %i.ep = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.er = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.es = icmp sgt i32 %1, 0                      ; 3 uses
  %i.et = fmul double %.1111, 2.000000e+00
  %i.eu = sitofp i32 %1 to double                 ; 2 uses
  %i.ev = shl nuw i32 1, %1
  %.not243 = icmp eq i32 %1, 31
  %i.ew = icmp slt i32 %0, 1                      ; 2 uses
  %wide.trip.count.i41.i159 = zext i32 %1 to i64  ; 8 uses
  %wide.trip.count67.i160 = zext i32 %0 to i64    ; 3 uses
  %i.ex = icmp slt i32 %1, 1
  %i.ey = getelementptr inbounds nuw i8, ptr %9, i64 40 ; 2 uses
  %smax = call i32 @llvm.smax.i32(i32 %i.ev, i32 1)
  %wide.trip.count269 = zext nneg i32 %smax to i64
  %brmerge = or i1 %i.ew, %i.ex
  %i.ez = add nsw i64 %wide.trip.count67.i160, -1 ; 3 uses
  %xtraiter337 = and i64 %i.ez, 1
  %i.fa = icmp eq i32 %0, 2                       ; 0 uses
  %unroll_iter342 = and i64 %i.ez, -2
  %lcmp.mod339.not = icmp eq i64 %xtraiter337, 0
  %lcmp.mod341 = trunc i64 %i.ez to i1
  %xtraiter344 = and i64 %wide.trip.count.i41.i159, 3 ; 3 uses
  %i.fb = icmp ult i32 %1, 4
  %unroll_iter349 = and i64 %wide.trip.count.i41.i159, 2147483644
  %lcmp.mod346.not = icmp eq i64 %xtraiter344, 0
  %lcmp.mod348 = icmp ne i64 %xtraiter344, 0
  %xtraiter351 = and i64 %wide.trip.count.i41.i159, 3 ; 3 uses
  %i.fc = add nsw i32 %1, -1
  %i.fd = icmp ult i32 %i.fc, 3
  %unroll_iter356 = and i64 %wide.trip.count.i41.i159, 2147483644
  %lcmp.mod353.not = icmp eq i64 %xtraiter351, 0
  %lcmp.mod355 = icmp ne i64 %xtraiter351, 0
  br label %bb.j

.preheader:                                       ; preds = %._crit_edge227, %distance_to_group.exit._crit_edge
  %i.fe = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.val133230 = load i64, ptr %i.fe, align 8, !tbaa !36
  %.not246 = icmp eq i64 %.val133230, 0
  br i1 %.not246, label %._crit_edge233, label %.lr.ph232

.lr.ph232:                                        ; preds = %.preheader
  %i.ff = getelementptr inbounds nuw i8, ptr %8, i64 32
  br label %bb.ae

bb.j:                                             ; preds = %.lr.ph229, %._crit_edge227
  %i.fg = phi i32 [ 1, %.lr.ph229 ], [ %i.fu, %._crit_edge227 ] ; 3 uses
  %i.fh = load i8, ptr @Verbose, align 1, !tbaa !34
  %i.fi = icmp ugt i8 %i.fh, 10
  br i1 %i.fi, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.fj = load ptr, ptr @stderr, align 8, !tbaa !29
  %i.fk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fj, ptr noundef nonnull @.str, i32 noundef %i.fg) #14 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.val135210 = load i64, ptr %i.ep, align 8, !tbaa !36
  %.not244 = icmp eq i64 %.val135210, 0
  br i1 %.not244, label %._crit_edge, label %.lr.ph212

._crit_edge:                                      ; preds = %bb.o, %bb.l
  call void @gv_list_clear_(ptr noundef nonnull %9, i64 noundef 8) #13
  %.val134223 = load i64, ptr %i.er, align 8, !tbaa !36
  %.not245 = icmp eq i64 %.val134223, 0
  br i1 %.not245, label %._crit_edge227, label %.lr.ph226

.lr.ph212:                                        ; preds = %bb.l, %bb.o
  %.0113211 = phi i64 [ %i.fs, %bb.o ], [ 0, %bb.l ] ; 2 uses
  %i.fl = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %9, i64 noundef %.0113211) #13 ; 2 uses
  %i.fm = load ptr, ptr %i.eq, align 8, !tbaa !39 ; 2 uses
  %magicptr = ptrtoint ptr %i.fm to i64
  switch i64 %magicptr, label %bb.n [
    i64 1, label %bb.m
    i64 0, label %bb.o
  ]

bb.m:                                             ; preds = %.lr.ph212
  %i.fn = load ptr, ptr %9, align 8, !tbaa !34
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %i.fl
  %.0.copyload19 = load ptr, ptr %i.fo, align 8
  call void @free(ptr noundef %.0.copyload19) #13
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph212
  %i.fp = load ptr, ptr %9, align 8, !tbaa !34
  %i.fq = getelementptr inbounds nuw [8 x i8], ptr %i.fp, i64 %i.fl
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !35
  call void %i.fm(ptr noundef %i.fr) #13
  br label %bb.o

bb.o:                                             ; preds = %.lr.ph212, %bb.n, %bb.m
  %i.fs = add nuw i64 %.0113211, 1                ; 2 uses
  %.val135 = load i64, ptr %i.ep, align 8, !tbaa !36
  %i.ft = icmp ult i64 %i.fs, %.val135
  br i1 %i.ft, label %.lr.ph212, label %._crit_edge, !llvm.loop !61

._crit_edge227:                                   ; preds = %.loopexit, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %8, i64 48, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %8, ptr noundef nonnull align 8 dereferenceable(48) %9, i64 48, i1 false), !tbaa.struct !41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %9, ptr noundef nonnull align 16 dereferenceable(48) %i.a, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fu = add nuw i32 %i.fg, 1
  %exitcond271.not = icmp eq i32 %i.fg, %5
  br i1 %exitcond271.not, label %.preheader, label %bb.j, !llvm.loop !62

.lr.ph226:                                        ; preds = %._crit_edge, %.loopexit
  %.0109224 = phi i64 [ %i.ly, %.loopexit ], [ 0, %._crit_edge ] ; 3 uses
  %i.fv = load ptr, ptr %8, align 8, !tbaa !34
  %i.fw = call i64 @gv_list_get_(ptr noundef nonnull byval(%struct.list_t_) align 8 %8, i64 noundef %.0109224) #13
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.fv, i64 %i.fw
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !35 ; 7 uses
  %i.fz = load i8, ptr @Verbose, align 1, !tbaa !34
  %i.ga = icmp ugt i8 %i.fz, 10
  br i1 %i.ga, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.lr.ph226
  %i.gb = load ptr, ptr @stderr, align 8, !tbaa !29
  %i.gc = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gb, ptr noundef nonnull @.str.1, i64 noundef %.0109224) #14 ; 0 uses
  br i1 %i.es, label %.lr.ph215, label %._crit_edge216

.lr.ph215:                                        ; preds = %bb.p
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph215, %bb.q
  %indvars.iv256 = phi i64 [ 0, %.lr.ph215 ], [ %indvars.iv.next257, %bb.q ] ; 2 uses
  %i.ge = load ptr, ptr @stderr, align 8, !tbaa !29
  %i.gf = load ptr, ptr %i.gd, align 8, !tbaa !44
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.gf, i64 %indvars.iv256
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !8
  %i.gi = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ge, ptr noundef nonnull @.str.2, double noundef %i.gh) #14 ; 0 uses
  %indvars.iv.next257 = add nuw nsw i64 %indvars.iv256, 1 ; 2 uses
  %exitcond260.not = icmp eq i64 %indvars.iv.next257, %wide.trip.count.i41.i159
  br i1 %exitcond260.not, label %._crit_edge216, label %bb.q, !llvm.loop !63

._crit_edge216:                                   ; preds = %bb.q, %bb.p
  %i.gj = load ptr, ptr @stderr, align 8, !tbaa !29
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fy, i64 32
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !46
  %i.gm = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !21
  %i.go = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gj, ptr noundef nonnull @.str.3, double noundef %i.gl, double noundef %i.gn) #14 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge216, %.lr.ph226
  %i.gp = load i32, ptr %i.fy, align 8, !tbaa !64
  %i.gq = icmp eq i32 %i.gp, 1
  br i1 %i.gq, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !21
  %i.gt = call double @sqrt(double noundef %i.eu) #13
  %i.gu = fmul double %i.et, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %i.fy, i64 32 ; 2 uses
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !46
  %i.gx = call double @llvm.fmuladd.f64(double %i.gu, double %i.gw, double %i.gs)
  %i.gy = load double, ptr %6, align 8, !tbaa !8
  %i.gz = fcmp olt double %i.gx, %i.gy
  br i1 %i.gz, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ha = getelementptr inbounds nuw i8, ptr %i.fy, i64 48 ; 5 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !47
  %.not128 = icmp eq ptr %i.hb, null
  %brmerge242 = or i1 %.not128, %.not243
  br i1 %brmerge242, label %.loopexit, label %.lr.ph222

.lr.ph222:                                        ; preds = %bb.t, %bb.ad
  %indvars.iv266 = phi i64 [ %indvars.iv.next267, %bb.ad ], [ 0, %bb.t ] ; 5 uses
  %i.hc = load ptr, ptr %i.ha, align 8, !tbaa !47
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.hc, i64 %indvars.iv266
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !35 ; 4 uses
  %.not129 = icmp eq ptr %i.he, null
  br i1 %.not129, label %bb.ad, label %bb.u

bb.u:                                             ; preds = %.lr.ph222
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 40
  %i.hg = load ptr, ptr %i.hf, align 8, !tbaa !56 ; 11 uses
  br i1 %.not, label %.preheader.i181, label %.preheader48.i156

.preheader48.i156:                                ; preds = %bb.u
  br i1 %i.ew, label %distance_to_group.exit198, label %.lr.ph.i158

.lr.ph.i158:                                      ; preds = %.preheader48.i156
  br i1 %i.es, label %.lr.ph.preheader.i40.us.i168, label %bb.v

bb.v:                                             ; preds = %.lr.ph.i158
  %i.hh = load double, ptr %2, align 8, !tbaa !8
  %i.hi = fmul double %i.hh, 0.000000e+00         ; 3 uses
  switch i32 %0, label %dist.exit47.peel.next.i162 [
    i32 1, label %distance_to_group.exit198
    i32 2, label %dist.exit47.peel.next.i162.epil.preheader
  ]

.lr.ph.preheader.i40.us.i168:                     ; preds = %.lr.ph.i158, %bb.y
  %indvars.iv64.i169 = phi i64 [ %indvars.iv.next65.i179, %bb.y ], [ 0, %.lr.ph.i158 ] ; 4 uses
  %.252.us.i170 = phi double [ %.3.us.i178, %bb.y ], [ 0.000000e+00, %.lr.ph.i158 ] ; 2 uses
  %i.hj = mul nuw nsw i64 %indvars.iv64.i169, %wide.trip.count.i41.i159
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.hj ; 5 uses
  br i1 %i.fb, label %.lr.ph.i42.us.i171.epil.preheader, label %.lr.ph.i42.us.i171

.lr.ph.i42.us.i171:                               ; preds = %.lr.ph.preheader.i40.us.i168, %.lr.ph.i42.us.i171
  %indvars.iv.i43.us.i172 = phi i64 [ %indvars.iv.next.i45.us.i174.3, %.lr.ph.i42.us.i171 ], [ 0, %.lr.ph.preheader.i40.us.i168 ] ; 6 uses
  %.014.i44.us.i173 = phi double [ %i.ii, %.lr.ph.i42.us.i171 ], [ 0.000000e+00, %.lr.ph.preheader.i40.us.i168 ]
  %niter350 = phi i64 [ %niter350.next.3, %.lr.ph.i42.us.i171 ], [ 0, %.lr.ph.preheader.i40.us.i168 ]
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.hk, i64 %indvars.iv.i43.us.i172
  %i.hm = load double, ptr %i.hl, align 8, !tbaa !8
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.hg, i64 %indvars.iv.i43.us.i172
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !8
  %i.hp = fsub double %i.hm, %i.ho                ; 2 uses
  %i.hq = call double @llvm.fmuladd.f64(double %i.hp, double %i.hp, double %.014.i44.us.i173)
  %indvars.iv.next.i45.us.i174 = or disjoint i64 %indvars.iv.i43.us.i172, 1 ; 2 uses
end_hunk_0
