Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/acl?download=true
inline.NumInlined: 621
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@check_acl:bb.a
bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %.not3 = icmp eq i32 %i.g, 1
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.i = tail call i32 @errcode(i32 noundef 50856066) #12 ; 0 uses
  %i.j = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.52) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 613, ptr noundef nonnull @__func__.check_acl) #12
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load i32, ptr %i.k, align 4
  %.not4 = icmp eq i32 %i.l, 0
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.n = tail call i32 @errcode(i32 noundef 67108994) #12 ; 0 uses
  %i.o = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.53) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 617, ptr noundef nonnull @__func__.check_acl) #12
  unreachable

bb.g:                                             ; preds = %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @aclnewowner(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @check_acl(ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 4              ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = sext i32 %i.d to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.g = load i32, ptr %i.f, align 4
  %i.h = sext i32 %i.g to i64
  %i.i = shl nsw i64 %i.h, 3
  %i.j = add nsw i64 %i.i, 16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi i64 [ %i.e, %bb.b ], [ %i.j, %bb.c ]
  %i.l = icmp slt i32 %i.b, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.n = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.38, i32 noundef %i.b) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 446, ptr noundef nonnull @__func__.allocacl) #12
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %i.k
  %i.p = zext nneg i32 %i.b to i64
  %i.q = shl nuw nsw i64 %i.p, 4                  ; 2 uses
  %i.r = add nuw nsw i64 %i.q, 24                 ; 2 uses
  %i.s = tail call ptr @palloc0(i64 noundef %i.r) #12 ; 9 uses
  %i.t = trunc i64 %i.r to i32
  %i.u = shl i32 %i.t, 2
  store i32 %i.u, ptr %i.s, align 4
  %i.v = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  store i32 1, ptr %i.v, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i32 0, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 12
  store i32 1033, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 20
  store i32 1, ptr %i.z, align 4
  store i32 %i.b, ptr %i.y, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 24 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.aa, ptr align 8 %i.o, i64 %i.q, i1 false)
  %.not92 = icmp eq i32 %i.b, 0
  br i1 %.not92, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f, %bb.l
  %.06077 = phi i32 [ %i.ai, %bb.l ], [ 0, %bb.f ]
  %.06176 = phi i1 [ %.263, %bb.l ], [ false, %bb.f ] ; 2 uses
  %.06675 = phi ptr [ %i.aj, %bb.l ], [ %i.aa, %bb.f ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.06675, i64 4 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4            ; 2 uses
  %i.ad = icmp eq i32 %i.ac, %1
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph
  store i32 %2, ptr %i.ab, align 4
  br label %bb.i

bb.h:                                             ; preds = %.lr.ph
  %i.ae = icmp eq i32 %i.ac, %2
  %spec.select = select i1 %i.ae, i1 true, i1 %.06176
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.162 = phi i1 [ %.06176, %bb.g ], [ %spec.select, %bb.h ] ; 2 uses
  %i.af = load i32, ptr %.06675, align 8          ; 2 uses
  %i.ag = icmp eq i32 %i.af, %1
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %2, ptr %.06675, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.ah = icmp eq i32 %i.af, %2
  %spec.select73 = select i1 %i.ah, i1 true, i1 %.162
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.263 = phi i1 [ %.162, %bb.j ], [ %spec.select73, %bb.k ] ; 2 uses
  %i.ai = add nuw nsw i32 %.06077, 1              ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.06675, i64 16
  %exitcond.not = icmp eq i32 %i.ai, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %bb.l
  br i1 %.263, label %.lr.ph89, label %.critedge

.lr.ph89:                                         ; preds = %._crit_edge, %.lr.ph89._crit_edge
  %.088 = phi i32 [ %.pre, %.lr.ph89._crit_edge ], [ 0, %._crit_edge ]
  %.187 = phi i32 [ %.2, %.lr.ph89._crit_edge ], [ 0, %._crit_edge ] ; 3 uses
  %.06485 = phi ptr [ %i.be, %.lr.ph89._crit_edge ], [ %i.aa, %._crit_edge ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.06485, i64 8 ; 3 uses
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = icmp eq i64 %i.al, 0
  %.pre = add nuw nsw i32 %.088, 1                ; 4 uses
  br i1 %i.am, label %.lr.ph89._crit_edge, label %.preheader

.preheader:                                       ; preds = %.lr.ph89
  %i.an = icmp slt i32 %.pre, %i.b
  br i1 %i.an, label %.lr.ph83, label %._crit_edge84

.lr.ph83:                                         ; preds = %.preheader
  %i.ao = getelementptr inbounds nuw i8, ptr %.06485, i64 4
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph83, %aclitem_match.exit.thread
  %.05982 = phi i32 [ %.pre, %.lr.ph83 ], [ %.059, %aclitem_match.exit.thread ]
  %.064.pn80 = phi ptr [ %.06485, %.lr.ph83 ], [ %.06581, %aclitem_match.exit.thread ] ; 3 uses
  %.06581 = getelementptr inbounds nuw i8, ptr %.064.pn80, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.064.pn80, i64 24 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8            ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %aclitem_match.exit.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.as = load i32, ptr %.06485, align 8
  %i.at = load i32, ptr %.06581, align 8
  %i.au = icmp eq i32 %i.as, %i.at
  br i1 %i.au, label %aclitem_match.exit, label %aclitem_match.exit.thread

aclitem_match.exit:                               ; preds = %bb.n
  %i.av = load i32, ptr %i.ao, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %.064.pn80, i64 20
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = icmp eq i32 %i.av, %i.ax
  br i1 %i.ay, label %bb.o, label %aclitem_match.exit.thread

bb.o:                                             ; preds = %aclitem_match.exit
  %i.az = load i64, ptr %i.ak, align 8
  %i.ba = or i64 %i.az, %i.aq
  store i64 %i.ba, ptr %i.ak, align 8
  store i64 0, ptr %i.ap, align 8
  br label %aclitem_match.exit.thread

aclitem_match.exit.thread:                        ; preds = %bb.n, %aclitem_match.exit, %bb.o, %bb.m
  %.059 = add nuw nsw i32 %.05982, 1              ; 2 uses
  %exitcond93.not = icmp eq i32 %.059, %i.b
  br i1 %exitcond93.not, label %._crit_edge84, label %bb.m, !llvm.loop !18

._crit_edge84:                                    ; preds = %aclitem_match.exit.thread, %.preheader
  %i.bb = sext i32 %.187 to i64
  %i.bc = getelementptr inbounds [16 x i8], ptr %i.aa, i64 %i.bb
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %.06485, i64 16, i1 false)
  %i.bd = add i32 %.187, 1
  br label %.lr.ph89._crit_edge

.lr.ph89._crit_edge:                              ; preds = %.lr.ph89, %._crit_edge84
  %.2 = phi i32 [ %i.bd, %._crit_edge84 ], [ %.187, %.lr.ph89 ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.06485, i64 16
  %exitcond94.not = icmp eq i32 %.pre, %i.b
  br i1 %exitcond94.not, label %._crit_edge90, label %.lr.ph89, !llvm.loop !19

._crit_edge90:                                    ; preds = %.lr.ph89._crit_edge
  store i32 %.2, ptr %i.y, align 4
  %i.bf = shl i32 %.2, 6
  %i.bg = add i32 %i.bf, 96
  store i32 %i.bg, ptr %i.s, align 4
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %._crit_edge90, %._crit_edge
  ret ptr %i.s
}

; Function Attrs: nounwind uwtable
define dso_local i64 @aclmask(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, i64 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.c = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.6) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 1433, ptr noundef nonnull @__func__.aclmask) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @check_acl(ptr noundef nonnull %0)
  %i.d = icmp eq i64 %3, 0
  br i1 %i.d, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = and i64 %3, -4294967296                  ; 4 uses
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = icmp eq i32 %1, %2
  br i1 %i.f, label %has_privs_of_role.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = tail call zeroext i1 @superuser_arg(i32 noundef %1) #12
  br i1 %i.g, label %has_privs_of_role.exit.thread, label %has_privs_of_role.exit

has_privs_of_role.exit:                           ; preds = %bb.f
  %i.h = tail call fastcc ptr @roles_is_member_of(i32 noundef %1, i32 noundef 1, i32 noundef 0, ptr noundef null)
  %i.i = tail call zeroext i1 @list_member_oid(ptr noundef %i.h, i32 noundef %2) #12
  br i1 %i.i, label %has_privs_of_role.exit.thread, label %bb.g

has_privs_of_role.exit.thread:                    ; preds = %bb.f, %bb.e, %has_privs_of_role.exit
  %i.j = icmp ne i32 %4, 0
  %i.k = icmp eq i64 %i.e, %3
  %or.cond87 = or i1 %i.j, %i.k
  br i1 %or.cond87, label %.thread, label %bb.g

bb.g:                                             ; preds = %has_privs_of_role.exit.thread, %has_privs_of_role.exit, %bb.d
  %.064 = phi i64 [ %i.e, %has_privs_of_role.exit.thread ], [ 0, %bb.d ], [ 0, %has_privs_of_role.exit ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load i32, ptr %i.l, align 4              ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  %.not82 = icmp eq i32 %i.o, 0
  br i1 %.not82, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = sext i32 %i.o to i64
  br label %bb.j

bb.i:                                             ; preds = %bb.g
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i32, ptr %i.q, align 4
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.s, 3
  %i.u = add nsw i64 %i.t, 16
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.v = phi i64 [ %i.p, %bb.h ], [ %i.u, %bb.i ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 %i.v ; 4 uses
  %i.x = icmp sgt i32 %i.m, 0
  br i1 %i.x, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %bb.j
  %i.y = icmp eq i32 %4, 0
  %wide.trip.count131 = zext nneg i32 %i.m to i64 ; 2 uses
  br i1 %i.y, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.l
  %indvars.iv128 = phi i64 [ %indvars.iv.next129, %bb.l ], [ 0, %.lr.ph ] ; 2 uses
  %.165106.us = phi i64 [ %.266.us, %bb.l ], [ %.064, %.lr.ph ] ; 2 uses
  %i.z = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv128 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp eq i32 %i.aa, 0
  %i.ac = icmp eq i32 %i.aa, %1
  %or.cond.us = or i1 %i.ab, %i.ac
  br i1 %or.cond.us, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.lr.ph.split.us
  %i.ad = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ae = load i64, ptr %i.ad, align 8
  %i.af = and i64 %i.ae, %3
  %i.ag = or i64 %i.af, %.165106.us               ; 2 uses
  %i.ah = icmp eq i64 %i.ag, %3
  br i1 %i.ah, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.split.us
  %.266.us = phi i64 [ %i.ag, %bb.k ], [ %.165106.us, %.lr.ph.split.us ] ; 2 uses
  %indvars.iv.next129 = add nuw nsw i64 %indvars.iv128, 1 ; 2 uses
  %exitcond132.not = icmp eq i64 %indvars.iv.next129, %wide.trip.count131
  br i1 %exitcond132.not, label %.lr.ph113, label %.lr.ph.split.us, !llvm.loop !20

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.n ], [ 0, %.lr.ph ] ; 2 uses
  %.165106 = phi i64 [ %.266, %bb.n ], [ %.064, %.lr.ph ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp eq i32 %i.aj, 0
  %i.al = icmp eq i32 %i.aj, %1
  %or.cond = or i1 %i.ak, %i.al
  br i1 %or.cond, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph.split
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = and i64 %i.an, %3
  %i.ap = or i64 %i.ao, %.165106                  ; 2 uses
  %.not85 = icmp eq i64 %i.ap, 0
  br i1 %.not85, label %bb.n, label %.thread

bb.n:                                             ; preds = %.lr.ph.split, %bb.m
  %.266 = phi i64 [ %.165106, %.lr.ph.split ], [ 0, %bb.m ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count131
  br i1 %exitcond.not, label %.lr.ph113, label %.lr.ph.split, !llvm.loop !20

.lr.ph113:                                        ; preds = %bb.n, %bb.l
  %.165.lcssa = phi i64 [ %.266.us, %bb.l ], [ %.266, %bb.n ] ; 3 uses
  %i.aq = xor i64 %.165.lcssa, -1
  %i.ar = and i64 %3, %i.aq                       ; 2 uses
  %i.as = icmp eq i32 %4, 0
  %wide.trip.count141 = zext nneg i32 %i.m to i64 ; 2 uses
  br i1 %i.as, label %.lr.ph113.split.us, label %.lr.ph113.split

.lr.ph113.split.us:                               ; preds = %.lr.ph113, %bb.r
  %indvars.iv138 = phi i64 [ %indvars.iv.next139, %bb.r ], [ 0, %.lr.ph113 ] ; 2 uses
  %.062110.us = phi i64 [ %.2.ph.us, %bb.r ], [ %i.ar, %.lr.ph113 ] ; 4 uses
  %.4109.us = phi i64 [ %.6.ph.us, %bb.r ], [ %.165.lcssa, %.lr.ph113 ] ; 4 uses
  %i.at = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv138 ; 2 uses
  %i.au = load i32, ptr %i.at, align 8            ; 3 uses
  %i.av = icmp eq i32 %i.au, 0
  %i.aw = icmp eq i32 %i.au, %1
  %or.cond86.us = or i1 %i.av, %i.aw
  br i1 %or.cond86.us, label %bb.r, label %bb.o

bb.o:                                             ; preds = %.lr.ph113.split.us
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 8 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = and i64 %i.ay, %.062110.us
  %.not83.us = icmp eq i64 %i.az, 0
  br i1 %.not83.us, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = tail call zeroext i1 @superuser_arg(i32 noundef %1) #12
  br i1 %i.ba, label %has_privs_of_role.exit89.thread.us, label %has_privs_of_role.exit89.us

has_privs_of_role.exit89.us:                      ; preds = %bb.p
  %i.bb = tail call fastcc ptr @roles_is_member_of(i32 noundef %1, i32 noundef 1, i32 noundef 0, ptr noundef null)
  %i.bc = tail call zeroext i1 @list_member_oid(ptr noundef %i.bb, i32 noundef %i.au) #12
  br i1 %i.bc, label %has_privs_of_role.exit89.thread.us, label %bb.r

has_privs_of_role.exit89.thread.us:               ; preds = %has_privs_of_role.exit89.us, %bb.p
  %i.bd = load i64, ptr %i.ax, align 8
  %i.be = and i64 %i.bd, %3
  %i.bf = or i64 %i.be, %.4109.us                 ; 3 uses
  %i.bg = icmp eq i64 %i.bf, %3
  br i1 %i.bg, label %.thread, label %bb.q

bb.q:                                             ; preds = %has_privs_of_role.exit89.thread.us
  %i.bh = xor i64 %i.bf, -1
  %i.bi = and i64 %3, %i.bh
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %has_privs_of_role.exit89.us, %bb.o, %.lr.ph113.split.us
  %.6.ph.us = phi i64 [ %.4109.us, %bb.o ], [ %.4109.us, %has_privs_of_role.exit89.us ], [ %i.bf, %bb.q ], [ %.4109.us, %.lr.ph113.split.us ] ; 2 uses
  %.2.ph.us = phi i64 [ %.062110.us, %bb.o ], [ %.062110.us, %has_privs_of_role.exit89.us ], [ %i.bi, %bb.q ], [ %.062110.us, %.lr.ph113.split.us ]
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1 ; 2 uses
  %exitcond142.not = icmp eq i64 %indvars.iv.next139, %wide.trip.count141
  br i1 %exitcond142.not, label %.thread, label %.lr.ph113.split.us, !llvm.loop !21

.lr.ph113.split:                                  ; preds = %.lr.ph113, %bb.u
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %bb.u ], [ 0, %.lr.ph113 ] ; 2 uses
  %.062110 = phi i64 [ %.2.ph, %bb.u ], [ %i.ar, %.lr.ph113 ] ; 4 uses
  %.4109 = phi i64 [ %.6.ph, %bb.u ], [ %.165.lcssa, %.lr.ph113 ] ; 4 uses
  %i.bj = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %indvars.iv133 ; 2 uses
  %i.bk = load i32, ptr %i.bj, align 8            ; 3 uses
  %i.bl = icmp eq i32 %i.bk, 0
  %i.bm = icmp eq i32 %i.bk, %1
  %or.cond86 = or i1 %i.bl, %i.bm
  br i1 %or.cond86, label %bb.u, label %bb.s

bb.s:                                             ; preds = %.lr.ph113.split
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = and i64 %i.bo, %.062110
  %.not83 = icmp eq i64 %i.bp, 0
  br i1 %.not83, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
end_hunk_0
