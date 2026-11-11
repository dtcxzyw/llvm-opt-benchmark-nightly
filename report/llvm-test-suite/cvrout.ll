Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/cvrout?download=true
inline.NumInlined: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.cube_struct = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32 }

@.str = private unnamed_addr constant [7 x i8] c".p %d\0A\00", align 1, !guid !8
@.str.1 = private unnamed_addr constant [3 x i8] c"01\00", align 1, !guid !9
@.str.2 = private unnamed_addr constant [4 x i8] c".e\0A\00", align 1, !guid !10
@.str.3 = private unnamed_addr constant [3 x i8] c"~1\00", align 1, !guid !11
@.str.4 = private unnamed_addr constant [3 x i8] c"~2\00", align 1, !guid !12
@.str.5 = private unnamed_addr constant [3 x i8] c"~0\00", align 1, !guid !13
@.str.6 = private unnamed_addr constant [6 x i8] c".end\0A\00", align 1, !guid !14
@.str.7 = private unnamed_addr constant [7 x i8] c".type \00", align 1, !guid !15
@cube = external local_unnamed_addr global %struct.cube_struct, align 8
@.str.8 = private unnamed_addr constant [7 x i8] c".i %d\0A\00", align 1, !guid !16
@.str.9 = private unnamed_addr constant [7 x i8] c".o %d\0A\00", align 1, !guid !17
@.str.10 = private unnamed_addr constant [10 x i8] c".mv %d %d\00", align 1, !guid !18
@.str.11 = private unnamed_addr constant [4 x i8] c" %d\00", align 1, !guid !19
@.str.13 = private unnamed_addr constant [5 x i8] c".ilb\00", align 1, !guid !20
@.str.14 = private unnamed_addr constant [4 x i8] c" %s\00", align 1, !guid !21
@.str.15 = private unnamed_addr constant [4 x i8] c".ob\00", align 1, !guid !22
@.str.16 = private unnamed_addr constant [14 x i8] c".label var=%d\00", align 1, !guid !23
@.str.17 = private unnamed_addr constant [9 x i8] c"#.phase \00", align 1, !guid !24
@stdout = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [8 x i8] c"\0A.group\00", align 1, !guid !25
@.str.20 = private unnamed_addr constant [3 x i8] c" (\00", align 1, !guid !26
@.str.21 = private unnamed_addr constant [4 x i8] c" \\\0A\00", align 1, !guid !27
@.str.22 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !guid !28
@.str.24 = private unnamed_addr constant [7 x i8] c".label\00", align 1, !guid !29
@.str.25 = private unnamed_addr constant [55 x i8] c"Cannot have no-output function for EQNTOTT output mode\00", align 1, !guid !30
@.str.26 = private unnamed_addr constant [57 x i8] c"Must have binary-valued function for EQNTOTT output mode\00", align 1, !guid !31
@.str.27 = private unnamed_addr constant [6 x i8] c"%s = \00", align 1, !guid !32
@.str.29 = private unnamed_addr constant [5 x i8] c" | (\00", align 1, !guid !33
@.str.30 = private unnamed_addr constant [6 x i8] c"\0A    \00", align 1, !guid !34
@.str.34 = private unnamed_addr constant [5 x i8] c"?01-\00", align 1, !guid !35
@.str.35 = private unnamed_addr constant [3 x i8] c"1~\00", align 1, !guid !36
@pc1.s1 = internal global [256 x i8] zeroinitializer, align 16, !guid !37
@pc2.s2 = internal global [256 x i8] zeroinitializer, align 16, !guid !38
@verbose_debug = external local_unnamed_addr global i32, align 4
@.str.36 = private unnamed_addr constant [19 x i8] c"%s[%d]: ord(T)=%d\0A\00", align 1, !guid !39
@.str.37 = private unnamed_addr constant [13 x i8] c"cofactor=%s\0A\00", align 1, !guid !40
@.str.38 = private unnamed_addr constant [9 x i8] c"%4d. %s\0A\00", align 1, !guid !41
@.str.40 = private unnamed_addr constant [8 x i8] c"v%d.bar\00", align 1, !guid !42
@.str.41 = private unnamed_addr constant [4 x i8] c"v%d\00", align 1, !guid !43
@.str.42 = private unnamed_addr constant [7 x i8] c"v%d.%d\00", align 1, !guid !44
@.str.43 = private unnamed_addr constant [41 x i8] c"more than 1 part in a symbolic variable\0A\00", align 1, !guid !45
@.str.44 = private unnamed_addr constant [55 x i8] c"# Symbolic constraints for variable %d (Numeric form)\0A\00", align 1, !guid !46
@.str.45 = private unnamed_addr constant [29 x i8] c"# unconstrained weight = %d\0A\00", align 1, !guid !47
@.str.46 = private unnamed_addr constant [14 x i8] c"num_codes=%d\0A\00", align 1, !guid !48
@.str.47 = private unnamed_addr constant [12 x i8] c"weight=%d: \00", align 1, !guid !49
@.str.48 = private unnamed_addr constant [56 x i8] c"# Symbolic constraints for variable %d (Symbolic form)\0A\00", align 1, !guid !50
@.str.49 = private unnamed_addr constant [12 x i8] c"#   w=%d: (\00", align 1, !guid !51
@.str.50 = private unnamed_addr constant [4 x i8] c" )\0A\00", align 1, !guid !52
@str = private unnamed_addr constant [17 x i8] c".option unmerged\00", align 1
@str.1 = private unnamed_addr constant [5 x i8] c".end\00", align 1
@str.2 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @fprint_pla(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !guid !82 {
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
  %i.i = load ptr, ptr %1, align 8, !tbaa !62     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !64   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 12
  %i.m = load i32, ptr %i.l, align 4, !tbaa !65
  %i.n = load i32, ptr %i.i, align 8, !tbaa !66
  %i.o = mul nsw i32 %i.n, %i.m                   ; 2 uses
  %3 = sext i32 %i.o to i64
  %.idx.i = shl nuw nsw i64 %3, 2
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx.i
  %i.q = icmp sgt i32 %i.o, 0
  br i1 %i.q, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.022.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.k, %bb.h ] ; 2 uses
  %i.r = tail call i32 @kiss_print_cube(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef %.022.i, ptr noundef nonnull @.str.3) ; 0 uses
  %i.s = load ptr, ptr %1, align 8, !tbaa !62
  %i.t = load i32, ptr %i.s, align 8, !tbaa !66
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [4 x i8], ptr %.022.i, i64 %i.u ; 2 uses
  %i.w = icmp ult ptr %i.v, %i.p
  br i1 %i.w, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !67   ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !64  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !65
  %i.ad = load i32, ptr %i.y, align 8, !tbaa !66
  %i.ae = mul nsw i32 %i.ad, %i.ac                ; 2 uses
  %4 = sext i32 %i.ae to i64
  %.idx27.i = shl nuw nsw i64 %4, 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 %.idx27.i
  %i.ag = icmp sgt i32 %i.ae, 0
  br i1 %i.ag, label %.lr.ph25.i, label %kiss_output.exit

.lr.ph25.i:                                       ; preds = %._crit_edge.i, %.lr.ph25.i
  %.123.i = phi ptr [ %i.al, %.lr.ph25.i ], [ %i.aa, %._crit_edge.i ] ; 2 uses
  %i.ah = tail call i32 @kiss_print_cube(ptr noundef %0, ptr noundef nonnull readonly %1, ptr noundef %.123.i, ptr noundef nonnull @.str.4) ; 0 uses
  %i.ai = load ptr, ptr %i.x, align 8, !tbaa !67
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !66
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [4 x i8], ptr %.123.i, i64 %i.ak ; 2 uses
  %i.am = icmp ult ptr %i.al, %i.af
  br i1 %i.am, label %.lr.ph25.i, label %kiss_output.exit

bb.i:                                             ; preds = %bb.e
  tail call void @fpr_header(ptr noundef %0, ptr noundef %1, i32 noundef %.180)
  %i.an = and i32 %.180, 1
  %.not84 = icmp eq i32 %i.an, 0                  ; 2 uses
  br i1 %.not84, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %1, align 8, !tbaa !62
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 12
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !65
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.076 = phi i32 [ %i.aq, %bb.j ], [ 0, %bb.i ]  ; 2 uses
  %i.ar = and i32 %.180, 2
  %.not85 = icmp eq i32 %i.ar, 0                  ; 2 uses
  br i1 %.not85, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !67
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 12
  %i.av = load i32, ptr %i.au, align 4, !tbaa !65
  %i.aw = add nsw i32 %i.av, %.076
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.177 = phi i32 [ %i.aw, %bb.l ], [ %.076, %bb.k ] ; 2 uses
  %i.ax = and i32 %.180, 4
  %.not86 = icmp eq i32 %i.ax, 0                  ; 2 uses
  br i1 %.not86, label %bb.n, label %.thread

.thread:                                          ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !83
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 12
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !65
  %i.bc = add nsw i32 %i.bb, %.177
  %i.bd = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %i.bc) #10 ; 0 uses
  br label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.be = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str, i32 noundef %.177) #10 ; 0 uses
  %i.bf = icmp eq i32 %.180, 1
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bg = load ptr, ptr %1, align 8, !tbaa !62    ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !64 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bg, i64 12
  %i.bk = load i32, ptr %i.bj, align 4, !tbaa !65
  %i.bl = load i32, ptr %i.bg, align 8, !tbaa !66
  %i.bm = mul nsw i32 %i.bl, %i.bk                ; 2 uses
  %5 = sext i32 %i.bm to i64
  %.idx100 = shl nuw nsw i64 %5, 2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bi, i64 %.idx100
  %i.bo = icmp sgt i32 %i.bm, 0
  br i1 %i.bo, label %.lr.ph97, label %._crit_edge

.lr.ph97:                                         ; preds = %bb.o, %.lr.ph97
  %.096 = phi ptr [ %i.bs, %.lr.ph97 ], [ %i.bi, %bb.o ] ; 2 uses
  tail call void @print_cube(ptr noundef %0, ptr noundef %.096, ptr noundef nonnull @.str.1)
  %i.bp = load ptr, ptr %1, align 8, !tbaa !62
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !66
  %i.br = sext i32 %i.bq to i64
  %i.bs = getelementptr inbounds [4 x i8], ptr %.096, i64 %i.br ; 2 uses
  %i.bt = icmp ult ptr %i.bs, %i.bn
  br i1 %i.bt, label %.lr.ph97, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph97, %bb.o
  %fwrite87 = tail call i64 @fwrite(ptr nonnull @.str.2, i64 3, i64 1, ptr %0) ; 0 uses
  br label %kiss_output.exit

bb.p:                                             ; preds = %.thread, %bb.n
  br i1 %.not84, label %.loopexit90, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bu = load ptr, ptr %1, align 8, !tbaa !62    ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !64 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 12
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !65
  %i.bz = load i32, ptr %i.bu, align 8, !tbaa !66
  %i.ca = mul nsw i32 %i.bz, %i.by                ; 2 uses
  %6 = sext i32 %i.ca to i64
  %.idx = shl nuw nsw i64 %6, 2
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 %.idx
  %i.cc = icmp sgt i32 %i.ca, 0
  br i1 %i.cc, label %.lr.ph, label %.loopexit90

.lr.ph:                                           ; preds = %bb.q, %.lr.ph
  %.191 = phi ptr [ %i.cg, %.lr.ph ], [ %i.bw, %bb.q ] ; 2 uses
  tail call void @print_cube(ptr noundef %0, ptr noundef %.191, ptr noundef nonnull @.str.3)
  %i.cd = load ptr, ptr %1, align 8, !tbaa !62
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !66
  %i.cf = sext i32 %i.ce to i64
  %i.cg = getelementptr inbounds [4 x i8], ptr %.191, i64 %i.cf ; 2 uses
  %i.ch = icmp ult ptr %i.cg, %i.cb
  br i1 %i.ch, label %.lr.ph, label %.loopexit90

.loopexit90:                                      ; preds = %.lr.ph, %bb.q, %bb.p
  br i1 %.not85, label %.loopexit89, label %bb.r

bb.r:                                             ; preds = %.loopexit90
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !67 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !64 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 12
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !65
  %i.co = load i32, ptr %i.cj, align 8, !tbaa !66
  %i.cp = mul nsw i32 %i.co, %i.cn                ; 2 uses
  %7 = sext i32 %i.cp to i64
  %.idx98 = shl nuw nsw i64 %7, 2
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 %.idx98
  %i.cr = icmp sgt i32 %i.cp, 0
  br i1 %i.cr, label %.lr.ph93, label %.loopexit89

.lr.ph93:                                         ; preds = %bb.r, %.lr.ph93
  %.292 = phi ptr [ %i.cv, %.lr.ph93 ], [ %i.cl, %bb.r ] ; 2 uses
  tail call void @print_cube(ptr noundef %0, ptr noundef %.292, ptr noundef nonnull @.str.4)
  %i.cs = load ptr, ptr %i.ci, align 8, !tbaa !67
  %i.ct = load i32, ptr %i.cs, align 8, !tbaa !66
  %i.cu = sext i32 %i.ct to i64
  %i.cv = getelementptr inbounds [4 x i8], ptr %.292, i64 %i.cu ; 2 uses
  %i.cw = icmp ult ptr %i.cv, %i.cq
  br i1 %i.cw, label %.lr.ph93, label %.loopexit89

.loopexit89:                                      ; preds = %.lr.ph93, %bb.r, %.loopexit90
  br i1 %.not86, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.loopexit89
  %i.cx = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !83 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !64 ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 12
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !65
  %i.dd = load i32, ptr %i.cy, align 8, !tbaa !66
  %i.de = mul nsw i32 %i.dd, %i.dc                ; 2 uses
  %8 = sext i32 %i.de to i64
  %.idx99 = shl nuw nsw i64 %8, 2
  %i.df = getelementptr inbounds nuw i8, ptr %i.da, i64 %.idx99
  %i.dg = icmp sgt i32 %i.de, 0
  br i1 %i.dg, label %.lr.ph95, label %.loopexit

.lr.ph95:                                         ; preds = %bb.s, %.lr.ph95
  %.394 = phi ptr [ %i.dk, %.lr.ph95 ], [ %i.da, %bb.s ] ; 2 uses
  tail call void @print_cube(ptr noundef %0, ptr noundef %.394, ptr noundef nonnull @.str.5)
  %i.dh = load ptr, ptr %i.cx, align 8, !tbaa !83
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !66
  %i.dj = sext i32 %i.di to i64
  %i.dk = getelementptr inbounds [4 x i8], ptr %.394, i64 %i.dj ; 2 uses
  %i.dl = icmp ult ptr %i.dk, %i.df
  br i1 %i.dl, label %.lr.ph95, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph95, %bb.s, %.loopexit89
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.6, i64 5, i64 1, ptr %0) ; 0 uses
  br label %kiss_output.exit

kiss_output.exit:                                 ; preds = %.lr.ph25.i, %._crit_edge.i, %bb.f, %.loopexit, %._crit_edge, %bb.g, %bb.d, %bb.b
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @fpr_header(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #2 !guid !85 {
bb.a:
  %.not = icmp eq i32 %2, 1
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.7, i64 6, i64 1, ptr %0) ; 0 uses
  %i.a = and i32 %2, 1
  %.not73 = icmp eq i32 %i.a, 0
  br i1 %.not73, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call i32 @putc(i32 noundef 102, ptr noundef %0) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = and i32 %2, 2
  %.not74 = icmp eq i32 %i.c, 0
  br i1 %.not74, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.d = tail call i32 @putc(i32 noundef 100, ptr noundef %0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.e = and i32 %2, 4
  %.not75 = icmp eq i32 %i.e, 0
  br i1 %.not75, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = tail call i32 @putc(i32 noundef 114, ptr noundef %0) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.g = tail call i32 @putc(i32 noundef 10, ptr noundef %0) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.a
  %i.h = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 120), align 8, !tbaa !70
  %i.i = icmp slt i32 %i.h, 2
  br i1 %i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !71
  %i.k = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8, i32 noundef %i.j) #10 ; 0 uses
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !72 ; 2 uses
  %.not77 = icmp eq i32 %i.l, -1
  br i1 %.not77, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !73
  %i.n = sext i32 %i.l to i64
  %i.o = getelementptr inbounds [4 x i8], ptr %i.m, i64 %i.n
  %i.p = load i32, ptr %i.o, align 4, !tbaa !7
  %i.q = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef %i.p) #10 ; 0 uses
  br label %bb.m

bb.l:                                             ; preds = %bb.i
  %i.r = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !74
  %i.s = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !71
  %i.t = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10, i32 noundef %i.r, i32 noundef %i.s) #10 ; 0 uses
  %i.u = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !71 ; 2 uses
  %i.v = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !74
  %i.w = icmp slt i32 %i.u, %i.v
  br i1 %i.w, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.l
  %i.x = sext i32 %i.u to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ %i.x, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !73
  %i.z = getelementptr inbounds [4 x i8], ptr %i.y, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7
  %i.ab = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %i.aa) #10 ; 0 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ac = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !74
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %indvars.iv.next, %i.ad
  br i1 %i.ae, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.l
  %fputc = tail call i32 @fputc(i32 10, ptr %0)   ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 7 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !75 ; 3 uses
  %.not78 = icmp eq ptr %i.ag, null
  br i1 %.not78, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !76
  %i.aj = icmp ne ptr %i.ai, null
  %i.ak = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8
  %i.al = icmp sgt i32 %i.ak, 0
  %or.cond = select i1 %i.aj, i1 %i.al, i1 false
  br i1 %or.cond, label %bb.o, label %.thread142

bb.o:                                             ; preds = %bb.n
  %fwrite79 = tail call i64 @fwrite(ptr nonnull @.str.13, i64 4, i64 1, ptr %0) ; 0 uses
  %i.am = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !71
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph95, label %.loopexit

.lr.ph95:                                         ; preds = %bb.o, %.lr.ph95
  %indvars.iv116 = phi i64 [ %indvars.iv.next117, %.lr.ph95 ], [ 0, %bb.o ] ; 2 uses
  %i.ao = load ptr, ptr %i.af, align 8, !tbaa !75
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !77
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.ap, i64 %indvars.iv116
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !7
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr [8 x i8], ptr %i.ao, i64 %i.as
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !76
  %i.aw = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %i.av) #10 ; 0 uses
  %indvars.iv.next117 = add nuw nsw i64 %indvars.iv116, 1 ; 2 uses
  %i.ax = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !71
  %i.ay = sext i32 %i.ax to i64
  %i.az = icmp slt i64 %indvars.iv.next117, %i.ay
  br i1 %i.az, label %.lr.ph95, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph95, %bb.o
  %i.ba = tail call i32 @putc(i32 noundef 10, ptr noundef %0) ; 0 uses
  %.pr.pre = load ptr, ptr %i.af, align 8, !tbaa !75 ; 2 uses
  %.not80 = icmp eq ptr %.pr.pre, null
  br i1 %.not80, label %.thread, label %.thread142

.thread142:                                       ; preds = %bb.n, %.loopexit
  %.pr145 = phi ptr [ %.pr.pre, %.loopexit ], [ %i.ag, %bb.n ]
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !77
  %i.bc = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !72 ; 2 uses
  %i.bd = sext i32 %i.bc to i64
  %i.be = getelementptr inbounds [4 x i8], ptr %i.bb, i64 %i.bd
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !7
  %i.bg = sext i32 %i.bf to i64
  %i.bh = getelementptr inbounds [8 x i8], ptr %.pr145, i64 %i.bg
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !76
  %i.bj = icmp ne ptr %i.bi, null
  %i.bk = icmp ne i32 %i.bc, -1
  %or.cond3 = and i1 %i.bk, %i.bj
  br i1 %or.cond3, label %bb.p, label %.thread

bb.p:                                             ; preds = %.thread142
  %fwrite81 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 3, i64 1, ptr %0) ; 0 uses
  %i.bl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !73
  %i.bm = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !72
  %i.bn = sext i32 %i.bm to i64                   ; 2 uses
  %i.bo = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !7
  %i.bq = icmp sgt i32 %i.bp, 0
  br i1 %i.bq, label %.lr.ph99, label %._crit_edge100

.lr.ph99:                                         ; preds = %bb.p, %.lr.ph99
  %i.br = phi i64 [ %i.ce, %.lr.ph99 ], [ %i.bn, %bb.p ]
  %.06597 = phi i32 [ %i.cb, %.lr.ph99 ], [ 0, %bb.p ] ; 2 uses
  %i.bs = load ptr, ptr %i.af, align 8, !tbaa !75
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !77
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.br
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !7
  %i.bw = add nsw i32 %i.bv, %.06597
  %i.bx = sext i32 %i.bw to i64
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !76
  %i.ca = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %i.bz) #10 ; 0 uses
  %i.cb = add nuw nsw i32 %.06597, 1              ; 2 uses
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !73
  %i.cd = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !72
  %i.ce = sext i32 %i.cd to i64                   ; 2 uses
  %i.cf = getelementptr inbounds [4 x i8], ptr %i.cc, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !7
  %i.ch = icmp slt i32 %i.cb, %i.cg
  br i1 %i.ch, label %.lr.ph99, label %._crit_edge100

._crit_edge100:                                   ; preds = %.lr.ph99, %bb.p
  %i.ci = tail call i32 @putc(i32 noundef 10, ptr noundef %0) ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.m, %._crit_edge100, %.thread142, %.loopexit
  %i.cj = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !71 ; 2 uses
  %i.ck = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !74 ; 2 uses
  %i.cl = add nsw i32 %i.ck, -1
  %i.cm = icmp slt i32 %i.cj, %i.cl
  br i1 %i.cm, label %.lr.ph107, label %._crit_edge108

.lr.ph107:                                        ; preds = %.thread
  %i.cn = load ptr, ptr %i.af, align 8, !tbaa !75 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %._crit_edge108, label %.lr.ph107.split.preheader

.lr.ph107.split.preheader:                        ; preds = %.lr.ph107
  %i.cp = sext i32 %i.cj to i64
  %.pre127 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !77
  %.pre129 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !78
  br label %.lr.ph107.split

.lr.ph107.split:                                  ; preds = %.lr.ph107.split.preheader, %bb.s
  %i.cq = phi i32 [ %i.ck, %.lr.ph107.split.preheader ], [ %i.dj, %bb.s ] ; 2 uses
  %i.cr = phi ptr [ %i.cn, %.lr.ph107.split.preheader ], [ %i.dk, %bb.s ] ; 3 uses
  %i.cs = phi ptr [ %.pre129, %.lr.ph107.split.preheader ], [ %i.dl, %bb.s ] ; 3 uses
  %i.ct = phi ptr [ %.pre127, %.lr.ph107.split.preheader ], [ %i.dm, %bb.s ] ; 3 uses
  %indvars.iv122 = phi i64 [ %i.cp, %.lr.ph107.split.preheader ], [ %indvars.iv.next123, %bb.s ] ; 4 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.ct, i64 %indvars.iv122
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !7  ; 2 uses
  %i.cw = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %indvars.iv122
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !7  ; 2 uses
  %.not88 = icmp eq ptr %i.cr, null
  br i1 %.not88, label %bb.s, label %bb.q

bb.q:                                             ; preds = %.lr.ph107.split
  %i.cy = sext i32 %i.cv to i64                   ; 2 uses
  %i.cz = getelementptr inbounds [8 x i8], ptr %i.cr, i64 %i.cy
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !76
  %.not89 = icmp eq ptr %i.da, null
  br i1 %.not89, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.db = trunc nsw i64 %indvars.iv122 to i32
  %i.dc = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.16, i32 noundef %i.db) #10 ; 0 uses
  %.not90101 = icmp sgt i32 %i.cv, %i.cx
  br i1 %.not90101, label %._crit_edge105, label %.lr.ph104.preheader

.lr.ph104.preheader:                              ; preds = %bb.r
  %i.dd = add i32 %i.cx, 1
  br label %.lr.ph104

.lr.ph104:                                        ; preds = %.lr.ph104.preheader, %.lr.ph104
  %indvars.iv119 = phi i64 [ %i.cy, %.lr.ph104.preheader ], [ %indvars.iv.next120, %.lr.ph104 ] ; 2 uses
  %i.de = load ptr, ptr %i.af, align 8, !tbaa !75
  %i.df = getelementptr inbounds [8 x i8], ptr %i.de, i64 %indvars.iv119
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !76
  %i.dh = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef %i.dg) #10 ; 0 uses
  %indvars.iv.next120 = add nsw i64 %indvars.iv119, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next120 to i32
  %exitcond.not = icmp eq i32 %i.dd, %lftr.wideiv
  br i1 %exitcond.not, label %._crit_edge105, label %.lr.ph104

._crit_edge105:                                   ; preds = %.lr.ph104, %bb.r
  %i.di = tail call i32 @putc(i32 noundef 10, ptr noundef %0) ; 0 uses
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !77
  %.pre128 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !78
  %.pre130 = load ptr, ptr %i.af, align 8, !tbaa !75
  %.pre132 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !74
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph107.split, %bb.q, %._crit_edge105
  %i.dj = phi i32 [ %i.cq, %.lr.ph107.split ], [ %i.cq, %bb.q ], [ %.pre132, %._crit_edge105 ] ; 2 uses
  %i.dk = phi ptr [ null, %.lr.ph107.split ], [ %i.cr, %bb.q ], [ %.pre130, %._crit_edge105 ]
  %i.dl = phi ptr [ %i.cs, %.lr.ph107.split ], [ %i.cs, %bb.q ], [ %.pre128, %._crit_edge105 ]
  %i.dm = phi ptr [ %i.ct, %.lr.ph107.split ], [ %i.ct, %bb.q ], [ %.pre, %._crit_edge105 ]
  %indvars.iv.next123 = add nsw i64 %indvars.iv122, 1 ; 2 uses
  %i.dn = add nsw i32 %i.dj, -1
  %i.do = sext i32 %i.dn to i64
  %i.dp = icmp slt i64 %indvars.iv.next123, %i.do
  br i1 %i.dp, label %.lr.ph107.split, label %._crit_edge108, !llvm.loop !84

._crit_edge108:                                   ; preds = %bb.s, %.lr.ph107, %.thread
  %i.dq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !79
  %.not82 = icmp eq ptr %i.dr, null
  br i1 %.not82, label %bb.u, label %bb.t

bb.t:                                             ; preds = %._crit_edge108
  %i.ds = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !77
  %i.dt = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !72
  %i.du = sext i32 %i.dt to i64                   ; 2 uses
  %i.dv = getelementptr inbounds [4 x i8], ptr %i.ds, i64 %i.du
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !7  ; 2 uses
  %i.dx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !78
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.dx, i64 %i.du
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !7  ; 2 uses
  %fwrite83 = tail call i64 @fwrite(ptr nonnull @.str.17, i64 8, i64 1, ptr %0) ; 0 uses
  %.not84109 = icmp sgt i32 %i.dw, %i.dz
  br i1 %.not84109, label %._crit_edge113, label %.lr.ph112

.lr.ph112:                                        ; preds = %bb.t, %.lr.ph112
  %.267110 = phi i32 [ %i.el, %.lr.ph112 ], [ %i.dw, %bb.t ] ; 4 uses
  %i.ea = load ptr, ptr %i.dq, align 8, !tbaa !79
  %i.eb = ashr i32 %.267110, 5
  %i.ec = sext i32 %i.eb to i64
  %i.ed = getelementptr [4 x i8], ptr %i.ea, i64 %i.ec
  %i.ee = getelementptr i8, ptr %i.ed, i64 4
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !7
  %i.eg = and i32 %.267110, 31
  %i.eh = shl nuw i32 1, %i.eg
  %i.ei = and i32 %i.ef, %i.eh
  %.not87 = icmp eq i32 %i.ei, 0
  %i.ej = select i1 %.not87, i32 48, i32 49
  %i.ek = tail call i32 @putc(i32 noundef %i.ej, ptr noundef %0) ; 0 uses
  %i.el = add i32 %.267110, 1
  %exitcond125.not = icmp eq i32 %.267110, %i.dz
  br i1 %exitcond125.not, label %._crit_edge113, label %.lr.ph112

._crit_edge113:                                   ; preds = %.lr.ph112, %bb.t
  %fputc86 = tail call i32 @fputc(i32 10, ptr %0) ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge113, %._crit_edge108
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @putc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @pls_output(ptr noundef %0) local_unnamed_addr #0 !guid !87 {
bb.a:
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  %i.a = tail call i32 @makeup_labels(ptr noundef %0) ; 0 uses
  %i.b = load ptr, ptr @stdout, align 8, !tbaa !89
  tail call void @pls_label(ptr noundef %0, ptr noundef %i.b)
  %i.c = load ptr, ptr @stdout, align 8, !tbaa !89
  tail call void @pls_group(ptr noundef %0, ptr noundef %i.c)
  %i.d = load ptr, ptr %0, align 8, !tbaa !62
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !65
  %i.g = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.f) ; 0 uses
  %i.h = load ptr, ptr %0, align 8, !tbaa !62     ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.l = load i32, ptr %i.k, align 4, !tbaa !65
  %i.m = load i32, ptr %i.h, align 8, !tbaa !66
  %i.n = mul nsw i32 %i.m, %i.l                   ; 2 uses
  %1 = sext i32 %i.n to i64
  %.idx = shl nuw nsw i64 %1, 2
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %i.p = icmp sgt i32 %i.n, 0
  br i1 %i.p, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.015 = phi ptr [ %i.j, %.lr.ph ], [ %i.w, %bb.b ] ; 2 uses
  %i.r = load ptr, ptr @stdout, align 8, !tbaa !89
  %i.s = load ptr, ptr %i.q, align 8, !tbaa !79
  tail call void @print_expanded_cube(ptr noundef %i.r, ptr noundef %.015, ptr noundef %i.s)
  %i.t = load ptr, ptr %0, align 8, !tbaa !62
  %i.u = load i32, ptr %i.t, align 8, !tbaa !66
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %.015, i64 %i.v ; 2 uses
  %i.x = icmp ult ptr %i.w, %i.o
  br i1 %i.x, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %puts14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable
define dso_local void @pls_group(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 !guid !90 {
bb.a:
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.19, i64 7, i64 1, ptr %1) ; 0 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !74
  %i.b = icmp sgt i32 %i.a, 1
  br i1 %i.b, label %.lr.ph38, label %._crit_edge39

.lr.ph38:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph38, %._crit_edge
  %indvars.iv41 = phi i64 [ 0, %.lr.ph38 ], [ %indvars.iv.next42, %._crit_edge ] ; 4 uses
  %.036 = phi i32 [ 6, %.lr.ph38 ], [ %i.ad, %._crit_edge ]
  %fwrite27 = tail call i64 @fwrite(ptr nonnull @.str.20, i64 2, i64 1, ptr %1) ; 0 uses
  %i.d = add nsw i32 %.036, 2                     ; 2 uses
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !77
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv41
  %i.g = load i32, ptr %i.f, align 4, !tbaa !7    ; 2 uses
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !78
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv41
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  %.not32 = icmp sgt i32 %i.g, %i.j
  br i1 %.not32, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.k = sext i32 %i.g to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.f
  %indvars.iv = phi i64 [ %i.k, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %.134 = phi i32 [ %i.d, %.lr.ph.preheader ], [ %i.y, %bb.f ] ; 3 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.m = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76
  %i.o = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #11
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = add nsw i32 %.134, %i.p
  %i.r = icmp sgt i32 %i.q, 75
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %fwrite31 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr %1) ; 0 uses
  br label %bb.f

bb.d:                                             ; preds = %.lr.ph
  %i.s = icmp eq i64 %indvars.iv, 0
  br i1 %i.s, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = tail call i32 @putc(i32 noundef 32, ptr noundef %1) ; 0 uses
  %i.u = add nsw i32 %.134, 1
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.2 = phi i32 [ 0, %bb.c ], [ %i.u, %bb.e ], [ %.134, %bb.d ]
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !76
  %fputs = tail call i32 @fputs(ptr %i.x, ptr %1) ; 0 uses
  %i.y = add nsw i32 %.2, %i.p                    ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !78
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv41
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !7
  %i.ac = sext i32 %i.ab to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ac
  br i1 %.not.not, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.f, %bb.b
  %.1.lcssa = phi i32 [ %i.d, %bb.b ], [ %i.y, %bb.f ]
  %fputc29 = tail call i32 @fputc(i32 41, ptr %1) ; 0 uses
  %i.ad = add nsw i32 %.1.lcssa, 1
  %indvars.iv.next42 = add nuw nsw i64 %indvars.iv41, 1 ; 2 uses
  %i.ae = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !74
  %i.af = add nsw i32 %i.ae, -1
  %i.ag = sext i32 %i.af to i64
  %i.ah = icmp slt i64 %indvars.iv.next42, %i.ag
  br i1 %i.ah, label %bb.b, label %._crit_edge39

._crit_edge39:                                    ; preds = %._crit_edge, %bb.a
  %fputc = tail call i32 @fputc(i32 10, ptr %1)   ; 0 uses
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: nofree nounwind uwtable
define dso_local void @pls_label(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #2 !guid !91 {
bb.a:
  %fwrite = tail call i64 @fwrite(ptr nonnull @.str.24, i64 6, i64 1, ptr %1) ; 0 uses
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !74 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph27, label %._crit_edge28

.lr.ph27:                                         ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.pre33 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !77
  %.pre34 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !78
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph27, %._crit_edge
  %i.d = phi i32 [ %i.a, %.lr.ph27 ], [ %i.ac, %._crit_edge ]
  %i.e = phi ptr [ %.pre34, %.lr.ph27 ], [ %i.ad, %._crit_edge ] ; 2 uses
  %i.f = phi ptr [ %.pre33, %.lr.ph27 ], [ %i.ae, %._crit_edge ] ; 2 uses
  %indvars.iv30 = phi i64 [ 0, %.lr.ph27 ], [ %indvars.iv.next31, %._crit_edge ] ; 4 uses
  %.025 = phi i32 [ 6, %.lr.ph27 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv30
  %i.h = load i32, ptr %i.g, align 4, !tbaa !7    ; 2 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %indvars.iv30
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  %.not21 = icmp sgt i32 %i.h, %i.j
  br i1 %.not21, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.k = sext i32 %i.h to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.e
  %indvars.iv = phi i64 [ %i.k, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.e ] ; 4 uses
  %.123 = phi i32 [ %.025, %.lr.ph.preheader ], [ %i.x, %bb.e ] ; 2 uses
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.m = getelementptr inbounds [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !76
  %i.o = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.n) #11
  %i.p = trunc i64 %i.o to i32                    ; 2 uses
  %i.q = add nsw i32 %.123, %i.p
  %i.r = icmp sgt i32 %i.q, 75
  br i1 %i.r, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %fwrite20 = tail call i64 @fwrite(ptr nonnull @.str.21, i64 3, i64 1, ptr %1) ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.s = tail call i32 @putc(i32 noundef 32, ptr noundef %1) ; 0 uses
  %i.t = add nsw i32 %.123, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.2 = phi i32 [ 0, %bb.c ], [ %i.t, %bb.d ]
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !75
  %i.v = getelementptr inbounds [8 x i8], ptr %i.u, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !76
  %fputs = tail call i32 @fputs(ptr %i.w, ptr %1) ; 0 uses
  %i.x = add nsw i32 %.2, %i.p                    ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !78 ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %indvars.iv30
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !7
  %i.ab = sext i32 %i.aa to i64
  %.not.not = icmp slt i64 %indvars.iv, %i.ab
  br i1 %.not.not, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.e
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !77
  %.pre35 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !74
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %i.ac = phi i32 [ %i.d, %bb.b ], [ %.pre35, %._crit_edge.loopexit ] ; 2 uses
  %i.ad = phi ptr [ %i.e, %bb.b ], [ %i.y, %._crit_edge.loopexit ]
  %i.ae = phi ptr [ %i.f, %bb.b ], [ %.pre, %._crit_edge.loopexit ]
  %.1.lcssa = phi i32 [ %.025, %bb.b ], [ %i.x, %._crit_edge.loopexit ]
  %indvars.iv.next31 = add nuw nsw i64 %indvars.iv30, 1 ; 2 uses
  %i.af = sext i32 %i.ac to i64
  %i.ag = icmp slt i64 %indvars.iv.next31, %i.af
  br i1 %i.ag, label %bb.b, label %._crit_edge28

end_hunk_0
begin_hunk_1_@print_expanded_cube:bb.a
  %.lcssa = phi i32 [ %i.d, %.preheader ], [ %i.bk, %._crit_edge57 ]
  %i.bn = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !72
  %.not = icmp eq i32 %i.bn, -1
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %._crit_edge60
  %i.bo = tail call i32 @putc(i32 noundef 32, ptr noundef %0) ; 0 uses
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !77
  %i.bq = sext i32 %.lcssa to i64                 ; 4 uses
  %i.br = getelementptr inbounds [4 x i8], ptr %i.bp, i64 %i.bq
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !7  ; 3 uses
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !78
  %i.bu = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bq
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !7
  %.not4362 = icmp sgt i32 %i.bs, %i.bv
  br i1 %.not4362, label %.loopexit, label %.lr.ph65

.lr.ph65:                                         ; preds = %bb.b
  %i.bw = icmp eq ptr %2, null
  br i1 %i.bw, label %.lr.ph65.split.us, label %.lr.ph65.split

.lr.ph65.split.us:                                ; preds = %.lr.ph65, %.lr.ph65.split.us
  %.263.us = phi i32 [ %i.ck, %.lr.ph65.split.us ], [ %i.bs, %.lr.ph65 ] ; 4 uses
  %i.bx = ashr i32 %.263.us, 5
  %i.by = sext i32 %i.bx to i64
  %i.bz = getelementptr [4 x i8], ptr %1, i64 %i.by
  %i.ca = getelementptr i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !7
  %i.cc = and i32 %.263.us, 31
  %i.cd = lshr i32 %i.cb, %i.cc
  %i.ce = and i32 %i.cd, 1
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr @.str.3, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !80
  %i.ci = sext i8 %i.ch to i32
  %i.cj = tail call i32 @putc(i32 noundef %i.ci, ptr noundef %0) ; 0 uses
  %i.ck = add nsw i32 %.263.us, 1
  %i.cl = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !78
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.bq
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !7
  %.not43.us.not = icmp slt i32 %.263.us, %i.cn
  br i1 %.not43.us.not, label %.lr.ph65.split.us, label %.loopexit

.lr.ph65.split:                                   ; preds = %.lr.ph65, %.lr.ph65.split
  %.263 = phi i32 [ %i.dg, %.lr.ph65.split ], [ %i.bs, %.lr.ph65 ] ; 4 uses
  %i.co = ashr i32 %.263, 5
  %i.cp = sext i32 %i.co to i64                   ; 2 uses
  %i.cq = getelementptr [4 x i8], ptr %2, i64 %i.cp
  %i.cr = getelementptr i8, ptr %i.cq, i64 4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !7
  %i.ct = and i32 %.263, 31                       ; 2 uses
  %i.cu = shl nuw i32 1, %i.ct
  %i.cv = and i32 %i.cs, %i.cu
  %.not44 = icmp eq i32 %i.cv, 0
  %spec.select = select i1 %.not44, ptr @.str.5, ptr @.str.3
  %i.cw = getelementptr [4 x i8], ptr %1, i64 %i.cp
  %i.cx = getelementptr i8, ptr %i.cw, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !7
  %i.cz = lshr i32 %i.cy, %i.ct
  %i.da = and i32 %i.cz, 1
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %spec.select, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !80
  %i.de = sext i8 %i.dd to i32
  %i.df = tail call i32 @putc(i32 noundef %i.de, ptr noundef %0) ; 0 uses
  %i.dg = add nsw i32 %.263, 1
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !78
  %i.di = getelementptr inbounds [4 x i8], ptr %i.dh, i64 %i.bq
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !7
  %.not43.not = icmp slt i32 %.263, %i.dj
  br i1 %.not43.not, label %.lr.ph65.split, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph65.split, %.lr.ph65.split.us, %bb.b, %._crit_edge60
  %i.dk = tail call i32 @putc(i32 noundef 10, ptr noundef %0) ; 0 uses
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @pc1(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 !guid !96 {
bb.a:
  %i.a = tail call ptr @fmt_cube(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @pc1.s1) ; 0 uses
  ret ptr @pc1.s1
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef nonnull ptr @pc2(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 !guid !97 {
bb.a:
  %i.a = tail call ptr @fmt_cube(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @pc2.s2) ; 0 uses
  ret ptr @pc2.s2
}

; Function Attrs: nounwind uwtable
define dso_local void @debug_print(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !guid !98 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !81
  %i.c = ptrtoint ptr %i.b to i64
  %i.d = ptrtoint ptr %0 to i64
  %i.e = sub i64 %i.c, %i.d
  %i.f = lshr exact i64 %i.e, 3
  %i.g = trunc i64 %i.f to i32
  %i.h = add i32 %i.g, -3
  %i.i = load i32, ptr @cube, align 8, !tbaa !99  ; 3 uses
  %i.j = icmp slt i32 %i.i, 33
  %i.k = add nsw i32 %i.i, -1
  %i.l = lshr i32 %i.k, 3
  %i.m = and i32 %i.l, 536870908
  %i.n = add nuw nsw i32 %i.m, 8
  %narrow = select i1 %i.j, i32 8, i32 %i.n
  %i.o = zext nneg i32 %narrow to i64
  %i.p = tail call noalias ptr @malloc(i64 noundef %i.o) #12
  %i.q = tail call ptr (ptr, i32, ...) @set_clear(ptr noundef %i.p, i32 noundef %i.i) #10 ; 3 uses
  %i.r = load i32, ptr @verbose_debug, align 4, !tbaa !7
  %i.s = icmp ne i32 %i.r, 0
  %i.t = icmp eq i32 %2, 0
  %or.cond = and i1 %i.t, %i.s
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.u = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef %1, i32 noundef %2, i32 noundef %i.h) ; 0 uses
  %i.v = load i32, ptr @verbose_debug, align 4, !tbaa !7
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.w = load ptr, ptr %0, align 8, !tbaa !81
  %i.x = tail call ptr @fmt_cube(ptr noundef readonly %i.w, ptr noundef nonnull @.str.1, ptr noundef nonnull @pc1.s1) ; 0 uses
  %i.y = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, ptr noundef nonnull @pc1.s1) ; 0 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !81  ; 2 uses
  %.not2022 = icmp eq ptr %i.aa, null
  br i1 %.not2022, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %i.ab = phi ptr [ %i.ai, %.lr.ph ], [ %i.aa, %bb.d ]
  %.024 = phi i32 [ %i.ah, %.lr.ph ], [ 1, %bb.d ] ; 2 uses
  %.01623 = phi ptr [ %i.ac, %.lr.ph ], [ %i.z, %bb.d ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.01623, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %0, align 8, !tbaa !81
  %i.ae = tail call ptr (ptr, ptr, ptr, ...) @set_or(ptr noundef %i.q, ptr noundef nonnull %i.ab, ptr noundef %i.ad) #10
  %i.af = tail call ptr @fmt_cube(ptr noundef readonly %i.ae, ptr noundef nonnull @.str.1, ptr noundef nonnull @pc1.s1) ; 0 uses
  %i.ag = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %.024, ptr noundef nonnull @pc1.s1) ; 0 uses
  %i.ah = add nuw nsw i32 %.024, 1
  %i.ai = load ptr, ptr %i.ac, align 8, !tbaa !81 ; 2 uses
  %.not20 = icmp eq ptr %i.ai, null
  br i1 %.not20, label %.loopexit, label %.lr.ph

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c
  %.not21 = icmp eq ptr %i.q, null
  br i1 %.not21, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.loopexit
  tail call void @free(ptr noundef nonnull %i.q) #10
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
define dso_local void @debug1_print(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 !guid !100 {
bb.a:
  %i.a = load i32, ptr @verbose_debug, align 4, !tbaa !7
  %i.b = icmp ne i32 %i.a, 0
  %i.c = icmp eq i32 %2, 0
  %or.cond = and i1 %i.c, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %putchar = tail call i32 @putchar(i32 10)       ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !65
  %i.f = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.36, ptr noundef %1, i32 noundef %2, i32 noundef %i.e) ; 0 uses
  %i.g = load i32, ptr @verbose_debug, align 4, !tbaa !7
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !64   ; 2 uses
  %i.j = load i32, ptr %i.d, align 4, !tbaa !65
  %i.k = load i32, ptr %0, align 8, !tbaa !66
  %i.l = mul nsw i32 %i.k, %i.j                   ; 2 uses
  %3 = sext i32 %i.l to i64
  %.idx = shl nuw nsw i64 %3, 2
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %.idx
  %i.n = icmp sgt i32 %i.l, 0
  br i1 %i.n, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.016 = phi ptr [ %i.t, %.lr.ph ], [ %i.i, %bb.d ] ; 2 uses
  %.01415 = phi i32 [ %i.o, %.lr.ph ], [ 1, %bb.d ] ; 2 uses
  %i.o = add nuw nsw i32 %.01415, 1
  %i.p = tail call ptr @fmt_cube(ptr noundef readonly %.016, ptr noundef nonnull @.str.1, ptr noundef nonnull @pc1.s1) ; 0 uses
  %i.q = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.38, i32 noundef %.01415, ptr noundef nonnull @pc1.s1) ; 0 uses
  %i.r = load i32, ptr %0, align 8, !tbaa !66
  %i.s = sext i32 %i.r to i64
  %i.t = getelementptr inbounds [4 x i8], ptr %.016, i64 %i.s ; 2 uses
  %i.u = icmp ult ptr %i.t, %i.m
  br i1 %i.u, label %.lr.ph, label %.loopexit

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @cprint(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 !guid !101 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.d = load i32, ptr %i.c, align 4, !tbaa !65
  %i.e = load i32, ptr %0, align 8, !tbaa !66
  %i.f = mul nsw i32 %i.e, %i.d                   ; 2 uses
  %1 = sext i32 %i.f to i64
  %.idx = shl nuw nsw i64 %1, 2
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.09 = phi ptr [ %i.l, %.lr.ph ], [ %i.b, %bb.a ] ; 2 uses
  %i.i = tail call ptr @fmt_cube(ptr noundef readonly %.09, ptr noundef nonnull @.str.1, ptr noundef nonnull @pc1.s1) ; 0 uses
  %puts = tail call i32 @puts(ptr nonnull dereferenceable(1) @pc1.s1) ; 0 uses
  %i.j = load i32, ptr %0, align 8, !tbaa !66
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %.09, i64 %i.k ; 2 uses
  %i.m = icmp ult ptr %i.l, %i.g
  br i1 %i.m, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local i32 @makeup_labels(ptr noundef %0) local_unnamed_addr #0 !guid !102 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ...) @PLA_labels(ptr noundef nonnull %0) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !74 ; 2 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.preheader.preheader, label %._crit_edge28

.preheader.preheader:                             ; preds = %bb.c
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !73
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %i.g = phi i32 [ %i.e, %.preheader.preheader ], [ %i.al, %._crit_edge ]
  %i.h = phi ptr [ %.pre, %.preheader.preheader ], [ %i.am, %._crit_edge ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 8 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  %i.j = load i32, ptr %i.i, align 4, !tbaa !7
  %i.k = icmp sgt i32 %i.j, 0
  br i1 %i.k, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  %i.m = trunc nuw nsw i64 %indvars.iv to i32
  %i.n = trunc nuw nsw i64 %indvars.iv to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.026 = phi i32 [ %i.ag, %bb.i ], [ 0, %.lr.ph.preheader ] ; 4 uses
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !77
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %indvars.iv
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7
  %i.r = add nsw i32 %i.q, %.026
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !75
  %i.t = sext i32 %i.r to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !76
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph
  %i.x = tail call noalias dereferenceable_or_null(15) ptr @malloc(i64 noundef 15) #12 ; 4 uses
  store ptr %i.x, ptr %i.u, align 8, !tbaa !76
  %i.y = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !71
  %i.z = sext i32 %i.y to i64
  %i.aa = icmp slt i64 %indvars.iv, %i.z
  br i1 %i.aa, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.ab = and i32 %.026, 1
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(1) @.str.40, i32 noundef %i.n) #10 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.ae = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(1) @.str.41, i32 noundef %i.m) #10 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.af = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %i.x, ptr noundef nonnull dereferenceable(1) @.str.42, i32 noundef %i.l, i32 noundef %.026) #10 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.f, %bb.g, %bb.h
  %i.ag = add nuw nsw i32 %.026, 1                ; 2 uses
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 32), align 8, !tbaa !73 ; 2 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = icmp slt i32 %i.ag, %i.aj
  br i1 %i.ak, label %.lr.ph, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.i
  %.pre30 = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !74
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
define dso_local i32 @kiss_output(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 !guid !103 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !62     ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !64   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !65
  %i.f = load i32, ptr %i.a, align 8, !tbaa !66
  %i.g = mul nsw i32 %i.f, %i.e                   ; 2 uses
  %2 = sext i32 %i.g to i64
  %.idx = shl nuw nsw i64 %2, 2
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %i.i = icmp sgt i32 %i.g, 0
  br i1 %i.i, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.022 = phi ptr [ %i.n, %.lr.ph ], [ %i.c, %bb.a ] ; 2 uses
  %i.j = tail call i32 @kiss_print_cube(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %.022, ptr noundef nonnull @.str.3) ; 0 uses
  %i.k = load ptr, ptr %1, align 8, !tbaa !62
  %i.l = load i32, ptr %i.k, align 8, !tbaa !66
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [4 x i8], ptr %.022, i64 %i.m ; 2 uses
  %i.o = icmp ult ptr %i.n, %i.h
  br i1 %i.o, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !67   ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !64   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !65
  %i.v = load i32, ptr %i.q, align 8, !tbaa !66
  %i.w = mul nsw i32 %i.v, %i.u                   ; 2 uses
  %3 = sext i32 %i.w to i64
  %.idx27 = shl nuw nsw i64 %3, 2
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx27
  %i.y = icmp sgt i32 %i.w, 0
  br i1 %i.y, label %.lr.ph25, label %._crit_edge26

.lr.ph25:                                         ; preds = %._crit_edge, %.lr.ph25
  %.123 = phi ptr [ %i.ad, %.lr.ph25 ], [ %i.s, %._crit_edge ] ; 2 uses
  %i.z = tail call i32 @kiss_print_cube(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %.123, ptr noundef nonnull @.str.4) ; 0 uses
  %i.aa = load ptr, ptr %i.p, align 8, !tbaa !67
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !66
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [4 x i8], ptr %.123, i64 %i.ac ; 2 uses
  %i.ae = icmp ult ptr %i.ad, %i.x
  br i1 %i.ae, label %.lr.ph25, label %._crit_edge26

._crit_edge26:                                    ; preds = %.lr.ph25, %._crit_edge
  ret i32 undef
}

; Function Attrs: nounwind uwtable
define dso_local i32 @kiss_print_cube(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 !guid !104 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !71 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %.lr.ph, %bb.a
  %.lcssa = phi i32 [ %i.a, %bb.a ], [ %i.w, %.lr.ph ] ; 2 uses
  %i.c = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !74
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
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %i.n = and i32 %i.h, 30
  %i.o = lshr i32 %i.m, %i.n
  %i.p = and i32 %i.o, 3
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @.str.34, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !80
  %i.t = sext i8 %i.s to i32
  %i.u = tail call i32 @putc(i32 noundef %i.t, ptr noundef %0) ; 0 uses
  %i.v = add nuw nsw i32 %.03950, 1               ; 2 uses
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !71 ; 2 uses
  %i.x = icmp slt i32 %i.v, %i.w
  br i1 %i.x, label %.lr.ph, label %.preheader

bb.b:                                             ; preds = %.lr.ph57, %bb.i
  %indvars.iv = phi i64 [ %i.g, %.lr.ph57 ], [ %indvars.iv.next, %bb.i ] ; 5 uses
  %i.y = tail call i32 @putc(i32 noundef 32, ptr noundef %0) ; 0 uses
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 72), align 8, !tbaa !105
  %i.aa = getelementptr inbounds [8 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !81
  %i.ac = tail call i32 (ptr, ptr, ...) @setp_implies(ptr noundef %i.ab, ptr noundef %2) #10
  %.not46 = icmp eq i32 %i.ac, 0
  br i1 %.not46, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ad = tail call i32 @putc(i32 noundef 45, ptr noundef %0) ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.b
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !77
  %i.af = getelementptr inbounds [4 x i8], ptr %i.ae, i64 %indvars.iv
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !7  ; 2 uses
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !78 ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
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
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !7
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
  %.pre = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !78
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %.lr.ph54
  %i.at = phi ptr [ %i.ak, %.lr.ph54 ], [ %.pre, %bb.f ], [ %i.ak, %bb.e ] ; 2 uses
  %.1 = phi i32 [ %.053, %.lr.ph54 ], [ %.04152, %bb.f ], [ %.04152, %bb.e ] ; 3 uses
  %i.au = add nsw i32 %.04152, 1
  %i.av = getelementptr inbounds [4 x i8], ptr %i.at, i64 %indvars.iv
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !7
  %.not47.not = icmp slt i32 %.04152, %i.aw
  br i1 %.not47.not, label %.lr.ph54, label %._crit_edge

._crit_edge:                                      ; preds = %bb.g
  %i.ax = icmp eq i32 %.1, -1
  br i1 %i.ax, label %._crit_edge.thread, label %bb.h

._crit_edge.thread:                               ; preds = %bb.d, %._crit_edge
  %i.ay = tail call i32 @putc(i32 noundef 126, ptr noundef %0) ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge
  %i.az = load ptr, ptr %i.f, align 8, !tbaa !75
  %i.ba = sext i32 %.1 to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !76
  %i.bd = tail call i32 @fputs(ptr noundef %i.bc, ptr noundef %0) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.h, %._crit_edge.thread
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.be = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !74
  %i.bf = add nsw i32 %i.be, -1
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp slt i64 %indvars.iv.next, %i.bg
  br i1 %i.bh, label %bb.b, label %._crit_edge58

._crit_edge58:                                    ; preds = %bb.i, %.preheader
  %i.bi = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 124), align 4, !tbaa !72 ; 2 uses
  %.not = icmp eq i32 %i.bi, -1
  br i1 %.not, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %._crit_edge58
  %i.bj = tail call i32 @putc(i32 noundef 32, ptr noundef %0) ; 0 uses
  %i.bk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 16), align 8, !tbaa !77
  %i.bl = sext i32 %i.bi to i64                   ; 3 uses
  %i.bm = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !7  ; 2 uses
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !78
  %i.bp = getelementptr inbounds [4 x i8], ptr %i.bo, i64 %i.bl
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !7
  %.not4559 = icmp sgt i32 %i.bn, %i.bq
  br i1 %.not4559, label %.loopexit, label %.lr.ph62

.lr.ph62:                                         ; preds = %bb.j, %.lr.ph62
  %.14260 = phi i32 [ %i.ce, %.lr.ph62 ], [ %i.bn, %bb.j ] ; 4 uses
  %i.br = ashr i32 %.14260, 5
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr [4 x i8], ptr %2, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.bt, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !7
  %i.bw = and i32 %.14260, 31
  %i.bx = lshr i32 %i.bv, %i.bw
  %i.by = and i32 %i.bx, 1
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 %i.bz
  %i.cb = load i8, ptr %i.ca, align 1, !tbaa !80
  %i.cc = sext i8 %i.cb to i32
  %i.cd = tail call i32 @putc(i32 noundef %i.cc, ptr noundef %0) ; 0 uses
  %i.ce = add nsw i32 %.14260, 1
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 24), align 8, !tbaa !78
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.cf, i64 %i.bl
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !7
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
define dso_local noundef i32 @output_symbolic_constraints(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 !guid !112 {
bb.a:
  %i.a = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 4), align 4, !tbaa !74
  %i.b = load i32, ptr getelementptr inbounds nuw (i8, ptr @cube, i64 8), align 8, !tbaa !71
  %i.c = sub nsw i32 %i.a, %i.b
  %i.d = icmp slt i32 %i.c, 2
  br i1 %i.d, label %.loopexit132, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i32 @makeup_labels(ptr noundef %1) ; 0 uses
end_hunk_1
