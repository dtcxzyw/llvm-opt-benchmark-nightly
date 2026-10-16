Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/acl?download=true
inline.NumInlined: 621
inline.NumDeleted: 58
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@RoleMembershipCacheCallback:bb.a
bb.d:                                             ; preds = %bb.b, %bb.c
  ret void
}

declare zeroext i1 @superuser_arg(i32 noundef) local_unnamed_addr #2

declare zeroext i1 @list_member_oid(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @roles_is_member_of(i32 noundef %0, i32 noundef range(i32 0, 3) %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %3, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = zext nneg i32 %1 to i64                  ; 3 uses
  %i.f = getelementptr inbounds nuw [4 x i8], ptr @cached_role, i64 %i.e ; 3 uses
  %i.g = load i32, ptr %i.f, align 4              ; 2 uses
  %i.h = icmp ne i32 %i.g, %0
  %i.i = icmp ne i32 %2, 0                        ; 2 uses
  %.not69 = icmp eq i32 %i.g, 0
  %i.j = or i1 %i.h, %.not69
  %or.cond76 = or i1 %i.i, %i.j
  br i1 %or.cond76, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @cached_roles, i64 %i.e
  %i.l = load ptr, ptr %i.k, align 8
  br label %bb.ad

bb.e:                                             ; preds = %bb.c
  %i.m = load i32, ptr @MyDatabaseId, align 4     ; 2 uses
  %.not70 = icmp eq i32 %i.m, 0
  br i1 %.not70, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = zext i32 %i.m to i64
  %i.o = tail call ptr @SearchSysCache1(i32 noundef 21, i64 noundef %i.n) #12 ; 3 uses
  %.not71 = icmp eq ptr %i.o, null
  br i1 %.not71, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.p = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.q = load i32, ptr @MyDatabaseId, align 4
  %i.r = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.83, i32 noundef %i.q) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 5217, ptr noundef nonnull @__func__.roles_is_member_of) #12
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = getelementptr i8, ptr %i.o, i64 16
  %.val77 = load ptr, ptr %i.s, align 8           ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.val77, i64 22
  %i.u = load i8, ptr %i.t, align 2
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %.val77, i64 %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 68
  %i.y = load i32, ptr %i.x, align 4
  tail call void @ReleaseSysCache(ptr noundef nonnull %i.o) #12
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.h
  %.062 = phi i32 [ %i.y, %bb.h ], [ 0, %bb.e ]   ; 2 uses
  %.sroa.0.0.insert.ext.i = zext i32 %0 to i64
  %i.z = inttoptr i64 %.sroa.0.0.insert.ext.i to ptr
  %i.aa = tail call ptr @list_make1_impl(i32 noundef 495, ptr %i.z) #12 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4 ; 2 uses
  %.not72 = icmp eq ptr %i.aa, null
  br i1 %.not72, label %.critedge.thread, label %.lr.ph129

.lr.ph129:                                        ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ad = icmp ne i32 %.062, 0
  %i.ae = load i32, ptr %i.ab, align 4
  %i.af = icmp sgt i32 %i.ae, 0
  br i1 %i.af, label %.lr.ph149, label %.critedge

.lr.ph149:                                        ; preds = %.lr.ph129, %bb.ab
  %.0100125148 = phi ptr [ %.3103, %bb.ab ], [ null, %.lr.ph129 ] ; 2 uses
  %.061126147 = phi ptr [ %.3, %bb.ab ], [ %i.aa, %.lr.ph129 ] ; 2 uses
  %indvars.iv136146 = phi i64 [ %indvars.iv.next137, %bb.ab ], [ 0, %.lr.ph129 ] ; 2 uses
  %i.ag = load ptr, ptr %i.ac, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv136146
  %i.ai = load i32, ptr %i.ah, align 8            ; 3 uses
  %i.aj = zext i32 %i.ai to i64
  %i.ak = call ptr @SearchSysCacheList(i32 noundef 8, i32 noundef 1, i64 noundef %i.aj, i64 noundef 0, i64 noundef 0) #12 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 64 ; 2 uses
  %i.am = load i32, ptr %i.al, align 8
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.lr.ph149
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 80
  br label %bb.j

.critedge:                                        ; preds = %bb.ab, %.lr.ph129
  %.061126.lcssa = phi ptr [ %i.aa, %.lr.ph129 ], [ %.3, %bb.ab ] ; 2 uses
  %.0100125.lcssa = phi ptr [ null, %.lr.ph129 ], [ %.3103, %bb.ab ] ; 2 uses
  %.not74 = icmp eq ptr %.0100125.lcssa, null
  br i1 %.not74, label %.critedge.thread, label %bb.ac

bb.j:                                             ; preds = %.lr.ph, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %.1122 = phi ptr [ %.061126147, %.lr.ph ], [ %.2, %bb.v ] ; 10 uses
  %.1101121 = phi ptr [ %.0100125148, %.lr.ph ], [ %.2102, %bb.v ] ; 7 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %indvars.iv
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = getelementptr i8, ptr %i.aq, i64 80
  %.val = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.at = load i8, ptr %i.as, align 2
  %i.au = zext i8 %i.at to i64
  %i.av = getelementptr inbounds nuw i8, ptr %.val, i64 %i.au ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 4
  %i.ax = load i32, ptr %i.aw, align 4            ; 3 uses
  %i.ay = icmp eq i32 %i.ax, %2
  br i1 %i.ay, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ba = load i8, ptr %i.az, align 4, !range !5, !noundef !6
  %i.bb = trunc nuw i8 %i.ba to i1
  %or.cond3 = and i1 %i.i, %i.bb
  br i1 %or.cond3, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bc = load i32, ptr %3, align 4
  %.not75 = icmp eq i32 %i.bc, 0
  br i1 %.not75, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i32 %i.ai, ptr %3, align 4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j
  switch i32 %1, label %bb.q [
    i32 1, label %bb.o
    i32 2, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %i.bd = getelementptr inbounds nuw i8, ptr %i.av, i64 17
  %i.be = load i8, ptr %i.bd, align 1, !range !5, !noundef !6
  %i.bf = trunc nuw i8 %i.be to i1
  br i1 %i.bf, label %bb.q, label %bb.v

bb.p:                                             ; preds = %bb.n
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 18
  %i.bh = load i8, ptr %i.bg, align 2, !range !5, !noundef !6
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.q, label %bb.v

bb.q:                                             ; preds = %bb.o, %bb.n, %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %i.ax, ptr %i.c, align 4
  %.not.i = icmp ne ptr %.1101121, null           ; 2 uses
  br i1 %.not.i, label %bb.r, label %._crit_edge.i

bb.r:                                             ; preds = %bb.q
  %i.bj = call zeroext i1 @bloom_lacks_element(ptr noundef nonnull %.1101121, ptr noundef nonnull %i.c, i64 noundef 4) #12
  %i.bk = load i32, ptr %i.c, align 4             ; 2 uses
  br i1 %i.bj, label %list_length.exit.thread.i.thread108, label %._crit_edge.i

list_length.exit.thread.i.thread108:              ; preds = %bb.r
  %i.bl = call ptr @lappend_oid(ptr noundef %.1122, i32 noundef %i.bk) #12
  br label %bb.u

._crit_edge.i:                                    ; preds = %bb.r, %bb.q
  %i.bm = phi i32 [ %i.ax, %bb.q ], [ %i.bk, %bb.r ]
  %i.bn = call zeroext i1 @list_member_oid(ptr noundef %.1122, i32 noundef %i.bm) #12
  br i1 %i.bn, label %roles_list_append.exit, label %bb.s

bb.s:                                             ; preds = %._crit_edge.i
  %.not.i.i = icmp eq ptr %.1122, null
  %or.cond.i = or i1 %.not.i, %.not.i.i
  br i1 %or.cond.i, label %list_length.exit.thread.i, label %list_length.exit.i

list_length.exit.i:                               ; preds = %bb.s
  %i.bo = getelementptr inbounds nuw i8, ptr %.1122, i64 4 ; 3 uses
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = icmp sgt i32 %i.bp, 1024
  br i1 %i.bq, label %bb.t, label %list_length.exit.thread.i.thread

list_length.exit.thread.i.thread:                 ; preds = %list_length.exit.i
  %i.br = load i32, ptr %i.c, align 4
  %i.bs = call ptr @lappend_oid(ptr noundef nonnull %.1122, i32 noundef %i.br) #12
  br label %roles_list_append.exit

bb.t:                                             ; preds = %list_length.exit.i
  %i.bt = load i32, ptr @work_mem, align 4
  %i.bu = call ptr @bloom_create(i64 noundef 10240, i32 noundef %i.bt, i64 noundef 0) #12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  store i32 0, ptr %i.d, align 4
  %4 = getelementptr inbounds nuw i8, ptr %.1122, i64 16
  %i.bv = load i32, ptr %i.bo, align 4
  %i.bw = icmp sgt i32 %i.bv, 0
  br i1 %i.bw, label %.lr.ph.i, label %.split27.us.i

.split27.us.i:                                    ; preds = %.lr.ph.i, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  br label %list_length.exit.thread.i

.lr.ph.i:                                         ; preds = %bb.t, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.t ] ; 2 uses
  %i.bx = load ptr, ptr %4, align 8
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bx, i64 %indvars.iv.i
  %i.bz = load i32, ptr %i.by, align 8
  store i32 %i.bz, ptr %i.d, align 4
  call void @bloom_add_element(ptr noundef %i.bu, ptr noundef nonnull %i.d, i64 noundef 4) #12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ca = load i32, ptr %i.bo, align 4
  %i.cb = sext i32 %i.ca to i64
  %i.cc = icmp slt i64 %indvars.iv.next.i, %i.cb
  br i1 %i.cc, label %.lr.ph.i, label %.split27.us.i, !llvm.loop !29

list_length.exit.thread.i:                        ; preds = %.split27.us.i, %bb.s
  %.4 = phi ptr [ %.1101121, %bb.s ], [ %i.bu, %.split27.us.i ] ; 2 uses
  %i.cd = load i32, ptr %i.c, align 4
  %i.ce = call ptr @lappend_oid(ptr noundef %.1122, i32 noundef %i.cd) #12 ; 2 uses
  %.not23.i = icmp eq ptr %.4, null
  br i1 %.not23.i, label %roles_list_append.exit, label %bb.u

bb.u:                                             ; preds = %list_length.exit.thread.i.thread108, %list_length.exit.thread.i
  %i.cf = phi ptr [ %i.bl, %list_length.exit.thread.i.thread108 ], [ %i.ce, %list_length.exit.thread.i ]
  %.4111 = phi ptr [ %.1101121, %list_length.exit.thread.i.thread108 ], [ %.4, %list_length.exit.thread.i ] ; 2 uses
  call void @bloom_add_element(ptr noundef nonnull %.4111, ptr noundef nonnull %i.c, i64 noundef 4) #12
  br label %roles_list_append.exit

roles_list_append.exit:                           ; preds = %list_length.exit.thread.i.thread, %._crit_edge.i, %list_length.exit.thread.i, %bb.u
  %.5 = phi ptr [ %.1101121, %._crit_edge.i ], [ null, %list_length.exit.thread.i ], [ %.4111, %bb.u ], [ null, %list_length.exit.thread.i.thread ]
  %.018.i = phi ptr [ %.1122, %._crit_edge.i ], [ %i.ce, %list_length.exit.thread.i ], [ %i.cf, %bb.u ], [ %i.bs, %list_length.exit.thread.i.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.v

bb.v:                                             ; preds = %bb.p, %bb.o, %roles_list_append.exit
  %.2102 = phi ptr [ %.5, %roles_list_append.exit ], [ %.1101121, %bb.p ], [ %.1101121, %bb.o ] ; 2 uses
  %.2 = phi ptr [ %.018.i, %roles_list_append.exit ], [ %.1122, %bb.p ], [ %.1122, %bb.o ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cg = load i32, ptr %i.al, align 8
  %i.ch = sext i32 %i.cg to i64
  %i.ci = icmp slt i64 %indvars.iv.next, %i.ch
  br i1 %i.ci, label %bb.j, label %._crit_edge, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.v, %.lr.ph149
  %.1101.lcssa = phi ptr [ %.0100125148, %.lr.ph149 ], [ %.2102, %bb.v ] ; 6 uses
  %.1.lcssa = phi ptr [ %.061126147, %.lr.ph149 ], [ %.2, %bb.v ] ; 9 uses
  call void @ReleaseCatCacheList(ptr noundef nonnull %i.ak) #12
  %i.cj = icmp eq i32 %i.ai, %.062
  %or.cond5 = and i1 %i.ad, %i.cj
  br i1 %or.cond5, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 6171, ptr %i.a, align 4
  %.not.i78 = icmp ne ptr %.1101.lcssa, null      ; 2 uses
  br i1 %.not.i78, label %bb.x, label %._crit_edge.i79

bb.x:                                             ; preds = %bb.w
  %i.ck = call zeroext i1 @bloom_lacks_element(ptr noundef nonnull %.1101.lcssa, ptr noundef nonnull %i.a, i64 noundef 4) #12
  %i.cl = load i32, ptr %i.a, align 4             ; 2 uses
  br i1 %i.ck, label %list_length.exit.thread.i84.thread117, label %._crit_edge.i79

list_length.exit.thread.i84.thread117:            ; preds = %bb.x
  %i.cm = call ptr @lappend_oid(ptr noundef %.1.lcssa, i32 noundef %i.cl) #12
  br label %bb.aa

._crit_edge.i79:                                  ; preds = %bb.x, %bb.w
  %i.cn = phi i32 [ 6171, %bb.w ], [ %i.cl, %bb.x ]
  %i.co = call zeroext i1 @list_member_oid(ptr noundef %.1.lcssa, i32 noundef %i.cn) #12
  br i1 %i.co, label %roles_list_append.exit91, label %bb.y

bb.y:                                             ; preds = %._crit_edge.i79
  %.not.i.i81 = icmp eq ptr %.1.lcssa, null
  %or.cond.i82 = or i1 %.not.i78, %.not.i.i81
  br i1 %or.cond.i82, label %list_length.exit.thread.i84, label %list_length.exit.i83

list_length.exit.i83:                             ; preds = %bb.y
  %i.cp = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 4 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 4
  %i.cr = icmp sgt i32 %i.cq, 1024
  br i1 %i.cr, label %bb.z, label %list_length.exit.thread.i84.thread

list_length.exit.thread.i84.thread:               ; preds = %list_length.exit.i83
  %i.cs = load i32, ptr %i.a, align 4
  %i.ct = call ptr @lappend_oid(ptr noundef nonnull %.1.lcssa, i32 noundef %i.cs) #12
  br label %roles_list_append.exit91

bb.z:                                             ; preds = %list_length.exit.i83
  %i.cu = load i32, ptr @work_mem, align 4
  %i.cv = call ptr @bloom_create(i64 noundef 10240, i32 noundef %i.cu, i64 noundef 0) #12 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  store i32 0, ptr %i.b, align 4
  %5 = getelementptr inbounds nuw i8, ptr %.1.lcssa, i64 16
  %i.cw = load i32, ptr %i.cp, align 4
  %i.cx = icmp sgt i32 %i.cw, 0
  br i1 %i.cx, label %.lr.ph.i88, label %.split27.us.i87

.split27.us.i87:                                  ; preds = %.lr.ph.i88, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  br label %list_length.exit.thread.i84

.lr.ph.i88:                                       ; preds = %bb.z, %.lr.ph.i88
  %indvars.iv.i89 = phi i64 [ %indvars.iv.next.i90, %.lr.ph.i88 ], [ 0, %bb.z ] ; 2 uses
  %i.cy = load ptr, ptr %5, align 8
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.cy, i64 %indvars.iv.i89
  %i.da = load i32, ptr %i.cz, align 8
  store i32 %i.da, ptr %i.b, align 4
  call void @bloom_add_element(ptr noundef %i.cv, ptr noundef nonnull %i.b, i64 noundef 4) #12
  %indvars.iv.next.i90 = add nuw nsw i64 %indvars.iv.i89, 1 ; 2 uses
  %i.db = load i32, ptr %i.cp, align 4
  %i.dc = sext i32 %i.db to i64
  %i.dd = icmp slt i64 %indvars.iv.next.i90, %i.dc
  br i1 %i.dd, label %.lr.ph.i88, label %.split27.us.i87, !llvm.loop !29

list_length.exit.thread.i84:                      ; preds = %.split27.us.i87, %bb.y
  %.6 = phi ptr [ %.1101.lcssa, %bb.y ], [ %i.cv, %.split27.us.i87 ] ; 2 uses
  %i.de = load i32, ptr %i.a, align 4
  %i.df = call ptr @lappend_oid(ptr noundef %.1.lcssa, i32 noundef %i.de) #12 ; 2 uses
  %.not23.i85 = icmp eq ptr %.6, null
  br i1 %.not23.i85, label %roles_list_append.exit91, label %bb.aa

bb.aa:                                            ; preds = %list_length.exit.thread.i84.thread117, %list_length.exit.thread.i84
  %i.dg = phi ptr [ %i.cm, %list_length.exit.thread.i84.thread117 ], [ %i.df, %list_length.exit.thread.i84 ]
  %.6120 = phi ptr [ %.1101.lcssa, %list_length.exit.thread.i84.thread117 ], [ %.6, %list_length.exit.thread.i84 ] ; 2 uses
  call void @bloom_add_element(ptr noundef nonnull %.6120, ptr noundef nonnull %i.a, i64 noundef 4) #12
  br label %roles_list_append.exit91

roles_list_append.exit91:                         ; preds = %list_length.exit.thread.i84.thread, %._crit_edge.i79, %list_length.exit.thread.i84, %bb.aa
  %.7 = phi ptr [ %.1101.lcssa, %._crit_edge.i79 ], [ null, %list_length.exit.thread.i84 ], [ %.6120, %bb.aa ], [ null, %list_length.exit.thread.i84.thread ]
  %.018.i86 = phi ptr [ %.1.lcssa, %._crit_edge.i79 ], [ %i.df, %list_length.exit.thread.i84 ], [ %i.dg, %bb.aa ], [ %i.ct, %list_length.exit.thread.i84.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ab

bb.ab:                                            ; preds = %roles_list_append.exit91, %._crit_edge
  %.3103 = phi ptr [ %.7, %roles_list_append.exit91 ], [ %.1101.lcssa, %._crit_edge ] ; 2 uses
  %.3 = phi ptr [ %.018.i86, %roles_list_append.exit91 ], [ %.1.lcssa, %._crit_edge ] ; 2 uses
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136146, 1 ; 2 uses
  %i.dh = load i32, ptr %i.ab, align 4
  %i.di = sext i32 %i.dh to i64
  %i.dj = icmp slt i64 %indvars.iv.next137, %i.di
  br i1 %i.dj, label %.lr.ph149, label %.critedge

bb.ac:                                            ; preds = %.critedge
  call void @bloom_free(ptr noundef nonnull %.0100125.lcssa) #12
  br label %.critedge.thread

.critedge.thread:                                 ; preds = %bb.i, %bb.ac, %.critedge
  %.061.lcssa145 = phi ptr [ %.061126.lcssa, %.critedge ], [ %.061126.lcssa, %bb.ac ], [ null, %bb.i ] ; 2 uses
  %i.dk = load ptr, ptr @TopMemoryContext, align 8
  %i.dl = load ptr, ptr @CurrentMemoryContext, align 8
  store ptr %i.dk, ptr @CurrentMemoryContext, align 8
  %i.dm = call ptr @list_copy(ptr noundef %.061.lcssa145) #12 ; 2 uses
  store ptr %i.dl, ptr @CurrentMemoryContext, align 8
  call void @list_free(ptr noundef %.061.lcssa145) #12
  store i32 0, ptr %i.f, align 4
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr @cached_roles, i64 %i.e ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8
  call void @list_free(ptr noundef %i.do) #12
  store ptr %i.dm, ptr %i.dn, align 8
  store i32 %0, ptr %i.f, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %.critedge.thread, %bb.d
  %.059 = phi ptr [ %i.dm, %.critedge.thread ], [ %i.l, %bb.d ]
  ret ptr %.059
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @member_can_set_role(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, %1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @superuser_arg(i32 noundef %0) #12
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc ptr @roles_is_member_of(i32 noundef %0, i32 noundef 2, i32 noundef 0, ptr noundef null)
  %i.d = tail call zeroext i1 @list_member_oid(ptr noundef %i.c, i32 noundef %1) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.d, %bb.c ], [ true, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @check_can_set_role(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, %1
  br i1 %i.a, label %member_can_set_role.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @superuser_arg(i32 noundef %0) #12
  br i1 %i.b, label %member_can_set_role.exit.thread, label %member_can_set_role.exit

member_can_set_role.exit:                         ; preds = %bb.b
  %i.c = tail call fastcc ptr @roles_is_member_of(i32 noundef %0, i32 noundef 2, i32 noundef 0, ptr noundef null)
  %i.d = tail call zeroext i1 @list_member_oid(ptr noundef %i.c, i32 noundef %1) #12
  br i1 %i.d, label %member_can_set_role.exit.thread, label %bb.c

bb.c:                                             ; preds = %member_can_set_role.exit
  %i.e = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.f = tail call i32 @errcode(i32 noundef 16797828) #12 ; 0 uses
  %i.g = tail call ptr @GetUserNameFromId(i32 noundef %1, i1 noundef zeroext false) #12
  %i.h = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.30, ptr noundef %i.g) #12 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.1, i32 noundef 5380, ptr noundef nonnull @__func__.check_can_set_role) #12
  unreachable

member_can_set_role.exit.thread:                  ; preds = %bb.b, %bb.a, %member_can_set_role.exit
  ret void
}

declare ptr @GetUserNameFromId(i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @is_member_of_role(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, %1
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @superuser_arg(i32 noundef %0) #12
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc ptr @roles_is_member_of(i32 noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %i.d = tail call zeroext i1 @list_member_oid(ptr noundef %i.c, i32 noundef %1) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.d, %bb.c ], [ true, %bb.a ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @is_member_of_role_nosuper(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %0, %1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call fastcc ptr @roles_is_member_of(i32 noundef %0, i32 noundef 0, i32 noundef 0, ptr noundef null)
  %i.c = tail call zeroext i1 @list_member_oid(ptr noundef %i.b, i32 noundef %1) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local zeroext i1 @is_admin_of_role(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = tail call zeroext i1 @superuser_arg(i32 noundef %0) #12
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %0, %1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = call fastcc ptr @roles_is_member_of(i32 noundef %0, i32 noundef 0, i32 noundef %1, ptr noundef nonnull %i.a) ; 0 uses
  %i.e = load i32, ptr %i.a, align 4
  %i.f = icmp ne i32 %i.e, 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi i1 [ %i.f, %bb.c ], [ true, %bb.a ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i1 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @select_best_admin(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  %i.b = icmp eq i32 %0, %1
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = call fastcc ptr @roles_is_member_of(i32 noundef %0, i32 noundef 1, i32 noundef %1, ptr noundef nonnull %i.a) ; 0 uses
  %i.d = load i32, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.d, %bb.b ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local void @select_best_grantor(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(address_is_null) %2, i32 noundef %3, ptr nofree noundef writeonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @GetUserId() #12           ; 7 uses
  %i.b = shl i64 %1, 32                           ; 5 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @get_rolespec_oid(ptr noundef nonnull %0, i1 noundef zeroext false) ; 5 uses
  %i.d = icmp eq i32 %i.a, %i.c
  br i1 %i.d, label %has_privs_of_role.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call zeroext i1 @superuser_arg(i32 noundef %i.a) #12
  br i1 %i.e, label %has_privs_of_role.exit.thread, label %has_privs_of_role.exit

has_privs_of_role.exit:                           ; preds = %bb.c
  %i.f = tail call fastcc ptr @roles_is_member_of(i32 noundef %i.a, i32 noundef 1, i32 noundef 0, ptr noundef null)
  %i.g = tail call zeroext i1 @list_member_oid(ptr noundef %i.f, i32 noundef %i.c) #12
  br i1 %i.g, label %has_privs_of_role.exit.thread, label %bb.d
end_hunk_0
