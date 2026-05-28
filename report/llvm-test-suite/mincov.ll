inline.NumInlined: 3
inline.NumDeleted: 3
begin_hunk_0_@solution_free
; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

declare ptr @util_print_time(i64 noundef) local_unnamed_addr #2

declare ptr @sm_row_dup(...) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local ptr @sm_mincov(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = alloca ptr, align 8                      ; 7 uses
  %i.c = alloca ptr, align 8                      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.d = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !38
  %i.f = add nsw i32 %i.e, 1
  store i32 %i.f, ptr %i.d, align 4, !tbaa !38
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !22
  %i.i = icmp sgt i32 %5, %i.h
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 %5, ptr %i.g, align 8, !tbaa !22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.j = load i32, ptr %6, align 8, !tbaa !20
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !21
  %i.m = icmp sle i32 %5, %i.l
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.n = phi i1 [ false, %bb.c ], [ %i.m, %bb.d ] ; 4 uses
  %.024.in28.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge37.i, %bb.e
  %i.p = tail call i32 (ptr, ptr, ...) @sm_col_dominance(ptr noundef %0, ptr noundef %2) #9
  %i.q = tail call ptr (...) @sm_row_alloc() #9   ; 5 uses
  %.02429.i = load ptr, ptr %.024.in28.i, align 8, !tbaa !25 ; 2 uses
  %.not30.i = icmp eq ptr %.02429.i, null
  br i1 %.not30.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.h
  %.02431.i = phi ptr [ %.024.i, %bb.h ], [ %.02429.i, %bb.f ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02431.i, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !26
  %i.t = icmp eq i32 %i.s, 1
  br i1 %i.t, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.u = getelementptr inbounds nuw i8, ptr %.02431.i, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !42
  %i.y = tail call ptr (ptr, i32, ...) @sm_row_insert(ptr noundef %i.q, i32 noundef %i.x) #9 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %.024.in.i = getelementptr inbounds nuw i8, ptr %.02431.i, i64 32
  %.024.i = load ptr, ptr %.024.in.i, align 8, !tbaa !25 ; 2 uses
  %.not.i = icmp eq ptr %.024.i, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.h, %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.032.i = load ptr, ptr %i.z, align 8, !tbaa !44 ; 2 uses
  %.not2533.i = icmp eq ptr %.032.i, null
  br i1 %.not2533.i, label %._crit_edge37.i, label %.lr.ph36.i

bb.i:                                             ; preds = %.lr.ph36.i
  %i.aa = getelementptr inbounds nuw i8, ptr %.034.i, i64 24
  %.0.i = load ptr, ptr %i.aa, align 8, !tbaa !44 ; 2 uses
  %.not25.i = icmp eq ptr %.0.i, null
  br i1 %.not25.i, label %._crit_edge37.i, label %.lr.ph36.i

.lr.ph36.i:                                       ; preds = %._crit_edge.i, %bb.i
  %.034.i = phi ptr [ %.0.i, %bb.i ], [ %.032.i, %._crit_edge.i ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.034.i, i64 4
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !42
  tail call void (ptr, ptr, ptr, i32, ...) @solution_accept(ptr noundef %1, ptr noundef %0, ptr noundef %2, i32 noundef %i.ac) #9
  %i.ad = load i32, ptr %i.o, align 8, !tbaa !35
  %.not26.i = icmp slt i32 %i.ad, %4
  br i1 %.not26.i, label %bb.i, label %bb.j

bb.j:                                             ; preds = %.lr.ph36.i
  tail call void (ptr, ...) @sm_row_free(ptr noundef %i.q) #9
  br label %select_essential.exit

._crit_edge37.i:                                  ; preds = %bb.i, %._crit_edge.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !26
  tail call void (ptr, ...) @sm_row_free(ptr noundef %i.q) #9
  %i.ag = tail call i32 (ptr, ...) @sm_row_dominance(ptr noundef %0) #9
  %i.ah = icmp sgt i32 %i.p, 0
  %i.ai = icmp sgt i32 %i.ag, 0
  %or.cond.i = select i1 %i.ah, i1 true, i1 %i.ai
  %i.aj = icmp sgt i32 %i.af, 0
  %i.ak = select i1 %or.cond.i, i1 true, i1 %i.aj
  br i1 %i.ak, label %bb.f, label %select_essential.exit

select_essential.exit:                            ; preds = %._crit_edge37.i, %bb.j
  %i.al = load i32, ptr %i.o, align 8, !tbaa !35
  %.not143 = icmp slt i32 %i.al, %4
  br i1 %.not143, label %bb.k, label %bb.as

bb.k:                                             ; preds = %select_essential.exit
  %i.am = icmp eq ptr %2, null                    ; 2 uses
  br i1 %i.am, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.an = call i32 (ptr, ptr, ptr, i32, i32, i32, ptr, ptr, ...) @gimpel_reduce(ptr noundef %0, ptr noundef nonnull %1, ptr noundef null, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %i.c) #9
  %.not144 = icmp eq i32 %i.an, 0
  br i1 %.not144, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !45
  br label %bb.as

bb.n:                                             ; preds = %bb.k, %bb.l
  %i.ap = call ptr (ptr, ptr, ...) @sm_maximal_independent_set(ptr noundef %0, ptr noundef %2) #9 ; 3 uses
  %i.aq = load i32, ptr %i.o, align 8, !tbaa !35
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !35
  %i.at = add nsw i32 %i.as, %i.aq
  %. = call i32 @llvm.smax.i32(i32 %i.at, i32 %3) ; 8 uses
  %i.au = call ptr (...) @sm_row_alloc() #9       ; 3 uses
  %i.av = load ptr, ptr %i.ap, align 8, !tbaa !33
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.05169.i = load ptr, ptr %i.aw, align 8, !tbaa !44 ; 2 uses
  %.not6170.i = icmp eq ptr %.05169.i, null
  br i1 %.not6170.i, label %.loopexit.i, label %.lr.ph73.i

.lr.ph73.i:                                       ; preds = %bb.n
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i155, %.lr.ph73.i
  %.05171.i = phi ptr [ %.05169.i, %.lr.ph73.i ], [ %.051.i, %._crit_edge.i155 ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.05171.i, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !42 ; 3 uses
  %i.ba = icmp sgt i32 %i.az, -1
  call void @llvm.assume(i1 %i.ba)
  %i.bb = load i32, ptr %i.ax, align 8, !tbaa !47
  %i.bc = icmp slt i32 %i.az, %i.bb
  call void @llvm.assume(i1 %i.bc)
  %i.bd = load ptr, ptr %0, align 8, !tbaa !48
  %i.be = zext nneg i32 %i.az to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.be
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %.04966.i = load ptr, ptr %i.bh, align 8, !tbaa !44 ; 2 uses
  %.not6467.i = icmp eq ptr %.04966.i, null
  br i1 %.not6467.i, label %._crit_edge.i155, label %.lr.ph.i154

.lr.ph.i154:                                      ; preds = %bb.o, %.lr.ph.i154
  %.04968.i = phi ptr [ %.049.i, %.lr.ph.i154 ], [ %.04966.i, %bb.o ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.04968.i, i64 4
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !42
  %i.bk = call ptr (ptr, i32, ...) @sm_row_insert(ptr noundef %i.au, i32 noundef %i.bj) #9 ; 0 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.04968.i, i64 24
  %.049.i = load ptr, ptr %i.bl, align 8, !tbaa !44 ; 2 uses
  %.not64.i = icmp eq ptr %.049.i, null
  br i1 %.not64.i, label %._crit_edge.i155, label %.lr.ph.i154

._crit_edge.i155:                                 ; preds = %.lr.ph.i154, %bb.o
  %i.bm = getelementptr inbounds nuw i8, ptr %.05171.i, i64 24
  %.051.i = load ptr, ptr %i.bm, align 8, !tbaa !44 ; 2 uses
  %.not61.i = icmp eq ptr %.051.i, null
  br i1 %.not61.i, label %.loopexit.i, label %bb.o

.loopexit.i:                                      ; preds = %._crit_edge.i155, %bb.n
  %i.bn = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.15086.i = load ptr, ptr %i.bn, align 8, !tbaa !44 ; 3 uses
  %.not6287.i = icmp eq ptr %.15086.i, null
  br i1 %.not6287.i, label %select_column.exit, label %.lr.ph92.i

.lr.ph92.i:                                       ; preds = %.loopexit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.am, label %.lr.ph92.split.us.i, label %.lr.ph92.split.preheader.i

.lr.ph92.split.preheader.i:                       ; preds = %.lr.ph92.i
  %.pre.i = load i32, ptr %i.bo, align 8, !tbaa !49
  %.pre98.i = load ptr, ptr %i.bp, align 8, !tbaa !50
  br label %.lr.ph92.split.i

.lr.ph92.split.us.i:                              ; preds = %.lr.ph92.i, %bb.r
  %.15090.us.i = phi ptr [ %.150.us.i, %bb.r ], [ %.15086.i, %.lr.ph92.i ] ; 2 uses
  %.089.us.i = phi i32 [ %.1.us.i, %bb.r ], [ -1, %.lr.ph92.i ]
  %.04688.us.i = phi double [ %.147.us.i, %bb.r ], [ -1.000000e+00, %.lr.ph92.i ] ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.15090.us.i, i64 4
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !42 ; 3 uses
  %i.bt = icmp sgt i32 %i.bs, -1
  br i1 %i.bt, label %7, label %15

7:                                                ; preds = %.lr.ph92.split.us.i
  %8 = load i32, ptr %i.bo, align 8, !tbaa !49
  %9 = icmp slt i32 %i.bs, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %7
  %11 = load ptr, ptr %i.bp, align 8, !tbaa !50
  %12 = zext nneg i32 %i.bs to i64
  %13 = getelementptr inbounds nuw [8 x i8], ptr %11, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !30
  br label %15

15:                                               ; preds = %10, %7, %.lr.ph92.split.us.i
  %16 = phi ptr [ %14, %10 ], [ null, %7 ], [ null, %.lr.ph92.split.us.i ] ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %.15279.us.i = load ptr, ptr %17, align 8, !tbaa !44 ; 2 uses
  %.not6380.us.i = icmp eq ptr %.15279.us.i, null
  br i1 %.not6380.us.i, label %._crit_edge85.us.i, label %.lr.ph84.us.i

bb.p:                                             ; preds = %.lr.ph84.us.i, %bb.p
  %.15282.us.i = phi ptr [ %.15279.us.i, %.lr.ph84.us.i ], [ %.152.us.i, %bb.p ] ; 2 uses
  %.04881.us.i = phi double [ 0.000000e+00, %.lr.ph84.us.i ], [ %i.cf, %bb.p ]
  %i.bu = load i32, ptr %.15282.us.i, align 8, !tbaa !51 ; 3 uses
  %i.bv = icmp sgt i32 %i.bu, -1
  call void @llvm.assume(i1 %i.bv)
  %i.bw = icmp slt i32 %i.bu, %i.ck
  call void @llvm.assume(i1 %i.bw)
  %i.bx = zext nneg i32 %i.bu to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.bx
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !25
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !26
  %i.cc = sitofp i32 %i.cb to double
  %i.cd = fadd double %i.cc, -1.000000e+00
  %i.ce = fdiv double 1.000000e+00, %i.cd
  %i.cf = fadd double %.04881.us.i, %i.ce         ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.15282.us.i, i64 8
  %.152.us.i = load ptr, ptr %i.cg, align 8, !tbaa !44 ; 2 uses
  %.not63.us.i = icmp eq ptr %.152.us.i, null
  br i1 %.not63.us.i, label %._crit_edge85.us.i, label %bb.p

._crit_edge85.us.i:                               ; preds = %bb.p, %15
  %.048.lcssa.us.i = phi double [ 0.000000e+00, %15 ], [ %i.cf, %bb.p ] ; 2 uses
  %i.ch = fcmp ogt double %.048.lcssa.us.i, %.04688.us.i
  br i1 %i.ch, label %bb.q, label %bb.r

bb.q:                                             ; preds = %._crit_edge85.us.i
  %i.ci = load i32, ptr %16, align 8, !tbaa !31
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %._crit_edge85.us.i
  %.147.us.i = phi double [ %.048.lcssa.us.i, %bb.q ], [ %.04688.us.i, %._crit_edge85.us.i ]
  %.1.us.i = phi i32 [ %i.ci, %bb.q ], [ %.089.us.i, %._crit_edge85.us.i ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.15090.us.i, i64 24
  %.150.us.i = load ptr, ptr %i.cj, align 8, !tbaa !44 ; 2 uses
  %.not62.us.i = icmp eq ptr %.150.us.i, null
  br i1 %.not62.us.i, label %select_column.exit, label %.lr.ph92.split.us.i

.lr.ph84.us.i:                                    ; preds = %15
  %i.ck = load i32, ptr %i.bq, align 8, !tbaa !47
  %i.cl = load ptr, ptr %0, align 8, !tbaa !48
  br label %bb.p

.lr.ph92.split.i:                                 ; preds = %._crit_edge85.i, %.lr.ph92.split.preheader.i
  %.15090.i = phi ptr [ %.150.i, %._crit_edge85.i ], [ %.15086.i, %.lr.ph92.split.preheader.i ] ; 2 uses
  %.089.i = phi i32 [ %.1.i, %._crit_edge85.i ], [ -1, %.lr.ph92.split.preheader.i ]
  %.04688.i = phi double [ %.147.i, %._crit_edge85.i ], [ -1.000000e+00, %.lr.ph92.split.preheader.i ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.15090.i, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !42 ; 3 uses
  %i.co = icmp sgt i32 %i.cn, -1
  call void @llvm.assume(i1 %i.co)
  %i.cp = icmp slt i32 %i.cn, %.pre.i
  call void @llvm.assume(i1 %i.cp)
  %i.cq = zext nneg i32 %i.cn to i64
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.pre98.i, i64 %i.cq
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !30 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 16
  %.15279.i = load ptr, ptr %i.ct, align 8, !tbaa !44 ; 2 uses
  %.not6380.i = icmp eq ptr %.15279.i, null
  br i1 %.not6380.i, label %._crit_edge85.i, label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %.lr.ph92.split.i
  %i.cu = load i32, ptr %i.bq, align 8, !tbaa !47
  %i.cv = load ptr, ptr %0, align 8, !tbaa !48
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph84.i
  %.15282.i = phi ptr [ %.15279.i, %.lr.ph84.i ], [ %.152.i, %bb.s ] ; 2 uses
  %.04881.i = phi double [ 0.000000e+00, %.lr.ph84.i ], [ %i.dh, %bb.s ]
  %i.cw = load i32, ptr %.15282.i, align 8, !tbaa !51 ; 3 uses
  %i.cx = icmp sgt i32 %i.cw, -1
  call void @llvm.assume(i1 %i.cx)
  %i.cy = icmp slt i32 %i.cw, %i.cu
  call void @llvm.assume(i1 %i.cy)
  %i.cz = zext nneg i32 %i.cw to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cv, i64 %i.cz
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !25
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !26
  %i.de = sitofp i32 %i.dd to double
  %i.df = fadd double %i.de, -1.000000e+00
  %i.dg = fdiv double 1.000000e+00, %i.df
  %i.dh = fadd double %.04881.i, %i.dg            ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.15282.i, i64 8
  %.152.i = load ptr, ptr %i.di, align 8, !tbaa !44 ; 2 uses
  %.not63.i = icmp eq ptr %.152.i, null
  br i1 %.not63.i, label %._crit_edge85.i, label %bb.s

._crit_edge85.i:                                  ; preds = %bb.s, %.lr.ph92.split.i
  %.048.lcssa.i = phi double [ 0.000000e+00, %.lr.ph92.split.i ], [ %i.dh, %bb.s ]
  %i.dj = load i32, ptr %i.cs, align 8, !tbaa !31 ; 2 uses
  %i.dk = sext i32 %i.dj to i64
  %i.dl = getelementptr inbounds [4 x i8], ptr %2, i64 %i.dk
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !4
  %i.dn = sitofp i32 %i.dm to double
  %i.do = fdiv double %.048.lcssa.i, %i.dn        ; 2 uses
  %i.dp = fcmp ogt double %i.do, %.04688.i        ; 2 uses
  %.147.i = select i1 %i.dp, double %i.do, double %.04688.i
  %.1.i = select i1 %i.dp, i32 %i.dj, i32 %.089.i ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.15090.i, i64 24
  %.150.i = load ptr, ptr %i.dq, align 8, !tbaa !44 ; 2 uses
  %.not62.i = icmp eq ptr %.150.i, null
  br i1 %.not62.i, label %select_column.exit, label %.lr.ph92.split.i

select_column.exit:                               ; preds = %._crit_edge85.i, %bb.r, %.loopexit.i
  %.0.lcssa.i = phi i32 [ -1, %.loopexit.i ], [ %.1.us.i, %bb.r ], [ %.1.i, %._crit_edge85.i ] ; 3 uses
  call void (ptr, ...) @sm_row_free(ptr noundef %i.au) #9
  call void (ptr, ...) @solution_free(ptr noundef nonnull %i.ap) #9
  %i.dr = icmp eq i32 %5, 0
  br i1 %i.dr, label %bb.t, label %bb.u

bb.t:                                             ; preds = %select_column.exit
  %i.ds = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !52
  %i.du = add nsw i32 %i.dt, %.
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 %i.du, ptr %i.dv, align 4, !tbaa !24
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %select_column.exit
  br i1 %i.n, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.u
  %i.dw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !53
  %.not145 = icmp eq i32 %i.dx, 0
  %i.dy = select i1 %.not145, ptr @.str.15, ptr @.str.14
  %i.dz = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, i32 noundef %5, ptr noundef nonnull %i.dy) ; 0 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eb = load i32, ptr %i.ea, align 8, !tbaa !8
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !29
  %i.ee = load i32, ptr %i.o, align 8, !tbaa !35
  %i.ef = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !52 ; 3 uses
  %i.eh = add nsw i32 %i.eg, %i.ee
  %i.ei = add nsw i32 %i.eg, %4
  %i.ej = add nsw i32 %i.eg, %.
  %i.ek = call i64 (...) @util_cpu_time() #9
  %i.el = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.em = load i64, ptr %i.el, align 8, !tbaa !17
  %i.en = sub nsw i64 %i.ek, %i.em
  %i.eo = call ptr @util_print_time(i64 noundef %i.en) #9
  %i.ep = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %i.eb, i32 noundef %i.ed, i32 noundef %i.eh, i32 noundef %i.ei, i32 noundef %i.ej, ptr noundef %i.eo) ; 0 uses
  %.not146 = icmp slt i32 %., %4
  br i1 %.not146, label %bb.x, label %bb.w

.thread:                                          ; preds = %bb.u
  %.not146156 = icmp slt i32 %., %4
  br i1 %.not146156, label %bb.x, label %.thread157

bb.w:                                             ; preds = %bb.v
  %puts152 = call i32 @puts(ptr nonnull dereferenceable(1) @str.2) ; 0 uses
  br label %.thread157

.thread157:                                       ; preds = %.thread, %bb.w
  store ptr null, ptr %i.c, align 8, !tbaa !45
  br label %bb.ar

bb.x:                                             ; preds = %.thread, %bb.v
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !8
  %i.es = icmp eq i32 %i.er, 0
  br i1 %i.es, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.et = call ptr (ptr, ...) @solution_dup(ptr noundef %1) #9
  store ptr %i.et, ptr %i.c, align 8, !tbaa !45
  br i1 %i.n, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str.1) ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.eu = load i32, ptr %6, align 8, !tbaa !20
  %.not151 = icmp eq i32 %i.eu, 0
  br i1 %.not151, label %bb.ar, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ev = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ew = load i32, ptr %i.ev, align 8, !tbaa !53
  %i.ex = icmp eq i32 %i.ew, 0
  br i1 %i.ex, label %bb.ac, label %bb.ar

bb.ac:                                            ; preds = %bb.ab
  %i.ey = load ptr, ptr %i.c, align 8, !tbaa !45
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !35
  %i.fb = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !52
  %i.fd = add nsw i32 %i.fc, %i.fa
  %i.fe = call i64 (...) @util_cpu_time() #9
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !17
  %i.fh = sub nsw i64 %i.fe, %i.fg
  %i.fi = call ptr @util_print_time(i64 noundef %i.fh) #9
  %i.fj = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %i.fd, i32 noundef %5, ptr noundef %i.fi) ; 0 uses
  br label %bb.ar

bb.ad:                                            ; preds = %bb.x
  %i.fk = call i32 (ptr, ptr, ptr, ...) @sm_block_partition(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #9
  %.not147 = icmp eq i32 %i.fk, 0
  br i1 %.not147, label %bb.al, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.fl = load ptr, ptr %i.a, align 8, !tbaa !54  ; 4 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 72
  %i.fn = load i32, ptr %i.fm, align 8, !tbaa !29
  %i.fo = load ptr, ptr %i.b, align 8, !tbaa !54  ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 72
  %i.fq = load i32, ptr %i.fp, align 8, !tbaa !29
  %i.fr = icmp sgt i32 %i.fn, %i.fq
  br i1 %i.fr, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store ptr %i.fo, ptr %i.a, align 8, !tbaa !54
  store ptr %i.fl, ptr %i.b, align 8, !tbaa !54
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.fs = phi ptr [ %i.fl, %bb.af ], [ %i.fo, %bb.ae ]
  %i.ft = phi ptr [ %i.fo, %bb.af ], [ %i.fl, %bb.ae ]
  br i1 %i.n, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 48
  %i.fv = load i32, ptr %i.fu, align 8, !tbaa !8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fs, i64 48
  %i.fx = load i32, ptr %i.fw, align 8, !tbaa !8
  %i.fy = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %i.fv, i32 noundef %i.fx) ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.fz = getelementptr inbounds nuw i8, ptr %6, i64 20 ; 2 uses
  %i.ga = load i32, ptr %i.fz, align 4, !tbaa !36
  %i.gb = add nsw i32 %i.ga, 1
  store i32 %i.gb, ptr %i.fz, align 4, !tbaa !36
  %i.gc = call ptr (...) @solution_alloc() #9     ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 4 uses
  %i.ge = load i32, ptr %i.gd, align 8, !tbaa !53
  %i.gf = add nsw i32 %i.ge, 1
  store i32 %i.gf, ptr %i.gd, align 8, !tbaa !53
  %i.gg = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.gh = load i32, ptr %i.o, align 8, !tbaa !35
  %i.gi = sub nsw i32 %4, %i.gh
  %i.gj = add nsw i32 %5, 1                       ; 2 uses
  %i.gk = call ptr @sm_mincov(ptr noundef %i.gg, ptr noundef %i.gc, ptr noundef %2, i32 noundef 0, i32 noundef %i.gi, i32 noundef %i.gj, ptr noundef nonnull %6) ; 3 uses
  %i.gl = load i32, ptr %i.gd, align 8, !tbaa !53
  %i.gm = add nsw i32 %i.gl, -1
  store i32 %i.gm, ptr %i.gd, align 8, !tbaa !53
  call void (ptr, ...) @solution_free(ptr noundef %i.gc) #9
  %i.gn = load ptr, ptr %i.a, align 8, !tbaa !54
  call void (ptr, ...) @sm_free(ptr noundef %i.gn) #9
  %i.go = icmp eq ptr %i.gk, null
end_hunk_0
