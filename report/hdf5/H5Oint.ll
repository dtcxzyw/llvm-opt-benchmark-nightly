Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/H5Oint?download=true
inline.NumInlined: 46
inline.NumDeleted: 5
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@H5O_unprotect:bb.a
  %i.ac = zext i32 %i.ab to i64                   ; 2 uses
  %i.ad = icmp ugt i64 %i.z, %i.ac
  br i1 %i.ad, label %bb.e, label %.thread40, !llvm.loop !131

.thread40:                                        ; preds = %bb.h
  store i8 0, ptr %i.h, align 8, !tbaa !77
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  %i.ae = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.af = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !17
  %i.ag = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5O_unprotect, i32 noundef 1263, i64 noundef %i.ae, i64 noundef %i.af, ptr noundef nonnull @.str.54) #11 ; 0 uses
  br label %bb.o

bb.j:                                             ; preds = %.thread40, %bb.d, %bb.c
  %i.ah = and i32 %2, 1
  %.not38 = icmp eq i32 %i.ah, 0
  br i1 %.not38, label %.thread43, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 2 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !40
  %i.ak = icmp ugt i64 %i.aj, 1
  br i1 %i.ak, label %.lr.ph49, label %.thread43

.lr.ph49:                                         ; preds = %.preheader
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 408
  br label %bb.l

bb.k:                                             ; preds = %bb.l
  %i.am = add i32 %.048, 1                        ; 2 uses
  %i.an = zext i32 %i.am to i64                   ; 2 uses
  %i.ao = load i64, ptr %i.ai, align 8, !tbaa !40
  %i.ap = icmp ugt i64 %i.ao, %i.an
  br i1 %i.ap, label %bb.l, label %.thread43, !llvm.loop !132

bb.l:                                             ; preds = %.lr.ph49, %bb.k
  %i.aq = phi i64 [ 1, %.lr.ph49 ], [ %i.an, %bb.k ]
  %.048 = phi i32 [ 1, %.lr.ph49 ], [ %i.am, %bb.k ]
  %i.ar = load ptr, ptr %0, align 8, !tbaa !62
  %i.as = load ptr, ptr %i.al, align 8, !tbaa !41
  %i.at = getelementptr inbounds nuw [40 x i8], ptr %i.as, i64 %i.aq
  %i.au = load i64, ptr %i.at, align 8, !tbaa !45
  %i.av = tail call i32 @H5AC_expunge_entry(ptr noundef %i.ar, ptr noundef nonnull @H5AC_OHDR_CHK, i64 noundef %i.au, i32 noundef 0) #11
  %i.aw = icmp slt i32 %i.av, 0
  br i1 %i.aw, label %bb.m, label %bb.k

bb.m:                                             ; preds = %bb.l
  %i.ax = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.ay = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !17
  %i.az = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5O_unprotect, i32 noundef 1280, i64 noundef %i.ax, i64 noundef %i.ay, ptr noundef nonnull @.str.55) #11 ; 0 uses
  br label %bb.o

.thread43:                                        ; preds = %bb.k, %.preheader, %bb.j
  %i.ba = load ptr, ptr %0, align 8, !tbaa !62
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !41
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !45
  %i.be = tail call i32 @H5AC_unprotect(ptr noundef %i.ba, ptr noundef nonnull @H5AC_OHDR, i64 noundef %i.bd, ptr noundef nonnull %1, i32 noundef %2) #11
  %i.bf = icmp slt i32 %i.be, 0
  br i1 %i.bf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.thread43
  %i.bg = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.bh = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !17
  %i.bi = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5O_unprotect, i32 noundef 1285, i64 noundef %i.bg, i64 noundef %i.bh, ptr noundef nonnull @.str.50) #11 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.i, %bb.b, %.thread43, %bb.n
  %.4 = phi i32 [ 0, %bb.b ], [ -1, %bb.n ], [ 0, %.thread43 ], [ -1, %bb.m ], [ -1, %bb.i ]
  ret i32 %.4
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5O__inc_rc(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.f, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !59   ; 2 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 @H5AC_pin_protected_entry(ptr noundef nonnull %0) #11
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i64, ptr %i.g, align 8, !tbaa !59
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.m = load i64, ptr @H5E_CANTPIN_g, align 8, !tbaa !17
  %i.n = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5O__inc_rc, i32 noundef 2693, i64 noundef %i.l, i64 noundef %i.m, ptr noundef nonnull @.str.37) #11 ; 0 uses
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %i.o = phi i64 [ %.pre, %._crit_edge ], [ %i.h, %bb.b ]
  %i.p = add i64 %i.o, 1
  store i64 %i.p, ptr %i.g, align 8, !tbaa !59
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %.0 = phi i32 [ -1, %bb.d ], [ 0, %bb.e ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5O__dec_rc(ptr noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.g, !prof !14

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = load i64, ptr @H5E_ARGS_g, align 8, !tbaa !17
  %i.h = load i64, ptr @H5E_BADVALUE_g, align 8, !tbaa !17
  %i.i = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5O__dec_rc, i32 noundef 2720, i64 noundef %i.g, i64 noundef %i.h, ptr noundef nonnull @.str.89) #11 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !59
  %i.l = add i64 %i.k, -1                         ; 2 uses
  store i64 %i.l, ptr %i.j, align 8, !tbaa !59
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.n = tail call i32 @H5AC_unpin_entry(ptr noundef nonnull %0) #11
  %i.o = icmp slt i32 %i.n, 0
  br i1 %i.o, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.q = load i64, ptr @H5E_CANTUNPIN_g, align 8, !tbaa !17
  %i.r = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5O__dec_rc, i32 noundef 2728, i64 noundef %i.p, i64 noundef %i.q, ptr noundef nonnull @.str.39) #11 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.d, %bb.a
  %.0 = phi i32 [ -1, %bb.f ], [ 0, %bb.e ], [ 0, %bb.d ], [ -1, %bb.c ], [ 0, %bb.a ]
  ret i32 %.0
}

declare i32 @H5AC_unpin_entry(ptr noundef) local_unnamed_addr #2

declare i32 @H5AC_expunge_entry(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5O_touch_oh(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i64, align 8                      ; 10 uses
  %i.c = alloca i32, align 4                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %i.d = load i8, ptr @H5O_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  %i.i = select i1 %i.e, i1 true, i1 %i.h
  br i1 %i.i, label %bb.b, label %.thread47, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 289
  %i.k = load i8, ptr %i.j, align 1, !tbaa !34
  %i.l = and i8 %i.k, 32
  %.not = icmp eq i8 %i.l, 0
  br i1 %.not, label %.thread47, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = tail call i64 @H5_now() #11              ; 3 uses
  store i64 %i.m, ptr %i.a, align 8, !tbaa !17
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.o = load i8, ptr %i.n, align 8, !tbaa !33
  %i.p = icmp eq i8 %i.o, 1
  br i1 %i.p, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.r = load i64, ptr %i.q, align 8, !tbaa !50   ; 4 uses
  %.not66 = icmp eq i64 %i.r, 0
  br i1 %.not66, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %bb.f
  %storemerge59 = phi i64 [ 0, %.lr.ph ], [ %i.y, %bb.f ] ; 3 uses
  %i.u = getelementptr inbounds nuw [48 x i8], ptr %i.t, i64 %storemerge59
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54   ; 2 uses
  %i.w = icmp eq ptr %i.v, @H5O_MSG_MTIME
  %i.x = icmp eq ptr %i.v, @H5O_MSG_MTIME_NEW
  %or.cond = or i1 %i.w, %i.x
  br i1 %or.cond, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = add nuw i64 %storemerge59, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.y, %i.r
  br i1 %exitcond.not, label %._crit_edge.thread, label %bb.e, !llvm.loop !133

._crit_edge.thread:                               ; preds = %bb.f
  store i64 %i.r, ptr %i.b, align 8, !tbaa !17
  br label %bb.g

._crit_edge:                                      ; preds = %bb.e, %bb.d
  %storemerge.lcssa58 = phi i64 [ 0, %bb.d ], [ %storemerge59, %bb.e ] ; 3 uses
  store i64 %storemerge.lcssa58, ptr %i.b, align 8, !tbaa !17
  %i.z = icmp eq i64 %storemerge.lcssa58, %i.r
  br i1 %i.z, label %bb.g, label %._crit_edge._crit_edge

._crit_edge._crit_edge:                           ; preds = %._crit_edge
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !51
  br label %bb.k

bb.g:                                             ; preds = %._crit_edge.thread, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  store i32 0, ptr %i.c, align 4, !tbaa !19
  br i1 %2, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g
  %i.aa = call i32 @H5O__msg_alloc(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @H5O_MSG_MTIME_NEW, ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b) #11
  %i.ab = icmp slt i32 %i.aa, 0
  br i1 %i.ab, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ac = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.ad = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !17
  %i.ae = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5O_touch_oh, i32 noundef 1340, i64 noundef %i.ac, i64 noundef %i.ad, ptr noundef nonnull @.str.56) #11 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.i, %bb.g
  %.032.ph = phi i32 [ 0, %bb.g ], [ -1, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %.thread53

bb.j:                                             ; preds = %bb.h
  %i.af = load i32, ptr %i.c, align 4, !tbaa !19
  %i.ag = trunc i32 %i.af to i8
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 352
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !51 ; 2 uses
  %i.aj = load i64, ptr %i.b, align 8, !tbaa !17  ; 2 uses
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr %i.ai, i64 %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 9
  store i8 %i.ag, ptr %i.al, align 1, !tbaa !78
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge, %bb.j
  %i.am = phi i64 [ %storemerge.lcssa58, %._crit_edge._crit_edge ], [ %i.aj, %bb.j ]
  %i.an = phi ptr [ %.pre, %._crit_edge._crit_edge ], [ %i.ai, %bb.j ]
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 2 uses
  %i.ap = getelementptr inbounds nuw [48 x i8], ptr %i.an, i64 %i.am
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !58
  %i.as = call ptr @H5O__chunk_protect(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %i.ar) #11 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.au = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.av = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !17
  %i.aw = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5O_touch_oh, i32 noundef 1348, i64 noundef %i.au, i64 noundef %i.av, ptr noundef nonnull @.str.43) #11 ; 0 uses
  br label %.thread53

bb.m:                                             ; preds = %bb.k
  %i.ax = load ptr, ptr %i.ao, align 8, !tbaa !51 ; 2 uses
  %i.ay = load i64, ptr %i.b, align 8, !tbaa !17
  %i.az = getelementptr inbounds nuw [48 x i8], ptr %i.ax, i64 %i.ay
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !56 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bd = call noalias ptr @H5FL_reg_malloc(ptr noundef nonnull @H5_time_t_reg_free_list) #11 ; 3 uses
  %i.be = load ptr, ptr %i.ao, align 8, !tbaa !51 ; 2 uses
  %i.bf = load i64, ptr %i.b, align 8, !tbaa !17
  %i.bg = getelementptr inbounds nuw [48 x i8], ptr %i.be, i64 %i.bf
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  store ptr %i.bd, ptr %i.bh, align 8, !tbaa !56
  %i.bi = icmp eq ptr %i.bd, null
  br i1 %i.bi, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.bj = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.bk = load i64, ptr @H5E_CANTINIT_g, align 8, !tbaa !17
  %i.bl = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5O_touch_oh, i32 noundef 1354, i64 noundef %i.bj, i64 noundef %i.bk, ptr noundef nonnull @.str.57) #11 ; 0 uses
  br label %bb.s

bb.p:                                             ; preds = %bb.n, %bb.m
  %i.bm = phi ptr [ %i.bd, %bb.n ], [ %i.bb, %bb.m ]
  %i.bn = phi ptr [ %i.be, %bb.n ], [ %i.ax, %bb.m ]
  %i.bo = load i64, ptr %i.a, align 8, !tbaa !17
  store i64 %i.bo, ptr %i.bm, align 8, !tbaa !17
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !17
  %i.bq = getelementptr inbounds nuw [48 x i8], ptr %i.bn, i64 %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store i8 1, ptr %i.br, align 8, !tbaa !55
  br label %bb.s

bb.q:                                             ; preds = %bb.c
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 312
  store i64 %i.m, ptr %i.bs, align 8, !tbaa !37
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 296
  store i64 %i.m, ptr %i.bt, align 8, !tbaa !39
  %i.bu = tail call i32 @H5AC_mark_entry_dirty(ptr noundef nonnull %1) #11
  %i.bv = icmp slt i32 %i.bu, 0
  br i1 %i.bv, label %bb.r, label %.thread47

bb.r:                                             ; preds = %bb.q
  %i.bw = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.bx = load i64, ptr @H5E_CANTMARKDIRTY_g, align 8, !tbaa !17
  %i.by = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5O_touch_oh, i32 noundef 1372, i64 noundef %i.bw, i64 noundef %i.bx, ptr noundef nonnull @.str.32) #11 ; 0 uses
  br label %.thread47

.thread53:                                        ; preds = %bb.l, %.thread
  %.2.ph = phi i32 [ %.032.ph, %.thread ], [ -1, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %.thread47

bb.s:                                             ; preds = %bb.p, %bb.o
  %.034 = phi i1 [ true, %bb.p ], [ false, %bb.o ]
  %.2 = phi i32 [ 0, %bb.p ], [ -1, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  %i.bz = call i32 @H5O__chunk_unprotect(ptr noundef %0, ptr noundef nonnull %i.as, i1 noundef zeroext %.034) #11
  %i.ca = icmp slt i32 %i.bz, 0
  br i1 %i.ca, label %bb.t, label %.thread47

bb.t:                                             ; preds = %bb.s
  %i.cb = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.cc = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !17
  %i.cd = call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5O_touch_oh, i32 noundef 1379, i64 noundef %i.cb, i64 noundef %i.cc, ptr noundef nonnull @.str.49) #11 ; 0 uses
  br label %.thread47

.thread47:                                        ; preds = %bb.q, %bb.r, %bb.b, %.thread53, %bb.a, %bb.t, %bb.s
  %.4 = phi i32 [ -1, %bb.t ], [ %.2, %bb.s ], [ %.2.ph, %.thread53 ], [ 0, %bb.a ], [ 0, %bb.q ], [ -1, %bb.r ], [ 0, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %.4
}

declare i32 @H5O__msg_alloc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare noalias ptr @H5FL_reg_malloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5O_touch(ptr nofree noundef readonly captures(none) %0, i1 noundef zeroext %1) local_unnamed_addr #3 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1                  ; 2 uses
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = select i1 %i.b, i1 true, i1 %i.d
  br i1 %i.e, label %bb.b, label %.thread, !prof !14

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5O_init_g, align 1, !tbaa !11
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = xor i1 %i.d, true
  %i.g = select i1 %i.b, i1 true, i1 %i.f
  br i1 %i.g, label %bb.c, label %bb.i, !prof !15

bb.c:                                             ; preds = %.thread, %bb.b
  %i.h = tail call ptr @H5O_protect(ptr noundef %0, i32 noundef 0, i1 noundef zeroext false) ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8, !tbaa !62
  %i.k = tail call i32 @H5O_touch_oh(ptr noundef %i.j, ptr noundef nonnull %i.h, i1 noundef zeroext %1)
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.n = load i64, ptr @H5E_CANTSET_g, align 8, !tbaa !17
  %i.o = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5O_touch, i32 noundef 1414, i64 noundef %i.m, i64 noundef %i.n, ptr noundef nonnull @.str.58) #11 ; 0 uses
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %i.p = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.q = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !17
  %i.r = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5O_touch, i32 noundef 1410, i64 noundef %i.p, i64 noundef %i.q, ptr noundef nonnull @.str.42) #11 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.e, %bb.d
  %.013.ph = phi i32 [ 2, %bb.d ], [ 0, %bb.e ]
  %.0.ph = phi i32 [ 0, %bb.d ], [ -1, %bb.e ]
  %i.s = tail call i32 @H5O_unprotect(ptr noundef nonnull %0, ptr noundef nonnull %i.h, i32 noundef %.013.ph)
  %i.t = icmp slt i32 %i.s, 0
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !17
  %i.v = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !17
  %i.w = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str.4, ptr noundef nonnull @__func__.H5O_touch, i32 noundef 1421, i64 noundef %i.u, i64 noundef %i.v, ptr noundef nonnull @.str.50) #11 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.b
  %.1 = phi i32 [ -1, %bb.h ], [ %.0.ph, %bb.g ], [ -1, %bb.f ], [ 0, %bb.b ]
  ret i32 %.1
}

declare i32 @H5AC_cork(ptr noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5O_obj_type(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 -1, ptr %i.a, align 8, !tbaa !17
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !63
  call void @H5AC_tag(i64 noundef %i.c, ptr noundef nonnull %i.a) #11
  %i.d = load i8, ptr @H5O_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %i.h = select i1 %i.e, i1 true, i1 %i.g
  br i1 %i.h, label %bb.b, label %.thread, !prof !14

.thread:                                          ; preds = %bb.a
  store i8 1, ptr @H5O_init_g, align 1, !tbaa !11
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = xor i1 %i.g, true
  %i.j = select i1 %i.e, i1 true, i1 %i.i
  br i1 %i.j, label %bb.c, label %bb.l, !prof !15

bb.c:                                             ; preds = %.thread, %bb.b
  %i.k = call ptr @H5O_protect(ptr noundef nonnull %0, i32 noundef 128, i1 noundef zeroext false) ; 5 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load i8, ptr @H5O_init_g, align 1, !tbaa !11, !range !12, !noundef !13
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = load i8, ptr @H5_libterm_g, align 1, !range !12
  %i.p = trunc nuw i8 %i.o to i1
  %i.q = xor i1 %i.p, true
  %i.r = select i1 %i.n, i1 true, i1 %i.q
  br i1 %i.r, label %.preheader.preheader.i.i, label %H5O__obj_type_real.exit.thread, !prof !14

.preheader.preheader.i.i:                         ; preds = %bb.d
  %i.s = load ptr, ptr getelementptr inbounds nuw (i8, ptr @H5O_OBJ_GROUP, i64 32), align 16, !tbaa !74
  %i.t = call i32 %i.s(ptr noundef nonnull %i.k) #11, !inline_history !1 ; 2 uses
  %i.u = icmp slt i32 %i.t, 0
end_hunk_0
