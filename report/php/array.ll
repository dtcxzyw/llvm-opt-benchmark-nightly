Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/array?download=true
inline.NumInlined: 57
inline.NumDeleted: 21
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 32
loop-unroll.NumUnrolled: 33
begin_hunk_0_@zif_array_splice:bb.a
  %i.p = load i32, ptr %i.o, align 4, !tbaa !29
  %i.q = icmp ugt i32 %i.p, 1
  br i1 %i.q, label %bb.g, label %zend_parse_arg_array.exit, !prof !30

bb.g:                                             ; preds = %bb.f
  %i.r = tail call ptr @zend_array_dup(ptr noundef nonnull %i.o) #18
  store ptr %i.r, ptr %.0116, align 8, !tbaa !25
  store i32 775, ptr %i.l, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.t = load i32, ptr %i.s, align 4, !tbaa !25
  %i.u = and i32 %i.t, 64
  %.not.i = icmp eq i32 %i.u, 0
  br i1 %.not.i, label %zend_gc_try_delref.exit, label %zend_parse_arg_array.exit

zend_gc_try_delref.exit:                          ; preds = %bb.g
  %i.v = load i32, ptr %i.o, align 4, !tbaa !29
  %i.w = add i32 %i.v, -1
  store i32 %i.w, ptr %i.o, align 4, !tbaa !29
  %.pr.pre = load i8, ptr %i.l, align 8, !tbaa !25
  %i.x = icmp eq i8 %.pr.pre, 7
  br i1 %i.x, label %zend_parse_arg_array.exit, label %zend_parse_arg_array.exit.thread, !prof !31

zend_parse_arg_array.exit:                        ; preds = %bb.f, %bb.g, %zend_gc_try_delref.exit
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !25
  %i.ab = icmp eq i8 %i.aa, 4
  br i1 %i.ab, label %zend_parse_arg_long_ex.exit.thread, label %zend_parse_arg_long_ex.exit, !prof !27

zend_parse_arg_long_ex.exit.thread:               ; preds = %zend_parse_arg_array.exit
  %i.ac = load i64, ptr %i.y, align 8, !tbaa !25
  store i64 %i.ac, ptr %i.a, align 8, !tbaa !24
  br label %bb.h

zend_parse_arg_long_ex.exit:                      ; preds = %zend_parse_arg_array.exit
  %i.ad = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.y, ptr noundef nonnull %i.a, i32 noundef 2) #18
  br i1 %i.ad, label %bb.h, label %zend_parse_arg_array.exit.thread, !prof !116

bb.h:                                             ; preds = %zend_parse_arg_long_ex.exit.thread, %zend_parse_arg_long_ex.exit
  %i.ae = icmp eq i32 %i.d, 2
  br i1 %i.ae, label %.critedge.thread, label %bb.i, !prof !30

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !25
  switch i8 %i.ah, label %zend_parse_arg_long_ex.exit135 [
    i8 4, label %.critedge
    i8 1, label %.critedge.thread221
  ], !prof !80

.critedge.thread221:                              ; preds = %bb.i
  %.not224 = icmp eq i32 %i.d, 4
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 128
  %spec.select154225 = select i1 %.not224, ptr %i.ai, ptr null, !prof !27
  br label %.critedge.thread

zend_parse_arg_long_ex.exit135:                   ; preds = %bb.i
  %i.aj = call zeroext i1 @zend_parse_arg_long_slow(ptr noundef nonnull %i.af, ptr noundef nonnull %i.b, i32 noundef 3) #18
  br i1 %i.aj, label %.critedge.thread217, label %zend_parse_arg_array.exit.thread, !prof !116

.critedge.thread217:                              ; preds = %zend_parse_arg_long_ex.exit135
  %.not219 = icmp eq i32 %i.d, 4
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 128
  %spec.select154220 = select i1 %.not219, ptr %i.ak, ptr null, !prof !27
  %i.al = load ptr, ptr %.0116, align 8, !tbaa !25
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 28
  %i.an = load i32, ptr %i.am, align 4, !tbaa !35
  br label %bb.j

.critedge:                                        ; preds = %bb.i
  %i.ao = load i64, ptr %i.af, align 8, !tbaa !25
  store i64 %i.ao, ptr %i.b, align 8, !tbaa !24
  %.not = icmp eq i32 %i.d, 4
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 128
  %spec.select154 = select i1 %.not, ptr %i.ap, ptr null, !prof !27
  %i.aq = load ptr, ptr %.0116, align 8, !tbaa !25
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 28
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !35
  br label %bb.j

zend_parse_arg_array.exit.thread:                 ; preds = %bb.e, %zend_gc_try_delref.exit, %bb.b, %zend_parse_arg_long_ex.exit, %zend_parse_arg_long_ex.exit135
  %.0117 = phi i32 [ 0, %bb.b ], [ 3, %zend_parse_arg_long_ex.exit135 ], [ 2, %zend_parse_arg_long_ex.exit ], [ 1, %zend_gc_try_delref.exit ], [ 1, %bb.e ]
  %.1 = phi ptr [ null, %bb.b ], [ %i.af, %zend_parse_arg_long_ex.exit135 ], [ %i.y, %zend_parse_arg_long_ex.exit ], [ %.0116, %zend_gc_try_delref.exit ], [ %.0116, %bb.e ]
  %.0115 = phi i32 [ 0, %bb.b ], [ 1, %zend_parse_arg_long_ex.exit135 ], [ 0, %zend_parse_arg_long_ex.exit ], [ 6, %zend_gc_try_delref.exit ], [ 6, %bb.e ]
  %.0114 = phi i32 [ 1, %bb.b ], [ 9, %zend_parse_arg_long_ex.exit135 ], [ 9, %zend_parse_arg_long_ex.exit ], [ 9, %zend_gc_try_delref.exit ], [ 9, %bb.e ]
  call void @zend_wrong_parameter_error(i32 noundef %.0114, i32 noundef %.0117, ptr noundef null, i32 noundef %.0115, ptr noundef %.1) #18
  br label %bb.dd

.critedge.thread:                                 ; preds = %bb.h, %.critedge.thread221
  %.0142153 = phi ptr [ %spec.select154225, %.critedge.thread221 ], [ null, %bb.h ]
  %i.at = load ptr, ptr %.0116, align 8, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !35 ; 2 uses
  %i.aw = sext i32 %i.av to i64
  store i64 %i.aw, ptr %i.b, align 8, !tbaa !24
  br label %bb.j

bb.j:                                             ; preds = %.critedge, %.critedge.thread217, %.critedge.thread
  %i.ax = phi i32 [ %i.av, %.critedge.thread ], [ %i.as, %.critedge ], [ %i.an, %.critedge.thread217 ] ; 2 uses
  %.0142152 = phi ptr [ %.0142153, %.critedge.thread ], [ %spec.select154, %.critedge ], [ %spec.select154220, %.critedge.thread217 ] ; 3 uses
  %i.ay = load i32, ptr %i.c, align 4, !tbaa !25
  %i.az = icmp eq i32 %i.ay, 4
  br i1 %i.az, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @convert_to_array(ptr noundef %.0142152) #18
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !74 ; 3 uses
  %.not128 = icmp eq ptr %i.bb, null
  br i1 %.not128, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !75
  %i.be = load i8, ptr %i.bd, align 8, !tbaa !25
  %.not129 = icmp eq i8 %i.be, 1
  br i1 %.not129, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bf = load ptr, ptr %i.bb, align 8, !tbaa !76
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 31
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !78
  %.not130 = icmp eq i8 %i.bh, 0
  br i1 %.not130, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %i.bi = load i64, ptr %i.b, align 8, !tbaa !24  ; 4 uses
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !24  ; 4 uses
  %i.bk = sext i32 %i.ax to i64                   ; 5 uses
  %i.bl = icmp sgt i64 %i.bj, %i.bk
  br i1 %i.bl, label %.sink.split, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bm = icmp slt i64 %i.bj, 0
  br i1 %i.bm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bn = add nsw i64 %i.bj, %i.bk
  %spec.store.select = call i64 @llvm.smax.i64(i64 %i.bn, i64 0)
  br label %.sink.split

.sink.split:                                      ; preds = %bb.o, %bb.q
  %spec.store.select.sink = phi i64 [ %spec.store.select, %bb.q ], [ %i.bk, %bb.o ] ; 2 uses
  store i64 %spec.store.select.sink, ptr %i.a, align 8
  br label %bb.r

bb.r:                                             ; preds = %.sink.split, %bb.p
  %i.bo = phi i64 [ %i.bj, %bb.p ], [ %spec.store.select.sink, %.sink.split ] ; 3 uses
  %i.bp = icmp slt i64 %i.bi, 0
  br i1 %i.bp, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bq = add i64 %i.bi, %i.bk
  %i.br = sub i64 %i.bq, %i.bo
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.bs = add i64 %i.bo, %i.bi
  %i.bt = zext i32 %i.ax to i64
  %i.bu = icmp ugt i64 %i.bs, %i.bt
  %i.bv = sub nsw i64 %i.bk, %i.bo
  %spec.select = select i1 %i.bu, i64 %i.bv, i64 %i.bi
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t
  %.0112 = phi i64 [ %i.br, %bb.s ], [ %spec.select, %bb.t ]
  %i.bw = call i64 @llvm.smax.i64(i64 %.0112, i64 0)
  %i.bx = trunc i64 %i.bw to i32
  %i.by = call ptr @_zend_new_array(i32 noundef %i.bx) #18 ; 2 uses
  br label %bb.v

bb.v:                                             ; preds = %bb.n, %bb.u
  %zend_empty_array.sink = phi ptr [ @zend_empty_array, %bb.n ], [ %i.by, %bb.u ]
  %.sink = phi i32 [ 7, %bb.n ], [ 775, %bb.u ]
  %.0 = phi ptr [ null, %bb.n ], [ %i.by, %bb.u ] ; 5 uses
  store ptr %zend_empty_array.sink, ptr %1, align 8, !tbaa !25
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.sink, ptr %i.bz, align 8, !tbaa !25
  %i.ca = load ptr, ptr %.0116, align 8, !tbaa !25 ; 40 uses
  %i.cb = load i64, ptr %i.a, align 8, !tbaa !24  ; 4 uses
  %i.cc = load i64, ptr %i.b, align 8, !tbaa !24  ; 4 uses
  %.not131 = icmp eq ptr %.0142152, null
  br i1 %.not131, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cd = load ptr, ptr %.0142152, align 8, !tbaa !25
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %i.ce = phi ptr [ %i.cd, %bb.w ], [ null, %bb.v ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #18
  %i.cf = call i32 @zend_hash_iterators_lower_pos(ptr noundef %i.ca, i32 noundef 0) #18 ; 4 uses
  %i.cg = load i32, ptr %i.ca, align 4, !tbaa !29
  %i.ch = add i32 %i.cg, 1
  store i32 %i.ch, ptr %i.ca, align 4, !tbaa !29
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ca, i64 28
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !35 ; 3 uses
  %i.ck = zext i32 %i.cj to i64                   ; 5 uses
  %i.cl = icmp sgt i64 %i.cb, %i.ck
  br i1 %i.cl, label %bb.aa, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cm = icmp slt i64 %i.cb, 0
  br i1 %i.cm, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cn = add nsw i64 %i.cb, %i.ck
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.cn, i64 0)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %.0285.i = phi i64 [ %i.cb, %bb.y ], [ %spec.store.select.i, %bb.z ], [ %i.ck, %bb.x ] ; 14 uses
  %i.co = icmp slt i64 %i.cc, 0
  br i1 %i.co, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cp = add nsw i64 %i.cc, %i.ck
  %i.cq = sub i64 %i.cp, %.0285.i
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.cr = trunc nuw i64 %.0285.i to i32
  %i.cs = trunc i64 %i.cc to i32
  %i.ct = add i32 %i.cr, %i.cs
  %i.cu = icmp ugt i32 %i.ct, %i.cj
  %i.cv = sub nsw i64 %i.ck, %.0285.i
  %spec.select.i = select i1 %i.cu, i64 %i.cv, i64 %i.cc
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %.0286.i = phi i64 [ %i.cq, %bb.ab ], [ %spec.select.i, %bb.ac ] ; 10 uses
  %i.cw = icmp sgt i64 %.0286.i, 0
  %.not.i136 = icmp eq ptr %i.ce, null            ; 3 uses
  br i1 %.not.i136, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ce, i64 28
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !35
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %3 = phi i32 [ %i.cy, %bb.ae ], [ 0, %bb.ad ]
  %4 = trunc i64 %.0286.i to i32
  %5 = sub i32 %i.cj, %4
  %6 = select i1 %i.cw, i32 %5, i32 0
  %7 = add i32 %3, %6
  call void @_zend_hash_init(ptr noundef nonnull %2, i32 noundef %7, ptr noundef nonnull @zval_ptr_dtor, i1 noundef zeroext false) #18
  %i.cz = getelementptr inbounds nuw i8, ptr %i.ca, i64 8 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 8, !tbaa !25
  %i.db = and i32 %i.da, 4
  %.not298.i = icmp eq i32 %i.db, 0
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ca, i64 16 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !25 ; 4 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.ca, i64 24 ; 11 uses
  %.not437.i = icmp eq i64 %.0285.i, 0            ; 2 uses
  br i1 %.not298.i, label %bb.bp, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  br i1 %.not437.i, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ag
  %i.df = getelementptr inbounds nuw i8, ptr %i.ca, i64 10
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ao, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ao ] ; 5 uses
  %.0249336.i = phi i32 [ %i.cf, %.lr.ph.i ], [ %.2251.i, %bb.ao ] ; 5 uses
  %.0254335.i = phi ptr [ %i.dd, %.lr.ph.i ], [ %i.dv, %bb.ao ] ; 4 uses
  %.0268330.i = phi i64 [ 0, %.lr.ph.i ], [ %.1269.i, %bb.ao ] ; 5 uses
  %i.dg = load i32, ptr %i.de, align 8, !tbaa !36
  %i.dh = zext i32 %i.dg to i64
  %i.di = icmp samesign ult i64 %indvars.iv.i, %i.dh
  %i.dj = trunc nuw i64 %indvars.iv.i to i32      ; 2 uses
  br i1 %i.di, label %bb.ai, label %.critedge.i

bb.ai:                                            ; preds = %bb.ah
  %i.dk = getelementptr inbounds nuw i8, ptr %.0254335.i, i64 8
  %i.dl = load i8, ptr %i.dk, align 8, !tbaa !25
  %i.dm = icmp eq i8 %i.dl, 0
  br i1 %i.dm, label %bb.ao, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dn = call ptr @zend_hash_next_index_insert_new(ptr noundef nonnull %2, ptr noundef nonnull %.0254335.i) #18 ; 0 uses
  %i.do = zext i32 %.0249336.i to i64
  %i.dp = icmp eq i64 %indvars.iv.i, %i.do
  br i1 %i.dp, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %.not311.i = icmp eq i64 %.0268330.i, %indvars.iv.i
  br i1 %.not311.i, label %zend_hash_iterators_update.exit321.i, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.dq = load i8, ptr %i.df, align 2, !tbaa !25
  %.not.i320.i = icmp eq i8 %i.dq, 0
  br i1 %.not.i320.i, label %zend_hash_iterators_update.exit321.i, label %bb.am, !prof !27

bb.am:                                            ; preds = %bb.al
  %i.dr = trunc i64 %.0268330.i to i32
  call void @_zend_hash_iterators_update(ptr noundef nonnull %i.ca, i32 noundef %i.dj, i32 noundef %i.dr) #18
  br label %zend_hash_iterators_update.exit321.i

zend_hash_iterators_update.exit321.i:             ; preds = %bb.am, %bb.al, %bb.ak
  %i.ds = add nuw i32 %.0249336.i, 1
  %i.dt = call i32 @zend_hash_iterators_lower_pos(ptr noundef nonnull %i.ca, i32 noundef %i.ds) #18
  br label %bb.an

bb.an:                                            ; preds = %zend_hash_iterators_update.exit321.i, %bb.aj
  %.1250.i = phi i32 [ %i.dt, %zend_hash_iterators_update.exit321.i ], [ %.0249336.i, %bb.aj ]
  %i.du = add nsw i64 %.0268330.i, 1
  br label %bb.ao

bb.ao:                                            ; preds = %bb.an, %bb.ai
  %.1269.i = phi i64 [ %.0268330.i, %bb.ai ], [ %i.du, %bb.an ] ; 3 uses
  %.2251.i = phi i32 [ %.0249336.i, %bb.ai ], [ %.1250.i, %bb.an ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.0254335.i, i64 16 ; 2 uses
  %i.dw = icmp slt i64 %.1269.i, %.0285.i
  br i1 %i.dw, label %bb.ah, label %.critedge.loopexit.split.loop.exit.i, !llvm.loop !236

.critedge.loopexit.split.loop.exit.i:             ; preds = %bb.ao
  %indvars.le.i = trunc nuw i64 %indvars.iv.next.i to i32
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ah, %.critedge.loopexit.split.loop.exit.i, %bb.ag
  %.0268.lcssa.i = phi i64 [ 0, %bb.ag ], [ %.1269.i, %.critedge.loopexit.split.loop.exit.i ], [ %.0268330.i, %bb.ah ] ; 7 uses
  %.0258.lcssa.i = phi i32 [ 0, %bb.ag ], [ %indvars.le.i, %.critedge.loopexit.split.loop.exit.i ], [ %i.dj, %bb.ah ] ; 4 uses
  %.0254.lcssa.i = phi ptr [ %i.dd, %bb.ag ], [ %i.dv, %.critedge.loopexit.split.loop.exit.i ], [ %.0254335.i, %bb.ah ] ; 2 uses
  %.0249.lcssa.i = phi i32 [ %i.cf, %bb.ag ], [ %.2251.i, %.critedge.loopexit.split.loop.exit.i ], [ %.0249336.i, %bb.ah ] ; 4 uses
  %.not305.i = icmp eq ptr %.0, null
  %i.dx = sub nsw i64 %.0268.lcssa.i, %.0285.i
  %i.dy = icmp slt i64 %i.dx, %.0286.i            ; 2 uses
  br i1 %.not305.i, label %.preheader327.i, label %.preheader328.i

.preheader328.i:                                  ; preds = %.critedge.i
  br i1 %i.dy, label %.lr.ph351.i, label %.critedge2.i

.lr.ph351.i:                                      ; preds = %.preheader328.i
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ca, i64 10
  %i.ea = add nsw i64 %.0286.i, %.0285.i
  %i.eb = trunc i64 %i.ea to i32
  br label %bb.ap

.preheader327.i:                                  ; preds = %.critedge.i
  br i1 %i.dy, label %.lr.ph364.i, label %.critedge2.i

.lr.ph364.i:                                      ; preds = %.preheader327.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.ca, i64 10
  %i.ed = add nsw i64 %.0286.i, %.0285.i
  %i.ee = trunc i64 %i.ed to i32
  br label %bb.ax

bb.ap:                                            ; preds = %bb.aw, %.lr.ph351.i
  %.3252350.i = phi i32 [ %.0249.lcssa.i, %.lr.ph351.i ], [ %.4253.i, %bb.aw ] ; 6 uses
  %.1255348.i = phi ptr [ %.0254.lcssa.i, %.lr.ph351.i ], [ %i.ew, %bb.aw ] ; 6 uses
  %.1259346.i = phi i32 [ %.0258.lcssa.i, %.lr.ph351.i ], [ %i.ev, %bb.aw ] ; 4 uses
  %.2270345.i = phi i64 [ %.0268.lcssa.i, %.lr.ph351.i ], [ %.3271.i, %bb.aw ] ; 3 uses
  %i.ef = load i32, ptr %i.de, align 8, !tbaa !36
  %i.eg = icmp ult i32 %.1259346.i, %i.ef
  br i1 %i.eg, label %bb.aq, label %.critedge2.i

bb.aq:                                            ; preds = %bb.ap
  %i.eh = getelementptr inbounds nuw i8, ptr %.1255348.i, i64 8
  %i.ei = load i8, ptr %i.eh, align 8, !tbaa !25
  %i.ej = icmp eq i8 %i.ei, 0
  br i1 %i.ej, label %bb.aw, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.ek = add nsw i64 %.2270345.i, 1              ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.1255348.i, i64 9
  %i.em = load i8, ptr %i.el, align 1, !tbaa !25
  %.not310.i = icmp eq i8 %i.em, 0
  br i1 %.not310.i, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.en = load ptr, ptr %.1255348.i, align 8, !tbaa !25 ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !29
  %i.ep = add i32 %i.eo, 1
  store i32 %i.ep, ptr %i.en, align 4, !tbaa !29
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ar
  %i.eq = call ptr @zend_hash_next_index_insert_new(ptr noundef nonnull %.0, ptr noundef nonnull %.1255348.i) #18 ; 0 uses
  call void @zend_hash_packed_del_val(ptr noundef nonnull %i.ca, ptr noundef nonnull %.1255348.i) #18
  %i.er = icmp eq i32 %.1259346.i, %.3252350.i
  br i1 %i.er, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.es = load i8, ptr %i.dz, align 2, !tbaa !25
  %.not.i318.i = icmp eq i8 %i.es, 0
  br i1 %.not.i318.i, label %zend_hash_iterators_update.exit319.i, label %bb.av, !prof !27

bb.av:                                            ; preds = %bb.au
  call void @_zend_hash_iterators_update(ptr noundef nonnull %i.ca, i32 noundef %.3252350.i, i32 noundef %i.eb) #18
  br label %zend_hash_iterators_update.exit319.i

zend_hash_iterators_update.exit319.i:             ; preds = %bb.av, %bb.au
  %i.et = add nuw i32 %.3252350.i, 1
  %i.eu = call i32 @zend_hash_iterators_lower_pos(ptr noundef nonnull %i.ca, i32 noundef %i.et) #18
  br label %bb.aw

bb.aw:                                            ; preds = %zend_hash_iterators_update.exit319.i, %bb.at, %bb.aq
  %.3271.i = phi i64 [ %.2270345.i, %bb.aq ], [ %i.ek, %zend_hash_iterators_update.exit319.i ], [ %i.ek, %bb.at ] ; 3 uses
  %.4253.i = phi i32 [ %.3252350.i, %bb.aq ], [ %i.eu, %zend_hash_iterators_update.exit319.i ], [ %.3252350.i, %bb.at ] ; 2 uses
  %i.ev = add nuw i32 %.1259346.i, 1              ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.1255348.i, i64 16
  %i.ex = sub nsw i64 %.3271.i, %.0285.i
  %i.ey = icmp slt i64 %i.ex, %.0286.i
  br i1 %i.ey, label %bb.ap, label %.critedge2.i, !llvm.loop !237

bb.ax:                                            ; preds = %bb.bc, %.lr.ph364.i
  %.0247363.i = phi i64 [ %.0268.lcssa.i, %.lr.ph364.i ], [ %.1248.i, %bb.bc ] ; 2 uses
  %.5362.i = phi i32 [ %.0249.lcssa.i, %.lr.ph364.i ], [ %.6.i, %bb.bc ] ; 6 uses
  %.2256361.i = phi ptr [ %.0254.lcssa.i, %.lr.ph364.i ], [ %i.fk, %bb.bc ] ; 3 uses
  %.2260359.i = phi i32 [ %.0258.lcssa.i, %.lr.ph364.i ], [ %i.fj, %bb.bc ] ; 4 uses
  %i.ez = load i32, ptr %i.de, align 8, !tbaa !36
  %i.fa = icmp ult i32 %.2260359.i, %i.ez
  br i1 %i.fa, label %bb.ay, label %.critedge2.i

bb.ay:                                            ; preds = %bb.ax
  %i.fb = getelementptr inbounds nuw i8, ptr %.2256361.i, i64 8
  %i.fc = load i8, ptr %i.fb, align 8, !tbaa !25
  %i.fd = icmp eq i8 %i.fc, 0
  br i1 %i.fd, label %bb.bc, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.fe = add nsw i64 %.0247363.i, 1              ; 2 uses
  call void @zend_hash_packed_del_val(ptr noundef nonnull %i.ca, ptr noundef nonnull %.2256361.i) #18
  %i.ff = icmp eq i32 %.2260359.i, %.5362.i
  br i1 %i.ff, label %bb.ba, label %bb.bc

bb.ba:                                            ; preds = %bb.az
  %i.fg = load i8, ptr %i.ec, align 2, !tbaa !25
  %.not.i316.i = icmp eq i8 %i.fg, 0
  br i1 %.not.i316.i, label %zend_hash_iterators_update.exit317.i, label %bb.bb, !prof !27

bb.bb:                                            ; preds = %bb.ba
  call void @_zend_hash_iterators_update(ptr noundef nonnull %i.ca, i32 noundef %.5362.i, i32 noundef %i.ee) #18
  br label %zend_hash_iterators_update.exit317.i

zend_hash_iterators_update.exit317.i:             ; preds = %bb.bb, %bb.ba
  %i.fh = add nuw i32 %.5362.i, 1
  %i.fi = call i32 @zend_hash_iterators_lower_pos(ptr noundef nonnull %i.ca, i32 noundef %i.fh) #18
  br label %bb.bc

bb.bc:                                            ; preds = %zend_hash_iterators_update.exit317.i, %bb.az, %bb.ay
  %.6.i = phi i32 [ %.5362.i, %bb.ay ], [ %i.fi, %zend_hash_iterators_update.exit317.i ], [ %.5362.i, %bb.az ] ; 2 uses
  %.1248.i = phi i64 [ %.0247363.i, %bb.ay ], [ %i.fe, %zend_hash_iterators_update.exit317.i ], [ %i.fe, %bb.az ] ; 2 uses
end_hunk_0
