Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/conf?download=true
inline.NumInlined: 37
inline.NumDeleted: 18
begin_hunk_0_@NCONF_load_bio:bb.a

bb.bg:                                            ; preds = %bb.bf
  call void @OPENSSL_free(ptr noundef nonnull %i.gs) #9
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.gu = load ptr, ptr %i.gt, align 8, !tbaa !19
  call void @OPENSSL_free(ptr noundef %i.gu) #9
  br label %value_free.exit.i

bb.bh:                                            ; preds = %bb.bf
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !19
  call void @OPENSSL_sk_free(ptr noundef %i.gw) #9
  br label %value_free.exit.i

value_free.exit.i:                                ; preds = %bb.bh, %bb.bg
  call void @OPENSSL_free(ptr noundef nonnull %i.gm) #9
  br label %.backedge

bb.bi:                                            ; preds = %bb.f
  call void @BUF_MEM_free(ptr noundef nonnull %i.d) #9
  %i.gx = load ptr, ptr %i.c, align 8, !tbaa !20
  br label %.sink.split

.thread212:                                       ; preds = %bb.ae, %.thread215, %bb.av, %bb.au, %.critedge, %bb.bd, %bb.bb, %bb.ah, %bb.ad, %bb.c, %bb.az, %bb.ar, %bb.j, %.outer._crit_edge, %bb.e, %bb.b
  %.2131 = phi i64 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.e ], [ %.1130, %bb.j ], [ %.0129.lcssa, %.outer._crit_edge ], [ %.1130, %bb.ar ], [ %.1130, %bb.ad ], [ %.1130, %bb.az ], [ %.1130, %bb.ah ], [ %.1130, %bb.bb ], [ %.1130, %bb.bd ], [ %.1130, %.thread215 ], [ %.1130, %.critedge ], [ %.1130, %bb.au ], [ %.1130, %bb.av ], [ %.1130, %bb.ae ] ; 2 uses
  %.1128 = phi ptr [ null, %bb.b ], [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.j ], [ null, %.outer._crit_edge ], [ null, %bb.ar ], [ null, %bb.ad ], [ %i.fr, %bb.az ], [ null, %bb.ah ], [ %i.fr, %bb.bb ], [ %i.fr, %bb.bd ], [ %i.fr, %.thread215 ], [ %i.fr, %bb.av ], [ %i.fr, %bb.au ], [ null, %.critedge ], [ null, %bb.ae ] ; 4 uses
  call void @BUF_MEM_free(ptr noundef %i.d) #9
  %i.gy = load ptr, ptr %i.c, align 8, !tbaa !20
  call void @OPENSSL_free(ptr noundef %i.gy) #9
  %.not173 = icmp eq ptr %2, null
  br i1 %.not173, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %.thread212
  store i64 %.2131, ptr %2, align 8, !tbaa !33
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %.thread212
  %i.gz = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.b, i64 noundef 24, ptr noundef nonnull @.str.1, i64 noundef %.2131) #9 ; 0 uses
  call void (i32, ...) @ERR_add_error_data(i32 noundef 2, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.b) #9
  %.not174 = icmp eq ptr %.1128, null
  br i1 %.not174, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.ha = getelementptr inbounds nuw i8, ptr %.1128, i64 8
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !15
  call void @OPENSSL_free(ptr noundef %i.hb) #9
  %i.hc = getelementptr inbounds nuw i8, ptr %.1128, i64 16
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !19
  call void @OPENSSL_free(ptr noundef %i.hd) #9
  br label %.sink.split

.sink.split:                                      ; preds = %bb.bi, %bb.bl
  %.1128.sink = phi ptr [ %.1128, %bb.bl ], [ %i.gx, %bb.bi ]
  %.0141.ph = phi i32 [ 0, %bb.bl ], [ 1, %bb.bi ]
  call void @OPENSSL_free(ptr noundef %.1128.sink) #9
  br label %bb.bm

bb.bm:                                            ; preds = %.sink.split, %bb.bk
  %.0141 = phi i32 [ 0, %bb.bk ], [ %.0141.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  ret i32 %.0141
}

declare ptr @BUF_MEM_new() local_unnamed_addr #2

declare void @ERR_put_error(i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @OPENSSL_strdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc ptr @NCONF_new_section(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = tail call ptr @OPENSSL_sk_new_null() #9  ; 3 uses
  %i.c = tail call ptr @OPENSSL_zalloc(i64 noundef 24) #9 ; 9 uses
  %i.d = icmp eq ptr %i.b, null
  %i.e = icmp eq ptr %i.c, null
  %or.cond = select i1 %i.d, i1 true, i1 %i.e
  br i1 %or.cond, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call ptr @OPENSSL_strdup(ptr noundef %1) #9 ; 2 uses
  store ptr %i.f, ptr %i.c, align 8, !tbaa !14
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr null, ptr %i.h, align 8, !tbaa !15
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.b, ptr %i.i, align 8, !tbaa !19
  %i.j = load ptr, ptr %0, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !28
  %i.k = call i32 @OPENSSL_lh_insert(ptr noundef %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %i.c, ptr noundef nonnull @lh_CONF_VALUE_call_hash_func, ptr noundef nonnull @lh_CONF_VALUE_call_cmp_func) #9
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !28   ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp eq ptr %i.l, null
  br i1 %.not.i, label %value_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14
  call void @OPENSSL_free(ptr noundef %i.m) #9
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15   ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @OPENSSL_free(ptr noundef nonnull %i.o) #9
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !19
  call void @OPENSSL_free(ptr noundef %i.q) #9
  br label %value_free.exit.sink.split

bb.g:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !19
  call void @OPENSSL_sk_free(ptr noundef %i.s) #9
  br label %value_free.exit.sink.split

.critedge:                                        ; preds = %bb.c, %bb.b, %bb.a
  call void @OPENSSL_sk_free(ptr noundef %i.b) #9
  br label %value_free.exit.sink.split

value_free.exit.sink.split:                       ; preds = %bb.f, %bb.g, %.critedge
  %.sink = phi ptr [ %i.c, %.critedge ], [ %i.l, %bb.g ], [ %i.l, %bb.f ]
  %.0.ph = phi ptr [ null, %.critedge ], [ %i.c, %bb.g ], [ %i.c, %bb.f ]
  call void @OPENSSL_free(ptr noundef %.sink) #9
  br label %value_free.exit

value_free.exit:                                  ; preds = %value_free.exit.sink.split, %bb.d
  %.0 = phi ptr [ %i.c, %bb.d ], [ %.0.ph, %value_free.exit.sink.split ]
  ret ptr %.0
}

declare i64 @BUF_MEM_grow(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @BIO_gets(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @str_copy(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.conf_value_st, align 8      ; 8 uses
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = tail call ptr @BUF_MEM_new() #9          ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #10
  %i.e = shl i64 %i.d, 32
  %sext = add i64 %i.e, 4294967296
  %i.f = ashr exact i64 %sext, 32
  %i.g = tail call i64 @BUF_MEM_grow(ptr noundef nonnull %i.b, i64 noundef %i.f) #9
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %.thread137, label %.preheader143

.preheader143:                                    ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  br label %.loopexit.outer

.loopexit.outer:                                  ; preds = %.loopexit.outer.backedge, %.preheader143
  %.0105.ph = phi ptr [ %3, %.preheader143 ], [ %.0105.ph.be, %.loopexit.outer.backedge ]
  %.0100.ph = phi i32 [ 0, %.preheader143 ], [ %.0100.ph.be, %.loopexit.outer.backedge ] ; 8 uses
  %.091.ph = phi i8 [ 0, %.preheader143 ], [ %.091.ph.be, %.loopexit.outer.backedge ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.outer, %.preheader
  %.0105 = phi ptr [ %.3, %.preheader ], [ %.0105.ph, %.loopexit.outer ] ; 8 uses
  %.091 = phi i8 [ %.1, %.preheader ], [ %.091.ph, %.loopexit.outer ] ; 5 uses
  %i.j = load i8, ptr %.0105, align 1, !tbaa !24  ; 6 uses
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw [2 x i8], ptr @CONF_type_default, i64 %i.k
  %i.m = load i16, ptr %i.l, align 2, !tbaa !27
  %i.n = zext i16 %i.m to i32                     ; 3 uses
  %i.o = and i32 %i.n, 64
  %.not117 = icmp eq i32 %i.o, 0
  br i1 %.not117, label %bb.g, label %.preheader142

.preheader142:                                    ; preds = %.loopexit
  %.1106149 = getelementptr inbounds nuw i8, ptr %.0105, i64 1 ; 3 uses
  %i.p = load i8, ptr %.1106149, align 1, !tbaa !24 ; 4 uses
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [2 x i8], ptr @CONF_type_default, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2, !tbaa !27
  %i.t = zext i16 %i.s to i32                     ; 2 uses
  %i.u = and i32 %i.t, 8
  %.not128150 = icmp ne i32 %i.u, 0
  %.not129151 = icmp eq i8 %i.p, %i.j
  %or.cond152 = or i1 %.not129151, %.not128150
  br i1 %or.cond152, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader142, %bb.d
  %i.v = phi i8 [ %i.ac, %bb.d ], [ %i.p, %.preheader142 ]
  %5 = phi i32 [ %i.ag, %bb.d ], [ %i.t, %.preheader142 ]
  %.1106155 = phi ptr [ %.1106, %bb.d ], [ %.1106149, %.preheader142 ]
  %.1101154 = phi i32 [ %6, %bb.d ], [ %.0100.ph, %.preheader142 ] ; 3 uses
  %.0105.pn153 = phi ptr [ %.2107, %bb.d ], [ %.0105, %.preheader142 ]
  %i.w = and i32 %5, 32
  %.not130 = icmp eq i32 %i.w, 0
  br i1 %.not130, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.x = getelementptr inbounds nuw i8, ptr %.0105.pn153, i64 2 ; 3 uses
  %i.y = load i8, ptr %i.x, align 1, !tbaa !24    ; 2 uses
  %.not131.not = icmp eq i8 %i.y, 0
  br i1 %.not131.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.z = phi i8 [ %i.y, %bb.c ], [ %i.v, %.lr.ph ]
  %.2107 = phi ptr [ %i.x, %bb.c ], [ %.1106155, %.lr.ph ] ; 2 uses
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !23
  %6 = add nsw i32 %.1101154, 1                   ; 2 uses
  %7 = sext i32 %.1101154 to i64
  %i.ab = getelementptr inbounds i8, ptr %i.aa, i64 %7
  store i8 %i.z, ptr %i.ab, align 1, !tbaa !24
  %.1106 = getelementptr inbounds nuw i8, ptr %.2107, i64 1 ; 3 uses
  %i.ac = load i8, ptr %.1106, align 1, !tbaa !24 ; 4 uses
  %i.ad = zext i8 %i.ac to i64
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr @CONF_type_default, i64 %i.ad
  %i.af = load i16, ptr %i.ae, align 2, !tbaa !27
  %i.ag = zext i16 %i.af to i32                   ; 2 uses
  %i.ah = and i32 %i.ag, 8
  %.not128 = icmp ne i32 %i.ah, 0
  %.not129 = icmp eq i8 %i.ac, %i.j
  %or.cond = or i1 %.not129, %.not128
  br i1 %or.cond, label %.critedge, label %.lr.ph, !llvm.loop !34

.critedge:                                        ; preds = %bb.c, %bb.d, %.preheader142
  %8 = phi i8 [ %i.p, %.preheader142 ], [ %i.ac, %bb.d ], [ 0, %bb.c ]
  %.1101.lcssa = phi i32 [ %.0100.ph, %.preheader142 ], [ %6, %bb.d ], [ %.1101154, %bb.c ]
  %.3108 = phi ptr [ %.1106149, %.preheader142 ], [ %.1106, %bb.d ], [ %i.x, %bb.c ]
  %i.ai = icmp eq i8 %8, %i.j
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge
  %i.aj = getelementptr inbounds nuw i8, ptr %.3108, i64 1
  br label %.loopexit.outer.backedge

.loopexit.outer.backedge:                         ; preds = %bb.e, %bb.l, %bb.am, %.loopexit.loopexit
  %.0105.ph.be = phi ptr [ %.3, %.loopexit.loopexit ], [ %i.au, %bb.am ], [ %i.am, %bb.l ], [ %i.aj, %bb.e ]
  %.0100.ph.be = phi i32 [ %i.ct, %.loopexit.loopexit ], [ %i.cq, %bb.am ], [ %i.ap, %bb.l ], [ %.1101.lcssa, %bb.e ]
  %.091.ph.be = phi i8 [ %.1, %.loopexit.loopexit ], [ %.091, %bb.am ], [ %.091, %bb.l ], [ %.091, %bb.e ]
  br label %.loopexit.outer

bb.f:                                             ; preds = %.critedge
  call void @ERR_put_error(i32 noundef 13, i32 noundef 0, i32 noundef 108, ptr noundef nonnull @.str, i32 noundef 169) #9
  br label %.thread137

bb.g:                                             ; preds = %.loopexit
  %i.ak = and i32 %i.n, 32
  %.not118 = icmp eq i32 %i.ak, 0
  br i1 %.not118, label %bb.m, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.0105, i64 1
  %i.am = getelementptr inbounds nuw i8, ptr %.0105, i64 2
  %i.an = load i8, ptr %i.al, align 1, !tbaa !24  ; 2 uses
  switch i8 %i.an, label %bb.k [
    i8 0, label %.loopexit198
    i8 114, label %bb.l
    i8 110, label %bb.i
    i8 98, label %bb.j
    i8 116, label %switch.edge
  ]

bb.i:                                             ; preds = %bb.h
  br label %bb.l

bb.j:                                             ; preds = %bb.h
  br label %bb.l

switch.edge:                                      ; preds = %bb.h
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  br label %bb.l

bb.l:                                             ; preds = %switch.edge, %bb.h, %bb.j, %bb.k, %bb.i
  %.090 = phi i8 [ %i.an, %bb.k ], [ 10, %bb.i ], [ 8, %bb.j ], [ 13, %bb.h ], [ 9, %switch.edge ]
  %i.ao = load ptr, ptr %i.h, align 8, !tbaa !23
  %i.ap = add nsw i32 %.0100.ph, 1
  %i.aq = sext i32 %.0100.ph to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ao, i64 %i.aq
  store i8 %.090, ptr %i.ar, align 1, !tbaa !24
  br label %.loopexit.outer.backedge

bb.m:                                             ; preds = %bb.g
  %i.as = and i32 %i.n, 8
  %.not119 = icmp eq i32 %i.as, 0
  br i1 %.not119, label %bb.n, label %.loopexit198

bb.n:                                             ; preds = %bb.m
  %i.at = icmp eq i8 %i.j, 36
  %i.au = getelementptr inbounds nuw i8, ptr %.0105, i64 1 ; 3 uses
  br i1 %i.at, label %bb.o, label %bb.am

bb.o:                                             ; preds = %bb.n
  %i.av = load i8, ptr %i.au, align 1, !tbaa !24
  switch i8 %i.av, label %bb.q [
    i8 123, label %.thread
    i8 40, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o
  br label %.thread

.thread:                                          ; preds = %bb.p, %bb.o
  %.0104.ph = phi i32 [ 125, %bb.o ], [ 41, %bb.p ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.0105, i64 2
  br label %bb.q

bb.q:                                             ; preds = %bb.o, %.thread
  %.0104135 = phi i32 [ %.0104.ph, %.thread ], [ 0, %bb.o ]
  %.not120134 = phi i1 [ false, %.thread ], [ true, %bb.o ]
  %i.ax = phi ptr [ %i.aw, %.thread ], [ %i.au, %bb.o ] ; 4 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %bb.q
  %.094 = phi ptr [ %i.ax, %bb.q ], [ %i.bd, %bb.r ] ; 7 uses
  %i.ay = load i8, ptr %.094, align 1, !tbaa !24  ; 3 uses
  %i.az = zext i8 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr @CONF_type_default, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !27
  %i.bc = and i16 %i.bb, 263
  %.not121 = icmp eq i16 %i.bc, 0
  %i.bd = getelementptr inbounds nuw i8, ptr %.094, i64 1 ; 2 uses
  br i1 %.not121, label %bb.s, label %bb.r, !llvm.loop !35

bb.s:                                             ; preds = %bb.r
  %i.be = icmp eq i8 %i.ay, 58
  br i1 %i.be, label %bb.t, label %.loopexit141

bb.t:                                             ; preds = %bb.s
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !24
  %i.bg = icmp eq i8 %i.bf, 58
  br i1 %i.bg, label %bb.u, label %.loopexit141

bb.u:                                             ; preds = %bb.t
  store i8 0, ptr %.094, align 1, !tbaa !24
  %i.bh = getelementptr inbounds nuw i8, ptr %.094, i64 2 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.v, %bb.u
  %.195 = phi ptr [ %i.bh, %bb.u ], [ %i.bn, %bb.v ] ; 3 uses
  %i.bi = load i8, ptr %.195, align 1, !tbaa !24  ; 2 uses
  %i.bj = zext i8 %i.bi to i64
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr @CONF_type_default, i64 %i.bj
  %i.bl = load i16, ptr %i.bk, align 2, !tbaa !27
  %i.bm = and i16 %i.bl, 263
  %.not122 = icmp eq i16 %i.bm, 0
  %i.bn = getelementptr inbounds nuw i8, ptr %.195, i64 1
  br i1 %.not122, label %.loopexit141, label %bb.v, !llvm.loop !36

.loopexit141:                                     ; preds = %bb.v, %bb.t, %bb.s
  %i.bo = phi i8 [ %i.ay, %bb.s ], [ 58, %bb.t ], [ %i.bi, %bb.v ] ; 2 uses
  %.099 = phi ptr [ null, %bb.s ], [ null, %bb.t ], [ %.094, %bb.v ] ; 2 uses
  %.097 = phi ptr [ %1, %bb.s ], [ %1, %bb.t ], [ %i.ax, %bb.v ] ; 2 uses
  %.296 = phi ptr [ %.094, %bb.s ], [ %.094, %bb.t ], [ %.195, %bb.v ] ; 4 uses
  %.093 = phi ptr [ %i.ax, %bb.s ], [ %i.ax, %bb.t ], [ %i.bh, %bb.v ] ; 2 uses
  %.1 = phi i8 [ %.091, %bb.s ], [ %.091, %bb.t ], [ 58, %bb.v ] ; 3 uses
  store i8 0, ptr %.296, align 1, !tbaa !24
  br i1 %.not120134, label %bb.z, label %bb.w

bb.w:                                             ; preds = %.loopexit141
  %i.bp = sext i8 %i.bo to i32
  %.not123 = icmp eq i32 %.0104135, %i.bp
  br i1 %.not123, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void @ERR_put_error(i32 noundef 13, i32 noundef 0, i32 noundef 103, ptr noundef nonnull @.str, i32 noundef 227) #9
  br label %.thread137

bb.y:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %.296, i64 1
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.loopexit141
  %.3 = phi ptr [ %i.bq, %bb.y ], [ %.296, %.loopexit141 ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  %.not.i = icmp eq ptr %.097, null
  br i1 %.not.i, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr %.097, ptr %4, align 8, !tbaa !14
  store ptr %.093, ptr %i.i, align 8, !tbaa !15
  %i.br = load ptr, ptr %0, align 8, !tbaa !11
  %i.bs = call ptr @OPENSSL_lh_retrieve(ptr noundef %i.br, ptr noundef nonnull %4, ptr noundef nonnull @lh_CONF_VALUE_call_hash_func, ptr noundef nonnull @lh_CONF_VALUE_call_cmp_func) #9 ; 2 uses
  %.not14.i = icmp eq ptr %i.bs, null
  br i1 %.not14.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !19
  br label %NCONF_get_string.exit

bb.ac:                                            ; preds = %bb.aa, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store i64 32770348699510116, ptr %i.a, align 8
  store ptr %i.a, ptr %4, align 8, !tbaa !14
  store ptr %.093, ptr %i.i, align 8, !tbaa !15
  %i.bv = load ptr, ptr %0, align 8, !tbaa !11
  %i.bw = call ptr @OPENSSL_lh_retrieve(ptr noundef %i.bv, ptr noundef nonnull %4, ptr noundef nonnull @lh_CONF_VALUE_call_hash_func, ptr noundef nonnull @lh_CONF_VALUE_call_cmp_func) #9 ; 2 uses
  %.not15.i = icmp eq ptr %i.bw, null
  br i1 %.not15.i, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !19
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.0.i = phi ptr [ %i.by, %bb.ad ], [ null, %bb.ac ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %NCONF_get_string.exit

NCONF_get_string.exit:                            ; preds = %bb.ab, %bb.ae
  %.1.i = phi ptr [ %i.bu, %bb.ab ], [ %.0.i, %bb.ae ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  %.not124 = icmp eq ptr %.099, null
  br i1 %.not124, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %NCONF_get_string.exit
  store i8 %.1, ptr %.099, align 1, !tbaa !24
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %NCONF_get_string.exit
  store i8 %i.bo, ptr %.296, align 1, !tbaa !24
  %i.bz = icmp eq ptr %.1.i, null
  br i1 %i.bz, label %bb.ah, label %bb.ai

end_hunk_0
