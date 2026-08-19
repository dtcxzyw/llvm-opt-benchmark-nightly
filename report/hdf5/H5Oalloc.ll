inline.NumInlined: 14
inline.NumDeleted: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@H5O__alloc:bb.a
  %i.vu = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !29
  %i.vv = load i64, ptr @H5E_CANTINSERT_g, align 8, !tbaa !29
  %i.vw = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__alloc, i32 noundef 1291, i64 noundef %i.vu, i64 noundef %i.vv, ptr noundef nonnull @.str.11) #7 ; 0 uses
  br label %bb.dd

bb.da:                                            ; preds = %.thread68
  %i.vx = tail call i32 @H5AC_mark_entry_dirty(ptr noundef %1) #7
  %i.vy = icmp slt i32 %i.vx, 0
  br i1 %i.vy, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.vz = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !29
  %i.wa = load i64, ptr @H5E_CANTMARKDIRTY_g, align 8, !tbaa !29
  %i.wb = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__alloc, i32 noundef 1295, i64 noundef %i.vz, i64 noundef %i.wa, ptr noundef nonnull @.str.17) #7 ; 0 uses
  br label %bb.dd

bb.dc:                                            ; preds = %bb.da
  store i64 %i.vr, ptr %4, align 8, !tbaa !29
  br label %bb.dd

bb.dd:                                            ; preds = %bb.cy, %.thread60, %bb.a, %bb.dc, %bb.db, %bb.cz, %bb.e, %bb.c
  %.043 = phi i32 [ 0, %bb.dc ], [ -1, %bb.c ], [ -1, %bb.e ], [ 0, %bb.a ], [ -1, %bb.cz ], [ -1, %bb.db ], [ -1, %.thread60 ], [ -1, %bb.cy ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.043
}

declare i32 @H5AC_mark_entry_dirty(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5O__release_mesg(ptr noundef %0, ptr noundef %1, ptr noundef %2, i1 noundef zeroext %3) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  %i.b = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.e = trunc nuw i8 %i.d to i1
  %i.f = xor i1 %i.e, true
  %i.g = select i1 %i.c, i1 true, i1 %i.f
  br i1 %i.g, label %bb.b, label %.thread, !prof !12

bb.b:                                             ; preds = %bb.a
  br i1 %3, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.h = tail call i32 @H5O__delete_mesg(ptr noundef %0, ptr noundef %1, ptr noundef %2) #7
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !29
  %i.k = load i64, ptr @H5E_CANTDELETE_g, align 8, !tbaa !29
  %i.l = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__release_mesg, i32 noundef 1333, i64 noundef %i.j, i64 noundef %i.k, ptr noundef nonnull @.str.18) #7 ; 0 uses
  br label %.thread

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !46
  %i.o = tail call ptr @H5O__chunk_protect(ptr noundef %0, ptr noundef %1, i32 noundef %i.n) #7 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !29
  %i.r = load i64, ptr @H5E_CANTPROTECT_g, align 8, !tbaa !29
  %i.s = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__release_mesg, i32 noundef 1337, i64 noundef %i.q, i64 noundef %i.r, ptr noundef nonnull @.str.19) #7 ; 0 uses
  br label %.thread

bb.g:                                             ; preds = %bb.e
  %i.t = tail call i32 @H5O__msg_free_mesg(ptr noundef nonnull %2) #7 ; 0 uses
  store ptr @H5O_MSG_NULL, ptr %2, align 8, !tbaa !49
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !54
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.x = load i64, ptr %i.w, align 8, !tbaa !53
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.v, i8 0, i64 %i.x, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 9
  store i8 0, ptr %i.y, align 1, !tbaa !73
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 1, ptr %i.z, align 8, !tbaa !57
  store i8 1, ptr %i.a, align 1, !tbaa !8
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !34
  %i.ac = load i32, ptr %i.m, align 8, !tbaa !46
  %i.ad = zext i32 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.ab, i64 %i.ad ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !40 ; 3 uses
  %.not = icmp eq i64 %i.ag, 0
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !41
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !39
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.an = load i8, ptr %i.am, align 8, !tbaa !30
  %i.ao = icmp eq i8 %i.an, 1
  %.neg = select i1 %i.ao, i64 0, i64 -4
  %.neg37 = sub i64 %.neg, %i.ag
  %i.ap = getelementptr inbounds i8, ptr %i.al, i64 %.neg37
  call fastcc void @H5O__eliminate_gap(ptr noundef nonnull %1, ptr noundef %i.a, ptr noundef nonnull %2, ptr noundef %i.ap, i64 noundef %i.ag)
  %.pre = load i8, ptr %i.a, align 1, !tbaa !8, !range !10
  %i.aq = trunc nuw i8 %.pre to i1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ar = phi i1 [ true, %bb.g ], [ %i.aq, %bb.h ]
  %i.as = tail call i32 @H5O__chunk_unprotect(ptr noundef %0, ptr noundef nonnull %i.o, i1 noundef zeroext %i.ar) #7
  %i.at = icmp slt i32 %i.as, 0
  br i1 %i.at, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.au = load i64, ptr @H5E_OHDR_g, align 8, !tbaa !29
  %i.av = load i64, ptr @H5E_CANTUNPROTECT_g, align 8, !tbaa !29
  %i.aw = tail call i32 (ptr, ptr, i32, i64, i64, ptr, ...) @H5E_printf_stack(ptr noundef nonnull @.str, ptr noundef nonnull @__func__.H5O__release_mesg, i32 noundef 1368, i64 noundef %i.au, i64 noundef %i.av, ptr noundef nonnull @.str.9) #7 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.f, %bb.d, %bb.i, %bb.j, %bb.a
  %.1 = phi i32 [ -1, %bb.j ], [ 0, %bb.i ], [ 0, %bb.a ], [ -1, %bb.d ], [ -1, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.1
}

declare i32 @H5O__delete_mesg(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @H5O__eliminate_gap(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) %1, ptr nofree noundef captures(none) %2, ptr noundef %3, i64 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  %i.c = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.d, true
  %i.f = select i1 %i.b, i1 true, i1 %i.e
  br i1 %i.f, label %bb.b, label %bb.w, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !54   ; 4 uses
  %i.i = icmp ult ptr %i.h, %3                    ; 5 uses
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.k = load i64, ptr %i.j, align 8, !tbaa !53
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 %4
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = load i8, ptr %i.n, align 8, !tbaa !30
  %i.p = icmp eq i8 %i.o, 1
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.r = load i8, ptr %i.q, align 1, !tbaa !31
  %i.s = lshr i8 %i.r, 1
  %i.t = and i8 %i.s, 2
  %i.u = or disjoint i8 %i.t, 4
  %i.v = zext nneg i8 %i.u to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.w = phi i64 [ %i.v, %bb.e ], [ 8, %bb.d ]
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds i8, ptr %i.h, i64 %i.x
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.068 = phi ptr [ %i.l, %bb.c ], [ %i.m, %bb.f ] ; 14 uses
  %.067 = phi ptr [ %3, %bb.c ], [ %i.y, %bb.f ]  ; 8 uses
  %i.z = icmp ugt ptr %.067, %.068
  br i1 %i.z, label %.preheader, label %bb.r

.preheader:                                       ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !43 ; 5 uses
  %.not82 = icmp eq i64 %i.ab, 0
  br i1 %.not82, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !28 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.af = load i8, ptr %i.ae, align 8, !tbaa !30
  %i.ag = icmp eq i8 %i.af, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !46 ; 4 uses
  %i.aj = sub i64 0, %4                           ; 2 uses
  br i1 %i.ag, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.i, label %.lr.ph.split.us.split.us, label %.lr.ph.split.us.split

.lr.ph.split.us.split.us:                         ; preds = %.lr.ph.split.us, %bb.i
  %indvars.iv95 = phi i64 [ %6, %bb.i ], [ 0, %.lr.ph.split.us ]
  %.078.us.us = phi i32 [ %5, %bb.i ], [ 0, %.lr.ph.split.us ]
  %i.ak = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %indvars.iv95 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !54 ; 2 uses
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !46
  %i.aq = icmp eq i32 %i.ap, %i.ai
  %.not.us.us = icmp uge ptr %i.an, %.068
  %i.ar = icmp ult ptr %i.an, %.067
  %i.as = and i1 %.not.us.us, %i.ar
  %or.cond75.us.us = select i1 %i.aq, i1 %i.as, i1 false
  br i1 %or.cond75.us.us, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.split.us.split.us
  %i.at = getelementptr inbounds nuw i8, ptr %i.am, i64 %4
  store ptr %i.at, ptr %i.al, align 8, !tbaa !54
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.split.us.split.us
  %5 = add i32 %.078.us.us, 1                     ; 2 uses
  %6 = zext i32 %5 to i64                         ; 2 uses
  %i.au = icmp ugt i64 %i.ab, %6
  br i1 %i.au, label %.lr.ph.split.us.split.us, label %._crit_edge, !llvm.loop !74

.lr.ph.split.us.split:                            ; preds = %.lr.ph.split.us, %bb.k
  %indvars.iv91 = phi i64 [ %8, %bb.k ], [ 0, %.lr.ph.split.us ]
  %.078.us = phi i32 [ %7, %bb.k ], [ 0, %.lr.ph.split.us ]
  %i.av = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %indvars.iv91 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 32 ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !54 ; 2 uses
  %i.ay = getelementptr inbounds i8, ptr %i.ax, i64 -8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !46
  %i.bb = icmp eq i32 %i.ba, %i.ai
  %.not.us = icmp uge ptr %i.ay, %.068
  %i.bc = icmp ult ptr %i.ay, %.067
  %i.bd = and i1 %.not.us, %i.bc
  %or.cond75.us = select i1 %i.bb, i1 %i.bd, i1 false
  br i1 %or.cond75.us, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.lr.ph.split.us.split
  %i.be = getelementptr inbounds i8, ptr %i.ax, i64 %i.aj
  store ptr %i.be, ptr %i.aw, align 8, !tbaa !54
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.lr.ph.split.us.split
  %7 = add i32 %.078.us, 1                        ; 2 uses
  %8 = zext i32 %7 to i64                         ; 2 uses
  %i.bf = icmp ugt i64 %i.ab, %8
  br i1 %i.bf, label %.lr.ph.split.us.split, label %._crit_edge, !llvm.loop !74

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !31
  %i.bi = lshr i8 %i.bh, 1
  %i.bj = and i8 %i.bi, 2
  %i.bk = or disjoint i8 %i.bj, 4
  %i.bl = zext nneg i8 %i.bk to i64
  %i.bm = sub nsw i64 0, %i.bl                    ; 2 uses
  br i1 %i.i, label %.lr.ph.split.split.us, label %.lr.ph.split.split

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %bb.m
  %indvars.iv87 = phi i64 [ %10, %bb.m ], [ 0, %.lr.ph.split ]
  %.078.us79 = phi i32 [ %9, %bb.m ], [ 0, %.lr.ph.split ]
  %i.bn = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %indvars.iv87 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 32 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !54 ; 2 uses
  %i.bq = getelementptr inbounds i8, ptr %i.bp, i64 %i.bm ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !46
  %i.bt = icmp eq i32 %i.bs, %i.ai
  %.not.us80 = icmp uge ptr %i.bq, %.068
  %i.bu = icmp ult ptr %i.bq, %.067
  %i.bv = and i1 %.not.us80, %i.bu
  %or.cond75.us81 = select i1 %i.bt, i1 %i.bv, i1 false
  br i1 %or.cond75.us81, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.split.split.us
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bp, i64 %4
  store ptr %i.bw, ptr %i.bo, align 8, !tbaa !54
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.split.split.us
  %9 = add i32 %.078.us79, 1                      ; 2 uses
  %10 = zext i32 %9 to i64                        ; 2 uses
  %i.bx = icmp ugt i64 %i.ab, %10
  br i1 %i.bx, label %.lr.ph.split.split.us, label %._crit_edge, !llvm.loop !74

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.o
  %indvars.iv = phi i64 [ %12, %bb.o ], [ 0, %.lr.ph.split ]
  %.078 = phi i32 [ %11, %bb.o ], [ 0, %.lr.ph.split ]
  %i.by = getelementptr inbounds nuw [48 x i8], ptr %i.ad, i64 %indvars.iv ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32 ; 2 uses
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !54 ; 2 uses
  %i.cb = getelementptr inbounds i8, ptr %i.ca, i64 %i.bm ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.cd = load i32, ptr %i.cc, align 8, !tbaa !46
  %i.ce = icmp eq i32 %i.cd, %i.ai
  %.not = icmp uge ptr %i.cb, %.068
  %i.cf = icmp ult ptr %i.cb, %.067
  %i.cg = and i1 %.not, %i.cf
  %or.cond75 = select i1 %i.ce, i1 %i.cg, i1 false
  br i1 %or.cond75, label %bb.n, label %bb.o

bb.n:                                             ; preds = %.lr.ph.split.split
  %i.ch = getelementptr inbounds i8, ptr %i.ca, i64 %i.aj
  store ptr %i.ch, ptr %i.bz, align 8, !tbaa !54
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.split.split
  %11 = add i32 %.078, 1                          ; 2 uses
  %12 = zext i32 %11 to i64                       ; 2 uses
  %i.ci = icmp ugt i64 %i.ab, %12
  br i1 %i.ci, label %.lr.ph.split.split, label %._crit_edge, !llvm.loop !74

._crit_edge:                                      ; preds = %bb.o, %bb.m, %bb.k, %bb.i, %.preheader
  br i1 %i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %._crit_edge
  %i.cj = getelementptr inbounds nuw i8, ptr %.068, i64 %4
  %i.ck = ptrtoint ptr %.067 to i64
  %i.cl = ptrtoint ptr %.068 to i64
  %i.cm = sub i64 %i.ck, %i.cl
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cj, ptr align 1 %.068, i64 %i.cm, i1 false)
  %.pre = load ptr, ptr %i.g, align 8, !tbaa !54
  br label %bb.v

bb.q:                                             ; preds = %._crit_edge
  %i.cn = sub i64 0, %4                           ; 2 uses
  %i.co = getelementptr inbounds i8, ptr %.068, i64 %i.cn
  %i.cp = ptrtoint ptr %.067 to i64
  %i.cq = ptrtoint ptr %.068 to i64
  %i.cr = sub i64 %i.cp, %i.cq
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.co, ptr align 1 %.068, i64 %i.cr, i1 false)
  %i.cs = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.ct = getelementptr inbounds i8, ptr %i.cs, i64 %i.cn ; 2 uses
  store ptr %i.ct, ptr %i.g, align 8, !tbaa !54
  br label %bb.v

bb.r:                                             ; preds = %bb.g
  %i.cu = icmp ne ptr %.067, %.068
  %or.cond = or i1 %i.i, %i.cu
  br i1 %or.cond, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cv = sub i64 0, %4                           ; 2 uses
  %i.cw = getelementptr inbounds i8, ptr %.068, i64 %i.cv
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !53
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.da = load i8, ptr %i.cz, align 8, !tbaa !30
  %i.db = icmp eq i8 %i.da, 1
  br i1 %i.db, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 289
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !31
  %i.de = lshr i8 %i.dd, 1
  %i.df = and i8 %i.de, 2
  %i.dg = or disjoint i8 %i.df, 4
  %i.dh = zext nneg i8 %i.dg to i64
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.di = phi i64 [ %i.dh, %bb.t ], [ 8, %bb.s ]
  %i.dj = add i64 %i.di, %i.cy
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cw, ptr align 1 %.068, i64 %i.dj, i1 false)
  %i.dk = load ptr, ptr %i.g, align 8, !tbaa !54
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.cv ; 2 uses
  store ptr %i.dl, ptr %i.g, align 8, !tbaa !54
  br label %bb.v

bb.v:                                             ; preds = %bb.p, %bb.q, %bb.r, %bb.u
  %i.dm = phi ptr [ %.pre, %bb.p ], [ %i.ct, %bb.q ], [ %i.h, %bb.r ], [ %i.dl, %bb.u ]
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.do = load i64, ptr %i.dn, align 8, !tbaa !53
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.do
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.dp, i8 0, i64 %4, i1 false)
  %i.dq = load i64, ptr %i.dn, align 8, !tbaa !53
  %i.dr = add i64 %i.dq, %4
  store i64 %i.dr, ptr %i.dn, align 8, !tbaa !53
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.dt = load ptr, ptr %i.ds, align 8, !tbaa !34
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !46
  %i.dw = zext i32 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [40 x i8], ptr %i.dt, i64 %i.dw
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  store i64 0, ptr %i.dy, align 8, !tbaa !40
  %i.dz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i8 1, ptr %i.dz, align 8, !tbaa !57
  store i8 1, ptr %1, align 1, !tbaa !8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @H5O__condense_header(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 12 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = alloca i8, align 1                       ; 15 uses
  %i.d = alloca i8, align 1                       ; 12 uses
  %i.e = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10, !noundef !11
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = load i8, ptr @H5_libterm_g, align 1, !range !10
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = xor i1 %i.h, true
  %i.j = select i1 %i.f, i1 true, i1 %i.i
  br i1 %i.j, label %.preheader, label %.loopexit73, !prof !12

.preheader:                                       ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 3 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !52   ; 2 uses
  %.not227 = icmp eq i32 %i.l, 0
  br i1 %.not227, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 352
  %.pre = load i64, ptr %i.m, align 8, !tbaa !43
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.o = phi i32 [ %i.l, %.lr.ph ], [ %i.ap, %bb.h ] ; 2 uses
  %i.p = phi i64 [ %.pre, %.lr.ph ], [ %i.aq, %bb.h ] ; 3 uses
  %.0228 = phi i32 [ 0, %.lr.ph ], [ %.1, %bb.h ] ; 4 uses
  %i.q = zext i32 %.0228 to i64                   ; 4 uses
  %i.r = icmp ugt i64 %i.p, %i.q
  br i1 %i.r, label %bb.c, label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.h, %.preheader
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 352 ; 20 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 29 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 408 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 392 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 288 ; 15 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 289 ; 15 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 344 ; 2 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.aa = load ptr, ptr %i.n, align 8, !tbaa !28  ; 2 uses
  %i.ab = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %i.q ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !49
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !50
  %i.ae = icmp eq i32 %i.ad, 26
  br i1 %i.ae, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.af = add i64 %i.p, -1                        ; 3 uses
  %i.ag = icmp ugt i64 %i.af, %i.q
  br i1 %i.ag, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = add i32 %.0228, 1
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [48 x i8], ptr %i.aa, i64 %i.ai
  %i.ak = sub nuw i64 %i.af, %i.q
  %i.al = mul i64 %i.ak, 48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ab, ptr align 8 %i.aj, i64 %i.al, i1 false)
  %.pre373 = load i64, ptr %i.m, align 8, !tbaa !43
  %.pre374 = load i32, ptr %i.k, align 8, !tbaa !52
  %.pre378 = add i64 %.pre373, -1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.pre-phi = phi i64 [ %.pre378, %bb.e ], [ %i.af, %bb.d ] ; 2 uses
  %i.am = phi i32 [ %.pre374, %bb.e ], [ %i.o, %bb.d ]
  store i64 %.pre-phi, ptr %i.m, align 8, !tbaa !43
  %i.an = add i32 %i.am, -1                       ; 2 uses
  store i32 %i.an, ptr %i.k, align 8, !tbaa !52
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.ao = add i32 %.0228, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ap = phi i32 [ %i.an, %bb.f ], [ %i.o, %bb.g ] ; 2 uses
  %i.aq = phi i64 [ %.pre-phi, %bb.f ], [ %i.p, %bb.g ]
  %.1 = phi i32 [ %.0228, %bb.f ], [ %i.ao, %bb.g ]
  %.not = icmp eq i32 %i.ap, 0
  br i1 %.not, label %.critedge, label %bb.b, !llvm.loop !75

bb.i:                                             ; preds = %bb.gu, %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #7
  store i8 0, ptr %i.c, align 1, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #7
  store i8 0, ptr %i.d, align 1, !tbaa !8
  %i.ar = load i8, ptr @H5O_init_g, align 1, !tbaa !8, !range !10, !noundef !11 ; 2 uses
  %i.as = trunc nuw i8 %i.ar to i1
  %i.at = load i8, ptr @H5_libterm_g, align 1, !range !10 ; 2 uses
  %i.au = trunc nuw i8 %i.at to i1
  %i.av = xor i1 %i.au, true
  %i.aw = select i1 %i.as, i1 true, i1 %i.av
  br i1 %i.aw, label %.preheader.i, label %.loopexit71, !prof !12

.preheader.i:                                     ; preds = %bb.i
  %i.ax = load i64, ptr %i.t, align 8, !tbaa !43  ; 2 uses
  %.not.i = icmp eq i64 %i.ax, 0
  br i1 %.not.i, label %.loopexit.thread, label %.lr.ph725.preheader.i

.preheader.splitthread-pre-split.i:               ; preds = %.loopexit.i, %.loopexit538.i, %.loopexit.thread.i, %.thread502.i, %bb.bw, %H5O__move_cont.exit.thread.i
  %.pr.i = load i64, ptr %i.t, align 8, !tbaa !43 ; 2 uses
  %.not729.i = icmp eq i64 %.pr.i, 0
  br i1 %.not729.i, label %.loopexit, label %.lr.ph725.preheader.i

.lr.ph725.preheader.i:                            ; preds = %.preheader.i, %.preheader.splitthread-pre-split.i
  %.0268.i233 = phi i32 [ 1, %.preheader.splitthread-pre-split.i ], [ 0, %.preheader.i ]
end_hunk_0
