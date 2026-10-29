Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/user?download=true
inline.NumInlined: 103
inline.NumDeleted: 24
begin_hunk_0_@AlterRole:bb.a

bb.f:                                             ; preds = %bb.e
  tail call void @errorConflictingDefElem(ptr noundef nonnull %i.q, ptr noundef %0) #14
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.x = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(8) @.str.8) #12
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %.not239 = icmp eq ptr %.0196410852, null
  br i1 %.not239, label %bb.aj, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @errorConflictingDefElem(ptr noundef nonnull %i.q, ptr noundef %0) #14
  unreachable

bb.j:                                             ; preds = %bb.g
  %i.z = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(11) @.str.9) #12
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.not238 = icmp eq ptr %.0194411851, null
  br i1 %.not238, label %bb.aj, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @errorConflictingDefElem(ptr noundef nonnull %i.q, ptr noundef %0) #14
  unreachable

bb.m:                                             ; preds = %bb.j
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(9) @.str.10) #12
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %.not237 = icmp eq ptr %.0192412850, null
  br i1 %.not237, label %bb.aj, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void @errorConflictingDefElem(ptr noundef nonnull %i.q, ptr noundef %0) #14
  unreachable

bb.p:                                             ; preds = %bb.m
  %i.ad = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(9) @.str.11) #12
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %.not236 = icmp eq ptr %.0190413849, null
  br i1 %.not236, label %bb.aj, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @errorConflictingDefElem(ptr noundef nonnull %i.q, ptr noundef %0) #14
  unreachable

bb.s:                                             ; preds = %bb.p
  %i.af = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(14) @.str.12) #12
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %.not235 = icmp eq ptr %.0188414848, null
  br i1 %.not235, label %bb.aj, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @errorConflictingDefElem(ptr noundef nonnull %i.q, ptr noundef %0) #14
  unreachable

bb.v:                                             ; preds = %bb.s
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(16) @.str.13) #12
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %.not234 = icmp eq ptr %.0186415847, null
  br i1 %.not234, label %bb.aj, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @errorConflictingDefElem(ptr noundef nonnull %i.q, ptr noundef %0) #14
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(12) @.str.15) #12
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %bb.z, label %bb.ac

bb.z:                                             ; preds = %bb.y
  %i.al = load i32, ptr %i.n, align 8
  %.not230 = icmp eq i32 %i.al, 0
  br i1 %.not230, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %.not233 = icmp eq ptr %.0184416846, null
  br i1 %.not233, label %bb.aj, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @errorConflictingDefElem(ptr noundef nonnull %i.q, ptr noundef %0) #14
  unreachable

bb.ac:                                            ; preds = %bb.z, %bb.y
  %i.am = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(11) @.str.17) #12
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %.not232 = icmp eq ptr %.0182417845, null
  br i1 %.not232, label %bb.aj, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @errorConflictingDefElem(ptr noundef nonnull %i.q, ptr noundef %0) #14
  unreachable

bb.af:                                            ; preds = %bb.ac
  %i.ao = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(10) @.str.18) #12
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %.not231 = icmp eq ptr %.0418844, null
  br i1 %.not231, label %bb.aj, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void @errorConflictingDefElem(ptr noundef nonnull %i.q, ptr noundef %0) #14
  unreachable

bb.ai:                                            ; preds = %bb.af
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.ar = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.as = load ptr, ptr %i.aq, align 8
  %i.at = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.19, ptr noundef %i.as) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 735, ptr noundef nonnull @__func__.AlterRole) #11
  unreachable

bb.aj:                                            ; preds = %bb.ag, %bb.ad, %bb.aa, %bb.w, %bb.t, %bb.q, %bb.n, %bb.k, %bb.h, %bb.e, %bb.b
  %.1201 = phi ptr [ %.0200408854, %bb.ad ], [ %i.q, %bb.b ], [ %.0200408854, %bb.e ], [ %.0200408854, %bb.h ], [ %.0200408854, %bb.k ], [ %.0200408854, %bb.n ], [ %.0200408854, %bb.q ], [ %.0200408854, %bb.t ], [ %.0200408854, %bb.w ], [ %.0200408854, %bb.aa ], [ %.0200408854, %bb.ag ] ; 2 uses
  %.1199 = phi ptr [ %.0198409853, %bb.ad ], [ %.0198409853, %bb.b ], [ %i.q, %bb.e ], [ %.0198409853, %bb.h ], [ %.0198409853, %bb.k ], [ %.0198409853, %bb.n ], [ %.0198409853, %bb.q ], [ %.0198409853, %bb.t ], [ %.0198409853, %bb.w ], [ %.0198409853, %bb.aa ], [ %.0198409853, %bb.ag ] ; 2 uses
  %.1197 = phi ptr [ %.0196410852, %bb.ad ], [ %.0196410852, %bb.b ], [ %.0196410852, %bb.e ], [ %i.q, %bb.h ], [ %.0196410852, %bb.k ], [ %.0196410852, %bb.n ], [ %.0196410852, %bb.q ], [ %.0196410852, %bb.t ], [ %.0196410852, %bb.w ], [ %.0196410852, %bb.aa ], [ %.0196410852, %bb.ag ] ; 2 uses
  %.1195 = phi ptr [ %.0194411851, %bb.ad ], [ %.0194411851, %bb.b ], [ %.0194411851, %bb.e ], [ %.0194411851, %bb.h ], [ %i.q, %bb.k ], [ %.0194411851, %bb.n ], [ %.0194411851, %bb.q ], [ %.0194411851, %bb.t ], [ %.0194411851, %bb.w ], [ %.0194411851, %bb.aa ], [ %.0194411851, %bb.ag ] ; 2 uses
  %.1193 = phi ptr [ %.0192412850, %bb.ad ], [ %.0192412850, %bb.b ], [ %.0192412850, %bb.e ], [ %.0192412850, %bb.h ], [ %.0192412850, %bb.k ], [ %i.q, %bb.n ], [ %.0192412850, %bb.q ], [ %.0192412850, %bb.t ], [ %.0192412850, %bb.w ], [ %.0192412850, %bb.aa ], [ %.0192412850, %bb.ag ] ; 2 uses
  %.1191 = phi ptr [ %.0190413849, %bb.ad ], [ %.0190413849, %bb.b ], [ %.0190413849, %bb.e ], [ %.0190413849, %bb.h ], [ %.0190413849, %bb.k ], [ %.0190413849, %bb.n ], [ %i.q, %bb.q ], [ %.0190413849, %bb.t ], [ %.0190413849, %bb.w ], [ %.0190413849, %bb.aa ], [ %.0190413849, %bb.ag ] ; 2 uses
  %.1189 = phi ptr [ %.0188414848, %bb.ad ], [ %.0188414848, %bb.b ], [ %.0188414848, %bb.e ], [ %.0188414848, %bb.h ], [ %.0188414848, %bb.k ], [ %.0188414848, %bb.n ], [ %.0188414848, %bb.q ], [ %i.q, %bb.t ], [ %.0188414848, %bb.w ], [ %.0188414848, %bb.aa ], [ %.0188414848, %bb.ag ] ; 2 uses
  %.1187 = phi ptr [ %.0186415847, %bb.ad ], [ %.0186415847, %bb.b ], [ %.0186415847, %bb.e ], [ %.0186415847, %bb.h ], [ %.0186415847, %bb.k ], [ %.0186415847, %bb.n ], [ %.0186415847, %bb.q ], [ %.0186415847, %bb.t ], [ %i.q, %bb.w ], [ %.0186415847, %bb.aa ], [ %.0186415847, %bb.ag ] ; 2 uses
  %.1185 = phi ptr [ %.0184416846, %bb.ad ], [ %.0184416846, %bb.b ], [ %.0184416846, %bb.e ], [ %.0184416846, %bb.h ], [ %.0184416846, %bb.k ], [ %.0184416846, %bb.n ], [ %.0184416846, %bb.q ], [ %.0184416846, %bb.t ], [ %.0184416846, %bb.w ], [ %i.q, %bb.aa ], [ %.0184416846, %bb.ag ] ; 2 uses
  %.1183 = phi ptr [ %i.q, %bb.ad ], [ %.0182417845, %bb.b ], [ %.0182417845, %bb.e ], [ %.0182417845, %bb.h ], [ %.0182417845, %bb.k ], [ %.0182417845, %bb.n ], [ %.0182417845, %bb.q ], [ %.0182417845, %bb.t ], [ %.0182417845, %bb.w ], [ %.0182417845, %bb.aa ], [ %.0182417845, %bb.ag ] ; 2 uses
  %.1 = phi ptr [ %.0418844, %bb.ad ], [ %.0418844, %bb.b ], [ %.0418844, %bb.e ], [ %.0418844, %bb.h ], [ %.0418844, %bb.k ], [ %.0418844, %bb.n ], [ %.0418844, %bb.q ], [ %.0418844, %bb.t ], [ %.0418844, %bb.w ], [ %.0418844, %bb.aa ], [ %i.q, %bb.ag ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv843, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph855

bb.ak:                                            ; preds = %.critedge
  %i.au = getelementptr inbounds nuw i8, ptr %.0200408.lcssa, i64 24
  %i.av = load ptr, ptr %i.au, align 8            ; 2 uses
  %.not216 = icmp eq ptr %i.av, null
  br i1 %.not216, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak, %.critedge
  %.0200.lcssa474 = phi ptr [ %.0200408.lcssa, %bb.al ], [ %.0200408.lcssa, %bb.ak ], [ null, %.critedge ] ; 2 uses
  %.0205 = phi ptr [ %i.ax, %bb.al ], [ null, %bb.ak ], [ null, %.critedge ] ; 2 uses
  %.not695 = icmp ne ptr %.0186415.lcssa, null    ; 3 uses
  br i1 %.not695, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.ay = getelementptr inbounds nuw i8, ptr %.0186415.lcssa, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  %i.bb = load i32, ptr %i.ba, align 4            ; 3 uses
  %i.bc = icmp slt i32 %i.bb, -1
  br i1 %i.bc, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.bd = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.be = tail call i32 @errcode(i32 noundef 50856066) #11 ; 0 uses
  %i.bf = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.20, i32 noundef %i.bb) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 746, ptr noundef nonnull @__func__.AlterRole) #11
  unreachable

bb.ap:                                            ; preds = %bb.an, %bb.am
  %.0204 = phi i32 [ %i.bb, %bb.an ], [ -1, %bb.am ] ; 2 uses
  %.not696 = icmp eq ptr %.0182417.lcssa, null
  br i1 %.not696, label %.thread511, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.bg = getelementptr inbounds nuw i8, ptr %.0182417.lcssa, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = ptrtoint ptr %i.bj to i64
  br label %.thread511

.thread511:                                       ; preds = %bb.a, %bb.aq, %bb.ap
  %i.bl = phi i1 [ true, %bb.aq ], [ false, %bb.ap ], [ false, %bb.a ] ; 2 uses
  %.0204536 = phi i32 [ %.0204, %bb.aq ], [ %.0204, %bb.ap ], [ -1, %bb.a ]
  %.not215485499535 = phi i1 [ %.not215, %bb.aq ], [ %.not215, %bb.ap ], [ true, %bb.a ] ; 2 uses
  %.0.lcssa484500534 = phi ptr [ %.0418.lcssa, %bb.aq ], [ %.0418.lcssa, %bb.ap ], [ null, %bb.a ] ; 4 uses
  %.0184.lcssa482502533 = phi ptr [ %.0184416.lcssa, %bb.aq ], [ %.0184416.lcssa, %bb.ap ], [ null, %bb.a ] ; 2 uses
  %.0188.lcssa480503532 = phi ptr [ %.0188414.lcssa, %bb.aq ], [ %.0188414.lcssa, %bb.ap ], [ null, %bb.a ] ; 4 uses
  %.0190.lcssa479504531 = phi ptr [ %.0190413.lcssa, %bb.aq ], [ %.0190413.lcssa, %bb.ap ], [ null, %bb.a ] ; 3 uses
  %.0192.lcssa478505530 = phi ptr [ %.0192412.lcssa, %bb.aq ], [ %.0192412.lcssa, %bb.ap ], [ null, %bb.a ] ; 4 uses
  %.0194.lcssa477506529 = phi ptr [ %.0194411.lcssa, %bb.aq ], [ %.0194411.lcssa, %bb.ap ], [ null, %bb.a ] ; 3 uses
  %.0196.lcssa476507528 = phi ptr [ %.0196410.lcssa, %bb.aq ], [ %.0196410.lcssa, %bb.ap ], [ null, %bb.a ] ; 3 uses
  %.0198.lcssa475508527 = phi ptr [ %.0198409.lcssa, %bb.aq ], [ %.0198409.lcssa, %bb.ap ], [ null, %bb.a ] ; 2 uses
  %.0200.lcssa474509526 = phi ptr [ %.0200.lcssa474, %bb.aq ], [ %.0200.lcssa474, %bb.ap ], [ null, %bb.a ]
  %.0205510525 = phi ptr [ %.0205, %bb.aq ], [ %.0205, %bb.ap ], [ null, %bb.a ] ; 6 uses
  %i.bm = phi i1 [ %.not695, %bb.aq ], [ %.not695, %bb.ap ], [ false, %bb.a ] ; 2 uses
  %.0203 = phi i64 [ %i.bk, %bb.aq ], [ 0, %bb.ap ], [ 0, %bb.a ]
  %i.bn = tail call ptr @table_open(i32 noundef 1260, i32 noundef 3) #11 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bp = load ptr, ptr %i.bo, align 8
  %i.bq = load ptr, ptr %i.g, align 8
  %i.br = tail call ptr @get_rolespec_tuple(ptr noundef %i.bq) #11 ; 5 uses
  %i.bs = getelementptr i8, ptr %i.br, i64 16
  %.val = load ptr, ptr %i.bs, align 8            ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.val, i64 22
  %i.bu = load i8, ptr %i.bt, align 2
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bv ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  %i.by = tail call ptr @pstrdup(ptr noundef nonnull %i.bx) #11 ; 7 uses
  %i.bz = load i32, ptr %i.bw, align 4            ; 8 uses
  %i.ca = tail call zeroext i1 @superuser() #11
  br i1 %i.ca, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %.thread511
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bw, i64 68
  %i.cc = load i8, ptr %i.cb, align 4, !range !5, !noundef !6
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.ce = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.cf = tail call i32 @errcode(i32 noundef 16797828) #11 ; 0 uses
  %i.cg = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.35) #11 ; 0 uses
  %i.ch = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.25) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 768, ptr noundef nonnull @__func__.AlterRole) #11
  unreachable

bb.at:                                            ; preds = %bb.ar, %.thread511
  %i.ci = tail call zeroext i1 @superuser() #11
  %i.cj = icmp eq ptr %.0198.lcssa475508527, null ; 2 uses
  %or.cond.not = select i1 %i.ci, i1 true, i1 %i.cj
  br i1 %or.cond.not, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ck = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.cl = tail call i32 @errcode(i32 noundef 16797828) #11 ; 0 uses
  %i.cm = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.35) #11 ; 0 uses
  %i.cn = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.25) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 774, ptr noundef nonnull @__func__.AlterRole) #11
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.co = tail call i32 @GetUserId() #11
  %i.cp = tail call zeroext i1 @has_createrole_privilege(i32 noundef %i.co) #11
  br i1 %i.cp, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.cq = tail call i32 @GetUserId() #11
  %i.cr = tail call zeroext i1 @is_admin_of_role(i32 noundef %i.cq, i32 noundef %i.bz) #11
  br i1 %i.cr, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.cs = insertelement <4 x ptr> poison, ptr %.0196.lcssa476507528, i64 0
  %i.ct = insertelement <4 x ptr> %i.cs, ptr %.0194.lcssa477506529, i64 1
  %i.cu = insertelement <4 x ptr> %i.ct, ptr %.0192.lcssa478505530, i64 2
  %i.cv = insertelement <4 x ptr> %i.cu, ptr %.0190.lcssa479504531, i64 3
  %.fr = freeze <4 x ptr> %i.cv
  %i.cw = icmp ne <4 x ptr> %.fr, splat (ptr null)
  %i.cx = icmp ne ptr %.0188.lcssa480503532, null
  %i.cy = icmp ne ptr %.0.lcssa484500534, null
  %i.cz = bitcast <4 x i1> %i.cw to i4
  %i.da = icmp ne i4 %i.cz, 0
  %i.db = or i1 %i.da, %i.bm
  %i.dc = or i1 %i.db, %i.bl
  %op.rdx867 = select i1 %i.dc, i1 true, i1 %i.cx
  %op.rdx868 = select i1 %op.rdx867, i1 true, i1 %i.cy
  br i1 %op.rdx868, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.dd = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.de = tail call i32 @errcode(i32 noundef 16797828) #11 ; 0 uses
  %i.df = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.35) #11 ; 0 uses
  %i.dg = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.39, ptr noundef %i.by) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 790, ptr noundef nonnull @__func__.AlterRole) #11
  unreachable

bb.az:                                            ; preds = %bb.ax
  %.not = icmp eq i32 %i.bz, %i.f
  %or.cond = select i1 %.not215485499535, i1 true, i1 %.not
  br i1 %or.cond, label %bb.bl, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.dh = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.di = tail call i32 @errcode(i32 noundef 16797828) #11 ; 0 uses
  %i.dj = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.35) #11 ; 0 uses
  %i.dk = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.39) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 798, ptr noundef nonnull @__func__.AlterRole) #11
  unreachable

bb.bb:                                            ; preds = %bb.aw
  %i.dl = tail call zeroext i1 @superuser() #11
  br i1 %i.dl, label %bb.bl, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %.not218 = icmp eq ptr %.0192.lcssa478505530, null
  br i1 %.not218, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.dm = tail call zeroext i1 @have_createdb_privilege() #11
  br i1 %i.dm, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.dn = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.do = tail call i32 @errcode(i32 noundef 16797828) #11 ; 0 uses
  %i.dp = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.35) #11 ; 0 uses
  %i.dq = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.26) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 812, ptr noundef nonnull @__func__.AlterRole) #11
  unreachable

bb.bf:                                            ; preds = %bb.bd, %bb.bc
  %.not219 = icmp eq ptr %.0188.lcssa480503532, null
  br i1 %.not219, label %bb.bi, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.dr = tail call zeroext i1 @has_rolreplication(i32 noundef %i.f) #11
  br i1 %i.dr, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ds = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.dt = tail call i32 @errcode(i32 noundef 16797828) #11 ; 0 uses
  %i.du = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.35) #11 ; 0 uses
  %i.dv = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.27) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 818, ptr noundef nonnull @__func__.AlterRole) #11
  unreachable

bb.bi:                                            ; preds = %bb.bg, %bb.bf
  %.not220 = icmp eq ptr %.0.lcssa484500534, null
  br i1 %.not220, label %bb.bl, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.dw = tail call zeroext i1 @has_bypassrls_privilege(i32 noundef %i.f) #11
  br i1 %i.dw, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.dx = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.dy = tail call i32 @errcode(i32 noundef 16797828) #11 ; 0 uses
  %i.dz = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.35) #11 ; 0 uses
  %i.ea = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.28) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 824, ptr noundef nonnull @__func__.AlterRole) #11
  unreachable

bb.bl:                                            ; preds = %bb.bb, %bb.bj, %bb.bi, %bb.az
  %.not221 = icmp eq ptr %.0184.lcssa482502533, null ; 2 uses
  br i1 %.not221, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.eb = tail call zeroext i1 @is_admin_of_role(i32 noundef %i.f, i32 noundef %i.bz) #11
  br i1 %i.eb, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.ec = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.ed = tail call i32 @errcode(i32 noundef 16797828) #11 ; 0 uses
  %i.ee = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.35) #11 ; 0 uses
  %i.ef = tail call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, ptr noundef %i.by) #11 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 833, ptr noundef nonnull @__func__.AlterRole) #11
  unreachable

bb.bo:                                            ; preds = %bb.bm, %bb.bl
  br i1 %i.bl, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %i.eg = tail call i64 @DirectFunctionCall3Coll(ptr noundef nonnull @timestamptz_in, i32 noundef 0, i64 noundef %.0203, i64 noundef 0, i64 noundef -1) #11
  store i8 0, ptr %i.d, align 1
  br label %bb.br

bb.bq:                                            ; preds = %bb.bo
  %i.eh = call i64 @SysCacheGetAttr(i32 noundef 10, ptr noundef nonnull %i.br, i16 noundef signext 12, ptr noundef nonnull %i.d) #11
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %.0202 = phi i64 [ %i.eg, %bb.bp ], [ %i.eh, %bb.bq ] ; 2 uses
  %i.ei = load ptr, ptr @check_password_hook, align 8 ; 2 uses
  %i.ej = icmp ne ptr %i.ei, null
  %i.ek = icmp ne ptr %.0205510525, null          ; 2 uses
  %or.cond17 = select i1 %i.ej, i1 %i.ek, i1 false
  br i1 %or.cond17, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.el = call i32 @get_password_type(ptr noundef nonnull %.0205510525) #11
  %i.em = load i8, ptr %i.d, align 1, !range !5, !noundef !6
  %i.en = trunc nuw i8 %i.em to i1
  call void %i.ei(ptr noundef %i.by, ptr noundef nonnull %.0205510525, i32 noundef %i.el, i64 noundef %.0202, i1 noundef zeroext %i.en) #11
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  br i1 %i.cj, label %bb.bx, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.eo = getelementptr inbounds nuw i8, ptr %.0198.lcssa475508527, i64 24
  %i.ep = load ptr, ptr %i.eo, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.er = load i8, ptr %i.eq, align 4, !range !5, !noundef !6 ; 2 uses
  %i.es = trunc nuw i8 %i.er to i1
  %i.et = icmp ne i32 %i.bz, 10
  %or.cond20.not = select i1 %i.es, i1 true, i1 %i.et
  br i1 %or.cond20.not, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.eu = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #13 ; 0 uses
  %i.ev = call i32 @errcode(i32 noundef 1088) #11 ; 0 uses
  %i.ew = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.35) #11 ; 0 uses
  %i.ex = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.25) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 878, ptr noundef nonnull @__func__.AlterRole) #11
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.ey = zext nneg i8 %i.er to i64
  %i.ez = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.ey, ptr %i.ez, align 16
  %i.fa = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i8 1, ptr %i.fa, align 1
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bt
  %.not223 = icmp eq ptr %.0196.lcssa476507528, null
  br i1 %.not223, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.fb = getelementptr inbounds nuw i8, ptr %.0196.lcssa476507528, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 4
  %i.fe = load i8, ptr %i.fd, align 4, !range !5, !noundef !6
  %i.ff = zext nneg i8 %i.fe to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.ff, ptr %i.fg, align 8
  %i.fh = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  store i8 1, ptr %i.fh, align 1
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx
  %.not224 = icmp eq ptr %.0194.lcssa477506529, null
  br i1 %.not224, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.fi = getelementptr inbounds nuw i8, ptr %.0194.lcssa477506529, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 4
  %i.fl = load i8, ptr %i.fk, align 4, !range !5, !noundef !6
  %i.fm = zext nneg i8 %i.fl to i64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.fm, ptr %i.fn, align 16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i8 1, ptr %i.fo, align 1
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.not225 = icmp eq ptr %.0192.lcssa478505530, null
  br i1 %.not225, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.fp = getelementptr inbounds nuw i8, ptr %.0192.lcssa478505530, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 4
  %i.fs = load i8, ptr %i.fr, align 4, !range !5, !noundef !6
  %i.ft = zext nneg i8 %i.fs to i64
  %i.fu = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %i.ft, ptr %i.fu, align 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  store i8 1, ptr %i.fv, align 1
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.not226 = icmp eq ptr %.0190.lcssa479504531, null
  br i1 %.not226, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.fw = getelementptr inbounds nuw i8, ptr %.0190.lcssa479504531, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fx, i64 4
  %i.fz = load i8, ptr %i.fy, align 4, !range !5, !noundef !6
  %i.ga = zext nneg i8 %i.fz to i64
  %i.gb = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i64 %i.ga, ptr %i.gb, align 16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  store i8 1, ptr %i.gc, align 1
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.cd
  %.not227 = icmp eq ptr %.0188.lcssa480503532, null
  br i1 %.not227, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.gd = getelementptr inbounds nuw i8, ptr %.0188.lcssa480503532, i64 24
  %i.ge = load ptr, ptr %i.gd, align 8
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  %i.gg = load i8, ptr %i.gf, align 4, !range !5, !noundef !6
  %i.gh = zext nneg i8 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %i.gh, ptr %i.gi, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  store i8 1, ptr %i.gj, align 1
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  br i1 %i.bm, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.gk = sext i32 %.0204536 to i64
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %i.gk, ptr %i.gl, align 8
  %i.gm = getelementptr inbounds nuw i8, ptr %i.c, i64 9
  store i8 1, ptr %i.gm, align 1
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  br i1 %i.ek, label %bb.ck, label %bb.cr

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #11
  store ptr null, ptr %i.e, align 8
  %i.gn = load i8, ptr %.0205510525, align 1
  %i.go = icmp eq i8 %i.gn, 0
  br i1 %i.go, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.gp = call i32 @plain_crypt_verify(ptr noundef %i.by, ptr noundef nonnull %.0205510525, ptr noundef nonnull @.str, ptr noundef nonnull %i.e) #11
  %i.gq = icmp eq i32 %i.gp, 0
  br i1 %i.gq, label %bb.cm, label %bb.cp

bb.cm:                                            ; preds = %bb.cl, %bb.ck
  %i.gr = call zeroext i1 @errstart(i32 noundef 18, ptr noundef null) #11
  br i1 %i.gr, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %bb.cm
  %i.gs = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.32) #11 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.3, i32 noundef 931, ptr noundef nonnull @__func__.AlterRole) #11
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %bb.cm
  %i.gt = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 1, ptr %i.gt, align 1
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cl
  %i.gu = load i32, ptr @Password_encryption, align 4
  %i.gv = call ptr @encrypt_password(i32 noundef %i.gu, ptr noundef %i.by, ptr noundef nonnull %.0205510525) #11
  %i.gw = call ptr @cstring_to_text(ptr noundef %i.gv) #11
  %i.gx = ptrtoint ptr %i.gw to i64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 %i.gx, ptr %i.gy, align 16
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %i.gz = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store i8 1, ptr %i.gz, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #11
  br label %bb.cr

bb.cr:                                            ; preds = %bb.cq, %bb.cj
  br i1 %.not215485499535, label %bb.cu, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.ha = getelementptr inbounds nuw i8, ptr %.0200.lcssa474509526, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8
  %i.hc = icmp eq ptr %i.hb, null
  br i1 %i.hc, label %bb.ct, label %bb.cu

bb.ct:                                            ; preds = %bb.cs
  %i.hd = getelementptr inbounds nuw i8, ptr %i.c, i64 10
  store i8 1, ptr %i.hd, align 1
  %i.he = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  store i8 1, ptr %i.he, align 1
  br label %bb.cu

bb.cu:                                            ; preds = %bb.ct, %bb.cs, %bb.cr
  %i.hf = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i64 %.0202, ptr %i.hf, align 8
  %i.hg = load i8, ptr %i.d, align 1, !range !5, !noundef !6
  %i.hh = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  store i8 %i.hg, ptr %i.hh, align 1
  %i.hi = getelementptr inbounds nuw i8, ptr %i.c, i64 11
  store i8 1, ptr %i.hi, align 1
  %.not228 = icmp eq ptr %.0.lcssa484500534, null
  br i1 %.not228, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.hj = getelementptr inbounds nuw i8, ptr %.0.lcssa484500534, i64 24
  %i.hk = load ptr, ptr %i.hj, align 8
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 4
  %i.hm = load i8, ptr %i.hl, align 4, !range !5, !noundef !6
  %i.hn = zext nneg i8 %i.hm to i64
  %i.ho = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %i.hn, ptr %i.ho, align 16
  %i.hp = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 1, ptr %i.hp, align 1
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.hq = call ptr @heap_modify_tuple(ptr noundef nonnull %i.br, ptr noundef %i.bp, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #11 ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  call void @CatalogTupleUpdate(ptr noundef nonnull %i.bn, ptr noundef nonnull %i.hr, ptr noundef %i.hq) #11
  %i.hs = load ptr, ptr @object_access_hook, align 8
  %.not229 = icmp eq ptr %i.hs, null
  br i1 %.not229, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  call void @RunObjectPostAlterHook(i32 noundef 1260, i32 noundef %i.bz, i32 noundef 0, i32 noundef 0, i1 noundef zeroext false) #11
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  call void @ReleaseSysCache(ptr noundef nonnull %i.br) #11
  call void @heap_freetuple(ptr noundef %i.hq) #11
  store i32 0, ptr %2, align 4
  %i.ht = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i8 0, ptr %i.ht, align 4
  %i.hu = getelementptr inbounds nuw i8, ptr %2, i64 5
  store i8 0, ptr %i.hu, align 1
  %i.hv = getelementptr inbounds nuw i8, ptr %2, i64 6
  store i8 1, ptr %i.hv, align 2
  br i1 %.not221, label %bb.dc, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.hw = getelementptr inbounds nuw i8, ptr %.0184.lcssa482502533, i64 24
  %i.hx = load ptr, ptr %i.hw, align 8            ; 8 uses
  call void @CommandCounterIncrement() #11
  %i.hy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hz = load i32, ptr %i.hy, align 8
  switch i32 %i.hz, label %bb.dc [
    i32 1, label %bb.da
    i32 -1, label %bb.db
  ]

bb.da:                                            ; preds = %bb.cz
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hx, i64 4 ; 2 uses
  %.not.i = icmp eq ptr %i.hx, null
  br i1 %.not.i, label %roleSpecsToIds.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.da
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.ic = load i32, ptr %i.ia, align 4
  %i.id = icmp sgt i32 %i.ic, 0
  br i1 %i.id, label %.lr.ph19.i, label %roleSpecsToIds.exit

.lr.ph19.i:                                       ; preds = %.lr.ph.i, %.lr.ph19.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph19.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.01317.i = phi ptr [ %i.ii, %.lr.ph19.i ], [ null, %.lr.ph.i ]
  %i.ie = load ptr, ptr %i.ib, align 8
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.ie, i64 %indvars.iv.i
  %i.ig = load ptr, ptr %i.if, align 8
  %i.ih = call i32 @get_rolespec_oid(ptr noundef %i.ig, i1 noundef zeroext false) #11
  %i.ii = call ptr @lappend_oid(ptr noundef %.01317.i, i32 noundef %i.ih) #11 ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ij = load i32, ptr %i.ia, align 4
  %i.ik = sext i32 %i.ij to i64
  %i.il = icmp slt i64 %indvars.iv.next.i, %i.ik
  br i1 %i.il, label %.lr.ph19.i, label %roleSpecsToIds.exit

roleSpecsToIds.exit:                              ; preds = %.lr.ph19.i, %bb.da, %.lr.ph.i
  %.0.lcssa.i = phi ptr [ null, %bb.da ], [ null, %.lr.ph.i ], [ %i.ii, %.lr.ph19.i ]
  call fastcc void @AddRoleMems(i32 noundef %i.f, ptr noundef %i.by, i32 noundef %i.bz, ptr noundef %i.hx, ptr noundef %.0.lcssa.i, i32 noundef 0, ptr noundef nonnull %2)
  br label %bb.dc

bb.db:                                            ; preds = %bb.cz
  %i.im = getelementptr inbounds nuw i8, ptr %i.hx, i64 4 ; 2 uses
  %.not.i242 = icmp eq ptr %i.hx, null
  br i1 %.not.i242, label %roleSpecsToIds.exit249, label %.lr.ph.i243

.lr.ph.i243:                                      ; preds = %bb.db
  %i.in = getelementptr inbounds nuw i8, ptr %i.hx, i64 16
  %i.io = load i32, ptr %i.im, align 4
  %i.ip = icmp sgt i32 %i.io, 0
  br i1 %i.ip, label %.lr.ph19.i245, label %roleSpecsToIds.exit249

.lr.ph19.i245:                                    ; preds = %.lr.ph.i243, %.lr.ph19.i245
  %indvars.iv.i246 = phi i64 [ %indvars.iv.next.i248, %.lr.ph19.i245 ], [ 0, %.lr.ph.i243 ] ; 2 uses
  %.01317.i247 = phi ptr [ %i.iu, %.lr.ph19.i245 ], [ null, %.lr.ph.i243 ]
  %i.iq = load ptr, ptr %i.in, align 8
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %i.iq, i64 %indvars.iv.i246
  %i.is = load ptr, ptr %i.ir, align 8
  %i.it = call i32 @get_rolespec_oid(ptr noundef %i.is, i1 noundef zeroext false) #11
  %i.iu = call ptr @lappend_oid(ptr noundef %.01317.i247, i32 noundef %i.it) #11 ; 2 uses
  %indvars.iv.next.i248 = add nuw nsw i64 %indvars.iv.i246, 1 ; 2 uses
  %i.iv = load i32, ptr %i.im, align 4
  %i.iw = sext i32 %i.iv to i64
  %i.ix = icmp slt i64 %indvars.iv.next.i248, %i.iw
  br i1 %i.ix, label %.lr.ph19.i245, label %roleSpecsToIds.exit249

roleSpecsToIds.exit249:                           ; preds = %.lr.ph19.i245, %bb.db, %.lr.ph.i243
  %.0.lcssa.i244 = phi ptr [ null, %bb.db ], [ null, %.lr.ph.i243 ], [ %i.iu, %.lr.ph19.i245 ]
  call fastcc void @DelRoleMems(i32 noundef %i.f, ptr noundef %i.by, i32 noundef %i.bz, ptr noundef %i.hx, ptr noundef %.0.lcssa.i244, i32 noundef 0, ptr noundef %2, i32 noundef 0)
  br label %bb.dc

bb.dc:                                            ; preds = %roleSpecsToIds.exit, %roleSpecsToIds.exit249, %bb.cz, %bb.cy
  call void @table_close(ptr noundef nonnull %i.bn, i32 noundef 0) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret i32 %i.bz
}

declare void @check_rolespec_name(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @pstrdup(ptr noundef) local_unnamed_addr #3

declare zeroext i1 @is_admin_of_role(i32 noundef, i32 noundef) local_unnamed_addr #3

declare i64 @SysCacheGetAttr(i32 noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #3

declare ptr @heap_modify_tuple(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @CatalogTupleUpdate(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @RunObjectPostAlterHook(i32 noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

declare void @heap_freetuple(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc void @DelRoleMems(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr nofree noundef readonly captures(address_is_null) %4, i32 noundef %5, ptr nofree noundef nonnull readonly captures(none) %6, i32 noundef %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca [7 x i64], align 16               ; 7 uses
  %i.b = alloca [7 x i8], align 1                 ; 4 uses
  %i.c = alloca [7 x i8], align 1                 ; 7 uses
  %i.d = tail call fastcc i32 @check_role_grantor(i32 noundef %0, i32 noundef %2, i32 noundef %5, i1 noundef zeroext false) ; 2 uses
  %i.e = tail call ptr @table_open(i32 noundef 1261, i32 noundef 3) #11 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @LockSharedObject(i32 noundef 1260, i32 noundef %2, i16 noundef zeroext 0, i32 noundef 4) #11
  %i.h = zext i32 %2 to i64
  %i.i = tail call ptr @SearchSysCacheList(i32 noundef 9, i32 noundef 1, i64 noundef %i.h, i64 noundef 0, i64 noundef 0) #11 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 6 uses
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %initialize_revoke_actions.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = sext i32 %i.k to i64
  %i.n = tail call ptr @palloc_mul(i64 noundef 4, i64 noundef %i.m) #11 ; 3 uses
  %i.o = load i32, ptr %i.j, align 8
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %.lr.ph.i, label %initialize_revoke_actions.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.b ] ; 2 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %indvars.iv.i
  store i32 0, ptr %i.q, align 4
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.r = load i32, ptr %i.j, align 8
  %i.s = sext i32 %i.r to i64
  %i.t = icmp slt i64 %indvars.iv.next.i, %i.s
  br i1 %i.t, label %.lr.ph.i, label %initialize_revoke_actions.exit, !llvm.loop !0

initialize_revoke_actions.exit:                   ; preds = %.lr.ph.i, %bb.a, %bb.b
  %.08.i = phi ptr [ null, %bb.a ], [ %i.n, %bb.b ], [ %i.n, %.lr.ph.i ] ; 4 uses
  %.not = icmp eq ptr %3, null
  %.not60 = icmp eq ptr %4, null
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.i, i64 80 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %plan_single_revoke.exit.thread, %initialize_revoke_actions.exit
  %.sroa.10.0 = phi i32 [ 0, %initialize_revoke_actions.exit ], [ %i.bx, %plan_single_revoke.exit.thread ] ; 5 uses
  br i1 %.not, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = load i32, ptr %i.u, align 4
  %i.aa = icmp slt i32 %.sroa.10.0, %i.z
  br i1 %i.aa, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.v, align 8
  %i.ac = sext i32 %.sroa.10.0 to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.ac
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  %i.ae = phi ptr [ %i.ad, %bb.e ], [ null, %bb.d ], [ null, %bb.c ] ; 2 uses
  br i1 %.not60, label %.preheader, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = load i32, ptr %i.w, align 4
  %i.ag = icmp slt i32 %.sroa.10.0, %i.af
  br i1 %i.ag, label %bb.h, label %.preheader
end_hunk_0
