Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/object-name?download=true
inline.NumInlined: 89
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@get_oid_1:bb.a
  %i.hd = icmp eq i8 %i.hc, 114
  br i1 %i.hd, label %bb.cc, label %skip_prefix_impl.exit.i

bb.cc:                                            ; preds = %bb.cb
  %i.he = getelementptr inbounds nuw i8, ptr %i.hb, i64 1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !44
  %i.hg = icmp eq i8 %i.hf, 101
  br i1 %i.hg, label %bb.cd, label %skip_prefix_impl.exit.i

bb.cd:                                            ; preds = %bb.cc
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hb, i64 2
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !44
  %i.hj = icmp eq i8 %i.hi, 102
  br i1 %i.hj, label %bb.ce, label %skip_prefix_impl.exit.i

bb.ce:                                            ; preds = %bb.cd
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hb, i64 3
  %i.hl = load i8, ptr %i.hk, align 1, !tbaa !44
  %i.hm = icmp eq i8 %i.hl, 115
  br i1 %i.hm, label %bb.cf, label %skip_prefix_impl.exit.i

bb.cf:                                            ; preds = %bb.ce
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hb, i64 4
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !44
  %i.hp = icmp eq i8 %i.ho, 47
  br i1 %i.hp, label %bb.cg, label %skip_prefix_impl.exit.i

bb.cg:                                            ; preds = %bb.cf
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hb, i64 5
  %i.hr = load i8, ptr %i.hq, align 1, !tbaa !44
  %i.hs = icmp eq i8 %i.hr, 104
  br i1 %i.hs, label %bb.ch, label %skip_prefix_impl.exit.i

bb.ch:                                            ; preds = %bb.cg
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hb, i64 6
  %i.hu = load i8, ptr %i.ht, align 1, !tbaa !44
  %i.hv = icmp eq i8 %i.hu, 101
  br i1 %i.hv, label %bb.ci, label %skip_prefix_impl.exit.i

bb.ci:                                            ; preds = %bb.ch
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hb, i64 7
  %i.hx = load i8, ptr %i.hw, align 1, !tbaa !44
  %i.hy = icmp eq i8 %i.hx, 97
  br i1 %i.hy, label %bb.cj, label %skip_prefix_impl.exit.i

bb.cj:                                            ; preds = %bb.ci
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !44
  %i.ib = icmp eq i8 %i.ia, 100
  br i1 %i.ib, label %bb.ck, label %skip_prefix_impl.exit.i

bb.ck:                                            ; preds = %bb.cj
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hb, i64 9
  %i.id = load i8, ptr %i.ic, align 1, !tbaa !44
  %i.ie = icmp eq i8 %i.id, 115
  br i1 %i.ie, label %bb.cl, label %skip_prefix_impl.exit.i

bb.cl:                                            ; preds = %bb.ck
  %i.if = getelementptr inbounds nuw i8, ptr %i.hb, i64 10
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !44
  %i.ih = icmp eq i8 %i.ig, 47
  %spec.select292.i = select i1 %i.ih, ptr %scevgep.i, ptr @.str.9
  br label %skip_prefix_impl.exit.i

skip_prefix_impl.exit.i:                          ; preds = %bb.cl, %bb.ck, %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc, %bb.cb
  %.0.i95 = phi ptr [ @.str.9, %bb.cb ], [ @.str.9, %bb.cj ], [ @.str.9, %bb.cg ], [ @.str.9, %bb.cc ], [ %spec.select292.i, %bb.cl ], [ @.str.9, %bb.cd ], [ @.str.9, %bb.ch ], [ @.str.9, %bb.ce ], [ @.str.9, %bb.ck ], [ @.str.9, %bb.cf ], [ @.str.9, %bb.ci ] ; 2 uses
  %i.ii = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i95) #17
  %i.ij = trunc i64 %i.ii to i32
  br label %bb.cm

bb.cm:                                            ; preds = %skip_prefix_impl.exit.i, %bb.ca
  %.1.i94 = phi ptr [ %.0.i95, %skip_prefix_impl.exit.i ], [ %1, %bb.ca ] ; 2 uses
  %.1100.i = phi i32 [ %i.ij, %skip_prefix_impl.exit.i ], [ %.099178201214.i, %bb.ca ] ; 2 uses
  %.not133.i = icmp eq i64 %.0101.i, 0
  br i1 %.not133.i, label %bb.cq, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  br i1 %i.dk, label %bb.cw, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.ik = load i32, ptr @git_gettext_enabled, align 4, !tbaa !54
  %.not4.i145.i = icmp eq i32 %i.ik, 0
  br i1 %.not4.i145.i, label %_.exit147.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.il = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #18
  br label %_.exit147.i

_.exit147.i:                                      ; preds = %bb.cp, %bb.co
  %.0.i146.i = phi ptr [ %i.il, %bb.cp ], [ @.str.34, %bb.co ]
  %i.im = load i64, ptr %i.b, align 8, !tbaa !132
  %i.in = load i32, ptr %i.c, align 4, !tbaa !54
  %i.io = call { i64, ptr } @date_mode_from_type(i32 noundef 6) #18 ; 2 uses
  %i.ip = extractvalue { i64, ptr } %i.io, 0
  %i.iq = extractvalue { i64, ptr } %i.io, 1
  %i.ir = call ptr @show_date(i64 noundef %i.im, i32 noundef %i.in, i64 %i.ip, ptr %i.iq) #18
  call void (ptr, ...) @warning(ptr noundef %.0.i146.i, i32 noundef %.1100.i, ptr noundef %.1.i94, ptr noundef %i.ir) #18
  br label %bb.cw

bb.cq:                                            ; preds = %bb.cm
  %i.is = load i32, ptr %i.d, align 4, !tbaa !54
  %i.it = icmp eq i32 %.2105.i, %i.is
  br i1 %i.it, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  %i.iu = load i128, ptr %3, align 1
  %i.iv = getelementptr i8, ptr %3, i64 16
  %i.iw = load i128, ptr %i.iv, align 1
  %i.ix = or i128 %i.iu, %i.iw
  %i.iy = icmp ne i128 %i.ix, 0
  %i.iz = zext i1 %i.iy to i32
  %i.ja = and i32 %4, 32768
  %i.jb = or i32 %i.iz, %i.ja
  %or.cond141.i = icmp eq i32 %i.jb, 0
  br i1 %or.cond141.i, label %bb.ct, label %bb.cw

bb.cs:                                            ; preds = %bb.cq
  %.old.i = and i32 %4, 32768
  %.not135.old.i = icmp eq i32 %.old.i, 0
  br i1 %.not135.old.i, label %bb.ct, label %bb.cw

bb.ct:                                            ; preds = %bb.cs, %bb.cr
  br i1 %i.dk, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.jc = call i32 @common_exit(ptr noundef nonnull @.str.10, i32 noundef 812, i32 noundef 128) #18
  call void @exit(i32 noundef %i.jc) #19
  unreachable

bb.cv:                                            ; preds = %bb.ct
  %i.jd = call fastcc ptr @_(ptr noundef nonnull @.str.35)
  %i.je = load i32, ptr %i.d, align 4, !tbaa !54
  call void (ptr, ...) @die(ptr noundef %i.jd, i32 noundef %.1100.i, ptr noundef %.1.i94, i32 noundef %i.je) #19
  unreachable

bb.cw:                                            ; preds = %bb.cs, %bb.cr, %_.exit147.i, %bb.cn
  %i.jf = and i32 %4, 32768
  %.not136.i = icmp eq i32 %i.jf, 0
  br i1 %.not136.i, label %.thread230.i, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.jg = load ptr, ptr %i.a, align 8, !tbaa !72
  call void @free(ptr noundef %i.jg) #18
  br label %bb.cy

.thread230.i:                                     ; preds = %bb.cw, %.thread286.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %bb.cz

bb.cy:                                            ; preds = %bb.cx, %bb.bz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  br label %.loopexit

bb.cz:                                            ; preds = %.thread230.i, %bb.bt
  %i.jh = load ptr, ptr %i.a, align 8, !tbaa !72
  call void @free(ptr noundef %i.jh) #18
  br label %get_oid_basic.exit.thread

get_oid_basic.exit.thread:                        ; preds = %bb.al, %bb.cz, %bb.bj, %bb.as, %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  br label %.critedge

.loopexit:                                        ; preds = %bb.bc, %bb.cy, %bb.bo, %ambiguous_path.exit.i, %.thread180.i, %bb.ay
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #18
  %.not44.i = icmp slt i32 %2, 3
  br i1 %.not44.i, label %get_describe_name.exit.thread, label %.lr.ph.i97

.lr.ph.i97:                                       ; preds = %.loopexit
  %i.ji = zext nneg i32 %2 to i64
  %i.jj = ptrtoint ptr %1 to i64
  %i.jk = getelementptr inbounds nuw i8, ptr %5, i64 16
  br label %bb.da

bb.da:                                            ; preds = %bb.dg, %.lr.ph.i97
  %.024.idx.in45.i = phi i64 [ %i.ji, %.lr.ph.i97 ], [ %.024.idx46.i, %bb.dg ] ; 5 uses
  %.024.idx46.i = add nsw i64 %.024.idx.in45.i, -1 ; 2 uses
  %.024.ptr47.i = getelementptr inbounds i8, ptr %1, i64 %.024.idx46.i ; 2 uses
  %i.jl = load i8, ptr %.024.ptr47.i, align 1, !tbaa !44 ; 2 uses
  %i.jm = zext i8 %i.jl to i64
  %i.jn = getelementptr inbounds nuw i8, ptr @hexval_table, i64 %i.jm
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !44
  %i.jp = icmp eq i8 %i.jo, -1
  %i.jq = icmp eq i8 %i.jl, 103
  %or.cond.i98 = and i1 %i.jq, %i.jp
  br i1 %or.cond.i98, label %bb.db, label %bb.dg

bb.db:                                            ; preds = %bb.da
  %i.jr = getelementptr inbounds i8, ptr %.024.ptr47.i, i64 -1
  %i.js = load i8, ptr %i.jr, align 1, !tbaa !44
  %i.jt = icmp eq i8 %i.js, 45
  br i1 %i.jt, label %bb.dc, label %bb.dg

bb.dc:                                            ; preds = %bb.db
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %sext.i = add nuw nsw i64 %.024.idx.in45.i, 4294967294
  %11 = and i64 %sext.i, 4294967295
  %i.ju = getelementptr i8, ptr %1, i64 %11       ; 2 uses
  %i.jv = getelementptr i8, ptr %i.ju, i64 -1
  %i.jw = load i8, ptr %i.jv, align 1, !tbaa !44
  %i.jx = zext i8 %i.jw to i64
  %i.jy = getelementptr inbounds nuw i8, ptr @hexval_table, i64 %i.jx
  %i.jz = load i8, ptr %i.jy, align 1, !tbaa !44
  %.not.i.i100 = icmp eq i8 %i.jz, -1
  br i1 %.not.i.i100, label %ref_and_count_parts_valid.exit.thread.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ka = getelementptr inbounds i8, ptr %i.ju, i64 -2 ; 3 uses
  %i.kb = icmp ult ptr %1, %i.ka
  br i1 %i.kb, label %.lr.ph.i.i102, label %._crit_edge.i.i

.lr.ph.i.i102:                                    ; preds = %bb.dd, %bb.df
  %.025.i.i = phi ptr [ %i.kh, %bb.df ], [ %i.ka, %bb.dd ] ; 3 uses
  %i.kc = load i8, ptr %.025.i.i, align 1, !tbaa !44 ; 2 uses
  %i.kd = icmp eq i8 %i.kc, 45
  br i1 %i.kd, label %ref_and_count_parts_valid.exit.i, label %bb.de

bb.de:                                            ; preds = %.lr.ph.i.i102
  %i.ke = zext i8 %i.kc to i64
  %i.kf = getelementptr inbounds nuw i8, ptr @hexval_table, i64 %i.ke
  %i.kg = load i8, ptr %i.kf, align 1, !tbaa !44
  %.not18.i.i = icmp eq i8 %i.kg, -1
  br i1 %.not18.i.i, label %ref_and_count_parts_valid.exit.thread.i, label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.kh = getelementptr inbounds i8, ptr %.025.i.i, i64 -1 ; 2 uses
  %i.ki = icmp ult ptr %1, %i.kh
  br i1 %i.ki, label %.lr.ph.i.i102, label %._crit_edge.i.i, !llvm.loop !124

._crit_edge.i.i:                                  ; preds = %bb.df, %bb.dd
  %.0.lcssa.i.i = phi ptr [ %i.ka, %bb.dd ], [ %1, %bb.df ] ; 2 uses
  %.pr.i.i = load i8, ptr %.0.lcssa.i.i, align 1, !tbaa !44
  %.not19.i.i = icmp eq i8 %.pr.i.i, 45
  br i1 %.not19.i.i, label %ref_and_count_parts_valid.exit.i, label %ref_and_count_parts_valid.exit.thread.i

ref_and_count_parts_valid.exit.thread.i:          ; preds = %bb.de, %._crit_edge.i.i, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br label %bb.dg

ref_and_count_parts_valid.exit.i:                 ; preds = %.lr.ph.i.i102, %._crit_edge.i.i
  %.024.i.i = phi ptr [ %.0.lcssa.i.i, %._crit_edge.i.i ], [ %.025.i.i, %.lr.ph.i.i102 ]
  %i.kj = ptrtoint ptr %.024.i.i to i64
  %i.kk = sub i64 %i.kj, %i.jj
  %sext.i.i = shl i64 %i.kk, 32
  %i.kl = ashr exact i64 %sext.i.i, 32            ; 2 uses
  call void @strbuf_init(ptr noundef nonnull %5, i64 noundef %i.kl) #18
  call void @strbuf_add(ptr noundef nonnull %5, ptr noundef %1, i64 noundef %i.kl) #18
  %i.km = load ptr, ptr %i.jk, align 8, !tbaa !49
  %i.kn = call i32 @check_refname_format(ptr noundef %i.km, i32 noundef 1) #18
  %.not20.i.not.i = icmp eq i32 %i.kn, 0
  call void @strbuf_release(ptr noundef nonnull %5) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #18
  br i1 %.not20.i.not.i, label %get_describe_name.exit, label %bb.dg

bb.dg:                                            ; preds = %ref_and_count_parts_valid.exit.i, %ref_and_count_parts_valid.exit.thread.i, %bb.db, %bb.da
  %.not.i99 = icmp slt i64 %.024.idx.in45.i, 4
  br i1 %.not.i99, label %get_describe_name.exit.thread, label %bb.da, !llvm.loop !125

get_describe_name.exit:                           ; preds = %ref_and_count_parts_valid.exit.i
  %i.ko = trunc i64 %.024.idx.in45.i to i32
  %.ptr31.i = getelementptr inbounds nuw i8, ptr %1, i64 %.024.idx.in45.i
  %i.kp = sub i32 %2, %i.ko
  %i.kq = call fastcc i32 @get_short_oid(ptr noundef %0, ptr noundef nonnull %.ptr31.i, i32 noundef %i.kp, ptr noundef %3, i32 noundef 3)
  %.not82 = icmp eq i32 %i.kq, 0
  br i1 %.not82, label %.critedge, label %get_describe_name.exit.thread

get_describe_name.exit.thread:                    ; preds = %bb.dg, %.loopexit, %get_describe_name.exit
  %i.kr = call fastcc i32 @get_short_oid(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, i32 noundef %4)
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %.lr.ph, %get_oid_basic.exit.thread, %peel_onion.exit.thread125, %peel_onion.exit.thread122, %get_describe_name.exit, %peel_onion.exit, %get_parent.exit, %get_nth_ancestor.exit, %bb.g, %get_describe_name.exit.thread
  %.378 = phi i32 [ 0, %peel_onion.exit.thread122 ], [ %i.kr, %get_describe_name.exit.thread ], [ 0, %get_oid_basic.exit.thread ], [ 0, %peel_onion.exit ], [ -1, %bb.g ], [ %.015.i, %get_nth_ancestor.exit ], [ %.018.i, %get_parent.exit ], [ 0, %peel_onion.exit.thread125 ], [ 0, %get_describe_name.exit ], [ -1, %.lr.ph ], [ -1, %bb.f ]
  ret i32 %.378
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_(ptr noundef %0) unnamed_addr #11 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !44
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !54
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %0, i32 noundef 5) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ @.str.50, %bb.a ], [ %0, %bb.b ]
  ret ptr %.0
}

declare i32 @refs_for_each_ref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @handle_one_ref(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !80
  %i.c = load ptr, ptr %1, align 8, !tbaa !79
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !134
  %i.f = tail call ptr @parse_object(ptr noundef %i.c, ptr noundef %i.e) #18 ; 4 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %i.f, align 4              ; 2 uses
  %i.h = and i64 %i.g, 14
  %i.i = icmp eq i64 %i.h, 8
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %1, align 8, !tbaa !79
  %i.k = load ptr, ptr %0, align 8, !tbaa !135    ; 2 uses
  %i.l = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.k) #17
  %i.m = trunc i64 %i.l to i32
  %i.n = tail call ptr @deref_tag(ptr noundef %i.j, ptr noundef nonnull %i.f, ptr noundef nonnull %i.k, i32 noundef %i.m) #18 ; 3 uses
  %.not17 = icmp eq ptr %i.n, null
  br i1 %.not17, label %bb.f, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c
  %.pre = load i64, ptr %i.n, align 4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %bb.b
  %i.o = phi i64 [ %.pre, %._crit_edge ], [ %i.g, %bb.b ]
  %.0 = phi ptr [ %i.n, %._crit_edge ], [ %i.f, %bb.b ]
  %i.p = and i64 %i.o, 14
  %.not18 = icmp eq i64 %i.p, 2
  br i1 %.not18, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = tail call ptr @commit_list_insert(ptr noundef nonnull %.0, ptr noundef %i.b) #18 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.a, %bb.e
  ret i32 0
}

declare i32 @refs_head_ref(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @get_oid_oneline(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(none) %2, ptr nofree noundef readonly captures(address_is_null) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.prio_queue, align 8         ; 8 uses
  %5 = alloca %struct.re_pattern_buffer, align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull align 8 dereferenceable(48) @__const.get_oid_oneline.copy, i64 48, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  %i.a = load i8, ptr %1, align 1, !tbaa !44
  %i.b = icmp eq i8 %i.a, 33
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !44
  switch i8 %i.d, label %bb.i [
    i8 45, label %bb.c
    i8 33, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 2
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.036 = phi ptr [ %i.e, %bb.c ], [ %i.c, %bb.b ], [ %1, %bb.a ]
  %.031 = phi i32 [ 1, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.f = call i32 @regcomp(ptr noundef nonnull %5, ptr noundef nonnull %.036, i32 noundef 1) #18
  %.not39 = icmp eq i32 %i.f, 0
  br i1 %.not39, label %.preheader50, label %bb.i

.preheader50:                                     ; preds = %bb.d
  %.not4054 = icmp eq ptr %3, null
  br i1 %.not4054, label %.loopexit.thread, label %.lr.ph

.loopexit.thread:                                 ; preds = %.preheader50
  call void @regfree(ptr noundef nonnull %5) #18
  br label %._crit_edge

.preheader:                                       ; preds = %.lr.ph
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !141
  %i.g = icmp eq i64 %.pre, 0
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 32
  br i1 %i.g, label %.lr.ph61.preheader, label %.lr.ph58

.lr.ph:                                           ; preds = %.preheader50, %.lr.ph
  %.03355 = phi ptr [ %i.n, %.lr.ph ], [ %3, %.preheader50 ] ; 3 uses
  %i.i = load ptr, ptr %.03355, align 8, !tbaa !69 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = or i64 %i.j, 4503599627370496
  store i64 %i.k, ptr %i.i, align 8
end_hunk_0
