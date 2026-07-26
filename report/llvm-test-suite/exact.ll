inline.NumInlined: 1
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }

@debug = external local_unnamed_addr global i32, align 4
@trace = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [12 x i8] c"PRIMES     \00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"ESSENTIALS \00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"PI-TABLE   \00", align 1
@cube = external local_unnamed_addr global %struct.cube_struct, align 8
@.str.3 = private unnamed_addr constant [12 x i8] c"MINCOV     \00", align 1
@skip_make_sparse = external local_unnamed_addr global i32, align 4
@filename = external local_unnamed_addr global ptr, align 8
@.str.4 = private unnamed_addr constant [8 x i8] c"(stdin)\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [10 x i8] c"%s.primes\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"espresso: Unable to open %s\0A\00", align 1
@.str.8 = private unnamed_addr constant [6 x i8] c"%s.pi\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"# Essential primes are\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [32 x i8] c"# Totally redundant primes are\0A\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"# Partially redundant primes are\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @minimize_exact(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @do_minimize(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 0)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define dso_local ptr @minimize_exact_literals(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc ptr @do_minimize(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef 1)
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @do_minimize(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #8
  %i.d = load i32, ptr @debug, align 4, !tbaa !4  ; 4 uses
  %i.e = and i32 %i.d, 1024
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = or i32 %i.d, 2080                        ; 2 uses
  store i32 %i.f, ptr @debug, align 4, !tbaa !4
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
  %i.n = load i32, ptr @trace, align 4, !tbaa !4
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
  %i.r = load i32, ptr @trace, align 4, !tbaa !4
  %.not61 = icmp eq i32 %i.r, 0
  br i1 %.not61, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.t = call i64 (...) @util_cpu_time() #8
  %i.u = sub nsw i64 %i.t, %i.q
  call void (ptr, ptr, i64, ...) @print_trace(ptr noundef %i.s, ptr noundef nonnull @.str.1, i64 noundef %i.u) #8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.v = call i64 (...) @util_cpu_time() #8
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !8
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.y = call ptr (ptr, ptr, ptr, ...) @irred_derive_table(ptr noundef %1, ptr noundef %i.w, ptr noundef %i.x) #8 ; 3 uses
  %i.z = load i32, ptr @trace, align 4, !tbaa !4
  %.not62 = icmp eq i32 %i.z, 0
  br i1 %.not62, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.ab = call i64 (...) @util_cpu_time() #8
  %i.ac = sub nsw i64 %i.ab, %i.v
  call void (ptr, ptr, i64, ...) @print_trace(ptr noundef %i.aa, ptr noundef nonnull @.str.2, i64 noundef %i.ac) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not63 = icmp eq i32 %4, 0
  br i1 %.not63, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !11
  %i.af = sext i32 %i.ae to i64
  %i.ag = shl nsw i64 %i.af, 2
  %i.ah = call noalias ptr @malloc(i64 noundef %i.ag) #9 ; 3 uses
  %i.ai = load ptr, ptr %i.c, align 8, !tbaa !8   ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !14 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 12
  %i.am = load i32, ptr %i.al, align 4, !tbaa !11
  %i.an = load i32, ptr %i.ai, align 8, !tbaa !15
  %i.ao = mul nsw i32 %i.an, %i.am                ; 2 uses
  %i.ap = sext i32 %i.ao to i64
  %.idx = shl nuw nsw i64 %i.ap, 2
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.idx
  %i.ar = icmp sgt i32 %i.ao, 0
  br i1 %i.ar, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %.05368 = phi ptr [ %i.bc, %.lr.ph ], [ %i.ak, %bb.j ] ; 3 uses
  %i.as = load i32, ptr @cube, align 8, !tbaa !16
  %i.at = call i32 (ptr, ...) @set_ord(ptr noundef %.05368) #8
  %i.au = sub nsw i32 %i.as, %i.at
  %i.av = load i32, ptr %.05368, align 4, !tbaa !4
  %i.aw = lshr i32 %i.av, 16
  %i.ax = zext nneg i32 %i.aw to i64
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.ax
  store i32 %i.au, ptr %i.ay, align 4, !tbaa !4
  %i.az = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !15
  %i.bb = sext i32 %i.ba to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %.05368, i64 %i.bb ; 2 uses
  %i.bd = icmp ult ptr %i.bc, %i.aq
  br i1 %i.bd, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.j, %bb.i
  %.055 = phi ptr [ null, %bb.i ], [ %i.ah, %bb.j ], [ %i.ah, %.lr.ph ] ; 3 uses
  %i.be = call i64 (...) @util_cpu_time() #8
  %i.bf = call ptr (ptr, ptr, i32, i32, ...) @sm_minimum_cover(ptr noundef %i.y, ptr noundef %.055, i32 noundef %i.j, i32 noundef %i.i) #8 ; 2 uses
  %i.bg = load i32, ptr @trace, align 4, !tbaa !4
  %.not64 = icmp eq i32 %i.bg, 0
  br i1 %.not64, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.bh = call i64 (...) @util_cpu_time() #8
  %i.bi = sub nsw i64 %i.bh, %i.be
  call void (ptr, ptr, i64, ...) @print_trace(ptr noundef %i.m, ptr noundef nonnull @.str.3, i64 noundef %i.bi) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.not65 = icmp eq ptr %.055, null
  br i1 %.not65, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %.055) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bj = load i32, ptr @debug, align 4, !tbaa !4
  %i.bk = and i32 %i.bj, 1024
  %.not66 = icmp eq i32 %i.bk, 0
  br i1 %.not66, label %dump_irredundant.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bl = load ptr, ptr %i.a, align 8, !tbaa !8   ; 4 uses
  %i.bm = load ptr, ptr %i.b, align 8, !tbaa !8   ; 4 uses
  %i.bn = load ptr, ptr %i.c, align 8, !tbaa !8   ; 4 uses
  %i.bo = load ptr, ptr @filename, align 8, !tbaa !20 ; 4 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bq = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bo, ptr noundef nonnull dereferenceable(8) @.str.4) #10
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bs = load ptr, ptr @stdout, align 8, !tbaa !22 ; 2 uses
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.bt = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bo) #10
  %i.bu = add i64 %i.bt, 20
  %i.bv = call noalias ptr @malloc(i64 noundef %i.bu) #9 ; 7 uses
  %i.bw = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bv, ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull %i.bo) #8 ; 0 uses
  %i.bx = call noalias ptr @fopen(ptr noundef nonnull %i.bv, ptr noundef nonnull @.str.6) ; 2 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ca = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bz, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.bv) #11 ; 0 uses
  %i.cb = load ptr, ptr @stdout, align 8, !tbaa !22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.053.i = phi ptr [ %i.cb, %bb.s ], [ %i.bx, %bb.r ]
  %i.cc = load ptr, ptr @filename, align 8, !tbaa !20
  %i.cd = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bv, ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %i.cc) #8 ; 0 uses
  %i.ce = call noalias ptr @fopen(ptr noundef nonnull %i.bv, ptr noundef nonnull @.str.6) ; 2 uses
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cg = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.ch = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.cg, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.bv) #11 ; 0 uses
  %i.ci = load ptr, ptr @stdout, align 8, !tbaa !22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.051.i = phi ptr [ %i.ci, %bb.u ], [ %i.ce, %bb.t ]
  call void @free(ptr noundef nonnull %i.bv) #8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.q
  %.154.i = phi ptr [ %i.bs, %bb.q ], [ %.053.i, %bb.v ] ; 9 uses
  %.152.i = phi ptr [ %i.bs, %bb.q ], [ %.051.i, %bb.v ] ; 3 uses
  %i.cj = call ptr (...) @new_PLA() #8            ; 3 uses
  %i.ck = call i32 (ptr, ...) @PLA_labels(ptr noundef %i.cj) #8 ; 0 uses
  call void (ptr, ptr, i32, ...) @fpr_header(ptr noundef %.154.i, ptr noundef %i.cj, i32 noundef 1) #8
  call void (ptr, ...) @free_PLA(ptr noundef %i.cj) #8
  %i.cl = call i64 @fwrite(ptr nonnull @.str.9, i64 23, i64 1, ptr %.154.i) ; 0 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !14 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !11
  %i.cq = load i32, ptr %i.bl, align 8, !tbaa !15
  %i.cr = mul nsw i32 %i.cq, %i.cp                ; 2 uses
  %i.cs = sext i32 %i.cr to i64
  %.idx.i = shl nuw nsw i64 %i.cs, 2
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i
  %i.cu = icmp sgt i32 %i.cr, 0
  br i1 %i.cu, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.i
  %.060.i = phi ptr [ %i.cz, %.lr.ph.i ], [ %i.cn, %bb.w ] ; 2 uses
  %i.cv = call ptr (ptr, ...) @pc1(ptr noundef %.060.i) #8
  %i.cw = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.154.i, ptr noundef nonnull @.str.10, ptr noundef %i.cv) #8 ; 0 uses
  %i.cx = load i32, ptr %i.bl, align 8, !tbaa !15
  %i.cy = sext i32 %i.cx to i64
  %i.cz = getelementptr inbounds [4 x i8], ptr %.060.i, i64 %i.cy ; 2 uses
  %i.da = icmp ult ptr %i.cz, %i.ct
  br i1 %i.da, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.w
  %i.db = call i64 @fwrite(ptr nonnull @.str.11, i64 31, i64 1, ptr %.154.i) ; 0 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !14 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.bm, i64 12
  %i.df = load i32, ptr %i.de, align 4, !tbaa !11
  %i.dg = load i32, ptr %i.bm, align 8, !tbaa !15
  %i.dh = mul nsw i32 %i.dg, %i.df                ; 2 uses
  %i.di = sext i32 %i.dh to i64
  %.idx69.i = shl nuw nsw i64 %i.di, 2
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dd, i64 %.idx69.i
  %i.dk = icmp sgt i32 %i.dh, 0
  br i1 %i.dk, label %.lr.ph63.i, label %._crit_edge64.i

.lr.ph63.i:                                       ; preds = %._crit_edge.i, %.lr.ph63.i
  %.161.i = phi ptr [ %i.dp, %.lr.ph63.i ], [ %i.dd, %._crit_edge.i ] ; 2 uses
  %i.dl = call ptr (ptr, ...) @pc1(ptr noundef %.161.i) #8
  %i.dm = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.154.i, ptr noundef nonnull @.str.10, ptr noundef %i.dl) #8 ; 0 uses
  %i.dn = load i32, ptr %i.bm, align 8, !tbaa !15
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [4 x i8], ptr %.161.i, i64 %i.do ; 2 uses
  %i.dq = icmp ult ptr %i.dp, %i.dj
  br i1 %i.dq, label %.lr.ph63.i, label %._crit_edge64.i

._crit_edge64.i:                                  ; preds = %.lr.ph63.i, %._crit_edge.i
  %i.dr = call i64 @fwrite(ptr nonnull @.str.12, i64 33, i64 1, ptr %.154.i) ; 0 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !14 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.bn, i64 12
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !11
  %i.dw = load i32, ptr %i.bn, align 8, !tbaa !15
  %i.dx = mul nsw i32 %i.dw, %i.dv                ; 2 uses
  %i.dy = sext i32 %i.dx to i64
  %.idx70.i = shl nuw nsw i64 %i.dy, 2
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 %.idx70.i
  %i.ea = icmp sgt i32 %i.dx, 0
  br i1 %i.ea, label %.lr.ph67.i, label %._crit_edge68.i

.lr.ph67.i:                                       ; preds = %._crit_edge64.i, %.lr.ph67.i
  %.265.i = phi ptr [ %i.ef, %.lr.ph67.i ], [ %i.dt, %._crit_edge64.i ] ; 2 uses
  %i.eb = call ptr (ptr, ...) @pc1(ptr noundef %.265.i) #8
  %i.ec = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.154.i, ptr noundef nonnull @.str.10, ptr noundef %i.eb) #8 ; 0 uses
  %i.ed = load i32, ptr %i.bn, align 8, !tbaa !15
  %i.ee = sext i32 %i.ed to i64
  %i.ef = getelementptr inbounds [4 x i8], ptr %.265.i, i64 %i.ee ; 2 uses
  %i.eg = icmp ult ptr %i.ef, %i.dz
  br i1 %i.eg, label %.lr.ph67.i, label %._crit_edge68.i

._crit_edge68.i:                                  ; preds = %.lr.ph67.i, %._crit_edge64.i
  %i.eh = load ptr, ptr @stdout, align 8, !tbaa !22
  %.not.i = icmp eq ptr %.154.i, %i.eh
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge68.i
  %i.ei = call i32 @fclose(ptr noundef %.154.i)   ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge68.i
  call void (ptr, ptr, ...) @sm_write(ptr noundef %.152.i, ptr noundef %i.y) #8
  %i.ej = load ptr, ptr @stdout, align 8, !tbaa !22
  %.not59.i = icmp eq ptr %.152.i, %i.ej
  br i1 %.not59.i, label %dump_irredundant.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ek = call i32 @fclose(ptr noundef %.152.i)   ; 0 uses
  br label %dump_irredundant.exit

dump_irredundant.exit:                            ; preds = %bb.z, %bb.y, %bb.n
  %i.el = load i32, ptr @cube, align 8, !tbaa !16
  %i.em = call ptr (i32, i32, ...) @sf_new(i32 noundef 100, i32 noundef %i.el) #8 ; 2 uses
  %i.en = load ptr, ptr %i.a, align 8, !tbaa !8   ; 4 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !14 ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 12
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !11
  %i.es = load i32, ptr %i.en, align 8, !tbaa !15
  %i.et = mul nsw i32 %i.es, %i.er                ; 2 uses
  %i.eu = sext i32 %i.et to i64
  %.idx80 = shl nuw nsw i64 %i.eu, 2
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ep, i64 %.idx80
  %i.ew = icmp sgt i32 %i.et, 0
  br i1 %i.ew, label %.lr.ph71, label %._crit_edge

.lr.ph71:                                         ; preds = %dump_irredundant.exit, %.lr.ph71
  %.070 = phi ptr [ %i.ex, %.lr.ph71 ], [ %i.em, %dump_irredundant.exit ]
  %.15469 = phi ptr [ %i.fb, %.lr.ph71 ], [ %i.ep, %dump_irredundant.exit ] ; 2 uses
  %i.ex = call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %.070, ptr noundef %.15469) #8 ; 2 uses
  %i.ey = load ptr, ptr %i.a, align 8, !tbaa !8   ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !15
  %i.fa = sext i32 %i.ez to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %.15469, i64 %i.fa ; 2 uses
  %i.fc = icmp ult ptr %i.fb, %i.ev
  br i1 %i.fc, label %.lr.ph71, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph71, %dump_irredundant.exit
  %i.fd = phi ptr [ %i.en, %dump_irredundant.exit ], [ %i.ey, %.lr.ph71 ]
  %.0.lcssa = phi ptr [ %i.em, %dump_irredundant.exit ], [ %i.ex, %.lr.ph71 ] ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %.05672 = load ptr, ptr %i.fe, align 8, !tbaa !24 ; 2 uses
  %.not6773 = icmp eq ptr %.05672, null
  br i1 %.not6773, label %._crit_edge78, label %.lr.ph77

.lr.ph77:                                         ; preds = %._crit_edge
  %i.ff = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  br label %bb.aa

bb.aa:                                            ; preds = %.lr.ph77, %bb.aa
  %.05675 = phi ptr [ %.05672, %.lr.ph77 ], [ %.056, %bb.aa ] ; 2 uses
  %.174 = phi ptr [ %.0.lcssa, %.lr.ph77 ], [ %i.fn, %bb.aa ]
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !14
  %i.fh = load i32, ptr %i.m, align 8, !tbaa !15
  %i.fi = getelementptr inbounds nuw i8, ptr %.05675, i64 4
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !26
  %i.fk = mul nsw i32 %i.fj, %i.fh
  %i.fl = sext i32 %i.fk to i64
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.fg, i64 %i.fl
  %i.fn = call ptr (ptr, ptr, ...) @sf_addset(ptr noundef %.174, ptr noundef %i.fm) #8 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.05675, i64 24
  %.056 = load ptr, ptr %i.fo, align 8, !tbaa !24 ; 2 uses
  %.not67 = icmp eq ptr %.056, null
  br i1 %.not67, label %._crit_edge78.loopexit, label %bb.aa

._crit_edge78.loopexit:                           ; preds = %bb.aa
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !8
  br label %._crit_edge78

._crit_edge78:                                    ; preds = %._crit_edge78.loopexit, %._crit_edge
  %i.fp = phi ptr [ %i.fd, %._crit_edge ], [ %.pre, %._crit_edge78.loopexit ]
  %.1.lcssa = phi ptr [ %.0.lcssa, %._crit_edge ], [ %i.fn, %._crit_edge78.loopexit ] ; 2 uses
  call void (ptr, ...) @sf_free(ptr noundef %i.fp) #8
  %i.fq = load ptr, ptr %i.b, align 8, !tbaa !8
  call void (ptr, ...) @sf_free(ptr noundef %i.fq) #8
  %i.fr = load ptr, ptr %i.c, align 8, !tbaa !8
  call void (ptr, ...) @sf_free(ptr noundef %i.fr) #8
  call void (ptr, ...) @sm_free(ptr noundef %i.y) #8
  call void (ptr, ...) @sm_row_free(ptr noundef nonnull %i.bf) #8
  call void (ptr, ...) @sf_free(ptr noundef %i.m) #8
  %i.fs = load i32, ptr @debug, align 4, !tbaa !4
  %i.ft = and i32 %i.fs, -10273
  store i32 %i.ft, ptr @debug, align 4, !tbaa !4
  %i.fu = load i32, ptr @skip_make_sparse, align 4, !tbaa !4
  %i.fv = icmp eq i32 %i.fu, 0
  %i.fw = icmp ne ptr %2, null
  %or.cond = and i1 %i.fw, %i.fv
  br i1 %or.cond, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %._crit_edge78
  %i.fx = call ptr (ptr, ptr, ptr, ...) @make_sparse(ptr noundef %.1.lcssa, ptr noundef %1, ptr noundef nonnull %2) #8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %._crit_edge78
  %.2 = phi ptr [ %i.fx, %bb.ab ], [ %.1.lcssa, %._crit_edge78 ]
  store i32 %i.d, ptr @debug, align 4, !tbaa !4
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
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 _ZTS10set_family", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !5, i64 12}
!12 = !{!"set_family", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !13, i64 24, !9, i64 32}
!13 = !{!"p1 int", !10, i64 0}
!14 = !{!12, !13, i64 24}
!15 = !{!12, !5, i64 0}
!16 = !{!17, !5, i64 0}
!17 = !{!"cube_struct", !5, i64 0, !5, i64 4, !5, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !18, i64 72, !18, i64 80, !13, i64 88, !13, i64 96, !5, i64 104, !5, i64 108, !13, i64 112, !5, i64 120, !5, i64 124}
!18 = !{!"p2 int", !19, i64 0}
!19 = !{!"any p2 pointer", !10, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"p1 omnipotent char", !10, i64 0}
!22 = !{!23, !23, i64 0}
!23 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!24 = !{!25, !25, i64 0}
!25 = !{!"p1 _ZTS17sm_element_struct", !10, i64 0}
!26 = !{!27, !5, i64 4}
!27 = !{!"sm_element_struct", !5, i64 0, !5, i64 4, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !21, i64 40}
end_hunk_0
