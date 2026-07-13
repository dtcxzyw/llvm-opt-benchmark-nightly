inline.NumInlined: 5
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }

@cube = external local_unnamed_addr global %struct.cube_struct, align 8
@.str = private unnamed_addr constant [10 x i8] c"DONT_CARE\00", align 1
@.str.1 = private unnamed_addr constant [9 x i8] c"DONTCARE\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"dont_care\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"dontcare\00", align 1
@trace = external local_unnamed_addr global i32, align 4
@.str.4 = private unnamed_addr constant [10 x i8] c"simpcomp+\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"simpcomp-\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"term1    \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"term2    \00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"union     \00", align 1
@.str.9 = private unnamed_addr constant [9 x i8] c"simplify\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"separate  \00", align 1
@.str.11 = private unnamed_addr constant [35 x i8] c"symbolic-output index out of range\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"error\00", align 1
@.str.13 = private unnamed_addr constant [36 x i8] c".symbolic requires binary variables\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"bad cube in form_bitvector\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"X%d\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [47 x i8] c"use .symbolic and .symbolic-output to specify\0A\00", align 1
@.str.17 = private unnamed_addr constant [52 x i8] c"the present state and next state field information\0A\00", align 1
@.str.18 = private unnamed_addr constant [53 x i8] c"disassemble_pla: need two multiple-valued variables\0A\00", align 1
@.str.19 = private unnamed_addr constant [39 x i8] c"disassemble_pla: # outputs < # states\0A\00", align 1
@.str.20 = private unnamed_addr constant [41 x i8] c"# state EVERY to %d, before=%d after=%d\0A\00", align 1
@.str.21 = private unnamed_addr constant [44 x i8] c"# state ANY to NOWHERE, before=%d after=%d\0A\00", align 1
@.str.22 = private unnamed_addr constant [38 x i8] c"# state %d to %d, before=%d after=%d\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [3 x i8] c"~1\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @map_dcset(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !18
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %.thread, label %.preheader97

.preheader97:                                     ; preds = %bb.b
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !19 ; 2 uses
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %.preheader97
  %i.m = shl nuw i32 %i.k, 1
  %smax = tail call i32 @llvm.smax.i32(i32 %i.m, i32 1)
  %wide.trip.count = zext nneg i32 %smax to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 6 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !18   ; 4 uses
  %i.p = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(10) @.str, i64 noundef 9) #12
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.r = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(9) @.str.1, i64 noundef 8) #12
  %i.s = icmp eq i32 %i.r, 0
  br i1 %i.s, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(10) @.str.2, i64 noundef 9) #12
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(9) @.str.3, i64 noundef 8) #12
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph

bb.g:                                             ; preds = %.lr.ph, %bb.c, %bb.d, %bb.e
  %i.x = trunc nuw nsw i64 %indvars.iv to i32     ; 5 uses
  %i.y = lshr i32 %i.x, 1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !22 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !4
  %i.ab = shl i32 %i.aa, 5
  %i.ac = and i32 %i.ab, 32736                    ; 2 uses
  %i.ad = icmp samesign ult i32 %i.ac, 33
  %i.ae = add nsw i32 %i.ac, -32
  %i.af = lshr exact i32 %i.ae, 3
  %i.ag = add nuw nsw i32 %i.af, 8
  %narrow = select i1 %i.ad, i32 8, i32 %i.ag
  %i.ah = zext nneg i32 %narrow to i64
  %i.ai = tail call noalias ptr @malloc(i64 noundef %i.ah) #13
  %i.aj = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.ai, ptr noundef nonnull %i.z) #11 ; 2 uses
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 88), align 8, !tbaa !22 ; 2 uses
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !4
  %i.am = shl i32 %i.al, 5
  %i.an = and i32 %i.am, 32736                    ; 2 uses
  %i.ao = icmp samesign ult i32 %i.an, 33
  %i.ap = add nsw i32 %i.an, -32
  %i.aq = lshr exact i32 %i.ap, 3
  %i.ar = add nuw nsw i32 %i.aq, 8
  %narrow96 = select i1 %i.ao, i32 8, i32 %i.ar
  %i.as = zext nneg i32 %narrow96 to i64
  %i.at = tail call noalias ptr @malloc(i64 noundef %i.as) #13
  %i.au = tail call ptr (ptr, ptr, ...) @set_copy(ptr noundef %i.at, ptr noundef nonnull %i.ak) #11 ; 2 uses
  %i.av = and i32 %i.x, 2147483646                ; 3 uses
  %i.aw = and i32 %i.x, 30
  %i.ax = shl nuw nsw i32 1, %i.aw                ; 2 uses
  %i.ay = xor i32 %i.ax, -1
  %i.az = lshr i32 %i.x, 5
  %i.ba = add nuw nsw i32 %i.az, 1
  %i.bb = zext nneg i32 %i.ba to i64              ; 3 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bb ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !4
  %i.be = and i32 %i.bd, %i.ay
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !4
  %i.bf = or i32 %i.x, 1                          ; 3 uses
  %i.bg = and i32 %i.bf, 31
  %i.bh = shl nuw i32 1, %i.bg
  %i.bi = freeze i32 %i.bh                        ; 2 uses
  %i.bj = xor i32 %i.bi, -1
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bb ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !4
  %i.bm = and i32 %i.bl, %i.bj
  store i32 %i.bm, ptr %i.bk, align 4, !tbaa !4
  %i.bn = tail call i64 (...) @util_cpu_time() #11
  %i.bo = load ptr, ptr %0, align 8, !tbaa !23
  %i.bp = tail call ptr (ptr, ...) @cube1list(ptr noundef %i.bo) #11
  %i.bq = tail call ptr (ptr, ptr, ...) @cofactor(ptr noundef %i.bp, ptr noundef %i.aj) #11
  call void (ptr, ptr, ptr, ...) @simp_comp(ptr noundef %i.bq, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c) #11
  %i.br = load i32, ptr @trace, align 4, !tbaa !4
  %.not = icmp eq i32 %i.br, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.bt = call i64 (...) @util_cpu_time() #11
  %i.bu = sub nsw i64 %i.bt, %i.bn
  call void (ptr, ptr, i64, ...) @print_trace(ptr noundef %i.bs, ptr noundef nonnull @.str.4, i64 noundef %i.bu) #11
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bv = call i64 (...) @util_cpu_time() #11
  %i.bw = load ptr, ptr %0, align 8, !tbaa !23
  %i.bx = call ptr (ptr, ...) @cube1list(ptr noundef %i.bw) #11
  %i.by = call ptr (ptr, ptr, ...) @cofactor(ptr noundef %i.bx, ptr noundef nonnull %i.au) #11
  call void (ptr, ptr, ptr, ...) @simp_comp(ptr noundef %i.by, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #11
  %i.bz = load i32, ptr @trace, align 4, !tbaa !4
  %.not87 = icmp eq i32 %i.bz, 0
  br i1 %.not87, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ca = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.cb = call i64 (...) @util_cpu_time() #11
  %i.cc = sub nsw i64 %i.cb, %i.bv
  call void (ptr, ptr, i64, ...) @print_trace(ptr noundef %i.ca, ptr noundef nonnull @.str.5, i64 noundef %i.cc) #11
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.cd = call i64 (...) @util_cpu_time() #11
  %i.ce = load ptr, ptr %i.a, align 8, !tbaa !24
  %i.cf = load ptr, ptr %i.d, align 8, !tbaa !24
  %i.cg = call ptr (ptr, ptr, ...) @cv_intersect(ptr noundef %i.ce, ptr noundef %i.cf) #11 ; 2 uses
  %i.ch = load i32, ptr @trace, align 4, !tbaa !4
  %.not88 = icmp eq i32 %i.ch, 0
  br i1 %.not88, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ci = call i64 (...) @util_cpu_time() #11
  %i.cj = sub nsw i64 %i.ci, %i.cd
  call void (ptr, ptr, i64, ...) @print_trace(ptr noundef %i.cg, ptr noundef nonnull @.str.6, i64 noundef %i.cj) #11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ck = call i64 (...) @util_cpu_time() #11
  %i.cl = load ptr, ptr %i.b, align 8, !tbaa !24
  %i.cm = load ptr, ptr %i.c, align 8, !tbaa !24
  %i.cn = call ptr (ptr, ptr, ...) @cv_intersect(ptr noundef %i.cl, ptr noundef %i.cm) #11 ; 2 uses
  %i.co = load i32, ptr @trace, align 4, !tbaa !4
  %.not89 = icmp eq i32 %i.co, 0
  br i1 %.not89, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cp = call i64 (...) @util_cpu_time() #11
  %i.cq = sub nsw i64 %i.cp, %i.ck
  call void (ptr, ptr, i64, ...) @print_trace(ptr noundef %i.cn, ptr noundef nonnull @.str.7, i64 noundef %i.cq) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.cr = call i64 (...) @util_cpu_time() #11
  %i.cs = call ptr (ptr, ptr, ...) @sf_union(ptr noundef %i.cg, ptr noundef %i.cn) #11 ; 2 uses
  %i.ct = load i32, ptr @trace, align 4, !tbaa !4
  %.not90 = icmp eq i32 %i.ct, 0
  br i1 %.not90, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cu = call i64 (...) @util_cpu_time() #11
  %i.cv = sub nsw i64 %i.cu, %i.cr
  call void (ptr, ptr, i64, ...) @print_trace(ptr noundef %i.cs, ptr noundef nonnull @.str.8, i64 noundef %i.cv) #11
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.cw = call i64 (...) @util_cpu_time() #11
  %i.cx = call ptr (ptr, ...) @cube1list(ptr noundef %i.cs) #11
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  call void (ptr, ptr, ptr, ...) @simp_comp(ptr noundef %i.cx, ptr noundef nonnull %i.cy, ptr noundef nonnull %i.e) #11
  %i.cz = load i32, ptr @trace, align 4, !tbaa !4
  %.not91 = icmp eq i32 %i.cz, 0
  br i1 %.not91, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.da = load ptr, ptr %i.cy, align 8, !tbaa !25
  %i.db = call i64 (...) @util_cpu_time() #11
  %i.dc = sub nsw i64 %i.db, %i.cw
  call void (ptr, ptr, i64, ...) @print_trace(ptr noundef %i.da, ptr noundef nonnull @.str.9, i64 noundef %i.dc) #11
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.dd = call i64 (...) @util_cpu_time() #11
  %i.de = load ptr, ptr %0, align 8, !tbaa !23
  %i.df = load ptr, ptr %i.e, align 8, !tbaa !24
  %i.dg = call ptr (ptr, ptr, ...) @cv_intersect(ptr noundef %i.de, ptr noundef %i.df) #11
  %i.dh = load i32, ptr @trace, align 4, !tbaa !4
  %.not92 = icmp eq i32 %i.dh, 0
  br i1 %.not92, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.di = load ptr, ptr %0, align 8, !tbaa !23
  %i.dj = call i64 (...) @util_cpu_time() #11
  %i.dk = sub nsw i64 %i.dj, %i.dd
  call void (ptr, ptr, i64, ...) @print_trace(ptr noundef %i.di, ptr noundef nonnull @.str.10, i64 noundef %i.dk) #11
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.dl = load ptr, ptr %0, align 8, !tbaa !23
  call void (ptr, ...) @sf_free(ptr noundef %i.dl) #11
  store ptr %i.dg, ptr %0, align 8, !tbaa !23
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !24
  call void (ptr, ...) @sf_free(ptr noundef %i.dm) #11
  %i.dn = load ptr, ptr %i.b, align 8, !tbaa !24
  call void (ptr, ...) @sf_free(ptr noundef %i.dn) #11
  %i.do = load ptr, ptr %i.c, align 8, !tbaa !24
  call void (ptr, ...) @sf_free(ptr noundef %i.do) #11
  %i.dp = load ptr, ptr %i.d, align 8, !tbaa !24
  call void (ptr, ...) @sf_free(ptr noundef %i.dp) #11
  %i.dq = load ptr, ptr %i.e, align 8, !tbaa !24
  call void (ptr, ...) @sf_free(ptr noundef %i.dq) #11
  %i.dr = load ptr, ptr %0, align 8, !tbaa !23
  %i.ds = call ptr (ptr, ...) @sf_active(ptr noundef %i.dr) #11 ; 0 uses
  %i.dt = load ptr, ptr %0, align 8, !tbaa !23    ; 5 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !26 ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 12
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !28
  %i.dy = load i32, ptr %i.dt, align 8, !tbaa !29 ; 2 uses
  %i.dz = mul nsw i32 %i.dy, %i.dx                ; 2 uses
  %i.ea = sext i32 %i.dz to i64
  %.idx = shl nsw i64 %i.ea, 2
  %i.eb = getelementptr inbounds i8, ptr %i.dv, i64 %.idx
  %i.ec = icmp sgt i32 %i.dz, 0
  br i1 %i.ec, label %.lr.ph101, label %._crit_edge

.lr.ph101:                                        ; preds = %bb.u
  %i.ed = or i32 %i.bi, %i.ax                     ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph101, %bb.x
  %i.ee = phi i32 [ %i.dy, %.lr.ph101 ], [ %i.ek, %bb.x ]
  %.084100 = phi ptr [ %i.dv, %.lr.ph101 ], [ %i.em, %bb.x ] ; 4 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.084100, i64 %i.bb
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !4
  %i.eh = and i32 %i.eg, %i.ed
  %or.cond.not = icmp eq i32 %i.eh, %i.ed
  br i1 %or.cond.not, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ei = load i32, ptr %.084100, align 4, !tbaa !4
  %i.ej = and i32 %i.ei, -8193
  store i32 %i.ej, ptr %.084100, align 4, !tbaa !4
  %.pre = load i32, ptr %i.dt, align 8, !tbaa !29
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ek = phi i32 [ %i.ee, %bb.v ], [ %.pre, %bb.w ] ; 2 uses
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds [4 x i8], ptr %.084100, i64 %i.el ; 2 uses
  %i.en = icmp ult ptr %i.em, %i.eb
  br i1 %i.en, label %bb.v, label %._crit_edge

._crit_edge:                                      ; preds = %bb.x, %bb.u
  %i.eo = call ptr (ptr, ...) @sf_inactive(ptr noundef nonnull %i.dt) #11
  store ptr %i.eo, ptr %0, align 8, !tbaa !23
  call void (...) @setdown_cube() #11
  %i.ep = add nuw nsw i32 %i.av, 2
  %i.eq = load i32, ptr @cube, align 8, !tbaa !30 ; 2 uses
  %i.er = icmp slt i32 %i.ep, %i.eq
  br i1 %i.er, label %.lr.ph104, label %.preheader

.lr.ph104:                                        ; preds = %._crit_edge
  %i.es = load ptr, ptr %i.f, align 8, !tbaa !8   ; 2 uses
  %i.et = and i64 %indvars.iv, 9223372036854775806 ; 2 uses
  %i.eu = add nuw nsw i64 %i.et, 2                ; 3 uses
  %i.ev = zext nneg i32 %i.eq to i64              ; 2 uses
  %i.ew = add nuw nsw i64 %i.et, 3
  %umax = call i64 @llvm.umax.i64(i64 %i.ew, i64 %i.ev)
  %1 = and i64 %indvars.iv, 9223372036854775806
  %i.ex = sub nsw i64 %umax, %1
  %2 = add i64 %i.ex, -2                          ; 3 uses
  %min.iters.check = icmp ult i64 %2, 4
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph104
  %n.vec = and i64 %2, -4                         ; 3 uses
  %i.ey = add i64 %i.eu, %n.vec
  %i.ez = getelementptr [8 x i8], ptr %i.es, i64 %i.eu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fa = getelementptr [8 x i8], ptr %i.ez, i64 %index ; 4 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %wide.load = load <2 x ptr>, ptr %i.fa, align 8, !tbaa !18
  %wide.load135 = load <2 x ptr>, ptr %i.fb, align 8, !tbaa !18
  %i.fc = getelementptr i8, ptr %i.fa, i64 -16
  store <2 x ptr> %wide.load, ptr %i.fc, align 8, !tbaa !18
  store <2 x ptr> %wide.load135, ptr %i.fa, align 8, !tbaa !18
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fd = icmp eq i64 %index.next, %n.vec
  br i1 %i.fd, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %2, %n.vec
  br i1 %cmp.n, label %.preheader, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph104, %middle.block
  %indvars.iv117.ph = phi i64 [ %i.eu, %.lr.ph104 ], [ %i.ey, %middle.block ]
  br label %scalar.ph

.preheader:                                       ; preds = %scalar.ph, %middle.block, %._crit_edge
  %.2105 = add nuw nsw i32 %i.y, 1
  %i.fe = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !34 ; 2 uses
  %i.ff = icmp slt i32 %.2105, %i.fe
  br i1 %i.ff, label %.lr.ph108, label %._crit_edge109

.lr.ph108:                                        ; preds = %.preheader
  %i.fg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !35 ; 2 uses
  %i.fh = lshr i64 %indvars.iv, 1                 ; 2 uses
  %i.fi = add nuw nsw i64 %i.fh, 1
  br label %bb.y

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv117 = phi i64 [ %indvars.iv.next118, %scalar.ph ], [ %indvars.iv117.ph, %scalar.ph.preheader ] ; 2 uses
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.es, i64 %indvars.iv117 ; 2 uses
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !18
  %i.fl = getelementptr i8, ptr %i.fj, i64 -16
  store ptr %i.fk, ptr %i.fl, align 8, !tbaa !18
  %indvars.iv.next118 = add nuw nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.fm = icmp samesign ult i64 %indvars.iv.next118, %i.ev
  br i1 %i.fm, label %scalar.ph, label %.preheader, !llvm.loop !36

bb.y:                                             ; preds = %.lr.ph108, %bb.y
  %indvars.iv123 = phi i64 [ %i.fh, %.lr.ph108 ], [ %indvars.iv.next124, %bb.y ] ; 2 uses
  %indvars.iv121 = phi i64 [ %i.fi, %.lr.ph108 ], [ %indvars.iv.next122, %bb.y ] ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv121
  %i.fo = load i32, ptr %i.fn, align 4, !tbaa !4
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fg, i64 %indvars.iv123
  store i32 %i.fo, ptr %i.fp, align 4, !tbaa !4
  %indvars.iv.next122 = add nuw nsw i64 %indvars.iv121, 1 ; 2 uses
  %i.fq = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !34 ; 2 uses
  %i.fr = sext i32 %i.fq to i64
  %i.fs = icmp slt i64 %indvars.iv.next122, %i.fr
  %indvars.iv.next124 = add nuw nsw i64 %indvars.iv123, 1
  br i1 %i.fs, label %bb.y, label %._crit_edge109

._crit_edge109:                                   ; preds = %bb.y, %.preheader
  %.lcssa = phi i32 [ %i.fe, %.preheader ], [ %i.fq, %bb.y ]
  %i.ft = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !19
  %i.fu = add nsw i32 %i.ft, -1
  store i32 %i.fu, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !19
  %i.fv = add nsw i32 %.lcssa, -1
  store i32 %i.fv, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !34
  call void (...) @cube_setup() #11
  %i.fw = load ptr, ptr %0, align 8, !tbaa !23
  %i.fx = call ptr (ptr, i32, i32, ...) @sf_delc(ptr noundef %i.fw, i32 noundef %i.av, i32 noundef %i.bf) #11
  store ptr %i.fx, ptr %0, align 8, !tbaa !23
  %i.fy = load ptr, ptr %i.cy, align 8, !tbaa !25
  %i.fz = call ptr (ptr, i32, i32, ...) @sf_delc(ptr noundef %i.fy, i32 noundef %i.av, i32 noundef %i.bf) #11
  store ptr %i.fz, ptr %i.cy, align 8, !tbaa !25
  br label %.thread

.thread:                                          ; preds = %bb.f, %.preheader97, %bb.a, %bb.b, %._crit_edge109
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

declare ptr @set_copy(...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

declare i64 @util_cpu_time(...) local_unnamed_addr #3

declare void @simp_comp(...) local_unnamed_addr #3

declare ptr @cofactor(...) local_unnamed_addr #3

declare ptr @cube1list(...) local_unnamed_addr #3

declare void @print_trace(...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare ptr @cv_intersect(...) local_unnamed_addr #3

declare ptr @sf_union(...) local_unnamed_addr #3

declare void @sf_free(...) local_unnamed_addr #3

declare ptr @sf_active(...) local_unnamed_addr #3

declare ptr @sf_inactive(...) local_unnamed_addr #3

declare void @setdown_cube(...) local_unnamed_addr #3

declare void @cube_setup(...) local_unnamed_addr #3

declare ptr @sf_delc(...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local i32 @map_output_symbolic(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !28
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8, !tbaa !23
  tail call void (ptr, ...) @sf_free(ptr noundef %i.h) #11
  %i.i = load ptr, ptr %i.c, align 8, !tbaa !25
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !37
  %i.l = tail call ptr (ptr, ptr, ...) @cube2list(ptr noundef %i.i, ptr noundef %i.k) #11
  %i.m = tail call ptr (ptr, ...) @complement(ptr noundef %i.l) #11
  store ptr %i.m, ptr %0, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %.090114 = load ptr, ptr %i.n, align 8, !tbaa !38 ; 2 uses
  %.not115 = icmp eq ptr %.090114, null
  br i1 %.not115, label %._crit_edge126, label %.preheader110

.preheader110:                                    ; preds = %bb.c, %._crit_edge
  %.090117 = phi ptr [ %.090, %._crit_edge ], [ %.090114, %bb.c ] ; 3 uses
  %.089116 = phi i32 [ %i.aa, %._crit_edge ], [ 0, %bb.c ]
  %.092111 = load ptr, ptr %.090117, align 8, !tbaa !39 ; 2 uses
  %.not105112 = icmp eq ptr %.092111, null
  br i1 %.not105112, label %._crit_edge, label %.lr.ph

.preheader109:                                    ; preds = %._crit_edge
  %.1123.pre = load ptr, ptr %i.n, align 8, !tbaa !38 ; 2 uses
  %.not98124 = icmp eq ptr %.1123.pre, null
  br i1 %.not98124, label %._crit_edge126, label %.preheader108

.lr.ph:                                           ; preds = %.preheader110, %bb.f
  %.092113 = phi ptr [ %.092, %bb.f ], [ %.092111, %.preheader110 ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.092113, i64 4
  %i.p = load i32, ptr %i.o, align 4, !tbaa !41   ; 2 uses
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !35
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !43
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %i.r, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4, !tbaa !4
  %.not106 = icmp slt i32 %i.p, %i.v
  br i1 %.not106, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.11) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.092113, i64 8
  %.092 = load ptr, ptr %i.w, align 8, !tbaa !39  ; 2 uses
  %.not105 = icmp eq ptr %.092, null
  br i1 %.not105, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.f, %.preheader110
  %i.x = getelementptr inbounds nuw i8, ptr %.090117, i64 8
  %i.y = load i32, ptr %i.x, align 8, !tbaa !44
  %i.z = shl nuw i32 1, %i.y
  %i.aa = add nsw i32 %i.z, %.089116              ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.090117, i64 32
  %.090 = load ptr, ptr %i.ab, align 8, !tbaa !38 ; 2 uses
  %.not = icmp eq ptr %.090, null
  br i1 %.not, label %.preheader109, label %.preheader110

.preheader108:                                    ; preds = %.preheader109, %._crit_edge122
  %.1125 = phi ptr [ %.1, %._crit_edge122 ], [ %.1123.pre, %.preheader109 ] ; 2 uses
  %.193118 = load ptr, ptr %.1125, align 8, !tbaa !39 ; 2 uses
  %.not104119 = icmp eq ptr %.193118, null
  br i1 %.not104119, label %._crit_edge122, label %.lr.ph121

.lr.ph121:                                        ; preds = %.preheader108, %.lr.ph121
  %.193120 = phi ptr [ %.193, %.lr.ph121 ], [ %.193118, %.preheader108 ] ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.193120, i64 4 ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !41
  %i.ae = add nsw i32 %i.ad, %i.aa
  store i32 %i.ae, ptr %i.ac, align 4, !tbaa !41
  %i.af = getelementptr inbounds nuw i8, ptr %.193120, i64 8
  %.193 = load ptr, ptr %i.af, align 8, !tbaa !39 ; 2 uses
end_hunk_0
