inline.NumInlined: 1675
inline.NumDeleted: 268
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 16
begin_hunk_0_@formal_argument_error:bb.a
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.by, ptr %i.cn, align 4, !tbaa !55
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 %i.cl, ptr %i.co, align 4, !tbaa !56
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %3, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.766)
  %i.cp = load i32, ptr %i.bx, align 4, !tbaa !29
  %i.cq = icmp eq i32 %i.by, %i.cp
  br i1 %i.cq, label %bb.i, label %parser_yyerror0.exit10

bb.i:                                             ; preds = %bb.h
  %i.cr = getelementptr i8, ptr %0, i64 56
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !189
  %i.ct = getelementptr i8, ptr %0, i64 368
  %i.cu = load i64, ptr %i.ct, align 8, !tbaa !190
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.cu, ptr noundef nonnull readonly %3, i32 noundef %i.by, ptr noundef %i.cs)
  br label %parser_yyerror0.exit10

parser_yyerror0.exit10:                           ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #31
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #31
  %i.cv = getelementptr i8, ptr %0, i64 196       ; 2 uses
  %i.cw = load i32, ptr %i.cv, align 4, !tbaa !29 ; 4 uses
  %i.cx = getelementptr i8, ptr %0, i64 96
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !49
  %i.cz = getelementptr i8, ptr %0, i64 72
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !50
  %i.db = ptrtoint ptr %i.cy to i64
  %i.dc = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dd = sub i64 %i.db, %i.dc
  %i.de = trunc i64 %i.dd to i32
  %i.df = getelementptr i8, ptr %0, i64 80
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !188
  %i.dh = ptrtoint ptr %i.dg to i64
  %i.di = sub i64 %i.dh, %i.dc
  %i.dj = trunc i64 %i.di to i32
  store i32 %i.cw, ptr %2, align 4, !tbaa !51
  %i.dk = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.de, ptr %i.dk, align 4, !tbaa !54
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.cw, ptr %i.dl, align 4, !tbaa !55
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 12
  store i32 %i.dj, ptr %i.dm, align 4, !tbaa !56
  call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef nonnull %0, ptr noundef nonnull readonly %2, ptr noundef nonnull @.str.561, ptr noundef nonnull @.str.767)
  %i.dn = load i32, ptr %i.cv, align 4, !tbaa !29
  %i.do = icmp eq i32 %i.cw, %i.dn
  br i1 %i.do, label %bb.k, label %parser_yyerror0.exit11

bb.k:                                             ; preds = %bb.j
  %i.dp = getelementptr i8, ptr %0, i64 56
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !189
  %i.dr = getelementptr i8, ptr %0, i64 368
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !190
  call void @ruby_show_error_line(ptr nonnull readonly poison, i64 noundef %i.ds, ptr noundef nonnull readonly %2, i32 noundef %i.cw, ptr noundef %i.dq)
  br label %parser_yyerror0.exit11

parser_yyerror0.exit11:                           ; preds = %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #31
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.dt = tail call fastcc i32 @shadowing_lvar_0(ptr noundef %0, i64 noundef %1) ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %parser_yyerror0.exit11, %parser_yyerror0.exit10, %parser_yyerror0.exit9, %parser_yyerror0.exit8, %parser_yyerror0.exit
  %.0 = phi i64 [ 20, %parser_yyerror0.exit11 ], [ 0, %bb.l ], [ 20, %parser_yyerror0.exit ], [ 20, %parser_yyerror0.exit8 ], [ 20, %parser_yyerror0.exit9 ], [ 20, %parser_yyerror0.exit10 ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @arg_var(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 14
  %i.b = icmp ne i64 %i.a, 0
  %i.c = icmp ult i64 %1, 3776
  %i.d = lshr i64 %1, 4
  %i.e = trunc i64 %i.d to i32                    ; 2 uses
  %i.f = add i32 %i.e, -245
  %i.g = icmp ult i32 %i.f, -9
  %.not6.i = or i1 %i.b, %i.g
  %narrow.i.not.i = or i1 %i.c, %.not6.i
  br i1 %narrow.i.not.i, label %numparam_name.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = add nsw i32 %i.e, -235
  tail call void (ptr, ptr, ptr, ...) @parser_compile_error(ptr noundef %0, ptr noundef null, ptr noundef nonnull @.str.942, i32 noundef %i.h)
  br label %numparam_name.exit

numparam_name.exit:                               ; preds = %bb.a, %bb.b
  %i.i = getelementptr i8, ptr %0, i64 168
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !101
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !198  ; 7 uses
  %i.l = getelementptr i8, ptr %0, i64 360
  %i.m = load i32, ptr %i.l, align 8
  %i.n = and i32 %i.m, 32
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %numparam_name.exit
  %i.o = tail call ptr @rb_id2name(i64 noundef %1) #31
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %0, ptr noundef nonnull @.str.878, i32 noundef 14985, ptr noundef nonnull @.str.871, ptr noundef %i.k, ptr noundef %i.o)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %numparam_name.exit
  %i.p = icmp ult ptr %i.k, inttoptr (i64 2 to ptr)
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ...) @rb_parser_fatal(ptr noundef nonnull %0, ptr noundef nonnull @.str.879, ptr noundef %i.k)
  br label %vtable_add_gen.exit

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %i.k, i64 8        ; 3 uses
  %i.r = load i32, ptr %i.q, align 8, !tbaa !195  ; 3 uses
  %i.s = getelementptr i8, ptr %i.k, i64 12       ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !tbaa !196
  %i.u = icmp eq i32 %i.r, %i.t
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !197 ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.v = shl i32 %i.r, 1                          ; 2 uses
  store i32 %i.v, ptr %i.s, align 4, !tbaa !196
  %i.w = sext i32 %i.v to i64
  %i.x = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre.i, i64 noundef %i.w, i64 noundef 8) #38 ; 2 uses
  store ptr %i.x, ptr %i.k, align 8, !tbaa !197
  %.pre21.i = load i32, ptr %i.q, align 8, !tbaa !195
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.y = phi i32 [ %.pre21.i, %bb.g ], [ %i.r, %bb.f ] ; 2 uses
  %i.z = phi ptr [ %i.x, %bb.g ], [ %.pre.i, %bb.f ]
  %i.aa = add i32 %i.y, 1
  store i32 %i.aa, ptr %i.q, align 8, !tbaa !195
  %i.ab = sext i32 %i.y to i64
  %i.ac = getelementptr [8 x i8], ptr %i.z, i64 %i.ab
  store i64 %1, ptr %i.ac, align 8, !tbaa !11
  br label %vtable_add_gen.exit

vtable_add_gen.exit:                              ; preds = %bb.e, %bb.h
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @last_expr_node(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0) unnamed_addr #7 {
bb.a:
  %.not10 = icmp eq ptr %0, null
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.011 = phi ptr [ %.1, %bb.d ], [ %0, %bb.a ]   ; 5 uses
  %.0.val9 = load i64, ptr %.011, align 8, !tbaa !69
  %i.a = trunc i64 %.0.val9 to i32
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 127
  switch i32 %i.c, label %._crit_edge [
    i32 1, label %bb.b
    i32 18, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr i8, ptr %.011, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !222
  %i.f = getelementptr i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !74
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr i8, ptr %.011, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !75   ; 2 uses
  %.not8 = icmp eq ptr %i.i, null
  br i1 %.not8, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %i.g, %bb.b ], [ %i.i, %bb.c ]  ; 2 uses
  %.not = icmp eq ptr %.1, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !471

._crit_edge:                                      ; preds = %bb.d, %bb.c, %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %.011, %.lr.ph ], [ %.011, %bb.c ], [ null, %bb.d ]
  ret ptr %.0.lcssa
}

; Function Attrs: nofree nounwind sspstrong uwtable
define internal fastcc range(i32 -2, 1) i32 @yysyntax_error(ptr nofree noundef nonnull captures(none) %0, ptr %.0.val, ptr nofree readonly captures(none) %.0.val1, i32 %.8.val, ptr nofree noundef readnone captures(none) %1) unnamed_addr #11 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #31
  %.not.i = icmp eq i32 %.8.val, -2
  br i1 %.not.i, label %yy_syntax_error_arguments.exit.thread6, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %.8.val, ptr %i.a, align 16, !tbaa !7
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %.val.val.i = load i16, ptr %.0.val1, align 2, !tbaa !58
  %i.c = sext i16 %.val.val.i to i64
  %i.d = getelementptr [2 x i8], ptr @yypact, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !58   ; 3 uses
  %i.f = sext i16 %i.e to i32                     ; 4 uses
  %i.g = icmp eq i16 %i.e, -1154
  br i1 %i.g, label %.critedge.i.i.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = icmp slt i16 %i.e, 0
  %i.i = sub nsw i32 0, %i.f                      ; 2 uses
  %i.j = select i1 %i.h, i32 %i.i, i32 0
  %i.k = sub nsw i32 16093, %i.f
  %i.l = tail call i32 @llvm.smin.i32(i32 %i.k, i32 162) ; 2 uses
  %.not422.i.i = icmp slt i32 %i.j, %i.l
  br i1 %.not422.i.i, label %.lr.ph.i.i, label %.critedge.i.i.thread

.lr.ph.i.i:                                       ; preds = %bb.c
  %i.m = sext i32 %i.i to i64
  %smax7.i.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 0)
  %2 = zext nneg i32 %smax7.i.i to i64
  %3 = add nsw i64 %2, %i.m
  %i.n = sext i32 %i.l to i64
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %bb.g
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.g ], [ %3, %.lr.ph.i.i ] ; 4 uses
  %.0363.i.i = phi i32 [ %.1.i.i, %bb.g ], [ 0, %.lr.ph.i.i ] ; 5 uses
  %i.o = trunc nsw i64 %indvars.iv.i.i to i32     ; 2 uses
  %i.p = add i32 %i.o, %i.f
  %i.q = sext i32 %i.p to i64                     ; 2 uses
  %i.r = getelementptr [2 x i8], ptr @yycheck, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !58
  %i.t = sext i16 %i.s to i64
  %i.u = icmp eq i64 %indvars.iv.i.i, %i.t
  %i.v = icmp ne i64 %indvars.iv.i.i, 1
  %or.cond.i.i = and i1 %i.v, %i.u
  br i1 %or.cond.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph.split.i.i
  %i.w = getelementptr [2 x i8], ptr @yytable, i64 %i.q
  %i.x = load i16, ptr %i.w, align 2, !tbaa !58
  %i.y = icmp eq i16 %i.x, -816
  br i1 %i.y, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = icmp eq i32 %.0363.i.i, 4
  br i1 %i.z, label %yy_syntax_error_arguments.exit.thread6, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aa = add i32 %.0363.i.i, 1
  %i.ab = sext i32 %.0363.i.i to i64
  %i.ac = getelementptr [4 x i8], ptr %i.b, i64 %i.ab
  store i32 %i.o, ptr %i.ac, align 4, !tbaa !7
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %.lr.ph.split.i.i
  %.1.i.i = phi i32 [ %.0363.i.i, %bb.d ], [ %i.aa, %bb.f ], [ %.0363.i.i, %.lr.ph.split.i.i ] ; 4 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i.i, %i.n
  br i1 %exitcond.not.i, label %.critedge.i.i, label %.lr.ph.split.i.i, !llvm.loop !472

.critedge.i.i:                                    ; preds = %bb.g
  switch i32 %.1.i.i, label %yy_syntax_error_arguments.exit [
    i32 0, label %.critedge.i.i.thread
    i32 -2, label %yy_syntax_error_arguments.exit.thread8
  ]

.critedge.i.i.thread:                             ; preds = %bb.c, %bb.b, %.critedge.i.i
  store i32 -2, ptr %i.b, align 4, !tbaa !7
  br label %yy_syntax_error_arguments.exit.thread6

yy_syntax_error_arguments.exit:                   ; preds = %.critedge.i.i
  %i.ad = add i32 %.1.i.i, 1                      ; 8 uses
  switch i32 %i.ad, label %yy_syntax_error_arguments.exit.thread6 [
    i32 -2, label %yy_syntax_error_arguments.exit.thread8
    i32 5, label %bb.l
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 3, label %bb.j
    i32 4, label %bb.k
  ]

bb.h:                                             ; preds = %yy_syntax_error_arguments.exit
  br label %yy_syntax_error_arguments.exit.thread6

bb.i:                                             ; preds = %yy_syntax_error_arguments.exit
  br label %yy_syntax_error_arguments.exit.thread6

bb.j:                                             ; preds = %yy_syntax_error_arguments.exit
  br label %yy_syntax_error_arguments.exit.thread6

bb.k:                                             ; preds = %yy_syntax_error_arguments.exit
  br label %yy_syntax_error_arguments.exit.thread6

bb.l:                                             ; preds = %yy_syntax_error_arguments.exit
  br label %yy_syntax_error_arguments.exit.thread6

yy_syntax_error_arguments.exit.thread6:           ; preds = %bb.e, %.critedge.i.i.thread, %bb.a, %yy_syntax_error_arguments.exit, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.118.i5 = phi i32 [ %i.ad, %bb.k ], [ %i.ad, %bb.l ], [ %i.ad, %bb.h ], [ %i.ad, %bb.i ], [ %i.ad, %bb.j ], [ %i.ad, %yy_syntax_error_arguments.exit ], [ 0, %bb.a ], [ 1, %.critedge.i.i.thread ], [ 1, %bb.e ] ; 4 uses
  %.048 = phi ptr [ @.str.587, %bb.k ], [ @.str.588, %bb.l ], [ @.str.584, %bb.h ], [ @.str.585, %bb.i ], [ @.str.586, %bb.j ], [ @.str.64, %yy_syntax_error_arguments.exit ], [ @.str.64, %bb.a ], [ @.str.584, %.critedge.i.i.thread ], [ @.str.584, %bb.e ] ; 2 uses
  %i.ae = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.048) #35
  %i.af = shl i32 %.118.i5, 1
  %i.ag = sext i32 %i.af to i64
  %reass.sub = sub i64 %i.ae, %i.ag
  %i.ah = add i64 %reass.sub, 1                   ; 2 uses
  %.not18 = icmp sgt i32 %.118.i5, 0
  br i1 %.not18, label %.lr.ph.preheader, label %.thread

.lr.ph.preheader:                                 ; preds = %yy_syntax_error_arguments.exit.thread6
  %wide.trip.count = zext nneg i32 %.118.i5 to i64
  br label %.lr.ph

bb.m:                                             ; preds = %rb_yytnamerr.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.thread, label %.lr.ph, !llvm.loop !473

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %.04619 = phi i64 [ %i.ah, %.lr.ph.preheader ], [ %i.bq, %bb.m ] ; 2 uses
  %i.ai = getelementptr [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !7
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr [8 x i8], ptr @yytname, i64 %i.ak
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !65 ; 3 uses
  %i.an = load i8, ptr %i.am, align 1, !tbaa !15
  %i.ao = icmp eq i8 %i.an, 34
  br i1 %i.ao, label %.preheader.i.outer, label %.thread.i

.preheader.i.outer:                               ; preds = %.lr.ph, %.preheader.i.outer.backedge
  %.055.i.ph = phi i64 [ %.055.i.ph.be, %.preheader.i.outer.backedge ], [ 0, %.lr.ph ]
  %.053.i.ph = phi i64 [ %.053.i.ph.be, %.preheader.i.outer.backedge ], [ 0, %.lr.ph ] ; 4 uses
  %.052.i.ph = phi ptr [ %.052.i.ph.be, %.preheader.i.outer.backedge ], [ %i.am, %.lr.ph ]
  %.not66.i = icmp eq i64 %.053.i.ph, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %.preheader.i.backedge, %.preheader.i.outer
  %.055.i = phi i64 [ %.055.i.ph, %.preheader.i.outer ], [ %.055.i.be, %.preheader.i.backedge ] ; 4 uses
  %.052.i = phi ptr [ %.052.i.ph, %.preheader.i.outer ], [ %.052.i.be, %.preheader.i.backedge ] ; 5 uses
  %i.ap = getelementptr i8, ptr %.052.i, i64 1    ; 3 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !15
  switch i8 %i.aq, label %bb.t [
    i8 0, label %.thread.i
    i8 39, label %bb.n
    i8 44, label %.thread.i
    i8 92, label %bb.s
    i8 34, label %rb_yytnamerr.exit
  ]

bb.n:                                             ; preds = %.preheader.i
  %i.ar = getelementptr i8, ptr %.052.i, i64 2    ; 3 uses
  br i1 %.not66.i, label %.preheader12, label %.preheader13

.preheader12:                                     ; preds = %bb.n, %.preheader12
  %.0.i.i = phi i32 [ %i.aw, %.preheader12 ], [ 0, %bb.n ] ; 2 uses
  %i.as = sext i32 %.0.i.i to i64                 ; 3 uses
  %i.at = getelementptr i8, ptr %i.ar, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !15
  %i.av = icmp eq i8 %i.au, 39
  %i.aw = add i32 %.0.i.i, 1
  br i1 %i.av, label %.preheader12, label %count_char.exit.i, !llvm.loop !474

count_char.exit.i:                                ; preds = %.preheader12
  %i.ax = add nsw i64 %i.as, 1                    ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ap, i64 %i.as
  br label %.preheader.i.outer.backedge

.preheader.i.outer.backedge:                      ; preds = %count_char.exit.i, %bb.o
  %.053.i.ph.pn = phi i64 [ %.053.i.ph, %bb.o ], [ %i.ax, %count_char.exit.i ]
  %.053.i.ph.be = phi i64 [ 0, %bb.o ], [ %i.ax, %count_char.exit.i ]
  %.052.i.ph.be = phi ptr [ %i.bg, %bb.o ], [ %i.ay, %count_char.exit.i ]
  %.055.i.ph.be = add i64 %.053.i.ph.pn, %.055.i
  br label %.preheader.i.outer, !llvm.loop !475

.preheader13:                                     ; preds = %bb.n, %.preheader13
  %.0.i75.i = phi i32 [ %i.bd, %.preheader13 ], [ 0, %bb.n ] ; 2 uses
  %i.az = sext i32 %.0.i75.i to i64               ; 2 uses
  %i.ba = getelementptr i8, ptr %i.ar, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !15
  %i.bc = icmp eq i8 %i.bb, 39
  %i.bd = add i32 %.0.i75.i, 1
  br i1 %i.bc, label %.preheader13, label %count_char.exit76.i, !llvm.loop !474

count_char.exit76.i:                              ; preds = %.preheader13
  %i.be = add nsw i64 %i.az, 1
  %i.bf = icmp eq i64 %i.be, %.053.i.ph
  br i1 %i.bf, label %bb.o, label %bb.p

bb.o:                                             ; preds = %count_char.exit76.i
  %i.bg = getelementptr i8, ptr %.052.i, i64 %.053.i.ph
  br label %.preheader.i.outer.backedge

bb.p:                                             ; preds = %count_char.exit76.i
  %i.bh = load i8, ptr %i.ar, align 1, !tbaa !15
  switch i8 %i.bh, label %bb.q [
    i8 0, label %.thread.i
    i8 39, label %.thread.i
  ]

bb.q:                                             ; preds = %bb.p
  %i.bi = getelementptr i8, ptr %.052.i, i64 3    ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 1, !tbaa !15
  %i.bk = icmp eq i8 %i.bj, 39
  br i1 %i.bk, label %bb.r, label %.thread.i

bb.r:                                             ; preds = %bb.q
  %i.bl = add i64 %.055.i, 3
  br label %.preheader.i.backedge

bb.s:                                             ; preds = %.preheader.i
  %i.bm = getelementptr i8, ptr %.052.i, i64 2    ; 2 uses
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !15
  %.not65.i = icmp eq i8 %i.bn, 92
  br i1 %.not65.i, label %bb.t, label %.thread.i

bb.t:                                             ; preds = %bb.s, %.preheader.i
  %.1.i = phi ptr [ %i.ap, %.preheader.i ], [ %i.bm, %bb.s ]
  %i.bo = add i64 %.055.i, 1
  br label %.preheader.i.backedge

.preheader.i.backedge:                            ; preds = %bb.t, %bb.r
  %.055.i.be = phi i64 [ %i.bl, %bb.r ], [ %i.bo, %bb.t ]
  %.052.i.be = phi ptr [ %i.bi, %bb.r ], [ %.1.i, %bb.t ]
  br label %.preheader.i, !llvm.loop !475

.thread.i:                                        ; preds = %bb.s, %bb.q, %bb.p, %bb.p, %.preheader.i, %.preheader.i, %.lr.ph
  %i.bp = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.am) #35
  br label %rb_yytnamerr.exit

end_hunk_0
