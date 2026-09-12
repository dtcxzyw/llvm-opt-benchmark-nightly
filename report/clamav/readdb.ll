Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clamav/original/readdb?download=true
inline.NumInlined: 52
inline.NumDeleted: 10
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 14
begin_hunk_0_@cli_loadftm
define internal fastcc i32 @cli_loadftm(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef range(i32 0, 2) %3, ptr nofree noundef captures(none) %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [9 x ptr], align 16               ; 12 uses
  %i.b = alloca [8192 x i8], align 16             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.c = tail call i32 @cli_initroots(ptr noundef %1, i32 poison) ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %.preheader, label %bb.ag

.preheader:                                       ; preds = %bb.a
  %.not84 = icmp eq i32 %3, 0                     ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8191
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 184 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %.outer.outer

.outer.outer:                                     ; preds = %bb.ad, %.preheader
  %.072.ph.ph = phi i32 [ %.173, %bb.ad ], [ %2, %.preheader ]
  %.069.ph.ph = phi i32 [ %i.y, %bb.ad ], [ 0, %.preheader ]
  %.068.ph.ph = phi i32 [ %i.cp, %bb.ad ], [ 0, %.preheader ] ; 3 uses
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %.outer.outer
  %.072.ph = phi i32 [ %.072.ph.ph, %.outer.outer ], [ %.173, %.outer.backedge ] ; 2 uses
  %.069.ph = phi i32 [ %.069.ph.ph, %.outer.outer ], [ %i.y, %.outer.backedge ] ; 3 uses
  br i1 %.not84, label %.outer.split, label %bb.b

.outer.split:                                     ; preds = %.outer, %bb.d
  %i.p = call ptr @cli_dbgets(ptr noundef nonnull %i.b, i32 noundef 8192, ptr noundef %0, ptr noundef %4)
  %.not85 = icmp eq ptr %i.p, null
  br i1 %.not85, label %.loopexit102, label %bb.d

bb.b:                                             ; preds = %.outer
  %.not86 = icmp eq i32 %.069.ph, 281
  br i1 %.not86, label %.loopexit102, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = zext i32 %.069.ph to i64
  %i.r = getelementptr inbounds nuw [8 x i8], ptr @ftypes_int, i64 %i.q
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !49
  %i.t = or i32 %.072.ph, 64
  %i.u = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.b, ptr noundef nonnull dereferenceable(1) %i.s, i64 noundef 8192) #20 ; 0 uses
  store i8 0, ptr %i.d, align 1, !tbaa !9
  br label %bb.f

bb.d:                                             ; preds = %.outer.split
  %i.v = load i8, ptr %i.b, align 16, !tbaa !9
  %i.w = icmp eq i8 %i.v, 35
  br i1 %i.w, label %.outer.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = call i32 @cli_chomp(ptr noundef nonnull %i.b) #20 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.173 = phi i32 [ %i.t, %bb.c ], [ %.072.ph, %bb.e ] ; 3 uses
  %i.y = add i32 %.069.ph, 1                      ; 3 uses
  %i.z = call i64 @cli_strtokenize(ptr noundef nonnull %i.b, i8 noundef signext 58, i64 noundef 9, ptr noundef nonnull %i.a) #20
  %i.aa = trunc i64 %i.z to i32                   ; 3 uses
  %i.ab = add i32 %i.aa, -9
  %or.cond = icmp ult i32 %i.ab, -3
  br i1 %or.cond, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ac = icmp samesign ugt i32 %i.aa, 6
  br i1 %i.ac, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.ad = load ptr, ptr %i.e, align 16, !tbaa !49 ; 3 uses
  %i.ae = call i32 @cli_isnumber(ptr noundef %i.ad) #20
  %.not87 = icmp eq i32 %i.ae, 0
  br i1 %.not87, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ad, ptr noundef null, i32 noundef 10) #20, !inline_history !0
  %i.ag = trunc i64 %i.af to i32
  %i.ah = call i32 @cl_retflevel() #20
  %i.ai = icmp ult i32 %i.ah, %i.ag
  br i1 %i.ai, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aj = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.ak = call i64 @__isoc23_strtol(ptr noundef nonnull %i.ad, ptr noundef null, i32 noundef 10) #20, !inline_history !0
  %i.al = trunc i64 %i.ak to i32
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.367, ptr noundef %i.aj, i32 noundef %i.al) #20
  br label %.outer.backedge

.outer.backedge:                                  ; preds = %bb.j, %bb.m, %bb.ac
  br label %.outer

bb.k:                                             ; preds = %bb.i
  %i.am = icmp eq i32 %i.aa, 8
  br i1 %i.am, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.an = load ptr, ptr %i.f, align 8, !tbaa !49  ; 2 uses
  %i.ao = call i32 @cli_isnumber(ptr noundef %i.an) #20
  %.not88 = icmp eq i32 %i.ao, 0
  br i1 %.not88, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = call i64 @__isoc23_strtol(ptr noundef nonnull %i.an, ptr noundef null, i32 noundef 10) #20, !inline_history !0
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = call i32 @cl_retflevel() #20
  %i.as = icmp ugt i32 %i.ar, %i.aq
  br i1 %i.as, label %.outer.backedge, label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.m, %bb.g
  %i.at = load ptr, ptr %i.g, align 16, !tbaa !49
  %i.au = call i32 @cli_ftcode(ptr noundef %i.at) #20 ; 2 uses
  %i.av = load ptr, ptr %i.h, align 8, !tbaa !49
  %i.aw = call i32 @cli_ftcode(ptr noundef %i.av) #20 ; 3 uses
  %i.ax = icmp eq i32 %i.au, 505
  %i.ay = icmp eq i32 %i.aw, 505
  %or.cond3 = select i1 %i.ax, i1 true, i1 %i.ay
  br i1 %or.cond3, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = load ptr, ptr %i.a, align 16, !tbaa !49
  %i.ba = call i32 @cli_isnumber(ptr noundef %i.az) #20
  %.not89 = icmp eq i32 %i.ba, 0
  br i1 %.not89, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.368) #20
  br label %.loopexit

bb.q:                                             ; preds = %bb.o
  %i.bb = load ptr, ptr %i.a, align 16, !tbaa !49
  %i.bc = call i64 @__isoc23_strtol(ptr noundef nonnull %i.bb, ptr noundef null, i32 noundef 10) #20, !inline_history !0
  %i.bd = trunc i64 %i.bc to i32                  ; 3 uses
  switch i32 %i.bd, label %bb.ac [
    i32 1, label %bb.r
    i32 4, label %bb.s
    i32 0, label %bb.s
  ]

bb.r:                                             ; preds = %bb.q
  %i.be = load ptr, ptr %i.o, align 8, !tbaa !69
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !70
  %i.bg = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.bh = load ptr, ptr %i.l, align 16, !tbaa !49
  %i.bi = trunc i32 %i.au to i16
  %i.bj = trunc i32 %i.aw to i16
  %i.bk = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.bl = call i32 @cli_add_content_match_pattern(ptr noundef %i.bf, ptr noundef %i.bg, ptr noundef %i.bh, i8 noundef zeroext 0, i16 noundef zeroext %i.bi, i16 noundef zeroext %i.bj, ptr noundef %i.bk, ptr noundef null, i32 noundef %.173) ; 2 uses
  %.not94 = icmp eq i32 %i.bl, 0
  br i1 %.not94, label %bb.ad, label %.loopexit

bb.s:                                             ; preds = %bb.q, %bb.q
  %i.bm = icmp eq i32 %i.bd, 4
  %i.bn = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.bo = call i32 @cli_isnumber(ptr noundef %i.bn) #20
  %.not90 = icmp eq i32 %i.bo, 0
  br i1 %.not90, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.369) #20
  br label %.loopexit

bb.u:                                             ; preds = %bb.s
  %i.bp = load ptr, ptr %i.k, align 8, !tbaa !71
  %i.bq = call ptr @mpool_malloc(ptr noundef %i.bp, i64 noundef 40) #20 ; 12 uses
  %.not91 = icmp eq ptr %i.bq, null
  br i1 %.not91, label %.loopexit, label %bb.v

bb.v:                                             ; preds = %bb.u
  store i32 %i.aw, ptr %i.bq, align 8, !tbaa !286
  %i.br = load ptr, ptr %i.j, align 8, !tbaa !49
  %i.bs = call i64 @__isoc23_strtol(ptr noundef nonnull %i.br, ptr noundef null, i32 noundef 10) #20, !inline_history !0
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !287
  %i.bv = load ptr, ptr %i.k, align 8, !tbaa !71
  %i.bw = load ptr, ptr %i.l, align 16, !tbaa !49
  %i.bx = call ptr @cli_mpool_hex2str(ptr noundef %i.bv, ptr noundef %i.bw) #20 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr %i.bx, ptr %i.by, align 8, !tbaa !288
  %.not92 = icmp eq ptr %i.bx, null
  br i1 %.not92, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.370) #20
  %i.bz = load ptr, ptr %i.k, align 8, !tbaa !71
  call void @mpool_free(ptr noundef %i.bz, ptr noundef nonnull %i.bq) #20
  br label %.loopexit

bb.x:                                             ; preds = %bb.v
  %i.ca = load ptr, ptr %i.l, align 16, !tbaa !49
  %i.cb = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ca) #19
  %i.cc = trunc i64 %i.cb to i16
  %5 = lshr i16 %i.cc, 1
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  store i16 %5, ptr %i.cd, align 8, !tbaa !289
  %i.ce = load ptr, ptr %i.k, align 8, !tbaa !71
  %i.cf = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.cg = call ptr @cli_mpool_strdup(ptr noundef %i.ce, ptr noundef %i.cf) #20 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !290
  %.not93 = icmp eq ptr %i.cg, null
  br i1 %.not93, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.cj = load ptr, ptr %i.k, align 8, !tbaa !71
  %i.ck = load ptr, ptr %i.ci, align 8, !tbaa !288
  call void @mpool_free(ptr noundef %i.cj, ptr noundef %i.ck) #20
  %i.cl = load ptr, ptr %i.k, align 8, !tbaa !71
  call void @mpool_free(ptr noundef %i.cl, ptr noundef nonnull %i.bq) #20
  br label %.loopexit

bb.z:                                             ; preds = %bb.x
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bq, i64 24 ; 2 uses
  br i1 %i.bm, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cn = load ptr, ptr %i.n, align 8, !tbaa !291
  store ptr %i.cn, ptr %i.cm, align 8, !tbaa !292
  store ptr %i.bq, ptr %i.n, align 8, !tbaa !291
  br label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %i.co = load ptr, ptr %i.m, align 8, !tbaa !147
  store ptr %i.co, ptr %i.cm, align 8, !tbaa !292
  store ptr %i.bq, ptr %i.m, align 8, !tbaa !147
  br label %bb.ad

bb.ac:                                            ; preds = %bb.q
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.371, i32 noundef %i.bd) #20
  br label %.outer.backedge

bb.ad:                                            ; preds = %bb.ab, %bb.aa, %bb.r
  %i.cp = add i32 %.068.ph.ph, 1
  br label %.outer.outer

.loopexit:                                        ; preds = %bb.r, %bb.u, %bb.l, %bb.n, %bb.h, %bb.f, %bb.y, %bb.w, %bb.t, %bb.p
  %.2.ph = phi i32 [ 4, %bb.t ], [ 20, %bb.y ], [ 4, %bb.w ], [ 4, %bb.p ], [ 4, %bb.l ], [ 4, %bb.f ], [ 4, %bb.h ], [ 4, %bb.n ], [ %i.bl, %bb.r ], [ 20, %bb.u ]
  %i.cq = select i1 %.not84, ptr @.str.374, ptr @.str.373
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.372, ptr noundef nonnull %i.cq, i32 noundef %i.y) #20
  br label %bb.ag

.loopexit102:                                     ; preds = %bb.b, %.outer.split
  %.not96 = icmp eq i32 %.068.ph.ph, 0
  br i1 %.not96, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.loopexit102
  %i.cr = select i1 %.not84, ptr @.str.374, ptr @.str.373
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.375, ptr noundef nonnull %i.cr) #20
  br label %bb.ag

bb.af:                                            ; preds = %.loopexit102
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.376, i32 noundef %.068.ph.ph) #20
  br label %bb.ag

bb.ag:                                            ; preds = %bb.a, %bb.af, %bb.ae, %.loopexit
  %.071 = phi i32 [ 4, %bb.ae ], [ %.2.ph, %.loopexit ], [ 0, %bb.af ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.071
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @cli_loadign(ptr nofree noundef captures(address_is_null) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [4 x ptr], align 16               ; 6 uses
  %i.b = alloca [8192 x i8], align 16             ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.g = tail call ptr @mpool_calloc(ptr noundef %i.f, i64 noundef 1, i64 noundef 416) #20 ; 4 uses
  store ptr %i.g, ptr %i.c, align 8, !tbaa !89
  %.not74 = icmp eq ptr %i.g, null
  br i1 %.not74, label %.loopexit91, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.e, align 8, !tbaa !71
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 408
  store ptr %i.h, ptr %i.i, align 8, !tbaa !33
  %i.j = tail call i32 @cli_bm_init(ptr noundef nonnull %i.g) #20 ; 2 uses
  %.not75 = icmp eq i32 %i.j, 0
  br i1 %.not75, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.657) #20
  br label %.loopexit91

bb.e:                                             ; preds = %bb.c, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 264 ; 9 uses
  br label %.outer

.outer:                                           ; preds = %bb.w, %bb.e
  %.059.ph = phi ptr [ %.160, %bb.w ], [ null, %bb.e ] ; 2 uses
  %.057.ph = phi i32 [ %i.p, %bb.w ], [ 0, %bb.e ]
  br label %bb.f

bb.f:                                             ; preds = %.outer, %bb.g
  %.057 = phi i32 [ %i.p, %bb.g ], [ %.057.ph, %.outer ]
  %i.o = call ptr @cli_dbgets(ptr noundef nonnull %i.b, i32 noundef 8192, ptr noundef %0, ptr noundef %2)
  %.not76 = icmp eq ptr %i.o, null
  br i1 %.not76, label %.loopexit91, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = add i32 %.057, 1                         ; 4 uses
  %i.q = load i8, ptr %i.b, align 16, !tbaa !9
  %i.r = icmp eq i8 %i.q, 35
  br i1 %i.r, label %bb.f, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = call i32 @cli_chomp(ptr noundef nonnull %i.b) #20 ; 0 uses
  %i.t = call i64 @cli_strtokenize(ptr noundef nonnull %i.b, i8 noundef signext 58, i64 noundef 4, ptr noundef nonnull %i.a) #20
  %i.u = trunc i64 %i.t to i32                    ; 2 uses
  %i.v = icmp ugt i32 %i.u, 3
  br i1 %i.v, label %.loopexit92, label %bb.i

bb.i:                                             ; preds = %bb.h
  switch i32 %i.u, label %bb.k [
    i32 1, label %bb.l
    i32 2, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr %i.a, align 16, !tbaa !49
  %i.x = load ptr, ptr %i.k, align 8, !tbaa !49
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.y = load ptr, ptr %i.l, align 16, !tbaa !49
  br label %bb.l

bb.l:                                             ; preds = %bb.i, %bb.j, %bb.k
  %.061 = phi ptr [ %i.y, %bb.k ], [ %i.w, %bb.j ], [ %i.b, %bb.i ] ; 5 uses
  %.160 = phi ptr [ %.059.ph, %bb.k ], [ %i.x, %bb.j ], [ %.059.ph, %bb.i ] ; 4 uses
  %i.z = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.061) #19 ; 4 uses
  %i.aa = trunc i64 %i.z to i32                   ; 3 uses
  %.not77 = icmp eq i32 %i.aa, 0
  br i1 %.not77, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.658) #20
  br label %.loopexit92

bb.n:                                             ; preds = %bb.l
  %i.ab = icmp ult i32 %i.aa, 3
  br i1 %i.ab, label %bb.o, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %.not78 = icmp eq ptr %.061, %i.b
  br i1 %.not78, label %.lr.ph.preheader, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = and i64 %i.z, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.b, ptr nonnull align 1 %.061, i64 %i.ac, i1 false)
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.o, %bb.p
  %.162 = phi ptr [ %i.b, %bb.p ], [ %.061, %bb.o ] ; 3 uses
  store i8 0, ptr %i.m, align 1, !tbaa !9
  %i.ad = and i64 %i.z, 3                         ; 4 uses
  %i.ae = xor i64 %i.ad, 2
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  store i8 32, ptr %i.af, align 1, !tbaa !9
  %i.ag = icmp samesign ugt i64 %i.ae, 1
  br i1 %i.ag, label %.lr.ph.1, label %.loopexit

.lr.ph.1:                                         ; preds = %.lr.ph.preheader
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  store i8 32, ptr %i.ai, align 1, !tbaa !9
  %i.aj = trunc i64 %i.z to i32
  %i.ak = icmp slt i32 %i.aj, 1
  br i1 %i.ak, label %.lr.ph.2, label %.loopexit

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.ad
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  store i8 32, ptr %i.am, align 1, !tbaa !9
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph.preheader, %.lr.ph.1, %.lr.ph.2, %bb.n
  %.263 = phi ptr [ %.061, %bb.n ], [ %.162, %.lr.ph.2 ], [ %.162, %.lr.ph.1 ], [ %.162, %.lr.ph.preheader ]
  %.056 = phi i32 [ %i.aa, %bb.n ], [ 3, %.lr.ph.2 ], [ 3, %.lr.ph.1 ], [ 3, %.lr.ph.preheader ]
  %i.an = load ptr, ptr %i.n, align 8, !tbaa !71
  %i.ao = call ptr @mpool_calloc(ptr noundef %i.an, i64 noundef 1, i64 noundef 72) #20 ; 12 uses
  %.not79 = icmp eq ptr %i.ao, null
end_hunk_0
begin_hunk_1_@cli_loadpwdb:bb.a

bb.e:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.a, align 16, !tbaa !49 ; 5 uses
  %i.ac = load ptr, ptr %i.c, align 8, !tbaa !89  ; 2 uses
  %.not91 = icmp eq ptr %i.ac, null
  br i1 %.not91, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = call fastcc i32 @cli_chkign(ptr noundef %i.ac, ptr noundef %i.ab, ptr noundef %i.ab)
  %.not92 = icmp eq i32 %i.ad, 0
  br i1 %.not92, label %bb.g, label %.outer.outer.backedge

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ae = load ptr, ptr %i.d, align 8, !tbaa !90  ; 2 uses
  %.not93 = icmp eq ptr %i.ae, null
  br i1 %.not93, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.af = load ptr, ptr %i.g, align 8, !tbaa !91
  %i.ag = call i32 %i.ae(ptr noundef nonnull @.str.695, ptr noundef %i.ab, i32 noundef %i.f, ptr noundef %i.af) #20
  %.not94 = icmp eq i32 %i.ag, 0
  br i1 %.not94, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.696, ptr noundef %i.ab) #20
  br label %.outer.outer.backedge

bb.j:                                             ; preds = %bb.h, %bb.g
  %i.ah = load ptr, ptr %i.h, align 8, !tbaa !49  ; 5 uses
  %i.ai = load i8, ptr %i.ah, align 1, !tbaa !9
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(1) @.str.697) #19
  %.not95 = icmp eq ptr %i.ak, null
  br i1 %.not95, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.al = call ptr @cli_safer_strdup(ptr noundef nonnull %i.ah) #20 ; 2 uses
  %.not97 = icmp eq ptr %i.al, null
  br i1 %.not97, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.698) #20
  br label %.thread112

bb.n:                                             ; preds = %bb.k
  %i.am = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #19
  %i.an = add i64 %i.am, 10                       ; 2 uses
  %i.ao = call noalias ptr @calloc(i64 noundef %i.an, i64 noundef 1) #22 ; 3 uses
  %.not96 = icmp eq ptr %i.ao, null
  br i1 %.not96, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.n
  %i.ap = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.ao, i64 noundef %i.an, ptr noundef nonnull @.str.699, ptr noundef nonnull %i.ah) #20 ; 0 uses
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.698) #20
  br label %.thread112

bb.p:                                             ; preds = %.thread, %bb.l
  %.077 = phi ptr [ %i.al, %bb.l ], [ %i.ao, %.thread ] ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %5, i8 0, i64 136, i1 false)
  %.val = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.aq = call fastcc i32 @init_tdb(ptr noundef %5, ptr %.val, ptr noundef nonnull %.077, ptr noundef %i.ab) ; 3 uses
  call void @free(ptr noundef nonnull %.077) #20
  switch i32 %i.aq, label %.thread112 [
    i32 0, label %bb.q
    i32 22, label %.outer.outer.backedge
  ]

.outer.outer.backedge:                            ; preds = %bb.f, %bb.p, %bb.i
  %.070.ph.ph.be = phi i32 [ %.070.ph205, %bb.i ], [ %.070.ph205, %bb.f ], [ %i.aq, %bb.p ]
  %.073.ph.ph.be = add i32 %.073.ph.ph210, 1
  br label %.outer.split.lr.ph.lr.ph

bb.q:                                             ; preds = %bb.p
  %i.ar = load ptr, ptr %i.j, align 8, !tbaa !303 ; 2 uses
  %.not99 = icmp eq ptr %i.ar, null
  br i1 %.not99, label %bb.v, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !42
  switch i32 %i.as, label %bb.u [
    i32 0, label %bb.v
    i32 517, label %bb.s
    i32 519, label %bb.t
  ]

bb.s:                                             ; preds = %bb.r
  br label %bb.v

bb.t:                                             ; preds = %bb.r
  br label %bb.v

bb.u:                                             ; preds = %bb.r
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.700) #20
  br label %.loopexit

bb.v:                                             ; preds = %bb.r, %bb.q, %bb.t, %bb.s
  %.071 = phi i64 [ 0, %bb.q ], [ 1, %bb.s ], [ 2, %bb.t ], [ 0, %bb.r ]
  %i.at = load i32, ptr %i.k, align 8, !tbaa !42
  %.not100 = icmp eq i32 %i.at, 0
  br i1 %.not100, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.au = load ptr, ptr %i.l, align 8, !tbaa !115
  %i.av = load ptr, ptr %5, align 8, !tbaa !116
  call void @mpool_free(ptr noundef %i.au, ptr noundef %i.av) #20
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.aw = load i32, ptr %i.m, align 4, !tbaa !42
  %.not101 = icmp eq i32 %i.aw, 0
  br i1 %.not101, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ax = load ptr, ptr %i.l, align 8, !tbaa !115
  %i.ay = load ptr, ptr %i.n, align 8, !tbaa !117
  call void @mpool_free(ptr noundef %i.ax, ptr noundef %i.ay) #20
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.az = load i32, ptr %i.o, align 8, !tbaa !42
  %.not102 = icmp eq i32 %i.az, 0
  br i1 %.not102, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ba = load ptr, ptr %i.l, align 8, !tbaa !115
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !118
  call void @mpool_free(ptr noundef %i.ba, ptr noundef %i.bb) #20
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bc = load ptr, ptr %i.q, align 8, !tbaa !46  ; 2 uses
  %.not103 = icmp eq ptr %i.bc, null
  br i1 %.not103, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bd = load ptr, ptr %i.l, align 8, !tbaa !115
  call void @mpool_free(ptr noundef %i.bd, ptr noundef nonnull %i.bc) #20
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.be = load ptr, ptr %i.r, align 16, !tbaa !49
  %i.bf = call i32 @cli_isnumber(ptr noundef %i.be) #20
  %.not104 = icmp eq i32 %i.bf, 0
  br i1 %.not104, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.701) #20
  br label %.thread112

bb.af:                                            ; preds = %bb.ad
  %i.bg = load ptr, ptr %i.r, align 16, !tbaa !49
  %i.bh = call i64 @__isoc23_strtol(ptr noundef nonnull %i.bg, ptr noundef null, i32 noundef 10) #20, !inline_history !0
  %i.bi = trunc i64 %i.bh to i32                  ; 3 uses
  %or.cond = icmp ult i32 %i.bi, 2
  br i1 %or.cond, label %bb.ag, label %.outer

bb.ag:                                            ; preds = %bb.af
  %i.bj = icmp eq i32 %i.bi, 0                    ; 2 uses
  %i.bk = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.bl = call ptr @mpool_calloc(ptr noundef %i.bk, i64 noundef 1, i64 noundef 32) #20 ; 9 uses
  %.not105 = icmp eq ptr %i.bl, null
  br i1 %.not105, label %.thread112, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bm = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.bn = load ptr, ptr %i.a, align 16, !tbaa !49
  %i.bo = call ptr @cli_mpool_strdup(ptr noundef %i.bm, ptr noundef %i.bn) #20 ; 2 uses
  store ptr %i.bo, ptr %i.bl, align 8, !tbaa !157
  %.not106 = icmp eq ptr %i.bo, null
  %i.bp = load ptr, ptr %i.i, align 8, !tbaa !71  ; 3 uses
  br i1 %.not106, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  call void @mpool_free(ptr noundef %i.bp, ptr noundef nonnull %i.bl) #20
  br label %.thread112

bb.aj:                                            ; preds = %bb.ah
  %i.bq = load ptr, ptr %i.s, align 8, !tbaa !49  ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bl, i64 8 ; 2 uses
  br i1 %i.bj, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.bs = call ptr @cli_mpool_strdup(ptr noundef %i.bp, ptr noundef %i.bq) #20 ; 2 uses
  store ptr %i.bs, ptr %i.br, align 8, !tbaa !158
  %i.bt = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.bu = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bt) #19
  %i.bv = trunc i64 %i.bu to i16
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.bw = call ptr @cli_mpool_hex2str(ptr noundef %i.bp, ptr noundef %i.bq) #20 ; 2 uses
  store ptr %i.bw, ptr %i.br, align 8, !tbaa !158
  %i.bx = load ptr, ptr %i.s, align 8, !tbaa !49
  %i.by = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bx) #19
  %i.bz = trunc i64 %i.by to i16
  %6 = lshr i16 %i.bz, 1
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.ca = phi ptr [ %i.bs, %bb.ak ], [ %i.bw, %bb.al ]
  %.sink = phi i16 [ %i.bv, %bb.ak ], [ %6, %bb.al ]
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  store i16 %.sink, ptr %i.cb, align 8, !tbaa !304
  %.not107 = icmp eq ptr %i.ca, null
  br i1 %.not107, label %bb.an, label %.outer.outer119

bb.an:                                            ; preds = %bb.am
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.702) #20
  %. = select i1 %i.bj, i32 20, i32 4
  %i.cc = load ptr, ptr %i.i, align 8, !tbaa !71
  %i.cd = load ptr, ptr %i.bl, align 8, !tbaa !157
  call void @mpool_free(ptr noundef %i.cc, ptr noundef %i.cd) #20
  %i.ce = load ptr, ptr %i.i, align 8, !tbaa !71
  call void @mpool_free(ptr noundef %i.ce, ptr noundef nonnull %i.bl) #20
  br label %.thread112

.outer.outer119:                                  ; preds = %bb.am
  %i.cf = load ptr, ptr %i.t, align 8, !tbaa !159
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %.071 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !160
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bl, i64 24
  store ptr %i.ch, ptr %i.ci, align 8, !tbaa !161
  store ptr %i.bl, ptr %i.cg, align 8, !tbaa !160
  %i.cj = add i32 %.072.ph.ph121207, 1
  br label %.outer.split.lr.ph

.outer:                                           ; preds = %bb.af
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.703, i32 noundef %i.bi) #20
  br label %.outer.split

bb.ao:                                            ; preds = %bb.b
  %.not108 = icmp eq i32 %.070.ph205, 0
  br i1 %.not108, label %bb.ap, label %.thread112

.thread112:                                       ; preds = %bb.ag, %bb.p, %bb.d, %bb.o, %bb.m, %bb.ae, %bb.ai, %bb.an, %bb.ao
  %.3118 = phi i32 [ %.070.ph205, %bb.ao ], [ 20, %bb.ai ], [ 20, %bb.o ], [ 20, %bb.m ], [ 4, %bb.ae ], [ %., %bb.an ], [ 4, %bb.d ], [ %i.aq, %bb.p ], [ 20, %bb.ag ]
  %.176117 = phi i32 [ %.075.ph204, %bb.ao ], [ %i.y, %bb.ai ], [ %i.y, %bb.o ], [ %i.y, %bb.m ], [ %i.y, %bb.ae ], [ %i.y, %bb.an ], [ %i.y, %bb.p ], [ %i.y, %bb.d ], [ %i.y, %bb.ag ]
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.704, ptr noundef nonnull @.str.374, i32 noundef %.176117) #20
  br label %.loopexit

bb.ap:                                            ; preds = %bb.ao
  %.not109 = icmp eq i32 %.072.ph.ph121207, 0
  br i1 %.not109, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.705, ptr noundef nonnull @.str.374) #20
  br label %.loopexit

bb.ar:                                            ; preds = %bb.ap
  call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.706, i32 noundef %.072.ph.ph121207, i32 noundef %.073.ph.ph210) #20
  br label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.ar, %bb.aq, %.thread112, %bb.u
  %.078 = phi i32 [ 4, %bb.u ], [ %.3118, %.thread112 ], [ 0, %bb.ar ], [ 4, %bb.aq ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret i32 %.078
}

declare void @cli_warnmsg(ptr noundef, ...) local_unnamed_addr #3

declare ptr @cl_strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define i32 @cl_load(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #20
  store ptr null, ptr %i.a, align 8, !tbaa !162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #20
  store ptr null, ptr %i.b, align 8, !tbaa !41
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.100) #20
  br label %bb.dw

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !163
  %i.e = and i32 %i.d, 1024
  %.not56 = icmp eq i32 %i.e, 0
  br i1 %.not56, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.101) #20
  br label %bb.dw

bb.e:                                             ; preds = %bb.c
  %i.f = call i32 @stat(ptr noundef %0, ptr noundef nonnull %4) #20
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.f, label %bb.m

bb.f:                                             ; preds = %bb.e
  %i.h = tail call ptr @__errno_location() #23
  %i.i = load i32, ptr %i.h, align 4, !tbaa !42
  switch i32 %i.i, label %bb.l [
    i32 13, label %bb.g
    i32 2, label %bb.h
    i32 40, label %bb.i
    i32 75, label %bb.j
    i32 5, label %bb.k
  ]

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.102, ptr noundef %0) #20
  br label %bb.dw

bb.h:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.103, ptr noundef %0) #20
  br label %bb.dw

bb.i:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.104, ptr noundef %0) #20
  br label %bb.dw

bb.j:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.105, ptr noundef %0) #20
  br label %bb.dw

bb.k:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.106, ptr noundef %0) #20
  br label %bb.dw

bb.l:                                             ; preds = %bb.f
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.107, ptr noundef %0) #20
  br label %bb.dw

bb.m:                                             ; preds = %bb.e
  %i.j = and i32 %3, 8
  %.not57 = icmp eq i32 %i.j, 0
  br i1 %.not57, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !305
  %.not58 = icmp eq ptr %i.l, null
  br i1 %.not58, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !74
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 28
  %i.p = load i32, ptr %i.o, align 4, !tbaa !144
  %i.q = and i32 %i.p, 1
  %.not59 = icmp eq i32 %i.q, 0
  br i1 %.not59, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.r = tail call i32 @phishing_init(ptr noundef nonnull %1) #20 ; 2 uses
  %.not60 = icmp eq i32 %i.r, 0
  br i1 %.not60, label %bb.q, label %bb.dw

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.s = and i32 %3, 8192
  %.not61 = icmp eq i32 %i.s, 0
  br i1 %.not61, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 980
  %i.u = load i32, ptr %i.t, align 4, !tbaa !306
  %.not62 = icmp eq i32 %i.u, 0
  br i1 %.not62, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.w = tail call i32 @cli_bytecode_init(ptr noundef nonnull %i.v) #20 ; 2 uses
  %.not63 = icmp eq i32 %i.w, 0
  br i1 %.not63, label %bb.u, label %bb.dw

bb.t:                                             ; preds = %bb.r, %bb.q
  tail call void (ptr, ...) @cli_dbgmsg(ptr noundef nonnull @.str.108) #20
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !164
  %.not64 = icmp eq ptr %i.y, null
  br i1 %.not64, label %bb.v, label %bb.x

bb.v:                                             ; preds = %bb.u
  %i.z = tail call i32 @clean_cache_init(ptr noundef nonnull %1) #20 ; 3 uses
  %.not65 = icmp eq i32 %i.z, 0
  br i1 %.not65, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.aa = tail call ptr @cl_strerror(i32 noundef %i.z) #20
  tail call void (ptr, ...) @cli_errmsg(ptr noundef nonnull @.str.109, ptr noundef %i.aa) #20
  br label %bb.dw

bb.x:                                             ; preds = %bb.v, %bb.u
  %i.ab = load i32, ptr %i.c, align 8, !tbaa !163
  %i.ac = or i32 %i.ab, %3
end_hunk_1
