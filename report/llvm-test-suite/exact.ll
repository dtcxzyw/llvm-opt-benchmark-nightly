Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/exact?download=true
inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }

@debug = external local_unnamed_addr global i32, align 4
@trace = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"PRIMES     \00", align 1, !guid !8
@.str.1 = private unnamed_addr constant [12 x i8] c"ESSENTIALS \00", align 1, !guid !9
@.str.2 = private unnamed_addr constant [12 x i8] c"PI-TABLE   \00", align 1, !guid !10
@cube = external local_unnamed_addr global %struct.cube_struct, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"MINCOV     \00", align 1, !guid !11
@skip_make_sparse = external local_unnamed_addr global i32, align 4
@filename = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1, !guid !12
@stdout = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"%s.primes\00", align 1, !guid !13
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1, !guid !14
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"espresso: Unable to open %s\0A\00", align 1, !guid !15
@.str.8 = private unnamed_addr constant [6 x i8] c"%s.pi\00", align 1, !guid !16
@.str.9 = private unnamed_addr constant [24 x i8] c"# Essential primes are\0A\00", align 1, !guid !17
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !guid !18
@.str.11 = private unnamed_addr constant [32 x i8] c"# Totally redundant primes are\0A\00", align 1, !guid !19
@.str.12 = private unnamed_addr constant [34 x i8] c"# Partially redundant primes are\0A\00", align 1, !guid !20

; Function Attrs: nounwind uwtable
define dso_local ptr @minimize_exact(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !guid !21 {
bb.a:
  %i.a = tail call fastcc ptr @do_minimize(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @minimize_exact_literals(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 !guid !22 {
bb.a:
  %i.a = tail call fastcc ptr @do_minimize(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @do_minimize(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 !guid !23 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.d = load i32, ptr @debug, align 4, !tbaa !7  ; 4 uses
  %i.e = and i32 %i.d, 1024
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = or i32 %i.d, 2080                        ; 2 uses
  store i32 %i.f, ptr @debug, align 4, !tbaa !7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i32 [ %i.f, %bb.b ], [ %i.d, %bb.a ]
  %i.h = lshr i32 %i.g, 9
  %i.i = and i32 %i.h, 4
  %.not59 = icmp eq i32 %3, 0
  %i.j = zext i1 %.not59 to i32
  %i.k = tail call i64 (...) @util_cpu_time() #8
  %i.l = tail call ptr (ptr, ptr, ...) @cube2list(ptr noundef %0, ptr noundef %1) #8
  %i.m = tail call ptr (ptr, ...) @primes_consensus(ptr noundef %i.l) #8 ; 7 uses
  %i.n = load i32, ptr @trace, align 4, !tbaa !7
  %.not60 = icmp eq i32 %i.n, 0
  br i1 %.not60, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = tail call i64 (...) @util_cpu_time() #8
  %i.p = sub nsw i64 %i.o, %i.k
  tail call void (ptr, ptr, i64, ...) @print_trace(ptr noundef %i.m, ptr noundef nonnull @.str, i64 noundef %i.p) #8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = tail call i64 (...) @util_cpu_time() #8
  call void (ptr, ptr, ptr, ptr, ptr, ...) @irred_split_cover(ptr noundef %i.m, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #8
  %i.r = load i32, ptr @trace, align 4, !tbaa !7
  %.not61 = icmp eq i32 %i.r, 0
  br i1 %.not61, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.t = call i64 (...) @util_cpu_time() #8
  %i.u = sub nsw i64 %i.t, %i.q
  call void (ptr, ptr, i64, ...) @print_trace(ptr noundef %i.s, ptr noundef nonnull @.str.1, i64 noundef %i.u) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = call i64 (...) @util_cpu_time() #8
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !26
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.y = call ptr (ptr, ptr, ptr, ...) @irred_derive_table(ptr noundef %1, ptr noundef %i.w, ptr noundef %i.x) #8 ; 3 uses
  %i.z = load i32, ptr @trace, align 4, !tbaa !7
  %.not62 = icmp eq i32 %i.z, 0
  br i1 %.not62, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.ab = call i64 (...) @util_cpu_time() #8
  %i.ac = sub nsw i64 %i.ab, %i.v
  call void (ptr, ptr, i64, ...) @print_trace(ptr noundef %i.aa, ptr noundef nonnull @.str.2, i64 noundef %i.ac) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not63 = icmp eq i32 %4, 0
  br i1 %.not63, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !29
  %i.af = sext i32 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 2
  %i.ah = call noalias ptr @malloc(i64 noundef %i.ag) #9 ; 3 uses
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !26  ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !30 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !29
  %i.an = load i32, ptr %i.ai, align 8, !tbaa !31
  %i.ao = mul nsw i32 %i.an, %i.am                ; 2 uses
  %5 = sext i32 %i.ao to i64
  %.idx = shl nuw nsw i64 %5, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx
  %i.aq = icmp sgt i32 %i.ao, 0
  br i1 %i.aq, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %.05468 = phi ptr [ %i.bb, %.lr.ph ], [ %i.ak, %bb.j ] ; 3 uses
  %i.ar = load i32, ptr @cube, align 8, !tbaa !35
  %i.as = call i32 (ptr, ...) @set_ord(ptr noundef %.05468) #8
  %i.at = sub nsw i32 %i.ar, %i.as
  %i.au = load i32, ptr %.05468, align 4, !tbaa !7
  %i.av = lshr i32 %i.au, 16
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.aw
  store i32 %i.at, ptr %i.ax, align 4, !tbaa !7
  %i.ay = load ptr, ptr %i.c, align 8, !tbaa !26
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !31
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [4 x i8], ptr %.05468, i64 %i.ba ; 2 uses
  %i.bc = icmp ult ptr %i.bb, %i.ap
  br i1 %i.bc, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.j, %bb.i
  %.053 = phi ptr [ null, %bb.i ], [ %i.ah, %bb.j ], [ %i.ah, %.lr.ph ] ; 3 uses
  %i.bd = call i64 (...) @util_cpu_time() #8
  %i.be = call ptr (ptr, ptr, i32, i32, ...) @sm_minimum_cover(ptr noundef %i.y, ptr noundef %.053, i32 noundef %i.j, i32 noundef %i.i) #8 ; 2 uses
  %i.bf = load i32, ptr @trace, align 4, !tbaa !7
  %.not64 = icmp eq i32 %i.bf, 0
  br i1 %.not64, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.bg = call i64 (...) @util_cpu_time() #8
  %i.bh = sub nsw i64 %i.bg, %i.bd
  call void (ptr, ptr, i64, ...) @print_trace(ptr noundef %i.m, ptr noundef nonnull @.str.3, i64 noundef %i.bh) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.not65 = icmp eq ptr %.053, null
  br i1 %.not65, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %.053) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bi = load i32, ptr @debug, align 4, !tbaa !7
  %i.bj = and i32 %i.bi, 1024
  %.not66 = icmp eq i32 %i.bj, 0
  br i1 %.not66, label %dump_irredundant.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = load ptr, ptr %i.a, align 8, !tbaa !26  ; 4 uses
  %i.bl = load ptr, ptr %i.b, align 8, !tbaa !26  ; 4 uses
  %i.bm = load ptr, ptr %i.c, align 8, !tbaa !26  ; 4 uses
  %i.bn = load ptr, ptr @filename, align 8, !tbaa !37 ; 4 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bn, ptr noundef nonnull dereferenceable(8) @.str.4) #10
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.br = load ptr, ptr @stdout, align 8, !tbaa !39 ; 2 uses
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.bs = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bn) #10
  %i.bt = add i64 %i.bs, 20
  %i.bu = call noalias ptr @malloc(i64 noundef %i.bt) #9 ; 7 uses
  %i.bv = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bu, ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull %i.bn) #8 ; 0 uses
  %i.bw = call noalias ptr @fopen(ptr noundef nonnull %i.bu, ptr noundef nonnull @.str.6) ; 2 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.by = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.bz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.by, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.bu) #11 ; 0 uses
  %i.ca = load ptr, ptr @stdout, align 8, !tbaa !39
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.051.i = phi ptr [ %i.ca, %bb.s ], [ %i.bw, %bb.r ]
  %i.cb = load ptr, ptr @filename, align 8, !tbaa !37
  %i.cc = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bu, ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %i.cb) #8 ; 0 uses
  %i.cd = call noalias ptr @fopen(ptr noundef nonnull %i.bu, ptr noundef nonnull @.str.6) ; 2 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cf = load ptr, ptr @stderr, align 8, !tbaa !39
  %i.cg = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cf, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.bu) #11 ; 0 uses
  %i.ch = load ptr, ptr @stdout, align 8, !tbaa !39
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.053.i = phi ptr [ %i.ch, %bb.u ], [ %i.cd, %bb.t ]
  call void @free(ptr noundef nonnull %i.bu) #8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.q
  %.154.i = phi ptr [ %i.br, %bb.q ], [ %.053.i, %bb.v ] ; 3 uses
  %.152.i = phi ptr [ %i.br, %bb.q ], [ %.051.i, %bb.v ] ; 9 uses
  %i.ci = call ptr (...) @new_PLA() #8            ; 3 uses
  %i.cj = call i32 (ptr, ...) @PLA_labels(ptr noundef %i.ci) #8 ; 0 uses
  call void (ptr, ptr, i32, ...) @fpr_header(ptr noundef %.152.i, ptr noundef %i.ci, i32 noundef 1) #8
  call void (ptr, ...) @free_PLA(ptr noundef %i.ci) #8
  %fwrite.i = call i64 @fwrite(ptr nonnull @.str.9, i64 23, i64 1, ptr %.152.i) ; 0 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !30 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !29
  %i.co = load i32, ptr %i.bk, align 8, !tbaa !31
  %i.cp = mul nsw i32 %i.co, %i.cn                ; 2 uses
  %6 = sext i32 %i.cp to i64
  %.idx.i = shl nuw nsw i64 %6, 2
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx.i
  %i.cr = icmp sgt i32 %i.cp, 0
  br i1 %i.cr, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.i
  %.062.i = phi ptr [ %i.cw, %.lr.ph.i ], [ %i.cl, %bb.w ] ; 2 uses
  %i.cs = call ptr (ptr, ...) @pc1(ptr noundef %.062.i) #8
  %i.ct = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.152.i, ptr noundef nonnull @.str.10, ptr noundef %i.cs) #8 ; 0 uses
  %i.cu = load i32, ptr %i.bk, align 8, !tbaa !31
  %i.cv = sext i32 %i.cu to i64
  %i.cw = getelementptr inbounds [4 x i8], ptr %.062.i, i64 %i.cv ; 2 uses
  %i.cx = icmp ult ptr %i.cw, %i.cq
  br i1 %i.cx, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.w
  %fwrite59.i = call i64 @fwrite(ptr nonnull @.str.11, i64 31, i64 1, ptr %.152.i) ; 0 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !30 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.db = load i32, ptr %i.da, align 4, !tbaa !29
  %i.dc = load i32, ptr %i.bl, align 8, !tbaa !31
  %i.dd = mul nsw i32 %i.dc, %i.db                ; 2 uses
  %7 = sext i32 %i.dd to i64
  %.idx71.i = shl nuw nsw i64 %7, 2
  %i.de = getelementptr inbounds nuw i8, ptr %i.cz, i64 %.idx71.i
  %i.df = icmp sgt i32 %i.dd, 0
  br i1 %i.df, label %.lr.ph65.i, label %._crit_edge66.i

.lr.ph65.i:                                       ; preds = %._crit_edge.i, %.lr.ph65.i
  %.163.i = phi ptr [ %i.dk, %.lr.ph65.i ], [ %i.cz, %._crit_edge.i ] ; 2 uses
  %i.dg = call ptr (ptr, ...) @pc1(ptr noundef %.163.i) #8
  %i.dh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.152.i, ptr noundef nonnull @.str.10, ptr noundef %i.dg) #8 ; 0 uses
  %i.di = load i32, ptr %i.bl, align 8, !tbaa !31
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %.163.i, i64 %i.dj ; 2 uses
  %i.dl = icmp ult ptr %i.dk, %i.de
  br i1 %i.dl, label %.lr.ph65.i, label %._crit_edge66.i

._crit_edge66.i:                                  ; preds = %.lr.ph65.i, %._crit_edge.i
  %fwrite60.i = call i64 @fwrite(ptr nonnull @.str.12, i64 33, i64 1, ptr %.152.i) ; 0 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !30 ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !29
  %i.dq = load i32, ptr %i.bm, align 8, !tbaa !31
  %i.dr = mul nsw i32 %i.dq, %i.dp                ; 2 uses
  %8 = sext i32 %i.dr to i64
  %.idx72.i = shl nuw nsw i64 %8, 2
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.idx72.i
  %i.dt = icmp sgt i32 %i.dr, 0
  br i1 %i.dt, label %.lr.ph69.i, label %._crit_edge70.i

.lr.ph69.i:                                       ; preds = %._crit_edge66.i, %.lr.ph69.i
  %.267.i = phi ptr [ %i.dy, %.lr.ph69.i ], [ %i.dn, %._crit_edge66.i ] ; 2 uses
  %i.du = call ptr (ptr, ...) @pc1(ptr noundef %.267.i) #8
  %i.dv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.152.i, ptr noundef nonnull @.str.10, ptr noundef %i.du) #8 ; 0 uses
  %i.dw = load i32, ptr %i.bm, align 8, !tbaa !31
  %i.dx = sext i32 %i.dw to i64
  %i.dy = getelementptr inbounds [4 x i8], ptr %.267.i, i64 %i.dx ; 2 uses
  %i.dz = icmp ult ptr %i.dy, %i.ds
  br i1 %i.dz, label %.lr.ph69.i, label %._crit_edge70.i

._crit_edge70.i:                                  ; preds = %.lr.ph69.i, %._crit_edge66.i
  %i.ea = load ptr, ptr @stdout, align 8, !tbaa !39
  %.not.i = icmp eq ptr %.152.i, %i.ea
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge70.i
  %i.eb = call i32 @fclose(ptr noundef %.152.i)   ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge70.i
  call void (ptr, ptr, ...) @sm_write(ptr noundef %.154.i, ptr noundef %i.y) #8
  %i.ec = load ptr, ptr @stdout, align 8, !tbaa !39
  %.not61.i = icmp eq ptr %.154.i, %i.ec
  br i1 %.not61.i, label %dump_irredundant.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ed = call i32 @fclose(ptr noundef %.154.i)   ; 0 uses
  br label %dump_irredundant.exit

dump_irredundant.exit:                            ; preds = %bb.z, %bb.y, %bb.n
  %i.ee = load i32, ptr @cube, align 8, !tbaa !35
  %i.ef = call ptr (i32, i32, ...) @sf_new(i32 noundef 100, i32 noundef %i.ee) #8 ; 2 uses
  %i.eg = load ptr, ptr %i.a, align 8, !tbaa !26  ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !30 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 12
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !29
  %i.el = load i32, ptr %i.eg, align 8, !tbaa !31
  %i.em = mul nsw i32 %i.el, %i.ek                ; 2 uses
  %9 = sext i32 %i.em to i64
  %.idx80 = shl nuw nsw i64 %9, 2
  %i.en = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.idx80
  %i.eo = icmp sgt i32 %i.em, 0
  br i1 %i.eo, label %.lr.ph71, label %._crit_edge

.lr.ph71:                                         ; preds = %dump_irredundant.exit, %.lr.ph71
  %.170 = phi ptr [ %i.et, %.lr.ph71 ], [ %i.ei, %dump_irredundant.exit ] ; 2 uses
  %.05569 = phi ptr [ %i.ep, %.lr.ph71 ], [ %i.ef, %dump_irredundant.exit ]
  %i.ep = call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %.05569, ptr noundef %.170) #8 ; 2 uses
  %i.eq = load ptr, ptr %i.a, align 8, !tbaa !26  ; 2 uses
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !31
  %i.es = sext i32 %i.er to i64
  %i.et = getelementptr inbounds [4 x i8], ptr %.170, i64 %i.es ; 2 uses
  %i.eu = icmp ult ptr %i.et, %i.en
  br i1 %i.eu, label %.lr.ph71, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph71, %dump_irredundant.exit
  %i.ev = phi ptr [ %i.eg, %dump_irredundant.exit ], [ %i.eq, %.lr.ph71 ]
  %.055.lcssa = phi ptr [ %i.ef, %dump_irredundant.exit ], [ %i.ep, %.lr.ph71 ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  %.072 = load ptr, ptr %i.ew, align 8, !tbaa !41 ; 2 uses
  %.not6773 = icmp eq ptr %.072, null
  br i1 %.not6773, label %._crit_edge78, label %.lr.ph77

.lr.ph77:                                         ; preds = %._crit_edge
  %i.ex = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph77, %bb.aa
  %.075 = phi ptr [ %.072, %.lr.ph77 ], [ %.0, %bb.aa ] ; 2 uses
  %.15674 = phi ptr [ %.055.lcssa, %.lr.ph77 ], [ %i.ff, %bb.aa ]
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !30
  %i.ez = load i32, ptr %i.m, align 8, !tbaa !31
  %i.fa = getelementptr inbounds nuw i8, ptr %.075, i64 4
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !43
  %i.fc = mul nsw i32 %i.fb, %i.ez
  %i.fd = sext i32 %i.fc to i64
  %i.fe = getelementptr inbounds [4 x i8], ptr %i.ey, i64 %i.fd
  %i.ff = call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %.15674, ptr noundef %i.fe) #8 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.075, i64 24
  %.0 = load ptr, ptr %i.fg, align 8, !tbaa !41   ; 2 uses
  %.not67 = icmp eq ptr %.0, null
  br i1 %.not67, label %._crit_edge78.loopexit, label %bb.aa

._crit_edge78.loopexit:                           ; preds = %bb.aa
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !26
  br label %._crit_edge78

._crit_edge78:                                    ; preds = %._crit_edge78.loopexit, %._crit_edge
  %i.fh = phi ptr [ %i.ev, %._crit_edge ], [ %.pre, %._crit_edge78.loopexit ]
  %.156.lcssa = phi ptr [ %.055.lcssa, %._crit_edge ], [ %i.ff, %._crit_edge78.loopexit ] ; 2 uses
  call void (ptr, ...) @sf_free(ptr noundef %i.fh) #8
  %i.fi = load ptr, ptr %i.b, align 8, !tbaa !26
  call void (ptr, ...) @sf_free(ptr noundef %i.fi) #8
  %i.fj = load ptr, ptr %i.c, align 8, !tbaa !26
  call void (ptr, ...) @sf_free(ptr noundef %i.fj) #8
  call void (ptr, ...) @sm_free(ptr noundef %i.y) #8
  call void (ptr, ...) @sm_row_free(ptr noundef nonnull %i.be) #8
  call void (ptr, ...) @sf_free(ptr noundef %i.m) #8
  %i.fk = load i32, ptr @debug, align 4, !tbaa !7
  %i.fl = and i32 %i.fk, -10273
  store i32 %i.fl, ptr @debug, align 4, !tbaa !7
  %i.fm = load i32, ptr @skip_make_sparse, align 4, !tbaa !7
  %i.fn = icmp eq i32 %i.fm, 0
  %i.fo = icmp ne ptr %2, null
  %or.cond = and i1 %i.fo, %i.fn
  br i1 %or.cond, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge78
  %i.fp = call ptr (ptr, ptr, ptr, ...) @make_sparse(ptr noundef %.156.lcssa, ptr noundef %1, ptr noundef nonnull %2) #8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge78
  %.2 = phi ptr [ %i.fp, %bb.ab ], [ %.156.lcssa, %._crit_edge78 ]
  store i32 %i.d, ptr @debug, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #8
  ret ptr %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i64 @util_cpu_time(...) local_unnamed_addr #2

declare ptr @primes_consensus(...) local_unnamed_addr #2

declare ptr @cube2list(...) local_unnamed_addr #2

declare void @print_trace(...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @irred_split_cover(...) local_unnamed_addr #2

declare ptr @irred_derive_table(...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

declare i32 @set_ord(...) local_unnamed_addr #2

declare ptr @sm_minimum_cover(...) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #4

declare ptr @sf_new(...) local_unnamed_addr #2

declare ptr @sf_addset(...) local_unnamed_addr #2

declare void @sf_free(...) local_unnamed_addr #2

declare void @sm_free(...) local_unnamed_addr #2

declare void @sm_row_free(...) local_unnamed_addr #2

declare ptr @make_sparse(...) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noalias noundef ptr @fopen(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #6

declare ptr @new_PLA(...) local_unnamed_addr #2

declare i32 @PLA_labels(...) local_unnamed_addr #2

declare void @fpr_header(...) local_unnamed_addr #2

declare void @free_PLA(...) local_unnamed_addr #2

declare ptr @pc1(...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

declare void @sm_write(...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #7

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{i64 4594863933537856138}
!9 = !{i64 3738665546038954924}
!10 = !{i64 -6461285444026831292}
!11 = !{i64 -8330225379162030791}
!12 = !{i64 7449809122724879393}
!13 = !{i64 2461418138811025780}
!14 = !{i64 2514375253990316827}
!15 = !{i64 -7491450992423503925}
!16 = !{i64 3665135588353059456}
!17 = !{i64 -145158890209921289}
!18 = !{i64 2024623715749927318}
!19 = !{i64 -1696705542664667732}
!20 = !{i64 -4891402053216420865}
!21 = !{i64 -510981218705530453}
!22 = !{i64 675600747464352119}
!23 = !{i64 -267149297479933477}
!24 = !{!"any pointer", !5, i64 0}
!25 = !{!"p1 _ZTS10set_family", !24, i64 0}
!26 = !{!25, !25, i64 0}
!27 = !{!"p1 int", !24, i64 0}
!28 = !{!"set_family", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !27, i64 24, !25, i64 32}
end_hunk_0
