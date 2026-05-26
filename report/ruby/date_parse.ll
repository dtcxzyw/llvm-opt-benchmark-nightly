inline.NumInlined: 734
inline.NumDeleted: 80
begin_hunk_0_@parse_eu_cb:bb.a
  %i.p = phi i8 [ %i.k, %RSTRING_PTR.exit ], [ %i.n, %RSTRING_PTR.exit.thread ]
  %i.q = icmp eq i8 %i.p, 98
  %i.r = zext i1 %i.q to i32
  br label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit.thread, %RSTRING_PTR.exit, %RSTRING_PTR.exit13, %bb.a
  %i.s = phi i32 [ 0, %bb.a ], [ 1, %RSTRING_PTR.exit ], [ %i.r, %RSTRING_PTR.exit13 ], [ 1, %RSTRING_PTR.exit.thread ]
  %i.t = shl nuw nsw i32 %i.e, 1
  %i.u = or disjoint i32 %i.t, 1
  %i.v = zext nneg i32 %i.u to i64
  tail call fastcc void @s3e(i64 noundef %1, i64 noundef %i.d, i64 noundef %i.v, i64 noundef %i.a, i32 noundef %i.s)
  ret i32 1
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read) uwtable
define internal fastcc range(i32 1, 14) i32 @mon_num(i64 noundef %0) unnamed_addr #8 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !15
  %i.c = and i64 %i.b, 8192
  %.not.i = icmp eq i64 %i.c, 0
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 13 uses
  br i1 %.not.i, label %RSTRING_PTR.exit.us.preheader, label %.split

RSTRING_PTR.exit.us.preheader:                    ; preds = %bb.a
  %i.e = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull @abbr_months, ptr noundef nonnull %i.d, i64 noundef 3) #13
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %.split7.us, label %RSTRING_PTR.exit.us.1

RSTRING_PTR.exit.us.1:                            ; preds = %RSTRING_PTR.exit.us.preheader
  %i.g = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @abbr_months, i64 4), ptr noundef nonnull %i.d, i64 noundef 3) #13
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %.split7.us, label %RSTRING_PTR.exit.us.2

RSTRING_PTR.exit.us.2:                            ; preds = %RSTRING_PTR.exit.us.1
  %i.i = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @abbr_months, i64 8), ptr noundef nonnull %i.d, i64 noundef 3) #13
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.split7.us, label %RSTRING_PTR.exit.us.3

RSTRING_PTR.exit.us.3:                            ; preds = %RSTRING_PTR.exit.us.2
  %i.k = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @abbr_months, i64 12), ptr noundef nonnull %i.d, i64 noundef 3) #13
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.split7.us, label %RSTRING_PTR.exit.us.4

RSTRING_PTR.exit.us.4:                            ; preds = %RSTRING_PTR.exit.us.3
  %i.m = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @abbr_months, i64 16), ptr noundef nonnull %i.d, i64 noundef 3) #13
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %.split7.us, label %RSTRING_PTR.exit.us.5

RSTRING_PTR.exit.us.5:                            ; preds = %RSTRING_PTR.exit.us.4
  %i.o = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @abbr_months, i64 20), ptr noundef nonnull %i.d, i64 noundef 3) #13
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.split7.us, label %RSTRING_PTR.exit.us.6

RSTRING_PTR.exit.us.6:                            ; preds = %RSTRING_PTR.exit.us.5
  %i.q = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @abbr_months, i64 24), ptr noundef nonnull %i.d, i64 noundef 3) #13
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.split7.us, label %RSTRING_PTR.exit.us.7

RSTRING_PTR.exit.us.7:                            ; preds = %RSTRING_PTR.exit.us.6
  %i.s = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @abbr_months, i64 28), ptr noundef nonnull %i.d, i64 noundef 3) #13
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.split7.us, label %RSTRING_PTR.exit.us.8

RSTRING_PTR.exit.us.8:                            ; preds = %RSTRING_PTR.exit.us.7
  %i.u = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @abbr_months, i64 32), ptr noundef nonnull %i.d, i64 noundef 3) #13
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %.split7.us, label %RSTRING_PTR.exit.us.9

RSTRING_PTR.exit.us.9:                            ; preds = %RSTRING_PTR.exit.us.8
  %i.w = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @abbr_months, i64 36), ptr noundef nonnull %i.d, i64 noundef 3) #13
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %.split7.us, label %RSTRING_PTR.exit.us.10

RSTRING_PTR.exit.us.10:                           ; preds = %RSTRING_PTR.exit.us.9
  %i.y = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @abbr_months, i64 40), ptr noundef nonnull %i.d, i64 noundef 3) #13
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %.split7.us, label %.split7.us.sink.split

.split:                                           ; preds = %bb.a
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !16  ; 12 uses
  %i.ab = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull @abbr_months, ptr noundef %i.aa, i64 noundef 3) #13
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.split7.us, label %RSTRING_PTR.exit.1

RSTRING_PTR.exit.1:                               ; preds = %.split
  %i.ad = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @abbr_months, i64 4), ptr noundef %i.aa, i64 noundef 3) #13
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.split7.us, label %RSTRING_PTR.exit.2

RSTRING_PTR.exit.2:                               ; preds = %RSTRING_PTR.exit.1
  %i.af = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @abbr_months, i64 8), ptr noundef %i.aa, i64 noundef 3) #13
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.split7.us, label %RSTRING_PTR.exit.3

RSTRING_PTR.exit.3:                               ; preds = %RSTRING_PTR.exit.2
  %i.ah = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @abbr_months, i64 12), ptr noundef %i.aa, i64 noundef 3) #13
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.split7.us, label %RSTRING_PTR.exit.4

RSTRING_PTR.exit.4:                               ; preds = %RSTRING_PTR.exit.3
  %i.aj = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @abbr_months, i64 16), ptr noundef %i.aa, i64 noundef 3) #13
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.split7.us, label %RSTRING_PTR.exit.5

RSTRING_PTR.exit.5:                               ; preds = %RSTRING_PTR.exit.4
  %i.al = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @abbr_months, i64 20), ptr noundef %i.aa, i64 noundef 3) #13
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %.split7.us, label %RSTRING_PTR.exit.6

RSTRING_PTR.exit.6:                               ; preds = %RSTRING_PTR.exit.5
  %i.an = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @abbr_months, i64 24), ptr noundef %i.aa, i64 noundef 3) #13
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.split7.us, label %RSTRING_PTR.exit.7

RSTRING_PTR.exit.7:                               ; preds = %RSTRING_PTR.exit.6
  %i.ap = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @abbr_months, i64 28), ptr noundef %i.aa, i64 noundef 3) #13
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %.split7.us, label %RSTRING_PTR.exit.8

RSTRING_PTR.exit.8:                               ; preds = %RSTRING_PTR.exit.7
  %i.ar = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @abbr_months, i64 32), ptr noundef %i.aa, i64 noundef 3) #13
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %.split7.us, label %RSTRING_PTR.exit.9

RSTRING_PTR.exit.9:                               ; preds = %RSTRING_PTR.exit.8
  %i.at = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @abbr_months, i64 36), ptr noundef %i.aa, i64 noundef 3) #13
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %.split7.us, label %RSTRING_PTR.exit.10

RSTRING_PTR.exit.10:                              ; preds = %RSTRING_PTR.exit.9
  %i.av = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @abbr_months, i64 40), ptr noundef %i.aa, i64 noundef 3) #13
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.split7.us, label %.split7.us.sink.split

.split7.us.sink.split:                            ; preds = %RSTRING_PTR.exit.10, %RSTRING_PTR.exit.us.10
  %.sink = phi ptr [ %i.d, %RSTRING_PTR.exit.us.10 ], [ %i.aa, %RSTRING_PTR.exit.10 ]
  %i.ax = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @abbr_months, i64 44), ptr noundef %.sink, i64 noundef 3) #13
  %i.ay = icmp eq i32 %i.ax, 0
  %i.az = select i1 %i.ay, i32 12, i32 13
  br label %.split7.us

.split7.us:                                       ; preds = %.split7.us.sink.split, %.split, %RSTRING_PTR.exit.1, %RSTRING_PTR.exit.2, %RSTRING_PTR.exit.3, %RSTRING_PTR.exit.4, %RSTRING_PTR.exit.5, %RSTRING_PTR.exit.6, %RSTRING_PTR.exit.7, %RSTRING_PTR.exit.8, %RSTRING_PTR.exit.9, %RSTRING_PTR.exit.10, %RSTRING_PTR.exit.us.preheader, %RSTRING_PTR.exit.us.1, %RSTRING_PTR.exit.us.2, %RSTRING_PTR.exit.us.3, %RSTRING_PTR.exit.us.4, %RSTRING_PTR.exit.us.5, %RSTRING_PTR.exit.us.6, %RSTRING_PTR.exit.us.7, %RSTRING_PTR.exit.us.8, %RSTRING_PTR.exit.us.9, %RSTRING_PTR.exit.us.10
  %.us-phi = phi i32 [ 7, %RSTRING_PTR.exit.us.6 ], [ 1, %RSTRING_PTR.exit.us.preheader ], [ 7, %RSTRING_PTR.exit.6 ], [ 2, %RSTRING_PTR.exit.us.1 ], [ 10, %RSTRING_PTR.exit.9 ], [ 3, %RSTRING_PTR.exit.us.2 ], [ 9, %RSTRING_PTR.exit.us.8 ], [ 4, %RSTRING_PTR.exit.us.3 ], [ 11, %RSTRING_PTR.exit.us.10 ], [ 5, %RSTRING_PTR.exit.us.4 ], [ 8, %RSTRING_PTR.exit.us.7 ], [ 6, %RSTRING_PTR.exit.us.5 ], [ 10, %RSTRING_PTR.exit.us.9 ], [ 8, %RSTRING_PTR.exit.7 ], [ 1, %.split ], [ 2, %RSTRING_PTR.exit.1 ], [ 6, %RSTRING_PTR.exit.5 ], [ 3, %RSTRING_PTR.exit.2 ], [ 9, %RSTRING_PTR.exit.8 ], [ 4, %RSTRING_PTR.exit.3 ], [ 11, %RSTRING_PTR.exit.10 ], [ 5, %RSTRING_PTR.exit.4 ], [ %i.az, %.split7.us.sink.split ]
  ret i32 %.us-phi
}

; Function Attrs: nounwind uwtable
define internal fastcc void @s3e(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  store i64 0, ptr %i.a, align 8, !tbaa !10
  %i.b = icmp eq i64 %2, 0
  %i.c = and i64 %2, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.f = inttoptr i64 %2 to ptr
  %i.g = load i64, ptr %i.f, align 8, !tbaa !15
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 5
  br i1 %i.i, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit
  %.pr.i = load i64, ptr @s3e.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %.lr.ph.i
  %i.j = tail call i64 @rb_intern2(ptr noundef nonnull @.str.59, i64 noundef 4) #14 ; 3 uses
  store i64 %i.j, ptr @s3e.rbimpl_id, align 8, !tbaa !10
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !34

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %.lcssa.i = phi i64 [ %.pr.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread ], [ %i.j, %.lr.ph.i ]
  %i.k = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %2, i64 noundef %.lcssa.i, i32 noundef 0) #14
  br label %bb.b

bb.b:                                             ; preds = %rbimpl_intern_const.exit, %rbimpl_RB_TYPE_P_fastpath.exit
  %.0174 = phi i64 [ %2, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %i.k, %rbimpl_intern_const.exit ] ; 5 uses
  %i.l = icmp eq i64 %1, 4
  br i1 %i.l, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = icmp eq i64 %.0174, 4
  br i1 %i.m, label %.thread320, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %3, 4
  br i1 %i.n, label %.thread304, label %.thread320

bb.e:                                             ; preds = %bb.b
  %i.o = icmp eq i64 %3, 4
  br i1 %i.o, label %.critedge, label %.thread304

.thread304:                                       ; preds = %bb.d, %bb.e
  %.1175.ph309 = phi i64 [ %.0174, %bb.e ], [ %1, %bb.d ] ; 3 uses
  %.0178.ph308 = phi i64 [ %3, %bb.e ], [ %.0174, %bb.d ] ; 6 uses
  %i.p = inttoptr i64 %.0178.ph308 to ptr         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !12
  %.fr = freeze i64 %i.r                          ; 2 uses
  %5 = icmp slt i64 %.fr, 3                       ; 2 uses
  br i1 %5, label %bb.f, label %.thread313

bb.f:                                             ; preds = %.thread304
  %i.s = icmp sgt i64 %.fr, 0
  br i1 %i.s, label %bb.g, label %.thread313

bb.g:                                             ; preds = %bb.f
  %i.t = load i64, ptr %i.p, align 8, !tbaa !15
  %i.u = and i64 %i.t, 8192
  %.not.i226 = icmp eq i64 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  br i1 %.not.i226, label %RSTRING_PTR.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !16
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.g, %bb.h
  %i.x = phi ptr [ %i.w, %bb.h ], [ %i.v, %bb.g ]
  %i.y = load i8, ptr %i.x, align 1, !tbaa !16
  %.fr347 = freeze i8 %i.y
  %i.z = icmp eq i8 %.fr347, 39
  br i1 %i.z, label %.thread320, label %.thread313

.thread313:                                       ; preds = %.thread304, %RSTRING_PTR.exit, %bb.f
  %.2180 = phi i64 [ %.0178.ph308, %RSTRING_PTR.exit ], [ %.0178.ph308, %bb.f ], [ 4, %.thread304 ] ; 2 uses
  %6 = icmp eq i64 %.0178.ph308, 4
  %7 = or i1 %5, %6
  br i1 %7, label %.critedge, label %.thread320

.thread320:                                       ; preds = %RSTRING_PTR.exit, %bb.c, %bb.d, %.thread313
  %.2327 = phi i64 [ %.0178.ph308, %.thread313 ], [ %1, %bb.d ], [ %1, %bb.c ], [ %.0178.ph308, %RSTRING_PTR.exit ] ; 4 uses
  %.2180326 = phi i64 [ %.2180, %.thread313 ], [ %3, %bb.d ], [ %3, %bb.c ], [ 4, %RSTRING_PTR.exit ] ; 4 uses
  %.1175301324.a = phi i64 [ %.1175.ph309, %.thread313 ], [ %.0174, %bb.d ], [ 4, %bb.c ], [ %.1175.ph309, %RSTRING_PTR.exit ] ; 4 uses
  %i.aa = inttoptr i64 %.2327 to ptr              ; 3 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !15
  %i.ac = and i64 %i.ab, 8192
  %.not.i227 = icmp eq i64 %i.ac, 0
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 24 ; 2 uses
  br i1 %.not.i227, label %RSTRING_END.exit, label %bb.i

bb.i:                                             ; preds = %.thread320
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !16
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %.thread320, %bb.i
  %i.af = phi ptr [ %i.ae, %bb.i ], [ %i.ad, %.thread320 ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !12 ; 2 uses
  %i.ai = getelementptr inbounds i8, ptr %i.af, i64 %i.ah ; 3 uses
  %i.aj = icmp sgt i64 %i.ah, 0
  br i1 %i.aj, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %RSTRING_END.exit, %bb.k
  %.0191366 = phi ptr [ %i.ar, %bb.k ], [ %i.af, %RSTRING_END.exit ] ; 6 uses
  %i.ak = load i8, ptr %.0191366, align 1, !tbaa !16 ; 3 uses
  switch i8 %i.ak, label %bb.j [
    i8 45, label %.loopexit462
    i8 43, label %.loopexit462
  ]

bb.j:                                             ; preds = %.lr.ph
  %i.al = tail call ptr @__ctype_b_loc() #12
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !17
  %i.an = zext i8 %i.ak to i64
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %i.am, i64 %i.an
  %i.ap = load i16, ptr %i.ao, align 2, !tbaa !20
  %i.aq = and i16 %i.ap, 2048
  %.not = icmp eq i16 %i.aq, 0
  br i1 %.not, label %bb.k, label %.loopexit348

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %.0191366, i64 1 ; 2 uses
  %i.as = icmp ult ptr %i.ar, %i.ai
  br i1 %i.as, label %.lr.ph, label %.critedge, !llvm.loop !55

.loopexit348:                                     ; preds = %bb.j
  switch i8 %i.ak, label %bb.l [
    i8 45, label %.loopexit462
    i8 43, label %.loopexit462
  ]

.loopexit462:                                     ; preds = %.lr.ph, %.lr.ph, %.loopexit348, %.loopexit348
  %i.at = getelementptr inbounds nuw i8, ptr %.0191366, i64 1
  br label %bb.l

bb.l:                                             ; preds = %.loopexit348, %.loopexit462
  %.1192 = phi ptr [ %i.at, %.loopexit462 ], [ %.0191366, %.loopexit348 ] ; 4 uses
  %i.au = icmp ult ptr %.1192, %i.ai
  br i1 %i.au, label %.lr.ph.i230, label %digit_span.exit

.lr.ph.i230:                                      ; preds = %bb.l
  %i.av = ptrtoint ptr %i.ai to i64
  %i.aw = ptrtoint ptr %.1192 to i64
  %i.ax = tail call ptr @__ctype_b_loc() #12
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !17
  %i.az = sub i64 %i.av, %i.aw                    ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i230
  %.07.i = phi i64 [ 0, %.lr.ph.i230 ], [ %i.bg, %bb.n ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.1192, i64 %.07.i
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !16
  %i.bc = zext i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [2 x i8], ptr %i.ay, i64 %i.bc
  %i.be = load i16, ptr %i.bd, align 2, !tbaa !20
  %i.bf = and i16 %i.be, 2048
  %.not.i231 = icmp eq i16 %i.bf, 0
  br i1 %.not.i231, label %digit_span.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = add i64 %.07.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bg, %i.az
  br i1 %exitcond.not.i, label %digit_span.exit, label %bb.m, !llvm.loop !56

digit_span.exit:                                  ; preds = %bb.m, %bb.n, %bb.l
  %.0.lcssa.i = phi i64 [ 0, %bb.l ], [ %.07.i, %bb.m ], [ %i.az, %bb.n ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.1192, i64 %.0.lcssa.i ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !16
  %.not213 = icmp eq i8 %i.bi, 0
  br i1 %.not213, label %.critedge, label %bb.o

bb.o:                                             ; preds = %digit_span.exit
  %i.bj = ptrtoint ptr %i.bh to i64
  %i.bk = ptrtoint ptr %.0191366 to i64
  %i.bl = sub i64 %i.bj, %i.bk
  %i.bm = tail call i64 @rb_str_new(ptr noundef nonnull %.0191366, i64 noundef %i.bl) #14
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %RSTRING_END.exit, %bb.e, %bb.o, %digit_span.exit, %.thread313
  %.1175301325 = phi i64 [ %.1175.ph309, %.thread313 ], [ %.1175301324.a, %digit_span.exit ], [ %.1175301324.a, %bb.o ], [ %.0174, %bb.e ], [ %.1175301324.a, %RSTRING_END.exit ], [ %.1175301324.a, %bb.k ] ; 4 uses
  %.4182 = phi i64 [ %.2180, %.thread313 ], [ %.2180326, %digit_span.exit ], [ %i.bm, %bb.o ], [ 4, %bb.e ], [ %.2180326, %RSTRING_END.exit ], [ %.2180326, %bb.k ] ; 3 uses
  %.4 = phi i64 [ 4, %.thread313 ], [ %.2327, %digit_span.exit ], [ %.2180326, %bb.o ], [ 4, %bb.e ], [ %.2327, %RSTRING_END.exit ], [ %.2327, %bb.k ] ; 3 uses
  %i.bn = icmp eq i64 %.1175301325, 4
  br i1 %i.bn, label %bb.t, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.bo = inttoptr i64 %.1175301325 to ptr        ; 3 uses
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !15
  %i.bq = and i64 %i.bp, 8192
  %.not.i232 = icmp eq i64 %i.bq, 0
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 24 ; 2 uses
  br i1 %.not.i232, label %RSTRING_PTR.exit233, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !16
  br label %RSTRING_PTR.exit233

RSTRING_PTR.exit233:                              ; preds = %bb.p, %bb.q
  %i.bt = phi ptr [ %i.bs, %bb.q ], [ %i.br, %bb.p ]
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !16
  %i.bv = icmp eq i8 %i.bu, 39
  br i1 %i.bv, label %bb.s, label %bb.r

bb.r:                                             ; preds = %RSTRING_PTR.exit233
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !tbaa !12
  %i.by = icmp sgt i64 %i.bx, 2
  br i1 %i.by, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %RSTRING_PTR.exit233
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %.critedge
  %.6184 = phi i64 [ %.4182, %.critedge ], [ %.4, %bb.s ], [ %.4182, %bb.r ] ; 4 uses
  %.3177 = phi i64 [ 4, %.critedge ], [ %.4182, %bb.s ], [ %.1175301325, %bb.r ] ; 2 uses
  %.6 = phi i64 [ %.4, %.critedge ], [ %.1175301325, %bb.s ], [ %.4, %bb.r ] ; 4 uses
  %i.bz = icmp eq i64 %.6184, 4
  br i1 %i.bz, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ca = inttoptr i64 %.6184 to ptr              ; 5 uses
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !15
  %i.cc = and i64 %i.cb, 8192                     ; 3 uses
  %.not.i234 = icmp eq i64 %i.cc, 0
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 2 uses
  br i1 %.not.i234, label %RSTRING_PTR.exit235, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !16
  br label %RSTRING_PTR.exit235

RSTRING_PTR.exit235:                              ; preds = %bb.u, %bb.v
  %i.cf = phi ptr [ %i.ce, %bb.v ], [ %i.cd, %bb.u ]
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !16
  %i.ch = icmp eq i8 %i.cg, 39
  br i1 %i.ch, label %.thread328, label %bb.w

bb.w:                                             ; preds = %RSTRING_PTR.exit235
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !12
  %i.ck = icmp sgt i64 %i.cj, 2
  br i1 %i.ck, label %.thread328, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %i.cl = icmp eq i64 %.6, 4
  br i1 %i.cl, label %.critedge2, label %..thread328_crit_edge

..thread328_crit_edge:                            ; preds = %bb.x
  %.phi.trans.insert = inttoptr i64 %.6 to ptr    ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !15
  %.pre392 = and i64 %.pre, 8192
  br label %.thread328

.thread328:                                       ; preds = %..thread328_crit_edge, %bb.w, %RSTRING_PTR.exit235
  %.pre-phi393 = phi i64 [ %.pre392, %..thread328_crit_edge ], [ %i.cc, %bb.w ], [ %i.cc, %RSTRING_PTR.exit235 ]
  %.pre-phi = phi ptr [ %.phi.trans.insert, %..thread328_crit_edge ], [ %i.ca, %bb.w ], [ %i.ca, %RSTRING_PTR.exit235 ] ; 2 uses
  %.8186331.a = phi i64 [ %.6184, %..thread328_crit_edge ], [ %.6, %bb.w ], [ %.6, %RSTRING_PTR.exit235 ] ; 3 uses
  %.not.i236 = icmp eq i64 %.pre-phi393, 0
  %i.cm = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 24 ; 2 uses
  br i1 %.not.i236, label %RSTRING_END.exit239, label %bb.y

bb.y:                                             ; preds = %.thread328
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !16
  br label %RSTRING_END.exit239

RSTRING_END.exit239:                              ; preds = %.thread328, %bb.y
  %i.co = phi ptr [ %i.cn, %bb.y ], [ %i.cm, %.thread328 ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 16
  %i.cq = load i64, ptr %i.cp, align 8, !tbaa !12 ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.co, i64 %i.cq ; 3 uses
  %i.cs = icmp sgt i64 %i.cq, 0
  br i1 %i.cs, label %.lr.ph368, label %.critedge2

.lr.ph368:                                        ; preds = %RSTRING_END.exit239, %bb.aa
  %.0194367 = phi ptr [ %i.da, %bb.aa ], [ %i.co, %RSTRING_END.exit239 ] ; 6 uses
  %i.ct = load i8, ptr %.0194367, align 1, !tbaa !16 ; 3 uses
  switch i8 %i.ct, label %bb.z [
    i8 45, label %.loopexit454
    i8 43, label %.loopexit454
  ]

bb.z:                                             ; preds = %.lr.ph368
  %i.cu = tail call ptr @__ctype_b_loc() #12
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !17
  %i.cw = zext i8 %i.ct to i64
  %i.cx = getelementptr inbounds nuw [2 x i8], ptr %i.cv, i64 %i.cw
  %i.cy = load i16, ptr %i.cx, align 2, !tbaa !20
  %i.cz = and i16 %i.cy, 2048
  %.not214 = icmp eq i16 %i.cz, 0
  br i1 %.not214, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.da = getelementptr inbounds nuw i8, ptr %.0194367, i64 1 ; 2 uses
  %i.db = icmp ult ptr %i.da, %i.cr
  br i1 %i.db, label %.lr.ph368, label %.critedge2, !llvm.loop !57

.loopexit:                                        ; preds = %bb.z
  switch i8 %i.ct, label %bb.ab [
    i8 45, label %.loopexit454
    i8 43, label %.loopexit454
  ]

.loopexit454:                                     ; preds = %.lr.ph368, %.lr.ph368, %.loopexit, %.loopexit
  %i.dc = getelementptr inbounds nuw i8, ptr %.0194367, i64 1
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit, %.loopexit454
  %.1195339 = phi ptr [ %i.dc, %.loopexit454 ], [ %.0194367, %.loopexit ] ; 5 uses
  %i.dd = phi i64 [ 0, %.loopexit454 ], [ 4, %.loopexit ] ; 2 uses
  %i.de = icmp ult ptr %.1195339, %i.cr
  br i1 %i.de, label %.lr.ph.i241, label %digit_span.exit245.thread

.lr.ph.i241:                                      ; preds = %bb.ab
  %i.df = ptrtoint ptr %i.cr to i64
  %i.dg = ptrtoint ptr %.1195339 to i64
  %i.dh = tail call ptr @__ctype_b_loc() #12
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !17
  %i.dj = sub i64 %i.df, %i.dg                    ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.lr.ph.i241
  %.07.i242 = phi i64 [ 0, %.lr.ph.i241 ], [ %i.dq, %bb.ad ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.1195339, i64 %.07.i242
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !16
  %i.dm = zext i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.di, i64 %i.dm
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !20
  %i.dp = and i16 %i.do, 2048
  %.not.i243 = icmp eq i16 %i.dp, 0
  br i1 %.not.i243, label %digit_span.exit245, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = add i64 %.07.i242, 1                    ; 2 uses
  %exitcond.not.i244 = icmp eq i64 %i.dq, %i.dj
  br i1 %exitcond.not.i244, label %digit_span.exit245, label %bb.ac, !llvm.loop !56

digit_span.exit245:                               ; preds = %bb.ac, %bb.ad
  %.0.lcssa.i240 = phi i64 [ %.07.i242, %bb.ac ], [ %i.dj, %bb.ad ]
  %.0.lcssa.i240.fr = freeze i64 %.0.lcssa.i240   ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.1195339, i64 %.0.lcssa.i240.fr
  %i.ds = icmp ugt i64 %.0.lcssa.i240.fr, 2
  %spec.select = select i1 %i.ds, i64 0, i64 %i.dd
  br label %digit_span.exit245.thread

digit_span.exit245.thread:                        ; preds = %digit_span.exit245, %bb.ab
  %i.dt = phi ptr [ %.1195339, %bb.ab ], [ %i.dr, %digit_span.exit245 ]
  %i.du = phi i64 [ %i.dd, %bb.ab ], [ %spec.select, %digit_span.exit245 ]
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %.0194367 to i64
  %i.dx = sub i64 %i.dv, %i.dw                    ; 4 uses
  %i.dy = add nsw i64 %i.dx, 1                    ; 3 uses
  %i.dz = icmp ult i64 %i.dy, 1024
  br i1 %i.dz, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %digit_span.exit245.thread
  store i64 0, ptr %i.a, align 8, !tbaa !10
  %i.ea = alloca i8, i64 %i.dy, align 16
  br label %bb.ag

bb.af:                                            ; preds = %digit_span.exit245.thread
  %i.eb = add i64 %i.dx, 8
  %i.ec = lshr i64 %i.eb, 3
  %i.ed = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.dy, i64 noundef %i.ec) #16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.ee = phi ptr [ %i.ea, %bb.ae ], [ %i.ed, %bb.af ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ee, ptr nonnull align 1 %.0194367, i64 %i.dx, i1 false)
  %i.ef = getelementptr inbounds i8, ptr %i.ee, i64 %i.dx
  store i8 0, ptr %i.ef, align 1, !tbaa !16
  %i.eg = call i64 @rb_cstr_to_inum(ptr noundef nonnull %i.ee, i32 noundef 10, i32 noundef 0) #14
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #14
  %.pr.i246 = load i64, ptr @s3e.rbimpl_id.60, align 8, !tbaa !10 ; 2 uses
  %.not4.i247 = icmp eq i64 %.pr.i246, 0
  br i1 %.not4.i247, label %.lr.ph.i249, label %rbimpl_intern_const.exit251

.lr.ph.i249:                                      ; preds = %bb.ag, %.lr.ph.i249
  %i.eh = call i64 @rb_intern2(ptr noundef nonnull @.str.18, i64 noundef 4) #14 ; 3 uses
  store i64 %i.eh, ptr @s3e.rbimpl_id.60, align 8, !tbaa !10
  %.not.i250 = icmp eq i64 %i.eh, 0
  br i1 %.not.i250, label %.lr.ph.i249, label %rbimpl_intern_const.exit251, !llvm.loop !34

rbimpl_intern_const.exit251:                      ; preds = %.lr.ph.i249, %bb.ag
  %.lcssa.i248 = phi i64 [ %.pr.i246, %bb.ag ], [ %i.eh, %.lr.ph.i249 ]
  %i.ei = call i64 @rb_id2sym(i64 noundef %.lcssa.i248) #14
  %i.ej = call i64 @rb_hash_aset(i64 noundef %0, i64 noundef %i.ei, i64 noundef %i.eg) #14 ; 0 uses
  br label %.critedge2

.critedge2:                                       ; preds = %bb.aa, %RSTRING_END.exit239, %rbimpl_intern_const.exit251, %bb.x
  %.8186332 = phi i64 [ %.6184, %bb.x ], [ %.8186331.a, %rbimpl_intern_const.exit251 ], [ %.8186331.a, %RSTRING_END.exit239 ], [ %.8186331.a, %bb.aa ] ; 2 uses
  %.3190 = phi i64 [ 4, %bb.x ], [ %i.du, %rbimpl_intern_const.exit251 ], [ 4, %RSTRING_END.exit239 ], [ 4, %bb.aa ] ; 2 uses
  %.not217 = icmp eq i32 %4, 0
  br i1 %.not217, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.critedge2
  %.pr.i252 = load i64, ptr @s3e.rbimpl_id.61, align 8, !tbaa !10 ; 2 uses
  %.not4.i253 = icmp eq i64 %.pr.i252, 0
  br i1 %.not4.i253, label %.lr.ph.i255, label %rbimpl_intern_const.exit257

.lr.ph.i255:                                      ; preds = %bb.ah, %.lr.ph.i255
  %i.ek = call i64 @rb_intern2(ptr noundef nonnull @.str.11, i64 noundef 3) #14 ; 3 uses
  store i64 %i.ek, ptr @s3e.rbimpl_id.61, align 8, !tbaa !10
  %.not.i256 = icmp eq i64 %i.ek, 0
  br i1 %.not.i256, label %.lr.ph.i255, label %rbimpl_intern_const.exit257, !llvm.loop !34

rbimpl_intern_const.exit257:                      ; preds = %.lr.ph.i255, %bb.ah
  %.lcssa.i254 = phi i64 [ %.pr.i252, %bb.ah ], [ %i.ek, %.lr.ph.i255 ]
  %i.el = call i64 @rb_id2sym(i64 noundef %.lcssa.i254) #14
  %i.em = call i64 @rb_hash_aset(i64 noundef %0, i64 noundef %i.el, i64 noundef 20) #14 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %rbimpl_intern_const.exit257, %.critedge2
  %i.en = icmp eq i64 %.3177, 4
  br i1 %i.en, label %.critedge4, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
end_hunk_0
