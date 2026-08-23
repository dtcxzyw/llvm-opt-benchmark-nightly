Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/object-name?download=true
inline.NumInlined: 89
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@get_oid_1:bb.a
  %i.ci = call ptr @parse_object(ptr noundef %0, ptr noundef nonnull %8) #18, !inline_history !116 ; 3 uses
  %.not82.i = icmp eq ptr %i.ci, null
  br i1 %.not82.i, label %peel_onion.exit.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br i1 %.not83.i107113, label %bb.ac, label %bb.ag

bb.ac:                                            ; preds = %bb.ab
  %i.cj = call ptr @deref_tag(ptr noundef %0, ptr noundef nonnull %i.ci, ptr noundef %1, i32 noundef %i.cg) #18, !inline_history !116 ; 5 uses
  %.not84.i = icmp eq ptr %i.cj, null
  br i1 %.not84.i, label %peel_onion.exit.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ck = load i64, ptr %i.cj, align 4
  %i.cl = and i64 %i.ck, 1
  %.not85.i = icmp eq i64 %i.cl, 0
  br i1 %.not85.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cn = call ptr @parse_object(ptr noundef %0, ptr noundef nonnull %i.cm) #18, !inline_history !116
  %.not86.i = icmp eq ptr %i.cn, null
  br i1 %.not86.i, label %peel_onion.exit.thread, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.co, i64 32, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %i.cj, i64 40
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !50
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !50
  br label %peel_onion.exit.thread122

bb.ag:                                            ; preds = %bb.ab
  %i.cs = call ptr @repo_peel_to_type(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %i.ci, i32 noundef %.068.i108112), !inline_history !116 ; 4 uses
  %.not87.i = icmp eq ptr %i.cs, null
  br i1 %.not87.i, label %peel_onion.exit.thread, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %3, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.ct, i64 32, i1 false)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  %i.cv = load i32, ptr %i.cu, align 4, !tbaa !50
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !50
  %i.cx = load i8, ptr %i.bp, align 1, !tbaa !47
  %i.cy = icmp eq i8 %i.cx, 47
  br i1 %i.cy, label %bb.ai, label %peel_onion.exit.thread122

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  store ptr null, ptr %i.f, align 8, !tbaa !66
  %i.cz = getelementptr inbounds nuw i8, ptr %.069.i.lcssa, i64 2 ; 3 uses
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !47
  %i.db = icmp eq i8 %i.da, 125
  br i1 %i.db, label %peel_onion.exit.thread125, label %peel_onion.exit

peel_onion.exit.thread125:                        ; preds = %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.critedge

peel_onion.exit.thread:                           ; preds = %._crit_edge168, %.split.loop.exit145.thread, %bb.x, %bb.ag, %bb.ac, %bb.aa, %bb.z, %bb.p, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %bb.aj

peel_onion.exit.thread122:                        ; preds = %bb.af, %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  br label %.critedge

peel_onion.exit:                                  ; preds = %bb.ai
  %i.dc = ptrtoint ptr %i.bg to i64
  %i.dd = ptrtoint ptr %i.cz to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = call ptr @xstrndup(ptr noundef nonnull %i.cz, i64 noundef %i.de) #18, !inline_history !116 ; 2 uses
  %i.dg = call ptr @commit_list_insert(ptr noundef nonnull %i.cs, ptr noundef nonnull %i.f) #18, !inline_history !116 ; 0 uses
  %i.dh = load ptr, ptr %i.f, align 8, !tbaa !66
  %i.di = call fastcc i32 @get_oid_oneline(ptr noundef %0, ptr noundef %i.df, ptr noundef nonnull %3, ptr noundef %i.dh), !inline_history !116
  %i.dj = load ptr, ptr %i.f, align 8, !tbaa !66
  call void @commit_list_free(ptr noundef %i.dj) #18, !inline_history !116
  call void @free(ptr noundef %i.df) #18, !inline_history !116
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #18
  %.not80 = icmp eq i32 %i.di, 0
  br i1 %.not80, label %.critedge, label %bb.aj

bb.aj:                                            ; preds = %peel_onion.exit.thread, %peel_onion.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  store ptr null, ptr %i.a, align 8, !tbaa !80
  %i.dk = trunc i32 %4 to i1                      ; 3 uses
  %i.dl = load ptr, ptr @the_repository, align 8, !tbaa !60
  %i.dm = call ptr @repo_config_values(ptr noundef %i.dl) #18
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !55
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 24
  %i.dq = load i64, ptr %i.dp, align 8, !tbaa !56
  %i.dr = icmp eq i64 %i.dq, %i.g
  br i1 %i.dr, label %bb.ak, label %bb.at

bb.ak:                                            ; preds = %bb.aj
  %i.ds = call i32 @get_oid_hex(ptr noundef %1, ptr noundef %3) #18
  %.not.i96 = icmp eq i32 %i.ds, 0
  br i1 %.not.i96, label %bb.al, label %bb.at

bb.al:                                            ; preds = %bb.ak
  %i.dt = and i32 %4, 16384
  %.not117.i = icmp eq i32 %i.dt, 0
  br i1 %.not117.i, label %bb.am, label %get_oid_basic.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.du = call i32 @repo_settings_get_warn_ambiguous_refs(ptr noundef nonnull %0) #18
  %.not118.i = icmp eq i32 %i.du, 0
  br i1 %.not118.i, label %get_oid_basic.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dm, i64 36
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !117
  %.not119.i = icmp eq i32 %i.dw, 0
  br i1 %.not119.i, label %get_oid_basic.exit.thread, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dx = call i32 @repo_dwim_ref(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull %6, ptr noundef nonnull %i.a, i32 noundef 0) #18
  %i.dy = icmp sgt i32 %i.dx, 0
  br i1 %i.dy, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  call void (ptr, ...) @warning(ptr noundef nonnull @.str.31, i32 noundef %2, ptr noundef %1) #18
  %i.dz = call i32 @advice_enabled(i32 noundef 18) #18
  %.not120.i = icmp eq i32 %i.dz, 0
  br i1 %.not120.i, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ea = load ptr, ptr @stderr, align 8, !tbaa !118
  %i.eb = load i32, ptr @git_gettext_enabled, align 4, !tbaa !58
  %.not4.i.i = icmp eq i32 %i.eb, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ec = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.32, i32 noundef 5) #18
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.ar, %bb.aq
  %.0.i.i = phi ptr [ %i.ec, %bb.ar ], [ @.str.32, %bb.aq ]
  %i.ed = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ea, ptr noundef nonnull @.str.33, ptr noundef %.0.i.i) #20 ; 0 uses
  br label %bb.as

bb.as:                                            ; preds = %_.exit.i, %bb.ap, %bb.ao
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !80
  call void @free(ptr noundef %i.ee) #18
  br label %get_oid_basic.exit.thread

bb.at:                                            ; preds = %bb.ak, %bb.aj
  %.not121.i = icmp eq i32 %2, 0
  br i1 %.not121.i, label %.thread218.i, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ef = add nsw i32 %2, -1                      ; 3 uses
  %i.eg = sext i32 %i.ef to i64
  %i.eh = getelementptr inbounds i8, ptr %1, i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !47
  %i.ej = icmp eq i8 %i.ei, 125
  br i1 %i.ej, label %bb.av, label %.thread180.i

bb.av:                                            ; preds = %bb.au
  %i.ek = add i32 %2, -4                          ; 2 uses
  %i.el = icmp sgt i32 %2, 3
  br i1 %i.el, label %.lr.ph.preheader.i, label %upstream_mark.exit.thread.i

.lr.ph.preheader.i:                               ; preds = %bb.av
  %i.em = zext nneg i32 %i.ek to i64
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.bb, %.lr.ph.preheader.i
  %indvars.iv.i = phi i64 [ %i.em, %.lr.ph.preheader.i ], [ %indvars.iv.next.i, %bb.bb ] ; 6 uses
  %i.en = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv.i ; 5 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !47
  %i.ep = icmp eq i8 %i.eo, 64
  br i1 %i.ep, label %bb.aw, label %bb.bb

bb.aw:                                            ; preds = %.lr.ph.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.en, i64 1
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !47
  %i.es = icmp eq i8 %i.er, 123
  br i1 %i.es, label %bb.ax, label %bb.bb

bb.ax:                                            ; preds = %bb.aw
  %i.et = add nuw nsw i64 %indvars.iv.i, 2        ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %1, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !47
  %i.ew = icmp eq i8 %i.ev, 45
  br i1 %i.ew, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %.not137.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not137.i, label %upstream_mark.exit.thread.i, label %.loopexit

bb.az:                                            ; preds = %bb.ax
  %i.ex = trunc nuw nsw i64 %indvars.iv.i to i32  ; 7 uses
  %i.ey = trunc nuw i64 %i.et to i32              ; 2 uses
  %i.ez = sub nsw i32 %2, %i.ex                   ; 2 uses
  %.not.i.i.i = icmp slt i32 %i.ez, 11
  br i1 %.not.i.i.i, label %.thread.i.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.fa = call i32 @strncasecmp(ptr noundef nonnull readonly %i.en, ptr noundef nonnull @.str.20, i64 noundef 11) #17
  %.not16.i.i.i = icmp eq i32 %i.fa, 0
  br i1 %.not16.i.i.i, label %upstream_mark.exit.thread.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.ba, %bb.az
  %i.fb = call i32 @strncasecmp(ptr noundef nonnull readonly %i.en, ptr noundef nonnull @.str.21, i64 noundef 4) #17
  %.not16.i.1.i.i = icmp eq i32 %i.fb, 0
  br i1 %.not16.i.1.i.i, label %upstream_mark.exit.thread.i, label %upstream_mark.exit.i

upstream_mark.exit.i:                             ; preds = %.thread.i.i
  %.not.i.i142.i = icmp samesign ult i32 %i.ez, 7
  br i1 %.not.i.i142.i, label %.thread.i, label %push_mark.exit.i

.thread.i:                                        ; preds = %upstream_mark.exit.i
  %i.fc = sub nsw i32 %i.ef, %i.ey
  br label %upstream_mark.exit.thread.i

push_mark.exit.i:                                 ; preds = %upstream_mark.exit.i
  %i.fd = call i32 @strncasecmp(ptr noundef nonnull readonly %i.en, ptr noundef nonnull @.str.22, i64 noundef 7) #17
  %.fr.i = freeze i32 %i.fd
  %.not16.i.i143.not.i = icmp eq i32 %.fr.i, 0    ; 2 uses
  %i.fe = sub nsw i32 %i.ef, %i.ey
  %spec.select132 = select i1 %.not16.i.i143.not.i, i32 0, i32 %i.fe
  %spec.select133 = select i1 %.not16.i.i143.not.i, i32 %2, i32 %i.ex
  br label %upstream_mark.exit.thread.i

bb.bb:                                            ; preds = %bb.aw, %.lr.ph.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  %.not294.i = icmp eq i64 %indvars.iv.i, 0
  br i1 %.not294.i, label %upstream_mark.exit.thread.i, label %.lr.ph.i, !llvm.loop !120

upstream_mark.exit.thread.i:                      ; preds = %bb.bb, %push_mark.exit.i, %.thread.i, %.thread.i.i, %bb.ba, %bb.ay, %bb.av
  %.0113239.i = phi i32 [ %i.ex, %.thread.i.i ], [ %i.ex, %push_mark.exit.i ], [ %i.ex, %bb.ba ], [ %i.ek, %bb.av ], [ -1, %bb.ay ], [ %i.ex, %.thread.i ], [ -1, %bb.bb ] ; 2 uses
  %.0109236.i = phi i32 [ 0, %.thread.i.i ], [ 0, %push_mark.exit.i ], [ 0, %bb.ba ], [ 0, %bb.av ], [ 1, %bb.ay ], [ 0, %.thread.i ], [ 0, %bb.bb ] ; 2 uses
  %.0112.i = phi i32 [ 0, %.thread.i.i ], [ %spec.select132, %push_mark.exit.i ], [ 0, %bb.ba ], [ 0, %bb.av ], [ 0, %bb.ay ], [ %i.fc, %.thread.i ], [ 0, %bb.bb ] ; 2 uses
  %.099.i = phi i32 [ %2, %.thread.i.i ], [ %spec.select133, %push_mark.exit.i ], [ %2, %bb.ba ], [ %2, %bb.av ], [ %2, %bb.ay ], [ %i.ex, %.thread.i ], [ %2, %bb.bb ] ; 2 uses
  %.not124.i = icmp eq i32 %.099.i, 0
  br i1 %.not124.i, label %bb.bf, label %.thread180.i

.thread180.i:                                     ; preds = %upstream_mark.exit.thread.i, %bb.au
  %.099189.i = phi i32 [ %.099.i, %upstream_mark.exit.thread.i ], [ %2, %bb.au ] ; 3 uses
  %.2111188.i = phi i32 [ %.0109236.i, %upstream_mark.exit.thread.i ], [ 0, %bb.au ]
  %.0112187.i = phi i32 [ %.0112.i, %upstream_mark.exit.thread.i ], [ 0, %bb.au ]
  %.1114186.i = phi i32 [ %.0113239.i, %upstream_mark.exit.thread.i ], [ 0, %bb.au ]
  %i.ff = icmp sgt i32 %.099189.i, 0
  br i1 %i.ff, label %.lr.ph.i.i, label %.loopexit

.lr.ph.i.i:                                       ; preds = %.thread180.i, %bb.be
  %.09.i.i = phi i32 [ %i.fi, %bb.be ], [ 0, %.thread180.i ]
  %.058.i.i = phi i32 [ %.1.i.i, %bb.be ], [ 1, %.thread180.i ] ; 3 uses
  %.067.i.i = phi ptr [ %i.fg, %bb.be ], [ %1, %.thread180.i ] ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.067.i.i, i64 1
  %i.fh = load i8, ptr %.067.i.i, align 1, !tbaa !47
  switch i8 %i.fh, label %bb.bd [
    i8 0, label %ambiguous_path.exit.i
    i8 47, label %bb.bc
    i8 46, label %bb.be
  ]

bb.bc:                                            ; preds = %.lr.ph.i.i
  %.not.i.i = icmp eq i32 %.058.i.i, 0
  br i1 %.not.i.i, label %bb.be, label %.loopexit

bb.bd:                                            ; preds = %.lr.ph.i.i
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc, %.lr.ph.i.i
  %.1.i.i = phi i32 [ 0, %bb.bd ], [ %.058.i.i, %.lr.ph.i.i ], [ 1, %bb.bc ] ; 2 uses
  %i.fi = add nuw nsw i32 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.fi, %.099189.i
  br i1 %exitcond.not.i.i, label %ambiguous_path.exit.i, label %.lr.ph.i.i, !llvm.loop !121

ambiguous_path.exit.i:                            ; preds = %bb.be, %.lr.ph.i.i
  %.05.lcssa.i.i = phi i32 [ %.1.i.i, %bb.be ], [ %.058.i.i, %.lr.ph.i.i ]
  %.not125.i = icmp eq i32 %.05.lcssa.i.i, 0
  br i1 %.not125.i, label %bb.bf, label %.loopexit

bb.bf:                                            ; preds = %ambiguous_path.exit.i, %upstream_mark.exit.thread.i
  %.not124179.i = phi i1 [ true, %upstream_mark.exit.thread.i ], [ false, %ambiguous_path.exit.i ] ; 3 uses
  %.099178.i = phi i32 [ 0, %upstream_mark.exit.thread.i ], [ %.099189.i, %ambiguous_path.exit.i ] ; 5 uses
  %.2111177.i = phi i32 [ %.0109236.i, %upstream_mark.exit.thread.i ], [ %.2111188.i, %ambiguous_path.exit.i ]
  %.0112176.i = phi i32 [ %.0112.i, %upstream_mark.exit.thread.i ], [ %.0112187.i, %ambiguous_path.exit.i ] ; 3 uses
  %.1114175.i = phi i32 [ %.0113239.i, %upstream_mark.exit.thread.i ], [ %.1114186.i, %ambiguous_path.exit.i ] ; 3 uses
  %.not126.i = icmp eq i32 %.2111177.i, 0
  br i1 %.not126.i, label %bb.bk, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) @__const.diagnose_invalid_index_path.fullname, i64 24, i1 false)
  %i.fj = call fastcc i32 @interpret_nth_prior_checkout(ptr noundef %0, ptr noundef %1, i32 noundef %.099178.i, ptr noundef nonnull %7)
  %i.fk = icmp sgt i32 %i.fj, 0
  br i1 %i.fk, label %bb.bh, label %.critedge140.i

bb.bh:                                            ; preds = %bb.bg
  %i.fl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fm = load i64, ptr %i.fl, align 8, !tbaa !54
  %i.fn = load ptr, ptr %i.dn, align 8, !tbaa !55
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !56
  %i.fq = icmp eq i64 %i.fm, %i.fp
  br i1 %i.fq, label %bb.bi, label %.critedge.i

bb.bi:                                            ; preds = %bb.bh
  %i.fr = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !52
  %i.ft = call i32 @get_oid_hex(ptr noundef %i.fs, ptr noundef %3) #18
  %.not127.i = icmp eq i32 %i.ft, 0
  call void @strbuf_release(ptr noundef nonnull %7) #18
  br i1 %.not127.i, label %bb.bj, label %.critedge140.i

.critedge.i:                                      ; preds = %bb.bh
  call void @strbuf_release(ptr noundef nonnull %7) #18
  br label %.critedge140.i

.critedge140.i:                                   ; preds = %.critedge.i, %bb.bi, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #18
  br label %get_oid_basic.exit.thread

bb.bk:                                            ; preds = %.critedge140.i, %bb.bf
  %i.fu = icmp ne i32 %.0112176.i, 0              ; 2 uses
  %or.cond.i93 = select i1 %.not124179.i, i1 %i.fu, i1 false
  br i1 %or.cond.i93, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.fv = and i32 %4, 1
  %i.fw = call i32 @repo_dwim_ref(ptr noundef %0, ptr noundef nonnull @.str.9, i32 noundef 4, ptr noundef %3, ptr noundef nonnull %i.a, i32 noundef %i.fv) #18
  br label %bb.bo

bb.bm:                                            ; preds = %bb.bk
  br i1 %i.fu, label %bb.bn, label %.thread218.i

bb.bn:                                            ; preds = %bb.bm
  %i.fx = call i32 @repo_dwim_log(ptr noundef %0, ptr noundef %1, i32 noundef %.099178.i, ptr noundef %3, ptr noundef nonnull %i.a) #18
  br label %bb.bo

.thread218.i:                                     ; preds = %bb.bm, %bb.at
  %.1114175203211226.i = phi i32 [ %.1114175.i, %bb.bm ], [ 0, %bb.at ]
  %.099178201215224.i = phi i32 [ %.099178.i, %bb.bm ], [ 0, %bb.at ] ; 2 uses
  %.not124179200217223.i = phi i1 [ %.not124179.i, %bb.bm ], [ true, %bb.at ]
  %i.fy = and i32 %4, 1
  %i.fz = call i32 @repo_dwim_ref(ptr noundef %0, ptr noundef %1, i32 noundef %.099178201215224.i, ptr noundef %3, ptr noundef nonnull %i.a, i32 noundef %i.fy) #18
  br label %bb.bo

bb.bo:                                            ; preds = %.thread218.i, %bb.bn, %bb.bl
  %i.ga = phi i1 [ true, %bb.bl ], [ true, %bb.bn ], [ false, %.thread218.i ]
  %.not124179200216.i = phi i1 [ true, %bb.bl ], [ %.not124179.i, %bb.bn ], [ %.not124179200217223.i, %.thread218.i ]
  %.099178201214.i = phi i32 [ %.099178.i, %bb.bl ], [ %.099178.i, %bb.bn ], [ %.099178201215224.i, %.thread218.i ] ; 3 uses
  %.0112176202212.i = phi i32 [ %.0112176.i, %bb.bl ], [ %.0112176.i, %bb.bn ], [ 0, %.thread218.i ] ; 2 uses
  %.1114175203210.i = phi i32 [ %.1114175.i, %bb.bl ], [ %.1114175.i, %bb.bn ], [ %.1114175203211226.i, %.thread218.i ]
  %.0115.i = phi i32 [ %i.fw, %bb.bl ], [ %i.fx, %bb.bn ], [ %i.fz, %.thread218.i ] ; 2 uses
  %.not128.i = icmp eq i32 %.0115.i, 0
  br i1 %.not128.i, label %.loopexit, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gb = call i32 @repo_settings_get_warn_ambiguous_refs(ptr noundef %0) #18
  %.not129.i = icmp eq i32 %i.gb, 0
  %brmerge.i = or i1 %.not129.i, %i.dk
  br i1 %brmerge.i, label %bb.bt, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.gc = icmp sgt i32 %.0115.i, 1
  br i1 %i.gc, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.gd = call fastcc i32 @get_short_oid(ptr noundef %0, ptr noundef %1, i32 noundef %.099178201214.i, ptr noundef nonnull %6, i32 noundef 1)
  %.not130.i = icmp eq i32 %i.gd, 0
  br i1 %.not130.i, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br, %bb.bq
  call void (ptr, ...) @warning(ptr noundef nonnull @.str.31, i32 noundef %.099178201214.i, ptr noundef %1) #18
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br, %bb.bp
  br i1 %i.ga, label %bb.bu, label %bb.cz

bb.bu:                                            ; preds = %bb.bt
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  %i.ge = icmp sgt i32 %.0112176202212.i, 0
  br i1 %i.ge, label %.lr.ph249.i, label %.thread287.i

.lr.ph249.i:                                      ; preds = %bb.bu
  %i.gf = zext nneg i32 %.0112176202212.i to i64  ; 2 uses
  %i.gg = sext i32 %.1114175203210.i to i64
  %invariant.gep.i = getelementptr i8, ptr %1, i64 %i.gg ; 2 uses
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bv, %.lr.ph249.i
  %indvars.iv265.i = phi i64 [ 0, %.lr.ph249.i ], [ %indvars.iv.next266.i, %bb.bv ] ; 2 uses
  %.0103247.i = phi i32 [ 0, %.lr.ph249.i ], [ %i.gn, %bb.bv ]
  %gep.i = getelementptr i8, ptr %invariant.gep.i, i64 %indvars.iv265.i
  %i.gh = getelementptr i8, ptr %gep.i, i64 2
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !47  ; 2 uses
  %i.gj = add i8 %i.gi, -48
  %or.cond6.i = icmp ult i8 %i.gj, 10
  %i.gk = sext i8 %i.gi to i32
  %i.gl = mul nuw nsw i32 %.0103247.i, 10
  %i.gm = add nsw i32 %i.gl, -48
  %i.gn = add i32 %i.gm, %i.gk                    ; 3 uses
  %.1104.i = select i1 %or.cond6.i, i32 %i.gn, i32 -1 ; 4 uses
  %indvars.iv.next266.i = add nuw nsw i64 %indvars.iv265.i, 1 ; 2 uses
  %i.go = icmp sgt i32 %.1104.i, -1               ; 2 uses
  %i.gp = icmp samesign ult i64 %indvars.iv.next266.i, %i.gf
  %i.gq = select i1 %i.go, i1 %i.gp, i1 false
  br i1 %i.gq, label %bb.bv, label %._crit_edge.i, !llvm.loop !122

._crit_edge.i:                                    ; preds = %bb.bv
  %i.gr = icmp sgt i32 %.1104.i, 99999999
  br i1 %i.gr, label %bb.bw, label %bb.bx
end_hunk_0
