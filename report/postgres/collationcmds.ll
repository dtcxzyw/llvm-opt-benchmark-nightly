Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/collationcmds?download=true
inline.NumInlined: 34
inline.NumDeleted: 10
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@DefineCollation:bb.a
  %i.x = icmp eq i32 %i.w, 0
  br i1 %i.x, label %bb.l, label %bb.d

.critedge:                                        ; preds = %bb.n, %.lr.ph
  %.0..0..0..0.143.pre = load ptr, ptr %i.c, align 8 ; 2 uses
  %.not161 = icmp eq ptr %.0..0..0..0.143.pre, null ; 2 uses
  br i1 %.not161, label %bb.q, label %bb.o

bb.d:                                             ; preds = %.lr.ph248
  %i.y = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(7) @.str.1) #11
  %i.z = icmp eq i32 %i.y, 0
  br i1 %i.z, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(11) @.str.2) #11
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(9) @.str.3) #11
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(9) @.str.4) #11
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ag = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(14) @.str.5) #11
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(6) @.str.6) #11
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ak = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.v, ptr noundef nonnull dereferenceable(8) @.str.7) #11
  %i.al = icmp eq i32 %i.ak, 0
  br i1 %i.al, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.am = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.an = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.ao = call i32 @errcode(i32 noundef 16801924) #10 ; 0 uses
  %i.ap = load ptr, ptr %i.am, align 8
  %i.aq = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.8, ptr noundef %i.ap) #10 ; 0 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.t, i64 36
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = call i32 @parser_errposition(ptr noundef %0, i32 noundef %i.as) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 117, ptr noundef nonnull @__func__.DefineCollation) #10
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %.lr.ph248
  %.0107 = phi ptr [ %i.h, %bb.i ], [ %i.b, %.lr.ph248 ], [ %i.c, %bb.d ], [ %i.d, %bb.e ], [ %i.e, %bb.f ], [ %i.f, %bb.g ], [ %i.g, %bb.h ], [ %i.i, %bb.j ] ; 2 uses
  %i.au = load ptr, ptr %.0107, align 8
  %.not182 = icmp eq ptr %i.au, null
  br i1 %.not182, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @errorConflictingDefElem(ptr noundef nonnull %i.t, ptr noundef %0) #13
  unreachable

bb.n:                                             ; preds = %bb.l
  store ptr %i.t, ptr %.0107, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv247, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %.lr.ph248

bb.o:                                             ; preds = %.critedge
  %.0..0..0..0.140 = load ptr, ptr %i.d, align 8
  %i.av = icmp ne ptr %.0..0..0..0.140, null
  %.0..0..0..0.139 = load ptr, ptr %i.e, align 8
  %i.aw = icmp ne ptr %.0..0..0..0.139, null
  %or.cond = select i1 %i.av, i1 true, i1 %i.aw
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ax = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.ay = call i32 @errcode(i32 noundef 16801924) #10 ; 0 uses
  %i.az = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.10) #10 ; 0 uses
  %i.ba = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.11) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 129, ptr noundef nonnull @__func__.DefineCollation) #10
  unreachable

bb.q:                                             ; preds = %bb.o, %.critedge
  %.0..0..0..0.148 = load ptr, ptr %i.b, align 8  ; 2 uses
  %.not162 = icmp eq ptr %.0..0..0..0.148, null
  br i1 %.not162, label %bb.ad, label %list_length.exit

.thread:                                          ; preds = %bb.c
  %.0..0..0..0.148234 = load ptr, ptr %i.b, align 8
  %.not162235 = icmp eq ptr %.0..0..0..0.148234, null
  br i1 %.not162235, label %bb.ad, label %list_length.exit.thread

list_length.exit:                                 ; preds = %bb.q
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  %.not163 = icmp eq i32 %i.bc, 1
  br i1 %.not163, label %bb.r, label %list_length.exit.thread

list_length.exit.thread:                          ; preds = %.thread, %list_length.exit
  %i.bd = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.be = call i32 @errcode(i32 noundef 16801924) #10 ; 0 uses
  %i.bf = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.10) #10 ; 0 uses
  %i.bg = call i32 (ptr, ...) @errdetail(ptr noundef nonnull @.str.12) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 135, ptr noundef nonnull @__func__.DefineCollation) #10
  unreachable

bb.r:                                             ; preds = %list_length.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #10
  %i.bh = call ptr @defGetQualifiedName(ptr noundef nonnull %.0..0..0..0.148) #10
  %i.bi = call i32 @get_collation_oid(ptr noundef %i.bh, i1 noundef zeroext false) #10 ; 2 uses
  %i.bj = zext i32 %i.bi to i64
  %i.bk = call ptr @SearchSysCache1(i32 noundef 16, i64 noundef %i.bj) #10 ; 7 uses
  %.not179 = icmp eq ptr %i.bk, null
  br i1 %.not179, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bl = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.bm = call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.13, i32 noundef %i.bi) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 147, ptr noundef nonnull @__func__.DefineCollation) #10
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bn = getelementptr i8, ptr %i.bk, i64 16
  %.val184 = load ptr, ptr %i.bn, align 8         ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.val184, i64 22
  %i.bp = load i8, ptr %i.bo, align 2
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr %.val184, i64 %i.bq ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 76
  %i.bt = load i8, ptr %i.bs, align 4             ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 77
  %i.bv = load i8, ptr %i.bu, align 1, !range !4, !noundef !5
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 80
  %i.bx = load i32, ptr %i.bw, align 4
  %i.by = call i64 @SysCacheGetAttr(i32 noundef 16, ptr noundef nonnull %i.bk, i16 noundef signext 8, ptr noundef nonnull %i.j) #10
  %i.bz = load i8, ptr %i.j, align 1, !range !4, !noundef !5
  %i.ca = trunc nuw i8 %i.bz to i1
  br i1 %i.ca, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cb = inttoptr i64 %i.by to ptr
  %i.cc = call ptr @text_to_cstring(ptr noundef %i.cb) #10
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.0125 = phi ptr [ %i.cc, %bb.u ], [ null, %bb.t ]
  %i.cd = call i64 @SysCacheGetAttr(i32 noundef 16, ptr noundef nonnull %i.bk, i16 noundef signext 9, ptr noundef nonnull %i.j) #10
  %i.ce = load i8, ptr %i.j, align 1, !range !4, !noundef !5
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cg = inttoptr i64 %i.cd to ptr
  %i.ch = call ptr @text_to_cstring(ptr noundef %i.cg) #10
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.0121 = phi ptr [ %i.ch, %bb.w ], [ null, %bb.v ]
  %i.ci = call i64 @SysCacheGetAttr(i32 noundef 16, ptr noundef nonnull %i.bk, i16 noundef signext 10, ptr noundef nonnull %i.j) #10
  %i.cj = load i8, ptr %i.j, align 1, !range !4, !noundef !5
  %i.ck = trunc nuw i8 %i.cj to i1
  br i1 %i.ck, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cl = inttoptr i64 %i.ci to ptr
  %i.cm = call ptr @text_to_cstring(ptr noundef %i.cl) #10
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.0118 = phi ptr [ %i.cm, %bb.y ], [ null, %bb.x ]
  %i.cn = call i64 @SysCacheGetAttr(i32 noundef 16, ptr noundef nonnull %i.bk, i16 noundef signext 11, ptr noundef nonnull %i.j) #10
  %i.co = load i8, ptr %i.j, align 1, !range !4, !noundef !5
  %i.cp = trunc nuw i8 %i.co to i1
  br i1 %i.cp, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cq = inttoptr i64 %i.cn to ptr
  %i.cr = call ptr @text_to_cstring(ptr noundef %i.cq) #10
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  %.0115 = phi ptr [ %i.cr, %bb.aa ], [ null, %bb.z ]
  call void @ReleaseSysCache(ptr noundef nonnull %i.bk) #10
  %i.cs = icmp eq i8 %i.bt, 100
  br i1 %i.cs, label %bb.ac, label %.thread186

bb.ac:                                            ; preds = %bb.ab
  %i.ct = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.cu = call i32 @errcode(i32 noundef 117833860) #10 ; 0 uses
  %i.cv = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.14) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 194, ptr noundef nonnull @__func__.DefineCollation) #10
  unreachable

.thread186:                                       ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #10
  br label %bb.ca

bb.ad:                                            ; preds = %.thread, %bb.q
  %.0..0..0.143230237 = phi ptr [ null, %.thread ], [ %.0..0..0..0.143.pre, %bb.q ] ; 2 uses
  %.not161231236 = phi i1 [ true, %.thread ], [ %.not161, %bb.q ]
  %.0..0..0..0.135 = load ptr, ptr %i.f, align 8  ; 2 uses
  %.not165 = icmp eq ptr %.0..0..0..0.135, null
  br i1 %.not165, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cw = call ptr @defGetString(ptr noundef nonnull %.0..0..0..0.135) #10
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.0106 = phi ptr [ %i.cw, %bb.ae ], [ null, %bb.ad ] ; 5 uses
  %.0..0..0..0.133 = load ptr, ptr %i.g, align 8  ; 2 uses
  %.not166 = icmp eq ptr %.0..0..0..0.133, null
  br i1 %.not166, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cx = call zeroext i1 @defGetBoolean(ptr noundef nonnull %.0..0..0..0.133) #10
  %4 = zext i1 %i.cx to i8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.0113 = phi i8 [ %4, %bb.ag ], [ 1, %bb.af ]   ; 3 uses
  %.0..0..0..0.131 = load ptr, ptr %i.h, align 8  ; 2 uses
  %.not167 = icmp eq ptr %.0..0..0..0.131, null
  br i1 %.not167, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cy = call ptr @defGetString(ptr noundef nonnull %.0..0..0..0.131) #10
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.1116 = phi ptr [ %i.cy, %bb.ai ], [ null, %bb.ah ] ; 3 uses
  %.0..0..0..0. = load ptr, ptr %i.i, align 8     ; 2 uses
  %.not168 = icmp eq ptr %.0..0..0..0., null
  br i1 %.not168, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cz = call ptr @defGetString(ptr noundef nonnull %.0..0..0..0.) #10
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %.0108 = phi ptr [ %i.cz, %bb.ak ], [ null, %bb.aj ] ; 2 uses
  %.not169 = icmp eq ptr %.0106, null
  br i1 %.not169, label %bb.aq, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.da = call i32 @pg_strcasecmp(ptr noundef nonnull %.0106, ptr noundef nonnull @.str.15) #10
  %i.db = icmp eq i32 %i.da, 0
  br i1 %i.db, label %bb.aq, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dc = call i32 @pg_strcasecmp(ptr noundef nonnull %.0106, ptr noundef nonnull @.str.16) #10
  %i.dd = icmp eq i32 %i.dc, 0
  br i1 %i.dd, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.de = call i32 @pg_strcasecmp(ptr noundef nonnull %.0106, ptr noundef nonnull @.str.17) #10
  %i.df = icmp eq i32 %i.de, 0
  br i1 %i.df, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.dg = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.dh = call i32 @errcode(i32 noundef 117833860) #10 ; 0 uses
  %i.di = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.18, ptr noundef nonnull %.0106) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 231, ptr noundef nonnull @__func__.DefineCollation) #10
  unreachable

bb.aq:                                            ; preds = %bb.al, %bb.ao, %bb.an, %bb.am
  %i.dj = phi i1 [ true, %bb.ao ], [ false, %bb.am ], [ false, %bb.an ], [ true, %bb.al ] ; 2 uses
  %i.dk = phi i1 [ false, %bb.ao ], [ true, %bb.am ], [ false, %bb.an ], [ false, %bb.al ] ; 2 uses
  %i.dl = phi i1 [ false, %bb.ao ], [ false, %bb.am ], [ true, %bb.an ], [ false, %bb.al ] ; 2 uses
  %i.dm = phi i1 [ true, %bb.ao ], [ true, %bb.am ], [ false, %bb.an ], [ true, %bb.al ] ; 2 uses
  %.0109 = phi i8 [ 99, %bb.ao ], [ 98, %bb.am ], [ 105, %bb.an ], [ 99, %bb.al ] ; 2 uses
  br i1 %.not161231236, label %bb.at, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dn = call ptr @defGetString(ptr noundef nonnull %.0..0..0.143230237) #10 ; 2 uses
  br i1 %i.dj, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.do = call ptr @defGetString(ptr noundef nonnull %.0..0..0.143230237) #10
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.as, %bb.aq
  %.1126 = phi ptr [ %i.dn, %bb.as ], [ null, %bb.aq ], [ null, %bb.ar ]
  %.1122 = phi ptr [ %i.do, %bb.as ], [ null, %bb.aq ], [ null, %bb.ar ]
  %.1119 = phi ptr [ null, %bb.as ], [ null, %bb.aq ], [ %i.dn, %bb.ar ] ; 11 uses
  %.0..0..0..0.141 = load ptr, ptr %i.d, align 8  ; 2 uses
  %.not171 = icmp eq ptr %.0..0..0..0.141, null
  br i1 %.not171, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dp = call ptr @defGetString(ptr noundef nonnull %.0..0..0..0.141) #10
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  %.2127 = phi ptr [ %i.dp, %bb.au ], [ %.1126, %bb.at ] ; 4 uses
  %.0..0..0..0.137 = load ptr, ptr %i.e, align 8  ; 2 uses
  %.not172 = icmp eq ptr %.0..0..0..0.137, null
  br i1 %.not172, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dq = call ptr @defGetString(ptr noundef nonnull %.0..0..0..0.137) #10
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.2123 = phi ptr [ %i.dq, %bb.aw ], [ %.1122, %bb.av ] ; 4 uses
  br i1 %i.dk, label %bb.ay, label %bb.bb

bb.ay:                                            ; preds = %bb.ax
  %.not178 = icmp eq ptr %.1119, null
  br i1 %.not178, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.dr = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.ds = call i32 @errcode(i32 noundef 117833860) #10 ; 0 uses
  %i.dt = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 259, ptr noundef nonnull @__func__.DefineCollation) #10
  unreachable

bb.ba:                                            ; preds = %bb.ay
  %i.du = call i32 @GetDatabaseEncoding() #10
  %i.dv = call ptr @builtin_validate_locale(i32 noundef %i.du, ptr noundef nonnull %.1119) #10
  br label %bb.bp

bb.bb:                                            ; preds = %bb.ax
  br i1 %i.dj, label %bb.bc, label %bb.bg

bb.bc:                                            ; preds = %bb.bb
  %.not176 = icmp eq ptr %.2127, null
  br i1 %.not176, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.dw = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.dx = call i32 @errcode(i32 noundef 117833860) #10 ; 0 uses
  %i.dy = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 270, ptr noundef nonnull @__func__.DefineCollation) #10
  unreachable

bb.be:                                            ; preds = %bb.bc
  %.not177 = icmp eq ptr %.2123, null
  br i1 %.not177, label %bb.bf, label %bb.bp

bb.bf:                                            ; preds = %bb.be
  %i.dz = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.ea = call i32 @errcode(i32 noundef 117833860) #10 ; 0 uses
  %i.eb = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.3) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 276, ptr noundef nonnull @__func__.DefineCollation) #10
  unreachable

bb.bg:                                            ; preds = %bb.bb
  br i1 %i.dl, label %bb.bh, label %bb.bp

bb.bh:                                            ; preds = %bb.bg
  %.not173 = icmp eq ptr %.1119, null
  br i1 %.not173, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %bb.bh
  %i.ec = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.ed = call i32 @errcode(i32 noundef 117833860) #10 ; 0 uses
  %i.ee = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.1) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 284, ptr noundef nonnull @__func__.DefineCollation) #10
  unreachable

bb.bj:                                            ; preds = %bb.bh
  %i.ef = load i8, ptr @IsBinaryUpgrade, align 1, !range !4, !noundef !5
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.bo, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eh = load i32, ptr @icu_validation_level, align 4
  %i.ei = call ptr @icu_language_tag(ptr noundef nonnull %.1119, i32 noundef %i.eh) #10 ; 5 uses
  %.not174 = icmp eq ptr %i.ei, null
  br i1 %.not174, label %bb.bo, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ej = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.1119, ptr noundef nonnull dereferenceable(1) %i.ei) #11
  %.not175 = icmp eq i32 %i.ej, 0
  br i1 %.not175, label %bb.bo, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ek = call zeroext i1 @errstart(i32 noundef 18, ptr noundef null) #10
  br i1 %i.ek, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.el = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.20, ptr noundef nonnull %i.ei, ptr noundef nonnull %.1119) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 299, ptr noundef nonnull @__func__.DefineCollation) #10
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bk, %bb.bl, %bb.bn, %bb.bm, %bb.bj
  %.3 = phi ptr [ %.1119, %bb.bj ], [ %.1119, %bb.bk ], [ %.1119, %bb.bl ], [ %i.ei, %bb.bn ], [ %i.ei, %bb.bm ] ; 2 uses
  call void @icu_validate_locale(ptr noundef nonnull %.3) #10
  br label %bb.bp

bb.bp:                                            ; preds = %bb.be, %bb.bo, %bb.bg, %bb.ba
  %.4 = phi ptr [ %i.dv, %bb.ba ], [ %.1119, %bb.be ], [ %.3, %bb.bo ], [ %.1119, %bb.bg ] ; 3 uses
  %.not = icmp eq i8 %.0113, 0
  %or.cond4 = and i1 %.not, %i.dm
  br i1 %or.cond4, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.em = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.en = call i32 @errcode(i32 noundef 1088) #10 ; 0 uses
  %i.eo = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.21) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 317, ptr noundef nonnull @__func__.DefineCollation) #10
  unreachable

bb.br:                                            ; preds = %bb.bp
  %i.ep = icmp ne ptr %.1116, null
  %or.cond7 = and i1 %i.ep, %i.dm
  br i1 %or.cond7, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  %i.eq = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.er = call i32 @errcode(i32 noundef 117833860) #10 ; 0 uses
  %i.es = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.22) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 322, ptr noundef nonnull @__func__.DefineCollation) #10
  unreachable

bb.bt:                                            ; preds = %bb.br
  br i1 %i.dk, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %bb.bt
  %i.et = call i32 @builtin_locale_encoding(ptr noundef %.4) #10
  br label %bb.bz

bb.bv:                                            ; preds = %bb.bt
  %i.eu = call i32 @GetDatabaseEncoding() #10     ; 3 uses
  br i1 %i.dl, label %bb.bw, label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.ev = call zeroext i1 @is_encoding_supported_by_icu(i32 noundef %i.eu) #10
  br i1 %i.ev, label %bb.bz, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ew = call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.ex = call i32 @errcode(i32 noundef 1088) #10 ; 0 uses
  %i.ey = call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.23) #10 ; 0 uses
  call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 345, ptr noundef nonnull @__func__.DefineCollation) #10
  unreachable

bb.by:                                            ; preds = %bb.bv
  call void @check_encoding_locale_matches(i32 noundef %i.eu, ptr noundef %.2127, ptr noundef %.2123) #10
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bu, %bb.by, %bb.bw
  %.1112 = phi i32 [ -1, %bb.bw ], [ %i.et, %bb.bu ], [ %i.eu, %bb.by ] ; 2 uses
  %.not180 = icmp eq ptr %.0108, null
  br i1 %.not180, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %.thread186, %bb.bz
  %.1110209 = phi i8 [ %i.bt, %.thread186 ], [ %.0109, %bb.bz ] ; 3 uses
  %.1112207 = phi i32 [ %i.bx, %.thread186 ], [ %.1112, %bb.bz ]
  %.1114205 = phi i8 [ %i.bv, %.thread186 ], [ %.0113, %bb.bz ]
  %.2117203 = phi ptr [ %.0115, %.thread186 ], [ %.1116, %bb.bz ]
  %.5201 = phi ptr [ %.0118, %.thread186 ], [ %.4, %bb.bz ] ; 2 uses
  %.3124199 = phi ptr [ %.0121, %.thread186 ], [ %.2123, %bb.bz ]
  %.3128197 = phi ptr [ %.0125, %.thread186 ], [ %.2127, %bb.bz ] ; 2 uses
  %i.ez = icmp eq i8 %.1110209, 99
  %.3128..5 = select i1 %i.ez, ptr %.3128197, ptr %.5201
  %i.fa = call ptr @get_collation_actual_version(i8 noundef signext %.1110209, ptr noundef %.3128..5) #10
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  %.1110208 = phi i8 [ %.0109, %bb.bz ], [ %.1110209, %bb.ca ]
  %.1112206 = phi i32 [ %.1112, %bb.bz ], [ %.1112207, %bb.ca ]
  %.1114204 = phi i8 [ %.0113, %bb.bz ], [ %.1114205, %bb.ca ]
  %.2117202 = phi ptr [ %.1116, %bb.bz ], [ %.2117203, %bb.ca ]
  %.5200 = phi ptr [ %.4, %bb.bz ], [ %.5201, %bb.ca ]
  %.3124198 = phi ptr [ %.2123, %bb.bz ], [ %.3124199, %bb.ca ]
  %.3128196 = phi ptr [ %.2127, %bb.bz ], [ %.3128197, %bb.ca ]
  %.2 = phi ptr [ %.0108, %bb.bz ], [ %i.fa, %bb.ca ]
  %i.fb = load ptr, ptr %i.a, align 8
  %i.fc = call i32 @GetUserId() #10
  %5 = trunc nuw i8 %.1114204 to i1
  %i.fd = call i32 @CollationCreate(ptr noundef %i.fb, i32 noundef %i.k, i32 noundef %i.fc, i8 noundef signext %.1110208, i1 noundef zeroext %5, i32 noundef %.1112206, ptr noundef %.3128196, ptr noundef %.3124198, ptr noundef %.5200, ptr noundef %.2117202, ptr noundef %.2, i1 noundef zeroext %3, i1 noundef zeroext false) #10 ; 3 uses
  %.not181 = icmp eq i32 %i.fd, 0
  br i1 %.not181, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %.sroa.0104.0.copyload = load i64, ptr @InvalidObjectAddress, align 4 ; 2 uses
  %.sroa.0104.sroa.3.0.extract.shift = lshr i64 %.sroa.0104.0.copyload, 32
  %.sroa.4105.0.copyload = load i32, ptr getelementptr inbounds nuw (i8, ptr @InvalidObjectAddress, i64 8), align 4
  %i.fe = and i64 %.sroa.0104.0.copyload, 4294967295
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  call void @CommandCounterIncrement() #10
  %i.ff = call ptr @pg_newlocale_from_collation(i32 noundef %i.fd) #10 ; 0 uses
  %i.fg = zext i32 %i.fd to i64
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.sroa.4105.0 = phi i32 [ 0, %bb.cd ], [ %.sroa.4105.0.copyload, %bb.cc ]
  %.sroa.0104.sroa.0.0 = phi i64 [ 3456, %bb.cd ], [ %i.fe, %bb.cc ]
  %.sroa.0104.sroa.3.0 = phi i64 [ %i.fg, %bb.cd ], [ %.sroa.0104.sroa.3.0.extract.shift, %bb.cc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  %.sroa.0104.sroa.3.0.insert.shift = shl nuw i64 %.sroa.0104.sroa.3.0, 32
  %.sroa.0104.sroa.0.0.insert.insert = or disjoint i64 %.sroa.0104.sroa.3.0.insert.shift, %.sroa.0104.sroa.0.0
  %.fca.0.insert = insertvalue { i64, i32 } poison, i64 %.sroa.0104.sroa.0.0.insert.insert, 0
  %.fca.1.insert = insertvalue { i64, i32 } %.fca.0.insert, i32 %.sroa.4105.0, 1
  ret { i64, i32 } %.fca.1.insert
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @QualifiedNameGetCreationNamespace(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @object_aclcheck(i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @GetUserId() local_unnamed_addr #2

declare void @aclcheck_error(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare ptr @get_namespace_name(i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: cold
declare zeroext i1 @errstart_cold(i32 noundef, ptr noundef) local_unnamed_addr #5

declare zeroext i1 @errstart(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @errcode(i32 noundef) local_unnamed_addr #2

declare i32 @errmsg(ptr noundef, ...) local_unnamed_addr #2

declare i32 @parser_errposition(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @errfinish(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @errorConflictingDefElem(ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @errdetail(ptr noundef, ...) local_unnamed_addr #2

declare i32 @get_collation_oid(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare ptr @defGetQualifiedName(ptr noundef) local_unnamed_addr #2

declare ptr @SearchSysCache1(i32 noundef, i64 noundef) local_unnamed_addr #2

declare i32 @errmsg_internal(ptr noundef, ...) local_unnamed_addr #2

declare i64 @SysCacheGetAttr(i32 noundef, ptr noundef, i16 noundef signext, ptr noundef) local_unnamed_addr #2

declare ptr @text_to_cstring(ptr noundef) local_unnamed_addr #2

declare void @ReleaseSysCache(ptr noundef) local_unnamed_addr #2

declare ptr @defGetString(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @defGetBoolean(ptr noundef) local_unnamed_addr #2

declare i32 @pg_strcasecmp(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @builtin_validate_locale(i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @GetDatabaseEncoding() local_unnamed_addr #2

declare ptr @icu_language_tag(ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @icu_validate_locale(ptr noundef) local_unnamed_addr #2

declare i32 @builtin_locale_encoding(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @is_encoding_supported_by_icu(i32 noundef) local_unnamed_addr #2

declare void @check_encoding_locale_matches(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @get_collation_actual_version(i8 noundef signext, ptr noundef) local_unnamed_addr #2

declare i32 @CollationCreate(ptr noundef, i32 noundef, i32 noundef, i8 noundef signext, i1 noundef zeroext, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

declare void @CommandCounterIncrement() local_unnamed_addr #2

declare ptr @pg_newlocale_from_collation(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @IsThereCollationInNamespace(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.b = tail call i32 @GetDatabaseEncoding() #10
  %i.c = sext i32 %i.b to i64
  %i.d = zext i32 %1 to i64                       ; 2 uses
  %i.e = tail call zeroext i1 @SearchSysCacheExists(i32 noundef 15, i64 noundef %i.a, i64 noundef %i.c, i64 noundef %i.d, i64 noundef 0) #10
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.g = tail call i32 @errcode(i32 noundef 290948) #10 ; 0 uses
  %i.h = tail call ptr @GetDatabaseEncodingName() #10
  %i.i = tail call ptr @get_namespace_name(i32 noundef %1) #10
  %i.j = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.24, ptr noundef %0, ptr noundef %i.h, ptr noundef %i.i) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 412, ptr noundef nonnull @__func__.IsThereCollationInNamespace) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = tail call zeroext i1 @SearchSysCacheExists(i32 noundef 15, i64 noundef %i.a, i64 noundef -1, i64 noundef %i.d, i64 noundef 0) #10
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.m = tail call i32 @errcode(i32 noundef 290948) #10 ; 0 uses
  %i.n = tail call ptr @get_namespace_name(i32 noundef %1) #10
  %i.o = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.25, ptr noundef %0, ptr noundef %i.n) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 422, ptr noundef nonnull @__func__.IsThereCollationInNamespace) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  ret void
}

declare zeroext i1 @SearchSysCacheExists(i32 noundef, i64 noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @GetDatabaseEncodingName() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local { i64, i32 } @AlterCollation(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca [12 x i8], align 1                ; 4 uses
  %i.c = alloca [12 x i8], align 1                ; 5 uses
  %i.d = alloca [12 x i64], align 16              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.e = tail call ptr @table_open(i32 noundef 3456, i32 noundef 3) #10 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 @get_collation_oid(ptr noundef %i.g, i1 noundef zeroext false) #10 ; 5 uses
  %i.i = icmp eq i32 %i.h, 100
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.k = tail call i32 (ptr, ...) @errmsg(ptr noundef nonnull @.str.26) #10 ; 0 uses
  %i.l = tail call i32 (ptr, ...) @errhint(ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 449, ptr noundef nonnull @__func__.AlterCollation) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = tail call i32 @GetUserId() #10
  %i.n = tail call zeroext i1 @object_ownercheck(i32 noundef 3456, i32 noundef %i.h, i32 noundef %i.m) #10
  br i1 %i.n, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.f, align 8
  %i.p = tail call ptr @NameListToString(ptr noundef %i.o) #10
  tail call void @aclcheck_error(i32 noundef 2, i32 noundef 7, ptr noundef %i.p) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = zext i32 %i.h to i64                     ; 2 uses
  %i.r = tail call ptr @SearchSysCacheCopy(i32 noundef 16, i64 noundef %i.q, i64 noundef 0, i64 noundef 0, i64 noundef 0) #10 ; 7 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.s = tail call zeroext i1 @errstart_cold(i32 noundef 21, ptr noundef null) #12 ; 0 uses
  %i.t = tail call i32 (ptr, ...) @errmsg_internal(ptr noundef nonnull @.str.13, i32 noundef %i.h) #10 ; 0 uses
  tail call void @errfinish(ptr noundef nonnull @.str.9, i32 noundef 457, ptr noundef nonnull @__func__.AlterCollation) #10
end_hunk_0
