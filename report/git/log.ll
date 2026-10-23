Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/log?download=true
inline.NumInlined: 125
inline.NumDeleted: 59
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 9
begin_hunk_0_@cmd_show:bb.a
  %i.aa = or i64 %i.z, 2286984185774096
  store i64 %i.aa, ptr %i.y, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 1904
  store i32 -1, ptr %i.ab, align 8, !tbaa !104
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 0, ptr %i.ac, align 8
  store ptr @.str, ptr %10, align 8, !tbaa !24
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @show_setup_revisions_tweak, ptr %i.ad, align 8, !tbaa !105
  call fastcc void @cmd_log_init_defaults(ptr noundef nonnull %9, ptr noundef nonnull %8)
  call fastcc void @cmd_log_init_finish(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %9, ptr noundef nonnull %10, ptr noundef nonnull %8)
  %i.ae = load i64, ptr %i.y, align 4
  %i.af = and i64 %i.ae, 16
  %.not36 = icmp eq i64 %i.af, 0
  %i.ag = getelementptr inbounds nuw i8, ptr %9, i64 2112 ; 2 uses
  store i32 1, ptr %i.ag, align 8, !tbaa !77
  br i1 %.not36, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ah = call fastcc i32 @cmd_log_walk_no_free(ptr noundef nonnull %9)
  br label %.critedge

bb.f:                                             ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 56 ; 6 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !106
  %.not63 = icmp eq i32 %i.aj, 0
  br i1 %.not63, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 64 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 344 ; 8 uses
  %i.am = getelementptr inbounds nuw i8, ptr %9, i64 1968 ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 1768 ; 4 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 380
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 352
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 1704
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 1700
  %i.au = getelementptr inbounds nuw i8, ptr %7, i64 32
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.as
  %.03062 = phi i32 [ 0, %.lr.ph ], [ %i.fr, %bb.as ] ; 5 uses
  %i.av = load ptr, ptr %i.ak, align 8, !tbaa !107
  %i.aw = zext i32 %.03062 to i64                 ; 2 uses
  %i.ax = getelementptr inbounds nuw [32 x i8], ptr %i.av, i64 %i.aw ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !110 ; 8 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !111 ; 5 uses
  %i.bb = load i64, ptr %i.ay, align 4
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = lshr i32 %i.bc, 1
  %i.be = and i32 %i.bd, 7                        ; 2 uses
  switch i32 %i.be, label %bb.aq [
    i32 3, label %bb.h
    i32 4, label %bb.r
    i32 2, label %bb.am
    i32 1, label %bb.ap
  ]

bb.h:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %7, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.bg = load ptr, ptr %i.am, align 8, !tbaa !112
  %i.bh = call i32 @fflush(ptr noundef %i.bg)     ; 0 uses
  %i.bi = load i32, ptr %i.as, align 8, !tbaa !213
  %.not.i = icmp eq i32 %i.bi, 0
  %i.bj = load i32, ptr %i.at, align 4
  %.not10.i = icmp eq i32 %i.bj, 0
  %or.cond51 = select i1 %.not.i, i1 true, i1 %.not10.i
  %i.bk = load ptr, ptr @the_repository, align 8, !tbaa !22 ; 2 uses
  br i1 %or.cond51, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !113
  %i.bn = call i32 @odb_stream_blob_to_fd(ptr noundef %i.bm, i32 noundef 1, ptr noundef nonnull %i.bf, ptr noundef null, i32 noundef 0) #19
  br label %show_blob_object.exit

bb.j:                                             ; preds = %bb.h
  %i.bo = call i32 @get_oid_with_context(ptr noundef %i.bk, ptr noundef %i.ba, i32 noundef 128, ptr noundef nonnull %6, ptr noundef nonnull %7) #19
  %.not11.i = icmp eq i32 %i.bo, 0
  br i1 %.not11.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = call fastcc ptr @_(ptr noundef nonnull @.str.163)
  call void (ptr, ...) @die(ptr noundef %i.bp, ptr noundef %i.ba) #20
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.bq = load ptr, ptr %i.au, align 8, !tbaa !215 ; 2 uses
  %.not12.i = icmp eq ptr %i.bq, null
  br i1 %.not12.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.br = load ptr, ptr @the_repository, align 8, !tbaa !22
  %i.bs = load i16, ptr %7, align 8, !tbaa !216
  %i.bt = zext i16 %i.bs to i32
  %i.bu = call i32 @textconv_object(ptr noundef %i.br, ptr noundef nonnull %i.bq, i32 noundef %i.bt, ptr noundef nonnull %6, i32 noundef 1, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d) #19
  %.not13.i = icmp eq i32 %i.bu, 0
  br i1 %.not13.i, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @object_context_release(ptr noundef nonnull %7) #19
  %i.bv = load ptr, ptr @the_repository, align 8, !tbaa !22
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !113
  %i.by = call i32 @odb_stream_blob_to_fd(ptr noundef %i.bx, i32 noundef 1, ptr noundef nonnull %i.bf, ptr noundef null, i32 noundef 0) #19
  br label %show_blob_object.exit

bb.o:                                             ; preds = %bb.m
  %i.bz = load ptr, ptr %i.c, align 8, !tbaa !115 ; 2 uses
  %.not14.i = icmp eq ptr %i.bz, null
  br i1 %.not14.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.ca = call fastcc ptr @_(ptr noundef nonnull @.str.164)
  call void (ptr, ...) @die(ptr noundef %i.ca, ptr noundef %i.ba) #20
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.cb = load i64, ptr %i.d, align 8, !tbaa !217
  call void @write_or_die(i32 noundef 1, ptr noundef nonnull %i.bz, i64 noundef %i.cb) #19
  call void @object_context_release(ptr noundef nonnull %7) #19
  %i.cc = load ptr, ptr %i.c, align 8, !tbaa !115
  call void @free(ptr noundef %i.cc) #19
  br label %show_blob_object.exit

show_blob_object.exit:                            ; preds = %bb.i, %bb.n, %bb.q
  %.0.i = phi i32 [ 0, %bb.q ], [ %i.by, %bb.n ], [ %i.bn, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.as

bb.r:                                             ; preds = %bb.g
  %i.cd = call ptr @get_tagged_oid(ptr noundef nonnull %i.ay) #19 ; 2 uses
  %i.ce = load i32, ptr %i.al, align 8
  %i.cf = and i32 %i.ce, 1
  %.not39 = icmp eq i32 %i.cf, 0
  br i1 %.not39, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cg = load ptr, ptr @stdout, align 8, !tbaa !116
  %i.ch = call i32 @putc(i32 noundef 10, ptr noundef %i.cg), !inline_history !207 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.ci = load ptr, ptr %i.am, align 8, !tbaa !112
  %i.cj = load i32, ptr %i.an, align 8, !tbaa !117
  %i.ck = call ptr @diff_get_color(i32 noundef %i.cj, i32 noundef 6) #19
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ay, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !219
  %i.cn = load i32, ptr %i.an, align 8, !tbaa !117
  %i.co = call ptr @diff_get_color(i32 noundef %i.cn, i32 noundef 0) #19
  %i.cp = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ci, ptr noundef nonnull @.str.3, ptr noundef %i.ck, ptr noundef %i.cm, ptr noundef %i.co) #19 ; 0 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.cr = load ptr, ptr @the_repository, align 8, !tbaa !22
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !113
  %i.cu = call ptr @odb_read_object(ptr noundef %i.ct, ptr noundef nonnull %i.cq, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #19 ; 5 uses
  %.not.i42 = icmp eq ptr %i.cu, null
  br i1 %.not.i42, label %bb.u, label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.cv = load i32, ptr @git_gettext_enabled, align 4, !tbaa !84
  %.not4.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not4.i.i, label %show_tag_object.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cw = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #19
  br label %show_tag_object.exit

bb.w:                                             ; preds = %bb.t
  %i.cx = load i32, ptr %i.b, align 4, !tbaa !84
  %i.cy = icmp eq i32 %i.cx, 4
  br i1 %i.cy, label %.preheader.i, label %bb.x

.preheader.i:                                     ; preds = %bb.w
  %i.cz = load i64, ptr %i.a, align 8, !tbaa !217 ; 2 uses
  %.not35.i = icmp eq i64 %i.cz, 0
  br i1 %.not35.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %scevgep.i = getelementptr i8, ptr %i.cu, i64 7
  br label %bb.y

bb.x:                                             ; preds = %bb.w
  call void @__assert_fail(ptr noundef nonnull @.str.165, ptr noundef nonnull @.str.166, i32 noundef 624, ptr noundef nonnull @__PRETTY_FUNCTION__.show_tag_object) #20
  unreachable

bb.y:                                             ; preds = %skip_prefix_impl.exit.i, %.lr.ph.i
  %i.da = phi i64 [ %i.cz, %.lr.ph.i ], [ %i.ee, %skip_prefix_impl.exit.i ] ; 12 uses
  %.02234.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %skip_prefix_impl.exit.i ] ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.02234.i ; 8 uses
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !81  ; 2 uses
  %.not26.i = icmp eq i8 %i.dc, 10
  br i1 %.not26.i, label %bb.ai, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dd = add nuw i64 %.02234.i, 1                ; 2 uses
  %exitcond.not.i139 = icmp eq i64 %i.dd, %i.da
  br i1 %exitcond.not.i139, label %.critedge2.i, label %.lr.ph140

bb.aa:                                            ; preds = %.lr.ph140
  %exitcond.not.i = icmp eq i64 %i.de, %i.da
  br i1 %exitcond.not.i, label %.critedge2.i, label %.lr.ph140, !llvm.loop !208

.lr.ph140:                                        ; preds = %bb.z, %bb.aa
  %.0.i43139 = phi i64 [ %i.de, %bb.aa ], [ %i.dd, %bb.z ] ; 2 uses
  %i.de = add i64 %.0.i43139, 1                   ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.cu, i64 %.0.i43139
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !81
  %.not27.i = icmp eq i8 %i.dg, 10
  br i1 %.not27.i, label %..critedge2.i_crit_edge, label %bb.aa, !llvm.loop !208

..critedge2.i_crit_edge:                          ; preds = %.lr.ph140
  br label %.critedge2.i, !llvm.loop !208

.critedge2.i:                                     ; preds = %bb.aa, %..critedge2.i_crit_edge, %bb.z
  %.1.i = phi i64 [ %i.de, %..critedge2.i_crit_edge ], [ %i.da, %bb.z ], [ %i.da, %bb.aa ] ; 2 uses
  %scevgep39.i = getelementptr i8, ptr %scevgep.i, i64 %.02234.i
  %i.dh = icmp eq i8 %i.dc, 116
  br i1 %i.dh, label %bb.ab, label %skip_prefix_impl.exit.i

bb.ab:                                            ; preds = %.critedge2.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.db, i64 1
  %i.dj = load i8, ptr %i.di, align 1, !tbaa !81
  %i.dk = icmp eq i8 %i.dj, 97
  br i1 %i.dk, label %bb.ac, label %skip_prefix_impl.exit.i

bb.ac:                                            ; preds = %bb.ab
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 2
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !81
  %i.dn = icmp eq i8 %i.dm, 103
  br i1 %i.dn, label %bb.ad, label %skip_prefix_impl.exit.i

bb.ad:                                            ; preds = %bb.ac
  %i.do = getelementptr inbounds nuw i8, ptr %i.db, i64 3
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !81
  %i.dq = icmp eq i8 %i.dp, 103
  br i1 %i.dq, label %bb.ae, label %skip_prefix_impl.exit.i

bb.ae:                                            ; preds = %bb.ad
  %i.dr = getelementptr inbounds nuw i8, ptr %i.db, i64 4
  %i.ds = load i8, ptr %i.dr, align 1, !tbaa !81
  %i.dt = icmp eq i8 %i.ds, 101
  br i1 %i.dt, label %bb.af, label %skip_prefix_impl.exit.i

bb.af:                                            ; preds = %bb.ae
  %i.du = getelementptr inbounds nuw i8, ptr %i.db, i64 5
  %i.dv = load i8, ptr %i.du, align 1, !tbaa !81
  %i.dw = icmp eq i8 %i.dv, 114
  br i1 %i.dw, label %bb.ag, label %skip_prefix_impl.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.dx = getelementptr inbounds nuw i8, ptr %i.db, i64 6
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !81
  %i.dz = icmp eq i8 %i.dy, 32
  br i1 %i.dz, label %bb.ah, label %skip_prefix_impl.exit.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.print_commit.buf, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %5, i8 0, i64 176, i1 false)
  %i.ea = load i32, ptr %i.ao, align 4, !tbaa !121
  store i32 %i.ea, ptr %5, align 8, !tbaa !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.aq, i64 16, i1 false), !tbaa.struct !220
  %i.eb = call ptr @get_log_output_encoding() #19
  call void @pp_user_info(ptr noundef nonnull %5, ptr noundef nonnull @.str.168, ptr noundef nonnull %4, ptr noundef nonnull %scevgep39.i, ptr noundef %i.eb) #19
  %i.ec = load ptr, ptr %i.am, align 8, !tbaa !112
  %i.ed = load ptr, ptr %i.ar, align 8, !tbaa !127
  %fputs.i.i = call i32 @fputs(ptr %i.ed, ptr %i.ec) ; 0 uses
  call void @strbuf_release(ptr noundef nonnull %4) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  %.pre.i = load i64, ptr %i.a, align 8, !tbaa !217
  br label %skip_prefix_impl.exit.i

skip_prefix_impl.exit.i:                          ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %.critedge2.i
  %i.ee = phi i64 [ %.pre.i, %bb.ah ], [ %i.da, %bb.ag ], [ %i.da, %bb.af ], [ %i.da, %bb.ae ], [ %i.da, %bb.ad ], [ %i.da, %bb.ac ], [ %i.da, %bb.ab ], [ %i.da, %.critedge2.i ] ; 2 uses
  %i.ef = icmp ult i64 %.1.i, %i.ee
  br i1 %i.ef, label %bb.y, label %.loopexit, !llvm.loop !209

bb.ai:                                            ; preds = %bb.y
  %i.eg = sub nuw i64 %i.da, %.02234.i
  %i.eh = load ptr, ptr %i.am, align 8, !tbaa !112
  %i.ei = call i64 @fwrite(ptr noundef nonnull %i.db, i64 noundef %i.eg, i64 noundef 1, ptr noundef %i.eh) ; 0 uses
  br label %.loopexit

show_tag_object.exit:                             ; preds = %bb.u, %bb.v
  %.0.i.i = phi ptr [ %i.cw, %bb.v ], [ @.str.4, %bb.u ]
  %i.ej = call ptr @oid_to_hex(ptr noundef nonnull %i.cq) #19
  %i.ek = call i32 (ptr, ...) @error(ptr noundef %.0.i.i, ptr noundef %i.ej) #19 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.el = load i32, ptr %i.al, align 8
  %i.em = or i32 %i.el, 1
  store i32 %i.em, ptr %i.al, align 8
  br label %.critedge

.loopexit:                                        ; preds = %skip_prefix_impl.exit.i, %.preheader.i, %bb.ai
  call void @free(ptr noundef nonnull %i.cu) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.en = load i32, ptr %i.al, align 8
  %i.eo = or i32 %i.en, 1
  store i32 %i.eo, ptr %i.al, align 8
  %i.ep = load ptr, ptr @the_repository, align 8, !tbaa !22
  %i.eq = call ptr @parse_object(ptr noundef %i.ep, ptr noundef %i.cd) #19 ; 2 uses
  %.not41 = icmp eq ptr %i.eq, null
  br i1 %.not41, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %.loopexit
  %i.er = load i32, ptr @git_gettext_enabled, align 4, !tbaa !84
  %.not4.i = icmp eq i32 %i.er, 0
  br i1 %.not4.i, label %_.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.es = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #19
  br label %_.exit

_.exit:                                           ; preds = %bb.aj, %bb.ak
  %.0.i44 = phi ptr [ %i.es, %bb.ak ], [ @.str.4, %bb.aj ]
  %i.et = call ptr @oid_to_hex(ptr noundef %i.cd) #19
  %i.eu = call i32 (ptr, ...) @error(ptr noundef %.0.i44, ptr noundef %i.et) #19 ; 0 uses
  br label %bb.al

bb.al:                                            ; preds = %_.exit, %.loopexit
  %.1 = phi i32 [ 0, %.loopexit ], [ -1, %_.exit ]
  %i.ev = load ptr, ptr %i.ak, align 8, !tbaa !107
  %i.ew = getelementptr inbounds nuw [32 x i8], ptr %i.ev, i64 %i.aw
  store ptr %i.eq, ptr %i.ew, align 8, !tbaa !110
  %i.ex = add i32 %.03062, -1
  br label %bb.as

bb.am:                                            ; preds = %bb.g
  %i.ey = load i32, ptr %i.al, align 8
  %i.ez = and i32 %i.ey, 1
  %.not38 = icmp eq i32 %i.ez, 0
  br i1 %.not38, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.fa = load ptr, ptr @stdout, align 8, !tbaa !116
  %i.fb = call i32 @putc(i32 noundef 10, ptr noundef %i.fa), !inline_history !207 ; 0 uses
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.fc = load ptr, ptr %i.am, align 8, !tbaa !112
  %i.fd = load i32, ptr %i.an, align 8, !tbaa !117
  %i.fe = call ptr @diff_get_color(i32 noundef %i.fd, i32 noundef 6) #19
  %i.ff = load i32, ptr %i.an, align 8, !tbaa !117
  %i.fg = call ptr @diff_get_color(i32 noundef %i.ff, i32 noundef 0) #19
  %i.fh = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.fc, ptr noundef nonnull @.str.5, ptr noundef %i.fe, ptr noundef %i.ba, ptr noundef %i.fg) #19 ; 0 uses
  %i.fi = load ptr, ptr @the_repository, align 8, !tbaa !22
  %i.fj = load ptr, ptr %i.am, align 8, !tbaa !112
  %i.fk = call i32 @read_tree(ptr noundef %i.fi, ptr noundef nonnull %i.ay, ptr noundef nonnull %11, ptr noundef nonnull @show_tree_object, ptr noundef %i.fj) #19 ; 0 uses
  %i.fl = load i32, ptr %i.al, align 8
  %i.fm = or i32 %i.fl, 1
  store i32 %i.fm, ptr %i.al, align 8
  br label %bb.as

bb.ap:                                            ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, i8 0, i64 16, i1 false)
  call void @add_object_array(ptr noundef nonnull %i.ay, ptr noundef %i.ba, ptr noundef nonnull %i.ai) #19
  %i.fn = call fastcc i32 @cmd_log_walk_no_free(ptr noundef %9)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %12, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  br label %bb.as

bb.aq:                                            ; preds = %bb.g
  %i.fo = load i32, ptr @git_gettext_enabled, align 4, !tbaa !84
  %.not4.i45 = icmp eq i32 %i.fo, 0
  br i1 %.not4.i45, label %_.exit47, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.fp = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.6, i32 noundef 5) #19
  %.pre = load i64, ptr %i.ay, align 4
  %.pre72 = trunc i64 %.pre to i32
  %.pre73 = lshr i32 %.pre72, 1
  %.pre75 = and i32 %.pre73, 7
  br label %_.exit47

_.exit47:                                         ; preds = %bb.aq, %bb.ar
  %.pre-phi76 = phi i32 [ %i.be, %bb.aq ], [ %.pre75, %bb.ar ]
  %.0.i46 = phi ptr [ @.str.6, %bb.aq ], [ %i.fp, %bb.ar ]
  %i.fq = call i32 (ptr, ...) @error(ptr noundef %.0.i46, i32 noundef %.pre-phi76) #19 ; 0 uses
  br label %.critedge

bb.as:                                            ; preds = %bb.al, %bb.ap, %bb.ao, %show_blob_object.exit
  %.232 = phi i32 [ %i.ex, %bb.al ], [ %.03062, %show_blob_object.exit ], [ %.03062, %bb.ap ], [ %.03062, %bb.ao ]
  %.3 = phi i32 [ %.1, %bb.al ], [ %.0.i, %show_blob_object.exit ], [ %i.fn, %bb.ap ], [ 0, %bb.ao ] ; 2 uses
  %i.fr = add i32 %.232, 1                        ; 2 uses
  %i.fs = load i32, ptr %i.ai, align 8, !tbaa !106
  %i.ft = icmp ult i32 %i.fr, %i.fs
  %.not37 = icmp eq i32 %.3, 0
  %or.cond = select i1 %i.ft, i1 %.not37, i1 false
  br i1 %or.cond, label %bb.g, label %.critedge, !llvm.loop !210

.critedge:                                        ; preds = %bb.as, %bb.f, %_.exit47, %show_tag_object.exit, %bb.e
  %.033 = phi i32 [ %i.ah, %bb.e ], [ 0, %bb.f ], [ -1, %show_tag_object.exit ], [ -1, %_.exit47 ], [ %.3, %bb.as ]
  %i.fu = getelementptr inbounds nuw i8, ptr %9, i64 1520
  store i32 0, ptr %i.ag, align 8, !tbaa !77
  call void @diff_free(ptr noundef nonnull %i.fu) #19
  call void @release_revisions(ptr noundef nonnull %9) #19
  %i.fv = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !78
  call void @free(ptr noundef %i.fw) #19
  %i.fx = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !79
  call void @free(ptr noundef %i.fy) #19
  %i.fz = load ptr, ptr %i.i, align 8, !tbaa !18
  call void @free(ptr noundef %i.fz) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  ret i32 %.033
end_hunk_0
begin_hunk_1_@show_interdiff
declare void @show_interdiff(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @show_range_diff(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @repo_dwim_ref(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @read_branch_desc(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @format_subject(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @pp_email_subject(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @pp_remainder(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @compare_commits_by_commit_date(ptr noundef, ptr noundef, ptr noundef) #2

declare void @repo_format_commit_message(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @shortlog_init(ptr noundef) local_unnamed_addr #2

declare void @shortlog_finish_setup(ptr noundef) local_unnamed_addr #2

declare void @shortlog_add_commit(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @shortlog_output(ptr noundef) local_unnamed_addr #2

declare void @diff_tree_oid(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @diffcore_std(ptr noundef) local_unnamed_addr #2

declare void @diff_flush(ptr noundef) local_unnamed_addr #2

declare void @fmt_output_commit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @fmt_output_subject(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @git_fopen(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @error_errno(ptr noundef, ...) local_unnamed_addr #2

declare void @stop_progress_msg(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @repo_has_promisor_remote(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal noundef i32 @always_match(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) #16 {
bb.a:
  ret i32 0
}

declare ptr @patch_id_iter_first(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @collect_diff_blob_oids(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !132  ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !189
  %.not31 = icmp eq ptr %i.d, null
  br i1 %.not31, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.295, ptr noundef nonnull @.str.166, i32 noundef 2628, ptr noundef nonnull @__PRETTY_FUNCTION__.collect_diff_blob_oids) #20
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !190
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @diff_tree_oid(ptr noundef nonnull %i.f, ptr noundef nonnull %i.g, ptr noundef nonnull @.str.122, ptr noundef nonnull %1) #19
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @diff_root_tree_oid(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.122, ptr noundef nonnull %1) #19
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @diffcore_std(ptr noundef nonnull %1) #19
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @diff_queued_diff, i64 12), align 4, !tbaa !361
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 576 ; 3 uses
  br label %bb.g

._crit_edge:                                      ; preds = %bb.o, %bb.f
  tail call void @diff_queue_clear(ptr noundef nonnull @diff_queued_diff) #19
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %i.l = load ptr, ptr @diff_queued_diff, align 8, !tbaa !362
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !364  ; 4 uses
  %i.o = load ptr, ptr %i.k, align 8, !tbaa !365
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 432
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !366
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !370
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !373
  %i.u = tail call ptr @userdiff_find_by_path(ptr noundef %i.q, ptr noundef %i.t) #19 ; 2 uses
  %.not33 = icmp eq ptr %i.u, null
  br i1 %.not33, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  %i.w = load i32, ptr %i.v, align 8, !tbaa !378
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %bb.o, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.y = load ptr, ptr %i.n, align 8, !tbaa !370  ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load i16, ptr %i.z, align 8, !tbaa !379
  %.not34 = icmp eq i16 %i.aa, 0
  br i1 %.not34, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.k, align 8, !tbaa !365
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !113
  %i.ae = tail call i32 @odb_read_object_info_extended(ptr noundef %i.ad, ptr noundef nonnull %i.y, ptr noundef null, i32 noundef 6) #19
  %.not35 = icmp eq i32 %i.ae, 0
  br i1 %.not35, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.af = load ptr, ptr %i.n, align 8, !tbaa !370
  %i.ag = tail call i32 @oidset_insert(ptr noundef nonnull %2, ptr noundef %i.af) #19 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !380 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 80
  %i.ak = load i16, ptr %i.aj, align 8, !tbaa !379
  %.not36 = icmp eq i16 %i.ak, 0
  br i1 %.not36, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.al = load ptr, ptr %i.k, align 8, !tbaa !365
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !113
  %i.ao = tail call i32 @odb_read_object_info_extended(ptr noundef %i.an, ptr noundef nonnull %i.ai, ptr noundef null, i32 noundef 6) #19
  %.not37 = icmp eq i32 %i.ao, 0
  br i1 %.not37, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = load ptr, ptr %i.ah, align 8, !tbaa !380
  %i.aq = tail call i32 @oidset_insert(ptr noundef nonnull %2, ptr noundef %i.ap) #19 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.l, %bb.m, %bb.n, %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = load i32, ptr getelementptr inbounds nuw (i8, ptr @diff_queued_diff, i64 12), align 4, !tbaa !361
  %i.as = sext i32 %i.ar to i64
  %i.at = icmp slt i64 %indvars.iv.next, %i.as
  br i1 %i.at, label %bb.g, label %._crit_edge, !llvm.loop !358
}

declare ptr @patch_id_iter_next(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @oid_array_append(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @promisor_remote_get_direct(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @oidset_clear(ptr noundef) local_unnamed_addr #2

declare void @diff_root_tree_oid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @userdiff_find_by_path(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @odb_read_object_info_extended(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @oidset_insert(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @diff_queue_clear(ptr noundef) local_unnamed_addr #2

declare ptr @repo_find_unique_abbrev(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @pp_commit_easy(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputs(ptr noundef readonly captures(none), ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #18

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #4 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #19 = { nounwind }
attributes #20 = { noreturn nounwind }
attributes #21 = { nounwind willreturn memory(read) }
attributes #22 = { nounwind willreturn memory(none) }
attributes #23 = { cold nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 omnipotent char", !12, i64 0}
!14 = !{!"log_config", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !13, i64 32, !9, i64 40, !13, i64 48, !13, i64 56, !9, i64 64}
!15 = !{!14, !9, i64 4}
!16 = !{!14, !9, i64 16}
!17 = !{!14, !9, i64 28}
!18 = !{!14, !13, i64 32}
!19 = !{!14, !9, i64 40}
!20 = !{!14, !9, i64 20}
!21 = !{!"p1 _ZTS10repository", !12, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"setup_revision_opt", !13, i64 0, !12, i64 8, !9, i64 16, !9, i64 16, !9, i64 16, !9, i64 20}
!24 = !{!23, !13, i64 0}
!25 = !{!23, !9, i64 20}
!26 = !{!"p1 _ZTS11commit_list", !12, i64 0}
!27 = !{!"long", !8, i64 0}
!28 = !{!"p1 _ZTS16prio_queue_entry", !12, i64 0}
!29 = !{!"prio_queue", !12, i64 0, !27, i64 8, !12, i64 16, !27, i64 24, !27, i64 32, !28, i64 40}
!30 = !{!"p1 _ZTS18object_array_entry", !12, i64 0}
!31 = !{!"object_array", !9, i64 0, !9, i64 4, !30, i64 8}
!32 = !{!"p1 _ZTS17rev_cmdline_entry", !12, i64 0}
!33 = !{!"rev_cmdline_info", !9, i64 0, !9, i64 4, !32, i64 8}
!34 = !{!"strbuf", !27, i64 0, !27, i64 8, !13, i64 16}
!35 = !{!"p1 _ZTS27list_objects_filter_options", !12, i64 0}
!36 = !{!"list_objects_filter_options", !34, i64 0, !9, i64 24, !9, i64 28, !9, i64 28, !13, i64 32, !27, i64 40, !27, i64 48, !9, i64 56, !27, i64 64, !27, i64 72, !35, i64 80}
!37 = !{!"p1 _ZTS16string_list_item", !12, i64 0}
!38 = !{!"string_list", !37, i64 0, !27, i64 8, !27, i64 16, !9, i64 24, !12, i64 32}
!39 = !{!"any p2 pointer", !12, i64 0}
!40 = !{!"p2 omnipotent char", !39, i64 0}
!41 = !{!"strvec", !40, i64 0, !27, i64 8, !27, i64 16}
!42 = !{!"ref_exclusions", !38, i64 0, !41, i64 40, !8, i64 64}
!43 = !{!"p1 _ZTS13pathspec_item", !12, i64 0}
!44 = !{!"pathspec", !9, i64 0, !9, i64 4, !9, i64 4, !9, i64 4, !9, i64 8, !9, i64 12, !43, i64 16}
!45 = !{!"date_mode", !9, i64 0, !9, i64 4, !13, i64 8}
!46 = !{!"p1 _ZTS8log_info", !12, i64 0}
!47 = !{!"ident_split", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56}
!48 = !{!"p1 _ZTS11string_list", !12, i64 0}
!49 = !{!"p1 _ZTS8grep_pat", !12, i64 0}
!50 = !{!"p2 _ZTS8grep_pat", !39, i64 0}
!51 = !{!"p1 _ZTS9grep_expr", !12, i64 0}
!52 = !{!"grep_opt", !49, i64 0, !50, i64 8, !49, i64 16, !50, i64 24, !51, i64 32, !21, i64 40, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140, !9, i64 144, !9, i64 148, !8, i64 152, !9, i64 828, !9, i64 832, !9, i64 836, !9, i64 840, !9, i64 844, !9, i64 848, !9, i64 852, !12, i64 856, !12, i64 864, !12, i64 872}
!53 = !{!"p1 _ZTS9git_graph", !12, i64 0}
!54 = !{!"p2 _ZTS17re_pattern_buffer", !39, i64 0}
!55 = !{!"diff_flags", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !9, i64 56, !9, i64 60, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !9, i64 96, !9, i64 100, !9, i64 104, !9, i64 108, !9, i64 112, !9, i64 116, !9, i64 120, !9, i64 124, !9, i64 128, !9, i64 132, !9, i64 136, !9, i64 140}
!56 = !{!"p1 _ZTS6oidset", !12, i64 0}
!57 = !{!"p1 _ZTS8_IO_FILE", !12, i64 0}
!58 = !{!"p1 _ZTS20emitted_diff_symbols", !12, i64 0}
!59 = !{!"p1 _ZTS6strmap", !12, i64 0}
!60 = !{!"diff_options", !13, i64 0, !13, i64 8, !9, i64 16, !9, i64 20, !13, i64 24, !9, i64 32, !54, i64 40, !27, i64 48, !27, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !55, i64 96, !9, i64 240, !9, i64 244, !9, i64 248, !9, i64 252, !9, i64 256, !9, i64 260, !9, i64 264, !9, i64 268, !9, i64 272, !9, i64 276, !9, i64 280, !9, i64 284, !9, i64 288, !9, i64 292, !9, i64 296, !9, i64 300, !9, i64 304, !9, i64 308, !9, i64 312, !9, i64 316, !9, i64 320, !9, i64 324, !13, i64 328, !9, i64 336, !13, i64 344, !9, i64 352, !9, i64 356, !40, i64 360, !27, i64 368, !27, i64 376, !9, i64 384, !9, i64 388, !9, i64 392, !9, i64 396, !13, i64 400, !9, i64 408, !9, i64 412, !56, i64 416, !9, i64 424, !9, i64 428, !9, i64 432, !12, i64 440, !57, i64 448, !9, i64 456, !8, i64 460, !44, i64 464, !12, i64 488, !12, i64 496, !12, i64 504, !12, i64 512, !12, i64 520, !12, i64 528, !12, i64 536, !12, i64 544, !9, i64 552, !58, i64 560, !9, i64 568, !9, i64 572, !21, i64 576, !59, i64 584, !9, i64 592, !9, i64 596, !9, i64 600}
!61 = !{!"p1 _ZTS16reflog_walk_info", !12, i64 0}
!62 = !{!"p1 _ZTS16decoration_entry", !12, i64 0}
!63 = !{!"decoration", !13, i64 0, !9, i64 8, !9, i64 12, !62, i64 16}
!64 = !{!"display_notes_opt", !9, i64 0, !38, i64 8}
!65 = !{!"p1 _ZTS9object_id", !12, i64 0}
!66 = !{!"p1 _ZTS13saved_parents", !12, i64 0}
!67 = !{!"p1 _ZTS16revision_sources", !12, i64 0}
!68 = !{!"p1 _ZTS14topo_walk_info", !12, i64 0}
!69 = !{!"p2 _ZTS12bloom_keyvec", !39, i64 0}
!70 = !{!"p1 _ZTS21bloom_filter_settings", !12, i64 0}
!71 = !{!"p1 _ZTS10tmp_objdir", !12, i64 0}
!72 = !{!"p1 int", !12, i64 0}
!73 = !{!"kh_oid_set", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !72, i64 16, !65, i64 24, !72, i64 32}
!74 = !{!"oidset", !73, i64 0}
!75 = !{!"rev_info", !26, i64 0, !29, i64 8, !31, i64 56, !21, i64 72, !31, i64 80, !33, i64 96, !36, i64 112, !42, i64 200, !13, i64 272, !13, i64 280, !13, i64 288, !44, i64 296, !9, i64 320, !9, i64 324, !9, i64 328, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 332, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 333, !9, i64 334, !9, i64 334, !9, i64 334, !9, i64 334, !9, i64 334, !9, i64 334, !9, i64 334, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 335, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 336, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 337, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 338, !9, i64 339, !9, i64 339, !9, i64 339, !9, i64 339, !9, i64 339, !9, i64 340, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 344, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 345, !9, i64 346, !9, i64 346, !9, i64 346, !9, i64 346, !9, i64 346, !45, i64 352, !9, i64 368, !9, i64 372, !9, i64 376, !9, i64 380, !46, i64 384, !9, i64 392, !9, i64 396, !13, i64 400, !13, i64 408, !9, i64 416, !13, i64 424, !13, i64 432, !47, i64 440, !48, i64 504, !9, i64 512, !13, i64 520, !13, i64 528, !9, i64 536, !9, i64 540, !9, i64 544, !48, i64 552, !52, i64 560, !53, i64 1440, !9, i64 1448, !9, i64 1452, !9, i64 1456, !9, i64 1460, !9, i64 1460, !27, i64 1464, !27, i64 1472, !27, i64 1480, !9, i64 1488, !9, i64 1492, !12, i64 1496, !12, i64 1504, !12, i64 1512, !60, i64 1520, !60, i64 2128, !61, i64 2736, !63, i64 2744, !63, i64 2768, !63, i64 2792, !64, i64 2816, !65, i64 2864, !65, i64 2872, !13, i64 2880, !13, i64 2888, !13, i64 2896, !41, i64 2904, !9, i64 2928, !13, i64 2936, !9, i64 2944, !9, i64 2948, !9, i64 2952, !63, i64 2960, !66, i64 2984, !26, i64 2992, !26, i64 3000, !13, i64 3008, !67, i64 3016, !68, i64 3024, !69, i64 3032, !9, i64 3040, !70, i64 3048, !9, i64 3056, !71, i64 3064, !74, i64 3072}
!76 = !{!75, !9, i64 1800}
!77 = !{!75, !9, i64 2112}
!78 = !{!14, !13, i64 56}
!79 = !{!14, !13, i64 48}
!80 = !{!14, !9, i64 0}
!81 = !{!8, !8, i64 0}
!82 = !{!14, !9, i64 8}
!83 = !{!14, !9, i64 12}
!84 = !{!9, !9, i64 0}
!85 = !{!"p1 _ZTS15object_database", !12, i64 0}
!86 = !{!"p1 _ZTS18parsed_object_pool", !12, i64 0}
!87 = !{!"p1 _ZTS9ref_store", !12, i64 0}
!88 = !{!"_Bool", !8, i64 0}
!89 = !{!"p2 _ZTS13hashmap_entry", !39, i64 0}
!90 = !{!"hashmap", !89, i64 0, !12, i64 8, !12, i64 16, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40}
!91 = !{!"p1 _ZTS8mem_pool", !12, i64 0}
!92 = !{!"strmap", !90, i64 0, !91, i64 48, !9, i64 56}
!93 = !{!"repo_path_cache", !13, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48}
!94 = !{!"p1 _ZTS18fsmonitor_settings", !12, i64 0}
!95 = !{!"repo_settings", !9, i64 0, !9, i64 4, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !9, i64 48, !9, i64 52, !94, i64 56, !9, i64 64, !9, i64 68, !9, i64 72, !9, i64 76, !9, i64 80, !9, i64 84, !9, i64 88, !9, i64 92, !27, i64 96, !27, i64 104, !27, i64 112, !27, i64 120, !9, i64 128, !13, i64 136}
!96 = !{!"p1 _ZTS10config_set", !12, i64 0}
!97 = !{!"p1 _ZTS15submodule_cache", !12, i64 0}
!98 = !{!"p1 _ZTS11index_state", !12, i64 0}
!99 = !{!"p1 _ZTS12remote_state", !12, i64 0}
!100 = !{!"p1 _ZTS13git_hash_algo", !12, i64 0}
!101 = !{!"repo_config_values", !13, i64 0, !9, i64 8, !9, i64 12, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44}
!102 = !{!"p1 _ZTS22promisor_remote_config", !12, i64 0}
!103 = !{!"repository", !13, i64 0, !13, i64 8, !85, i64 16, !86, i64 24, !87, i64 32, !88, i64 40, !92, i64 48, !92, i64 112, !93, i64 176, !13, i64 232, !13, i64 240, !13, i64 248, !88, i64 256, !88, i64 257, !13, i64 264, !95, i64 272, !96, i64 416, !97, i64 424, !98, i64 432, !99, i64 440, !100, i64 448, !100, i64 456, !101, i64 464, !9, i64 512, !13, i64 520, !9, i64 528, !9, i64 532, !59, i64 536, !9, i64 544, !92, i64 552, !38, i64 616, !13, i64 656, !102, i64 664, !9, i64 672, !9, i64 676, !9, i64 680, !9, i64 684, !9, i64 688, !88, i64 689, !88, i64 690}
!104 = !{!75, !9, i64 1904}
!105 = !{!23, !12, i64 8}
!106 = !{!75, !9, i64 56}
!107 = !{!75, !30, i64 64}
!108 = !{!"p1 _ZTS6object", !12, i64 0}
!109 = !{!"object_array_entry", !108, i64 0, !13, i64 8, !13, i64 16, !9, i64 24}
!110 = !{!109, !108, i64 0}
!111 = !{!109, !13, i64 8}
!112 = !{!75, !57, i64 1968}
!113 = !{!103, !85, i64 16}
!114 = !{!"short", !8, i64 0}
!115 = !{!13, !13, i64 0}
!116 = !{!57, !57, i64 0}
!117 = !{!75, !9, i64 1768}
!118 = !{!"object_id", !8, i64 0, !9, i64 32}
!119 = !{!"object", !9, i64 0, !9, i64 0, !9, i64 4, !118, i64 8}
!120 = !{!"llvm.loop.mustprogress"}
!121 = !{!75, !9, i64 380}
!122 = !{!"p1 _ZTS8rev_info", !12, i64 0}
!123 = !{!"p1 _ZTS11ident_split", !12, i64 0}
!124 = !{!"p1 _ZTS28pretty_print_describe_status", !12, i64 0}
!125 = !{!"pretty_print_context", !9, i64 0, !9, i64 4, !13, i64 8, !9, i64 16, !45, i64 24, !9, i64 40, !9, i64 44, !9, i64 48, !13, i64 56, !61, i64 64, !122, i64 72, !13, i64 80, !48, i64 88, !9, i64 96, !123, i64 104, !9, i64 112, !124, i64 120, !38, i64 128, !9, i64 168}
!126 = !{!125, !9, i64 0}
!127 = !{!34, !13, i64 16}
!128 = !{!75, !9, i64 1456}
!129 = !{!103, !86, i64 24}
!130 = !{!"p1 _ZTS4tree", !12, i64 0}
!131 = !{!"commit", !119, i64 0, !27, i64 48, !26, i64 56, !130, i64 64, !9, i64 72}
!132 = !{!131, !26, i64 56}
!133 = !{!75, !9, i64 1740}
!134 = !{!75, !9, i64 1616}
!135 = !{!75, !13, i64 528}
!136 = !{!75, !9, i64 536}
!137 = !{!"option", !9, i64 0, !9, i64 4, !13, i64 8, !12, i64 16, !27, i64 24, !13, i64 32, !13, i64 40, !9, i64 48, !12, i64 56, !27, i64 64, !12, i64 72, !27, i64 80, !12, i64 88}
!138 = !{!137, !9, i64 0}
!139 = !{!137, !9, i64 4}
!140 = !{!137, !13, i64 8}
!141 = !{!137, !12, i64 16}
!142 = !{!137, !27, i64 24}
!143 = !{!137, !13, i64 32}
!144 = !{!137, !13, i64 40}
!145 = !{!137, !9, i64 48}
!146 = !{!137, !12, i64 56}
!147 = !{!137, !27, i64 64}
!148 = !{!"line_opt_callback_data", !122, i64 0, !13, i64 8, !38, i64 16}
!149 = !{!148, !122, i64 0}
!150 = !{!75, !9, i64 340}
!151 = !{!75, !9, i64 1648}
!152 = !{!14, !9, i64 24}
!153 = !{!38, !27, i64 8}
!154 = !{!"string_list_item", !13, i64 0, !12, i64 8}
!155 = !{!154, !13, i64 0}
!156 = !{!"p1 _ZTS13format_config", !12, i64 0}
!157 = !{!"keep_callback_data", !156, i64 0, !122, i64 8}
!158 = !{!157, !156, i64 0}
!159 = !{!157, !122, i64 8}
!160 = !{!"format_config", !14, i64 0, !9, i64 72, !9, i64 76, !9, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !9, i64 120, !13, i64 128, !13, i64 136, !9, i64 144, !9, i64 148, !64, i64 152, !9, i64 200, !9, i64 204, !9, i64 208, !13, i64 216, !38, i64 224, !38, i64 264, !38, i64 304, !9, i64 344, !9, i64 348, !34, i64 352, !13, i64 376}
!161 = !{!160, !9, i64 144}
!162 = !{!160, !9, i64 208}
!163 = !{!160, !13, i64 376}
!164 = !{!75, !9, i64 372}
!165 = !{!75, !9, i64 1492}
!166 = !{!160, !13, i64 216}
!167 = !{!75, !13, i64 400}
!168 = !{!75, !9, i64 540}
!169 = !{!160, !9, i64 348}
!170 = !{!34, !27, i64 0}
end_hunk_1
