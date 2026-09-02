Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/cluster_reports?download=true
inline.NumInlined: 13
inline.NumDeleted: 8
begin_hunk_0_@cluster_utilization:bb.a
  %i.m = tail call ptr @slurm_xcalloc(i64 noundef 1, i64 noundef 72, i1 noundef zeroext true, i1 noundef zeroext false, ptr noundef nonnull @.str, i32 noundef 651, ptr noundef nonnull @__func__._get_cluster_list) #9 ; 10 uses
  tail call void @slurmdb_init_cluster_cond(ptr noundef %i.m, i1 noundef zeroext false) #9
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 66
  %i.p = load i32, ptr @all_clusters_flag, align 4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store i16 1, ptr %i.n, align 8
  store i16 1, ptr %i.o, align 2
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not84.i.i = icmp eq ptr %i.r, null
  br i1 %.not84.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.s = tail call ptr @list_create(ptr noundef nonnull @xfree_ptr) #9 ; 2 uses
  store ptr %i.s, ptr %i.q, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.t = phi ptr [ %i.s, %bb.b ], [ %i.r, %bb.a ]
  %i.u = load ptr, ptr @cluster_flag, align 8     ; 2 uses
  %.not85.i.i = icmp eq ptr %i.u, null
  br i1 %.not85.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = tail call i32 @slurm_addto_char_list(ptr noundef %i.t, ptr noundef nonnull %i.u) #9 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.w = icmp sgt i32 %0, 0
  br i1 %i.w, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  %.not94.i.i = icmp eq ptr %i.k, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 2 uses
  %zext.i = zext nneg i32 %0 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.s, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.s ] ; 2 uses
  %.073110.i.i = phi i32 [ %i.p, %.lr.ph.i.i ], [ %.1.i.i, %bb.s ] ; 6 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.i.i ; 9 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call i32 @parse_option_end(ptr noundef %i.aa) #9 ; 5 uses
  %.not88.i.i = icmp eq i32 %i.ab, 0
  %i.ac = load ptr, ptr %i.z, align 8             ; 4 uses
  br i1 %.not88.i.i, label %.thread.i.i, label %bb.g

.thread.i.i:                                      ; preds = %bb.f
  %i.ad = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ac) #10
  %i.ae = trunc i64 %i.ad to i32
  %i.af = tail call i32 @llvm.smax.i32(i32 %i.ae, i32 1)
  %i.ag = zext nneg i32 %i.af to i64
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ah = sext i32 %i.ab to i64
  %i.ai = getelementptr inbounds i8, ptr %i.ac, i64 %i.ah
  %i.aj = load i8, ptr %i.ai, align 1
  %i.ak = icmp eq i8 %i.aj, 61
  br i1 %i.ak, label %bb.h, label %.critedge.i.i

bb.h:                                             ; preds = %bb.g
  %i.al = add nsw i32 %i.ab, 1                    ; 2 uses
  %.not89.i.i = icmp eq i32 %i.al, 0
  br i1 %.not89.i.i, label %bb.i, label %.critedge.i.i

bb.i:                                             ; preds = %bb.h, %.thread.i.i
  %.0102.i.i = phi i64 [ %i.ag, %.thread.i.i ], [ 1, %bb.h ]
  %i.am = tail call i32 @xstrncasecmp(ptr noundef nonnull %i.ac, ptr noundef nonnull @.str.25, i64 noundef %.0102.i.i) #9
  %.not90.i.i = icmp eq i32 %i.am, 0
  br i1 %.not90.i.i, label %bb.s, label %bb.j

.critedge.i.i:                                    ; preds = %bb.h, %bb.g
  %.07499.i.i = phi i32 [ %i.al, %bb.h ], [ %i.ab, %bb.g ] ; 4 uses
  %i.an = tail call i32 @llvm.smax.i32(i32 %i.ab, i32 2)
  %i.ao = add nsw i32 %i.an, -1
  %i.ap = zext nneg i32 %i.ao to i64              ; 4 uses
  %i.aq = tail call i32 @xstrncasecmp(ptr noundef nonnull %i.ac, ptr noundef nonnull @.str.30, i64 noundef %i.ap) #9
  %.not91.i.i = icmp eq i32 %i.aq, 0
  br i1 %.not91.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.critedge.i.i, %bb.i
  %.074100.i.i = phi i32 [ %.07499.i.i, %.critedge.i.i ], [ 0, %bb.i ]
  %i.ar = load ptr, ptr %i.q, align 8
  %i.as = load ptr, ptr %i.z, align 8
  %i.at = sext i32 %.074100.i.i to i64
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  %i.av = tail call i32 @slurm_addto_char_list(ptr noundef %i.ar, ptr noundef %i.au) #9 ; 0 uses
  br label %bb.s

bb.k:                                             ; preds = %.critedge.i.i
  %i.aw = load ptr, ptr %i.z, align 8
  %i.ax = tail call i32 @xstrncasecmp(ptr noundef %i.aw, ptr noundef nonnull @.str.31, i64 noundef %i.ap) #9
  %.not92.i.i = icmp eq i32 %i.ax, 0
  %i.ay = load ptr, ptr %i.z, align 8             ; 2 uses
  br i1 %.not92.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.az = sext i32 %.07499.i.i to i64
  %i.ba = getelementptr inbounds i8, ptr %i.ay, i64 %i.az
  %i.bb = tail call i64 @parse_time(ptr noundef nonnull %i.ba, i32 noundef 1) #9 ; 2 uses
  store i64 %i.bb, ptr %i.y, align 8
  %i.bc = tail call i64 @sanity_check_endtime(i64 noundef %i.bb) #9
  store i64 %i.bc, ptr %i.y, align 8
  br label %bb.s

bb.m:                                             ; preds = %bb.k
  %i.bd = tail call i32 @xstrncasecmp(ptr noundef %i.ay, ptr noundef nonnull @.str.32, i64 noundef %i.ap) #9
  %.not93.i.i = icmp eq i32 %i.bd, 0
  br i1 %.not93.i.i, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  br i1 %.not94.i.i, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.be = load ptr, ptr %i.z, align 8
  %i.bf = sext i32 %.07499.i.i to i64
  %i.bg = getelementptr inbounds i8, ptr %i.be, i64 %i.bf
  %i.bh = tail call i32 @slurm_addto_char_list(ptr noundef nonnull %i.k, ptr noundef nonnull %i.bg) #9 ; 0 uses
  br label %bb.s

bb.p:                                             ; preds = %bb.m
  %i.bi = load ptr, ptr %i.z, align 8
  %i.bj = tail call i32 @xstrncasecmp(ptr noundef %i.bi, ptr noundef nonnull @.str.34, i64 noundef %i.ap) #9
  %.not95.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not95.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bk = load ptr, ptr %i.z, align 8
  %i.bl = sext i32 %.07499.i.i to i64
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 %i.bl
  %i.bn = tail call i64 @parse_time(ptr noundef nonnull %i.bm, i32 noundef 1) #9
  store i64 %i.bn, ptr %i.x, align 8
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  store i32 1, ptr @exit_code, align 4
  %i.bo = load ptr, ptr @stderr, align 8
  %i.bp = load ptr, ptr %i.z, align 8
  %i.bq = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.bo, ptr noundef nonnull @.str.35, ptr noundef %i.bp) #11 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o, %bb.n, %bb.l, %bb.j, %bb.i
  %.1.i.i = phi i32 [ %.073110.i.i, %bb.r ], [ %.073110.i.i, %bb.q ], [ %.073110.i.i, %bb.o ], [ %.073110.i.i, %bb.n ], [ %.073110.i.i, %bb.l ], [ %.073110.i.i, %bb.j ], [ 1, %bb.i ] ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.br = icmp eq i64 %indvars.iv.next.i.i, %zext.i
  br i1 %i.br, label %._crit_edge.i.i, label %bb.f, !llvm.loop !35

._crit_edge.i.i:                                  ; preds = %bb.s, %bb.e
  %.073.lcssa.i.i = phi i32 [ %i.p, %bb.e ], [ %.1.i.i, %bb.s ]
  %.not86.i.i = icmp eq i32 %.073.lcssa.i.i, 0
  br i1 %.not86.i.i, label %bb.t, label %_set_cluster_cond.exit.i

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.bs = load ptr, ptr %i.q, align 8
  %i.bt = tail call i32 @list_count(ptr noundef %i.bs) #9
  %.not87.i.i = icmp eq i32 %i.bt, 0
  br i1 %.not87.i.i, label %bb.u, label %_set_cluster_cond.exit.i

bb.u:                                             ; preds = %bb.t
  %i.bu = load ptr, ptr %i.q, align 8
  %i.bv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @slurm_conf, i64 264), align 8
  %i.bw = tail call ptr @xstrdup(ptr noundef %i.bv) #9
  tail call void @list_append(ptr noundef %i.bu, ptr noundef %i.bw) #9
  br label %_set_cluster_cond.exit.i

_set_cluster_cond.exit.i:                         ; preds = %bb.u, %bb.t, %._crit_edge.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.m, i64 56 ; 4 uses
  %i.by = load i64, ptr %i.bx, align 8
  store i64 %i.by, ptr %i.d, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 4 uses
  %i.ca = load i64, ptr %i.bz, align 8
  store i64 %i.ca, ptr %i.e, align 8
  %i.cb = call i32 @slurmdb_report_set_start_end_time(ptr noundef nonnull %i.d, ptr noundef nonnull %i.e) #9 ; 0 uses
  %i.cc = load i64, ptr %i.d, align 8
  store i64 %i.cc, ptr %i.bx, align 8
  %i.cd = load i64, ptr %i.e, align 8
  store i64 %i.cd, ptr %i.bz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %i.ce = load ptr, ptr @db_conn, align 8
  %i.cf = call ptr @slurmdb_clusters_get(ptr noundef %i.ce, ptr noundef %i.m) #9 ; 7 uses
  %.not.i = icmp eq ptr %i.cf, null
  br i1 %.not.i, label %_get_cluster_list.exit.thread, label %bb.v

_get_cluster_list.exit.thread:                    ; preds = %_set_cluster_cond.exit.i
  store i32 1, ptr @exit_code, align 4
  %i.cg = load ptr, ptr @stderr, align 8
  %i.ch = call i64 @fwrite(ptr nonnull @.str.84, i64 29, i64 1, ptr %i.cg) #12 ; 0 uses
  br label %.critedge

bb.v:                                             ; preds = %_set_cluster_cond.exit.i
  %i.ci = load ptr, ptr @fed_name, align 8
  %.not22.i = icmp eq ptr %i.ci, null
  br i1 %.not22.i, label %bb.af, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = call i32 @list_count(ptr noundef nonnull %i.cf) #9 ; 2 uses
  %i.ck = call i32 @list_count(ptr noundef nonnull %i.cf) #9
  %i.cl = icmp slt i32 %i.ck, 2
  br i1 %i.cl, label %bb.af, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cm = call ptr @list_iterator_create(ptr noundef nonnull %i.cf) #9 ; 5 uses
  %i.cn = call ptr @list_next(ptr noundef %i.cm) #9 ; 2 uses
  %.not23.i.i = icmp eq ptr %i.cn, null
  br i1 %.not23.i.i, label %._crit_edge.i28.i, label %.lr.ph.i25.i

.lr.ph.i25.i:                                     ; preds = %bb.x, %bb.ae
  %i.co = phi ptr [ %i.cx, %bb.ae ], [ %i.cn, %bb.x ] ; 5 uses
  %.024.i.i = phi ptr [ %.1.i26.i, %bb.ae ], [ null, %bb.x ] ; 5 uses
  %.not20.i.i = icmp eq ptr %.024.i.i, null
  br i1 %.not20.i.i, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %.lr.ph.i25.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 280 ; 3 uses
  call void @slurm_xfree(ptr noundef nonnull %i.cp) #9
  %i.cq = load ptr, ptr @fed_name, align 8        ; 2 uses
  %.not21.i.i = icmp eq ptr %i.cq, null
  br i1 %.not21.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %i.cp, ptr noundef nonnull @.str.72, ptr noundef nonnull %i.cq) #9
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.cr = call ptr @xstrdup(ptr noundef nonnull @.str.73) #9
  store ptr %i.cr, ptr %i.cp, align 8
  br label %bb.ae

bb.ab:                                            ; preds = %.lr.ph.i25.i
  %i.cs = load ptr, ptr %.024.i.i, align 8        ; 2 uses
  %.not22.i.i = icmp eq ptr %i.cs, null
  %i.ct = load ptr, ptr %i.co, align 8            ; 2 uses
  br i1 %.not22.i.i, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  store ptr %i.ct, ptr %.024.i.i, align 8
  store ptr null, ptr %i.co, align 8
  %i.cu = call i32 @list_delete_item(ptr noundef %i.cm) #9 ; 0 uses
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.cv = call i32 @list_transfer(ptr noundef nonnull %i.cs, ptr noundef %i.ct) #9 ; 0 uses
  %i.cw = call i32 @list_delete_item(ptr noundef %i.cm) #9 ; 0 uses
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.z
  %.1.i26.i = phi ptr [ %.024.i.i, %bb.ad ], [ %.024.i.i, %bb.ac ], [ %i.co, %bb.z ], [ %i.co, %bb.aa ]
  %i.cx = call ptr @list_next(ptr noundef %i.cm) #9 ; 2 uses
  %.not.i27.i = icmp eq ptr %i.cx, null
  br i1 %.not.i27.i, label %._crit_edge.i28.i, label %.lr.ph.i25.i, !llvm.loop !36

._crit_edge.i28.i:                                ; preds = %bb.ae, %bb.x
  call void @list_iterator_destroy(ptr noundef %i.cm) #9
  br label %bb.af

bb.af:                                            ; preds = %._crit_edge.i28.i, %bb.w, %bb.v
  %.0.i = phi i32 [ 1, %bb.v ], [ %i.cj, %bb.w ], [ %i.cj, %._crit_edge.i28.i ]
  %i.cy = load i32, ptr @print_fields_have_header, align 4
  %.not23.i = icmp eq i32 %i.cy, 0
  br i1 %.not23.i, label %_get_cluster_list.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  %i.cz = load i64, ptr %i.bx, align 8
  store i64 %i.cz, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  %i.da = load i64, ptr %i.bz, align 8
  %i.db = add nsw i64 %i.da, -1
  store i64 %i.db, ptr %i.i, align 8
  call void @slurm_make_time_str(ptr noundef nonnull %i.h, ptr noundef nonnull %i.f, i32 noundef 256) #9
  call void @slurm_make_time_str(ptr noundef nonnull %i.i, ptr noundef nonnull %i.g, i32 noundef 256) #9
  %puts.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  %i.dc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.85, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.f, ptr noundef nonnull %i.g) ; 0 uses
  %i.dd = load i32, ptr @time_format, align 4
  %cond.i = icmp eq i32 %i.dd, 3
  br i1 %cond.i, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.de = load ptr, ptr @time_format_string, align 8
  %i.df = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %i.de) ; 0 uses
  br label %bb.aj

bb.ai:                                            ; preds = %bb.ag
  %i.dg = load ptr, ptr @tres_usage_str, align 8
  %i.dh = load ptr, ptr @time_format_string, align 8
  %i.di = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef %i.dg, ptr noundef %i.dh) ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %puts24.i = call i32 @puts(ptr nonnull dereferenceable(1) @str.11) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  br label %_get_cluster_list.exit

_get_cluster_list.exit:                           ; preds = %bb.af, %bb.aj
  %i.dj = load i64, ptr %i.bz, align 8
  %i.dk = load i64, ptr %i.bx, align 8
  %i.dl = sub nsw i64 %i.dj, %i.dk
  %2 = trunc i64 %i.dl to i32
  %3 = mul i32 %.0.i, %2
  call void @slurmdb_destroy_cluster_cond(ptr noundef %i.m) #9
  %i.dm = call i32 @list_count(ptr noundef %i.k) #9
  %.not121 = icmp eq i32 %i.dm, 0
  br i1 %.not121, label %.sink.split, label %bb.ak

.sink.split:                                      ; preds = %_get_cluster_list.exit
  %i.dn = load ptr, ptr @tres_str, align 8
  %.not122 = icmp eq ptr %i.dn, null
  %.str.19..str.18 = select i1 %.not122, ptr @.str.19, ptr @.str.18
  %i.do = call i32 @slurm_addto_char_list(ptr noundef %i.k, ptr noundef nonnull %.str.19..str.18) #9 ; 0 uses
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split, %_get_cluster_list.exit
  call fastcc void @_setup_print_fields_list(ptr noundef %i.k)
  %.not123 = icmp eq ptr %i.k, null
  br i1 %.not123, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @list_destroy(ptr noundef nonnull %i.k) #9
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.dp = call ptr @list_iterator_create(ptr noundef nonnull %i.cf) #9 ; 2 uses
  %i.dq = call ptr @list_next(ptr noundef %i.dp) #9 ; 2 uses
  %.not124173 = icmp eq ptr %i.dq, null
  br i1 %.not124173, label %._crit_edge183, label %.lr.ph182

.lr.ph182:                                        ; preds = %bb.am, %bb.at
  %i.dr = phi ptr [ %i.fq, %bb.at ], [ %i.dq, %bb.am ] ; 6 uses
  %.sroa.28.0180 = phi i64 [ %.sroa.28.2, %bb.at ], [ 0, %bb.am ] ; 4 uses
  %.sroa.2447.0179 = phi i64 [ %.sroa.2447.2, %bb.at ], [ 0, %bb.am ] ; 4 uses
  %.sroa.20.0178 = phi i64 [ %.sroa.20.2, %bb.at ], [ 0, %bb.am ] ; 4 uses
  %.sroa.16.0177 = phi i64 [ %.sroa.16.2, %bb.at ], [ 0, %bb.am ] ; 4 uses
  %.sroa.12.0176 = phi i64 [ %.sroa.12.2, %bb.at ], [ 0, %bb.am ] ; 4 uses
  %.sroa.8.0175 = phi i64 [ %.sroa.8.2, %bb.at ], [ 0, %bb.am ] ; 4 uses
  %.sroa.0.0174 = phi i64 [ %.sroa.0.2, %bb.at ], [ 0, %bb.am ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  store ptr null, ptr %i.j, align 8
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %.not131 = icmp eq ptr %i.ds, null
  br i1 %.not131, label %bb.at, label %bb.an, !llvm.loop !37

bb.an:                                            ; preds = %.lr.ph182
  %i.dt = call i32 @list_count(ptr noundef nonnull %i.ds) #9
  %.not132 = icmp eq i32 %i.dt, 0
  br i1 %.not132, label %bb.at, label %bb.ao, !llvm.loop !37

bb.ao:                                            ; preds = %bb.an
  %i.du = load ptr, ptr %i.dr, align 8
  %i.dv = call ptr @list_iterator_create(ptr noundef %i.du) #9 ; 3 uses
  %i.dw = call ptr @list_next(ptr noundef %i.dv) #9 ; 2 uses
  %.not133141 = icmp eq ptr %i.dw, null
  br i1 %.not133141, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ao, %.lr.ph
  %i.dx = phi ptr [ %i.dz, %.lr.ph ], [ %i.dw, %bb.ao ]
  %i.dy = call i32 @slurmdb_sum_accounting_list(ptr noundef nonnull %i.dx, ptr noundef nonnull %i.j) #9 ; 0 uses
  %i.dz = call ptr @list_next(ptr noundef %i.dv) #9 ; 2 uses
  %.not133 = icmp eq ptr %i.dz, null
  br i1 %.not133, label %._crit_edge, label %.lr.ph, !llvm.loop !38

._crit_edge:                                      ; preds = %.lr.ph, %bb.ao
  call void @list_iterator_destroy(ptr noundef %i.dv) #9
  %i.ea = load ptr, ptr %i.dr, align 8            ; 2 uses
  %.not134 = icmp eq ptr %i.ea, null
  br i1 %.not134, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %._crit_edge
  call void @list_destroy(ptr noundef nonnull %i.ea) #9
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %._crit_edge
  store ptr null, ptr %i.dr, align 8
  %i.eb = load ptr, ptr %i.j, align 8
  store ptr %i.eb, ptr %i.dr, align 8
  store ptr null, ptr %i.j, align 8
  %i.ec = load ptr, ptr @tres_list, align 8
  %i.ed = call ptr @list_iterator_create(ptr noundef %i.ec) #9 ; 4 uses
  %i.ee = call ptr @list_next(ptr noundef %i.ed) #9 ; 2 uses
  %.not135142158 = icmp eq ptr %i.ee, null
  br i1 %.not135142158, label %.outer._crit_edge, label %.lr.ph143

.lr.ph143:                                        ; preds = %bb.aq, %.outer
  %i.ef = phi ptr [ %i.fp, %.outer ], [ %i.ee, %bb.aq ]
  %.sroa.28.1.ph165 = phi i64 [ %i.fo, %.outer ], [ %.sroa.28.0180, %bb.aq ] ; 2 uses
  %.sroa.2447.1.ph164 = phi i64 [ %i.fd, %.outer ], [ %.sroa.2447.0179, %bb.aq ] ; 2 uses
  %.sroa.20.1.ph163 = phi i64 [ %i.fj, %.outer ], [ %.sroa.20.0178, %bb.aq ] ; 2 uses
  %.sroa.16.1.ph162 = phi i64 [ %i.fg, %.outer ], [ %.sroa.16.0177, %bb.aq ] ; 2 uses
  %.sroa.12.1.ph161 = phi i64 [ %i.fa, %.outer ], [ %.sroa.12.0176, %bb.aq ] ; 2 uses
  %.sroa.8.1.ph160 = phi i64 [ %i.ex, %.outer ], [ %.sroa.8.0175, %bb.aq ] ; 2 uses
  %.sroa.0.1.ph159 = phi i64 [ %.sroa.0.1., %.outer ], [ %.sroa.0.0174, %bb.aq ] ; 2 uses
  br label %bb.ar

bb.ar:                                            ; preds = %.lr.ph143, %.backedge140
  %i.eg = phi ptr [ %i.ef, %.lr.ph143 ], [ %i.ek, %.backedge140 ]
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24 ; 2 uses
  %i.ei = load i32, ptr %i.eh, align 8
  %i.ej = icmp eq i32 %i.ei, -2
  br i1 %i.ej, label %.backedge140, label %bb.as

.backedge140:                                     ; preds = %bb.ar, %bb.as
  %i.ek = call ptr @list_next(ptr noundef %i.ed) #9 ; 2 uses
  %.not135 = icmp eq ptr %i.ek, null
  br i1 %.not135, label %.outer._crit_edge, label %bb.ar, !llvm.loop !39

bb.as:                                            ; preds = %bb.ar
  %i.el = load ptr, ptr %i.dr, align 8
  %i.em = call ptr @list_find_first(ptr noundef %i.el, ptr noundef nonnull @slurmdb_find_cluster_accting_tres_in_list, ptr noundef nonnull %i.eh) #9 ; 10 uses
  %.not136 = icmp eq ptr %i.em, null
  br i1 %.not136, label %.backedge140, label %.outer

.outer:                                           ; preds = %bb.as
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 56
  %i.eo = getelementptr inbounds nuw i8, ptr %i.em, i64 64
  %i.ep = load i32, ptr %i.eo, align 8
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %i.em, i64 72 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8
  %i.et = udiv i64 %i.es, %i.eq
  store i64 %i.et, ptr %i.er, align 8
  %i.eu = load i64, ptr %i.em, align 8            ; 2 uses
  %.sroa.0.1. = call i64 @llvm.umax.i64(i64 %.sroa.0.1.ph159, i64 %i.eu) ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.ew = load i64, ptr %i.ev, align 8            ; 2 uses
  %i.ex = call i64 @llvm.umax.i64(i64 %.sroa.8.1.ph160, i64 %i.ew) ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %i.ez = load i64, ptr %i.ey, align 8            ; 2 uses
  %i.fa = call i64 @llvm.umax.i64(i64 %.sroa.12.1.ph161, i64 %i.ez) ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.em, i64 48
  %i.fc = load i64, ptr %i.fb, align 8            ; 2 uses
  %i.fd = call i64 @llvm.umax.i64(i64 %.sroa.2447.1.ph164, i64 %i.fc) ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  %i.ff = load i64, ptr %i.fe, align 8
  %i.fg = call i64 @llvm.umax.i64(i64 %.sroa.16.1.ph162, i64 %i.ff) ; 2 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.fi = load i64, ptr %i.fh, align 8            ; 2 uses
  %i.fj = call i64 @llvm.umax.i64(i64 %.sroa.20.1.ph163, i64 %i.fi) ; 2 uses
  %i.fk = add i64 %i.ew, %i.eu
  %i.fl = add i64 %i.fk, %i.ez
  %i.fm = add i64 %i.fl, %i.fc
  %i.fn = add i64 %i.fm, %i.fi                    ; 2 uses
  store i64 %i.fn, ptr %i.en, align 8
  %i.fo = call i64 @llvm.umax.i64(i64 %.sroa.28.1.ph165, i64 %i.fn) ; 2 uses
  %i.fp = call ptr @list_next(ptr noundef %i.ed) #9 ; 2 uses
  %.not135142 = icmp eq ptr %i.fp, null
  br i1 %.not135142, label %.outer._crit_edge, label %.lr.ph143, !llvm.loop !39

.outer._crit_edge:                                ; preds = %.outer, %.backedge140, %bb.aq
  %.sroa.0.1.ph.lcssa = phi i64 [ %.sroa.0.1.ph159, %.backedge140 ], [ %.sroa.0.0174, %bb.aq ], [ %.sroa.0.1., %.outer ]
  %.sroa.8.1.ph.lcssa = phi i64 [ %.sroa.8.1.ph160, %.backedge140 ], [ %.sroa.8.0175, %bb.aq ], [ %i.ex, %.outer ]
  %.sroa.12.1.ph.lcssa = phi i64 [ %.sroa.12.1.ph161, %.backedge140 ], [ %.sroa.12.0176, %bb.aq ], [ %i.fa, %.outer ]
  %.sroa.16.1.ph.lcssa = phi i64 [ %.sroa.16.1.ph162, %.backedge140 ], [ %.sroa.16.0177, %bb.aq ], [ %i.fg, %.outer ]
  %.sroa.20.1.ph.lcssa = phi i64 [ %.sroa.20.1.ph163, %.backedge140 ], [ %.sroa.20.0178, %bb.aq ], [ %i.fj, %.outer ]
  %.sroa.2447.1.ph.lcssa = phi i64 [ %.sroa.2447.1.ph164, %.backedge140 ], [ %.sroa.2447.0179, %bb.aq ], [ %i.fd, %.outer ]
  %.sroa.28.1.ph.lcssa = phi i64 [ %.sroa.28.1.ph165, %.backedge140 ], [ %.sroa.28.0180, %bb.aq ], [ %i.fo, %.outer ]
  call void @list_iterator_destroy(ptr noundef %i.ed) #9
  br label %bb.at

bb.at:                                            ; preds = %.lr.ph182, %bb.an, %.outer._crit_edge
  %.sroa.0.2 = phi i64 [ %.sroa.0.1.ph.lcssa, %.outer._crit_edge ], [ %.sroa.0.0174, %bb.an ], [ %.sroa.0.0174, %.lr.ph182 ] ; 2 uses
  %.sroa.8.2 = phi i64 [ %.sroa.8.1.ph.lcssa, %.outer._crit_edge ], [ %.sroa.8.0175, %bb.an ], [ %.sroa.8.0175, %.lr.ph182 ] ; 2 uses
  %.sroa.12.2 = phi i64 [ %.sroa.12.1.ph.lcssa, %.outer._crit_edge ], [ %.sroa.12.0176, %bb.an ], [ %.sroa.12.0176, %.lr.ph182 ] ; 2 uses
  %.sroa.16.2 = phi i64 [ %.sroa.16.1.ph.lcssa, %.outer._crit_edge ], [ %.sroa.16.0177, %bb.an ], [ %.sroa.16.0177, %.lr.ph182 ] ; 2 uses
  %.sroa.20.2 = phi i64 [ %.sroa.20.1.ph.lcssa, %.outer._crit_edge ], [ %.sroa.20.0178, %bb.an ], [ %.sroa.20.0178, %.lr.ph182 ] ; 2 uses
  %.sroa.2447.2 = phi i64 [ %.sroa.2447.1.ph.lcssa, %.outer._crit_edge ], [ %.sroa.2447.0179, %bb.an ], [ %.sroa.2447.0179, %.lr.ph182 ] ; 2 uses
  %.sroa.28.2 = phi i64 [ %.sroa.28.1.ph.lcssa, %.outer._crit_edge ], [ %.sroa.28.0180, %bb.an ], [ %.sroa.28.0180, %.lr.ph182 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  %i.fq = call ptr @list_next(ptr noundef %i.dp) #9 ; 2 uses
  %.not124 = icmp eq ptr %i.fq, null
  br i1 %.not124, label %._crit_edge183, label %.lr.ph182

._crit_edge183:                                   ; preds = %bb.at, %bb.am
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.am ], [ %.sroa.0.2, %bb.at ] ; 2 uses
  %.sroa.8.0.lcssa = phi i64 [ 0, %bb.am ], [ %.sroa.8.2, %bb.at ]
  %.sroa.12.0.lcssa = phi i64 [ 0, %bb.am ], [ %.sroa.12.2, %bb.at ]
  %.sroa.16.0.lcssa = phi i64 [ 0, %bb.am ], [ %.sroa.16.2, %bb.at ]
  %.sroa.20.0.lcssa = phi i64 [ 0, %bb.am ], [ %.sroa.20.2, %bb.at ]
  %.sroa.2447.0.lcssa = phi i64 [ 0, %bb.am ], [ %.sroa.2447.2, %bb.at ]
  %.sroa.28.0.lcssa = phi i64 [ 0, %bb.am ], [ %.sroa.28.2, %bb.at ]
  %i.fr = load ptr, ptr @print_fields_list, align 8
  %i.fs = call ptr @list_iterator_create(ptr noundef %i.fr) #9 ; 3 uses
  %i.ft = call ptr @list_next(ptr noundef %i.fs) #9 ; 2 uses
  %.not125191 = icmp eq ptr %i.ft, null
  br i1 %.not125191, label %._crit_edge194, label %.lr.ph193

.lr.ph193:                                        ; preds = %._crit_edge183, %bb.ba
  %i.fu = phi ptr [ %i.fx, %bb.ba ], [ %i.ft, %._crit_edge183 ] ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fw = load i16, ptr %i.fv, align 8
  switch i16 %i.fw, label %bb.ba [
    i16 2, label %.sink.split262
    i16 3, label %bb.au
    i16 4, label %bb.av
    i16 7, label %bb.aw
    i16 6, label %bb.ax
    i16 5, label %bb.ay
    i16 8, label %bb.az
    i16 14, label %.sink.split262
  ]

bb.au:                                            ; preds = %.lr.ph193
  br label %.sink.split262

bb.av:                                            ; preds = %.lr.ph193
  br label %.sink.split262

bb.aw:                                            ; preds = %.lr.ph193
  br label %.sink.split262

bb.ax:                                            ; preds = %.lr.ph193
  br label %.sink.split262

bb.ay:                                            ; preds = %.lr.ph193
  br label %.sink.split262

bb.az:                                            ; preds = %.lr.ph193
  br label %.sink.split262

.sink.split262:                                   ; preds = %.lr.ph193, %.lr.ph193, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az
  %.sroa.0.0.lcssa.sink = phi i64 [ %.sroa.0.0.lcssa, %.lr.ph193 ], [ %.sroa.28.0.lcssa, %bb.az ], [ %.sroa.20.0.lcssa, %bb.ay ], [ %.sroa.16.0.lcssa, %bb.ax ], [ %.sroa.2447.0.lcssa, %bb.aw ], [ %.sroa.12.0.lcssa, %bb.av ], [ %.sroa.8.0.lcssa, %bb.au ], [ %.sroa.0.0.lcssa, %.lr.ph193 ]
  call void @sreport_set_usage_col_width(ptr noundef nonnull %i.fu, i64 noundef %.sroa.0.0.lcssa.sink) #9
  br label %bb.ba

bb.ba:                                            ; preds = %.sink.split262, %.lr.ph193
  %i.fx = call ptr @list_next(ptr noundef %i.fs) #9 ; 2 uses
  %.not125 = icmp eq ptr %i.fx, null
  br i1 %.not125, label %._crit_edge194, label %.lr.ph193, !llvm.loop !40

._crit_edge194:                                   ; preds = %bb.ba, %._crit_edge183
  call void @list_iterator_destroy(ptr noundef %i.fs) #9
  %i.fy = load ptr, ptr @print_fields_list, align 8
  call void @print_fields_header(ptr noundef %i.fy) #9
  %i.fz = call ptr @list_iterator_create(ptr noundef nonnull %i.cf) #9 ; 3 uses
  %i.ga = call ptr @list_next(ptr noundef %i.fz) #9 ; 2 uses
  %.not126199 = icmp eq ptr %i.ga, null
  br i1 %.not126199, label %._crit_edge202, label %.lr.ph201

.lr.ph201:                                        ; preds = %._crit_edge194
  %4 = zext i32 %3 to i64
  br label %bb.bb

bb.bb:                                            ; preds = %.lr.ph201, %.backedge139
  %i.gb = phi ptr [ %i.ga, %.lr.ph201 ], [ %i.ge, %.backedge139 ] ; 4 uses
  %i.gc = load ptr, ptr %i.gb, align 8            ; 2 uses
  %.not128 = icmp eq ptr %i.gc, null
  br i1 %.not128, label %.backedge139, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gd = call i32 @list_count(ptr noundef nonnull %i.gc) #9
  %.not129 = icmp eq i32 %i.gd, 0
  br i1 %.not129, label %.backedge139, label %bb.bd

.backedge139:                                     ; preds = %bb.bb, %bb.bc, %._crit_edge198
  %i.ge = call ptr @list_next(ptr noundef %i.fz) #9 ; 2 uses
  %.not126 = icmp eq ptr %i.ge, null
  br i1 %.not126, label %._crit_edge202, label %bb.bb, !llvm.loop !41

bb.bd:                                            ; preds = %bb.bc
  %i.gf = load ptr, ptr @tres_list, align 8
  %i.gg = call ptr @list_iterator_create(ptr noundef %i.gf) #9 ; 3 uses
  %i.gh = call ptr @list_next(ptr noundef %i.gg) #9 ; 2 uses
  %.not130195 = icmp eq ptr %i.gh, null
  br i1 %.not130195, label %._crit_edge198, label %.lr.ph197

.lr.ph197:                                        ; preds = %bb.bd
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gb, i64 280
  br label %bb.be

bb.be:                                            ; preds = %.lr.ph197, %.backedge
  %i.gj = phi ptr [ %i.gh, %.lr.ph197 ], [ %i.ko, %.backedge ] ; 5 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 24 ; 4 uses
  %i.gl = load i32, ptr %i.gk, align 8
  %i.gm = icmp eq i32 %i.gl, -2
  br i1 %i.gm, label %.backedge, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr null, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.gn = load ptr, ptr %i.gb, align 8
  %i.go = call ptr @list_find_first(ptr noundef %i.gn, ptr noundef nonnull @slurmdb_find_cluster_accting_tres_in_list, ptr noundef nonnull %i.gk) #9 ; 9 uses
  %.not.i137 = icmp eq ptr %i.go, null
  br i1 %.not.i137, label %bb.bg, label %bb.bi

bb.bg:                                            ; preds = %bb.bf
  %i.gp = call i32 @get_log_level() #9
  %i.gq = icmp sgt i32 %i.gp, 5
  br i1 %i.gq, label %bb.bh, label %_cluster_util_tres_report.exit

bb.bh:                                            ; preds = %bb.bg
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gj, i64 40
  %i.gs = load ptr, ptr %i.gr, align 8
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  %i.gu = load ptr, ptr %i.gt, align 8            ; 2 uses
  %.not95.i = icmp eq ptr %i.gu, null             ; 2 uses
  %i.gv = select i1 %.not95.i, ptr @.str.7, ptr @.str.77
  %spec.select.i = select i1 %.not95.i, ptr @.str.7, ptr %i.gu
  %i.gw = load i32, ptr %i.gk, align 8
  call void (i32, ptr, ...) @log_var(i32 noundef 6, ptr noundef nonnull @.str.87, ptr noundef %i.gs, ptr noundef nonnull %i.gv, ptr noundef nonnull %spec.select.i, i32 noundef %i.gw) #9
  br label %_cluster_util_tres_report.exit

bb.bi:                                            ; preds = %bb.bf
  %i.gx = getelementptr inbounds nuw i8, ptr %i.go, i64 56
  %i.gy = load i64, ptr %i.gx, align 8            ; 8 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.go, i64 72 ; 2 uses
  %i.ha = load i64, ptr %i.gz, align 8            ; 2 uses
  %.not96.i = icmp eq i64 %i.ha, 0
  br i1 %.not96.i, label %bb.bj, label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.hb = load i32, ptr %i.gk, align 8
  %i.hc = icmp eq i32 %i.hb, 3
  br i1 %i.hc, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  %i.hd = mul i64 %i.ha, %4
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %.089.i = phi i64 [ %i.hd, %bb.bk ], [ %i.gy, %bb.bj ]
  %i.he = load ptr, ptr @print_fields_list, align 8
  %i.hf = call i32 @list_count(ptr noundef %i.he) #9 ; 12 uses
  %i.hg = load ptr, ptr @print_fields_list, align 8
  %i.hh = call ptr @list_iterator_create(ptr noundef %i.hg) #9 ; 3 uses
  %i.hi = call ptr @list_next(ptr noundef %i.hh) #9 ; 2 uses
  %.not97101.i = icmp eq ptr %i.hi, null
  br i1 %.not97101.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bl
  %i.hj = getelementptr inbounds nuw i8, ptr %i.gj, i64 40
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gj, i64 32
  %i.hl = getelementptr inbounds nuw i8, ptr %i.go, i64 32
  %i.hm = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.hn = getelementptr inbounds nuw i8, ptr %i.go, i64 48
  %i.ho = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.hp = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.cb, %.lr.ph.i
  %i.hq = phi ptr [ %i.hi, %.lr.ph.i ], [ %i.kn, %bb.cb ] ; 25 uses
  %.0103.i = phi i64 [ 0, %.lr.ph.i ], [ %.2.i, %bb.cb ] ; 12 uses
  %.088102.i = phi i32 [ 1, %.lr.ph.i ], [ %i.km, %bb.cb ] ; 13 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 24
  %i.hs = load i16, ptr %i.hr, align 8
  switch i16 %i.hs, label %bb.ca [
    i16 0, label %bb.bn
    i16 1, label %bb.bo
    i16 2, label %bb.bp
    i16 3, label %bb.bq
    i16 4, label %bb.br
    i16 7, label %bb.bs
    i16 6, label %bb.bt
    i16 5, label %bb.bu
    i16 8, label %bb.bv
    i16 14, label %bb.bw
    i16 15, label %bb.bz
  ]

bb.bn:                                            ; preds = %bb.bm
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hu = load ptr, ptr %i.ht, align 8
  %i.hv = load ptr, ptr %i.gi, align 8
  %i.hw = icmp eq i32 %.088102.i, %i.hf
  %i.hx = zext i1 %i.hw to i32
  call void %i.hu(ptr noundef nonnull %i.hq, ptr noundef %i.hv, i32 noundef %i.hx) #9, !inline_history !42
  br label %bb.cb

bb.bo:                                            ; preds = %bb.bm
  %i.hy = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.hz = load ptr, ptr %i.hy, align 8
  %i.ia = icmp eq i32 %.088102.i, %i.hf
  %i.ib = zext i1 %i.ia to i32
  call void %i.hz(ptr noundef nonnull %i.hq, ptr noundef nonnull %i.gz, i32 noundef %i.ib) #9, !inline_history !42
  br label %bb.cb

bb.bp:                                            ; preds = %bb.bm
  %i.ic = load i64, ptr %i.go, align 8
  %i.id = call ptr @sreport_get_time_str(i64 noundef %i.ic, i64 noundef %i.gy) #9 ; 2 uses
  store ptr %i.id, ptr %i.a, align 8
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.if = load ptr, ptr %i.ie, align 8
  %i.ig = icmp eq i32 %.088102.i, %i.hf
  %i.ih = zext i1 %i.ig to i32
  call void %i.if(ptr noundef nonnull %i.hq, ptr noundef %i.id, i32 noundef %i.ih) #9, !inline_history !42
  call void @slurm_xfree(ptr noundef nonnull %i.a) #9
  br label %bb.cb

bb.bq:                                            ; preds = %bb.bm
  %i.ii = load i64, ptr %i.hp, align 8
  %i.ij = call ptr @sreport_get_time_str(i64 noundef %i.ii, i64 noundef %i.gy) #9 ; 2 uses
  store ptr %i.ij, ptr %i.a, align 8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.il = load ptr, ptr %i.ik, align 8
  %i.im = icmp eq i32 %.088102.i, %i.hf
  %i.in = zext i1 %i.im to i32
  call void %i.il(ptr noundef nonnull %i.hq, ptr noundef %i.ij, i32 noundef %i.in) #9, !inline_history !42
  call void @slurm_xfree(ptr noundef nonnull %i.a) #9
  br label %bb.cb

bb.br:                                            ; preds = %bb.bm
  %i.io = load i64, ptr %i.ho, align 8
  %i.ip = call ptr @sreport_get_time_str(i64 noundef %i.io, i64 noundef %i.gy) #9 ; 2 uses
  store ptr %i.ip, ptr %i.a, align 8
  %i.iq = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.ir = load ptr, ptr %i.iq, align 8
  %i.is = icmp eq i32 %.088102.i, %i.hf
  %i.it = zext i1 %i.is to i32
  call void %i.ir(ptr noundef nonnull %i.hq, ptr noundef %i.ip, i32 noundef %i.it) #9, !inline_history !42
  call void @slurm_xfree(ptr noundef nonnull %i.a) #9
  br label %bb.cb

bb.bs:                                            ; preds = %bb.bm
  %i.iu = load i64, ptr %i.hn, align 8
  %i.iv = call ptr @sreport_get_time_str(i64 noundef %i.iu, i64 noundef %i.gy) #9 ; 2 uses
  store ptr %i.iv, ptr %i.a, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8
  %i.iy = icmp eq i32 %.088102.i, %i.hf
  %i.iz = zext i1 %i.iy to i32
  call void %i.ix(ptr noundef nonnull %i.hq, ptr noundef %i.iv, i32 noundef %i.iz) #9, !inline_history !42
  call void @slurm_xfree(ptr noundef nonnull %i.a) #9
  br label %bb.cb

bb.bt:                                            ; preds = %bb.bm
  %i.ja = load i64, ptr %i.hm, align 8
  %i.jb = call ptr @sreport_get_time_str(i64 noundef %i.ja, i64 noundef %i.gy) #9 ; 2 uses
  store ptr %i.jb, ptr %i.a, align 8
  %i.jc = getelementptr inbounds nuw i8, ptr %i.hq, i64 16
  %i.jd = load ptr, ptr %i.jc, align 8
  %i.je = icmp eq i32 %.088102.i, %i.hf
  %i.jf = zext i1 %i.je to i32
  call void %i.jd(ptr noundef nonnull %i.hq, ptr noundef %i.jb, i32 noundef %i.jf) #9, !inline_history !42
  call void @slurm_xfree(ptr noundef nonnull %i.a) #9
  br label %bb.cb

bb.bu:                                            ; preds = %bb.bm
  %i.jg = load i64, ptr %i.hl, align 8
  %i.jh = call ptr @sreport_get_time_str(i64 noundef %i.jg, i64 noundef %i.gy) #9 ; 2 uses
end_hunk_0
