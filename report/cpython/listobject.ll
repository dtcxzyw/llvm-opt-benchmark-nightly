Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/listobject?download=true
inline.NumInlined: 457
inline.NumDeleted: 100
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@list_sort_impl:bb.a
  %i.aj = icmp eq ptr %.val194, @PyUnicode_Type
  br label %.critedge

.lr.ph330.split.us.preheader:                     ; preds = %bb.k
  %i.ak = getelementptr i8, ptr %i.ae, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !50
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %.val191 = load ptr, ptr %i.am, align 8, !tbaa !42 ; 4 uses
  %i.an = icmp eq ptr %.val191, @PyLong_Type
  %i.ao = icmp eq ptr %.val191, @PyUnicode_Type
  br label %.lr.ph330.split.us

.lr.ph330.split.us:                               ; preds = %.lr.ph330.split.us.preheader, %.thread248.us
  %.0138329.us = phi i32 [ %.2140.ph.us, %.thread248.us ], [ 1, %.lr.ph330.split.us.preheader ] ; 4 uses
  %.0141328.us = phi i32 [ %.2143.ph.us, %.thread248.us ], [ 1, %.lr.ph330.split.us.preheader ] ; 4 uses
  %.0145327.us = phi i32 [ %.0145.mux.us, %.thread248.us ], [ 1, %.lr.ph330.split.us.preheader ]
  %.2154326.us = phi i64 [ %i.bd, %.thread248.us ], [ 0, %.lr.ph330.split.us.preheader ] ; 2 uses
  %i.ap = getelementptr [8 x i8], ptr %.sroa.0.0, i64 %.2154326.us
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !50 ; 3 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 8
  %.val193.us = load ptr, ptr %i.ar, align 8, !tbaa !42
  %.not296.us = icmp eq ptr %.val193.us, @PyTuple_Type
  br i1 %.not296.us, label %bb.l, label %.loopexit.thread.sink.split

bb.l:                                             ; preds = %.lr.ph330.split.us
  %i.as = getelementptr i8, ptr %i.aq, i64 16
  %.val187.us = load i64, ptr %i.as, align 8, !tbaa !29
  %.not172.us = icmp eq i64 %.val187.us, 0
  br i1 %.not172.us, label %.loopexit.thread.sink.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr i8, ptr %i.aq, i64 32
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !50 ; 3 uses
  %i.av = getelementptr i8, ptr %i.au, i64 8
  %.val192.us = load ptr, ptr %i.av, align 8, !tbaa !42
  %.not297.us = icmp eq ptr %.val192.us, %.val191
  %.0145.mux.us = select i1 %.not297.us, i32 %.0145327.us, i32 0 ; 3 uses
  %.not174.us = icmp eq i32 %.0145.mux.us, 0
  br i1 %.not174.us, label %.thread248.us, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aw = icmp ne i32 %.0138329.us, 0
  %or.cond.us = select i1 %i.an, i1 %i.aw, i1 false
  br i1 %or.cond.us, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ax = icmp ne i32 %.0141328.us, 0
  %or.cond3.us = select i1 %i.ao, i1 %i.ax, i1 false
  br i1 %or.cond3.us, label %bb.p, label %.thread248.us

bb.p:                                             ; preds = %bb.o
  %i.ay = getelementptr i8, ptr %i.au, i64 32
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = and i32 %i.az, 28
  %.not176.us = icmp eq i32 %i.ba, 4
  %spec.select.us = zext i1 %.not176.us to i32
  br label %.thread248.us

bb.q:                                             ; preds = %bb.n
  %i.bb = getelementptr i8, ptr %i.au, i64 16
  %.val195.us = load i64, ptr %i.bb, align 8, !tbaa !65
  %i.bc = icmp ult i64 %.val195.us, 16
  %spec.select290.us = zext i1 %i.bc to i32
  br label %.thread248.us

.thread248.us:                                    ; preds = %bb.q, %bb.p, %bb.o, %bb.m
  %.2143.ph.us = phi i32 [ %.0141328.us, %bb.q ], [ %.0141328.us, %bb.m ], [ %.0141328.us, %bb.o ], [ %spec.select.us, %bb.p ] ; 2 uses
  %.2140.ph.us = phi i32 [ %spec.select290.us, %bb.q ], [ %.0138329.us, %bb.m ], [ %.0138329.us, %bb.o ], [ %.0138329.us, %bb.p ] ; 2 uses
  %i.bd = add nuw nsw i64 %.2154326.us, 1         ; 2 uses
  %exitcond363.not = icmp eq i64 %i.bd, %.val189
  br i1 %exitcond363.not, label %._crit_edge331.loopexit, label %.lr.ph330.split.us, !llvm.loop !68

.critedge:                                        ; preds = %.critedge.preheader, %.thread248
  %.0138329 = phi i32 [ %.2140.ph, %.thread248 ], [ 1, %.critedge.preheader ] ; 3 uses
  %.0141328 = phi i32 [ %.2143.ph, %.thread248 ], [ 1, %.critedge.preheader ] ; 3 uses
  %.2154326 = phi i64 [ %i.bo, %.thread248 ], [ 0, %.critedge.preheader ] ; 2 uses
  %i.be = getelementptr [8 x i8], ptr %.sroa.0.0, i64 %.2154326
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !50 ; 3 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 8
  %.val192 = load ptr, ptr %i.bg, align 8, !tbaa !42
  %.not297 = icmp eq ptr %.val192, %.val194
  br i1 %.not297, label %bb.r, label %.loopexit.thread.sink.split

bb.r:                                             ; preds = %.critedge
  %i.bh = icmp ne i32 %.0138329, 0
  %or.cond = select i1 %i.ai, i1 %i.bh, i1 false
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr i8, ptr %i.bf, i64 16
  %.val195 = load i64, ptr %i.bi, align 8, !tbaa !65
  %i.bj = icmp ult i64 %.val195, 16
  %spec.select290 = zext i1 %i.bj to i32
  br label %.thread248

bb.t:                                             ; preds = %bb.r
  %i.bk = icmp ne i32 %.0141328, 0
  %or.cond3 = select i1 %i.aj, i1 %i.bk, i1 false
  br i1 %or.cond3, label %bb.u, label %.thread248

bb.u:                                             ; preds = %bb.t
  %i.bl = getelementptr i8, ptr %i.bf, i64 32
  %i.bm = load i32, ptr %i.bl, align 8
  %i.bn = and i32 %i.bm, 28
  %.not176 = icmp eq i32 %i.bn, 4
  %spec.select = zext i1 %.not176 to i32
  br label %.thread248

.thread248:                                       ; preds = %bb.s, %bb.u, %bb.t
  %.2143.ph = phi i32 [ %.0141328, %bb.s ], [ %spec.select, %bb.u ], [ %.0141328, %bb.t ] ; 2 uses
  %.2140.ph = phi i32 [ %spec.select290, %bb.s ], [ %.0138329, %bb.u ], [ %.0138329, %bb.t ] ; 2 uses
  %i.bo = add nuw nsw i64 %.2154326, 1            ; 2 uses
  %exitcond361.not = icmp eq i64 %i.bo, %.val189
  br i1 %exitcond361.not, label %._crit_edge331, label %.critedge, !llvm.loop !68

._crit_edge331.loopexit:                          ; preds = %.thread248.us
  %i.bp = icmp eq i32 %.0145.mux.us, 0
  br label %._crit_edge331

._crit_edge331:                                   ; preds = %.thread248, %._crit_edge331.loopexit
  %i.bq = phi ptr [ %.val191, %._crit_edge331.loopexit ], [ %.val194, %.thread248 ] ; 5 uses
  %i.br = phi i1 [ true, %._crit_edge331.loopexit ], [ false, %.thread248 ] ; 6 uses
  %.0145.lcssa = phi i1 [ %i.bp, %._crit_edge331.loopexit ], [ false, %.thread248 ]
  %.0141.lcssa = phi i32 [ %.2143.ph.us, %._crit_edge331.loopexit ], [ %.2143.ph, %.thread248 ]
  %.0138.lcssa = phi i32 [ %.2140.ph.us, %._crit_edge331.loopexit ], [ %.2140.ph, %.thread248 ]
  br i1 %.0145.lcssa, label %.split267, label %bb.v

bb.v:                                             ; preds = %._crit_edge331
  %i.bs = icmp eq ptr %i.bq, @PyUnicode_Type
  %i.bt = icmp ne i32 %.0141.lcssa, 0
  %or.cond5 = select i1 %i.bs, i1 %i.bt, i1 false
  br i1 %or.cond5, label %.split, label %bb.w

.split:                                           ; preds = %bb.v
  %i.bu = getelementptr inbounds nuw i8, ptr %3, i64 4152
  store ptr @unsafe_latin_compare, ptr %i.bu, align 8, !tbaa !69
  br i1 %i.br, label %.thread272, label %.loopexit.thread

bb.w:                                             ; preds = %bb.v
  %i.bv = icmp eq ptr %i.bq, @PyLong_Type
  %i.bw = icmp ne i32 %.0138.lcssa, 0
  %or.cond7 = select i1 %i.bv, i1 %i.bw, i1 false
  br i1 %or.cond7, label %.split268, label %bb.x

.split268:                                        ; preds = %bb.w
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 4152
  store ptr @unsafe_long_compare, ptr %i.bx, align 8, !tbaa !69
  br i1 %i.br, label %.thread272, label %.loopexit.thread

bb.x:                                             ; preds = %bb.w
  %i.by = icmp eq ptr %i.bq, @PyFloat_Type
  br i1 %i.by, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bz = getelementptr i8, ptr %i.bq, i64 200
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !72 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 4160
  store ptr %i.ca, ptr %i.cb, align 8, !tbaa !73
  %.not178 = icmp eq ptr %i.ca, null
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 4152 ; 2 uses
  br i1 %.not178, label %.split270, label %.split269

.split269:                                        ; preds = %bb.y
  store ptr @unsafe_object_compare, ptr %i.cc, align 8, !tbaa !69
  br i1 %i.br, label %bb.aa, label %.loopexit.thread

.split270:                                        ; preds = %bb.y
  store ptr @safe_object_compare, ptr %i.cc, align 8, !tbaa !69
  br i1 %i.br, label %bb.aa, label %.loopexit.thread

.split267:                                        ; preds = %._crit_edge331
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 4152
  store ptr @safe_object_compare, ptr %i.cd, align 8, !tbaa !69
  br i1 %i.br, label %bb.aa, label %.loopexit.thread

bb.z:                                             ; preds = %bb.x
  %i.ce = getelementptr inbounds nuw i8, ptr %3, i64 4152
  store ptr @unsafe_float_compare, ptr %i.ce, align 8, !tbaa !69
  br i1 %i.br, label %.thread272, label %.loopexit.thread

bb.aa:                                            ; preds = %.split270, %.split269, %.split267
  %i.cf = phi ptr [ @safe_object_compare, %.split270 ], [ @unsafe_object_compare, %.split269 ], [ @safe_object_compare, %.split267 ]
  %i.cg = icmp eq ptr %i.bq, @PyTuple_Type
  %spec.select436 = select i1 %i.cg, ptr @safe_object_compare, ptr %i.cf
  br label %.thread272

.thread272:                                       ; preds = %bb.aa, %.split268, %.split, %bb.z
  %.sink = phi ptr [ %spec.select436, %bb.aa ], [ @unsafe_float_compare, %bb.z ], [ @unsafe_latin_compare, %.split ], [ @unsafe_long_compare, %.split268 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 4168
  store ptr %.sink, ptr %i.ch, align 8, !tbaa !74
  br label %.loopexit.thread.sink.split

.loopexit.thread.sink.split:                      ; preds = %.critedge, %bb.l, %.lr.ph330.split.us, %.thread272
  %safe_object_compare.sink = phi ptr [ @unsafe_tuple_compare, %.thread272 ], [ @safe_object_compare, %bb.l ], [ @safe_object_compare, %.lr.ph330.split.us ], [ @safe_object_compare, %.critedge ]
  %i.ci = getelementptr inbounds nuw i8, ptr %3, i64 4152
  store ptr %safe_object_compare.sink, ptr %i.ci, align 8, !tbaa !69
  br label %.loopexit.thread

.loopexit.thread:                                 ; preds = %.loopexit.thread.sink.split, %bb.e, %.split270, %.split269, %.split268, %.split267, %.split, %bb.z, %.loopexit
  %i.cj = phi i1 [ false, %bb.e ], [ false, %.loopexit ], [ true, %.split270 ], [ true, %.split269 ], [ true, %.split268 ], [ true, %.split267 ], [ true, %.split ], [ true, %bb.z ], [ true, %.loopexit.thread.sink.split ]
  %.1151411 = phi ptr [ %i.o, %bb.e ], [ %.1151, %.loopexit ], [ %.1151, %.split270 ], [ %.1151, %.split269 ], [ %.1151, %.split268 ], [ %.1151, %.split267 ], [ %.1151, %.split ], [ %.1151, %bb.z ], [ %.1151, %.loopexit.thread.sink.split ] ; 6 uses
  %.sroa.0.0410 = phi ptr [ %i.o, %bb.e ], [ %.sroa.0.0, %.loopexit ], [ %.sroa.0.0, %.split270 ], [ %.sroa.0.0, %.split269 ], [ %.sroa.0.0, %.split268 ], [ %.sroa.0.0, %.split267 ], [ %.sroa.0.0, %.split ], [ %.sroa.0.0, %bb.z ], [ %.sroa.0.0, %.loopexit.thread.sink.split ] ; 2 uses
  %.sroa.23.0409 = phi ptr [ %i.d, %bb.e ], [ %.sroa.23.0, %.loopexit ], [ %.sroa.23.0, %.split270 ], [ %.sroa.23.0, %.split269 ], [ %.sroa.23.0, %.split268 ], [ %.sroa.23.0, %.split267 ], [ %.sroa.23.0, %.split ], [ %.sroa.23.0, %bb.z ], [ %.sroa.23.0, %.loopexit.thread.sink.split ]
  %i.ck = icmp ne ptr %.1151411, null             ; 3 uses
  br i1 %i.ck, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %.loopexit.thread
  %i.cl = add i64 %.val189, 1                     ; 2 uses
  %i.cm = sdiv i64 %i.cl, 2
  %i.cn = icmp sgt i64 %i.cl, 257
  %spec.select.i = select i1 %i.cn, i64 128, i64 %i.cm ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 2104
  %i.cp = getelementptr [8 x i8], ptr %i.co, i64 %spec.select.i
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.loopexit.thread
  %spec.select.sink.i = phi i64 [ %spec.select.i, %bb.ab ], [ 256, %.loopexit.thread ]
  %.sink.i = phi ptr [ %i.cp, %bb.ab ], [ null, %.loopexit.thread ]
  %i.cq = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %spec.select.sink.i, ptr %i.cq, align 8, !tbaa !75
  %i.cr = getelementptr inbounds nuw i8, ptr %3, i64 32
  store ptr %.sink.i, ptr %i.cr, align 8, !tbaa !76
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 2104 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 3 uses
  store ptr %i.cs, ptr %i.ct, align 8, !tbaa !77
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  store i32 0, ptr %i.cu, align 8, !tbaa !78
  store i64 7, ptr %3, align 8, !tbaa !79
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  store i64 %.val189, ptr %i.cv, align 8, !tbaa !80
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %.sroa.0.0410, ptr %i.cw, align 8, !tbaa !81
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ad, %bb.ac
  %storemerge24.i = phi i64 [ 0, %bb.ac ], [ %i.cz, %bb.ad ] ; 4 uses
  %i.cx = ashr i64 %.val189, %storemerge24.i
  %i.cy = icmp sgt i64 %i.cx, 63
  %i.cz = add i64 %storemerge24.i, 1
  br i1 %i.cy, label %bb.ad, label %merge_init.exit, !llvm.loop !82

merge_init.exit:                                  ; preds = %bb.ad
  %i.da = getelementptr inbounds nuw i8, ptr %3, i64 4184 ; 2 uses
  store i64 %storemerge24.i, ptr %i.da, align 8, !tbaa !83
  %i.db = trunc i64 %storemerge24.i to i32
  %notmask.i = shl nsw i32 -1, %i.db
  %i.dc = xor i32 %notmask.i, -1
  %i.dd = zext nneg i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw i8, ptr %3, i64 4192 ; 2 uses
  store i64 %i.dd, ptr %i.de, align 8, !tbaa !84
  %i.df = getelementptr inbounds nuw i8, ptr %3, i64 4176 ; 3 uses
  store i64 0, ptr %i.df, align 8, !tbaa !85
  %i.dg = icmp slt i64 %.val189, 2
  br i1 %i.dg, label %found_new_run.exit.thread283, label %bb.ae

bb.ae:                                            ; preds = %merge_init.exit
  %.not179 = icmp eq i32 %2, 0
  br i1 %.not179, label %reverse_slice.exit204, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dh = getelementptr [8 x i8], ptr %.1151411, i64 %.val189
  %.01011.i = getelementptr i8, ptr %i.dh, i64 -8 ; 2 uses
  %i.di = icmp ult ptr %.1151411, %.01011.i
  %or.cond292 = select i1 %i.ck, i1 %i.di, i1 false
  br i1 %or.cond292, label %.lr.ph.i, label %reverse_slice.exit

.lr.ph.i:                                         ; preds = %bb.af, %.lr.ph.i
  %.01013.i = phi ptr [ %.010.i, %.lr.ph.i ], [ %.01011.i, %bb.af ] ; 3 uses
  %.012.i = phi ptr [ %i.dl, %.lr.ph.i ], [ %.1151411, %bb.af ] ; 3 uses
  %i.dj = load ptr, ptr %.012.i, align 8, !tbaa !50
  %i.dk = load ptr, ptr %.01013.i, align 8, !tbaa !50
  store ptr %i.dk, ptr %.012.i, align 8, !tbaa !50
  store ptr %i.dj, ptr %.01013.i, align 8, !tbaa !50
  %i.dl = getelementptr i8, ptr %.012.i, i64 8    ; 2 uses
  %.010.i = getelementptr i8, ptr %.01013.i, i64 -8 ; 2 uses
  %i.dm = icmp ult ptr %i.dl, %.010.i
  br i1 %i.dm, label %.lr.ph.i, label %reverse_slice.exit, !llvm.loop !86

reverse_slice.exit:                               ; preds = %.lr.ph.i, %bb.af
  %i.dn = getelementptr [8 x i8], ptr %i.d, i64 %.val189
  %.01011.i199 = getelementptr i8, ptr %i.dn, i64 -8 ; 2 uses
  %i.do = icmp ult ptr %i.d, %.01011.i199
  br i1 %i.do, label %.lr.ph.i200, label %reverse_slice.exit204

.lr.ph.i200:                                      ; preds = %reverse_slice.exit, %.lr.ph.i200
  %.01013.i201 = phi ptr [ %.010.i203, %.lr.ph.i200 ], [ %.01011.i199, %reverse_slice.exit ] ; 3 uses
  %.012.i202 = phi ptr [ %i.dr, %.lr.ph.i200 ], [ %i.d, %reverse_slice.exit ] ; 3 uses
  %i.dp = load ptr, ptr %.012.i202, align 8, !tbaa !50
  %i.dq = load ptr, ptr %.01013.i201, align 8, !tbaa !50
  store ptr %i.dq, ptr %.012.i202, align 8, !tbaa !50
  store ptr %i.dp, ptr %.01013.i201, align 8, !tbaa !50
  %i.dr = getelementptr i8, ptr %.012.i202, i64 8 ; 2 uses
  %.010.i203 = getelementptr i8, ptr %.01013.i201, i64 -8 ; 2 uses
  %i.ds = icmp ult ptr %i.dr, %.010.i203
  br i1 %i.ds, label %.lr.ph.i200, label %reverse_slice.exit204, !llvm.loop !86

reverse_slice.exit204:                            ; preds = %.lr.ph.i200, %reverse_slice.exit, %bb.ae
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 4152 ; 7 uses
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 5 uses
  br label %bb.ag

bb.ag:                                            ; preds = %found_new_run.exit, %reverse_slice.exit204
  %.sroa.23.1 = phi ptr [ %.sroa.23.0409, %reverse_slice.exit204 ], [ %spec.select293, %found_new_run.exit ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0410, %reverse_slice.exit204 ], [ %i.le, %found_new_run.exit ] ; 24 uses
  %.0159 = phi i64 [ %.val189, %reverse_slice.exit204 ], [ %i.lg, %found_new_run.exit ] ; 12 uses
  %.8.val.fr.i = freeze ptr %.sroa.23.1           ; 20 uses
  %i.dv = icmp sgt i64 %.0159, 1
  br i1 %i.dv, label %.lr.ph.i206, label %._crit_edge.thread182.i

.lr.ph.i206:                                      ; preds = %bb.ag, %bb.ai
  %.068141.i = phi i64 [ %i.ed, %bb.ai ], [ 1, %bb.ag ] ; 8 uses
  %i.dw = load ptr, ptr %i.dt, align 8, !tbaa !69
  %i.dx = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.068141.i ; 3 uses
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !50
  %i.dz = getelementptr i8, ptr %i.dx, i64 -8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !50
  %i.eb = call i32 %i.dw(ptr noundef %i.dy, ptr noundef %i.ea, ptr noundef nonnull %3) #13, !inline_history !87 ; 2 uses
  %i.ec = icmp slt i32 %i.eb, 0
  br i1 %i.ec, label %found_new_run.exit.thread283, label %bb.ah

bb.ah:                                            ; preds = %.lr.ph.i206
  %.not.i207 = icmp eq i32 %i.eb, 0
  br i1 %.not.i207, label %bb.ai, label %._crit_edge.i

bb.ai:                                            ; preds = %bb.ah
  %i.ed = add nuw nsw i64 %.068141.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ed, %.0159
  br i1 %exitcond.not.i, label %count_run.exit, label %.lr.ph.i206, !llvm.loop !88

._crit_edge.i:                                    ; preds = %bb.ah
  %i.ee = getelementptr i8, ptr %i.dx, i64 -8     ; 3 uses
  %i.ef = icmp samesign ugt i64 %.068141.i, 1
  br i1 %i.ef, label %bb.aj, label %sortslice_reverse.exit.i

._crit_edge.thread182.i:                          ; preds = %bb.ag
  %i.eg = icmp eq i64 %.0159, 1
  br i1 %i.eg, label %count_run.exit.thread275, label %sortslice_reverse.exit.i

bb.aj:                                            ; preds = %._crit_edge.i
  %i.eh = load ptr, ptr %i.dt, align 8, !tbaa !69
  %i.ei = load ptr, ptr %.sroa.0.1, align 8, !tbaa !50
  %i.ej = load ptr, ptr %i.ee, align 8, !tbaa !50
  %i.ek = call i32 %i.eh(ptr noundef %i.ei, ptr noundef %i.ej, ptr noundef nonnull %3) #13, !inline_history !87 ; 2 uses
  %i.el = icmp slt i32 %i.ek, 0
  br i1 %i.el, label %found_new_run.exit.thread283, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not77.i = icmp eq i32 %i.ek, 0
  br i1 %.not77.i, label %bb.al, label %count_run.exit.thread275

bb.al:                                            ; preds = %bb.ak
  %i.em = icmp ult ptr %.sroa.0.1, %i.ee
  br i1 %i.em, label %.lr.ph.i.i.i, label %reverse_slice.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.al, %.lr.ph.i.i.i
  %.01013.i.i.i = phi ptr [ %.010.i.i.i, %.lr.ph.i.i.i ], [ %i.ee, %bb.al ] ; 3 uses
  %.012.i.i.i = phi ptr [ %i.ep, %.lr.ph.i.i.i ], [ %.sroa.0.1, %bb.al ] ; 3 uses
  %i.en = load ptr, ptr %.012.i.i.i, align 8, !tbaa !50
  %i.eo = load ptr, ptr %.01013.i.i.i, align 8, !tbaa !50
  store ptr %i.eo, ptr %.012.i.i.i, align 8, !tbaa !50
  store ptr %i.en, ptr %.01013.i.i.i, align 8, !tbaa !50
  %i.ep = getelementptr i8, ptr %.012.i.i.i, i64 8 ; 2 uses
  %.010.i.i.i = getelementptr i8, ptr %.01013.i.i.i, i64 -8 ; 2 uses
  %i.eq = icmp ult ptr %i.ep, %.010.i.i.i
  br i1 %i.eq, label %.lr.ph.i.i.i, label %reverse_slice.exit.i.i, !llvm.loop !86

reverse_slice.exit.i.i:                           ; preds = %.lr.ph.i.i.i, %bb.al
  %.not.i.i = icmp ne ptr %.8.val.fr.i, null
  %i.er = getelementptr [8 x i8], ptr %.8.val.fr.i, i64 %.068141.i
  %.01011.i6.i.i = getelementptr i8, ptr %i.er, i64 -8 ; 2 uses
  %i.es = icmp ult ptr %.8.val.fr.i, %.01011.i6.i.i
  %or.cond.i.i = and i1 %.not.i.i, %i.es
  br i1 %or.cond.i.i, label %.lr.ph.i7.i.i, label %sortslice_reverse.exit.i

.lr.ph.i7.i.i:                                    ; preds = %reverse_slice.exit.i.i, %.lr.ph.i7.i.i
  %.01013.i8.i.i = phi ptr [ %.010.i10.i.i, %.lr.ph.i7.i.i ], [ %.01011.i6.i.i, %reverse_slice.exit.i.i ] ; 3 uses
  %.012.i9.i.i = phi ptr [ %i.ev, %.lr.ph.i7.i.i ], [ %.8.val.fr.i, %reverse_slice.exit.i.i ] ; 3 uses
  %i.et = load ptr, ptr %.012.i9.i.i, align 8, !tbaa !50
  %i.eu = load ptr, ptr %.01013.i8.i.i, align 8, !tbaa !50
  store ptr %i.eu, ptr %.012.i9.i.i, align 8, !tbaa !50
  store ptr %i.et, ptr %.01013.i8.i.i, align 8, !tbaa !50
  %i.ev = getelementptr i8, ptr %.012.i9.i.i, i64 8 ; 2 uses
  %.010.i10.i.i = getelementptr i8, ptr %.01013.i8.i.i, i64 -8 ; 2 uses
  %i.ew = icmp ult ptr %i.ev, %.010.i10.i.i
  br i1 %i.ew, label %.lr.ph.i7.i.i, label %sortslice_reverse.exit.i, !llvm.loop !86

sortslice_reverse.exit.i:                         ; preds = %.lr.ph.i7.i.i, %reverse_slice.exit.i.i, %._crit_edge.i, %._crit_edge.thread182.i
  %.068.lcssa184186.i = phi i64 [ 1, %._crit_edge.thread182.i ], [ %.068141.i, %._crit_edge.i ], [ %.068141.i, %reverse_slice.exit.i.i ], [ %.068141.i, %.lr.ph.i7.i.i ] ; 2 uses
  %.169144.i = add nuw i64 %.068.lcssa184186.i, 1 ; 3 uses
  %i.ex = icmp slt i64 %.169144.i, %.0159
  br i1 %i.ex, label %.lr.ph148.i, label %sortslice_reverse.exit113.i

.lr.ph148.i:                                      ; preds = %sortslice_reverse.exit.i
  %.not.i83.i = icmp eq ptr %.8.val.fr.i, null    ; 2 uses
  br label %bb.am

bb.am:                                            ; preds = %sortslice_reverse.exit97.i, %.lr.ph148.i
  %.169147.i = phi i64 [ %.169144.i, %.lr.ph148.i ], [ %.169.i, %sortslice_reverse.exit97.i ] ; 5 uses
  %.0146.i = phi i64 [ 0, %.lr.ph148.i ], [ %.1.i, %sortslice_reverse.exit97.i ] ; 5 uses
  %.169.in145.i = phi i64 [ %.068.lcssa184186.i, %.lr.ph148.i ], [ %.169147.i, %sortslice_reverse.exit97.i ] ; 3 uses
  %i.ey = load ptr, ptr %i.dt, align 8, !tbaa !69
  %i.ez = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.169147.i ; 2 uses
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !50
  %i.fb = getelementptr [8 x i8], ptr %.sroa.0.1, i64 %.169.in145.i ; 2 uses
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !50
end_hunk_0
