begin_hunk_0_@comm:bb.a
  %i.ci = add nsw i32 %i.aq, -1
  %i.cj = icmp eq i32 %i.ap, %i.ci
  br i1 %i.cj, label %bb.t, label %bb.aa

bb.t:                                             ; preds = %bb.s
  %i.ck = tail call double @timer() #6
  %i.cl = getelementptr inbounds [16 x i8], ptr %i.an, i64 %indvars.iv
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !4  ; 6 uses
  %i.cn = icmp sgt i32 %i.cm, %i.af
  br i1 %i.cn, label %.preheader101, label %.loopexit

.preheader101:                                    ; preds = %bb.t
  %i.co = trunc nsw i64 %indvars.iv to i32
  %i.cp = srem i32 %i.co, 2
  %i.cq = sub nsw i32 %i.t, %i.cp                 ; 5 uses
  %i.cr = sext i32 %i.cm to i64                   ; 4 uses
  %i.cs = sext i32 %i.cq to i64                   ; 4 uses
  %i.ct = load ptr, ptr @blocks, align 8, !tbaa !11 ; 2 uses
  %i.cu = getelementptr inbounds [192 x i8], ptr %i.ct, i64 %i.cr
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 76
  %i.cw = getelementptr inbounds [16 x i8], ptr %i.cv, i64 %i.cs
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !4
  %i.cy = icmp eq i32 %i.cx, %i.af
  br i1 %i.cy, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.preheader101
  tail call void @on_proc_comm_diff(i32 noundef %i.cm, i32 noundef %i.af, i32 noundef %i.cq, i32 noundef 0, i32 noundef 0, i32 noundef %0, i32 noundef %1)
  %i.cz = load i32, ptr %i.u, align 4, !tbaa !4
  %i.da = add nsw i32 %i.cz, 2
  store i32 %i.da, ptr %i.u, align 4, !tbaa !4
  %.pre = load ptr, ptr @blocks, align 8, !tbaa !11
  br label %bb.v

bb.v:                                             ; preds = %.preheader101, %bb.u
  %i.db = phi ptr [ %i.ct, %.preheader101 ], [ %.pre, %bb.u ] ; 2 uses
  %i.dc = getelementptr inbounds [192 x i8], ptr %i.db, i64 %i.cr
  %i.dd = getelementptr [16 x i8], ptr %i.dc, i64 %i.cs
  %i.de = getelementptr i8, ptr %i.dd, i64 80
  %i.df = load i32, ptr %i.de, align 4, !tbaa !4
  %i.dg = icmp eq i32 %i.df, %i.af
  br i1 %i.dg, label %bb.w, label %.preheader101.1

bb.w:                                             ; preds = %bb.v
  tail call void @on_proc_comm_diff(i32 noundef %i.cm, i32 noundef %i.af, i32 noundef %i.cq, i32 noundef 0, i32 noundef 1, i32 noundef %0, i32 noundef %1)
  %i.dh = load i32, ptr %i.u, align 4, !tbaa !4
  %i.di = add nsw i32 %i.dh, 2
  store i32 %i.di, ptr %i.u, align 4, !tbaa !4
  %.pre124 = load ptr, ptr @blocks, align 8, !tbaa !11
  br label %.preheader101.1

.preheader101.1:                                  ; preds = %bb.w, %bb.v
  %i.dj = phi ptr [ %.pre124, %bb.w ], [ %i.db, %bb.v ] ; 2 uses
  %i.dk = getelementptr inbounds [192 x i8], ptr %i.dj, i64 %i.cr
  %i.dl = getelementptr [16 x i8], ptr %i.dk, i64 %i.cs
  %i.dm = getelementptr i8, ptr %i.dl, i64 84
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !4
  %i.do = icmp eq i32 %i.dn, %i.af
  br i1 %i.do, label %bb.x, label %bb.y

bb.x:                                             ; preds = %.preheader101.1
  tail call void @on_proc_comm_diff(i32 noundef %i.cm, i32 noundef %i.af, i32 noundef %i.cq, i32 noundef 1, i32 noundef 0, i32 noundef %0, i32 noundef %1)
  %i.dp = load i32, ptr %i.u, align 4, !tbaa !4
  %i.dq = add nsw i32 %i.dp, 2
  store i32 %i.dq, ptr %i.u, align 4, !tbaa !4
  %.pre125 = load ptr, ptr @blocks, align 8, !tbaa !11
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.preheader101.1
  %i.dr = phi ptr [ %.pre125, %bb.x ], [ %i.dj, %.preheader101.1 ]
  %i.ds = getelementptr inbounds [192 x i8], ptr %i.dr, i64 %i.cr
  %i.dt = getelementptr [16 x i8], ptr %i.ds, i64 %i.cs
  %i.du = getelementptr i8, ptr %i.dt, i64 88
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !4
  %i.dw = icmp eq i32 %i.dv, %i.af
  br i1 %i.dw, label %bb.z, label %.loopexit

bb.z:                                             ; preds = %bb.y
  tail call void @on_proc_comm_diff(i32 noundef %i.cm, i32 noundef %i.af, i32 noundef %i.cq, i32 noundef 1, i32 noundef 1, i32 noundef %0, i32 noundef %1)
  %i.dx = load i32, ptr %i.u, align 4, !tbaa !4
  %i.dy = add nsw i32 %i.dx, 2
  store i32 %i.dy, ptr %i.u, align 4, !tbaa !4
  br label %.loopexit

.loopexit:                                        ; preds = %bb.y, %bb.z, %bb.t
  %i.dz = tail call double @timer() #6
  %i.ea = fsub double %i.dz, %i.ck
  %i.eb = load double, ptr %i.v, align 8, !tbaa !21
  %i.ec = fadd double %i.eb, %i.ea
  store double %i.ec, ptr %i.v, align 8, !tbaa !21
  br label %bb.ad

bb.aa:                                            ; preds = %bb.s
  %i.ed = icmp eq i32 %i.ap, -2
  br i1 %i.ed, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.ee = tail call double @timer() #6
  %i.ef = trunc nsw i64 %indvars.iv to i32
  tail call void @apply_bc(i32 noundef %i.ef, ptr noundef nonnull %i.ai, i32 noundef %0, i32 noundef %1)
  %i.eg = load i32, ptr %i.r, align 4, !tbaa !4
  %i.eh = add nsw i32 %i.eg, 1
  store i32 %i.eh, ptr %i.r, align 4, !tbaa !4
  %i.ei = tail call double @timer() #6
  %i.ej = fsub double %i.ei, %i.ee
  %i.ek = load double, ptr %i.s, align 8, !tbaa !21
  %i.el = fadd double %i.ek, %i.ej
  store double %i.el, ptr %i.s, align 8, !tbaa !21
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  tail call void @exit(i32 noundef -1) #7
  unreachable

bb.ad:                                            ; preds = %bb.j, %.loopexit, %bb.ab, %bb.r
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next to i32
  %exitcond = icmp eq i32 %i.z, %lftr.wideiv
  br i1 %exitcond, label %.loopexit102.loopexit, label %bb.g, !llvm.loop !23

.loopexit102.loopexit:                            ; preds = %bb.ad
  %.pre126 = load ptr, ptr @sorted_index, align 8, !tbaa !8
  %.pre127 = load i32, ptr @num_refine, align 4, !tbaa !4
  br label %.loopexit102

.loopexit102:                                     ; preds = %.loopexit102.loopexit, %bb.e
  %i.em = phi i32 [ %.pre127, %.loopexit102.loopexit ], [ %i.aa, %bb.e ] ; 2 uses
  %i.en = phi ptr [ %.pre126, %.loopexit102.loopexit ], [ %i.ab, %bb.e ] ; 2 uses
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.eo = sext i32 %i.em to i64
  %i.ep = getelementptr [4 x i8], ptr %i.en, i64 %i.eo
  %i.eq = getelementptr i8, ptr %i.ep, i64 4
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !4
  %i.es = sext i32 %i.er to i64
  %i.et = icmp slt i64 %indvars.iv.next118, %i.es
  br i1 %i.et, label %bb.e, label %._crit_edge, !llvm.loop !25

._crit_edge:                                      ; preds = %.loopexit102, %.._crit_edge_crit_edge
  %.pre-phi = phi i64 [ %.pre128, %.._crit_edge_crit_edge ], [ %i.q, %.loopexit102 ]
  %i.eu = tail call double @timer() #6
  %i.ev = fsub double %i.eu, %i.h
  %i.ew = getelementptr inbounds [8 x i8], ptr @timer_comm_dir, i64 %.pre-phi ; 2 uses
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !21
  %i.ey = fadd double %i.ex, %i.ev
  store double %i.ey, ptr %i.ew, align 8, !tbaa !21
  %indvars.iv.next121 = add nuw nsw i64 %indvars.iv120, 1 ; 2 uses
  %exitcond123.not = icmp eq i64 %indvars.iv.next121, 3
  br i1 %exitcond123.not, label %bb.ae, label %bb.b, !llvm.loop !26

bb.ae:                                            ; preds = %._crit_edge
  ret void
}

declare double @timer() local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @on_proc_comm(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @code, align 4, !tbaa !4
  %.not = icmp eq i32 %i.a, 0
  %.off = add i32 %2, 1
  %i.b = icmp ult i32 %.off, 3                    ; 2 uses
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = add nsw i32 %4, %3
  %i.d = icmp sgt i32 %4, 0
  br i1 %i.d, label %.preheader240.lr.ph, label %.loopexit

.preheader240.lr.ph:                              ; preds = %bb.c
  %i.e = load i32, ptr @y_block_size, align 4, !tbaa !4 ; 2 uses
  %.not229303 = icmp slt i32 %i.e, 1
  %i.f = load i32, ptr @z_block_size, align 4     ; 6 uses
  %.not230300 = icmp slt i32 %i.f, 1
  %or.cond = select i1 %.not229303, i1 true, i1 %.not230300
  br i1 %or.cond, label %.loopexit, label %.preheader240.lr.ph.split.split

.preheader240.lr.ph.split.split:                  ; preds = %.preheader240.lr.ph
  %i.g = and i32 %2, 1
  %i.h = icmp eq i32 %i.g, 0                      ; 2 uses
  %i.i = load ptr, ptr @blocks, align 8, !tbaa !11 ; 2 uses
  %i.j = sext i32 %1 to i64
  %i.k = getelementptr inbounds [192 x i8], ptr %i.i, i64 %i.j ; 2 uses
  %i.l = sext i32 %0 to i64
  %i.m = getelementptr inbounds [192 x i8], ptr %i.i, i64 %i.l ; 2 uses
  %.414 = select i1 %i.h, ptr %i.k, ptr %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %.414, i64 184
  %. = select i1 %i.h, ptr %i.m, ptr %i.k
  %i.o = getelementptr inbounds nuw i8, ptr %., i64 184
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !27
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !27
  %i.r = add nuw i32 %i.f, 1
  %i.s = add nuw i32 %i.e, 1
  %i.t = sext i32 %3 to i64
  %i.u = sext i32 %i.c to i64
  %wide.trip.count395 = zext i32 %i.s to i64
  %wide.trip.count390 = zext i32 %i.r to i64
  %i.v = zext nneg i32 %i.f to i64
  %i.w = zext nneg i32 %i.f to i64                ; 2 uses
  %min.iters.check508 = icmp ult i32 %i.f, 12
  %n.vec511 = and i64 %i.w, 2147483644            ; 3 uses
  %i.x = or disjoint i64 %n.vec511, 1
  %cmp.n520 = icmp eq i64 %n.vec511, %i.w
  %i.y = and i32 %i.f, 1
  %lcmp.mod537.not = icmp eq i32 %i.y, 0
  br label %.preheader240

.preheader240:                                    ; preds = %.preheader240.lr.ph.split.split, %._crit_edge305.split
  %indvars.iv397 = phi i64 [ %i.t, %.preheader240.lr.ph.split.split ], [ %indvars.iv.next398, %._crit_edge305.split ] ; 3 uses
  %i.z = load i32, ptr @x_block_size, align 4
  %i.aa = sext i32 %i.z to i64
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.p, i64 %indvars.iv397
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !28 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !30
  %i.af = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv397
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !28
  %i.ah = getelementptr [8 x i8], ptr %i.ag, i64 %i.aa ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !30
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !30
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !30
  br label %.preheader

.preheader:                                       ; preds = %.preheader240, %._crit_edge302
  %indvars.iv392 = phi i64 [ 1, %.preheader240 ], [ %indvars.iv.next393, %._crit_edge302 ] ; 5 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv392
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !32 ; 5 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv392
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !32 ; 5 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %indvars.iv392
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !32 ; 5 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv392
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !32 ; 5 uses
  br i1 %min.iters.check508, label %scalar.ph507.preheader, label %vector.memcheck497

vector.memcheck497:                               ; preds = %.preheader
  %i.au = ptrtoaddr ptr %i.at to i64              ; 3 uses
  %i.av = ptrtoaddr ptr %i.ar to i64              ; 2 uses
  %i.aw = ptrtoaddr ptr %i.ap to i64              ; 3 uses
  %i.ax = ptrtoaddr ptr %i.an to i64              ; 2 uses
  %i.ay = sub i64 %i.au, %i.aw
  %diff.check498 = icmp ult i64 %i.ay, 32
  %i.az = sub i64 %i.aw, %i.ax
  %diff.check499 = icmp ult i64 %i.az, 32
  %conflict.rdx500 = or i1 %diff.check498, %diff.check499
  %i.ba = sub i64 %i.av, %i.aw
  %diff.check501 = icmp ult i64 %i.ba, 32
  %conflict.rdx502 = or i1 %conflict.rdx500, %diff.check501
  %i.bb = sub i64 %i.au, %i.ax
  %diff.check503 = icmp ult i64 %i.bb, 32
  %conflict.rdx504 = or i1 %conflict.rdx502, %diff.check503
  %i.bc = sub i64 %i.au, %i.av
  %diff.check505 = icmp ult i64 %i.bc, 32
  %conflict.rdx506 = or i1 %conflict.rdx504, %diff.check505
  br i1 %conflict.rdx506, label %scalar.ph507.preheader, label %vector.body512

vector.body512:                                   ; preds = %vector.memcheck497, %vector.body512
  %index513 = phi i64 [ %index.next518, %vector.body512 ], [ 0, %vector.memcheck497 ] ; 2 uses
  %i.bd = or disjoint i64 %index513, 1            ; 4 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.bd ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %wide.load514 = load <2 x double>, ptr %i.be, align 8, !tbaa !21
  %wide.load515 = load <2 x double>, ptr %i.bf, align 8, !tbaa !21
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.bd ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store <2 x double> %wide.load514, ptr %i.bg, align 8, !tbaa !21
  store <2 x double> %wide.load515, ptr %i.bh, align 8, !tbaa !21
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.bd ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %wide.load516 = load <2 x double>, ptr %i.bi, align 8, !tbaa !21
  %wide.load517 = load <2 x double>, ptr %i.bj, align 8, !tbaa !21
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.bd ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store <2 x double> %wide.load516, ptr %i.bk, align 8, !tbaa !21
  store <2 x double> %wide.load517, ptr %i.bl, align 8, !tbaa !21
  %index.next518 = add nuw i64 %index513, 4       ; 2 uses
  %i.bm = icmp eq i64 %index.next518, %n.vec511
  br i1 %i.bm, label %middle.block519, label %vector.body512, !llvm.loop !34

middle.block519:                                  ; preds = %vector.body512
  br i1 %cmp.n520, label %._crit_edge302, label %scalar.ph507.preheader

scalar.ph507.preheader:                           ; preds = %vector.memcheck497, %.preheader, %middle.block519
  %indvars.iv387.ph = phi i64 [ 1, %vector.memcheck497 ], [ 1, %.preheader ], [ %i.x, %middle.block519 ] ; 7 uses
  br i1 %lcmp.mod537.not, label %scalar.ph507.prol.loopexit, label %scalar.ph507.prol

scalar.ph507.prol:                                ; preds = %scalar.ph507.preheader
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv387.ph
  %i.bo = load double, ptr %i.bn, align 8, !tbaa !21
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv387.ph
  store double %i.bo, ptr %i.bp, align 8, !tbaa !21
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv387.ph
  %i.br = load double, ptr %i.bq, align 8, !tbaa !21
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv387.ph
  store double %i.br, ptr %i.bs, align 8, !tbaa !21
  %indvars.iv.next388.prol = add nuw nsw i64 %indvars.iv387.ph, 1
  br label %scalar.ph507.prol.loopexit

scalar.ph507.prol.loopexit:                       ; preds = %scalar.ph507.prol, %scalar.ph507.preheader
  %indvars.iv387.unr = phi i64 [ %indvars.iv387.ph, %scalar.ph507.preheader ], [ %indvars.iv.next388.prol, %scalar.ph507.prol ]
  %i.bt = icmp eq i64 %indvars.iv387.ph, %i.v
  br i1 %i.bt, label %._crit_edge302, label %scalar.ph507

scalar.ph507:                                     ; preds = %scalar.ph507.prol.loopexit, %scalar.ph507
  %indvars.iv387 = phi i64 [ %indvars.iv.next388.1, %scalar.ph507 ], [ %indvars.iv387.unr, %scalar.ph507.prol.loopexit ] ; 6 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv387
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !21
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv387
  store double %i.bv, ptr %i.bw, align 8, !tbaa !21
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv387
  %i.by = load double, ptr %i.bx, align 8, !tbaa !21
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv387
  store double %i.by, ptr %i.bz, align 8, !tbaa !21
  %indvars.iv.next388 = add nuw nsw i64 %indvars.iv387, 1 ; 4 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %indvars.iv.next388
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !21
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %indvars.iv.next388
  store double %i.cb, ptr %i.cc, align 8, !tbaa !21
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv.next388
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !21
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %indvars.iv.next388
  store double %i.ce, ptr %i.cf, align 8, !tbaa !21
  %indvars.iv.next388.1 = add nuw nsw i64 %indvars.iv387, 2 ; 2 uses
  %exitcond391.not.1 = icmp eq i64 %indvars.iv.next388.1, %wide.trip.count390
  br i1 %exitcond391.not.1, label %._crit_edge302, label %scalar.ph507, !llvm.loop !37

._crit_edge302:                                   ; preds = %scalar.ph507.prol.loopexit, %scalar.ph507, %middle.block519
  %indvars.iv.next393 = add nuw nsw i64 %indvars.iv392, 1 ; 2 uses
  %exitcond396.not = icmp eq i64 %indvars.iv.next393, %wide.trip.count395
  br i1 %exitcond396.not, label %._crit_edge305.split, label %.preheader, !llvm.loop !38

._crit_edge305.split:                             ; preds = %._crit_edge302
  %indvars.iv.next398 = add nsw i64 %indvars.iv397, 1 ; 2 uses
  %i.cg = icmp slt i64 %indvars.iv.next398, %i.u
  br i1 %i.cg, label %.preheader240, label %.loopexit, !llvm.loop !39

bb.d:                                             ; preds = %bb.b
  %i.ch = and i32 %2, -2
  switch i32 %i.ch, label %.loopexit [
    i32 2, label %bb.e
    i32 4, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.ci = load i32, ptr @stencil, align 4, !tbaa !4
  %i.cj = icmp eq i32 %i.ci, 7                    ; 3 uses
  %i.ck = load i32, ptr @x_block_size, align 4
  %not. = xor i1 %i.cj, true
  %i.cl = zext i1 %not. to i32
  %.0199 = add i32 %i.ck, %i.cl                   ; 2 uses
  %i.cm = add nsw i32 %4, %3
  %i.cn = icmp sgt i32 %4, 0
  br i1 %i.cn, label %.preheader242.lr.ph, label %.loopexit

.preheader242.lr.ph:                              ; preds = %bb.e
  %.0201 = zext i1 %i.cj to i32
  %.not227294 = icmp slt i32 %.0199, %.0201
  %i.co = load i32, ptr @z_block_size, align 4    ; 6 uses
  %.not228291 = icmp slt i32 %i.co, 1
  %or.cond417 = select i1 %.not227294, i1 true, i1 %.not228291
  br i1 %or.cond417, label %.loopexit, label %.preheader242.lr.ph.split.split

.preheader242.lr.ph.split.split:                  ; preds = %.preheader242.lr.ph
  %i.cp = and i32 %2, 1
  %i.cq = icmp eq i32 %i.cp, 0                    ; 2 uses
  %i.cr = load ptr, ptr @blocks, align 8, !tbaa !11 ; 2 uses
  %i.cs = sext i32 %1 to i64
  %i.ct = getelementptr inbounds [192 x i8], ptr %i.cr, i64 %i.cs ; 2 uses
  %i.cu = sext i32 %0 to i64
  %i.cv = getelementptr inbounds [192 x i8], ptr %i.cr, i64 %i.cu ; 2 uses
  %.416 = select i1 %i.cq, ptr %i.ct, ptr %i.cv
  %i.cw = getelementptr inbounds nuw i8, ptr %.416, i64 184
  %.415 = select i1 %i.cq, ptr %i.cv, ptr %i.ct
  %i.cx = getelementptr inbounds nuw i8, ptr %.415, i64 184
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !27
  %i.cz = load ptr, ptr %i.cw, align 8, !tbaa !27
  %i.da = add nuw i32 %i.co, 1
  %i.db = zext i1 %i.cj to i64
  %i.dc = add nuw i32 %.0199, 1
  %i.dd = sext i32 %3 to i64
  %i.de = sext i32 %i.cm to i64
  %wide.trip.count382 = zext i32 %i.dc to i64
  %wide.trip.count377 = zext i32 %i.da to i64
  %i.df = zext nneg i32 %i.co to i64
  %i.dg = zext nneg i32 %i.co to i64              ; 2 uses
  %min.iters.check483 = icmp ult i32 %i.co, 12
  %n.vec486 = and i64 %i.dg, 2147483644           ; 3 uses
  %i.dh = or disjoint i64 %n.vec486, 1
  %cmp.n495 = icmp eq i64 %n.vec486, %i.dg
  %i.di = and i32 %i.co, 1
  %lcmp.mod535.not = icmp eq i32 %i.di, 0
  br label %.preheader242

.preheader242:                                    ; preds = %.preheader242.lr.ph.split.split, %._crit_edge296.split
  %indvars.iv384 = phi i64 [ %i.dd, %.preheader242.lr.ph.split.split ], [ %indvars.iv.next385, %._crit_edge296.split ] ; 3 uses
  %i.dj = load i32, ptr @y_block_size, align 4
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [8 x i8], ptr %i.cy, i64 %indvars.iv384
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !28
  %i.dn = getelementptr inbounds [8 x i8], ptr %i.cz, i64 %indvars.iv384
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !28
  br label %.preheader241

.preheader241:                                    ; preds = %.preheader242, %._crit_edge293
  %indvars.iv379 = phi i64 [ %i.db, %.preheader242 ], [ %indvars.iv.next380, %._crit_edge293 ] ; 3 uses
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.dm, i64 %indvars.iv379
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !30 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !32 ; 5 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %indvars.iv379
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !30
  %i.dv = getelementptr [8 x i8], ptr %i.du, i64 %i.dk ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !32 ; 5 uses
  %i.dy = load ptr, ptr %i.dv, align 8, !tbaa !32 ; 5 uses
  %i.dz = load ptr, ptr %i.dq, align 8, !tbaa !32 ; 5 uses
  br i1 %min.iters.check483, label %scalar.ph482.preheader, label %vector.memcheck472

vector.memcheck472:                               ; preds = %.preheader241
  %i.ea = ptrtoaddr ptr %i.dz to i64              ; 3 uses
  %i.eb = ptrtoaddr ptr %i.dy to i64              ; 2 uses
  %i.ec = ptrtoaddr ptr %i.dx to i64              ; 3 uses
  %i.ed = ptrtoaddr ptr %i.ds to i64              ; 2 uses
  %i.ee = sub i64 %i.ea, %i.ec
  %diff.check473 = icmp ult i64 %i.ee, 32
  %i.ef = sub i64 %i.ec, %i.ed
  %diff.check474 = icmp ult i64 %i.ef, 32
  %conflict.rdx475 = or i1 %diff.check473, %diff.check474
  %i.eg = sub i64 %i.eb, %i.ec
  %diff.check476 = icmp ult i64 %i.eg, 32
  %conflict.rdx477 = or i1 %conflict.rdx475, %diff.check476
  %i.eh = sub i64 %i.ea, %i.ed
  %diff.check478 = icmp ult i64 %i.eh, 32
  %conflict.rdx479 = or i1 %conflict.rdx477, %diff.check478
  %i.ei = sub i64 %i.ea, %i.eb
  %diff.check480 = icmp ult i64 %i.ei, 32
  %conflict.rdx481 = or i1 %conflict.rdx479, %diff.check480
  br i1 %conflict.rdx481, label %scalar.ph482.preheader, label %vector.body487

vector.body487:                                   ; preds = %vector.memcheck472, %vector.body487
  %index488 = phi i64 [ %index.next493, %vector.body487 ], [ 0, %vector.memcheck472 ] ; 2 uses
  %i.ej = or disjoint i64 %index488, 1            ; 4 uses
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %i.ej ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  %wide.load489 = load <2 x double>, ptr %i.ek, align 8, !tbaa !21
  %wide.load490 = load <2 x double>, ptr %i.el, align 8, !tbaa !21
  %i.em = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.ej ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  store <2 x double> %wide.load489, ptr %i.em, align 8, !tbaa !21
  store <2 x double> %wide.load490, ptr %i.en, align 8, !tbaa !21
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %i.ej ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  %wide.load491 = load <2 x double>, ptr %i.eo, align 8, !tbaa !21
  %wide.load492 = load <2 x double>, ptr %i.ep, align 8, !tbaa !21
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %i.ej ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  store <2 x double> %wide.load491, ptr %i.eq, align 8, !tbaa !21
  store <2 x double> %wide.load492, ptr %i.er, align 8, !tbaa !21
  %index.next493 = add nuw i64 %index488, 4       ; 2 uses
  %i.es = icmp eq i64 %index.next493, %n.vec486
  br i1 %i.es, label %middle.block494, label %vector.body487, !llvm.loop !40

middle.block494:                                  ; preds = %vector.body487
  br i1 %cmp.n495, label %._crit_edge293, label %scalar.ph482.preheader

scalar.ph482.preheader:                           ; preds = %vector.memcheck472, %.preheader241, %middle.block494
  %indvars.iv374.ph = phi i64 [ 1, %vector.memcheck472 ], [ 1, %.preheader241 ], [ %i.dh, %middle.block494 ] ; 7 uses
  br i1 %lcmp.mod535.not, label %scalar.ph482.prol.loopexit, label %scalar.ph482.prol

scalar.ph482.prol:                                ; preds = %scalar.ph482.preheader
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv374.ph
  %i.eu = load double, ptr %i.et, align 8, !tbaa !21
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv374.ph
  store double %i.eu, ptr %i.ev, align 8, !tbaa !21
  %i.ew = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv374.ph
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !21
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv374.ph
  store double %i.ex, ptr %i.ey, align 8, !tbaa !21
  %indvars.iv.next375.prol = add nuw nsw i64 %indvars.iv374.ph, 1
  br label %scalar.ph482.prol.loopexit

scalar.ph482.prol.loopexit:                       ; preds = %scalar.ph482.prol, %scalar.ph482.preheader
  %indvars.iv374.unr = phi i64 [ %indvars.iv374.ph, %scalar.ph482.preheader ], [ %indvars.iv.next375.prol, %scalar.ph482.prol ]
  %i.ez = icmp eq i64 %indvars.iv374.ph, %i.df
  br i1 %i.ez, label %._crit_edge293, label %scalar.ph482

scalar.ph482:                                     ; preds = %scalar.ph482.prol.loopexit, %scalar.ph482
  %indvars.iv374 = phi i64 [ %indvars.iv.next375.1, %scalar.ph482 ], [ %indvars.iv374.unr, %scalar.ph482.prol.loopexit ] ; 6 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv374
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !21
  %i.fc = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv374
  store double %i.fb, ptr %i.fc, align 8, !tbaa !21
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv374
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !21
  %i.ff = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv374
  store double %i.fe, ptr %i.ff, align 8, !tbaa !21
  %indvars.iv.next375 = add nuw nsw i64 %indvars.iv374, 1 ; 4 uses
  %i.fg = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.next375
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !21
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %indvars.iv.next375
  store double %i.fh, ptr %i.fi, align 8, !tbaa !21
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv.next375
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !21
  %i.fl = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv.next375
  store double %i.fk, ptr %i.fl, align 8, !tbaa !21
  %indvars.iv.next375.1 = add nuw nsw i64 %indvars.iv374, 2 ; 2 uses
  %exitcond378.not.1 = icmp eq i64 %indvars.iv.next375.1, %wide.trip.count377
  br i1 %exitcond378.not.1, label %._crit_edge293, label %scalar.ph482, !llvm.loop !41

._crit_edge293:                                   ; preds = %scalar.ph482.prol.loopexit, %scalar.ph482, %middle.block494
  %indvars.iv.next380 = add nuw nsw i64 %indvars.iv379, 1 ; 2 uses
  %exitcond383.not = icmp eq i64 %indvars.iv.next380, %wide.trip.count382
  br i1 %exitcond383.not, label %._crit_edge296.split, label %.preheader241, !llvm.loop !42

._crit_edge296.split:                             ; preds = %._crit_edge293
  %indvars.iv.next385 = add nsw i64 %indvars.iv384, 1 ; 2 uses
  %i.fm = icmp slt i64 %indvars.iv.next385, %i.de
  br i1 %i.fm, label %.preheader242, label %.loopexit, !llvm.loop !43

bb.f:                                             ; preds = %bb.d
  %i.fn = load i32, ptr @stencil, align 4, !tbaa !4
  %i.fo = icmp ne i32 %i.fn, 7                    ; 4 uses
  %i.fp = load i32, ptr @x_block_size, align 4, !tbaa !4
  %i.fq = load i32, ptr @y_block_size, align 4
  %i.fr = zext i1 %i.fo to i32
  %.1200 = add nsw i32 %i.fp, %i.fr               ; 2 uses
  %not.431 = xor i1 %i.fo, true                   ; 3 uses
  %i.fs = zext i1 %i.fo to i32
  %.0197 = add nsw i32 %i.fq, %i.fs               ; 3 uses
  %i.ft = add nsw i32 %4, %3
  %i.fu = icmp sgt i32 %4, 0
  br i1 %i.fu, label %.preheader245.lr.ph, label %.loopexit

.preheader245.lr.ph:                              ; preds = %bb.f
  %.0198 = zext i1 %not.431 to i32                ; 2 uses
  %.not225285 = icmp slt i32 %.1200, %.0198
  %.not226282 = icmp slt i32 %.0197, %.0198
  %or.cond420 = select i1 %.not225285, i1 true, i1 %.not226282
  br i1 %or.cond420, label %.loopexit, label %.preheader245.lr.ph.split.split

.preheader245.lr.ph.split.split:                  ; preds = %.preheader245.lr.ph
  %i.fv = and i32 %2, 1
  %i.fw = icmp eq i32 %i.fv, 0                    ; 2 uses
  %i.fx = load ptr, ptr @blocks, align 8, !tbaa !11 ; 2 uses
  %i.fy = sext i32 %1 to i64
  %i.fz = getelementptr inbounds [192 x i8], ptr %i.fx, i64 %i.fy ; 2 uses
  %i.ga = sext i32 %0 to i64
  %i.gb = getelementptr inbounds [192 x i8], ptr %i.fx, i64 %i.ga ; 2 uses
  %.419 = select i1 %i.fw, ptr %i.fz, ptr %i.gb
  %i.gc = getelementptr inbounds nuw i8, ptr %.419, i64 184
  %.418 = select i1 %i.fw, ptr %i.gb, ptr %i.fz
  %i.gd = getelementptr inbounds nuw i8, ptr %.418, i64 184
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !27
  %i.gf = load ptr, ptr %i.gc, align 8, !tbaa !27
  %i.gg = zext i1 %not.431 to i64                 ; 5 uses
  %i.gh = add nuw i32 %.0197, 1
  %i.gi = add nuw i32 %.1200, 1
  %i.gj = sext i32 %3 to i64
  %i.gk = sext i32 %i.ft to i64
  %wide.trip.count369 = zext i32 %i.gi to i64
  %wide.trip.count364 = zext i32 %i.gh to i64     ; 2 uses
  %i.gl = sub nsw i64 %wide.trip.count364, %i.gg
  %xtraiter532 = and i64 %i.gl, 1
  %lcmp.mod533.not = icmp eq i64 %xtraiter532, 0
  %indvars.iv.next362.prol = select i1 %i.fo, i64 1, i64 2
  %i.gm = zext i1 %not.431 to i32
  %i.gn = icmp eq i32 %.0197, %i.gm
  br label %.preheader245

.preheader245:                                    ; preds = %.preheader245.lr.ph.split.split, %._crit_edge287.split
  %indvars.iv371 = phi i64 [ %i.gj, %.preheader245.lr.ph.split.split ], [ %indvars.iv.next372, %._crit_edge287.split ] ; 3 uses
  %i.go = load i32, ptr @z_block_size, align 4
  %i.gp = sext i32 %i.go to i64                   ; 3 uses
  %i.gq = getelementptr inbounds [8 x i8], ptr %i.ge, i64 %indvars.iv371
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !28
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.gf, i64 %indvars.iv371
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !28
  br label %.preheader244

.preheader244:                                    ; preds = %.preheader245, %._crit_edge284
  %indvars.iv366 = phi i64 [ %i.gg, %.preheader245 ], [ %indvars.iv.next367, %._crit_edge284 ] ; 3 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.gr, i64 %indvars.iv366
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !30 ; 3 uses
  %i.gw = getelementptr inbounds nuw [8 x i8], ptr %i.gt, i64 %indvars.iv366
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !30 ; 3 uses
  br i1 %lcmp.mod533.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.preheader244
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %i.gg
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !32 ; 2 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !21
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %i.gg
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !32
  %i.he = getelementptr [8 x i8], ptr %i.hd, i64 %i.gp ; 2 uses
  %i.hf = getelementptr i8, ptr %i.he, i64 8
  store double %i.hb, ptr %i.hf, align 8, !tbaa !21
  %i.hg = load double, ptr %i.he, align 8, !tbaa !21
  store double %i.hg, ptr %i.gz, align 8, !tbaa !21
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.preheader244
  %indvars.iv361.unr = phi i64 [ %i.gg, %.preheader244 ], [ %indvars.iv.next362.prol, %.prol.loopexit.unr-lcssa ]
  br i1 %i.gn, label %._crit_edge284, label %.preheader244.new

.preheader244.new:                                ; preds = %.prol.loopexit, %.preheader244.new
  %indvars.iv361 = phi i64 [ %indvars.iv.next362.1, %.preheader244.new ], [ %indvars.iv361.unr, %.prol.loopexit ] ; 4 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv361
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !32 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 8
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !21
  %i.hl = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv361
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !32
  %i.hn = getelementptr [8 x i8], ptr %i.hm, i64 %i.gp ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hn, i64 8
  store double %i.hk, ptr %i.ho, align 8, !tbaa !21
  %i.hp = load double, ptr %i.hn, align 8, !tbaa !21
  store double %i.hp, ptr %i.hi, align 8, !tbaa !21
  %indvars.iv.next362 = add nuw nsw i64 %indvars.iv361, 1 ; 2 uses
  %i.hq = getelementptr inbounds nuw [8 x i8], ptr %i.gv, i64 %indvars.iv.next362
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !32 ; 2 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hr, i64 8
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !21
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.gx, i64 %indvars.iv.next362
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !32
  %i.hw = getelementptr [8 x i8], ptr %i.hv, i64 %i.gp ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hw, i64 8
  store double %i.ht, ptr %i.hx, align 8, !tbaa !21
  %i.hy = load double, ptr %i.hw, align 8, !tbaa !21
  store double %i.hy, ptr %i.hr, align 8, !tbaa !21
  %indvars.iv.next362.1 = add nuw nsw i64 %indvars.iv361, 2 ; 2 uses
  %exitcond365.not.1 = icmp eq i64 %indvars.iv.next362.1, %wide.trip.count364
  br i1 %exitcond365.not.1, label %._crit_edge284, label %.preheader244.new, !llvm.loop !44

._crit_edge284:                                   ; preds = %.preheader244.new, %.prol.loopexit
  %indvars.iv.next367 = add nuw nsw i64 %indvars.iv366, 1 ; 2 uses
  %exitcond370.not = icmp eq i64 %indvars.iv.next367, %wide.trip.count369
  br i1 %exitcond370.not, label %._crit_edge287.split, label %.preheader244, !llvm.loop !45

._crit_edge287.split:                             ; preds = %._crit_edge284
  %indvars.iv.next372 = add nsw i64 %indvars.iv371, 1 ; 2 uses
  %i.hz = icmp slt i64 %indvars.iv.next372, %i.gk
  br i1 %i.hz, label %.preheader245, label %.loopexit, !llvm.loop !46

bb.g:                                             ; preds = %bb.a
  br i1 %i.b, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ia = add nsw i32 %4, %3
  %i.ib = icmp sgt i32 %4, 0
  br i1 %i.ib, label %.preheader248.lr.ph, label %.loopexit

.preheader248.lr.ph:                              ; preds = %bb.h
  %i.ic = load i32, ptr @y_block_size, align 4, !tbaa !4 ; 2 uses
  %.not238276 = icmp slt i32 %i.ic, -1
  %i.id = load i32, ptr @z_block_size, align 4    ; 2 uses
  %.not239273 = icmp slt i32 %i.id, -1
  %or.cond423 = select i1 %.not238276, i1 true, i1 %.not239273
  br i1 %or.cond423, label %.loopexit, label %.preheader248.lr.ph.split.split

.preheader248.lr.ph.split.split:                  ; preds = %.preheader248.lr.ph
  %i.ie = and i32 %2, 1
  %i.if = icmp eq i32 %i.ie, 0                    ; 2 uses
  %i.ig = load ptr, ptr @blocks, align 8, !tbaa !11 ; 2 uses
  %i.ih = sext i32 %1 to i64
  %i.ii = getelementptr inbounds [192 x i8], ptr %i.ig, i64 %i.ih ; 2 uses
  %i.ij = sext i32 %0 to i64
  %i.ik = getelementptr inbounds [192 x i8], ptr %i.ig, i64 %i.ij ; 2 uses
  %.422 = select i1 %i.if, ptr %i.ii, ptr %i.ik
  %i.il = getelementptr inbounds nuw i8, ptr %.422, i64 184
  %.421 = select i1 %i.if, ptr %i.ik, ptr %i.ii
  %i.im = getelementptr inbounds nuw i8, ptr %.421, i64 184
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !27
  %i.io = load ptr, ptr %i.il, align 8, !tbaa !27
  %i.ip = add i32 %i.id, 2                        ; 2 uses
  %i.iq = add i32 %i.ic, 2
  %i.ir = sext i32 %3 to i64
  %i.is = sext i32 %i.ia to i64
  %wide.trip.count356 = zext i32 %i.iq to i64
  %wide.trip.count351 = zext i32 %i.ip to i64     ; 5 uses
  %min.iters.check458 = icmp ult i32 %i.ip, 12
  %n.vec461 = and i64 %wide.trip.count351, 4294967292 ; 3 uses
  %cmp.n470 = icmp eq i64 %n.vec461, %wide.trip.count351
  %xtraiter530 = and i64 %wide.trip.count351, 1
end_hunk_0
begin_hunk_1_@on_proc_comm_diff:bb.a
  store double %i.fs, ptr %i.fu, align 8, !tbaa !21
  %i.fv = add nsw i64 %i.ft, -1                   ; 4 uses
  %i.fw = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %i.fv
  store double %i.fs, ptr %i.fw, align 8, !tbaa !21
  %i.fx = getelementptr inbounds nuw [8 x i8], ptr %i.et, i64 %i.ft
  store double %i.fs, ptr %i.fx, align 8, !tbaa !21
  %i.fy = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.fv
  store double %i.fs, ptr %i.fy, align 8, !tbaa !21
  %i.fz = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %i.fv
  %i.ga = load double, ptr %i.fz, align 8, !tbaa !21
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.ev, i64 %i.ft
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !21
  %i.gd = fadd double %i.ga, %i.gc
  %i.ge = getelementptr inbounds [8 x i8], ptr %i.ex, i64 %i.fv
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !21
  %i.gg = fadd double %i.gd, %i.gf
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.ex, i64 %i.ft
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !21
  %i.gj = fadd double %i.gg, %i.gi
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.fp
  store double %i.gj, ptr %i.gk, align 8, !tbaa !21
  %indvars.iv.next1347 = add nuw nsw i64 %indvars.iv1346, 1 ; 2 uses
  %exitcond1350.not = icmp eq i64 %indvars.iv.next1347, %wide.trip.count1349
  br i1 %exitcond1350.not, label %._crit_edge1210, label %scalar.ph1836, !llvm.loop !95

._crit_edge1210:                                  ; preds = %scalar.ph1836, %middle.block1853
  %indvars.iv.next1352 = add nuw nsw i64 %indvars.iv1351, 1 ; 2 uses
  %exitcond1355.not = icmp eq i64 %indvars.iv.next1352, %wide.trip.count1354
  br i1 %exitcond1355.not, label %._crit_edge1213.split, label %.preheader1092, !llvm.loop !96

._crit_edge1213.split:                            ; preds = %._crit_edge1210
  %indvars.iv.next1357 = add nsw i64 %indvars.iv1356, 1 ; 2 uses
  %i.gl = icmp slt i64 %indvars.iv.next1357, %i.dw
  br i1 %i.gl, label %.preheader1093, label %.loopexit, !llvm.loop !97

bb.l:                                             ; preds = %bb.g
  %i.gm = icmp eq i32 %2, 4
  %i.gn = load i32, ptr @z_block_size, align 4, !tbaa !4 ; 3 uses
  %i.go = add nsw i32 %i.gn, 1                    ; 2 uses
  br i1 %i.gm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.gp = sext i32 %i.go to i64
  %i.gq = sext i32 %i.gn to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.gr = sext i32 %i.gn to i64
  %i.gs = sext i32 %i.go to i64
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.01028 = phi i64 [ 0, %bb.m ], [ %i.gs, %bb.n ]
  %.01026 = phi i64 [ 1, %bb.m ], [ %i.gr, %bb.n ]
  %.01024 = phi i64 [ %i.gp, %bb.m ], [ 0, %bb.n ] ; 4 uses
  %.01022 = phi i64 [ %i.gq, %bb.m ], [ 1, %bb.n ] ; 4 uses
  %i.gt = load i32, ptr @x_block_half, align 4, !tbaa !4 ; 3 uses
  %i.gu = mul nsw i32 %i.gt, %4
  %i.gv = load i32, ptr @y_block_half, align 4, !tbaa !4 ; 3 uses
  %i.gw = mul nsw i32 %i.gv, %3
  %i.gx = add nsw i32 %6, %5
  %i.gy = icmp sgt i32 %6, 0
  br i1 %i.gy, label %.preheader1096.lr.ph, label %.loopexit

.preheader1096.lr.ph:                             ; preds = %bb.o
  %.not10641201 = icmp slt i32 %i.gt, 1
  %.not10651197 = icmp slt i32 %i.gv, 1
  %or.cond1432 = select i1 %.not10641201, i1 true, i1 %.not10651197
  br i1 %or.cond1432, label %.loopexit, label %.preheader1096.lr.ph.split.split

.preheader1096.lr.ph.split.split:                 ; preds = %.preheader1096.lr.ph
  %i.gz = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.ha = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !27
  %i.hc = load ptr, ptr %i.gz, align 8, !tbaa !27
  %i.hd = sext i32 %i.gw to i64
  %i.he = add nuw i32 %i.gv, 1
  %i.hf = sext i32 %i.gu to i64
  %i.hg = add nuw i32 %i.gt, 1
  %i.hh = sext i32 %5 to i64
  %i.hi = sext i32 %i.gx to i64
  %wide.trip.count1341 = zext i32 %i.hg to i64
  %wide.trip.count1336 = zext i32 %i.he to i64
  br label %.preheader1096

.preheader1096:                                   ; preds = %.preheader1096.lr.ph.split.split, %._crit_edge1203.split
  %indvars.iv1343 = phi i64 [ %i.hh, %.preheader1096.lr.ph.split.split ], [ %indvars.iv.next1344, %._crit_edge1203.split ] ; 3 uses
  %i.hj = getelementptr inbounds [8 x i8], ptr %i.hb, i64 %indvars.iv1343
  %i.hk = load ptr, ptr %i.hj, align 8, !tbaa !28
  %i.hl = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %indvars.iv1343
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !28
  %invariant.gep1427 = getelementptr [8 x i8], ptr %i.hk, i64 %i.hf
  br label %.preheader1095

.preheader1095:                                   ; preds = %.preheader1096, %._crit_edge1200
  %indvars.iv1338 = phi i64 [ 1, %.preheader1096 ], [ %indvars.iv.next1339, %._crit_edge1200 ] ; 3 uses
  %gep1428 = getelementptr [8 x i8], ptr %invariant.gep1427, i64 %indvars.iv1338
  %i.hn = load ptr, ptr %gep1428, align 8, !tbaa !30
  %.idx1390 = shl i64 %indvars.iv1338, 4
  %i.ho = getelementptr i8, ptr %i.hm, i64 %.idx1390 ; 2 uses
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !30 ; 2 uses
  %i.hq = getelementptr i8, ptr %i.ho, i64 -8
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !30 ; 2 uses
  %invariant.gep1425 = getelementptr [8 x i8], ptr %i.hn, i64 %i.hd
  br label %bb.p

bb.p:                                             ; preds = %.preheader1095, %bb.p
  %indvars.iv1333 = phi i64 [ 1, %.preheader1095 ], [ %indvars.iv.next1334, %bb.p ] ; 3 uses
  %gep1426 = getelementptr [8 x i8], ptr %invariant.gep1425, i64 %indvars.iv1333
  %i.hs = load ptr, ptr %gep1426, align 8, !tbaa !32 ; 2 uses
  %i.ht = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %.01026
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !21
  %i.hv = fmul double %i.hu, 2.500000e-01         ; 4 uses
  %i.hw = shl nuw nsw i64 %indvars.iv1333, 1      ; 3 uses
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.hp, i64 %i.hw
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !32 ; 2 uses
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %.01024
  store double %i.hv, ptr %i.hz, align 8, !tbaa !21
  %i.ia = add nsw i64 %i.hw, -1                   ; 2 uses
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.hp, i64 %i.ia
  %i.ic = load ptr, ptr %i.ib, align 8, !tbaa !32 ; 2 uses
  %i.id = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %.01024
  store double %i.hv, ptr %i.id, align 8, !tbaa !21
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.hr, i64 %i.hw
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !32 ; 2 uses
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.if, i64 %.01024
  store double %i.hv, ptr %i.ig, align 8, !tbaa !21
  %i.ih = getelementptr inbounds [8 x i8], ptr %i.hr, i64 %i.ia
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !32 ; 2 uses
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %.01024
  store double %i.hv, ptr %i.ij, align 8, !tbaa !21
  %i.ik = getelementptr inbounds [8 x i8], ptr %i.ii, i64 %.01022
  %i.il = load double, ptr %i.ik, align 8, !tbaa !21
  %i.im = getelementptr inbounds [8 x i8], ptr %i.if, i64 %.01022
  %i.in = load double, ptr %i.im, align 8, !tbaa !21
  %i.io = fadd double %i.il, %i.in
  %i.ip = getelementptr inbounds [8 x i8], ptr %i.ic, i64 %.01022
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !21
  %i.ir = fadd double %i.io, %i.iq
  %i.is = getelementptr inbounds [8 x i8], ptr %i.hy, i64 %.01022
  %i.it = load double, ptr %i.is, align 8, !tbaa !21
  %i.iu = fadd double %i.ir, %i.it
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.hs, i64 %.01028
  store double %i.iu, ptr %i.iv, align 8, !tbaa !21
  %indvars.iv.next1334 = add nuw nsw i64 %indvars.iv1333, 1 ; 2 uses
  %exitcond1337.not = icmp eq i64 %indvars.iv.next1334, %wide.trip.count1336
  br i1 %exitcond1337.not, label %._crit_edge1200, label %bb.p, !llvm.loop !98

._crit_edge1200:                                  ; preds = %bb.p
  %indvars.iv.next1339 = add nuw nsw i64 %indvars.iv1338, 1 ; 2 uses
  %exitcond1342.not = icmp eq i64 %indvars.iv.next1339, %wide.trip.count1341
  br i1 %exitcond1342.not, label %._crit_edge1203.split, label %.preheader1095, !llvm.loop !99

._crit_edge1203.split:                            ; preds = %._crit_edge1200
  %indvars.iv.next1344 = add nsw i64 %indvars.iv1343, 1 ; 2 uses
  %i.iw = icmp slt i64 %indvars.iv.next1344, %i.hi
  br i1 %i.iw, label %.preheader1096, label %.loopexit, !llvm.loop !100

bb.q:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.r, label %bb.ai

bb.r:                                             ; preds = %bb.q
  %i.ix = icmp eq i32 %2, 0
  %i.iy = load i32, ptr @x_block_size, align 4, !tbaa !4 ; 3 uses
  %i.iz = add nsw i32 %i.iy, 1                    ; 2 uses
  br i1 %i.ix, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ja = sext i32 %i.iz to i64
  %i.jb = sext i32 %i.iy to i64
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.jc = sext i32 %i.iy to i64
  %i.jd = sext i32 %i.iz to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.11045 = phi i64 [ 0, %bb.s ], [ %i.jd, %bb.t ] ; 5 uses
  %.11043 = phi i64 [ 1, %bb.s ], [ %i.jc, %bb.t ]
  %.11041 = phi i64 [ %i.ja, %bb.s ], [ 0, %bb.t ]
  %.11039 = phi i64 [ %i.jb, %bb.s ], [ 1, %bb.t ] ; 3 uses
  %i.je = icmp sgt i32 %6, 0
  br i1 %i.je, label %.lr.ph1196, label %.loopexit

.lr.ph1196:                                       ; preds = %bb.u
  %i.jf = add nsw i32 %6, %5
  %i.jg = load i32, ptr @z_block_half, align 4, !tbaa !4 ; 3 uses
  %i.jh = mul i32 %i.jg, %3                       ; 2 uses
  %i.ji = load i32, ptr @y_block_half, align 4, !tbaa !4 ; 3 uses
  %i.jj = mul nsw i32 %i.ji, %4                   ; 2 uses
  %i.jk = add i32 %i.jg, 1                        ; 11 uses
  %i.jl = load i32, ptr @z_block_size, align 4, !tbaa !4
  %i.jm = add nsw i32 %i.jl, 1
  %i.jn = add i32 %i.ji, 1                        ; 2 uses
  %i.jo = load i32, ptr @y_block_size, align 4, !tbaa !4
  %i.jp = add nsw i32 %i.jo, 1
  %i.jq = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !27
  %i.js = sext i32 %i.jj to i64                   ; 2 uses
  %i.jt = sext i32 %i.jh to i64                   ; 11 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.jv = load ptr, ptr %i.ju, align 8, !tbaa !27
  %.not10851166 = icmp slt i32 %i.jg, 1           ; 5 uses
  %i.jw = add nsw i32 %i.jk, %i.jh
  %i.jx = sext i32 %i.jw to i64                   ; 3 uses
  %i.jy = sext i32 %i.jm to i64                   ; 11 uses
  %i.jz = icmp eq i32 %4, 0
  %i.ka = icmp eq i32 %3, 0                       ; 3 uses
  %.not10871180 = icmp slt i32 %i.ji, 1
  %i.kb = add nsw i32 %i.jn, %i.jj
  %i.kc = sext i32 %i.kb to i64
  %i.kd = sext i32 %i.jp to i64                   ; 4 uses
  %i.ke = icmp eq i32 %4, 1
  %i.kf = sext i32 %5 to i64
  %i.kg = sext i32 %i.jf to i64
  %wide.trip.count1303 = zext i32 %i.jk to i64    ; 16 uses
  %wide.trip.count1308 = zext i32 %i.jk to i64
  %wide.trip.count1318 = zext i32 %i.jn to i64
  %wide.trip.count1313 = zext i32 %i.jk to i64
  %wide.trip.count1323 = zext i32 %i.jk to i64
  %wide.trip.count1328 = zext i32 %i.jk to i64
  %i.kh = shl nsw i64 %i.jt, 3
  %i.ki = add nsw i64 %i.kh, 8                    ; 6 uses
  %i.kj = add nsw i64 %i.jt, %wide.trip.count1303
  %i.kk = shl nsw i64 %i.kj, 3                    ; 6 uses
  %i.kl = shl nuw nsw i64 %wide.trip.count1303, 4
  %i.km = add nsw i64 %i.kl, -8                   ; 8 uses
  %i.kn = add nsw i64 %wide.trip.count1303, -1    ; 3 uses
  %min.iters.check1762 = icmp ult i32 %i.jk, 5
  %n.vec1765 = and i64 %i.kn, -2                  ; 2 uses
  %7 = or i64 %i.kn, 1
  %cmp.n1774 = icmp eq i64 %i.kn, %n.vec1765
  %8 = and i64 %wide.trip.count1303, 1
  %lcmp.mod1980.not.not = icmp eq i64 %8, 0
  %i.ko = add nsw i64 %wide.trip.count1303, -1
  %9 = add nsw i64 %wide.trip.count1303, -1       ; 2 uses
  %min.iters.check1762.a = icmp ult i32 %i.jk, 5
  %n.vec1765.a = and i64 %9, -4                   ; 3 uses
  %i.kp = or disjoint i64 %n.vec1765.a, 1
  %cmp.n1774.a = icmp eq i64 %9, %n.vec1765.a
  %i.kq = and i64 %wide.trip.count1303, 1
  %lcmp.mod1980.not.not.a = icmp eq i64 %i.kq, 0
  %10 = add nsw i64 %wide.trip.count1303, -1
  %i.kr = add nsw i64 %wide.trip.count1303, -1    ; 3 uses
  %min.iters.check1737 = icmp ult i32 %i.jk, 11
  %n.vec1740 = and i64 %i.kr, -2                  ; 2 uses
  %i.ks = or i64 %i.kr, 1
  %lcmp.mod1982.not.not = icmp eq i64 %i.kr, %n.vec1740
  %i.kt = add nsw i64 %wide.trip.count1303, -1    ; 3 uses
  %min.iters.check1709 = icmp ult i32 %i.jk, 5
  %n.vec1712 = and i64 %i.kt, -2                  ; 2 uses
  %i.ku = or i64 %i.kt, 1
  %cmp.n1726 = icmp eq i64 %i.kt, %n.vec1712
  %n.vec1637 = and i64 %wide.trip.count1303, 1
  %cmp.n1646 = icmp eq i64 %n.vec1637, 0
  %11 = add nsw i64 %wide.trip.count1303, -1
  %i.kv = add nsw i64 %wide.trip.count1303, -1    ; 2 uses
  %min.iters.check1609 = icmp ult i32 %i.jk, 5
  %n.vec1612 = and i64 %i.kv, -4                  ; 3 uses
  %i.kw = or disjoint i64 %n.vec1612, 1
  %cmp.n1623 = icmp eq i64 %i.kv, %n.vec1612
  %i.kx = and i64 %wide.trip.count1303, 1
  %lcmp.mod1986.not.not = icmp eq i64 %i.kx, 0
  %i.ky = add nsw i64 %wide.trip.count1303, -1
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph1196, %.loopexit1098
  %indvars.iv1330 = phi i64 [ %i.kf, %.lr.ph1196 ], [ %indvars.iv.next1331, %.loopexit1098 ] ; 3 uses
  %i.kz = getelementptr inbounds [8 x i8], ptr %i.jr, i64 %indvars.iv1330
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !28 ; 6 uses
  %i.lb = getelementptr inbounds [8 x i8], ptr %i.la, i64 %.11043
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !30 ; 3 uses
  %i.ld = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.js
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !32 ; 5 uses
  %i.lf = getelementptr inbounds [8 x i8], ptr %i.le, i64 %i.jt
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !21
  %i.lh = fmul double %i.lg, 2.500000e-01
  %i.li = getelementptr inbounds [8 x i8], ptr %i.jv, i64 %indvars.iv1330
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !28 ; 4 uses
  %i.lk = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %.11041
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !30 ; 4 uses
  %i.lm = load ptr, ptr %i.ll, align 8, !tbaa !32 ; 9 uses
  store double %i.lh, ptr %i.lm, align 8, !tbaa !21
  br i1 %.not10851166, label %._crit_edge1170, label %.lr.ph1169.preheader

.lr.ph1169.preheader:                             ; preds = %bb.v
  %invariant.gep1417 = getelementptr [8 x i8], ptr %i.le, i64 %i.jt ; 5 uses
  br i1 %min.iters.check1762, label %.lr.ph1169.preheader1947, label %vector.memcheck1753

vector.memcheck1753:                              ; preds = %.lr.ph1169.preheader
  %scevgep1754 = getelementptr i8, ptr %i.lm, i64 8
  %i.ln = getelementptr i8, ptr %i.lm, i64 %i.km
  %scevgep1756 = getelementptr i8, ptr %i.le, i64 %i.ki
  %scevgep1757 = getelementptr i8, ptr %i.le, i64 %i.kk
  %bound01758 = icmp ult ptr %scevgep1754, %scevgep1757
  %bound11759 = icmp ult ptr %scevgep1756, %i.ln
  %found.conflict1760 = and i1 %bound01758, %bound11759
  br i1 %found.conflict1760, label %.lr.ph1169.preheader1947, label %vector.body1766

vector.body1766:                                  ; preds = %vector.memcheck1753, %vector.body1766
  %index1767 = phi i64 [ %index.next1772, %vector.body1766 ], [ 0, %vector.memcheck1753 ] ; 3 uses
  %i.lo = or disjoint i64 %index1767, 1           ; 2 uses
  %i.lp = add i64 %index1767, 2                   ; 2 uses
  %i.lq = getelementptr [8 x i8], ptr %invariant.gep1417, i64 %i.lo
  %i.lr = getelementptr [8 x i8], ptr %invariant.gep1417, i64 %i.lp
  %i.ls = load double, ptr %i.lq, align 8, !tbaa !21, !alias.scope !101
  %i.lt = load double, ptr %i.lr, align 8, !tbaa !21, !alias.scope !101
  %.scalar = fmul double %i.ls, 2.500000e-01
  %i.lu = insertelement <2 x double> poison, double %.scalar, i64 0
  %i.lv = shufflevector <2 x double> %i.lu, <2 x double> poison, <2 x i32> zeroinitializer
  %.scalar1936 = fmul double %i.lt, 2.500000e-01
  %i.lw = insertelement <2 x double> poison, double %.scalar1936, i64 0
  %i.lx = shufflevector <2 x double> %i.lw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ly = shl nuw nsw i64 %i.lo, 4
  %i.lz = shl nuw nsw i64 %i.lp, 4
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.ly
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lm, i64 %i.lz
  %i.mc = getelementptr i8, ptr %i.ma, i64 -8
  %i.md = getelementptr i8, ptr %i.mb, i64 -8
  store <2 x double> %i.lv, ptr %i.mc, align 8, !tbaa !21, !alias.scope !104, !noalias !101
  store <2 x double> %i.lx, ptr %i.md, align 8, !tbaa !21, !alias.scope !104, !noalias !101
  %index.next1772 = add nuw i64 %index1767, 2     ; 2 uses
  %i.me = icmp eq i64 %index.next1772, %n.vec1765
  br i1 %i.me, label %middle.block1773, label %vector.body1766, !llvm.loop !106

middle.block1773:                                 ; preds = %vector.body1766
  br i1 %cmp.n1774, label %._crit_edge1170, label %.lr.ph1169.preheader1947

.lr.ph1169.preheader1947:                         ; preds = %vector.memcheck1753, %.lr.ph1169.preheader, %middle.block1773
  %indvars.iv1300.ph = phi i64 [ 1, %vector.memcheck1753 ], [ 1, %.lr.ph1169.preheader ], [ %7, %middle.block1773 ] ; 5 uses
  br i1 %lcmp.mod1980.not.not, label %.lr.ph1169.prol, label %.lr.ph1169.prol.loopexit

.lr.ph1169.prol:                                  ; preds = %.lr.ph1169.preheader1947
  %gep1418.prol = getelementptr [8 x i8], ptr %invariant.gep1417, i64 %indvars.iv1300.ph
  %i.mf = load double, ptr %gep1418.prol, align 8, !tbaa !21
  %i.mg = fmul double %i.mf, 2.500000e-01         ; 2 uses
  %.idx1386.prol = shl nuw nsw i64 %indvars.iv1300.ph, 4
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lm, i64 %.idx1386.prol ; 2 uses
  store double %i.mg, ptr %i.mh, align 8, !tbaa !21
  %i.mi = getelementptr i8, ptr %i.mh, i64 -8
  store double %i.mg, ptr %i.mi, align 8, !tbaa !21
  %indvars.iv.next1301.prol = add nuw nsw i64 %indvars.iv1300.ph, 1
  br label %.lr.ph1169.prol.loopexit

.lr.ph1169.prol.loopexit:                         ; preds = %.lr.ph1169.prol, %.lr.ph1169.preheader1947
  %indvars.iv1300.unr = phi i64 [ %indvars.iv1300.ph, %.lr.ph1169.preheader1947 ], [ %indvars.iv.next1301.prol, %.lr.ph1169.prol ]
  %i.mj = icmp eq i64 %indvars.iv1300.ph, %i.ko
  br i1 %i.mj, label %._crit_edge1170, label %.lr.ph1169

.lr.ph1169:                                       ; preds = %.lr.ph1169.prol.loopexit, %.lr.ph1169
  %indvars.iv1300 = phi i64 [ %indvars.iv.next1301.1, %.lr.ph1169 ], [ %indvars.iv1300.unr, %.lr.ph1169.prol.loopexit ] ; 4 uses
  %gep1418 = getelementptr [8 x i8], ptr %invariant.gep1417, i64 %indvars.iv1300
  %i.mk = load double, ptr %gep1418, align 8, !tbaa !21
  %i.ml = fmul double %i.mk, 2.500000e-01         ; 2 uses
  %.idx1386 = shl nuw nsw i64 %indvars.iv1300, 4
  %i.mm = getelementptr inbounds nuw i8, ptr %i.lm, i64 %.idx1386 ; 2 uses
  store double %i.ml, ptr %i.mm, align 8, !tbaa !21
  %i.mn = getelementptr i8, ptr %i.mm, i64 -8
  store double %i.ml, ptr %i.mn, align 8, !tbaa !21
  %indvars.iv.next1301 = add nuw nsw i64 %indvars.iv1300, 1 ; 2 uses
  %gep1418.1 = getelementptr [8 x i8], ptr %invariant.gep1417, i64 %indvars.iv.next1301
  %i.mo = load double, ptr %gep1418.1, align 8, !tbaa !21
  %i.mp = fmul double %i.mo, 2.500000e-01         ; 2 uses
  %.idx1386.1 = shl nuw nsw i64 %indvars.iv.next1301, 4
  %i.mq = getelementptr inbounds nuw i8, ptr %i.lm, i64 %.idx1386.1 ; 2 uses
  store double %i.mp, ptr %i.mq, align 8, !tbaa !21
  %i.mr = getelementptr i8, ptr %i.mq, i64 -8
  store double %i.mp, ptr %i.mr, align 8, !tbaa !21
  %indvars.iv.next1301.1 = add nuw nsw i64 %indvars.iv1300, 2 ; 2 uses
  %exitcond1304.not.1 = icmp eq i64 %indvars.iv.next1301.1, %wide.trip.count1303
  br i1 %exitcond1304.not.1, label %._crit_edge1170, label %.lr.ph1169, !llvm.loop !107

._crit_edge1170:                                  ; preds = %.lr.ph1169.prol.loopexit, %.lr.ph1169, %middle.block1773, %bb.v
  %i.ms = getelementptr inbounds [8 x i8], ptr %i.le, i64 %i.jx
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !21
  %i.mu = fmul double %i.mt, 2.500000e-01
  %i.mv = getelementptr inbounds [8 x i8], ptr %i.lm, i64 %i.jy
  store double %i.mu, ptr %i.mv, align 8, !tbaa !21
  br i1 %i.jz, label %bb.w, label %.loopexit1099

bb.w:                                             ; preds = %._crit_edge1170
  %i.mw = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %.11039
  %i.mx = load ptr, ptr %i.mw, align 8, !tbaa !30
  %i.my = load ptr, ptr %i.mx, align 8, !tbaa !32 ; 9 uses
  br i1 %i.ka, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.mz = load double, ptr %i.my, align 8, !tbaa !21
  %i.na = getelementptr inbounds [8 x i8], ptr %i.la, i64 %.11045
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !30
  %i.nc = load ptr, ptr %i.nb, align 8, !tbaa !32 ; 2 uses
  store double %i.mz, ptr %i.nc, align 8, !tbaa !21
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  %i.nd = getelementptr inbounds [8 x i8], ptr %i.my, i64 %i.jy
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !21
  %i.nf = getelementptr inbounds [8 x i8], ptr %i.la, i64 %.11045
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !30
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !32 ; 2 uses
  %i.ni = getelementptr inbounds [8 x i8], ptr %i.nh, i64 %i.jy
  store double %i.ne, ptr %i.ni, align 8, !tbaa !21
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.nj = phi ptr [ %i.nh, %bb.y ], [ %i.nc, %bb.x ] ; 3 uses
  br i1 %.not10851166, label %.loopexit1099, label %.lr.ph1174

.lr.ph1174:                                       ; preds = %bb.z
  %invariant.gep1419 = getelementptr [8 x i8], ptr %i.nj, i64 %i.jt ; 4 uses
  br i1 %min.iters.check1762.a, label %scalar.ph1736.preheader, label %vector.memcheck1728

vector.memcheck1728:                              ; preds = %.lr.ph1174
  %scevgep1729 = getelementptr i8, ptr %i.nj, i64 %i.ki
  %scevgep1730 = getelementptr i8, ptr %i.nj, i64 %i.kk
  %scevgep1731 = getelementptr i8, ptr %i.my, i64 8
  %scevgep1732 = getelementptr i8, ptr %i.my, i64 %i.km
  %bound01733 = icmp ult ptr %scevgep1729, %scevgep1732
  %bound11734 = icmp ult ptr %scevgep1731, %scevgep1730
  %found.conflict1735 = and i1 %bound01733, %bound11734
  br i1 %found.conflict1735, label %scalar.ph1736.preheader, label %vector.body1741

vector.body1741:                                  ; preds = %vector.memcheck1728, %vector.body1741
  %index1742 = phi i64 [ %index.next1749, %vector.body1741 ], [ 0, %vector.memcheck1728 ] ; 3 uses
  %i.nk = or disjoint i64 %index1742, 1           ; 2 uses
  %i.nl = shl i64 %i.nk, 4
  %i.nm = shl i64 %index1742, 4
  %i.nn = getelementptr i8, ptr %i.my, i64 %i.nl
  %i.no = getelementptr i8, ptr %i.my, i64 %i.nm
  %i.np = getelementptr i8, ptr %i.nn, i64 -8
  %i.nq = getelementptr i8, ptr %i.no, i64 40
  %wide.vec1743 = load <4 x double>, ptr %i.np, align 8, !tbaa !21, !alias.scope !108 ; 2 uses
  %strided.vec1744 = shufflevector <4 x double> %wide.vec1743, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1745 = shufflevector <4 x double> %wide.vec1743, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec1746 = load <4 x double>, ptr %i.nq, align 8, !tbaa !21, !alias.scope !108 ; 2 uses
  %strided.vec1747 = shufflevector <4 x double> %wide.vec1746, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1748 = shufflevector <4 x double> %wide.vec1746, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.nr = fadd <2 x double> %strided.vec1744, %strided.vec1745
  %i.ns = fadd <2 x double> %strided.vec1747, %strided.vec1748
  %i.nt = getelementptr [8 x i8], ptr %invariant.gep1419, i64 %i.nk ; 2 uses
  %i.nu = getelementptr i8, ptr %i.nt, i64 16
  store <2 x double> %i.nr, ptr %i.nt, align 8, !tbaa !21, !alias.scope !111, !noalias !108
  store <2 x double> %i.ns, ptr %i.nu, align 8, !tbaa !21, !alias.scope !111, !noalias !108
  %index.next1749 = add nuw i64 %index1742, 4     ; 2 uses
  %i.nv = icmp eq i64 %index.next1749, %n.vec1765.a
  br i1 %i.nv, label %middle.block1750, label %vector.body1741, !llvm.loop !113

middle.block1750:                                 ; preds = %vector.body1741
  br i1 %cmp.n1774.a, label %.loopexit1099, label %scalar.ph1736.preheader

scalar.ph1736.preheader:                          ; preds = %vector.memcheck1728, %.lr.ph1174, %middle.block1750
  %indvars.iv1305.ph = phi i64 [ 1, %vector.memcheck1728 ], [ 1, %.lr.ph1174 ], [ %i.kp, %middle.block1750 ] ; 5 uses
  br i1 %lcmp.mod1980.not.not.a, label %scalar.ph1736.prol, label %scalar.ph1736.prol.loopexit

scalar.ph1736.prol:                               ; preds = %scalar.ph1736.preheader
  %.idx1387.prol = shl nsw i64 %indvars.iv1305.ph, 4
  %i.nw = getelementptr i8, ptr %i.my, i64 %.idx1387.prol ; 2 uses
  %i.nx = getelementptr i8, ptr %i.nw, i64 -8
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !21
  %i.nz = load double, ptr %i.nw, align 8, !tbaa !21
  %i.oa = fadd double %i.ny, %i.nz
  %gep1420.prol = getelementptr [8 x i8], ptr %invariant.gep1419, i64 %indvars.iv1305.ph
  store double %i.oa, ptr %gep1420.prol, align 8, !tbaa !21
  %indvars.iv.next1306.prol = add nuw nsw i64 %indvars.iv1305.ph, 1
  br label %scalar.ph1736.prol.loopexit

scalar.ph1736.prol.loopexit:                      ; preds = %scalar.ph1736.prol, %scalar.ph1736.preheader
  %indvars.iv1305.unr = phi i64 [ %indvars.iv1305.ph, %scalar.ph1736.preheader ], [ %indvars.iv.next1306.prol, %scalar.ph1736.prol ]
  %i.ob = icmp eq i64 %indvars.iv1305.ph, %10
  br i1 %i.ob, label %.loopexit1099, label %scalar.ph1736

scalar.ph1736:                                    ; preds = %scalar.ph1736.prol.loopexit, %scalar.ph1736
  %indvars.iv1305 = phi i64 [ %indvars.iv.next1306.1, %scalar.ph1736 ], [ %indvars.iv1305.unr, %scalar.ph1736.prol.loopexit ] ; 4 uses
  %.idx1387 = shl i64 %indvars.iv1305, 4
  %i.oc = getelementptr i8, ptr %i.my, i64 %.idx1387 ; 2 uses
  %i.od = getelementptr i8, ptr %i.oc, i64 -8
  %i.oe = load double, ptr %i.od, align 8, !tbaa !21
  %i.of = load double, ptr %i.oc, align 8, !tbaa !21
  %i.og = fadd double %i.oe, %i.of
  %gep1420 = getelementptr [8 x i8], ptr %invariant.gep1419, i64 %indvars.iv1305
  store double %i.og, ptr %gep1420, align 8, !tbaa !21
  %indvars.iv.next1306 = add nuw nsw i64 %indvars.iv1305, 1 ; 2 uses
  %.idx1387.1 = shl i64 %indvars.iv.next1306, 4
  %i.oh = getelementptr i8, ptr %i.my, i64 %.idx1387.1 ; 2 uses
  %i.oi = getelementptr i8, ptr %i.oh, i64 -8
  %i.oj = load double, ptr %i.oi, align 8, !tbaa !21
  %i.ok = load double, ptr %i.oh, align 8, !tbaa !21
  %i.ol = fadd double %i.oj, %i.ok
  %gep1420.1 = getelementptr [8 x i8], ptr %invariant.gep1419, i64 %indvars.iv.next1306
  store double %i.ol, ptr %gep1420.1, align 8, !tbaa !21
  %indvars.iv.next1306.1 = add nuw nsw i64 %indvars.iv1305, 2 ; 2 uses
  %exitcond1309.not.1 = icmp eq i64 %indvars.iv.next1306.1, %wide.trip.count1308
  br i1 %exitcond1309.not.1, label %.loopexit1099, label %scalar.ph1736, !llvm.loop !114

.loopexit1099:                                    ; preds = %scalar.ph1736.prol.loopexit, %scalar.ph1736, %middle.block1750, %bb.z, %._crit_edge1170
  br i1 %.not10871180, label %._crit_edge1184, label %.lr.ph1183

.lr.ph1183:                                       ; preds = %.loopexit1099
  %i.om = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %.11039
  %i.on = getelementptr inbounds [8 x i8], ptr %i.la, i64 %.11045 ; 2 uses
  %i.oo = load ptr, ptr %i.om, align 8, !tbaa !30 ; 3 uses
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph1183, %._crit_edge1179
  %indvars.iv1315 = phi i64 [ 1, %.lr.ph1183 ], [ %indvars.iv.next1316, %._crit_edge1179 ] ; 3 uses
  %i.op = add nsw i64 %indvars.iv1315, %i.js      ; 3 uses
  %i.oq = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.op
  %i.or = load ptr, ptr %i.oq, align 8, !tbaa !32 ; 6 uses
  %i.os = getelementptr inbounds [8 x i8], ptr %i.or, i64 %i.jt
  %i.ot = load double, ptr %i.os, align 8, !tbaa !21
  %i.ou = fmul double %i.ot, 2.500000e-01         ; 2 uses
  %i.ov = shl nuw nsw i64 %indvars.iv1315, 1      ; 4 uses
  %i.ow = getelementptr inbounds nuw [8 x i8], ptr %i.ll, i64 %i.ov
  %i.ox = load ptr, ptr %i.ow, align 8, !tbaa !32 ; 7 uses
  store double %i.ou, ptr %i.ox, align 8, !tbaa !21
  %i.oy = add nsw i64 %i.ov, -1                   ; 2 uses
  %i.oz = getelementptr inbounds [8 x i8], ptr %i.ll, i64 %i.oy
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !32 ; 7 uses
  store double %i.ou, ptr %i.pa, align 8, !tbaa !21
  %i.pb = getelementptr inbounds [8 x i8], ptr %i.oo, i64 %i.oy
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !32 ; 7 uses
  br i1 %i.ka, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !21
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %i.ov
  %i.pf = load ptr, ptr %i.pe, align 8, !tbaa !32 ; 2 uses
  %i.pg = load double, ptr %i.pf, align 8, !tbaa !21
  %i.ph = fadd double %i.pd, %i.pg
  %i.pi = load ptr, ptr %i.on, align 8, !tbaa !30
  %i.pj = getelementptr inbounds [8 x i8], ptr %i.pi, i64 %i.op
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !32 ; 2 uses
  store double %i.ph, ptr %i.pk, align 8, !tbaa !21
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.pl = getelementptr inbounds [8 x i8], ptr %i.pc, i64 %i.jy
  %i.pm = load double, ptr %i.pl, align 8, !tbaa !21
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %i.oo, i64 %i.ov
  %i.po = load ptr, ptr %i.pn, align 8, !tbaa !32 ; 2 uses
  %i.pp = getelementptr inbounds [8 x i8], ptr %i.po, i64 %i.jy
  %i.pq = load double, ptr %i.pp, align 8, !tbaa !21
  %i.pr = fadd double %i.pm, %i.pq
  %i.ps = load ptr, ptr %i.on, align 8, !tbaa !30
  %i.pt = getelementptr inbounds [8 x i8], ptr %i.ps, i64 %i.op
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !32 ; 2 uses
  %i.pv = getelementptr inbounds [8 x i8], ptr %i.pu, i64 %i.jy
  store double %i.pr, ptr %i.pv, align 8, !tbaa !21
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.pw = phi ptr [ %i.pu, %bb.ac ], [ %i.pk, %bb.ab ] ; 4 uses
  %i.px = phi ptr [ %i.po, %bb.ac ], [ %i.pf, %bb.ab ] ; 5 uses
  br i1 %.not10851166, label %._crit_edge1179, label %.lr.ph1178.preheader

.lr.ph1178.preheader:                             ; preds = %bb.ad
  br i1 %min.iters.check1737, label %.lr.ph1178.preheader1945, label %vector.memcheck1648

vector.memcheck1648:                              ; preds = %.lr.ph1178.preheader
  %scevgep1649 = getelementptr i8, ptr %i.ox, i64 8 ; 5 uses
  %scevgep1650 = getelementptr i8, ptr %i.ox, i64 %i.km ; 5 uses
  %scevgep1651 = getelementptr i8, ptr %i.pa, i64 8 ; 5 uses
  %scevgep1652 = getelementptr i8, ptr %i.pa, i64 %i.km ; 5 uses
  %scevgep1653 = getelementptr i8, ptr %i.pw, i64 %i.ki ; 5 uses
  %scevgep1654 = getelementptr i8, ptr %i.pw, i64 %i.kk ; 5 uses
  %scevgep1655 = getelementptr i8, ptr %i.or, i64 %i.ki ; 3 uses
  %scevgep1656 = getelementptr i8, ptr %i.or, i64 %i.kk ; 3 uses
  %scevgep1657 = getelementptr i8, ptr %i.pc, i64 8 ; 3 uses
  %scevgep1658 = getelementptr i8, ptr %i.pc, i64 %i.km ; 3 uses
  %scevgep1659 = getelementptr i8, ptr %i.px, i64 8 ; 3 uses
  %scevgep1660 = getelementptr i8, ptr %i.px, i64 %i.km ; 3 uses
  %bound01661 = icmp ult ptr %scevgep1649, %scevgep1652
  %bound11662 = icmp ult ptr %scevgep1651, %scevgep1650
  %found.conflict1663 = and i1 %bound01661, %bound11662
  %bound01664 = icmp ult ptr %scevgep1649, %scevgep1654
  %bound11665 = icmp ult ptr %scevgep1653, %scevgep1650
  %found.conflict1666 = and i1 %bound01664, %bound11665
  %conflict.rdx1667 = or i1 %found.conflict1663, %found.conflict1666
  %bound01668 = icmp ult ptr %scevgep1649, %scevgep1656
  %bound11669 = icmp ult ptr %scevgep1655, %scevgep1650
  %found.conflict1670 = and i1 %bound01668, %bound11669
  %conflict.rdx1671 = or i1 %conflict.rdx1667, %found.conflict1670
  %bound01672 = icmp ult ptr %scevgep1649, %scevgep1658
  %bound11673 = icmp ult ptr %scevgep1657, %scevgep1650
  %found.conflict1674 = and i1 %bound01672, %bound11673
  %conflict.rdx1675 = or i1 %conflict.rdx1671, %found.conflict1674
  %bound01676 = icmp ult ptr %scevgep1649, %scevgep1660
  %bound11677 = icmp ult ptr %scevgep1659, %scevgep1650
  %found.conflict1678 = and i1 %bound01676, %bound11677
  %conflict.rdx1679 = or i1 %conflict.rdx1675, %found.conflict1678
  %bound01680 = icmp ult ptr %scevgep1651, %scevgep1654
  %bound11681 = icmp ult ptr %scevgep1653, %scevgep1652
  %found.conflict1682 = and i1 %bound01680, %bound11681
  %conflict.rdx1683 = or i1 %conflict.rdx1679, %found.conflict1682
  %bound01684 = icmp ult ptr %scevgep1651, %scevgep1656
  %bound11685 = icmp ult ptr %scevgep1655, %scevgep1652
  %found.conflict1686 = and i1 %bound01684, %bound11685
  %conflict.rdx1687 = or i1 %conflict.rdx1683, %found.conflict1686
  %bound01688 = icmp ult ptr %scevgep1651, %scevgep1658
  %bound11689 = icmp ult ptr %scevgep1657, %scevgep1652
  %found.conflict1690 = and i1 %bound01688, %bound11689
  %conflict.rdx1691 = or i1 %conflict.rdx1687, %found.conflict1690
  %bound01692 = icmp ult ptr %scevgep1651, %scevgep1660
  %bound11693 = icmp ult ptr %scevgep1659, %scevgep1652
  %found.conflict1694 = and i1 %bound01692, %bound11693
  %conflict.rdx1695 = or i1 %conflict.rdx1691, %found.conflict1694
  %bound01696 = icmp ult ptr %scevgep1653, %scevgep1656
  %bound11697 = icmp ult ptr %scevgep1655, %scevgep1654
  %found.conflict1698 = and i1 %bound01696, %bound11697
  %conflict.rdx1699 = or i1 %conflict.rdx1695, %found.conflict1698
  %bound01700 = icmp ult ptr %scevgep1653, %scevgep1658
  %bound11701 = icmp ult ptr %scevgep1657, %scevgep1654
  %found.conflict1702 = and i1 %bound01700, %bound11701
  %conflict.rdx1703 = or i1 %conflict.rdx1699, %found.conflict1702
  %bound01704 = icmp ult ptr %scevgep1653, %scevgep1660
  %bound11705 = icmp ult ptr %scevgep1659, %scevgep1654
  %found.conflict1706 = and i1 %bound01704, %bound11705
  %conflict.rdx1707 = or i1 %conflict.rdx1703, %found.conflict1706
  br i1 %conflict.rdx1707, label %.lr.ph1178.preheader1945, label %vector.body1713

vector.body1713:                                  ; preds = %vector.memcheck1648, %vector.body1713
  %index1714 = phi i64 [ %index.next1724, %vector.body1713 ], [ 0, %vector.memcheck1648 ] ; 2 uses
  %i.py = or disjoint i64 %index1714, 1           ; 2 uses
  %i.pz = add nsw i64 %i.py, %i.jt                ; 2 uses
  %i.qa = getelementptr inbounds [8 x i8], ptr %i.or, i64 %i.pz
  %wide.load1715 = load <2 x double>, ptr %i.qa, align 8, !tbaa !21, !alias.scope !115
  %i.qb = shl nuw nsw i64 %i.py, 1
  %i.qc = add nsw i64 %i.qb, -1                   ; 4 uses
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %i.qc
  %i.qe = shufflevector <2 x double> %wide.load1715, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %interleaved.vec1716 = fmul <4 x double> %i.qe, splat (double 2.500000e-01) ; 2 uses
  store <4 x double> %interleaved.vec1716, ptr %i.qd, align 8, !tbaa !21, !alias.scope !118, !noalias !120
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %i.qc
  store <4 x double> %interleaved.vec1716, ptr %i.qf, align 8, !tbaa !21, !alias.scope !125, !noalias !126
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %i.qc
  %wide.vec1718 = load <4 x double>, ptr %i.qg, align 8, !tbaa !21, !alias.scope !127 ; 2 uses
  %strided.vec1719 = shufflevector <4 x double> %wide.vec1718, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1720 = shufflevector <4 x double> %wide.vec1718, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.qh = fadd <2 x double> %strided.vec1719, %strided.vec1720
  %i.qi = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %i.qc
  %wide.vec1721 = load <4 x double>, ptr %i.qi, align 8, !tbaa !21, !alias.scope !128 ; 2 uses
  %strided.vec1722 = shufflevector <4 x double> %wide.vec1721, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1723 = shufflevector <4 x double> %wide.vec1721, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.qj = fadd <2 x double> %i.qh, %strided.vec1722
  %i.qk = fadd <2 x double> %i.qj, %strided.vec1723
  %i.ql = getelementptr inbounds [8 x i8], ptr %i.pw, i64 %i.pz
  store <2 x double> %i.qk, ptr %i.ql, align 8, !tbaa !21, !alias.scope !129, !noalias !130
  %index.next1724 = add nuw i64 %index1714, 2     ; 2 uses
  %i.qm = icmp eq i64 %index.next1724, %n.vec1740
  br i1 %i.qm, label %middle.block1725, label %vector.body1713, !llvm.loop !131

middle.block1725:                                 ; preds = %vector.body1713
  br i1 %lcmp.mod1982.not.not, label %._crit_edge1179, label %.lr.ph1178.preheader1945

.lr.ph1178.preheader1945:                         ; preds = %vector.memcheck1648, %.lr.ph1178.preheader, %middle.block1725
  %indvars.iv1310.ph = phi i64 [ 1, %vector.memcheck1648 ], [ 1, %.lr.ph1178.preheader ], [ %i.ks, %middle.block1725 ]
  br label %.lr.ph1178

.lr.ph1178:                                       ; preds = %.lr.ph1178.preheader1945, %.lr.ph1178
  %indvars.iv1310 = phi i64 [ %indvars.iv.next1311, %.lr.ph1178 ], [ %indvars.iv1310.ph, %.lr.ph1178.preheader1945 ] ; 3 uses
  %i.qn = add nsw i64 %indvars.iv1310, %i.jt      ; 2 uses
  %i.qo = getelementptr inbounds [8 x i8], ptr %i.or, i64 %i.qn
  %i.qp = load double, ptr %i.qo, align 8, !tbaa !21
  %i.qq = fmul double %i.qp, 2.500000e-01         ; 4 uses
  %i.qr = shl nuw nsw i64 %indvars.iv1310, 1      ; 5 uses
  %i.qs = getelementptr inbounds nuw [8 x i8], ptr %i.ox, i64 %i.qr
  store double %i.qq, ptr %i.qs, align 8, !tbaa !21
  %i.qt = add nsw i64 %i.qr, -1                   ; 4 uses
  %i.qu = getelementptr inbounds [8 x i8], ptr %i.ox, i64 %i.qt
  store double %i.qq, ptr %i.qu, align 8, !tbaa !21
  %i.qv = getelementptr inbounds nuw [8 x i8], ptr %i.pa, i64 %i.qr
  store double %i.qq, ptr %i.qv, align 8, !tbaa !21
  %i.qw = getelementptr inbounds [8 x i8], ptr %i.pa, i64 %i.qt
  store double %i.qq, ptr %i.qw, align 8, !tbaa !21
  %i.qx = getelementptr inbounds [8 x i8], ptr %i.pc, i64 %i.qt
  %i.qy = load double, ptr %i.qx, align 8, !tbaa !21
  %i.qz = getelementptr inbounds nuw [8 x i8], ptr %i.pc, i64 %i.qr
  %i.ra = load double, ptr %i.qz, align 8, !tbaa !21
  %i.rb = fadd double %i.qy, %i.ra
  %i.rc = getelementptr inbounds [8 x i8], ptr %i.px, i64 %i.qt
  %i.rd = load double, ptr %i.rc, align 8, !tbaa !21
  %i.re = fadd double %i.rb, %i.rd
  %i.rf = getelementptr inbounds nuw [8 x i8], ptr %i.px, i64 %i.qr
  %i.rg = load double, ptr %i.rf, align 8, !tbaa !21
  %i.rh = fadd double %i.re, %i.rg
  %i.ri = getelementptr inbounds [8 x i8], ptr %i.pw, i64 %i.qn
  store double %i.rh, ptr %i.ri, align 8, !tbaa !21
  %indvars.iv.next1311 = add nuw nsw i64 %indvars.iv1310, 1 ; 2 uses
  %exitcond1314.not = icmp eq i64 %indvars.iv.next1311, %wide.trip.count1313
  br i1 %exitcond1314.not, label %._crit_edge1179, label %.lr.ph1178, !llvm.loop !132

._crit_edge1179:                                  ; preds = %.lr.ph1178, %middle.block1725, %bb.ad
  %i.rj = getelementptr inbounds [8 x i8], ptr %i.or, i64 %i.jx
  %i.rk = load double, ptr %i.rj, align 8, !tbaa !21
  %i.rl = fmul double %i.rk, 2.500000e-01         ; 2 uses
  %i.rm = getelementptr inbounds [8 x i8], ptr %i.ox, i64 %i.jy
  store double %i.rl, ptr %i.rm, align 8, !tbaa !21
  %i.rn = getelementptr inbounds [8 x i8], ptr %i.pa, i64 %i.jy
  store double %i.rl, ptr %i.rn, align 8, !tbaa !21
  %indvars.iv.next1316 = add nuw nsw i64 %indvars.iv1315, 1 ; 2 uses
  %exitcond1319.not = icmp eq i64 %indvars.iv.next1316, %wide.trip.count1318
  br i1 %exitcond1319.not, label %._crit_edge1184, label %bb.aa, !llvm.loop !133

._crit_edge1184:                                  ; preds = %._crit_edge1179, %.loopexit1099
  %i.ro = getelementptr inbounds [8 x i8], ptr %i.lc, i64 %i.kc
  %i.rp = load ptr, ptr %i.ro, align 8, !tbaa !32 ; 5 uses
  %i.rq = getelementptr inbounds [8 x i8], ptr %i.rp, i64 %i.jt
  %i.rr = load double, ptr %i.rq, align 8, !tbaa !21
  %i.rs = fmul double %i.rr, 2.500000e-01
  %i.rt = getelementptr inbounds [8 x i8], ptr %i.ll, i64 %i.kd
  %i.ru = load ptr, ptr %i.rt, align 8, !tbaa !32 ; 9 uses
  store double %i.rs, ptr %i.ru, align 8, !tbaa !21
  br i1 %.not10851166, label %._crit_edge1189, label %.lr.ph1188.preheader

.lr.ph1188.preheader:                             ; preds = %._crit_edge1184
  %invariant.gep1421 = getelementptr [8 x i8], ptr %i.rp, i64 %i.jt ; 5 uses
  br i1 %min.iters.check1709, label %.lr.ph1188.preheader1946, label %vector.memcheck1625

vector.memcheck1625:                              ; preds = %.lr.ph1188.preheader
  %scevgep1626 = getelementptr i8, ptr %i.ru, i64 8
  %scevgep1627 = getelementptr i8, ptr %i.ru, i64 %i.km
  %scevgep1628 = getelementptr i8, ptr %i.rp, i64 %i.ki
  %scevgep1629 = getelementptr i8, ptr %i.rp, i64 %i.kk
  %bound01630 = icmp ult ptr %scevgep1626, %scevgep1629
  %bound11631 = icmp ult ptr %scevgep1628, %scevgep1627
  %found.conflict1632 = and i1 %bound01630, %bound11631
  br i1 %found.conflict1632, label %.lr.ph1188.preheader1946, label %vector.body1638

vector.body1638:                                  ; preds = %vector.memcheck1625, %vector.body1638
  %index1639 = phi i64 [ %index.next1644, %vector.body1638 ], [ 0, %vector.memcheck1625 ] ; 3 uses
  %i.rv = or disjoint i64 %index1639, 1           ; 2 uses
  %i.rw = add i64 %index1639, 2                   ; 2 uses
  %i.rx = getelementptr [8 x i8], ptr %invariant.gep1421, i64 %i.rv
  %i.ry = getelementptr [8 x i8], ptr %invariant.gep1421, i64 %i.rw
  %i.rz = load double, ptr %i.rx, align 8, !tbaa !21, !alias.scope !134
  %i.sa = load double, ptr %i.ry, align 8, !tbaa !21, !alias.scope !134
  %.scalar1937 = fmul double %i.rz, 2.500000e-01
  %i.sb = insertelement <2 x double> poison, double %.scalar1937, i64 0
  %i.sc = shufflevector <2 x double> %i.sb, <2 x double> poison, <2 x i32> zeroinitializer
  %.scalar1938 = fmul double %i.sa, 2.500000e-01
  %i.sd = insertelement <2 x double> poison, double %.scalar1938, i64 0
  %i.se = shufflevector <2 x double> %i.sd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.sf = shl nuw nsw i64 %i.rv, 4
  %i.sg = shl nuw nsw i64 %i.rw, 4
  %i.sh = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.sf
  %i.si = getelementptr inbounds nuw i8, ptr %i.ru, i64 %i.sg
  %i.sj = getelementptr i8, ptr %i.sh, i64 -8
  %i.sk = getelementptr i8, ptr %i.si, i64 -8
  store <2 x double> %i.sc, ptr %i.sj, align 8, !tbaa !21, !alias.scope !137, !noalias !134
  store <2 x double> %i.se, ptr %i.sk, align 8, !tbaa !21, !alias.scope !137, !noalias !134
  %index.next1644 = add nuw i64 %index1639, 2     ; 2 uses
  %i.sl = icmp eq i64 %index.next1644, %n.vec1712
  br i1 %i.sl, label %middle.block1645, label %vector.body1638, !llvm.loop !139

middle.block1645:                                 ; preds = %vector.body1638
  br i1 %cmp.n1726, label %._crit_edge1189, label %.lr.ph1188.preheader1946

.lr.ph1188.preheader1946:                         ; preds = %vector.memcheck1625, %.lr.ph1188.preheader, %middle.block1645
  %indvars.iv1320.ph = phi i64 [ 1, %vector.memcheck1625 ], [ 1, %.lr.ph1188.preheader ], [ %i.ku, %middle.block1645 ] ; 5 uses
  br i1 %cmp.n1646, label %.lr.ph1188.prol, label %.lr.ph1188.prol.loopexit

.lr.ph1188.prol:                                  ; preds = %.lr.ph1188.preheader1946
  %gep1422.prol = getelementptr [8 x i8], ptr %invariant.gep1421, i64 %indvars.iv1320.ph
  %i.sm = load double, ptr %gep1422.prol, align 8, !tbaa !21
  %i.sn = fmul double %i.sm, 2.500000e-01         ; 2 uses
  %.idx1388.prol = shl nuw nsw i64 %indvars.iv1320.ph, 4
  %i.so = getelementptr inbounds nuw i8, ptr %i.ru, i64 %.idx1388.prol ; 2 uses
  store double %i.sn, ptr %i.so, align 8, !tbaa !21
  %i.sp = getelementptr i8, ptr %i.so, i64 -8
  store double %i.sn, ptr %i.sp, align 8, !tbaa !21
  %indvars.iv.next1321.prol = add nuw nsw i64 %indvars.iv1320.ph, 1
  br label %.lr.ph1188.prol.loopexit

.lr.ph1188.prol.loopexit:                         ; preds = %.lr.ph1188.prol, %.lr.ph1188.preheader1946
  %indvars.iv1320.unr = phi i64 [ %indvars.iv1320.ph, %.lr.ph1188.preheader1946 ], [ %indvars.iv.next1321.prol, %.lr.ph1188.prol ]
  %i.sq = icmp eq i64 %indvars.iv1320.ph, %11
  br i1 %i.sq, label %._crit_edge1189, label %.lr.ph1188

.lr.ph1188:                                       ; preds = %.lr.ph1188.prol.loopexit, %.lr.ph1188
  %indvars.iv1320 = phi i64 [ %indvars.iv.next1321.1, %.lr.ph1188 ], [ %indvars.iv1320.unr, %.lr.ph1188.prol.loopexit ] ; 4 uses
  %gep1422 = getelementptr [8 x i8], ptr %invariant.gep1421, i64 %indvars.iv1320
  %i.sr = load double, ptr %gep1422, align 8, !tbaa !21
  %i.ss = fmul double %i.sr, 2.500000e-01         ; 2 uses
  %.idx1388 = shl nuw nsw i64 %indvars.iv1320, 4
  %i.st = getelementptr inbounds nuw i8, ptr %i.ru, i64 %.idx1388 ; 2 uses
  store double %i.ss, ptr %i.st, align 8, !tbaa !21
  %i.su = getelementptr i8, ptr %i.st, i64 -8
  store double %i.ss, ptr %i.su, align 8, !tbaa !21
  %indvars.iv.next1321 = add nuw nsw i64 %indvars.iv1320, 1 ; 2 uses
  %gep1422.1 = getelementptr [8 x i8], ptr %invariant.gep1421, i64 %indvars.iv.next1321
  %i.sv = load double, ptr %gep1422.1, align 8, !tbaa !21
  %i.sw = fmul double %i.sv, 2.500000e-01         ; 2 uses
  %.idx1388.1 = shl nuw nsw i64 %indvars.iv.next1321, 4
  %i.sx = getelementptr inbounds nuw i8, ptr %i.ru, i64 %.idx1388.1 ; 2 uses
  store double %i.sw, ptr %i.sx, align 8, !tbaa !21
  %i.sy = getelementptr i8, ptr %i.sx, i64 -8
  store double %i.sw, ptr %i.sy, align 8, !tbaa !21
  %indvars.iv.next1321.1 = add nuw nsw i64 %indvars.iv1320, 2 ; 2 uses
  %exitcond1324.not.1 = icmp eq i64 %indvars.iv.next1321.1, %wide.trip.count1323
  br i1 %exitcond1324.not.1, label %._crit_edge1189, label %.lr.ph1188, !llvm.loop !140

._crit_edge1189:                                  ; preds = %.lr.ph1188.prol.loopexit, %.lr.ph1188, %middle.block1645, %._crit_edge1184
  %i.sz = getelementptr inbounds [8 x i8], ptr %i.rp, i64 %i.jx
  %i.ta = load double, ptr %i.sz, align 8, !tbaa !21
  %i.tb = fmul double %i.ta, 2.500000e-01
  %i.tc = getelementptr inbounds [8 x i8], ptr %i.ru, i64 %i.jy
  store double %i.tb, ptr %i.tc, align 8, !tbaa !21
  br i1 %i.ke, label %bb.ae, label %.loopexit1098

bb.ae:                                            ; preds = %._crit_edge1189
  %i.td = getelementptr inbounds [8 x i8], ptr %i.lj, i64 %.11039
  %i.te = load ptr, ptr %i.td, align 8, !tbaa !30
  %i.tf = getelementptr inbounds [8 x i8], ptr %i.te, i64 %i.kd
  %i.tg = load ptr, ptr %i.tf, align 8, !tbaa !32 ; 9 uses
  br i1 %i.ka, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.th = load double, ptr %i.tg, align 8, !tbaa !21
  %i.ti = getelementptr inbounds [8 x i8], ptr %i.la, i64 %.11045
  %i.tj = load ptr, ptr %i.ti, align 8, !tbaa !30
  %i.tk = getelementptr inbounds [8 x i8], ptr %i.tj, i64 %i.kd
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !32 ; 2 uses
  store double %i.th, ptr %i.tl, align 8, !tbaa !21
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.tm = getelementptr inbounds [8 x i8], ptr %i.tg, i64 %i.jy
  %i.tn = load double, ptr %i.tm, align 8, !tbaa !21
  %i.to = getelementptr inbounds [8 x i8], ptr %i.la, i64 %.11045
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !30
  %i.tq = getelementptr inbounds [8 x i8], ptr %i.tp, i64 %i.kd
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !32 ; 2 uses
  %i.ts = getelementptr inbounds [8 x i8], ptr %i.tr, i64 %i.jy
  store double %i.tn, ptr %i.ts, align 8, !tbaa !21
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.tt = phi ptr [ %i.tr, %bb.ag ], [ %i.tl, %bb.af ] ; 3 uses
  br i1 %.not10851166, label %.loopexit1098, label %.lr.ph1193

.lr.ph1193:                                       ; preds = %bb.ah
  %invariant.gep1423 = getelementptr [8 x i8], ptr %i.tt, i64 %i.jt ; 4 uses
  br i1 %min.iters.check1609, label %scalar.ph1608.preheader, label %vector.memcheck1600

vector.memcheck1600:                              ; preds = %.lr.ph1193
  %scevgep1601 = getelementptr i8, ptr %i.tt, i64 %i.ki
  %scevgep1602 = getelementptr i8, ptr %i.tt, i64 %i.kk
  %scevgep1603 = getelementptr i8, ptr %i.tg, i64 8
  %scevgep1604 = getelementptr i8, ptr %i.tg, i64 %i.km
  %bound01605 = icmp ult ptr %scevgep1601, %scevgep1604
  %bound11606 = icmp ult ptr %scevgep1603, %scevgep1602
  %found.conflict1607 = and i1 %bound01605, %bound11606
  br i1 %found.conflict1607, label %scalar.ph1608.preheader, label %vector.body1613

vector.body1613:                                  ; preds = %vector.memcheck1600, %vector.body1613
  %index1614 = phi i64 [ %index.next1621, %vector.body1613 ], [ 0, %vector.memcheck1600 ] ; 3 uses
  %i.tu = or disjoint i64 %index1614, 1           ; 2 uses
  %i.tv = shl i64 %i.tu, 4
  %i.tw = shl i64 %index1614, 4
  %i.tx = getelementptr i8, ptr %i.tg, i64 %i.tv
  %i.ty = getelementptr i8, ptr %i.tg, i64 %i.tw
  %i.tz = getelementptr i8, ptr %i.tx, i64 -8
  %i.ua = getelementptr i8, ptr %i.ty, i64 40
  %wide.vec1615 = load <4 x double>, ptr %i.tz, align 8, !tbaa !21, !alias.scope !141 ; 2 uses
  %strided.vec1616 = shufflevector <4 x double> %wide.vec1615, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1617 = shufflevector <4 x double> %wide.vec1615, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec1618 = load <4 x double>, ptr %i.ua, align 8, !tbaa !21, !alias.scope !141 ; 2 uses
  %strided.vec1619 = shufflevector <4 x double> %wide.vec1618, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1620 = shufflevector <4 x double> %wide.vec1618, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.ub = fadd <2 x double> %strided.vec1616, %strided.vec1617
  %i.uc = fadd <2 x double> %strided.vec1619, %strided.vec1620
  %i.ud = getelementptr [8 x i8], ptr %invariant.gep1423, i64 %i.tu ; 2 uses
  %i.ue = getelementptr i8, ptr %i.ud, i64 16
  store <2 x double> %i.ub, ptr %i.ud, align 8, !tbaa !21, !alias.scope !144, !noalias !141
  store <2 x double> %i.uc, ptr %i.ue, align 8, !tbaa !21, !alias.scope !144, !noalias !141
  %index.next1621 = add nuw i64 %index1614, 4     ; 2 uses
  %i.uf = icmp eq i64 %index.next1621, %n.vec1612
  br i1 %i.uf, label %middle.block1622, label %vector.body1613, !llvm.loop !146

middle.block1622:                                 ; preds = %vector.body1613
  br i1 %cmp.n1623, label %.loopexit1098, label %scalar.ph1608.preheader

scalar.ph1608.preheader:                          ; preds = %vector.memcheck1600, %.lr.ph1193, %middle.block1622
  %indvars.iv1325.ph = phi i64 [ 1, %vector.memcheck1600 ], [ 1, %.lr.ph1193 ], [ %i.kw, %middle.block1622 ] ; 5 uses
  br i1 %lcmp.mod1986.not.not, label %scalar.ph1608.prol, label %scalar.ph1608.prol.loopexit

scalar.ph1608.prol:                               ; preds = %scalar.ph1608.preheader
  %.idx1389.prol = shl nsw i64 %indvars.iv1325.ph, 4
  %i.ug = getelementptr i8, ptr %i.tg, i64 %.idx1389.prol ; 2 uses
  %i.uh = getelementptr i8, ptr %i.ug, i64 -8
  %i.ui = load double, ptr %i.uh, align 8, !tbaa !21
  %i.uj = load double, ptr %i.ug, align 8, !tbaa !21
  %i.uk = fadd double %i.ui, %i.uj
  %gep1424.prol = getelementptr [8 x i8], ptr %invariant.gep1423, i64 %indvars.iv1325.ph
  store double %i.uk, ptr %gep1424.prol, align 8, !tbaa !21
  %indvars.iv.next1326.prol = add nuw nsw i64 %indvars.iv1325.ph, 1
  br label %scalar.ph1608.prol.loopexit

scalar.ph1608.prol.loopexit:                      ; preds = %scalar.ph1608.prol, %scalar.ph1608.preheader
  %indvars.iv1325.unr = phi i64 [ %indvars.iv1325.ph, %scalar.ph1608.preheader ], [ %indvars.iv.next1326.prol, %scalar.ph1608.prol ]
  %i.ul = icmp eq i64 %indvars.iv1325.ph, %i.ky
  br i1 %i.ul, label %.loopexit1098, label %scalar.ph1608

scalar.ph1608:                                    ; preds = %scalar.ph1608.prol.loopexit, %scalar.ph1608
  %indvars.iv1325 = phi i64 [ %indvars.iv.next1326.1, %scalar.ph1608 ], [ %indvars.iv1325.unr, %scalar.ph1608.prol.loopexit ] ; 4 uses
  %.idx1389 = shl i64 %indvars.iv1325, 4
  %i.um = getelementptr i8, ptr %i.tg, i64 %.idx1389 ; 2 uses
  %i.un = getelementptr i8, ptr %i.um, i64 -8
  %i.uo = load double, ptr %i.un, align 8, !tbaa !21
  %i.up = load double, ptr %i.um, align 8, !tbaa !21
  %i.uq = fadd double %i.uo, %i.up
  %gep1424 = getelementptr [8 x i8], ptr %invariant.gep1423, i64 %indvars.iv1325
  store double %i.uq, ptr %gep1424, align 8, !tbaa !21
  %indvars.iv.next1326 = add nuw nsw i64 %indvars.iv1325, 1 ; 2 uses
  %.idx1389.1 = shl i64 %indvars.iv.next1326, 4
  %i.ur = getelementptr i8, ptr %i.tg, i64 %.idx1389.1 ; 2 uses
  %i.us = getelementptr i8, ptr %i.ur, i64 -8
  %i.ut = load double, ptr %i.us, align 8, !tbaa !21
  %i.uu = load double, ptr %i.ur, align 8, !tbaa !21
  %i.uv = fadd double %i.ut, %i.uu
  %gep1424.1 = getelementptr [8 x i8], ptr %invariant.gep1423, i64 %indvars.iv.next1326
  store double %i.uv, ptr %gep1424.1, align 8, !tbaa !21
  %indvars.iv.next1326.1 = add nuw nsw i64 %indvars.iv1325, 2 ; 2 uses
  %exitcond1329.not.1 = icmp eq i64 %indvars.iv.next1326.1, %wide.trip.count1328
  br i1 %exitcond1329.not.1, label %.loopexit1098, label %scalar.ph1608, !llvm.loop !147

.loopexit1098:                                    ; preds = %scalar.ph1608.prol.loopexit, %scalar.ph1608, %middle.block1622, %bb.ah, %._crit_edge1189
  %indvars.iv.next1331 = add nsw i64 %indvars.iv1330, 1 ; 2 uses
  %i.uw = icmp slt i64 %indvars.iv.next1331, %i.kg
  br i1 %i.uw, label %bb.v, label %.loopexit, !llvm.loop !148

bb.ai:                                            ; preds = %bb.q
  %i.ux = and i32 %2, -2
  switch i32 %i.ux, label %.loopexit [
    i32 2, label %bb.aj
    i32 4, label %bb.az
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.uy = icmp eq i32 %2, 2
  %i.uz = load i32, ptr @y_block_size, align 4, !tbaa !4 ; 3 uses
  %i.va = add nsw i32 %i.uz, 1                    ; 2 uses
  br i1 %i.uy, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.vb = sext i32 %i.va to i64
  %i.vc = sext i32 %i.uz to i64
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.vd = sext i32 %i.uz to i64
  %i.ve = sext i32 %i.va to i64
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.11037 = phi i64 [ 0, %bb.ak ], [ %i.ve, %bb.al ] ; 6 uses
  %.11035 = phi i64 [ 1, %bb.ak ], [ %i.vd, %bb.al ] ; 3 uses
  %.11033 = phi i64 [ %i.vb, %bb.ak ], [ 0, %bb.al ] ; 4 uses
  %.11031 = phi i64 [ %i.vc, %bb.ak ], [ 1, %bb.al ] ; 5 uses
  %i.vf = icmp sgt i32 %6, 0
  br i1 %i.vf, label %.lr.ph1165, label %.loopexit

.lr.ph1165:                                       ; preds = %bb.am
  %i.vg = add nsw i32 %6, %5
  %i.vh = load i32, ptr @z_block_half, align 4, !tbaa !4 ; 3 uses
  %i.vi = mul i32 %i.vh, %3                       ; 2 uses
  %i.vj = load i32, ptr @x_block_half, align 4, !tbaa !4 ; 3 uses
  %i.vk = mul nsw i32 %i.vj, %4                   ; 2 uses
  %i.vl = add i32 %i.vh, 1                        ; 11 uses
  %i.vm = load i32, ptr @z_block_size, align 4, !tbaa !4
  %i.vn = add nsw i32 %i.vm, 1
  %i.vo = add i32 %i.vj, 1                        ; 2 uses
  %i.vp = load i32, ptr @x_block_size, align 4, !tbaa !4
  %i.vq = add nsw i32 %i.vp, 1
  %i.vr = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !27
  %i.vt = sext i32 %i.vk to i64                   ; 2 uses
  %i.vu = sext i32 %i.vi to i64                   ; 11 uses
  %i.vv = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.vw = load ptr, ptr %i.vv, align 8, !tbaa !27
  %.not10791135 = icmp slt i32 %i.vh, 1           ; 5 uses
  %i.vx = add nsw i32 %i.vl, %i.vi
  %i.vy = sext i32 %i.vx to i64                   ; 3 uses
  %i.vz = sext i32 %i.vn to i64                   ; 11 uses
  %i.wa = icmp eq i32 %4, 0
  %i.wb = icmp eq i32 %3, 0                       ; 3 uses
  %.not10811149 = icmp slt i32 %i.vj, 1
  %i.wc = add nsw i32 %i.vo, %i.vk
  %i.wd = sext i32 %i.wc to i64
  %i.we = sext i32 %i.vq to i64                   ; 3 uses
  %i.wf = icmp eq i32 %4, 1
  %i.wg = sext i32 %5 to i64
  %i.wh = sext i32 %i.vg to i64
  %wide.trip.count1270 = zext i32 %i.vl to i64    ; 16 uses
  %wide.trip.count1275 = zext i32 %i.vl to i64
  %wide.trip.count1285 = zext i32 %i.vo to i64
  %wide.trip.count1280 = zext i32 %i.vl to i64
  %wide.trip.count1290 = zext i32 %i.vl to i64
  %wide.trip.count1295 = zext i32 %i.vl to i64
  %i.wi = shl nsw i64 %i.vu, 3
  %i.wj = add nsw i64 %i.wi, 8                    ; 6 uses
  %i.wk = add nsw i64 %i.vu, %wide.trip.count1270
  %i.wl = shl nsw i64 %i.wk, 3                    ; 6 uses
  %i.wm = shl nuw nsw i64 %wide.trip.count1270, 4
  %i.wn = add nsw i64 %i.wm, -8                   ; 8 uses
  %i.wo = add nsw i64 %wide.trip.count1270, -1    ; 3 uses
  %min.iters.check1586 = icmp ult i32 %i.vl, 5
  %n.vec1589 = and i64 %i.wo, -2                  ; 2 uses
  %12 = or i64 %i.wo, 1
  %cmp.n1598 = icmp eq i64 %i.wo, %n.vec1589
  %13 = and i64 %wide.trip.count1270, 1
  %lcmp.mod1972.not.not = icmp eq i64 %13, 0
  %i.wp = add nsw i64 %wide.trip.count1270, -1
  %14 = add nsw i64 %wide.trip.count1270, -1      ; 2 uses
  %min.iters.check1586.a = icmp ult i32 %i.vl, 5
  %n.vec1589.a = and i64 %14, -4                  ; 3 uses
  %i.wq = or disjoint i64 %n.vec1589.a, 1
  %cmp.n1598.a = icmp eq i64 %14, %n.vec1589.a
  %i.wr = and i64 %wide.trip.count1270, 1
  %lcmp.mod1972.not.not.a = icmp eq i64 %i.wr, 0
  %15 = add nsw i64 %wide.trip.count1270, -1
  %i.ws = add nsw i64 %wide.trip.count1270, -1    ; 3 uses
  %min.iters.check1561 = icmp ult i32 %i.vl, 11
  %n.vec1564 = and i64 %i.ws, -2                  ; 2 uses
  %i.wt = or i64 %i.ws, 1
  %lcmp.mod1974.not.not = icmp eq i64 %i.ws, %n.vec1564
  %i.wu = add nsw i64 %wide.trip.count1270, -1    ; 3 uses
  %min.iters.check1535 = icmp ult i32 %i.vl, 5
  %n.vec1538 = and i64 %i.wu, -2                  ; 2 uses
  %i.wv = or i64 %i.wu, 1
  %cmp.n1550 = icmp eq i64 %i.wu, %n.vec1538
  %n.vec1466 = and i64 %wide.trip.count1270, 1
  %cmp.n1473 = icmp eq i64 %n.vec1466, 0
  %16 = add nsw i64 %wide.trip.count1270, -1
  %i.ww = add nsw i64 %wide.trip.count1270, -1    ; 2 uses
  %min.iters.check = icmp ult i32 %i.vl, 5
  %n.vec = and i64 %i.ww, -4                      ; 3 uses
  %i.wx = or disjoint i64 %n.vec, 1
  %cmp.n = icmp eq i64 %i.ww, %n.vec
  %i.wy = and i64 %wide.trip.count1270, 1
  %lcmp.mod1978.not.not = icmp eq i64 %i.wy, 0
  %i.wz = add nsw i64 %wide.trip.count1270, -1
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph1165, %.loopexit1101
  %indvars.iv1297 = phi i64 [ %i.wg, %.lr.ph1165 ], [ %indvars.iv.next1298, %.loopexit1101 ] ; 3 uses
  %i.xa = getelementptr inbounds [8 x i8], ptr %i.vs, i64 %indvars.iv1297
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !28 ; 7 uses
  %i.xc = getelementptr inbounds [8 x i8], ptr %i.xb, i64 %i.vt
  %i.xd = load ptr, ptr %i.xc, align 8, !tbaa !30
  %i.xe = getelementptr inbounds [8 x i8], ptr %i.xd, i64 %.11035
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !32 ; 5 uses
  %i.xg = getelementptr inbounds [8 x i8], ptr %i.xf, i64 %i.vu
  %i.xh = load double, ptr %i.xg, align 8, !tbaa !21
  %i.xi = fmul double %i.xh, 2.500000e-01
  %i.xj = getelementptr inbounds [8 x i8], ptr %i.vw, i64 %indvars.iv1297
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !28 ; 3 uses
  %i.xl = load ptr, ptr %i.xk, align 8, !tbaa !30 ; 2 uses
  %i.xm = getelementptr inbounds [8 x i8], ptr %i.xl, i64 %.11033
  %i.xn = load ptr, ptr %i.xm, align 8, !tbaa !32 ; 9 uses
  store double %i.xi, ptr %i.xn, align 8, !tbaa !21
  br i1 %.not10791135, label %._crit_edge1139, label %.lr.ph1138.preheader

.lr.ph1138.preheader:                             ; preds = %bb.an
  %invariant.gep1407 = getelementptr [8 x i8], ptr %i.xf, i64 %i.vu ; 5 uses
  br i1 %min.iters.check1586, label %.lr.ph1138.preheader1951, label %vector.memcheck1577

vector.memcheck1577:                              ; preds = %.lr.ph1138.preheader
  %scevgep1578 = getelementptr i8, ptr %i.xn, i64 8
  %i.xo = getelementptr i8, ptr %i.xn, i64 %i.wn
  %scevgep1580 = getelementptr i8, ptr %i.xf, i64 %i.wj
  %scevgep1581 = getelementptr i8, ptr %i.xf, i64 %i.wl
  %bound01582 = icmp ult ptr %scevgep1578, %scevgep1581
  %bound11583 = icmp ult ptr %scevgep1580, %i.xo
  %found.conflict1584 = and i1 %bound01582, %bound11583
  br i1 %found.conflict1584, label %.lr.ph1138.preheader1951, label %vector.body1590

vector.body1590:                                  ; preds = %vector.memcheck1577, %vector.body1590
  %index1591 = phi i64 [ %index.next1596, %vector.body1590 ], [ 0, %vector.memcheck1577 ] ; 3 uses
  %i.xp = or disjoint i64 %index1591, 1           ; 2 uses
  %i.xq = add i64 %index1591, 2                   ; 2 uses
  %i.xr = getelementptr [8 x i8], ptr %invariant.gep1407, i64 %i.xp
  %i.xs = getelementptr [8 x i8], ptr %invariant.gep1407, i64 %i.xq
  %i.xt = load double, ptr %i.xr, align 8, !tbaa !21, !alias.scope !149
  %i.xu = load double, ptr %i.xs, align 8, !tbaa !21, !alias.scope !149
  %.scalar1939 = fmul double %i.xt, 2.500000e-01
  %i.xv = insertelement <2 x double> poison, double %.scalar1939, i64 0
  %i.xw = shufflevector <2 x double> %i.xv, <2 x double> poison, <2 x i32> zeroinitializer
  %.scalar1940 = fmul double %i.xu, 2.500000e-01
  %i.xx = insertelement <2 x double> poison, double %.scalar1940, i64 0
  %i.xy = shufflevector <2 x double> %i.xx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xz = shl nuw nsw i64 %i.xp, 4
  %i.ya = shl nuw nsw i64 %i.xq, 4
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xn, i64 %i.xz
  %i.yc = getelementptr inbounds nuw i8, ptr %i.xn, i64 %i.ya
  %i.yd = getelementptr i8, ptr %i.yb, i64 -8
  %i.ye = getelementptr i8, ptr %i.yc, i64 -8
  store <2 x double> %i.xw, ptr %i.yd, align 8, !tbaa !21, !alias.scope !152, !noalias !149
  store <2 x double> %i.xy, ptr %i.ye, align 8, !tbaa !21, !alias.scope !152, !noalias !149
  %index.next1596 = add nuw i64 %index1591, 2     ; 2 uses
  %i.yf = icmp eq i64 %index.next1596, %n.vec1589
  br i1 %i.yf, label %middle.block1597, label %vector.body1590, !llvm.loop !154

middle.block1597:                                 ; preds = %vector.body1590
  br i1 %cmp.n1598, label %._crit_edge1139, label %.lr.ph1138.preheader1951

.lr.ph1138.preheader1951:                         ; preds = %vector.memcheck1577, %.lr.ph1138.preheader, %middle.block1597
  %indvars.iv1267.ph = phi i64 [ 1, %vector.memcheck1577 ], [ 1, %.lr.ph1138.preheader ], [ %12, %middle.block1597 ] ; 5 uses
  br i1 %lcmp.mod1972.not.not, label %.lr.ph1138.prol, label %.lr.ph1138.prol.loopexit

.lr.ph1138.prol:                                  ; preds = %.lr.ph1138.preheader1951
  %gep1408.prol = getelementptr [8 x i8], ptr %invariant.gep1407, i64 %indvars.iv1267.ph
  %i.yg = load double, ptr %gep1408.prol, align 8, !tbaa !21
  %i.yh = fmul double %i.yg, 2.500000e-01         ; 2 uses
  %.idx1381.prol = shl nuw nsw i64 %indvars.iv1267.ph, 4
  %i.yi = getelementptr inbounds nuw i8, ptr %i.xn, i64 %.idx1381.prol ; 2 uses
  store double %i.yh, ptr %i.yi, align 8, !tbaa !21
  %i.yj = getelementptr i8, ptr %i.yi, i64 -8
  store double %i.yh, ptr %i.yj, align 8, !tbaa !21
  %indvars.iv.next1268.prol = add nuw nsw i64 %indvars.iv1267.ph, 1
  br label %.lr.ph1138.prol.loopexit

.lr.ph1138.prol.loopexit:                         ; preds = %.lr.ph1138.prol, %.lr.ph1138.preheader1951
  %indvars.iv1267.unr = phi i64 [ %indvars.iv1267.ph, %.lr.ph1138.preheader1951 ], [ %indvars.iv.next1268.prol, %.lr.ph1138.prol ]
  %i.yk = icmp eq i64 %indvars.iv1267.ph, %i.wp
  br i1 %i.yk, label %._crit_edge1139, label %.lr.ph1138

.lr.ph1138:                                       ; preds = %.lr.ph1138.prol.loopexit, %.lr.ph1138
  %indvars.iv1267 = phi i64 [ %indvars.iv.next1268.1, %.lr.ph1138 ], [ %indvars.iv1267.unr, %.lr.ph1138.prol.loopexit ] ; 4 uses
  %gep1408 = getelementptr [8 x i8], ptr %invariant.gep1407, i64 %indvars.iv1267
  %i.yl = load double, ptr %gep1408, align 8, !tbaa !21
  %i.ym = fmul double %i.yl, 2.500000e-01         ; 2 uses
  %.idx1381 = shl nuw nsw i64 %indvars.iv1267, 4
  %i.yn = getelementptr inbounds nuw i8, ptr %i.xn, i64 %.idx1381 ; 2 uses
  store double %i.ym, ptr %i.yn, align 8, !tbaa !21
  %i.yo = getelementptr i8, ptr %i.yn, i64 -8
  store double %i.ym, ptr %i.yo, align 8, !tbaa !21
  %indvars.iv.next1268 = add nuw nsw i64 %indvars.iv1267, 1 ; 2 uses
  %gep1408.1 = getelementptr [8 x i8], ptr %invariant.gep1407, i64 %indvars.iv.next1268
  %i.yp = load double, ptr %gep1408.1, align 8, !tbaa !21
  %i.yq = fmul double %i.yp, 2.500000e-01         ; 2 uses
  %.idx1381.1 = shl nuw nsw i64 %indvars.iv.next1268, 4
  %i.yr = getelementptr inbounds nuw i8, ptr %i.xn, i64 %.idx1381.1 ; 2 uses
  store double %i.yq, ptr %i.yr, align 8, !tbaa !21
  %i.ys = getelementptr i8, ptr %i.yr, i64 -8
  store double %i.yq, ptr %i.ys, align 8, !tbaa !21
  %indvars.iv.next1268.1 = add nuw nsw i64 %indvars.iv1267, 2 ; 2 uses
  %exitcond1271.not.1 = icmp eq i64 %indvars.iv.next1268.1, %wide.trip.count1270
  br i1 %exitcond1271.not.1, label %._crit_edge1139, label %.lr.ph1138, !llvm.loop !155

._crit_edge1139:                                  ; preds = %.lr.ph1138.prol.loopexit, %.lr.ph1138, %middle.block1597, %bb.an
  %i.yt = getelementptr inbounds [8 x i8], ptr %i.xf, i64 %i.vy
  %i.yu = load double, ptr %i.yt, align 8, !tbaa !21
  %i.yv = fmul double %i.yu, 2.500000e-01
  %i.yw = getelementptr inbounds [8 x i8], ptr %i.xn, i64 %i.vz
  store double %i.yv, ptr %i.yw, align 8, !tbaa !21
  br i1 %i.wa, label %bb.ao, label %.loopexit1102

bb.ao:                                            ; preds = %._crit_edge1139
  %i.yx = getelementptr inbounds [8 x i8], ptr %i.xl, i64 %.11031
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !32 ; 9 uses
  br i1 %i.wb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.yz = load double, ptr %i.yy, align 8, !tbaa !21
  %i.za = load ptr, ptr %i.xb, align 8, !tbaa !30
  %i.zb = getelementptr inbounds [8 x i8], ptr %i.za, i64 %.11037
  %i.zc = load ptr, ptr %i.zb, align 8, !tbaa !32 ; 2 uses
  store double %i.yz, ptr %i.zc, align 8, !tbaa !21
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  %i.zd = getelementptr inbounds [8 x i8], ptr %i.yy, i64 %i.vz
  %i.ze = load double, ptr %i.zd, align 8, !tbaa !21
  %i.zf = load ptr, ptr %i.xb, align 8, !tbaa !30
  %i.zg = getelementptr inbounds [8 x i8], ptr %i.zf, i64 %.11037
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !32 ; 2 uses
  %i.zi = getelementptr inbounds [8 x i8], ptr %i.zh, i64 %i.vz
  store double %i.ze, ptr %i.zi, align 8, !tbaa !21
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.zj = phi ptr [ %i.zh, %bb.aq ], [ %i.zc, %bb.ap ] ; 3 uses
  br i1 %.not10791135, label %.loopexit1102, label %.lr.ph1143

.lr.ph1143:                                       ; preds = %bb.ar
  %invariant.gep1409 = getelementptr [8 x i8], ptr %i.zj, i64 %i.vu ; 4 uses
  br i1 %min.iters.check1586.a, label %scalar.ph1560.preheader, label %vector.memcheck1552

vector.memcheck1552:                              ; preds = %.lr.ph1143
  %scevgep1553 = getelementptr i8, ptr %i.zj, i64 %i.wj
  %scevgep1554 = getelementptr i8, ptr %i.zj, i64 %i.wl
  %scevgep1555 = getelementptr i8, ptr %i.yy, i64 8
  %scevgep1556 = getelementptr i8, ptr %i.yy, i64 %i.wn
  %bound01557 = icmp ult ptr %scevgep1553, %scevgep1556
  %bound11558 = icmp ult ptr %scevgep1555, %scevgep1554
  %found.conflict1559 = and i1 %bound01557, %bound11558
  br i1 %found.conflict1559, label %scalar.ph1560.preheader, label %vector.body1565

vector.body1565:                                  ; preds = %vector.memcheck1552, %vector.body1565
  %index1566 = phi i64 [ %index.next1573, %vector.body1565 ], [ 0, %vector.memcheck1552 ] ; 3 uses
  %i.zk = or disjoint i64 %index1566, 1           ; 2 uses
  %i.zl = shl i64 %i.zk, 4
  %i.zm = shl i64 %index1566, 4
  %i.zn = getelementptr i8, ptr %i.yy, i64 %i.zl
  %i.zo = getelementptr i8, ptr %i.yy, i64 %i.zm
  %i.zp = getelementptr i8, ptr %i.zn, i64 -8
  %i.zq = getelementptr i8, ptr %i.zo, i64 40
  %wide.vec1567 = load <4 x double>, ptr %i.zp, align 8, !tbaa !21, !alias.scope !156 ; 2 uses
  %strided.vec1568 = shufflevector <4 x double> %wide.vec1567, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1569 = shufflevector <4 x double> %wide.vec1567, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec1570 = load <4 x double>, ptr %i.zq, align 8, !tbaa !21, !alias.scope !156 ; 2 uses
  %strided.vec1571 = shufflevector <4 x double> %wide.vec1570, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1572 = shufflevector <4 x double> %wide.vec1570, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.zr = fadd <2 x double> %strided.vec1568, %strided.vec1569
  %i.zs = fadd <2 x double> %strided.vec1571, %strided.vec1572
  %i.zt = getelementptr [8 x i8], ptr %invariant.gep1409, i64 %i.zk ; 2 uses
  %i.zu = getelementptr i8, ptr %i.zt, i64 16
  store <2 x double> %i.zr, ptr %i.zt, align 8, !tbaa !21, !alias.scope !159, !noalias !156
  store <2 x double> %i.zs, ptr %i.zu, align 8, !tbaa !21, !alias.scope !159, !noalias !156
  %index.next1573 = add nuw i64 %index1566, 4     ; 2 uses
  %i.zv = icmp eq i64 %index.next1573, %n.vec1589.a
  br i1 %i.zv, label %middle.block1574, label %vector.body1565, !llvm.loop !161

middle.block1574:                                 ; preds = %vector.body1565
  br i1 %cmp.n1598.a, label %.loopexit1102, label %scalar.ph1560.preheader

scalar.ph1560.preheader:                          ; preds = %vector.memcheck1552, %.lr.ph1143, %middle.block1574
  %indvars.iv1272.ph = phi i64 [ 1, %vector.memcheck1552 ], [ 1, %.lr.ph1143 ], [ %i.wq, %middle.block1574 ] ; 5 uses
  br i1 %lcmp.mod1972.not.not.a, label %scalar.ph1560.prol, label %scalar.ph1560.prol.loopexit

scalar.ph1560.prol:                               ; preds = %scalar.ph1560.preheader
  %.idx1382.prol = shl nsw i64 %indvars.iv1272.ph, 4
  %i.zw = getelementptr i8, ptr %i.yy, i64 %.idx1382.prol ; 2 uses
  %i.zx = getelementptr i8, ptr %i.zw, i64 -8
  %i.zy = load double, ptr %i.zx, align 8, !tbaa !21
  %i.zz = load double, ptr %i.zw, align 8, !tbaa !21
  %i.aaa = fadd double %i.zy, %i.zz
  %gep1410.prol = getelementptr [8 x i8], ptr %invariant.gep1409, i64 %indvars.iv1272.ph
  store double %i.aaa, ptr %gep1410.prol, align 8, !tbaa !21
  %indvars.iv.next1273.prol = add nuw nsw i64 %indvars.iv1272.ph, 1
  br label %scalar.ph1560.prol.loopexit

scalar.ph1560.prol.loopexit:                      ; preds = %scalar.ph1560.prol, %scalar.ph1560.preheader
  %indvars.iv1272.unr = phi i64 [ %indvars.iv1272.ph, %scalar.ph1560.preheader ], [ %indvars.iv.next1273.prol, %scalar.ph1560.prol ]
  %i.aab = icmp eq i64 %indvars.iv1272.ph, %15
  br i1 %i.aab, label %.loopexit1102, label %scalar.ph1560

scalar.ph1560:                                    ; preds = %scalar.ph1560.prol.loopexit, %scalar.ph1560
  %indvars.iv1272 = phi i64 [ %indvars.iv.next1273.1, %scalar.ph1560 ], [ %indvars.iv1272.unr, %scalar.ph1560.prol.loopexit ] ; 4 uses
  %.idx1382 = shl i64 %indvars.iv1272, 4
  %i.aac = getelementptr i8, ptr %i.yy, i64 %.idx1382 ; 2 uses
  %i.aad = getelementptr i8, ptr %i.aac, i64 -8
  %i.aae = load double, ptr %i.aad, align 8, !tbaa !21
  %i.aaf = load double, ptr %i.aac, align 8, !tbaa !21
  %i.aag = fadd double %i.aae, %i.aaf
  %gep1410 = getelementptr [8 x i8], ptr %invariant.gep1409, i64 %indvars.iv1272
  store double %i.aag, ptr %gep1410, align 8, !tbaa !21
  %indvars.iv.next1273 = add nuw nsw i64 %indvars.iv1272, 1 ; 2 uses
  %.idx1382.1 = shl i64 %indvars.iv.next1273, 4
  %i.aah = getelementptr i8, ptr %i.yy, i64 %.idx1382.1 ; 2 uses
  %i.aai = getelementptr i8, ptr %i.aah, i64 -8
  %i.aaj = load double, ptr %i.aai, align 8, !tbaa !21
  %i.aak = load double, ptr %i.aah, align 8, !tbaa !21
  %i.aal = fadd double %i.aaj, %i.aak
  %gep1410.1 = getelementptr [8 x i8], ptr %invariant.gep1409, i64 %indvars.iv.next1273
  store double %i.aal, ptr %gep1410.1, align 8, !tbaa !21
  %indvars.iv.next1273.1 = add nuw nsw i64 %indvars.iv1272, 2 ; 2 uses
  %exitcond1276.not.1 = icmp eq i64 %indvars.iv.next1273.1, %wide.trip.count1275
  br i1 %exitcond1276.not.1, label %.loopexit1102, label %scalar.ph1560, !llvm.loop !162

.loopexit1102:                                    ; preds = %scalar.ph1560.prol.loopexit, %scalar.ph1560, %middle.block1574, %bb.ar, %._crit_edge1139
  br i1 %.not10811149, label %._crit_edge1153, label %.lr.ph1152.preheader

.lr.ph1152.preheader:                             ; preds = %.loopexit1102
  %invariant.gep1411 = getelementptr [8 x i8], ptr %i.xb, i64 %i.vt
  br label %.lr.ph1152

.lr.ph1152:                                       ; preds = %.lr.ph1152.preheader, %._crit_edge1148
  %indvars.iv1282 = phi i64 [ 1, %.lr.ph1152.preheader ], [ %indvars.iv.next1283, %._crit_edge1148 ] ; 3 uses
  %gep1412 = getelementptr [8 x i8], ptr %invariant.gep1411, i64 %indvars.iv1282
  %i.aam = load ptr, ptr %gep1412, align 8, !tbaa !30 ; 3 uses
  %i.aan = getelementptr inbounds [8 x i8], ptr %i.aam, i64 %.11035
  %i.aao = load ptr, ptr %i.aan, align 8, !tbaa !32 ; 6 uses
  %i.aap = getelementptr inbounds [8 x i8], ptr %i.aao, i64 %i.vu
  %i.aaq = load double, ptr %i.aap, align 8, !tbaa !21
  %i.aar = fmul double %i.aaq, 2.500000e-01       ; 2 uses
  %.idx1383 = shl i64 %indvars.iv1282, 4
  %i.aas = getelementptr i8, ptr %i.xk, i64 %.idx1383 ; 2 uses
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !30 ; 3 uses
  %i.aau = getelementptr inbounds [8 x i8], ptr %i.aat, i64 %.11033
  %i.aav = load ptr, ptr %i.aau, align 8, !tbaa !32 ; 7 uses
  store double %i.aar, ptr %i.aav, align 8, !tbaa !21
  %i.aaw = getelementptr i8, ptr %i.aas, i64 -8
  %i.aax = load ptr, ptr %i.aaw, align 8, !tbaa !30 ; 2 uses
  %i.aay = getelementptr inbounds [8 x i8], ptr %i.aax, i64 %.11033
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !32 ; 7 uses
  store double %i.aar, ptr %i.aaz, align 8, !tbaa !21
  %i.aba = getelementptr inbounds [8 x i8], ptr %i.aax, i64 %.11031
  %i.abb = load ptr, ptr %i.aba, align 8, !tbaa !32 ; 7 uses
  br i1 %i.wb, label %bb.as, label %bb.at

bb.as:                                            ; preds = %.lr.ph1152
  %i.abc = load double, ptr %i.abb, align 8, !tbaa !21
  %i.abd = getelementptr inbounds [8 x i8], ptr %i.aat, i64 %.11031
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !32 ; 2 uses
  %i.abf = load double, ptr %i.abe, align 8, !tbaa !21
  %i.abg = fadd double %i.abc, %i.abf
  %i.abh = getelementptr inbounds [8 x i8], ptr %i.aam, i64 %.11037
  %i.abi = load ptr, ptr %i.abh, align 8, !tbaa !32 ; 2 uses
  store double %i.abg, ptr %i.abi, align 8, !tbaa !21
  br label %bb.au

bb.at:                                            ; preds = %.lr.ph1152
  %i.abj = getelementptr inbounds [8 x i8], ptr %i.abb, i64 %i.vz
  %i.abk = load double, ptr %i.abj, align 8, !tbaa !21
  %i.abl = getelementptr inbounds [8 x i8], ptr %i.aat, i64 %.11031
  %i.abm = load ptr, ptr %i.abl, align 8, !tbaa !32 ; 2 uses
  %i.abn = getelementptr inbounds [8 x i8], ptr %i.abm, i64 %i.vz
  %i.abo = load double, ptr %i.abn, align 8, !tbaa !21
  %i.abp = fadd double %i.abk, %i.abo
  %i.abq = getelementptr inbounds [8 x i8], ptr %i.aam, i64 %.11037
  %i.abr = load ptr, ptr %i.abq, align 8, !tbaa !32 ; 2 uses
  %i.abs = getelementptr inbounds [8 x i8], ptr %i.abr, i64 %i.vz
  store double %i.abp, ptr %i.abs, align 8, !tbaa !21
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.abt = phi ptr [ %i.abr, %bb.at ], [ %i.abi, %bb.as ] ; 4 uses
  %i.abu = phi ptr [ %i.abm, %bb.at ], [ %i.abe, %bb.as ] ; 5 uses
  br i1 %.not10791135, label %._crit_edge1148, label %.lr.ph1147.preheader

.lr.ph1147.preheader:                             ; preds = %bb.au
  br i1 %min.iters.check1561, label %.lr.ph1147.preheader1949, label %vector.memcheck1475

vector.memcheck1475:                              ; preds = %.lr.ph1147.preheader
  %scevgep1476 = getelementptr i8, ptr %i.aav, i64 8 ; 5 uses
  %scevgep1477 = getelementptr i8, ptr %i.aav, i64 %i.wn ; 5 uses
  %scevgep1478 = getelementptr i8, ptr %i.aaz, i64 8 ; 5 uses
  %scevgep1479 = getelementptr i8, ptr %i.aaz, i64 %i.wn ; 5 uses
  %scevgep1480 = getelementptr i8, ptr %i.abt, i64 %i.wj ; 5 uses
  %scevgep1481 = getelementptr i8, ptr %i.abt, i64 %i.wl ; 5 uses
  %scevgep1482 = getelementptr i8, ptr %i.aao, i64 %i.wj ; 3 uses
  %scevgep1483 = getelementptr i8, ptr %i.aao, i64 %i.wl ; 3 uses
  %scevgep1484 = getelementptr i8, ptr %i.abb, i64 8 ; 3 uses
  %scevgep1485 = getelementptr i8, ptr %i.abb, i64 %i.wn ; 3 uses
  %scevgep1486 = getelementptr i8, ptr %i.abu, i64 8 ; 3 uses
  %scevgep1487 = getelementptr i8, ptr %i.abu, i64 %i.wn ; 3 uses
  %bound01488 = icmp ult ptr %scevgep1476, %scevgep1479
  %bound11489 = icmp ult ptr %scevgep1478, %scevgep1477
  %found.conflict1490 = and i1 %bound01488, %bound11489
  %bound01491 = icmp ult ptr %scevgep1476, %scevgep1481
  %bound11492 = icmp ult ptr %scevgep1480, %scevgep1477
  %found.conflict1493 = and i1 %bound01491, %bound11492
  %conflict.rdx = or i1 %found.conflict1490, %found.conflict1493
  %bound01494 = icmp ult ptr %scevgep1476, %scevgep1483
  %bound11495 = icmp ult ptr %scevgep1482, %scevgep1477
  %found.conflict1496 = and i1 %bound01494, %bound11495
  %conflict.rdx1497 = or i1 %conflict.rdx, %found.conflict1496
  %bound01498 = icmp ult ptr %scevgep1476, %scevgep1485
  %bound11499 = icmp ult ptr %scevgep1484, %scevgep1477
  %found.conflict1500 = and i1 %bound01498, %bound11499
  %conflict.rdx1501 = or i1 %conflict.rdx1497, %found.conflict1500
  %bound01502 = icmp ult ptr %scevgep1476, %scevgep1487
  %bound11503 = icmp ult ptr %scevgep1486, %scevgep1477
  %found.conflict1504 = and i1 %bound01502, %bound11503
  %conflict.rdx1505 = or i1 %conflict.rdx1501, %found.conflict1504
  %bound01506 = icmp ult ptr %scevgep1478, %scevgep1481
  %bound11507 = icmp ult ptr %scevgep1480, %scevgep1479
  %found.conflict1508 = and i1 %bound01506, %bound11507
  %conflict.rdx1509 = or i1 %conflict.rdx1505, %found.conflict1508
  %bound01510 = icmp ult ptr %scevgep1478, %scevgep1483
  %bound11511 = icmp ult ptr %scevgep1482, %scevgep1479
  %found.conflict1512 = and i1 %bound01510, %bound11511
  %conflict.rdx1513 = or i1 %conflict.rdx1509, %found.conflict1512
  %bound01514 = icmp ult ptr %scevgep1478, %scevgep1485
  %bound11515 = icmp ult ptr %scevgep1484, %scevgep1479
  %found.conflict1516 = and i1 %bound01514, %bound11515
  %conflict.rdx1517 = or i1 %conflict.rdx1513, %found.conflict1516
  %bound01518 = icmp ult ptr %scevgep1478, %scevgep1487
  %bound11519 = icmp ult ptr %scevgep1486, %scevgep1479
  %found.conflict1520 = and i1 %bound01518, %bound11519
  %conflict.rdx1521 = or i1 %conflict.rdx1517, %found.conflict1520
  %bound01522 = icmp ult ptr %scevgep1480, %scevgep1483
  %bound11523 = icmp ult ptr %scevgep1482, %scevgep1481
  %found.conflict1524 = and i1 %bound01522, %bound11523
  %conflict.rdx1525 = or i1 %conflict.rdx1521, %found.conflict1524
  %bound01526 = icmp ult ptr %scevgep1480, %scevgep1485
  %bound11527 = icmp ult ptr %scevgep1484, %scevgep1481
  %found.conflict1528 = and i1 %bound01526, %bound11527
  %conflict.rdx1529 = or i1 %conflict.rdx1525, %found.conflict1528
  %bound01530 = icmp ult ptr %scevgep1480, %scevgep1487
  %bound11531 = icmp ult ptr %scevgep1486, %scevgep1481
  %found.conflict1532 = and i1 %bound01530, %bound11531
  %conflict.rdx1533 = or i1 %conflict.rdx1529, %found.conflict1532
  br i1 %conflict.rdx1533, label %.lr.ph1147.preheader1949, label %vector.body1539

vector.body1539:                                  ; preds = %vector.memcheck1475, %vector.body1539
  %index1540 = phi i64 [ %index.next1548, %vector.body1539 ], [ 0, %vector.memcheck1475 ] ; 2 uses
  %i.abv = or disjoint i64 %index1540, 1          ; 2 uses
  %i.abw = add nsw i64 %i.abv, %i.vu              ; 2 uses
  %i.abx = getelementptr inbounds [8 x i8], ptr %i.aao, i64 %i.abw
  %wide.load = load <2 x double>, ptr %i.abx, align 8, !tbaa !21, !alias.scope !163
  %i.aby = shl nuw nsw i64 %i.abv, 1
  %i.abz = add nsw i64 %i.aby, -1                 ; 4 uses
  %i.aca = getelementptr inbounds nuw [8 x i8], ptr %i.aav, i64 %i.abz
  %i.acb = shufflevector <2 x double> %wide.load, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %interleaved.vec = fmul <4 x double> %i.acb, splat (double 2.500000e-01) ; 2 uses
  store <4 x double> %interleaved.vec, ptr %i.aca, align 8, !tbaa !21, !alias.scope !166, !noalias !168
  %i.acc = getelementptr inbounds nuw [8 x i8], ptr %i.aaz, i64 %i.abz
  store <4 x double> %interleaved.vec, ptr %i.acc, align 8, !tbaa !21, !alias.scope !173, !noalias !174
  %i.acd = getelementptr inbounds nuw [8 x i8], ptr %i.abb, i64 %i.abz
  %wide.vec1542 = load <4 x double>, ptr %i.acd, align 8, !tbaa !21, !alias.scope !175 ; 2 uses
  %strided.vec1543 = shufflevector <4 x double> %wide.vec1542, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1544 = shufflevector <4 x double> %wide.vec1542, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.ace = fadd <2 x double> %strided.vec1543, %strided.vec1544
  %i.acf = getelementptr inbounds nuw [8 x i8], ptr %i.abu, i64 %i.abz
  %wide.vec1545 = load <4 x double>, ptr %i.acf, align 8, !tbaa !21, !alias.scope !176 ; 2 uses
  %strided.vec1546 = shufflevector <4 x double> %wide.vec1545, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1547 = shufflevector <4 x double> %wide.vec1545, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.acg = fadd <2 x double> %i.ace, %strided.vec1546
  %i.ach = fadd <2 x double> %i.acg, %strided.vec1547
  %i.aci = getelementptr inbounds [8 x i8], ptr %i.abt, i64 %i.abw
  store <2 x double> %i.ach, ptr %i.aci, align 8, !tbaa !21, !alias.scope !177, !noalias !178
  %index.next1548 = add nuw i64 %index1540, 2     ; 2 uses
  %i.acj = icmp eq i64 %index.next1548, %n.vec1564
  br i1 %i.acj, label %middle.block1549, label %vector.body1539, !llvm.loop !179

middle.block1549:                                 ; preds = %vector.body1539
  br i1 %lcmp.mod1974.not.not, label %._crit_edge1148, label %.lr.ph1147.preheader1949

.lr.ph1147.preheader1949:                         ; preds = %vector.memcheck1475, %.lr.ph1147.preheader, %middle.block1549
  %indvars.iv1277.ph = phi i64 [ 1, %vector.memcheck1475 ], [ 1, %.lr.ph1147.preheader ], [ %i.wt, %middle.block1549 ]
  br label %.lr.ph1147

.lr.ph1147:                                       ; preds = %.lr.ph1147.preheader1949, %.lr.ph1147
  %indvars.iv1277 = phi i64 [ %indvars.iv.next1278, %.lr.ph1147 ], [ %indvars.iv1277.ph, %.lr.ph1147.preheader1949 ] ; 3 uses
  %i.ack = add nsw i64 %indvars.iv1277, %i.vu     ; 2 uses
  %i.acl = getelementptr inbounds [8 x i8], ptr %i.aao, i64 %i.ack
  %i.acm = load double, ptr %i.acl, align 8, !tbaa !21
  %i.acn = fmul double %i.acm, 2.500000e-01       ; 4 uses
  %i.aco = shl nuw nsw i64 %indvars.iv1277, 1     ; 5 uses
  %i.acp = getelementptr inbounds nuw [8 x i8], ptr %i.aav, i64 %i.aco
  store double %i.acn, ptr %i.acp, align 8, !tbaa !21
  %i.acq = add nsw i64 %i.aco, -1                 ; 4 uses
  %i.acr = getelementptr inbounds [8 x i8], ptr %i.aav, i64 %i.acq
  store double %i.acn, ptr %i.acr, align 8, !tbaa !21
  %i.acs = getelementptr inbounds nuw [8 x i8], ptr %i.aaz, i64 %i.aco
  store double %i.acn, ptr %i.acs, align 8, !tbaa !21
  %i.act = getelementptr inbounds [8 x i8], ptr %i.aaz, i64 %i.acq
  store double %i.acn, ptr %i.act, align 8, !tbaa !21
  %i.acu = getelementptr inbounds [8 x i8], ptr %i.abb, i64 %i.acq
  %i.acv = load double, ptr %i.acu, align 8, !tbaa !21
  %i.acw = getelementptr inbounds nuw [8 x i8], ptr %i.abb, i64 %i.aco
  %i.acx = load double, ptr %i.acw, align 8, !tbaa !21
  %i.acy = fadd double %i.acv, %i.acx
  %i.acz = getelementptr inbounds [8 x i8], ptr %i.abu, i64 %i.acq
  %i.ada = load double, ptr %i.acz, align 8, !tbaa !21
  %i.adb = fadd double %i.acy, %i.ada
  %i.adc = getelementptr inbounds nuw [8 x i8], ptr %i.abu, i64 %i.aco
  %i.add = load double, ptr %i.adc, align 8, !tbaa !21
  %i.ade = fadd double %i.adb, %i.add
  %i.adf = getelementptr inbounds [8 x i8], ptr %i.abt, i64 %i.ack
  store double %i.ade, ptr %i.adf, align 8, !tbaa !21
  %indvars.iv.next1278 = add nuw nsw i64 %indvars.iv1277, 1 ; 2 uses
  %exitcond1281.not = icmp eq i64 %indvars.iv.next1278, %wide.trip.count1280
  br i1 %exitcond1281.not, label %._crit_edge1148, label %.lr.ph1147, !llvm.loop !180

._crit_edge1148:                                  ; preds = %.lr.ph1147, %middle.block1549, %bb.au
  %i.adg = getelementptr inbounds [8 x i8], ptr %i.aao, i64 %i.vy
  %i.adh = load double, ptr %i.adg, align 8, !tbaa !21
  %i.adi = fmul double %i.adh, 2.500000e-01       ; 2 uses
  %i.adj = getelementptr inbounds [8 x i8], ptr %i.aav, i64 %i.vz
  store double %i.adi, ptr %i.adj, align 8, !tbaa !21
  %i.adk = getelementptr inbounds [8 x i8], ptr %i.aaz, i64 %i.vz
  store double %i.adi, ptr %i.adk, align 8, !tbaa !21
  %indvars.iv.next1283 = add nuw nsw i64 %indvars.iv1282, 1 ; 2 uses
  %exitcond1286.not = icmp eq i64 %indvars.iv.next1283, %wide.trip.count1285
  br i1 %exitcond1286.not, label %._crit_edge1153, label %.lr.ph1152, !llvm.loop !181

._crit_edge1153:                                  ; preds = %._crit_edge1148, %.loopexit1102
  %i.adl = getelementptr inbounds [8 x i8], ptr %i.xb, i64 %i.wd
  %i.adm = load ptr, ptr %i.adl, align 8, !tbaa !30
  %i.adn = getelementptr inbounds [8 x i8], ptr %i.adm, i64 %.11035
  %i.ado = load ptr, ptr %i.adn, align 8, !tbaa !32 ; 5 uses
  %i.adp = getelementptr inbounds [8 x i8], ptr %i.ado, i64 %i.vu
  %i.adq = load double, ptr %i.adp, align 8, !tbaa !21
  %i.adr = fmul double %i.adq, 2.500000e-01
  %i.ads = getelementptr inbounds [8 x i8], ptr %i.xk, i64 %i.we
  %i.adt = load ptr, ptr %i.ads, align 8, !tbaa !30 ; 2 uses
  %i.adu = getelementptr inbounds [8 x i8], ptr %i.adt, i64 %.11033
  %i.adv = load ptr, ptr %i.adu, align 8, !tbaa !32 ; 9 uses
  store double %i.adr, ptr %i.adv, align 8, !tbaa !21
  br i1 %.not10791135, label %._crit_edge1158, label %.lr.ph1157.preheader

.lr.ph1157.preheader:                             ; preds = %._crit_edge1153
  %invariant.gep1413 = getelementptr [8 x i8], ptr %i.ado, i64 %i.vu ; 5 uses
  br i1 %min.iters.check1535, label %.lr.ph1157.preheader1950, label %vector.memcheck1454

vector.memcheck1454:                              ; preds = %.lr.ph1157.preheader
  %scevgep1455 = getelementptr i8, ptr %i.adv, i64 8
  %scevgep1456 = getelementptr i8, ptr %i.adv, i64 %i.wn
  %scevgep1457 = getelementptr i8, ptr %i.ado, i64 %i.wj
  %scevgep1458 = getelementptr i8, ptr %i.ado, i64 %i.wl
  %bound01459 = icmp ult ptr %scevgep1455, %scevgep1458
  %bound11460 = icmp ult ptr %scevgep1457, %scevgep1456
  %found.conflict1461 = and i1 %bound01459, %bound11460
  br i1 %found.conflict1461, label %.lr.ph1157.preheader1950, label %vector.body1467

vector.body1467:                                  ; preds = %vector.memcheck1454, %vector.body1467
  %index1468 = phi i64 [ %index.next1471, %vector.body1467 ], [ 0, %vector.memcheck1454 ] ; 3 uses
  %i.adw = or disjoint i64 %index1468, 1          ; 2 uses
  %i.adx = add i64 %index1468, 2                  ; 2 uses
  %i.ady = getelementptr [8 x i8], ptr %invariant.gep1413, i64 %i.adw
  %i.adz = getelementptr [8 x i8], ptr %invariant.gep1413, i64 %i.adx
  %i.aea = load double, ptr %i.ady, align 8, !tbaa !21, !alias.scope !182
  %i.aeb = load double, ptr %i.adz, align 8, !tbaa !21, !alias.scope !182
  %.scalar1941 = fmul double %i.aea, 2.500000e-01
  %i.aec = insertelement <2 x double> poison, double %.scalar1941, i64 0
  %i.aed = shufflevector <2 x double> %i.aec, <2 x double> poison, <2 x i32> zeroinitializer
  %.scalar1942 = fmul double %i.aeb, 2.500000e-01
  %i.aee = insertelement <2 x double> poison, double %.scalar1942, i64 0
  %i.aef = shufflevector <2 x double> %i.aee, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aeg = shl nuw nsw i64 %i.adw, 4
  %i.aeh = shl nuw nsw i64 %i.adx, 4
  %i.aei = getelementptr inbounds nuw i8, ptr %i.adv, i64 %i.aeg
  %i.aej = getelementptr inbounds nuw i8, ptr %i.adv, i64 %i.aeh
  %i.aek = getelementptr i8, ptr %i.aei, i64 -8
  %i.ael = getelementptr i8, ptr %i.aej, i64 -8
  store <2 x double> %i.aed, ptr %i.aek, align 8, !tbaa !21, !alias.scope !185, !noalias !182
  store <2 x double> %i.aef, ptr %i.ael, align 8, !tbaa !21, !alias.scope !185, !noalias !182
  %index.next1471 = add nuw i64 %index1468, 2     ; 2 uses
  %i.aem = icmp eq i64 %index.next1471, %n.vec1538
  br i1 %i.aem, label %middle.block1472, label %vector.body1467, !llvm.loop !187

middle.block1472:                                 ; preds = %vector.body1467
  br i1 %cmp.n1550, label %._crit_edge1158, label %.lr.ph1157.preheader1950

.lr.ph1157.preheader1950:                         ; preds = %vector.memcheck1454, %.lr.ph1157.preheader, %middle.block1472
  %indvars.iv1287.ph = phi i64 [ 1, %vector.memcheck1454 ], [ 1, %.lr.ph1157.preheader ], [ %i.wv, %middle.block1472 ] ; 5 uses
  br i1 %cmp.n1473, label %.lr.ph1157.prol, label %.lr.ph1157.prol.loopexit

.lr.ph1157.prol:                                  ; preds = %.lr.ph1157.preheader1950
  %gep1414.prol = getelementptr [8 x i8], ptr %invariant.gep1413, i64 %indvars.iv1287.ph
  %i.aen = load double, ptr %gep1414.prol, align 8, !tbaa !21
  %i.aeo = fmul double %i.aen, 2.500000e-01       ; 2 uses
  %.idx1384.prol = shl nuw nsw i64 %indvars.iv1287.ph, 4
  %i.aep = getelementptr inbounds nuw i8, ptr %i.adv, i64 %.idx1384.prol ; 2 uses
  store double %i.aeo, ptr %i.aep, align 8, !tbaa !21
  %i.aeq = getelementptr i8, ptr %i.aep, i64 -8
  store double %i.aeo, ptr %i.aeq, align 8, !tbaa !21
  %indvars.iv.next1288.prol = add nuw nsw i64 %indvars.iv1287.ph, 1
  br label %.lr.ph1157.prol.loopexit

.lr.ph1157.prol.loopexit:                         ; preds = %.lr.ph1157.prol, %.lr.ph1157.preheader1950
  %indvars.iv1287.unr = phi i64 [ %indvars.iv1287.ph, %.lr.ph1157.preheader1950 ], [ %indvars.iv.next1288.prol, %.lr.ph1157.prol ]
  %i.aer = icmp eq i64 %indvars.iv1287.ph, %16
  br i1 %i.aer, label %._crit_edge1158, label %.lr.ph1157

.lr.ph1157:                                       ; preds = %.lr.ph1157.prol.loopexit, %.lr.ph1157
  %indvars.iv1287 = phi i64 [ %indvars.iv.next1288.1, %.lr.ph1157 ], [ %indvars.iv1287.unr, %.lr.ph1157.prol.loopexit ] ; 4 uses
  %gep1414 = getelementptr [8 x i8], ptr %invariant.gep1413, i64 %indvars.iv1287
  %i.aes = load double, ptr %gep1414, align 8, !tbaa !21
  %i.aet = fmul double %i.aes, 2.500000e-01       ; 2 uses
  %.idx1384 = shl nuw nsw i64 %indvars.iv1287, 4
  %i.aeu = getelementptr inbounds nuw i8, ptr %i.adv, i64 %.idx1384 ; 2 uses
  store double %i.aet, ptr %i.aeu, align 8, !tbaa !21
  %i.aev = getelementptr i8, ptr %i.aeu, i64 -8
  store double %i.aet, ptr %i.aev, align 8, !tbaa !21
  %indvars.iv.next1288 = add nuw nsw i64 %indvars.iv1287, 1 ; 2 uses
  %gep1414.1 = getelementptr [8 x i8], ptr %invariant.gep1413, i64 %indvars.iv.next1288
  %i.aew = load double, ptr %gep1414.1, align 8, !tbaa !21
  %i.aex = fmul double %i.aew, 2.500000e-01       ; 2 uses
  %.idx1384.1 = shl nuw nsw i64 %indvars.iv.next1288, 4
  %i.aey = getelementptr inbounds nuw i8, ptr %i.adv, i64 %.idx1384.1 ; 2 uses
  store double %i.aex, ptr %i.aey, align 8, !tbaa !21
  %i.aez = getelementptr i8, ptr %i.aey, i64 -8
  store double %i.aex, ptr %i.aez, align 8, !tbaa !21
  %indvars.iv.next1288.1 = add nuw nsw i64 %indvars.iv1287, 2 ; 2 uses
  %exitcond1291.not.1 = icmp eq i64 %indvars.iv.next1288.1, %wide.trip.count1290
  br i1 %exitcond1291.not.1, label %._crit_edge1158, label %.lr.ph1157, !llvm.loop !188

._crit_edge1158:                                  ; preds = %.lr.ph1157.prol.loopexit, %.lr.ph1157, %middle.block1472, %._crit_edge1153
  %i.afa = getelementptr inbounds [8 x i8], ptr %i.ado, i64 %i.vy
  %i.afb = load double, ptr %i.afa, align 8, !tbaa !21
  %i.afc = fmul double %i.afb, 2.500000e-01
  %i.afd = getelementptr inbounds [8 x i8], ptr %i.adv, i64 %i.vz
  store double %i.afc, ptr %i.afd, align 8, !tbaa !21
  br i1 %i.wf, label %bb.av, label %.loopexit1101

bb.av:                                            ; preds = %._crit_edge1158
  %i.afe = getelementptr inbounds [8 x i8], ptr %i.adt, i64 %.11031
  %i.aff = load ptr, ptr %i.afe, align 8, !tbaa !32 ; 9 uses
  br i1 %i.wb, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.afg = load double, ptr %i.aff, align 8, !tbaa !21
  %i.afh = getelementptr inbounds [8 x i8], ptr %i.xb, i64 %i.we
  %i.afi = load ptr, ptr %i.afh, align 8, !tbaa !30
  %i.afj = getelementptr inbounds [8 x i8], ptr %i.afi, i64 %.11037
  %i.afk = load ptr, ptr %i.afj, align 8, !tbaa !32 ; 2 uses
  store double %i.afg, ptr %i.afk, align 8, !tbaa !21
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  %i.afl = getelementptr inbounds [8 x i8], ptr %i.aff, i64 %i.vz
  %i.afm = load double, ptr %i.afl, align 8, !tbaa !21
  %i.afn = getelementptr inbounds [8 x i8], ptr %i.xb, i64 %i.we
  %i.afo = load ptr, ptr %i.afn, align 8, !tbaa !30
  %i.afp = getelementptr inbounds [8 x i8], ptr %i.afo, i64 %.11037
  %i.afq = load ptr, ptr %i.afp, align 8, !tbaa !32 ; 2 uses
  %i.afr = getelementptr inbounds [8 x i8], ptr %i.afq, i64 %i.vz
  store double %i.afm, ptr %i.afr, align 8, !tbaa !21
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.afs = phi ptr [ %i.afq, %bb.ax ], [ %i.afk, %bb.aw ] ; 3 uses
  br i1 %.not10791135, label %.loopexit1101, label %.lr.ph1162

.lr.ph1162:                                       ; preds = %bb.ay
  %invariant.gep1415 = getelementptr [8 x i8], ptr %i.afs, i64 %i.vu ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph1162
  %scevgep = getelementptr i8, ptr %i.afs, i64 %i.wj
  %scevgep1447 = getelementptr i8, ptr %i.afs, i64 %i.wl
  %scevgep1448 = getelementptr i8, ptr %i.aff, i64 8
  %scevgep1449 = getelementptr i8, ptr %i.aff, i64 %i.wn
  %bound0 = icmp ult ptr %scevgep, %scevgep1449
  %bound1 = icmp ult ptr %scevgep1448, %scevgep1447
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.aft = or disjoint i64 %index, 1              ; 2 uses
  %i.afu = shl i64 %i.aft, 4
  %i.afv = shl i64 %index, 4
  %i.afw = getelementptr i8, ptr %i.aff, i64 %i.afu
  %i.afx = getelementptr i8, ptr %i.aff, i64 %i.afv
  %i.afy = getelementptr i8, ptr %i.afw, i64 -8
  %i.afz = getelementptr i8, ptr %i.afx, i64 40
  %wide.vec = load <4 x double>, ptr %i.afy, align 8, !tbaa !21, !alias.scope !189 ; 2 uses
  %strided.vec = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1450 = shufflevector <4 x double> %wide.vec, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %wide.vec1451 = load <4 x double>, ptr %i.afz, align 8, !tbaa !21, !alias.scope !189 ; 2 uses
  %strided.vec1452 = shufflevector <4 x double> %wide.vec1451, <4 x double> poison, <2 x i32> <i32 0, i32 2>
  %strided.vec1453 = shufflevector <4 x double> %wide.vec1451, <4 x double> poison, <2 x i32> <i32 1, i32 3>
  %i.aga = fadd <2 x double> %strided.vec, %strided.vec1450
  %i.agb = fadd <2 x double> %strided.vec1452, %strided.vec1453
  %i.agc = getelementptr [8 x i8], ptr %invariant.gep1415, i64 %i.aft ; 2 uses
  %i.agd = getelementptr i8, ptr %i.agc, i64 16
  store <2 x double> %i.aga, ptr %i.agc, align 8, !tbaa !21, !alias.scope !192, !noalias !189
  store <2 x double> %i.agb, ptr %i.agd, align 8, !tbaa !21, !alias.scope !192, !noalias !189
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.age = icmp eq i64 %index.next, %n.vec
  br i1 %i.age, label %middle.block, label %vector.body, !llvm.loop !194

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %.loopexit1101, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph1162, %middle.block
  %indvars.iv1292.ph = phi i64 [ 1, %vector.memcheck ], [ 1, %.lr.ph1162 ], [ %i.wx, %middle.block ] ; 5 uses
  br i1 %lcmp.mod1978.not.not, label %scalar.ph.prol, label %scalar.ph.prol.loopexit

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %.idx1385.prol = shl nsw i64 %indvars.iv1292.ph, 4
  %i.agf = getelementptr i8, ptr %i.aff, i64 %.idx1385.prol ; 2 uses
  %i.agg = getelementptr i8, ptr %i.agf, i64 -8
  %i.agh = load double, ptr %i.agg, align 8, !tbaa !21
  %i.agi = load double, ptr %i.agf, align 8, !tbaa !21
  %i.agj = fadd double %i.agh, %i.agi
  %gep1416.prol = getelementptr [8 x i8], ptr %invariant.gep1415, i64 %indvars.iv1292.ph
  store double %i.agj, ptr %gep1416.prol, align 8, !tbaa !21
  %indvars.iv.next1293.prol = add nuw nsw i64 %indvars.iv1292.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv1292.unr = phi i64 [ %indvars.iv1292.ph, %scalar.ph.preheader ], [ %indvars.iv.next1293.prol, %scalar.ph.prol ]
  %i.agk = icmp eq i64 %indvars.iv1292.ph, %i.wz
  br i1 %i.agk, label %.loopexit1101, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv1292 = phi i64 [ %indvars.iv.next1293.1, %scalar.ph ], [ %indvars.iv1292.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %.idx1385 = shl i64 %indvars.iv1292, 4
  %i.agl = getelementptr i8, ptr %i.aff, i64 %.idx1385 ; 2 uses
  %i.agm = getelementptr i8, ptr %i.agl, i64 -8
  %i.agn = load double, ptr %i.agm, align 8, !tbaa !21
  %i.ago = load double, ptr %i.agl, align 8, !tbaa !21
  %i.agp = fadd double %i.agn, %i.ago
  %gep1416 = getelementptr [8 x i8], ptr %invariant.gep1415, i64 %indvars.iv1292
  store double %i.agp, ptr %gep1416, align 8, !tbaa !21
  %indvars.iv.next1293 = add nuw nsw i64 %indvars.iv1292, 1 ; 2 uses
  %.idx1385.1 = shl i64 %indvars.iv.next1293, 4
  %i.agq = getelementptr i8, ptr %i.aff, i64 %.idx1385.1 ; 2 uses
  %i.agr = getelementptr i8, ptr %i.agq, i64 -8
  %i.ags = load double, ptr %i.agr, align 8, !tbaa !21
  %i.agt = load double, ptr %i.agq, align 8, !tbaa !21
  %i.agu = fadd double %i.ags, %i.agt
  %gep1416.1 = getelementptr [8 x i8], ptr %invariant.gep1415, i64 %indvars.iv.next1293
  store double %i.agu, ptr %gep1416.1, align 8, !tbaa !21
  %indvars.iv.next1293.1 = add nuw nsw i64 %indvars.iv1292, 2 ; 2 uses
  %exitcond1296.not.1 = icmp eq i64 %indvars.iv.next1293.1, %wide.trip.count1295
  br i1 %exitcond1296.not.1, label %.loopexit1101, label %scalar.ph, !llvm.loop !195

.loopexit1101:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %bb.ay, %._crit_edge1158
  %indvars.iv.next1298 = add nsw i64 %indvars.iv1297, 1 ; 2 uses
  %i.agv = icmp slt i64 %indvars.iv.next1298, %i.wh
  br i1 %i.agv, label %bb.an, label %.loopexit, !llvm.loop !196

bb.az:                                            ; preds = %bb.ai
  %i.agw = icmp eq i32 %2, 4
  %i.agx = load i32, ptr @z_block_size, align 4, !tbaa !4 ; 3 uses
  %i.agy = add nsw i32 %i.agx, 1                  ; 2 uses
  br i1 %i.agw, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.agz = sext i32 %i.agy to i64
  %i.aha = sext i32 %i.agx to i64
  br label %bb.bc

bb.bb:                                            ; preds = %bb.az
  %i.ahb = sext i32 %i.agx to i64
  %i.ahc = sext i32 %i.agy to i64
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.11029 = phi i64 [ 0, %bb.ba ], [ %i.ahc, %bb.bb ] ; 10 uses
  %.11027 = phi i64 [ 1, %bb.ba ], [ %i.ahb, %bb.bb ] ; 13 uses
  %.11025 = phi i64 [ %i.agz, %bb.ba ], [ 0, %bb.bb ] ; 24 uses
  %.11023 = phi i64 [ %i.aha, %bb.ba ], [ 1, %bb.bb ] ; 22 uses
  %i.ahd = icmp sgt i32 %6, 0
  br i1 %i.ahd, label %.lr.ph1134, label %.loopexit

.lr.ph1134:                                       ; preds = %bb.bc
  %i.ahe = add nsw i32 %6, %5
  %i.ahf = load i32, ptr @y_block_half, align 4, !tbaa !4 ; 3 uses
  %i.ahg = mul nsw i32 %i.ahf, %3                 ; 2 uses
  %i.ahh = load i32, ptr @x_block_half, align 4, !tbaa !4 ; 3 uses
  %i.ahi = mul nsw i32 %i.ahh, %4                 ; 2 uses
  %i.ahj = add i32 %i.ahf, 1                      ; 3 uses
  %i.ahk = load i32, ptr @y_block_size, align 4, !tbaa !4
  %i.ahl = add nsw i32 %i.ahk, 1
  %i.ahm = add i32 %i.ahh, 1                      ; 2 uses
  %i.ahn = load i32, ptr @x_block_size, align 4, !tbaa !4
  %i.aho = add nsw i32 %i.ahn, 1
  %i.ahp = getelementptr inbounds nuw i8, ptr %i.c, i64 184
  %i.ahq = load ptr, ptr %i.ahp, align 8, !tbaa !27
  %i.ahr = sext i32 %i.ahi to i64                 ; 2 uses
  %i.ahs = sext i32 %i.ahg to i64                 ; 8 uses
  %i.aht = getelementptr inbounds nuw i8, ptr %i.e, i64 184
  %i.ahu = load ptr, ptr %i.aht, align 8, !tbaa !27
  %.not10731107 = icmp slt i32 %i.ahf, 1          ; 5 uses
  %i.ahv = add nsw i32 %i.ahj, %i.ahg
  %i.ahw = sext i32 %i.ahv to i64                 ; 3 uses
  %i.ahx = sext i32 %i.ahl to i64                 ; 9 uses
  %i.ahy = icmp eq i32 %4, 0
  %i.ahz = icmp eq i32 %3, 0                      ; 5 uses
  %.not10751118 = icmp slt i32 %i.ahh, 1
  %i.aia = add nsw i32 %i.ahm, %i.ahi
  %i.aib = sext i32 %i.aia to i64
  %i.aic = sext i32 %i.aho to i64                 ; 2 uses
  %i.aid = icmp eq i32 %4, 1
  %i.aie = sext i32 %5 to i64
  %i.aif = sext i32 %i.ahe to i64
  %wide.trip.count = zext i32 %i.ahj to i64       ; 2 uses
  %wide.trip.count1252 = zext i32 %i.ahm to i64
  %wide.trip.count1247 = zext i32 %i.ahj to i64
  %i.aig = add nsw i64 %wide.trip.count, -1       ; 12 uses
  %i.aih = add nsw i64 %wide.trip.count, -2       ; 4 uses
  %xtraiter = and i64 %i.aig, 1
  %i.aii = icmp eq i64 %i.aih, 0
  %unroll_iter = and i64 %i.aig, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod1954 = trunc i64 %i.aig to i1
  %.sink1434.in.idx = select i1 %i.ahz, i64 0, i64 %i.ahx
  %xtraiter1955 = and i64 %i.aig, 1
  %i.aij = icmp eq i64 %i.aih, 0
  %unroll_iter1958 = and i64 %i.aig, -2
  %lcmp.mod1956.not = icmp eq i64 %xtraiter1955, 0
  %lcmp.mod1957 = trunc i64 %i.aig to i1
  %xtraiter1960 = and i64 %i.aig, 1
  %i.aik = icmp eq i64 %i.aih, 0
  %unroll_iter1963 = and i64 %i.aig, -2
  %lcmp.mod1961.not = icmp eq i64 %xtraiter1960, 0
  %lcmp.mod1962 = trunc i64 %i.aig to i1
  %.sink1440.in.idx = select i1 %i.ahz, i64 0, i64 %i.ahx
  %xtraiter1966 = and i64 %i.aig, 1
  %i.ail = icmp eq i64 %i.aih, 0
  %unroll_iter1969 = and i64 %i.aig, -2
  %lcmp.mod1967.not = icmp eq i64 %xtraiter1966, 0
  %lcmp.mod1968 = trunc i64 %i.aig to i1
  br label %bb.bd

bb.bd:                                            ; preds = %.lr.ph1134, %.loopexit1104
  %indvars.iv1264 = phi i64 [ %i.aie, %.lr.ph1134 ], [ %indvars.iv.next1265, %.loopexit1104 ] ; 3 uses
  %i.aim = getelementptr inbounds [8 x i8], ptr %i.ahq, i64 %indvars.iv1264
  %i.ain = load ptr, ptr %i.aim, align 8, !tbaa !28 ; 5 uses
  %i.aio = getelementptr inbounds [8 x i8], ptr %i.ain, i64 %i.ahr
  %i.aip = load ptr, ptr %i.aio, align 8, !tbaa !30 ; 3 uses
  %i.aiq = getelementptr inbounds [8 x i8], ptr %i.aip, i64 %i.ahs
  %i.air = load ptr, ptr %i.aiq, align 8, !tbaa !32
  %i.ais = getelementptr inbounds [8 x i8], ptr %i.air, i64 %.11027
  %i.ait = load double, ptr %i.ais, align 8, !tbaa !21
  %i.aiu = fmul double %i.ait, 2.500000e-01
  %i.aiv = getelementptr inbounds [8 x i8], ptr %i.ahu, i64 %indvars.iv1264
  %i.aiw = load ptr, ptr %i.aiv, align 8, !tbaa !28 ; 3 uses
  %i.aix = load ptr, ptr %i.aiw, align 8, !tbaa !30 ; 8 uses
  %i.aiy = load ptr, ptr %i.aix, align 8, !tbaa !32 ; 2 uses
  %i.aiz = getelementptr inbounds [8 x i8], ptr %i.aiy, i64 %.11025
  store double %i.aiu, ptr %i.aiz, align 8, !tbaa !21
  br i1 %.not10731107, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.bd
  %invariant.gep = getelementptr [8 x i8], ptr %i.aip, i64 %i.ahs ; 3 uses
  br i1 %i.aii, label %.lr.ph.epil.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph ], [ 1, %.lr.ph.preheader ] ; 4 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph ], [ 0, %.lr.ph.preheader ]
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.aja = load ptr, ptr %gep, align 8, !tbaa !32
  %i.ajb = getelementptr inbounds [8 x i8], ptr %i.aja, i64 %.11027
  %i.ajc = load double, ptr %i.ajb, align 8, !tbaa !21
  %i.ajd = fmul double %i.ajc, 2.500000e-01       ; 2 uses
  %.idx = shl nuw nsw i64 %indvars.iv, 4
  %i.aje = getelementptr inbounds nuw i8, ptr %i.aix, i64 %.idx ; 2 uses
  %i.ajf = load ptr, ptr %i.aje, align 8, !tbaa !32
end_hunk_1
begin_hunk_2_@on_proc_comm_diff:bb.a
  %i.apb = load double, ptr %i.apa, align 8, !tbaa !21
  %i.apc = fmul double %i.apb, 2.500000e-01       ; 2 uses
  %.idx1379 = shl nuw nsw i64 %indvars.iv1254, 4
  %i.apd = getelementptr inbounds nuw i8, ptr %i.aow, i64 %.idx1379 ; 2 uses
  %i.ape = load ptr, ptr %i.apd, align 8, !tbaa !32
  %i.apf = getelementptr inbounds [8 x i8], ptr %i.ape, i64 %.11025
  store double %i.apc, ptr %i.apf, align 8, !tbaa !21
  %i.apg = getelementptr i8, ptr %i.apd, i64 -8
  %i.aph = load ptr, ptr %i.apg, align 8, !tbaa !32
  %i.api = getelementptr inbounds [8 x i8], ptr %i.aph, i64 %.11025
  store double %i.apc, ptr %i.api, align 8, !tbaa !21
  %indvars.iv.next1255 = add nuw nsw i64 %indvars.iv1254, 1 ; 2 uses
  %gep1404.1 = getelementptr [8 x i8], ptr %invariant.gep1403, i64 %indvars.iv.next1255
  %i.apj = load ptr, ptr %gep1404.1, align 8, !tbaa !32
  %i.apk = getelementptr inbounds [8 x i8], ptr %i.apj, i64 %.11027
  %i.apl = load double, ptr %i.apk, align 8, !tbaa !21
  %i.apm = fmul double %i.apl, 2.500000e-01       ; 2 uses
  %.idx1379.1 = shl nuw nsw i64 %indvars.iv.next1255, 4
  %i.apn = getelementptr inbounds nuw i8, ptr %i.aow, i64 %.idx1379.1 ; 2 uses
  %i.apo = load ptr, ptr %i.apn, align 8, !tbaa !32
  %i.app = getelementptr inbounds [8 x i8], ptr %i.apo, i64 %.11025
  store double %i.apm, ptr %i.app, align 8, !tbaa !21
  %i.apq = getelementptr i8, ptr %i.apn, i64 -8
  %i.apr = load ptr, ptr %i.apq, align 8, !tbaa !32
  %i.aps = getelementptr inbounds [8 x i8], ptr %i.apr, i64 %.11025
  store double %i.apm, ptr %i.aps, align 8, !tbaa !21
  %indvars.iv.next1255.1 = add nuw nsw i64 %indvars.iv1254, 2 ; 2 uses
  %niter1964.next.1 = add i64 %niter1964, 2       ; 2 uses
  %niter1964.ncmp.1 = icmp eq i64 %niter1964.next.1, %unroll_iter1963
  br i1 %niter1964.ncmp.1, label %._crit_edge1127.loopexit.unr-lcssa, label %.lr.ph1126, !llvm.loop !201

._crit_edge1127.loopexit.unr-lcssa:               ; preds = %.lr.ph1126
  br i1 %lcmp.mod1961.not, label %._crit_edge1127, label %.lr.ph1126.epil.preheader

.lr.ph1126.epil.preheader:                        ; preds = %._crit_edge1127.loopexit.unr-lcssa, %.lr.ph1126.preheader
  %indvars.iv1254.epil.init = phi i64 [ 1, %.lr.ph1126.preheader ], [ %indvars.iv.next1255.1, %._crit_edge1127.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1962)
  %gep1404.epil = getelementptr [8 x i8], ptr %invariant.gep1403, i64 %indvars.iv1254.epil.init
  %i.apt = load ptr, ptr %gep1404.epil, align 8, !tbaa !32
  %i.apu = getelementptr inbounds [8 x i8], ptr %i.apt, i64 %.11027
  %i.apv = load double, ptr %i.apu, align 8, !tbaa !21
  %i.apw = fmul double %i.apv, 2.500000e-01       ; 2 uses
  %.idx1379.epil = shl nuw nsw i64 %indvars.iv1254.epil.init, 4
  %i.apx = getelementptr inbounds nuw i8, ptr %i.aow, i64 %.idx1379.epil ; 2 uses
  %i.apy = load ptr, ptr %i.apx, align 8, !tbaa !32
  %i.apz = getelementptr inbounds [8 x i8], ptr %i.apy, i64 %.11025
  store double %i.apw, ptr %i.apz, align 8, !tbaa !21
  %i.aqa = getelementptr i8, ptr %i.apx, i64 -8
  %i.aqb = load ptr, ptr %i.aqa, align 8, !tbaa !32
  %i.aqc = getelementptr inbounds [8 x i8], ptr %i.aqb, i64 %.11025
  store double %i.apw, ptr %i.aqc, align 8, !tbaa !21
  br label %._crit_edge1127

._crit_edge1127:                                  ; preds = %.lr.ph1126.epil.preheader, %._crit_edge1127.loopexit.unr-lcssa, %._crit_edge1122
  %i.aqd = getelementptr inbounds [8 x i8], ptr %i.aop, i64 %i.ahw
  %i.aqe = load ptr, ptr %i.aqd, align 8, !tbaa !32
  %i.aqf = getelementptr inbounds [8 x i8], ptr %i.aqe, i64 %.11027
  %i.aqg = load double, ptr %i.aqf, align 8, !tbaa !21
  %i.aqh = fmul double %i.aqg, 2.500000e-01
  %i.aqi = getelementptr inbounds [8 x i8], ptr %i.aow, i64 %i.ahx
  %i.aqj = load ptr, ptr %i.aqi, align 8, !tbaa !32 ; 2 uses
  %i.aqk = getelementptr inbounds [8 x i8], ptr %i.aqj, i64 %.11025
  store double %i.aqh, ptr %i.aqk, align 8, !tbaa !21
  br i1 %i.aid, label %bb.bi, label %.loopexit1104

bb.bi:                                            ; preds = %._crit_edge1127
  %i.aql = getelementptr inbounds [8 x i8], ptr %i.ain, i64 %i.aic
  %i.aqm = load ptr, ptr %i.aql, align 8, !tbaa !30 ; 2 uses
  %.sink1440.in = getelementptr inbounds [8 x i8], ptr %i.aqm, i64 %.sink1440.in.idx
  %.pn1441 = select i1 %i.ahz, ptr %i.aox, ptr %i.aqj
  %.sink1438.in = getelementptr inbounds [8 x i8], ptr %.pn1441, i64 %.11023
  %.sink1438 = load double, ptr %.sink1438.in, align 8, !tbaa !21
  %.sink1440 = load ptr, ptr %.sink1440.in, align 8, !tbaa !32
  %i.aqn = getelementptr inbounds [8 x i8], ptr %.sink1440, i64 %.11029
  store double %.sink1438, ptr %i.aqn, align 8, !tbaa !21
  br i1 %.not10731107, label %.loopexit1104, label %.lr.ph1131

.lr.ph1131:                                       ; preds = %bb.bi
  %invariant.gep1405 = getelementptr [8 x i8], ptr %i.aqm, i64 %i.ahs ; 3 uses
  br i1 %i.ail, label %.epil.preheader1965, label %.lr.ph1131.new

.lr.ph1131.new:                                   ; preds = %.lr.ph1131, %.lr.ph1131.new
  %indvars.iv1259 = phi i64 [ %indvars.iv.next1260.1, %.lr.ph1131.new ], [ 1, %.lr.ph1131 ] ; 4 uses
  %niter1970 = phi i64 [ %niter1970.next.1, %.lr.ph1131.new ], [ 0, %.lr.ph1131 ]
  %.idx1380 = shl i64 %indvars.iv1259, 4
  %i.aqo = getelementptr i8, ptr %i.aow, i64 %.idx1380 ; 2 uses
  %i.aqp = getelementptr i8, ptr %i.aqo, i64 -8
  %i.aqq = load ptr, ptr %i.aqp, align 8, !tbaa !32
  %i.aqr = getelementptr inbounds [8 x i8], ptr %i.aqq, i64 %.11023
  %i.aqs = load double, ptr %i.aqr, align 8, !tbaa !21
  %i.aqt = load ptr, ptr %i.aqo, align 8, !tbaa !32
  %i.aqu = getelementptr inbounds [8 x i8], ptr %i.aqt, i64 %.11023
  %i.aqv = load double, ptr %i.aqu, align 8, !tbaa !21
  %i.aqw = fadd double %i.aqs, %i.aqv
  %gep1406 = getelementptr [8 x i8], ptr %invariant.gep1405, i64 %indvars.iv1259
  %i.aqx = load ptr, ptr %gep1406, align 8, !tbaa !32
  %i.aqy = getelementptr inbounds [8 x i8], ptr %i.aqx, i64 %.11029
  store double %i.aqw, ptr %i.aqy, align 8, !tbaa !21
  %indvars.iv.next1260 = add nuw nsw i64 %indvars.iv1259, 1 ; 2 uses
  %.idx1380.1 = shl i64 %indvars.iv.next1260, 4
  %i.aqz = getelementptr i8, ptr %i.aow, i64 %.idx1380.1 ; 2 uses
  %i.ara = getelementptr i8, ptr %i.aqz, i64 -8
  %i.arb = load ptr, ptr %i.ara, align 8, !tbaa !32
  %i.arc = getelementptr inbounds [8 x i8], ptr %i.arb, i64 %.11023
  %i.ard = load double, ptr %i.arc, align 8, !tbaa !21
  %i.are = load ptr, ptr %i.aqz, align 8, !tbaa !32
  %i.arf = getelementptr inbounds [8 x i8], ptr %i.are, i64 %.11023
  %i.arg = load double, ptr %i.arf, align 8, !tbaa !21
  %i.arh = fadd double %i.ard, %i.arg
  %gep1406.1 = getelementptr [8 x i8], ptr %invariant.gep1405, i64 %indvars.iv.next1260
  %i.ari = load ptr, ptr %gep1406.1, align 8, !tbaa !32
  %i.arj = getelementptr inbounds [8 x i8], ptr %i.ari, i64 %.11029
  store double %i.arh, ptr %i.arj, align 8, !tbaa !21
  %indvars.iv.next1260.1 = add nuw nsw i64 %indvars.iv1259, 2 ; 2 uses
  %niter1970.next.1 = add i64 %niter1970, 2       ; 2 uses
  %niter1970.ncmp.1 = icmp eq i64 %niter1970.next.1, %unroll_iter1969
  br i1 %niter1970.ncmp.1, label %.loopexit1104.loopexit.unr-lcssa, label %.lr.ph1131.new, !llvm.loop !202

.loopexit1104.loopexit.unr-lcssa:                 ; preds = %.lr.ph1131.new
  br i1 %lcmp.mod1967.not, label %.loopexit1104, label %.epil.preheader1965

.epil.preheader1965:                              ; preds = %.loopexit1104.loopexit.unr-lcssa, %.lr.ph1131
  %indvars.iv1259.epil.init = phi i64 [ 1, %.lr.ph1131 ], [ %indvars.iv.next1260.1, %.loopexit1104.loopexit.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod1968)
  %.idx1380.epil = shl i64 %indvars.iv1259.epil.init, 4
  %i.ark = getelementptr i8, ptr %i.aow, i64 %.idx1380.epil ; 2 uses
  %i.arl = getelementptr i8, ptr %i.ark, i64 -8
  %i.arm = load ptr, ptr %i.arl, align 8, !tbaa !32
  %i.arn = getelementptr inbounds [8 x i8], ptr %i.arm, i64 %.11023
  %i.aro = load double, ptr %i.arn, align 8, !tbaa !21
  %i.arp = load ptr, ptr %i.ark, align 8, !tbaa !32
  %i.arq = getelementptr inbounds [8 x i8], ptr %i.arp, i64 %.11023
  %i.arr = load double, ptr %i.arq, align 8, !tbaa !21
  %i.ars = fadd double %i.aro, %i.arr
  %gep1406.epil = getelementptr [8 x i8], ptr %invariant.gep1405, i64 %indvars.iv1259.epil.init
  %i.art = load ptr, ptr %gep1406.epil, align 8, !tbaa !32
  %i.aru = getelementptr inbounds [8 x i8], ptr %i.art, i64 %.11029
  store double %i.ars, ptr %i.aru, align 8, !tbaa !21
  br label %.loopexit1104

.loopexit1104:                                    ; preds = %.epil.preheader1965, %.loopexit1104.loopexit.unr-lcssa, %bb.bi, %._crit_edge1127
  %indvars.iv.next1265 = add nsw i64 %indvars.iv1264, 1 ; 2 uses
  %i.arv = icmp slt i64 %indvars.iv.next1265, %i.aif
  br i1 %i.arv, label %bb.bd, label %.loopexit, !llvm.loop !203

.loopexit:                                        ; preds = %.loopexit1104, %.loopexit1101, %.loopexit1098, %._crit_edge1203.split, %._crit_edge1213.split, %._crit_edge1223.split, %.preheader1096.lr.ph, %.preheader1093.lr.ph, %.preheader1091.lr.ph, %bb.bc, %bb.am, %bb.u, %bb.o, %bb.k, %bb.f, %bb.ai, %bb.g
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @apply_bc(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @code, align 4, !tbaa !4
  %i.b = icmp eq i32 %i.a, 0
  %i.c = load i32, ptr @stencil, align 4
  %i.d = icmp eq i32 %i.c, 7
  %or.cond = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  switch i32 %0, label %.loopexit [
    i32 1, label %bb.c
    i32 0, label %bb.d
    i32 3, label %bb.e
    i32 2, label %bb.f
    i32 5, label %bb.g
    i32 4, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr @x_block_size, align 4, !tbaa !4 ; 2 uses
  %i.f = add nsw i32 %i.e, 1
  %i.g = sext i32 %i.e to i64
  %i.h = sext i32 %i.f to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0116 = phi i64 [ %i.g, %bb.c ], [ 1, %bb.b ]
  %.0 = phi i64 [ %i.h, %bb.c ], [ 0, %bb.b ]
  %i.i = add nsw i32 %3, %2
  %i.j = icmp sgt i32 %3, 0
  br i1 %i.j, label %.preheader151.lr.ph, label %.loopexit

.preheader151.lr.ph:                              ; preds = %bb.d
  %i.k = load i32, ptr @y_block_size, align 4, !tbaa !4 ; 2 uses
  %.not149214 = icmp slt i32 %i.k, 1
  %i.l = load i32, ptr @z_block_size, align 4     ; 5 uses
  %.not150211 = icmp slt i32 %i.l, 1
  %or.cond330 = select i1 %.not149214, i1 true, i1 %.not150211
  br i1 %or.cond330, label %.loopexit, label %.preheader151.lr.ph.split.split

.preheader151.lr.ph.split.split:                  ; preds = %.preheader151.lr.ph
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !27
  %i.o = add nuw i32 %i.l, 1
  %i.p = add nuw i32 %i.k, 1
  %i.q = sext i32 %2 to i64
  %i.r = sext i32 %i.i to i64
  %wide.trip.count308 = zext i32 %i.p to i64
  %wide.trip.count303 = zext i32 %i.o to i64      ; 2 uses
  %i.s = zext nneg i32 %i.l to i64
  %i.t = zext nneg i32 %i.l to i64                ; 2 uses
  %min.iters.check375 = icmp ult i32 %i.l, 4
  %n.vec378 = and i64 %i.t, 2147483644            ; 3 uses
  %i.u = or disjoint i64 %n.vec378, 1
  %cmp.n385 = icmp eq i64 %n.vec378, %i.t
  br label %.preheader151

.preheader151:                                    ; preds = %.preheader151.lr.ph.split.split, %._crit_edge216.split
  %indvars.iv310 = phi i64 [ %i.q, %.preheader151.lr.ph.split.split ], [ %indvars.iv.next311, %._crit_edge216.split ] ; 2 uses
  %i.v = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv310
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !28   ; 2 uses
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %.0116
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !30
  %i.z = getelementptr inbounds [8 x i8], ptr %i.w, i64 %.0
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !30
  br label %.preheader

.preheader:                                       ; preds = %.preheader151, %._crit_edge213
  %indvars.iv305 = phi i64 [ 1, %.preheader151 ], [ %indvars.iv.next306, %._crit_edge213 ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv305
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !32 ; 7 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.aa, i64 %indvars.iv305
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !32 ; 7 uses
  %i.af = ptrtoaddr ptr %i.ae to i64
  %i.ag = ptrtoaddr ptr %i.ac to i64
  %i.ah = sub i64 %i.af, %i.ag
  %diff.check373 = icmp ult i64 %i.ah, 32
  %or.cond389 = select i1 %min.iters.check375, i1 true, i1 %diff.check373
  br i1 %or.cond389, label %scalar.ph374.preheader, label %vector.body379

vector.body379:                                   ; preds = %.preheader, %vector.body379
  %index380 = phi i64 [ %index.next383, %vector.body379 ], [ 0, %.preheader ] ; 2 uses
  %i.ai = or disjoint i64 %index380, 1            ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %i.ai ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %wide.load381 = load <2 x double>, ptr %i.aj, align 8, !tbaa !21
  %wide.load382 = load <2 x double>, ptr %i.ak, align 8, !tbaa !21
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %i.ai ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x double> %wide.load381, ptr %i.al, align 8, !tbaa !21
  store <2 x double> %wide.load382, ptr %i.am, align 8, !tbaa !21
  %index.next383 = add nuw i64 %index380, 4       ; 2 uses
  %i.an = icmp eq i64 %index.next383, %n.vec378
  br i1 %i.an, label %middle.block384, label %vector.body379, !llvm.loop !204

middle.block384:                                  ; preds = %vector.body379
  br i1 %cmp.n385, label %._crit_edge213, label %scalar.ph374.preheader

scalar.ph374.preheader:                           ; preds = %.preheader, %middle.block384
  %indvars.iv300.ph = phi i64 [ 1, %.preheader ], [ %i.u, %middle.block384 ] ; 4 uses
  %i.ao = sub nsw i64 %wide.trip.count303, %indvars.iv300.ph
  %i.ap = sub nsw i64 %i.s, %indvars.iv300.ph
  %xtraiter420 = and i64 %i.ao, 3                 ; 2 uses
  %lcmp.mod421.not = icmp eq i64 %xtraiter420, 0
  br i1 %lcmp.mod421.not, label %scalar.ph374.prol.loopexit, label %scalar.ph374.prol

scalar.ph374.prol:                                ; preds = %scalar.ph374.preheader, %scalar.ph374.prol
  %indvars.iv300.prol = phi i64 [ %indvars.iv.next301.prol, %scalar.ph374.prol ], [ %indvars.iv300.ph, %scalar.ph374.preheader ] ; 3 uses
  %prol.iter422 = phi i64 [ %prol.iter422.next, %scalar.ph374.prol ], [ 0, %scalar.ph374.preheader ]
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv300.prol
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv300.prol
  store double %i.ar, ptr %i.as, align 8, !tbaa !21
  %indvars.iv.next301.prol = add nuw nsw i64 %indvars.iv300.prol, 1 ; 2 uses
  %prol.iter422.next = add i64 %prol.iter422, 1   ; 2 uses
  %prol.iter422.cmp.not = icmp eq i64 %prol.iter422.next, %xtraiter420
  br i1 %prol.iter422.cmp.not, label %scalar.ph374.prol.loopexit, label %scalar.ph374.prol, !llvm.loop !205

scalar.ph374.prol.loopexit:                       ; preds = %scalar.ph374.prol, %scalar.ph374.preheader
  %indvars.iv300.unr = phi i64 [ %indvars.iv300.ph, %scalar.ph374.preheader ], [ %indvars.iv.next301.prol, %scalar.ph374.prol ]
  %i.at = icmp ult i64 %i.ap, 3
  br i1 %i.at, label %._crit_edge213, label %scalar.ph374

scalar.ph374:                                     ; preds = %scalar.ph374.prol.loopexit, %scalar.ph374
  %indvars.iv300 = phi i64 [ %indvars.iv.next301.3, %scalar.ph374 ], [ %indvars.iv300.unr, %scalar.ph374.prol.loopexit ] ; 6 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv300
  %i.av = load double, ptr %i.au, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv300
  store double %i.av, ptr %i.aw, align 8, !tbaa !21
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 1 ; 2 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next301
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !21
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next301
  store double %i.ay, ptr %i.az, align 8, !tbaa !21
  %indvars.iv.next301.1 = add nuw nsw i64 %indvars.iv300, 2 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next301.1
  %i.bb = load double, ptr %i.ba, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next301.1
  store double %i.bb, ptr %i.bc, align 8, !tbaa !21
  %indvars.iv.next301.2 = add nuw nsw i64 %indvars.iv300, 3 ; 2 uses
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ac, i64 %indvars.iv.next301.2
  %i.be = load double, ptr %i.bd, align 8, !tbaa !21
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.ae, i64 %indvars.iv.next301.2
  store double %i.be, ptr %i.bf, align 8, !tbaa !21
  %indvars.iv.next301.3 = add nuw nsw i64 %indvars.iv300, 4 ; 2 uses
  %exitcond304.not.3 = icmp eq i64 %indvars.iv.next301.3, %wide.trip.count303
  br i1 %exitcond304.not.3, label %._crit_edge213, label %scalar.ph374, !llvm.loop !207

._crit_edge213:                                   ; preds = %scalar.ph374.prol.loopexit, %scalar.ph374, %middle.block384
  %indvars.iv.next306 = add nuw nsw i64 %indvars.iv305, 1 ; 2 uses
  %exitcond309.not = icmp eq i64 %indvars.iv.next306, %wide.trip.count308
  br i1 %exitcond309.not, label %._crit_edge216.split, label %.preheader, !llvm.loop !208

._crit_edge216.split:                             ; preds = %._crit_edge213
  %indvars.iv.next311 = add nsw i64 %indvars.iv310, 1 ; 2 uses
  %i.bg = icmp slt i64 %indvars.iv.next311, %i.r
  br i1 %i.bg, label %.preheader151, label %.loopexit, !llvm.loop !209

bb.e:                                             ; preds = %bb.b
  %i.bh = load i32, ptr @y_block_size, align 4, !tbaa !4 ; 2 uses
  %i.bi = add nsw i32 %i.bh, 1
  %i.bj = sext i32 %i.bh to i64
  %i.bk = sext i32 %i.bi to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.1117 = phi i64 [ %i.bj, %bb.e ], [ 1, %bb.b ]
  %.1 = phi i64 [ %i.bk, %bb.e ], [ 0, %bb.b ]
  %i.bl = add nsw i32 %3, %2
  %i.bm = icmp sgt i32 %3, 0
  br i1 %i.bm, label %.preheader153.lr.ph, label %.loopexit

.preheader153.lr.ph:                              ; preds = %bb.f
  %i.bn = load i32, ptr @x_block_size, align 4, !tbaa !4 ; 2 uses
  %.not147205 = icmp slt i32 %i.bn, 1
  %i.bo = load i32, ptr @z_block_size, align 4    ; 5 uses
  %.not148202 = icmp slt i32 %i.bo, 1
  %or.cond331 = select i1 %.not147205, i1 true, i1 %.not148202
  br i1 %or.cond331, label %.loopexit, label %.preheader153.lr.ph.split.split

.preheader153.lr.ph.split.split:                  ; preds = %.preheader153.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !27
  %i.br = add nuw i32 %i.bo, 1
  %i.bs = add nuw i32 %i.bn, 1
  %i.bt = sext i32 %2 to i64
  %i.bu = sext i32 %i.bl to i64
  %wide.trip.count294 = zext i32 %i.bs to i64
  %wide.trip.count289 = zext i32 %i.br to i64     ; 2 uses
  %i.bv = zext nneg i32 %i.bo to i64
  %i.bw = zext nneg i32 %i.bo to i64              ; 2 uses
  %min.iters.check360 = icmp ult i32 %i.bo, 4
  %n.vec363 = and i64 %i.bw, 2147483644           ; 3 uses
  %i.bx = or disjoint i64 %n.vec363, 1
  %cmp.n370 = icmp eq i64 %n.vec363, %i.bw
  br label %.preheader153

.preheader153:                                    ; preds = %.preheader153.lr.ph.split.split, %._crit_edge207.split
  %indvars.iv296 = phi i64 [ %i.bt, %.preheader153.lr.ph.split.split ], [ %indvars.iv.next297, %._crit_edge207.split ] ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bq, i64 %indvars.iv296
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !28
  br label %.preheader152

.preheader152:                                    ; preds = %.preheader153, %._crit_edge204
  %indvars.iv291 = phi i64 [ 1, %.preheader153 ], [ %indvars.iv.next292, %._crit_edge204 ] ; 2 uses
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.bz, i64 %indvars.iv291
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !30 ; 2 uses
  %i.cc = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %.1117
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !32 ; 7 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.cb, i64 %.1
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !32 ; 7 uses
  %i.cg = ptrtoaddr ptr %i.cf to i64
  %i.ch = ptrtoaddr ptr %i.cd to i64
  %i.ci = sub i64 %i.cg, %i.ch
  %diff.check358 = icmp ult i64 %i.ci, 32
  %or.cond392 = select i1 %min.iters.check360, i1 true, i1 %diff.check358
  br i1 %or.cond392, label %scalar.ph359.preheader, label %vector.body364

vector.body364:                                   ; preds = %.preheader152, %vector.body364
  %index365 = phi i64 [ %index.next368, %vector.body364 ], [ 0, %.preheader152 ] ; 2 uses
  %i.cj = or disjoint i64 %index365, 1            ; 2 uses
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load366 = load <2 x double>, ptr %i.ck, align 8, !tbaa !21
  %wide.load367 = load <2 x double>, ptr %i.cl, align 8, !tbaa !21
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cj ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  store <2 x double> %wide.load366, ptr %i.cm, align 8, !tbaa !21
  store <2 x double> %wide.load367, ptr %i.cn, align 8, !tbaa !21
  %index.next368 = add nuw i64 %index365, 4       ; 2 uses
  %i.co = icmp eq i64 %index.next368, %n.vec363
  br i1 %i.co, label %middle.block369, label %vector.body364, !llvm.loop !210

middle.block369:                                  ; preds = %vector.body364
  br i1 %cmp.n370, label %._crit_edge204, label %scalar.ph359.preheader

scalar.ph359.preheader:                           ; preds = %.preheader152, %middle.block369
  %indvars.iv286.ph = phi i64 [ 1, %.preheader152 ], [ %i.bx, %middle.block369 ] ; 4 uses
  %i.cp = sub nsw i64 %wide.trip.count289, %indvars.iv286.ph
  %i.cq = sub nsw i64 %i.bv, %indvars.iv286.ph
  %xtraiter417 = and i64 %i.cp, 3                 ; 2 uses
  %lcmp.mod418.not = icmp eq i64 %xtraiter417, 0
  br i1 %lcmp.mod418.not, label %scalar.ph359.prol.loopexit, label %scalar.ph359.prol

scalar.ph359.prol:                                ; preds = %scalar.ph359.preheader, %scalar.ph359.prol
  %indvars.iv286.prol = phi i64 [ %indvars.iv.next287.prol, %scalar.ph359.prol ], [ %indvars.iv286.ph, %scalar.ph359.preheader ] ; 3 uses
  %prol.iter419 = phi i64 [ %prol.iter419.next, %scalar.ph359.prol ], [ 0, %scalar.ph359.preheader ]
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv286.prol
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !21
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv286.prol
  store double %i.cs, ptr %i.ct, align 8, !tbaa !21
  %indvars.iv.next287.prol = add nuw nsw i64 %indvars.iv286.prol, 1 ; 2 uses
  %prol.iter419.next = add i64 %prol.iter419, 1   ; 2 uses
  %prol.iter419.cmp.not = icmp eq i64 %prol.iter419.next, %xtraiter417
  br i1 %prol.iter419.cmp.not, label %scalar.ph359.prol.loopexit, label %scalar.ph359.prol, !llvm.loop !211

scalar.ph359.prol.loopexit:                       ; preds = %scalar.ph359.prol, %scalar.ph359.preheader
  %indvars.iv286.unr = phi i64 [ %indvars.iv286.ph, %scalar.ph359.preheader ], [ %indvars.iv.next287.prol, %scalar.ph359.prol ]
  %i.cu = icmp ult i64 %i.cq, 3
  br i1 %i.cu, label %._crit_edge204, label %scalar.ph359

scalar.ph359:                                     ; preds = %scalar.ph359.prol.loopexit, %scalar.ph359
  %indvars.iv286 = phi i64 [ %indvars.iv.next287.3, %scalar.ph359 ], [ %indvars.iv286.unr, %scalar.ph359.prol.loopexit ] ; 6 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv286
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !21
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv286
  store double %i.cw, ptr %i.cx, align 8, !tbaa !21
  %indvars.iv.next287 = add nuw nsw i64 %indvars.iv286, 1 ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next287
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !21
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next287
  store double %i.cz, ptr %i.da, align 8, !tbaa !21
  %indvars.iv.next287.1 = add nuw nsw i64 %indvars.iv286, 2 ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next287.1
  %i.dc = load double, ptr %i.db, align 8, !tbaa !21
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next287.1
  store double %i.dc, ptr %i.dd, align 8, !tbaa !21
  %indvars.iv.next287.2 = add nuw nsw i64 %indvars.iv286, 3 ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %indvars.iv.next287.2
  %i.df = load double, ptr %i.de, align 8, !tbaa !21
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %indvars.iv.next287.2
  store double %i.df, ptr %i.dg, align 8, !tbaa !21
  %indvars.iv.next287.3 = add nuw nsw i64 %indvars.iv286, 4 ; 2 uses
  %exitcond290.not.3 = icmp eq i64 %indvars.iv.next287.3, %wide.trip.count289
  br i1 %exitcond290.not.3, label %._crit_edge204, label %scalar.ph359, !llvm.loop !212

._crit_edge204:                                   ; preds = %scalar.ph359.prol.loopexit, %scalar.ph359, %middle.block369
  %indvars.iv.next292 = add nuw nsw i64 %indvars.iv291, 1 ; 2 uses
  %exitcond295.not = icmp eq i64 %indvars.iv.next292, %wide.trip.count294
  br i1 %exitcond295.not, label %._crit_edge207.split, label %.preheader152, !llvm.loop !213

._crit_edge207.split:                             ; preds = %._crit_edge204
  %indvars.iv.next297 = add nsw i64 %indvars.iv296, 1 ; 2 uses
  %i.dh = icmp slt i64 %indvars.iv.next297, %i.bu
  br i1 %i.dh, label %.preheader153, label %.loopexit, !llvm.loop !214

bb.g:                                             ; preds = %bb.b
  %i.di = load i32, ptr @z_block_size, align 4, !tbaa !4 ; 2 uses
  %i.dj = add nsw i32 %i.di, 1
  %i.dk = sext i32 %i.di to i64
  %i.dl = sext i32 %i.dj to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.b
  %.2118 = phi i64 [ %i.dk, %bb.g ], [ 1, %bb.b ] ; 5 uses
  %.2 = phi i64 [ %i.dl, %bb.g ], [ 0, %bb.b ]    ; 5 uses
  %i.dm = add nsw i32 %3, %2
  %i.dn = icmp sgt i32 %3, 0
  br i1 %i.dn, label %.preheader156.lr.ph, label %.loopexit

.preheader156.lr.ph:                              ; preds = %bb.h
  %i.do = load i32, ptr @x_block_size, align 4, !tbaa !4 ; 2 uses
  %.not145196 = icmp slt i32 %i.do, 1
  %i.dp = load i32, ptr @y_block_size, align 4    ; 3 uses
  %.not146193 = icmp slt i32 %i.dp, 1
  %or.cond332 = select i1 %.not145196, i1 true, i1 %.not146193
  br i1 %or.cond332, label %.loopexit, label %.preheader156.lr.ph.split.split

.preheader156.lr.ph.split.split:                  ; preds = %.preheader156.lr.ph
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !27
  %i.ds = add nuw i32 %i.do, 1
  %i.dt = sext i32 %2 to i64
  %i.du = sext i32 %i.dm to i64
  %wide.trip.count280 = zext i32 %i.ds to i64
  %i.dv = zext nneg i32 %i.dp to i64              ; 2 uses
  %xtraiter411 = and i64 %i.dv, 3                 ; 3 uses
  %i.dw = add nsw i32 %i.dp, -1
  %i.dx = icmp ult i32 %i.dw, 3
  %unroll_iter415 = and i64 %i.dv, 2147483644
  %lcmp.mod413.not = icmp eq i64 %xtraiter411, 0
  %lcmp.mod414 = icmp ne i64 %xtraiter411, 0
  br label %.preheader156

.preheader156:                                    ; preds = %.preheader156.lr.ph.split.split, %._crit_edge198.split
  %indvars.iv282 = phi i64 [ %i.dt, %.preheader156.lr.ph.split.split ], [ %indvars.iv.next283, %._crit_edge198.split ] ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.dr, i64 %indvars.iv282
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !28
  br label %.preheader155

.preheader155:                                    ; preds = %.preheader156, %._crit_edge195
  %indvars.iv277 = phi i64 [ 1, %.preheader156 ], [ %indvars.iv.next278, %._crit_edge195 ] ; 2 uses
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.dz, i64 %indvars.iv277
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !30 ; 5 uses
  br i1 %i.dx, label %.epil.preheader410, label %.preheader155.new

.preheader155.new:                                ; preds = %.preheader155, %.preheader155.new
  %indvars.iv272 = phi i64 [ %indvars.iv.next273.3, %.preheader155.new ], [ 1, %.preheader155 ] ; 5 uses
  %niter416 = phi i64 [ %niter416.next.3, %.preheader155.new ], [ 0, %.preheader155 ]
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv272
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !32 ; 2 uses
  %i.ee = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %.2118
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !21
  %i.eg = getelementptr inbounds [8 x i8], ptr %i.ed, i64 %.2
  store double %i.ef, ptr %i.eg, align 8, !tbaa !21
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv272
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !32 ; 2 uses
  %i.ek = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %.2118
  %i.el = load double, ptr %i.ek, align 8, !tbaa !21
  %i.em = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %.2
  store double %i.el, ptr %i.em, align 8, !tbaa !21
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv272
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !32 ; 2 uses
  %i.eq = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %.2118
  %i.er = load double, ptr %i.eq, align 8, !tbaa !21
  %i.es = getelementptr inbounds [8 x i8], ptr %i.ep, i64 %.2
  store double %i.er, ptr %i.es, align 8, !tbaa !21
  %i.et = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv272
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 24
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !32 ; 2 uses
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %.2118
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !21
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %.2
  store double %i.ex, ptr %i.ey, align 8, !tbaa !21
  %indvars.iv.next273.3 = add nuw nsw i64 %indvars.iv272, 4 ; 2 uses
  %niter416.next.3 = add i64 %niter416, 4         ; 2 uses
  %niter416.ncmp.3 = icmp eq i64 %niter416.next.3, %unroll_iter415
  br i1 %niter416.ncmp.3, label %._crit_edge195.unr-lcssa, label %.preheader155.new, !llvm.loop !215

._crit_edge195.unr-lcssa:                         ; preds = %.preheader155.new
  br i1 %lcmp.mod413.not, label %._crit_edge195, label %.epil.preheader410

.epil.preheader410:                               ; preds = %._crit_edge195.unr-lcssa, %.preheader155
  %indvars.iv272.epil.init = phi i64 [ 1, %.preheader155 ], [ %indvars.iv.next273.3, %._crit_edge195.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod414)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader410
  %indvars.iv272.epil = phi i64 [ %indvars.iv272.epil.init, %.epil.preheader410 ], [ %indvars.iv.next273.epil, %bb.i ] ; 2 uses
  %epil.iter412 = phi i64 [ 0, %.epil.preheader410 ], [ %epil.iter412.next, %bb.i ]
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv272.epil
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !32 ; 2 uses
  %i.fb = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %.2118
  %i.fc = load double, ptr %i.fb, align 8, !tbaa !21
  %i.fd = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %.2
  store double %i.fc, ptr %i.fd, align 8, !tbaa !21
  %indvars.iv.next273.epil = add nuw nsw i64 %indvars.iv272.epil, 1
  %epil.iter412.next = add i64 %epil.iter412, 1   ; 2 uses
  %epil.iter412.cmp.not = icmp eq i64 %epil.iter412.next, %xtraiter411
  br i1 %epil.iter412.cmp.not, label %._crit_edge195, label %bb.i, !llvm.loop !216

._crit_edge195:                                   ; preds = %bb.i, %._crit_edge195.unr-lcssa
  %indvars.iv.next278 = add nuw nsw i64 %indvars.iv277, 1 ; 2 uses
  %exitcond281.not = icmp eq i64 %indvars.iv.next278, %wide.trip.count280
  br i1 %exitcond281.not, label %._crit_edge198.split, label %.preheader155, !llvm.loop !217

._crit_edge198.split:                             ; preds = %._crit_edge195
  %indvars.iv.next283 = add nsw i64 %indvars.iv282, 1 ; 2 uses
  %i.fe = icmp slt i64 %indvars.iv.next283, %i.du
  br i1 %i.fe, label %.preheader156, label %.loopexit, !llvm.loop !218

bb.j:                                             ; preds = %bb.a
  switch i32 %0, label %.loopexit [
    i32 1, label %bb.k
    i32 0, label %bb.l
    i32 3, label %bb.m
    i32 2, label %bb.n
    i32 5, label %bb.o
    i32 4, label %bb.p
  ]

bb.k:                                             ; preds = %bb.j
  %i.ff = load i32, ptr @x_block_size, align 4, !tbaa !4 ; 2 uses
  %i.fg = add nsw i32 %i.ff, 1
  %i.fh = sext i32 %i.ff to i64
  %i.fi = sext i32 %i.fg to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.3119 = phi i64 [ %i.fh, %bb.k ], [ 1, %bb.j ]
  %.3 = phi i64 [ %i.fi, %bb.k ], [ 0, %bb.j ]
  %i.fj = add nsw i32 %3, %2
  %i.fk = icmp sgt i32 %3, 0
  br i1 %i.fk, label %.preheader159.lr.ph, label %.loopexit

.preheader159.lr.ph:                              ; preds = %bb.l
  %i.fl = load i32, ptr @y_block_size, align 4, !tbaa !4 ; 2 uses
  %.not143187 = icmp slt i32 %i.fl, -1
end_hunk_2
