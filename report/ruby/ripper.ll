inline.NumInlined: 2066
inline.NumDeleted: 252
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@add_forwarding_args:bb.a
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 12 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !187
  %i.be = icmp eq i32 %i.bb, %i.bd
  %.pre.i.i10 = load ptr, ptr %i.ay, align 8, !tbaa !188 ; 2 uses
  br i1 %i.be, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bf = shl nsw i32 %i.bb, 1                    ; 2 uses
  store i32 %i.bf, ptr %i.bc, align 4, !tbaa !187
  %i.bg = sext i32 %i.bf to i64
  %i.bh = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre.i.i10, i64 noundef %i.bg, i64 noundef 8) #36 ; 2 uses
  store ptr %i.bh, ptr %i.ay, align 8, !tbaa !188
  %.pre1.i.i11 = load i32, ptr %i.ba, align 8, !tbaa !186
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bi = phi i32 [ %.pre1.i.i11, %bb.p ], [ %i.bb, %bb.o ] ; 2 uses
  %i.bj = phi ptr [ %i.bh, %bb.p ], [ %.pre.i.i10, %bb.o ]
  %i.bk = add nsw i32 %i.bi, 1
  store i32 %i.bk, ptr %i.ba, align 8, !tbaa !186
  %i.bl = sext i32 %i.bi to i64
  %i.bm = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bl
  store i64 129, ptr %i.bm, align 8, !tbaa !11
  br label %arg_var.exit12

arg_var.exit12:                                   ; preds = %bb.n, %bb.q
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc i64 @formal_argument_error(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp ugt i64 %1, 171
  %i.b = trunc i64 %1 to i32
  %i.c = and i32 %i.b, 14
  %.0.i = select i1 %i.a, i32 %i.c, i32 -1
  switch i32 %.0.i, label %bb.f [
    i32 0, label %bb.g
    i32 10, label %bb.b
    i32 2, label %bb.c
    i32 6, label %bb.d
    i32 12, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !49
  %i.f = tail call i64 @rb_enc_str_new_static(ptr noundef nonnull @.str.583, i64 noundef 36, ptr noundef %i.e) #29
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !49
  %i.i = tail call i64 @rb_enc_str_new_static(ptr noundef nonnull @.str.584, i64 noundef 46, ptr noundef %i.h) #29
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.l = tail call i64 @rb_enc_str_new_static(ptr noundef nonnull @.str.585, i64 noundef 43, ptr noundef %i.k) #29
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !49
  %i.o = tail call i64 @rb_enc_str_new_static(ptr noundef nonnull @.str.586, i64 noundef 42, ptr noundef %i.n) #29
  br label %bb.h

bb.f:                                             ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49
  %i.r = tail call i64 @rb_enc_str_new_static(ptr noundef nonnull @.str.587, i64 noundef 38, ptr noundef %i.q) #29
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.s = tail call fastcc i32 @shadowing_lvar_0(ptr noundef %0, i64 noundef %1) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ %i.r, %bb.f ], [ 0, %bb.g ], [ %i.f, %bb.b ], [ %i.i, %bb.c ], [ %i.l, %bb.d ], [ %i.o, %bb.e ]
  ret i64 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc void @arg_var(ptr noundef %0, i64 noundef %1) unnamed_addr #0 {
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
  tail call void (ptr, ptr, ...) @ripper_compile_error(ptr noundef %0, ptr noundef nonnull @.str.747, i32 noundef %i.h) #29
  br label %numparam_name.exit

numparam_name.exit:                               ; preds = %bb.a, %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !93
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !189  ; 6 uses
  %i.l = icmp ult ptr %i.k, inttoptr (i64 2 to ptr)
  br i1 %i.l, label %bb.c, label %bb.d

bb.c:                                             ; preds = %numparam_name.exit
  tail call void (ptr, ptr, ...) @rb_parser_fatal(ptr noundef nonnull %0, ptr noundef nonnull @.str.686, ptr noundef %i.k) #29
  br label %vtable_add_gen.exit

bb.d:                                             ; preds = %numparam_name.exit
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 3 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !186  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 12 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !187
  %i.q = icmp eq i32 %i.n, %i.p
  %.pre.i = load ptr, ptr %i.k, align 8, !tbaa !188 ; 2 uses
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = shl nsw i32 %i.n, 1                      ; 2 uses
  store i32 %i.r, ptr %i.o, align 4, !tbaa !187
  %i.s = sext i32 %i.r to i64
  %i.t = tail call nonnull ptr @ruby_xrealloc2(ptr noundef %.pre.i, i64 noundef %i.s, i64 noundef 8) #36 ; 2 uses
  store ptr %i.t, ptr %i.k, align 8, !tbaa !188
  %.pre1.i = load i32, ptr %i.m, align 8, !tbaa !186
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.u = phi i32 [ %.pre1.i, %bb.e ], [ %i.n, %bb.d ] ; 2 uses
  %i.v = phi ptr [ %i.t, %bb.e ], [ %.pre.i, %bb.d ]
  %i.w = add nsw i32 %i.u, 1
  store i32 %i.w, ptr %i.m, align 8, !tbaa !186
  %i.x = sext i32 %i.u to i64
  %i.y = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.x
  store i64 %1, ptr %i.y, align 8, !tbaa !11
  br label %vtable_add_gen.exit

vtable_add_gen.exit:                              ; preds = %bb.c, %bb.f
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef ptr @last_expr_node(ptr nofree noundef readonly captures(address_is_null, ret: address, provenance) %0) unnamed_addr #8 {
bb.a:
  %.not10 = icmp eq ptr %0, null
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %.011 = phi ptr [ %.1, %bb.d ], [ %0, %bb.a ]   ; 5 uses
  %.0.val9 = load i64, ptr %.011, align 8, !tbaa !61
  %i.a = trunc i64 %.0.val9 to i32
  %i.b = lshr i32 %i.a, 8
  %i.c = and i32 %i.b, 127
  switch i32 %i.c, label %._crit_edge [
    i32 1, label %bb.b
    i32 18, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.d = getelementptr inbounds nuw i8, ptr %.011, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !213
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !66
  br label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %.011, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !67   ; 2 uses
  %.not8 = icmp eq ptr %i.i, null
  br i1 %.not8, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1 = phi ptr [ %i.g, %bb.b ], [ %i.i, %bb.c ]  ; 2 uses
  %.not = icmp eq ptr %.1, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !464

._crit_edge:                                      ; preds = %bb.d, %bb.c, %.lr.ph, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %.011, %.lr.ph ], [ %.011, %bb.c ], [ null, %bb.d ]
  ret ptr %.0.lcssa
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2, 1) i32 @yysyntax_error(ptr nofree noundef nonnull captures(none) %0, ptr %.0.val, ptr nofree readonly captures(none) %.0.val1, i32 %.8.val, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [5 x i32], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %.not.i = icmp eq i32 %.8.val, -2
  br i1 %.not.i, label %yy_syntax_error_arguments.exit.thread6, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 %.8.val, ptr %i.a, align 16, !tbaa !6
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %.val.val.i = load i16, ptr %.0.val1, align 2, !tbaa !14
  %i.c = sext i16 %.val.val.i to i64
  %i.d = getelementptr inbounds [2 x i8], ptr @yypact, i64 %i.c
  %i.e = load i16, ptr %i.d, align 2, !tbaa !14   ; 4 uses
  %i.f = icmp eq i16 %i.e, -1154
  br i1 %i.f, label %.critedge.thread.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = sext i16 %i.e to i32                       ; 2 uses
  %i.g = icmp slt i16 %i.e, 0
  %i.h = sub nsw i32 0, %2
  %i.i = select i1 %i.g, i32 %i.h, i32 0          ; 2 uses
  %i.j = sub nsw i32 16093, %2
  %i.k = tail call i32 @llvm.smin.i32(i32 %i.j, i32 162) ; 2 uses
  %.not4.i.i = icmp slt i32 %i.i, %i.k
  br i1 %.not4.i.i, label %.lr.ph.preheader.i.i, label %.critedge.thread.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.c
  %i.l = sext i32 %i.i to i64
  %i.m = sext i16 %i.e to i64
  %i.n = sext i32 %i.k to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.l, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %bb.g ] ; 4 uses
  %.0365.i.i = phi i32 [ 0, %.lr.ph.preheader.i.i ], [ %.1.i.i, %bb.g ] ; 5 uses
  %i.o = add nsw i64 %indvars.iv.i.i, %i.m        ; 2 uses
  %i.p = getelementptr inbounds [2 x i8], ptr @yycheck, i64 %i.o
  %i.q = load i16, ptr %i.p, align 2, !tbaa !14
  %i.r = sext i16 %i.q to i32                     ; 2 uses
  %i.s = trunc nsw i64 %indvars.iv.i.i to i32
  %i.t = icmp eq i32 %i.s, %i.r
  %i.u = icmp ne i64 %indvars.iv.i.i, 1
  %or.cond.i.i = and i1 %i.u, %i.t
  br i1 %or.cond.i.i, label %bb.d, label %bb.g

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.v = getelementptr inbounds [2 x i8], ptr @yytable, i64 %i.o
  %i.w = load i16, ptr %i.v, align 2, !tbaa !14
  %i.x = icmp eq i16 %i.w, -816
  br i1 %i.x, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = icmp eq i32 %.0365.i.i, 4
  br i1 %i.y, label %yy_syntax_error_arguments.exit.thread6, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = add i32 %.0365.i.i, 1
  %i.aa = sext i32 %.0365.i.i to i64
  %i.ab = getelementptr inbounds [4 x i8], ptr %i.b, i64 %i.aa
  store i32 %i.r, ptr %i.ab, align 4, !tbaa !6
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %.lr.ph.i.i
  %.1.i.i = phi i32 [ %.0365.i.i, %bb.d ], [ %i.z, %bb.f ], [ %.0365.i.i, %.lr.ph.i.i ] ; 4 uses
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i.i, %i.n
  br i1 %exitcond.not.i, label %.critedge.i.i, label %.lr.ph.i.i, !llvm.loop !465

.critedge.i.i:                                    ; preds = %bb.g
  switch i32 %.1.i.i, label %yy_syntax_error_arguments.exit [
    i32 0, label %.critedge.thread.i.i
    i32 -2, label %yy_syntax_error_arguments.exit.thread8
  ]

.critedge.thread.i.i:                             ; preds = %.critedge.i.i, %bb.c, %bb.b
  store i32 -2, ptr %i.b, align 4, !tbaa !6
  br label %yy_syntax_error_arguments.exit.thread6

yy_syntax_error_arguments.exit:                   ; preds = %.critedge.i.i
  %i.ac = add nsw i32 %.1.i.i, 1                  ; 8 uses
  switch i32 %i.ac, label %yy_syntax_error_arguments.exit.thread6 [
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

yy_syntax_error_arguments.exit.thread6:           ; preds = %bb.e, %.critedge.thread.i.i, %bb.a, %yy_syntax_error_arguments.exit, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.118.i5 = phi i32 [ %i.ac, %bb.k ], [ %i.ac, %bb.l ], [ %i.ac, %bb.h ], [ %i.ac, %bb.i ], [ %i.ac, %bb.j ], [ %i.ac, %yy_syntax_error_arguments.exit ], [ 0, %bb.a ], [ 1, %.critedge.thread.i.i ], [ 1, %bb.e ] ; 4 uses
  %.048 = phi ptr [ @.str.573, %bb.k ], [ @.str.574, %bb.l ], [ @.str.570, %bb.h ], [ @.str.571, %bb.i ], [ @.str.572, %bb.j ], [ @.str.64, %yy_syntax_error_arguments.exit ], [ @.str.64, %bb.a ], [ @.str.570, %.critedge.thread.i.i ], [ @.str.570, %bb.e ] ; 2 uses
  %i.ad = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.048) #32
  %i.ae = shl nsw i32 %.118.i5, 1
  %i.af = sext i32 %i.ae to i64
  %reass.sub = sub i64 %i.ad, %i.af
  %i.ag = add i64 %reass.sub, 1                   ; 2 uses
  %.not13 = icmp sgt i32 %.118.i5, 0
  br i1 %.not13, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %yy_syntax_error_arguments.exit.thread6
  %wide.trip.count = zext nneg i32 %.118.i5 to i64
  br label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !466

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.m
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %.04614 = phi i64 [ %i.ag, %.lr.ph.preheader ], [ %i.an, %bb.m ] ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !6
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds [8 x i8], ptr @yytname, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !50
  %i.am = tail call i64 @rb_yytnamerr(ptr noundef %1, ptr noundef null, ptr noundef %i.al) #29
  %i.an = add i64 %i.am, %.04614                  ; 3 uses
  %.not.not = icmp sgt i64 %.04614, %i.an
  br i1 %.not.not, label %yy_syntax_error_arguments.exit.thread8, label %bb.m

._crit_edge:                                      ; preds = %bb.m, %yy_syntax_error_arguments.exit.thread6
  %.046.lcssa = phi i64 [ %i.ag, %yy_syntax_error_arguments.exit.thread6 ], [ %i.an, %bb.m ] ; 3 uses
  %i.ao = load i64, ptr %0, align 8, !tbaa !11
  %i.ap = icmp slt i64 %i.ao, %.046.lcssa
  br i1 %i.ap, label %bb.n, label %.preheader

bb.n:                                             ; preds = %._crit_edge
  %i.aq = shl nsw i64 %.046.lcssa, 1              ; 2 uses
  %.not58 = icmp sgt i64 %.046.lcssa, %i.aq
  %spec.store.select = select i1 %.not58, i64 9223372036854775807, i64 %i.aq
  store i64 %spec.store.select, ptr %0, align 8
  br label %yy_syntax_error_arguments.exit.thread8

.preheader:                                       ; preds = %._crit_edge, %bb.q
  %.149 = phi ptr [ %i.bf, %bb.q ], [ %.048, %._crit_edge ] ; 3 uses
  %.041 = phi ptr [ %i.be, %bb.q ], [ %.0.val, %._crit_edge ] ; 3 uses
  %.0 = phi i32 [ %.1, %bb.q ], [ 0, %._crit_edge ] ; 5 uses
  %i.ar = load i8, ptr %.149, align 1, !tbaa !10  ; 2 uses
  store i8 %i.ar, ptr %.041, align 1, !tbaa !10
  switch i8 %i.ar, label %bb.q [
    i8 0, label %yy_syntax_error_arguments.exit.thread8
    i8 37, label %bb.o
  ]

bb.o:                                             ; preds = %.preheader
  %i.as = getelementptr inbounds nuw i8, ptr %.149, i64 1
  %i.at = load i8, ptr %i.as, align 1, !tbaa !10
  %i.au = icmp eq i8 %i.at, 115
  %i.av = icmp slt i32 %.0, %.118.i5
  %or.cond = select i1 %i.au, i1 %i.av, i1 false
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aw = add nsw i32 %.0, 1
  %i.ax = sext i32 %.0 to i64
  %i.ay = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.ax
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !6
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr @yytname, i64 %i.ba
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !50
  %i.bd = tail call i64 @rb_yytnamerr(ptr noundef %1, ptr noundef nonnull %.041, ptr noundef %i.bc) #29
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %.preheader, %bb.p
  %.sink26 = phi i64 [ %i.bd, %bb.p ], [ 1, %.preheader ], [ 1, %bb.o ]
  %.sink = phi i64 [ 2, %bb.p ], [ 1, %.preheader ], [ 1, %bb.o ]
  %.1 = phi i32 [ %i.aw, %bb.p ], [ %.0, %.preheader ], [ %.0, %bb.o ]
  %i.be = getelementptr inbounds nuw i8, ptr %.041, i64 %.sink26
  %i.bf = getelementptr inbounds nuw i8, ptr %.149, i64 %.sink
  br label %.preheader, !llvm.loop !467

yy_syntax_error_arguments.exit.thread8:           ; preds = %.lr.ph, %.preheader, %.critedge.i.i, %bb.n, %yy_syntax_error_arguments.exit
  %.3 = phi i32 [ %.1.i.i, %.critedge.i.i ], [ %i.ac, %yy_syntax_error_arguments.exit ], [ 0, %.preheader ], [ -1, %bb.n ], [ -2, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.3
}

; Function Attrs: nounwind uwtable
define internal fastcc void @yydestruct(ptr noundef %0, i32 noundef range(i32 -32768, 32768) %1, ptr noundef nonnull %2, ptr nofree noundef nonnull readonly captures(none) %3, ptr noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 360
  %i.b = load i16, ptr %i.a, align 8
  %i.c = and i16 %i.b, 32
  %.not16 = icmp eq i16 %i.c, 0
  br i1 %.not16, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  %spec.store.select = select i1 %.not, ptr @.str.575, ptr %0
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %4, ptr noundef nonnull @.str.5, ptr noundef nonnull %spec.store.select) #29
  %i.d = icmp slt i32 %1, 162
  %i.e = select i1 %i.d, ptr @.str.73, ptr @.str.74
  %i.f = sext i32 %1 to i64
  %i.g = getelementptr inbounds [8 x i8], ptr @yytname, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %4, ptr noundef nonnull @.str.72, ptr noundef nonnull %i.e, ptr noundef %i.h) #29
  %i.i = load i32, ptr %3, align 4, !tbaa !51
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = load i32, ptr %i.l, align 4, !tbaa !55
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.o = load i32, ptr %i.n, align 4, !tbaa !56
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %4, ptr noundef nonnull @.str.75, i32 noundef %i.i, i32 noundef %i.k, i32 noundef %i.m, i32 noundef %i.o) #29
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %4, ptr noundef nonnull @.str.76) #29
  tail call fastcc void @yy_symbol_value_print(i32 noundef range(i32 -32768, 32768) %1, ptr noundef nonnull %2, ptr noundef nonnull %4)
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %4, ptr noundef nonnull @.str.77) #29
  tail call void (ptr, ptr, ...) @rb_parser_printf(ptr noundef nonnull %4, ptr noundef nonnull @.str.7) #29
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  switch i32 %1, label %bb.f [
    i32 258, label %bb.d
    i32 259, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
end_hunk_0
