inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@Cudd_bddIterConjDecomp:bb.a
  %i.bt = load ptr, ptr %i.l, align 8, !tbaa !30
  call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.bt) #8
  %i.bu = load ptr, ptr %i.w, align 8, !tbaa !30  ; 2 uses
  store ptr %i.bu, ptr %i.l, align 8, !tbaa !30
  %i.bv = call ptr @Cudd_RemapOverApprox(ptr noundef %0, ptr noundef %i.bu, i32 noundef %i.c, i32 noundef 0, double noundef 1.000000e+00) #8 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %._crit_edge, label %bb.b

bb.k:                                             ; preds = %bb.i
  %i.bx = load ptr, ptr %i.b, align 16, !tbaa !30
  call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.bx) #8
  %i.by = load ptr, ptr %i.w, align 8, !tbaa !30
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.k
  %.sink = phi ptr [ %i.by, %bb.k ], [ %i.bc, %bb.f ]
  call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %.sink) #8
  %i.bz = load ptr, ptr %i.a, align 16, !tbaa !30
  %i.ca = load ptr, ptr %i.l, align 8, !tbaa !30
  %i.cb = call ptr @Cudd_bddLICompaction(ptr noundef %0, ptr noundef %i.bz, ptr noundef %i.ca) #8 ; 7 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.loopexit
  %i.cd = load ptr, ptr %i.a, align 16, !tbaa !30
  call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.cd) #8
  %i.ce = load ptr, ptr %i.l, align 8, !tbaa !30
  call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.ce) #8
  br label %bb.x

bb.m:                                             ; preds = %.loopexit
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = and i64 %i.cf, -2
  %i.ch = inttoptr i64 %i.cg to ptr
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 4 ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !8
  %i.ck = add i32 %i.cj, 1
  store i32 %i.ck, ptr %i.ci, align 4, !tbaa !8
  %i.cl = load ptr, ptr %i.a, align 16, !tbaa !30
  call void @Cudd_RecursiveDeref(ptr noundef %0, ptr noundef %i.cl) #8
  store ptr %i.cb, ptr %i.a, align 16, !tbaa !30
  %i.cm = load ptr, ptr %i.d, align 8, !tbaa !13  ; 2 uses
  %.not80 = icmp eq ptr %i.cb, %i.cm
  br i1 %.not80, label %bb.u, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cn = load ptr, ptr %i.l, align 8, !tbaa !30  ; 3 uses
  %.not81 = icmp eq ptr %i.cn, %i.cm
  br i1 %.not81, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #9 ; 4 uses
  store ptr %i.co, ptr %2, align 8, !tbaa !28
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef nonnull %i.cb) #8
  %i.cq = load ptr, ptr %i.l, align 8, !tbaa !30
  call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef %i.cq) #8
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.cr, align 8, !tbaa !29
  br label %bb.x

bb.q:                                             ; preds = %bb.o
  store ptr %i.cb, ptr %i.co, align 8, !tbaa !30
  %i.cs = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  store ptr %i.cn, ptr %i.cs, align 8, !tbaa !30
  br label %bb.x

bb.r:                                             ; preds = %bb.n
  call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef %i.cn) #8
  %i.ct = call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #9 ; 3 uses
  store ptr %i.ct, ptr %2, align 8, !tbaa !28
  %i.cu = icmp eq ptr %i.ct, null
  %i.cv = load ptr, ptr %i.a, align 16, !tbaa !30 ; 2 uses
  br i1 %i.cu, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef %i.cv) #8
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.cw, align 8, !tbaa !29
  br label %bb.x

bb.t:                                             ; preds = %bb.r
  store ptr %i.cv, ptr %i.ct, align 8, !tbaa !30
  br label %bb.x

bb.u:                                             ; preds = %bb.m
  call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef nonnull %i.cb) #8
  %i.cx = call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #9 ; 3 uses
  store ptr %i.cx, ptr %2, align 8, !tbaa !28
  %i.cy = icmp eq ptr %i.cx, null
  %i.cz = load ptr, ptr %i.l, align 8, !tbaa !30  ; 2 uses
  br i1 %i.cy, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef %i.cz) #8
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 632
  store i32 1, ptr %i.da, align 8, !tbaa !29
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  store ptr %i.cz, ptr %i.cx, align 8, !tbaa !30
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.t, %bb.s, %bb.q, %bb.p, %bb.l, %bb.h, %bb.e, %bb.c, %._crit_edge
  %.0 = phi i32 [ 0, %._crit_edge ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.l ], [ 0, %bb.p ], [ 2, %bb.q ], [ 0, %bb.s ], [ 1, %bb.t ], [ 0, %bb.v ], [ 1, %bb.w ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

declare i32 @Cudd_SharingSize(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @Cudd_bddAnd(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @Cudd_bddIterDisjDecomp(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = xor i64 %i.a, 1
  %i.c = inttoptr i64 %i.b to ptr
  %i.d = tail call i32 @Cudd_bddIterConjDecomp(ptr noundef %0, ptr noundef %i.c, ptr noundef %2) ; 3 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !28     ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !30
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = xor i64 %i.g, 1
  %i.i = inttoptr i64 %i.h to ptr
  store ptr %i.i, ptr %i.e, align 8, !tbaa !30
  %exitcond.not = icmp eq i32 %i.d, 1
  br i1 %exitcond.not, label %._crit_edge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !30
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = xor i64 %i.l, 1
  %i.n = inttoptr i64 %i.m to ptr
  store ptr %i.n, ptr %i.j, align 8, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.b, %bb.a
  ret i32 %i.d
}

; Function Attrs: nounwind uwtable
define range(i32 0, 3) i32 @Cudd_bddGenConjDecomp(ptr noundef initializes((456, 460)) %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 21 uses
  %i.b = alloca ptr, align 8                      ; 36 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13   ; 2 uses
  store ptr %i.d, ptr @one, align 8, !tbaa !30
  %i.e = ptrtoint ptr %i.d to i64
  %i.f = xor i64 %i.e, 1
  %i.g = inttoptr i64 %i.f to ptr
  store ptr %i.g, ptr @zero, align 8, !tbaa !30
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.j = ptrtoint ptr %1 to i64
  %i.k = and i64 %i.j, -2
  %i.l = inttoptr i64 %i.k to ptr
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 632 ; 4 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  store i32 0, ptr %i.h, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  %i.o = call ptr @st__init_table(ptr noundef nonnull @st__ptrcmp, ptr noundef nonnull @st__ptrhash) #8 ; 21 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.preheader154.i, label %bb.b

bb.b:                                             ; preds = %.backedge
  %i.q = call noalias dereferenceable_or_null(8) ptr @malloc(i64 noundef 8) #9 ; 4 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %.preheader154.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.q, align 4, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 1, ptr %i.s, align 4, !tbaa !34
  %i.t = load ptr, ptr @one, align 8, !tbaa !30
  %i.u = call i32 @st__insert(ptr noundef nonnull %i.o, ptr noundef %i.t, ptr noundef nonnull %i.q) #8
  %i.v = icmp eq i32 %i.u, -10000
  br i1 %i.v, label %.preheader154.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = call fastcc ptr @CreateBotDist(ptr noundef %1, ptr noundef %i.o) ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.preheader154.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load i32, ptr %i.w, align 4, !tbaa !32   ; 2 uses
  %i.z = icmp slt i32 %i.y, 5
  br i1 %i.z, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !13  ; 3 uses
  %i.ab = load i32, ptr %i.m, align 4, !tbaa !8
  %i.ac = add i32 %i.ab, 1
  store i32 %i.ac, ptr %i.m, align 4, !tbaa !8
  %i.ad = ptrtoint ptr %i.aa to i64
  %i.ae = and i64 %i.ad, -2
  %i.af = inttoptr i64 %i.ae to ptr
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !8
  %i.ai = add i32 %i.ah, 1
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !8
  %i.aj = call ptr @st__init_gen(ptr noundef nonnull %i.o) #8 ; 5 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.preheader154.i, label %.preheader162.i

.preheader162.i:                                  ; preds = %bb.f
  %i.al = call i32 @st__gen(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not141180.i = icmp eq i32 %i.al, 0
  br i1 %.not141180.i, label %cuddConjunctsAux.exit, label %.lr.ph181.i

.lr.ph181.i:                                      ; preds = %.preheader162.i, %bb.h
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !35  ; 2 uses
  %.not142.i = icmp eq ptr %i.am, null
  br i1 %.not142.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph181.i
  call void @free(ptr noundef nonnull %i.am) #8
  store ptr null, ptr %i.b, align 8, !tbaa !35
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph181.i
  %i.an = call i32 @st__gen(ptr noundef nonnull %i.aj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not141.i = icmp eq i32 %i.an, 0
  br i1 %.not141.i, label %cuddConjunctsAux.exit, label %.lr.ph181.i, !llvm.loop !36

bb.i:                                             ; preds = %bb.e
  %i.ao = call ptr @st__init_gen(ptr noundef nonnull %i.o) #8 ; 4 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %.preheader154.i, label %.preheader166.i

.preheader166.i:                                  ; preds = %bb.i
  %i.aq = call i32 @st__gen(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not169.i = icmp eq i32 %i.aq, 0
  br i1 %.not169.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader166.i, %.lr.ph.i
  %.0170.i = phi i32 [ %..0.i, %.lr.ph.i ], [ 0, %.preheader166.i ]
  %i.ar = load ptr, ptr %i.b, align 8, !tbaa !35
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.at = load i32, ptr %i.as, align 4, !tbaa !34
  %..0.i = call i32 @llvm.smax.i32(i32 %i.at, i32 %.0170.i) ; 2 uses
  %i.au = call i32 @st__gen(ptr noundef nonnull %i.ao, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not.i = icmp eq i32 %i.au, 0
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !38

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader166.i
  %.0.lcssa.i = phi i32 [ 0, %.preheader166.i ], [ %..0.i, %.lr.ph.i ]
  call void @st__free_gen(ptr noundef nonnull %i.ao) #8
  %i.av = call i32 @Cudd_SupportSize(ptr noundef nonnull %0, ptr noundef %1) #8
  %ldexp.i = call double @ldexp(double 1.000000e+00, i32 %i.av)
  %i.aw = call ptr @st__init_table(ptr noundef nonnull @st__ptrcmp, ptr noundef nonnull @st__ptrhash) #8 ; 11 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.preheader154.i, label %bb.j

bb.j:                                             ; preds = %._crit_edge.i
  %i.ay = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.az = call fastcc double @CountMinterms(ptr noundef %1, double noundef %ldexp.i, ptr noundef %i.aw, ptr noundef %i.ay)
  %i.ba = fcmp oeq double %i.az, -1.000000e+00
  br i1 %i.ba, label %.preheader154.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = call i64 @Cudd_Random() #8
  %i.bc = and i64 %i.bb, 1
  store i64 %i.bc, ptr @lastTimeG, align 8, !tbaa !40
  %i.bd = call ptr @st__init_table(ptr noundef nonnull @st__ptrcmp, ptr noundef nonnull @st__ptrhash) #8 ; 10 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %.preheader154.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = call ptr @st__init_table(ptr noundef nonnull @st__ptrcmp, ptr noundef nonnull @st__ptrhash) #8 ; 5 uses
  %i.bg = icmp eq ptr %i.bf, null
  br i1 %i.bg, label %.preheader154.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = call fastcc ptr @BuildConjuncts(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.o, ptr noundef %i.bd, i32 noundef %i.y, i32 noundef %.0.lcssa.i, ptr noundef %i.bf, ptr noundef %i.aw) ; 3 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %.preheader154.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bj = call ptr @st__init_gen(ptr noundef nonnull %i.o) #8 ; 4 uses
  %i.bk = icmp eq ptr %i.bj, null
  br i1 %i.bk, label %.preheader154.i, label %.preheader165.i

.preheader165.i:                                  ; preds = %bb.n
  %i.bl = call i32 @st__gen(ptr noundef nonnull %i.bj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not134171.i = icmp eq i32 %i.bl, 0
  br i1 %.not134171.i, label %._crit_edge173.i, label %.lr.ph172.i

.lr.ph172.i:                                      ; preds = %.preheader165.i, %bb.p
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !35  ; 2 uses
  %.not140.i = icmp eq ptr %i.bm, null
  br i1 %.not140.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.lr.ph172.i
  call void @free(ptr noundef nonnull %i.bm) #8
  store ptr null, ptr %i.b, align 8, !tbaa !35
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.lr.ph172.i
  %i.bn = call i32 @st__gen(ptr noundef nonnull %i.bj, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not134.i = icmp eq i32 %i.bn, 0
  br i1 %.not134.i, label %._crit_edge173.i, label %.lr.ph172.i, !llvm.loop !41

._crit_edge173.i:                                 ; preds = %bb.p, %.preheader165.i
  call void @st__free_gen(ptr noundef nonnull %i.bj) #8
  call void @st__free_table(ptr noundef nonnull %i.o) #8
  call void @st__free_table(ptr noundef nonnull %i.bf) #8
  %i.bo = call ptr @st__init_gen(ptr noundef nonnull %i.aw) #8 ; 4 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %.preheader154.i, label %.preheader164.i

.preheader164.i:                                  ; preds = %._crit_edge173.i
  %i.bq = call i32 @st__gen(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not135174.i = icmp eq i32 %i.bq, 0
  br i1 %.not135174.i, label %._crit_edge176.i, label %.lr.ph175.i

.lr.ph175.i:                                      ; preds = %.preheader164.i, %bb.r
  %i.br = load ptr, ptr %i.b, align 8, !tbaa !35  ; 2 uses
  %.not139.i = icmp eq ptr %i.br, null
  br i1 %.not139.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph175.i
  call void @free(ptr noundef nonnull %i.br) #8
  store ptr null, ptr %i.b, align 8, !tbaa !35
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph175.i
  %i.bs = call i32 @st__gen(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not135.i = icmp eq i32 %i.bs, 0
  br i1 %.not135.i, label %._crit_edge176.i, label %.lr.ph175.i, !llvm.loop !42

._crit_edge176.i:                                 ; preds = %bb.r, %.preheader164.i
  call void @st__free_gen(ptr noundef nonnull %i.bo) #8
  call void @st__free_table(ptr noundef nonnull %i.aw) #8
  %i.bt = ptrtoint ptr %i.bh to i64               ; 2 uses
  %i.bu = and i64 %i.bt, 1
  %.not136.i = icmp eq i64 %i.bu, 0               ; 2 uses
  %i.bv = xor i64 %i.bt, 1
  %i.bw = inttoptr i64 %i.bv to ptr               ; 2 uses
  %i.bx = select i1 %.not136.i, ptr %i.bh, ptr %i.bw ; 3 uses
  %.not137.i = icmp eq ptr %i.bx, null
  br i1 %.not137.i, label %bb.u, label %bb.s

bb.s:                                             ; preds = %._crit_edge176.i
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !43 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !45 ; 3 uses
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = and i64 %i.cb, -2
  %i.cd = inttoptr i64 %i.cc to ptr
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 4 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !8
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4, !tbaa !8
  %i.ch = ptrtoint ptr %i.ca to i64
  %i.ci = and i64 %i.ch, -2
  %i.cj = inttoptr i64 %i.ci to ptr
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 4 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !8
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4, !tbaa !8
  br i1 %.not136.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @free(ptr noundef %i.bw) #8
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %._crit_edge176.i
  %.044 = phi ptr [ null, %._crit_edge176.i ], [ %i.by, %bb.s ], [ %i.by, %bb.t ] ; 2 uses
  %.043 = phi ptr [ null, %._crit_edge176.i ], [ %i.ca, %bb.s ], [ %i.ca, %bb.t ] ; 2 uses
  %i.cn = call ptr @st__init_gen(ptr noundef nonnull %i.bd) #8 ; 5 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %.preheader154.i, label %.preheader163.i

.preheader163.i:                                  ; preds = %bb.u
  %i.cp = call i32 @st__gen(ptr noundef nonnull %i.cn, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not138177.i = icmp eq i32 %i.cp, 0
  br i1 %.not138177.i, label %cuddConjunctsAux.exit, label %.lr.ph178.i

.preheader154.i:                                  ; preds = %bb.u, %._crit_edge173.i, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %._crit_edge.i, %bb.i, %bb.f, %bb.d, %bb.c, %bb.b, %.backedge
  %.0113.ph.i = phi ptr [ null, %bb.u ], [ null, %._crit_edge173.i ], [ %i.bf, %bb.n ], [ %i.bf, %bb.m ], [ null, %bb.l ], [ null, %bb.k ], [ null, %bb.j ], [ null, %._crit_edge.i ], [ null, %bb.i ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %.backedge ] ; 2 uses
  %.0111.ph.i = phi ptr [ null, %bb.u ], [ %i.aw, %._crit_edge173.i ], [ %i.aw, %bb.n ], [ %i.aw, %bb.m ], [ %i.aw, %bb.l ], [ %i.aw, %bb.k ], [ %i.aw, %bb.j ], [ null, %._crit_edge.i ], [ null, %bb.i ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %.backedge ]
  %.0110.ph.i = phi ptr [ %i.bd, %bb.u ], [ %i.bd, %._crit_edge173.i ], [ %i.bd, %bb.n ], [ %i.bd, %bb.m ], [ %i.bd, %bb.l ], [ null, %bb.k ], [ null, %bb.j ], [ null, %._crit_edge.i ], [ null, %bb.i ], [ null, %bb.f ], [ null, %bb.d ], [ null, %bb.c ], [ null, %bb.b ], [ null, %.backedge ] ; 3 uses
  %.0109.ph.i = phi ptr [ null, %bb.u ], [ null, %._crit_edge173.i ], [ %i.o, %bb.n ], [ %i.o, %bb.m ], [ %i.o, %bb.l ], [ %i.o, %bb.k ], [ %i.o, %bb.j ], [ %i.o, %._crit_edge.i ], [ %i.o, %bb.i ], [ %i.o, %bb.f ], [ %i.o, %bb.d ], [ %i.o, %bb.c ], [ %i.o, %bb.b ], [ null, %.backedge ]
  %.not147.i = icmp eq ptr %.0113.ph.i, null
  %.not148.i = icmp eq ptr %.0110.ph.i, null
  %.0111.ph.fr.i = freeze ptr %.0111.ph.i
  br label %.outer.i

.lr.ph178.i:                                      ; preds = %.preheader163.i, %.lr.ph178.i
  %i.cq = load ptr, ptr %i.b, align 8, !tbaa !35  ; 3 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !43
  call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef %i.cr) #8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !45
  call void @Cudd_RecursiveDeref(ptr noundef nonnull %0, ptr noundef %i.ct) #8
  call void @free(ptr noundef %i.cq) #8
  %i.cu = call i32 @st__gen(ptr noundef nonnull %i.cn, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not138.i = icmp eq i32 %i.cu, 0
  br i1 %.not138.i, label %cuddConjunctsAux.exit, label %.lr.ph178.i, !llvm.loop !46

.outer159.split.i:                                ; preds = %.outer159.i, %.outer159.split.i
  %i.cv = call ptr @st__init_gen(ptr noundef nonnull %.0109.ph160.i) #8 ; 4 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %.outer159.split.i, label %.preheader153.i

.preheader153.i:                                  ; preds = %.outer159.split.i
  %i.cx = call i32 @st__gen(ptr noundef nonnull %i.cv, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not144183.i = icmp eq i32 %i.cx, 0
  br i1 %.not144183.i, label %._crit_edge185.i, label %.lr.ph184.i

.lr.ph184.i:                                      ; preds = %.preheader153.i, %bb.w
  %i.cy = load ptr, ptr %i.b, align 8, !tbaa !35  ; 2 uses
  %.not151.i = icmp eq ptr %i.cy, null
  br i1 %.not151.i, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.lr.ph184.i
  call void @free(ptr noundef nonnull %i.cy) #8
  store ptr null, ptr %i.b, align 8, !tbaa !35
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph184.i
  %i.cz = call i32 @st__gen(ptr noundef nonnull %i.cv, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not144.i = icmp eq i32 %i.cz, 0
  br i1 %.not144.i, label %._crit_edge185.i, label %.lr.ph184.i, !llvm.loop !47

._crit_edge185.i:                                 ; preds = %bb.w, %.preheader153.i
  call void @st__free_gen(ptr noundef nonnull %i.cv) #8
  call void @st__free_table(ptr noundef nonnull %.0109.ph160.i) #8
  br label %.loopexit161.i

.loopexit161.i:                                   ; preds = %.outer159.i, %._crit_edge185.i
  %i.da = call ptr @st__init_gen(ptr noundef nonnull %.0111.ph155.i) #8 ; 5 uses
  %i.db = icmp eq ptr %i.da, null
  br i1 %i.db, label %.outer159.i, label %.preheader152.i

.outer159.i:                                      ; preds = %.outer.i, %.loopexit161.i
  %.0109.ph160.i = phi ptr [ null, %.loopexit161.i ], [ %.0109.ph157.i, %.outer.i ] ; 3 uses
  %.not143.i = icmp eq ptr %.0109.ph160.i, null
  br i1 %.not143.i, label %.loopexit161.i, label %.outer159.split.i

.preheader152.i:                                  ; preds = %.loopexit161.i
  %i.dc = call i32 @st__gen(ptr noundef nonnull %i.da, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not146186.i = icmp eq i32 %i.dc, 0
  br i1 %.not146186.i, label %.loopexit158.split.us.sink.split.i, label %.lr.ph187.i

.lr.ph187.i:                                      ; preds = %.preheader152.i, %bb.y
  %i.dd = load ptr, ptr %i.b, align 8, !tbaa !35  ; 2 uses
  %.not150.i = icmp eq ptr %i.dd, null
  br i1 %.not150.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.lr.ph187.i
  call void @free(ptr noundef nonnull %i.dd) #8
  store ptr null, ptr %i.b, align 8, !tbaa !35
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph187.i
  %i.de = call i32 @st__gen(ptr noundef nonnull %i.da, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #8
  %.not146.i = icmp eq i32 %i.de, 0
  br i1 %.not146.i, label %.loopexit158.split.us.sink.split.i, label %.lr.ph187.i, !llvm.loop !48

.loopexit158.split.us.sink.split.i:               ; preds = %bb.y, %bb.ad, %.preheader153.us.i, %.preheader152.i
  %.lcssa218.sink.i = phi ptr [ %i.dk, %.preheader153.us.i ], [ %i.da, %.preheader152.i ], [ %i.dk, %bb.ad ], [ %i.da, %bb.y ]
  %.0109.ph157.sink.i = phi ptr [ %.0109.ph157.i, %.preheader153.us.i ], [ %.0111.ph155.i, %.preheader152.i ], [ %.0109.ph157.i, %bb.ad ], [ %.0111.ph155.i, %bb.y ]
  call void @st__free_gen(ptr noundef nonnull %.lcssa218.sink.i) #8
  call void @st__free_table(ptr noundef nonnull %.0109.ph157.sink.i) #8
  br label %.loopexit158.split.us.i

.loopexit158.split.us.i:                          ; preds = %.outer.split.us.i, %.loopexit158.split.us.sink.split.i
  br i1 %.not147.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.loopexit158.split.us.i
  call void @st__free_table(ptr noundef nonnull %.0113.ph.i) #8
  br label %bb.aa

end_hunk_0
