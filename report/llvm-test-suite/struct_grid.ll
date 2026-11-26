Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/struct_grid?download=true
inline.NumInlined: 2
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@hypre_StructGridAssemble:bb.a
  %.0102.lcssa = phi i32 [ %i.ag, %bb.c ], [ %.0102..1, %._crit_edge.loopexit.unr-lcssa ], [ %.0102..epil, %.lr.ph.epil.preheader ]
  %.0.lcssa = phi i32 [ %i.ai, %bb.c ], [ %i.ba, %._crit_edge.loopexit.unr-lcssa ], [ %i.bh, %.lr.ph.epil.preheader ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv156
  store i32 %.0102.lcssa, ptr %i.bi, align 4, !tbaa !7
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv156
  store i32 %.0.lcssa, ptr %i.bj, align 4, !tbaa !7
  %indvars.iv.next157 = add nuw nsw i64 %indvars.iv156, 1 ; 2 uses
  %exitcond160.not = icmp eq i64 %indvars.iv.next157, %wide.trip.count159
  br i1 %exitcond160.not, label %.preheader, label %bb.c, !llvm.loop !43

._crit_edge132:                                   ; preds = %.lr.ph131, %.preheader
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.q, ptr %i.bk, align 8, !tbaa !23
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !31  ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.bn = load i32, ptr %i.bm, align 8, !tbaa !30 ; 2 uses
  %i.bo = icmp sgt i32 %i.bn, 0
  br i1 %i.bo, label %.lr.ph136, label %._crit_edge137

.lr.ph136:                                        ; preds = %._crit_edge132
  %i.bp = load ptr, ptr %i.bl, align 8, !tbaa !27
  %wide.trip.count168 = zext nneg i32 %i.bn to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph136, %bb.d
  %indvars.iv165 = phi i64 [ 0, %.lr.ph136 ], [ %indvars.iv.next166, %bb.d ] ; 2 uses
  %.0107133 = phi i32 [ 0, %.lr.ph136 ], [ %i.cm, %bb.d ]
  %i.bq = getelementptr inbounds nuw [24 x i8], ptr %i.bp, i64 %indvars.iv165 ; 6 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 12
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !7
  %i.bt = load i32, ptr %i.bq, align 4, !tbaa !7
  %i.bu = sub nsw i32 %i.bs, %i.bt
  %i.bv = tail call i32 @llvm.smax.i32(i32 %i.bu, i32 -1)
  %spec.select = add nsw i32 %i.bv, 1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !7
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !7
  %i.ca = sub nsw i32 %i.bx, %i.bz                ; 2 uses
  %i.cb = add nuw nsw i32 %i.ca, 1
  %i.cc = mul nsw i32 %i.cb, %spec.select
  %.inv121 = icmp slt i32 %i.ca, 0
  %i.cd = select i1 %.inv121, i32 0, i32 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bq, i64 20
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !7
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7
  %i.ci = sub nsw i32 %i.cf, %i.ch                ; 2 uses
  %i.cj = add nuw nsw i32 %i.ci, 1
  %i.ck = mul nsw i32 %i.cd, %i.cj
  %.inv122 = icmp slt i32 %i.ci, 0
  %i.cl = select i1 %.inv122, i32 0, i32 %i.ck
  %i.cm = add nuw nsw i32 %i.cl, %.0107133        ; 2 uses
  %indvars.iv.next166 = add nuw nsw i64 %indvars.iv165, 1 ; 2 uses
  %exitcond169.not = icmp eq i64 %indvars.iv.next166, %wide.trip.count168
  br i1 %exitcond169.not, label %._crit_edge137, label %bb.d, !llvm.loop !44

._crit_edge137:                                   ; preds = %bb.d, %._crit_edge132
  %.0107.lcssa = phi i32 [ 0, %._crit_edge132 ], [ %i.cm, %bb.d ]
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %.0107.lcssa, ptr %i.cn, align 4, !tbaa !49
  %i.co = call i32 @hypre_StructGridPeriodicAllBoxes(ptr noundef nonnull %0, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) ; 0 uses
  %i.cp = load ptr, ptr %i.b, align 8, !tbaa !31  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8 ; 3 uses
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !30
  %i.cs = shl i32 %i.cr, 2
  %i.ct = tail call ptr @hypre_MAlloc(i32 noundef %i.cs) #10 ; 3 uses
  %i.cu = load i32, ptr %i.cq, align 8, !tbaa !30
  %i.cv = icmp sgt i32 %i.cu, 0
  br i1 %i.cv, label %.lr.ph141, label %._crit_edge142

.lr.ph141:                                        ; preds = %._crit_edge137, %.lr.ph141
  %indvars.iv170 = phi i64 [ %indvars.iv.next171, %.lr.ph141 ], [ 0, %._crit_edge137 ] ; 3 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv170
  %i.cx = trunc nuw nsw i64 %indvars.iv170 to i32
  store i32 %i.cx, ptr %i.cw, align 4, !tbaa !7
  %indvars.iv.next171 = add nuw nsw i64 %indvars.iv170, 1 ; 2 uses
  %i.cy = load i32, ptr %i.cq, align 8, !tbaa !30
  %i.cz = sext i32 %i.cy to i64
  %i.da = icmp slt i64 %indvars.iv.next171, %i.cz
  br i1 %i.da, label %.lr.ph141, label %._crit_edge142, !llvm.loop !45

._crit_edge142:                                   ; preds = %.lr.ph141, %._crit_edge137
  %i.db = load ptr, ptr %i.c, align 8, !tbaa !32
  %i.dc = load i32, ptr %i.d, align 4, !tbaa !7   ; 2 uses
  %i.dd = load i32, ptr %i.e, align 4, !tbaa !7
  %i.de = call i32 @hypre_BoxNeighborsCreate(ptr noundef nonnull %i.cp, ptr noundef %i.db, ptr noundef %i.ct, i32 noundef %i.dc, i32 noundef %i.p, i32 noundef %i.dd, ptr noundef nonnull %i.a) #10 ; 0 uses
  %i.df = load ptr, ptr %i.a, align 8, !tbaa !29
  store ptr %i.df, ptr %i.h, align 8, !tbaa !24
  %i.dg = load i32, ptr %i.o, align 8, !tbaa !30
  %i.dh = shl i32 %i.dg, 2
  %i.di = call ptr @hypre_MAlloc(i32 noundef %i.dh) #10 ; 2 uses
  %i.dj = load i32, ptr %i.o, align 8, !tbaa !30
  %i.dk = icmp sgt i32 %i.dj, 0
  br i1 %i.dk, label %.lr.ph145.preheader, label %._crit_edge146

.lr.ph145.preheader:                              ; preds = %._crit_edge142
  %i.dl = sext i32 %i.dc to i64
  %invariant.gep = getelementptr [4 x i8], ptr %i.ct, i64 %i.dl
  br label %.lr.ph145

.lr.ph145:                                        ; preds = %.lr.ph145.preheader, %.lr.ph145
  %indvars.iv173 = phi i64 [ 0, %.lr.ph145.preheader ], [ %indvars.iv.next174, %.lr.ph145 ] ; 3 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv173
  %i.dm = load i32, ptr %gep, align 4, !tbaa !7
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv173
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !7
  %indvars.iv.next174 = add nuw nsw i64 %indvars.iv173, 1 ; 2 uses
  %i.do = load i32, ptr %i.o, align 8, !tbaa !30
  %i.dp = sext i32 %i.do to i64
  %i.dq = icmp slt i64 %indvars.iv.next174, %i.dp
  br i1 %i.dq, label %.lr.ph145, label %._crit_edge146, !llvm.loop !46

._crit_edge146:                                   ; preds = %.lr.ph145, %._crit_edge142
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.di, ptr %i.dr, align 8, !tbaa !25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.pre = load ptr, ptr %i.h, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge146, %bb.a
  %i.ds = phi ptr [ %.pre, %._crit_edge146 ], [ %i.i, %bb.a ]
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.du = load i32, ptr %i.dt, align 8, !tbaa !19
  %i.dv = call i32 @hypre_BoxNeighborsAssemble(ptr noundef %i.ds, i32 noundef %i.du, i32 noundef 1) #10 ; 0 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !30 ; 2 uses
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %.lr.ph150, label %._crit_edge151

.lr.ph150:                                        ; preds = %bb.e
  %i.dz = load ptr, ptr %i.g, align 8, !tbaa !27
  %wide.trip.count179 = zext nneg i32 %i.dx to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph150, %bb.f
  %indvars.iv176 = phi i64 [ 0, %.lr.ph150 ], [ %indvars.iv.next177, %bb.f ] ; 2 uses
  %.1108147 = phi i32 [ 0, %.lr.ph150 ], [ %i.ew, %bb.f ]
  %i.ea = getelementptr inbounds nuw [24 x i8], ptr %i.dz, i64 %indvars.iv176 ; 6 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 12
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !7
  %i.ed = load i32, ptr %i.ea, align 4, !tbaa !7
  %i.ee = sub nsw i32 %i.ec, %i.ed
  %i.ef = call i32 @llvm.smax.i32(i32 %i.ee, i32 -1)
  %spec.select118 = add nsw i32 %i.ef, 1
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !7
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !7
  %i.ek = sub nsw i32 %i.eh, %i.ej                ; 2 uses
  %i.el = add nuw nsw i32 %i.ek, 1
  %i.em = mul nsw i32 %i.el, %spec.select118
  %.inv = icmp slt i32 %i.ek, 0
  %i.en = select i1 %.inv, i32 0, i32 %i.em
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ea, i64 20
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !7
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !7
  %i.es = sub nsw i32 %i.ep, %i.er                ; 2 uses
  %i.et = add nuw nsw i32 %i.es, 1
  %i.eu = mul nsw i32 %i.en, %i.et
  %.inv119 = icmp slt i32 %i.es, 0
  %i.ev = select i1 %.inv119, i32 0, i32 %i.eu
  %i.ew = add nuw nsw i32 %i.ev, %.1108147        ; 2 uses
  %indvars.iv.next177 = add nuw nsw i64 %indvars.iv176, 1 ; 2 uses
  %exitcond180.not = icmp eq i64 %indvars.iv.next177, %wide.trip.count179
  br i1 %exitcond180.not, label %._crit_edge151, label %bb.f, !llvm.loop !47

._crit_edge151:                                   ; preds = %bb.f, %bb.e
  %.1108.lcssa = phi i32 [ 0, %bb.e ], [ %i.ew, %bb.f ]
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.1108.lcssa, ptr %i.ex, align 8, !tbaa !50
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_GatherAllBoxes(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 !guid !54 {
bb.a:
  %i.a = alloca [3 x i32], align 4                ; 6 uses
  %i.b = alloca [3 x i32], align 4                ; 6 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #10
  %i.f = call i32 @hypre_MPI_Comm_size(i32 noundef %0, ptr noundef nonnull %i.c) #10 ; 0 uses
  %i.g = call i32 @hypre_MPI_Comm_rank(i32 noundef %0, ptr noundef nonnull %i.d) #10 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !30
  %i.j = mul nsw i32 %i.i, 7
  store i32 %i.j, ptr %i.e, align 4, !tbaa !7
  %i.k = load i32, ptr %i.c, align 4, !tbaa !7
  %i.l = shl i32 %i.k, 2
  %i.m = call ptr @hypre_MAlloc(i32 noundef %i.l) #10 ; 5 uses
  %i.n = load i32, ptr %i.c, align 4, !tbaa !7
  %i.o = shl i32 %i.n, 2
  %i.p = call ptr @hypre_MAlloc(i32 noundef %i.o) #10 ; 4 uses
  %i.q = call i32 @hypre_MPI_Allgather(ptr noundef nonnull %i.e, i32 noundef 1, i32 noundef 1, ptr noundef %i.m, i32 noundef 1, i32 noundef 1, i32 noundef %0) #10 ; 0 uses
  store i32 0, ptr %i.p, align 4, !tbaa !7
  %i.r = load i32, ptr %i.m, align 4, !tbaa !7    ; 3 uses
  %i.s = load i32, ptr %i.c, align 4, !tbaa !7
  %i.t = icmp sgt i32 %i.s, 1
  br i1 %i.t, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.u = phi i32 [ %i.z, %.lr.ph ], [ %i.r, %bb.a ]
  %i.v = phi i32 [ %i.w, %.lr.ph ], [ 0, %bb.a ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 1, %bb.a ] ; 3 uses
  %.0100103 = phi i32 [ %i.aa, %.lr.ph ], [ %i.r, %bb.a ]
  %i.w = add nsw i32 %i.u, %i.v                   ; 2 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.p, i64 %indvars.iv
  store i32 %i.w, ptr %i.x, align 4, !tbaa !7
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv
  %i.z = load i32, ptr %i.y, align 4, !tbaa !7    ; 2 uses
  %i.aa = add nsw i32 %i.z, %.0100103             ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ab = load i32, ptr %i.c, align 4, !tbaa !7
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next, %i.ac
  br i1 %i.ad, label %.lr.ph, label %._crit_edge, !llvm.loop !51

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0100.lcssa = phi i32 [ %i.r, %bb.a ], [ %i.aa, %.lr.ph ] ; 4 uses
  %i.ae = load i32, ptr %i.e, align 4, !tbaa !7
  %i.af = shl i32 %i.ae, 2
  %i.ag = call ptr @hypre_MAlloc(i32 noundef %i.af) #10 ; 9 uses
  %i.ah = shl i32 %.0100.lcssa, 2
  %i.ai = call ptr @hypre_MAlloc(i32 noundef %i.ah) #10 ; 9 uses
  %i.aj = load i32, ptr %i.h, align 8, !tbaa !30
  %i.ak = icmp sgt i32 %i.aj, 0
  br i1 %i.ak, label %.lr.ph112, label %._crit_edge113

.lr.ph112:                                        ; preds = %._crit_edge
  %i.al = load ptr, ptr %1, align 8, !tbaa !27
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph112, %bb.b
  %indvars.iv135 = phi i64 [ 0, %.lr.ph112 ], [ %indvars.iv.next136, %bb.b ] ; 2 uses
  %.098109 = phi i64 [ 0, %.lr.ph112 ], [ %i.bm, %bb.b ] ; 8 uses
  %i.am = load i32, ptr %i.d, align 4, !tbaa !7
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.098109
  store i32 %i.am, ptr %i.an, align 4, !tbaa !7
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.al, i64 %indvars.iv135 ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load i32, ptr %i.ao, align 4, !tbaa !7
  %i.ar = getelementptr [4 x i8], ptr %i.ag, i64 %.098109
  %i.as = getelementptr i8, ptr %i.ar, i64 4
  store i32 %i.aq, ptr %i.as, align 4, !tbaa !7
  %i.at = load i32, ptr %i.ap, align 4, !tbaa !7
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.098109
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  store i32 %i.at, ptr %i.av, align 4, !tbaa !7
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !7
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.098109
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  store i32 %i.ax, ptr %i.az, align 4, !tbaa !7
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !7
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.098109
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  store i32 %i.bb, ptr %i.bd, align 4, !tbaa !7
  %i.be = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !7
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.098109
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  store i32 %i.bf, ptr %i.bh, align 4, !tbaa !7
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ao, i64 20
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !7
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.098109
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i32 %i.bj, ptr %i.bl, align 4, !tbaa !7
  %i.bm = add nuw nsw i64 %.098109, 7
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1 ; 2 uses
  %i.bn = load i32, ptr %i.h, align 8, !tbaa !30
  %i.bo = sext i32 %i.bn to i64
  %i.bp = icmp slt i64 %indvars.iv.next136, %i.bo
  br i1 %i.bp, label %bb.b, label %._crit_edge113, !llvm.loop !52

._crit_edge113:                                   ; preds = %bb.b, %._crit_edge
  %i.bq = load i32, ptr %i.e, align 4, !tbaa !7
  %i.br = call i32 @hypre_MPI_Allgatherv(ptr noundef %i.ag, i32 noundef %i.bq, i32 noundef 1, ptr noundef %i.ai, ptr noundef nonnull %i.m, ptr noundef nonnull %i.p, i32 noundef 1, i32 noundef %0) #10 ; 0 uses
  %i.bs = sdiv i32 %.0100.lcssa, 7                ; 2 uses
  %i.bt = call ptr @hypre_BoxArrayCreate(i32 noundef %i.bs) #10 ; 2 uses
  %i.bu = shl nsw i32 %i.bs, 2
  %i.bv = call ptr @hypre_MAlloc(i32 noundef %i.bu) #10 ; 2 uses
  %i.bw = call ptr @hypre_BoxCreate() #10         ; 8 uses
  %i.bx = icmp sgt i32 %.0100.lcssa, 0
  br i1 %i.bx, label %.lr.ph123, label %._crit_edge124

.lr.ph123:                                        ; preds = %._crit_edge113
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 12
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bw, i64 20
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph123, %bb.e
  %indvars.iv146 = phi i64 [ 0, %.lr.ph123 ], [ %indvars.iv.next147, %bb.e ] ; 4 uses
  %.2119 = phi i64 [ 0, %.lr.ph123 ], [ %i.dc, %bb.e ] ; 8 uses
  %.0101118 = phi i32 [ -1, %.lr.ph123 ], [ %.1102, %bb.e ] ; 3 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.2119
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !7
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv146 ; 2 uses
  store i32 %i.ci, ptr %i.cj, align 4, !tbaa !7
  %i.ck = getelementptr [4 x i8], ptr %i.ai, i64 %.2119
  %i.cl = getelementptr i8, ptr %i.ck, i64 4
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !7
  store i32 %i.cm, ptr %i.a, align 4, !tbaa !7
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.2119
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !7
  store i32 %i.cp, ptr %i.b, align 4, !tbaa !7
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.2119
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !7
  store i32 %i.cs, ptr %i.cd, align 4, !tbaa !7
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.2119
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !7
  store i32 %i.cv, ptr %i.ce, align 4, !tbaa !7
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.2119
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 20
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !7
  store i32 %i.cy, ptr %i.cf, align 4, !tbaa !7
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.2119
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.db = load i32, ptr %i.da, align 4, !tbaa !7
  store i32 %i.db, ptr %i.cg, align 4, !tbaa !7
  %i.dc = add nuw nsw i64 %.2119, 7               ; 2 uses
  %i.dd = trunc nsw i64 %i.dc to i32
  %i.de = call i32 @hypre_BoxSetExtents(ptr noundef %i.bw, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #10 ; 0 uses
  %i.df = load i32, ptr %i.bw, align 4, !tbaa !7
  %i.dg = load ptr, ptr %i.bt, align 8, !tbaa !27
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %i.dg, i64 %indvars.iv146 ; 6 uses
  store i32 %i.df, ptr %i.dh, align 4, !tbaa !7
  %i.di = load i32, ptr %i.by, align 4, !tbaa !7
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !7
  %i.dk = load i32, ptr %i.bz, align 4, !tbaa !7
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i32 %i.dk, ptr %i.dl, align 4, !tbaa !7
  %i.dm = load i32, ptr %i.ca, align 4, !tbaa !7
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 %i.dm, ptr %i.dn, align 4, !tbaa !7
  %i.do = load i32, ptr %i.cb, align 4, !tbaa !7
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i32 %i.do, ptr %i.dp, align 4, !tbaa !7
  %i.dq = load i32, ptr %i.cc, align 4, !tbaa !7
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 20
  store i32 %i.dq, ptr %i.dr, align 4, !tbaa !7
  %indvars.iv.next147 = add nuw nsw i64 %indvars.iv146, 1
  %i.ds = icmp slt i32 %.0101118, 0
  br i1 %i.ds, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.dt = load i32, ptr %i.cj, align 4, !tbaa !7
  %i.du = load i32, ptr %i.d, align 4, !tbaa !7
  %i.dv = icmp eq i32 %i.dt, %i.du
  %i.dw = trunc nuw nsw i64 %indvars.iv146 to i32
  %spec.select = select i1 %i.dv, i32 %i.dw, i32 %.0101118
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1102 = phi i32 [ %.0101118, %bb.c ], [ %spec.select, %bb.d ] ; 2 uses
  %i.dx = icmp sgt i32 %.0100.lcssa, %i.dd
  br i1 %i.dx, label %bb.c, label %._crit_edge124, !llvm.loop !53

._crit_edge124:                                   ; preds = %bb.e, %._crit_edge113
  %.0101.lcssa = phi i32 [ -1, %._crit_edge113 ], [ %.1102, %bb.e ]
  %i.dy = call i32 @hypre_BoxDestroy(ptr noundef %i.bw) #10 ; 0 uses
  call void @hypre_Free(ptr noundef %i.ag) #10
  call void @hypre_Free(ptr noundef %i.ai) #10
  call void @hypre_Free(ptr noundef nonnull %i.m) #10
  call void @hypre_Free(ptr noundef nonnull %i.p) #10
  store ptr %i.bt, ptr %2, align 8, !tbaa !31
  store ptr %i.bv, ptr %3, align 8, !tbaa !32
  store i32 %.0101.lcssa, ptr %4, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i32 0
}

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @hypre_StructGridPeriodicAllBoxes(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 !guid !60 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load i32, ptr %i.a, align 8, !tbaa !7    ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.d = load i32, ptr %i.c, align 4, !tbaa !7    ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.f = load i32, ptr %i.e, align 8, !tbaa !7    ; 5 uses
  %.not = icmp ne i32 %i.b, 0                     ; 5 uses
  %spec.select.neg = sext i1 %.not to i32         ; 3 uses
  %.not176 = icmp ne i32 %i.d, 0                  ; 6 uses
  %.0170.neg = sext i1 %.not176 to i32            ; 3 uses
  %.not177 = icmp ne i32 %i.f, 0                  ; 13 uses
  %.0169.neg = sext i1 %.not177 to i32            ; 6 uses
  %i.g = or i32 %i.d, %i.b
  %i.h = or i32 %i.g, %i.f
  %or.cond3 = icmp eq i32 %i.h, 0
  br i1 %or.cond3, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !tbaa !31     ; 6 uses
  %i.j = load ptr, ptr %2, align 8, !tbaa !32     ; 6 uses
  %i.k = load i32, ptr %3, align 4, !tbaa !7
end_hunk_0
