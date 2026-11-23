Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/config?download=true
inline.NumInlined: 338
inline.NumDeleted: 71
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@git_config_check_init:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.e, i8 0, i64 104, i1 false)
  store ptr %0, ptr %4, align 8, !tbaa !115
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @cmp_strmap_entry, ptr %i.f, align 8, !tbaa !196
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 56
  store i8 1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 72
  store i8 1, ptr %i.h, align 8
  store i8 1, ptr %3, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = load <2 x ptr>, ptr %0, align 8, !tbaa !26
  %i.k = shufflevector <2 x ptr> %i.j, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.k, ptr %i.i, align 8, !tbaa !26
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = tail call ptr @xcalloc(i64 noundef 1, i64 noundef 72) #29 ; 2 uses
  store ptr %i.l, ptr %i.a, align 8, !tbaa !108
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @git_configset_clear(ptr noundef nonnull %i.b)
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !108
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.m = phi ptr [ %.pre.i, %bb.e ], [ %i.l, %bb.d ] ; 3 uses
  tail call void @hashmap_init(ptr noundef %i.m, ptr noundef nonnull @config_set_element_cmp, ptr noundef null, i64 noundef 0) #29
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i32 1, ptr %i.n, align 8, !tbaa !93
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  %i.p = call i32 @config_with_options(ptr noundef nonnull @repo_config_callback, ptr noundef nonnull %4, ptr noundef null, ptr noundef nonnull %0, ptr noundef nonnull %3)
  %i.q = icmp slt i32 %i.p, 0
  br i1 %i.q, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.r = call fastcc ptr @_(ptr noundef nonnull @.str.124)
  call void (ptr, ...) @die(ptr noundef %i.r) #30
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.s = load ptr, ptr %4, align 8, !tbaa !115    ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 689
  %i.u = load i8, ptr %i.t, align 1, !tbaa !116, !range !117, !noundef !118
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.i, label %check_deprecated_config.exit.i

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 12
  %i.x = load i8, ptr %i.w, align 4, !tbaa !119, !range !117, !noundef !118
  %i.y = trunc nuw i8 %i.x to i1
  %i.z = load i8, ptr @warn_on_auto_comment_char, align 1, !range !117
  %i.aa = trunc nuw i8 %i.z to i1
  %or.cond.i.i.i = select i1 %i.y, i1 %i.aa, i1 false
  br i1 %or.cond.i.i.i, label %bb.j, label %check_deprecated_config.exit.i

bb.j:                                             ; preds = %bb.i
  %i.ab = call i32 @git_env_bool(ptr noundef nonnull @.str.129, i32 noundef 0) #29
  %.not.i.i.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i.i.i, label %bb.k, label %check_deprecated_config.exit.i

bb.k:                                             ; preds = %bb.j
  %i.ac = call i32 @setenv(ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.130, i32 noundef 1) #29 ; 0 uses
  %i.ad = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not4.i.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not4.i.i.i.i, label %_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ae = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.131, i32 noundef 5) #29
  br label %_.exit.i.i.i

_.exit.i.i.i:                                     ; preds = %bb.l, %bb.k
  %.0.i.i.i.i = phi ptr [ %i.ae, %bb.l ], [ @.str.131, %bb.k ]
  %i.af = load i32, ptr %i.e, align 8, !tbaa !120 ; 2 uses
  %i.ag = icmp ugt i32 %i.af, 1
  br i1 %i.ag, label %bb.m, label %comment_key_name.exit.i.i.i

bb.m:                                             ; preds = %_.exit.i.i.i
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.17, i32 noundef 2064, ptr noundef nonnull @.str.134) #30
  unreachable

comment_key_name.exit.i.i.i:                      ; preds = %_.exit.i.i.i
  %i.ah = zext nneg i32 %i.af to i64
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr @comment_key_name.name, i64 %i.ah
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !26
  call void (ptr, ...) @warning(ptr noundef %.0.i.i.i.i, ptr noundef %i.aj) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) @__const.repo_config_copy_or_rename_section_in_file.copystr, i64 24, i1 false)
  %i.ak = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not4.i.i.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not4.i.i.i.i.i, label %_.exit.i.i.i.i, label %bb.n

bb.n:                                             ; preds = %comment_key_name.exit.i.i.i
  %i.al = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.135, i32 noundef 5) #29
  br label %_.exit.i.i.i.i

_.exit.i.i.i.i:                                   ; preds = %bb.n, %comment_key_name.exit.i.i.i
  %.0.i.i.i.i.i = phi ptr [ %i.al, %bb.n ], [ @.str.135, %comment_key_name.exit.i.i.i ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 13
  %i.an = load i8, ptr %i.am, align 1, !tbaa !121, !range !117, !noundef !118
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %bb.o, label %add_comment_char_advice.exit.i.i.i

bb.o:                                             ; preds = %_.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) @__const.repo_config_copy_or_rename_section_in_file.copystr, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 4 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !122 ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 104 ; 3 uses
  %.pre16.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !123
  br label %bb.p

bb.p:                                             ; preds = %.critedge.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.at = phi i64 [ %i.aq, %.lr.ph.i.i.i.i.i.i ], [ %i.bc, %.critedge.i.i.i.i.i.i ]
  %i.au = phi ptr [ %.pre16.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.bd, %.critedge.i.i.i.i.i.i ] ; 2 uses
  %.0912.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i ], [ %i.be, %.critedge.i.i.i.i.i.i ] ; 2 uses
  %i.av = getelementptr inbounds nuw [24 x i8], ptr %i.au, i64 %.0912.i.i.i.i.i.i ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !125
  %i.ay = icmp eq i32 %i.ax, 1
  br i1 %i.ay, label %bb.q, label %.critedge.i.i.i.i.i.i

bb.q:                                             ; preds = %bb.p
  %i.az = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !126
  %i.bb = call i32 @access(ptr noundef %i.ba, i32 noundef 2) #29
  %.not.i.i.i.i.i.i = icmp eq i32 %i.bb, 0
  br i1 %.not.i.i.i.i.i.i, label %..critedge_crit_edge.i.i.i.i.i.i, label %.loopexit.i.i.i.i

..critedge_crit_edge.i.i.i.i.i.i:                 ; preds = %bb.q
  %.pre.i.i.i.i.i.i = load ptr, ptr %i.as, align 8, !tbaa !123
  %.pre17.i.i.i.i.i.i = load i64, ptr %i.ap, align 8, !tbaa !122
  br label %.critedge.i.i.i.i.i.i

.critedge.i.i.i.i.i.i:                            ; preds = %..critedge_crit_edge.i.i.i.i.i.i, %bb.p
  %i.bc = phi i64 [ %.pre17.i.i.i.i.i.i, %..critedge_crit_edge.i.i.i.i.i.i ], [ %i.at, %bb.p ] ; 3 uses
  %i.bd = phi ptr [ %.pre.i.i.i.i.i.i, %..critedge_crit_edge.i.i.i.i.i.i ], [ %i.au, %bb.p ]
  %i.be = add nuw i64 %.0912.i.i.i.i.i.i, 1       ; 2 uses
  %.not15.i.i.i.i.i.i = icmp ult i64 %i.be, %i.bc
  br i1 %.not15.i.i.i.i.i.i, label %bb.p, label %can_unset_comment_char_config.exit.i.i.i.i.i, !llvm.loop !193

can_unset_comment_char_config.exit.i.i.i.i.i:     ; preds = %.critedge.i.i.i.i.i.i
  %i.bf = icmp eq i64 %i.bc, 0
  br i1 %i.bf, label %._crit_edge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %can_unset_comment_char_config.exit.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 80
  br label %bb.s

._crit_edge.i.i.i.i.i:                            ; preds = %comment_key_name.exit.i.i.i.i.i, %can_unset_comment_char_config.exit.i.i.i.i.i, %bb.o
  %i.bi = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not4.i.i.i.i.i.i = icmp eq i32 %i.bi, 0
  br i1 %.not4.i.i.i.i.i.i, label %_.exit.i.i.i.i.i, label %bb.r

bb.r:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.bj = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.142, i32 noundef 5) #29
  br label %_.exit.i.i.i.i.i

_.exit.i.i.i.i.i:                                 ; preds = %bb.r, %._crit_edge.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi ptr [ %i.bj, %bb.r ], [ @.str.142, %._crit_edge.i.i.i.i.i ]
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !23
  call void (ptr, ...) @advise(ptr noundef %.0.i.i.i.i.i.i, ptr noundef %i.bl) #29
  call void @strbuf_release(ptr noundef nonnull %1) #29
  br label %.loopexit.i.i.i.i

bb.s:                                             ; preds = %comment_key_name.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i ], [ %i.cf, %comment_key_name.exit.i.i.i.i.i ] ; 2 uses
  %i.bm = load ptr, ptr %i.as, align 8, !tbaa !123
  %i.bn = getelementptr inbounds nuw [24 x i8], ptr %i.bm, i64 %.012.i.i.i.i.i ; 4 uses
  call void @strbuf_add(ptr noundef nonnull %1, ptr noundef nonnull @.str.139, i64 noundef 21) #29
  call fastcc void @add_config_scope_arg(ptr noundef %i.s, ptr noundef %1, ptr noundef %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !126
  %i.bq = load i32, ptr %i.bn, align 8, !tbaa !127
  %i.br = call ptr @strmap_get_entry(ptr noundef nonnull %i.bg, ptr noundef %i.bp) #29 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i.i.i.i.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bs = load i32, ptr %i.bh, align 8, !tbaa !128
  br label %get_comment_key_flags.exit.i.i.i.i.i

bb.u:                                             ; preds = %bb.s
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !130
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = trunc i64 %i.bv to i32
  br label %get_comment_key_flags.exit.i.i.i.i.i

get_comment_key_flags.exit.i.i.i.i.i:             ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i = phi i32 [ %i.bw, %bb.u ], [ %i.bs, %bb.t ]
  %i.bx = shl i32 %i.bq, 1                        ; 2 uses
  %5 = shl i32 3, %i.bx
  %i.by = and i32 %.0.i.i.i.i.i.i.i, %5
  %6 = lshr i32 %i.by, %i.bx
  %i.bz = icmp eq i32 %6, 2
  br i1 %i.bz, label %bb.v, label %bb.w

bb.v:                                             ; preds = %get_comment_key_flags.exit.i.i.i.i.i
  call void @strbuf_add(ptr noundef nonnull %1, ptr noundef nonnull @.str.140, i64 noundef 6) #29
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %get_comment_key_flags.exit.i.i.i.i.i
  %i.ca = load i32, ptr %i.bn, align 8, !tbaa !127 ; 2 uses
  %i.cb = icmp ugt i32 %i.ca, 1
  br i1 %i.cb, label %bb.x, label %comment_key_name.exit.i.i.i.i.i

bb.x:                                             ; preds = %bb.w
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.17, i32 noundef 2064, ptr noundef nonnull @.str.134) #30
  unreachable

comment_key_name.exit.i.i.i.i.i:                  ; preds = %bb.w
  %i.cc = zext nneg i32 %i.ca to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr @comment_key_name.name, i64 %i.cc
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !26
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %1, ptr noundef nonnull @.str.141, ptr noundef %i.ce) #29
  %i.cf = add nuw i64 %.012.i.i.i.i.i, 1          ; 2 uses
  %i.cg = load i64, ptr %i.ap, align 8, !tbaa !122
  %i.ch = icmp ult i64 %i.cf, %i.cg
  br i1 %i.ch, label %bb.s, label %._crit_edge.i.i.i.i.i, !llvm.loop !194

.loopexit.i.i.i.i:                                ; preds = %bb.q, %_.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %i.ci = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !123
  %i.ck = load i64, ptr %i.ap, align 8, !tbaa !122
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.cl, align 8, !tbaa !22
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cn = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !16
  %.not10.i.i.i.i.i = icmp eq i8 %i.cn, 0
  br i1 %.not10.i.i.i.i.i, label %strbuf_setlen.exit.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %.loopexit.i.i.i.i
  call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.75, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #30
  unreachable

strbuf_setlen.exit.i.i.i.i:                       ; preds = %.loopexit.i.i.i.i
  %i.co = getelementptr [24 x i8], ptr %i.cj, i64 %i.ck
  %i.cp = getelementptr i8, ptr %i.co, i64 -24    ; 2 uses
  call void @strbuf_add(ptr noundef nonnull %2, ptr noundef nonnull @.str.136, i64 noundef 19) #29
  call fastcc void @add_config_scope_arg(ptr noundef %i.s, ptr noundef %2, ptr noundef %i.cp)
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !127 ; 2 uses
  %i.cr = icmp ugt i32 %i.cq, 1
  br i1 %i.cr, label %bb.z, label %comment_key_name.exit.i.i.i.i

bb.z:                                             ; preds = %strbuf_setlen.exit.i.i.i.i
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.17, i32 noundef 2064, ptr noundef nonnull @.str.134) #30
  unreachable

comment_key_name.exit.i.i.i.i:                    ; preds = %strbuf_setlen.exit.i.i.i.i
  %i.cs = zext nneg i32 %i.cq to i64
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr @comment_key_name.name, i64 %i.cs
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !26
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %2, ptr noundef nonnull @.str.137, ptr noundef %i.cu, ptr noundef %.0.i.i.i.i.i) #29
  %i.cv = load i32, ptr @git_gettext_enabled, align 4, !tbaa !24
  %.not4.i10.i.i.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not4.i10.i.i.i.i, label %_.exit12.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %comment_key_name.exit.i.i.i.i
  %i.cw = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.138, i32 noundef 5) #29
  br label %_.exit12.i.i.i.i

_.exit12.i.i.i.i:                                 ; preds = %bb.aa, %comment_key_name.exit.i.i.i.i
  %.0.i11.i.i.i.i = phi ptr [ %i.cw, %bb.aa ], [ @.str.138, %comment_key_name.exit.i.i.i.i ]
  %i.cx = load ptr, ptr %i.cm, align 8, !tbaa !23
  call void (ptr, ...) @advise(ptr noundef %.0.i11.i.i.i.i, ptr noundef %i.cx, ptr noundef %.0.i.i.i.i.i) #29
  call void @strbuf_release(ptr noundef nonnull %2) #29
  br label %add_comment_char_advice.exit.i.i.i

add_comment_char_advice.exit.i.i.i:               ; preds = %_.exit12.i.i.i.i, %_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  br label %check_deprecated_config.exit.i

check_deprecated_config.exit.i:                   ; preds = %add_comment_char_advice.exit.i.i.i, %bb.j, %bb.i, %bb.h
  %i.cy = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @strmap_clear(ptr noundef nonnull %i.cy, i32 noundef 0) #29
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !122
  %.not.i.i8.i = icmp eq i64 %i.da, 0
  br i1 %.not.i.i8.i, label %repo_read_config.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %check_deprecated_config.exit.i
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 104
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ab, %.lr.ph.i.i.i
  %.06.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.dg, %bb.ab ] ; 2 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !123
  %i.dd = getelementptr inbounds nuw [24 x i8], ptr %i.dc, i64 %.06.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !126
  call void @free(ptr noundef %i.df) #29
  %i.dg = add nuw i64 %.06.i.i.i, 1               ; 2 uses
  %i.dh = load i64, ptr %i.cz, align 8, !tbaa !122
  %i.di = icmp ult i64 %i.dg, %i.dh
  br i1 %i.di, label %bb.ab, label %repo_read_config.exit, !llvm.loop !195

repo_read_config.exit:                            ; preds = %bb.ab, %check_deprecated_config.exit.i
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !123
  call void @free(ptr noundef %i.dk) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %bb.ac

bb.ac:                                            ; preds = %bb.b, %repo_read_config.exit
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 2) i32 @repo_config_get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.config_set_element, align 8 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 4 uses
  tail call fastcc void @git_config_check_init(ptr noundef %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.d = call fastcc range(i32 -2, 1) i32 @do_parse_config_key(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 0) ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %bb.b, label %git_configset_get.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.f = call i32 @strhash(ptr noundef %i.e) #29
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 %i.f, ptr %i.g, align 8, !tbaa !99
  store ptr null, ptr %2, align 8, !tbaa !100
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.e, ptr %i.h, align 8, !tbaa !97
  %i.i = call ptr @hashmap_get(ptr noundef %i.c, ptr noundef nonnull %2, ptr noundef null) #29
  call void @free(ptr noundef %i.e) #29
  %i.j = icmp eq ptr %i.i, null
  %i.k = zext i1 %i.j to i32
  br label %git_configset_get.exit

git_configset_get.exit:                           ; preds = %bb.a, %bb.b
  %.0.i = phi i32 [ %i.k, %bb.b ], [ %i.d, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #29
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 2) i32 @repo_config_get_value(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @git_config_check_init(ptr noundef %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !108
  %i.c = tail call i32 @git_configset_get_value(ptr noundef %i.b, ptr noundef %1, ptr noundef %2, ptr noundef null)
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 2) i32 @repo_config_get_value_multi(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.config_set_element, align 8 ; 7 uses
  %i.a = alloca ptr, align 8                      ; 5 uses
  tail call fastcc void @git_config_check_init(ptr noundef %0)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !108
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  %i.d = call fastcc range(i32 -2, 1) i32 @do_parse_config_key(ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 0) ; 2 uses
  %.not.i.i = icmp eq i32 %i.d, 0
  br i1 %.not.i.i, label %bb.b, label %configset_find_element.exit.i

configset_find_element.exit.i:                    ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %git_configset_get_value_multi.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !26   ; 3 uses
  %i.f = call i32 @strhash(ptr noundef %i.e) #29
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.f, ptr %i.g, align 8, !tbaa !99
  store ptr null, ptr %3, align 8, !tbaa !100
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.e, ptr %i.h, align 8, !tbaa !97
  %i.i = call ptr @hashmap_get(ptr noundef %i.c, ptr noundef nonnull %3, ptr noundef null) #29 ; 2 uses
  call void @free(ptr noundef %i.e) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %.not6.i = icmp eq ptr %i.i, null
  br i1 %.not6.i, label %git_configset_get_value_multi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr %i.j, ptr %2, align 8, !tbaa !107
  br label %git_configset_get_value_multi.exit

git_configset_get_value_multi.exit:               ; preds = %configset_find_element.exit.i, %bb.b, %bb.c
  %.0.i = phi i32 [ %i.d, %configset_find_element.exit.i ], [ 0, %bb.c ], [ 1, %bb.b ]
end_hunk_0
