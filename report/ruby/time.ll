inline.NumInlined: 958
inline.NumDeleted: 130
begin_hunk_0_@localtimew:bb.a
  %i.io = load i64, ptr %i.in, align 8, !tbaa !39
  %.not.i39 = icmp eq i64 %i.io, 3
  br i1 %.not.i39, label %bb.ao, label %v2w.exit

bb.ao:                                            ; preds = %bb.an
  %i.ip = getelementptr i8, ptr %i.ij, i64 16
  %i.iq = load i64, ptr %i.ip, align 8, !tbaa !41
  br label %v2w.exit

v2w.exit:                                         ; preds = %guess_local_offset.exit, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.an, %bb.ao
  %.06.i = phi i64 [ %.026.i, %bb.an ], [ %i.iq, %bb.ao ], [ %.026.i, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %.026.i, %guess_local_offset.exit ]
  %i.ir = call fastcc i64 @wmul(i64 noundef %.06.i, i64 noundef 2000000001)
  %i.is = call fastcc i64 @wadd(i64 noundef %0, i64 noundef %i.ir)
  %i.it = call fastcc ptr @gmtimew(i64 noundef %i.is, ptr noundef %1)
  %.not30 = icmp eq ptr %i.it, null
  br i1 %.not30, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %v2w.exit
  %i.iu = getelementptr i8, ptr %1, i64 16
  store i64 %.026.i, ptr %i.iu, align 8, !tbaa !70
  %i.iv = getelementptr i8, ptr %1, i64 32        ; 2 uses
  %i.iw = load i64, ptr %i.iv, align 8
  %i.ix = and i32 %.0, 3
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = shl nuw nsw i64 %i.iy, 41
  %i.ja = and i64 %i.iw, -6597069766657
  %i.jb = or disjoint i64 %i.ja, %i.iz
  store i64 %i.jb, ptr %i.iv, align 8
  %i.jc = getelementptr i8, ptr %1, i64 24
  store i64 %i.ih, ptr %i.jc, align 8, !tbaa !71
  br label %bb.aq

bb.aq:                                            ; preds = %rb_long2num_inline.exit33, %v2w.exit, %bb.k, %bb.ap
  %.1 = phi ptr [ %1, %bb.ap ], [ null, %bb.k ], [ %1, %rb_long2num_inline.exit33 ], [ null, %v2w.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  ret ptr %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 16) i32 @month_arg(i64 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = trunc i64 %0 to i1
  br i1 %i.a, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %bb.c

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %bb.a
  %i.b = tail call i64 @rb_fix2int(i64 noundef %0) #18
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %.not.i = icmp ult i32 %i.c, 16
  br i1 %.not.i, label %obj2ubits.exit, label %bb.b

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.d = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.d, ptr noundef nonnull @.str.104) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_check_string_type(i64 noundef %0) #18 ; 5 uses
  %i.f = icmp eq i64 %i.e, 4
  br i1 %i.f, label %.loopexit.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = inttoptr i64 %i.e to ptr                 ; 3 uses
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load i64, ptr %i.h, align 8, !tbaa !56   ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.preheader, label %.loopexit.split

.preheader:                                       ; preds = %bb.d
  %i.k = icmp eq i64 %i.i, 3
  %i.l = getelementptr i8, ptr %i.g, i64 24       ; 13 uses
  br i1 %i.k, label %.preheader.split, label %.loopexit.split

.preheader.split:                                 ; preds = %.preheader
  %i.m = load i64, ptr %i.g, align 8, !tbaa !30
  %i.n = and i64 %i.m, 8192
  %.not.i19 = icmp eq i64 %i.n, 0
  br i1 %.not.i19, label %RSTRING_PTR.exit.us.preheader, label %.preheader.split.split

RSTRING_PTR.exit.us.preheader:                    ; preds = %.preheader.split
  %i.o = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull @months, ptr noundef %i.l, i64 noundef 3) #21
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %obj2ubits.exit, label %RSTRING_PTR.exit.us.1.a

RSTRING_PTR.exit.us.1.a:                          ; preds = %RSTRING_PTR.exit.us.preheader
  %i.q = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 4), ptr noundef %i.l, i64 noundef 3) #21
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %obj2ubits.exit, label %RSTRING_PTR.exit.us.2.a

RSTRING_PTR.exit.us.2.a:                          ; preds = %RSTRING_PTR.exit.us.1.a
  %i.s = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 8), ptr noundef %i.l, i64 noundef 3) #21
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %obj2ubits.exit, label %RSTRING_PTR.exit.us.3.a

RSTRING_PTR.exit.us.3.a:                          ; preds = %RSTRING_PTR.exit.us.2.a
  %i.u = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 12), ptr noundef %i.l, i64 noundef 3) #21
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %obj2ubits.exit, label %RSTRING_PTR.exit.us.4.a

RSTRING_PTR.exit.us.4.a:                          ; preds = %RSTRING_PTR.exit.us.3.a
  %i.w = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 16), ptr noundef %i.l, i64 noundef 3) #21
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %obj2ubits.exit, label %RSTRING_PTR.exit.us.5.a

RSTRING_PTR.exit.us.5.a:                          ; preds = %RSTRING_PTR.exit.us.4.a
  %i.y = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 20), ptr noundef %i.l, i64 noundef 3) #21
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %obj2ubits.exit, label %RSTRING_PTR.exit.us.6.a

RSTRING_PTR.exit.us.6.a:                          ; preds = %RSTRING_PTR.exit.us.5.a
  %i.aa = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 24), ptr noundef %i.l, i64 noundef 3) #21
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %obj2ubits.exit, label %RSTRING_PTR.exit.us.7.a

RSTRING_PTR.exit.us.7.a:                          ; preds = %RSTRING_PTR.exit.us.6.a
  %i.ac = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 28), ptr noundef %i.l, i64 noundef 3) #21
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %obj2ubits.exit, label %RSTRING_PTR.exit.us.8.a

RSTRING_PTR.exit.us.8.a:                          ; preds = %RSTRING_PTR.exit.us.7.a
  %i.ae = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 32), ptr noundef %i.l, i64 noundef 3) #21
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %obj2ubits.exit, label %RSTRING_PTR.exit.us.9.a

RSTRING_PTR.exit.us.9.a:                          ; preds = %RSTRING_PTR.exit.us.8.a
  %i.ag = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 36), ptr noundef %i.l, i64 noundef 3) #21
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %obj2ubits.exit, label %RSTRING_PTR.exit.us.10.a

RSTRING_PTR.exit.us.10.a:                         ; preds = %RSTRING_PTR.exit.us.9.a
  %i.ai = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 40), ptr noundef %i.l, i64 noundef 3) #21
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %obj2ubits.exit, label %RSTRING_PTR.exit.us.11.a

RSTRING_PTR.exit.us.11.a:                         ; preds = %RSTRING_PTR.exit.us.10.a
  %i.ak = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 44), ptr noundef %i.l, i64 noundef 3) #21
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %obj2ubits.exit, label %.loopexit.split

.preheader.split.split:                           ; preds = %.preheader.split
  %i.am = load ptr, ptr %i.l, align 8, !tbaa !53  ; 12 uses
  %i.an = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull @months, ptr noundef %i.am, i64 noundef 3) #21
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %obj2ubits.exit, label %RSTRING_PTR.exit.1

RSTRING_PTR.exit.1:                               ; preds = %.preheader.split.split
  %i.ap = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 4), ptr noundef %i.am, i64 noundef 3) #21
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %obj2ubits.exit, label %RSTRING_PTR.exit.2

RSTRING_PTR.exit.2:                               ; preds = %RSTRING_PTR.exit.1
  %i.ar = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 8), ptr noundef %i.am, i64 noundef 3) #21
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %obj2ubits.exit, label %RSTRING_PTR.exit.3

RSTRING_PTR.exit.3:                               ; preds = %RSTRING_PTR.exit.2
  %i.at = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 12), ptr noundef %i.am, i64 noundef 3) #21
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %obj2ubits.exit, label %RSTRING_PTR.exit.4

RSTRING_PTR.exit.4:                               ; preds = %RSTRING_PTR.exit.3
  %i.av = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 16), ptr noundef %i.am, i64 noundef 3) #21
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %obj2ubits.exit, label %RSTRING_PTR.exit.5

RSTRING_PTR.exit.5:                               ; preds = %RSTRING_PTR.exit.4
  %i.ax = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 20), ptr noundef %i.am, i64 noundef 3) #21
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %obj2ubits.exit, label %RSTRING_PTR.exit.6

RSTRING_PTR.exit.6:                               ; preds = %RSTRING_PTR.exit.5
  %i.az = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 24), ptr noundef %i.am, i64 noundef 3) #21
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %obj2ubits.exit, label %RSTRING_PTR.exit.7

RSTRING_PTR.exit.7:                               ; preds = %RSTRING_PTR.exit.6
  %i.bb = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 28), ptr noundef %i.am, i64 noundef 3) #21
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %obj2ubits.exit, label %RSTRING_PTR.exit.8

RSTRING_PTR.exit.8:                               ; preds = %RSTRING_PTR.exit.7
  %i.bd = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 32), ptr noundef %i.am, i64 noundef 3) #21
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %obj2ubits.exit, label %RSTRING_PTR.exit.9

RSTRING_PTR.exit.9:                               ; preds = %RSTRING_PTR.exit.8
  %i.bf = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 36), ptr noundef %i.am, i64 noundef 3) #21
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %obj2ubits.exit, label %RSTRING_PTR.exit.10

RSTRING_PTR.exit.10:                              ; preds = %RSTRING_PTR.exit.9
  %i.bh = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 40), ptr noundef %i.am, i64 noundef 3) #21
  %i.bi = icmp eq i32 %i.bh, 0
  br i1 %i.bi, label %obj2ubits.exit, label %RSTRING_PTR.exit.11

RSTRING_PTR.exit.11:                              ; preds = %RSTRING_PTR.exit.10
  %i.bj = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @months, i64 44), ptr noundef %i.am, i64 noundef 3) #21
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %obj2ubits.exit, label %.loopexit.split

.loopexit.split:                                  ; preds = %RSTRING_PTR.exit.11, %RSTRING_PTR.exit.us.11.a, %.preheader, %bb.c, %bb.d
  %.018.ph = phi i64 [ %0, %bb.d ], [ %0, %bb.c ], [ %i.e, %RSTRING_PTR.exit.us.11.a ], [ %i.e, %.preheader ], [ %i.e, %RSTRING_PTR.exit.11 ] ; 6 uses
  %i.bl = icmp eq i64 %.018.ph, 0
  %i.bm = and i64 %.018.ph, 7
  %i.bn = icmp ne i64 %i.bm, 0
  %i.bo = or i1 %i.bl, %i.bn
  br i1 %i.bo, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i21, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i20

rbimpl_RB_TYPE_P_fastpath.exit.i.i20:             ; preds = %.loopexit.split
  %i.bp = inttoptr i64 %.018.ph to ptr
  %i.bq = load i64, ptr %i.bp, align 8, !tbaa !30
  %i.br = and i64 %i.bq, 31
  %i.bs = icmp eq i64 %i.br, 5
  br i1 %i.bs, label %bb.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i21

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i20
  %i.bt = tail call i64 @rb_str_to_inum(i64 noundef %.018.ph, i32 noundef 10, i32 noundef 1) #18
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i21

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i21:      ; preds = %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit.i.i20, %.loopexit.split
  %.0.i.i22 = phi i64 [ %i.bt, %bb.e ], [ %.018.ph, %rbimpl_RB_TYPE_P_fastpath.exit.i.i20 ], [ %.018.ph, %.loopexit.split ] ; 3 uses
  %i.bu = trunc i64 %.0.i.i22 to i1
  br i1 %i.bu, label %bb.f, label %bb.g

bb.f:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i21
  %i.bv = tail call i64 @rb_fix2int(i64 noundef %.0.i.i22) #18
  br label %obj2int.exit.i23

bb.g:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i21
  %i.bw = tail call i64 @rb_num2int(i64 noundef %.0.i.i22) #18
  br label %obj2int.exit.i23

obj2int.exit.i23:                                 ; preds = %bb.g, %bb.f
  %.0.i3.i.i24 = phi i64 [ %i.bv, %bb.f ], [ %i.bw, %bb.g ]
  %i.bx = trunc i64 %.0.i3.i.i24 to i32           ; 2 uses
  %.not.i25 = icmp ult i32 %i.bx, 16
  br i1 %.not.i25, label %obj2ubits.exit, label %bb.h

bb.h:                                             ; preds = %obj2int.exit.i23
  %i.by = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.by, ptr noundef nonnull @.str.104) #19
  unreachable

obj2ubits.exit:                                   ; preds = %RSTRING_PTR.exit.us.11.a, %RSTRING_PTR.exit.us.10.a, %RSTRING_PTR.exit.us.9.a, %RSTRING_PTR.exit.us.8.a, %RSTRING_PTR.exit.us.7.a, %RSTRING_PTR.exit.us.6.a, %RSTRING_PTR.exit.us.5.a, %RSTRING_PTR.exit.us.4.a, %RSTRING_PTR.exit.us.3.a, %RSTRING_PTR.exit.us.2.a, %RSTRING_PTR.exit.us.1.a, %RSTRING_PTR.exit.us.preheader, %RSTRING_PTR.exit.11, %RSTRING_PTR.exit.10, %RSTRING_PTR.exit.9, %RSTRING_PTR.exit.8, %RSTRING_PTR.exit.7, %RSTRING_PTR.exit.6, %RSTRING_PTR.exit.5, %RSTRING_PTR.exit.4, %RSTRING_PTR.exit.3, %RSTRING_PTR.exit.2, %RSTRING_PTR.exit.1, %.preheader.split.split, %obj2int.exit.i23, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %.0 = phi i32 [ %i.bx, %obj2int.exit.i23 ], [ %i.c, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ], [ 12, %RSTRING_PTR.exit.us.11.a ], [ 1, %RSTRING_PTR.exit.us.preheader ], [ 2, %RSTRING_PTR.exit.us.1.a ], [ 3, %RSTRING_PTR.exit.us.2.a ], [ 4, %RSTRING_PTR.exit.us.3.a ], [ 5, %RSTRING_PTR.exit.us.4.a ], [ 6, %RSTRING_PTR.exit.us.5.a ], [ 7, %RSTRING_PTR.exit.us.6.a ], [ 8, %RSTRING_PTR.exit.us.7.a ], [ 9, %RSTRING_PTR.exit.us.8.a ], [ 10, %RSTRING_PTR.exit.us.9.a ], [ 11, %RSTRING_PTR.exit.us.10.a ], [ 1, %.preheader.split.split ], [ 2, %RSTRING_PTR.exit.1 ], [ 3, %RSTRING_PTR.exit.2 ], [ 4, %RSTRING_PTR.exit.3 ], [ 5, %RSTRING_PTR.exit.4 ], [ 6, %RSTRING_PTR.exit.5 ], [ 7, %RSTRING_PTR.exit.6 ], [ 8, %RSTRING_PTR.exit.7 ], [ 9, %RSTRING_PTR.exit.8 ], [ 10, %RSTRING_PTR.exit.9 ], [ 11, %RSTRING_PTR.exit.10 ], [ 12, %RSTRING_PTR.exit.11 ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 64) i32 @obj2subsecx(i64 noundef %0, ptr nofree noundef nonnull writeonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
  %i.c = icmp ne i64 %i.b, 0
  %i.d = or i1 %i.a, %i.c
  br i1 %i.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30
  %i.g = and i64 %i.f, 31
  %i.h = icmp eq i64 %i.g, 5
  br i1 %i.h, label %bb.b, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

bb.b:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  %i.i = tail call i64 @rb_str_to_inum(i64 noundef %0, i32 noundef 10, i32 noundef 1) #18
  br label %bb.g

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.a, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.j = tail call fastcc i64 @num_exact(i64 noundef %0) ; 3 uses
  %i.k = trunc i64 %i.j to i1
  br i1 %i.k, label %v2w.exit, label %bb.c

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.l = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %i.j, i64 noundef 3601, i32 noundef 1, i64 noundef 3) #18 ; 2 uses
  %i.m = tail call i64 @rb_check_array_type(i64 noundef %i.l) #18 ; 3 uses
  %i.n = icmp eq i64 %i.m, 4
  br i1 %i.n, label %bb.d, label %divmodv.exit

bb.d:                                             ; preds = %bb.c
  %i.o = load i64, ptr @rb_eTypeError, align 8, !tbaa !13
  %i.p = tail call i64 @rb_obj_class(i64 noundef %i.l) #18
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.o, ptr noundef nonnull @.str.93, i64 noundef %i.p) #19
  unreachable

divmodv.exit:                                     ; preds = %bb.c
  %i.q = tail call i64 @rb_ary_entry(i64 noundef %i.m, i64 noundef 0) #21 ; 4 uses
  %i.r = tail call i64 @rb_ary_entry(i64 noundef %i.m, i64 noundef 1) #21 ; 6 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = and i64 %i.r, 7
  %i.u = icmp ne i64 %i.t, 0
  %i.v = or i1 %i.s, %i.u
  br i1 %i.v, label %v2w.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %divmodv.exit
  %i.w = inttoptr i64 %i.r to ptr                 ; 3 uses
  %i.x = load i64, ptr %i.w, align 8, !tbaa !30
  %i.y = and i64 %i.x, 31
  %i.z = icmp eq i64 %i.y, 15
  br i1 %i.z, label %bb.e, label %v2w.exit

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.aa = getelementptr i8, ptr %i.w, i64 24
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !39
  %.not.i = icmp eq i64 %i.ab, 3
  br i1 %.not.i, label %bb.f, label %v2w.exit

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %i.w, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !41
  br label %v2w.exit

v2w.exit:                                         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %divmodv.exit, %rbimpl_RB_TYPE_P_fastpath.exit.i, %bb.e, %bb.f
  %.17 = phi i64 [ %i.q, %bb.e ], [ %i.q, %bb.f ], [ %i.q, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.q, %divmodv.exit ], [ %i.j, %rbimpl_RB_TYPE_P_fastpath.exit.thread ]
  %.06.i = phi i64 [ %i.r, %bb.e ], [ %i.ad, %bb.f ], [ %i.r, %rbimpl_RB_TYPE_P_fastpath.exit.i ], [ %i.r, %divmodv.exit ], [ 1, %rbimpl_RB_TYPE_P_fastpath.exit.thread ]
  %i.ae = tail call fastcc i64 @wmul(i64 noundef %.06.i, i64 noundef 2000000001)
  br label %bb.g

bb.g:                                             ; preds = %v2w.exit, %bb.b
  %.0 = phi i64 [ %i.i, %bb.b ], [ %.17, %v2w.exit ] ; 6 uses
  %storemerge = phi i64 [ 1, %bb.b ], [ %i.ae, %v2w.exit ]
  store i64 %storemerge, ptr %1, align 8, !tbaa !13
  %i.af = icmp eq i64 %.0, 0
  %i.ag = and i64 %.0, 7
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = or i1 %i.af, %i.ah
  br i1 %i.ai, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %bb.g
  %i.aj = inttoptr i64 %.0 to ptr
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !30
  %i.al = and i64 %i.ak, 31
  %i.am = icmp eq i64 %i.al, 5
  br i1 %i.am, label %bb.h, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

bb.h:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %i.an = tail call i64 @rb_str_to_inum(i64 noundef %.0, i32 noundef 10, i32 noundef 1) #18
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %bb.h, %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %bb.g
  %.0.i.i = phi i64 [ %i.an, %bb.h ], [ %.0, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ], [ %.0, %bb.g ] ; 3 uses
  %i.ao = trunc i64 %.0.i.i to i1
  br i1 %i.ao, label %bb.i, label %bb.j

bb.i:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.ap = tail call i64 @rb_fix2int(i64 noundef %.0.i.i) #18
  br label %obj2int.exit.i

bb.j:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %i.aq = tail call i64 @rb_num2int(i64 noundef %.0.i.i) #18
  br label %obj2int.exit.i

obj2int.exit.i:                                   ; preds = %bb.j, %bb.i
  %.0.i3.i.i = phi i64 [ %i.ap, %bb.i ], [ %i.aq, %bb.j ]
  %i.ar = trunc i64 %.0.i3.i.i to i32             ; 2 uses
  %.not.i2 = icmp ult i32 %i.ar, 64
  br i1 %.not.i2, label %obj2ubits.exit, label %bb.k

bb.k:                                             ; preds = %obj2int.exit.i
  %i.as = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.as, ptr noundef nonnull @.str.104) #19
  unreachable

obj2ubits.exit:                                   ; preds = %obj2int.exit.i
  ret i32 %i.ar
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @validate_vtm(ptr nofree noundef readonly captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32
  %i.b = load i64, ptr %i.a, align 8              ; 3 uses
  %i.c = trunc i64 %i.b to i32                    ; 3 uses
  %i.d = lshr i32 %i.c, 9
  %i.e = and i32 %i.d, 15
  %i.f = add nsw i32 %i.e, -13
  %or.cond = icmp ult i32 %i.f, -12
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.g, ptr noundef nonnull @.str.105) #19
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = and i64 %i.b, 253952
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.j, ptr noundef nonnull @.str.106) #19
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = lshr i32 %i.c, 18
  %i.l = and i32 %i.k, 31                         ; 2 uses
  %i.m = icmp samesign ugt i32 %i.l, 24
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr @rb_eArgError, align 8, !tbaa !13
end_hunk_0
