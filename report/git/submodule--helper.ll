Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/submodule--helper?download=true
inline.NumInlined: 212
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@module_deinit:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #18
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @module_summary(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree readnone captures(none) %3) #0 {
bb.a:
  %4 = alloca %struct.strbuf, align 8             ; 12 uses
  %i.a = alloca ptr, align 8                      ; 6 uses
  %5 = alloca %struct.strvec, align 8             ; 11 uses
  %6 = alloca %struct.rev_info, align 8           ; 12 uses
  %7 = alloca %struct.module_cb_list, align 8     ; 10 uses
  %8 = alloca %struct.summary_cb, align 8         ; 12 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %9 = alloca %struct.object_id, align 4          ; 10 uses
  %10 = alloca [5 x %struct.option], align 16     ; 47 uses
  %i.f = alloca [2 x ptr], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %8, i8 0, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i32 0, ptr %i.b, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #18
  store i32 0, ptr %i.c, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #18
  store i32 0, ptr %i.d, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #18
  store i32 -1, ptr %i.e, align 4, !tbaa !22
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #18
  store i32 9, ptr %10, align 16, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 0, ptr %i.g, align 4, !tbaa !18
  %i.h = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr @.str.266, ptr %i.h, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.b, ptr %i.i, align 16, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 4, ptr %i.j, align 8, !tbaa !55
  %i.k = getelementptr inbounds nuw i8, ptr %10, i64 32
  store ptr null, ptr %i.k, align 16, !tbaa !56
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 40
  store ptr @.str.306, ptr %i.l, align 8, !tbaa !57
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i32 2, ptr %i.m, align 16, !tbaa !58
  %i.n = getelementptr inbounds nuw i8, ptr %10, i64 52
  store i32 0, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %10, i64 56
  store ptr null, ptr %i.o, align 8, !tbaa !59
  %i.p = getelementptr inbounds nuw i8, ptr %10, i64 64
  store i64 1, ptr %i.p, align 16, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 72
  %i.r = getelementptr inbounds nuw i8, ptr %10, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  store i32 9, ptr %i.r, align 16, !tbaa !14
  %i.s = getelementptr inbounds nuw i8, ptr %10, i64 100
  store i32 0, ptr %i.s, align 4, !tbaa !18
  %i.t = getelementptr inbounds nuw i8, ptr %10, i64 104
  store ptr @.str.307, ptr %i.t, align 8, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %10, i64 112
  store ptr %i.d, ptr %i.u, align 16, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %10, i64 120
  store i64 4, ptr %i.v, align 8, !tbaa !55
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 128
  store ptr null, ptr %i.w, align 16, !tbaa !56
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 136
  store ptr @.str.308, ptr %i.x, align 8, !tbaa !57
  %i.y = getelementptr inbounds nuw i8, ptr %10, i64 144
  store i32 2, ptr %i.y, align 16, !tbaa !58
  %i.z = getelementptr inbounds nuw i8, ptr %10, i64 148
  store i32 0, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %10, i64 152
  store ptr null, ptr %i.aa, align 8, !tbaa !59
  %i.ab = getelementptr inbounds nuw i8, ptr %10, i64 160
  store i64 1, ptr %i.ab, align 16, !tbaa !60
  %i.ac = getelementptr inbounds nuw i8, ptr %10, i64 168
  %i.ad = getelementptr inbounds nuw i8, ptr %10, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i8 0, i64 24, i1 false)
  store i32 9, ptr %i.ad, align 16, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %10, i64 196
  store i32 0, ptr %i.ae, align 4, !tbaa !18
  %i.af = getelementptr inbounds nuw i8, ptr %10, i64 200
  store ptr @.str.309, ptr %i.af, align 8, !tbaa !19
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 208
  store ptr %i.c, ptr %i.ag, align 16, !tbaa !20
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 216
  store i64 4, ptr %i.ah, align 8, !tbaa !55
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 224
  store ptr null, ptr %i.ai, align 16, !tbaa !56
  %i.aj = getelementptr inbounds nuw i8, ptr %10, i64 232
  store ptr @.str.310, ptr %i.aj, align 8, !tbaa !57
  %i.ak = getelementptr inbounds nuw i8, ptr %10, i64 240
  store i32 2, ptr %i.ak, align 16, !tbaa !58
  %i.al = getelementptr inbounds nuw i8, ptr %10, i64 244
  store i32 0, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %10, i64 248
  store ptr null, ptr %i.am, align 8, !tbaa !59
  %i.an = getelementptr inbounds nuw i8, ptr %10, i64 256
  store i64 1, ptr %i.an, align 16, !tbaa !60
  %i.ao = getelementptr inbounds nuw i8, ptr %10, i64 264
  %i.ap = getelementptr inbounds nuw i8, ptr %10, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i8 0, i64 24, i1 false)
  store i32 11, ptr %i.ap, align 16, !tbaa !14
  %i.aq = getelementptr inbounds nuw i8, ptr %10, i64 292
  store i32 110, ptr %i.aq, align 4, !tbaa !18
  %i.ar = getelementptr inbounds nuw i8, ptr %10, i64 296
  store ptr @.str.311, ptr %i.ar, align 8, !tbaa !19
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 304
  store ptr %i.e, ptr %i.as, align 16, !tbaa !20
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 312
  store i64 4, ptr %i.at, align 8, !tbaa !55
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 320
  store ptr @.str.56, ptr %i.au, align 16, !tbaa !56
  %i.av = getelementptr inbounds nuw i8, ptr %10, i64 328
  store ptr @.str.312, ptr %i.av, align 8, !tbaa !57
  %i.aw = getelementptr inbounds nuw i8, ptr %10, i64 336
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.aw, i8 0, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.f, ptr noundef nonnull align 16 dereferenceable(16) @__const.module_summary.git_submodule_helper_usage, i64 16, i1 false)
  %i.ax = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %10, ptr noundef nonnull %i.f, i32 noundef 0) #18 ; 4 uses
  %i.ay = load i32, ptr %i.e, align 4, !tbaa !22
  %.not = icmp eq i32 %i.ay, 0
  br i1 %.not, label %bb.ao, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.az = load ptr, ptr @the_repository, align 8, !tbaa !28 ; 2 uses
  %.not23 = icmp eq i32 %i.ax, 0
  br i1 %.not23, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.ba = call i32 @repo_get_oid(ptr noundef %i.az, ptr noundef nonnull @.str.130, ptr noundef nonnull %9) #18
  %.not24 = icmp eq i32 %i.ba, 0
  br i1 %.not24, label %bb.i, label %.critedge

.thread:                                          ; preds = %bb.b
  %i.bb = load ptr, ptr %1, align 8, !tbaa !54
  %i.bc = call i32 @repo_get_oid(ptr noundef %i.az, ptr noundef %i.bb, ptr noundef nonnull %9) #18
  %.not2431 = icmp eq i32 %i.bc, 0
  br i1 %.not2431, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = add nsw i32 %i.ax, -1
  br label %bb.i

bb.e:                                             ; preds = %.thread
  %i.bf = load ptr, ptr %1, align 8, !tbaa !54
  %i.bg = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.bf, ptr noundef nonnull dereferenceable(5) @.str.130) #20
  %.not25 = icmp eq i32 %i.bg, 0
  %i.bh = load ptr, ptr @the_repository, align 8, !tbaa !28 ; 2 uses
  br i1 %.not25, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 448
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !96
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !242 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %9, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.bl, i64 32, i1 false)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 32
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !166
  %i.bo = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !166
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = add nsw i32 %i.ax, -1
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.br = call i32 @repo_get_oid(ptr noundef %i.bh, ptr noundef nonnull @.str.130, ptr noundef nonnull %9) #18
  %.not26 = icmp eq i32 %i.br, 0
  br i1 %.not26, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bs = call fastcc ptr @_(ptr noundef nonnull @.str.314)
  call void (ptr, ...) @die(ptr noundef %i.bs) #19
  unreachable

.critedge:                                        ; preds = %bb.c
  %i.bt = load ptr, ptr @the_repository, align 8, !tbaa !28
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 448
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !96
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 80
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !242 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %9, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.bx, i64 32, i1 false)
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !166
  %i.ca = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i32 %i.bz, ptr %i.ca, align 4, !tbaa !166
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %.critedge, %bb.f, %bb.g, %bb.d
  %.021 = phi ptr [ %1, %bb.g ], [ %i.bp, %bb.f ], [ %1, %bb.c ], [ %i.bd, %bb.d ], [ %1, %.critedge ] ; 2 uses
  %.020 = phi i32 [ %i.ax, %bb.g ], [ %i.bq, %bb.f ], [ 0, %bb.c ], [ %i.be, %bb.d ], [ 0, %.critedge ] ; 2 uses
  %i.cb = load i32, ptr %i.d, align 4, !tbaa !22
  %.not27.not = icmp eq i32 %i.cb, 0              ; 3 uses
  %.pre = load i32, ptr %i.b, align 4, !tbaa !22  ; 3 uses
  br i1 %.not27.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %.not28 = icmp eq i32 %.pre, 0
  br i1 %.not28, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cc = call fastcc ptr @_(ptr noundef nonnull @.str.315)
  call void (ptr, ...) @die(ptr noundef %i.cc, ptr noundef nonnull @.str.273, ptr noundef nonnull @.str.316) #19
  unreachable

bb.l:                                             ; preds = %bb.j, %bb.i
  %.str.320..str.270.i.i = phi ptr [ @.str.320, %bb.i ], [ @.str.270, %bb.j ]
  %i.cd = phi i8 [ 0, %bb.i ], [ 4, %bb.j ]
  %. = phi ptr [ %9, %bb.i ], [ null, %bb.j ]     ; 2 uses
  store i32 %.020, ptr %8, align 8, !tbaa !244
  %i.ce = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.021, ptr %i.ce, align 8, !tbaa !246
  %i.cf = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %2, ptr %i.cf, align 8, !tbaa !247
  %i.cg = icmp ne i32 %.pre, 0                    ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  %i.ci = zext i1 %i.cg to i8
  %i.cj = load i8, ptr %i.ch, align 8
  %i.ck = and i8 %i.cj, -8
  %i.cl = or disjoint i8 %i.ck, %i.cd
  %i.cm = or disjoint i8 %i.cl, %i.ci
  %i.cn = load i32, ptr %i.c, align 4, !tbaa !22
  %.fr = freeze i32 %i.cn
  %.not30 = icmp eq i32 %.fr, 0                   ; 2 uses
  %i.co = select i1 %.not30, i8 0, i8 2
  %i.cp = or disjoint i8 %i.cm, %i.co
  store i8 %i.cp, ptr %i.ch, align 8
  %i.cq = load i32, ptr %i.e, align 4, !tbaa !22
  %i.cr = getelementptr inbounds nuw i8, ptr %8, i64 36
  store i32 %i.cq, ptr %i.cr, align 4, !tbaa !248
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.compute_summary_module_list.diff_args, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, i8 0, i64 16, i1 false)
  %i.cs = call ptr @strvec_push(ptr noundef nonnull %5, ptr noundef nonnull %.str.320..str.270.i.i) #18 ; 0 uses
  %.not.i = icmp eq i32 %.pre, 0                  ; 2 uses
  br i1 %.not.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ct = call ptr @strvec_push(ptr noundef nonnull %5, ptr noundef nonnull @.str.273) #18 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %5, ptr noundef nonnull @.str.271, ptr noundef nonnull @.str.317, ptr noundef null) #18
  %.not13.i = icmp eq ptr %., null
  br i1 %.not13.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cu = call ptr @oid_to_hex(ptr noundef nonnull %.) #18
  %i.cv = call ptr @strvec_push(ptr noundef nonnull %5, ptr noundef %i.cu) #18 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cw = call ptr @strvec_push(ptr noundef nonnull %5, ptr noundef nonnull @.str.84) #18 ; 0 uses
  %.not14.i = icmp eq i32 %.020, 0
  br i1 %.not14.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @strvec_pushv(ptr noundef nonnull %5, ptr noundef %.021) #18
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cx = load ptr, ptr @the_repository, align 8, !tbaa !28
  call void @repo_config(ptr noundef %i.cx, ptr noundef nonnull @git_diff_basic_config, ptr noundef null) #18
  %i.cy = load ptr, ptr @the_repository, align 8, !tbaa !28
  call void @repo_init_revisions(ptr noundef %i.cy, ptr noundef nonnull %6, ptr noundef %2) #18
  %i.cz = getelementptr inbounds nuw i8, ptr %6, i64 376
  store i32 0, ptr %i.cz, align 8, !tbaa !229
  call void @setup_revisions_from_strvec(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef null) #18
  %i.da = getelementptr inbounds nuw i8, ptr %6, i64 1800
  store i32 6144, ptr %i.da, align 8, !tbaa !249
  %i.db = getelementptr inbounds nuw i8, ptr %6, i64 2040
  store ptr @submodule_summary_callback, ptr %i.db, align 8, !tbaa !250
  %i.dc = getelementptr inbounds nuw i8, ptr %6, i64 2048
  store ptr %7, ptr %i.dc, align 8, !tbaa !251
  br i1 %.not.i, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  br i1 %.not27.not, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dd = load ptr, ptr @the_repository, align 8, !tbaa !28
  call void @setup_work_tree(ptr noundef %i.dd) #18
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.de = load ptr, ptr @the_repository, align 8, !tbaa !28
  %i.df = getelementptr inbounds nuw i8, ptr %6, i64 1984
  %i.dg = call i32 @repo_read_index_preload(ptr noundef %i.de, ptr noundef nonnull %i.df, i32 noundef 0) #18
  %i.dh = icmp slt i32 %i.dg, 0
  br i1 %i.dh, label %prepare_submodule_summary.exit.sink.split.i, label %bb.w

bb.v:                                             ; preds = %bb.r
  %i.di = load ptr, ptr @the_repository, align 8, !tbaa !28
  %i.dj = call i32 @repo_read_index(ptr noundef %i.di) #18
  %i.dk = icmp slt i32 %i.dj, 0
  br i1 %i.dk, label %prepare_submodule_summary.exit.sink.split.i, label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  br i1 %.not27.not, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dl = zext i1 %i.cg to i32
  call void @run_diff_index(ptr noundef nonnull %6, i32 noundef %i.dl) #18
  br label %bb.z

bb.y:                                             ; preds = %bb.w
  call void @run_diff_files(ptr noundef nonnull %6, i32 noundef 0) #18
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dm = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 3 uses
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !252
  %i.do = icmp sgt i32 %i.dn, 0
  br i1 %i.do, label %.lr.ph.i.i.preheader, label %prepare_submodule_summary.exit.i

.lr.ph.i.i.preheader:                             ; preds = %bb.z
  br i1 %.not30, label %.lr.ph.i.i.us, label %.lr.ph.i.i

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.preheader, %bb.ae
  %indvars.iv.i.i.us = phi i64 [ %indvars.iv.next.i.i.us, %bb.ae ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.dp = load ptr, ptr %7, align 8, !tbaa !255
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.dp, i64 %indvars.iv.i.i.us
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !256 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.verify_submodule_committish.result, i64 24, i1 false)
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 80
  %i.dt = load i8, ptr %i.ds, align 8, !tbaa !258
  switch i8 %i.dt, label %bb.ab [
    i8 68, label %bb.aa
    i8 84, label %bb.aa
  ]

bb.aa:                                            ; preds = %.lr.ph.i.i.us, %.lr.ph.i.i.us
  call fastcc void @generate_submodule_summary(ptr noundef nonnull readonly %8, ptr noundef nonnull %i.dr)
  br label %bb.ae

bb.ab:                                            ; preds = %.lr.ph.i.i.us
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 88
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !260 ; 2 uses
  %i.dw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.dv) #20
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull %i.dv, i64 noundef %i.dw) #18
  %i.dx = call i32 @is_nonbare_repository_dir(ptr noundef nonnull %4) #18
  %.not32.i.i.us = icmp eq i32 %i.dx, 0
  br i1 %.not32.i.i.us, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call fastcc void @generate_submodule_summary(ptr noundef nonnull readonly %8, ptr noundef nonnull %i.dr)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @strbuf_release(ptr noundef nonnull %4) #18
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %indvars.iv.next.i.i.us = add nuw nsw i64 %indvars.iv.i.i.us, 1 ; 2 uses
  %i.dy = load i32, ptr %i.dm, align 4, !tbaa !252
  %i.dz = sext i32 %i.dy to i64
  %i.ea = icmp slt i64 %indvars.iv.next.i.i.us, %i.dz
  br i1 %i.ea, label %.lr.ph.i.i.us, label %prepare_submodule_summary.exit.i, !llvm.loop !261

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.an
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %bb.an ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.eb = load ptr, ptr %7, align 8, !tbaa !255
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %indvars.iv.i.i
  %i.ed = load ptr, ptr %i.ec, align 8, !tbaa !256 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.verify_submodule_committish.result, i64 24, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 80
  %i.ef = load i8, ptr %i.ee, align 8, !tbaa !258
  switch i8 %i.ef, label %bb.ag [
    i8 68, label %bb.af
    i8 84, label %bb.af
    i8 65, label %bb.ak
  ]

bb.af:                                            ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  call fastcc void @generate_submodule_summary(ptr noundef nonnull readonly %8, ptr noundef nonnull %i.ed)
  br label %bb.an

bb.ag:                                            ; preds = %.lr.ph.i.i
  %i.eg = load ptr, ptr @the_repository, align 8, !tbaa !28 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 448
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !96
  %i.ej = call ptr @null_oid(ptr noundef %i.ei) #18
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ed, i64 88
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !260
  %i.em = call ptr @submodule_from_path(ptr noundef %i.eg, ptr noundef %i.ej, ptr noundef %i.el) #18 ; 3 uses
  %.not27.i.i = icmp eq ptr %i.em, null
  br i1 %.not27.i.i, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 8
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !161
  %i.ep = call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.322, ptr noundef %i.eo) #18 ; 4 uses
  %i.eq = load ptr, ptr @the_repository, align 8, !tbaa !28
  %i.er = call i32 @repo_config_get_string_tmp(ptr noundef %i.eq, ptr noundef %i.ep, ptr noundef nonnull %i.a) #18
  %.not28.i.i = icmp eq i32 %i.er, 0
  br i1 %.not28.i.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.es = getelementptr inbounds nuw i8, ptr %i.em, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !262 ; 2 uses
  %.not30.i.i = icmp eq ptr %i.et, null
  br i1 %.not30.i.i, label %.critedge.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %bb.ai
  %i.eu = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.et, ptr noundef nonnull dereferenceable(4) @.str.290) #20
  %.not31.i.i = icmp eq i32 %i.eu, 0
  call void @free(ptr noundef %i.ep) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %.not31.i.i, label %bb.an, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %i.ev = load ptr, ptr %i.a, align 8, !tbaa !54
  %i.ew = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ev, ptr noundef nonnull dereferenceable(4) @.str.290) #20
  %.not29.i.i = icmp eq i32 %i.ew, 0
  call void @free(ptr noundef %i.ep) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br i1 %.not29.i.i, label %bb.an, label %bb.ak

.critedge.i.i:                                    ; preds = %bb.ai
  call void @free(ptr noundef %i.ep) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  br label %bb.ak

bb.ak:                                            ; preds = %.lr.ph.i.i, %.critedge.i.i, %bb.aj, %.split.i.i, %bb.ag
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ed, i64 88
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !260 ; 2 uses
  %i.ez = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ey) #20
  call void @strbuf_add(ptr noundef nonnull %4, ptr noundef nonnull %i.ey, i64 noundef %i.ez) #18
  %i.fa = call i32 @is_nonbare_repository_dir(ptr noundef nonnull %4) #18
  %.not32.i.i = icmp eq i32 %i.fa, 0
  br i1 %.not32.i.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call fastcc void @generate_submodule_summary(ptr noundef nonnull readonly %8, ptr noundef nonnull %i.ed)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  call void @strbuf_release(ptr noundef nonnull %4) #18
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.aj, %.split.i.i, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #18
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.fb = load i32, ptr %i.dm, align 4, !tbaa !252
  %i.fc = sext i32 %i.fb to i64
  %i.fd = icmp slt i64 %indvars.iv.next.i.i, %i.fc
  br i1 %i.fd, label %.lr.ph.i.i, label %prepare_submodule_summary.exit.i, !llvm.loop !261

prepare_submodule_summary.exit.sink.split.i:      ; preds = %bb.v, %bb.u
  %.str.319.sink.i = phi ptr [ @.str.318, %bb.u ], [ @.str.319, %bb.v ]
  call void @perror(ptr noundef nonnull %.str.319.sink.i) #21
  br label %prepare_submodule_summary.exit.i

prepare_submodule_summary.exit.i:                 ; preds = %bb.an, %bb.ae, %prepare_submodule_summary.exit.sink.split.i, %bb.z
  %.0.i = phi i32 [ 0, %bb.z ], [ -1, %prepare_submodule_summary.exit.sink.split.i ], [ 0, %bb.ae ], [ 0, %bb.an ]
  call void @strvec_clear(ptr noundef nonnull %5) #18
  call void @release_revisions(ptr noundef nonnull %6) #18
  %i.fe = getelementptr inbounds nuw i8, ptr %7, i64 12 ; 2 uses
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !252
  %i.fg = icmp sgt i32 %i.ff, 0
  br i1 %i.fg, label %.lr.ph.i17.i, label %compute_summary_module_list.exit

.lr.ph.i17.i:                                     ; preds = %prepare_submodule_summary.exit.i, %.lr.ph.i17.i
  %indvars.iv.i18.i = phi i64 [ %indvars.iv.next.i19.i, %.lr.ph.i17.i ], [ 0, %prepare_submodule_summary.exit.i ] ; 2 uses
  %i.fh = load ptr, ptr %7, align 8, !tbaa !255
  %i.fi = getelementptr inbounds nuw [8 x i8], ptr %i.fh, i64 %indvars.iv.i18.i
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !256 ; 2 uses
  %i.fk = getelementptr i8, ptr %i.fj, i64 88
  %.val.i.i = load ptr, ptr %i.fk, align 8, !tbaa !260
  call void @free(ptr noundef %.val.i.i) #18
  call void @free(ptr noundef %i.fj) #18
end_hunk_0
