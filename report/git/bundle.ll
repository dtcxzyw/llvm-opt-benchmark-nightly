Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/bundle?download=true
inline.NumInlined: 54
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@create_bundle:bb.a
._crit_edge50.i:                                  ; preds = %bb.s
  %.pre.i = load i32, ptr %i.d, align 4, !tbaa !18
  %i.cn = and i32 %.pre.i, 1
  %i.co = icmp eq i32 %i.cn, 0
  %i.cp = select i1 %i.co, ptr %i.c, ptr %i.ce
  br label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 0, ptr %i.d, align 4, !tbaa !18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %._crit_edge50.i
  %.not31.i = phi ptr [ %i.cp, %._crit_edge50.i ], [ %i.c, %bb.t ]
  %i.cq = load ptr, ptr %.not31.i, align 8, !tbaa !28 ; 4 uses
  %i.cr = call i32 @strmap_contains(ptr noundef nonnull %7, ptr noundef %i.cq) #15
  %.not32.i = icmp eq i32 %i.cr, 0
  br i1 %.not32.i, label %bb.v, label %bb.ah

bb.v:                                             ; preds = %bb.u
  %i.cs = load ptr, ptr %i.bz, align 8, !tbaa !138 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 4
  %i.cu = and i64 %i.ct, 14
  %i.cv = icmp eq i64 %i.cu, 8
  br i1 %i.cv, label %bb.w, label %bb.ad

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.cw = load i64, ptr %i.bv, align 8, !tbaa !143
  %i.cx = icmp eq i64 %i.cw, -1
  %i.cy = load i64, ptr %i.bw, align 8
  %i.cz = icmp eq i64 %i.cy, -1
  %or.cond78 = select i1 %i.cx, i1 %i.cz, i1 false
  br i1 %or.cond78, label %is_tag_in_date_range.exit.thread.i, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.da = load ptr, ptr @the_repository, align 8, !tbaa !95
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 16
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !56
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.de = call ptr @odb_read_object(ptr noundef %i.dc, ptr noundef nonnull %i.dd, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #15 ; 8 uses
  %.not.i.i = icmp eq ptr %i.de, null
  br i1 %.not.i.i, label %is_tag_in_date_range.exit.thread.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.df = load i64, ptr %i.a, align 8, !tbaa !144 ; 2 uses
  %i.dg = call ptr @memmem(ptr noundef nonnull %i.de, i64 noundef %i.df, ptr noundef nonnull @.str.44, i64 noundef 8) #16 ; 2 uses
  %.not29.i.i = icmp eq ptr %i.dg, null
  br i1 %.not29.i.i, label %is_tag_in_date_range.exit.thread.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 1 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 %i.df
  %i.dj = ptrtoint ptr %i.di to i64
  %i.dk = ptrtoint ptr %i.dh to i64               ; 2 uses
  %i.dl = sub i64 %i.dj, %i.dk                    ; 2 uses
  %i.dm = call ptr @memchr(ptr noundef nonnull %i.dh, i32 noundef 10, i64 noundef %i.dl) #16 ; 2 uses
  %.not30.i.i = icmp eq ptr %i.dm, null
  %i.dn = ptrtoint ptr %i.dm to i64
  %i.do = sub i64 %i.dn, %i.dk
  %i.dp = select i1 %.not30.i.i, i64 %i.dl, i64 %i.do
  %i.dq = call ptr @memchr(ptr noundef nonnull %i.dh, i32 noundef 62, i64 noundef %i.dp) #16 ; 2 uses
  %.not31.i.i = icmp eq ptr %i.dq, null
  br i1 %.not31.i.i, label %is_tag_in_date_range.exit.thread.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.ds = call i64 @__isoc23_strtoumax(ptr noundef nonnull %i.dr, ptr noundef null, i32 noundef 10) #15 ; 2 uses
  %i.dt = load i64, ptr %i.bv, align 8, !tbaa !143 ; 2 uses
  %i.du = icmp eq i64 %i.dt, -1
  %i.dv = icmp ult i64 %i.dt, %i.ds
  %or.cond.i.i = select i1 %i.du, i1 true, i1 %i.dv
  br i1 %or.cond.i.i, label %bb.ab, label %is_tag_in_date_range.exit.thread40.i

is_tag_in_date_range.exit.thread40.i:             ; preds = %bb.aa
  call void @free(ptr noundef nonnull %i.de) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.dw = load i64, ptr %i.bw, align 8, !tbaa !145 ; 2 uses
  %i.dx = icmp eq i64 %i.dw, -1
  br i1 %i.dx, label %is_tag_in_date_range.exit.thread.i, label %is_tag_in_date_range.exit.i

is_tag_in_date_range.exit.thread.i:               ; preds = %bb.w, %bb.ab, %bb.z, %bb.y, %bb.x
  %.024.i.ph.i = phi ptr [ %i.de, %bb.ab ], [ %i.de, %bb.y ], [ %i.de, %bb.z ], [ null, %bb.x ], [ null, %bb.w ]
  call void @free(ptr noundef %.024.i.ph.i) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %bb.ad

is_tag_in_date_range.exit.i:                      ; preds = %bb.ab
  %.not44.i = icmp ugt i64 %i.dw, %i.ds
  call void @free(ptr noundef nonnull %i.de) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %.not44.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %is_tag_in_date_range.exit.i, %is_tag_in_date_range.exit.thread40.i
  %i.dy = load ptr, ptr %i.bz, align 8, !tbaa !138 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 4
  %i.ea = or i64 %i.dz, 8589934592
  store i64 %i.ea, ptr %i.dy, align 4
  br label %bb.ah

bb.ad:                                            ; preds = %is_tag_in_date_range.exit.i, %is_tag_in_date_range.exit.thread.i, %bb.v
  %i.eb = load ptr, ptr %i.bz, align 8, !tbaa !138
  %i.ec = load i64, ptr %i.eb, align 4
  %i.ed = and i64 %i.ec, 34359738382
  %or.cond.i = icmp eq i64 %i.ed, 2
  br i1 %or.cond.i, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  %i.ee = load i32, ptr @git_gettext_enabled, align 4, !tbaa !18
  %.not4.i.i = icmp eq i32 %i.ee, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ef = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.42, i32 noundef 5) #15
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.af, %bb.ae
  %.0.i36.i = phi ptr [ %i.ef, %bb.af ], [ @.str.42, %bb.ae ]
  %i.eg = load ptr, ptr %i.ce, align 8, !tbaa !139
  call void (ptr, ...) @warning(ptr noundef %.0.i36.i, ptr noundef %i.eg) #15
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ad
  %i.eh = add nsw i32 %.046.i, 1
  %i.ei = call i32 @strset_add(ptr noundef nonnull %7, ptr noundef %i.cq) #15 ; 0 uses
  %i.ej = load ptr, ptr %i.bz, align 8, !tbaa !138
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.el = call ptr @oid_to_hex(ptr noundef nonnull %i.ek) #15
  %i.em = load ptr, ptr @the_repository, align 8, !tbaa !95
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 448
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !96
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 24
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !146
  call void @write_or_die(i32 noundef %.054, ptr noundef %i.el, i64 noundef %i.eq) #15
  call void @write_or_die(i32 noundef %.054, ptr noundef nonnull @.str.43, i64 noundef 1) #15
  %i.er = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cq) #16
  call void @write_or_die(i32 noundef %.054, ptr noundef nonnull %i.cq, i64 noundef %i.er) #15
  call void @write_or_die(i32 noundef %.054, ptr noundef nonnull @.str.21, i64 noundef 1) #15
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_.exit.i, %bb.ac, %bb.u, %bb.r
  %.1.i = phi i32 [ %.046.i, %bb.r ], [ %.046.i, %bb.u ], [ %i.eh, %bb.ag ], [ %.046.i, %_.exit.i ], [ %.046.i, %bb.ac ]
  %i.es = load ptr, ptr %i.c, align 8, !tbaa !28
  call void @free(ptr noundef %i.es) #15
  %.pre51.i = load i32, ptr %i.at, align 8, !tbaa !134
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.q
  %i.et = phi i32 [ %.pre51.i, %bb.ah ], [ %i.bx, %bb.q ] ; 2 uses
  %.2.i = phi i32 [ %.1.i, %bb.ah ], [ %.046.i, %bb.q ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.eu = zext i32 %i.et to i64
  %i.ev = icmp samesign ult i64 %indvars.iv.next.i, %i.eu
  br i1 %i.ev, label %bb.q, label %write_bundle_refs.exit, !llvm.loop !93

write_bundle_refs.exit:                           ; preds = %bb.ai, %bb.p
  %.0.lcssa.i = phi i32 [ 0, %bb.p ], [ %.2.i, %bb.ai ] ; 2 uses
  call void @strmap_clear(ptr noundef nonnull %7, i32 noundef 0) #15
  call void @write_or_die(i32 noundef %.054, ptr noundef nonnull @.str.21, i64 noundef 1) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %.not61 = icmp eq i32 %.0.lcssa.i, 0
  br i1 %.not61, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %write_bundle_refs.exit
  %i.ew = call fastcc ptr @_(ptr noundef nonnull @.str.24)
  call void (ptr, ...) @die(ptr noundef %i.ew) #17
  unreachable

bb.ak:                                            ; preds = %write_bundle_refs.exit
  %i.ex = icmp slt i32 %.0.lcssa.i, 0
  br i1 %i.ex, label %bb.ba, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %6, ptr noundef nonnull align 8 dereferenceable(136) @__const.write_pack_data.pack_objects, i64 136, i1 false)
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %6, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, ptr noundef null) #15
  %i.ey = load ptr, ptr %4, align 8, !tbaa !73
  call void @strvec_pushv(ptr noundef nonnull %6, ptr noundef %i.ey) #15
  %i.ez = getelementptr inbounds nuw i8, ptr %11, i64 136
  %i.fa = load i32, ptr %i.ez, align 8, !tbaa !133
  %.not.i66 = icmp eq i32 %i.fa, 0
  br i1 %.not.i66, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.fb = getelementptr inbounds nuw i8, ptr %11, i64 112
  %i.fc = call ptr @list_objects_filter_spec(ptr noundef nonnull %i.fb) #15
  %i.fd = call ptr (ptr, ptr, ...) @strvec_pushf(ptr noundef nonnull %6, ptr noundef nonnull @.str.49, ptr noundef %i.fc) #15 ; 0 uses
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.fe = getelementptr inbounds nuw i8, ptr %6, i64 80 ; 5 uses
  %13 = zext i32 %.054 to i64
  %14 = shl nuw i64 %13, 32
  %15 = or disjoint i64 %14, 4294967295
  store i64 %15, ptr %i.fe, align 8
  %i.ff = getelementptr inbounds nuw i8, ptr %6, i64 104 ; 2 uses
  %i.fg = load i8, ptr %i.ff, align 8
  %i.fh = or i8 %i.fg, 8
  store i8 %i.fh, ptr %i.ff, align 8
  %i.fi = icmp sgt i32 %.054, 1
  br i1 %i.fi, label %bb.ao, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %16 = getelementptr inbounds nuw i8, ptr %6, i64 84
  %i.fj = call i32 @dup(i32 noundef %.054) #15    ; 2 uses
  store i32 %i.fj, ptr %16, align 4, !tbaa !147
  %i.fk = icmp slt i32 %i.fj, 0
  br i1 %i.fk, label %bb.ap, label %bb.ar

bb.ap:                                            ; preds = %bb.ao
  %i.fl = load i32, ptr @git_gettext_enabled, align 4, !tbaa !18
  %.not4.i.i70 = icmp eq i32 %i.fl, 0
  br i1 %.not4.i.i70, label %_.exit.i71, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.fm = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.50, i32 noundef 5) #15
  br label %_.exit.i71

_.exit.i71:                                       ; preds = %bb.aq, %bb.ap
  %.0.i.i = phi ptr [ %i.fm, %bb.aq ], [ @.str.50, %bb.ap ]
  %i.fn = call i32 (ptr, ...) @error_errno(ptr noundef %.0.i.i) #15 ; 0 uses
  call void @child_process_clear(ptr noundef nonnull %6) #15
  br label %write_pack_data.exit.thread

bb.ar:                                            ; preds = %bb.ao, %bb.an
  %i.fo = call i32 @start_command(ptr noundef nonnull %6) #15
  %.not13.i = icmp eq i32 %i.fo, 0
  br i1 %.not13.i, label %.preheader.i, label %bb.as

.preheader.i:                                     ; preds = %bb.ar
  %i.fp = load i32, ptr %i.at, align 8, !tbaa !134
  %.not23.i = icmp eq i32 %i.fp, 0
  br i1 %.not23.i, label %._crit_edge.i, label %.lr.ph.i67

bb.as:                                            ; preds = %bb.ar
  %i.fq = load i32, ptr @git_gettext_enabled, align 4, !tbaa !18
  %.not4.i16.i = icmp eq i32 %i.fq, 0
  br i1 %.not4.i16.i, label %_.exit18.i, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.fr = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.51, i32 noundef 5) #15
  br label %_.exit18.i

_.exit18.i:                                       ; preds = %bb.at, %bb.as
  %.0.i17.i = phi ptr [ %i.fr, %bb.at ], [ @.str.51, %bb.as ]
  %i.fs = call i32 (ptr, ...) @error(ptr noundef %.0.i17.i) #15 ; 0 uses
  br label %write_pack_data.exit.thread

.lr.ph.i67:                                       ; preds = %.preheader.i, %bb.av
  %indvars.iv.i68 = phi i64 [ %indvars.iv.next.i69, %bb.av ], [ 0, %.preheader.i ] ; 2 uses
  %i.ft = load ptr, ptr %i.au, align 8, !tbaa !135
  %i.fu = getelementptr inbounds nuw [32 x i8], ptr %i.ft, i64 %indvars.iv.i68
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !138 ; 2 uses
  %i.fw = load i64, ptr %i.fv, align 4
  %i.fx = and i64 %i.fw, 8589934592
  %.not15.i = icmp eq i64 %i.fx, 0
  br i1 %.not15.i, label %bb.av, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i67
  %i.fy = load i32, ptr %i.fe, align 8, !tbaa !75
  call void @write_or_die(i32 noundef %i.fy, ptr noundef nonnull @.str.52, i64 noundef 1) #15
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph.i67
  %i.fz = load i32, ptr %i.fe, align 8, !tbaa !75
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.gb = call ptr @oid_to_hex(ptr noundef nonnull %i.ga) #15
  %i.gc = load ptr, ptr @the_repository, align 8, !tbaa !95
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 448
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !96
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  %i.gg = load i64, ptr %i.gf, align 8, !tbaa !146
  call void @write_or_die(i32 noundef %i.fz, ptr noundef %i.gb, i64 noundef %i.gg) #15
  %i.gh = load i32, ptr %i.fe, align 8, !tbaa !75
  call void @write_or_die(i32 noundef %i.gh, ptr noundef nonnull @.str.21, i64 noundef 1) #15
  %indvars.iv.next.i69 = add nuw nsw i64 %indvars.iv.i68, 1 ; 2 uses
  %i.gi = load i32, ptr %i.at, align 8, !tbaa !134
  %i.gj = zext i32 %i.gi to i64
  %i.gk = icmp samesign ult i64 %indvars.iv.next.i69, %i.gj
  br i1 %i.gk, label %.lr.ph.i67, label %._crit_edge.i, !llvm.loop !94

._crit_edge.i:                                    ; preds = %bb.av, %.preheader.i
  %i.gl = load i32, ptr %i.fe, align 8, !tbaa !75
  %i.gm = call i32 @close(i32 noundef %i.gl) #15  ; 0 uses
  %i.gn = call i32 @finish_command(ptr noundef nonnull %6) #15
  %.not14.i = icmp eq i32 %i.gn, 0
  br i1 %.not14.i, label %write_pack_data.exit, label %bb.aw

bb.aw:                                            ; preds = %._crit_edge.i
  %i.go = load i32, ptr @git_gettext_enabled, align 4, !tbaa !18
  %.not4.i19.i = icmp eq i32 %i.go, 0
  br i1 %.not4.i19.i, label %_.exit21.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.gp = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.53, i32 noundef 5) #15
  br label %_.exit21.i

_.exit21.i:                                       ; preds = %bb.ax, %bb.aw
  %.0.i20.i = phi ptr [ %i.gp, %bb.ax ], [ @.str.53, %bb.aw ]
  %i.gq = call i32 (ptr, ...) @error(ptr noundef %.0.i20.i) #15 ; 0 uses
  br label %write_pack_data.exit.thread

write_pack_data.exit.thread:                      ; preds = %_.exit.i71, %_.exit18.i, %_.exit21.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.ba

write_pack_data.exit:                             ; preds = %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br i1 %.not92, label %bb.ba, label %bb.ay

bb.ay:                                            ; preds = %write_pack_data.exit
  %i.gr = call i32 @commit_lock_file(ptr noundef nonnull %9) #15
  %.not63 = icmp eq i32 %i.gr, 0
  br i1 %.not63, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gs = call fastcc ptr @_(ptr noundef nonnull @.str.25)
  call void (ptr, ...) @die_errno(ptr noundef %i.gs, ptr noundef nonnull %1) #17
  unreachable

bb.ba:                                            ; preds = %write_pack_data.exit.thread, %write_pack_data.exit, %bb.ay, %bb.ak, %_.exit
  %.052 = phi i32 [ -1, %_.exit ], [ 0, %write_pack_data.exit ], [ -1, %bb.ak ], [ 0, %bb.ay ], [ -1, %write_pack_data.exit.thread ]
  %i.gt = getelementptr inbounds nuw i8, ptr %11, i64 56
  call void @object_array_clear(ptr noundef nonnull %i.gt) #15
  call void @release_revisions(ptr noundef nonnull %10) #15
  %i.gu = call i32 @rollback_lock_file(ptr noundef nonnull %9) #15 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  ret i32 %.052
}

declare void @repo_init_revisions(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @setup_revisions(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: noreturn
declare void @die(ptr noundef, ...) local_unnamed_addr #9

declare void @write_or_die(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #8

declare ptr @expand_list_objects_filter_spec(ptr noundef) local_unnamed_addr #3

declare void @add_object_array_with_path(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare i32 @prepare_revision_walk(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @write_bundle_prerequisites(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #2 {
bb.a:
  %2 = alloca %struct.pretty_print_context, align 8 ; 6 uses
  %3 = alloca %struct.strbuf, align 8             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %2, i8 0, i64 176, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.write_bundle_prerequisites.buf, i64 24, i1 false)
  %i.a = load i64, ptr %0, align 8
  %i.b = and i64 %i.a, 137438953472
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = tail call ptr @oid_to_hex(ptr noundef nonnull %i.c) #15
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %3, ptr noundef nonnull @.str.38, ptr noundef %i.d) #15
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !71
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 6 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29
  call void @write_or_die(i32 noundef %i.f, ptr noundef %i.h, i64 noundef %i.j) #15
  store i32 5, ptr %2, align 8, !tbaa !152
  %i.k = call ptr @get_log_output_encoding() #15
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 80
  store ptr %i.k, ptr %i.l, align 8, !tbaa !153
  store i64 0, ptr %i.i, align 8, !tbaa !29
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !17   ; 2 uses
  %.not9.i = icmp eq ptr %i.m, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.m, align 1, !tbaa !26
  br label %strbuf_setlen.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !26
  %.not10.i = icmp eq i8 %i.n, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @__assert_fail(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #17
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.c, %bb.d
  call void @pretty_print_commit(ptr noundef nonnull %2, ptr noundef nonnull %0, ptr noundef nonnull %3) #15
  call void @strbuf_trim(ptr noundef nonnull %3) #15
  %i.o = load i64, ptr %0, align 8
  %i.p = or i64 %i.o, 8589934592
end_hunk_0
