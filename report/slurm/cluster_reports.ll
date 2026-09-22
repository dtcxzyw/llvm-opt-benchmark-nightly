Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/slurm/original/cluster_reports?download=true
inline.NumInlined: 13
inline.NumDeleted: 8
begin_hunk_0_@_setup_print_fields_list:bb.a
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = call i32 @xstrncasecmp(ptr noundef nonnull @.str.58, ptr noundef nonnull %i.h, i64 noundef %i.cz) #9
  %.not134 = icmp eq i32 %i.da, 0
  br i1 %.not134, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.db = load ptr, ptr %i.a, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  store i16 17, ptr %i.dc, align 8
  %i.dd = call ptr @xstrdup(ptr noundef nonnull @.str.59) #9
  %i.de = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store ptr %i.dd, ptr %i.df, align 8
  store i32 8, ptr %i.de, align 8
  br label %bb.aw

bb.ah:                                            ; preds = %bb.af
  %i.dg = call i32 @xstrncasecmp(ptr noundef nonnull @.str.60, ptr noundef nonnull %i.h, i64 noundef %i.bu) #9
  %.not135 = icmp eq i32 %i.dg, 0
  br i1 %.not135, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.dh = load ptr, ptr %i.a, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  store i16 8, ptr %i.di, align 8
  %i.dj = call ptr @xstrdup(ptr noundef nonnull @.str.61) #9
  %i.dk = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.dj, ptr %i.dl, align 8
  %i.dm = load i32, ptr @time_format, align 4
  %i.dn = add i32 %i.dm, -4
  %or.cond27 = icmp ult i32 %i.dn, 3
  %.160 = select i1 %or.cond27, i32 20, i32 12
  store i32 %.160, ptr %i.dk, align 8
  br label %bb.aw

bb.aj:                                            ; preds = %bb.ah
  %i.do = call i32 @llvm.smax.i32(i32 %i.m, i32 5)
  %i.dp = zext nneg i32 %i.do to i64              ; 2 uses
  %i.dq = call i32 @xstrncasecmp(ptr noundef nonnull @.str.62, ptr noundef nonnull %i.h, i64 noundef %i.dp) #9
  %.not136 = icmp eq i32 %i.dq, 0
  br i1 %.not136, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dr = call i32 @xstrncasecmp(ptr noundef nonnull @.str.63, ptr noundef nonnull %i.h, i64 noundef %i.p) #9
  %.not137 = icmp eq i32 %i.dr, 0
  br i1 %.not137, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ds = call i32 @xstrncasecmp(ptr noundef nonnull @.str.64, ptr noundef nonnull %i.h, i64 noundef %i.p) #9
  %.not138 = icmp eq i32 %i.ds, 0
  br i1 %.not138, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.aj
  %i.dt = load ptr, ptr %i.a, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store i16 1, ptr %i.du, align 8
  %i.dv = call ptr @xstrdup(ptr noundef nonnull @.str.65) #9
  %i.dw = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %i.dv, ptr %i.dx, align 8
  store i32 10, ptr %i.dw, align 8
  br label %bb.aw

bb.an:                                            ; preds = %bb.al
  %i.dy = call i32 @xstrncasecmp(ptr noundef nonnull @.str.66, ptr noundef nonnull %i.h, i64 noundef %i.dp) #9
  %.not139 = icmp eq i32 %i.dy, 0
  br i1 %.not139, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.dz = load ptr, ptr %i.a, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 24
  store i16 15, ptr %i.ea, align 8
  %i.eb = call ptr @xstrdup(ptr noundef nonnull @.str.67) #9
  %i.ec = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  store ptr %i.eb, ptr %i.ed, align 8
  store i32 14, ptr %i.ec, align 8
  br label %bb.aw

bb.ap:                                            ; preds = %bb.an
  %i.ee = call i32 @xstrncasecmp(ptr noundef nonnull @.str.68, ptr noundef nonnull %i.h, i64 noundef %i.an) #9
  %.not140 = icmp eq i32 %i.ee, 0
  br i1 %.not140, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ef = load ptr, ptr %i.a, align 8
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  store i16 12, ptr %i.eg, align 8
  %i.eh = call ptr @xstrdup(ptr noundef nonnull @.str.68) #9
  %i.ei = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.eh, ptr %i.ej, align 8
  %i.ek = load i32, ptr @time_format, align 4
  %i.el = add i32 %i.ek, -4
  %or.cond31 = icmp ult i32 %i.el, 3
  %.161 = select i1 %or.cond31, i32 18, i32 10
  store i32 %.161, ptr %i.ei, align 8
  br label %bb.aw

bb.ar:                                            ; preds = %bb.ap
  %i.em = call i32 @xstrncasecmp(ptr noundef nonnull @.str.69, ptr noundef nonnull %i.h, i64 noundef %i.p) #9
  %.not141 = icmp eq i32 %i.em, 0
  br i1 %.not141, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.en = load ptr, ptr %i.a, align 8
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  store i16 13, ptr %i.eo, align 8
  %i.ep = call ptr @xstrdup(ptr noundef nonnull @.str.69) #9
  %i.eq = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  store ptr %i.ep, ptr %i.er, align 8
  %i.es = load i8, ptr @tree_display, align 1, !range !11, !noundef !12
  %i.et = trunc nuw i8 %i.es to i1
  %.162 = select i1 %i.et, i32 20, i32 15
  store i32 %.162, ptr %i.eq, align 8
  br label %bb.aw

bb.at:                                            ; preds = %bb.ar
  %i.eu = call i32 @xstrncasecmp(ptr noundef nonnull @.str.70, ptr noundef nonnull %i.h, i64 noundef %i.an) #9
  %.not142 = icmp eq i32 %i.eu, 0
  br i1 %.not142, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.ev = load ptr, ptr %i.a, align 8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 24
  store i16 14, ptr %i.ew, align 8
  %i.ex = call ptr @xstrdup(ptr noundef nonnull @.str.70) #9
  %i.ey = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 8
  store ptr %i.ex, ptr %i.ez, align 8
  %i.fa = load i32, ptr @time_format, align 4
  %i.fb = add i32 %i.fa, -4
  %or.cond35 = icmp ult i32 %i.fb, 3
  %.163 = select i1 %or.cond35, i32 18, i32 10
  store i32 %.163, ptr %i.ey, align 8
  br label %bb.aw

bb.av:                                            ; preds = %bb.at
  store i32 1, ptr @exit_code, align 4
  %i.fc = load ptr, ptr @stderr, align 8
  %i.fd = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fc, ptr noundef nonnull @.str.71, ptr noundef nonnull %i.h) #11 ; 0 uses
  call void @slurm_xfree(ptr noundef nonnull %i.a) #9
  br label %bb.az, !llvm.loop !18

bb.aw:                                            ; preds = %bb.k, %bb.o, %bb.s, %bb.x, %bb.ac, %bb.ag, %bb.am, %bb.aq, %bb.au, %bb.as, %bb.ao, %bb.ai, %bb.ae, %bb.aa, %bb.u, %bb.q, %bb.m, %bb.i
  %print_fields_str.sink = phi ptr [ @print_fields_str, %bb.k ], [ @print_fields_str, %bb.o ], [ @print_fields_str, %bb.s ], [ @print_fields_str, %bb.x ], [ @print_fields_str, %bb.ac ], [ @print_fields_uint32, %bb.ag ], [ @print_fields_uint32, %bb.am ], [ @print_fields_str, %bb.aq ], [ @print_fields_str, %bb.au ], [ @print_fields_str, %bb.as ], [ @print_fields_str, %bb.ao ], [ @print_fields_str, %bb.ai ], [ @print_fields_str, %bb.ae ], [ @print_fields_str, %bb.aa ], [ @print_fields_str, %bb.u ], [ @print_fields_str, %bb.q ], [ @print_fields_str, %bb.m ], [ @print_fields_str, %bb.i ]
  %i.fe = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  store ptr %print_fields_str.sink, ptr %i.ff, align 8
  %.not143 = icmp eq i32 %.0, 0
  br i1 %.not143, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i32 %.0, ptr %i.fe, align 8
  %.pre = load ptr, ptr %i.a, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.fg = phi ptr [ %.pre, %bb.ax ], [ %i.fe, %bb.aw ]
  %i.fh = load ptr, ptr @print_fields_list, align 8
  call void @list_append(ptr noundef %i.fh, ptr noundef %i.fg) #9
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.av
  %i.fi = call ptr @list_next(ptr noundef %i.f) #9 ; 2 uses
  %.not119 = icmp eq ptr %i.fi, null
  br i1 %.not119, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.az, %bb.f
  call void @list_iterator_destroy(ptr noundef %i.f) #9
  br label %bb.ba

bb.ba:                                            ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare void @list_destroy(ptr noundef) local_unnamed_addr #2

declare ptr @slurmdb_report_cluster_account_by_user(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_merge_cluster_reps(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @list_count(ptr noundef nonnull %0) #9
  %i.b = icmp slt i32 %i.a, 2
  br i1 %i.b, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @list_iterator_create(ptr noundef nonnull %0) #9 ; 5 uses
  %i.d = tail call ptr @list_next(ptr noundef %i.c) #9 ; 2 uses
  %.not3340 = icmp eq ptr %i.d, null
  br i1 %.not3340, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.outer
  %i.e = phi ptr [ %i.q, %.outer ], [ %i.d, %bb.b ] ; 3 uses
  %.0.ph41 = phi ptr [ %i.e, %.outer ], [ null, %bb.b ] ; 4 uses
  %.not28 = icmp eq ptr %.0.ph41, null
  br i1 %.not28, label %1, label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.f = getelementptr inbounds nuw i8, ptr %.0.ph41, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %.0.ph41, i64 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.ph41, i64 32 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.split, %bb.k
  %i.i = phi ptr [ %i.e, %.lr.ph.split ], [ %i.v, %bb.k ] ; 3 uses
  %i.j = load ptr, ptr %i.f, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void @combine_tres_list(ptr noundef %i.j, ptr noundef %i.l) #9
  %i.m = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not30 = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  br i1 %.not30, label %bb.f, label %bb.g

1:                                                ; preds = %.lr.ph
  %2 = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  tail call void @slurm_xfree(ptr noundef nonnull %2) #9
  %3 = load ptr, ptr @fed_name, align 8           ; 2 uses
  %.not29 = icmp eq ptr %3, null
  br i1 %.not29, label %bb.e, label %bb.d

bb.d:                                             ; preds = %1
  tail call void (ptr, ptr, ...) @_xstrfmtcat(ptr noundef nonnull %2, ptr noundef nonnull @.str.72, ptr noundef nonnull %3) #9
  br label %.outer

bb.e:                                             ; preds = %1
  %i.p = tail call ptr @xstrdup(ptr noundef nonnull @.str.73) #9
  store ptr %i.p, ptr %2, align 8
  br label %.outer

.outer:                                           ; preds = %bb.e, %bb.d
  %i.q = tail call ptr @list_next(ptr noundef %i.c) #9 ; 2 uses
  %.not33 = icmp eq ptr %i.q, null
  br i1 %.not33, label %.outer._crit_edge, label %.lr.ph, !llvm.loop !19

bb.f:                                             ; preds = %bb.c
  store ptr %i.o, ptr %i.g, align 8
  store ptr null, ptr %i.n, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  tail call void @combine_assoc_tres(ptr noundef nonnull %i.m, ptr noundef %i.o) #9
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not31 = icmp eq ptr %i.r, null
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  br i1 %.not31, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.t, ptr %i.h, align 8
  store ptr null, ptr %i.s, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  tail call void @combine_user_tres(ptr noundef nonnull %i.r, ptr noundef %i.t) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = tail call i32 @list_delete_item(ptr noundef %i.c) #9 ; 0 uses
  %i.v = tail call ptr @list_next(ptr noundef %i.c) #9 ; 2 uses
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.outer._crit_edge, label %bb.c, !llvm.loop !19

.outer._crit_edge:                                ; preds = %.outer, %bb.k, %bb.b
  tail call void @list_iterator_destroy(ptr noundef %i.c) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %.outer._crit_edge
  ret void
}

declare void @slurm_make_time_str(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare void @print_fields_header(ptr noundef) local_unnamed_addr #2

declare void @list_sort(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @sort_cluster_dec(ptr noundef, ptr noundef) #2

declare ptr @list_iterator_create(ptr noundef) local_unnamed_addr #2

declare ptr @list_next(ptr noundef) local_unnamed_addr #2

declare i32 @list_flush(ptr noundef) local_unnamed_addr #2

declare void @slurmdb_destroy_print_tree(ptr noundef) #2

declare void @list_iterator_reset(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @_cluster_account_by_user_tres_report(ptr noundef nonnull %0, ptr nofree noundef nonnull readonly captures(none) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 11 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store ptr null, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store ptr null, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  call void @sreport_set_tres_recs(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %i.h, ptr noundef %i.j, ptr noundef nonnull %0) #9
  %i.k = load ptr, ptr @print_fields_list, align 8
  %i.l = call i32 @list_count(ptr noundef %i.k) #9 ; 10 uses
  %i.m = load ptr, ptr @print_fields_list, align 8
  %i.n = call ptr @list_iterator_create(ptr noundef %i.m) #9 ; 3 uses
  %i.o = call ptr @list_next(ptr noundef %i.n) #9 ; 2 uses
  %.not99 = icmp eq ptr %i.o, null
  br i1 %.not99, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ad
  %i.v = phi ptr [ %i.o, %.lr.ph ], [ %i.cz, %bb.ad ] ; 21 uses
  %.076102 = phi i64 [ 0, %.lr.ph ], [ %.2, %bb.ad ] ; 10 uses
  %.077101 = phi i64 [ 0, %.lr.ph ], [ %.279, %bb.ad ] ; 10 uses
  %.080100 = phi i32 [ 1, %.lr.ph ], [ %i.cy, %bb.ad ] ; 11 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load i16, ptr %i.w, align 8
  switch i16 %i.x, label %bb.ac [
    i16 9, label %bb.c
    i16 0, label %bb.j
    i16 16, label %bb.k
    i16 17, label %bb.l
    i16 10, label %bb.m
    i16 11, label %bb.n
    i16 12, label %bb.r
    i16 14, label %bb.w
    i16 15, label %bb.ab
  ]

bb.c:                                             ; preds = %bb.b
  %i.y = load i8, ptr @tree_display, align 1, !range !11, !noundef !12
  %i.z = trunc nuw i8 %i.y to i1
  br i1 %i.z, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  store ptr null, ptr %i.f, align 8
  %i.aa = load ptr, ptr %i.r, align 8
  %.not96 = icmp eq ptr %i.aa, null
  %i.ab = load ptr, ptr %2, align 8               ; 2 uses
  br i1 %.not96, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = call ptr (ptr, ...) @xstrdup_printf(ptr noundef nonnull @.str.74, ptr noundef %i.ab) #9
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ad = call ptr @xstrdup(ptr noundef %i.ab) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %storemerge = phi ptr [ %i.ac, %bb.e ], [ %i.ad, %bb.f ] ; 2 uses
  %.0.in = phi ptr [ %2, %bb.e ], [ %i.u, %bb.f ]
  store ptr %storemerge, ptr %i.f, align 8
  %.0 = load ptr, ptr %.0.in, align 8
  %i.ae = call ptr @slurmdb_tree_name_get(ptr noundef %storemerge, ptr noundef %.0, ptr noundef %3) #9
  call void @slurm_xfree(ptr noundef nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.af = load ptr, ptr %2, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.075 = phi ptr [ %i.ae, %bb.g ], [ %i.af, %bb.h ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = icmp eq i32 %.080100, %i.l
  %i.aj = zext i1 %i.ai to i32
  call void %i.ah(ptr noundef nonnull %i.v, ptr noundef %.075, i32 noundef %i.aj) #9
  br label %bb.ad

bb.j:                                             ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = load ptr, ptr %i.t, align 8
  %i.an = icmp eq i32 %.080100, %i.l
  %i.ao = zext i1 %i.an to i32
  call void %i.al(ptr noundef nonnull %i.v, ptr noundef %i.am, i32 noundef %i.ao) #9
  br label %bb.ad

bb.k:                                             ; preds = %bb.b
  call void @common_get_qos_list() #9
  %i.ap = load ptr, ptr @g_qos_list, align 8
  %i.aq = load i32, ptr %i.s, align 4
  %i.ar = call ptr @slurmdb_qos_str(ptr noundef %i.ap, i32 noundef %i.aq) #9 ; 2 uses
  store ptr %i.ar, ptr %i.c, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.at = load ptr, ptr %i.as, align 8
  %i.au = icmp eq i32 %.080100, %i.l
  %i.av = zext i1 %i.au to i32
  call void %i.at(ptr noundef nonnull %i.v, ptr noundef %i.ar, i32 noundef %i.av) #9
  br label %bb.ad

bb.l:                                             ; preds = %bb.b
  %i.aw = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = icmp eq i32 %.080100, %i.l
  %i.az = zext i1 %i.ay to i32
  call void %i.ax(ptr noundef nonnull %i.v, ptr noundef nonnull %i.s, i32 noundef %i.az) #9
  br label %bb.ad
end_hunk_0
