Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/be-secure-common?download=true
inline.NumInlined: 13
inline.NumDeleted: 4
begin_hunk_0_@wait_result_to_str
declare ptr @wait_result_to_str(i32 noundef) local_unnamed_addr #2

declare i32 @errdetail_internal(ptr noundef, ...) local_unnamed_addr #2

declare void @pfree(ptr noundef) local_unnamed_addr #2

declare i32 @pg_strip_crlf(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noundef zeroext i1 @check_ssl_key_file_permissions(ptr noundef %0, i1 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.stat, align 8               ; 5 uses
  %i.a = select i1 %1, i32 22, i32 15             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  %i.b = call i32 @stat(ptr noundef %0, ptr noundef nonnull %2) #8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call zeroext i1 @errstart(i32 noundef %i.a, ptr noundef null) #8
  br i1 %i.c, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @errcode_for_file_access() #8 ; 0 uses
  %i.e = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.9, ptr noundef %0) #8 ; 0 uses
  br label %.sink.split.sink.split

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.g = load i32, ptr %i.f, align 8              ; 3 uses
  %i.h = and i32 %i.g, 61440
  %i.i = icmp eq i32 %i.h, 32768
  br i1 %i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call zeroext i1 @errstart(i32 noundef %i.a, ptr noundef null) #8
  br i1 %i.j, label %bb.f, label %.sink.split

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @errcode(i32 noundef 22) #8 ; 0 uses
  %i.l = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.10, ptr noundef %0) #8 ; 0 uses
  br label %.sink.split.sink.split

bb.g:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.n = load i32, ptr %i.m, align 4              ; 3 uses
  %i.o = tail call i32 @geteuid() #8
  %i.p = icmp ne i32 %i.n, %i.o
  %i.q = icmp ne i32 %i.n, 0                      ; 2 uses
  %or.cond10 = and i1 %i.q, %i.p
  br i1 %or.cond10, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.r = tail call zeroext i1 @errstart(i32 noundef %i.a, ptr noundef null) #8
  br i1 %i.r, label %bb.i, label %.sink.split

bb.i:                                             ; preds = %bb.h
  %i.s = tail call i32 @errcode(i32 noundef 22) #8 ; 0 uses
  %i.t = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.11, ptr noundef %0) #8 ; 0 uses
  br label %.sink.split.sink.split

bb.j:                                             ; preds = %bb.g
  %i.u = tail call i32 @geteuid() #8
  %i.v = icmp ne i32 %i.n, %i.u
  %i.w = and i32 %i.g, 63
  %.not48 = icmp eq i32 %i.w, 0
  %or.cond50 = or i1 %.not48, %i.v
  br i1 %or.cond50, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.x = and i32 %i.g, 31
  %.not49 = icmp eq i32 %i.x, 0
  %or.cond51 = or i1 %.not49, %i.q
  br i1 %or.cond51, label %.sink.split, label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.y = tail call zeroext i1 @errstart(i32 noundef %i.a, ptr noundef null) #8
  br i1 %i.y, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %bb.l
  %i.z = tail call i32 @errcode(i32 noundef 22) #8 ; 0 uses
  %i.aa = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.12, ptr noundef %0) #8 ; 0 uses
  %i.ab = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.13) #8 ; 0 uses
  br label %.sink.split.sink.split

.sink.split.sink.split:                           ; preds = %bb.c, %bb.f, %bb.i, %bb.m
  %.sink = phi i32 [ 178, %bb.m ], [ 167, %bb.i ], [ 141, %bb.f ], [ 131, %bb.c ]
  tail call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef %.sink, ptr noundef nonnull @__func__.check_ssl_key_file_permissions) #8
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.e, %bb.h, %bb.l, %.sink.split.sink.split, %bb.k
  %.0 = phi i1 [ true, %bb.k ], [ false, %.sink.split.sink.split ], [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.e ], [ false, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret i1 %.0
}

; Function Attrs: nofree nounwind
declare noundef i32 @stat(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @geteuid() local_unnamed_addr #5

declare i32 @errdetail(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 4) i32 @load_hosts(ptr nofree noundef writeonly captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #8
  store ptr null, ptr %i.a, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not33 = icmp eq ptr %1, null
  br i1 %.not33, label %bb.ae, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = load ptr, ptr @HostsFileName, align 8
  %i.c = tail call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.14, ptr noundef %i.b) #8
  store ptr %i.c, ptr %1, align 8
  br label %bb.ae

bb.d:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8
  %i.d = load ptr, ptr @HostsFileName, align 8
  %i.e = tail call ptr @open_auth_file(ptr noundef %i.d, i32 noundef 15, i32 noundef 0, ptr noundef %1) #8 ; 4 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.g = tail call ptr @__errno_location() #9
  %i.h = load i32, ptr %i.g, align 4
  %i.i = icmp eq i32 %i.h, 2
  %. = select i1 %i.i, i32 3, i32 1
  br label %bb.ae

bb.f:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @HostsFileName, align 8
  call void @tokenize_auth_file(ptr noundef %i.j, ptr noundef nonnull %i.e, ptr noundef nonnull %i.a, i32 noundef 15, i32 noundef 0) #8
  %i.k = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4 ; 2 uses
  %.not34 = icmp eq ptr %i.k, null
  br i1 %.not34, label %.critedge.thread, label %.lr.ph

.critedge.thread:                                 ; preds = %bb.f
  call void @free_auth_file(ptr noundef nonnull %i.e, i32 noundef 0) #8
  store ptr null, ptr %0, align 8
  br label %bb.ad

.lr.ph:                                           ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.n = load i32, ptr %i.l, align 4
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph65, label %.critedge

.lr.ph65:                                         ; preds = %.lr.ph, %parse_hosts_line.exit.thread
  %.0234064 = phi ptr [ %.124, %parse_hosts_line.exit.thread ], [ null, %.lr.ph ] ; 12 uses
  %.04163 = phi i1 [ %.1, %parse_hosts_line.exit.thread ], [ true, %.lr.ph ]
  %indvars.iv62 = phi i64 [ %indvars.iv.next, %parse_hosts_line.exit.thread ], [ 0, %.lr.ph ] ; 2 uses
  %i.p = load ptr, ptr %i.m, align 8
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv62
  %i.r = load ptr, ptr %i.q, align 8              ; 10 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %.not37 = icmp eq ptr %i.t, null
  br i1 %.not37, label %bb.g, label %parse_hosts_line.exit.thread

.critedge:                                        ; preds = %parse_hosts_line.exit.thread, %.lr.ph
  %.041.lcssa = phi i1 [ true, %.lr.ph ], [ %.1, %parse_hosts_line.exit.thread ]
  %.02340.lcssa = phi ptr [ null, %.lr.ph ], [ %.124, %parse_hosts_line.exit.thread ] ; 2 uses
  call void @free_auth_file(ptr noundef nonnull %i.e, i32 noundef 0) #8
  store ptr %.02340.lcssa, ptr %0, align 8
  br i1 %.041.lcssa, label %bb.ad, label %bb.ab

bb.g:                                             ; preds = %.lr.ph65
  %i.u = call ptr @palloc0(i64 noundef 80) #8     ; 10 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = call ptr @pstrdup(ptr noundef %i.w) #8
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr %i.x, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %i.aa = load i32, ptr %i.z, align 8
  store i32 %i.aa, ptr %i.u, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = call ptr @pstrdup(ptr noundef %i.ac) #8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr %i.ad, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  store ptr null, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 56 ; 2 uses
  store ptr null, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.u, i64 64 ; 2 uses
  store i8 0, ptr %i.ah, align 8
  %i.ai = load ptr, ptr %i.r, align 8, !nonnull !4, !noundef !4 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8            ; 9 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 3 uses
  %.not191.i = icmp eq ptr %i.al, null
  br i1 %.not191.i, label %.critedge199.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 4 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.ao = load i32, ptr %i.am, align 4            ; 2 uses
  %i.ap = icmp sgt i32 %i.ao, 0
  br i1 %i.ap, label %.lr.ph230.i, label %.critedge199.i

.lr.ph230.i:                                      ; preds = %.lr.ph.i, %bb.h
  %i.aq = phi ptr [ %i.be, %bb.h ], [ null, %.lr.ph.i ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.h ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.ar = phi i32 [ %i.bf, %bb.h ], [ %i.ao, %.lr.ph.i ]
  %i.as = load ptr, ptr %i.an, align 8
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %indvars.iv.i
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = icmp sgt i32 %i.ar, 1
  %.pre.i = load ptr, ptr %i.au, align 8          ; 4 uses
  br i1 %i.av, label %sub_0.i, label %bb.h

sub_0.i:                                          ; preds = %.lr.ph230.i
  %i.aw = load i8, ptr %.pre.i, align 1
  %.not231.i = icmp eq i8 %i.aw, 42
  br i1 %.not231.i, label %.tail.i, label %.tail.thread.i

.tail.i:                                          ; preds = %sub_0.i
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre.i, i64 1
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %.split.i, label %.tail.thread.i

.tail.thread.i:                                   ; preds = %.tail.i, %sub_0.i
  %i.ba = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.pre.i, ptr noundef nonnull dereferenceable(9) @.str.17) #10
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %.split.i, label %bb.h

.split.i:                                         ; preds = %.tail.thread.i, %.tail.i
  %i.bc = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #8
  br i1 %i.bc, label %.critedge.sink.split.i, label %parse_hosts_line.exit.thread

bb.h:                                             ; preds = %.tail.thread.i, %.lr.ph230.i
  %i.bd = call ptr @pstrdup(ptr noundef %.pre.i) #8
  %i.be = call ptr @lappend(ptr noundef %i.aq, ptr noundef %i.bd) #8 ; 2 uses
  store ptr %i.be, ptr %i.af, align 8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.bf = load i32, ptr %i.am, align 4            ; 2 uses
  %i.bg = sext i32 %i.bf to i64
  %i.bh = icmp slt i64 %indvars.iv.next.i, %i.bg
  br i1 %i.bh, label %.lr.ph230.i, label %.critedge199.loopexit.i

.critedge199.loopexit.i:                          ; preds = %bb.h
  %.pre233.i = load ptr, ptr %i.r, align 8        ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %.pre233.i, i64 16
  %.val211.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8
  br label %.critedge199.i

.critedge199.i:                                   ; preds = %.critedge199.loopexit.i, %.lr.ph.i, %bb.g
  %.val211.i.a = phi ptr [ %.val211.pre.i, %.critedge199.loopexit.i ], [ %i.ak, %.lr.ph.i ], [ %i.ak, %bb.g ]
  %2 = phi ptr [ %.pre233.i, %.critedge199.loopexit.i ], [ %i.ai, %.lr.ph.i ], [ %i.ai, %bb.g ]
  %i.bi = getelementptr i8, ptr %2, i64 4
  %.val210.i = load i32, ptr %i.bi, align 4
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %i.bk = sext i32 %.val210.i to i64
  %i.bl = getelementptr inbounds [8 x i8], ptr %.val211.i.a, i64 %i.bk
  %.not.i = icmp ult ptr %i.bj, %i.bl
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.critedge199.i
  %i.bm = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #8
  br i1 %i.bm, label %.critedge.sink.split.i, label %parse_hosts_line.exit.thread

bb.j:                                             ; preds = %.critedge199.i
  %i.bn = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 4
  %i.bp = load i32, ptr %i.bo, align 4
  %i.bq = icmp sgt i32 %i.bp, 1
  br i1 %i.bq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.br = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #8
  br i1 %i.br, label %.critedge.sink.split.i, label %parse_hosts_line.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.bs = getelementptr i8, ptr %i.bn, i64 16
  %.val216.i = load ptr, ptr %i.bs, align 8
  %i.bt = load ptr, ptr %.val216.i, align 8
  %i.bu = load ptr, ptr %i.bt, align 8
  %i.bv = call ptr @pstrdup(ptr noundef %i.bu) #8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store ptr %i.bv, ptr %i.bw, align 8
  %i.bx = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 4
  %.val208.i = load i32, ptr %i.by, align 4
  %i.bz = getelementptr i8, ptr %i.bx, i64 16
  %.val209.i = load ptr, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 2 uses
  %i.cb = sext i32 %.val208.i to i64
  %i.cc = getelementptr inbounds [8 x i8], ptr %.val209.i, i64 %i.cb
  %.not222.i = icmp ult ptr %i.ca, %i.cc
  br i1 %.not222.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #8
  br i1 %i.cd, label %.critedge.sink.split.i, label %parse_hosts_line.exit.thread

bb.n:                                             ; preds = %bb.l
  %i.ce = load ptr, ptr %i.ca, align 8            ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  %i.cg = load i32, ptr %i.cf, align 4
  %i.ch = icmp sgt i32 %i.cg, 1
  br i1 %i.ch, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ci = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #8
  br i1 %i.ci, label %.critedge.sink.split.i, label %parse_hosts_line.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.cj = getelementptr i8, ptr %i.ce, i64 16
  %.val215.i = load ptr, ptr %i.cj, align 8
  %i.ck = load ptr, ptr %.val215.i, align 8
  %i.cl = load ptr, ptr %i.ck, align 8
  %i.cm = call ptr @pstrdup(ptr noundef %i.cl) #8
  %i.cn = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  store ptr %i.cm, ptr %i.cn, align 8
  %i.co = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 4
  %.val206.i = load i32, ptr %i.cp, align 4
  %i.cq = getelementptr i8, ptr %i.co, i64 16
  %.val207.i = load ptr, ptr %i.cq, align 8
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 2 uses
  %i.cs = sext i32 %.val206.i to i64
  %i.ct = getelementptr inbounds [8 x i8], ptr %.val207.i, i64 %i.cs
  %.not223.i = icmp ult ptr %i.cr, %i.ct
  br i1 %.not223.i, label %bb.q, label %parse_hosts_line.exit

bb.q:                                             ; preds = %bb.p
  %i.cu = load ptr, ptr %i.cr, align 8            ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 4
  %i.cw = load i32, ptr %i.cv, align 4
  %i.cx = icmp sgt i32 %i.cw, 1
  br i1 %i.cx, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.cy = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #8
  br i1 %i.cy, label %.critedge.sink.split.i, label %parse_hosts_line.exit.thread

bb.s:                                             ; preds = %bb.q
  %i.cz = getelementptr i8, ptr %i.cu, i64 16
  %.val214.i = load ptr, ptr %i.cz, align 8
  %i.da = load ptr, ptr %.val214.i, align 8
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = call ptr @pstrdup(ptr noundef %i.db) #8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr %i.dc, ptr %i.dd, align 8
  %i.de = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.df = getelementptr i8, ptr %i.de, i64 4
  %.val204.i = load i32, ptr %i.df, align 4
  %i.dg = getelementptr i8, ptr %i.de, i64 16
  %.val205.i = load ptr, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  %i.di = sext i32 %.val204.i to i64
  %i.dj = getelementptr inbounds [8 x i8], ptr %.val205.i, i64 %i.di
  %.not224.i = icmp ult ptr %i.dh, %i.dj
  br i1 %.not224.i, label %bb.t, label %parse_hosts_line.exit

bb.t:                                             ; preds = %bb.s
  %i.dk = load ptr, ptr %i.dh, align 8            ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %i.dm = load i32, ptr %i.dl, align 4
  %i.dn = icmp sgt i32 %i.dm, 1
  br i1 %i.dn, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.do = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #8
  br i1 %i.do, label %.critedge.sink.split.i, label %parse_hosts_line.exit.thread

bb.v:                                             ; preds = %bb.t
  %i.dp = getelementptr i8, ptr %i.dk, i64 16
  %.val213.i = load ptr, ptr %i.dp, align 8
  %i.dq = load ptr, ptr %.val213.i, align 8
  %i.dr = load ptr, ptr %i.dq, align 8
  %i.ds = call ptr @pstrdup(ptr noundef %i.dr) #8
  store ptr %i.ds, ptr %i.ag, align 8
  %i.dt = load ptr, ptr %i.r, align 8             ; 2 uses
  %i.du = getelementptr i8, ptr %i.dt, i64 4
  %.val202.i = load i32, ptr %i.du, align 4
  %i.dv = getelementptr i8, ptr %i.dt, i64 16
  %.val203.i = load ptr, ptr %i.dv, align 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ak, i64 40 ; 2 uses
  %i.dx = sext i32 %.val202.i to i64
  %i.dy = getelementptr inbounds [8 x i8], ptr %.val203.i, i64 %i.dx ; 2 uses
  %.not225.i = icmp ult ptr %i.dw, %i.dy
  br i1 %.not225.i, label %bb.w, label %parse_hosts_line.exit

bb.w:                                             ; preds = %bb.v
  %i.dz = load ptr, ptr %i.dw, align 8            ; 2 uses
  %i.ea = getelementptr i8, ptr %i.dz, i64 16
  %.val212.i = load ptr, ptr %i.ea, align 8
  %i.eb = load ptr, ptr %.val212.i, align 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  %.not226.i = icmp ult ptr %i.ec, %i.dy
  br i1 %.not226.i, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.ed = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #8
  br i1 %i.ed, label %.critedge.sink.split.i, label %parse_hosts_line.exit.thread

bb.y:                                             ; preds = %bb.w
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dz, i64 4
  %i.ef = load i32, ptr %i.ee, align 4
  %i.eg = icmp sgt i32 %i.ef, 1
  br i1 %i.eg, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eh = load ptr, ptr %i.eb, align 8
  %i.ei = call zeroext i1 @parse_bool(ptr noundef %i.eh, ptr noundef nonnull %i.ah) #8
  br i1 %i.ei, label %parse_hosts_line.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.ej = call zeroext i1 @errstart(i32 noundef 15, ptr noundef null) #8
  br i1 %i.ej, label %.critedge.sink.split.i, label %parse_hosts_line.exit.thread

.critedge.sink.split.i:                           ; preds = %bb.aa, %bb.x, %bb.u, %bb.r, %bb.o, %bb.m, %bb.k, %bb.i, %.split.i
  %.str.18.sink.i = phi ptr [ @.str.18, %.split.i ], [ @.str.25, %bb.x ], [ @.str.24, %bb.u ], [ @.str.23, %bb.r ], [ @.str.22, %bb.o ], [ @.str.20, %bb.m ], [ @.str.21, %bb.k ], [ @.str.20, %bb.i ], [ @.str.26, %bb.aa ]
  %.sink.i = phi i32 [ 224, %.split.i ], [ 335, %bb.x ], [ 307, %bb.u ], [ 290, %bb.r ], [ 273, %bb.o ], [ 263, %bb.m ], [ 249, %bb.k ], [ 239, %bb.i ], [ 345, %bb.aa ]
  %i.ek = call i32 @errcode(i32 noundef 22) #8    ; 0 uses
  %i.el = call i32 (ptr, ...) @errmsg(ptr noundef nonnull %.str.18.sink.i) #8 ; 0 uses
  %i.em = call i32 @set_errcontext_domain(ptr noundef null) #8 ; 0 uses
  %i.en = load i32, ptr %i.z, align 8
  %i.eo = load ptr, ptr %i.v, align 8
  %i.ep = call i32 (ptr, ...) @errcontext_msg(ptr noundef nonnull @.str.19, i32 noundef %i.en, ptr noundef %i.eo) #8 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.4, i32 noundef %.sink.i, ptr noundef nonnull @__func__.parse_hosts_line) #8
  br label %parse_hosts_line.exit.thread

parse_hosts_line.exit:                            ; preds = %bb.z, %bb.v, %bb.s, %bb.p
  %i.eq = call ptr @lappend(ptr noundef %.0234064, ptr noundef nonnull %i.u) #8
  br label %parse_hosts_line.exit.thread

parse_hosts_line.exit.thread:                     ; preds = %.critedge.sink.split.i, %.split.i, %bb.k, %bb.o, %bb.aa, %bb.x, %bb.u, %bb.r, %bb.m, %bb.i, %.lr.ph65, %parse_hosts_line.exit
  %.124 = phi ptr [ %i.eq, %parse_hosts_line.exit ], [ %.0234064, %.lr.ph65 ], [ %.0234064, %bb.i ], [ %.0234064, %bb.m ], [ %.0234064, %bb.r ], [ %.0234064, %bb.u ], [ %.0234064, %bb.x ], [ %.0234064, %bb.aa ], [ %.0234064, %bb.o ], [ %.0234064, %bb.k ], [ %.0234064, %.split.i ], [ %.0234064, %.critedge.sink.split.i ] ; 2 uses
  %.1 = phi i1 [ %.04163, %parse_hosts_line.exit ], [ false, %.lr.ph65 ], [ false, %bb.i ], [ false, %bb.m ], [ false, %bb.r ], [ false, %bb.u ], [ false, %bb.x ], [ false, %bb.aa ], [ false, %bb.o ], [ false, %bb.k ], [ false, %.split.i ], [ false, %.critedge.sink.split.i ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv62, 1 ; 2 uses
  %i.er = load i32, ptr %i.l, align 4
  %i.es = sext i32 %i.er to i64
  %i.et = icmp slt i64 %indvars.iv.next, %i.es
  br i1 %i.et, label %.lr.ph65, label %.critedge

bb.ab:                                            ; preds = %.critedge
  %.not36 = icmp eq ptr %1, null
  br i1 %.not36, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.eu = load ptr, ptr @HostsFileName, align 8
  %i.ev = call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.15, ptr noundef %i.eu) #8
  store ptr %i.ev, ptr %1, align 8
  br label %bb.ae

bb.ad:                                            ; preds = %.critedge.thread, %.critedge
  %.023.lcssa61 = phi ptr [ null, %.critedge.thread ], [ %.02340.lcssa, %.critedge ]
  %i.ew = icmp eq ptr %.023.lcssa61, null
  %.38 = select i1 %i.ew, i32 2, i32 0
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab, %bb.ac, %bb.e, %bb.b, %bb.c
end_hunk_0
