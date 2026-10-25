Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cecSolve?download=true
inline.NumInlined: 361
inline.NumDeleted: 79
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@Gia_ObjLevel:bb.a
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !38
  ret i32 %i.al
}

; Function Attrs: nounwind uwtable
define noundef i32 @Cec_SetActivityFactors(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 524
  store i32 0, ptr %i.c, align 4, !tbaa !68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !19
  tail call void @Gia_ManIncrementTravId(ptr noundef %i.e) #17
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !19   ; 2 uses
  %i.g = getelementptr i8, ptr %i.f, i64 32
  %.val = load ptr, ptr %i.g, align 8, !tbaa !37
  %i.h = getelementptr i8, ptr %i.f, i64 160
  %.val9 = load ptr, ptr %i.h, align 8, !tbaa !67
  %i.i = tail call fastcc i32 @Gia_ObjLevel(ptr %.val, ptr %.val9, ptr noundef %1) ; 2 uses
  %i.j = sitofp i32 %i.i to double
  %i.k = fmul nnan double %i.j, 5.000000e-01
  %i.l = fptosi double %i.k to i32
  tail call void @Cec_SetActivityFactors_rec(ptr noundef %0, ptr noundef %1, i32 noundef %i.l, i32 noundef %i.i)
  ret i32 1
}

declare void @Gia_ManIncrementTravId(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @Cec_ManSatCheckNode(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 3 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 3 uses
  %8 = alloca %struct.timespec, align 8           ; 3 uses
  %i.a = alloca i32, align 4                      ; 9 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = and i64 %i.b, -2                         ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !52     ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.j = getelementptr i8, ptr %i.i, i64 32
  %.val56 = load ptr, ptr %i.j, align 8, !tbaa !37 ; 2 uses
  %i.k = icmp eq ptr %1, %.val56
  br i1 %i.k, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = ptrtoint ptr %.val56 to i64
  %i.m = xor i64 %i.l, 1
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %bb.t, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !64   ; 2 uses
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !64
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !74
  %i.u = add nsw i32 %i.t, 1
  store i32 %i.u, ptr %i.s, align 4, !tbaa !74
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !18
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = load i32, ptr %i.y, align 4, !tbaa !75   ; 2 uses
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %Abc_Clock.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !62
  %i.ac = icmp sgt i32 %i.ab, %i.z
  br i1 %i.ac, label %bb.f, label %Abc_Clock.exit

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !76
  %.not70 = icmp slt i32 %i.q, %i.ae
  br i1 %.not70, label %Abc_Clock.exit, label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  tail call void @Cec_ManSatSolverRecycle(ptr noundef nonnull %0)
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.af = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  call void @Cec_CnfNodeAddToSolver(ptr noundef nonnull %0, ptr noundef %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.ag = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.ah = load ptr, ptr %i.v, align 8, !tbaa !18  ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !77
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !78
  %.not52 = icmp eq i32 %i.aj, %i.al
  br i1 %.not52, label %bb.i, label %bb.h

bb.h:                                             ; preds = %Abc_Clock.exit
  %i.am = call i32 @sat_solver_simplify(ptr noundef nonnull %i.ah) #17 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %Abc_Clock.exit
  %.val = load ptr, ptr %i.h, align 8, !tbaa !19
  %i.an = getelementptr i8, ptr %0, i64 48
  %.val55 = load ptr, ptr %i.an, align 8, !tbaa !20
  %i.ao = getelementptr i8, ptr %.val, i64 32
  %.val.val = load ptr, ptr %i.ao, align 8, !tbaa !37
  %i.ap = ptrtoint ptr %.val.val to i64
  %i.aq = sub i64 %i.c, %i.ap
  %i.ar = sdiv exact i64 %i.aq, 12
  %i.as = shl i64 %i.ar, 32
  %i.at = ashr exact i64 %i.as, 30
  %i.au = getelementptr inbounds i8, ptr %.val55, i64 %i.at
  %i.av = load i32, ptr %i.au, align 4, !tbaa !38
  %i.aw = trunc i64 %i.b to i32
  %i.ax = and i32 %i.aw, 1
  %i.ay = shl nsw i32 %i.av, 1
  %i.az = or disjoint i32 %i.ay, %i.ax            ; 2 uses
  store i32 %i.az, ptr %i.a, align 4, !tbaa !38
  %i.ba = load ptr, ptr %0, align 8, !tbaa !52
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 20
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !54
  %.not53 = icmp eq i32 %i.bc, 0
  br i1 %.not53, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bd = load i64, ptr %i.d, align 4
  %.not54 = icmp sgt i64 %i.bd, -1
  br i1 %.not54, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = xor i32 %i.az, 1
  store i32 %i.be, ptr %i.a, align 4, !tbaa !38
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.bf = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #17
  %i.bg = icmp slt i32 %i.bf, 0
  br i1 %i.bg, label %Abc_Clock.exit61, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bh = load i64, ptr %6, align 8, !tbaa !80
  %i.bi = mul nsw i64 %i.bh, 1000000
  %i.bj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !81
  %i.bl = sdiv i64 %i.bk, 1000
  %i.bm = add nsw i64 %i.bl, %i.bi
  br label %Abc_Clock.exit61

Abc_Clock.exit61:                                 ; preds = %bb.l, %bb.m
  %.0.i60 = phi i64 [ %i.bm, %bb.m ], [ -1, %bb.l ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.bn = load ptr, ptr %i.v, align 8, !tbaa !18
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 440
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !82 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.bq = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.br = load ptr, ptr %i.v, align 8, !tbaa !18
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %i.bt = sext i32 %i.g to i64
  %i.bu = call i32 @sat_solver_solve(ptr noundef %i.br, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bs, i64 noundef %i.bt, i64 noundef 0, i64 noundef 0, i64 noundef 0) #17
  switch i32 %i.bu, label %bb.r [
    i32 -1, label %bb.n
    i32 1, label %bb.p
  ]

bb.n:                                             ; preds = %Abc_Clock.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.bv = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #17
  %i.bw = icmp slt i32 %i.bv, 0
  br i1 %i.bw, label %Abc_Clock.exit65, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bx = load i64, ptr %4, align 8, !tbaa !80
  %i.by = mul nsw i64 %i.bx, 1000000
  %i.bz = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !81
  %i.cb = sdiv i64 %i.ca, 1000
  %i.cc = add nsw i64 %i.cb, %i.by
  br label %Abc_Clock.exit65

Abc_Clock.exit65:                                 ; preds = %bb.n, %bb.o
  %.0.i64 = phi i64 [ %i.cc, %bb.o ], [ 4294967295, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.cd = sub i64 %.0.i64, %.0.i60
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !83
  %i.cg = trunc i64 %i.cd to i32
  %i.ch = add i32 %i.cf, %i.cg
  store i32 %i.ch, ptr %i.ce, align 8, !tbaa !83
  %i.ci = load i32, ptr %i.a, align 4, !tbaa !38
  %i.cj = xor i32 %i.ci, 1
  store i32 %i.cj, ptr %i.a, align 4, !tbaa !38
  %i.ck = load ptr, ptr %i.v, align 8, !tbaa !18
  %i.cl = call i32 @sat_solver_addclause(ptr noundef %i.ck, ptr noundef nonnull %i.a, ptr noundef nonnull %i.bs) #17 ; 0 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !84
  %i.co = add nsw i32 %i.cn, 1
  store i32 %i.co, ptr %i.cm, align 8, !tbaa !84
  %i.cp = load ptr, ptr %i.v, align 8, !tbaa !18
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 440
  %i.cr = load i64, ptr %i.cq, align 8, !tbaa !82
  %i.cs = sub i64 %i.cr, %i.bp
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !85
  %i.cv = trunc i64 %i.cs to i32
  %i.cw = add i32 %i.cu, %i.cv
  store i32 %i.cw, ptr %i.ct, align 4, !tbaa !85
  br label %bb.t

bb.p:                                             ; preds = %Abc_Clock.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.cx = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #17
  %i.cy = icmp slt i32 %i.cx, 0
  br i1 %i.cy, label %Abc_Clock.exit67, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cz = load i64, ptr %3, align 8, !tbaa !80
  %i.da = mul nsw i64 %i.cz, 1000000
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dc = load i64, ptr %i.db, align 8, !tbaa !81
  %i.dd = sdiv i64 %i.dc, 1000
  %i.de = add nsw i64 %i.dd, %i.da
  br label %Abc_Clock.exit67

Abc_Clock.exit67:                                 ; preds = %bb.p, %bb.q
  %.0.i66 = phi i64 [ %i.de, %bb.q ], [ 4294967295, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.df = sub i64 %.0.i66, %.0.i60
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !86
  %i.di = trunc i64 %i.df to i32
  %i.dj = add i32 %i.dh, %i.di
  store i32 %i.dj, ptr %i.dg, align 4, !tbaa !86
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !87
  %i.dm = add nsw i32 %i.dl, 1
  store i32 %i.dm, ptr %i.dk, align 4, !tbaa !87
  %i.dn = load ptr, ptr %i.v, align 8, !tbaa !18
  %i.do = getelementptr inbounds nuw i8, ptr %i.dn, i64 440
  %i.dp = load i64, ptr %i.do, align 8, !tbaa !82
  %i.dq = sub i64 %i.dp, %i.bp
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ds = load i32, ptr %i.dr, align 8, !tbaa !88
  %i.dt = trunc i64 %i.dq to i32
  %i.du = add i32 %i.ds, %i.dt
  store i32 %i.du, ptr %i.dr, align 8, !tbaa !88
  br label %bb.t

bb.r:                                             ; preds = %Abc_Clock.exit61
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  %i.dv = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #17
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %Abc_Clock.exit69, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.dx = load i64, ptr %2, align 8, !tbaa !80
  %i.dy = mul nsw i64 %i.dx, 1000000
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !81
  %i.eb = sdiv i64 %i.ea, 1000
  %i.ec = add nsw i64 %i.eb, %i.dy
  br label %Abc_Clock.exit69

Abc_Clock.exit69:                                 ; preds = %bb.r, %bb.s
  %.0.i68 = phi i64 [ %i.ec, %bb.s ], [ 4294967295, %bb.r ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  %i.ed = sub i64 %.0.i68, %.0.i60
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ef = load i32, ptr %i.ee, align 8, !tbaa !89
  %i.eg = trunc i64 %i.ed to i32
  %i.eh = add i32 %i.ef, %i.eg
  store i32 %i.eh, ptr %i.ee, align 8, !tbaa !89
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 8, !tbaa !90
  %i.ek = add nsw i32 %i.ej, 1
  store i32 %i.ek, ptr %i.ei, align 8, !tbaa !90
  %i.el = load ptr, ptr %i.v, align 8, !tbaa !18
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 440
  %i.en = load i64, ptr %i.em, align 8, !tbaa !82
  %i.eo = sub i64 %i.en, %i.bp
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 4, !tbaa !91
  %i.er = trunc i64 %i.eo to i32
  %i.es = add i32 %i.eq, %i.er
  store i32 %i.es, ptr %i.ep, align 4, !tbaa !91
  br label %bb.t

bb.t:                                             ; preds = %bb.b, %bb.a, %Abc_Clock.exit69, %Abc_Clock.exit67, %Abc_Clock.exit65
  %.0 = phi i32 [ -1, %Abc_Clock.exit69 ], [ 1, %bb.a ], [ 1, %Abc_Clock.exit65 ], [ 0, %Abc_Clock.exit67 ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

declare i32 @sat_solver_simplify(ptr noundef) local_unnamed_addr #3

declare i32 @sat_solver_solve(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @Cec_ManSatCheckNodeTwo(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %6 = alloca %struct.timespec, align 8           ; 3 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 3 uses
  %9 = alloca %struct.timespec, align 8           ; 3 uses
  %i.a = alloca [2 x i32], align 8                ; 10 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = and i64 %i.b, -2                         ; 2 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = ptrtoint ptr %2 to i64                   ; 3 uses
  %i.f = and i64 %i.e, -2                         ; 2 uses
  %i.g = inttoptr i64 %i.f to ptr                 ; 2 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !52     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !73
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.m = getelementptr i8, ptr %i.l, i64 32
  %.val75 = load ptr, ptr %i.m, align 8, !tbaa !37 ; 3 uses
  %i.n = icmp eq ptr %1, %.val75
  %i.o = icmp eq ptr %2, %.val75
  %or.cond = or i1 %i.n, %i.o
  %i.p = xor i64 %i.e, 1
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = icmp eq ptr %1, %i.q
  %or.cond92 = or i1 %i.r, %or.cond
  br i1 %or.cond92, label %bb.w, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = ptrtoint ptr %.val75 to i64
  %i.t = xor i64 %i.s, 1
  %i.u = inttoptr i64 %i.t to ptr
  %i.v = icmp eq ptr %1, %i.u
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = icmp eq ptr %2, null
  %i.x = icmp eq ptr %2, %1
  %or.cond93 = or i1 %i.w, %i.x
  br i1 %or.cond93, label %bb.w, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !64   ; 2 uses
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4, !tbaa !64
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !74
  %i.ad = add nsw i32 %i.ac, 1
  store i32 %i.ad, ptr %i.ab, align 4, !tbaa !74
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !75 ; 2 uses
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %Abc_Clock.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !62
  %i.al = icmp sgt i32 %i.ak, %i.ai
  br i1 %i.al, label %bb.g, label %Abc_Clock.exit

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.an = load i32, ptr %i.am, align 4, !tbaa !76
  %.not94 = icmp slt i32 %i.z, %i.an
  br i1 %.not94, label %Abc_Clock.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  tail call void @Cec_ManSatSolverRecycle(ptr noundef nonnull %0)
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.ao = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @Cec_CnfNodeAddToSolver(ptr noundef nonnull %0, ptr noundef %i.d)
  call void @Cec_CnfNodeAddToSolver(ptr noundef nonnull %0, ptr noundef %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.ap = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.aq = load ptr, ptr %i.ae, align 8, !tbaa !18 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !77
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.au = load i32, ptr %i.at, align 8, !tbaa !78
  %.not67 = icmp eq i32 %i.as, %i.au
  br i1 %.not67, label %bb.j, label %bb.i

bb.i:                                             ; preds = %Abc_Clock.exit
  %i.av = call i32 @sat_solver_simplify(ptr noundef nonnull %i.aq) #17 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %Abc_Clock.exit
  %.val72 = load ptr, ptr %i.k, align 8, !tbaa !19
  %i.aw = getelementptr i8, ptr %0, i64 48
  %.val73 = load ptr, ptr %i.aw, align 8, !tbaa !20 ; 2 uses
  %i.ax = getelementptr i8, ptr %.val72, i64 32
  %.val72.val = load ptr, ptr %i.ax, align 8, !tbaa !37
  %i.ay = ptrtoint ptr %.val72.val to i64         ; 2 uses
  %i.az = sub i64 %i.c, %i.ay
  %i.ba = sdiv exact i64 %i.az, 12
  %i.bb = shl i64 %i.ba, 32
  %i.bc = ashr exact i64 %i.bb, 30
  %i.bd = getelementptr inbounds i8, ptr %.val73, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !38
  %i.bf = trunc i64 %i.b to i32
  %i.bg = and i32 %i.bf, 1
  %i.bh = shl nsw i32 %i.be, 1
  %i.bi = or disjoint i32 %i.bh, %i.bg            ; 2 uses
  store i32 %i.bi, ptr %i.a, align 8, !tbaa !38
  %i.bj = sub i64 %i.f, %i.ay
  %i.bk = sdiv exact i64 %i.bj, 12
  %i.bl = shl i64 %i.bk, 32
  %i.bm = ashr exact i64 %i.bl, 30
  %i.bn = getelementptr inbounds i8, ptr %.val73, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !38
  %i.bp = trunc i64 %i.e to i32
  %i.bq = and i32 %i.bp, 1
  %i.br = shl nsw i32 %i.bo, 1
  %i.bs = or disjoint i32 %i.br, %i.bq            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !38
  %i.bu = load ptr, ptr %0, align 8, !tbaa !52
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 20
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !54
  %.not68 = icmp eq i32 %i.bw, 0
  br i1 %.not68, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bx = load i64, ptr %i.d, align 4
  %.not69 = icmp sgt i64 %i.bx, -1
  br i1 %.not69, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.by = xor i32 %i.bi, 1
  store i32 %i.by, ptr %i.a, align 8, !tbaa !38
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bz = load i64, ptr %i.g, align 4
  %.not70 = icmp sgt i64 %i.bz, -1
  br i1 %.not70, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ca = xor i32 %i.bs, 1
  store i32 %i.ca, ptr %i.bt, align 4, !tbaa !38
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.cb = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #17
  %i.cc = icmp slt i32 %i.cb, 0
  br i1 %i.cc, label %Abc_Clock.exit81, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cd = load i64, ptr %7, align 8, !tbaa !80
  %i.ce = mul nsw i64 %i.cd, 1000000
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !tbaa !81
  %i.ch = sdiv i64 %i.cg, 1000
  %i.ci = add nsw i64 %i.ch, %i.ce
  br label %Abc_Clock.exit81

Abc_Clock.exit81:                                 ; preds = %bb.o, %bb.p
  %.0.i80 = phi i64 [ %i.ci, %bb.p ], [ -1, %bb.o ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.cj = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 440
  %i.cl = load i64, ptr %i.ck, align 8, !tbaa !82 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #17
  %i.cm = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #17 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #17
  %i.cn = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.cp = sext i32 %i.j to i64
  %i.cq = call i32 @sat_solver_solve(ptr noundef %i.cn, ptr noundef nonnull %i.a, ptr noundef nonnull %i.co, i64 noundef %i.cp, i64 noundef 0, i64 noundef 0, i64 noundef 0) #17
  switch i32 %i.cq, label %bb.u [
    i32 -1, label %bb.q
    i32 1, label %bb.s
  ]

bb.q:                                             ; preds = %Abc_Clock.exit81
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.cr = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #17
  %i.cs = icmp slt i32 %i.cr, 0
  br i1 %i.cs, label %Abc_Clock.exit85, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ct = load i64, ptr %5, align 8, !tbaa !80
  %i.cu = mul nsw i64 %i.ct, 1000000
  %i.cv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !81
  %i.cx = sdiv i64 %i.cw, 1000
  %i.cy = add nsw i64 %i.cx, %i.cu
  br label %Abc_Clock.exit85

Abc_Clock.exit85:                                 ; preds = %bb.q, %bb.r
  %.0.i84 = phi i64 [ %i.cy, %bb.r ], [ 4294967295, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.cz = sub i64 %.0.i84, %.0.i80
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.db = load i32, ptr %i.da, align 8, !tbaa !83
  %i.dc = trunc i64 %i.cz to i32
  %i.dd = add i32 %i.db, %i.dc
  store i32 %i.dd, ptr %i.da, align 8, !tbaa !83
  %i.de = load <2 x i32>, ptr %i.a, align 8, !tbaa !38
  %i.df = xor <2 x i32> %i.de, splat (i32 1)
  store <2 x i32> %i.df, ptr %i.a, align 8, !tbaa !38
  %i.dg = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.dh = call i32 @sat_solver_addclause(ptr noundef %i.dg, ptr noundef nonnull %i.a, ptr noundef nonnull %i.co) #17 ; 0 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.dj = load i32, ptr %i.di, align 8, !tbaa !84
  %i.dk = add nsw i32 %i.dj, 1
  store i32 %i.dk, ptr %i.di, align 8, !tbaa !84
  %i.dl = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 440
  %i.dn = load i64, ptr %i.dm, align 8, !tbaa !82
  %i.do = sub i64 %i.dn, %i.cl
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !85
  %i.dr = trunc i64 %i.do to i32
  %i.ds = add i32 %i.dq, %i.dr
  store i32 %i.ds, ptr %i.dp, align 4, !tbaa !85
  br label %bb.w

bb.s:                                             ; preds = %Abc_Clock.exit81
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  %i.dt = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #17
  %i.du = icmp slt i32 %i.dt, 0
  br i1 %i.du, label %Abc_Clock.exit87, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dv = load i64, ptr %4, align 8, !tbaa !80
  %i.dw = mul nsw i64 %i.dv, 1000000
  %i.dx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !81
  %i.dz = sdiv i64 %i.dy, 1000
  %i.ea = add nsw i64 %i.dz, %i.dw
  br label %Abc_Clock.exit87

Abc_Clock.exit87:                                 ; preds = %bb.s, %bb.t
  %.0.i86 = phi i64 [ %i.ea, %bb.t ], [ 4294967295, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  %i.eb = sub i64 %.0.i86, %.0.i80
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4, !tbaa !86
  %i.ee = trunc i64 %i.eb to i32
  %i.ef = add i32 %i.ed, %i.ee
  store i32 %i.ef, ptr %i.ec, align 4, !tbaa !86
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !87
  %i.ei = add nsw i32 %i.eh, 1
  store i32 %i.ei, ptr %i.eg, align 4, !tbaa !87
  %i.ej = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 440
  %i.el = load i64, ptr %i.ek, align 8, !tbaa !82
  %i.em = sub i64 %i.el, %i.cl
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 8, !tbaa !88
  %i.ep = trunc i64 %i.em to i32
  %i.eq = add i32 %i.eo, %i.ep
  store i32 %i.eq, ptr %i.en, align 8, !tbaa !88
  br label %bb.w

bb.u:                                             ; preds = %Abc_Clock.exit81
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  %i.er = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #17
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %Abc_Clock.exit89, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.et = load i64, ptr %3, align 8, !tbaa !80
  %i.eu = mul nsw i64 %i.et, 1000000
  %i.ev = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !81
  %i.ex = sdiv i64 %i.ew, 1000
  %i.ey = add nsw i64 %i.ex, %i.eu
  br label %Abc_Clock.exit89

Abc_Clock.exit89:                                 ; preds = %bb.u, %bb.v
  %.0.i88 = phi i64 [ %i.ey, %bb.v ], [ 4294967295, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  %i.ez = sub i64 %.0.i88, %.0.i80
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.fb = load i32, ptr %i.fa, align 8, !tbaa !89
  %i.fc = trunc i64 %i.ez to i32
  %i.fd = add i32 %i.fb, %i.fc
  store i32 %i.fd, ptr %i.fa, align 8, !tbaa !89
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !90
  %i.fg = add nsw i32 %i.ff, 1
  store i32 %i.fg, ptr %i.fe, align 8, !tbaa !90
  %i.fh = load ptr, ptr %i.ae, align 8, !tbaa !18
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 440
  %i.fj = load i64, ptr %i.fi, align 8, !tbaa !82
  %i.fk = sub i64 %i.fj, %i.cl
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.fm = load i32, ptr %i.fl, align 4, !tbaa !91
  %i.fn = trunc i64 %i.fk to i32
  %i.fo = add i32 %i.fm, %i.fn
  store i32 %i.fo, ptr %i.fl, align 4, !tbaa !91
  br label %bb.w

bb.w:                                             ; preds = %bb.c, %bb.a, %Abc_Clock.exit89, %Abc_Clock.exit87, %Abc_Clock.exit85
  %.0 = phi i32 [ -1, %Abc_Clock.exit89 ], [ 1, %bb.a ], [ 1, %Abc_Clock.exit85 ], [ 0, %Abc_Clock.exit87 ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define noundef ptr @Cex_ManGenSimple(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr i8, ptr %i.b, i64 64
  %.val = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.d = getelementptr i8, ptr %.val, i64 4
  %.val.val = load i32, ptr %i.d, align 4, !tbaa !70
  %i.e = tail call ptr @Abc_CexAlloc(i32 noundef 0, i32 noundef %.val.val, i32 noundef 1) #17 ; 3 uses
  store i32 %1, ptr %i.e, align 4, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !95
  ret ptr %i.e
}

declare ptr @Abc_CexAlloc(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define noundef ptr @Cex_ManGenCex(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr i8, ptr %i.b, i64 64
  %.val20 = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.d = getelementptr i8, ptr %.val20, i64 4
  %.val20.val = load i32, ptr %i.d, align 4, !tbaa !70
  %i.e = tail call ptr @Abc_CexAlloc(i32 noundef 0, i32 noundef %.val20.val, i32 noundef 1) #17 ; 4 uses
  store i32 %1, ptr %i.e, align 4, !tbaa !94
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 0, ptr %i.f, align 4, !tbaa !95
  %i.g = load ptr, ptr %i.a, align 8, !tbaa !19
  %i.h = getelementptr i8, ptr %i.g, i64 64
  %.val19 = load ptr, ptr %i.h, align 8, !tbaa !92 ; 2 uses
  %i.i = getelementptr i8, ptr %.val19, i64 4     ; 2 uses
  %.val19.val23 = load i32, ptr %i.i, align 4, !tbaa !70 ; 2 uses
  %i.j = icmp sgt i32 %.val19.val23, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr i8, ptr %.val19, i64 8
  %.val22.val = load ptr, ptr %i.k, align 8, !tbaa !72
  %i.l = getelementptr i8, ptr %0, i64 48
  %.val17 = load ptr, ptr %i.l, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.val19.val26 = phi i32 [ %.val19.val23, %.lr.ph ], [ %.val19.val, %bb.e ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %.val22.val, i64 %indvars.iv
  %i.p = load i32, ptr %i.o, align 4, !tbaa !38
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw i64 %i.q, 32
  %i.s = ashr exact i64 %i.r, 30
  %i.t = getelementptr inbounds i8, ptr %.val17, i64 %i.s
  %i.u = load i32, ptr %i.t, align 4, !tbaa !38   ; 2 uses
  %i.v = icmp sgt i32 %i.u, 0
  br i1 %i.v, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.w = load ptr, ptr %i.m, align 8, !tbaa !18
  %i.x = getelementptr i8, ptr %i.w, i64 328
  %.val18 = load ptr, ptr %i.x, align 8, !tbaa !51
  %i.y = zext nneg i32 %i.u to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %.val18, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !38
  %.not = icmp eq i32 %i.aa, 1
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ab = trunc nuw nsw i64 %indvars.iv to i32
  %i.ac = and i32 %i.ab, 31
  %i.ad = shl nuw i32 1, %i.ac
  %i.ae = lshr i64 %indvars.iv, 5
  %i.af = and i64 %i.ae, 134217727
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.af ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !38
  %i.ai = or i32 %i.ah, %i.ad
  store i32 %i.ai, ptr %i.ag, align 4, !tbaa !38
  %.val19.val.pre = load i32, ptr %i.i, align 4, !tbaa !70
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.val19.val = phi i32 [ %.val19.val.pre, %bb.d ], [ %.val19.val26, %bb.c ], [ %.val19.val26, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = sext i32 %.val19.val to i64
  %i.ak = icmp slt i64 %indvars.iv.next, %i.aj
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !1

._crit_edge:                                      ; preds = %bb.e, %bb.a
  ret ptr %i.e
}

; Function Attrs: nounwind uwtable
define void @Cec_ManSatSolve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, i32 noundef %6) local_unnamed_addr #1 {
bb.a:
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %struct.timespec, align 8           ; 5 uses
  %9 = alloca %struct.timespec, align 8           ; 5 uses
  %10 = alloca %struct.timespec, align 8          ; 3 uses
  %11 = alloca %struct.timespec, align 8          ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #17
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %11) #17
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %11, align 8, !tbaa !80
  %.neg125 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !81
  %.neg124 = sdiv i64 %i.e, -1000
  %.neg126 = add i64 %.neg124, %.neg125
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg126, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #17
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 6 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !135  ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %Vec_PtrFreeP.exit, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !57   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  call void @free(ptr noundef nonnull %i.j) #17
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !135  ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !57
  br label %bb.d

bb.d:                                             ; preds = %.thread.i, %bb.c
  %i.m = phi ptr [ %i.k, %.thread.i ], [ %i.g, %bb.c ]
  call void @free(ptr noundef nonnull %i.m) #17
  store ptr null, ptr %i.f, align 8, !tbaa !135
  br label %Vec_PtrFreeP.exit

Vec_PtrFreeP.exit:                                ; preds = %Abc_Clock.exit, %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !136
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %Vec_PtrFreeP.exit
  %i.p = getelementptr i8, ptr %1, i64 72
  %.val102 = load ptr, ptr %i.p, align 8, !tbaa !96
  %i.q = getelementptr i8, ptr %.val102, i64 4
  %.val102.val = load i32, ptr %i.q, align 4, !tbaa !70 ; 4 uses
  %i.r = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 4 uses
  %i.s = add i32 %.val102.val, -1
  %or.cond.i.i = icmp ult i32 %i.s, 7
  %spec.store.select.i.i = select i1 %or.cond.i.i, i32 8, i32 %.val102.val ; 3 uses
  store i32 %spec.store.select.i.i, ptr %i.r, align 8, !tbaa !60
  %.not.i.i = icmp eq i32 %spec.store.select.i.i, 0
  br i1 %.not.i.i, label %Vec_PtrStart.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = sext i32 %spec.store.select.i.i to i64
  %i.u = shl nsw i64 %i.t, 3
  %i.v = call noalias ptr @malloc(i64 noundef %i.u) #18
  br label %Vec_PtrStart.exit

Vec_PtrStart.exit:                                ; preds = %bb.e, %bb.f
  %i.w = phi ptr [ %i.v, %bb.f ], [ null, %bb.e ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %i.w, ptr %i.y, align 8, !tbaa !57
end_hunk_0
begin_hunk_1_@Cec_ManSatSolve:bb.a
  store ptr %i.ew, ptr %i.ay, align 8, !tbaa !72
  store i32 %spec.select.sink.i7.i, ptr %5, align 8, !tbaa !71
  %.pre11.i = load i32, ptr %i.ax, align 4, !tbaa !70
  br label %Vec_IntPushTwo.exit

Vec_IntPushTwo.exit:                              ; preds = %Vec_IntPush.exit.i, %bb.ac, %Vec_IntGrow.exit11.sink.split.i6.i
  %i.ex = phi i32 [ %i.eo, %Vec_IntPush.exit.i ], [ %i.eo, %bb.ac ], [ %.pre11.i, %Vec_IntGrow.exit11.sink.split.i6.i ] ; 2 uses
  %i.ey = phi ptr [ %i.ej, %Vec_IntPush.exit.i ], [ %i.ej, %bb.ac ], [ %i.ew, %Vec_IntGrow.exit11.sink.split.i6.i ]
  %i.ez = add nsw i32 %i.ex, 1
  store i32 %i.ez, ptr %i.ax, align 4, !tbaa !70
  %i.fa = sext i32 %i.ex to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.fa
  store i32 %i.du, ptr %i.fb, align 4, !tbaa !38
  br label %bb.ae

bb.ae:                                            ; preds = %Vec_IntPushTwo.exit, %Bar_ProgressUpdate.exit
  %i.fc = load i32, ptr %i.n, align 4, !tbaa !136
  %i.fd = icmp ne i32 %i.fc, 0
  %i.fe = icmp ne i32 %i.dc, -1
  %or.cond3 = and i1 %i.fe, %i.fd
  br i1 %or.cond3, label %bb.af, label %bb.al

bb.af:                                            ; preds = %bb.ae
  %i.ff = load ptr, ptr %i.f, align 8, !tbaa !137
  br i1 %i.dd, label %bb.ag, label %Cex_ManGenCex.exit

bb.ag:                                            ; preds = %bb.af
  %i.fg = load ptr, ptr %i.az, align 8, !tbaa !19
  %i.fh = getelementptr i8, ptr %i.fg, i64 64
  %.val20.i = load ptr, ptr %i.fh, align 8, !tbaa !92
  %i.fi = getelementptr i8, ptr %.val20.i, i64 4
  %.val20.val.i = load i32, ptr %i.fi, align 4, !tbaa !70
  %i.fj = call ptr @Abc_CexAlloc(i32 noundef 0, i32 noundef %.val20.val.i, i32 noundef 1) #17 ; 5 uses
  %i.fk = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.fk, ptr %i.fj, align 4, !tbaa !94
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  store i32 0, ptr %i.fl, align 4, !tbaa !95
  %i.fm = load ptr, ptr %i.az, align 8, !tbaa !19
  %i.fn = getelementptr i8, ptr %i.fm, i64 64
  %.val19.i = load ptr, ptr %i.fn, align 8, !tbaa !92 ; 2 uses
  %i.fo = getelementptr i8, ptr %.val19.i, i64 4  ; 2 uses
  %.val19.val23.i = load i32, ptr %i.fo, align 4, !tbaa !70 ; 2 uses
  %i.fp = icmp sgt i32 %.val19.val23.i, 0
  br i1 %i.fp, label %.lr.ph.i, label %Cex_ManGenCex.exit

.lr.ph.i:                                         ; preds = %bb.ag
  %i.fq = getelementptr i8, ptr %.val19.i, i64 8
  %.val22.val.i = load ptr, ptr %i.fq, align 8, !tbaa !72
  %.val17.i = load ptr, ptr %i.ba, align 8, !tbaa !20
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fj, i64 20
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ak, %.lr.ph.i
  %.val19.val26.i = phi i32 [ %.val19.val23.i, %.lr.ph.i ], [ %.val19.val.i, %bb.ak ] ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ak ] ; 4 uses
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %.val22.val.i, i64 %indvars.iv.i
  %i.ft = load i32, ptr %i.fs, align 4, !tbaa !38
  %i.fu = zext i32 %i.ft to i64
  %i.fv = shl nuw i64 %i.fu, 32
  %i.fw = ashr exact i64 %i.fv, 30
  %i.fx = getelementptr inbounds i8, ptr %.val17.i, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 4, !tbaa !38 ; 2 uses
  %i.fz = icmp sgt i32 %i.fy, 0
  br i1 %i.fz, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ah
  %i.ga = load ptr, ptr %i.bb, align 8, !tbaa !18
  %i.gb = getelementptr i8, ptr %i.ga, i64 328
  %.val18.i = load ptr, ptr %i.gb, align 8, !tbaa !51
  %i.gc = zext nneg i32 %i.fy to i64
  %i.gd = getelementptr inbounds nuw [4 x i8], ptr %.val18.i, i64 %i.gc
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !38
  %.not.i115 = icmp eq i32 %i.ge, 1
  br i1 %.not.i115, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.gf = trunc nuw nsw i64 %indvars.iv.i to i32
  %i.gg = and i32 %i.gf, 31
  %i.gh = shl nuw i32 1, %i.gg
  %i.gi = lshr i64 %indvars.iv.i, 5
  %i.gj = and i64 %i.gi, 134217727
  %i.gk = getelementptr inbounds nuw [4 x i8], ptr %i.fr, i64 %i.gj ; 2 uses
  %i.gl = load i32, ptr %i.gk, align 4, !tbaa !38
  %i.gm = or i32 %i.gl, %i.gh
  store i32 %i.gm, ptr %i.gk, align 4, !tbaa !38
  %.val19.val.pre.i = load i32, ptr %i.fo, align 4, !tbaa !70
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %bb.ah
  %.val19.val.i = phi i32 [ %.val19.val.pre.i, %bb.aj ], [ %.val19.val26.i, %bb.ai ], [ %.val19.val26.i, %bb.ah ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.gn = sext i32 %.val19.val.i to i64
  %i.go = icmp slt i64 %indvars.iv.next.i, %i.gn
  br i1 %i.go, label %bb.ah, label %Cex_ManGenCex.exit, !llvm.loop !1

Cex_ManGenCex.exit:                               ; preds = %bb.ak, %bb.ag, %bb.af
  %i.gp = phi ptr [ inttoptr (i64 1 to ptr), %bb.af ], [ %i.fj, %bb.ag ], [ %i.fj, %bb.ak ]
  %i.gq = getelementptr i8, ptr %i.ff, i64 8
  %.val108 = load ptr, ptr %i.gq, align 8, !tbaa !57
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %.val108, i64 %indvars.iv
  store ptr %i.gp, ptr %i.gr, align 8, !tbaa !58
  br label %bb.al

bb.al:                                            ; preds = %Cex_ManGenCex.exit, %bb.ae
  %or.cond5 = and i1 %i.bc, %i.di
  br i1 %or.cond5, label %.thread, label %bb.am

.thread:                                          ; preds = %bb.al
  %.val110 = load ptr, ptr %i.aq, align 8, !tbaa !37
  %.val111 = load ptr, ptr %i.am, align 8, !tbaa !96
  %i.gs = getelementptr i8, ptr %.val111, i64 8
  %.val111.val = load ptr, ptr %i.gs, align 8, !tbaa !72
  %i.gt = getelementptr inbounds nuw [4 x i8], ptr %.val111.val, i64 %indvars.iv
  %i.gu = load i32, ptr %i.gt, align 4, !tbaa !38 ; 2 uses
  %i.gv = sext i32 %i.gu to i64
  %i.gw = getelementptr inbounds [12 x i8], ptr %.val110, i64 %i.gv ; 2 uses
  %i.gx = load i64, ptr %i.gw, align 4
  %i.gy = and i32 %i.gu, 536870911
  %i.gz = zext nneg i32 %i.gy to i64
  %i.ha = and i64 %i.gx, -1073741824
  %i.hb = or disjoint i64 %i.ha, %i.gz
  store i64 %i.hb, ptr %i.gw, align 4
  br label %bb.as

bb.am:                                            ; preds = %bb.al
  br i1 %i.dd, label %bb.an, label %bb.as

bb.an:                                            ; preds = %bb.am
  br i1 %.not87, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #17
  %i.hc = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %9) #17
  %i.hd = icmp slt i32 %i.hc, 0
  br i1 %i.hd, label %Abc_Clock.exit117, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.he = load i64, ptr %9, align 8, !tbaa !80
  %.neg122 = mul i64 %i.he, -1000000
  %i.hf = load i64, ptr %i.bd, align 8, !tbaa !81
  %.neg = sdiv i64 %i.hf, -1000
  %.neg123 = add i64 %.neg, %.neg122
  br label %Abc_Clock.exit117

Abc_Clock.exit117:                                ; preds = %bb.ao, %bb.ap
  %.0.i116.neg = phi i64 [ %.neg123, %bb.ap ], [ 1, %bb.ao ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #17
  call void @Cec_ManPatSavePattern(ptr noundef nonnull %0, ptr noundef %i.aj, ptr noundef nonnull %i.bm) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #17
  %i.hg = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %8) #17
  %i.hh = icmp slt i32 %i.hg, 0
  br i1 %i.hh, label %Abc_Clock.exit119, label %bb.aq

bb.aq:                                            ; preds = %Abc_Clock.exit117
  %i.hi = load i64, ptr %8, align 8, !tbaa !80
  %i.hj = mul nsw i64 %i.hi, 1000000
  %i.hk = load i64, ptr %i.be, align 8, !tbaa !81
  %i.hl = sdiv i64 %i.hk, 1000
  %i.hm = add nsw i64 %i.hl, %i.hj
  br label %Abc_Clock.exit119

Abc_Clock.exit119:                                ; preds = %Abc_Clock.exit117, %bb.aq
  %.0.i118 = phi i64 [ %i.hm, %bb.aq ], [ -1, %Abc_Clock.exit117 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #17
  %i.hn = add i64 %.0.i118, %.0.i116.neg
  %i.ho = load i64, ptr %i.bf, align 8, !tbaa !106
  %i.hp = add nsw i64 %i.hn, %i.ho
  store i64 %i.hp, ptr %i.bf, align 8, !tbaa !106
  br label %bb.ar

bb.ar:                                            ; preds = %Abc_Clock.exit119, %bb.an
  %i.hq = load i32, ptr %i.bg, align 4, !tbaa !107
  %.not92 = icmp eq i32 %i.hq, 0
  br i1 %.not92, label %bb.as, label %.critedge

bb.as:                                            ; preds = %.thread, %bb.ar, %bb.am, %bb.l, %bb.o
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.hr = load ptr, ptr %i.am, align 8, !tbaa !96 ; 2 uses
  %i.hs = getelementptr i8, ptr %i.hr, i64 4
  %.val101 = load i32, ptr %i.hs, align 4, !tbaa !70
  %i.ht = sext i32 %.val101 to i64
  %i.hu = icmp slt i64 %indvars.iv.next, %i.ht
  br i1 %i.hu, label %bb.j, label %.critedge, !llvm.loop !134

.critedge:                                        ; preds = %bb.j, %bb.ar, %bb.as, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #17
  %i.hv = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %7) #17
  %i.hw = icmp slt i32 %i.hv, 0
  br i1 %i.hw, label %Abc_Clock.exit121, label %bb.at

bb.at:                                            ; preds = %.critedge
  %i.hx = load i64, ptr %7, align 8, !tbaa !80
  %i.hy = mul nsw i64 %i.hx, 1000000
  %i.hz = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !81
  %i.ib = sdiv i64 %i.ia, 1000
  %i.ic = add nsw i64 %i.ib, %i.hy
  br label %Abc_Clock.exit121

Abc_Clock.exit121:                                ; preds = %.critedge, %bb.at
  %.0.i120 = phi i64 [ %i.ic, %bb.at ], [ 4294967295, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #17
  %i.id = add i64 %.0.i120, %.0.i.neg
  %i.ie = trunc i64 %i.id to i32
  %i.if = getelementptr inbounds nuw i8, ptr %i.aj, i64 140
  store i32 %i.ie, ptr %i.if, align 4, !tbaa !108
  call void @Bar_ProgressStop(ptr noundef %i.ap) #17
  %i.ig = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.ih = load i32, ptr %i.ig, align 4, !tbaa !109
  %.not93 = icmp eq i32 %i.ih, 0
  br i1 %.not93, label %bb.av, label %bb.au

bb.au:                                            ; preds = %Abc_Clock.exit121
  call void @Cec_ManSatPrintStats(ptr noundef nonnull %i.aj) #17
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %Abc_Clock.exit121
  call void @Cec_ManSatStop(ptr noundef nonnull %i.aj) #17
  ret void
}

declare void @Gia_ManSetPhase(ptr noundef) local_unnamed_addr #3

declare i32 @Gia_ManLevelNum(ptr noundef) local_unnamed_addr #3

declare ptr @Cec_ManSatCreate(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @Bar_ProgressStart(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @Cec_ManPatSavePattern(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @Bar_ProgressStop(ptr noundef) local_unnamed_addr #3

declare void @Cec_ManSatPrintStats(ptr noundef) local_unnamed_addr #3

declare void @Cec_ManSatStop(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define range(i32 -2147483646, -2147483648) i32 @Cec_ManSatSolveExractPattern(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) initializes((4, 8)) %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 4 uses
  store i32 0, ptr %i.a, align 4, !tbaa !70
  %i.b = add i32 %1, 2                            ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val16 = load ptr, ptr %i.c, align 8, !tbaa !72
  %i.d = sext i32 %1 to i64
  %i.e = getelementptr [4 x i8], ptr %.val16, i64 %i.d
  %i.f = getelementptr i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !38   ; 2 uses
  %i.h = icmp slt i32 %i.g, 1
  br i1 %i.h, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.j = sext i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %Vec_IntPush.exit
  %indvars.iv = phi i64 [ %i.j, %.preheader ], [ %indvars.iv.next, %Vec_IntPush.exit ] ; 2 uses
  %.018 = phi i32 [ 0, %.preheader ], [ %i.af, %Vec_IntPush.exit ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.val = load ptr, ptr %i.c, align 8, !tbaa !72
  %i.k = getelementptr inbounds [4 x i8], ptr %.val, i64 %indvars.iv
  %i.l = load i32, ptr %i.k, align 4, !tbaa !38
  %i.m = load i32, ptr %i.a, align 4, !tbaa !70   ; 7 uses
  %i.n = load i32, ptr %2, align 8, !tbaa !71
  %i.o = icmp eq i32 %i.m, %i.n
  br i1 %i.o, label %bb.c, label %.Vec_IntPush.exit_crit_edge

.Vec_IntPush.exit_crit_edge:                      ; preds = %bb.b
  %.pre = load ptr, ptr %i.i, align 8, !tbaa !72
  br label %Vec_IntPush.exit

bb.c:                                             ; preds = %bb.b
  %i.p = icmp slt i32 %i.m, 16
  br i1 %i.p, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !72   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.q, null
  br i1 %.not9.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.q, i64 noundef 64) #19
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.d
  %i.s = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #18
  br label %Vec_IntGrow.exit11.sink.split.i

bb.g:                                             ; preds = %bb.c
  %i.t = icmp samesign ult i32 %i.m, 1073741823
  %i.u = shl nuw nsw i32 %i.m, 1
  %spec.select.i = select i1 %i.t, i32 %i.u, i32 2147483647 ; 4 uses
  %.not.i9.i = icmp samesign ult i32 %i.m, %spec.select.i
  %.pre20 = load ptr, ptr %i.i, align 8, !tbaa !72 ; 3 uses
  br i1 %.not.i9.i, label %bb.h, label %Vec_IntPush.exit

bb.h:                                             ; preds = %bb.g
  %.not9.i10.i = icmp eq ptr %.pre20, null
  %i.v = zext nneg i32 %spec.select.i to i64
  %i.w = shl nuw nsw i64 %i.v, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = tail call ptr @realloc(ptr noundef nonnull %.pre20, i64 noundef %i.w) #19
  br label %Vec_IntGrow.exit11.sink.split.i

bb.j:                                             ; preds = %bb.h
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.w) #18
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.i, %bb.j, %bb.e, %bb.f
  %i.z = phi ptr [ %i.s, %bb.f ], [ %i.r, %bb.e ], [ %i.x, %bb.i ], [ %i.y, %bb.j ] ; 2 uses
  %spec.select.sink.i = phi i32 [ 16, %bb.f ], [ 16, %bb.e ], [ %spec.select.i, %bb.i ], [ %spec.select.i, %bb.j ]
  store ptr %i.z, ptr %i.i, align 8, !tbaa !72
  store i32 %spec.select.sink.i, ptr %2, align 8, !tbaa !71
  %.pre21 = load i32, ptr %i.a, align 4, !tbaa !70
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %.Vec_IntPush.exit_crit_edge, %bb.g, %Vec_IntGrow.exit11.sink.split.i
  %i.aa = phi i32 [ %i.m, %.Vec_IntPush.exit_crit_edge ], [ %i.m, %bb.g ], [ %.pre21, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.ab = phi ptr [ %.pre, %.Vec_IntPush.exit_crit_edge ], [ %.pre20, %bb.g ], [ %i.z, %Vec_IntGrow.exit11.sink.split.i ]
  %i.ac = add nsw i32 %i.aa, 1
  store i32 %i.ac, ptr %i.a, align 4, !tbaa !70
  %i.ad = sext i32 %i.aa to i64
  %i.ae = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ad
  store i32 %i.l, ptr %i.ae, align 4, !tbaa !38
  %i.af = add nuw nsw i32 %.018, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.af, %i.g
  br i1 %exitcond.not, label %.loopexit.loopexit, label %bb.b, !llvm.loop !138

.loopexit.loopexit:                               ; preds = %Vec_IntPush.exit
  %i.ag = trunc nsw i64 %indvars.iv.next to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.a
  %.013 = phi i32 [ %i.b, %bb.a ], [ %i.ag, %.loopexit.loopexit ]
  ret i32 %.013
}

; Function Attrs: nounwind uwtable
define void @Cec_ManSatSolveCSat(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  store i32 0, ptr %i.c, align 4, !tbaa !70
  store i32 1000, ptr %i.b, align 8, !tbaa !71
  %i.d = tail call noalias dereferenceable_or_null(4000) ptr @malloc(i64 noundef 4000) #18
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.d, ptr %i.e, align 8, !tbaa !72
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !73
  %i.h = call ptr @Cbs_ManSolveMiterNc(ptr noundef %1, i32 noundef %i.g, ptr noundef nonnull %i.a, i32 noundef 0, i32 noundef 0) #17 ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %1, i64 32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !96   ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 4
  %.val4153 = load i32, ptr %i.l, align 4, !tbaa !70
  %i.m = icmp sgt i32 %.val4153, 0
  br i1 %i.m, label %.lr.ph.split.us.preheader, label %.critedge

.thread:                                          ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !98
  %i.p = getelementptr i8, ptr %i.o, i64 4
  %.val42 = load i32, ptr %i.p, align 4, !tbaa !100
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.val42, ptr %i.q, align 8, !tbaa !101
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.r, align 4, !tbaa !102
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.s, align 4, !tbaa !103
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.t, align 4, !tbaa !104
  %i.u = getelementptr i8, ptr %1, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !96   ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %.val415369 = load i32, ptr %i.x, align 4, !tbaa !70
  %i.y = icmp sgt i32 %.val415369, 0
  br i1 %i.y, label %.lr.ph.split.preheader, label %.critedge

.lr.ph.split.preheader:                           ; preds = %.thread
  %i.z = getelementptr i8, ptr %i.h, i64 4
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %bb.b
  %i.ae = getelementptr i8, ptr %i.h, i64 4
end_hunk_1
begin_hunk_2_@Cec_ManSatSolveSeq:bb.a
  %i.dj = sub i64 %i.dh, %i.di
  %i.dk = lshr exact i64 %i.dj, 2
  %i.dl = trunc i64 %i.dk to i32                  ; 3 uses
  %.val.i = load i32, ptr %i.ae, align 4, !tbaa !56 ; 4 uses
  %i.dm = shl nsw i32 %i.dl, 1
  %i.dn = sext i32 %i.dm to i64                   ; 6 uses
  %i.do = shl nsw i64 %i.dn, 2
  %i.dp = add nsw i64 %i.do, 8
  %i.dq = sext i32 %.val.i to i64                 ; 2 uses
  %i.dr = mul i64 %i.dp, %i.dq
  %i.ds = call noalias ptr @malloc(i64 noundef %i.dr) #18 ; 9 uses
  %i.dt = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.dq ; 5 uses
  %i.du = icmp sgt i32 %.val.i, 0
  br i1 %i.du, label %.lr.ph.preheader.i.i, label %._crit_edge.thread.i

.lr.ph.preheader.i.i:                             ; preds = %bb.ak
  %wide.trip.count.i.i = zext nneg i32 %.val.i to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 3     ; 3 uses
  %i.dv = icmp ult i32 %.val.i, 4
  br i1 %i.dv, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.preheader.i.i.new

.lr.ph.preheader.i.i.new:                         ; preds = %.lr.ph.preheader.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483644
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.i.i.new ], [ %niter.next.3, %.lr.ph.i.i ]
  %i.dw = mul nsw i64 %indvars.iv.i.i, %i.dn
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dw
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.i.i
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !58
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.dz = mul nsw i64 %indvars.iv.next.i.i, %i.dn
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.dz
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.next.i.i
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !58
  %indvars.iv.next.i.i.1 = or disjoint i64 %indvars.iv.i.i, 2 ; 2 uses
  %i.ec = mul nsw i64 %indvars.iv.next.i.i.1, %i.dn
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.ec
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.next.i.i.1
  store ptr %i.ed, ptr %i.ee, align 8, !tbaa !58
  %indvars.iv.next.i.i.2 = or disjoint i64 %indvars.iv.i.i, 3 ; 2 uses
  %i.ef = mul nsw i64 %indvars.iv.next.i.i.2, %i.dn
  %i.eg = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.ef
  %i.eh = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.next.i.i.2
  store ptr %i.eg, ptr %i.eh, align 8, !tbaa !58
  %indvars.iv.next.i.i.3 = add nuw nsw i64 %indvars.iv.i.i, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.lr.ph.i.unr-lcssa, label %.lr.ph.i.i, !llvm.loop !140

.lr.ph.i.unr-lcssa:                               ; preds = %.lr.ph.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.lr.ph.i.unr-lcssa, %.lr.ph.preheader.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i.3, %.lr.ph.i.unr-lcssa ]
  %lcmp.mod127 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod127)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %indvars.iv.i.i.epil = phi i64 [ %indvars.iv.i.i.epil.init, %.lr.ph.i.i.epil.preheader ], [ %indvars.iv.next.i.i.epil, %.lr.ph.i.i.epil ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.epil ]
  %i.ei = mul nsw i64 %indvars.iv.i.i.epil, %i.dn
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.ei
  %i.ek = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.i.i.epil
  store ptr %i.ej, ptr %i.ek, align 8, !tbaa !58
  %indvars.iv.next.i.i.epil = add nuw nsw i64 %indvars.iv.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.lr.ph.i, label %.lr.ph.i.i.epil, !llvm.loop !141

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.unr-lcssa
  %i.el = shl nsw i32 %i.dl, 2
  %i.em = sext i32 %i.el to i64
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.al ] ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ds, i64 %indvars.iv.i
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !58
  %.val22.i = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %.val22.i, i64 %indvars.iv.i
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !58
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.eo, ptr align 1 %i.eq, i64 %i.em, i1 false)
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.er = load i32, ptr %i.ae, align 4, !tbaa !56 ; 2 uses
  %i.es = sext i32 %i.er to i64
  %i.et = icmp slt i64 %indvars.iv.next.i, %i.es
  br i1 %i.et, label %bb.al, label %._crit_edge.i, !llvm.loop !142

._crit_edge.i:                                    ; preds = %bb.al
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !57 ; 2 uses
  %.not.i93 = icmp eq ptr %.pre.i, null
  br i1 %.not.i93, label %Vec_PtrReallocSimInfo.exit, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %._crit_edge.i, %bb.ak
  %i.eu = phi ptr [ %.pre.i, %._crit_edge.i ], [ %.val71, %bb.ak ]
  call void @free(ptr noundef nonnull %i.eu) #17
  %.pre = load i32, ptr %i.ae, align 4, !tbaa !56
  br label %Vec_PtrReallocSimInfo.exit

Vec_PtrReallocSimInfo.exit:                       ; preds = %._crit_edge.i, %._crit_edge.thread.i
  %i.ev = phi i32 [ %i.er, %._crit_edge.i ], [ %.pre, %._crit_edge.thread.i ]
  store ptr %i.ds, ptr %i.f, align 8, !tbaa !57
  %i.ew = icmp sgt i32 %i.ev, 0
  br i1 %i.ew, label %.lr.ph.i95, label %Vec_PtrCleanSimInfo.exit

.lr.ph.i95:                                       ; preds = %Vec_PtrReallocSimInfo.exit
  %i.ex = shl nsw i32 %i.dl, 2
  %i.ey = sext i32 %i.ex to i64                   ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %bb.am, %.lr.ph.i95
  %indvars.iv.i96 = phi i64 [ 0, %.lr.ph.i95 ], [ %indvars.iv.next.i98, %bb.am ] ; 2 uses
  %.val.i97 = load ptr, ptr %i.f, align 8, !tbaa !57
  %i.ez = getelementptr inbounds nuw [8 x i8], ptr %.val.i97, i64 %indvars.iv.i96
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !58
  %i.fb = getelementptr inbounds i8, ptr %i.fa, i64 %i.ey
  call void @llvm.memset.p0.i64(ptr align 1 %i.fb, i8 0, i64 %i.ey, i1 false)
  %indvars.iv.next.i98 = add nuw nsw i64 %indvars.iv.i96, 1 ; 2 uses
  %i.fc = load i32, ptr %i.ae, align 4, !tbaa !56
  %i.fd = sext i32 %i.fc to i64
  %i.fe = icmp slt i64 %indvars.iv.next.i98, %i.fd
  br i1 %i.fe, label %bb.am, label %Vec_PtrCleanSimInfo.exit.loopexit, !llvm.loop !143

Vec_PtrCleanSimInfo.exit.loopexit:                ; preds = %bb.am
  %.val70.pre = load ptr, ptr %i.f, align 8, !tbaa !57
  br label %Vec_PtrCleanSimInfo.exit

Vec_PtrCleanSimInfo.exit:                         ; preds = %Vec_PtrCleanSimInfo.exit.loopexit, %Vec_PtrReallocSimInfo.exit
  %.val70 = phi ptr [ %.val70.pre, %Vec_PtrCleanSimInfo.exit.loopexit ], [ %i.ds, %Vec_PtrReallocSimInfo.exit ] ; 2 uses
  %.val70.val = load ptr, ptr %.val70, align 8, !tbaa !58
  %i.ff = getelementptr i8, ptr %.val70, i64 8
  %.val70.val75 = load ptr, ptr %i.ff, align 8, !tbaa !58
  %i.fg = ptrtoint ptr %.val70.val75 to i64
  %i.fh = ptrtoint ptr %.val70.val to i64
  %i.fi = sub i64 %i.fg, %i.fh
  %.tr104 = trunc i64 %i.fi to i32
  %tr.sh.diff103 = shl i32 %.tr104, 3
  %i.fj = and i32 %tr.sh.diff103, -32
  br label %bb.an

bb.an:                                            ; preds = %Vec_PtrCleanSimInfo.exit, %bb.aj
  %.1 = phi i32 [ %i.fj, %Vec_PtrCleanSimInfo.exit ], [ %.051109, %bb.aj ]
  %i.fk = srem i32 %.052108, %i.k
  %i.fl = icmp eq i32 %i.fk, 0
  %i.fm = zext i1 %i.fl to i32
  %spec.select = add nsw i32 %.052108, %i.fm      ; 2 uses
  call void @Gia_ManIncrementTravId(ptr noundef nonnull %1) #17
  %i.fn = load i64, ptr %i.ar, align 4
  %i.fo = and i64 %i.fn, 536870911
  %i.fp = sub nsw i64 0, %i.fo
  %i.fq = getelementptr inbounds [12 x i8], ptr %i.ar, i64 %i.fp
  %i.fr = add nsw i32 %spec.select, 1
  call void @Cec_ManSatSolveSeq_rec(ptr noundef %i.m, ptr noundef nonnull %1, ptr noundef nonnull %i.fq, ptr noundef %0, i32 noundef %spec.select, i32 noundef %3)
  br label %bb.ao

bb.ao:                                            ; preds = %Vec_StrPush.exit92, %Vec_StrPush.exit, %Vec_StrPush.exit84, %bb.an
  %i.fs = phi ptr [ %i.bl, %Vec_StrPush.exit ], [ %i.cb, %Vec_StrPush.exit84 ], [ %i.cw, %Vec_StrPush.exit92 ], [ %i.cw, %bb.an ]
  %i.ft = phi i32 [ %i.bm, %Vec_StrPush.exit ], [ %i.cc, %Vec_StrPush.exit84 ], [ %i.cx, %Vec_StrPush.exit92 ], [ %i.cx, %bb.an ]
  %i.fu = phi ptr [ %i.bn, %Vec_StrPush.exit ], [ %i.cb, %Vec_StrPush.exit84 ], [ %i.cy, %Vec_StrPush.exit92 ], [ %i.cy, %bb.an ]
  %i.fv = phi i32 [ %i.bo, %Vec_StrPush.exit ], [ %i.cc, %Vec_StrPush.exit84 ], [ %i.cz, %Vec_StrPush.exit92 ], [ %i.cz, %bb.an ]
  %i.fw = phi ptr [ %i.bn, %Vec_StrPush.exit ], [ %i.cb, %Vec_StrPush.exit84 ], [ %i.da, %Vec_StrPush.exit92 ], [ %i.da, %bb.an ]
  %i.fx = phi i32 [ %i.bo, %Vec_StrPush.exit ], [ %i.cc, %Vec_StrPush.exit84 ], [ %i.db, %Vec_StrPush.exit92 ], [ %i.db, %bb.an ]
  %i.fy = phi i32 [ %i.bp, %Vec_StrPush.exit ], [ %i.cd, %Vec_StrPush.exit84 ], [ %i.dc, %Vec_StrPush.exit92 ], [ %i.dc, %bb.an ]
  %.254 = phi i32 [ %.052108, %Vec_StrPush.exit ], [ %.052108, %Vec_StrPush.exit84 ], [ %.052108, %Vec_StrPush.exit92 ], [ %i.fr, %bb.an ] ; 2 uses
  %.2 = phi i32 [ %.051109, %Vec_StrPush.exit ], [ %.051109, %Vec_StrPush.exit84 ], [ %.051109, %Vec_StrPush.exit92 ], [ %.1, %bb.an ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fz = load ptr, ptr %i.o, align 8, !tbaa !96  ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fz, i64 4
  %.val63 = load i32, ptr %i.ga, align 4, !tbaa !70
  %i.gb = sext i32 %.val63 to i64
  %i.gc = icmp slt i64 %indvars.iv.next, %i.gb
  br i1 %i.gc, label %bb.d, label %.critedge.loopexit, !llvm.loop !144

.critedge.loopexit:                               ; preds = %bb.ao, %bb.d
  %.052.lcssa.ph = phi i32 [ %.052108, %bb.d ], [ %.254, %bb.ao ]
  %i.gd = add nsw i32 %.052.lcssa.ph, -1
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %Vec_StrAlloc.exit
  %.052.lcssa = phi i32 [ -1, %Vec_StrAlloc.exit ], [ %i.gd, %.critedge.loopexit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.ge = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #17
  %i.gf = icmp slt i32 %i.ge, 0
  br i1 %i.gf, label %Abc_Clock.exit100, label %bb.ap

bb.ap:                                            ; preds = %.critedge
  %i.gg = load i64, ptr %5, align 8, !tbaa !80
  %i.gh = mul nsw i64 %i.gg, 1000000
  %i.gi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gj = load i64, ptr %i.gi, align 8, !tbaa !81
  %i.gk = sdiv i64 %i.gj, 1000
  %i.gl = add nsw i64 %i.gk, %i.gh
  br label %Abc_Clock.exit100

Abc_Clock.exit100:                                ; preds = %.critedge, %bb.ap
  %.0.i99 = phi i64 [ %i.gl, %bb.ap ], [ 4294967295, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.gm = add i64 %.0.i99, %.0.i.neg
  %i.gn = trunc i64 %i.gm to i32
  %i.go = getelementptr inbounds nuw i8, ptr %i.m, i64 140
  store i32 %i.gn, ptr %i.go, align 4, !tbaa !108
  call void @Bar_ProgressStop(ptr noundef %i.z) #17
  %i.gp = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !109
  %.not57 = icmp eq i32 %i.gq, 0
  br i1 %.not57, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %Abc_Clock.exit100
  call void @Cec_ManSatPrintStats(ptr noundef nonnull %i.m) #17
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %Abc_Clock.exit100
  call void @Cec_ManSatStop(ptr noundef nonnull %i.m) #17
  %.not58 = icmp eq ptr %4, null
  br i1 %.not58, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  store i32 %.052.lcssa, ptr %4, align 4, !tbaa !38
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  ret ptr %i.r
}

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define void @Cec_ManSatAddToStore(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 12 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !70   ; 7 uses
  %i.c = load i32, ptr %0, align 8, !tbaa !71
  %i.d = icmp eq i32 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %Vec_IntPush.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i32 %i.b, 16
  br i1 %i.e, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !72   ; 2 uses
  %.not9.i.i = icmp eq ptr %i.g, null
  br i1 %.not9.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call dereferenceable_or_null(64) ptr @realloc(ptr noundef nonnull %i.g, i64 noundef 64) #19
  br label %Vec_IntGrow.exit.i

bb.e:                                             ; preds = %bb.c
  %i.i = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #18
  br label %Vec_IntGrow.exit.i

Vec_IntGrow.exit.i:                               ; preds = %bb.e, %bb.d
  %i.j = phi ptr [ %i.h, %bb.d ], [ %i.i, %bb.e ]
  store ptr %i.j, ptr %i.f, align 8, !tbaa !72
  br label %Vec_IntGrow.exit11.sink.split.i

bb.f:                                             ; preds = %bb.b
  %i.k = icmp samesign ult i32 %i.b, 1073741823
  %i.l = shl nuw nsw i32 %i.b, 1
  %spec.select.i = select i1 %i.k, i32 %i.l, i32 2147483647 ; 3 uses
  %.not.i9.i = icmp samesign ult i32 %i.b, %spec.select.i
  br i1 %.not.i9.i, label %bb.g, label %Vec_IntPush.exit

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !72   ; 2 uses
  %.not9.i10.i = icmp eq ptr %i.n, null
  %i.o = zext nneg i32 %spec.select.i to i64
  %i.p = shl nuw nsw i64 %i.o, 2                  ; 2 uses
  br i1 %.not9.i10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr @realloc(ptr noundef nonnull %i.n, i64 noundef %i.p) #19
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.r = tail call noalias ptr @malloc(i64 noundef %i.p) #18
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.s = phi ptr [ %i.q, %bb.h ], [ %i.r, %bb.i ]
  store ptr %i.s, ptr %i.m, align 8, !tbaa !72
  br label %Vec_IntGrow.exit11.sink.split.i

Vec_IntGrow.exit11.sink.split.i:                  ; preds = %bb.j, %Vec_IntGrow.exit.i
  %spec.select.sink.i = phi i32 [ %spec.select.i, %bb.j ], [ 16, %Vec_IntGrow.exit.i ]
  store i32 %spec.select.sink.i, ptr %0, align 8, !tbaa !71
  %.pre = load i32, ptr %i.a, align 4, !tbaa !70
  br label %Vec_IntPush.exit

Vec_IntPush.exit:                                 ; preds = %bb.a, %bb.f, %Vec_IntGrow.exit11.sink.split.i
  %i.t = phi i32 [ %i.b, %bb.a ], [ %i.b, %bb.f ], [ %.pre, %Vec_IntGrow.exit11.sink.split.i ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !72   ; 7 uses
  %i.w = add nsw i32 %i.t, 1
  store i32 %i.w, ptr %i.a, align 4, !tbaa !70
  %i.x = sext i32 %i.t to i64
  %i.y = getelementptr inbounds [4 x i8], ptr %i.v, i64 %i.x
  store i32 %2, ptr %i.y, align 4, !tbaa !38
  %i.z = icmp eq ptr %1, null
  br i1 %i.z, label %bb.k, label %bb.o

bb.k:                                             ; preds = %Vec_IntPush.exit
  %i.aa = load i32, ptr %i.a, align 4, !tbaa !70  ; 7 uses
  %i.ab = load i32, ptr %0, align 8, !tbaa !71
  %i.ac = icmp eq i32 %i.aa, %i.ab
  br i1 %i.ac, label %bb.l, label %Vec_IntPush.exit22

bb.l:                                             ; preds = %bb.k
  %i.ad = icmp slt i32 %i.aa, 16
  br i1 %i.ad, label %Vec_IntGrow.exit11.sink.split.i18, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = icmp samesign ult i32 %i.aa, 1073741823
  %i.af = shl nuw nsw i32 %i.aa, 1
  %spec.select.i15 = select i1 %i.ae, i32 %i.af, i32 2147483647 ; 3 uses
  %.not.i9.i16 = icmp samesign ult i32 %i.aa, %spec.select.i15
  br i1 %.not.i9.i16, label %bb.n, label %Vec_IntPush.exit22

bb.n:                                             ; preds = %bb.m
  %i.ag = zext nneg i32 %spec.select.i15 to i64
  %i.ah = shl nuw nsw i64 %i.ag, 2
  br label %Vec_IntGrow.exit11.sink.split.i18

Vec_IntGrow.exit11.sink.split.i18:                ; preds = %bb.l, %bb.n
  %.sink = phi i64 [ %i.ah, %bb.n ], [ 64, %bb.l ]
  %spec.select.sink.i19 = phi i32 [ %spec.select.i15, %bb.n ], [ 16, %bb.l ]
  %i.ai = tail call ptr @realloc(ptr noundef nonnull %i.v, i64 noundef %.sink) #19 ; 2 uses
  store ptr %i.ai, ptr %i.u, align 8, !tbaa !72
  store i32 %spec.select.sink.i19, ptr %0, align 8, !tbaa !71
  %.pre46 = load i32, ptr %i.a, align 4, !tbaa !70
  br label %Vec_IntPush.exit22

Vec_IntPush.exit22:                               ; preds = %bb.k, %bb.m, %Vec_IntGrow.exit11.sink.split.i18
  %i.aj = phi i32 [ %i.aa, %bb.k ], [ %i.aa, %bb.m ], [ %.pre46, %Vec_IntGrow.exit11.sink.split.i18 ] ; 2 uses
  %i.ak = phi ptr [ %i.v, %bb.k ], [ %i.v, %bb.m ], [ %i.ai, %Vec_IntGrow.exit11.sink.split.i18 ]
  %i.al = add nsw i32 %i.aj, 1
  store i32 %i.al, ptr %i.a, align 4, !tbaa !70
  %i.am = sext i32 %i.aj to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ak, i64 %i.am
  store i32 -1, ptr %i.an, align 4, !tbaa !38
  br label %.critedge

bb.o:                                             ; preds = %Vec_IntPush.exit
  %i.ao = getelementptr i8, ptr %1, i64 4         ; 3 uses
  %.val14 = load i32, ptr %i.ao, align 4, !tbaa !70
  %i.ap = load i32, ptr %i.a, align 4, !tbaa !70  ; 7 uses
  %i.aq = load i32, ptr %0, align 8, !tbaa !71
  %i.ar = icmp eq i32 %i.ap, %i.aq
  br i1 %i.ar, label %bb.p, label %Vec_IntPush.exit30

bb.p:                                             ; preds = %bb.o
  %i.as = icmp slt i32 %i.ap, 16
  br i1 %i.as, label %Vec_IntGrow.exit11.sink.split.i26, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.at = icmp samesign ult i32 %i.ap, 1073741823
  %i.au = shl nuw nsw i32 %i.ap, 1
  %spec.select.i23 = select i1 %i.at, i32 %i.au, i32 2147483647 ; 3 uses
  %.not.i9.i24 = icmp samesign ult i32 %i.ap, %spec.select.i23
  br i1 %.not.i9.i24, label %bb.r, label %Vec_IntPush.exit30

bb.r:                                             ; preds = %bb.q
  %i.av = zext nneg i32 %spec.select.i23 to i64
  %i.aw = shl nuw nsw i64 %i.av, 2
  br label %Vec_IntGrow.exit11.sink.split.i26

Vec_IntGrow.exit11.sink.split.i26:                ; preds = %bb.p, %bb.r
  %.sink58 = phi i64 [ %i.aw, %bb.r ], [ 64, %bb.p ]
  %spec.select.sink.i27 = phi i32 [ %spec.select.i23, %bb.r ], [ 16, %bb.p ]
  %i.ax = tail call ptr @realloc(ptr noundef nonnull %i.v, i64 noundef %.sink58) #19 ; 2 uses
  store ptr %i.ax, ptr %i.u, align 8, !tbaa !72
  store i32 %spec.select.sink.i27, ptr %0, align 8, !tbaa !71
  %.pre44 = load i32, ptr %i.a, align 4, !tbaa !70
  br label %Vec_IntPush.exit30

Vec_IntPush.exit30:                               ; preds = %bb.o, %bb.q, %Vec_IntGrow.exit11.sink.split.i26
  %i.ay = phi i32 [ %i.ap, %bb.o ], [ %i.ap, %bb.q ], [ %.pre44, %Vec_IntGrow.exit11.sink.split.i26 ] ; 2 uses
  %i.az = phi ptr [ %i.v, %bb.o ], [ %i.v, %bb.q ], [ %i.ax, %Vec_IntGrow.exit11.sink.split.i26 ] ; 2 uses
  %i.ba = add nsw i32 %i.ay, 1
  store i32 %i.ba, ptr %i.a, align 4, !tbaa !70
  %i.bb = sext i32 %i.ay to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %i.az, i64 %i.bb
  store i32 %.val14, ptr %i.bc, align 4, !tbaa !38
  %.val1341 = load i32, ptr %i.ao, align 4, !tbaa !70
  %i.bd = icmp sgt i32 %.val1341, 0
  br i1 %i.bd, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %Vec_IntPush.exit30
  %i.be = getelementptr i8, ptr %1, i64 8
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %Vec_IntPush.exit38
  %i.bf = phi ptr [ %i.az, %.lr.ph ], [ %i.bs, %Vec_IntPush.exit38 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %Vec_IntPush.exit38 ] ; 2 uses
  %.val = load ptr, ptr %i.be, align 8, !tbaa !72
end_hunk_2
begin_hunk_3_@Cec_ManSatSolveMiterOutVals:bb.a

bb.ag:                                            ; preds = %bb.af
  %i.ds = call dereferenceable_or_null(16) ptr @realloc(ptr noundef nonnull %i.be, i64 noundef 16) #19
  br label %Vec_StrGrow.exit11.sink.split.i80

bb.ah:                                            ; preds = %bb.af
  %i.dt = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #18
  br label %Vec_StrGrow.exit11.sink.split.i80

bb.ai:                                            ; preds = %bb.ae
  %i.du = icmp samesign ult i32 %i.bf, 1073741823
  %i.dv = shl nuw nsw i32 %i.bf, 1
  %spec.select.i77 = select i1 %i.du, i32 %i.dv, i32 2147483647 ; 4 uses
  %.not.i9.i78 = icmp samesign ult i32 %i.bf, %spec.select.i77
  br i1 %.not.i9.i78, label %bb.aj, label %Vec_StrPush.exit84

bb.aj:                                            ; preds = %bb.ai
  %.not9.i10.i79 = icmp eq ptr %i.be, null
  %i.dw = zext nneg i32 %spec.select.i77 to i64   ; 2 uses
  br i1 %.not9.i10.i79, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dx = call ptr @realloc(ptr noundef nonnull %i.be, i64 noundef %i.dw) #19
  br label %Vec_StrGrow.exit11.sink.split.i80

bb.al:                                            ; preds = %bb.aj
  %i.dy = call noalias ptr @malloc(i64 noundef %i.dw) #18
  br label %Vec_StrGrow.exit11.sink.split.i80

Vec_StrGrow.exit11.sink.split.i80:                ; preds = %bb.ak, %bb.al, %bb.ag, %bb.ah
  %storemerge95 = phi ptr [ %i.dt, %bb.ah ], [ %i.ds, %bb.ag ], [ %i.dx, %bb.ak ], [ %i.dy, %bb.al ] ; 4 uses
  %spec.select.sink.i81 = phi i32 [ 16, %bb.ah ], [ 16, %bb.ag ], [ %spec.select.i77, %bb.ak ], [ %spec.select.i77, %bb.al ] ; 4 uses
  store ptr %storemerge95, ptr %i.q, align 8, !tbaa !111
  store i32 %spec.select.sink.i81, ptr %i.k, align 8, !tbaa !115
  %.pre = load i32, ptr %i.m, align 4, !tbaa !100
  br label %Vec_StrPush.exit84

Vec_StrPush.exit84:                               ; preds = %bb.ad, %bb.ai, %Vec_StrGrow.exit11.sink.split.i80
  %i.dz = phi ptr [ %i.ba, %bb.ad ], [ %i.ba, %bb.ai ], [ %storemerge95, %Vec_StrGrow.exit11.sink.split.i80 ] ; 3 uses
  %i.ea = phi i32 [ %i.bb, %bb.ad ], [ %i.bb, %bb.ai ], [ %spec.select.sink.i81, %Vec_StrGrow.exit11.sink.split.i80 ] ; 3 uses
  %i.eb = phi ptr [ %i.bc, %bb.ad ], [ %i.bc, %bb.ai ], [ %storemerge95, %Vec_StrGrow.exit11.sink.split.i80 ] ; 3 uses
  %i.ec = phi i32 [ %i.bd, %bb.ad ], [ %i.bd, %bb.ai ], [ %spec.select.sink.i81, %Vec_StrGrow.exit11.sink.split.i80 ] ; 3 uses
  %i.ed = phi i32 [ %i.bg, %bb.ad ], [ %i.bf, %bb.ai ], [ %.pre, %Vec_StrGrow.exit11.sink.split.i80 ] ; 2 uses
  %i.ee = phi ptr [ %i.be, %bb.ad ], [ %i.be, %bb.ai ], [ %storemerge95, %Vec_StrGrow.exit11.sink.split.i80 ] ; 4 uses
  %i.ef = phi i32 [ %i.bf, %bb.ad ], [ %i.bf, %bb.ai ], [ %spec.select.sink.i81, %Vec_StrGrow.exit11.sink.split.i80 ] ; 3 uses
  %i.eg = add nsw i32 %i.ed, 1                    ; 4 uses
  store i32 %i.eg, ptr %i.m, align 4, !tbaa !100
  %i.eh = sext i32 %i.ed to i64
  %i.ei = getelementptr inbounds i8, ptr %i.ee, i64 %i.eh
  store i8 %i.dp, ptr %i.ei, align 1, !tbaa !112
  switch i32 %i.do, label %bb.an [
    i32 -1, label %bb.am
    i32 1, label %bb.aw
  ]

bb.am:                                            ; preds = %Vec_StrPush.exit84
  %i.ej = trunc nuw nsw i64 %indvars.iv to i32
  call void @Cec_ManSatAddToStore(ptr noundef nonnull %i.r, ptr noundef null, i32 noundef %i.ej)
  br label %bb.aw

bb.an:                                            ; preds = %Vec_StrPush.exit84
  br i1 %or.cond.i85, label %Cec_ManSatSaveOutVals.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ek = shl nuw nsw i64 %indvars.iv, 1          ; 3 uses
  %i.el = or disjoint i64 %i.ek, 1                ; 3 uses
  %.val19.i = load i32, ptr %i.au, align 4, !tbaa !70
  %i.em = trunc nuw i64 %i.el to i32
  %.not.i86 = icmp sgt i32 %.val19.i, %i.em
  br i1 %.not.i86, label %bb.ap, label %Cec_ManSatSaveOutVals.exit

bb.ap:                                            ; preds = %bb.ao
  %.val18.i = load ptr, ptr %i.av, align 8, !tbaa !72 ; 2 uses
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %.val18.i, i64 %i.ek
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !38 ; 4 uses
  %i.ep = icmp slt i32 %i.eo, 0
  br i1 %i.ep, label %Cec_ManSatLitValue.exit.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eq = lshr i32 %i.eo, 1                       ; 2 uses
  %i.er = icmp eq i32 %i.eq, 0
  br i1 %i.er, label %Cec_ManSatLitValue.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.val11.i.i = load ptr, ptr %i.aw, align 8, !tbaa !20
  %i.es = shl nuw i32 %i.eq, 2
  %i.et = zext i32 %i.es to i64
  %i.eu = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 %i.et
  %i.ev = load i32, ptr %i.eu, align 4, !tbaa !38 ; 2 uses
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %Cec_ManSatLitValue.exit.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ex = load ptr, ptr %i.ax, align 8, !tbaa !18
  %i.ey = getelementptr i8, ptr %i.ex, i64 328
  %.val4.i.i.i = load ptr, ptr %i.ey, align 8, !tbaa !51
  %i.ez = sext i32 %i.ev to i64
  %i.fa = getelementptr inbounds [4 x i8], ptr %.val4.i.i.i, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !38
  %i.fc = icmp eq i32 %i.fb, 1
  %i.fd = zext i1 %i.fc to i32
  %i.fe = and i32 %i.eo, 1
  %i.ff = xor i32 %i.fe, %i.fd
  br label %Cec_ManSatLitValue.exit.i

Cec_ManSatLitValue.exit.i:                        ; preds = %bb.as, %bb.ar, %bb.aq, %bb.ap
  %.0.i.i = phi i32 [ %i.ff, %bb.as ], [ -1, %bb.ar ], [ -1, %bb.ap ], [ %i.eo, %bb.aq ]
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %.val18.i, i64 %i.el
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !38 ; 4 uses
  %i.fi = icmp slt i32 %i.fh, 0
  br i1 %i.fi, label %Cec_ManSatLitValue.exit25.i, label %bb.at

bb.at:                                            ; preds = %Cec_ManSatLitValue.exit.i
  %i.fj = lshr i32 %i.fh, 1                       ; 2 uses
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %Cec_ManSatLitValue.exit25.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.val11.i22.i = load ptr, ptr %i.aw, align 8, !tbaa !20
  %i.fl = shl nuw i32 %i.fj, 2
  %i.fm = zext i32 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %.val11.i22.i, i64 %i.fm
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !38 ; 2 uses
  %i.fp = icmp eq i32 %i.fo, 0
  br i1 %i.fp, label %Cec_ManSatLitValue.exit25.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fq = load ptr, ptr %i.ax, align 8, !tbaa !18
  %i.fr = getelementptr i8, ptr %i.fq, i64 328
  %.val4.i.i23.i = load ptr, ptr %i.fr, align 8, !tbaa !51
  %i.fs = sext i32 %i.fo to i64
  %i.ft = getelementptr inbounds [4 x i8], ptr %.val4.i.i23.i, i64 %i.fs
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !38
  %i.fv = icmp eq i32 %i.fu, 1
  %i.fw = zext i1 %i.fv to i32
  %i.fx = and i32 %i.fh, 1
  %i.fy = xor i32 %i.fx, %i.fw
  br label %Cec_ManSatLitValue.exit25.i

Cec_ManSatLitValue.exit25.i:                      ; preds = %bb.av, %bb.au, %bb.at, %Cec_ManSatLitValue.exit.i
  %.0.i24.i = phi i32 [ %i.fy, %bb.av ], [ -1, %bb.au ], [ -1, %Cec_ManSatLitValue.exit.i ], [ %i.fh, %bb.at ]
  %.val21.i = load ptr, ptr %i.ay, align 8, !tbaa !72 ; 2 uses
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %.val21.i, i64 %i.ek
  store i32 %.0.i.i, ptr %i.fz, align 4, !tbaa !38
  %i.ga = getelementptr inbounds nuw [4 x i8], ptr %.val21.i, i64 %i.el
  store i32 %.0.i24.i, ptr %i.ga, align 4, !tbaa !38
  br label %Cec_ManSatSaveOutVals.exit

Cec_ManSatSaveOutVals.exit:                       ; preds = %bb.an, %bb.ao, %Cec_ManSatLitValue.exit25.i
  %i.gb = load i64, ptr %i.bm, align 4
  %i.gc = and i64 %i.gb, 536870911
  %i.gd = sub nsw i64 0, %i.gc
  %i.ge = getelementptr inbounds [12 x i8], ptr %i.bm, i64 %i.gd
  %i.gf = load ptr, ptr %i.ar, align 8, !tbaa !113
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 4
  store i32 0, ptr %i.gg, align 4, !tbaa !70
  %i.gh = load ptr, ptr %i.az, align 8, !tbaa !19
  call void @Gia_ManIncrementTravId(ptr noundef %i.gh) #17
  %i.gi = load ptr, ptr %i.az, align 8, !tbaa !19
  %i.gj = ptrtoint ptr %i.ge to i64
  %i.gk = and i64 %i.gj, -2
  %i.gl = inttoptr i64 %i.gk to ptr
  call void @Cec_ManSatSolveMiter_rec(ptr noundef nonnull %i.ai, ptr noundef %i.gi, ptr noundef %i.gl)
  %i.gm = load ptr, ptr %i.ar, align 8, !tbaa !113
  %i.gn = trunc nuw nsw i64 %indvars.iv to i32
  call void @Cec_ManSatAddToStore(ptr noundef nonnull %i.r, ptr noundef %i.gm, i32 noundef %i.gn)
  br label %bb.aw

bb.aw:                                            ; preds = %Vec_StrPush.exit84, %Vec_StrPush.exit, %Vec_StrPush.exit76, %Cec_ManSatSaveOutVals.exit, %bb.am
  %i.go = phi ptr [ %i.dz, %Vec_StrPush.exit84 ], [ %i.cl, %Vec_StrPush.exit ], [ %i.de, %Vec_StrPush.exit76 ], [ %i.dz, %Cec_ManSatSaveOutVals.exit ], [ %i.dz, %bb.am ]
  %i.gp = phi i32 [ %i.ea, %Vec_StrPush.exit84 ], [ %i.cm, %Vec_StrPush.exit ], [ %i.df, %Vec_StrPush.exit76 ], [ %i.ea, %Cec_ManSatSaveOutVals.exit ], [ %i.ea, %bb.am ]
  %i.gq = phi ptr [ %i.eb, %Vec_StrPush.exit84 ], [ %i.co, %Vec_StrPush.exit ], [ %i.de, %Vec_StrPush.exit76 ], [ %i.eb, %Cec_ManSatSaveOutVals.exit ], [ %i.eb, %bb.am ]
  %i.gr = phi i32 [ %i.ec, %Vec_StrPush.exit84 ], [ %i.cp, %Vec_StrPush.exit ], [ %i.df, %Vec_StrPush.exit76 ], [ %i.ec, %Cec_ManSatSaveOutVals.exit ], [ %i.ec, %bb.am ]
  %i.gs = phi ptr [ %i.ee, %Vec_StrPush.exit84 ], [ %i.co, %Vec_StrPush.exit ], [ %i.de, %Vec_StrPush.exit76 ], [ %i.ee, %Cec_ManSatSaveOutVals.exit ], [ %i.ee, %bb.am ]
  %i.gt = phi i32 [ %i.ef, %Vec_StrPush.exit84 ], [ %i.cp, %Vec_StrPush.exit ], [ %i.df, %Vec_StrPush.exit76 ], [ %i.ef, %Cec_ManSatSaveOutVals.exit ], [ %i.ef, %bb.am ]
  %i.gu = phi i32 [ %i.eg, %Vec_StrPush.exit84 ], [ %i.cq, %Vec_StrPush.exit ], [ %i.dg, %Vec_StrPush.exit76 ], [ %i.eg, %Cec_ManSatSaveOutVals.exit ], [ %i.eg, %bb.am ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.gv = load ptr, ptr %i.h, align 8, !tbaa !96  ; 2 uses
  %i.gw = getelementptr i8, ptr %i.gv, i64 4
  %.val58 = load i32, ptr %i.gw, align 4, !tbaa !70
  %i.gx = sext i32 %.val58 to i64
  %i.gy = icmp slt i64 %indvars.iv.next, %i.gx
  br i1 %i.gy, label %bb.g, label %.critedge, !llvm.loop !147

.critedge:                                        ; preds = %bb.g, %bb.aw, %Vec_IntStartFull.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  %i.gz = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #17
  %i.ha = icmp slt i32 %i.gz, 0
  br i1 %i.ha, label %Abc_Clock.exit88, label %bb.ax

bb.ax:                                            ; preds = %.critedge
  %i.hb = load i64, ptr %5, align 8, !tbaa !80
  %i.hc = mul nsw i64 %i.hb, 1000000
  %i.hd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.he = load i64, ptr %i.hd, align 8, !tbaa !81
  %i.hf = sdiv i64 %i.he, 1000
  %i.hg = add nsw i64 %i.hf, %i.hc
  br label %Abc_Clock.exit88

Abc_Clock.exit88:                                 ; preds = %.critedge, %bb.ax
  %.0.i87 = phi i64 [ %i.hg, %bb.ax ], [ 4294967295, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  %i.hh = add i64 %.0.i87, %.0.i.neg
  %i.hi = trunc i64 %i.hh to i32
  %i.hj = getelementptr inbounds nuw i8, ptr %i.ai, i64 140
  store i32 %i.hi, ptr %i.hj, align 4, !tbaa !108
  call void @Bar_ProgressStop(ptr noundef %i.am) #17
  call void @Cec_ManSatStop(ptr noundef %i.ai) #17
  store ptr %i.k, ptr %2, align 8, !tbaa !110
  br i1 %.not, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %Abc_Clock.exit88
  store ptr %.093, ptr %4, align 8, !tbaa !148
  br label %Vec_IntFreeP.exit

bb.az:                                            ; preds = %Abc_Clock.exit88
  %i.hk = icmp eq ptr %.093, null
  br i1 %i.hk, label %Vec_IntFreeP.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.hl = getelementptr inbounds nuw i8, ptr %.093, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !72 ; 2 uses
  %.not.i89 = icmp eq ptr %i.hm, null
  br i1 %.not.i89, label %bb.bb, label %.thread.i

.thread.i:                                        ; preds = %bb.ba
  call void @free(ptr noundef nonnull %i.hm) #17
  br label %bb.bb

bb.bb:                                            ; preds = %.thread.i, %bb.ba
  call void @free(ptr noundef nonnull %.093) #17
  br label %Vec_IntFreeP.exit

Vec_IntFreeP.exit:                                ; preds = %bb.bb, %bb.az, %bb.ay
  ret ptr %i.r
}

; Function Attrs: nounwind uwtable
define noalias noundef ptr @Cec_ManSatSolveMiter(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @Cec_ManSatSolveMiterOutVals(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef null, ptr noundef null)
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #15

declare void @Bar_ProgressUpdate_int(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !59}
!1 = distinct !{!1, !59}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS13Cec_ParSat_t_", !10, i64 0}
!12 = !{!"p1 _ZTS10Gia_Man_t_", !10, i64 0}
!13 = !{!"p1 _ZTS10Vec_Int_t_", !10, i64 0}
!14 = !{!"p1 _ZTS12sat_solver_t", !10, i64 0}
!15 = !{!"p1 int", !10, i64 0}
!16 = !{!"p1 _ZTS10Vec_Ptr_t_", !10, i64 0}
!17 = !{!"Cec_ManSat_t_", !11, i64 0, !12, i64 8, !13, i64 16, !14, i64 24, !10, i64 32, !7, i64 40, !15, i64 48, !16, i64 56, !7, i64 64, !7, i64 68, !16, i64 72, !13, i64 80, !13, i64 88, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140}
!18 = !{!17, !14, i64 24}
!19 = !{!17, !12, i64 8}
!20 = !{!17, !15, i64 48}
!21 = !{!"p1 omnipotent char", !10, i64 0}
!22 = !{!"p1 _ZTS10Gia_Obj_t_", !10, i64 0}
!23 = !{!"Vec_Int_t_", !7, i64 0, !7, i64 4, !15, i64 8}
!24 = !{!"p1 _ZTS10Gia_Rpr_t_", !10, i64 0}
!25 = !{!"p1 _ZTS10Vec_Wec_t_", !10, i64 0}
!26 = !{!"p1 _ZTS10Vec_Str_t_", !10, i64 0}
!27 = !{!"p1 _ZTS10Abc_Cex_t_", !10, i64 0}
!28 = !{!"p1 _ZTS10Gia_Plc_t_", !10, i64 0}
!29 = !{!"p1 _ZTS10Vec_Flt_t_", !10, i64 0}
!30 = !{!"float", !6, i64 0}
!31 = !{!"p1 _ZTS10Vec_Vec_t_", !10, i64 0}
!32 = !{!"long", !6, i64 0}
!33 = !{!"p1 _ZTS10Vec_Wrd_t_", !10, i64 0}
!34 = !{!"p1 _ZTS10Vec_Bit_t_", !10, i64 0}
!35 = !{!"p1 _ZTS10Gia_Dat_t_", !10, i64 0}
!36 = !{!"Gia_Man_t_", !21, i64 0, !21, i64 8, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !22, i64 32, !15, i64 40, !7, i64 48, !7, i64 52, !7, i64 56, !13, i64 64, !13, i64 72, !23, i64 80, !23, i64 96, !7, i64 112, !7, i64 116, !7, i64 120, !23, i64 128, !15, i64 144, !15, i64 152, !13, i64 160, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !15, i64 184, !24, i64 192, !15, i64 200, !15, i64 208, !15, i64 216, !7, i64 224, !7, i64 228, !15, i64 232, !7, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !25, i64 272, !25, i64 280, !13, i64 288, !10, i64 296, !13, i64 304, !13, i64 312, !26, i64 320, !21, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !27, i64 376, !27, i64 384, !16, i64 392, !23, i64 400, !23, i64 416, !13, i64 432, !13, i64 440, !13, i64 448, !13, i64 456, !13, i64 464, !13, i64 472, !13, i64 480, !13, i64 488, !13, i64 496, !13, i64 504, !13, i64 512, !21, i64 520, !28, i64 528, !12, i64 536, !29, i64 544, !29, i64 552, !13, i64 560, !13, i64 568, !13, i64 576, !13, i64 584, !13, i64 592, !7, i64 600, !30, i64 604, !30, i64 608, !13, i64 616, !15, i64 624, !7, i64 632, !16, i64 640, !16, i64 648, !16, i64 656, !13, i64 664, !13, i64 672, !13, i64 680, !13, i64 688, !13, i64 696, !13, i64 704, !13, i64 712, !13, i64 720, !13, i64 728, !31, i64 736, !29, i64 744, !10, i64 752, !10, i64 760, !10, i64 768, !32, i64 776, !32, i64 784, !10, i64 792, !15, i64 800, !7, i64 808, !7, i64 812, !7, i64 816, !7, i64 820, !7, i64 824, !7, i64 828, !7, i64 832, !7, i64 836, !7, i64 840, !7, i64 844, !7, i64 848, !7, i64 852, !33, i64 856, !33, i64 864, !33, i64 872, !33, i64 880, !13, i64 888, !13, i64 896, !13, i64 904, !34, i64 912, !7, i64 920, !7, i64 924, !7, i64 928, !13, i64 936, !7, i64 944, !7, i64 948, !13, i64 952, !13, i64 960, !16, i64 968, !33, i64 976, !13, i64 984, !13, i64 992, !7, i64 1000, !7, i64 1004, !33, i64 1008, !23, i64 1016, !23, i64 1032, !23, i64 1048, !35, i64 1064, !26, i64 1072, !26, i64 1080, !7, i64 1088, !7, i64 1092, !7, i64 1096, !7, i64 1100, !26, i64 1104, !13, i64 1112, !13, i64 1120, !13, i64 1128, !16, i64 1136}
!37 = !{!36, !22, i64 32}
!38 = !{!7, !7, i64 0}
!39 = !{!"any p2 pointer", !10, i64 0}
!40 = !{!"p2 int", !39, i64 0}
!41 = !{!"Sat_Mem_t_", !6, i64 0, !6, i64 8, !6, i64 16, !6, i64 24, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !40, i64 48}
!42 = !{!"p1 _ZTS8clause_t", !10, i64 0}
!43 = !{!"p1 _ZTS6veci_t", !10, i64 0}
!44 = !{!"p1 long", !10, i64 0}
!45 = !{!"veci_t", !7, i64 0, !7, i64 4, !15, i64 8}
!46 = !{!"double", !6, i64 0}
!47 = !{!"stats_t", !7, i64 0, !7, i64 4, !7, i64 8, !32, i64 16, !32, i64 24, !32, i64 32, !32, i64 40, !32, i64 48, !32, i64 56, !32, i64 64}
!48 = !{!"p1 double", !10, i64 0}
!49 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!50 = !{!"sat_solver_t", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !41, i64 16, !7, i64 72, !7, i64 76, !42, i64 80, !43, i64 88, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !32, i64 120, !32, i64 128, !32, i64 136, !44, i64 144, !44, i64 152, !7, i64 160, !7, i64 164, !45, i64 168, !21, i64 184, !7, i64 192, !15, i64 200, !21, i64 208, !21, i64 216, !21, i64 224, !21, i64 232, !15, i64 240, !15, i64 248, !15, i64 256, !45, i64 264, !45, i64 280, !45, i64 296, !45, i64 312, !15, i64 328, !45, i64 336, !7, i64 352, !7, i64 356, !7, i64 360, !46, i64 368, !46, i64 376, !7, i64 384, !7, i64 388, !7, i64 392, !47, i64 400, !7, i64 472, !7, i64 476, !7, i64 480, !7, i64 484, !7, i64 488, !32, i64 496, !32, i64 504, !32, i64 512, !45, i64 520, !48, i64 536, !7, i64 544, !7, i64 548, !7, i64 552, !45, i64 560, !45, i64 576, !7, i64 592, !7, i64 596, !7, i64 600, !15, i64 608, !10, i64 616, !7, i64 624, !49, i64 632, !7, i64 640, !7, i64 644, !45, i64 648, !45, i64 664, !45, i64 680, !10, i64 696, !10, i64 704, !7, i64 712, !10, i64 720}
!51 = !{!50, !15, i64 328}
!52 = !{!17, !11, i64 0}
!53 = !{!"Cec_ParSat_t_", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36}
!54 = !{!53, !7, i64 20}
!55 = !{!"Vec_Ptr_t_", !7, i64 0, !7, i64 4, !39, i64 8}
!56 = !{!55, !7, i64 4}
!57 = !{!55, !39, i64 8}
!58 = !{!10, !10, i64 0}
!59 = !{!"llvm.loop.mustprogress"}
!60 = !{!55, !7, i64 0}
!61 = !{!17, !16, i64 56}
!62 = !{!17, !7, i64 40}
!63 = !{!50, !48, i64 536}
!64 = !{!17, !7, i64 68}
!65 = !{!36, !15, i64 624}
!66 = !{!36, !7, i64 176}
!67 = !{!36, !13, i64 160}
!68 = !{!45, !7, i64 4}
!69 = !{!49, !49, i64 0}
!70 = !{!23, !7, i64 4}
!71 = !{!23, !7, i64 0}
!72 = !{!23, !15, i64 8}
!73 = !{!53, !7, i64 4}
!74 = !{!17, !7, i64 108}
!75 = !{!53, !7, i64 8}
!76 = !{!53, !7, i64 12}
!77 = !{!50, !7, i64 12}
!78 = !{!50, !7, i64 8}
!79 = !{!"timespec", !32, i64 0, !32, i64 8}
!80 = !{!79, !32, i64 0}
!81 = !{!79, !32, i64 8}
!82 = !{!50, !32, i64 440}
!83 = !{!17, !7, i64 128}
!84 = !{!17, !7, i64 96}
!85 = !{!17, !7, i64 116}
!86 = !{!17, !7, i64 132}
!87 = !{!17, !7, i64 100}
!88 = !{!17, !7, i64 120}
!89 = !{!17, !7, i64 136}
!90 = !{!17, !7, i64 104}
!91 = !{!17, !7, i64 124}
!92 = !{!36, !13, i64 64}
!93 = !{!"Abc_Cex_t_", !7, i64 0, !7, i64 4, !7, i64 8, !7, i64 12, !7, i64 16, !6, i64 20}
!94 = !{!93, !7, i64 0}
!95 = !{!93, !7, i64 4}
!96 = !{!36, !13, i64 72}
!97 = !{!"Cec_ManPat_t_", !13, i64 0, !13, i64 8, !26, i64 16, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !32, i64 64, !32, i64 72, !32, i64 80, !32, i64 88, !32, i64 96, !32, i64 104, !32, i64 112}
!98 = !{!97, !26, i64 16}
!99 = !{!"Vec_Str_t_", !7, i64 0, !7, i64 4, !21, i64 8}
!100 = !{!99, !7, i64 4}
!101 = !{!97, !7, i64 24}
!102 = !{!97, !7, i64 28}
!103 = !{!97, !7, i64 36}
!104 = !{!97, !7, i64 44}
!105 = !{!36, !7, i64 16}
!106 = !{!97, !32, i64 112}
!107 = !{!53, !7, i64 24}
end_hunk_3
