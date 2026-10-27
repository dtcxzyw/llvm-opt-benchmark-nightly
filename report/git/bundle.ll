Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/bundle?download=true
inline.NumInlined: 54
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@read_bundle_header_fd:bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %.pre, i64 5
  %i.am = load i8, ptr %i.al, align 1, !tbaa !26
  %i.an = icmp eq i8 %i.am, 99
  br i1 %i.an, label %bb.n, label %skip_prefix_impl.exit11.i

bb.n:                                             ; preds = %bb.m
  %i.ao = getelementptr inbounds nuw i8, ptr %.pre, i64 6
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !26
  %i.aq = icmp eq i8 %i.ap, 116
  br i1 %i.aq, label %bb.o, label %skip_prefix_impl.exit11.i

bb.o:                                             ; preds = %bb.n
  %i.ar = getelementptr inbounds nuw i8, ptr %.pre, i64 7
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !26
  %i.at = icmp eq i8 %i.as, 45
  br i1 %i.at, label %bb.p, label %skip_prefix_impl.exit11.i

bb.p:                                             ; preds = %bb.o
  %i.au = getelementptr inbounds nuw i8, ptr %.pre, i64 8
  %i.av = load i8, ptr %i.au, align 1, !tbaa !26
  %i.aw = icmp eq i8 %i.av, 102
  br i1 %i.aw, label %bb.q, label %skip_prefix_impl.exit11.i

bb.q:                                             ; preds = %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre, i64 9
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !26
  %i.az = icmp eq i8 %i.ay, 111
  br i1 %i.az, label %bb.r, label %skip_prefix_impl.exit11.i

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr inbounds nuw i8, ptr %.pre, i64 10
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !26
  %i.bc = icmp eq i8 %i.bb, 114
  br i1 %i.bc, label %bb.s, label %skip_prefix_impl.exit11.i

bb.s:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %.pre, i64 11
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !26
  %i.bf = icmp eq i8 %i.be, 109
  br i1 %i.bf, label %bb.t, label %skip_prefix_impl.exit11.i

bb.t:                                             ; preds = %bb.s
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre, i64 12
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !26
  %i.bi = icmp eq i8 %i.bh, 97
  br i1 %i.bi, label %bb.u, label %skip_prefix_impl.exit11.i

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr inbounds nuw i8, ptr %.pre, i64 13
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !26
  %i.bl = icmp eq i8 %i.bk, 116
  br i1 %i.bl, label %bb.v, label %skip_prefix_impl.exit11.i

bb.v:                                             ; preds = %bb.u
  %i.bm = getelementptr inbounds nuw i8, ptr %.pre, i64 14
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !26
  %i.bo = icmp eq i8 %i.bn, 61
  br i1 %i.bo, label %bb.w, label %skip_prefix_impl.exit11.i

skip_prefix_impl.exit.preheader.i:                ; preds = %bb.i
  %scevgep26.i = getelementptr i8, ptr %.pre, i64 8
  %i.bp = icmp eq i8 %i.ab, 102
  br i1 %i.bp, label %skip_prefix_impl.exit.1.i, label %skip_prefix_impl.exit11.i

bb.w:                                             ; preds = %bb.v
  %i.bq = call i32 @hash_algo_by_name(ptr noundef %scevgep.i) #15 ; 2 uses
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  %i.bs = load i32, ptr @git_gettext_enabled, align 4, !tbaa !18
  %.not4.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not4.i.i, label %_.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.34, i32 noundef 5) #15
  br label %_.exit.i

_.exit.i:                                         ; preds = %bb.y, %bb.x
  %.0.i.i = phi ptr [ %i.bt, %bb.y ], [ @.str.34, %bb.x ]
  %i.bu = call i32 (ptr, ...) @error(ptr noundef %.0.i.i, ptr noundef %scevgep.i) #15 ; 0 uses
  br label %.thread45

bb.z:                                             ; preds = %bb.w
  %i.bv = sext i32 %i.bq to i64
  %i.bw = getelementptr inbounds [112 x i8], ptr @hash_algos, i64 %i.bv
  store ptr %i.bw, ptr %i.k, align 8, !tbaa !25
  br label %select.unfold, !llvm.loop !76

skip_prefix_impl.exit.1.i:                        ; preds = %skip_prefix_impl.exit.preheader.i
  %i.bx = load i8, ptr %i.aa, align 1, !tbaa !26
  %i.by = icmp eq i8 %i.bx, 105
  br i1 %i.by, label %skip_prefix_impl.exit.2.i, label %skip_prefix_impl.exit11.i

skip_prefix_impl.exit.2.i:                        ; preds = %skip_prefix_impl.exit.1.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.pre, i64 3
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !26
  %i.cb = icmp eq i8 %i.ca, 108
  br i1 %i.cb, label %skip_prefix_impl.exit.3.i, label %skip_prefix_impl.exit11.i

skip_prefix_impl.exit.3.i:                        ; preds = %skip_prefix_impl.exit.2.i
  %i.cc = getelementptr inbounds nuw i8, ptr %.pre, i64 4
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !26
  %i.ce = icmp eq i8 %i.cd, 116
  br i1 %i.ce, label %skip_prefix_impl.exit.4.i, label %skip_prefix_impl.exit11.i

skip_prefix_impl.exit.4.i:                        ; preds = %skip_prefix_impl.exit.3.i
  %i.cf = getelementptr inbounds nuw i8, ptr %.pre, i64 5
  %i.cg = load i8, ptr %i.cf, align 1, !tbaa !26
  %i.ch = icmp eq i8 %i.cg, 101
  br i1 %i.ch, label %skip_prefix_impl.exit.5.i, label %skip_prefix_impl.exit11.i

skip_prefix_impl.exit.5.i:                        ; preds = %skip_prefix_impl.exit.4.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.pre, i64 6
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !26
  %i.ck = icmp eq i8 %i.cj, 114
  br i1 %i.ck, label %skip_prefix_impl.exit.6.i, label %skip_prefix_impl.exit11.i

skip_prefix_impl.exit.6.i:                        ; preds = %skip_prefix_impl.exit.5.i
  %i.cl = getelementptr inbounds nuw i8, ptr %.pre, i64 7
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !26
  %i.cn = icmp eq i8 %i.cm, 61
  br i1 %i.cn, label %skip_prefix_impl.exit.7.i, label %skip_prefix_impl.exit11.i

skip_prefix_impl.exit.7.i:                        ; preds = %skip_prefix_impl.exit.6.i
  call void @parse_list_objects_filter(ptr noundef nonnull %i.t, ptr noundef %scevgep26.i) #15
  br label %select.unfold, !llvm.loop !76

skip_prefix_impl.exit11.i:                        ; preds = %skip_prefix_impl.exit.6.i, %skip_prefix_impl.exit.5.i, %skip_prefix_impl.exit.4.i, %skip_prefix_impl.exit.3.i, %skip_prefix_impl.exit.2.i, %skip_prefix_impl.exit.1.i, %skip_prefix_impl.exit.preheader.i, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j
  %i.co = getelementptr inbounds nuw i8, ptr %.pre, i64 1
  %i.cp = load i32, ptr @git_gettext_enabled, align 4, !tbaa !18
  %.not4.i12.i = icmp eq i32 %i.cp, 0
  br i1 %.not4.i12.i, label %_.exit14.i, label %bb.aa

bb.aa:                                            ; preds = %skip_prefix_impl.exit11.i
  %i.cq = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.36, i32 noundef 5) #15
  br label %_.exit14.i

_.exit14.i:                                       ; preds = %bb.aa, %skip_prefix_impl.exit11.i
  %.0.i13.i = phi ptr [ %i.cq, %bb.aa ], [ @.str.36, %skip_prefix_impl.exit11.i ]
  %i.cr = call i32 (ptr, ...) @error(ptr noundef %.0.i13.i, ptr noundef nonnull %i.co) #15 ; 0 uses
  br label %.thread45

bb.ab:                                            ; preds = %bb.h
  %.not32.not = icmp eq i8 %.pre65, 45            ; 5 uses
  br i1 %.not32.not, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void @strbuf_remove(ptr noundef nonnull %3, i64 noundef 0, i64 noundef 1) #15
  %.pre66 = load ptr, ptr %i.c, align 8, !tbaa !17
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.cs = phi ptr [ %.pre66, %bb.ac ], [ %.pre, %bb.ab ]
  %i.ct = load ptr, ptr %i.k, align 8, !tbaa !25
  %i.cu = call i32 @parse_oid_hex_algop_impl(ptr noundef %i.cs, ptr noundef nonnull %4, ptr noundef nonnull %i.a, ptr noundef %i.ct) #15
  %.not28 = icmp eq i32 %i.cu, 0
  br i1 %.not28, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  %i.cv = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.cw = load i8, ptr %i.cv, align 1, !tbaa !26  ; 2 uses
  %.not29 = icmp eq i8 %i.cw, 0
  br i1 %.not29, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cx = zext i8 %i.cw to i64
  %i.cy = getelementptr inbounds nuw i8, ptr @sane_ctype, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !26
  %i.da = and i8 %i.cz, 1
  %.not30 = icmp eq i8 %i.da, 0
  br i1 %.not30, label %bb.ah, label %.thread44

bb.ag:                                            ; preds = %bb.ae
  br i1 %.not32.not, label %.thread44, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ad
  %.not32.not.lcssa = phi i1 [ false, %bb.ag ], [ %.not32.not, %bb.af ], [ %.not32.not, %bb.ad ]
  %.not34 = icmp eq ptr %2, null
  br i1 %.not34, label %.thread45, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.db = load i32, ptr @git_gettext_enabled, align 4, !tbaa !18
  %.not4.i39 = icmp eq i32 %i.db, 0
  br i1 %.not4.i39, label %_.exit41, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dc = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.1, i32 noundef 5) #15
  br label %_.exit41

_.exit41:                                         ; preds = %bb.ai, %bb.aj
  %.0.i40 = phi ptr [ %i.dc, %bb.aj ], [ @.str.1, %bb.ai ]
  %i.dd = select i1 %.not32.not.lcssa, ptr @.str.2, ptr @.str.3
  %i.de = load ptr, ptr %i.c, align 8, !tbaa !17
  %i.df = load i64, ptr %i.n, align 8, !tbaa !29
  %i.dg = trunc i64 %i.df to i32
  %i.dh = call i32 (ptr, ...) @error(ptr noundef %.0.i40, ptr noundef nonnull %i.dd, ptr noundef %i.de, i32 noundef %i.dg) #15 ; 0 uses
  br label %.thread45

.thread44:                                        ; preds = %bb.af, %bb.ag
  %i.di = call ptr @xmalloc(i64 noundef 36) #15   ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.di, ptr noundef nonnull readonly align 4 dereferenceable(32) %4, i64 32, i1 false)
  %i.dj = load i32, ptr %i.q, align 4, !tbaa !81
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !81
  br i1 %.not32.not, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %.thread44
  %i.dl = call ptr @string_list_append(ptr noundef nonnull %i.s, ptr noundef nonnull @.str.3) #15
  br label %select.unfold.sink.split

bb.al:                                            ; preds = %.thread44
  %i.dm = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 1
  %i.do = call ptr @string_list_append(ptr noundef nonnull %i.r, ptr noundef nonnull %i.dn) #15
  br label %select.unfold.sink.split

.thread45:                                        ; preds = %_.exit14.i, %_.exit.i, %bb.ah, %_.exit41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  br label %.critedge.thread

select.unfold.sink.split:                         ; preds = %bb.al, %bb.ak
  %.sink73 = phi ptr [ %i.dl, %bb.ak ], [ %i.do, %bb.al ]
  %5 = getelementptr inbounds nuw i8, ptr %.sink73, i64 8
  store ptr %i.di, ptr %5, align 8, !tbaa !31
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.sink.split, %bb.z, %skip_prefix_impl.exit.7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.dp = call i32 @strbuf_getwholeline_fd(ptr noundef nonnull %3, i32 noundef %0, i32 noundef 10) #15
  %i.dq = icmp eq i32 %i.dp, 0
  %i.dr = load i64, ptr %i.n, align 8
  %i.ds = icmp ne i64 %i.dr, 0
  %or.cond = select i1 %i.dq, i1 %i.ds, i1 false
  br i1 %or.cond, label %bb.g, label %.critedge54

.critedge.thread:                                 ; preds = %.thread45, %parse_bundle_signature.exit, %_.exit
  %i.dt = call i32 @close(i32 noundef %0) #15     ; 0 uses
  br label %.critedge54

.critedge54:                                      ; preds = %bb.g, %select.unfold, %bb.f, %.critedge.thread
  %.024 = phi i32 [ -1, %.critedge.thread ], [ %0, %bb.f ], [ %0, %select.unfold ], [ %0, %bb.g ]
  call void @strbuf_release(ptr noundef nonnull %3) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  ret i32 %.024
}

declare i32 @strbuf_getwholeline_fd(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare i32 @error(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc ptr @_(ptr noundef %0) unnamed_addr #4 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !26
  %.not = icmp eq i8 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !18
  %.not4 = icmp eq i32 %i.b, 0
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull %0, i32 noundef 5) #15
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.a, %bb.c
  %.0 = phi ptr [ %i.c, %bb.c ], [ @.str.3, %bb.a ], [ %0, %bb.b ]
  ret ptr %.0
}

declare void @strbuf_rtrim(ptr noundef) local_unnamed_addr #3

declare void @strbuf_remove(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @parse_oid_hex_algop_impl(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @string_list_append(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @close(i32 noundef) local_unnamed_addr #3

declare void @strbuf_release(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local noundef i32 @read_bundle_header(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 {
bb.a:
  %i.a = tail call i32 (ptr, i32, ...) @open64(ptr noundef %0, i32 noundef 0) #15 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @git_gettext_enabled, align 4, !tbaa !18
  %.not4.i = icmp eq i32 %i.c, 0
  br i1 %.not4.i, label %_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.4, i32 noundef 5) #15
  br label %_.exit

_.exit:                                           ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.d, %bb.c ], [ @.str.4, %bb.b ]
  %i.e = tail call i32 (ptr, ...) @error(ptr noundef %.0.i, ptr noundef %0) #15 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.f = tail call i32 @read_bundle_header_fd(i32 noundef %i.a, ptr noundef %1, ptr noundef %0)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_.exit
  %.0 = phi i32 [ -1, %_.exit ], [ %i.f, %bb.d ]
  ret i32 %.0
}

; Function Attrs: nofree
declare noundef i32 @open64(ptr noundef readonly captures(none), i32 noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local range(i32 0, 2) i32 @is_bundle(ptr noundef %0, i32 noundef %1) local_unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.bundle_header, align 8      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %2, ptr noundef nonnull align 8 dereferenceable(184) @__const.is_bundle.header, i64 184, i1 false)
  %i.a = tail call i32 (ptr, i32, ...) @open64(ptr noundef %0, i32 noundef 0) #15 ; 2 uses
  %i.b = icmp slt i32 %i.a, 0
  br i1 %i.b, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq i32 %1, 0
  %i.c = select i1 %.not, ptr %0, ptr null
  %i.d = call i32 @read_bundle_header_fd(i32 noundef %i.a, ptr noundef nonnull %2, ptr noundef %i.c) ; 2 uses
  %i.e = icmp sgt i32 %i.d, -1                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = call i32 @close(i32 noundef %i.d) #15    ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @string_list_clear(ptr noundef nonnull %i.g, i32 noundef 1) #15
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 48
  call void @string_list_clear(ptr noundef nonnull %i.h, i32 noundef 1) #15
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 96
  call void @list_objects_filter_release(ptr noundef nonnull %i.i) #15
  %i.j = zext i1 %i.e to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %.0 = phi i32 [ %i.j, %bb.d ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define dso_local i32 @verify_bundle(ptr noundef %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %3 = alloca %struct.string_list_iterator, align 8 ; 5 uses
  %4 = alloca %struct.check_connected_options, align 8 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 4 uses
  %i.b = load i32, ptr @git_gettext_enabled, align 4, !tbaa !18
  %.not4.i = icmp eq i32 %i.b, 0
  br i1 %.not4.i, label %_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.5, i32 noundef 5) #15
  br label %_.exit

_.exit:                                           ; preds = %bb.a, %bb.b
  %.0.i = phi ptr [ %i.c, %bb.b ], [ @.str.5, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  store ptr %i.a, ptr %3, align 8, !tbaa !34
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.d, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %4, i8 0, i64 56, i1 false)
  store i32 1, ptr %4, align 8
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !56   ; 2 uses
  %.not42 = icmp eq ptr %i.f, null
  br i1 %.not42, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !90
  %.not43 = icmp eq ptr %i.h, null
  br i1 %.not43, label %bb.i, label %.preheader

.preheader:                                       ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !58
  %.not79 = icmp eq i64 %i.j, 0
  br i1 %.not79, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.k = and i32 %2, 2
  %.not50 = icmp eq i32 %i.k, 0
  br i1 %.not50, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.h
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %bb.h ], [ 0, %.lr.ph ] ; 2 uses
  %.078.us = phi i32 [ %.1.us, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %i.l = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %indvars.iv82 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !60
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !31   ; 2 uses
  %i.q = tail call ptr @parse_object(ptr noundef nonnull %0, ptr noundef %i.p) #15
  %.not49.us = icmp eq ptr %i.q, null
  br i1 %.not49.us, label %bb.e, label %bb.h

bb.e:                                             ; preds = %.lr.ph.split.us
  %i.r = add nsw i32 %.078.us, 1
  %i.s = icmp eq i32 %.078.us, 0
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.t = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.7, ptr noundef %.0.i) #15 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.u = tail call ptr @oid_to_hex(ptr noundef %i.p) #15
  %i.v = tail call i32 (ptr, ...) @error(ptr noundef nonnull @.str.8, ptr noundef %i.u, ptr noundef %i.n) #15 ; 0 uses
end_hunk_0
