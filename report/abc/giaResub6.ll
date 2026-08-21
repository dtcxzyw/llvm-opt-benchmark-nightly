inline.NumInlined: 131
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 17
begin_hunk_0_@Res6_ManReadPla:bb.a
bb.q:                                             ; preds = %bb.o
  %i.cq = sub nsw i32 %.06282.i.i, %i.cd
  %i.cr = shl nsw i32 %i.cq, 1
  %i.cs = or disjoint i32 %i.cr, 1
  %i.ct = load i32, ptr %i.ae, align 4, !tbaa !19
  %i.cu = mul nsw i32 %i.ct, %i.cs
  br label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.q, %bb.p, %bb.n
  %.sink111.in.i.i = phi ptr [ %i.bd, %bb.p ], [ %i.bd, %bb.q ], [ %i.aq, %bb.n ]
  %.sink110.i.i = phi i32 [ %i.cp, %bb.p ], [ %i.cu, %bb.q ], [ %i.cl, %bb.n ]
  %.2.ph.i.i = phi i32 [ %.183.i.i, %bb.p ], [ %.183.i.i, %bb.q ], [ %i.ci, %bb.n ]
  %.sink111.i.i = load ptr, ptr %.sink111.in.i.i, align 8, !tbaa !34
  %i.cv = getelementptr i8, ptr %.sink111.i.i, i64 8
  %.val77.i.i = load ptr, ptr %i.cv, align 8, !tbaa !23
  %i.cw = sext i32 %.sink110.i.i to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %.val77.i.i, i64 %i.cw
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cx, i64 %i.cc ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !8
  %i.da = or i32 %i.cz, %i.ca
  store i32 %i.da, ptr %i.cy, align 4, !tbaa !8
  %.pre.i = load i8, ptr %.05884.i.i, align 1, !tbaa !9
  br label %bb.r

bb.r:                                             ; preds = %.sink.split.i.i, %bb.o, %bb.m
  %i.db = phi i8 [ %i.ce, %bb.o ], [ %i.ce, %bb.m ], [ %.pre.i, %.sink.split.i.i ] ; 2 uses
  %.2.i.i = phi i32 [ %.183.i.i, %bb.o ], [ %i.ci, %bb.m ], [ %.2.ph.i.i, %.sink.split.i.i ] ; 2 uses
  %i.dc = and i8 %i.db, -2
  %switch.i6.i = icmp eq i8 %i.dc, 48
  %i.dd = icmp eq i8 %i.db, 45
  %narrow.i7.i = or i1 %i.dd, %switch.i6.i
  %i.de = zext i1 %narrow.i7.i to i32
  %i.df = add nuw nsw i32 %.06282.i.i, %i.de
  %i.dg = getelementptr inbounds nuw i8, ptr %.05884.i.i, i64 1 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !9   ; 2 uses
  %.not75.i.i = icmp eq i8 %i.dh, 0
  br i1 %.not75.i.i, label %._crit_edge.i8.i, label %bb.l, !llvm.loop !35

._crit_edge.i8.i:                                 ; preds = %bb.r
  %.pr.pre.i.i = load i8, ptr %i.bu, align 1, !tbaa !9
  %i.di = add nsw i32 %.06086.i.i, 1
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i8.i, %bb.k
  %i.dj = phi i8 [ %i.by, %bb.k ], [ %.pr.pre.i.i, %._crit_edge.i8.i ]
  %.161.i.i = phi i32 [ %.06086.i.i, %bb.k ], [ %i.di, %._crit_edge.i8.i ]
  %.3.i.i = phi i32 [ %.05987.i.i, %bb.k ], [ %.2.i.i, %._crit_edge.i8.i ] ; 3 uses
  %i.dk = icmp eq i8 %i.dj, 46
  br i1 %i.dk, label %bb.t, label %.backedge.i9.i

bb.t:                                             ; preds = %bb.s
  %i.dl = load i8, ptr %i.bw, align 1, !tbaa !9   ; 2 uses
  switch i8 %i.dl, label %.backedge.i9.i [
    i8 115, label %bb.u
    i8 97, label %bb.u
  ]

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.dm = icmp eq i8 %i.dl, 97
  %.in.v.i.i = select i1 %i.dm, i64 40, i64 32
  %.in.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 %.in.v.i.i
  %i.dn = load ptr, ptr %.in.i.i, align 8, !tbaa !36 ; 4 uses
  %i.do = getelementptr i8, ptr %i.dn, i64 4      ; 4 uses
  %.val79.i.i = load i32, ptr %i.do, align 4, !tbaa !27
  %i.dp = icmp sgt i32 %.val79.i.i, 0
  br i1 %i.dp, label %.backedge.i9.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dq = tail call ptr @strtok(ptr noundef nonnull %i.bx, ptr noundef nonnull @.str.27) #22
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dn, i64 8 ; 4 uses
  br label %bb.w

bb.w:                                             ; preds = %Vec_IntPush.exit.i.i, %bb.v
  %.0.i.i = phi ptr [ %i.dq, %bb.v ], [ %i.en, %Vec_IntPush.exit.i.i ]
  %i.ds = tail call i64 @strtol(ptr noundef nonnull captures(none) %.0.i.i, ptr noundef null, i32 noundef 10) #22, !inline_history !37
  %i.dt = trunc i64 %i.ds to i32
  %i.du = load i32, ptr %i.do, align 4, !tbaa !27 ; 7 uses
  %i.dv = load i32, ptr %i.dn, align 8, !tbaa !30
  %i.dw = icmp eq i32 %i.du, %i.dv
  br i1 %i.dw, label %bb.x, label %.Vec_IntPush.exit_crit_edge.i.i

.Vec_IntPush.exit_crit_edge.i.i:                  ; preds = %bb.w
  %.pre.i.i = load ptr, ptr %i.dr, align 8, !tbaa !31
  br label %Vec_IntPush.exit.i.i

bb.x:                                             ; preds = %bb.w
  %i.dx = icmp slt i32 %i.du, 16
  br i1 %i.dx, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.dy = load ptr, ptr %i.dr, align 8, !tbaa !31 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not9.i.i.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dz = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.dy, i64 noundef 64) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.aa:                                            ; preds = %bb.y
  %i.ea = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #21
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.ab:                                            ; preds = %bb.x
  %i.eb = icmp samesign ult i32 %i.du, 1073741823
  %i.ec = shl nuw nsw i32 %i.du, 1
  %spec.select.i.i.i = select i1 %i.eb, i32 %i.ec, i32 2147483647 ; 4 uses
  %.not.i9.i.i.i = icmp samesign ult i32 %i.du, %spec.select.i.i.i
  %.pre93.i.i = load ptr, ptr %i.dr, align 8, !tbaa !31 ; 3 uses
  br i1 %.not.i9.i.i.i, label %bb.ac, label %Vec_IntPush.exit.i.i

bb.ac:                                            ; preds = %bb.ab
  %.not9.i10.i.i.i = icmp eq ptr %.pre93.i.i, null
  %i.ed = zext nneg i32 %spec.select.i.i.i to i64
  %i.ee = shl nuw nsw i64 %i.ed, 2                ; 2 uses
  br i1 %.not9.i10.i.i.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ef = tail call ptr @realloc(ptr noundef nonnull %.pre93.i.i, i64 noundef %i.ee) #24
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

bb.ae:                                            ; preds = %bb.ac
  %i.eg = tail call noalias ptr @malloc(i64 noundef %i.ee) #21
  br label %Vec_IntGrow.exit11.sink.split.i.i.i

Vec_IntGrow.exit11.sink.split.i.i.i:              ; preds = %bb.ae, %bb.ad, %bb.aa, %bb.z
  %i.eh = phi ptr [ %i.ea, %bb.aa ], [ %i.dz, %bb.z ], [ %i.ef, %bb.ad ], [ %i.eg, %bb.ae ] ; 2 uses
  %spec.select.sink.i.i.i = phi i32 [ 16, %bb.aa ], [ 16, %bb.z ], [ %spec.select.i.i.i, %bb.ad ], [ %spec.select.i.i.i, %bb.ae ]
  store ptr %i.eh, ptr %i.dr, align 8, !tbaa !31
  store i32 %spec.select.sink.i.i.i, ptr %i.dn, align 8, !tbaa !30
  %.pre94.i.i = load i32, ptr %i.do, align 4, !tbaa !27
  br label %Vec_IntPush.exit.i.i

Vec_IntPush.exit.i.i:                             ; preds = %Vec_IntGrow.exit11.sink.split.i.i.i, %bb.ab, %.Vec_IntPush.exit_crit_edge.i.i
  %i.ei = phi i32 [ %i.du, %.Vec_IntPush.exit_crit_edge.i.i ], [ %i.du, %bb.ab ], [ %.pre94.i.i, %Vec_IntGrow.exit11.sink.split.i.i.i ] ; 2 uses
  %i.ej = phi ptr [ %.pre.i.i, %.Vec_IntPush.exit_crit_edge.i.i ], [ %.pre93.i.i, %bb.ab ], [ %i.eh, %Vec_IntGrow.exit11.sink.split.i.i.i ]
  %i.ek = add nsw i32 %i.ei, 1
  store i32 %i.ek, ptr %i.do, align 4, !tbaa !27
  %i.el = sext i32 %i.ei to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %i.ej, i64 %i.el
  store i32 %i.dt, ptr %i.em, align 4, !tbaa !8
  %i.en = tail call ptr @strtok(ptr noundef null, ptr noundef nonnull @.str.27) #22 ; 2 uses
  %.not76.i.i = icmp eq ptr %i.en, null
  br i1 %.not76.i.i, label %.backedge.i9.i, label %bb.w, !llvm.loop !38

.backedge.i9.i:                                   ; preds = %Vec_IntPush.exit.i.i, %bb.u, %bb.t, %bb.s
  %i.eo = tail call ptr @fgets(ptr noundef nonnull %i.bu, i32 noundef %i.bs, ptr noundef nonnull %i.bo)
  %.not.i10.i = icmp eq ptr %i.eo, null
  br i1 %.not.i10.i, label %._crit_edge90.i.i, label %bb.k, !llvm.loop !39

._crit_edge90.i.i:                                ; preds = %.backedge.i9.i
  %.not73.i.i = icmp eq i32 %.3.i.i, 0
  br i1 %.not73.i.i, label %Abc_ReadPla.exit._crit_edge, label %bb.af

bb.af:                                            ; preds = %._crit_edge90.i.i
  %i.ep = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.28, i32 noundef %.3.i.i, ptr noundef %0) ; 0 uses
  br label %Abc_ReadPla.exit._crit_edge

bb.ag:                                            ; preds = %bb.j
  %.not74.i.i = icmp eq ptr %i.bu, null
  br i1 %.not74.i.i, label %Abc_ReadPla.exit.thread96, label %Abc_ReadPla.exit._crit_edge

Abc_ReadPla.exit.thread96:                        ; preds = %bb.ag
  %i.eq = tail call i32 @fclose(ptr noundef nonnull %i.bo) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ah

Abc_ReadPla.exit._crit_edge:                      ; preds = %bb.ag, %bb.af, %._crit_edge90.i.i
  tail call void @free(ptr noundef nonnull %i.bu) #22
  %i.er = tail call i32 @fclose(ptr noundef nonnull %i.bo) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.pre = load i32, ptr %i.w, align 8, !tbaa !12
  %.pre155 = load i32, ptr %i.x, align 4, !tbaa !17
  %.pre156 = load i32, ptr %i.y, align 8, !tbaa !18
  br label %bb.ah

bb.ah:                                            ; preds = %Abc_ReadPla.exit._crit_edge, %Abc_ReadPla.exit.thread92, %Abc_ReadPla.exit.thread96
  %i.es = phi i32 [ %.pre156, %Abc_ReadPla.exit._crit_edge ], [ %.0..0..i, %Abc_ReadPla.exit.thread92 ], [ %.0..0..i, %Abc_ReadPla.exit.thread96 ]
  %i.et = phi i32 [ %.pre155, %Abc_ReadPla.exit._crit_edge ], [ %.0..0..0..0..0.12.i, %Abc_ReadPla.exit.thread92 ], [ %.0..0..0..0..0.12.i, %Abc_ReadPla.exit.thread96 ]
  %i.eu = phi i32 [ %.pre, %Abc_ReadPla.exit._crit_edge ], [ %.0..0..0..0..0.13.i, %Abc_ReadPla.exit.thread92 ], [ %.0..0..0..0..0.13.i, %Abc_ReadPla.exit.thread96 ]
  %i.ev = tail call fastcc ptr @Res6_ManStart(i32 noundef 0, i32 noundef %i.eu, i32 noundef %i.et, i32 noundef %i.es) ; 18 uses
  %i.ew = icmp eq ptr %i.ev, null
  br i1 %i.ew, label %.thread, label %.preheader103

.preheader103:                                    ; preds = %bb.ah
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !40 ; 2 uses
  %i.ez = icmp sgt i32 %i.ey, 1
  br i1 %i.ez, label %.preheader102.lr.ph, label %.preheader100

.preheader102.lr.ph:                              ; preds = %.preheader103
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ev, i64 56
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !44 ; 2 uses
  %i.fc = load i32, ptr %i.ae, align 4, !tbaa !19
  %.fr126 = freeze i32 %i.fc                      ; 5 uses
  %.val56 = load ptr, ptr %i.an, align 8, !tbaa !23 ; 2 uses
  %i.fd = icmp sgt i32 %.fr126, 0
  %wide.trip.count.i = zext i32 %.fr126 to i64    ; 11 uses
  br i1 %i.fd, label %.preheader102.us.preheader, label %.preheader100

.preheader102.us.preheader:                       ; preds = %.preheader102.lr.ph
  %.val56186 = ptrtoaddr ptr %.val56 to i64
  %i.fe = zext nneg i32 %.fr126 to i64
  %wide.trip.count = zext nneg i32 %i.ey to i64
  %i.ff = mul nsw i64 %wide.trip.count.i, -8
  %min.iters.check191 = icmp ult i32 %.fr126, 4
  %n.vec193 = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n200 = icmp eq i64 %n.vec193, %wide.trip.count.i
  %xtraiter = and i64 %wide.trip.count.i, 3       ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %min.iters.check = icmp ult i32 %.fr126, 4
  %n.vec = and i64 %wide.trip.count.i, 2147483644 ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i
  %xtraiter220 = and i64 %wide.trip.count.i, 3    ; 2 uses
  %lcmp.mod221.not = icmp eq i64 %xtraiter220, 0
  br label %.lr.ph18.i.us.us.preheader

.lr.ph18.i.us.us.preheader:                       ; preds = %Abc_TtCopy.exit.us.us.1, %.preheader102.us.preheader
  %indvar = phi i64 [ %indvar.next, %Abc_TtCopy.exit.us.us.1 ], [ 0, %.preheader102.us.preheader ] ; 2 uses
  %indvars.iv = phi i64 [ %indvars.iv.next, %Abc_TtCopy.exit.us.us.1 ], [ 1, %.preheader102.us.preheader ] ; 3 uses
  %i.fg = mul i64 %i.ff, %indvar
  %i.fh = sub i64 %i.fg, %.val56186               ; 2 uses
  %i.fi = shl nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %i.fj = add nsw i64 %indvars.iv, -1
  %i.fk = mul nsw i64 %i.fj, %i.fe
  %i.fl = getelementptr inbounds [8 x i8], ptr %.val56, i64 %i.fk ; 12 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fi
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !45 ; 7 uses
  br i1 %min.iters.check191, label %.lr.ph18.i.us.us.preheader218, label %vector.memcheck188

vector.memcheck188:                               ; preds = %.lr.ph18.i.us.us.preheader
  %i.fo = ptrtoaddr ptr %i.fn to i64
  %i.fp = add i64 %i.fh, %i.fo
  %i.fq = add i64 %i.fp, -1
  %diff.check189 = icmp ult i64 %i.fq, 31
  br i1 %diff.check189, label %.lr.ph18.i.us.us.preheader218, label %vector.body194

vector.body194:                                   ; preds = %vector.memcheck188, %vector.body194
  %index195 = phi i64 [ %index.next198, %vector.body194 ], [ 0, %vector.memcheck188 ] ; 3 uses
  %i.fr = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %index195 ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fr, i64 16
  %wide.load196 = load <2 x i64>, ptr %i.fr, align 8, !tbaa !46
  %wide.load197 = load <2 x i64>, ptr %i.fs, align 8, !tbaa !46
  %i.ft = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %index195 ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 16
  store <2 x i64> %wide.load196, ptr %i.ft, align 8, !tbaa !46
  store <2 x i64> %wide.load197, ptr %i.fu, align 8, !tbaa !46
  %index.next198 = add nuw i64 %index195, 4       ; 2 uses
  %i.fv = icmp eq i64 %index.next198, %n.vec193
  br i1 %i.fv, label %middle.block199, label %vector.body194, !llvm.loop !48

middle.block199:                                  ; preds = %vector.body194
  br i1 %cmp.n200, label %.lr.ph.i.us.us.preheader.1, label %.lr.ph18.i.us.us.preheader218

.lr.ph18.i.us.us.preheader218:                    ; preds = %vector.memcheck188, %.lr.ph18.i.us.us.preheader, %middle.block199
  %indvars.iv21.i.us.us.ph = phi i64 [ 0, %vector.memcheck188 ], [ 0, %.lr.ph18.i.us.us.preheader ], [ %n.vec193, %middle.block199 ] ; 3 uses
  br i1 %lcmp.mod.not, label %.lr.ph18.i.us.us.prol.loopexit, label %.lr.ph18.i.us.us.prol

.lr.ph18.i.us.us.prol:                            ; preds = %.lr.ph18.i.us.us.preheader218, %.lr.ph18.i.us.us.prol
  %indvars.iv21.i.us.us.prol = phi i64 [ %indvars.iv.next22.i.us.us.prol, %.lr.ph18.i.us.us.prol ], [ %indvars.iv21.i.us.us.ph, %.lr.ph18.i.us.us.preheader218 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph18.i.us.us.prol ], [ 0, %.lr.ph18.i.us.us.preheader218 ]
  %i.fw = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv21.i.us.us.prol
  %i.fx = load i64, ptr %i.fw, align 8, !tbaa !46
  %i.fy = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv21.i.us.us.prol
  store i64 %i.fx, ptr %i.fy, align 8, !tbaa !46
  %indvars.iv.next22.i.us.us.prol = add nuw nsw i64 %indvars.iv21.i.us.us.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph18.i.us.us.prol.loopexit, label %.lr.ph18.i.us.us.prol, !llvm.loop !51

.lr.ph18.i.us.us.prol.loopexit:                   ; preds = %.lr.ph18.i.us.us.prol, %.lr.ph18.i.us.us.preheader218
  %indvars.iv21.i.us.us.unr = phi i64 [ %indvars.iv21.i.us.us.ph, %.lr.ph18.i.us.us.preheader218 ], [ %indvars.iv.next22.i.us.us.prol, %.lr.ph18.i.us.us.prol ]
  %i.fz = sub nsw i64 %indvars.iv21.i.us.us.ph, %wide.trip.count.i
  %i.ga = icmp ugt i64 %i.fz, -4
  br i1 %i.ga, label %.lr.ph.i.us.us.preheader.1, label %.lr.ph18.i.us.us

.lr.ph18.i.us.us:                                 ; preds = %.lr.ph18.i.us.us.prol.loopexit, %.lr.ph18.i.us.us
  %indvars.iv21.i.us.us = phi i64 [ %indvars.iv.next22.i.us.us.3, %.lr.ph18.i.us.us ], [ %indvars.iv21.i.us.us.unr, %.lr.ph18.i.us.us.prol.loopexit ] ; 6 uses
  %i.gb = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv21.i.us.us
  %i.gc = load i64, ptr %i.gb, align 8, !tbaa !46
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv21.i.us.us
  store i64 %i.gc, ptr %i.gd, align 8, !tbaa !46
  %indvars.iv.next22.i.us.us = add nuw nsw i64 %indvars.iv21.i.us.us, 1 ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next22.i.us.us
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !46
  %i.gg = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv.next22.i.us.us
  store i64 %i.gf, ptr %i.gg, align 8, !tbaa !46
  %indvars.iv.next22.i.us.us.1 = add nuw nsw i64 %indvars.iv21.i.us.us, 2 ; 2 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next22.i.us.us.1
  %i.gi = load i64, ptr %i.gh, align 8, !tbaa !46
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv.next22.i.us.us.1
  store i64 %i.gi, ptr %i.gj, align 8, !tbaa !46
  %indvars.iv.next22.i.us.us.2 = add nuw nsw i64 %indvars.iv21.i.us.us, 3 ; 2 uses
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next22.i.us.us.2
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !46
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fn, i64 %indvars.iv.next22.i.us.us.2
  store i64 %i.gl, ptr %i.gm, align 8, !tbaa !46
  %indvars.iv.next22.i.us.us.3 = add nuw nsw i64 %indvars.iv21.i.us.us, 4 ; 2 uses
  %exitcond25.not.i.us.us.3 = icmp eq i64 %indvars.iv.next22.i.us.us.3, %wide.trip.count.i
  br i1 %exitcond25.not.i.us.us.3, label %.lr.ph.i.us.us.preheader.1, label %.lr.ph18.i.us.us, !llvm.loop !53

.lr.ph.i.us.us.preheader.1:                       ; preds = %.lr.ph18.i.us.us.prol.loopexit, %.lr.ph18.i.us.us, %middle.block199
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.fb, i64 %i.fi
  %i.go = getelementptr inbounds nuw i8, ptr %i.gn, i64 8
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !45 ; 7 uses
  br i1 %min.iters.check, label %.lr.ph.i.us.us.1.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.us.us.preheader.1
  %i.gq = ptrtoaddr ptr %i.gp to i64
  %i.gr = add i64 %i.fh, %i.gq
  %i.gs = add i64 %i.gr, -1
  %diff.check = icmp ult i64 %i.gs, 31
  br i1 %diff.check, label %.lr.ph.i.us.us.1.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.gt = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %index ; 2 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  %wide.load = load <2 x i64>, ptr %i.gt, align 8, !tbaa !46
  %wide.load187 = load <2 x i64>, ptr %i.gu, align 8, !tbaa !46
  %i.gv = xor <2 x i64> %wide.load, splat (i64 -1)
  %i.gw = xor <2 x i64> %wide.load187, splat (i64 -1)
  %i.gx = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %index ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gx, i64 16
  store <2 x i64> %i.gv, ptr %i.gx, align 8, !tbaa !46
  store <2 x i64> %i.gw, ptr %i.gy, align 8, !tbaa !46
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.gz = icmp eq i64 %index.next, %n.vec
  br i1 %i.gz, label %middle.block, label %vector.body, !llvm.loop !54

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %Abc_TtCopy.exit.us.us.1, label %.lr.ph.i.us.us.1.preheader

.lr.ph.i.us.us.1.preheader:                       ; preds = %vector.memcheck, %.lr.ph.i.us.us.preheader.1, %middle.block
  %indvars.iv.i.us.us.1.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.us.us.preheader.1 ], [ %n.vec, %middle.block ] ; 3 uses
  br i1 %lcmp.mod221.not, label %.lr.ph.i.us.us.1.prol.loopexit, label %.lr.ph.i.us.us.1.prol

.lr.ph.i.us.us.1.prol:                            ; preds = %.lr.ph.i.us.us.1.preheader, %.lr.ph.i.us.us.1.prol
  %indvars.iv.i.us.us.1.prol = phi i64 [ %indvars.iv.next.i.us.us.1.prol, %.lr.ph.i.us.us.1.prol ], [ %indvars.iv.i.us.us.1.ph, %.lr.ph.i.us.us.1.preheader ] ; 3 uses
  %prol.iter222 = phi i64 [ %prol.iter222.next, %.lr.ph.i.us.us.1.prol ], [ 0, %.lr.ph.i.us.us.1.preheader ]
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.i.us.us.1.prol
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !46
  %i.hc = xor i64 %i.hb, -1
  %i.hd = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.i.us.us.1.prol
  store i64 %i.hc, ptr %i.hd, align 8, !tbaa !46
  %indvars.iv.next.i.us.us.1.prol = add nuw nsw i64 %indvars.iv.i.us.us.1.prol, 1 ; 2 uses
  %prol.iter222.next = add i64 %prol.iter222, 1   ; 2 uses
  %prol.iter222.cmp.not = icmp eq i64 %prol.iter222.next, %xtraiter220
  br i1 %prol.iter222.cmp.not, label %.lr.ph.i.us.us.1.prol.loopexit, label %.lr.ph.i.us.us.1.prol, !llvm.loop !55

.lr.ph.i.us.us.1.prol.loopexit:                   ; preds = %.lr.ph.i.us.us.1.prol, %.lr.ph.i.us.us.1.preheader
  %indvars.iv.i.us.us.1.unr = phi i64 [ %indvars.iv.i.us.us.1.ph, %.lr.ph.i.us.us.1.preheader ], [ %indvars.iv.next.i.us.us.1.prol, %.lr.ph.i.us.us.1.prol ]
  %i.he = sub nsw i64 %indvars.iv.i.us.us.1.ph, %wide.trip.count.i
  %i.hf = icmp ugt i64 %i.he, -4
  br i1 %i.hf, label %Abc_TtCopy.exit.us.us.1, label %.lr.ph.i.us.us.1

.lr.ph.i.us.us.1:                                 ; preds = %.lr.ph.i.us.us.1.prol.loopexit, %.lr.ph.i.us.us.1
  %indvars.iv.i.us.us.1 = phi i64 [ %indvars.iv.next.i.us.us.1.3, %.lr.ph.i.us.us.1 ], [ %indvars.iv.i.us.us.1.unr, %.lr.ph.i.us.us.1.prol.loopexit ] ; 6 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.i.us.us.1
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !46
  %i.hi = xor i64 %i.hh, -1
  %i.hj = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.i.us.us.1
  store i64 %i.hi, ptr %i.hj, align 8, !tbaa !46
  %indvars.iv.next.i.us.us.1 = add nuw nsw i64 %indvars.iv.i.us.us.1, 1 ; 2 uses
  %i.hk = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next.i.us.us.1
  %i.hl = load i64, ptr %i.hk, align 8, !tbaa !46
  %i.hm = xor i64 %i.hl, -1
  %i.hn = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next.i.us.us.1
  store i64 %i.hm, ptr %i.hn, align 8, !tbaa !46
  %indvars.iv.next.i.us.us.1.1 = add nuw nsw i64 %indvars.iv.i.us.us.1, 2 ; 2 uses
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next.i.us.us.1.1
  %i.hp = load i64, ptr %i.ho, align 8, !tbaa !46
  %i.hq = xor i64 %i.hp, -1
  %i.hr = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next.i.us.us.1.1
  store i64 %i.hq, ptr %i.hr, align 8, !tbaa !46
  %indvars.iv.next.i.us.us.1.2 = add nuw nsw i64 %indvars.iv.i.us.us.1, 3 ; 2 uses
  %i.hs = getelementptr inbounds nuw [8 x i8], ptr %i.fl, i64 %indvars.iv.next.i.us.us.1.2
  %i.ht = load i64, ptr %i.hs, align 8, !tbaa !46
  %i.hu = xor i64 %i.ht, -1
  %i.hv = getelementptr inbounds nuw [8 x i8], ptr %i.gp, i64 %indvars.iv.next.i.us.us.1.2
  store i64 %i.hu, ptr %i.hv, align 8, !tbaa !46
  %indvars.iv.next.i.us.us.1.3 = add nuw nsw i64 %indvars.iv.i.us.us.1, 4 ; 2 uses
  %exitcond.not.i.us.us.1.3 = icmp eq i64 %indvars.iv.next.i.us.us.1.3, %wide.trip.count.i
  br i1 %exitcond.not.i.us.us.1.3, label %Abc_TtCopy.exit.us.us.1, label %.lr.ph.i.us.us.1, !llvm.loop !56

Abc_TtCopy.exit.us.us.1:                          ; preds = %.lr.ph.i.us.us.1.prol.loopexit, %.lr.ph.i.us.us.1, %middle.block
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  %indvar.next = add i64 %indvar, 1
  br i1 %exitcond.not, label %.preheader100, label %.lr.ph18.i.us.us.preheader, !llvm.loop !57

.preheader100:                                    ; preds = %Abc_TtCopy.exit.us.us.1, %.preheader102.lr.ph, %.preheader103
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ev, i64 12
  %i.hx = load i32, ptr %i.hw, align 4, !tbaa !58 ; 2 uses
  %i.hy = shl nuw nsw i32 1, %i.hx
  %.not127 = icmp eq i32 %i.hx, 31
  br i1 %.not127, label %.preheader99, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader100
  %i.hz = getelementptr inbounds nuw i8, ptr %i.ev, i64 64
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !59
  %i.ib = load i32, ptr %i.ae, align 4, !tbaa !19 ; 3 uses
  %.val = load ptr, ptr %i.ba, align 8, !tbaa !23 ; 2 uses
  %i.ic = icmp sgt i32 %i.ib, 0
  %wide.trip.count24.i65 = zext i32 %i.ib to i64  ; 7 uses
  br i1 %i.ic, label %.lr.ph18.preheader.i64.preheader, label %.preheader99

.lr.ph18.preheader.i64.preheader:                 ; preds = %.lr.ph
  %.val203 = ptrtoaddr ptr %.val to i64
  %wide.trip.count139 = zext nneg i32 %i.hy to i64
  %i.id = mul nsw i64 %wide.trip.count24.i65, -8
  %min.iters.check206 = icmp ult i32 %i.ib, 4
  %n.vec208 = and i64 %wide.trip.count24.i65, 2147483644 ; 3 uses
  %cmp.n215 = icmp eq i64 %n.vec208, %wide.trip.count24.i65
  %xtraiter223 = and i64 %wide.trip.count24.i65, 3 ; 2 uses
  %lcmp.mod224.not = icmp eq i64 %xtraiter223, 0
  br label %.lr.ph18.preheader.i64

.lr.ph18.preheader.i64:                           ; preds = %.lr.ph18.preheader.i64.preheader, %Abc_TtCopy.exit70.loopexit
  %indvars.iv136 = phi i64 [ 0, %.lr.ph18.preheader.i64.preheader ], [ %indvars.iv.next137, %Abc_TtCopy.exit70.loopexit ] ; 4 uses
  %i.ie = getelementptr inbounds nuw [8 x i8], ptr %i.ia, i64 %indvars.iv136
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !45 ; 7 uses
  %i.ig = mul nuw nsw i64 %indvars.iv136, %wide.trip.count24.i65
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %.val, i64 %i.ig ; 6 uses
  br i1 %min.iters.check206, label %.lr.ph18.i66.preheader, label %vector.memcheck202

vector.memcheck202:                               ; preds = %.lr.ph18.preheader.i64
  %i.ii = ptrtoaddr ptr %i.if to i64
  %i.ij = mul i64 %i.id, %indvars.iv136
  %i.ik = sub i64 %i.ij, %.val203
  %i.il = add i64 %i.ik, %i.ii
  %i.im = add i64 %i.il, -1
  %diff.check204 = icmp ult i64 %i.im, 31
end_hunk_0
