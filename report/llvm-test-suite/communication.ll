inline.NumInlined: 11
begin_hunk_0_@hypre_CommPkgCreateInfo:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  %i.c = call i32 @hypre_MPI_Comm_size(i32 noundef %5, ptr noundef nonnull %i.a) #5 ; 0 uses
  %i.d = call i32 @hypre_MPI_Comm_rank(i32 noundef %5, ptr noundef nonnull %i.b) #5 ; 0 uses
  %i.e = load i32, ptr %i.a, align 4, !tbaa !4
  %i.f = call ptr @hypre_CAlloc(i32 noundef %i.e, i32 noundef 4) #5 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !27   ; 2 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph169, label %._crit_edge170

.lr.ph169:                                        ; preds = %bb.a
  %i.j = load ptr, ptr %0, align 8, !tbaa !44
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph169, %._crit_edge
  %i.k = phi i32 [ %i.h, %.lr.ph169 ], [ %i.as, %._crit_edge ]
  %indvars.iv189 = phi i64 [ 0, %.lr.ph169 ], [ %indvars.iv.next190, %._crit_edge ] ; 3 uses
  %.0167 = phi i32 [ 0, %.lr.ph169 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.j, i64 %indvars.iv189
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !45   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !47   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.q = load ptr, ptr %i.m, align 8, !tbaa !50
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv189
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.e
  %i.s = phi i32 [ %i.o, %.lr.ph ], [ %i.ap, %bb.e ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %.1165 = phi i32 [ %.0167, %.lr.ph ], [ %.2, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.q, i64 %indvars.iv ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %i.v = load <2 x i32>, ptr %i.u, align 4, !tbaa !4
  %i.w = load <2 x i32>, ptr %i.t, align 4, !tbaa !4
  %i.x = icmp slt <2 x i32> %i.v, %i.w            ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %i.z = load i32, ptr %i.y, align 4, !tbaa !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %.not157 = icmp slt i32 %i.z, %i.ab
  %i.ac = extractelement <2 x i1> %i.x, i64 1
  %i.ad = select i1 %.not157, i1 true, i1 %i.ac
  %i.ae = extractelement <2 x i1> %i.x, i64 0
  %.not156 = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %.not156, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %i.r, align 8, !tbaa !17
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %indvars.iv
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !4  ; 2 uses
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ai ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !4  ; 2 uses
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.aj, align 4, !tbaa !4
  %i.am = icmp eq i32 %i.ak, 0
  %i.an = load i32, ptr %i.b, align 4
  %.not160 = icmp ne i32 %i.ah, %i.an
  %or.cond.not = select i1 %i.am, i1 %.not160, i1 false
  %i.ao = zext i1 %or.cond.not to i32
  %spec.select161 = add nsw i32 %.1165, %i.ao
  %.pre = load i32, ptr %i.n, align 8, !tbaa !47
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ap = phi i32 [ %.pre, %bb.d ], [ %i.s, %bb.c ] ; 2 uses
  %.2 = phi i32 [ %spec.select161, %bb.d ], [ %.1165, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aq = sext i32 %i.ap to i64
  %i.ar = icmp slt i64 %indvars.iv.next, %i.aq
  br i1 %i.ar, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !51

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre201 = load i32, ptr %i.g, align 8, !tbaa !27
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.as = phi i32 [ %i.k, %bb.b ], [ %.pre201, %._crit_edge.loopexit ] ; 2 uses
  %.1.lcssa = phi i32 [ %.0167, %bb.b ], [ %.2, %._crit_edge.loopexit ] ; 2 uses
  %indvars.iv.next190 = add nuw nsw i64 %indvars.iv189, 1 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = icmp slt i64 %indvars.iv.next190, %i.at
  br i1 %i.au, label %bb.b, label %._crit_edge170, !llvm.loop !52

._crit_edge170:                                   ; preds = %._crit_edge, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %.1.lcssa, %._crit_edge ] ; 5 uses
  %i.av = load i32, ptr %i.a, align 4, !tbaa !4
  %i.aw = call ptr @hypre_CAlloc(i32 noundef %i.av, i32 noundef 8) #5 ; 4 uses
  %i.ax = shl i32 %.0.lcssa, 2
  %i.ay = call ptr @hypre_MAlloc(i32 noundef %i.ax) #5 ; 3 uses
  %i.az = load i32, ptr %i.g, align 8, !tbaa !27  ; 2 uses
  %i.ba = icmp sgt i32 %i.az, 0
  br i1 %i.ba, label %.lr.ph182, label %._crit_edge183

.lr.ph182:                                        ; preds = %._crit_edge170, %._crit_edge176
  %i.bb = phi i32 [ %i.cx, %._crit_edge176 ], [ %i.az, %._crit_edge170 ]
  %indvars.iv195 = phi i64 [ %indvars.iv.next196, %._crit_edge176 ], [ 0, %._crit_edge170 ] ; 4 uses
  %.0131180 = phi i32 [ %.1132.lcssa, %._crit_edge176 ], [ 0, %._crit_edge170 ] ; 2 uses
  %.0138178 = phi i32 [ %i.du, %._crit_edge176 ], [ 0, %._crit_edge170 ] ; 2 uses
  %i.bc = load ptr, ptr %0, align 8, !tbaa !44
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv195
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !45 ; 2 uses
  %i.bf = load ptr, ptr %2, align 8, !tbaa !50
  %i.bg = getelementptr inbounds nuw [24 x i8], ptr %i.bf, i64 %indvars.iv195 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 8, !tbaa !47 ; 2 uses
  %i.bj = icmp sgt i32 %i.bi, 0
  br i1 %i.bj, label %.lr.ph175, label %._crit_edge176

.lr.ph175:                                        ; preds = %.lr.ph182
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv195
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph175, %bb.k
  %i.bl = phi i32 [ %i.bi, %.lr.ph175 ], [ %i.cu, %bb.k ]
  %indvars.iv192 = phi i64 [ 0, %.lr.ph175 ], [ %indvars.iv.next193, %bb.k ] ; 3 uses
  %.1132173 = phi i32 [ %.0131180, %.lr.ph175 ], [ %.3, %bb.k ] ; 5 uses
  %i.bm = load ptr, ptr %i.be, align 8, !tbaa !50
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %indvars.iv192 ; 5 uses
  %i.bo = load ptr, ptr %i.bk, align 8, !tbaa !17
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv192
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4  ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.bs = load <2 x i32>, ptr %i.br, align 4, !tbaa !4
  %i.bt = load <2 x i32>, ptr %i.bn, align 4, !tbaa !4
  %i.bu = icmp slt <2 x i32> %i.bs, %i.bt         ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 20
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !4
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  %.not152 = icmp slt i32 %i.bw, %i.by
  %i.bz = extractelement <2 x i1> %i.bu, i64 1
  %i.ca = select i1 %.not152, i1 true, i1 %i.bz
  %i.cb = extractelement <2 x i1> %i.bu, i64 0
  %.not151 = select i1 %i.ca, i1 true, i1 %i.cb
  br i1 %.not151, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cc = sext i32 %i.bq to i64                   ; 3 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.cc ; 3 uses
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !53
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.cc ; 2 uses
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %i.ci = call ptr @hypre_CAlloc(i32 noundef %i.ch, i32 noundef 8) #5
  store ptr %i.ci, ptr %i.cd, align 8, !tbaa !53
  store i32 0, ptr %i.cg, align 4, !tbaa !4
  %i.cj = load i32, ptr %i.b, align 4, !tbaa !4
  %.not155 = icmp eq i32 %i.bq, %i.cj
  br i1 %.not155, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ck = sext i32 %.1132173 to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %i.ay, i64 %i.ck
  store i32 %i.bq, ptr %i.cl, align 4, !tbaa !4
  %i.cm = add nsw i32 %.1132173, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %.2133 = phi i32 [ %i.cm, %bb.i ], [ %.1132173, %bb.h ], [ %.1132173, %bb.g ]
  %i.cn = call ptr @hypre_CommTypeEntryCreate(ptr noundef nonnull %i.bn, ptr noundef %1, ptr noundef %i.bg, i32 noundef %4, i32 noundef %.0138178)
  %i.co = load ptr, ptr %i.cd, align 8, !tbaa !53
  %i.cp = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.cc ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !4  ; 2 uses
  %i.cr = sext i32 %i.cq to i64
  %i.cs = getelementptr inbounds [8 x i8], ptr %i.co, i64 %i.cr
  store ptr %i.cn, ptr %i.cs, align 8, !tbaa !39
  %i.ct = add nsw i32 %i.cq, 1
  store i32 %i.ct, ptr %i.cp, align 4, !tbaa !4
  %.pre202 = load i32, ptr %i.bh, align 8, !tbaa !47
  br label %bb.k

bb.k:                                             ; preds = %bb.f, %bb.j
  %i.cu = phi i32 [ %.pre202, %bb.j ], [ %i.bl, %bb.f ] ; 2 uses
  %.3 = phi i32 [ %.2133, %bb.j ], [ %.1132173, %bb.f ] ; 2 uses
  %indvars.iv.next193 = add nuw nsw i64 %indvars.iv192, 1 ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %i.cw = icmp slt i64 %indvars.iv.next193, %i.cv
  br i1 %i.cw, label %bb.f, label %._crit_edge176.loopexit, !llvm.loop !54

._crit_edge176.loopexit:                          ; preds = %bb.k
  %.pre203 = load i32, ptr %i.g, align 8, !tbaa !27
  br label %._crit_edge176

._crit_edge176:                                   ; preds = %._crit_edge176.loopexit, %.lr.ph182
  %i.cx = phi i32 [ %i.bb, %.lr.ph182 ], [ %.pre203, %._crit_edge176.loopexit ] ; 2 uses
  %.1132.lcssa = phi i32 [ %.0131180, %.lr.ph182 ], [ %.3, %._crit_edge176.loopexit ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4
  %i.da = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.db = sub nsw i32 %i.cz, %i.da
  %i.dc = call i32 @llvm.smax.i32(i32 %i.db, i32 -1)
  %spec.select = add nsw i32 %i.dc, 1
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !4
  %i.df = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !4
  %i.dh = sub nsw i32 %i.de, %i.dg                ; 2 uses
  %i.di = add nuw nsw i32 %i.dh, 1
  %i.dj = mul nsw i32 %i.di, %spec.select
  %.inv = icmp slt i32 %i.dh, 0
  %i.dk = select i1 %.inv, i32 0, i32 %i.dj
  %i.dl = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !4
  %i.dp = sub nsw i32 %i.dm, %i.do                ; 2 uses
  %i.dq = add nuw nsw i32 %i.dp, 1
  %i.dr = mul i32 %i.dq, %4
  %i.ds = mul i32 %i.dr, %i.dk
  %.inv162 = icmp slt i32 %i.dp, 0
  %i.dt = select i1 %.inv162, i32 0, i32 %i.ds
  %i.du = add nsw i32 %i.dt, %.0138178
  %indvars.iv.next196 = add nuw nsw i64 %indvars.iv195, 1 ; 2 uses
  %i.dv = sext i32 %i.cx to i64
  %i.dw = icmp slt i64 %indvars.iv.next196, %i.dv
  br i1 %i.dw, label %.lr.ph182, label %._crit_edge183, !llvm.loop !55

._crit_edge183:                                   ; preds = %._crit_edge176, %._crit_edge170
  %i.dx = shl i32 %.0.lcssa, 3
  %i.dy = call ptr @hypre_MAlloc(i32 noundef %i.dx) #5 ; 2 uses
  %i.dz = icmp sgt i32 %.0.lcssa, 0
  br i1 %i.dz, label %.lr.ph186.preheader, label %._crit_edge187

.lr.ph186.preheader:                              ; preds = %._crit_edge183
  %wide.trip.count = zext nneg i32 %.0.lcssa to i64
  br label %.lr.ph186

.lr.ph186:                                        ; preds = %.lr.ph186.preheader, %.lr.ph186
  %indvars.iv198 = phi i64 [ 0, %.lr.ph186.preheader ], [ %indvars.iv.next199, %.lr.ph186 ] ; 3 uses
  %i.ea = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv198
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !4
  %i.ec = sext i32 %i.eb to i64                   ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.ec
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !53
  %i.ef = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.ec
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !4
  %i.eh = call noundef ptr @hypre_MAlloc(i32 noundef 16) #5 ; 4 uses
  store ptr %i.ee, ptr %i.eh, align 8, !tbaa !35
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 8
  store i32 %i.eg, ptr %i.ei, align 8, !tbaa !38
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %indvars.iv198
  store ptr %i.eh, ptr %i.ej, align 8, !tbaa !21
  %i.ek = call i32 @hypre_CommTypeSort(ptr noundef nonnull %i.eh, ptr noundef %6) ; 0 uses
  %indvars.iv.next199 = add nuw nsw i64 %indvars.iv198, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next199, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge187, label %.lr.ph186, !llvm.loop !56

._crit_edge187:                                   ; preds = %.lr.ph186, %._crit_edge183
  %i.el = load i32, ptr %i.b, align 4, !tbaa !4
  %i.em = sext i32 %i.el to i64                   ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.aw, i64 %i.em
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !53 ; 2 uses
  %.not = icmp eq ptr %i.eo, null
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge187
  %i.ep = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.em
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !4
  %i.er = call noundef ptr @hypre_MAlloc(i32 noundef 16) #5 ; 4 uses
  store ptr %i.eo, ptr %i.er, align 8, !tbaa !35
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  store i32 %i.eq, ptr %i.es, align 8, !tbaa !38
  %i.et = call i32 @hypre_CommTypeSort(ptr noundef nonnull %i.er, ptr noundef %6) ; 0 uses
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge187
  %i.eu = call noundef ptr @hypre_MAlloc(i32 noundef 16) #5 ; 3 uses
  store ptr null, ptr %i.eu, align 8, !tbaa !35
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store i32 0, ptr %i.ev, align 8, !tbaa !38
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.0139 = phi ptr [ %i.er, %bb.l ], [ %i.eu, %bb.m ]
  call void @hypre_Free(ptr noundef nonnull %i.aw) #5
  call void @hypre_Free(ptr noundef %i.f) #5
  store i32 %.0.lcssa, ptr %7, align 4, !tbaa !4
  store ptr %i.ay, ptr %8, align 8, !tbaa !17
  store ptr %i.dy, ptr %9, align 8, !tbaa !19
  store ptr %.0139, ptr %10, align 8, !tbaa !21
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret i32 0
}

declare void @hypre_Free(ptr noundef) local_unnamed_addr #2

declare i32 @hypre_BoxArrayArrayDestroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_CommPkgCommit(ptr noundef captures(none) initializes((48, 64)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16
  %i.c = shl i32 %i.b, 2
  %i.d = tail call ptr @hypre_MAlloc(i32 noundef %i.c) #5 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.d, ptr %i.e, align 8, !tbaa !33
  %i.f = load i32, ptr %i.a, align 8, !tbaa !16
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.i = tail call i32 @hypre_CommTypeBuildMPI(i32 noundef %i.f, ptr poison, ptr noundef %i.h, ptr noundef %i.d) ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !23
  %i.l = shl i32 %i.k, 2
  %i.m = tail call ptr @hypre_MAlloc(i32 noundef %i.l) #5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.m, ptr %i.n, align 8, !tbaa !34
  %i.o = load i32, ptr %i.j, align 4, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !25
  %i.r = tail call i32 @hypre_CommTypeBuildMPI(i32 noundef %i.o, ptr poison, ptr noundef %i.q, ptr noundef %i.m) ; 0 uses
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_CommTypeDestroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 2 uses
  %.not12 = icmp eq ptr %i.a, null
  br i1 %.not12, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !38   ; 2 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader, %hypre_CommTypeEntryDestroy.exit
  %i.e = phi i32 [ %i.i, %hypre_CommTypeEntryDestroy.exit ], [ %i.c, %.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %hypre_CommTypeEntryDestroy.exit ], [ 0, %.preheader ] ; 2 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %hypre_CommTypeEntryDestroy.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  tail call void @hypre_Free(ptr noundef nonnull %i.h) #5
  %.pre = load i32, ptr %i.b, align 8, !tbaa !38
  br label %hypre_CommTypeEntryDestroy.exit

hypre_CommTypeEntryDestroy.exit:                  ; preds = %.lr.ph, %bb.c
  %i.i = phi i32 [ %i.e, %.lr.ph ], [ %.pre, %bb.c ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.j = sext i32 %i.i to i64
  %i.k = icmp slt i64 %indvars.iv.next, %i.j
  br i1 %i.k, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !41

.loopexit.loopexit:                               ; preds = %hypre_CommTypeEntryDestroy.exit
  %.pre15 = load ptr, ptr %0, align 8, !tbaa !35
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.preheader, %bb.b
  %i.l = phi ptr [ %.pre15, %.loopexit.loopexit ], [ %i.a, %.preheader ], [ null, %bb.b ]
  tail call void @hypre_Free(ptr noundef %i.l) #5
  store ptr null, ptr %0, align 8, !tbaa !35
  tail call void @hypre_Free(ptr noundef nonnull %0) #5
  br label %bb.d

bb.d:                                             ; preds = %.loopexit, %bb.a
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_CommPkgDestroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %.not20.i = icmp eq ptr %i.b, null
  br i1 %.not20.i, label %bb.c, label %.preheader22.i

.preheader22.i:                                   ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !16
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.preheader22.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %.preheader22.i ] ; 2 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i
end_hunk_0
begin_hunk_1_@hypre_ExchangeLocalData:bb.a
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv87
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !74
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv95
  store double %i.cc, ptr %i.cd, align 8, !tbaa !74
  %indvars.iv.next88 = add nsw i64 %indvars.iv87, %i.az ; 2 uses
  %indvars.iv.next96 = add nsw i64 %indvars.iv95, %i.ba ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next88
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !74
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv.next96
  store double %i.cf, ptr %i.cg, align 8, !tbaa !74
  %indvars.iv.next88.1 = add nsw i64 %indvars.iv.next88, %i.az ; 2 uses
  %indvars.iv.next96.1 = add nsw i64 %indvars.iv.next96, %i.ba ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next88.1
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !74
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv.next96.1
  store double %i.ci, ptr %i.cj, align 8, !tbaa !74
  %indvars.iv.next88.2 = add nsw i64 %indvars.iv.next88.1, %i.az ; 2 uses
  %indvars.iv.next96.2 = add nsw i64 %indvars.iv.next96.1, %i.ba ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.s, i64 %indvars.iv.next88.2
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !74
  %i.cm = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv.next96.2
  store double %i.cl, ptr %i.cm, align 8, !tbaa !74
  %indvars.iv.next88.3 = add nsw i64 %indvars.iv.next88.2, %i.az
  %indvars.iv.next96.3 = add nsw i64 %indvars.iv.next96.2, %i.ba
  %i.cn = add nuw nsw i32 %.05460.us.us.us.us.us.us, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i32 %i.cn, %i.av
  br i1 %exitcond.not.3, label %._crit_edge.us.us.us.us.us.us, label %scalar.ph, !llvm.loop !81

._crit_edge.us.us.us.us.us.us:                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.co = add nuw nsw i32 %.05362.us.us.us.us.us.us, 1 ; 2 uses
  %indvars.iv.next86 = add i32 %indvars.iv85, %i.ar
  %indvars.iv.next94 = add i32 %indvars.iv93, %i.au
  %exitcond100.not = icmp eq i32 %i.co, %i.an
  br i1 %exitcond100.not, label %._crit_edge64.split.us.us.us.us.us.us, label %.lr.ph.us.us.us.us.us.us, !llvm.loop !82

._crit_edge64.split.us.us.us.us.us.us:            ; preds = %._crit_edge.us.us.us.us.us.us
  %i.cp = add nuw nsw i32 %.05265.us.us.us.us.us, 1 ; 2 uses
  %indvars.iv.next84 = add i32 %indvars.iv83, %i.aq
  %indvars.iv.next92 = add i32 %indvars.iv91, %i.at
  %exitcond101.not = icmp eq i32 %i.cp, %i.ae
  br i1 %exitcond101.not, label %._crit_edge.split.us.split.us.us.us.us, label %.preheader.us.us.us.us.us, !llvm.loop !83

._crit_edge.split.us.split.us.us.us.us:           ; preds = %._crit_edge64.split.us.us.us.us.us.us
  %i.cq = add nuw nsw i32 %.05169.us.us.us, 1     ; 2 uses
  %indvars.iv.next = add i32 %indvars.iv, %i.ap
  %indvars.iv.next90 = add i32 %indvars.iv89, %i.as
  %exitcond102.not = icmp eq i32 %i.cq, %i.ab
  br i1 %exitcond102.not, label %.loopexit, label %.preheader58.us.us.us, !llvm.loop !84

.loopexit:                                        ; preds = %._crit_edge.split.us.split.us.us.us.us, %.preheader58.lr.ph.split.us.split.us, %.preheader58.lr.ph.split.us, %.preheader58.lr.ph, %bb.c, %bb.b
  %indvars.iv.next104 = add nuw nsw i64 %indvars.iv103, 1 ; 2 uses
  %exitcond106.not = icmp eq i64 %indvars.iv.next104, %wide.trip.count
  br i1 %exitcond106.not, label %._crit_edge, label %bb.b, !llvm.loop !85

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret i32 0
}

declare ptr @hypre_MAlloc(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_FinalizeCommunication(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i32, ptr %i.a, align 8, !tbaa !67   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !68
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !69
  %i.g = tail call i32 @hypre_MPI_Waitall(i32 noundef %i.b, ptr noundef %i.d, ptr noundef %i.f) #5 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68
  tail call void @hypre_Free(ptr noundef %i.i) #5
  store ptr null, ptr %i.h, align 8, !tbaa !68
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !69
  tail call void @hypre_Free(ptr noundef %i.k) #5
  store ptr null, ptr %i.j, align 8, !tbaa !69
  tail call void @hypre_Free(ptr noundef nonnull %0) #5
  ret i32 0
}

declare i32 @hypre_MPI_Waitall(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @hypre_CommTypeCreate(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @hypre_MAlloc(i32 noundef 16) #5 ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 %1, ptr %i.b, align 8, !tbaa !38
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_CommTypeEntryDestroy(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @hypre_Free(ptr noundef nonnull %0) #5
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @hypre_CommTypeEntryCreate(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [3 x i32], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  %i.b = tail call ptr @hypre_MAlloc(i32 noundef 64) #5 ; 16 uses
  %i.c = load i32, ptr %0, align 4, !tbaa !4
  store i32 %i.c, ptr %i.b, align 4, !tbaa !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.e, ptr %i.f, align 4, !tbaa !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !4
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.h, ptr %i.i, align 4, !tbaa !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 %i.k, ptr %i.l, align 4, !tbaa !4
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.n, ptr %i.o, align 4, !tbaa !4
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  store i32 %i.q, ptr %i.r, align 4, !tbaa !4
  %i.s = load i32, ptr %0, align 4, !tbaa !4
  %i.t = load i32, ptr %2, align 4, !tbaa !4      ; 2 uses
  %i.u = load i32, ptr %i.d, align 4, !tbaa !4
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4    ; 2 uses
  %i.x = sub i32 %i.u, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 12 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = sub nsw i32 %i.ab, %i.w                 ; 2 uses
  %i.ad = icmp sgt i32 %i.ac, -1
  br i1 %i.ad, label %bb.b, label %._crit_edge.2

bb.b:                                             ; preds = %bb.a
  %i.ae = load i32, ptr %i.g, align 4, !tbaa !4
  %i.af = load i32, ptr %i.y, align 4, !tbaa !4
  %i.ag = sub nsw i32 %i.ae, %i.af
  %i.ah = add nuw nsw i32 %i.ac, 1
  %i.ai = mul nsw i32 %i.ag, %i.ah
  br label %._crit_edge.2

._crit_edge.2:                                    ; preds = %bb.b, %bb.a
  %i.aj = phi i32 [ %i.ai, %bb.b ], [ 0, %bb.a ]
  %i.ak = load i32, ptr %i.z, align 4, !tbaa !4
  %i.al = sub nsw i32 %i.ak, %i.t                 ; 2 uses
  %i.am = add nsw i32 %i.x, %i.aj
  %i.an = add nuw nsw i32 %i.al, 1
  %i.ao = mul nsw i32 %i.an, %i.am
  %.inv = icmp slt i32 %i.al, 0
  %i.ap = select i1 %.inv, i32 0, i32 %i.ao
  %i.aq = add i32 %i.s, %4
  %i.ar = sub i32 %i.aq, %i.t
  %i.as = add i32 %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.as, ptr %i.at, align 4, !tbaa !72
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 9 uses
  %i.av = call i32 @hypre_BoxGetStrideSize(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.a) #5 ; 0 uses
  %i.aw = load <2 x i32>, ptr %i.a, align 8, !tbaa !4
  store <2 x i32> %i.aw, ptr %i.au, align 4, !tbaa !4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !4
  %i.az = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i32 %i.ay, ptr %i.az, align 4, !tbaa !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 8 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  store i32 %3, ptr %i.bb, align 4, !tbaa !4
  %i.bc = load i32, ptr %1, align 4, !tbaa !4
  store i32 %i.bc, ptr %i.ba, align 4, !tbaa !4
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !4  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 52 ; 2 uses
  store i32 %i.be, ptr %i.bf, align 4, !tbaa !4
  %i.bg = load i32, ptr %i.z, align 4, !tbaa !4
  %i.bh = load i32, ptr %2, align 4, !tbaa !4
  %i.bi = sub nsw i32 %i.bg, %i.bh
  %i.bj = call i32 @llvm.smax.i32(i32 %i.bi, i32 -1)
  %spec.select.1 = add nsw i32 %i.bj, 1
  %i.bk = mul nsw i32 %spec.select.1, %i.be
  store i32 %i.bk, ptr %i.bf, align 4, !tbaa !4
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !4  ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  store i32 %i.bm, ptr %i.bn, align 4, !tbaa !4
  %i.bo = load i32, ptr %i.z, align 4, !tbaa !4
  %i.bp = load i32, ptr %2, align 4, !tbaa !4
  %i.bq = sub nsw i32 %i.bo, %i.bp
  %i.br = call i32 @llvm.smax.i32(i32 %i.bq, i32 -1)
  %spec.select.2 = add nsw i32 %i.br, 1
  %i.bs = mul nsw i32 %spec.select.2, %i.bm       ; 2 uses
  store i32 %i.bs, ptr %i.bn, align 4, !tbaa !4
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !4
  %i.bv = load i32, ptr %i.v, align 4, !tbaa !4
  %i.bw = sub nsw i32 %i.bu, %i.bv
  %i.bx = call i32 @llvm.smax.i32(i32 %i.bw, i32 -1)
  %spec.select.2.1 = add nsw i32 %i.bx, 1
  %i.by = mul nsw i32 %spec.select.2.1, %i.bs
  store i32 %i.by, ptr %i.bn, align 4, !tbaa !4
  %i.bz = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ca = load i32, ptr %2, align 4, !tbaa !4
  %i.cb = sub nsw i32 %i.bz, %i.ca
  %i.cc = call i32 @llvm.smax.i32(i32 %i.cb, i32 -1)
  %spec.select107 = add nsw i32 %i.cc, 1
  %i.cd = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ce = load i32, ptr %i.v, align 4, !tbaa !4
  %i.cf = sub nsw i32 %i.cd, %i.ce                ; 2 uses
  %i.cg = add nuw nsw i32 %i.cf, 1
  %i.ch = mul nsw i32 %i.cg, %spec.select107
  %.inv109 = icmp slt i32 %i.cf, 0
  %i.ci = select i1 %.inv109, i32 0, i32 %i.ch
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !4
  %i.cl = load i32, ptr %i.y, align 4, !tbaa !4
  %i.cm = sub nsw i32 %i.ck, %i.cl                ; 2 uses
  %i.cn = add nuw nsw i32 %i.cm, 1
  %i.co = mul nsw i32 %i.ci, %i.cn
  %.inv110 = icmp slt i32 %i.cm, 0
  %i.cp = select i1 %.inv110, i32 0, i32 %i.co
  %i.cq = getelementptr inbounds nuw i8, ptr %i.b, i64 60
  store i32 %i.cp, ptr %i.cq, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.2, %bb.e
  %.0120 = phi i32 [ 4, %._crit_edge.2 ], [ %.1, %bb.e ] ; 2 uses
  %.2119 = phi i32 [ 0, %._crit_edge.2 ], [ %.3, %bb.e ] ; 4 uses
  %i.cr = sext i32 %.2119 to i64                  ; 7 uses
  %i.cs = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.cr
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !4
  %i.cu = icmp eq i32 %i.ct, 1
  br i1 %i.cu, label %.preheader, label %bb.d

.preheader:                                       ; preds = %bb.c
  %i.cv = add nsw i32 %.0120, -1                  ; 3 uses
  %i.cw = icmp slt i32 %.2119, %i.cv
  %wide.trip.count = sext i32 %i.cv to i64        ; 5 uses
  br i1 %i.cw, label %.lr.ph117.preheader, label %._crit_edge118

.lr.ph117.preheader:                              ; preds = %.preheader
  %i.cx = sub nsw i64 %wide.trip.count, %i.cr
  %xtraiter = and i64 %i.cx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph117.prol.loopexit, label %.lr.ph117.prol

.lr.ph117.prol:                                   ; preds = %.lr.ph117.preheader
  %indvars.iv.next.prol = add nsw i64 %i.cr, 1    ; 3 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv.next.prol
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4
  %i.da = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.cr
  store i32 %i.cz, ptr %i.da, align 4, !tbaa !4
  %i.db = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %indvars.iv.next.prol
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !4
  %i.dd = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %i.cr
  store i32 %i.dc, ptr %i.dd, align 4, !tbaa !4
  br label %.lr.ph117.prol.loopexit

.lr.ph117.prol.loopexit:                          ; preds = %.lr.ph117.prol, %.lr.ph117.preheader
  %indvars.iv.unr = phi i64 [ %i.cr, %.lr.ph117.preheader ], [ %indvars.iv.next.prol, %.lr.ph117.prol ]
  %i.de = add nsw i64 %wide.trip.count, -1
  %i.df = icmp eq i64 %i.de, %i.cr
  br i1 %i.df, label %._crit_edge118, label %.lr.ph117

.lr.ph117:                                        ; preds = %.lr.ph117.prol.loopexit, %.lr.ph117
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph117 ], [ %indvars.iv.unr, %.lr.ph117.prol.loopexit ] ; 4 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 4 uses
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv.next
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !4
  %i.di = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !4
  %i.dj = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %indvars.iv.next
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !4
  %i.dl = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %indvars.iv
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !4
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 4 uses
  %i.dm = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv.next.1
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !4
  %i.do = getelementptr inbounds [4 x i8], ptr %i.au, i64 %indvars.iv.next
  store i32 %i.dn, ptr %i.do, align 4, !tbaa !4
  %i.dp = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %indvars.iv.next.1
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !4
  %i.dr = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %indvars.iv.next
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !4
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge118, label %.lr.ph117, !llvm.loop !86

._crit_edge118:                                   ; preds = %.lr.ph117.prol.loopexit, %.lr.ph117, %.preheader
  %i.ds = getelementptr inbounds [4 x i8], ptr %i.au, i64 %wide.trip.count
  store i32 1, ptr %i.ds, align 4, !tbaa !4
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.ba, i64 %wide.trip.count
  store i32 1, ptr %i.dt, align 4, !tbaa !4
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.du = add nsw i32 %.2119, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge118
  %.3 = phi i32 [ %.2119, %._crit_edge118 ], [ %i.du, %bb.d ] ; 2 uses
  %.1 = phi i32 [ %i.cv, %._crit_edge118 ], [ %.0120, %bb.d ] ; 3 uses
  %i.dv = icmp slt i32 %.3, %.1
  br i1 %i.dv, label %bb.c, label %bb.f, !llvm.loop !87

bb.f:                                             ; preds = %bb.e
  %spec.store.select = call i32 @llvm.umax.i32(i32 %.1, i32 1)
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  store i32 %spec.store.select, ptr %i.dw, align 4, !tbaa !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret ptr %i.b
}

declare i32 @hypre_BoxGetStrideSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_MPI_Comm_size(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @hypre_MPI_Comm_rank(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_CommTypeSort(ptr noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !35     ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !38   ; 4 uses
  %i.d = add i32 %i.c, -1                         ; 2 uses
  %i.e = icmp sgt i32 %i.c, 1
  br i1 %i.e, label %.preheader127.preheader, label %._crit_edge

.preheader127.preheader:                          ; preds = %bb.a
  %i.f = zext nneg i32 %i.d to i64
  br label %.preheader127

.preheader127:                                    ; preds = %.preheader127.preheader, %bb.g
  %indvars.iv134 = phi i64 [ %i.f, %.preheader127.preheader ], [ %indvars.iv.next135, %bb.g ] ; 3 uses
  br label %bb.b

.lr.ph.preheader:                                 ; preds = %bb.g
  %i.g = zext nneg i32 %i.c to i64                ; 2 uses
  br label %.lr.ph

bb.b:                                             ; preds = %.preheader127, %.critedge
  %indvars.iv = phi i64 [ 0, %.preheader127 ], [ %indvars.iv.next, %.critedge ] ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !39   ; 5 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.next
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39   ; 5 uses
  %i.l = tail call i32 @hypre_IModPeriodZ(ptr noundef %i.i, ptr noundef %1) #5
  %i.m = tail call i32 @hypre_IModPeriodZ(ptr noundef %i.k, ptr noundef %1) #5
  %i.n = icmp sgt i32 %i.l, %i.m
  br i1 %i.n, label %.critedge118, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = tail call i32 @hypre_IModPeriodZ(ptr noundef %i.i, ptr noundef %1) #5
  %i.p = tail call i32 @hypre_IModPeriodZ(ptr noundef %i.k, ptr noundef %1) #5
  %i.q = icmp eq i32 %i.o, %i.p
  br i1 %i.q, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.r = tail call i32 @hypre_IModPeriodY(ptr noundef %i.i, ptr noundef %1) #5
  %i.s = tail call i32 @hypre_IModPeriodY(ptr noundef %i.k, ptr noundef %1) #5
  %i.t = icmp sgt i32 %i.r, %i.s
  br i1 %i.t, label %.critedge118, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = tail call i32 @hypre_IModPeriodY(ptr noundef %i.i, ptr noundef %1) #5
  %i.v = tail call i32 @hypre_IModPeriodY(ptr noundef %i.k, ptr noundef %1) #5
  %i.w = icmp eq i32 %i.u, %i.v
  br i1 %i.w, label %bb.f, label %.critedge

bb.f:                                             ; preds = %bb.e
  %i.x = tail call i32 @hypre_IModPeriodX(ptr noundef %i.i, ptr noundef %1) #5
  %i.y = tail call i32 @hypre_IModPeriodX(ptr noundef %i.k, ptr noundef %1) #5
  %.not125 = icmp sgt i32 %i.x, %i.y
  br i1 %.not125, label %.critedge118, label %.critedge

.critedge118:                                     ; preds = %bb.b, %bb.d, %bb.f
  %i.z = load <2 x ptr>, ptr %i.h, align 8, !tbaa !39
  %i.aa = shufflevector <2 x ptr> %i.z, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.aa, ptr %i.h, align 8, !tbaa !39
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %bb.e, %bb.f, %.critedge118
  %exitcond.not = icmp eq i64 %indvars.iv.next, %indvars.iv134
  br i1 %exitcond.not, label %bb.g, label %bb.b, !llvm.loop !89

bb.g:                                             ; preds = %.critedge
  %indvars.iv.next135 = add nsw i64 %indvars.iv134, -1
  %i.ab = icmp sgt i64 %indvars.iv134, 1
  br i1 %i.ab, label %.preheader127, label %.lr.ph.preheader, !llvm.loop !90

.loopexit:                                        ; preds = %bb.p, %.split.loop.exit153
  %i.ac = icmp slt i32 %.0.lcssa, %i.d
  br i1 %i.ac, label %.lr.ph, label %._crit_edge, !llvm.loop !91

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.loopexit
  %.0107132 = phi i32 [ %.0.lcssa, %.loopexit ], [ 0, %.lr.ph.preheader ] ; 3 uses
  %i.ad = sext i32 %.0107132 to i64               ; 5 uses
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.a, i64 %i.ad
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !39 ; 3 uses
  %i.ag = add nsw i32 %.0107132, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.c, i32 %i.ag) ; 3 uses
  %i.ah = add nsw i32 %smax, -1                   ; 2 uses
  %indvars.iv.next138166 = add nsw i64 %i.ad, 1   ; 2 uses
  %i.ai = icmp slt i64 %indvars.iv.next138166, %i.g
  br i1 %i.ai, label %.lr.ph169, label %.split.loop.exit153
end_hunk_1
