inline.NumInlined: 958
inline.NumDeleted: 130
begin_hunk_0_@zone_timelocal:bb.a
  br label %v2w.exit

v2w.exit:                                         ; preds = %bb.u, %rbimpl_RB_TYPE_P_fastpath.exit.i16, %bb.v, %bb.w
  %.06.i = phi i64 [ %i.dr, %bb.v ], [ %i.ed, %bb.w ], [ %i.dr, %rbimpl_RB_TYPE_P_fastpath.exit.i16 ], [ %i.dr, %bb.u ]
  %i.ee = call fastcc i64 @wadd(i64 noundef %i.dp, i64 noundef %.06.i)
  br label %bb.x

bb.x:                                             ; preds = %v2w.exit, %zone_set_offset.exit
  %.023 = phi i64 [ %i.dp, %zone_set_offset.exit ], [ %i.ee, %v2w.exit ] ; 5 uses
  store i64 %.023, ptr %i.o, align 8, !tbaa !22
  %i.ef = trunc i64 %.023 to i1
  br i1 %i.ef, label %time_set_timew.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.eg = icmp eq i64 %.023, 0
  %i.eh = and i64 %.023, 6
  %i.ei = icmp ne i64 %i.eh, 0
  %i.ej = or i1 %i.eg, %i.ei
  br i1 %i.ej, label %time_set_timew.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @rb_gc_writebarrier(i64 noundef %i.cz, i64 noundef %.023) #18
  br label %time_set_timew.exit

time_set_timew.exit:                              ; preds = %bb.x, %bb.y, %bb.z
  %i.ek = load i64, ptr %i.g, align 8, !tbaa !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %i.ek, ptr %i.a, align 8, !tbaa !13
  %.pr.i.i = load i64, ptr @zone_set_dst.rbimpl_id, align 8, !tbaa !13 ; 2 uses
  %.not4.i.i = icmp eq i64 %.pr.i.i, 0
  br i1 %.not4.i.i, label %.lr.ph.i.i, label %zone_set_dst.exit

.lr.ph.i.i:                                       ; preds = %time_set_timew.exit, %.lr.ph.i.i
  %i.el = call i64 @rb_intern2(ptr noundef nonnull @.str.63, i64 noundef 4) #18 ; 3 uses
  store i64 %i.el, ptr @zone_set_dst.rbimpl_id, align 8, !tbaa !13
  %.not.i.i20 = icmp eq i64 %i.el, 0
  br i1 %.not.i.i20, label %.lr.ph.i.i, label %zone_set_dst.exit, !llvm.loop !51

zone_set_dst.exit:                                ; preds = %.lr.ph.i.i, %time_set_timew.exit
  %.lcssa.i.i = phi i64 [ %.pr.i.i, %time_set_timew.exit ], [ %i.el, %.lr.ph.i.i ]
  %i.em = call i64 @rb_check_funcall(i64 noundef %0, i64 noundef %.lcssa.i.i, i32 noundef 1, ptr noundef nonnull %i.a) #18 ; 2 uses
  %i.en = icmp eq i64 %i.em, 36
  %i.eo = and i64 %i.em, -5
  %.not.i19 = icmp eq i64 %i.eo, 0
  %i.ep = or i1 %i.en, %.not.i19
  %i.eq = select i1 %i.ep, i64 0, i64 2199023255552
  %i.er = load i64, ptr %i.dm, align 8
  %i.es = and i64 %i.er, -6597069766657
  %i.et = or disjoint i64 %i.eq, %i.es
  store i64 %i.et, ptr %i.dm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #18
  store ptr %i.f, ptr %i.h, align 8, !tbaa !48
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.h) #18, !srcloc !52
  %i.eu = load ptr, ptr %i.h, align 8, !tbaa !48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #18
  %i.ev = load volatile i64, ptr %i.eu, align 8, !tbaa !13 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %v2w.exit.i, %zone_set_dst.exit
  %.0 = phi i32 [ 1, %zone_set_dst.exit ], [ 0, %v2w.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #18
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i64 @utc_offset_arg(i64 noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @rb_check_string_type(i64 noundef %0) #18 ; 3 uses
  %i.b = icmp eq i64 %i.a, 4
  br i1 %i.b, label %bb.ae, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !30
  %i.e = and i64 %i.d, 8192
  %.not.i = icmp eq i64 %i.e, 0
  %i.f = getelementptr i8, ptr %i.c, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !53
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.b, %bb.c
  %i.h = phi ptr [ %i.g, %bb.c ], [ %i.f, %bb.b ] ; 10 uses
  %i.i = tail call ptr @rb_enc_get(i64 noundef %i.a) #18 ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 20
  %.val.i.i = load i32, ptr %i.j, align 4, !tbaa !54
  %.not.i.i = icmp eq i32 %.val.i.i, 1
  br i1 %.not.i.i, label %rb_enc_str_asciicompat_p.exit, label %rb_enc_str_asciicompat_p.exit.thread

rb_enc_str_asciicompat_p.exit:                    ; preds = %RSTRING_PTR.exit
  %i.k = tail call i32 @rb_enc_dummy_p(ptr noundef nonnull readonly %i.i) #21
  %.not3.i.i = icmp eq i32 %i.k, 0
  br i1 %.not3.i.i, label %bb.d, label %rb_enc_str_asciicompat_p.exit.thread

bb.d:                                             ; preds = %rb_enc_str_asciicompat_p.exit
  %i.l = getelementptr i8, ptr %i.c, i64 16
  %i.m = load i64, ptr %i.l, align 8, !tbaa !56
  switch i64 %i.m, label %rb_enc_str_asciicompat_p.exit.thread [
    i64 1, label %bb.e
    i64 3, label %bb.m
    i64 7, label %bb.n
    i64 5, label %bb.r
    i64 9, label %bb.o
    i64 6, label %bb.q
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = load i8, ptr %i.h, align 1, !tbaa !53    ; 6 uses
  %i.o = icmp eq i8 %i.n, 90
  br i1 %i.o, label %rb_enc_str_asciicompat_p.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = add i8 %i.n, -65                         ; 2 uses
  %or.cond = icmp ult i8 %i.p, 9
  br i1 %or.cond, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.q = zext nneg i8 %i.n to i64
  %i.r = add nsw i64 %i.q, -64
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.s = add i8 %i.n, -75
  %or.cond78 = icmp ult i8 %i.s, 3
  br i1 %or.cond78, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.t = zext nneg i8 %i.p to i64
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  %i.u = add i8 %i.n, -78
  %or.cond79 = icmp ult i8 %i.u, 12
  br i1 %or.cond79, label %bb.k, label %rb_enc_str_asciicompat_p.exit.thread

bb.k:                                             ; preds = %bb.j
  %narrow = sub nsw i8 77, %i.n
  %i.v = sext i8 %narrow to i64
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.k, %bb.g
  %.055 = phi i64 [ %i.r, %bb.g ], [ %i.t, %bb.i ], [ %i.v, %bb.k ]
  %i.w = mul nsw i64 %.055, 7200
  %i.x = or disjoint i64 %i.w, 1
  br label %rb_enc_str_asciicompat_p.exit.thread

bb.m:                                             ; preds = %bb.d
  %i.y = tail call i32 @rb_st_locale_insensitive_strncasecmp(ptr noundef nonnull @.str.33, ptr noundef %i.h, i64 noundef 3) #21
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %rb_enc_str_asciicompat_p.exit.thread, label %.thread87

bb.n:                                             ; preds = %bb.d
  %i.aa = getelementptr i8, ptr %i.h, i64 5
  br label %bb.r

bb.o:                                             ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %i.h, i64 6
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !53
  %.not = icmp eq i8 %i.ac, 58
  br i1 %.not, label %bb.p, label %rb_enc_str_asciicompat_p.exit.thread

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr i8, ptr %i.h, i64 7
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.d
  %.1 = phi ptr [ %i.ad, %bb.p ], [ null, %bb.d ]
  %i.ae = getelementptr i8, ptr %i.h, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !53
  %.not65 = icmp eq i8 %i.af, 58
  br i1 %.not65, label %bb.r, label %rb_enc_str_asciicompat_p.exit.thread

bb.r:                                             ; preds = %bb.q, %bb.d, %bb.n
  %.sink = phi i64 [ 3, %bb.d ], [ 3, %bb.n ], [ 4, %bb.q ]
  %.2 = phi ptr [ null, %bb.d ], [ %i.aa, %bb.n ], [ %.1, %bb.q ] ; 3 uses
  %i.ag = getelementptr i8, ptr %i.h, i64 %.sink  ; 4 uses
  %.not66 = icmp eq ptr %.2, null
  br i1 %.not66, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ah = load i8, ptr %.2, align 1, !tbaa !53    ; 2 uses
  %i.ai = sext i8 %i.ah to i32                    ; 2 uses
  %i.aj = add nsw i32 %i.ai, -58
  %i.ak = icmp ult i32 %i.aj, -10
  br i1 %i.ak, label %rb_enc_str_asciicompat_p.exit.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = getelementptr i8, ptr %.2, i64 1
  %i.am = load i8, ptr %i.al, align 1, !tbaa !53
  %i.an = sext i8 %i.am to i32                    ; 2 uses
  %i.ao = add nsw i32 %i.an, -58
  %i.ap = icmp ult i32 %i.ao, -10
  %i.aq = icmp sgt i8 %i.ah, 53
  %or.cond80 = or i1 %i.aq, %i.ap
  br i1 %or.cond80, label %rb_enc_str_asciicompat_p.exit.thread, label %.thread91

.thread91:                                        ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %1 = mul nuw nsw i32 %i.ai, 10
  %op.rdx = add nuw nsw i32 %i.an, -32208
  %op.rdx103 = add nuw nsw i32 %op.rdx, %1
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  %.not69 = icmp eq ptr %i.ag, null
  br i1 %.not69, label %.thread87, label %bb.v

bb.v:                                             ; preds = %.thread91, %bb.u
  %.15696 = phi i32 [ %op.rdx103, %.thread91 ], [ -31680, %bb.u ]
  %i.ar = load i8, ptr %i.ag, align 1, !tbaa !53  ; 2 uses
  %i.as = sext i8 %i.ar to i32                    ; 2 uses
  %i.at = add nsw i32 %i.as, -58
  %i.au = icmp ult i32 %i.at, -10
  br i1 %i.au, label %rb_enc_str_asciicompat_p.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.av = getelementptr i8, ptr %i.ag, i64 1
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !53
  %i.ax = sext i8 %i.aw to i32                    ; 2 uses
  %i.ay = add nsw i32 %i.ax, -58
  %i.az = icmp ult i32 %i.ay, -10
  %i.ba = icmp sgt i8 %i.ar, 53
  %or.cond81 = or i1 %i.ba, %i.az
  br i1 %or.cond81, label %rb_enc_str_asciicompat_p.exit.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bb = mul nuw nsw i32 %i.as, 10
  %i.bc = add nuw nsw i32 %i.bb, %i.ax
  %i.bd = mul nuw nsw i32 %i.bc, 60
  %i.be = add nsw i32 %.15696, %i.bd
  %i.bf = add nuw nsw i32 %i.be, -1900800
  br label %.thread87

.thread87:                                        ; preds = %bb.m, %bb.x, %bb.u
  %.257 = phi i32 [ %i.bf, %bb.x ], [ -1900800, %bb.u ], [ -1900800, %bb.m ]
  %i.bg = load i8, ptr %i.h, align 1, !tbaa !53   ; 2 uses
  switch i8 %i.bg, label %rb_enc_str_asciicompat_p.exit.thread [
    i8 43, label %bb.y
    i8 45, label %bb.y
  ]

bb.y:                                             ; preds = %.thread87, %.thread87
  %i.bh = getelementptr i8, ptr %i.h, i64 1
  %i.bi = load i8, ptr %i.bh, align 1, !tbaa !53
  %i.bj = sext i8 %i.bi to i32                    ; 2 uses
  %i.bk = add nsw i32 %i.bj, -58
  %i.bl = icmp ult i32 %i.bk, -10
  br i1 %i.bl, label %rb_enc_str_asciicompat_p.exit.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bm = getelementptr i8, ptr %i.h, i64 2
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !53
  %i.bo = sext i8 %i.bn to i32                    ; 2 uses
  %i.bp = add nsw i32 %i.bo, -58
  %i.bq = icmp ult i32 %i.bp, -10
  br i1 %i.bq, label %rb_enc_str_asciicompat_p.exit.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.br = mul nuw nsw i32 %i.bj, 10
  %i.bs = add nuw nsw i32 %i.br, %i.bo
  %i.bt = mul nuw nsw i32 %i.bs, 3600
  %i.bu = add nsw i32 %.257, %i.bt                ; 3 uses
  %i.bv = icmp eq i8 %i.bg, 45
  br i1 %i.bv, label %bb.ab, label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  %i.bw = icmp eq i32 %i.bu, 0
  br i1 %i.bw, label %rb_enc_str_asciicompat_p.exit.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bx = sub nsw i32 0, %i.bu
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.aa
  %.3 = phi i32 [ %i.bx, %bb.ac ], [ %i.bu, %bb.aa ]
  %i.by = sext i32 %.3 to i64
  %i.bz = shl nsw i64 %i.by, 1
  %i.ca = or disjoint i64 %i.bz, 1
  br label %rb_enc_str_asciicompat_p.exit.thread

bb.ae:                                            ; preds = %bb.a
  %i.cb = tail call fastcc i64 @num_exact(i64 noundef %0)
  br label %rb_enc_str_asciicompat_p.exit.thread

rb_enc_str_asciicompat_p.exit.thread:             ; preds = %RSTRING_PTR.exit, %bb.ab, %bb.m, %bb.e, %bb.ad, %bb.l, %bb.q, %rb_enc_str_asciicompat_p.exit, %bb.j, %bb.s, %bb.v, %bb.z, %bb.y, %.thread87, %bb.d, %bb.o, %bb.t, %bb.w, %bb.ae
  %.154 = phi i64 [ %i.cb, %bb.ae ], [ 36, %bb.m ], [ 36, %bb.ab ], [ %i.ca, %bb.ad ], [ %i.x, %bb.l ], [ 36, %bb.e ], [ 4, %bb.q ], [ 4, %rb_enc_str_asciicompat_p.exit ], [ 4, %bb.j ], [ 4, %bb.s ], [ 4, %bb.v ], [ 4, %bb.z ], [ 4, %bb.y ], [ 4, %.thread87 ], [ 4, %bb.d ], [ 4, %bb.o ], [ 4, %bb.t ], [ 4, %bb.w ], [ 4, %RSTRING_PTR.exit ]
  ret i64 %.154
}

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @invalid_utc_offset(i64 noundef %0) unnamed_addr #5 {
bb.a:
  %i.a = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.a, ptr noundef nonnull @.str.95, i64 noundef %0) #19
  unreachable
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i64 @validate_utc_offset(i64 noundef returned %0) #1 {
bb.a:
  %i.a = and i64 %0, 1
  %or.cond.not.i = icmp eq i64 %i.a, 0
  br i1 %or.cond.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i64 %0, -172799
  br i1 %i.b, label %cmp.exit.thread, label %cmp.exit.thread10

bb.c:                                             ; preds = %bb.a
  %i.c = icmp eq i64 %0, 0
  %i.d = and i64 %0, 6
  %i.e = icmp ne i64 %i.d, 0
  %i.f = or i1 %i.c, %i.e                         ; 2 uses
  br i1 %i.f, label %cmp.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i

rbimpl_RB_TYPE_P_fastpath.exit.i:                 ; preds = %bb.c
  %i.g = inttoptr i64 %0 to ptr
  %i.h = load i64, ptr %i.g, align 8, !tbaa !30
  %i.i = and i64 %i.h, 31
  %i.j = icmp eq i64 %i.i, 10
  br i1 %i.j, label %cmp.exit.thread15, label %cmp.exit

cmp.exit:                                         ; preds = %bb.c, %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.k = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 135, i32 noundef 1, i64 noundef -172799) #18
  %i.l = tail call i32 @rb_cmpint(i64 noundef %i.k, i64 noundef %0, i64 noundef -172799) #18
  %i.m = icmp slt i32 %i.l, 1
  br i1 %i.m, label %cmp.exit.thread, label %bb.d

cmp.exit.thread15:                                ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i
  %i.n = tail call i64 @rb_big_cmp(i64 noundef %0, i64 noundef -172799) #18
  %i.o = tail call i64 @rb_fix2int(i64 noundef %i.n) #18
  %i.p = trunc i64 %i.o to i32
  %i.q = icmp slt i32 %i.p, 1
  br i1 %i.q, label %cmp.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit.i6

cmp.exit.thread10:                                ; preds = %bb.b
  %i.r = icmp ne i64 %0, -172799
  %i.s = icmp slt i64 %0, 172801
  %or.cond = and i1 %i.r, %i.s
  br i1 %or.cond, label %cmp.exit8.thread13, label %cmp.exit.thread

bb.d:                                             ; preds = %cmp.exit
  br i1 %i.f, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i7, label %rbimpl_RB_TYPE_P_fastpath.exit.i6

rbimpl_RB_TYPE_P_fastpath.exit.i6:                ; preds = %cmp.exit.thread15, %bb.d
  %i.t = inttoptr i64 %0 to ptr
  %i.u = load i64, ptr %i.t, align 8, !tbaa !30
  %i.v = and i64 %i.u, 31
  %i.w = icmp eq i64 %i.v, 10
  br i1 %i.w, label %bb.e, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i7

bb.e:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i6
  %i.x = tail call i64 @rb_big_cmp(i64 noundef %0, i64 noundef 172801) #18
  %i.y = tail call i64 @rb_fix2int(i64 noundef %i.x) #18
  %i.z = trunc i64 %i.y to i32
  br label %cmp.exit8

rbimpl_RB_TYPE_P_fastpath.exit.thread.i7:         ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i6, %bb.d
  %i.aa = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %0, i64 noundef 135, i32 noundef 1, i64 noundef 172801) #18
  %i.ab = tail call i32 @rb_cmpint(i64 noundef %i.aa, i64 noundef %0, i64 noundef 172801) #18
  br label %cmp.exit8

cmp.exit8:                                        ; preds = %bb.e, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i7
  %.0.i5 = phi i32 [ %i.ab, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i7 ], [ %i.z, %bb.e ]
  %i.ac = icmp sgt i32 %.0.i5, -1
  br i1 %i.ac, label %cmp.exit.thread, label %cmp.exit8.thread13

cmp.exit.thread:                                  ; preds = %cmp.exit.thread15, %bb.b, %cmp.exit.thread10, %cmp.exit8, %cmp.exit
  %i.ad = load i64, ptr @rb_eArgError, align 8, !tbaa !13
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ad, ptr noundef nonnull @.str.2) #19
  unreachable

cmp.exit8.thread13:                               ; preds = %cmp.exit.thread10, %cmp.exit8
  ret i64 %0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i64 1, 0) i64 @time_set_utc_offset(i64 noundef returned %0, i64 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc i64 @num_exact(i64 noundef %1) ; 4 uses
  %i.b = icmp ne i64 %0, 0
  %i.c = and i64 %0, 7
  %i.d = icmp eq i64 %i.c, 0
  %.not3.i.i.i = and i1 %i.b, %i.d
  br i1 %.not3.i.i.i, label %RB_OBJ_FROZEN.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !42

RB_OBJ_FROZEN.exit.i.i:                           ; preds = %bb.a
  %i.e = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !30   ; 4 uses
  %i.g = and i64 %i.f, 2048
  %.not.i.i = icmp eq i64 %i.g, 0
  br i1 %.not.i.i, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i, label %RB_OBJ_FROZEN.exit.thread.i.i, !prof !43

RB_OBJ_FROZEN.exit.thread.i.i:                    ; preds = %RB_OBJ_FROZEN.exit.i.i, %bb.a
  tail call void @rb_error_frozen_object(i64 noundef %0) #19
  unreachable

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %RB_OBJ_FROZEN.exit.i.i
  %i.h = and i64 %i.f, 31
end_hunk_0
