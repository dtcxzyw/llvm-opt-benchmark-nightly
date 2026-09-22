Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luau/original/isocline?download=true
inline.NumInlined: 1215
inline.NumDeleted: 328
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 23
begin_hunk_0_@filename_complete_indir:bb.a

bb.e:                                             ; preds = %bb.d
  %i.at = add nuw nsw i64 %.023.i, 1              ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !48  ; 2 uses
  %.not.i = icmp eq i8 %i.av, 0
  br i1 %.not.i, label %ic_istarts_with.exit, label %.lr.ph.i, !llvm.loop !12

ic_istarts_with.exit:                             ; preds = %.lr.ph.i, %bb.e, %bb.c
  %.0.lcssa.i = phi i64 [ 0, %bb.c ], [ %.023.i, %.lr.ph.i ], [ %i.at, %bb.e ]
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 %.0.lcssa.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !48
  %i.ay = icmp eq i8 %i.ax, 0
  br i1 %i.ay, label %ic_istarts_with.exit.thread, label %sbuf_delete_from.exit74.thread

ic_istarts_with.exit.thread:                      ; preds = %.tail87.thread.thread, %.thread, %.tail87.thread, %ic_istarts_with.exit
  %i.az = load i64, ptr %i.m, align 8, !tbaa !79  ; 5 uses
  %i.ba = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.x) #29
  %i.bb = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ba, i64 0)
  %i.bc = call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %2, ptr noundef nonnull readonly %i.x, i64 noundef %i.bb, i64 noundef %i.az) ; 0 uses
  %i.bd = load i64, ptr %i.d, align 8, !tbaa !79  ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #28
  store i8 47, ptr %i.c, align 1, !tbaa !48
  store i8 0, ptr %i.n, align 1, !tbaa !48
  %i.be = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.c) #29
  %i.bf = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.be, i64 0)
  %i.bg = call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %1, ptr noundef nonnull readonly %i.c, i64 noundef %i.bf, i64 noundef %i.bd) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #28
  %i.bh = load i64, ptr %i.d, align 8, !tbaa !79
  %i.bi = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.x) #29
  %i.bj = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.bi, i64 0)
  %i.bk = call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %1, ptr noundef nonnull readonly %i.x, i64 noundef %i.bj, i64 noundef %i.bh) ; 0 uses
  %i.bl = load i64, ptr %i.d, align 8, !tbaa !79
  %i.bm = icmp slt i64 %i.bl, 0
  br i1 %i.bm, label %sbuf_string.exit49, label %bb.f

bb.f:                                             ; preds = %ic_istarts_with.exit.thread
  %i.bn = load ptr, ptr %1, align 8, !tbaa !81    ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  %spec.select.i.i47 = select i1 %i.bo, ptr @.str.3, ptr %i.bn
  br label %sbuf_string.exit49

sbuf_string.exit49:                               ; preds = %ic_istarts_with.exit.thread, %bb.f
  %.0.i.i48 = phi ptr [ %spec.select.i.i47, %bb.f ], [ null, %ic_istarts_with.exit.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %8, i8 0, i64 144, i1 false)
  %i.bp = call i32 @lstat(ptr noundef readonly %.0.i.i48, ptr noundef nonnull %8) #28 ; 0 uses
  %i.bq = load i32, ptr %i.o, align 8, !tbaa !369 ; 7 uses
  %i.br = lshr i32 %i.bq, 12
  %i.bs = and i32 %i.br, 15
  switch i32 %i.bs, label %bb.o [
    i32 12, label %os_get_filetype.exit
    i32 10, label %bb.g
    i32 1, label %bb.h
    i32 2, label %bb.i
    i32 6, label %bb.j
    i32 4, label %bb.k
  ]

bb.g:                                             ; preds = %sbuf_string.exit49
  br label %os_get_filetype.exit

bb.h:                                             ; preds = %sbuf_string.exit49
  br label %os_get_filetype.exit

bb.i:                                             ; preds = %sbuf_string.exit49
  br label %os_get_filetype.exit

bb.j:                                             ; preds = %sbuf_string.exit49
  br label %os_get_filetype.exit

bb.k:                                             ; preds = %sbuf_string.exit49
  %i.bt = and i32 %i.bq, 2048
  %.not.i50 = icmp eq i32 %i.bt, 0
  br i1 %.not.i50, label %bb.l, label %os_get_filetype.exit

bb.l:                                             ; preds = %bb.k
  %i.bu = and i32 %i.bq, 1024
  %.not1.i = icmp eq i32 %i.bu, 0
  br i1 %.not1.i, label %bb.m, label %os_get_filetype.exit

bb.m:                                             ; preds = %bb.l
  %i.bv = and i32 %i.bq, 528
  %or.cond.not.i = icmp eq i32 %i.bv, 528
  br i1 %or.cond.not.i, label %os_get_filetype.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bw = and i32 %i.bq, 512
  %.not3.i = icmp eq i32 %i.bw, 0
  %i.bx = and i32 %i.bq, 16
  %.not2.i = icmp eq i32 %i.bx, 0
  %..i = select i1 %.not3.i, i32 1, i32 11
  %spec.select.i = select i1 %.not2.i, i32 %..i, i32 10
  br label %os_get_filetype.exit

bb.o:                                             ; preds = %sbuf_string.exit49
  %i.by = and i32 %i.bq, 64
  %.not6.i = icmp eq i32 %i.by, 0
  %.7.i = select i1 %.not6.i, i32 0, i32 12
  br label %os_get_filetype.exit

os_get_filetype.exit:                             ; preds = %sbuf_string.exit49, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o
  %.0.i51 = phi i32 [ %.7.i, %bb.o ], [ 9, %bb.m ], [ %spec.select.i, %bb.n ], [ 2, %bb.g ], [ 4, %bb.h ], [ 6, %bb.i ], [ 5, %bb.j ], [ 3, %sbuf_string.exit49 ], [ 7, %bb.k ], [ 8, %bb.l ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.bz = load i64, ptr %i.d, align 8, !tbaa !79
  %i.ca = icmp slt i64 %i.bz, 0
  br i1 %i.ca, label %sbuf_string.exit54, label %bb.p

bb.p:                                             ; preds = %os_get_filetype.exit
  %i.cb = load ptr, ptr %1, align 8, !tbaa !81    ; 2 uses
  %i.cc = icmp eq ptr %i.cb, null
  %spec.select.i.i52 = select i1 %i.cc, ptr @.str.3, ptr %i.cb
  br label %sbuf_string.exit54

sbuf_string.exit54:                               ; preds = %os_get_filetype.exit, %bb.p
  %.0.i.i53 = phi ptr [ %spec.select.i.i52, %bb.p ], [ null, %os_get_filetype.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %7, i8 0, i64 144, i1 false)
  %i.cd = call i32 @stat(ptr noundef readonly %.0.i.i53, ptr noundef nonnull %7) #28 ; 0 uses
  %i.ce = load i32, ptr %i.p, align 8, !tbaa !369
  %i.cf = and i32 %i.ce, 61440
  %i.cg = icmp eq i32 %i.cf, 16384                ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  %or.cond = and i1 %i.q, %i.cg
  br i1 %or.cond, label %bb.q, label %bb.r

bb.q:                                             ; preds = %sbuf_string.exit54
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28
  store i8 %5, ptr %i.b, align 1, !tbaa !48
  store i8 0, ptr %i.r, align 1, !tbaa !48
  %i.ch = load i64, ptr %i.m, align 8, !tbaa !79
  %i.ci = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.b) #29
  %i.cj = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ci, i64 0)
  %i.ck = call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %2, ptr noundef nonnull readonly %i.b, i64 noundef %i.cj, i64 noundef %i.ch) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %sbuf_string.exit54
  %i.cl = load i64, ptr %i.d, align 8, !tbaa !79
  %i.cm = icmp sgt i64 %i.bd, -1
  %.not.i.i = icmp slt i64 %i.bd, %i.cl
  %or.cond.i55 = select i1 %i.cm, i1 %.not.i.i, i1 false
  br i1 %or.cond.i55, label %ic_memmove.exit.i.i, label %sbuf_delete_from.exit

ic_memmove.exit.i.i:                              ; preds = %bb.r
  store i64 %i.bd, ptr %i.d, align 8, !tbaa !79
  %i.cn = load ptr, ptr %1, align 8, !tbaa !81
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.bd
  store i8 0, ptr %i.co, align 1, !tbaa !48
  br label %sbuf_delete_from.exit

sbuf_delete_from.exit:                            ; preds = %bb.r, %ic_memmove.exit.i.i
  %brmerge = or i1 %i.cg, %i.s
  %.mux = select i1 %i.cg, i8 %5, i8 0
  br i1 %brmerge, label %match_extension.exit.thread, label %bb.s

bb.s:                                             ; preds = %sbuf_delete_from.exit
  %i.cp = load i8, ptr %6, align 1, !tbaa !48
  %i.cq = icmp eq i8 %i.cp, 0
  br i1 %i.cq, label %match_extension.exit.thread, label %ic_strlen.exit.i

ic_strlen.exit.i:                                 ; preds = %bb.s
  %i.cr = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.x) #29
  %i.cs = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.cr, i64 0) ; 2 uses
  %i.ct = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %6) #29
  %smax.i = call i64 @llvm.smax.i64(i64 %i.ct, i64 0)
  %i.cu = add nuw i64 %smax.i, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.x, %ic_strlen.exit.i
  %.02030.i = phi i64 [ 0, %ic_strlen.exit.i ], [ %.pre-phi.i, %bb.x ] ; 4 uses
  %.02129.i = phi i64 [ 0, %ic_strlen.exit.i ], [ %.1.i56, %bb.x ] ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %6, i64 %.02030.i
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !48
  switch i8 %i.cw, label %._crit_edge.i [
    i8 59, label %bb.u
    i8 0, label %bb.u
  ]

._crit_edge.i:                                    ; preds = %bb.t
  %.pre.i = add nuw i64 %.02030.i, 1
  br label %bb.x

bb.u:                                             ; preds = %bb.t, %bb.t
  %i.cx = getelementptr inbounds i8, ptr %6, i64 %.02129.i
  %i.cy = sub nsw i64 %.02030.i, %.02129.i        ; 4 uses
  %i.cz = icmp slt i64 %i.cs, %i.cy
  br i1 %i.cz, label %ends_with_n.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.da = icmp slt i64 %i.cy, 1
  br i1 %i.da, label %match_extension.exit.thread, label %.preheader.i.i

bb.w:                                             ; preds = %.preheader.i.i
  %i.db = add nuw i64 %.01825.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %.01825.i.i, %i.cy
  br i1 %exitcond.not.i.i, label %match_extension.exit.thread, label %.preheader.i.i, !llvm.loop !363

.preheader.i.i:                                   ; preds = %bb.v, %bb.w
  %.01825.i.i = phi i64 [ %i.db, %bb.w ], [ 1, %bb.v ] ; 4 uses
  %i.dc = sub nuw nsw i64 %i.cs, %.01825.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !48
  %i.df = sub nuw nsw i64 %i.cy, %.01825.i.i
  %i.dg = getelementptr inbounds nuw i8, ptr %i.cx, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !48
  %.not24.i.i = icmp eq i8 %i.de, %i.dh
  br i1 %.not24.i.i, label %bb.w, label %ends_with_n.exit.i

ends_with_n.exit.i:                               ; preds = %.preheader.i.i, %bb.u
  %i.di = add nuw i64 %.02030.i, 1                ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %ends_with_n.exit.i, %._crit_edge.i
  %.pre-phi.i = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.di, %ends_with_n.exit.i ] ; 2 uses
  %.1.i56 = phi i64 [ %.02129.i, %._crit_edge.i ], [ %i.di, %ends_with_n.exit.i ]
  %exitcond.not.i = icmp eq i64 %.pre-phi.i, %i.cu
  br i1 %exitcond.not.i, label %match_extension.exit, label %bb.t, !llvm.loop !364

match_extension.exit.thread:                      ; preds = %bb.v, %bb.w, %sbuf_delete_from.exit, %bb.s
  %i.dj = phi i8 [ %.mux, %sbuf_delete_from.exit ], [ 0, %bb.w ], [ 0, %bb.s ], [ 0, %bb.v ] ; 2 uses
  %i.dk = load i64, ptr %i.t, align 8, !tbaa !79
  %.not.i.i59 = icmp sgt i64 %i.dk, 0
  br i1 %.not.i.i59, label %ic_memmove.exit.i.i60, label %sbuf_clear.exit

ic_memmove.exit.i.i60:                            ; preds = %match_extension.exit.thread
  store i64 0, ptr %i.t, align 8, !tbaa !79
  %i.dl = load ptr, ptr %3, align 8, !tbaa !81
  store i8 0, ptr %i.dl, align 1, !tbaa !48
  br label %sbuf_clear.exit

sbuf_clear.exit:                                  ; preds = %match_extension.exit.thread, %ic_memmove.exit.i.i60
  %i.dm = load ptr, ptr %0, align 8, !tbaa !100
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 116
  %i.do = load i8, ptr %i.dn, align 4, !tbaa !370, !range !136, !noundef !137
  %i.dp = trunc nuw i8 %i.do to i1
  br i1 %i.dp, label %ls_colors_append.exit.i, label %bb.y

bb.y:                                             ; preds = %sbuf_clear.exit
  %i.dq = load i32, ptr @cli_color, align 4, !tbaa !133 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.dq, 0
  br i1 %.not.i.i.i, label %bb.z, label %ls_colors_init.exit.i.i

bb.z:                                             ; preds = %bb.y
  %i.dr = call ptr @getenv(ptr noundef nonnull @.str.227) #28 ; 3 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %ls_colors_init.exit.thread2.i.i, label %sub_0.i.i.i

sub_0.i.i.i:                                      ; preds = %bb.z
  %i.dt = load i8, ptr %i.dr, align 1
  switch i8 %i.dt, label %ls_colors_init.exit.thread2.i.i [
    i8 49, label %.tail.i.i.i
    i8 0, label %bb.aa
  ]

.tail.i.i.i:                                      ; preds = %sub_0.i.i.i
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 1
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = icmp eq i8 %i.dv, 0
  br i1 %i.dw, label %bb.aa, label %ls_colors_init.exit.thread2.i.i

ls_colors_init.exit.thread2.i.i:                  ; preds = %.tail.i.i.i, %sub_0.i.i.i, %bb.z
  store i32 -1, ptr @cli_color, align 4, !tbaa !133
  br label %ls_colors_append.exit.i

bb.aa:                                            ; preds = %.tail.i.i.i, %sub_0.i.i.i
  store i32 1, ptr @cli_color, align 4, !tbaa !133
  %i.dx = call ptr @getenv(ptr noundef nonnull @.str.228) #28 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.dx, null
  br i1 %.not14.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.dx, ptr @ls_colors, align 8, !tbaa !87
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.dy = call ptr @getenv(ptr noundef nonnull @.str.229) #28 ; 2 uses
  %.not15.i.i.i = icmp eq ptr %i.dy, null
  br i1 %.not15.i.i.i, label %ls_colors_init.exit.thread.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.dy, ptr @lscolors, align 8, !tbaa !87
  br label %ls_colors_init.exit.thread.i.i

ls_colors_init.exit.i.i:                          ; preds = %bb.y
  %i.dz = icmp sgt i32 %i.dq, 0
  br i1 %i.dz, label %ls_colors_init.exit.thread.i.i, label %ls_colors_append.exit.i

ls_colors_init.exit.thread.i.i:                   ; preds = %ls_colors_init.exit.i.i, %bb.ad, %bb.ac
  %i.ea = load ptr, ptr @ls_colors, align 8, !tbaa !87 ; 2 uses
  %.not.i.i64 = icmp eq ptr %i.ea, null
  br i1 %.not.i.i64, label %bb.al, label %ic_strlen.exit.i.i.i

ic_strlen.exit.i.i.i:                             ; preds = %ls_colors_init.exit.thread.i.i
  %i.eb = zext nneg i32 %.0.i51 to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr @ls_colors_names, i64 %i.eb
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !87 ; 3 uses
  %i.ee = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ed) #29 ; 2 uses
  %i.ef = call noundef range(i64 0, -9223372036854775808) i64 @llvm.smax.i64(i64 %i.ee, i64 0) ; 2 uses
  %i.eg = icmp slt i64 %i.ee, 1
  br i1 %i.eg, label %ls_colors_append.exit.i, label %bb.ae

bb.ae:                                            ; preds = %ic_strlen.exit.i.i.i
  %i.eh = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ea, ptr noundef nonnull readonly dereferenceable(1) %i.ed) #29 ; 2 uses
  %i.ei = icmp eq ptr %i.eh, null
  br i1 %i.ei, label %ls_colors_append.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.ef ; 3 uses
  %i.ek = getelementptr i8, ptr %i.ed, i64 %i.ef
  %i.el = getelementptr i8, ptr %i.ek, i64 -1
  %i.em = load i8, ptr %i.el, align 1, !tbaa !48
  %.not.i26.i.i = icmp eq i8 %i.em, 61
  br i1 %.not.i26.i.i, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.en = load i8, ptr %i.ej, align 1, !tbaa !48
  %.not26.i.i.i = icmp eq i8 %i.en, 61
  br i1 %.not26.i.i.i, label %bb.ah, label %ls_colors_append.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 1
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.af
  %.021.i.i.i = phi ptr [ %i.eo, %bb.ah ], [ %i.ej, %bb.af ] ; 2 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ak, %bb.ai
  %.0.i.i.i = phi i64 [ 0, %bb.ai ], [ %i.er, %bb.ak ] ; 4 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.021.i.i.i, i64 %.0.i.i.i
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !48
  switch i8 %i.eq, label %bb.ak [
    i8 0, label %.critedge.i.i.i
    i8 58, label %.critedge.i.i.i
  ]

bb.ak:                                            ; preds = %bb.aj
  %i.er = add nuw nsw i64 %.0.i.i.i, 1
  br label %bb.aj, !llvm.loop !365

.critedge.i.i.i:                                  ; preds = %bb.aj, %bb.aj
  %.not30.i.i.i = icmp eq i64 %.0.i.i.i, 0
  br i1 %.not30.i.i.i, label %ls_colors_append.exit.i, label %ls_colors_from_key.exit.i.i

ls_colors_from_key.exit.i.i:                      ; preds = %.critedge.i.i.i
  %i.es = load i64, ptr %i.t, align 8, !tbaa !79
  %i.et = call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %3, ptr noundef nonnull readonly @.str.230, i64 noundef 11, i64 noundef %i.es) ; 0 uses
  %i.eu = load i64, ptr %i.t, align 8, !tbaa !79
  %i.ev = call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %3, ptr noundef nonnull readonly %.021.i.i.i, i64 noundef %.0.i.i.i, i64 noundef %i.eu) ; 0 uses
  %i.ew = load i64, ptr %i.t, align 8, !tbaa !79
  %i.ex = call fastcc i64 @sbuf_insert_at_n(ptr noundef nonnull %3, ptr noundef nonnull readonly @.str.231, i64 noundef 2, i64 noundef %i.ew) ; 0 uses
  br label %ls_colors_append.exit.i

bb.al:                                            ; preds = %ls_colors_init.exit.thread.i.i
  %i.ey = load ptr, ptr @lscolors, align 8, !tbaa !87 ; 3 uses
  %.not25.i.i = icmp eq ptr %i.ey, null
  br i1 %.not25.i.i, label %ls_colors_append.exit.i, label %ic_strlen.exit.i.i

ic_strlen.exit.i.i:                               ; preds = %bb.al
  %i.ez = call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %i.ey) #29
  %i.fa = shl nuw nsw i32 %.0.i51, 1              ; 2 uses
  %i.fb = or disjoint i32 %i.fa, 1
  %i.fc = zext nneg i32 %i.fb to i64
  %i.fd = icmp sgt i64 %i.ez, %i.fc
  br i1 %i.fd, label %bb.am, label %.thread.i.i

bb.am:                                            ; preds = %ic_strlen.exit.i.i
  %i.fe = zext nneg i32 %i.fa to i64
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ey, i64 %i.fe ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !48  ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 1
  %i.fi = load i8, ptr %i.fh, align 1, !tbaa !48  ; 2 uses
  %i.fj = sext i8 %i.fg to i32                    ; 2 uses
  %i.fk = add i8 %i.fg, -97
  %or.cond.i.i.i = icmp ult i8 %i.fk, 8
  br i1 %or.cond.i.i.i, label %bb.an, label %.thread.i.i

bb.an:                                            ; preds = %bb.am
  %i.fl = add nsw i32 %i.fj, -97
  br label %ls_colors_from_char.exit.i.i

.thread.i.i:                                      ; preds = %bb.am, %ic_strlen.exit.i.i
  %i.fm = phi i32 [ %i.fj, %bb.am ], [ 120, %ic_strlen.exit.i.i ]
  %.010.i.i = phi i8 [ %i.fi, %bb.am ], [ 120, %ic_strlen.exit.i.i ]
  %.0198.i.i = phi i8 [ %i.fg, %bb.am ], [ 120, %ic_strlen.exit.i.i ]
  %i.fn = add i8 %.0198.i.i, -65
  %or.cond5.i.i.i = icmp ult i8 %i.fn, 8
  %i.fo = add nsw i32 %i.fm, -57
  %spec.select.i.i.i = select i1 %or.cond5.i.i.i, i32 %i.fo, i32 256
  br label %ls_colors_from_char.exit.i.i

ls_colors_from_char.exit.i.i:                     ; preds = %.thread.i.i, %bb.an
  %.09.i.i = phi i8 [ %i.fi, %bb.an ], [ %.010.i.i, %.thread.i.i ] ; 3 uses
  %.0.i28.i.i = phi i32 [ %i.fl, %bb.an ], [ %spec.select.i.i.i, %.thread.i.i ]
  %i.fp = sext i8 %.09.i.i to i32                 ; 2 uses
  %i.fq = add i8 %.09.i.i, -97
  %or.cond.i29.i.i = icmp ult i8 %i.fq, 8
  br i1 %or.cond.i29.i.i, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %ls_colors_from_char.exit.i.i
  %i.fr = add nsw i32 %i.fp, -97
end_hunk_0
