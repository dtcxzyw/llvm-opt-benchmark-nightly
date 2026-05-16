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
  %.idx = shl nsw i64 %i.ap, 2
  %i.aq = getelementptr inbounds i8, ptr %i.ak, i64 %.idx
  %i.ar = icmp sgt i32 %i.ao, 0
  br i1 %i.ar, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.j, %.lr.ph
  %.05368 = phi ptr [ %i.ba, %.lr.ph ], [ %i.ak, %bb.j ] ; 3 uses
  %i.as = load i32, ptr @cube, align 8, !tbaa !16
  %i.at = call i32 (ptr, ...) @set_ord(ptr noundef %.05368) #8
  %i.au = sub nsw i32 %i.as, %i.at
  %5 = load i32, ptr %.05368, align 4, !tbaa !4
  %6 = lshr i32 %5, 16
  %i.av = zext nneg i32 %6 to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.av
  store i32 %i.au, ptr %i.aw, align 4, !tbaa !4
  %i.ax = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !15
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %.05368, i64 %i.az ; 2 uses
  %i.bb = icmp ult ptr %i.ba, %i.aq
  br i1 %i.bb, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.j, %bb.i
  %.055 = phi ptr [ null, %bb.i ], [ %i.ah, %bb.j ], [ %i.ah, %.lr.ph ] ; 3 uses
  %i.bc = call i64 (...) @util_cpu_time() #8
  %i.bd = call ptr (ptr, ptr, i32, i32, ...) @sm_minimum_cover(ptr noundef %i.y, ptr noundef %.055, i32 noundef %i.j, i32 noundef %i.i) #8 ; 2 uses
  %i.be = load i32, ptr @trace, align 4, !tbaa !4
  %.not64 = icmp eq i32 %i.be, 0
  br i1 %.not64, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.loopexit
  %i.bf = call i64 (...) @util_cpu_time() #8
  %i.bg = sub nsw i64 %i.bf, %i.bc
  call void (ptr, ptr, i64, ...) @print_trace(ptr noundef %i.m, ptr noundef nonnull @.str.3, i64 noundef %i.bg) #8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.loopexit
  %.not65 = icmp eq ptr %.055, null
  br i1 %.not65, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @free(ptr noundef nonnull %.055) #8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.bh = load i32, ptr @debug, align 4, !tbaa !4
  %i.bi = and i32 %i.bh, 1024
  %.not66 = icmp eq i32 %i.bi, 0
  br i1 %.not66, label %dump_irredundant.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !8   ; 4 uses
  %i.bk = load ptr, ptr %i.b, align 8, !tbaa !8   ; 4 uses
  %i.bl = load ptr, ptr %i.c, align 8, !tbaa !8   ; 4 uses
  %i.bm = load ptr, ptr @filename, align 8, !tbaa !20 ; 4 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bo = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bm, ptr noundef nonnull dereferenceable(8) @.str.4) #10
  %i.bp = icmp eq i32 %i.bo, 0
  br i1 %i.bp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bq = load ptr, ptr @stdout, align 8, !tbaa !22 ; 2 uses
  br label %bb.w

bb.r:                                             ; preds = %bb.p
  %i.br = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bm) #10
  %i.bs = add i64 %i.br, 20
  %i.bt = call noalias ptr @malloc(i64 noundef %i.bs) #9 ; 7 uses
  %i.bu = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bt, ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef nonnull %i.bm) #8 ; 0 uses
  %i.bv = call noalias ptr @fopen(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.6) ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bx = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.by = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bx, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.bt) #11 ; 0 uses
  %i.bz = load ptr, ptr @stdout, align 8, !tbaa !22
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.053.i = phi ptr [ %i.bz, %bb.s ], [ %i.bv, %bb.r ]
  %i.ca = load ptr, ptr @filename, align 8, !tbaa !20
  %i.cb = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.bt, ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef %i.ca) #8 ; 0 uses
  %i.cc = call noalias ptr @fopen(ptr noundef nonnull %i.bt, ptr noundef nonnull @.str.6) ; 2 uses
  %i.cd = icmp eq ptr %i.cc, null
  br i1 %i.cd, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ce = load ptr, ptr @stderr, align 8, !tbaa !22
  %i.cf = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ce, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.bt) #11 ; 0 uses
  %i.cg = load ptr, ptr @stdout, align 8, !tbaa !22
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.051.i = phi ptr [ %i.cg, %bb.u ], [ %i.cc, %bb.t ]
  call void @free(ptr noundef nonnull %i.bt) #8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.q
  %.154.i = phi ptr [ %i.bq, %bb.q ], [ %.053.i, %bb.v ] ; 9 uses
  %.152.i = phi ptr [ %i.bq, %bb.q ], [ %.051.i, %bb.v ] ; 3 uses
  %i.ch = call ptr (...) @new_PLA() #8            ; 3 uses
  %i.ci = call i32 (ptr, ...) @PLA_labels(ptr noundef %i.ch) #8 ; 0 uses
  call void (ptr, ptr, i32, ...) @fpr_header(ptr noundef %.154.i, ptr noundef %i.ch, i32 noundef 1) #8
  call void (ptr, ...) @free_PLA(ptr noundef %i.ch) #8
  %i.cj = call i64 @fwrite(ptr nonnull @.str.9, i64 23, i64 1, ptr %.154.i) ; 0 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !14 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bj, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !11
  %i.co = load i32, ptr %i.bj, align 8, !tbaa !15
  %i.cp = mul nsw i32 %i.co, %i.cn                ; 2 uses
  %i.cq = sext i32 %i.cp to i64
  %.idx.i = shl nsw i64 %i.cq, 2
  %i.cr = getelementptr inbounds i8, ptr %i.cl, i64 %.idx.i
  %i.cs = icmp sgt i32 %i.cp, 0
  br i1 %i.cs, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.i
  %.060.i = phi ptr [ %i.cx, %.lr.ph.i ], [ %i.cl, %bb.w ] ; 2 uses
  %i.ct = call ptr (ptr, ...) @pc1(ptr noundef %.060.i) #8
  %i.cu = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.154.i, ptr noundef nonnull @.str.10, ptr noundef %i.ct) #8 ; 0 uses
  %i.cv = load i32, ptr %i.bj, align 8, !tbaa !15
  %i.cw = sext i32 %i.cv to i64
  %i.cx = getelementptr inbounds [4 x i8], ptr %.060.i, i64 %i.cw ; 2 uses
  %i.cy = icmp ult ptr %i.cx, %i.cr
  br i1 %i.cy, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.w
  %i.cz = call i64 @fwrite(ptr nonnull @.str.11, i64 31, i64 1, ptr %.154.i) ; 0 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !14 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bk, i64 12
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !11
  %i.de = load i32, ptr %i.bk, align 8, !tbaa !15
  %i.df = mul nsw i32 %i.de, %i.dd                ; 2 uses
  %i.dg = sext i32 %i.df to i64
  %.idx69.i = shl nsw i64 %i.dg, 2
  %i.dh = getelementptr inbounds i8, ptr %i.db, i64 %.idx69.i
  %i.di = icmp sgt i32 %i.df, 0
  br i1 %i.di, label %.lr.ph63.i, label %._crit_edge64.i

.lr.ph63.i:                                       ; preds = %._crit_edge.i, %.lr.ph63.i
  %.161.i = phi ptr [ %i.dn, %.lr.ph63.i ], [ %i.db, %._crit_edge.i ] ; 2 uses
  %i.dj = call ptr (ptr, ...) @pc1(ptr noundef %.161.i) #8
  %i.dk = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.154.i, ptr noundef nonnull @.str.10, ptr noundef %i.dj) #8 ; 0 uses
  %i.dl = load i32, ptr %i.bk, align 8, !tbaa !15
  %i.dm = sext i32 %i.dl to i64
  %i.dn = getelementptr inbounds [4 x i8], ptr %.161.i, i64 %i.dm ; 2 uses
  %i.do = icmp ult ptr %i.dn, %i.dh
  br i1 %i.do, label %.lr.ph63.i, label %._crit_edge64.i

._crit_edge64.i:                                  ; preds = %.lr.ph63.i, %._crit_edge.i
  %i.dp = call i64 @fwrite(ptr nonnull @.str.12, i64 33, i64 1, ptr %.154.i) ; 0 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !14 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.bl, i64 12
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !11
  %i.du = load i32, ptr %i.bl, align 8, !tbaa !15
  %i.dv = mul nsw i32 %i.du, %i.dt                ; 2 uses
  %i.dw = sext i32 %i.dv to i64
  %.idx70.i = shl nsw i64 %i.dw, 2
  %i.dx = getelementptr inbounds i8, ptr %i.dr, i64 %.idx70.i
  %i.dy = icmp sgt i32 %i.dv, 0
  br i1 %i.dy, label %.lr.ph67.i, label %._crit_edge68.i

.lr.ph67.i:                                       ; preds = %._crit_edge64.i, %.lr.ph67.i
  %.265.i = phi ptr [ %i.ed, %.lr.ph67.i ], [ %i.dr, %._crit_edge64.i ] ; 2 uses
  %i.dz = call ptr (ptr, ...) @pc1(ptr noundef %.265.i) #8
  %i.ea = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %.154.i, ptr noundef nonnull @.str.10, ptr noundef %i.dz) #8 ; 0 uses
  %i.eb = load i32, ptr %i.bl, align 8, !tbaa !15
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr inbounds [4 x i8], ptr %.265.i, i64 %i.ec ; 2 uses
  %i.ee = icmp ult ptr %i.ed, %i.dx
  br i1 %i.ee, label %.lr.ph67.i, label %._crit_edge68.i

._crit_edge68.i:                                  ; preds = %.lr.ph67.i, %._crit_edge64.i
  %i.ef = load ptr, ptr @stdout, align 8, !tbaa !22
  %.not.i = icmp eq ptr %.154.i, %i.ef
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge68.i
  %i.eg = call i32 @fclose(ptr noundef %.154.i)   ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge68.i
  call void (ptr, ptr, ...) @sm_write(ptr noundef %.152.i, ptr noundef %i.y) #8
  %i.eh = load ptr, ptr @stdout, align 8, !tbaa !22
  %.not59.i = icmp eq ptr %.152.i, %i.eh
  br i1 %.not59.i, label %dump_irredundant.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ei = call i32 @fclose(ptr noundef %.152.i)   ; 0 uses
  br label %dump_irredundant.exit

dump_irredundant.exit:                            ; preds = %bb.z, %bb.y, %bb.n
  %i.ej = load i32, ptr @cube, align 8, !tbaa !16
  %i.ek = call ptr (i32, i32, ...) @sf_new(i32 noundef 100, i32 noundef %i.ej) #8 ; 2 uses
  %i.el = load ptr, ptr %i.a, align 8, !tbaa !8   ; 4 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !14 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 12
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !11
  %i.eq = load i32, ptr %i.el, align 8, !tbaa !15
  %i.er = mul nsw i32 %i.eq, %i.ep                ; 2 uses
  %i.es = sext i32 %i.er to i64
  %.idx80 = shl nsw i64 %i.es, 2
  %i.et = getelementptr inbounds i8, ptr %i.en, i64 %.idx80
  %i.eu = icmp sgt i32 %i.er, 0
  br i1 %i.eu, label %.lr.ph71, label %._crit_edge
end_hunk_0
