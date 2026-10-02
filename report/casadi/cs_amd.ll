Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/casadi/original/cs_amd?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@cs_amd:bb.a
bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !47
  %i.c = icmp ne i32 %i.b, -1
  %i.d = add i32 %0, -4
  %i.e = icmp ult i32 %i.d, -3
  %or.cond3 = or i1 %i.e, %i.c
  br i1 %or.cond3, label %bb.ca, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @cs_transpose(ptr noundef nonnull %1, i32 noundef 0) #7 ; 8 uses
  %.not780 = icmp eq ptr %i.f, null
  br i1 %.not780, label %bb.ca, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !48   ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !49   ; 31 uses
  %i.k = sitofp i32 %i.j to double
  %i.l = tail call double @sqrt(double noundef %i.k) #7
  %i.m = fmul double %i.l, 1.000000e+01           ; 2 uses
  %.inv = fcmp ole double %i.m, 1.600000e+01
  %spec.select838 = select i1 %.inv, double 1.600000e+01, double %i.m
  %spec.select = fptosi double %spec.select838 to i32
  %i.n = add nsw i32 %i.j, -2
  %i.o = tail call i32 @llvm.smin.i32(i32 %i.n, i32 %spec.select) ; 2 uses
  %i.p = icmp eq i32 %0, 1
  %i.q = icmp eq i32 %i.j, %i.h
  %or.cond = select i1 %i.p, i1 %i.q, i1 false
  br i1 %or.cond, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = tail call ptr @cs_add(ptr noundef nonnull %1, ptr noundef nonnull %i.f, double noundef 0.000000e+00, double noundef 0.000000e+00) #7
  br label %bb.k

bb.f:                                             ; preds = %bb.d
  %i.s = icmp eq i32 %0, 2
  br i1 %i.s, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !50   ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !51   ; 2 uses
  %i.x = icmp sgt i32 %i.h, 0
  br i1 %i.x, label %.lr.ph863.preheader, label %._crit_edge

.lr.ph863.preheader:                              ; preds = %bb.g
  %wide.trip.count = zext nneg i32 %i.h to i64
  %.pre = load i32, ptr %i.u, align 4, !tbaa !52
  br label %.lr.ph863

.lr.ph863:                                        ; preds = %.lr.ph863.preheader, %.loopexit858
  %i.y = phi i32 [ %.pre, %.lr.ph863.preheader ], [ %i.ao, %.loopexit858 ] ; 3 uses
  %indvars.iv1017 = phi i64 [ 0, %.lr.ph863.preheader ], [ %indvars.iv.next1018, %.loopexit858 ] ; 2 uses
  %.0684862 = phi i32 [ 0, %.lr.ph863.preheader ], [ %.2686, %.loopexit858 ] ; 3 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv1017
  store i32 %.0684862, ptr %i.z, align 4, !tbaa !52
  %indvars.iv.next1018 = add nuw nsw i64 %indvars.iv1017, 1 ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %indvars.iv.next1018 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !52 ; 3 uses
  %i.ac = sub nsw i32 %i.ab, %i.y
  %i.ad = icmp sle i32 %i.ac, %i.o
  %i.ae = icmp slt i32 %i.y, %i.ab
  %or.cond1224 = and i1 %i.ad, %i.ae
  br i1 %or.cond1224, label %.lr.ph.preheader, label %.loopexit858

.lr.ph.preheader:                                 ; preds = %.lr.ph863
  %i.af = sext i32 %.0684862 to i64
  %i.ag = sext i32 %i.y to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv1012 = phi i64 [ %i.ag, %.lr.ph.preheader ], [ %indvars.iv.next1013, %.lr.ph ] ; 2 uses
  %indvars.iv = phi i64 [ %i.af, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv1012
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !52
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.w, i64 %indvars.iv
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !52
  %indvars.iv.next1013 = add nsw i64 %indvars.iv1012, 1 ; 2 uses
  %i.ak = load i32, ptr %i.aa, align 4, !tbaa !52 ; 2 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = icmp slt i64 %indvars.iv.next1013, %i.al
  br i1 %i.am, label %.lr.ph, label %.loopexit858.loopexit, !llvm.loop !8

.loopexit858.loopexit:                            ; preds = %.lr.ph
  %i.an = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit858

.loopexit858:                                     ; preds = %.loopexit858.loopexit, %.lr.ph863
  %i.ao = phi i32 [ %i.ab, %.lr.ph863 ], [ %i.ak, %.loopexit858.loopexit ]
  %.2686 = phi i32 [ %.0684862, %.lr.ph863 ], [ %i.an, %.loopexit858.loopexit ] ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next1018, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph863, !llvm.loop !9

._crit_edge:                                      ; preds = %.loopexit858, %bb.g
  %.0684.lcssa = phi i32 [ 0, %bb.g ], [ %.2686, %.loopexit858 ]
  %i.ap = sext i32 %i.h to i64
  %i.aq = getelementptr inbounds [4 x i8], ptr %i.u, i64 %i.ap
  store i32 %.0684.lcssa, ptr %i.aq, align 4, !tbaa !52
  %i.ar = tail call ptr @cs_transpose(ptr noundef nonnull %i.f, i32 noundef 0) #7 ; 3 uses
  %.not781 = icmp eq ptr %i.ar, null
  br i1 %.not781, label %bb.i, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  %i.as = tail call ptr @cs_multiply(ptr noundef nonnull %i.f, ptr noundef nonnull %i.ar) #7
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.h
  %i.at = phi ptr [ %i.as, %bb.h ], [ null, %._crit_edge ]
  %i.au = tail call ptr @cs_spfree(ptr noundef %i.ar) #7 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.f
  %i.av = tail call ptr @cs_multiply(ptr noundef nonnull %i.f, ptr noundef nonnull %1) #7
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j, %bb.e
  %.0746 = phi ptr [ %i.r, %bb.e ], [ %i.at, %bb.i ], [ %i.av, %bb.j ] ; 9 uses
  %i.aw = tail call ptr @cs_spfree(ptr noundef nonnull %i.f) #7 ; 0 uses
  %.not782 = icmp eq ptr %.0746, null
  br i1 %.not782, label %bb.ca, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ax = tail call i32 @cs_fkeep(ptr noundef nonnull %.0746, ptr noundef nonnull @cs_diag, ptr noundef null) #7 ; 0 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.0746, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !50 ; 36 uses
  %i.ba = sext i32 %i.j to i64                    ; 9 uses
  %i.bb = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.ba ; 3 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !52 ; 3 uses
  %i.bd = add nsw i32 %i.j, 1                     ; 13 uses
  %i.be = tail call ptr @cs_malloc(i32 noundef %i.bd, i64 noundef 4) #7 ; 14 uses
  %i.bf = ptrtoaddr ptr %i.be to i64              ; 8 uses
  %i.bg = shl nsw i32 %i.bd, 3
  %i.bh = tail call ptr @cs_malloc(i32 noundef %i.bg, i64 noundef 4) #7 ; 31 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64              ; 8 uses
  %i.bj = icmp ne ptr %i.be, null
  %i.bk = icmp ne ptr %i.bh, null
  %or.cond5 = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %or.cond5, label %bb.m, label %.sink.split1230

bb.m:                                             ; preds = %bb.l
  %i.bl = sdiv i32 %i.bc, 5
  %i.bm = shl nsw i32 %i.j, 1
  %i.bn = add i32 %i.bc, %i.bm
  %i.bo = add i32 %i.bn, %i.bl
  %i.bp = tail call i32 @cs_sprealloc(ptr noundef nonnull %.0746, i32 noundef %i.bo) #7
  %.not783 = icmp eq i32 %i.bp, 0
  br i1 %.not783, label %.sink.split1230, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bq = sext i32 %i.bd to i64                   ; 3 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bq ; 17 uses
  %i.bs = shl i32 %i.bd, 1
  %i.bt = sext i32 %i.bs to i64                   ; 4 uses
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bt ; 16 uses
  %i.bv = mul i32 %i.bd, 3
  %i.bw = sext i32 %i.bv to i64                   ; 4 uses
  %i.bx = getelementptr [4 x i8], ptr %i.bh, i64 %i.bw ; 16 uses
  %i.by = shl i32 %i.bd, 2
  %i.bz = sext i32 %i.by to i64                   ; 3 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.bz ; 12 uses
  %i.cb = mul i32 %i.bd, 5
  %i.cc = sext i32 %i.cb to i64                   ; 2 uses
  %i.cd = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.cc ; 9 uses
  %i.ce = mul i32 %i.bd, 6
  %i.cf = sext i32 %i.ce to i64                   ; 3 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.cf ; 21 uses
  %i.ch = mul i32 %i.bd, 7
  %i.ci = sext i32 %i.ch to i64                   ; 3 uses
  %i.cj = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.ci ; 4 uses
  %i.ck = icmp sgt i32 %i.j, 0                    ; 4 uses
  br i1 %i.ck, label %.lr.ph867.preheader, label %._crit_edge868

.lr.ph867.preheader:                              ; preds = %bb.n
  %wide.trip.count1023 = zext nneg i32 %i.j to i64 ; 6 uses
  %min.iters.check = icmp ult i32 %i.j, 12
  br i1 %min.iters.check, label %.lr.ph867.preheader1368, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph867.preheader
  %i.cl = shl nuw nsw i64 %wide.trip.count1023, 2 ; 2 uses
  %i.cm = getelementptr i8, ptr %i.bh, i64 %i.cl
  %i.cn = getelementptr i8, ptr %i.az, i64 %i.cl
  %i.co = getelementptr i8, ptr %i.cn, i64 4
  %bound0 = icmp ult ptr %i.bh, %i.co
  %bound1 = icmp ult ptr %i.az, %i.cm
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph867.preheader1368, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count1023, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.cp = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 20
  %wide.load = load <4 x i32>, ptr %i.cq, align 4, !tbaa !52, !alias.scope !54
  %wide.load1240 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !52, !alias.scope !54
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %index ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %wide.load1241 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !52, !alias.scope !54
  %wide.load1242 = load <4 x i32>, ptr %i.ct, align 4, !tbaa !52, !alias.scope !54
  %i.cu = sub nsw <4 x i32> %wide.load, %wide.load1241
  %i.cv = sub nsw <4 x i32> %wide.load1240, %wide.load1242
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %index ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 16
  store <4 x i32> %i.cu, ptr %i.cw, align 4, !tbaa !52, !alias.scope !55, !noalias !54
  store <4 x i32> %i.cv, ptr %i.cx, align 4, !tbaa !52, !alias.scope !55, !noalias !54
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !13

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count1023
  br i1 %cmp.n, label %._crit_edge868.thread, label %.lr.ph867.preheader1368

.lr.ph867.preheader1368:                          ; preds = %vector.memcheck, %.lr.ph867.preheader, %middle.block
  %indvars.iv1020.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph867.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count1023, 3     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph867.prol.loopexit, label %.lr.ph867.prol

.lr.ph867.prol:                                   ; preds = %.lr.ph867.preheader1368, %.lr.ph867.prol
  %indvars.iv1020.prol = phi i64 [ %indvars.iv.next1021.prol, %.lr.ph867.prol ], [ %indvars.iv1020.ph, %.lr.ph867.preheader1368 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph867.prol ], [ 0, %.lr.ph867.preheader1368 ]
  %indvars.iv.next1021.prol = add nuw nsw i64 %indvars.iv1020.prol, 1 ; 3 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next1021.prol
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !52
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv1020.prol
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !52
  %i.dd = sub nsw i32 %i.da, %i.dc
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv1020.prol
  store i32 %i.dd, ptr %i.de, align 4, !tbaa !52
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph867.prol.loopexit, label %.lr.ph867.prol, !llvm.loop !14

.lr.ph867.prol.loopexit:                          ; preds = %.lr.ph867.prol, %.lr.ph867.preheader1368
  %indvars.iv1020.unr = phi i64 [ %indvars.iv1020.ph, %.lr.ph867.preheader1368 ], [ %indvars.iv.next1021.prol, %.lr.ph867.prol ]
  %i.df = sub nsw i64 %indvars.iv1020.ph, %wide.trip.count1023
  %i.dg = icmp ugt i64 %i.df, -4
  br i1 %i.dg, label %._crit_edge868.thread, label %.lr.ph867

.lr.ph867:                                        ; preds = %.lr.ph867.prol.loopexit, %.lr.ph867
  %indvars.iv1020 = phi i64 [ %indvars.iv.next1021.3, %.lr.ph867 ], [ %indvars.iv1020.unr, %.lr.ph867.prol.loopexit ] ; 6 uses
  %indvars.iv.next1021 = add nuw nsw i64 %indvars.iv1020, 1 ; 3 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next1021
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !52
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv1020
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !52
  %i.dl = sub nsw i32 %i.di, %i.dk
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv1020
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !52
  %indvars.iv.next1021.1 = add nuw nsw i64 %indvars.iv1020, 2 ; 3 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next1021.1
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !52
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next1021
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !52
  %i.dr = sub nsw i32 %i.do, %i.dq
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next1021
  store i32 %i.dr, ptr %i.ds, align 4, !tbaa !52
  %indvars.iv.next1021.2 = add nuw nsw i64 %indvars.iv1020, 3 ; 3 uses
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next1021.2
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !52
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next1021.1
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !52
  %i.dx = sub nsw i32 %i.du, %i.dw
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next1021.1
  store i32 %i.dx, ptr %i.dy, align 4, !tbaa !52
  %indvars.iv.next1021.3 = add nuw nsw i64 %indvars.iv1020, 4 ; 3 uses
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next1021.3
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !52
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next1021.2
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !52
  %i.ed = sub nsw i32 %i.ea, %i.ec
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.next1021.2
  store i32 %i.ed, ptr %i.ee, align 4, !tbaa !52
  %exitcond1024.not.3 = icmp eq i64 %indvars.iv.next1021.3, %wide.trip.count1023
  br i1 %exitcond1024.not.3, label %._crit_edge868.thread, label %.lr.ph867, !llvm.loop !15

._crit_edge868.thread:                            ; preds = %.lr.ph867.prol.loopexit, %.lr.ph867, %middle.block
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %i.ba
  store i32 0, ptr %i.ef, align 4, !tbaa !52
  %i.eg = load i32, ptr %.0746, align 8, !tbaa !59
  %i.eh = getelementptr inbounds nuw i8, ptr %.0746, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !51
  br label %.lr.ph872.preheader

._crit_edge868:                                   ; preds = %bb.n
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.bh, i64 %i.ba
  store i32 0, ptr %i.ej, align 4, !tbaa !52
  %i.ek = load i32, ptr %.0746, align 8, !tbaa !59 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.0746, i64 24
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !51 ; 2 uses
  %.not784869 = icmp slt i32 %i.j, 0
  br i1 %.not784869, label %cs_wclear.exit.thread, label %.lr.ph872.preheader

.lr.ph872.preheader:                              ; preds = %._crit_edge868.thread, %._crit_edge868
  %i.en = phi ptr [ %i.ei, %._crit_edge868.thread ], [ %i.em, %._crit_edge868 ] ; 3 uses
  %i.eo = phi i32 [ %i.eg, %._crit_edge868.thread ], [ %i.ek, %._crit_edge868 ] ; 3 uses
  %wide.trip.count1028 = zext nneg i32 %i.bd to i64 ; 3 uses
  %min.iters.check1314 = icmp ult i32 %i.bd, 148
  br i1 %min.iters.check1314, label %.lr.ph872.preheader1367, label %vector.memcheck1243

vector.memcheck1243:                              ; preds = %.lr.ph872.preheader
  %i.ep = shl nsw i64 %i.bw, 2                    ; 7 uses
  %i.eq = add i64 %i.ep, %i.bi
  %i.er = sub i64 %i.eq, %i.bf
  %diff.check = icmp ugt i64 %i.er, -32
  %i.es = shl nsw i64 %i.bt, 2                    ; 7 uses
  %i.et = sub nsw i64 %i.ep, %i.es
  %diff.check1244 = icmp ugt i64 %i.et, -32
  %conflict.rdx = or i1 %diff.check, %diff.check1244
  %i.eu = shl nsw i64 %i.ci, 2                    ; 7 uses
  %i.ev = sub nsw i64 %i.ep, %i.eu
  %diff.check1245 = icmp ugt i64 %i.ev, -32
  %conflict.rdx1246 = or i1 %conflict.rdx, %diff.check1245
  %i.ew = shl nsw i64 %i.bq, 2                    ; 7 uses
  %i.ex = sub nsw i64 %i.ep, %i.ew
  %diff.check1247 = icmp ugt i64 %i.ex, -32
  %conflict.rdx1248 = or i1 %conflict.rdx1246, %diff.check1247
  %i.ey = shl nsw i64 %i.cf, 2                    ; 7 uses
  %i.ez = sub nsw i64 %i.ep, %i.ey
  %diff.check1249 = icmp ugt i64 %i.ez, -32
  %conflict.rdx1250 = or i1 %conflict.rdx1248, %diff.check1249
  %i.fa = shl nsw i64 %i.bz, 2                    ; 7 uses
  %i.fb = sub nsw i64 %i.ep, %i.fa
  %diff.check1251 = icmp ugt i64 %i.fb, -32
  %conflict.rdx1252 = or i1 %conflict.rdx1250, %diff.check1251
  %i.fc = shl nsw i64 %i.cc, 2                    ; 8 uses
  %i.fd = sub nsw i64 %i.ep, %i.fc
  %diff.check1253 = icmp ugt i64 %i.fd, -32
  %conflict.rdx1254 = or i1 %conflict.rdx1252, %diff.check1253
  %i.fe = shl nsw i64 %i.bw, 2
  %diff.check1255 = icmp ugt i64 %i.fe, -32
  %conflict.rdx1256 = or i1 %conflict.rdx1254, %diff.check1255
  %i.ff = add i64 %i.es, %i.bi
  %i.fg = sub i64 %i.bf, %i.ff
  %diff.check1257 = icmp ugt i64 %i.fg, -32
  %conflict.rdx1258 = or i1 %conflict.rdx1256, %diff.check1257
  %i.fh = add i64 %i.eu, %i.bi
  %i.fi = sub i64 %i.bf, %i.fh
  %diff.check1259 = icmp ugt i64 %i.fi, -32
  %conflict.rdx1260 = or i1 %conflict.rdx1258, %diff.check1259
  %i.fj = add i64 %i.ew, %i.bi
  %i.fk = sub i64 %i.bf, %i.fj
  %diff.check1261 = icmp ugt i64 %i.fk, -32
  %conflict.rdx1262 = or i1 %conflict.rdx1260, %diff.check1261
  %i.fl = add i64 %i.ey, %i.bi
  %i.fm = sub i64 %i.bf, %i.fl
  %diff.check1263 = icmp ugt i64 %i.fm, -32
  %conflict.rdx1264 = or i1 %conflict.rdx1262, %diff.check1263
  %i.fn = add i64 %i.fa, %i.bi
  %i.fo = sub i64 %i.bf, %i.fn
  %diff.check1265 = icmp ugt i64 %i.fo, -32
  %conflict.rdx1266 = or i1 %conflict.rdx1264, %diff.check1265
  %i.fp = add i64 %i.fc, %i.bi
  %i.fq = sub i64 %i.bf, %i.fp
  %diff.check1267 = icmp ugt i64 %i.fq, -32
  %conflict.rdx1268 = or i1 %conflict.rdx1266, %diff.check1267
  %i.fr = sub i64 %i.bf, %i.bi
  %diff.check1269 = icmp ugt i64 %i.fr, -32
  %conflict.rdx1270 = or i1 %conflict.rdx1268, %diff.check1269
  %i.fs = sub nsw i64 %i.es, %i.eu
  %diff.check1271 = icmp ugt i64 %i.fs, -32
  %conflict.rdx1272 = or i1 %conflict.rdx1270, %diff.check1271
  %i.ft = sub nsw i64 %i.es, %i.ew
  %diff.check1273 = icmp ugt i64 %i.ft, -32
  %conflict.rdx1274 = or i1 %conflict.rdx1272, %diff.check1273
  %i.fu = sub nsw i64 %i.es, %i.ey
  %diff.check1275 = icmp ugt i64 %i.fu, -32
  %conflict.rdx1276 = or i1 %conflict.rdx1274, %diff.check1275
  %i.fv = sub nsw i64 %i.es, %i.fa
  %diff.check1277 = icmp ugt i64 %i.fv, -32
  %conflict.rdx1278 = or i1 %conflict.rdx1276, %diff.check1277
  %i.fw = sub nsw i64 %i.es, %i.fc
  %diff.check1279 = icmp ugt i64 %i.fw, -32
  %conflict.rdx1280 = or i1 %conflict.rdx1278, %diff.check1279
  %i.fx = shl nsw i64 %i.bt, 2
  %diff.check1281 = icmp ugt i64 %i.fx, -32
  %conflict.rdx1282 = or i1 %conflict.rdx1280, %diff.check1281
  %i.fy = sub nsw i64 %i.eu, %i.ew
  %diff.check1283 = icmp ugt i64 %i.fy, -32
  %conflict.rdx1284 = or i1 %conflict.rdx1282, %diff.check1283
  %i.fz = sub nsw i64 %i.eu, %i.ey
  %diff.check1285 = icmp ugt i64 %i.fz, -32
  %conflict.rdx1286 = or i1 %conflict.rdx1284, %diff.check1285
  %i.ga = sub nsw i64 %i.eu, %i.fa
  %diff.check1287 = icmp ugt i64 %i.ga, -32
  %conflict.rdx1288 = or i1 %conflict.rdx1286, %diff.check1287
  %i.gb = sub nsw i64 %i.eu, %i.fc
  %diff.check1289 = icmp ugt i64 %i.gb, -32
  %conflict.rdx1290 = or i1 %conflict.rdx1288, %diff.check1289
  %i.gc = shl nsw i64 %i.ci, 2
  %diff.check1291 = icmp ugt i64 %i.gc, -32
  %conflict.rdx1292 = or i1 %conflict.rdx1290, %diff.check1291
  %i.gd = sub nsw i64 %i.ew, %i.ey
  %diff.check1293 = icmp ugt i64 %i.gd, -32
  %conflict.rdx1294 = or i1 %conflict.rdx1292, %diff.check1293
  %i.ge = sub nsw i64 %i.ew, %i.fa
  %diff.check1295 = icmp ugt i64 %i.ge, -32
  %conflict.rdx1296 = or i1 %conflict.rdx1294, %diff.check1295
  %i.gf = sub nsw i64 %i.ew, %i.fc
  %diff.check1297 = icmp ugt i64 %i.gf, -32
  %conflict.rdx1298 = or i1 %conflict.rdx1296, %diff.check1297
  %i.gg = shl nsw i64 %i.bq, 2
  %diff.check1299 = icmp ugt i64 %i.gg, -32
  %conflict.rdx1300 = or i1 %conflict.rdx1298, %diff.check1299
end_hunk_0
begin_hunk_1_@cs_amd:bb.a
  store i32 %i.ww, ptr %i.wx, align 4, !tbaa !52
  %i.wy = load i32, ptr %i.ws, align 4, !tbaa !52
  %i.wz = sext i32 %i.wy to i64
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.wz
  store i32 %i.j, ptr %i.xa, align 4, !tbaa !52
  br label %.lr.ph1002.prol.loopexit.unr-lcssa

.lr.ph1002.prol.loopexit.unr-lcssa:               ; preds = %bb.br, %.lr.ph1002.prol
  %indvars.iv.next1102.prol = add nsw i64 %i.wn, -1
  br label %.lr.ph1002.prol.loopexit

.lr.ph1002.prol.loopexit:                         ; preds = %.lr.ph1002.prol.loopexit.unr-lcssa, %.lr.ph1002.preheader
  %indvars.iv1101.unr = phi i64 [ %i.wn, %.lr.ph1002.preheader ], [ %indvars.iv.next1102.prol, %.lr.ph1002.prol.loopexit.unr-lcssa ]
  %i.xb = icmp eq i32 %i.j, 0
  br i1 %i.xb, label %.lr.ph1004.preheader, label %.lr.ph1002

.lr.ph1004.preheader:                             ; preds = %bb.bu, %.lr.ph1002.prol.loopexit
  %i.xc = zext nneg i32 %i.j to i64
  br label %.lr.ph1004

.lr.ph1002:                                       ; preds = %.lr.ph1002.prol.loopexit, %bb.bu
  %indvars.iv1101 = phi i64 [ %indvars.iv.next1102.1, %bb.bu ], [ %indvars.iv1101.unr, %.lr.ph1002.prol.loopexit ] ; 7 uses
  %i.xd = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv1101
  %i.xe = load i32, ptr %i.xd, align 4, !tbaa !52
  %i.xf = icmp sgt i32 %i.xe, 0
  br i1 %i.xf, label %.lr.ph1002.1, label %bb.bs

bb.bs:                                            ; preds = %.lr.ph1002
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv1101 ; 2 uses
  %i.xh = load i32, ptr %i.xg, align 4, !tbaa !52
  %i.xi = sext i32 %i.xh to i64
  %i.xj = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.xi
  %i.xk = load i32, ptr %i.xj, align 4, !tbaa !52
  %i.xl = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv1101
  store i32 %i.xk, ptr %i.xl, align 4, !tbaa !52
  %i.xm = load i32, ptr %i.xg, align 4, !tbaa !52
  %i.xn = sext i32 %i.xm to i64
  %i.xo = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.xn
  %i.xp = trunc nuw nsw i64 %indvars.iv1101 to i32
  store i32 %i.xp, ptr %i.xo, align 4, !tbaa !52
  br label %.lr.ph1002.1

.lr.ph1002.1:                                     ; preds = %.lr.ph1002, %bb.bs
  %indvars.iv.next1102 = add nsw i64 %indvars.iv1101, -1 ; 4 uses
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv.next1102
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !52
  %i.xs = icmp sgt i32 %i.xr, 0
  br i1 %i.xs, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %.lr.ph1002.1
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv.next1102 ; 2 uses
  %i.xu = load i32, ptr %i.xt, align 4, !tbaa !52
  %i.xv = sext i32 %i.xu to i64
  %i.xw = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.xv
  %i.xx = load i32, ptr %i.xw, align 4, !tbaa !52
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv.next1102
  store i32 %i.xx, ptr %i.xy, align 4, !tbaa !52
  %i.xz = load i32, ptr %i.xt, align 4, !tbaa !52
  %i.ya = sext i32 %i.xz to i64
  %i.yb = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.ya
  %i.yc = trunc nuw nsw i64 %indvars.iv.next1102 to i32
  store i32 %i.yc, ptr %i.yb, align 4, !tbaa !52
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %.lr.ph1002.1
  %indvars.iv.next1102.1 = add nsw i64 %indvars.iv1101, -2
  %i.yd = icmp sgt i64 %indvars.iv1101, 1
  br i1 %i.yd, label %.lr.ph1002, label %.lr.ph1004.preheader, !llvm.loop !40

.preheader:                                       ; preds = %bb.bx, %.preheader846
  br i1 %.not784869116411661169, label %.sink.split1230, label %.lr.ph1008.preheader

.lr.ph1008.preheader:                             ; preds = %.preheader
  %wide.trip.count1110 = zext nneg i32 %i.bd to i64
  br label %.lr.ph1008

.lr.ph1004:                                       ; preds = %.lr.ph1004.preheader, %bb.bx
  %indvars.iv1104 = phi i64 [ %i.xc, %.lr.ph1004.preheader ], [ %indvars.iv.next1105, %bb.bx ] ; 6 uses
  %i.ye = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %indvars.iv1104
  %i.yf = load i32, ptr %i.ye, align 4, !tbaa !52
  %i.yg = icmp slt i32 %i.yf, 1
  br i1 %i.yg, label %bb.bx, label %bb.bv

bb.bv:                                            ; preds = %.lr.ph1004
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv1104 ; 2 uses
  %i.yi = load i32, ptr %i.yh, align 4, !tbaa !52 ; 2 uses
  %.not787 = icmp eq i32 %i.yi, -1
  br i1 %.not787, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.yj = sext i32 %i.yi to i64
  %i.yk = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.yj
  %i.yl = load i32, ptr %i.yk, align 4, !tbaa !52
  %i.ym = getelementptr inbounds nuw [4 x i8], ptr %i.bu, i64 %indvars.iv1104
  store i32 %i.yl, ptr %i.ym, align 4, !tbaa !52
  %i.yn = load i32, ptr %i.yh, align 4, !tbaa !52
  %i.yo = sext i32 %i.yn to i64
  %i.yp = getelementptr inbounds [4 x i8], ptr %i.bx, i64 %i.yo
  %i.yq = trunc nuw nsw i64 %indvars.iv1104 to i32
  store i32 %i.yq, ptr %i.yp, align 4, !tbaa !52
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bv, %bb.bw, %.lr.ph1004
  %indvars.iv.next1105 = add nsw i64 %indvars.iv1104, -1
  %i.yr = icmp sgt i64 %indvars.iv1104, 0
  br i1 %i.yr, label %.lr.ph1004, label %.preheader, !llvm.loop !41

.lr.ph1008:                                       ; preds = %.lr.ph1008.preheader, %bb.bz
  %indvars.iv1107 = phi i64 [ 0, %.lr.ph1008.preheader ], [ %indvars.iv.next1108, %bb.bz ] ; 3 uses
  %.37211007 = phi i32 [ 0, %.lr.ph1008.preheader ], [ %.4722, %bb.bz ] ; 2 uses
  %i.ys = getelementptr inbounds nuw [4 x i8], ptr %i.az, i64 %indvars.iv1107
  %i.yt = load i32, ptr %i.ys, align 4, !tbaa !52
  %i.yu = icmp eq i32 %i.yt, -1
  br i1 %i.yu, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.lr.ph1008
  %i.yv = trunc nuw nsw i64 %indvars.iv1107 to i32
  %i.yw = tail call i32 @cs_tdfs(i32 noundef %i.yv, i32 noundef %.37211007, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.bu, ptr noundef nonnull %i.be, ptr noundef nonnull %i.cg) #7
  br label %bb.bz

bb.bz:                                            ; preds = %.lr.ph1008, %bb.by
  %.4722 = phi i32 [ %i.yw, %bb.by ], [ %.37211007, %.lr.ph1008 ]
  %indvars.iv.next1108 = add nuw nsw i64 %indvars.iv1107, 1 ; 2 uses
  %exitcond1111.not = icmp eq i64 %indvars.iv.next1108, %wide.trip.count1110
  br i1 %exitcond1111.not, label %.sink.split1230, label %.lr.ph1008, !llvm.loop !42

.sink.split1230:                                  ; preds = %bb.bz, %.preheader, %bb.l, %bb.m
  %.sink1231 = phi i32 [ 0, %bb.l ], [ 0, %bb.m ], [ 1, %.preheader ], [ 1, %bb.bz ]
  %i.yx = tail call ptr @cs_idone(ptr noundef %i.be, ptr noundef nonnull %.0746, ptr noundef %i.bh, i32 noundef %.sink1231) #7
  br label %bb.ca

bb.ca:                                            ; preds = %.sink.split1230, %bb.k, %bb.c, %bb.a, %bb.b
  %.0747 = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ null, %bb.k ], [ null, %bb.c ], [ %i.yx, %.sink.split1230 ]
  ret ptr %.0747
}

declare ptr @cs_transpose(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #2

declare ptr @cs_add(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #1

declare ptr @cs_multiply(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @cs_spfree(ptr noundef) local_unnamed_addr #1

declare i32 @cs_fkeep(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef range(i32 0, 2) i32 @cs_diag(i32 noundef %0, i32 noundef %1, double %2, ptr nofree readnone captures(none) %3) #3 {
bb.a:
  %i.a = icmp ne i32 %0, %1
  %i.b = zext i1 %i.a to i32
  ret i32 %i.b
}

declare ptr @cs_malloc(i32 noundef, i64 noundef) local_unnamed_addr #1

declare i32 @cs_sprealloc(ptr noundef, i32 noundef) local_unnamed_addr #1

declare ptr @cs_idone(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @cs_tdfs(i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C/C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = distinct !{!8, !53}
!9 = distinct !{!9, !53}
!10 = distinct !{!10, i1 false, !"LVerDomain"}
!11 = distinct !{!11, !10}
!12 = distinct !{!12, !10}
!13 = distinct !{!13, !53, !56, !57}
!14 = distinct !{!14, !58}
!15 = distinct !{!15, !53, !56}
!16 = distinct !{!16, !53, !56, !57}
!17 = distinct !{!17, !53, !56}
!18 = distinct !{!18, !53, !56, !57}
!19 = distinct !{!19, !53, !57, !56}
!20 = distinct !{!20, !53}
!21 = distinct !{!21, !53, !56, !57}
!22 = distinct !{!22, !53}
!23 = distinct !{!23, !53}
!24 = distinct !{!24, !53}
!25 = distinct !{!25, !53}
!26 = distinct !{!26, !53}
!27 = distinct !{!27, !53}
!28 = distinct !{!28, !53}
!29 = distinct !{!29, !53}
!30 = distinct !{!30, !53}
!31 = distinct !{!31, !53}
!32 = distinct !{!32, !53}
!33 = distinct !{!33, !53}
!34 = distinct !{!34, !53}
!35 = distinct !{!35, !53}
!36 = distinct !{!36, !53}
!37 = distinct !{!37, !53}
!38 = distinct !{!38, !53}
!39 = distinct !{!39, !53, !57, !56}
!40 = distinct !{!40, !53}
!41 = distinct !{!41, !53}
!42 = distinct !{!42, !53}
!43 = !{!"any pointer", !4, i64 0}
!44 = !{!"p1 int", !43, i64 0}
!45 = !{!"p1 double", !43, i64 0}
!46 = !{!"cs_sparse", !5, i64 0, !5, i64 4, !5, i64 8, !44, i64 16, !44, i64 24, !45, i64 32, !5, i64 40}
!47 = !{!46, !5, i64 40}
!48 = !{!46, !5, i64 4}
!49 = !{!46, !5, i64 8}
!50 = !{!46, !44, i64 16}
!51 = !{!46, !44, i64 24}
!52 = !{!5, !5, i64 0}
!53 = !{!"llvm.loop.mustprogress"}
!54 = !{!11}
!55 = !{!12}
!56 = !{!"llvm.loop.isvectorized", i32 1}
!57 = !{!"llvm.loop.unroll.runtime.disable"}
!58 = !{!"llvm.loop.unroll.disable"}
!59 = !{!46, !5, i64 0}
end_hunk_1
