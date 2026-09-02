Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinygltf/original/tiny_gltf_v3?download=true
inline.NumInlined: 786
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 10
begin_hunk_0_@tg3_parse_glb:bb.a
  store i32 %spec.select.i.i, ptr %i.j, align 4, !tbaa !116
  %.pre30.i.i = load i32, ptr %i.h, align 8, !tbaa !62
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e
  %i.p = phi i32 [ %.pre30.i.i, %bb.g ], [ %i.i, %bb.e ] ; 2 uses
  %i.q = phi ptr [ %i.o, %bb.g ], [ %.pre.i.i, %bb.e ]
  %i.r = add i32 %i.p, 1
  store i32 %i.r, ptr %i.h, align 8, !tbaa !62
  %i.s = zext i32 %i.p to i64
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.q, i64 %i.s ; 5 uses
  store i32 2, ptr %i.t, align 8, !tbaa !118
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 22, ptr %i.u, align 4, !tbaa !119
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @.str.278, ptr %i.v, align 8, !tbaa !120
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr null, ptr %i.w, align 8, !tbaa !121
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store i64 -1, ptr %i.x, align 8, !tbaa !122
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.y, align 8, !tbaa !61
  br label %tg3__error_push.exit

bb.i:                                             ; preds = %bb.c
  %i.z = load i8, ptr %2, align 1, !tbaa !34
  %.not.i = icmp eq i8 %i.z, 103
  br i1 %.not.i, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !34
  %.not47.i = icmp eq i8 %i.ab, 108
  br i1 %.not47.i, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !34
  %.not48.i = icmp eq i8 %i.ad, 84
  br i1 %.not48.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !34
  %.not49.i = icmp eq i8 %i.af, 70
  br i1 %.not49.i, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i
  %.not.i55.i = icmp eq ptr %1, null
  br i1 %.not.i55.i, label %tg3__error_push.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !62 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !116 ; 3 uses
  %.not27.i56.i = icmp ult i32 %i.ah, %i.aj
  %.pre.i57.i = load ptr, ptr %1, align 8, !tbaa !63 ; 2 uses
  br i1 %.not27.i56.i, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %.not28.i58.i = icmp eq i32 %i.aj, 0
  %i.ak = shl i32 %i.aj, 1
  %spec.select.i59.i = select i1 %.not28.i58.i, i32 16, i32 %i.ak ; 2 uses
  %i.al = zext i32 %spec.select.i59.i to i64
  %i.am = shl nuw nsw i64 %i.al, 5
  %i.an = tail call ptr @realloc(ptr noundef %.pre.i57.i, i64 noundef %i.am) #29 ; 3 uses
  %.not29.i60.i = icmp eq ptr %i.an, null
  br i1 %.not29.i60.i, label %tg3__error_push.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  store ptr %i.an, ptr %1, align 8, !tbaa !63
  store i32 %spec.select.i59.i, ptr %i.ai, align 4, !tbaa !116
  %.pre30.i61.i = load i32, ptr %i.ag, align 8, !tbaa !62
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %i.ao = phi i32 [ %.pre30.i61.i, %bb.p ], [ %i.ah, %bb.n ] ; 2 uses
  %i.ap = phi ptr [ %i.an, %bb.p ], [ %.pre.i57.i, %bb.n ]
  %i.aq = add i32 %i.ao, 1
  store i32 %i.aq, ptr %i.ag, align 8, !tbaa !62
  %i.ar = zext i32 %i.ao to i64
  %i.as = getelementptr inbounds nuw [32 x i8], ptr %i.ap, i64 %i.ar ; 5 uses
  store i32 2, ptr %i.as, align 8, !tbaa !118
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 20, ptr %i.at, align 4, !tbaa !119
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  store ptr @.str.279, ptr %i.au, align 8, !tbaa !120
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  store ptr null, ptr %i.av, align 8, !tbaa !121
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  store i64 -1, ptr %i.aw, align 8, !tbaa !122
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.ax, align 8, !tbaa !61
  br label %tg3__error_push.exit

bb.r:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 4
  %.0.copyload81.i = load i32, ptr %i.ay, align 1
  %.not50.i = icmp eq i32 %.0.copyload81.i, 2
  br i1 %.not50.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call fastcc void @tg3__error_push(ptr noundef %1, i32 noundef 21, ptr noundef nonnull @.str.280, ptr noundef null, i64 noundef -1)
  br label %tg3__error_push.exit

bb.t:                                             ; preds = %bb.r
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.0.copyload79.i = load i32, ptr %i.az, align 1 ; 2 uses
  %i.ba = zext i32 %.0.copyload79.i to i64
  %.not51.i = icmp eq i64 %3, %i.ba
  br i1 %.not51.i, label %tg3__error_push.exit70.preheader.i, label %bb.u

tg3__error_push.exit70.preheader.i:               ; preds = %bb.t
  %.not5283.i = icmp ult i32 %.0.copyload79.i, 20
  br i1 %.not5283.i, label %tg3__error_push.exit70._crit_edge.i.thread, label %.lr.ph.i

bb.u:                                             ; preds = %bb.t
  tail call fastcc void @tg3__error_push(ptr noundef %1, i32 noundef 24, ptr noundef nonnull @.str.281, ptr noundef null, i64 noundef -1)
  br label %tg3__error_push.exit

.lr.ph.i:                                         ; preds = %tg3__error_push.exit70.preheader.i, %tg3__error_push.exit70.loopexit.i
  %i.bb = phi i64 [ %i.cc, %tg3__error_push.exit70.loopexit.i ], [ 20, %tg3__error_push.exit70.preheader.i ] ; 2 uses
  %.04184.i = phi i64 [ %i.cb, %tg3__error_push.exit70.loopexit.i ], [ 12, %tg3__error_push.exit70.preheader.i ]
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 %.04184.i ; 2 uses
  %.0.copyload75.i = load i32, ptr %i.bc, align 1
  %i.bd = zext i32 %.0.copyload75.i to i64        ; 2 uses
  %i.be = add nuw nsw i64 %i.bb, %i.bd            ; 4 uses
  %.not54.i = icmp ugt i64 %i.be, %3
  br i1 %.not54.i, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %.lr.ph.i
  %.not.i63.i = icmp eq ptr %1, null
  br i1 %.not.i63.i, label %tg3__error_push.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !62 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !116 ; 3 uses
  %.not27.i64.i = icmp ult i32 %i.bg, %i.bi
  %.pre.i65.i = load ptr, ptr %1, align 8, !tbaa !63 ; 2 uses
  br i1 %.not27.i64.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %.not28.i66.i = icmp eq i32 %i.bi, 0
  %i.bj = shl i32 %i.bi, 1
  %spec.select.i67.i = select i1 %.not28.i66.i, i32 16, i32 %i.bj ; 2 uses
  %i.bk = zext i32 %spec.select.i67.i to i64
  %i.bl = shl nuw nsw i64 %i.bk, 5
  %i.bm = tail call ptr @realloc(ptr noundef %.pre.i65.i, i64 noundef %i.bl) #29 ; 3 uses
  %.not29.i68.i = icmp eq ptr %i.bm, null
  br i1 %.not29.i68.i, label %tg3__error_push.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  store ptr %i.bm, ptr %1, align 8, !tbaa !63
  store i32 %spec.select.i67.i, ptr %i.bh, align 4, !tbaa !116
  %.pre30.i69.i = load i32, ptr %i.bf, align 8, !tbaa !62
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %i.bn = phi i32 [ %.pre30.i69.i, %bb.y ], [ %i.bg, %bb.w ] ; 2 uses
  %i.bo = phi ptr [ %i.bm, %bb.y ], [ %.pre.i65.i, %bb.w ]
  %i.bp = add i32 %i.bn, 1
  store i32 %i.bp, ptr %i.bf, align 8, !tbaa !62
  %i.bq = zext i32 %i.bn to i64
  %i.br = getelementptr inbounds nuw [32 x i8], ptr %i.bo, i64 %i.bq ; 5 uses
  store i32 2, ptr %i.br, align 8, !tbaa !118
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  store i32 23, ptr %i.bs, align 4, !tbaa !119
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  store ptr @.str.282, ptr %i.bt, align 8, !tbaa !120
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  store ptr null, ptr %i.bu, align 8, !tbaa !121
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store i64 -1, ptr %i.bv, align 8, !tbaa !122
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.bw, align 8, !tbaa !61
  br label %tg3__error_push.exit

bb.aa:                                            ; preds = %.lr.ph.i
  %i.bx = getelementptr i8, ptr %i.bc, i64 4
  %.0.copyload.i = load i32, ptr %i.bx, align 1
  switch i32 %.0.copyload.i, label %tg3__error_push.exit70.loopexit.i [
    i32 1313821514, label %tg3__error_push.exit70.loopexit.sink.split.i
    i32 5130562, label %bb.ab
  ]

bb.ab:                                            ; preds = %bb.aa
  br label %tg3__error_push.exit70.loopexit.sink.split.i

tg3__error_push.exit70.loopexit.sink.split.i:     ; preds = %bb.ab, %bb.aa
  %.sink98.i = phi ptr [ %i.c, %bb.ab ], [ %i.a, %bb.aa ]
  %.sink.i = phi ptr [ %i.d, %bb.ab ], [ %i.b, %bb.aa ]
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 %i.bb
  store ptr %i.by, ptr %.sink98.i, align 8, !tbaa !20
  store i64 %i.bd, ptr %.sink.i, align 8, !tbaa !27
  br label %tg3__error_push.exit70.loopexit.i

tg3__error_push.exit70.loopexit.i:                ; preds = %tg3__error_push.exit70.loopexit.sink.split.i, %bb.aa
  %11 = sub nuw nsw i64 %3, %i.be
  %i.bz = sub nsw i64 0, %i.be
  %i.ca = and i64 %i.bz, 3
  %umin.i = tail call i64 @llvm.umin.i64(i64 %11, i64 %i.ca)
  %i.cb = add nuw nsw i64 %i.be, %umin.i          ; 2 uses
  %i.cc = add nuw nsw i64 %i.cb, 8                ; 2 uses
  %.not52.i = icmp ugt i64 %i.cc, %3
  br i1 %.not52.i, label %tg3__error_push.exit70._crit_edge.i, label %.lr.ph.i, !llvm.loop !464

tg3__error_push.exit70._crit_edge.i:              ; preds = %tg3__error_push.exit70.loopexit.i
  %.0..0..0.66.pre = load ptr, ptr %i.a, align 8, !tbaa !20 ; 3 uses
  %.not53.i = icmp eq ptr %.0..0..0.66.pre, null
  br i1 %.not53.i, label %tg3__error_push.exit70._crit_edge.i.thread, label %tg3__parse_glb_header.exit

tg3__error_push.exit70._crit_edge.i.thread:       ; preds = %tg3__error_push.exit70.preheader.i, %tg3__error_push.exit70._crit_edge.i
  tail call fastcc void @tg3__error_push(ptr noundef %1, i32 noundef 23, ptr noundef nonnull @.str.283, ptr noundef null, i64 noundef -1)
  br label %tg3__error_push.exit

tg3__parse_glb_header.exit:                       ; preds = %tg3__error_push.exit70._crit_edge.i
  %.not36 = icmp eq ptr %6, null
  br i1 %.not36, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %tg3__parse_glb_header.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %.0.sroa.gep58, i8 0, i64 208, i1 false)
  store i32 1, ptr %7, align 8, !tbaa !71
  %i.cd = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.cd, align 4, !tbaa !72
  store i64 1073741824, ptr %.0.sroa.gep28, align 8, !tbaa !73
  %i.ce = getelementptr inbounds nuw i8, ptr %7, i64 24
  store i32 262144, ptr %i.ce, align 8, !tbaa !74
  %i.cf = getelementptr inbounds nuw i8, ptr %7, i64 224
  store i64 0, ptr %i.cf, align 8, !tbaa !75
  %i.cg = getelementptr inbounds nuw i8, ptr %7, i64 216
  store i32 1, ptr %i.cg, align 8, !tbaa !76
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %tg3__parse_glb_header.exit
  %.0.sroa.phi = phi ptr [ %.0.sroa.gep, %tg3__parse_glb_header.exit ], [ %.0.sroa.gep28, %bb.ac ] ; 6 uses
  %.0.sroa.phi56 = phi ptr [ %.0.sroa.gep57, %tg3__parse_glb_header.exit ], [ %.0.sroa.gep58, %bb.ac ]
  %.0.sroa.phi59 = phi ptr [ %.0.sroa.gep60, %tg3__parse_glb_header.exit ], [ %.0.sroa.gep61, %bb.ac ]
  %.0 = phi ptr [ %6, %tg3__parse_glb_header.exit ], [ %7, %bb.ac ]
  %i.ch = getelementptr inbounds nuw i8, ptr %.0.sroa.phi, i64 24
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !115 ; 2 uses
  %.not33.i = icmp eq ptr %i.ci, null
  br i1 %.not33.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.sroa.phi, i64 32
  %i.cj = load <2 x ptr>, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !48
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.0.sroa.phi, i64 48
  %.sroa.8.0.copyload.i = load ptr, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !48
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %.sroa.8.0.i = phi ptr [ %.sroa.8.0.copyload.i, %bb.ae ], [ null, %bb.ad ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.ci, %bb.ae ], [ @tg3__default_alloc, %bb.ad ] ; 2 uses
  %i.ck = phi <2 x ptr> [ %i.cj, %bb.ae ], [ <ptr @tg3__default_realloc, ptr @tg3__default_free>, %bb.ad ]
  %i.cl = tail call ptr %.sroa.0.0.i(i64 noundef 80, ptr noundef %.sroa.8.0.i) #28, !inline_history !5 ; 10 uses
  %.not34.i = icmp eq ptr %i.cl, null
  br i1 %.not34.i, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %bb.af
  %.not.i42 = icmp eq ptr %1, null
  br i1 %.not.i42, label %tg3__error_push.exit, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !62 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !116 ; 3 uses
  %.not27.i = icmp ult i32 %i.cn, %i.cp
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !63  ; 2 uses
  br i1 %.not27.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.not28.i = icmp eq i32 %i.cp, 0
  %i.cq = shl i32 %i.cp, 1
  %spec.select.i43 = select i1 %.not28.i, i32 16, i32 %i.cq ; 2 uses
  %i.cr = zext i32 %spec.select.i43 to i64
  %i.cs = shl nuw nsw i64 %i.cr, 5
  %i.ct = tail call ptr @realloc(ptr noundef %.pre.i, i64 noundef %i.cs) #29 ; 3 uses
  %.not29.i = icmp eq ptr %i.ct, null
  br i1 %.not29.i, label %tg3__error_push.exit, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  store ptr %i.ct, ptr %1, align 8, !tbaa !63
  store i32 %spec.select.i43, ptr %i.co, align 4, !tbaa !116
  %.pre30.i = load i32, ptr %i.cm, align 8, !tbaa !62
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ah
  %i.cu = phi i32 [ %.pre30.i, %bb.aj ], [ %i.cn, %bb.ah ] ; 2 uses
  %i.cv = phi ptr [ %i.ct, %bb.aj ], [ %.pre.i, %bb.ah ]
  %i.cw = add i32 %i.cu, 1
  store i32 %i.cw, ptr %i.cm, align 8, !tbaa !62
  %i.cx = zext i32 %i.cu to i64
  %i.cy = getelementptr inbounds nuw [32 x i8], ptr %i.cv, i64 %i.cx ; 5 uses
  store i32 2, ptr %i.cy, align 8, !tbaa !118
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 4
  store i32 50, ptr %i.cz, align 4, !tbaa !119
  %i.da = getelementptr inbounds nuw i8, ptr %i.cy, i64 8
  store ptr @.str.2, ptr %i.da, align 8, !tbaa !120
  %i.db = getelementptr inbounds nuw i8, ptr %i.cy, i64 16
  store ptr null, ptr %i.db, align 8, !tbaa !121
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cy, i64 24
  store i64 -1, ptr %i.dc, align 8, !tbaa !122
  %i.dd = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.dd, align 8, !tbaa !61
  br label %tg3__error_push.exit

bb.al:                                            ; preds = %bb.af
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.cl, i8 0, i64 48, i1 false)
  %i.de = getelementptr inbounds nuw i8, ptr %i.cl, i64 48
  store ptr %.sroa.0.0.i, ptr %i.de, align 8, !tbaa !48
  %.sroa.6.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 56
  store <2 x ptr> %i.ck, ptr %.sroa.6.0..sroa_idx8.i, align 8, !tbaa !48
  %.sroa.8.0..sroa_idx12.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  store ptr %.sroa.8.0.i, ptr %.sroa.8.0..sroa_idx12.i, align 8, !tbaa !48
  %i.df = getelementptr inbounds nuw i8, ptr %.0.sroa.phi, i64 16
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !123 ; 2 uses
  %.not35.i = icmp eq i32 %i.dg, 0
  %narrow.i = select i1 %.not35.i, i32 262144, i32 %i.dg
  %spec.select.i = zext i32 %narrow.i to i64
  %i.dh = load i64, ptr %.0.sroa.phi, align 8, !tbaa !124 ; 3 uses
  %.not36.i = icmp eq i64 %i.dh, 0
  %spec.select38.i = select i1 %.not36.i, i64 1073741824, i64 %i.dh
  %i.di = getelementptr inbounds nuw i8, ptr %.0.sroa.phi, i64 8
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !125
  %i.dk = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  store i64 %spec.select.i, ptr %i.dk, align 8, !tbaa !128
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store i64 %spec.select38.i, ptr %i.dl, align 8, !tbaa !129
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store i64 %i.dj, ptr %i.dm, align 8, !tbaa !130
  store ptr %i.cl, ptr %0, align 8, !tbaa !131
  %i.dn = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.do = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i64 0, ptr %i.do, align 8
  store i64 512, ptr %10, align 8, !tbaa !26
  store i64 %i.dh, ptr %i.dn, align 8, !tbaa !132
  %i.dp = load i64, ptr %.0.sroa.phi56, align 8, !tbaa !133
  %i.dq = getelementptr inbounds nuw i8, ptr %10, i64 16
  store i64 %i.dp, ptr %i.dq, align 8, !tbaa !134
  %i.dr = getelementptr inbounds nuw i8, ptr %10, i64 24
  store i64 67108864, ptr %i.dr, align 8, !tbaa !28
  %i.ds = load i32, ptr %.0.sroa.phi59, align 4, !tbaa !135
  %i.dt = getelementptr inbounds nuw i8, ptr %10, i64 32
  store i32 %i.ds, ptr %i.dt, align 8, !tbaa !29
  %.0..0..0.63 = load i64, ptr %i.b, align 8, !tbaa !27
  %i.du = call i32 @tg3json_parse_n_opts(ptr noundef nonnull %.0..0..0.66.pre, i64 noundef %.0..0..0.63, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %i.e)
  %i.dv = icmp eq i32 %i.du, 0                    ; 2 uses
  %i.dw = load i32, ptr %9, align 8
  %i.dx = icmp ne i32 %i.dw, 6
  %or.cond = select i1 %i.dv, i1 true, i1 %i.dx
  br i1 %or.cond, label %bb.am, label %bb.as

bb.am:                                            ; preds = %bb.al
  %i.dy = load ptr, ptr %i.e, align 8, !tbaa !20  ; 2 uses
  %.not38 = icmp eq ptr %i.dy, null
  %i.dz = ptrtoint ptr %i.dy to i64
  %i.ea = ptrtoint ptr %.0..0..0.66.pre to i64
  %i.eb = sub i64 %i.dz, %i.ea
  %i.ec = select i1 %.not38, i64 -1, i64 %i.eb
  %.not.i44 = icmp eq ptr %1, null
  br i1 %.not.i44, label %tg3__error_push.exit51, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.ee = load i32, ptr %i.ed, align 8, !tbaa !62 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %i.eg = load i32, ptr %i.ef, align 4, !tbaa !116 ; 3 uses
  %.not27.i45 = icmp ult i32 %i.ee, %i.eg
  %.pre.i46 = load ptr, ptr %1, align 8, !tbaa !63 ; 2 uses
  br i1 %.not27.i45, label %bb.aq, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not28.i47 = icmp eq i32 %i.eg, 0
  %i.eh = shl i32 %i.eg, 1
  %spec.select.i48 = select i1 %.not28.i47, i32 16, i32 %i.eh ; 2 uses
  %i.ei = zext i32 %spec.select.i48 to i64
  %i.ej = shl nuw nsw i64 %i.ei, 5
  %i.ek = call ptr @realloc(ptr noundef %.pre.i46, i64 noundef %i.ej) #29 ; 3 uses
  %.not29.i49 = icmp eq ptr %i.ek, null
  br i1 %.not29.i49, label %tg3__error_push.exit51, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  store ptr %i.ek, ptr %1, align 8, !tbaa !63
  store i32 %spec.select.i48, ptr %i.ef, align 4, !tbaa !116
  %.pre30.i50 = load i32, ptr %i.ed, align 8, !tbaa !62
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.an
  %i.el = phi i32 [ %.pre30.i50, %bb.ap ], [ %i.ee, %bb.an ] ; 2 uses
  %i.em = phi ptr [ %i.ek, %bb.ap ], [ %.pre.i46, %bb.an ]
  %i.en = add i32 %i.el, 1
  store i32 %i.en, ptr %i.ed, align 8, !tbaa !62
  %i.eo = zext i32 %i.el to i64
  %i.ep = getelementptr inbounds nuw [32 x i8], ptr %i.em, i64 %i.eo ; 5 uses
  store i32 2, ptr %i.ep, align 8, !tbaa !118
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  store i32 10, ptr %i.eq, align 4, !tbaa !119
end_hunk_0
