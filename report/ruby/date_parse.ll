inline.NumInlined: 734
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 57
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 87
begin_hunk_0_@mon_num:bb.a
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
  br i1 %i.m, label %.thread319, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = icmp eq i64 %3, 4
  br i1 %i.n, label %.thread304, label %.thread319

bb.e:                                             ; preds = %bb.b
  %i.o = icmp eq i64 %3, 4
  br i1 %i.o, label %.critedge, label %.thread304

.thread304:                                       ; preds = %bb.d, %bb.e
  %.1175.ph309 = phi i64 [ %.0174, %bb.e ], [ %1, %bb.d ] ; 4 uses
  %.0178.ph308 = phi i64 [ %3, %bb.e ], [ %.0174, %bb.d ] ; 5 uses
  %i.p = inttoptr i64 %.0178.ph308 to ptr         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !12   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 2
  br i1 %i.s, label %.thread319, label %bb.f

bb.f:                                             ; preds = %.thread304
  %i.t = icmp sgt i64 %i.r, 0
  br i1 %i.t, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.u = load i64, ptr %i.p, align 8, !tbaa !15
  %i.v = and i64 %i.u, 8192
  %.not.i226 = icmp eq i64 %i.v, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  br i1 %.not.i226, label %RSTRING_PTR.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !16
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.g, %bb.h
  %i.y = phi ptr [ %i.x, %bb.h ], [ %i.w, %bb.g ]
  %i.z = load i8, ptr %i.y, align 1, !tbaa !16
  %i.aa = icmp eq i8 %i.z, 39
  br i1 %i.aa, label %.thread319, label %.critedge

.thread319:                                       ; preds = %.thread304, %RSTRING_PTR.exit, %bb.c, %bb.d
  %.2326 = phi i64 [ %.0178.ph308, %RSTRING_PTR.exit ], [ %1, %bb.d ], [ %1, %bb.c ], [ %.0178.ph308, %.thread304 ] ; 4 uses
  %.2180325 = phi i64 [ 4, %RSTRING_PTR.exit ], [ %3, %bb.d ], [ %3, %bb.c ], [ 4, %.thread304 ] ; 4 uses
  %.1175301323 = phi i64 [ %.1175.ph309, %RSTRING_PTR.exit ], [ %.0174, %bb.d ], [ 4, %bb.c ], [ %.1175.ph309, %.thread304 ] ; 4 uses
  %i.ab = inttoptr i64 %.2326 to ptr              ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !15
  %i.ad = and i64 %i.ac, 8192
  %.not.i227 = icmp eq i64 %i.ad, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 24 ; 2 uses
  br i1 %.not.i227, label %RSTRING_END.exit, label %bb.i

bb.i:                                             ; preds = %.thread319
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !16
  br label %RSTRING_END.exit

RSTRING_END.exit:                                 ; preds = %.thread319, %bb.i
  %i.ag = phi ptr [ %i.af, %bb.i ], [ %i.ae, %.thread319 ] ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !12 ; 2 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 %i.ai ; 3 uses
  %i.ak = icmp sgt i64 %i.ai, 0
  br i1 %i.ak, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %RSTRING_END.exit, %bb.k
  %.0191363 = phi ptr [ %i.as, %bb.k ], [ %i.ag, %RSTRING_END.exit ] ; 6 uses
  %i.al = load i8, ptr %.0191363, align 1, !tbaa !16 ; 3 uses
  switch i8 %i.al, label %bb.j [
    i8 45, label %.loopexit462
    i8 43, label %.loopexit462
  ]

bb.j:                                             ; preds = %.lr.ph
  %i.am = tail call ptr @__ctype_b_loc() #12
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !17
  %i.ao = zext i8 %i.al to i64
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %i.an, i64 %i.ao
  %i.aq = load i16, ptr %i.ap, align 2, !tbaa !20
  %i.ar = and i16 %i.aq, 2048
  %.not = icmp eq i16 %i.ar, 0
  br i1 %.not, label %bb.k, label %.loopexit345

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %.0191363, i64 1 ; 2 uses
  %i.at = icmp ult ptr %i.as, %i.aj
  br i1 %i.at, label %.lr.ph, label %.critedge, !llvm.loop !55

.loopexit345:                                     ; preds = %bb.j
  switch i8 %i.al, label %bb.l [
    i8 45, label %.loopexit462
    i8 43, label %.loopexit462
  ]

.loopexit462:                                     ; preds = %.lr.ph, %.lr.ph, %.loopexit345, %.loopexit345
  %i.au = getelementptr inbounds nuw i8, ptr %.0191363, i64 1
  br label %bb.l

bb.l:                                             ; preds = %.loopexit345, %.loopexit462
  %.1192 = phi ptr [ %i.au, %.loopexit462 ], [ %.0191363, %.loopexit345 ] ; 4 uses
  %i.av = icmp ult ptr %.1192, %i.aj
  br i1 %i.av, label %.lr.ph.i230, label %digit_span.exit

.lr.ph.i230:                                      ; preds = %bb.l
  %5 = ptrtoint ptr %i.aj to i64
  %6 = ptrtoint ptr %.1192 to i64
  %i.aw = tail call ptr @__ctype_b_loc() #12
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !17
  %i.ay = sub i64 %5, %6                          ; 2 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.n, %.lr.ph.i230
  %.07.i = phi i64 [ 0, %.lr.ph.i230 ], [ %i.bf, %bb.n ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.1192, i64 %.07.i
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !16
  %i.bb = zext i8 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %i.ax, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2, !tbaa !20
  %i.be = and i16 %i.bd, 2048
  %.not.i231 = icmp eq i16 %i.be, 0
  br i1 %.not.i231, label %digit_span.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = add i64 %.07.i, 1                       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bf, %i.ay
  br i1 %exitcond.not.i, label %digit_span.exit, label %bb.m, !llvm.loop !56

digit_span.exit:                                  ; preds = %bb.m, %bb.n, %bb.l
  %.0.lcssa.i = phi i64 [ 0, %bb.l ], [ %.07.i, %bb.m ], [ %i.ay, %bb.n ]
  %i.bg = getelementptr inbounds nuw i8, ptr %.1192, i64 %.0.lcssa.i ; 2 uses
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !16
  %.not213 = icmp eq i8 %i.bh, 0
  br i1 %.not213, label %.critedge, label %bb.o

bb.o:                                             ; preds = %digit_span.exit
  %i.bi = ptrtoint ptr %i.bg to i64
  %i.bj = ptrtoint ptr %.0191363 to i64
  %i.bk = sub i64 %i.bi, %i.bj
  %i.bl = tail call i64 @rb_str_new(ptr noundef nonnull %.0191363, i64 noundef %i.bk) #14
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %bb.f, %RSTRING_PTR.exit, %RSTRING_END.exit, %bb.e, %bb.o, %digit_span.exit
  %.1175301324 = phi i64 [ %.1175.ph309, %bb.f ], [ %.1175301323, %digit_span.exit ], [ %.1175301323, %bb.o ], [ %.0174, %bb.e ], [ %.1175301323, %RSTRING_END.exit ], [ %.1175.ph309, %RSTRING_PTR.exit ], [ %.1175301323, %bb.k ] ; 4 uses
  %.4182 = phi i64 [ %.0178.ph308, %bb.f ], [ %.2180325, %digit_span.exit ], [ %i.bl, %bb.o ], [ 4, %bb.e ], [ %.2180325, %RSTRING_END.exit ], [ %.0178.ph308, %RSTRING_PTR.exit ], [ %.2180325, %bb.k ] ; 3 uses
  %.4 = phi i64 [ 4, %bb.f ], [ %.2326, %digit_span.exit ], [ %.2180325, %bb.o ], [ 4, %bb.e ], [ %.2326, %RSTRING_END.exit ], [ 4, %RSTRING_PTR.exit ], [ %.2326, %bb.k ] ; 3 uses
  %i.bm = icmp eq i64 %.1175301324, 4
  br i1 %i.bm, label %bb.t, label %bb.p

bb.p:                                             ; preds = %.critedge
  %i.bn = inttoptr i64 %.1175301324 to ptr        ; 3 uses
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !15
  %i.bp = and i64 %i.bo, 8192
  %.not.i232 = icmp eq i64 %i.bp, 0
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 24 ; 2 uses
  br i1 %.not.i232, label %RSTRING_PTR.exit233, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !16
  br label %RSTRING_PTR.exit233

RSTRING_PTR.exit233:                              ; preds = %bb.p, %bb.q
  %i.bs = phi ptr [ %i.br, %bb.q ], [ %i.bq, %bb.p ]
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !16
  %i.bu = icmp eq i8 %i.bt, 39
  br i1 %i.bu, label %bb.s, label %bb.r

bb.r:                                             ; preds = %RSTRING_PTR.exit233
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !12
  %i.bx = icmp sgt i64 %i.bw, 2
  br i1 %i.bx, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r, %RSTRING_PTR.exit233
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %.critedge
  %.6184 = phi i64 [ %.4182, %.critedge ], [ %.4, %bb.s ], [ %.4182, %bb.r ] ; 4 uses
  %.3177 = phi i64 [ 4, %.critedge ], [ %.4182, %bb.s ], [ %.1175301324, %bb.r ] ; 2 uses
  %.6 = phi i64 [ %.4, %.critedge ], [ %.1175301324, %bb.s ], [ %.4, %bb.r ] ; 4 uses
  %i.by = icmp eq i64 %.6184, 4
  br i1 %i.by, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bz = inttoptr i64 %.6184 to ptr              ; 5 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !15
  %i.cb = and i64 %i.ca, 8192                     ; 3 uses
  %.not.i234 = icmp eq i64 %i.cb, 0
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 24 ; 2 uses
  br i1 %.not.i234, label %RSTRING_PTR.exit235, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !16
  br label %RSTRING_PTR.exit235

RSTRING_PTR.exit235:                              ; preds = %bb.u, %bb.v
  %i.ce = phi ptr [ %i.cd, %bb.v ], [ %i.cc, %bb.u ]
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !16
  %i.cg = icmp eq i8 %i.cf, 39
  br i1 %i.cg, label %.thread327, label %bb.w

bb.w:                                             ; preds = %RSTRING_PTR.exit235
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !12
  %i.cj = icmp sgt i64 %i.ci, 2
  br i1 %i.cj, label %.thread327, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.t
  %i.ck = icmp eq i64 %.6, 4
  br i1 %i.ck, label %.critedge2, label %..thread327_crit_edge

..thread327_crit_edge:                            ; preds = %bb.x
  %.phi.trans.insert = inttoptr i64 %.6 to ptr    ; 2 uses
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !15
  %.pre389 = and i64 %.pre, 8192
  br label %.thread327

.thread327:                                       ; preds = %..thread327_crit_edge, %bb.w, %RSTRING_PTR.exit235
  %.pre-phi390 = phi i64 [ %.pre389, %..thread327_crit_edge ], [ %i.cb, %bb.w ], [ %i.cb, %RSTRING_PTR.exit235 ]
  %.pre-phi = phi ptr [ %.phi.trans.insert, %..thread327_crit_edge ], [ %i.bz, %bb.w ], [ %i.bz, %RSTRING_PTR.exit235 ] ; 2 uses
  %.8186330 = phi i64 [ %.6184, %..thread327_crit_edge ], [ %.6, %bb.w ], [ %.6, %RSTRING_PTR.exit235 ] ; 3 uses
  %.not.i236 = icmp eq i64 %.pre-phi390, 0
  %i.cl = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 24 ; 2 uses
  br i1 %.not.i236, label %RSTRING_END.exit239, label %bb.y

bb.y:                                             ; preds = %.thread327
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !16
  br label %RSTRING_END.exit239

RSTRING_END.exit239:                              ; preds = %.thread327, %bb.y
  %i.cn = phi ptr [ %i.cm, %bb.y ], [ %i.cl, %.thread327 ] ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.pre-phi, i64 16
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !12 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %i.cn, i64 %i.cp ; 3 uses
  %i.cr = icmp sgt i64 %i.cp, 0
  br i1 %i.cr, label %.lr.ph365, label %.critedge2

.lr.ph365:                                        ; preds = %RSTRING_END.exit239, %bb.aa
  %.0194364 = phi ptr [ %i.cz, %bb.aa ], [ %i.cn, %RSTRING_END.exit239 ] ; 6 uses
  %i.cs = load i8, ptr %.0194364, align 1, !tbaa !16 ; 3 uses
  switch i8 %i.cs, label %bb.z [
    i8 45, label %.loopexit454
    i8 43, label %.loopexit454
  ]

bb.z:                                             ; preds = %.lr.ph365
  %i.ct = tail call ptr @__ctype_b_loc() #12
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !17
  %i.cv = zext i8 %i.cs to i64
  %i.cw = getelementptr inbounds nuw [2 x i8], ptr %i.cu, i64 %i.cv
  %i.cx = load i16, ptr %i.cw, align 2, !tbaa !20
  %i.cy = and i16 %i.cx, 2048
  %.not214 = icmp eq i16 %i.cy, 0
  br i1 %.not214, label %bb.aa, label %.loopexit

bb.aa:                                            ; preds = %bb.z
  %i.cz = getelementptr inbounds nuw i8, ptr %.0194364, i64 1 ; 2 uses
  %i.da = icmp ult ptr %i.cz, %i.cq
  br i1 %i.da, label %.lr.ph365, label %.critedge2, !llvm.loop !57

.loopexit:                                        ; preds = %bb.z
  switch i8 %i.cs, label %bb.ab [
    i8 45, label %.loopexit454
    i8 43, label %.loopexit454
  ]

.loopexit454:                                     ; preds = %.lr.ph365, %.lr.ph365, %.loopexit, %.loopexit
  %i.db = getelementptr inbounds nuw i8, ptr %.0194364, i64 1
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit, %.loopexit454
  %.1195338 = phi ptr [ %i.db, %.loopexit454 ], [ %.0194364, %.loopexit ] ; 5 uses
  %i.dc = phi i64 [ 0, %.loopexit454 ], [ 4, %.loopexit ] ; 2 uses
  %i.dd = icmp ult ptr %.1195338, %i.cq
  br i1 %i.dd, label %.lr.ph.i241, label %digit_span.exit245.thread

.lr.ph.i241:                                      ; preds = %bb.ab
  %7 = ptrtoint ptr %i.cq to i64
  %8 = ptrtoint ptr %.1195338 to i64
  %i.de = tail call ptr @__ctype_b_loc() #12
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !17
  %i.dg = sub i64 %7, %8                          ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.lr.ph.i241
  %.07.i242 = phi i64 [ 0, %.lr.ph.i241 ], [ %i.dn, %bb.ad ] ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.1195338, i64 %.07.i242
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !16
  %i.dj = zext i8 %i.di to i64
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr %i.df, i64 %i.dj
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !20
  %i.dm = and i16 %i.dl, 2048
  %.not.i243 = icmp eq i16 %i.dm, 0
  br i1 %.not.i243, label %digit_span.exit245, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dn = add i64 %.07.i242, 1                    ; 2 uses
  %exitcond.not.i244 = icmp eq i64 %i.dn, %i.dg
  br i1 %exitcond.not.i244, label %digit_span.exit245, label %bb.ac, !llvm.loop !56

digit_span.exit245:                               ; preds = %bb.ac, %bb.ad
  %.0.lcssa.i240 = phi i64 [ %.07.i242, %bb.ac ], [ %i.dg, %bb.ad ]
  %.0.lcssa.i240.fr = freeze i64 %.0.lcssa.i240   ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %.1195338, i64 %.0.lcssa.i240.fr
  %i.dp = icmp ugt i64 %.0.lcssa.i240.fr, 2
  %spec.select = select i1 %i.dp, i64 0, i64 %i.dc
  br label %digit_span.exit245.thread

digit_span.exit245.thread:                        ; preds = %digit_span.exit245, %bb.ab
  %i.dq = phi ptr [ %.1195338, %bb.ab ], [ %i.do, %digit_span.exit245 ]
  %i.dr = phi i64 [ %i.dc, %bb.ab ], [ %spec.select, %digit_span.exit245 ]
  %i.ds = ptrtoint ptr %i.dq to i64
  %i.dt = ptrtoint ptr %.0194364 to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 4 uses
  %i.dv = add nsw i64 %i.du, 1                    ; 3 uses
  %i.dw = icmp ult i64 %i.dv, 1024
  br i1 %i.dw, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %digit_span.exit245.thread
  store i64 0, ptr %i.a, align 8, !tbaa !10
  %i.dx = alloca i8, i64 %i.dv, align 16
  br label %bb.ag

bb.af:                                            ; preds = %digit_span.exit245.thread
  %i.dy = add i64 %i.du, 8
  %i.dz = lshr i64 %i.dy, 3
  %i.ea = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.dv, i64 noundef %i.dz) #16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.eb = phi ptr [ %i.dx, %bb.ae ], [ %i.ea, %bb.af ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eb, ptr nonnull align 1 %.0194364, i64 %i.du, i1 false)
  %i.ec = getelementptr inbounds i8, ptr %i.eb, i64 %i.du
  store i8 0, ptr %i.ec, align 1, !tbaa !16
  %i.ed = call i64 @rb_cstr_to_inum(ptr noundef nonnull %i.eb, i32 noundef 10, i32 noundef 0) #14
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #14
  %.pr.i246 = load i64, ptr @s3e.rbimpl_id.60, align 8, !tbaa !10 ; 2 uses
  %.not4.i247 = icmp eq i64 %.pr.i246, 0
  br i1 %.not4.i247, label %.lr.ph.i249, label %rbimpl_intern_const.exit251

.lr.ph.i249:                                      ; preds = %bb.ag, %.lr.ph.i249
  %i.ee = call i64 @rb_intern2(ptr noundef nonnull @.str.18, i64 noundef 4) #14 ; 3 uses
  store i64 %i.ee, ptr @s3e.rbimpl_id.60, align 8, !tbaa !10
  %.not.i250 = icmp eq i64 %i.ee, 0
  br i1 %.not.i250, label %.lr.ph.i249, label %rbimpl_intern_const.exit251, !llvm.loop !34

rbimpl_intern_const.exit251:                      ; preds = %.lr.ph.i249, %bb.ag
  %.lcssa.i248 = phi i64 [ %.pr.i246, %bb.ag ], [ %i.ee, %.lr.ph.i249 ]
  %i.ef = call i64 @rb_id2sym(i64 noundef %.lcssa.i248) #14
  %i.eg = call i64 @rb_hash_aset(i64 noundef %0, i64 noundef %i.ef, i64 noundef %i.ed) #14 ; 0 uses
  br label %.critedge2

.critedge2:                                       ; preds = %bb.aa, %RSTRING_END.exit239, %rbimpl_intern_const.exit251, %bb.x
  %.8186331 = phi i64 [ %.6184, %bb.x ], [ %.8186330, %rbimpl_intern_const.exit251 ], [ %.8186330, %RSTRING_END.exit239 ], [ %.8186330, %bb.aa ] ; 2 uses
  %.3190 = phi i64 [ 4, %bb.x ], [ %i.dr, %rbimpl_intern_const.exit251 ], [ 4, %RSTRING_END.exit239 ], [ 4, %bb.aa ] ; 2 uses
  %.not217 = icmp eq i32 %4, 0
  br i1 %.not217, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %.critedge2
  %.pr.i252 = load i64, ptr @s3e.rbimpl_id.61, align 8, !tbaa !10 ; 2 uses
  %.not4.i253 = icmp eq i64 %.pr.i252, 0
  br i1 %.not4.i253, label %.lr.ph.i255, label %rbimpl_intern_const.exit257

.lr.ph.i255:                                      ; preds = %bb.ah, %.lr.ph.i255
  %i.eh = call i64 @rb_intern2(ptr noundef nonnull @.str.11, i64 noundef 3) #14 ; 3 uses
  store i64 %i.eh, ptr @s3e.rbimpl_id.61, align 8, !tbaa !10
  %.not.i256 = icmp eq i64 %i.eh, 0
  br i1 %.not.i256, label %.lr.ph.i255, label %rbimpl_intern_const.exit257, !llvm.loop !34

rbimpl_intern_const.exit257:                      ; preds = %.lr.ph.i255, %bb.ah
  %.lcssa.i254 = phi i64 [ %.pr.i252, %bb.ah ], [ %i.eh, %.lr.ph.i255 ]
  %i.ei = call i64 @rb_id2sym(i64 noundef %.lcssa.i254) #14
  %i.ej = call i64 @rb_hash_aset(i64 noundef %0, i64 noundef %i.ei, i64 noundef 20) #14 ; 0 uses
  br label %bb.ai

bb.ai:                                            ; preds = %rbimpl_intern_const.exit257, %.critedge2
  %i.ek = icmp eq i64 %.3177, 4
  br i1 %i.ek, label %.critedge4, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.el = inttoptr i64 %.3177 to ptr              ; 3 uses
  %i.em = load i64, ptr %i.el, align 8, !tbaa !15
  %i.en = and i64 %i.em, 8192
  %.not.i258 = icmp eq i64 %i.en, 0
  %i.eo = getelementptr inbounds nuw i8, ptr %i.el, i64 24 ; 2 uses
  br i1 %.not.i258, label %RSTRING_END.exit261, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !16
  br label %RSTRING_END.exit261

RSTRING_END.exit261:                              ; preds = %bb.aj, %bb.ak
  %i.eq = phi ptr [ %i.ep, %bb.ak ], [ %i.eo, %bb.aj ] ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %i.es = load i64, ptr %i.er, align 8, !tbaa !12 ; 2 uses
  %i.et = getelementptr inbounds i8, ptr %i.eq, i64 %i.es ; 2 uses
  %i.eu = icmp sgt i64 %i.es, 0
  br i1 %i.eu, label %.lr.ph367, label %.critedge4

.lr.ph367:                                        ; preds = %RSTRING_END.exit261
  %i.ev = tail call ptr @__ctype_b_loc() #12
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !17 ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %.lr.ph367, %bb.am
  %.0197366 = phi ptr [ %i.eq, %.lr.ph367 ], [ %i.fc, %bb.am ] ; 5 uses
  %i.ex = load i8, ptr %.0197366, align 1, !tbaa !16
  %i.ey = zext i8 %i.ex to i64
  %i.ez = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %i.ey
  %i.fa = load i16, ptr %i.ez, align 2, !tbaa !20
  %i.fb = and i16 %i.fa, 2048
  %.not218 = icmp eq i16 %i.fb, 0
  br i1 %.not218, label %bb.am, label %.lr.ph.i263

bb.am:                                            ; preds = %bb.al
  %i.fc = getelementptr inbounds nuw i8, ptr %.0197366, i64 1 ; 2 uses
  %i.fd = icmp ult ptr %i.fc, %i.et
  br i1 %i.fd, label %bb.al, label %.critedge4, !llvm.loop !58

.lr.ph.i263:                                      ; preds = %bb.al
  %9 = ptrtoint ptr %i.et to i64
  %10 = ptrtoint ptr %.0197366 to i64
  %i.fe = sub i64 %9, %10                         ; 2 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.ao, %.lr.ph.i263
  %.07.i264 = phi i64 [ 0, %.lr.ph.i263 ], [ %i.fl, %bb.ao ] ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.0197366, i64 %.07.i264
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !16
  %i.fh = zext i8 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [2 x i8], ptr %i.ew, i64 %i.fh
  %i.fj = load i16, ptr %i.fi, align 2, !tbaa !20
  %i.fk = and i16 %i.fj, 2048
  %.not.i265 = icmp eq i16 %i.fk, 0
  br i1 %.not.i265, label %digit_span.exit267, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fl = add i64 %.07.i264, 1                    ; 2 uses
  %exitcond.not.i266 = icmp eq i64 %i.fl, %i.fe
  br i1 %exitcond.not.i266, label %digit_span.exit267, label %bb.an, !llvm.loop !56

digit_span.exit267:                               ; preds = %bb.an, %bb.ao
  %.0.lcssa.i262 = phi i64 [ %.07.i264, %bb.an ], [ %i.fe, %bb.ao ] ; 4 uses
  %i.fm = add nsw i64 %.0.lcssa.i262, 1           ; 3 uses
  %i.fn = icmp ult i64 %i.fm, 1024
  br i1 %i.fn, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %digit_span.exit267
  store i64 0, ptr %i.a, align 8, !tbaa !10
  %i.fo = alloca i8, i64 %i.fm, align 16
  br label %bb.ar

bb.aq:                                            ; preds = %digit_span.exit267
  %i.fp = add i64 %.0.lcssa.i262, 8
  %i.fq = lshr i64 %i.fp, 3
  %i.fr = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.fm, i64 noundef %i.fq) #16
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.fs = phi ptr [ %i.fo, %bb.ap ], [ %i.fr, %bb.aq ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fs, ptr nonnull align 1 %.0197366, i64 %.0.lcssa.i262, i1 false)
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 %.0.lcssa.i262
  store i8 0, ptr %i.ft, align 1, !tbaa !16
  %i.fu = call i64 @rb_cstr_to_inum(ptr noundef nonnull %i.fs, i32 noundef 10, i32 noundef 0) #14
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #14
  %.pr.i268 = load i64, ptr @s3e.rbimpl_id.62, align 8, !tbaa !10 ; 2 uses
  %.not4.i269 = icmp eq i64 %.pr.i268, 0
  br i1 %.not4.i269, label %.lr.ph.i271, label %rbimpl_intern_const.exit273

.lr.ph.i271:                                      ; preds = %bb.ar, %.lr.ph.i271
  %i.fv = call i64 @rb_intern2(ptr noundef nonnull @.str.63, i64 noundef 3) #14 ; 3 uses
  store i64 %i.fv, ptr @s3e.rbimpl_id.62, align 8, !tbaa !10
  %.not.i272 = icmp eq i64 %i.fv, 0
  br i1 %.not.i272, label %.lr.ph.i271, label %rbimpl_intern_const.exit273, !llvm.loop !34

rbimpl_intern_const.exit273:                      ; preds = %.lr.ph.i271, %bb.ar
  %.lcssa.i270 = phi i64 [ %.pr.i268, %bb.ar ], [ %i.fv, %.lr.ph.i271 ]
  %i.fw = call i64 @rb_id2sym(i64 noundef %.lcssa.i270) #14
  %i.fx = call i64 @rb_hash_aset(i64 noundef %0, i64 noundef %i.fw, i64 noundef %i.fu) #14 ; 0 uses
  br label %.critedge4

.critedge4:                                       ; preds = %bb.am, %RSTRING_END.exit261, %rbimpl_intern_const.exit273, %bb.ai
  %i.fy = icmp eq i64 %.8186331, 4
  br i1 %i.fy, label %.critedge6, label %bb.as

bb.as:                                            ; preds = %.critedge4
  %i.fz = inttoptr i64 %.8186331 to ptr           ; 3 uses
  %i.ga = load i64, ptr %i.fz, align 8, !tbaa !15
  %i.gb = and i64 %i.ga, 8192
  %.not.i274 = icmp eq i64 %i.gb, 0
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 24 ; 2 uses
  br i1 %.not.i274, label %RSTRING_END.exit277, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !16
  br label %RSTRING_END.exit277

RSTRING_END.exit277:                              ; preds = %bb.as, %bb.at
  %i.ge = phi ptr [ %i.gd, %bb.at ], [ %i.gc, %bb.as ] ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.fz, i64 16
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !12 ; 2 uses
  %i.gh = getelementptr inbounds i8, ptr %i.ge, i64 %i.gg ; 2 uses
  %i.gi = icmp sgt i64 %i.gg, 0
  br i1 %i.gi, label %.lr.ph369, label %.critedge6

.lr.ph369:                                        ; preds = %RSTRING_END.exit277
  %i.gj = tail call ptr @__ctype_b_loc() #12
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !17 ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %.lr.ph369, %bb.av
  %.0193368 = phi ptr [ %i.ge, %.lr.ph369 ], [ %i.gq, %bb.av ] ; 5 uses
  %i.gl = load i8, ptr %.0193368, align 1, !tbaa !16
  %i.gm = zext i8 %i.gl to i64
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.gm
  %i.go = load i16, ptr %i.gn, align 2, !tbaa !20
  %i.gp = and i16 %i.go, 2048
  %.not220 = icmp eq i16 %i.gp, 0
  br i1 %.not220, label %bb.av, label %.lr.ph.i279

bb.av:                                            ; preds = %bb.au
  %i.gq = getelementptr inbounds nuw i8, ptr %.0193368, i64 1 ; 2 uses
  %i.gr = icmp ult ptr %i.gq, %i.gh
  br i1 %i.gr, label %bb.au, label %.critedge6, !llvm.loop !59

.lr.ph.i279:                                      ; preds = %bb.au
  %11 = ptrtoint ptr %i.gh to i64
  %12 = ptrtoint ptr %.0193368 to i64
  %i.gs = sub i64 %11, %12                        ; 2 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.ax, %.lr.ph.i279
  %.07.i280 = phi i64 [ 0, %.lr.ph.i279 ], [ %i.gz, %bb.ax ] ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %.0193368, i64 %.07.i280
  %i.gu = load i8, ptr %i.gt, align 1, !tbaa !16
  %i.gv = zext i8 %i.gu to i64
  %i.gw = getelementptr inbounds nuw [2 x i8], ptr %i.gk, i64 %i.gv
  %i.gx = load i16, ptr %i.gw, align 2, !tbaa !20
  %i.gy = and i16 %i.gx, 2048
  %.not.i281 = icmp eq i16 %i.gy, 0
  br i1 %.not.i281, label %digit_span.exit283, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gz = add i64 %.07.i280, 1                    ; 2 uses
  %exitcond.not.i282 = icmp eq i64 %i.gz, %i.gs
  br i1 %exitcond.not.i282, label %digit_span.exit283, label %bb.aw, !llvm.loop !56

digit_span.exit283:                               ; preds = %bb.aw, %bb.ax
  %.0.lcssa.i278 = phi i64 [ %.07.i280, %bb.aw ], [ %i.gs, %bb.ax ] ; 4 uses
  %i.ha = add nsw i64 %.0.lcssa.i278, 1           ; 3 uses
  %i.hb = icmp ult i64 %i.ha, 1024
  br i1 %i.hb, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %digit_span.exit283
  store i64 0, ptr %i.a, align 8, !tbaa !10
  %i.hc = alloca i8, i64 %i.ha, align 16
  br label %bb.ba

bb.az:                                            ; preds = %digit_span.exit283
  %i.hd = add i64 %.0.lcssa.i278, 8
  %i.he = lshr i64 %i.hd, 3
  %i.hf = call noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef nonnull %i.a, i64 noundef range(i64 -9223372036854775807, -9223372036854775808) %i.ha, i64 noundef %i.he) #16
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.hg = phi ptr [ %i.hc, %bb.ay ], [ %i.hf, %bb.az ] ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hg, ptr nonnull align 1 %.0193368, i64 %.0.lcssa.i278, i1 false)
  %i.hh = getelementptr inbounds i8, ptr %i.hg, i64 %.0.lcssa.i278
  store i8 0, ptr %i.hh, align 1, !tbaa !16
  %i.hi = call i64 @rb_cstr_to_inum(ptr noundef nonnull %i.hg, i32 noundef 10, i32 noundef 0) #14
  call void @rb_free_tmp_buffer(ptr noundef nonnull %i.a) #14
  %.pr.i284 = load i64, ptr @s3e.rbimpl_id.64, align 8, !tbaa !10 ; 2 uses
  %.not4.i285 = icmp eq i64 %.pr.i284, 0
  br i1 %.not4.i285, label %.lr.ph.i287, label %rbimpl_intern_const.exit289

.lr.ph.i287:                                      ; preds = %bb.ba, %.lr.ph.i287
  %i.hj = call i64 @rb_intern2(ptr noundef nonnull @.str.65, i64 noundef 4) #14 ; 3 uses
  store i64 %i.hj, ptr @s3e.rbimpl_id.64, align 8, !tbaa !10
  %.not.i288 = icmp eq i64 %i.hj, 0
  br i1 %.not.i288, label %.lr.ph.i287, label %rbimpl_intern_const.exit289, !llvm.loop !34

rbimpl_intern_const.exit289:                      ; preds = %.lr.ph.i287, %bb.ba
  %.lcssa.i286 = phi i64 [ %.pr.i284, %bb.ba ], [ %i.hj, %.lr.ph.i287 ]
  %i.hk = call i64 @rb_id2sym(i64 noundef %.lcssa.i286) #14
  %i.hl = call i64 @rb_hash_aset(i64 noundef %0, i64 noundef %i.hk, i64 noundef %i.hi) #14 ; 0 uses
  br label %.critedge6

.critedge6:                                       ; preds = %bb.av, %RSTRING_END.exit277, %rbimpl_intern_const.exit289, %.critedge4
  %i.hm = icmp eq i64 %.3190, 4
  br i1 %i.hm, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %.critedge6
  %.pr.i290 = load i64, ptr @s3e.rbimpl_id.66, align 8, !tbaa !10 ; 2 uses
  %.not4.i291 = icmp eq i64 %.pr.i290, 0
  br i1 %.not4.i291, label %.lr.ph.i293, label %rbimpl_intern_const.exit295

.lr.ph.i293:                                      ; preds = %bb.bb, %.lr.ph.i293
  %i.hn = call i64 @rb_intern2(ptr noundef nonnull @.str.9, i64 noundef 5) #14 ; 3 uses
  store i64 %i.hn, ptr @s3e.rbimpl_id.66, align 8, !tbaa !10
  %.not.i294 = icmp eq i64 %i.hn, 0
  br i1 %.not.i294, label %.lr.ph.i293, label %rbimpl_intern_const.exit295, !llvm.loop !34

rbimpl_intern_const.exit295:                      ; preds = %.lr.ph.i293, %bb.bb
  %.lcssa.i292 = phi i64 [ %.pr.i290, %bb.bb ], [ %i.hn, %.lr.ph.i293 ]
  %i.ho = call i64 @rb_id2sym(i64 noundef %.lcssa.i292) #14
  %i.hp = call i64 @rb_hash_aset(i64 noundef %0, i64 noundef %i.ho, i64 noundef %.3190) #14 ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %rbimpl_intern_const.exit295, %.critedge6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

declare i64 @rb_str_new(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i64 @rb_cstr_to_inum(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @rb_free_tmp_buffer(ptr noundef) local_unnamed_addr #3

; Function Attrs: allocsize(1,2)
declare noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind uwtable
define internal noundef i32 @parse_us_cb(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_reg_nth_match(i32 noundef 1, i64 noundef %0) #14
  %i.b = tail call i64 @rb_reg_nth_match(i32 noundef 2, i64 noundef %0) #14
  %i.c = tail call i64 @rb_reg_nth_match(i32 noundef 3, i64 noundef %0) #14 ; 2 uses
  %i.d = tail call i64 @rb_reg_nth_match(i32 noundef 4, i64 noundef %0) #14
  %i.e = tail call fastcc i32 @mon_num(i64 noundef %i.a)
  %i.f = icmp eq i64 %i.c, 4
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = inttoptr i64 %i.c to ptr                 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !15
  %i.i = and i64 %i.h, 8192
  %.not.i = icmp eq i64 %i.i, 0
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %RSTRING_PTR.exit.thread

RSTRING_PTR.exit:                                 ; preds = %bb.b
  %i.k = load i8, ptr %i.j, align 8, !tbaa !16    ; 2 uses
  %i.l = icmp eq i8 %i.k, 66
  br i1 %i.l, label %bb.c, label %RSTRING_PTR.exit13

RSTRING_PTR.exit.thread:                          ; preds = %bb.b
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !16
  %i.n = load i8, ptr %i.m, align 1, !tbaa !16    ; 2 uses
  %i.o = icmp eq i8 %i.n, 66
  br i1 %i.o, label %bb.c, label %RSTRING_PTR.exit13

RSTRING_PTR.exit13:                               ; preds = %RSTRING_PTR.exit.thread, %RSTRING_PTR.exit
  %i.p = phi i8 [ %i.k, %RSTRING_PTR.exit ], [ %i.n, %RSTRING_PTR.exit.thread ]
  %i.q = icmp eq i8 %i.p, 98
  %i.r = zext i1 %i.q to i32
  br label %bb.c

bb.c:                                             ; preds = %RSTRING_PTR.exit.thread, %RSTRING_PTR.exit, %RSTRING_PTR.exit13, %bb.a
  %i.s = phi i32 [ 0, %bb.a ], [ 1, %RSTRING_PTR.exit ], [ %i.r, %RSTRING_PTR.exit13 ], [ 1, %RSTRING_PTR.exit.thread ]
  %i.t = shl nuw nsw i32 %i.e, 1
  %i.u = or disjoint i32 %i.t, 1
  %i.v = zext nneg i32 %i.u to i64
  tail call fastcc void @s3e(i64 noundef %1, i64 noundef %i.d, i64 noundef %i.v, i64 noundef %i.b, i32 noundef %i.s)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @parse_iso_cb(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_reg_nth_match(i32 noundef 1, i64 noundef %0) #14
  %i.b = tail call i64 @rb_reg_nth_match(i32 noundef 2, i64 noundef %0) #14
  %i.c = tail call i64 @rb_reg_nth_match(i32 noundef 3, i64 noundef %0) #14
  tail call fastcc void @s3e(i64 noundef %1, i64 noundef %i.a, i64 noundef %i.b, i64 noundef %i.c, i32 noundef 0)
  ret i32 1
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @parse_jis_cb(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = tail call i64 @rb_reg_nth_match(i32 noundef 1, i64 noundef %0) #14
  %i.b = tail call i64 @rb_reg_nth_match(i32 noundef 2, i64 noundef %0) #14
  %i.c = tail call i64 @rb_reg_nth_match(i32 noundef 3, i64 noundef %0) #14
  %i.d = tail call i64 @rb_reg_nth_match(i32 noundef 4, i64 noundef %0) #14
  %i.e = inttoptr i64 %i.a to ptr                 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !15
  %i.g = and i64 %i.f, 8192
  %.not.i = icmp eq i64 %i.g, 0
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !16
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.a, %bb.b
  %i.j = phi ptr [ %i.i, %bb.b ], [ %i.h, %bb.a ]
  %i.k = load i8, ptr %i.j, align 1, !tbaa !16
  %switch.tableidx = add i8 %i.k, -72             ; 2 uses
  %i.l = icmp ult i8 %switch.tableidx, 45
  br i1 %i.l, label %switch.lookup, label %gengo.exit

switch.lookup:                                    ; preds = %RSTRING_PTR.exit
  %i.m = zext nneg i8 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [2 x i8], ptr @switch.table.parse_jis_cb, i64 %i.m
  %switch.load = load i16, ptr %switch.gep, align 2
  %switch.ext = zext i16 %switch.load to i64
  br label %gengo.exit

gengo.exit:                                       ; preds = %RSTRING_PTR.exit, %switch.lookup
  %.0.i = phi i64 [ %switch.ext, %switch.lookup ], [ 1, %RSTRING_PTR.exit ]
  %.pr.i = load i64, ptr @parse_jis_cb.rbimpl_id, align 8, !tbaa !10 ; 2 uses
  %.not4.i = icmp eq i64 %.pr.i, 0
  br i1 %.not4.i, label %.lr.ph.i, label %rbimpl_intern_const.exit

.lr.ph.i:                                         ; preds = %gengo.exit, %.lr.ph.i
  %i.n = tail call i64 @rb_intern2(ptr noundef nonnull @.str.18, i64 noundef 4) #14 ; 3 uses
  store i64 %i.n, ptr @parse_jis_cb.rbimpl_id, align 8, !tbaa !10
  %.not.i15 = icmp eq i64 %i.n, 0
  br i1 %.not.i15, label %.lr.ph.i, label %rbimpl_intern_const.exit, !llvm.loop !34

rbimpl_intern_const.exit:                         ; preds = %.lr.ph.i, %gengo.exit
  %.lcssa.i = phi i64 [ %.pr.i, %gengo.exit ], [ %i.n, %.lr.ph.i ]
  %i.o = tail call i64 @rb_id2sym(i64 noundef %.lcssa.i) #14
  %i.p = tail call i64 @rb_str_to_inum(i64 noundef %i.b, i32 noundef 10, i32 noundef 0) #14
end_hunk_0
