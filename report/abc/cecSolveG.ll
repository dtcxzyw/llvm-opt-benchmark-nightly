Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cecSolveG?download=true
inline.NumInlined: 190
inline.NumDeleted: 43
begin_hunk_0_@CecG_ManSatSolverRecycle:bb.a
  %i.al = ashr exact i64 %i.ak, 30
  %i.am = getelementptr inbounds i8, ptr %.val24, i64 %i.al
  store i32 %i.ad, ptr %i.am, align 4, !tbaa !37
  %i.an = load i32, ptr %.val24, align 4, !tbaa !37
  %i.ao = shl nsw i32 %i.an, 1
  %i.ap = or disjoint i32 %i.ao, 1
  store i32 %i.ap, ptr %i.a, align 4, !tbaa !37
  %i.aq = load ptr, ptr %i.b, align 8, !tbaa !17
  %i.ar = call i32 @bmcg2_sat_solver_addclause(ptr noundef %i.aq, ptr noundef nonnull %i.a, i32 noundef 1) #8 ; 0 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.at = load i32, ptr %i.as, align 8, !tbaa !50
  %i.au = add nsw i32 %i.at, 1
  store i32 %i.au, ptr %i.as, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 68
  store i32 0, ptr %i.av, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret void
}

declare void @bmcg2_sat_solver_stop(ptr noundef) local_unnamed_addr #1

declare ptr @bmcg2_sat_solver_start(...) local_unnamed_addr #1

declare void @bmcg2_sat_solver_set_jftr(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define range(i32 -1, 2) i32 @CecG_ManSatCheckNode(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.timespec, align 8           ; 5 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 5 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 2 uses
  %i.c = and i64 %i.b, -2                         ; 3 uses
  %i.d = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.g = load i32, ptr %i.f, align 4, !tbaa !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.h = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #8
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %5, align 8, !tbaa !53
  %i.k = mul nsw i64 %i.j, 1000000
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.m = load i64, ptr %i.l, align 8, !tbaa !54
  %i.n = sdiv i64 %i.m, 1000
  %i.o = add nsw i64 %i.n, %i.k
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.o, %bb.b ], [ -1, %bb.a ]  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.r = getelementptr i8, ptr %i.q, i64 32
  %.val61 = load ptr, ptr %i.r, align 8, !tbaa !36 ; 2 uses
  %i.s = icmp eq ptr %1, %.val61
  br i1 %i.s, label %bb.u, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.t = ptrtoint ptr %.val61 to i64
  %i.u = xor i64 %i.t, 1
  %i.v = inttoptr i64 %i.u to ptr
  %i.w = icmp eq ptr %1, %i.v
  br i1 %i.w, label %bb.u, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 3 uses
  %i.y = load i32, ptr %i.x, align 4, !tbaa !51
  %i.z = add nsw i32 %i.y, 1
  store i32 %i.z, ptr %i.x, align 4, !tbaa !51
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !69
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !69
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 10 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !17 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %0, align 8, !tbaa !38
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !70
  %.not = icmp eq i32 %i.ai, 0
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aj = call i32 @bmcg2_sat_solver_varnum(ptr noundef nonnull %i.ae) #8
  %i.ak = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 4, !tbaa !70
  %i.an = icmp sgt i32 %i.aj, %i.am
  br i1 %i.an, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ao = load i32, ptr %i.x, align 4, !tbaa !51
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !71
  %i.ar = icmp sgt i32 %i.ao, %i.aq
  br i1 %i.ar, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.d
  call void @CecG_ManSatSolverRecycle(ptr noundef nonnull %0)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  call void @CecG_CnfNodeAddToSolver(ptr noundef nonnull %0, ptr noundef %i.d)
  %i.as = load ptr, ptr %0, align 8, !tbaa !38    ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !49
  %.not55 = icmp eq i32 %i.at, 0
  br i1 %.not55, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.au = load ptr, ptr %i.ad, align 8, !tbaa !17
  call void @bmcg2_sat_solver_start_new_round(ptr noundef %i.au) #8
  %i.av = load ptr, ptr %i.ad, align 8, !tbaa !17
  %.val59 = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.aw = getelementptr i8, ptr %0, i64 48
  %.val60 = load ptr, ptr %i.aw, align 8, !tbaa !19
  %i.ax = getelementptr i8, ptr %.val59, i64 32
  %.val59.val = load ptr, ptr %i.ax, align 8, !tbaa !36
  %i.ay = ptrtoint ptr %.val59.val to i64
  %i.az = sub i64 %i.c, %i.ay
  %i.ba = sdiv exact i64 %i.az, 12
  %i.bb = shl i64 %i.ba, 32
  %i.bc = ashr exact i64 %i.bb, 30
  %i.bd = getelementptr inbounds i8, ptr %.val60, i64 %i.bc
  %i.be = load i32, ptr %i.bd, align 4, !tbaa !37
  call void @bmcg2_sat_solver_mark_cone(ptr noundef %i.av, i32 noundef %i.be) #8
  %.pre = load ptr, ptr %0, align 8, !tbaa !38
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bf = phi ptr [ %.pre, %bb.j ], [ %i.as, %bb.i ]
  %.val = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.bg = getelementptr i8, ptr %0, i64 48
  %.val58 = load ptr, ptr %i.bg, align 8, !tbaa !19
  %i.bh = getelementptr i8, ptr %.val, i64 32
  %.val.val = load ptr, ptr %i.bh, align 8, !tbaa !36
  %i.bi = ptrtoint ptr %.val.val to i64
  %i.bj = sub i64 %i.c, %i.bi
  %i.bk = sdiv exact i64 %i.bj, 12
  %i.bl = shl i64 %i.bk, 32
  %i.bm = ashr exact i64 %i.bl, 30
  %i.bn = getelementptr inbounds i8, ptr %.val58, i64 %i.bm
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !37
  %i.bp = trunc i64 %i.b to i32
  %i.bq = and i32 %i.bp, 1
  %i.br = shl nsw i32 %i.bo, 1
  %i.bs = or disjoint i32 %i.br, %i.bq            ; 2 uses
  store i32 %i.bs, ptr %i.a, align 4, !tbaa !37
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bf, i64 20
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !40
  %.not56 = icmp eq i32 %i.bu, 0
  br i1 %.not56, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bv = load i64, ptr %i.d, align 4
  %.not57 = icmp sgt i64 %i.bv, -1
  br i1 %.not57, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bw = xor i32 %i.bs, 1
  store i32 %i.bw, ptr %i.a, align 4, !tbaa !37
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m, %bb.k
  %i.bx = load ptr, ptr %i.ad, align 8, !tbaa !17
  %i.by = call i32 @bmcg2_sat_solver_conflictnum(ptr noundef %i.bx) #8 ; 3 uses
  %i.bz = load ptr, ptr %i.ad, align 8, !tbaa !17
  call void @bmcg2_sat_solver_set_conflict_budget(ptr noundef %i.bz, i32 noundef %i.g) #8
  %i.ca = load ptr, ptr %i.ad, align 8, !tbaa !17
  %i.cb = call i32 @bmcg2_sat_solver_solve(ptr noundef %i.ca, ptr noundef nonnull %i.a, i32 noundef 1) #8
  switch i32 %i.cb, label %bb.s [
    i32 -1, label %bb.o
    i32 1, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.cc = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #8
  %i.cd = icmp slt i32 %i.cc, 0
  br i1 %i.cd, label %Abc_Clock.exit64, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ce = load i64, ptr %4, align 8, !tbaa !53
  %i.cf = mul nsw i64 %i.ce, 1000000
  %i.cg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !54
  %i.ci = sdiv i64 %i.ch, 1000
  %i.cj = add nsw i64 %i.ci, %i.cf
  br label %Abc_Clock.exit64

Abc_Clock.exit64:                                 ; preds = %bb.o, %bb.p
  %.0.i63 = phi i64 [ %i.cj, %bb.p ], [ -1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.ck = sub nsw i64 %.0.i63, %.0.i
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 8, !tbaa !72
  %i.cn = trunc i64 %i.ck to i32
  %i.co = add i32 %i.cm, %i.cn
  store i32 %i.co, ptr %i.cl, align 8, !tbaa !72
  %i.cp = load i32, ptr %i.a, align 4, !tbaa !37
  %i.cq = xor i32 %i.cp, 1
  store i32 %i.cq, ptr %i.a, align 4, !tbaa !37
  %i.cr = load ptr, ptr %i.ad, align 8, !tbaa !17
  %i.cs = call i32 @bmcg2_sat_solver_addclause(ptr noundef %i.cr, ptr noundef nonnull %i.a, i32 noundef 1) #8 ; 0 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !73
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 8, !tbaa !73
  %i.cw = load ptr, ptr %i.ad, align 8, !tbaa !17
  %i.cx = call i32 @bmcg2_sat_solver_conflictnum(ptr noundef %i.cw) #8
  %i.cy = sub i32 %i.cx, %i.by
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 116 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !74
  %i.db = add nsw i32 %i.cy, %i.da
  store i32 %i.db, ptr %i.cz, align 4, !tbaa !74
  br label %bb.u

bb.q:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.dc = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %3) #8
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %Abc_Clock.exit66, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.de = load i64, ptr %3, align 8, !tbaa !53
  %i.df = mul nsw i64 %i.de, 1000000
  %i.dg = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.dh = load i64, ptr %i.dg, align 8, !tbaa !54
  %i.di = sdiv i64 %i.dh, 1000
  %i.dj = add nsw i64 %i.di, %i.df
  br label %Abc_Clock.exit66

Abc_Clock.exit66:                                 ; preds = %bb.q, %bb.r
  %.0.i65 = phi i64 [ %i.dj, %bb.r ], [ -1, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  %i.dk = sub nsw i64 %.0.i65, %.0.i
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 132 ; 2 uses
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !75
  %i.dn = trunc i64 %i.dk to i32
  %i.do = add i32 %i.dm, %i.dn
  store i32 %i.do, ptr %i.dl, align 4, !tbaa !75
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4, !tbaa !76
  %i.dr = add nsw i32 %i.dq, 1
  store i32 %i.dr, ptr %i.dp, align 4, !tbaa !76
  %i.ds = load ptr, ptr %i.ad, align 8, !tbaa !17
  %i.dt = call i32 @bmcg2_sat_solver_conflictnum(ptr noundef %i.ds) #8
  %i.du = sub i32 %i.dt, %i.by
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 8, !tbaa !77
  %i.dx = add nsw i32 %i.du, %i.dw
  store i32 %i.dx, ptr %i.dv, align 8, !tbaa !77
  br label %bb.u

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.dy = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %2) #8
  %i.dz = icmp slt i32 %i.dy, 0
  br i1 %i.dz, label %Abc_Clock.exit68, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ea = load i64, ptr %2, align 8, !tbaa !53
  %i.eb = mul nsw i64 %i.ea, 1000000
  %i.ec = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !54
  %i.ee = sdiv i64 %i.ed, 1000
  %i.ef = add nsw i64 %i.ee, %i.eb
  br label %Abc_Clock.exit68

Abc_Clock.exit68:                                 ; preds = %bb.s, %bb.t
  %.0.i67 = phi i64 [ %i.ef, %bb.t ], [ -1, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  %i.eg = sub nsw i64 %.0.i67, %.0.i
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !78
  %i.ej = trunc i64 %i.eg to i32
  %i.ek = add i32 %i.ei, %i.ej
  store i32 %i.ek, ptr %i.eh, align 8, !tbaa !78
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.em = load i32, ptr %i.el, align 8, !tbaa !79
  %i.en = add nsw i32 %i.em, 1
  store i32 %i.en, ptr %i.el, align 8, !tbaa !79
  %i.eo = load ptr, ptr %i.ad, align 8, !tbaa !17
  %i.ep = call i32 @bmcg2_sat_solver_conflictnum(ptr noundef %i.eo) #8
  %i.eq = sub i32 %i.ep, %i.by
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 124 ; 2 uses
  %i.es = load i32, ptr %i.er, align 4, !tbaa !80
  %i.et = add nsw i32 %i.eq, %i.es
  store i32 %i.et, ptr %i.er, align 4, !tbaa !80
  br label %bb.u

bb.u:                                             ; preds = %bb.c, %Abc_Clock.exit, %Abc_Clock.exit68, %Abc_Clock.exit66, %Abc_Clock.exit64
  %.0 = phi i32 [ -1, %Abc_Clock.exit68 ], [ 1, %Abc_Clock.exit ], [ 1, %Abc_Clock.exit64 ], [ 0, %Abc_Clock.exit66 ], [ 0, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret i32 %.0
}

declare i32 @bmcg2_sat_solver_varnum(ptr noundef) local_unnamed_addr #1

declare void @bmcg2_sat_solver_start_new_round(ptr noundef) local_unnamed_addr #1

declare void @bmcg2_sat_solver_mark_cone(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @bmcg2_sat_solver_conflictnum(ptr noundef) local_unnamed_addr #1

declare void @bmcg2_sat_solver_set_conflict_budget(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @bmcg2_sat_solver_solve(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define void @CecG_ManSatSolve(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  %5 = alloca %struct.timespec, align 8           ; 3 uses
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  %i.a = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %6) #8
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %Abc_Clock.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %6, align 8, !tbaa !53
  %.neg75 = mul i64 %i.c, -1000000
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !54
  %.neg = sdiv i64 %i.e, -1000
  %.neg76 = add i64 %.neg, %.neg75
  br label %Abc_Clock.exit

Abc_Clock.exit:                                   ; preds = %bb.a, %bb.b
  %.0.i.neg = phi i64 [ %.neg76, %bb.b ], [ 1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !82   ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %Vec_PtrFreeP.exit, label %bb.c

bb.c:                                             ; preds = %Abc_Clock.exit
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !44   ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.d, label %.thread.i

.thread.i:                                        ; preds = %bb.c
  call void @free(ptr noundef nonnull %i.j) #8
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !82   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr null, ptr %i.l, align 8, !tbaa !44
  br label %bb.d

bb.d:                                             ; preds = %.thread.i, %bb.c
  %i.m = phi ptr [ %i.k, %.thread.i ], [ %i.g, %bb.c ]
  call void @free(ptr noundef nonnull %i.m) #8
  store ptr null, ptr %i.f, align 8, !tbaa !82
  br label %Vec_PtrFreeP.exit

Vec_PtrFreeP.exit:                                ; preds = %Abc_Clock.exit, %bb.d
  %i.n = load i32, ptr %2, align 4, !tbaa !49
  %.not = icmp eq i32 %i.n, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %Vec_PtrFreeP.exit
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 20
  store i32 0, ptr %i.o, align 4, !tbaa !40
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %Vec_PtrFreeP.exit
  %.not53 = icmp eq ptr %0, null
  br i1 %.not53, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !84
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %.val62 = load i32, ptr %i.r, align 4, !tbaa !86
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %.val62, ptr %i.s, align 8, !tbaa !87
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.t, align 4, !tbaa !88
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 0, ptr %i.u, align 4, !tbaa !89
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.v, align 4, !tbaa !90
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @Gia_ManSetPhase(ptr noundef nonnull %1) #8
  %i.w = call i32 @Gia_ManLevelNum(ptr noundef nonnull %1) #8 ; 0 uses
  call void @Gia_ManIncrementTravId(ptr noundef nonnull %1) #8
  %i.x = call ptr @Cec_ManSatCreate(ptr noundef nonnull %1, ptr noundef nonnull %2) #8 ; 6 uses
  %i.y = load ptr, ptr @stdout, align 8, !tbaa !92
  %i.z = getelementptr i8, ptr %1, i64 16
  %.val64 = load i32, ptr %i.z, align 8, !tbaa !93
  %i.aa = getelementptr i8, ptr %1, i64 72        ; 4 uses
  %.val65 = load ptr, ptr %i.aa, align 8, !tbaa !94
  %i.ab = getelementptr i8, ptr %.val65, i64 4
  %.val65.val = load i32, ptr %i.ab, align 4, !tbaa !95
  %i.ac = sub nsw i32 %.val65.val, %.val64
  %i.ad = call ptr @Bar_ProgressStart(ptr noundef %i.y, i32 noundef %i.ac) #8 ; 4 uses
  %i.ae = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 4
  %.val6377 = load i32, ptr %i.ah, align 4, !tbaa !95
  %i.ai = icmp sgt i32 %.val6377, 0
  br i1 %i.ai, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.h
  %.not.i70 = icmp eq ptr %i.ad, null
  %i.aj = icmp ne i32 %3, 0
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 5 uses
  %i.ak = phi ptr [ %i.ag, %.lr.ph ], [ %i.co, %bb.q ]
  %.val66 = load ptr, ptr %i.ae, align 8, !tbaa !36 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %.val67.val = load ptr, ptr %i.al, align 8, !tbaa !96
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.val67.val, i64 %indvars.iv
  %i.an = load i32, ptr %i.am, align 4, !tbaa !37
  %i.ao = sext i32 %i.an to i64
  %i.ap = getelementptr inbounds [12 x i8], ptr %.val66, i64 %i.ao ; 7 uses
  %.not54 = icmp eq ptr %.val66, null
  br i1 %.not54, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = load i64, ptr %i.ap, align 4            ; 3 uses
  %i.ar = and i64 %i.aq, 536870911
  %i.as = sub nsw i64 0, %i.ar
  %i.at = getelementptr inbounds [12 x i8], ptr %i.ap, i64 %i.as
  %.val61 = load i64, ptr %i.at, align 4
  %i.au = and i64 %.val61, 2305843005455597567
  %narrow.i.not = icmp eq i64 %i.au, 2305843005455597567
  br i1 %narrow.i.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.av = trunc i64 %i.aq to i32
  %i.aw = lshr i32 %i.av, 29
  %i.ax = and i32 %i.aw, 1                        ; 2 uses
  %i.ay = xor i32 %i.ax, 1
  %i.az = shl nuw nsw i32 %i.ax, 30
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = and i64 %i.aq, -4611686019501129729
  %i.bc = or disjoint i64 %i.bb, %i.ba
  %i.bd = zext nneg i32 %i.ay to i64
  %i.be = shl nuw nsw i64 %i.bd, 62
  %i.bf = or disjoint i64 %i.bc, %i.be
  store i64 %i.bf, ptr %i.ap, align 4
  br label %bb.q

bb.l:                                             ; preds = %bb.j
  br i1 %.not.i70, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bg = load i32, ptr %i.ad, align 4, !tbaa !37
  %i.bh = sext i32 %i.bg to i64
  %i.bi = icmp slt i64 %indvars.iv, %i.bh
  br i1 %i.bi, label %Bar_ProgressUpdate.exit, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bj = trunc nuw nsw i64 %indvars.iv to i32
  call void @Bar_ProgressUpdate_int(ptr noundef %i.ad, i32 noundef %i.bj, ptr noundef nonnull @.str) #8
  br label %Bar_ProgressUpdate.exit

Bar_ProgressUpdate.exit:                          ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  %i.bk = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %5) #8 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  %i.bl = load i64, ptr %i.ap, align 4            ; 2 uses
  %i.bm = and i64 %i.bl, 536870911
  %i.bn = sub nsw i64 0, %i.bm
  %i.bo = getelementptr inbounds [12 x i8], ptr %i.ap, i64 %i.bn
  %i.bp = lshr i64 %i.bl, 29
  %i.bq = and i64 %i.bp, 1
  %i.br = ptrtoint ptr %i.bo to i64
  %i.bs = xor i64 %i.bq, %i.br
  %i.bt = inttoptr i64 %i.bs to ptr
  %i.bu = call i32 @CecG_ManSatCheckNode(ptr noundef %i.x, ptr noundef %i.bt) ; 2 uses
  %i.bv = icmp eq i32 %i.bu, 0                    ; 2 uses
  %i.bw = load i64, ptr %i.ap, align 4
  %i.bx = select i1 %i.bv, i64 1073741824, i64 0
  %i.by = and i64 %i.bw, -4611686019501129729
  %i.bz = or disjoint i64 %i.by, %i.bx
  %i.ca = icmp eq i32 %i.bu, 1                    ; 2 uses
  %i.cb = select i1 %i.ca, i64 4611686018427387904, i64 0
  %i.cc = or disjoint i64 %i.bz, %i.cb
  store i64 %i.cc, ptr %i.ap, align 4
  %or.cond = select i1 %i.aj, i1 %i.ca, i1 false
  br i1 %or.cond, label %.thread, label %bb.o

.thread:                                          ; preds = %Bar_ProgressUpdate.exit
  %.val68 = load ptr, ptr %i.ae, align 8, !tbaa !36
  %.val69 = load ptr, ptr %i.aa, align 8, !tbaa !94
  %i.cd = getelementptr i8, ptr %.val69, i64 8
  %.val69.val = load ptr, ptr %i.cd, align 8, !tbaa !96
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %.val69.val, i64 %indvars.iv
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !37 ; 2 uses
  %i.cg = sext i32 %i.cf to i64
  %i.ch = getelementptr inbounds [12 x i8], ptr %.val68, i64 %i.cg ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 4
  %i.cj = and i32 %i.cf, 536870911
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = and i64 %i.ci, -1073741824
  %i.cm = or disjoint i64 %i.cl, %i.ck
  store i64 %i.cm, ptr %i.ch, align 4
  br label %bb.q

bb.o:                                             ; preds = %Bar_ProgressUpdate.exit
  br i1 %i.bv, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cn = load i32, ptr %i.af, align 4, !tbaa !97
  %.not57 = icmp eq i32 %i.cn, 0
  br i1 %.not57, label %bb.q, label %.critedge

bb.q:                                             ; preds = %.thread, %bb.p, %bb.o, %bb.k
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.co = load ptr, ptr %i.aa, align 8, !tbaa !94 ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  %.val63 = load i32, ptr %i.cp, align 4, !tbaa !95
  %i.cq = sext i32 %.val63 to i64
  %i.cr = icmp slt i64 %indvars.iv.next, %i.cq
  br i1 %i.cr, label %bb.i, label %.critedge, !llvm.loop !81

.critedge:                                        ; preds = %bb.i, %bb.p, %bb.q, %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.cs = call i32 @clock_gettime(i32 noundef 1, ptr noundef nonnull %4) #8
  %i.ct = icmp slt i32 %i.cs, 0
  br i1 %i.ct, label %Abc_Clock.exit74, label %bb.r

bb.r:                                             ; preds = %.critedge
  %i.cu = load i64, ptr %4, align 8, !tbaa !53
  %i.cv = mul nsw i64 %i.cu, 1000000
  %i.cw = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.cx = load i64, ptr %i.cw, align 8, !tbaa !54
  %i.cy = sdiv i64 %i.cx, 1000
  %i.cz = add nsw i64 %i.cy, %i.cv
  br label %Abc_Clock.exit74

Abc_Clock.exit74:                                 ; preds = %.critedge, %bb.r
  %.0.i73 = phi i64 [ %i.cz, %bb.r ], [ -1, %.critedge ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  %i.da = add i64 %.0.i73, %.0.i.neg
  %i.db = trunc i64 %i.da to i32
  %i.dc = getelementptr inbounds nuw i8, ptr %i.x, i64 140
  store i32 %i.db, ptr %i.dc, align 4, !tbaa !98
  %i.dd = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %i.de = load i32, ptr %i.dd, align 8, !tbaa !50
  %i.df = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %i.de) ; 0 uses
  call void @Bar_ProgressStop(ptr noundef %i.ad) #8
  %i.dg = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !99
  %.not58 = icmp eq i32 %i.dh, 0
  br i1 %.not58, label %bb.t, label %bb.s

bb.s:                                             ; preds = %Abc_Clock.exit74
  call void @Cec_ManSatPrintStats(ptr noundef nonnull %i.x) #8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %Abc_Clock.exit74
  %i.di = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !17 ; 2 uses
  %.not59 = icmp eq ptr %i.dj, null
  br i1 %.not59, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @bmcg2_sat_solver_stop(ptr noundef nonnull %i.dj) #8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store ptr null, ptr %i.di, align 8, !tbaa !17
  call void @Cec_ManSatStop(ptr noundef nonnull %i.x) #8
  ret void
}

declare void @Gia_ManSetPhase(ptr noundef) local_unnamed_addr #1

declare i32 @Gia_ManLevelNum(ptr noundef) local_unnamed_addr #1

declare void @Gia_ManIncrementTravId(ptr noundef) local_unnamed_addr #1

declare ptr @Cec_ManSatCreate(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @Bar_ProgressStart(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #5

declare void @Bar_ProgressStop(ptr noundef) local_unnamed_addr #1

declare void @Cec_ManSatPrintStats(ptr noundef) local_unnamed_addr #1

declare void @Cec_ManSatStop(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) local_unnamed_addr #7

declare void @Bar_ProgressUpdate_int(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind allocsize(1) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = distinct !{!0, !46}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!"p1 _ZTS13Cec_ParSat_t_", !9, i64 0}
!11 = !{!"p1 _ZTS10Gia_Man_t_", !9, i64 0}
!12 = !{!"p1 _ZTS10Vec_Int_t_", !9, i64 0}
!13 = !{!"p1 _ZTS12sat_solver_t", !9, i64 0}
!14 = !{!"p1 int", !9, i64 0}
!15 = !{!"p1 _ZTS10Vec_Ptr_t_", !9, i64 0}
!16 = !{!"Cec_ManSat_t_", !10, i64 0, !11, i64 8, !12, i64 16, !13, i64 24, !9, i64 32, !6, i64 40, !14, i64 48, !15, i64 56, !6, i64 64, !6, i64 68, !15, i64 72, !12, i64 80, !12, i64 88, !6, i64 96, !6, i64 100, !6, i64 104, !6, i64 108, !6, i64 112, !6, i64 116, !6, i64 120, !6, i64 124, !6, i64 128, !6, i64 132, !6, i64 136, !6, i64 140}
!17 = !{!16, !13, i64 24}
!18 = !{!16, !11, i64 8}
!19 = !{!16, !14, i64 48}
!20 = !{!"p1 omnipotent char", !9, i64 0}
!21 = !{!"p1 _ZTS10Gia_Obj_t_", !9, i64 0}
!22 = !{!"Vec_Int_t_", !6, i64 0, !6, i64 4, !14, i64 8}
!23 = !{!"p1 _ZTS10Gia_Rpr_t_", !9, i64 0}
!24 = !{!"p1 _ZTS10Vec_Wec_t_", !9, i64 0}
!25 = !{!"p1 _ZTS10Vec_Str_t_", !9, i64 0}
!26 = !{!"p1 _ZTS10Abc_Cex_t_", !9, i64 0}
!27 = !{!"p1 _ZTS10Gia_Plc_t_", !9, i64 0}
!28 = !{!"p1 _ZTS10Vec_Flt_t_", !9, i64 0}
!29 = !{!"float", !5, i64 0}
!30 = !{!"p1 _ZTS10Vec_Vec_t_", !9, i64 0}
!31 = !{!"long", !5, i64 0}
!32 = !{!"p1 _ZTS10Vec_Wrd_t_", !9, i64 0}
!33 = !{!"p1 _ZTS10Vec_Bit_t_", !9, i64 0}
!34 = !{!"p1 _ZTS10Gia_Dat_t_", !9, i64 0}
!35 = !{!"Gia_Man_t_", !20, i64 0, !20, i64 8, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !21, i64 32, !14, i64 40, !6, i64 48, !6, i64 52, !6, i64 56, !12, i64 64, !12, i64 72, !22, i64 80, !22, i64 96, !6, i64 112, !6, i64 116, !6, i64 120, !22, i64 128, !14, i64 144, !14, i64 152, !12, i64 160, !6, i64 168, !6, i64 172, !6, i64 176, !6, i64 180, !14, i64 184, !23, i64 192, !14, i64 200, !14, i64 208, !14, i64 216, !6, i64 224, !6, i64 228, !14, i64 232, !6, i64 240, !12, i64 248, !12, i64 256, !12, i64 264, !24, i64 272, !24, i64 280, !12, i64 288, !9, i64 296, !12, i64 304, !12, i64 312, !25, i64 320, !20, i64 328, !12, i64 336, !12, i64 344, !12, i64 352, !12, i64 360, !12, i64 368, !26, i64 376, !26, i64 384, !15, i64 392, !22, i64 400, !22, i64 416, !12, i64 432, !12, i64 440, !12, i64 448, !12, i64 456, !12, i64 464, !12, i64 472, !12, i64 480, !12, i64 488, !12, i64 496, !12, i64 504, !12, i64 512, !20, i64 520, !27, i64 528, !11, i64 536, !28, i64 544, !28, i64 552, !12, i64 560, !12, i64 568, !12, i64 576, !12, i64 584, !12, i64 592, !6, i64 600, !29, i64 604, !29, i64 608, !12, i64 616, !14, i64 624, !6, i64 632, !15, i64 640, !15, i64 648, !15, i64 656, !12, i64 664, !12, i64 672, !12, i64 680, !12, i64 688, !12, i64 696, !12, i64 704, !12, i64 712, !12, i64 720, !12, i64 728, !30, i64 736, !28, i64 744, !9, i64 752, !9, i64 760, !9, i64 768, !31, i64 776, !31, i64 784, !9, i64 792, !14, i64 800, !6, i64 808, !6, i64 812, !6, i64 816, !6, i64 820, !6, i64 824, !6, i64 828, !6, i64 832, !6, i64 836, !6, i64 840, !6, i64 844, !6, i64 848, !6, i64 852, !32, i64 856, !32, i64 864, !32, i64 872, !32, i64 880, !12, i64 888, !12, i64 896, !12, i64 904, !33, i64 912, !6, i64 920, !6, i64 924, !6, i64 928, !12, i64 936, !6, i64 944, !6, i64 948, !12, i64 952, !12, i64 960, !15, i64 968, !32, i64 976, !12, i64 984, !12, i64 992, !6, i64 1000, !6, i64 1004, !32, i64 1008, !22, i64 1016, !22, i64 1032, !22, i64 1048, !34, i64 1064, !25, i64 1072, !25, i64 1080, !6, i64 1088, !6, i64 1092, !6, i64 1096, !6, i64 1100, !25, i64 1104, !12, i64 1112, !12, i64 1120, !12, i64 1128, !15, i64 1136}
!36 = !{!35, !21, i64 32}
!37 = !{!6, !6, i64 0}
!38 = !{!16, !10, i64 0}
!39 = !{!"Cec_ParSat_t_", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36}
!40 = !{!39, !6, i64 20}
!41 = !{!"any p2 pointer", !9, i64 0}
!42 = !{!"Vec_Ptr_t_", !6, i64 0, !6, i64 4, !41, i64 8}
!43 = !{!42, !6, i64 4}
!44 = !{!42, !41, i64 8}
!45 = !{!9, !9, i64 0}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!42, !6, i64 0}
!48 = !{!16, !15, i64 56}
!49 = !{!39, !6, i64 0}
!50 = !{!16, !6, i64 64}
!51 = !{!16, !6, i64 68}
!52 = !{!"timespec", !31, i64 0, !31, i64 8}
!53 = !{!52, !31, i64 0}
!54 = !{!52, !31, i64 8}
!55 = !{!21, !21, i64 0}
!56 = distinct !{!56, !46}
!57 = distinct !{!57, !46}
!58 = distinct !{!58, !61}
!59 = !{!"Gia_Obj_t_", !6, i64 0, !6, i64 3, !6, i64 3, !6, i64 3, !6, i64 4, !6, i64 7, !6, i64 7, !6, i64 7, !6, i64 8}
!60 = !{!59, !6, i64 8}
!61 = !{!"llvm.loop.peeled.count", i32 1}
!62 = distinct !{!62, !46}
!63 = distinct !{!63, !46}
!64 = distinct !{!64, !46}
!65 = distinct !{!65, !46}
!66 = !{!16, !15, i64 72}
!67 = distinct !{!67, !46}
!68 = !{!39, !6, i64 4}
!69 = !{!16, !6, i64 108}
!70 = !{!39, !6, i64 8}
!71 = !{!39, !6, i64 12}
!72 = !{!16, !6, i64 128}
!73 = !{!16, !6, i64 96}
!74 = !{!16, !6, i64 116}
!75 = !{!16, !6, i64 132}
!76 = !{!16, !6, i64 100}
!77 = !{!16, !6, i64 120}
!78 = !{!16, !6, i64 136}
!79 = !{!16, !6, i64 104}
!80 = !{!16, !6, i64 124}
!81 = distinct !{!81, !46}
!82 = !{!15, !15, i64 0}
!83 = !{!"Cec_ManPat_t_", !12, i64 0, !12, i64 8, !25, i64 16, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !31, i64 64, !31, i64 72, !31, i64 80, !31, i64 88, !31, i64 96, !31, i64 104, !31, i64 112}
!84 = !{!83, !25, i64 16}
!85 = !{!"Vec_Str_t_", !6, i64 0, !6, i64 4, !20, i64 8}
!86 = !{!85, !6, i64 4}
!87 = !{!83, !6, i64 24}
!88 = !{!83, !6, i64 28}
!89 = !{!83, !6, i64 36}
!90 = !{!83, !6, i64 44}
!91 = !{!"p1 _ZTS8_IO_FILE", !9, i64 0}
!92 = !{!91, !91, i64 0}
!93 = !{!35, !6, i64 16}
!94 = !{!35, !12, i64 72}
!95 = !{!22, !6, i64 4}
!96 = !{!22, !14, i64 8}
!97 = !{!39, !6, i64 24}
!98 = !{!16, !6, i64 140}
!99 = !{!39, !6, i64 36}
end_hunk_0
