inline.NumInlined: 3
inline.NumDeleted: 2
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_K_btm = external local_unnamed_addr global i32, align 4
@_K_atm = external local_unnamed_addr global i32, align 4
@_L_brlm = external local_unnamed_addr global i32, align 4
@_L_arlm = external local_unnamed_addr global i32, align 4
@_Y_flags = internal unnamed_addr global i32 0, align 4
@_Y_vflag = internal unnamed_addr global i1 false, align 4
@_Y_eflag = internal unnamed_addr global i1 false, align 4
@_T_gtol = external global ptr, align 8
@.str = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"can't open command file\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"literal  \22   \22    \\ \00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"comment  /*  */\09 \00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"literal  &&\09\09 \00", align 1
@.str.5 = private unnamed_addr constant [15 x i8] c"literal  ||\09\09 \00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"literal  <=\09\09 \00", align 1
@.str.7 = private unnamed_addr constant [15 x i8] c"literal  >=\09\09 \00", align 1
@.str.8 = private unnamed_addr constant [15 x i8] c"literal  !=\09\09 \00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"literal  ==\09\09 \00", align 1
@.str.10 = private unnamed_addr constant [15 x i8] c"literal  --\09\09 \00", align 1
@.str.11 = private unnamed_addr constant [15 x i8] c"literal  ++\09\09 \00", align 1
@.str.12 = private unnamed_addr constant [15 x i8] c"literal  <<\09\09 \00", align 1
@.str.13 = private unnamed_addr constant [15 x i8] c"literal  >>\09\09 \00", align 1
@.str.14 = private unnamed_addr constant [15 x i8] c"literal  ->\09\09 \00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"addalpha _\09\09 \00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"tol      a0 \09\09 \00", align 1
@.str.17 = private unnamed_addr constant [22 x i8] c"literal  '    '    \\\09\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"comment  #    $\09\00", align 1
@.str.19 = private unnamed_addr constant [15 x i8] c"tol      a0 \09\09\00", align 1
@.str.20 = private unnamed_addr constant [20 x i8] c"literal  '\09'     ' \00", align 1
@.str.21 = private unnamed_addr constant [17 x i8] c"comment  ^C   $\09\00", align 1
@.str.22 = private unnamed_addr constant [15 x i8] c"literal  \22 \09\22\09\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"comment  ; \09$\09\00", align 1
@.str.24 = private unnamed_addr constant [14 x i8] c"literal ' \09'\09\00", align 1
@.str.25 = private unnamed_addr constant [13 x i8] c"literal \22\09\22\09\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"comment (*\09*)\09\00", align 1
@.str.27 = private unnamed_addr constant [13 x i8] c"literal :=\09\09\00", align 1
@.str.28 = private unnamed_addr constant [13 x i8] c"literal <>\09\09\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"literal <=\09\09\00", align 1
@.str.30 = private unnamed_addr constant [13 x i8] c"literal >=\09\09\00", align 1
@.str.31 = private unnamed_addr constant [28 x i8] c"don't understand arguments\0A\00", align 1
@.str.32 = private unnamed_addr constant [32 x i8] c"spiff requires two file names.\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local i32 @main(i32 noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 5 uses
  %i.b = alloca [1024 x i8], align 16             ; 5 uses
  %i.c = icmp sgt i32 %0, 1
  br i1 %i.c, label %.lr.ph58.i, label %.critedge.thread.i

.lr.ph58.i:                                       ; preds = %bb.a, %bb.am
  %.2 = phi i32 [ %.3, %bb.am ], [ -1, %bb.a ]    ; 22 uses
  %.056.i = phi i32 [ %i.bi, %bb.am ], [ %0, %bb.a ] ; 26 uses
  %.04255.i = phi ptr [ %i.bh, %bb.am ], [ %1, %bb.a ] ; 28 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.04255.i, i64 8 ; 6 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !8    ; 9 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %i.g = icmp eq i8 %i.f, 45
  br i1 %i.g, label %bb.b, label %.critedge.i

bb.b:                                             ; preds = %.lr.ph58.i
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 1 ; 2 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11
  switch i8 %i.i, label %bb.al [
    i8 116, label %bb.c
    i8 119, label %bb.d
    i8 98, label %bb.e
    i8 99, label %bb.f
    i8 100, label %bb.g
    i8 109, label %bb.h
    i8 97, label %bb.i
    i8 114, label %bb.m
    i8 105, label %bb.q
    i8 101, label %bb.r
    i8 118, label %bb.s
    i8 113, label %bb.t
    i8 115, label %bb.u
    i8 102, label %bb.z
    i8 67, label %bb.af
    i8 83, label %bb.ag
    i8 70, label %bb.ah
    i8 76, label %bb.ai
    i8 77, label %bb.aj
    i8 48, label %bb.ak
    i8 49, label %bb.ak
    i8 50, label %bb.ak
    i8 51, label %bb.ak
    i8 52, label %bb.ak
    i8 53, label %bb.ak
    i8 54, label %bb.ak
    i8 55, label %bb.ak
    i8 56, label %bb.ak
    i8 57, label %bb.ak
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = load i32, ptr @_Y_flags, align 4, !tbaa !4
  %i.k = or i32 %i.j, 8
  store i32 %i.k, ptr @_Y_flags, align 4, !tbaa !4
  br label %bb.am

bb.d:                                             ; preds = %bb.b
  %i.l = load i32, ptr @_Y_flags, align 4, !tbaa !4
  %i.m = or i32 %i.l, 1
  store i32 %i.m, ptr @_Y_flags, align 4, !tbaa !4
  br label %bb.am

bb.e:                                             ; preds = %bb.b
  %i.n = load i32, ptr @_Y_flags, align 4, !tbaa !4
  %i.o = or i32 %i.n, 2
  store i32 %i.o, ptr @_Y_flags, align 4, !tbaa !4
  br label %bb.am

bb.f:                                             ; preds = %bb.b
  %i.p = load i32, ptr @_Y_flags, align 4, !tbaa !4
  %i.q = or i32 %i.p, 4
  store i32 %i.q, ptr @_Y_flags, align 4, !tbaa !4
  br label %bb.am

bb.g:                                             ; preds = %bb.b
  %i.r = load i32, ptr @_Y_flags, align 4, !tbaa !4
  %i.s = or i32 %i.r, 32
  store i32 %i.s, ptr @_Y_flags, align 4, !tbaa !4
  br label %bb.am

bb.h:                                             ; preds = %bb.b
  %i.t = load i32, ptr @_Y_flags, align 4, !tbaa !4
  %i.u = or i32 %i.t, 16
  store i32 %i.u, ptr @_Y_flags, align 4, !tbaa !4
  br label %bb.am

bb.i:                                             ; preds = %bb.b
  %i.v = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #6
  %i.w = icmp eq i64 %i.v, 2
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = add nsw i32 %.056.i, -1
  %i.y = getelementptr inbounds nuw i8, ptr %.04255.i, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.143.i = phi ptr [ %i.d, %bb.j ], [ %.04255.i, %bb.k ]
  %.038.i = phi ptr [ %i.z, %bb.j ], [ %i.aa, %bb.k ]
  %.1.i = phi i32 [ %i.x, %bb.j ], [ %.056.i, %bb.k ]
  call void (ptr, i32, ptr, ...) @_T_addtol(ptr noundef nonnull @_T_gtol, i32 noundef 0, ptr noundef %.038.i) #7
  br label %bb.am

bb.m:                                             ; preds = %bb.b
  %i.ab = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #6
  %i.ac = icmp eq i64 %i.ab, 2
  br i1 %i.ac, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ad = add nsw i32 %.056.i, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %.04255.i, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.244.i = phi ptr [ %i.d, %bb.n ], [ %.04255.i, %bb.o ]
  %.139.i = phi ptr [ %i.af, %bb.n ], [ %i.ag, %bb.o ]
  %.2.i = phi i32 [ %i.ad, %bb.n ], [ %.056.i, %bb.o ]
  call void (ptr, i32, ptr, ...) @_T_addtol(ptr noundef nonnull @_T_gtol, i32 noundef 1, ptr noundef %.139.i) #7
  br label %bb.am

bb.q:                                             ; preds = %bb.b
  call void (ptr, i32, ptr, ...) @_T_addtol(ptr noundef nonnull @_T_gtol, i32 noundef 2, ptr noundef null) #7
  br label %bb.am

bb.r:                                             ; preds = %bb.b
  store i1 true, ptr @_Y_eflag, align 4
  br label %bb.am

bb.s:                                             ; preds = %bb.b
  store i1 true, ptr @_Y_vflag, align 4
  br label %bb.am

bb.t:                                             ; preds = %bb.b
  call void (...) @Z_setquiet() #7
  br label %bb.am

bb.u:                                             ; preds = %bb.b
  %i.ah = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.e) #6
  %i.ai = icmp eq i64 %i.ah, 2
  br i1 %i.ai, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.aj = add nsw i32 %.056.i, -1
  %i.ak = getelementptr inbounds nuw i8, ptr %.04255.i, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !8
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 2
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %.345.i = phi ptr [ %i.d, %bb.v ], [ %.04255.i, %bb.w ]
  %.240.i = phi ptr [ %i.al, %bb.v ], [ %i.am, %bb.w ] ; 2 uses
  %.3.i = phi i32 [ %i.aj, %bb.v ], [ %.056.i, %bb.w ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.an = load i8, ptr %.240.i, align 1, !tbaa !11 ; 2 uses
  %.not12.i.i = icmp eq i8 %i.an, 0
  br i1 %.not12.i.i, label %_Y_cmdlines.exit.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.x, %.preheader.i.i.backedge
  %i.ao = phi i8 [ %.be, %.preheader.i.i.backedge ], [ %i.an, %bb.x ] ; 2 uses
  %.1.i.i = phi ptr [ %.1.i.i.be, %.preheader.i.i.backedge ], [ %.240.i, %bb.x ] ; 3 uses
  %.0.i.i = phi ptr [ %.0.i.i.be, %.preheader.i.i.backedge ], [ %i.a, %bb.x ] ; 3 uses
  switch i8 %i.ao, label %bb.y [
    i8 0, label %.critedge.i.i
    i8 10, label %.critedge.i.i
  ]

bb.y:                                             ; preds = %.preheader.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 1 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 1
  store i8 %i.ao, ptr %.0.i.i, align 1, !tbaa !11
  %.pr.i.i = load i8, ptr %i.ap, align 1, !tbaa !11
  br label %.preheader.i.i.backedge

.preheader.i.i.backedge:                          ; preds = %bb.y, %.critedge.i.i
  %.be = phi i8 [ %.pr.i.i, %bb.y ], [ %i.at, %.critedge.i.i ]
  %.1.i.i.be = phi ptr [ %i.ap, %bb.y ], [ %spec.select.i.i, %.critedge.i.i ]
  %.0.i.i.be = phi ptr [ %i.aq, %bb.y ], [ %i.a, %.critedge.i.i ]
  br label %.preheader.i.i, !llvm.loop !12

.critedge.i.i:                                    ; preds = %.preheader.i.i, %.preheader.i.i
  store i8 0, ptr %.0.i.i, align 1, !tbaa !11
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull %i.a) #7
  %i.ar = load i8, ptr %.1.i.i, align 1, !tbaa !11
  %i.as = icmp eq i8 %i.ar, 10
  %spec.select.idx.i.i = zext i1 %i.as to i64
  %spec.select.i.i = getelementptr inbounds nuw i8, ptr %.1.i.i, i64 %spec.select.idx.i.i ; 2 uses
  %i.at = load i8, ptr %spec.select.i.i, align 1, !tbaa !11 ; 2 uses
  %.not.i.i = icmp eq i8 %i.at, 0
  br i1 %.not.i.i, label %_Y_cmdlines.exit.i, label %.preheader.i.i.backedge

_Y_cmdlines.exit.i:                               ; preds = %.critedge.i.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  br label %bb.am

bb.z:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #7
  %2 = load ptr, ptr %i.d, align 8, !tbaa !8      ; 2 uses
  %i.au = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #6
  %i.av = icmp eq i64 %i.au, 2
  br i1 %i.av, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.aw = add nsw i32 %.056.i, -1
  %i.ax = getelementptr inbounds nuw i8, ptr %.04255.i, i64 16
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !8
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.446.i = phi ptr [ %i.d, %bb.aa ], [ %.04255.i, %bb.ab ]
  %.341.i = phi ptr [ %i.ay, %bb.aa ], [ %i.az, %bb.ab ]
  %.4.i = phi i32 [ %i.aw, %bb.aa ], [ %.056.i, %bb.ab ]
  %i.ba = call noalias ptr @fopen(ptr noundef %.341.i, ptr noundef nonnull @.str) ; 4 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.1) #7
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.bc = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 1024, ptr noundef %i.ba)
  %.not4854.i = icmp eq ptr %i.bc, null
  br i1 %.not4854.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ae, %.lr.ph.i
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull %i.b) #7
  %i.bd = call ptr @fgets(ptr noundef nonnull %i.b, i32 noundef 1024, ptr noundef %i.ba)
  %.not48.i = icmp eq ptr %i.bd, null
  br i1 %.not48.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !14

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.ae
  %i.be = call i32 @fclose(ptr noundef %i.ba)     ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #7
  br label %bb.am

bb.af:                                            ; preds = %bb.b
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.2) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.3) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.4) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.5) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.6) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.7) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.8) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.9) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.10) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.11) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.12) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.13) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.14) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.15) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.16) #7
  br label %bb.am

bb.ag:                                            ; preds = %bb.b
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.17) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.18) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.19) #7
  br label %bb.am

bb.ah:                                            ; preds = %bb.b
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.20) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.21) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.19) #7
  br label %bb.am

bb.ai:                                            ; preds = %bb.b
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.22) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.23) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.19) #7
  br label %bb.am

bb.aj:                                            ; preds = %bb.b
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.24) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.25) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.26) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.27) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.28) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.29) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.30) #7
  call void (ptr, ...) @C_addcmd(ptr noundef nonnull @.str.19) #7
  br label %bb.am

bb.ak:                                            ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.bf = call i64 @strtol(ptr noundef nonnull captures(none) %i.h, ptr noundef null, i32 noundef 10) #7, !inline_history !15
  %i.bg = trunc i64 %i.bf to i32
  br label %bb.am

bb.al:                                            ; preds = %bb.b
  call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.31) #7
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %._crit_edge.i, %_Y_cmdlines.exit.i, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.l, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.3 = phi i32 [ %.2, %bb.al ], [ %.2, %bb.c ], [ %.2, %bb.d ], [ %.2, %bb.e ], [ %.2, %bb.f ], [ %.2, %bb.g ], [ %.2, %bb.h ], [ %.2, %bb.l ], [ %.2, %bb.p ], [ %.2, %bb.q ], [ %.2, %bb.r ], [ %.2, %bb.s ], [ %.2, %bb.t ], [ %.2, %_Y_cmdlines.exit.i ], [ %.2, %._crit_edge.i ], [ %.2, %bb.af ], [ %.2, %bb.ag ], [ %.2, %bb.ah ], [ %.2, %bb.ai ], [ %.2, %bb.aj ], [ %i.bg, %bb.ak ] ; 2 uses
  %.547.i = phi ptr [ %.04255.i, %bb.al ], [ %.04255.i, %bb.c ], [ %.04255.i, %bb.d ], [ %.04255.i, %bb.e ], [ %.04255.i, %bb.f ], [ %.04255.i, %bb.g ], [ %.04255.i, %bb.h ], [ %.143.i, %bb.l ], [ %.244.i, %bb.p ], [ %.04255.i, %bb.q ], [ %.04255.i, %bb.r ], [ %.04255.i, %bb.s ], [ %.04255.i, %bb.t ], [ %.345.i, %_Y_cmdlines.exit.i ], [ %.446.i, %._crit_edge.i ], [ %.04255.i, %bb.af ], [ %.04255.i, %bb.ag ], [ %.04255.i, %bb.ah ], [ %.04255.i, %bb.ai ], [ %.04255.i, %bb.aj ], [ %.04255.i, %bb.ak ]
  %.5.i = phi i32 [ %.056.i, %bb.al ], [ %.056.i, %bb.c ], [ %.056.i, %bb.d ], [ %.056.i, %bb.e ], [ %.056.i, %bb.f ], [ %.056.i, %bb.g ], [ %.056.i, %bb.h ], [ %.1.i, %bb.l ], [ %.2.i, %bb.p ], [ %.056.i, %bb.q ], [ %.056.i, %bb.r ], [ %.056.i, %bb.s ], [ %.056.i, %bb.t ], [ %.3.i, %_Y_cmdlines.exit.i ], [ %.4.i, %._crit_edge.i ], [ %.056.i, %bb.af ], [ %.056.i, %bb.ag ], [ %.056.i, %bb.ah ], [ %.056.i, %bb.ai ], [ %.056.i, %bb.aj ], [ %.056.i, %bb.ak ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.547.i, i64 8 ; 2 uses
  %i.bi = add nsw i32 %.5.i, -1
  %i.bj = icmp sgt i32 %.5.i, 2
  br i1 %i.bj, label %.lr.ph58.i, label %.critedge.thread.i, !llvm.loop !16

.critedge.i:                                      ; preds = %.lr.ph58.i
  %.not.i = icmp eq i32 %.056.i, 3
  br i1 %.not.i, label %bb.an, label %.critedge.thread.i

.critedge.thread.i:                               ; preds = %bb.am, %.critedge.i, %bb.a
  %.121 = phi i32 [ -1, %bb.a ], [ %.2, %.critedge.i ], [ %.3, %bb.am ]
  %.04252.i = phi ptr [ %1, %bb.a ], [ %.04255.i, %.critedge.i ], [ %i.bh, %bb.am ] ; 2 uses
  call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.32) #7
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.04252.i, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !8
  br label %bb.an

bb.an:                                            ; preds = %.critedge.i, %.critedge.thread.i
  %.4 = phi i32 [ %.121, %.critedge.thread.i ], [ %.2, %.critedge.i ] ; 2 uses
  %i.bk = phi ptr [ %.pre.i, %.critedge.thread.i ], [ %i.e, %.critedge.i ]
  %.04253.i = phi ptr [ %.04252.i, %.critedge.thread.i ], [ %.04255.i, %.critedge.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.04253.i, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !8
  call void (...) @T_initdefault() #7
  %i.bn = call i32 @L_init_file(i32 noundef 0, ptr noundef %i.bk) #7 ; 0 uses
  store i32 0, ptr @_K_atm, align 4, !tbaa !4
  %i.bo = load i32, ptr @_L_arlm, align 4
  %i.bp = load i32, ptr @_Y_flags, align 4, !tbaa !4
  call void (i32, i32, i32, i32, ...) @P_file_parse(i32 noundef 0, i32 noundef 0, i32 noundef %i.bo, i32 noundef %i.bp) #7
  %i.bq = call i32 @L_init_file(i32 noundef 1, ptr noundef %i.bm) #7 ; 0 uses
  store i32 0, ptr @_K_btm, align 4, !tbaa !4
  %i.br = load i32, ptr @_L_brlm, align 4
  %i.bs = load i32, ptr @_Y_flags, align 4, !tbaa !4
  call void (i32, i32, i32, i32, ...) @P_file_parse(i32 noundef 1, i32 noundef 0, i32 noundef %i.br, i32 noundef %i.bs) #7
  %.b = load i1, ptr @_Y_vflag, align 4
  br i1 %.b, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.bt = load i32, ptr @_Y_flags, align 4, !tbaa !4
  %i.bu = call i32 @V_visual(i32 noundef %i.bt) #7
  br label %bb.aw

bb.ap:                                            ; preds = %bb.an
  %i.bv = icmp eq i32 %.4, -1
  %i.bw = load i32, ptr @_K_atm, align 4
  %i.bx = load i32, ptr @_K_btm, align 4
  %i.by = add nsw i32 %i.bx, %i.bw
  %.020 = select i1 %i.bv, i32 %i.by, i32 %.4     ; 2 uses
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.at
  %.128 = phi i32 [ 0, %bb.ap ], [ %i.ce, %bb.at ]
  %.b16 = load i1, ptr @_Y_eflag, align 4
  %i.bz = load i32, ptr @_K_atm, align 4, !tbaa !4 ; 2 uses
  %i.ca = load i32, ptr @_K_btm, align 4, !tbaa !4 ; 2 uses
  %i.cb = load i32, ptr @_Y_flags, align 4, !tbaa !4 ; 2 uses
  br i1 %.b16, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.cc = call ptr (i32, i32, i32, i32, ...) @Q_do_exact(i32 noundef %i.bz, i32 noundef %i.ca, i32 noundef %.020, i32 noundef %i.cb) #7
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.cd = call ptr (i32, i32, i32, i32, ...) @G_do_miller(i32 noundef %i.bz, i32 noundef %i.ca, i32 noundef %.020, i32 noundef %i.cb) #7
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as
  %.114 = phi ptr [ %i.cc, %bb.ar ], [ %i.cd, %bb.as ] ; 2 uses
  %i.ce = add nuw nsw i32 %.128, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.ce, 30001
  br i1 %exitcond.not, label %bb.au, label %bb.aq, !llvm.loop !17

bb.au:                                            ; preds = %bb.at
  %.not = icmp eq ptr %.114, null
  br i1 %.not, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.cf = load i32, ptr @_Y_flags, align 4, !tbaa !4
  call void (ptr, i32, ...) @O_output(ptr noundef nonnull %.114, i32 noundef %i.cf) #7
  br label %bb.aw

bb.aw:                                            ; preds = %bb.au, %bb.av, %bb.ao
  %.015 = phi i32 [ %i.bu, %bb.ao ], [ 1, %bb.av ], [ 0, %bb.au ]
  ret i32 %.015
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @T_initdefault(...) local_unnamed_addr #2

declare i32 @L_init_file(i32 noundef, ptr noundef) local_unnamed_addr #2

declare void @P_file_parse(...) local_unnamed_addr #2

declare i32 @V_visual(i32 noundef) local_unnamed_addr #2

declare ptr @Q_do_exact(...) local_unnamed_addr #2

declare ptr @G_do_miller(...) local_unnamed_addr #2

declare void @O_output(...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #3

declare void @_T_addtol(...) local_unnamed_addr #2
end_hunk_0
