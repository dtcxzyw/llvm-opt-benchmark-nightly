Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/git/original/scalar?download=true
inline.NumInlined: 97
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@strbuf_addf
; Function Attrs: noreturn
declare void @usage(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind
declare ptr @dcgettext(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define internal i32 @cmd_clone(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %2 = alloca %struct.child_process, align 8      ; 10 uses
  %3 = alloca %struct.strbuf, align 8             ; 14 uses
  %i.a = alloca ptr, align 8                      ; 12 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %i.c = alloca i32, align 4                      ; 5 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca i32, align 4                      ; 6 uses
  %i.f = alloca i32, align 4                      ; 5 uses
  %4 = alloca [7 x %struct.option], align 16      ; 72 uses
  %i.g = alloca [2 x ptr], align 16               ; 5 uses
  %5 = alloca %struct.strbuf, align 8             ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store ptr null, ptr %i.a, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store i32 0, ptr %i.b, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  store i32 0, ptr %i.c, align 4, !tbaa !20
  %i.h = tail call i32 @isatty(i32 noundef 2) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  store i32 1, ptr %i.d, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  store i32 1, ptr %i.e, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  store i32 1, ptr %i.f, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  store i32 10, ptr %4, align 16, !tbaa !22
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 4
  store i32 98, ptr %i.i, align 4, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @.str.19, ptr %i.j, align 8, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.a, ptr %i.k, align 16, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.l, align 8, !tbaa !26
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr @.str.20, ptr %i.m, align 16, !tbaa !27
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @.str.21, ptr %i.n, align 8, !tbaa !28
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.o, i8 0, i64 48, i1 false)
  store i32 9, ptr %i.p, align 16, !tbaa !22
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 100
  store i32 0, ptr %i.q, align 4, !tbaa !23
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 104
  store ptr @.str.22, ptr %i.r, align 8, !tbaa !24
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 112
  store ptr %i.b, ptr %i.s, align 16, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 120
  store i64 4, ptr %i.t, align 8, !tbaa !26
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 128
  store ptr null, ptr %i.u, align 16, !tbaa !27
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 136
  store ptr @.str.23, ptr %i.v, align 8, !tbaa !28
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 144
  store i32 2, ptr %i.w, align 16, !tbaa !29
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 148
  store i32 0, ptr %i.x, align 4
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 152
  store ptr null, ptr %i.y, align 8, !tbaa !30
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 160
  store i64 1, ptr %i.z, align 16, !tbaa !31
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 168
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  store i32 9, ptr %i.ab, align 16, !tbaa !22
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 196
  store i32 0, ptr %i.ac, align 4, !tbaa !23
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 200
  store ptr @.str.24, ptr %i.ad, align 8, !tbaa !24
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 208
  store ptr %i.c, ptr %i.ae, align 16, !tbaa !25
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 216
  store i64 4, ptr %i.af, align 8, !tbaa !26
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 224
  store ptr null, ptr %i.ag, align 16, !tbaa !27
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 232
  store ptr @.str.25, ptr %i.ah, align 8, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 240
  store i32 2, ptr %i.ai, align 16, !tbaa !29
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 244
  store i32 0, ptr %i.aj, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 248
  store ptr null, ptr %i.ak, align 8, !tbaa !30
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 256
  store i64 1, ptr %i.al, align 16, !tbaa !31
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 264
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, i8 0, i64 24, i1 false)
  store i32 9, ptr %i.an, align 16, !tbaa !22
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 292
  store i32 0, ptr %i.ao, align 4, !tbaa !23
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 296
  store ptr @.str.26, ptr %i.ap, align 8, !tbaa !24
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 304
  store ptr %i.d, ptr %i.aq, align 16, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 312
  store i64 4, ptr %i.ar, align 8, !tbaa !26
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 320
  store ptr null, ptr %i.as, align 16, !tbaa !27
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 328
  store ptr @.str.27, ptr %i.at, align 8, !tbaa !28
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 336
  store i32 2, ptr %i.au, align 16, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 340
  store i32 0, ptr %i.av, align 4
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 344
  store ptr null, ptr %i.aw, align 8, !tbaa !30
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 352
  store i64 1, ptr %i.ax, align 16, !tbaa !31
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 360
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 384
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ay, i8 0, i64 24, i1 false)
  store i32 9, ptr %i.az, align 16, !tbaa !22
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 388
  store i32 0, ptr %i.ba, align 4, !tbaa !23
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 392
  store ptr @.str.28, ptr %i.bb, align 8, !tbaa !24
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 400
  store ptr %i.e, ptr %i.bc, align 16, !tbaa !25
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 408
  store i64 4, ptr %i.bd, align 8, !tbaa !26
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 416
  store ptr null, ptr %i.be, align 16, !tbaa !27
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 424
  store ptr @.str.29, ptr %i.bf, align 8, !tbaa !28
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 432
  store i32 2, ptr %i.bg, align 16, !tbaa !29
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 436
  store i32 0, ptr %i.bh, align 4
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 440
  store ptr null, ptr %i.bi, align 8, !tbaa !30
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 448
  store i64 1, ptr %i.bj, align 16, !tbaa !31
  %i.bk = getelementptr inbounds nuw i8, ptr %4, i64 456
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 480
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false)
  store i32 9, ptr %i.bl, align 16, !tbaa !22
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 484
  store i32 0, ptr %i.bm, align 4, !tbaa !23
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 488
  store ptr @.str.30, ptr %i.bn, align 8, !tbaa !24
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 496
  store ptr %i.f, ptr %i.bo, align 16, !tbaa !25
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 504
  store i64 4, ptr %i.bp, align 8, !tbaa !26
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 512
  store ptr null, ptr %i.bq, align 16, !tbaa !27
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 520
  store ptr @.str.31, ptr %i.br, align 8, !tbaa !28
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 528
  store i32 2, ptr %i.bs, align 16, !tbaa !29
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 532
  store i32 0, ptr %i.bt, align 4
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 536
  store ptr null, ptr %i.bu, align 8, !tbaa !30
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 544
  store i64 1, ptr %i.bv, align 16, !tbaa !31
  %i.bw = getelementptr inbounds nuw i8, ptr %4, i64 552
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.bw, i8 0, i64 120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.g, ptr noundef nonnull align 16 dereferenceable(16) @__const.cmd_clone.clone_usage, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) @__const.cmd_diagnose.diagnostics_root, i64 24, i1 false)
  %i.bx = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %4, ptr noundef nonnull %i.g, i32 noundef 0) #17
  switch i32 %i.bx, label %bb.s [
    i32 2, label %bb.b
    i32 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.by = load ptr, ptr %1, align 8, !tbaa !14
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !14
  br label %bb.t

bb.c:                                             ; preds = %bb.a
  %i.cb = load ptr, ptr %1, align 8, !tbaa !14    ; 4 uses
  %i.cc = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cb) #18
  call void @strbuf_add(ptr noundef nonnull %5, ptr noundef nonnull %i.cb, i64 noundef %i.cc) #17
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !32 ; 2 uses
  %.not114 = icmp eq i64 %i.ce, 0
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %.pre123 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19 ; 2 uses
  br i1 %.not114, label %strbuf_strip_suffix.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %strbuf_setlen.exit
  %i.cf = phi ptr [ %i.cq, %strbuf_setlen.exit ], [ %.pre123, %bb.c ] ; 9 uses
  %i.cg = phi i64 [ %i.cp, %strbuf_setlen.exit ], [ %i.ce, %bb.c ] ; 4 uses
  %i.ch = getelementptr i8, ptr %i.cf, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 -1
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !15
  %.not105 = icmp eq i8 %i.cj, 47
  br i1 %.not105, label %bb.d, label %.critedge

bb.d:                                             ; preds = %.lr.ph
  %i.ck = add i64 %i.cg, -1                       ; 4 uses
  %i.cl = load i64, ptr %5, align 8, !tbaa !33
  %spec.select.i = call i64 @llvm.usub.sat.i64(i64 %i.cl, i64 1)
  %i.cm = icmp ugt i64 %i.ck, %spec.select.i
  br i1 %i.cm, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.71, i32 noundef 167, ptr noundef nonnull @.str.72) #16
  unreachable

bb.f:                                             ; preds = %bb.d
  store i64 %i.ck, ptr %i.cd, align 8, !tbaa !32
  %.not9.i = icmp eq ptr %i.cf, @strbuf_slopbuf
  br i1 %.not9.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ck
  store i8 0, ptr %i.cn, align 1, !tbaa !15
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !19
  %.pre122 = load i64, ptr %i.cd, align 8, !tbaa !32
  br label %strbuf_setlen.exit

bb.h:                                             ; preds = %bb.f
  %i.co = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !15
  %.not10.i = icmp eq i8 %i.co, 0
  br i1 %.not10.i, label %strbuf_setlen.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @__assert_fail(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.71, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #16
  unreachable

strbuf_setlen.exit:                               ; preds = %bb.g, %bb.h
  %i.cp = phi i64 [ %.pre122, %bb.g ], [ %i.ck, %bb.h ] ; 2 uses
  %i.cq = phi ptr [ %.pre, %bb.g ], [ %i.cf, %bb.h ] ; 2 uses
  %.not = icmp eq i64 %i.cp, 0
  br i1 %.not, label %strbuf_strip_suffix.exit, label %.lr.ph, !llvm.loop !67

.critedge:                                        ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.cs = icmp ult i64 %i.cg, 4
  br i1 %i.cs, label %strbuf_strip_suffix.exit, label %bb.j

bb.j:                                             ; preds = %.critedge
  %i.ct = add i64 %i.cg, -4                       ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ct ; 2 uses
  %i.cv = load i32, ptr %i.cu, align 1
  %i.cw = icmp ne i32 %i.cv, 1953064750
  %i.cx = zext i1 %i.cw to i32
  %.not.i.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i.i, label %bb.k, label %strbuf_strip_suffix.exit

bb.k:                                             ; preds = %bb.j
  store i64 %i.ct, ptr %i.cd, align 8, !tbaa !34
  %i.cy = load i64, ptr %5, align 8, !tbaa !33
  %spec.select.i.i = call i64 @llvm.usub.sat.i64(i64 %i.cy, i64 1)
  %i.cz = icmp ugt i64 %i.ct, %spec.select.i.i
  br i1 %i.cz, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.71, i32 noundef 167, ptr noundef nonnull @.str.72) #16
  unreachable

bb.m:                                             ; preds = %bb.k
  %.not9.i.i = icmp eq ptr %i.cf, @strbuf_slopbuf
  br i1 %.not9.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.cu, align 1, !tbaa !15
  %.pre124 = load ptr, ptr %i.cr, align 8, !tbaa !19
  br label %strbuf_strip_suffix.exit

bb.o:                                             ; preds = %bb.m
  %i.da = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !15
  %.not10.i.i = icmp eq i8 %i.da, 0
  br i1 %.not10.i.i, label %strbuf_strip_suffix.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @__assert_fail(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.71, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #16
  unreachable

strbuf_strip_suffix.exit:                         ; preds = %strbuf_setlen.exit, %bb.c, %.critedge, %bb.j, %bb.n, %bb.o
  %i.db = phi ptr [ %i.cf, %.critedge ], [ %i.cf, %bb.j ], [ %.pre124, %bb.n ], [ %i.cf, %bb.o ], [ %.pre123, %bb.c ], [ %i.cq, %strbuf_setlen.exit ]
  %i.dc = call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %i.db, i32 noundef 47) #18 ; 2 uses
  %.not51 = icmp eq ptr %i.dc, null
  br i1 %.not51, label %bb.q, label %bb.r

bb.q:                                             ; preds = %strbuf_strip_suffix.exit
  %i.dd = call fastcc ptr @_(ptr noundef nonnull @.str.34)
  call void (ptr, ...) @die(ptr noundef %i.dd, ptr noundef nonnull %i.cb) #16
  unreachable

bb.r:                                             ; preds = %strbuf_strip_suffix.exit
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 1
  br label %bb.t

bb.s:                                             ; preds = %bb.a
  %i.df = call fastcc ptr @_(ptr noundef nonnull @.str.35)
  call void @usage_msg_opt(ptr noundef %i.df, ptr noundef nonnull %i.g, ptr noundef nonnull %4) #16
  unreachable

bb.t:                                             ; preds = %bb.r, %bb.b
  %.sink = phi ptr [ %i.de, %bb.r ], [ %i.ca, %bb.b ]
  %.036 = phi ptr [ %i.cb, %bb.r ], [ %i.by, %bb.b ] ; 3 uses
  %i.dg = call ptr @xstrdup(ptr noundef %.sink) #17 ; 5 uses
  %i.dh = call i32 @is_directory(ptr noundef %i.dg) #17
  %.not52 = icmp eq i32 %i.dh, 0
  br i1 %.not52, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.di = call fastcc ptr @_(ptr noundef nonnull @.str.36)
  call void (ptr, ...) @die(ptr noundef %i.di, ptr noundef %i.dg) #16
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.dj = load i32, ptr %i.d, align 4, !tbaa !20
  %.not53 = icmp eq i32 %i.dj, 0
  br i1 %.not53, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dk = call ptr (ptr, ...) @xstrfmt(ptr noundef nonnull @.str.37, ptr noundef %i.dg) #17
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.dl = call ptr @xstrdup(ptr noundef %i.dg) #17
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %.034 = phi ptr [ %i.dk, %bb.w ], [ %i.dl, %bb.x ] ; 7 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.dm, align 8, !tbaa !32
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !19 ; 2 uses
  %.not9.i78 = icmp eq ptr %i.do, @strbuf_slopbuf
  br i1 %.not9.i78, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  store i8 0, ptr %i.do, align 1, !tbaa !15
  br label %strbuf_setlen.exit80

bb.aa:                                            ; preds = %bb.y
  %i.dp = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !15
  %.not10.i79 = icmp eq i8 %i.dp, 0
  br i1 %.not10.i79, label %strbuf_setlen.exit80, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @__assert_fail(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.71, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #16
  unreachable

strbuf_setlen.exit80:                             ; preds = %bb.z, %bb.aa
  %i.dq = load ptr, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %.not54 = icmp eq ptr %i.dq, null
  br i1 %.not54, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %strbuf_setlen.exit80
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %5, ptr noundef nonnull @.str.38, ptr noundef nonnull %i.dq) #17
  br label %bb.ae

bb.ad:                                            ; preds = %strbuf_setlen.exit80
  %i.dr = load ptr, ptr @the_repository, align 8, !tbaa !36
  %i.ds = call ptr @repo_default_branch_name(ptr noundef %i.dr, i32 noundef 1) #17 ; 2 uses
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %5, ptr noundef nonnull @.str.38, ptr noundef %i.ds) #17
  call void @free(ptr noundef %i.ds) #17
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %i.dt = load ptr, ptr %i.dn, align 8, !tbaa !19
  %i.du = call i32 (ptr, ...) @run_git(ptr noundef nonnull @.str.4, ptr noundef %i.dt, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, ptr noundef %.034, ptr noundef null) ; 2 uses
  %.not55 = icmp eq i32 %i.du, 0
  br i1 %.not55, label %bb.af, label %bb.cl

bb.af:                                            ; preds = %bb.ae
  %i.dv = call i32 @chdir(ptr noundef %.034) #17
  %i.dw = icmp slt i32 %i.dv, 0
  br i1 %i.dw, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.dx = load i32, ptr @git_gettext_enabled, align 4, !tbaa !20
  %.not4.i = icmp eq i32 %i.dx, 0
  br i1 %.not4.i, label %_.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dy = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.41, i32 noundef 5) #17
  br label %_.exit

_.exit:                                           ; preds = %bb.ag, %bb.ah
  %.0.i81 = phi ptr [ %i.dy, %bb.ah ], [ @.str.41, %bb.ag ]
  %i.dz = call i32 (ptr, ...) @error_errno(ptr noundef %.0.i81, ptr noundef %.034) #17 ; 0 uses
  br label %bb.cl

bb.ai:                                            ; preds = %bb.af
  %i.ea = load ptr, ptr @the_repository, align 8, !tbaa !36
  %i.eb = call ptr @setup_git_directory(ptr noundef %i.ea) #17 ; 0 uses
  %i.ec = load ptr, ptr @the_repository, align 8, !tbaa !36
  call void @trace2_def_repo_fl(ptr noundef nonnull @.str.42, i32 noundef 520, ptr noundef %i.ec) #17
  %i.ed = load ptr, ptr %i.a, align 8, !tbaa !14
  %.not56 = icmp eq ptr %i.ed, null
  br i1 %.not56, label %bb.aj, label %bb.bl

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %2, ptr noundef nonnull align 8 dereferenceable(136) @__const.remote_default_branch.cp, i64 136, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.cmd_diagnose.diagnostics_root, i64 24, i1 false)
  %i.ee = getelementptr inbounds nuw i8, ptr %2, i64 104 ; 3 uses
  store i8 8, ptr %i.ee, align 8
  call void (ptr, ...) @strvec_pushl(ptr noundef nonnull %2, ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.75, ptr noundef %.036, ptr noundef nonnull @.str.76, ptr noundef null) #17
  %i.ef = call i32 @pipe_command(ptr noundef nonnull %2, ptr noundef null, i64 noundef 0, ptr noundef nonnull %3, i64 noundef 0, ptr noundef null, i64 noundef 0) #17
  %.not.i = icmp eq i32 %i.ef, 0
  br i1 %.not.i, label %bb.ak, label %.thread47.i

bb.ak:                                            ; preds = %bb.aj
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !19 ; 2 uses
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !15  ; 2 uses
  %.not2052.i = icmp eq i8 %i.ei, 0
  br i1 %.not2052.i, label %.thread47.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ak, %strip_suffix_mem.exit.thread.i
  %i.ej = phi i8 [ %i.hd, %strip_suffix_mem.exit.thread.i ], [ %i.ei, %bb.ak ]
  %.01653.i = phi ptr [ %i.hc, %strip_suffix_mem.exit.thread.i ], [ %i.eh, %bb.ak ] ; 19 uses
  %i.ek = call ptr @strchrnul(ptr noundef nonnull %.01653.i, i32 noundef 10) #18 ; 3 uses
  %i.el = ptrtoint ptr %i.ek to i64
  %i.em = ptrtoint ptr %.01653.i to i64
  %i.en = sub i64 %i.el, %i.em                    ; 4 uses
  %i.eo = icmp eq i8 %i.ej, 114
  br i1 %i.eo, label %bb.al, label %strip_suffix_mem.exit.thread.i

bb.al:                                            ; preds = %.lr.ph.i
  %i.ep = getelementptr inbounds nuw i8, ptr %.01653.i, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !15
  %i.er = icmp eq i8 %i.eq, 101
  br i1 %i.er, label %bb.am, label %strip_suffix_mem.exit.thread.i

bb.am:                                            ; preds = %bb.al
  %i.es = getelementptr inbounds nuw i8, ptr %.01653.i, i64 2
  %i.et = load i8, ptr %i.es, align 1, !tbaa !15
  %i.eu = icmp eq i8 %i.et, 102
  br i1 %i.eu, label %bb.an, label %strip_suffix_mem.exit.thread.i

bb.an:                                            ; preds = %bb.am
  %i.ev = getelementptr inbounds nuw i8, ptr %.01653.i, i64 3
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !15
  %i.ex = icmp eq i8 %i.ew, 58
  br i1 %i.ex, label %bb.ao, label %strip_suffix_mem.exit.thread.i

bb.ao:                                            ; preds = %bb.an
  %i.ey = getelementptr inbounds nuw i8, ptr %.01653.i, i64 4
  %i.ez = load i8, ptr %i.ey, align 1, !tbaa !15
  %i.fa = icmp ne i8 %i.ez, 32
  %i.fb = icmp ult i64 %i.en, 5
  %or.cond.i = select i1 %i.fa, i1 true, i1 %i.fb
  br i1 %or.cond.i, label %strip_suffix_mem.exit.thread.i, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.fc = getelementptr i8, ptr %.01653.i, i64 %i.en
  %i.fd = getelementptr i8, ptr %i.fc, i64 -5     ; 2 uses
  %i.fe = load i32, ptr %i.fd, align 1
  %i.ff = xor i32 %i.fe, 1095059465
  %i.fg = getelementptr i8, ptr %i.fd, i64 4
  %i.fh = load i8, ptr %i.fg, align 1
  %i.fi = zext i8 %i.fh to i32
  %i.fj = xor i32 %i.fi, 68
  %i.fk = or i32 %i.ff, %i.fj
  %i.fl = icmp ne i32 %i.fk, 0
  %i.fm = zext i1 %i.fl to i32
  %.not.i22.i = icmp eq i32 %i.fm, 0
  br i1 %.not.i22.i, label %strip_suffix_mem.exit.i, label %strip_suffix_mem.exit.thread.i

strip_suffix_mem.exit.i:                          ; preds = %bb.ap
  %scevgep.le.i = getelementptr i8, ptr %.01653.i, i64 5 ; 2 uses
  %scevgep59.i = getelementptr i8, ptr %.01653.i, i64 16
  %i.fn = load i8, ptr %scevgep.le.i, align 1, !tbaa !15
  %i.fo = icmp eq i8 %i.fn, 114
  br i1 %i.fo, label %bb.aq, label %skip_prefix_impl.exit26.i

bb.aq:                                            ; preds = %strip_suffix_mem.exit.i
  %i.fp = getelementptr i8, ptr %.01653.i, i64 6
  %i.fq = load i8, ptr %i.fp, align 1, !tbaa !15
  %i.fr = icmp eq i8 %i.fq, 101
  br i1 %i.fr, label %bb.ar, label %skip_prefix_impl.exit26.i

bb.ar:                                            ; preds = %bb.aq
end_hunk_0
begin_hunk_1_@cmd_clone:bb.a
  br label %bb.cm

bb.ca:                                            ; preds = %bb.bx
  %.not68 = icmp eq i32 %i.h, 0
  %i.ip = select i1 %.not68, ptr @.str.58, ptr @.str.57 ; 2 uses
  %i.iq = load i32, ptr %i.e, align 4, !tbaa !20
  %.not69 = icmp eq i32 %i.iq, 0
  %i.ir = select i1 %.not69, ptr @.str.60, ptr null
  %i.is = call i32 (ptr, ...) @run_git(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef nonnull %i.ip, ptr noundef nonnull @.str.59, ptr noundef %i.ir, ptr noundef null)
  %.not70 = icmp eq i32 %i.is, 0
  br i1 %.not70, label %bb.ch, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.it = load i32, ptr @git_gettext_enabled, align 4, !tbaa !20
  %.not4.i97 = icmp eq i32 %i.it, 0
  br i1 %.not4.i97, label %_.exit99, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.iu = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.61, i32 noundef 5) #17
  br label %_.exit99

_.exit99:                                         ; preds = %bb.cb, %bb.cc
  %.0.i98 = phi ptr [ %i.iu, %bb.cc ], [ @.str.61, %bb.cb ]
  call void (ptr, ...) @warning(ptr noundef %.0.i98) #17
  %i.iv = call i32 (ptr, ...) @set_config(ptr noundef nonnull @.str.62)
  %.not71 = icmp eq i32 %i.iv, 0
  br i1 %.not71, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %_.exit99
  %i.iw = call i32 (ptr, ...) @set_config(ptr noundef nonnull @.str.63)
  %.not72 = icmp eq i32 %i.iw, 0
  br i1 %.not72, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %_.exit99
  %i.ix = load i32, ptr @git_gettext_enabled, align 4, !tbaa !20
  %.not4.i100 = icmp eq i32 %i.ix, 0
  br i1 %.not4.i100, label %_.exit102, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.iy = call ptr @dcgettext(ptr noundef null, ptr noundef nonnull @.str.64, i32 noundef 5) #17
  br label %_.exit102

_.exit102:                                        ; preds = %bb.ce, %bb.cf
  %.0.i101 = phi ptr [ %i.iy, %bb.cf ], [ @.str.64, %bb.ce ]
  %i.iz = call i32 (ptr, ...) @error(ptr noundef %.0.i101) #17 ; 0 uses
  br label %bb.cl

bb.cg:                                            ; preds = %bb.cd
  %i.ja = call i32 (ptr, ...) @run_git(ptr noundef nonnull @.str.55, ptr noundef nonnull @.str.56, ptr noundef nonnull %i.ip, ptr noundef nonnull @.str.59, ptr noundef null) ; 2 uses
  %.not73 = icmp eq i32 %i.ja, 0
  br i1 %.not73, label %bb.ch, label %bb.cl

bb.ch:                                            ; preds = %bb.cg, %bb.ca
  %i.jb = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.jc = call i32 (ptr, ...) @set_config(ptr noundef nonnull @.str.65, ptr noundef %i.jb) ; 2 uses
  %.not74 = icmp eq i32 %i.jc, 0
  br i1 %.not74, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.jd = load ptr, ptr %i.a, align 8, !tbaa !14  ; 2 uses
  %i.je = call i32 (ptr, ...) @set_config(ptr noundef nonnull @.str.66, ptr noundef %i.jd, ptr noundef %i.jd) ; 2 uses
  %.not75 = icmp eq i32 %i.je, 0
  br i1 %.not75, label %bb.cj, label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  call fastcc void @strbuf_setlen(ptr noundef %5, i64 noundef 0)
  %i.jf = load ptr, ptr %i.a, align 8, !tbaa !14
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %5, ptr noundef nonnull @.str.67, ptr noundef %i.jf) #17
  %i.jg = load ptr, ptr %i.dn, align 8, !tbaa !19
  %i.jh = call i32 (ptr, ...) @run_git(ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70, ptr noundef %i.jg, ptr noundef null) ; 2 uses
  %.not76 = icmp eq i32 %i.jh, 0
  br i1 %.not76, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.ji = load i32, ptr %i.f, align 4, !tbaa !20
  %i.jj = call fastcc i32 @register_dir(i32 noundef %i.ji)
  br label %bb.cl

bb.cl:                                            ; preds = %bb.cj, %bb.ci, %bb.ch, %bb.cg, %bb.bw, %bb.ae, %bb.ck, %_.exit102, %_.exit93, %_.exit90, %_.exit87, %_.exit
  %.1 = phi ptr [ null, %bb.ae ], [ null, %_.exit ], [ %.037, %_.exit90 ], [ %.037, %_.exit102 ], [ %.037, %bb.cg ], [ %.037, %bb.ch ], [ %.037, %bb.ci ], [ %.037, %bb.cj ], [ %.037, %bb.ck ], [ %.037, %bb.bw ], [ %.037, %_.exit93 ], [ null, %_.exit87 ]
  %.033 = phi i32 [ %i.du, %bb.ae ], [ -1, %_.exit ], [ -1, %_.exit90 ], [ -1, %_.exit102 ], [ %i.ja, %bb.cg ], [ %i.jc, %bb.ch ], [ %i.je, %bb.ci ], [ %i.jh, %bb.cj ], [ %i.jj, %bb.ck ], [ %i.ik, %bb.bw ], [ -1, %_.exit93 ], [ -1, %_.exit87 ]
  call void @free(ptr noundef %.1) #17
  call void @free(ptr noundef %i.dg) #17
  call void @free(ptr noundef %.034) #17
  call void @strbuf_release(ptr noundef nonnull %5) #17
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %_.exit96
  %.0 = phi i32 [ %.033, %bb.cl ], [ -1, %_.exit96 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @cmd_list(i32 noundef %0, ptr nofree readnone captures(none) %1) #2 {
bb.a:
  %.not = icmp eq i32 %0, 1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call fastcc ptr @_(ptr noundef nonnull @.str.140)
  tail call void (ptr, ...) @die(ptr noundef %i.a) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call i32 (ptr, ...) @run_git(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.141, ptr noundef nonnull @.str.132, ptr noundef null)
  %.lobit = ashr i32 %i.b, 31
  ret i32 %.lobit
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @cmd_register(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %2 = alloca [2 x %struct.option], align 16      ; 16 uses
  %i.b = alloca [2 x ptr], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 1, ptr %i.a, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i32 9, ptr %2, align 16, !tbaa !22
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !23
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.30, ptr %i.d, align 8, !tbaa !24
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.e, align 16, !tbaa !25
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 4, ptr %i.f, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr null, ptr %i.g, align 16, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @.str.31, ptr %i.h, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 2, ptr %i.i, align 16, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 0, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.k, align 8, !tbaa !30
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 1, ptr %i.l, align 16, !tbaa !31
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.m, i8 0, i64 120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.b, ptr noundef nonnull align 16 dereferenceable(16) @__const.cmd_register.usage, i64 16, i1 false)
  %i.n = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %i.b, i32 noundef 0) #17
  call fastcc void @setup_enlistment_directory(i32 noundef %i.n, ptr noundef %1, ptr noundef %i.b, ptr noundef %2, ptr noundef null)
  %i.o = load i32, ptr %i.a, align 4, !tbaa !20
  %i.p = call fastcc i32 @register_dir(i32 noundef %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %i.p
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 2) i32 @cmd_unregister(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %2 = alloca [1 x %struct.option], align 16      ; 5 uses
  %i.a = alloca [2 x ptr], align 16               ; 5 uses
  %3 = alloca %struct.strbuf, align 8             ; 11 uses
  %4 = alloca %struct.strbuf, align 8             ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %2, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, ptr noundef nonnull align 16 dereferenceable(16) @__const.cmd_unregister.usage, i64 16, i1 false)
  %i.b = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef 0) #17 ; 2 uses
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.cmd_diagnose.diagnostics_root, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) @__const.cmd_diagnose.diagnostics_root, i64 24, i1 false)
  %i.d = load ptr, ptr %1, align 8, !tbaa !14
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %3, ptr noundef nonnull @.str.148, ptr noundef %i.d) #17
  %i.e = load ptr, ptr %1, align 8, !tbaa !14
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %4, ptr noundef nonnull @.str.149, ptr noundef %i.e) #17
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.h = call i32 @is_directory(ptr noundef %i.g) #17
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %bb.c, label %.split12

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.k = call i32 @is_directory(ptr noundef %i.j) #17
  %.not15 = icmp eq i32 %i.k, 0
  br i1 %.not15, label %bb.d, label %.split12

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !19   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !34   ; 2 uses
  %i.o = icmp ult i64 %i.n, 5
  br i1 %i.o, label %strbuf_strip_suffix.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = add i64 %i.n, -5                         ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.p ; 3 uses
  %i.r = load i32, ptr %i.q, align 1
  %i.s = xor i32 %i.r, 1768369711
  %i.t = getelementptr i8, ptr %i.q, i64 4
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = xor i32 %i.v, 116
  %i.x = or i32 %i.s, %i.w
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %.not.i.i = icmp eq i32 %i.z, 0
  br i1 %.not.i.i, label %bb.f, label %strbuf_strip_suffix.exit

bb.f:                                             ; preds = %bb.e
  store i64 %i.p, ptr %i.m, align 8, !tbaa !34
  %i.aa = load i64, ptr %3, align 8, !tbaa !33
  %spec.select.i.i = call i64 @llvm.usub.sat.i64(i64 %i.aa, i64 1)
  %i.ab = icmp ugt i64 %i.p, %spec.select.i.i
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.71, i32 noundef 167, ptr noundef nonnull @.str.72) #16
  unreachable

bb.h:                                             ; preds = %bb.f
  %.not9.i.i = icmp eq ptr %i.l, @strbuf_slopbuf
  br i1 %.not9.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %i.q, align 1, !tbaa !15
  %.pre = load ptr, ptr %i.f, align 8, !tbaa !19
  br label %strbuf_strip_suffix.exit

bb.j:                                             ; preds = %bb.h
  %i.ac = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !15
  %.not10.i.i = icmp eq i8 %i.ac, 0
  br i1 %.not10.i.i, label %strbuf_strip_suffix.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @__assert_fail(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.71, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #16
  unreachable

strbuf_strip_suffix.exit:                         ; preds = %bb.d, %bb.e, %bb.i, %bb.j
  %i.ad = phi ptr [ %i.l, %bb.d ], [ %i.l, %bb.e ], [ %.pre, %bb.i ], [ %i.l, %bb.j ]
  %i.ae = call ptr @strbuf_realpath_forgiving(ptr noundef nonnull %3, ptr noundef %i.ad, i32 noundef 1) #17 ; 0 uses
  %i.af = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.ag = call i32 (ptr, ...) @run_git(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, ptr noundef %i.af, ptr noundef null)
  %i.ah = load ptr, ptr %i.f, align 8, !tbaa !19
  %i.ai = call i32 (ptr, ...) @run_git(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.151, ptr noundef %i.ah, ptr noundef null)
  %.inv.i = icmp slt i32 %i.ai, 0
  %i.aj = icmp slt i32 %i.ag, 0
  %i.ak = select i1 %.inv.i, i1 true, i1 %i.aj
  %i.al = load ptr, ptr %i.i, align 8, !tbaa !19  ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !tbaa !34 ; 2 uses
  %i.ao = icmp ult i64 %i.an, 5
  br i1 %i.ao, label %bb.s, label %bb.l

bb.l:                                             ; preds = %strbuf_strip_suffix.exit
  %i.ap = add i64 %i.an, -5                       ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ap ; 3 uses
  %i.ar = load i32, ptr %i.aq, align 1
  %i.as = xor i32 %i.ar, 1768369711
  %i.at = getelementptr i8, ptr %i.aq, i64 4
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i32
  %i.aw = xor i32 %i.av, 116
  %i.ax = or i32 %i.as, %i.aw
  %i.ay = icmp ne i32 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %.not.i.i17 = icmp eq i32 %i.az, 0
  br i1 %.not.i.i17, label %bb.m, label %bb.s

bb.m:                                             ; preds = %bb.l
  store i64 %i.ap, ptr %i.am, align 8, !tbaa !34
  %i.ba = load i64, ptr %4, align 8, !tbaa !33
  %spec.select.i.i19 = call i64 @llvm.usub.sat.i64(i64 %i.ba, i64 1)
  %i.bb = icmp ugt i64 %i.ap, %spec.select.i.i19
  br i1 %i.bb, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void (ptr, i32, ptr, ...) @BUG_fl(ptr noundef nonnull @.str.71, i32 noundef 167, ptr noundef nonnull @.str.72) #16
  unreachable

bb.o:                                             ; preds = %bb.m
  %.not9.i.i20 = icmp eq ptr %i.al, @strbuf_slopbuf
  br i1 %.not9.i.i20, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  store i8 0, ptr %i.aq, align 1, !tbaa !15
  %.pre28 = load ptr, ptr %i.i, align 8, !tbaa !19
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %i.bc = load i8, ptr @strbuf_slopbuf, align 1, !tbaa !15
  %.not10.i.i21 = icmp eq i8 %i.bc, 0
  br i1 %.not10.i.i21, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @__assert_fail(ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.71, i32 noundef 172, ptr noundef nonnull @__PRETTY_FUNCTION__.strbuf_setlen) #16
  unreachable

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.l, %strbuf_strip_suffix.exit
  %i.bd = phi ptr [ %i.al, %bb.q ], [ %.pre28, %bb.p ], [ %i.al, %bb.l ], [ %i.al, %strbuf_strip_suffix.exit ]
  %i.be = call ptr @strbuf_realpath_forgiving(ptr noundef nonnull %4, ptr noundef %i.bd, i32 noundef 1) #17 ; 0 uses
  %i.bf = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.bg = call i32 (ptr, ...) @run_git(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.132, ptr noundef %i.bf, ptr noundef null)
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !19
  %i.bi = call i32 (ptr, ...) @run_git(ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.129, ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.131, ptr noundef nonnull @.str.151, ptr noundef %i.bh, ptr noundef null)
  %.inv.i24 = icmp slt i32 %i.bi, 0
  %i.bj = icmp slt i32 %i.bg, 0
  %i.bk = select i1 %.inv.i24, i1 true, i1 %i.bj
  %i.bl = select i1 %i.bk, i1 %i.ak, i1 false
  %i.bm = zext i1 %i.bl to i32
  call void @strbuf_release(ptr noundef nonnull %3) #17
  call void @strbuf_release(ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %bb.t

.split12:                                         ; preds = %bb.b, %bb.c
  call void @strbuf_release(ptr noundef nonnull %3) #17
  call void @strbuf_release(ptr noundef nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  br label %.split

.split:                                           ; preds = %bb.a, %.split12
  %.sink = phi i32 [ 1, %.split12 ], [ %i.b, %bb.a ]
  call fastcc void @setup_enlistment_directory(i32 noundef %.sink, ptr noundef %1, ptr noundef %i.a, ptr noundef %2, ptr noundef null)
  %i.bn = call fastcc i32 @unregister_dir()
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.split
  %.1 = phi i32 [ %i.bn, %.split ], [ %i.bm, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal i32 @cmd_run(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %2 = alloca [1 x %struct.option], align 16      ; 9 uses
  %3 = alloca %struct.strbuf, align 8             ; 13 uses
  %i.a = alloca [2 x ptr], align 16               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %2, i8 0, i64 96, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) @__const.cmd_diagnose.diagnostics_root, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  call void @strbuf_add(ptr noundef nonnull %3, ptr noundef nonnull @.str.159, i64 noundef 40) #17
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.122) #17
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.154) #17
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.55) #17
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.156) #17
  call void (ptr, ptr, ...) @strbuf_addf(ptr noundef nonnull %3, ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.157) #17
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !19
  store ptr %i.c, ptr %i.a, align 16, !tbaa !14
  %i.d = call i32 @parse_options(i32 noundef %0, ptr noundef %1, ptr noundef null, ptr noundef nonnull %2, ptr noundef nonnull %i.a, i32 noundef 0) #17 ; 4 uses
  %.not28 = icmp eq i32 %i.d, 0
  br i1 %.not28, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @usage_with_options(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !tbaa !14     ; 6 uses
  %i.f = call i32 @strcmp(ptr noundef nonnull dereferenceable(4) @.str.160, ptr noundef nonnull dereferenceable(1) %i.e) #18
  %.not29 = icmp eq i32 %i.f, 0
  br i1 %.not29, label %.critedge48, label %.preheader38.preheader

.preheader38.preheader:                           ; preds = %bb.c
  %i.g = call i32 @strcmp(ptr noundef nonnull dereferenceable(7) @.str.122, ptr noundef nonnull dereferenceable(1) %i.e) #18
  %.not31 = icmp eq i32 %i.g, 0
  br i1 %.not31, label %.critedge47, label %.preheader38.1

.preheader38.1:                                   ; preds = %.preheader38.preheader
  %i.h = call i32 @strcmp(ptr noundef nonnull dereferenceable(13) @.str.154, ptr noundef nonnull dereferenceable(1) %i.e) #18
  %.not31.1 = icmp eq i32 %i.h, 0
  br i1 %.not31.1, label %.critedge, label %.preheader38.2

.preheader38.2:                                   ; preds = %.preheader38.1
  %i.i = call i32 @strcmp(ptr noundef nonnull dereferenceable(6) @.str.55, ptr noundef nonnull dereferenceable(1) %i.e) #18
  %.not31.2 = icmp eq i32 %i.i, 0
  br i1 %.not31.2, label %.critedge, label %.preheader38.3

.preheader38.3:                                   ; preds = %.preheader38.2
  %i.j = call i32 @strcmp(ptr noundef nonnull dereferenceable(14) @.str.156, ptr noundef nonnull dereferenceable(1) %i.e) #18
  %.not31.3 = icmp eq i32 %i.j, 0
  br i1 %.not31.3, label %.critedge, label %.preheader38.4

.preheader38.4:                                   ; preds = %.preheader38.3
  %i.k = call i32 @strcmp(ptr noundef nonnull dereferenceable(11) @.str.157, ptr noundef nonnull dereferenceable(1) %i.e) #18
  %.not31.4 = icmp eq i32 %i.k, 0
  br i1 %.not31.4, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.preheader38.4
  %i.l = call fastcc ptr @_(ptr noundef nonnull @.str.161)
  %i.m = load ptr, ptr %1, align 8, !tbaa !14
  %i.n = call i32 (ptr, ...) @error(ptr noundef %i.l, ptr noundef %i.m) #17 ; 0 uses
  call void @usage_with_options(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #16
  unreachable

.critedge:                                        ; preds = %.preheader38.1, %.preheader38.2, %.preheader38.3, %.preheader38.4
  %.2 = phi i64 [ 3, %.preheader38.3 ], [ 4, %.preheader38.4 ], [ 1, %.preheader38.1 ], [ 2, %.preheader38.2 ]
  %i.o = add nsw i32 %i.d, -1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  call fastcc void @setup_enlistment_directory(i32 noundef %i.o, ptr noundef nonnull %i.p, ptr noundef %i.a, ptr noundef %2, ptr noundef null)
  call void @strbuf_release(ptr noundef nonnull %3) #17
  %i.q = getelementptr inbounds nuw [16 x i8], ptr @__const.cmd_run.tasks, i64 %.2
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !69
  %i.t = call i32 (ptr, ...) @run_git(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.162, ptr noundef %i.s, ptr noundef null)
  br label %.loopexit

.critedge47:                                      ; preds = %.preheader38.preheader
  %i.u = add nsw i32 %i.d, -1
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  call fastcc void @setup_enlistment_directory(i32 noundef %i.u, ptr noundef nonnull %i.v, ptr noundef %i.a, ptr noundef %2, ptr noundef null)
  call void @strbuf_release(ptr noundef nonnull %3) #17
  %i.w = call fastcc i32 @register_dir(i32 noundef 1)
  br label %.loopexit

.critedge48:                                      ; preds = %bb.c
  %i.x = add nsw i32 %i.d, -1
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  call fastcc void @setup_enlistment_directory(i32 noundef %i.x, ptr noundef nonnull %i.y, ptr noundef %i.a, ptr noundef %2, ptr noundef null)
  call void @strbuf_release(ptr noundef nonnull %3) #17
  %i.z = call fastcc i32 @register_dir(i32 noundef 1)
  %.not34 = icmp eq i32 %i.z, 0
  br i1 %.not34, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %.critedge48
  %i.aa = call i32 (ptr, ...) @run_git(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.154, ptr noundef null)
  %.not36 = icmp eq i32 %i.aa, 0
  br i1 %.not36, label %.preheader.1, label %.loopexit

.preheader.1:                                     ; preds = %.preheader.preheader
  %i.ab = call i32 (ptr, ...) @run_git(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.155, ptr noundef null)
  %.not36.1 = icmp eq i32 %i.ab, 0
  br i1 %.not36.1, label %.preheader.2, label %.loopexit

.preheader.2:                                     ; preds = %.preheader.1
  %i.ac = call i32 (ptr, ...) @run_git(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.156, ptr noundef null)
  %.not36.2 = icmp eq i32 %i.ac, 0
  br i1 %.not36.2, label %.preheader.3, label %.loopexit

.preheader.3:                                     ; preds = %.preheader.2
  %i.ad = call i32 (ptr, ...) @run_git(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.162, ptr noundef nonnull @.str.158, ptr noundef null)
  %.not36.3 = icmp ne i32 %i.ad, 0
  %spec.select = sext i1 %.not36.3 to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.3, %.preheader.preheader, %.preheader.1, %.preheader.2, %.critedge48, %.critedge, %.critedge47
  %.024 = phi i32 [ %i.w, %.critedge47 ], [ %i.t, %.critedge ], [ -1, %.critedge48 ], [ -1, %.preheader.preheader ], [ -1, %.preheader.2 ], [ -1, %.preheader.1 ], [ %spec.select, %.preheader.3 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret i32 %.024
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @cmd_reconfigure(i32 noundef %0, ptr noundef %1) #2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  %2 = alloca [3 x %struct.option], align 16      ; 25 uses
  %i.c = alloca [2 x ptr], align 16               ; 6 uses
  %3 = alloca %struct.string_list, align 8        ; 8 uses
  %4 = alloca %struct.strbuf, align 8             ; 7 uses
  %5 = alloca %struct.strbuf, align 8             ; 7 uses
  %6 = alloca %struct.repository, align 8         ; 6 uses
  %7 = alloca %struct.strbuf, align 8             ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i32 0, ptr %i.a, align 4, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  store ptr null, ptr %i.b, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store i32 9, ptr %2, align 16, !tbaa !22
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 97, ptr %i.d, align 4, !tbaa !23
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr @.str.160, ptr %i.e, align 8, !tbaa !24
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %i.a, ptr %i.f, align 16, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 4, ptr %i.g, align 8, !tbaa !26
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 32
  store ptr null, ptr %i.h, align 16, !tbaa !27
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  store ptr @.str.163, ptr %i.i, align 8, !tbaa !28
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i32 2, ptr %i.j, align 16, !tbaa !29
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 52
  store i32 0, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr null, ptr %i.l, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 64
  store i64 1, ptr %i.m, align 16, !tbaa !31
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 72
end_hunk_1
