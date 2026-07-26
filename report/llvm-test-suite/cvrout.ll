inline.NumInlined: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c".p %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"01\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c".e\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"~1\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"~2\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"~0\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c".end\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c".type \00", align 1
@cube = external local_unnamed_addr global %struct.cube_struct, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c".i %d\0A\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c".o %d\0A\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c".mv %d %d\00", align 1
@.str.11 = private unnamed_addr constant [4 x i8] c" %d\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c".ilb\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c" %s\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c".ob\00", align 1
@.str.16 = private unnamed_addr constant [14 x i8] c".label var=%d\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"#.phase \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [8 x i8] c"\0A.group\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c" \\\0A\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.24 = private unnamed_addr constant [7 x i8] c".label\00", align 1
@.str.25 = private unnamed_addr constant [55 x i8] c"Cannot have no-output function for EQNTOTT output mode\00", align 1
@.str.26 = private unnamed_addr constant [57 x i8] c"Must have binary-valued function for EQNTOTT output mode\00", align 1
@.str.27 = private unnamed_addr constant [6 x i8] c"%s = \00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c" | (\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"?01-\00", align 1
@.str.35 = private unnamed_addr constant [3 x i8] c"1~\00", align 1
@pc1.s1 = internal global [256 x i8] zeroinitializer, align 16
@pc2.s2 = internal global [256 x i8] zeroinitializer, align 16
@verbose_debug = external local_unnamed_addr global i32, align 4
@.str.36 = private unnamed_addr constant [19 x i8] c"%s[%d]: ord(T)=%d\0A\00", align 1
@.str.37 = private unnamed_addr constant [13 x i8] c"cofactor=%s\0A\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"%4d. %s\0A\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"v%d.bar\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"v%d\00", align 1
@.str.42 = private unnamed_addr constant [7 x i8] c"v%d.%d\00", align 1
@.str.43 = private unnamed_addr constant [41 x i8] c"more than 1 part in a symbolic variable\0A\00", align 1
@.str.44 = private unnamed_addr constant [55 x i8] c"# Symbolic constraints for variable %d (Numeric form)\0A\00", align 1
@.str.45 = private unnamed_addr constant [29 x i8] c"# unconstrained weight = %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [14 x i8] c"num_codes=%d\0A\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"weight=%d: \00", align 1
@.str.48 = private unnamed_addr constant [56 x i8] c"# Symbolic constraints for variable %d (Symbolic form)\0A\00", align 1
@.str.49 = private unnamed_addr constant [12 x i8] c"#   w=%d: (\00", align 1
@.str.50 = private unnamed_addr constant [4 x i8] c" )\0A\00", align 1
@str = private unnamed_addr constant [17 x i8] c".option unmerged\00", align 1
@str.1 = private unnamed_addr constant [5 x i8] c".end\00", align 1
@str.2 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @fprint_pla(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = and i32 %2, 256
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @output_symbolic_constraints(ptr noundef %0, ptr noundef %1, i32 noundef 0) ; 0 uses
  %i.c = and i32 %2, -257                         ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %kiss_output.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.079 = phi i32 [ %i.c, %bb.b ], [ %2, %bb.a ]  ; 3 uses
  %i.e = and i32 %.079, 512
  %.not83 = icmp eq i32 %i.e, 0
  br i1 %.not83, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @output_symbolic_constraints(ptr noundef %0, ptr noundef %1, i32 noundef 1) ; 0 uses
  %i.g = and i32 %.079, -513                      ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %kiss_output.exit, label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.180 = phi i32 [ %i.g, %bb.d ], [ %.079, %bb.c ] ; 6 uses
  switch i32 %.180, label %bb.i [
    i32 8, label %bb.f
    i32 16, label %bb.g
    i32 128, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  tail call void @pls_output(ptr noundef %1)
  br label %kiss_output.exit

bb.g:                                             ; preds = %bb.e
  tail call void @eqn_output(ptr noundef %1)
  br label %kiss_output.exit

bb.h:                                             ; preds = %bb.e
  %i.i = load ptr, ptr %1, align 8, !tbaa !8      ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !20
  %i.n = load i32, ptr %i.i, align 8, !tbaa !21
  %i.o = mul nsw i32 %i.n, %i.m                   ; 2 uses
  %i.p = sext i32 %i.o to i64
  %.idx.i = shl nuw nsw i64 %i.p, 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i
  %i.r = icmp sgt i32 %i.o, 0
  br i1 %i.r, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.022.i = phi ptr [ %i.w, %.lr.ph.i ], [ %i.k, %bb.h ] ; 2 uses
  %i.s = tail call i32 @kiss_print_cube(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef %.022.i, ptr noundef nonnull @.str.3) ; 0 uses
  %i.t = load ptr, ptr %1, align 8, !tbaa !8
  %i.u = load i32, ptr %i.t, align 8, !tbaa !21
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %.022.i, i64 %i.v ; 2 uses
  %i.x = icmp ult ptr %i.w, %i.q
  br i1 %i.x, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !22   ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !18 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 12
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !20
  %i.ae = load i32, ptr %i.z, align 8, !tbaa !21
  %i.af = mul nsw i32 %i.ae, %i.ad                ; 2 uses
  %i.ag = sext i32 %i.af to i64
  %.idx27.i = shl nuw nsw i64 %i.ag, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 %.idx27.i
  %i.ai = icmp sgt i32 %i.af, 0
  br i1 %i.ai, label %.lr.ph25.i, label %kiss_output.exit

.lr.ph25.i:                                       ; preds = %._crit_edge.i, %.lr.ph25.i
  %.123.i = phi ptr [ %i.an, %.lr.ph25.i ], [ %i.ab, %._crit_edge.i ] ; 2 uses
  %i.aj = tail call i32 @kiss_print_cube(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef %.123.i, ptr noundef nonnull @.str.4) ; 0 uses
  %i.ak = load ptr, ptr %i.y, align 8, !tbaa !22
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !21
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds [4 x i8], ptr %.123.i, i64 %i.am ; 2 uses
  %i.ao = icmp ult ptr %i.an, %i.ah
  br i1 %i.ao, label %.lr.ph25.i, label %kiss_output.exit

bb.i:                                             ; preds = %bb.e
  tail call void @fpr_header(ptr noundef %0, ptr noundef %1, i32 noundef %.180)
  %i.ap = and i32 %.180, 1
  %.not84 = icmp eq i32 %i.ap, 0                  ; 2 uses
  br i1 %.not84, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %1, align 8, !tbaa !8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !20
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.076 = phi i32 [ %i.as, %bb.j ], [ 0, %bb.i ]  ; 2 uses
  %i.at = and i32 %.180, 2
  %.not85 = icmp eq i32 %i.at, 0                  ; 2 uses
  br i1 %.not85, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !22
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !20
  %i.ay = add nsw i32 %i.ax, %.076
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.177 = phi i32 [ %i.ay, %bb.l ], [ %.076, %bb.k ] ; 2 uses
  %i.az = and i32 %.180, 4
  %.not86 = icmp eq i32 %i.az, 0                  ; 2 uses
  br i1 %.not86, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !23
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !20
  %i.be = add nsw i32 %i.bd, %.177
  %i.bf = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %i.be) #10 ; 0 uses
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %.177) #10 ; 0 uses
  %i.bh = icmp eq i32 %.180, 1
  br i1 %i.bh, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bi = load ptr, ptr %1, align 8, !tbaa !8     ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !18 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 12
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !20
  %i.bn = load i32, ptr %i.bi, align 8, !tbaa !21
  %i.bo = mul nsw i32 %i.bn, %i.bm                ; 2 uses
  %i.bp = sext i32 %i.bo to i64
  %.idx99 = shl nuw nsw i64 %i.bp, 2
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bk, i64 %.idx99
  %i.br = icmp sgt i32 %i.bo, 0
  br i1 %i.br, label %.lr.ph96, label %._crit_edge

.lr.ph96:                                         ; preds = %bb.o, %.lr.ph96
  %.095 = phi ptr [ %i.bv, %.lr.ph96 ], [ %i.bk, %bb.o ] ; 2 uses
  tail call void @print_cube(ptr noundef %0, ptr noundef %.095, ptr noundef nonnull @.str.1)
  %i.bs = load ptr, ptr %1, align 8, !tbaa !8
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !21
  %i.bu = sext i32 %i.bt to i64
  %i.bv = getelementptr inbounds [4 x i8], ptr %.095, i64 %i.bu ; 2 uses
  %i.bw = icmp ult ptr %i.bv, %i.bq
  br i1 %i.bw, label %.lr.ph96, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph96, %bb.o
  %i.bx = tail call i64 @fwrite(ptr nonnull @.str.2, i64 3, i64 1, ptr %0) ; 0 uses
  br label %kiss_output.exit

bb.p:                                             ; preds = %.thread, %bb.n
  br i1 %.not84, label %.loopexit89, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.by = load ptr, ptr %1, align 8, !tbaa !8     ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !18 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.by, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !20
  %i.cd = load i32, ptr %i.by, align 8, !tbaa !21
  %i.ce = mul nsw i32 %i.cd, %i.cc                ; 2 uses
  %i.cf = sext i32 %i.ce to i64
  %.idx = shl nuw nsw i64 %i.cf, 2
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.idx
  %i.ch = icmp sgt i32 %i.ce, 0
  br i1 %i.ch, label %.lr.ph, label %.loopexit89

.lr.ph:                                           ; preds = %bb.q, %.lr.ph
  %.190 = phi ptr [ %i.cl, %.lr.ph ], [ %i.ca, %bb.q ] ; 2 uses
  tail call void @print_cube(ptr noundef %0, ptr noundef %.190, ptr noundef nonnull @.str.3)
  %i.ci = load ptr, ptr %1, align 8, !tbaa !8
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !21
  %i.ck = sext i32 %i.cj to i64
  %i.cl = getelementptr inbounds [4 x i8], ptr %.190, i64 %i.ck ; 2 uses
  %i.cm = icmp ult ptr %i.cl, %i.cg
  br i1 %i.cm, label %.lr.ph, label %.loopexit89

.loopexit89:                                      ; preds = %.lr.ph, %bb.q, %bb.p
  br i1 %.not85, label %.loopexit88, label %bb.r

bb.r:                                             ; preds = %.loopexit89
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !22 ; 3 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !18 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.co, i64 12
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !20
  %i.ct = load i32, ptr %i.co, align 8, !tbaa !21
  %i.cu = mul nsw i32 %i.ct, %i.cs                ; 2 uses
  %i.cv = sext i32 %i.cu to i64
  %.idx97 = shl nuw nsw i64 %i.cv, 2
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cq, i64 %.idx97
  %i.cx = icmp sgt i32 %i.cu, 0
  br i1 %i.cx, label %.lr.ph92, label %.loopexit88

.lr.ph92:                                         ; preds = %bb.r, %.lr.ph92
  %.291 = phi ptr [ %i.db, %.lr.ph92 ], [ %i.cq, %bb.r ] ; 2 uses
  tail call void @print_cube(ptr noundef %0, ptr noundef %.291, ptr noundef nonnull @.str.4)
  %i.cy = load ptr, ptr %i.cn, align 8, !tbaa !22
  %i.cz = load i32, ptr %i.cy, align 8, !tbaa !21
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [4 x i8], ptr %.291, i64 %i.da ; 2 uses
  %i.dc = icmp ult ptr %i.db, %i.cw
  br i1 %i.dc, label %.lr.ph92, label %.loopexit88

.loopexit88:                                      ; preds = %.lr.ph92, %bb.r, %.loopexit89
  br i1 %.not86, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.loopexit88
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !23 ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 24
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !18 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 12
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !20
  %i.dj = load i32, ptr %i.de, align 8, !tbaa !21
  %i.dk = mul nsw i32 %i.dj, %i.di                ; 2 uses
  %i.dl = sext i32 %i.dk to i64
  %.idx98 = shl nuw nsw i64 %i.dl, 2
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dg, i64 %.idx98
  %i.dn = icmp sgt i32 %i.dk, 0
  br i1 %i.dn, label %.lr.ph94, label %.loopexit

.lr.ph94:                                         ; preds = %bb.s, %.lr.ph94
  %.393 = phi ptr [ %i.dr, %.lr.ph94 ], [ %i.dg, %bb.s ] ; 2 uses
  tail call void @print_cube(ptr noundef %0, ptr noundef %.393, ptr noundef nonnull @.str.5)
  %i.do = load ptr, ptr %i.dd, align 8, !tbaa !23
  %i.dp = load i32, ptr %i.do, align 8, !tbaa !21
  %i.dq = sext i32 %i.dp to i64
  %i.dr = getelementptr inbounds [4 x i8], ptr %.393, i64 %i.dq ; 2 uses
  %i.ds = icmp ult ptr %i.dr, %i.dm
  br i1 %i.ds, label %.lr.ph94, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph94, %bb.s, %.loopexit88
  %i.dt = tail call i64 @fwrite(ptr nonnull @.str.6, i64 5, i64 1, ptr %0) ; 0 uses
  br label %kiss_output.exit

kiss_output.exit:                                 ; preds = %.lr.ph25.i, %._crit_edge.i, %bb.f, %.loopexit, %._crit_edge, %bb.g, %bb.d, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @fpr_header(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @fwrite(ptr nonnull @.str.7, i64 6, i64 1, ptr %0) ; 0 uses
  %i.b = and i32 %2, 1
  %.not73 = icmp eq i32 %i.b, 0
  br i1 %.not73, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @putc(i32 noundef 102, ptr noundef %0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = and i32 %2, 2
  %.not74 = icmp eq i32 %i.d, 0
  br i1 %.not74, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @putc(i32 noundef 100, ptr noundef %0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.f = and i32 %2, 4
  %.not75 = icmp eq i32 %i.f, 0
  br i1 %.not75, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call i32 @putc(i32 noundef 114, ptr noundef %0) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.h = tail call i32 @putc(i32 noundef 10, ptr noundef %0) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 120), align 8, !tbaa !24
  %i.j = icmp slt i32 %i.i, 2
  br i1 %i.j, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !27
  %i.l = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %i.k) #10 ; 0 uses
  %i.m = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !28 ; 2 uses
  %.not76 = icmp eq i32 %i.m, -1
  br i1 %.not76, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !29
  %i.o = sext i32 %i.m to i64
  %i.p = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %i.q) #10 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !30
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !27
  %i.u = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %i.s, i32 noundef %i.t) #10 ; 0 uses
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !27 ; 2 uses
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !30
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.y = sext i32 %i.v to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.y, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !29
  %i.aa = getelementptr inbounds [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %i.ab) #10 ; 0 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ad = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !30
  %i.ae = sext i32 %i.ad to i64
  %i.af = icmp slt i64 %indvars.iv.next, %i.ae
  br i1 %i.af, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.l
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %._crit_edge
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 7 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !31 ; 3 uses
  %.not77 = icmp eq ptr %i.ah, null
  br i1 %.not77, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !32
  %i.ak = icmp ne ptr %i.aj, null
  %i.al = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8
  %i.am = icmp sgt i32 %i.al, 0
  %or.cond = select i1 %i.ak, i1 %i.am, i1 false
  br i1 %or.cond, label %bb.o, label %.thread134

bb.o:                                             ; preds = %bb.n
  %i.an = tail call i64 @fwrite(ptr nonnull @.str.13, i64 4, i64 1, ptr %0) ; 0 uses
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !27
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph90, label %.loopexit

.lr.ph90:                                         ; preds = %bb.o, %.lr.ph90
  %indvars.iv111 = phi i64 [ %indvars.iv.next112, %.lr.ph90 ], [ 0, %bb.o ] ; 2 uses
  %i.aq = load ptr, ptr %i.ag, align 8, !tbaa !31
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !33
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.ar, i64 %indvars.iv111
  %i.at = load i32, ptr %i.as, align 4, !tbaa !4
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr [8 x i8], ptr %i.aq, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !32
  %i.ay = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %i.ax) #10 ; 0 uses
  %indvars.iv.next112 = add nuw nsw i64 %indvars.iv111, 1 ; 2 uses
  %i.az = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !27
  %i.ba = sext i32 %i.az to i64
  %i.bb = icmp slt i64 %indvars.iv.next112, %i.ba
  br i1 %i.bb, label %.lr.ph90, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph90, %bb.o
  %i.bc = tail call i32 @putc(i32 noundef 10, ptr noundef %0) ; 0 uses
  %.pr.pre = load ptr, ptr %i.ag, align 8, !tbaa !31 ; 2 uses
  %.not78 = icmp eq ptr %.pr.pre, null
  br i1 %.not78, label %.thread, label %.thread134

.thread134:                                       ; preds = %bb.n, %.loopexit
  %.pr137 = phi ptr [ %.pr.pre, %.loopexit ], [ %i.ah, %bb.n ]
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !33
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !28 ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = getelementptr inbounds [4 x i8], ptr %i.bd, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !4
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %.pr137, i64 %i.bi
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !32
  %i.bl = icmp ne ptr %i.bk, null
  %i.bm = icmp ne i32 %i.be, -1
  %or.cond3 = and i1 %i.bm, %i.bl
  br i1 %or.cond3, label %bb.p, label %.thread

bb.p:                                             ; preds = %.thread134
  %i.bn = tail call i64 @fwrite(ptr nonnull @.str.15, i64 3, i64 1, ptr %0) ; 0 uses
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !29
  %i.bp = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !28
  %i.bq = sext i32 %i.bp to i64                   ; 2 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !4
  %i.bt = icmp sgt i32 %i.bs, 0
  br i1 %i.bt, label %.lr.ph94, label %._crit_edge95

.lr.ph94:                                         ; preds = %bb.p, %.lr.ph94
  %i.bu = phi i64 [ %i.ch, %.lr.ph94 ], [ %i.bq, %bb.p ]
  %.06592 = phi i32 [ %i.ce, %.lr.ph94 ], [ 0, %bb.p ] ; 2 uses
  %i.bv = load ptr, ptr %i.ag, align 8, !tbaa !31
  %i.bw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !33
  %i.bx = getelementptr inbounds [4 x i8], ptr %i.bw, i64 %i.bu
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !4
  %i.bz = add nsw i32 %i.by, %.06592
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bv, i64 %i.ca
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !32
  %i.cd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %i.cc) #10 ; 0 uses
  %i.ce = add nuw nsw i32 %.06592, 1              ; 2 uses
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !29
  %i.cg = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !28
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.ch
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !4
  %i.ck = icmp slt i32 %i.ce, %i.cj
  br i1 %i.ck, label %.lr.ph94, label %._crit_edge95

._crit_edge95:                                    ; preds = %.lr.ph94, %bb.p
  %i.cl = tail call i32 @putc(i32 noundef 10, ptr noundef %0) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.m, %._crit_edge95, %.thread134, %.loopexit
  %i.cm = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !27 ; 2 uses
  %i.cn = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !30 ; 2 uses
  %i.co = add nsw i32 %i.cn, -1
  %i.cp = icmp slt i32 %i.cm, %i.co
  br i1 %i.cp, label %.lr.ph102, label %._crit_edge103

.lr.ph102:                                        ; preds = %.thread
  %i.cq = load ptr, ptr %i.ag, align 8, !tbaa !31
  %i.cr = icmp eq ptr %i.cq, null
  br i1 %i.cr, label %._crit_edge103, label %.lr.ph102.split.preheader

.lr.ph102.split.preheader:                        ; preds = %.lr.ph102
  %i.cs = sext i32 %i.cm to i64
  %.pre122 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !33
  %.pre124 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !34
  br label %.lr.ph102.split

.lr.ph102.split:                                  ; preds = %.lr.ph102.split.preheader, %bb.s
  %i.ct = phi i32 [ %i.cn, %.lr.ph102.split.preheader ], [ %i.dm, %bb.s ] ; 2 uses
  %i.cu = phi ptr [ %.pre124, %.lr.ph102.split.preheader ], [ %i.dn, %bb.s ] ; 3 uses
  %i.cv = phi ptr [ %.pre122, %.lr.ph102.split.preheader ], [ %i.do, %bb.s ] ; 3 uses
  %indvars.iv117 = phi i64 [ %i.cs, %.lr.ph102.split.preheader ], [ %indvars.iv.next118, %bb.s ] ; 4 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cv, i64 %indvars.iv117
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !4  ; 2 uses
  %i.cy = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %indvars.iv117
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !4  ; 2 uses
  %i.da = load ptr, ptr %i.ag, align 8, !tbaa !31 ; 2 uses
  %.not83 = icmp eq ptr %i.da, null
  br i1 %.not83, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.lr.ph102.split
  %i.db = sext i32 %i.cx to i64                   ; 2 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %i.da, i64 %i.db
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !32
  %.not84 = icmp eq ptr %i.dd, null
  br i1 %.not84, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.de = trunc nsw i64 %indvars.iv117 to i32
  %i.df = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %i.de) #10 ; 0 uses
  %.not8596 = icmp sgt i32 %i.cx, %i.cz
  br i1 %.not8596, label %._crit_edge100, label %.lr.ph99.preheader

.lr.ph99.preheader:                               ; preds = %bb.r
  %i.dg = add i32 %i.cz, 1
  br label %.lr.ph99

.lr.ph99:                                         ; preds = %.lr.ph99.preheader, %.lr.ph99
  %indvars.iv114 = phi i64 [ %i.db, %.lr.ph99.preheader ], [ %indvars.iv.next115, %.lr.ph99 ] ; 2 uses
  %i.dh = load ptr, ptr %i.ag, align 8, !tbaa !31
  %i.di = getelementptr inbounds [8 x i8], ptr %i.dh, i64 %indvars.iv114
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !32
  %i.dk = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %i.dj) #10 ; 0 uses
  %indvars.iv.next115 = add nsw i64 %indvars.iv114, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next115 to i32
  %exitcond.not = icmp eq i32 %i.dg, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge100, label %.lr.ph99

._crit_edge100:                                   ; preds = %.lr.ph99, %bb.r
  %i.dl = tail call i32 @putc(i32 noundef 10, ptr noundef %0) ; 0 uses
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !33
  %.pre123 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !34
  %.pre125 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !30
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph102.split, %bb.q, %._crit_edge100
  %i.dm = phi i32 [ %i.ct, %.lr.ph102.split ], [ %i.ct, %bb.q ], [ %.pre125, %._crit_edge100 ] ; 2 uses
  %i.dn = phi ptr [ %i.cu, %.lr.ph102.split ], [ %i.cu, %bb.q ], [ %.pre123, %._crit_edge100 ]
  %i.do = phi ptr [ %i.cv, %.lr.ph102.split ], [ %i.cv, %bb.q ], [ %.pre, %._crit_edge100 ]
  %indvars.iv.next118 = add nsw i64 %indvars.iv117, 1 ; 2 uses
  %i.dp = add nsw i32 %i.dm, -1
  %i.dq = sext i32 %i.dp to i64
  %i.dr = icmp slt i64 %indvars.iv.next118, %i.dq
  br i1 %i.dr, label %.lr.ph102.split, label %._crit_edge103, !llvm.loop !35

._crit_edge103:                                   ; preds = %bb.s, %.lr.ph102, %.thread
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !37
  %.not79 = icmp eq ptr %i.dt, null
  br i1 %.not79, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge103
  %i.du = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !33
  %i.dv = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !28
  %i.dw = sext i32 %i.dv to i64                   ; 2 uses
  %i.dx = getelementptr inbounds [4 x i8], ptr %i.du, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !4  ; 2 uses
  %i.dz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !34
  %i.ea = getelementptr inbounds [4 x i8], ptr %i.dz, i64 %i.dw
  %i.eb = load i32, ptr %i.ea, align 4, !tbaa !4  ; 2 uses
  %i.ec = tail call i64 @fwrite(ptr nonnull @.str.17, i64 8, i64 1, ptr %0) ; 0 uses
  %.not80104 = icmp sgt i32 %i.dy, %i.eb
  br i1 %.not80104, label %._crit_edge108, label %.lr.ph107

.lr.ph107:                                        ; preds = %bb.t, %.lr.ph107
  %.267105 = phi i32 [ %i.eo, %.lr.ph107 ], [ %i.dy, %bb.t ] ; 4 uses
  %i.ed = load ptr, ptr %i.ds, align 8, !tbaa !37
  %i.ee = ashr i32 %.267105, 5
  %i.ef = sext i32 %i.ee to i64
  %i.eg = getelementptr [4 x i8], ptr %i.ed, i64 %i.ef
  %i.eh = getelementptr i8, ptr %i.eg, i64 4
  %i.ei = load i32, ptr %i.eh, align 4, !tbaa !4
  %i.ej = and i32 %.267105, 31
  %i.ek = shl nuw i32 1, %i.ej
  %i.el = and i32 %i.ei, %i.ek
  %.not82 = icmp eq i32 %i.el, 0
  %i.em = select i1 %.not82, i32 48, i32 49
  %i.en = tail call i32 @putc(i32 noundef %i.em, ptr noundef %0) ; 0 uses
  %i.eo = add i32 %.267105, 1
  %exitcond120.not = icmp eq i32 %.267105, %i.eb
  br i1 %exitcond120.not, label %._crit_edge108, label %.lr.ph107

._crit_edge108:                                   ; preds = %.lr.ph107, %bb.t
  %fputc81 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge108, %._crit_edge103
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @pls_output(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.a = tail call i32 @makeup_labels(ptr noundef %0) ; 0 uses
  %i.b = load ptr, ptr @stdout, align 8, !tbaa !38
  tail call void @pls_label(ptr noundef %0, ptr noundef %i.b)
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !38
  tail call void @pls_group(ptr noundef %0, ptr noundef %i.c)
  %i.d = load ptr, ptr %0, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !20
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.f) ; 0 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !8      ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !20
  %i.m = load i32, ptr %i.h, align 8, !tbaa !21
  %i.n = mul nsw i32 %i.m, %i.l                   ; 2 uses
  %i.o = sext i32 %i.n to i64
  %.idx = shl nuw nsw i64 %i.o, 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %i.q = icmp sgt i32 %i.n, 0
  br i1 %i.q, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.015 = phi ptr [ %i.j, %.lr.ph ], [ %i.x, %bb.b ] ; 2 uses
  %i.s = load ptr, ptr @stdout, align 8, !tbaa !38
  %i.t = load ptr, ptr %i.r, align 8, !tbaa !37
  tail call void @print_expanded_cube(ptr noundef %i.s, ptr noundef %.015, ptr noundef %i.t)
  %i.u = load ptr, ptr %0, align 8, !tbaa !8
  %i.v = load i32, ptr %i.u, align 8, !tbaa !21
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %.015, i64 %i.w ; 2 uses
  %i.y = icmp ult ptr %i.x, %i.p
  br i1 %i.y, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %puts14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @pls_group(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @fwrite(ptr nonnull @.str.19, i64 7, i64 1, ptr %1) ; 0 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !30
  %i.c = icmp sgt i32 %i.b, 1
  br i1 %i.c, label %.lr.ph34, label %._crit_edge35

.lr.ph34:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph34, %._crit_edge
  %indvars.iv37 = phi i64 [ 0, %.lr.ph34 ], [ %indvars.iv.next38, %._crit_edge ] ; 4 uses
  %.02431 = phi i32 [ 6, %.lr.ph34 ], [ %i.ag, %._crit_edge ]
  %i.e = tail call i64 @fwrite(ptr nonnull @.str.20, i64 2, i64 1, ptr %1) ; 0 uses
  %i.f = add nsw i32 %.02431, 2                   ; 2 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv37
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %indvars.iv37
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %.not28 = icmp sgt i32 %i.i, %i.l
  br i1 %.not28, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.m = sext i32 %i.i to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ %i.m, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %.130 = phi i32 [ %i.f, %.lr.ph.preheader ], [ %i.ab, %bb.f ] ; 3 uses
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.o = getelementptr inbounds [8 x i8], ptr %i.n, i64 %indvars.iv
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !32
  %i.q = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.p) #11
  %i.r = trunc i64 %i.q to i32                    ; 2 uses
  %i.s = add nsw i32 %.130, %i.r
  %i.t = icmp sgt i32 %i.s, 75
  br i1 %i.t, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.u = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr %1) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.v = icmp eq i64 %indvars.iv, 0
  br i1 %i.v, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = tail call i32 @putc(i32 noundef 32, ptr noundef %1) ; 0 uses
  %i.x = add nsw i32 %.130, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.2 = phi i32 [ 0, %bb.c ], [ %i.x, %bb.e ], [ %.130, %bb.d ]
  %i.y = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.z = getelementptr inbounds [8 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !32
  %fputs = tail call i32 @fputs(ptr %i.aa, ptr %1) ; 0 uses
  %i.ab = add nsw i32 %.2, %i.r                   ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !34
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr %i.ac, i64 %indvars.iv37
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !4
  %i.af = sext i32 %i.ae to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.af
  br i1 %.not.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.b
  %.1.lcssa = phi i32 [ %i.f, %bb.b ], [ %i.ab, %bb.f ]
  %fputc26 = tail call i32 @fputc(i32 41, ptr %1) ; 0 uses
  %i.ag = add nsw i32 %.1.lcssa, 1
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !30
  %i.ai = add nsw i32 %i.ah, -1
  %i.aj = sext i32 %i.ai to i64
  %i.ak = icmp slt i64 %indvars.iv.next38, %i.aj
  br i1 %i.ak, label %bb.b, label %._crit_edge35

._crit_edge35:                                    ; preds = %._crit_edge, %bb.a
  %fputc = tail call i32 @fputc(i32 10, ptr %1)   ; 0 uses
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @pls_label(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @fwrite(ptr nonnull @.str.24, i64 6, i64 1, ptr %1) ; 0 uses
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !30 ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph26, label %._crit_edge27

.lr.ph26:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !34
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph26, %._crit_edge
  %i.e = phi i32 [ %i.b, %.lr.ph26 ], [ %i.ae, %._crit_edge ]
  %i.f = phi ptr [ %.pre, %.lr.ph26 ], [ %i.af, %._crit_edge ] ; 2 uses
  %indvars.iv29 = phi i64 [ 0, %.lr.ph26 ], [ %indvars.iv.next30, %._crit_edge ] ; 4 uses
  %.01823 = phi i32 [ 6, %.lr.ph26 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !33
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv29
  %i.i = load i32, ptr %i.h, align 4, !tbaa !4    ; 2 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv29
  %i.k = load i32, ptr %i.j, align 4, !tbaa !4
  %.not20 = icmp sgt i32 %i.i, %i.k
  br i1 %.not20, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.l = sext i32 %i.i to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ %i.l, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %.122 = phi i32 [ %.01823, %.lr.ph.preheader ], [ %i.z, %bb.e ] ; 2 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.n = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32
  %i.p = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.o) #11
  %i.q = trunc i64 %i.p to i32                    ; 2 uses
  %i.r = add nsw i32 %.122, %i.q
  %i.s = icmp sgt i32 %i.r, 75
  br i1 %i.s, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.t = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr %1) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.u = tail call i32 @putc(i32 noundef 32, ptr noundef %1) ; 0 uses
  %i.v = add nsw i32 %.122, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.2 = phi i32 [ 0, %bb.c ], [ %i.v, %bb.d ]
  %i.w = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.x = getelementptr inbounds [8 x i8], ptr %i.w, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !32
  %fputs = tail call i32 @fputs(ptr %i.y, ptr %1) ; 0 uses
  %i.z = add nsw i32 %.2, %i.q                    ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !34 ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %indvars.iv29
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !4
  %i.ad = sext i32 %i.ac to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ad
  br i1 %.not.not, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre32 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ae = phi i32 [ %i.e, %bb.b ], [ %.pre32, %._crit_edge.loopexit ] ; 2 uses
  %i.af = phi ptr [ %i.f, %bb.b ], [ %i.aa, %._crit_edge.loopexit ]
  %.1.lcssa = phi i32 [ %.01823, %bb.b ], [ %i.z, %._crit_edge.loopexit ]
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %i.ag = sext i32 %i.ae to i64
  %i.ah = icmp slt i64 %indvars.iv.next30, %i.ag
  br i1 %i.ah, label %bb.b, label %._crit_edge27

._crit_edge27:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
end_hunk_0
begin_hunk_1_@print_expanded_cube:bb.a
  %.not = icmp eq i32 %i.bl, -1
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge60
  %i.bm = tail call i32 @putc(i32 noundef 32, ptr noundef %0) ; 0 uses
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !33
  %i.bo = sext i32 %.lcssa to i64                 ; 4 uses
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bn, i64 %i.bo
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4  ; 3 uses
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !34
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.br, i64 %i.bo
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !4
  %.not4362 = icmp sgt i32 %i.bq, %i.bt
  br i1 %.not4362, label %.loopexit, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.b
  %i.bu = icmp eq ptr %2, null
  br i1 %i.bu, label %.lr.ph65.split.us, label %.lr.ph65.split

.lr.ph65.split.us:                                ; preds = %.lr.ph65, %.lr.ph65.split.us
  %.263.us = phi i32 [ %i.ci, %.lr.ph65.split.us ], [ %i.bq, %.lr.ph65 ] ; 4 uses
  %i.bv = ashr i32 %.263.us, 5
  %i.bw = sext i32 %i.bv to i64
  %i.bx = getelementptr [4 x i8], ptr %1, i64 %i.bw
  %i.by = getelementptr i8, ptr %i.bx, i64 4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !4
  %i.ca = and i32 %.263.us, 31
  %i.cb = lshr i32 %i.bz, %i.ca
  %i.cc = and i32 %i.cb, 1
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr @.str.3, i64 %i.cd
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !40
  %i.cg = sext i8 %i.cf to i32
  %i.ch = tail call i32 @putc(i32 noundef %i.cg, ptr noundef %0) ; 0 uses
  %i.ci = add nsw i32 %.263.us, 1
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !34
  %i.ck = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.bo
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !4
  %.not43.us.not = icmp slt i32 %.263.us, %i.cl
  br i1 %.not43.us.not, label %.lr.ph65.split.us, label %.loopexit

.lr.ph65.split:                                   ; preds = %.lr.ph65, %.lr.ph65.split
  %.263 = phi i32 [ %i.de, %.lr.ph65.split ], [ %i.bq, %.lr.ph65 ] ; 4 uses
  %i.cm = ashr i32 %.263, 5
  %i.cn = sext i32 %i.cm to i64                   ; 2 uses
  %i.co = getelementptr [4 x i8], ptr %2, i64 %i.cn
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !4
  %i.cr = and i32 %.263, 31                       ; 2 uses
  %i.cs = shl nuw i32 1, %i.cr
  %i.ct = and i32 %i.cq, %i.cs
  %.not44 = icmp eq i32 %i.ct, 0
  %spec.select = select i1 %.not44, ptr @.str.5, ptr @.str.3
  %i.cu = getelementptr [4 x i8], ptr %1, i64 %i.cn
  %i.cv = getelementptr i8, ptr %i.cu, i64 4
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !4
  %i.cx = lshr i32 %i.cw, %i.cr
  %i.cy = and i32 %i.cx, 1
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.cz
  %i.db = load i8, ptr %i.da, align 1, !tbaa !40
  %i.dc = sext i8 %i.db to i32
  %i.dd = tail call i32 @putc(i32 noundef %i.dc, ptr noundef %0) ; 0 uses
  %i.de = add nsw i32 %.263, 1
  %i.df = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !34
  %i.dg = getelementptr inbounds [4 x i8], ptr %i.df, i64 %i.bo
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !4
  %.not43.not = icmp slt i32 %.263, %i.dh
  br i1 %.not43.not, label %.lr.ph65.split, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph65.split, %.lr.ph65.split.us, %bb.b, %._crit_edge60
  %i.di = tail call i32 @putc(i32 noundef 10, ptr noundef %0) ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @pc1(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call ptr @fmt_cube(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @pc1.s1) ; 0 uses
  ret ptr @pc1.s1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @pc2(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = tail call ptr @fmt_cube(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @pc2.s2) ; 0 uses
  ret ptr @pc2.s2
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_print(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !41
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 3
  %i.g = trunc i64 %i.f to i32
  %i.h = add i32 %i.g, -3
  %i.i = load i32, ptr @cube, align 8, !tbaa !42  ; 2 uses
  %i.j = icmp slt i32 %i.i, 33
  %i.k = add nsw i32 %i.i, -1
  %i.l = lshr i32 %i.k, 3
  %i.m = and i32 %i.l, 536870908
  %i.n = add nuw nsw i32 %i.m, 8
  %narrow = select i1 %i.j, i32 8, i32 %i.n
  %i.o = zext nneg i32 %narrow to i64
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #12
  %i.q = load i32, ptr @cube, align 8, !tbaa !42
  %i.r = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.p, i32 noundef %i.q) #10 ; 3 uses
  %i.s = load i32, ptr @verbose_debug, align 4, !tbaa !4
  %i.t = icmp ne i32 %i.s, 0
  %i.u = icmp eq i32 %2, 0
  %or.cond = and i1 %i.u, %i.t
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.v = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef %1, i32 noundef %2, i32 noundef %i.h) ; 0 uses
  %i.w = load i32, ptr @verbose_debug, align 4, !tbaa !4
  %.not = icmp eq i32 %i.w, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %0, align 8, !tbaa !41
  %i.y = tail call ptr @fmt_cube(ptr noundef readonly %i.x, ptr noundef nonnull @.str.1, ptr noundef nonnull @pc1.s1) ; 0 uses
  %i.z = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, ptr noundef nonnull @pc1.s1) ; 0 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41 ; 2 uses
  %.not2022 = icmp eq ptr %i.ab, null
  br i1 %.not2022, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %i.ac = phi ptr [ %i.aj, %.lr.ph ], [ %i.ab, %bb.d ]
  %.024 = phi i32 [ %i.ai, %.lr.ph ], [ 1, %bb.d ] ; 2 uses
  %.01623 = phi ptr [ %i.ad, %.lr.ph ], [ %i.aa, %bb.d ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.01623, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %0, align 8, !tbaa !41
  %i.af = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.r, ptr noundef nonnull %i.ac, ptr noundef %i.ae) #10
  %i.ag = tail call ptr @fmt_cube(ptr noundef readonly %i.af, ptr noundef nonnull @.str.1, ptr noundef nonnull @pc1.s1) ; 0 uses
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %.024, ptr noundef nonnull @pc1.s1) ; 0 uses
  %i.ai = add nuw nsw i32 %.024, 1
  %i.aj = load ptr, ptr %i.ad, align 8, !tbaa !41 ; 2 uses
  %.not20 = icmp eq ptr %i.aj, null
  br i1 %.not20, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c
  %.not21 = icmp eq ptr %i.r, null
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %i.r) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.loopexit
  ret void
}

declare ptr @set_clear(...) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

declare ptr @set_or(...) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: nofree nounwind uwtable
define dso_local void @debug1_print(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @verbose_debug, align 4, !tbaa !4
  %i.b = icmp ne i32 %i.a, 0
  %i.c = icmp eq i32 %2, 0
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !20
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef %1, i32 noundef %2, i32 noundef %i.e) ; 0 uses
  %i.g = load i32, ptr @verbose_debug, align 4, !tbaa !4
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !18   ; 2 uses
  %i.j = load i32, ptr %i.d, align 4, !tbaa !20
  %i.k = load i32, ptr %0, align 8, !tbaa !21
  %i.l = mul nsw i32 %i.k, %i.j                   ; 2 uses
  %i.m = sext i32 %i.l to i64
  %.idx = shl nuw nsw i64 %i.m, 2
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %i.o = icmp sgt i32 %i.l, 0
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.016 = phi i32 [ %i.p, %.lr.ph ], [ 1, %bb.d ] ; 2 uses
  %.01415 = phi ptr [ %i.u, %.lr.ph ], [ %i.i, %bb.d ] ; 2 uses
  %i.p = add nuw nsw i32 %.016, 1
  %i.q = tail call ptr @fmt_cube(ptr noundef readonly %.01415, ptr noundef nonnull @.str.1, ptr noundef nonnull @pc1.s1) ; 0 uses
  %i.r = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %.016, ptr noundef nonnull @pc1.s1) ; 0 uses
  %i.s = load i32, ptr %0, align 8, !tbaa !21
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [4 x i8], ptr %.01415, i64 %i.t ; 2 uses
  %i.v = icmp ult ptr %i.u, %i.n
  br i1 %i.v, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @cprint(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !20
  %i.e = load i32, ptr %0, align 8, !tbaa !21
  %i.f = mul nsw i32 %i.e, %i.d                   ; 2 uses
  %i.g = sext i32 %i.f to i64
  %.idx = shl nuw nsw i64 %i.g, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi ptr [ %i.m, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.j = tail call ptr @fmt_cube(ptr noundef readonly %.09, ptr noundef nonnull @.str.1, ptr noundef nonnull @pc1.s1) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @pc1.s1) ; 0 uses
  %i.k = load i32, ptr %0, align 8, !tbaa !21
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds [4 x i8], ptr %.09, i64 %i.l ; 2 uses
  %i.n = icmp ult ptr %i.m, %i.h
  br i1 %i.n, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @makeup_labels(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @PLA_labels(ptr noundef nonnull %0) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !30 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.preheader.preheader, label %._crit_edge28

.preheader.preheader:                             ; preds = %bb.c
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !29
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.g = phi i32 [ %i.e, %.preheader.preheader ], [ %i.al, %._crit_edge ]
  %i.h = phi ptr [ %.pre, %.preheader.preheader ], [ %i.am, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 8 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.02526 = phi i32 [ %i.ag, %bb.i ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !4
  %i.r = add nsw i32 %i.q, %.02526
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !31
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !32
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph
  %i.x = tail call noalias dereferenceable_or_null(15) ptr @malloc(i64 noundef 15) #12 ; 4 uses
  store ptr %i.x, ptr %i.u, align 8, !tbaa !32
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !27
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv, %i.z
  br i1 %i.aa, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ab = and i32 %.02526, 1
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %i.n) #10 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ae = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %i.m) #10 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.af = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %i.l, i32 noundef %.02526) #10 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.f, %bb.g, %bb.h
  %i.ag = add nuw nsw i32 %.02526, 1              ; 2 uses
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !29 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = icmp slt i32 %i.ag, %i.aj
  br i1 %i.ak, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre30 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !30
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.al = phi i32 [ %.pre30, %._crit_edge.loopexit ], [ %i.g, %.preheader ] ; 2 uses
  %i.am = phi ptr [ %i.ah, %._crit_edge.loopexit ], [ %i.h, %.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.an = sext i32 %i.al to i64
  %i.ao = icmp slt i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %.preheader, label %._crit_edge28

._crit_edge28:                                    ; preds = %._crit_edge, %bb.c
  ret i32 undef
}

declare i32 @PLA_labels(...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local i32 @kiss_output(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8      ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !18   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !20
  %i.f = load i32, ptr %i.a, align 8, !tbaa !21
  %i.g = mul nsw i32 %i.f, %i.e                   ; 2 uses
  %i.h = sext i32 %i.g to i64
  %.idx = shl nuw nsw i64 %i.h, 2
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.j = icmp sgt i32 %i.g, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.022 = phi ptr [ %i.o, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.k = tail call i32 @kiss_print_cube(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %.022, ptr noundef nonnull @.str.3) ; 0 uses
  %i.l = load ptr, ptr %1, align 8, !tbaa !8
  %i.m = load i32, ptr %i.l, align 8, !tbaa !21
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %.022, i64 %i.n ; 2 uses
  %i.p = icmp ult ptr %i.o, %i.i
  br i1 %i.p, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !22   ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !18   ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %i.v = load i32, ptr %i.u, align 4, !tbaa !20
  %i.w = load i32, ptr %i.r, align 8, !tbaa !21
  %i.x = mul nsw i32 %i.w, %i.v                   ; 2 uses
  %i.y = sext i32 %i.x to i64
  %.idx27 = shl nuw nsw i64 %i.y, 2
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %.idx27
  %i.aa = icmp sgt i32 %i.x, 0
  br i1 %i.aa, label %.lr.ph25, label %._crit_edge26

.lr.ph25:                                         ; preds = %._crit_edge, %.lr.ph25
  %.123 = phi ptr [ %i.af, %.lr.ph25 ], [ %i.t, %._crit_edge ] ; 2 uses
  %i.ab = tail call i32 @kiss_print_cube(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %.123, ptr noundef nonnull @.str.4) ; 0 uses
  %i.ac = load ptr, ptr %i.q, align 8, !tbaa !22
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !21
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [4 x i8], ptr %.123, i64 %i.ae ; 2 uses
  %i.ag = icmp ult ptr %i.af, %i.z
  br i1 %i.ag, label %.lr.ph25, label %._crit_edge26

._crit_edge26:                                    ; preds = %.lr.ph25, %._crit_edge
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define dso_local i32 @kiss_print_cube(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !27 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.w, %.lr.ph ] ; 2 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !30
  %i.d = add nsw i32 %i.c, -1
  %i.e = icmp slt i32 %.lcssa, %i.d
  br i1 %i.e, label %.lr.ph57, label %._crit_edge58

.lr.ph57:                                         ; preds = %.preheader
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = sext i32 %.lcssa to i64
  br label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.03950 = phi i32 [ %i.v, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
  %i.h = shl nuw nsw i32 %.03950, 1
  %i.i = lshr i32 %.03950, 4
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !4
  %i.n = and i32 %i.h, 30
  %i.o = lshr i32 %i.m, %i.n
  %i.p = and i32 %i.o, 3
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @.str.34, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !40
  %i.t = sext i8 %i.s to i32
  %i.u = tail call i32 @putc(i32 noundef %i.t, ptr noundef %0) ; 0 uses
  %i.v = add nuw nsw i32 %.03950, 1               ; 2 uses
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !27 ; 2 uses
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %.lr.ph, label %.preheader

bb.b:                                             ; preds = %.lr.ph57, %bb.i
  %indvars.iv = phi i64 [ %i.g, %.lr.ph57 ], [ %indvars.iv.next, %bb.i ] ; 5 uses
  %i.y = tail call i32 @putc(i32 noundef 32, ptr noundef %0) ; 0 uses
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !43
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !41
  %i.ac = tail call i32 (ptr, ptr, ...) @setp_implies(ptr noundef %i.ab, ptr noundef %2) #10
  %.not46 = icmp eq i32 %i.ac, 0
  br i1 %.not46, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = tail call i32 @putc(i32 noundef 45, ptr noundef %0) ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !33
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !4  ; 2 uses
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !34 ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %.not4751 = icmp sgt i32 %i.ag, %i.aj
  br i1 %.not4751, label %._crit_edge.thread, label %.lr.ph54

.lr.ph54:                                         ; preds = %bb.d, %bb.g
  %i.ak = phi ptr [ %i.at, %bb.g ], [ %i.ah, %bb.d ] ; 2 uses
  %.053 = phi i32 [ %.1, %bb.g ], [ -1, %bb.d ]   ; 2 uses
  %.04152 = phi i32 [ %i.au, %bb.g ], [ %i.ag, %bb.d ] ; 6 uses
  %i.al = ashr i32 %.04152, 5
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr [4 x i8], ptr %2, i64 %i.am
  %i.ao = getelementptr i8, ptr %i.an, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !4
  %i.aq = and i32 %.04152, 31
  %i.ar = shl nuw i32 1, %i.aq
  %i.as = and i32 %i.ap, %i.ar
  %.not48 = icmp eq i32 %i.as, 0
  br i1 %.not48, label %bb.g, label %bb.e

bb.e:                                             ; preds = %.lr.ph54
  %.not49 = icmp eq i32 %.053, -1
  br i1 %.not49, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @fatal(ptr noundef nonnull @.str.43) #10
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %.lr.ph54
  %i.at = phi ptr [ %i.ak, %.lr.ph54 ], [ %.pre, %bb.f ], [ %i.ak, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %.053, %.lr.ph54 ], [ %.04152, %bb.f ], [ %.04152, %bb.e ] ; 3 uses
  %i.au = add nsw i32 %.04152, 1
  %i.av = getelementptr inbounds [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !4
  %.not47.not = icmp slt i32 %.04152, %i.aw
  br i1 %.not47.not, label %.lr.ph54, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %i.ax = icmp eq i32 %.1, -1
  br i1 %i.ax, label %._crit_edge.thread, label %bb.h

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  %i.ay = tail call i32 @putc(i32 noundef 126, ptr noundef %0) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !31
  %i.ba = sext i32 %.1 to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !32
  %i.bd = tail call i32 @fputs(ptr noundef %i.bc, ptr noundef %0) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %._crit_edge.thread
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !30
  %i.bf = add nsw i32 %i.be, -1
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp slt i64 %indvars.iv.next, %i.bg
  br i1 %i.bh, label %bb.b, label %._crit_edge58

._crit_edge58:                                    ; preds = %bb.i, %.preheader
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !28 ; 2 uses
  %.not = icmp eq i32 %i.bi, -1
  br i1 %.not, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %._crit_edge58
  %i.bj = tail call i32 @putc(i32 noundef 32, ptr noundef %0) ; 0 uses
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !33
  %i.bl = sext i32 %i.bi to i64                   ; 3 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !4  ; 2 uses
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !34
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bl
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !4
  %.not4559 = icmp sgt i32 %i.bn, %i.bq
  br i1 %.not4559, label %.loopexit, label %.lr.ph62

.lr.ph62:                                         ; preds = %bb.j, %.lr.ph62
  %.14260 = phi i32 [ %i.ce, %.lr.ph62 ], [ %i.bn, %bb.j ] ; 4 uses
  %i.br = ashr i32 %.14260, 5
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr [4 x i8], ptr %2, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !4
  %i.bw = and i32 %.14260, 31
  %i.bx = lshr i32 %i.bv, %i.bw
  %i.by = and i32 %i.bx, 1
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !40
  %i.cc = sext i8 %i.cb to i32
  %i.cd = tail call i32 @putc(i32 noundef %i.cc, ptr noundef %0) ; 0 uses
  %i.ce = add nsw i32 %.14260, 1
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !34
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.bl
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !4
  %.not45.not = icmp slt i32 %.14260, %i.ch
  br i1 %.not45.not, label %.lr.ph62, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph62, %bb.j, %._crit_edge58
  %i.ci = tail call i32 @putc(i32 noundef 10, ptr noundef %0) ; 0 uses
  ret i32 undef
}

declare i32 @setp_implies(...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @output_symbolic_constraints(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !30
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !27
  %i.c = sub nsw i32 %i.a, %i.b
  %i.d = icmp slt i32 %i.c, 2
  br i1 %i.d, label %.loopexit132, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @makeup_labels(ptr noundef %1) ; 0 uses
  %i.f = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !27 ; 2 uses
  %i.g = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !30
end_hunk_1
