Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/reservation?download=true
inline.NumInlined: 103
inline.NumDeleted: 45
begin_hunk_0_@create_resv:bb.a
  br i1 %.not454, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = tail call ptr @list_create(ptr noundef nonnull @_del_resv_rec) #18
  store ptr %i.o, ptr @resv_list, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.p = load ptr, ptr @magnetic_resv_list, align 8
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %_create_resv_lists.exit

bb.d:                                             ; preds = %bb.c
  %i.q = tail call ptr @list_create(ptr noundef null) #18
  store ptr %i.q, ptr @magnetic_resv_list, align 8
  br label %_create_resv_lists.exit

_create_resv_lists.exit:                          ; preds = %bb.c, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 21 uses
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = icmp eq i64 %i.s, -2
  %i.u = and i64 %i.s, 5262991054165
  %storemerge = select i1 %i.t, i64 0, i64 %i.u
  store i64 %storemerge, ptr %i.r, align 8
  %i.v = tail call fastcc i32 @_parse_tres_str(ptr noundef %0) ; 5 uses
  %.not = icmp eq i32 %i.v, 0
  br i1 %.not, label %bb.j, label %bb.e

bb.e:                                             ; preds = %_create_resv_lists.exit
  %.not.i425 = icmp eq ptr %1, null
  br i1 %.not.i425, label %_set_tres_err_msg.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  switch i32 %i.v, label %_set_tres_err_msg.exit [
    i32 2094, label %.sink.split.i
    i32 2069, label %bb.g
    i32 2048, label %bb.h
    i32 2006, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  br label %.sink.split.i

bb.h:                                             ; preds = %bb.f
  br label %.sink.split.i

bb.i:                                             ; preds = %bb.f
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.str.115.sink.i = phi ptr [ @.str.115, %bb.i ], [ @.str.114, %bb.h ], [ @.str.113, %bb.g ], [ @.str.112, %bb.f ]
  %i.w = tail call ptr @xstrdup(ptr noundef nonnull %.str.115.sink.i) #18
  store ptr %i.w, ptr %1, align 8
  br label %_set_tres_err_msg.exit

bb.j:                                             ; preds = %_create_resv_lists.exit
  tail call fastcc void @_dump_resv_req(ptr noundef nonnull %0, ptr noundef nonnull @.str.2)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = tail call ptr @xstrcasestr(ptr noundef %i.y, ptr noundef nonnull @.str.3) #18
  %.not330 = icmp eq ptr %i.z, null
  br i1 %.not330, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = load i64, ptr %i.r, align 8
  %i.ab = or i64 %i.aa, 137438953472
  store i64 %i.ab, ptr %i.r, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 10 uses
  %i.ad = load i32, ptr %i.ac, align 8
  %.not331 = icmp eq i32 %i.ad, -2
  br i1 %.not331, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = tail call zeroext i1 @running_cons_tres() #18
  br i1 %i.ae, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = tail call i32 @get_log_level() #18
  %i.ag = icmp sgt i32 %i.af, 2
  br i1 %i.ag, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.4) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.not332 = icmp eq ptr %1, null
  br i1 %.not332, label %.thread444, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ah = tail call ptr @xstrdup(ptr noundef nonnull @.str.4) #18
  store ptr %i.ah, ptr %1, align 8
  br label %.thread444

bb.r:                                             ; preds = %bb.m, %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.aj = load i64, ptr %i.ai, align 8            ; 7 uses
  %.not333 = icmp eq i64 %i.aj, 4294967294
  br i1 %.not333, label %.sink.split, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ak = load i64, ptr %i.r, align 8             ; 2 uses
  %i.al = and i64 %i.ak, 131072
  %.not334 = icmp eq i64 %i.al, 0
  br i1 %.not334, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = icmp slt i64 %i.aj, %i.m
  br i1 %i.am, label %.sink.split, label %bb.ab

bb.u:                                             ; preds = %bb.s
  %i.an = and i64 %i.ak, 4398046511104
  %.not335 = icmp eq i64 %i.an, 0
  br i1 %.not335, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = mul i32 %i.ap, 60
  %i.ar = zext i32 %i.aq to i64
  %i.as = add nsw i64 %i.aj, %i.ar
  %i.at = add nsw i64 %i.m, -600
  %i.au = icmp slt i64 %i.as, %i.at
  br i1 %i.au, label %bb.w, label %bb.ab

bb.w:                                             ; preds = %bb.v
  %i.av = tail call i32 @get_log_level() #18
  %i.aw = icmp sgt i32 %i.av, 2
  br i1 %i.aw, label %bb.x, label %.thread444

bb.x:                                             ; preds = %bb.w
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.6) #18
  br label %.thread444

bb.y:                                             ; preds = %bb.u
  %i.ax = add nsw i64 %i.m, -600
  %i.ay = icmp slt i64 %i.aj, %i.ax
  br i1 %i.ay, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.az = tail call i32 @get_log_level() #18
  %i.ba = icmp sgt i32 %i.az, 2
  br i1 %i.ba, label %bb.aa, label %.thread444

bb.aa:                                            ; preds = %bb.z
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.7) #18
  br label %.thread444

.sink.split:                                      ; preds = %bb.r, %bb.t
  store i64 %i.m, ptr %i.ai, align 8
  br label %bb.ab

bb.ab:                                            ; preds = %.sink.split, %bb.t, %bb.y, %bb.v
  %i.bb = phi i64 [ %i.aj, %bb.v ], [ %i.aj, %bb.t ], [ %i.aj, %bb.y ], [ %i.m, %.sink.split ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.bd = load i64, ptr %i.bc, align 8            ; 2 uses
  %.not336 = icmp eq i64 %i.bd, 4294967294
  br i1 %.not336, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.be = add nsw i64 %i.m, -600
  %i.bf = icmp slt i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.bg = tail call i32 @get_log_level() #18
  %i.bh = icmp sgt i32 %i.bg, 2
  br i1 %i.bh, label %bb.ae, label %.thread444

bb.ae:                                            ; preds = %bb.ad
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.8) #18
  br label %.thread444

bb.af:                                            ; preds = %bb.ab
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bj = load i32, ptr %i.bi, align 4            ; 2 uses
  switch i32 %i.bj, label %bb.ah [
    i32 -1, label %bb.ag
    i32 0, label %.sink.split506
  ]

bb.ag:                                            ; preds = %bb.af
  %i.bk = add nsw i64 %i.bb, 31536000
  br label %.sink.split506

bb.ah:                                            ; preds = %bb.af
  %i.bl = mul i32 %i.bj, 60
  %i.bm = zext i32 %i.bl to i64
  %i.bn = add nsw i64 %i.bb, %i.bm
  br label %.sink.split506

.sink.split506:                                   ; preds = %bb.af, %bb.ah, %bb.ag
  %.sink507 = phi i64 [ %i.bk, %bb.ag ], [ %i.bn, %bb.ah ], [ 4294967295, %bb.af ]
  store i64 %.sink507, ptr %i.bc, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %.sink.split506, %bb.ac
  %i.bo = load i64, ptr %i.r, align 8             ; 9 uses
  %i.bp = and i64 %i.bo, 34370224148
  %.not338 = icmp eq i64 %i.bp, 0
  br i1 %.not338, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bq = lshr i64 %i.bo, 35
  %i.br = trunc nuw nsw i64 %i.bq to i32
  %spec.select.i = and i32 %i.br, 1
  %5 = lshr i64 %i.bo, 2
  %6 = trunc i64 %5 to i32
  %i.bs = and i32 %6, 1
  %.1.i = add nuw nsw i32 %spec.select.i, %i.bs
  %7 = lshr i64 %i.bo, 21
  %8 = trunc i64 %7 to i32
  %i.bt = and i32 %8, 1
  %.2.i = add nuw nsw i32 %.1.i, %i.bt
  %9 = lshr i64 %i.bo, 23
  %10 = trunc i64 %9 to i32
  %i.bu = and i32 %10, 1
  %.3.i = add nuw nsw i32 %.2.i, %i.bu
  %11 = lshr i64 %i.bo, 4
  %12 = trunc i64 %11 to i32
  %i.bv = and i32 %12, 1
  %.4.i = add nuw nsw i32 %.3.i, %i.bv
  %i.bw = icmp samesign ugt i32 %.4.i, 1
  br i1 %i.bw, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  %i.bx = tail call i32 @get_log_level() #18
  %i.by = icmp sgt i32 %i.bx, 2
  br i1 %i.by, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.9) #18
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %.not412 = icmp eq ptr %1, null
  br i1 %.not412, label %.thread444, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bz = tail call ptr @xstrdup(ptr noundef nonnull @.str.9) #18
  store ptr %i.bz, ptr %1, align 8
  br label %.thread444

bb.ao:                                            ; preds = %bb.aj, %bb.ai
  %i.ca = and i64 %i.bo, 1074003968
  %or.cond416 = icmp eq i64 %i.ca, 0
  br i1 %or.cond416, label %.thread, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cc = load ptr, ptr %i.cb, align 8
  %.not341 = icmp eq ptr %i.cc, null
  br i1 %.not341, label %bb.au, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.cd = tail call i32 @get_log_level() #18
  %i.ce = icmp sgt i32 %i.cd, 2
  br i1 %i.ce, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2) #18
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %.not411 = icmp eq ptr %1, null
  br i1 %.not411, label %.thread444, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cf = tail call ptr @xstrdup(ptr noundef nonnull @.str.11) #18
  store ptr %i.cf, ptr %1, align 8
  br label %.thread444

bb.au:                                            ; preds = %bb.ap
  %i.cg = load i32, ptr %i.ac, align 8
  %.not342 = icmp eq i32 %i.cg, -2
  br i1 %.not342, label %bb.az, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ch = tail call i32 @get_log_level() #18
  %i.ci = icmp sgt i32 %i.ch, 2
  br i1 %i.ci, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.2) #18
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %.not410 = icmp eq ptr %1, null
  br i1 %.not410, label %.thread444, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.cj = tail call ptr @xstrdup(ptr noundef nonnull @.str.13) #18
  store ptr %i.cj, ptr %1, align 8
  br label %.thread444

bb.az:                                            ; preds = %bb.au
  %i.ck = and i64 %i.bo, 1025
  %or.cond418 = icmp eq i64 %i.ck, 0
  br i1 %or.cond418, label %.thread, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.cl = tail call i32 @get_log_level() #18
  %i.cm = icmp sgt i32 %i.cl, 2
  br i1 %i.cm, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.14) #18
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.not409 = icmp eq ptr %1, null
  br i1 %.not409, label %.thread444, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.cn = tail call ptr @xstrdup(ptr noundef nonnull @.str.14) #18
  store ptr %i.cn, ptr %1, align 8
  br label %.thread444

.thread:                                          ; preds = %bb.ao, %bb.az
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 5 uses
  %i.cp = load ptr, ptr %i.co, align 8            ; 2 uses
  %.not347 = icmp eq ptr %i.cp, null
  br i1 %.not347, label %bb.bh, label %bb.be

bb.be:                                            ; preds = %.thread
  %i.cq = tail call ptr @find_part_record(ptr noundef nonnull %i.cp) #18 ; 4 uses
  store ptr %i.cq, ptr %i.a, align 8
  %.not349 = icmp eq ptr %i.cq, null
  br i1 %.not349, label %bb.bf, label %bb.bk

bb.bf:                                            ; preds = %bb.be
  %i.cr = tail call i32 @get_log_level() #18
  %i.cs = icmp sgt i32 %i.cr, 2
  br i1 %i.cs, label %bb.bg, label %.thread444

bb.bg:                                            ; preds = %bb.bf
  %i.ct = load ptr, ptr %i.co, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.15, ptr noundef %i.ct) #18
  br label %.thread444

bb.bh:                                            ; preds = %.thread
  %i.cu = and i64 %i.bo, 4096
  %.not348 = icmp eq i64 %i.cu, 0
  br i1 %.not348, label %.thread501, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.cv = tail call i32 @get_log_level() #18
  %i.cw = icmp sgt i32 %i.cv, 2
  br i1 %i.cw, label %bb.bj, label %.thread444

bb.bj:                                            ; preds = %bb.bi
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.16) #18
  br label %.thread444

bb.bk:                                            ; preds = %bb.be
  %.pre = load i64, ptr %i.r, align 8
  %.pre464 = and i64 %.pre, 4096
  %i.cx = icmp eq i64 %.pre464, 0
  br i1 %i.cx, label %.thread501, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.cz = load ptr, ptr %i.cy, align 8
  %i.da = tail call i32 @xstrcasecmp(ptr noundef %i.cz, ptr noundef nonnull @.str.17) #18
  %.not351 = icmp eq i32 %i.da, 0
  br i1 %.not351, label %.thread501, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.db = tail call i32 @get_log_level() #18
  %i.dc = icmp sgt i32 %i.db, 2
  br i1 %i.dc, label %bb.bn, label %.thread444

bb.bn:                                            ; preds = %bb.bm
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.18) #18
  br label %.thread444

.thread501:                                       ; preds = %bb.bh, %bb.bl, %bb.bk
  %i.dd = phi ptr [ %i.cq, %bb.bk ], [ %i.cq, %bb.bl ], [ null, %bb.bh ] ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 4 uses
  %i.df = load ptr, ptr %i.de, align 8            ; 2 uses
  %.not352 = icmp eq ptr %i.df, null
  br i1 %.not352, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %.thread501
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.dh = load ptr, ptr %i.dg, align 8
  %.not353 = icmp eq ptr %i.dh, null
  br i1 %.not353, label %.thread427, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.di = tail call i32 @get_log_level() #18
  %i.dj = icmp sgt i32 %i.di, 2
  br i1 %i.dj, label %bb.bq, label %.thread444

bb.bq:                                            ; preds = %bb.bp
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.19) #18
  br label %.thread444

bb.br:                                            ; preds = %.thread501
  %i.dk = load ptr, ptr %0, align 8               ; 2 uses
  %.not354 = icmp eq ptr %i.dk, null
  br i1 %.not354, label %bb.bs, label %bb.bx

.thread427:                                       ; preds = %bb.bo
  %i.dl = load ptr, ptr %0, align 8               ; 2 uses
  %.not354428 = icmp eq ptr %i.dl, null
  br i1 %.not354428, label %.thread433.thread504, label %bb.bx

bb.bs:                                            ; preds = %bb.br
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dn = load ptr, ptr %i.dm, align 8
  %.not356 = icmp eq ptr %i.dn, null
  br i1 %.not356, label %bb.bt, label %.thread433.thread

bb.bt:                                            ; preds = %bb.bs
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dp = load ptr, ptr %i.do, align 8
  %.not357 = icmp eq ptr %i.dp, null
  br i1 %.not357, label %bb.bu, label %.thread433.thread

bb.bu:                                            ; preds = %bb.bt
end_hunk_0
begin_hunk_1_@update_resv:bb.a
  %i.ah = load i64, ptr %i.ag, align 8            ; 3 uses
  %.not472 = icmp eq i64 %i.ah, -2
  br i1 %.not472, label %bb.dv, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ai = and i64 %i.ah, 33554432
  %.not473 = icmp eq i64 %i.ai, 0
  br i1 %.not473, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = or i64 %i.ak, 33554432
  store i64 %i.al, ptr %i.aj, align 8
  %.pre = load i64, ptr %i.ag, align 8
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.am = phi i64 [ %.pre, %bb.ab ], [ %i.ah, %bb.aa ] ; 2 uses
  %i.an = and i64 %i.am, 67108864
  %.not474 = icmp eq i64 %i.an, 0
  br i1 %.not474, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ao = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = and i64 %i.ap, -33554433
  store i64 %i.aq, ptr %i.ao, align 8
  %.pre637 = load i64, ptr %i.ag, align 8
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.ar = phi i64 [ %.pre637, %bb.ad ], [ %i.am, %bb.ac ] ; 2 uses
  %i.as = and i64 %i.ar, 2
  %.not475 = icmp eq i64 %i.as, 0
  br i1 %.not475, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8
  %i.av = and i64 %i.au, -2
  store i64 %i.av, ptr %i.at, align 8
  %.pre638 = load i64, ptr %i.ag, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.aw = phi i64 [ %.pre638, %bb.af ], [ %i.ar, %bb.ae ] ; 2 uses
  %i.ax = and i64 %i.aw, 16384
  %.not476 = icmp eq i64 %i.ax, 0
  br i1 %.not476, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ay = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 2 uses
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = or i64 %i.az, 16384
  store i64 %i.ba, ptr %i.ay, align 8
  %.pre639 = load i64, ptr %i.ag, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.bb = phi i64 [ %.pre639, %bb.ah ], [ %i.aw, %bb.ag ] ; 2 uses
  %i.bc = and i64 %i.bb, 64
  %.not477 = icmp eq i64 %i.bc, 0
  br i1 %.not477, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.bd = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 2 uses
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = or i64 %i.be, 64
  store i64 %i.bf, ptr %i.bd, align 8
  %.pre640 = load i64, ptr %i.ag, align 8
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.bg = phi i64 [ %.pre640, %bb.aj ], [ %i.bb, %bb.ai ] ; 2 uses
  %i.bh = and i64 %i.bg, 128
  %.not478 = icmp eq i64 %i.bh, 0
  br i1 %.not478, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.bi = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = and i64 %i.bj, -65
  store i64 %i.bk, ptr %i.bi, align 8
  %.pre641 = load i64, ptr %i.ag, align 8
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.bl = phi i64 [ %.pre641, %bb.al ], [ %i.bg, %bb.ak ] ; 2 uses
  %i.bm = and i64 %i.bl, 68719476736
  %.not479 = icmp eq i64 %i.bm, 0
  br i1 %.not479, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bn = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 2 uses
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = and i64 %i.bo, -34359738369
  store i64 %i.bp, ptr %i.bn, align 8
  %.pre642 = load i64, ptr %i.ag, align 8
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.bq = phi i64 [ %.pre642, %bb.an ], [ %i.bl, %bb.am ] ; 2 uses
  %i.br = and i64 %i.bq, 8
  %.not480 = icmp eq i64 %i.br, 0
  br i1 %.not480, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.bs = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 2 uses
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = and i64 %i.bt, -5
  store i64 %i.bu, ptr %i.bs, align 8
  %.pre643 = load i64, ptr %i.ag, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.bv = phi i64 [ %.pre643, %bb.ap ], [ %i.bq, %bb.ao ] ; 2 uses
  %i.bw = and i64 %i.bv, 4194304
  %.not481 = icmp eq i64 %i.bw, 0
  br i1 %.not481, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 2 uses
  %i.by = load i64, ptr %i.bx, align 8
  %i.bz = and i64 %i.by, -2097153
  store i64 %i.bz, ptr %i.bx, align 8
  %.pre644 = load i64, ptr %i.ag, align 8
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.ca = phi i64 [ %.pre644, %bb.ar ], [ %i.bv, %bb.aq ] ; 2 uses
  %i.cb = and i64 %i.ca, 16777216
  %.not482 = icmp eq i64 %i.cb, 0
  br i1 %.not482, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.cc = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = and i64 %i.cd, -8388609
  store i64 %i.ce, ptr %i.cc, align 8
  %.pre645 = load i64, ptr %i.ag, align 8
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.cf = phi i64 [ %.pre645, %bb.at ], [ %i.ca, %bb.as ] ; 2 uses
  %i.cg = and i64 %i.cf, 32
  %.not483 = icmp eq i64 %i.cg, 0
  br i1 %.not483, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.ch = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8
  %i.cj = and i64 %i.ci, -17
  store i64 %i.cj, ptr %i.ch, align 8
  %.pre646 = load i64, ptr %i.ag, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ck = phi i64 [ %.pre646, %bb.av ], [ %i.cf, %bb.au ] ; 2 uses
  %i.cl = and i64 %i.ck, 256
  %.not484 = icmp eq i64 %i.cl, 0
  br i1 %.not484, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cm = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8
  %i.co = or i64 %i.cn, 256
  store i64 %i.co, ptr %i.cm, align 8
  %.pre647 = load i64, ptr %i.ag, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.cp = phi i64 [ %.pre647, %bb.ax ], [ %i.ck, %bb.aw ] ; 2 uses
  %i.cq = and i64 %i.cp, 512
  %.not485 = icmp eq i64 %i.cq, 0
  br i1 %.not485, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 2 uses
  %i.cs = load i64, ptr %i.cr, align 8
  %i.ct = and i64 %i.cs, -257
  store i64 %i.ct, ptr %i.cr, align 8
  %.pre648 = load i64, ptr %i.ag, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.cu = phi i64 [ %.pre648, %bb.az ], [ %i.cp, %bb.ay ] ; 2 uses
  %i.cv = and i64 %i.cu, 2048
  %.not486 = icmp eq i64 %i.cv, 0
  br i1 %.not486, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.cw = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 2 uses
  %i.cx = load i64, ptr %i.cw, align 8
  %i.cy = and i64 %i.cx, -1025
  store i64 %i.cy, ptr %i.cw, align 8
  %.pre649 = load i64, ptr %i.ag, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.cz = phi i64 [ %.pre649, %bb.bb ], [ %i.cu, %bb.ba ] ; 11 uses
  %i.da = and i64 %i.cz, 34370224148              ; 2 uses
  %.not487 = icmp eq i64 %i.da, 0
  br i1 %.not487, label %bb.bt, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.db = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 2 uses
  %i.dc = load i64, ptr %i.db, align 8            ; 3 uses
  %i.dd = and i64 %i.dc, 131072
  %.not488 = icmp eq i64 %i.dd, 0
  br i1 %.not488, label %bb.bi, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.de = tail call i32 @get_log_level() #18
  %i.df = icmp sgt i32 %i.de, 2
  br i1 %i.df, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.40) #18
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %.not598 = icmp eq ptr %1, null
  br i1 %.not598, label %.thread611, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.dg = tail call ptr @xstrdup(ptr noundef nonnull @.str.40) #18
  store ptr %i.dg, ptr %1, align 8
  br label %.thread611

bb.bi:                                            ; preds = %bb.bd
  %i.dh = and i64 %i.dc, 34370224148              ; 2 uses
  %.not489 = icmp eq i64 %i.dh, 0
  %.not490 = icmp eq i64 %i.dh, %i.da
  %or.cond = or i1 %.not489, %.not490
  br i1 %or.cond, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.di = lshr i64 %i.cz, 35
  %i.dj = trunc nuw nsw i64 %i.di to i32
  %spec.select.i = and i32 %i.dj, 1
  %3 = lshr i64 %i.cz, 2
  %4 = trunc i64 %3 to i32
  %i.dk = and i32 %4, 1
  %.1.i = add nuw nsw i32 %spec.select.i, %i.dk
  %5 = lshr i64 %i.cz, 21
  %6 = trunc i64 %5 to i32
  %i.dl = and i32 %6, 1
  %.2.i = add nuw nsw i32 %.1.i, %i.dl
  %7 = lshr i64 %i.cz, 23
  %8 = trunc i64 %7 to i32
  %i.dm = and i32 %8, 1
  %.3.i = add nuw nsw i32 %.2.i, %i.dm
  %9 = lshr i64 %i.cz, 4
  %10 = trunc i64 %9 to i32
  %i.dn = and i32 %10, 1
  %.4.i = add nuw nsw i32 %.3.i, %i.dn
  %i.do = icmp samesign ugt i32 %.4.i, 1
  br i1 %i.do, label %bb.bk, label %bb.bo

bb.bk:                                            ; preds = %bb.bi, %bb.bj
  %i.dp = tail call i32 @get_log_level() #18
  %i.dq = icmp sgt i32 %i.dp, 2
  br i1 %i.dq, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.41) #18
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.not597 = icmp eq ptr %1, null
  br i1 %.not597, label %.thread611, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.dr = tail call ptr @xstrdup(ptr noundef nonnull @.str.41) #18
  store ptr %i.dr, ptr %1, align 8
  br label %.thread611

bb.bo:                                            ; preds = %bb.bj
  %i.ds = and i64 %i.cz, 34359738368
  %.not491 = icmp eq i64 %i.ds, 0
  br i1 %.not491, label %bb.bp, label %.sink.split

bb.bp:                                            ; preds = %bb.bo
  %i.dt = and i64 %i.cz, 4
  %.not492 = icmp eq i64 %i.dt, 0
  br i1 %.not492, label %bb.bq, label %.sink.split

bb.bq:                                            ; preds = %bb.bp
  %i.du = and i64 %i.cz, 2097152
  %.not493 = icmp eq i64 %i.du, 0
  br i1 %.not493, label %bb.br, label %.sink.split

bb.br:                                            ; preds = %bb.bq
  %i.dv = and i64 %i.cz, 8388608
  %.not494 = icmp eq i64 %i.dv, 0
  br i1 %.not494, label %bb.bs, label %.sink.split

bb.bs:                                            ; preds = %bb.br
  %i.dw = and i64 %i.cz, 16
  %.not495 = icmp eq i64 %i.dw, 0
  br i1 %.not495, label %bb.bt, label %.sink.split

.sink.split:                                      ; preds = %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo
  %.sink703 = phi i64 [ 34359738368, %bb.bo ], [ 2097152, %bb.bq ], [ 8388608, %bb.br ], [ 4, %bb.bp ], [ 16, %bb.bs ]
  %i.dx = or i64 %i.dc, %.sink703
  store i64 %i.dx, ptr %i.db, align 8
  br label %bb.bt

bb.bt:                                            ; preds = %.sink.split, %bb.bs, %bb.bc
  %i.dy = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.dz = and i64 %i.dy, 262144
  %.not496 = icmp eq i64 %i.dz, 0
  %i.ea = and i64 %i.dy, 1074003968
  %or.cond601 = icmp eq i64 %i.ea, 0
  br i1 %or.cond601, label %bb.cf, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.eb = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8            ; 3 uses
  %i.ed = and i64 %i.ec, 32768
  %.not498 = icmp eq i64 %i.ed, 0
  br i1 %.not498, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  %i.ee = load i32, ptr %i.t, align 8
  %i.ef = and i32 %i.ee, 4
  %.not499 = icmp eq i32 %i.ef, 0
  br i1 %.not499, label %bb.bw, label %bb.ca

bb.bw:                                            ; preds = %bb.bv, %bb.bu
  %i.eg = tail call i32 @get_log_level() #18
  %i.eh = icmp sgt i32 %i.eg, 2
  br i1 %i.eh, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ei = load ptr, ptr %i.j, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.37, ptr noundef %i.ei) #18
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %bb.bw
  %.not596 = icmp eq ptr %1, null
  br i1 %.not596, label %.thread611, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.ej = tail call ptr @xstrdup(ptr noundef nonnull @.str.43) #18
  store ptr %i.ej, ptr %1, align 8
  br label %.thread611

bb.ca:                                            ; preds = %bb.bv
  %i.ek = and i64 %i.ec, 1025
  %or.cond602 = icmp eq i64 %i.ek, 0
  br i1 %or.cond602, label %.sink.split704, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.el = tail call i32 @get_log_level() #18
  %i.em = icmp sgt i32 %i.el, 2
  br i1 %i.em, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.en = load ptr, ptr %i.j, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.37, ptr noundef %i.en) #18
  br label %bb.cd

bb.cd:                                            ; preds = %bb.cc, %bb.cb
  %.not595 = icmp eq ptr %1, null
  br i1 %.not595, label %.thread611, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.eo = tail call ptr @xstrdup(ptr noundef nonnull @.str.14) #18
  store ptr %i.eo, ptr %1, align 8
  br label %.thread611

.sink.split704:                                   ; preds = %bb.ca
  %. = select i1 %.not496, i64 1073741824, i64 262144
  %i.ep = or i64 %i.ec, %.
  store i64 %i.ep, ptr %i.eb, align 8
  br label %bb.cf

bb.cf:                                            ; preds = %.sink.split704, %bb.bt
  %i.eq = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.er = and i64 %i.eq, 1024
  %.not503 = icmp eq i64 %i.er, 0
  %i.es = and i64 %i.eq, 1025
  %or.cond603 = icmp eq i64 %i.es, 0
  br i1 %or.cond603, label %bb.cl, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.et = getelementptr inbounds nuw i8, ptr %i.m, i64 144 ; 2 uses
  %i.eu = load i64, ptr %i.et, align 8            ; 2 uses
  %i.ev = and i64 %i.eu, 1074003968
  %or.cond604 = icmp eq i64 %i.ev, 0
  br i1 %or.cond604, label %.sink.split706, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ew = tail call i32 @get_log_level() #18
  %i.ex = icmp sgt i32 %i.ew, 2
  br i1 %i.ex, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  %i.ey = load ptr, ptr %i.j, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.37, ptr noundef %i.ey) #18
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %.not594 = icmp eq ptr %1, null
  br i1 %.not594, label %.thread611, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.ez = tail call ptr @xstrdup(ptr noundef nonnull @.str.14) #18
  store ptr %i.ez, ptr %1, align 8
  br label %.thread611

.sink.split706:                                   ; preds = %bb.cg
  %.709 = select i1 %.not503, i64 1, i64 1024
  %i.fa = or i64 %i.eu, %.709
  store i64 %i.fa, ptr %i.et, align 8
  br label %bb.cl

bb.cl:                                            ; preds = %.sink.split706, %bb.cf
  %i.fb = load i64, ptr %i.ag, align 8            ; 2 uses
  %i.fc = and i64 %i.fb, 4096
  %.not508 = icmp eq i64 %i.fc, 0
  br i1 %.not508, label %bb.cx, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.fd = getelementptr inbounds nuw i8, ptr %i.m, i64 232
  %i.fe = load ptr, ptr %i.fd, align 8
  %i.ff = icmp eq ptr %i.fe, null
  br i1 %i.ff, label %bb.cn, label %bb.cq

bb.cn:                                            ; preds = %bb.cm
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.fh = load ptr, ptr %i.fg, align 8
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %bb.cn
  %i.fj = tail call i32 @get_log_level() #18
  %i.fk = icmp sgt i32 %i.fj, 2
  br i1 %i.fk, label %bb.cp, label %.thread611

bb.cp:                                            ; preds = %bb.co
  %i.fl = load ptr, ptr %i.j, align 8
  tail call void (i32, ptr, ...) @log_var(i32 noundef 3, ptr noundef nonnull @.str.45, ptr noundef %i.fl) #18
  br label %.thread611

bb.cq:                                            ; preds = %bb.cn, %bb.cm
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.fn = load ptr, ptr %i.fm, align 8
  %i.fo = tail call i32 @xstrcasecmp(ptr noundef %i.fn, ptr noundef nonnull @.str.17) #18
  %.not509 = icmp eq i32 %i.fo, 0
  br i1 %.not509, label %bb.ct, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.fp = tail call i32 @get_log_level() #18
end_hunk_1
