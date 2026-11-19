Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/jq/original/compile?download=true
inline.NumInlined: 315
inline.NumDeleted: 14
begin_hunk_0_@compile:bb.a
  %i.fg = getelementptr inbounds nuw i8, ptr %.0275454, i64 24
  store i16 %i.ff, ptr %i.fg, align 8, !tbaa !62
  %i.fh = getelementptr inbounds nuw i8, ptr %.0275454, i64 144
  store ptr %i.ds, ptr %i.fh, align 8, !tbaa !100
  %i.fi = getelementptr inbounds nuw i8, ptr %.0275454, i64 88
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !38
  %i.fk = tail call { i64, ptr } @jv_string(ptr noundef %i.fj) #15 ; 2 uses
  %i.fl = extractvalue { i64, ptr } %i.fk, 0
  %i.fm = extractvalue { i64, ptr } %i.fk, 1
  %i.fn = tail call { i64, ptr } @jv_array_append(i64 %.sroa.0100.0453, ptr %.sroa.6.0452, i64 %i.fl, ptr %i.fm) #15 ; 2 uses
  %.sroa.6.0 = extractvalue { i64, ptr } %i.fn, 1 ; 2 uses
  %.sroa.0100.0 = extractvalue { i64, ptr } %i.fn, 0 ; 2 uses
  %.0275 = load ptr, ptr %.0275454, align 8, !tbaa !46 ; 2 uses
  %.not293 = icmp eq ptr %.0275, null
  br i1 %.not293, label %.loopexit344, label %.lr.ph455, !llvm.loop !94

.loopexit344:                                     ; preds = %bb.af, %bb.z, %bb.ae
  %.sroa.6.0410 = phi ptr [ %.sroa.6.0452, %bb.ae ], [ %.sroa.6.0448, %bb.z ], [ %.sroa.6.0, %bb.af ]
  %.sroa.0100.0406 = phi i64 [ %.sroa.0100.0453, %bb.ae ], [ %.sroa.0100.0449, %bb.z ], [ %.sroa.0100.0, %bb.af ]
  %.5 = phi i32 [ %i.fd, %bb.ae ], [ %.4460, %bb.z ], [ %.4460, %bb.af ]
  %i.fo = tail call { i64, ptr } @jv_string(ptr noundef nonnull @.str.59) #15 ; 2 uses
  %i.fp = extractvalue { i64, ptr } %i.fo, 0
  %i.fq = extractvalue { i64, ptr } %i.fo, 1
  %i.fr = load i64, ptr %i.ec, align 8
  %i.fs = load ptr, ptr %.sroa.4110.0..sroa_idx, align 8
  %i.ft = tail call { i64, ptr } @jv_object_set(i64 %i.fr, ptr %i.fs, i64 %i.fp, ptr %i.fq, i64 %.sroa.0100.0406, ptr %.sroa.6.0410) #15 ; 2 uses
  %i.fu = extractvalue { i64, ptr } %i.ft, 0
  %i.fv = extractvalue { i64, ptr } %i.ft, 1
  store i64 %i.fu, ptr %i.ec, align 8
  store ptr %i.fv, ptr %.sroa.4110.0..sroa_idx, align 8, !tbaa !37
  %i.fw = getelementptr inbounds nuw i8, ptr %.0266461, i64 112 ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8
  %i.fy = getelementptr inbounds nuw i8, ptr %.0266461, i64 120
  %i.fz = load ptr, ptr %i.fy, align 8
  %i.ga = tail call fastcc i32 @compile(ptr noundef nonnull %i.ds, ptr %i.fx, ptr %i.fz, ptr noundef %3, i64 %4, ptr %5, ptr noundef %6)
  %i.gb = add nsw i32 %i.ga, %.5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fw, i8 0, i64 16, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %bb.y, %.loopexit344
  %.6 = phi i32 [ %i.gb, %.loopexit344 ], [ %.4460, %bb.y ] ; 2 uses
  %.0266 = load ptr, ptr %.0266461, align 8, !tbaa !46 ; 2 uses
  %.not291 = icmp eq ptr %.0266, null
  br i1 %.not291, label %.loopexit345, label %bb.y, !llvm.loop !95

bb.ah:                                            ; preds = %.loopexit347.thread
  store i32 0, ptr %i.b, align 8, !tbaa !99
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr null, ptr %i.gc, align 8, !tbaa !103
  br label %.loopexit345

.loopexit345:                                     ; preds = %bb.ag, %bb.x, %bb.ah
  %.7 = phi i32 [ %.3, %bb.ah ], [ 0, %bb.x ], [ %.6, %bb.ag ] ; 2 uses
  %i.gd = load i32, ptr %i.cx, align 8, !tbaa !102
  %i.ge = sext i32 %i.gd to i64
  %i.gf = tail call ptr @jv_mem_calloc(i64 noundef %i.ge, i64 noundef 2) #15 ; 9 uses
  store ptr %i.gf, ptr %0, align 8, !tbaa !104
  %i.gg = tail call { i64, ptr } @jv_array() #15  ; 2 uses
  %i.gh = extractvalue { i64, ptr } %i.gg, 0      ; 3 uses
  %i.gi = extractvalue { i64, ptr } %i.gg, 1      ; 3 uses
  %.not294 = icmp eq i32 %.7, 0
  br i1 %.not294, label %.preheader, label %._crit_edge

.preheader:                                       ; preds = %.loopexit345
  br i1 %.not440, label %._crit_edge.thread, label %.lr.ph477

._crit_edge.thread:                               ; preds = %.preheader
  %i.gj = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.gh, ptr %i.gj, align 8
  %.sroa.10.0..sroa_idx540 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.gi, ptr %.sroa.10.0..sroa_idx540, align 8, !tbaa !37
  %i.gk = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 1, ptr %i.gk, align 4, !tbaa !105
  br label %block_free.exit

._crit_edge.loopexit:                             ; preds = %.loopexit
  %i.gl = add nsw i32 %.4273, 2
  br label %._crit_edge

.lr.ph477:                                        ; preds = %.preheader, %.loopexit
  %.0268476 = phi ptr [ %.0268, %.loopexit ], [ %i.u, %.preheader ] ; 15 uses
  %.2255475 = phi i32 [ %.5258, %.loopexit ], [ 0, %.preheader ] ; 9 uses
  %.0269474 = phi i32 [ %.4273, %.loopexit ], [ -1, %.preheader ] ; 9 uses
  %.sroa.059.0473 = phi i64 [ %.sroa.059.2, %.loopexit ], [ %i.gh, %.preheader ] ; 11 uses
  %.sroa.10.0472 = phi ptr [ %.sroa.10.2, %.loopexit ], [ %i.gi, %.preheader ] ; 11 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.0268476, i64 16 ; 2 uses
  %i.gn = load i32, ptr %i.gm, align 8, !tbaa !32
  %i.go = tail call ptr @opcode_describe(i32 noundef %i.gn) #15 ; 2 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 20
  %i.gq = load i32, ptr %i.gp, align 4, !tbaa !31 ; 2 uses
  %i.gr = icmp eq i32 %i.gq, 0
  br i1 %i.gr, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %.lr.ph477
  %i.gs = load i32, ptr %i.gm, align 8, !tbaa !32 ; 2 uses
  %i.gt = trunc i32 %i.gs to i16
  %i.gu = add nsw i32 %.2255475, 1                ; 8 uses
  %i.gv = sext i32 %.2255475 to i64
  %i.gw = getelementptr inbounds [2 x i8], ptr %i.gf, i64 %i.gv ; 7 uses
  store i16 %i.gt, ptr %i.gw, align 2, !tbaa !64
  switch i32 %i.gs, label %bb.az [
    i32 32, label %bb.aj
    i32 31, label %bb.aj
    i32 27, label %bb.ak
    i32 28, label %bb.ap
  ]

bb.aj:                                            ; preds = %bb.ai, %bb.ai
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.1, i32 noundef 1318, ptr noundef nonnull @__PRETTY_FUNCTION__.compile) #16
  unreachable

bb.ak:                                            ; preds = %bb.ai
  %i.gx = getelementptr inbounds nuw i8, ptr %.0268476, i64 80
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !41 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  %i.ha = load i32, ptr %i.gz, align 8, !tbaa !32
  %i.hb = icmp eq i32 %i.ha, 34
  br i1 %i.hb, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  tail call void @__assert_fail(ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.1, i32 noundef 1320, ptr noundef nonnull @__PRETTY_FUNCTION__.compile) #16
  unreachable

bb.am:                                            ; preds = %bb.ak
  %i.hc = getelementptr inbounds nuw i8, ptr %.0268476, i64 128
  %i.hd = load ptr, ptr %i.hc, align 8, !tbaa !106
  %.not305 = icmp eq ptr %i.hd, null
  br i1 %.not305, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void @__assert_fail(ptr noundef nonnull @.str.61, ptr noundef nonnull @.str.1, i32 noundef 1321, ptr noundef nonnull @__PRETTY_FUNCTION__.compile) #16
  unreachable

bb.ao:                                            ; preds = %bb.am
  %i.he = getelementptr inbounds nuw i8, ptr %.0268476, i64 24
  %i.hf = load i16, ptr %i.he, align 8, !tbaa !62
  %i.hg = sext i32 %i.gu to i64
  %i.hh = getelementptr inbounds [2 x i8], ptr %i.gf, i64 %i.hg
  store i16 %i.hf, ptr %i.hh, align 2, !tbaa !64
  %i.hi = getelementptr inbounds nuw i8, ptr %i.gy, i64 24
  %i.hj = load i16, ptr %i.hi, align 8, !tbaa !62
  %i.hk = add nsw i32 %.2255475, 3
  %i.hl = getelementptr i8, ptr %i.gw, i64 4
  store i16 %i.hj, ptr %i.hl, align 2, !tbaa !64
  br label %.loopexit

bb.ap:                                            ; preds = %bb.ai
  %i.hm = getelementptr inbounds nuw i8, ptr %.0268476, i64 80
  %i.hn = load ptr, ptr %i.hm, align 8, !tbaa !41 ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  %i.hp = load i32, ptr %i.ho, align 8, !tbaa !32 ; 2 uses
  switch i32 %i.hp, label %bb.aq [
    i32 33, label %bb.ar
    i32 31, label %bb.ar
  ]

bb.aq:                                            ; preds = %bb.ap
  tail call void @__assert_fail(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.1, i32 noundef 1326, ptr noundef nonnull @__PRETTY_FUNCTION__.compile) #16
  unreachable

bb.ar:                                            ; preds = %bb.ap, %bb.ap
  %i.hq = getelementptr inbounds nuw i8, ptr %.0268476, i64 24
  %i.hr = load i16, ptr %i.hq, align 8, !tbaa !62
  %i.hs = sext i32 %i.gu to i64
  %i.ht = getelementptr inbounds [2 x i8], ptr %i.gf, i64 %i.hs
  store i16 %i.hr, ptr %i.ht, align 2, !tbaa !64
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hn, i64 144
  %i.hv = load ptr, ptr %i.hu, align 8, !tbaa !100 ; 2 uses
  %.not.i = icmp eq ptr %i.hv, null
  br i1 %.not.i, label %bb.as, label %.preheader.i

bb.as:                                            ; preds = %bb.ar
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.1, i32 noundef 1086, ptr noundef nonnull @__PRETTY_FUNCTION__.nesting_level) #16
  unreachable

.preheader.i:                                     ; preds = %bb.ar, %bb.at
  %.020.i = phi i16 [ %i.hw, %bb.at ], [ 0, %bb.ar ] ; 2 uses
  %.01219.i = phi ptr [ %i.hy, %bb.at ], [ %0, %bb.ar ] ; 2 uses
  %.not16.i = icmp eq ptr %i.hv, %.01219.i
  br i1 %.not16.i, label %nesting_level.exit, label %bb.at

bb.at:                                            ; preds = %.preheader.i
  %i.hw = add i16 %.020.i, 1
  %i.hx = getelementptr inbounds nuw i8, ptr %.01219.i, i64 64
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !55 ; 2 uses
  %.not15.i = icmp eq ptr %i.hy, null
  br i1 %.not15.i, label %.critedge17.i, label %.preheader.i, !llvm.loop !96

.critedge17.i:                                    ; preds = %bb.at
  tail call void @__assert_fail(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 1091, ptr noundef nonnull @__PRETTY_FUNCTION__.nesting_level) #16
  unreachable

nesting_level.exit:                               ; preds = %.preheader.i
  %i.hz = getelementptr i8, ptr %i.gw, i64 4
  store i16 %.020.i, ptr %i.hz, align 2, !tbaa !64
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  %i.ib = load i16, ptr %i.ia, align 8, !tbaa !62
  %i.ic = icmp eq i32 %i.hp, 33
  %i.id = select i1 %i.ic, i16 4096, i16 0
  %i.ie = or i16 %i.ib, %i.id
  %i.if = add nsw i32 %.2255475, 4                ; 2 uses
  %i.ig = getelementptr i8, ptr %i.gw, i64 6
  store i16 %i.ie, ptr %i.ig, align 2, !tbaa !64
  %i.ih = getelementptr inbounds nuw i8, ptr %.0268476, i64 128
  %.0267464 = load ptr, ptr %i.ih, align 8, !tbaa !46 ; 2 uses
  %.not304465 = icmp eq ptr %.0267464, null
  br i1 %.not304465, label %.loopexit, label %.lr.ph468

.lr.ph468:                                        ; preds = %nesting_level.exit, %nesting_level.exit318
  %.0267467 = phi ptr [ %.0267, %nesting_level.exit318 ], [ %.0267464, %nesting_level.exit ] ; 3 uses
  %.3256466 = phi i32 [ %9, %nesting_level.exit318 ], [ %i.if, %nesting_level.exit ] ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.0267467, i64 16
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !32
  %i.ik = icmp eq i32 %i.ij, 32
  br i1 %i.ik, label %bb.au, label %bb.av

bb.au:                                            ; preds = %.lr.ph468
  %i.il = getelementptr inbounds nuw i8, ptr %.0267467, i64 80
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !41 ; 3 uses
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 16
  %i.io = load i32, ptr %i.in, align 8, !tbaa !32
  %i.ip = icmp eq i32 %i.io, 33
  br i1 %i.ip, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au, %.lr.ph468
  tail call void @__assert_fail(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.1, i32 noundef 1332, ptr noundef nonnull @__PRETTY_FUNCTION__.compile) #16
  unreachable

bb.aw:                                            ; preds = %bb.au
  %i.iq = getelementptr inbounds nuw i8, ptr %i.im, i64 144
  %i.ir = load ptr, ptr %i.iq, align 8, !tbaa !100 ; 2 uses
  %.not.i311 = icmp eq ptr %i.ir, null
  br i1 %.not.i311, label %bb.ax, label %.preheader.i312

bb.ax:                                            ; preds = %bb.aw
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.1, i32 noundef 1086, ptr noundef nonnull @__PRETTY_FUNCTION__.nesting_level) #16
  unreachable

.preheader.i312:                                  ; preds = %bb.aw, %bb.ay
  %.020.i313 = phi i16 [ %i.is, %bb.ay ], [ 0, %bb.aw ] ; 2 uses
  %.01219.i314 = phi ptr [ %i.iu, %bb.ay ], [ %0, %bb.aw ] ; 2 uses
  %.not16.i315 = icmp eq ptr %i.ir, %.01219.i314
  br i1 %.not16.i315, label %nesting_level.exit318, label %bb.ay

bb.ay:                                            ; preds = %.preheader.i312
  %i.is = add i16 %.020.i313, 1
  %i.it = getelementptr inbounds nuw i8, ptr %.01219.i314, i64 64
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !55 ; 2 uses
  %.not15.i316 = icmp eq ptr %i.iu, null
  br i1 %.not15.i316, label %.critedge17.i317, label %.preheader.i312, !llvm.loop !96

.critedge17.i317:                                 ; preds = %bb.ay
  tail call void @__assert_fail(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 1091, ptr noundef nonnull @__PRETTY_FUNCTION__.nesting_level) #16
  unreachable

nesting_level.exit318:                            ; preds = %.preheader.i312
  %8 = sext i32 %.3256466 to i64
  %i.iv = getelementptr inbounds [2 x i8], ptr %i.gf, i64 %8 ; 2 uses
  store i16 %.020.i313, ptr %i.iv, align 2, !tbaa !64
  %i.iw = getelementptr inbounds nuw i8, ptr %i.im, i64 24
  %i.ix = load i16, ptr %i.iw, align 8, !tbaa !62
  %i.iy = or i16 %i.ix, 4096
  %9 = add nsw i32 %.3256466, 2                   ; 2 uses
  %i.iz = getelementptr i8, ptr %i.iv, i64 2
  store i16 %i.iy, ptr %i.iz, align 2, !tbaa !64
  %.0267 = load ptr, ptr %.0267467, align 8, !tbaa !46 ; 2 uses
  %.not304 = icmp eq ptr %.0267, null
  br i1 %.not304, label %.loopexit, label %.lr.ph468, !llvm.loop !97

bb.az:                                            ; preds = %bb.ai
  %i.ja = getelementptr inbounds nuw i8, ptr %i.go, i64 16
  %i.jb = load i32, ptr %i.ja, align 8, !tbaa !36 ; 4 uses
  %i.jc = and i32 %i.jb, 4
  %.not299 = icmp eq i32 %i.jc, 0
  %i.jd = and i32 %i.jb, 6
  %or.cond308.not = icmp eq i32 %i.jd, 6
  br i1 %or.cond308.not, label %bb.ba, label %bb.be

bb.ba:                                            ; preds = %bb.az
  %i.je = tail call { i64, ptr } @jv_copy(i64 %.sroa.059.0473, ptr %.sroa.10.0472) #15 ; 2 uses
  %i.jf = extractvalue { i64, ptr } %i.je, 0
  %i.jg = extractvalue { i64, ptr } %i.je, 1
  %i.jh = tail call i32 @jv_array_length(i64 %i.jf, ptr %i.jg) #15
  %i.ji = trunc i32 %i.jh to i16
  %i.jj = sext i32 %i.gu to i64
  %i.jk = getelementptr inbounds [2 x i8], ptr %i.gf, i64 %i.jj
  store i16 %i.ji, ptr %i.jk, align 2, !tbaa !64
  %i.jl = getelementptr inbounds nuw i8, ptr %.0268476, i64 40
  %i.jm = load i64, ptr %i.jl, align 8
  %i.jn = getelementptr inbounds nuw i8, ptr %.0268476, i64 48
  %i.jo = load ptr, ptr %i.jn, align 8
  %i.jp = tail call { i64, ptr } @jv_copy(i64 %i.jm, ptr %i.jo) #15 ; 2 uses
  %i.jq = extractvalue { i64, ptr } %i.jp, 0
  %i.jr = extractvalue { i64, ptr } %i.jp, 1
  %i.js = tail call { i64, ptr } @jv_array_append(i64 %.sroa.059.0473, ptr %.sroa.10.0472, i64 %i.jq, ptr %i.jr) #15 ; 2 uses
  %i.jt = extractvalue { i64, ptr } %i.js, 0
  %i.ju = extractvalue { i64, ptr } %i.js, 1
  %i.jv = getelementptr inbounds nuw i8, ptr %.0268476, i64 80
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !41 ; 3 uses
  %.not342 = icmp eq ptr %i.jw, null
  br i1 %.not342, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 144
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !100 ; 2 uses
  %.not.i320 = icmp eq ptr %i.jy, null
  br i1 %.not.i320, label %bb.bc, label %.preheader.i321

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.1, i32 noundef 1086, ptr noundef nonnull @__PRETTY_FUNCTION__.nesting_level) #16
  unreachable

.preheader.i321:                                  ; preds = %bb.bb, %bb.bd
  %.020.i322 = phi i16 [ %i.jz, %bb.bd ], [ 0, %bb.bb ] ; 2 uses
  %.01219.i323 = phi ptr [ %i.kb, %bb.bd ], [ %0, %bb.bb ] ; 2 uses
  %.not16.i324 = icmp eq ptr %i.jy, %.01219.i323
  br i1 %.not16.i324, label %nesting_level.exit327, label %bb.bd

bb.bd:                                            ; preds = %.preheader.i321
  %i.jz = add i16 %.020.i322, 1
  %i.ka = getelementptr inbounds nuw i8, ptr %.01219.i323, i64 64
  %i.kb = load ptr, ptr %i.ka, align 8, !tbaa !55 ; 2 uses
  %.not15.i325 = icmp eq ptr %i.kb, null
  br i1 %.not15.i325, label %.critedge17.i326, label %.preheader.i321, !llvm.loop !96

.critedge17.i326:                                 ; preds = %bb.bd
  tail call void @__assert_fail(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 1091, ptr noundef nonnull @__PRETTY_FUNCTION__.nesting_level) #16
  unreachable

nesting_level.exit327:                            ; preds = %.preheader.i321
  %i.kc = getelementptr i8, ptr %i.gw, i64 4
  store i16 %.020.i322, ptr %i.kc, align 2, !tbaa !64
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.ke = load i16, ptr %i.kd, align 8, !tbaa !62 ; 2 uses
  %i.kf = add nsw i32 %.2255475, 4
  %i.kg = getelementptr i8, ptr %i.gw, i64 6
  store i16 %i.ke, ptr %i.kg, align 2, !tbaa !64
  %i.kh = zext i16 %i.ke to i32
  %spec.select = tail call i32 @llvm.smax.i32(i32 %.0269474, i32 %i.kh)
  br label %.loopexit

bb.be:                                            ; preds = %bb.az
  %i.ki = and i32 %i.jb, 2
  %.not298 = icmp eq i32 %i.ki, 0
  br i1 %.not298, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.kj = tail call { i64, ptr } @jv_copy(i64 %.sroa.059.0473, ptr %.sroa.10.0472) #15 ; 2 uses
  %i.kk = extractvalue { i64, ptr } %i.kj, 0
  %i.kl = extractvalue { i64, ptr } %i.kj, 1
  %i.km = tail call i32 @jv_array_length(i64 %i.kk, ptr %i.kl) #15
  %i.kn = trunc i32 %i.km to i16
  %i.ko = add nsw i32 %.2255475, 2
  %i.kp = sext i32 %i.gu to i64
  %i.kq = getelementptr inbounds [2 x i8], ptr %i.gf, i64 %i.kp
  store i16 %i.kn, ptr %i.kq, align 2, !tbaa !64
  %i.kr = getelementptr inbounds nuw i8, ptr %.0268476, i64 40
  %i.ks = load i64, ptr %i.kr, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %.0268476, i64 48
  %i.ku = load ptr, ptr %i.kt, align 8
  %i.kv = tail call { i64, ptr } @jv_copy(i64 %i.ks, ptr %i.ku) #15 ; 2 uses
  %i.kw = extractvalue { i64, ptr } %i.kv, 0
  %i.kx = extractvalue { i64, ptr } %i.kv, 1
  %i.ky = tail call { i64, ptr } @jv_array_append(i64 %.sroa.059.0473, ptr %.sroa.10.0472, i64 %i.kw, ptr %i.kx) #15 ; 2 uses
  %i.kz = extractvalue { i64, ptr } %i.ky, 0
  %i.la = extractvalue { i64, ptr } %i.ky, 1
  br label %.loopexit

bb.bg:                                            ; preds = %bb.be
  br i1 %.not299, label %bb.bl, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.lb = getelementptr inbounds nuw i8, ptr %.0268476, i64 80
  %i.lc = load ptr, ptr %i.lb, align 8, !tbaa !41 ; 3 uses
  %.not343 = icmp eq ptr %i.lc, null
  br i1 %.not343, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 144
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !100 ; 2 uses
  %.not.i329 = icmp eq ptr %i.le, null
  br i1 %.not.i329, label %bb.bj, label %.preheader.i330

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  tail call void @__assert_fail(ptr noundef nonnull @.str.77, ptr noundef nonnull @.str.1, i32 noundef 1086, ptr noundef nonnull @__PRETTY_FUNCTION__.nesting_level) #16
  unreachable

.preheader.i330:                                  ; preds = %bb.bi, %bb.bk
  %.020.i331 = phi i16 [ %i.lf, %bb.bk ], [ 0, %bb.bi ] ; 2 uses
  %.01219.i332 = phi ptr [ %i.lh, %bb.bk ], [ %0, %bb.bi ] ; 2 uses
  %.not16.i333 = icmp eq ptr %i.le, %.01219.i332
  br i1 %.not16.i333, label %nesting_level.exit336, label %bb.bk

bb.bk:                                            ; preds = %.preheader.i330
  %i.lf = add i16 %.020.i331, 1
  %i.lg = getelementptr inbounds nuw i8, ptr %.01219.i332, i64 64
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !55 ; 2 uses
  %.not15.i334 = icmp eq ptr %i.lh, null
  br i1 %.not15.i334, label %.critedge17.i335, label %.preheader.i330, !llvm.loop !96

.critedge17.i335:                                 ; preds = %bb.bk
  tail call void @__assert_fail(ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.1, i32 noundef 1091, ptr noundef nonnull @__PRETTY_FUNCTION__.nesting_level) #16
  unreachable

nesting_level.exit336:                            ; preds = %.preheader.i330
  %i.li = sext i32 %i.gu to i64
  %i.lj = getelementptr inbounds [2 x i8], ptr %i.gf, i64 %i.li
  store i16 %.020.i331, ptr %i.lj, align 2, !tbaa !64
  %i.lk = getelementptr inbounds nuw i8, ptr %i.lc, i64 24
  %i.ll = load i16, ptr %i.lk, align 8, !tbaa !62 ; 2 uses
  %i.lm = add nsw i32 %.2255475, 3
  %i.ln = getelementptr i8, ptr %i.gw, i64 4
  store i16 %i.ll, ptr %i.ln, align 2, !tbaa !64
  %i.lo = zext i16 %i.ll to i32
  %spec.select309 = tail call i32 @llvm.smax.i32(i32 %.0269474, i32 %i.lo)
  br label %.loopexit

bb.bl:                                            ; preds = %bb.bg
  %i.lp = and i32 %i.jb, 8
  %.not302 = icmp eq i32 %i.lp, 0
  br i1 %.not302, label %bb.br, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.lq = getelementptr inbounds nuw i8, ptr %.0268476, i64 32
  %i.lr = load ptr, ptr %i.lq, align 8, !tbaa !40
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 152
  %i.lt = load i32, ptr %i.ls, align 8, !tbaa !33 ; 3 uses
  %.not303 = icmp eq i32 %i.lt, -1
  br i1 %.not303, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  tail call void @__assert_fail(ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.1, i32 noundef 1353, ptr noundef nonnull @__PRETTY_FUNCTION__.compile) #16
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.lu = icmp sgt i32 %i.lt, %i.gu
  br i1 %i.lu, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  tail call void @__assert_fail(ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.1, i32 noundef 1354, ptr noundef nonnull @__PRETTY_FUNCTION__.compile) #16
  unreachable

bb.bq:                                            ; preds = %bb.bo
  %i.lv = add nsw i32 %.2255475, 2                ; 2 uses
  %i.lw = sub nsw i32 %i.lt, %i.lv
  %i.lx = trunc i32 %i.lw to i16
  %i.ly = sext i32 %i.gu to i64
  %i.lz = getelementptr inbounds [2 x i8], ptr %i.gf, i64 %i.ly
  store i16 %i.lx, ptr %i.lz, align 2, !tbaa !64
  br label %.loopexit

bb.br:                                            ; preds = %bb.bl
  %i.ma = icmp sgt i32 %i.gq, 1
  br i1 %i.ma, label %bb.bs, label %.loopexit

bb.bs:                                            ; preds = %bb.br
  tail call void @__assert_fail(ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.1, i32 noundef 1358, ptr noundef nonnull @__PRETTY_FUNCTION__.compile) #16
  unreachable

.loopexit:                                        ; preds = %nesting_level.exit318, %nesting_level.exit, %bb.ao, %nesting_level.exit327, %nesting_level.exit336, %bb.br, %bb.bq, %bb.bf, %.lr.ph477
  %.sroa.10.2 = phi ptr [ %.sroa.10.0472, %.lr.ph477 ], [ %.sroa.10.0472, %bb.ao ], [ %.sroa.10.0472, %bb.br ], [ %i.ju, %nesting_level.exit327 ], [ %i.la, %bb.bf ], [ %.sroa.10.0472, %nesting_level.exit336 ], [ %.sroa.10.0472, %bb.bq ], [ %.sroa.10.0472, %nesting_level.exit ], [ %.sroa.10.0472, %nesting_level.exit318 ] ; 2 uses
  %.sroa.059.2 = phi i64 [ %.sroa.059.0473, %.lr.ph477 ], [ %.sroa.059.0473, %bb.ao ], [ %.sroa.059.0473, %bb.br ], [ %i.jt, %nesting_level.exit327 ], [ %i.kz, %bb.bf ], [ %.sroa.059.0473, %nesting_level.exit336 ], [ %.sroa.059.0473, %bb.bq ], [ %.sroa.059.0473, %nesting_level.exit ], [ %.sroa.059.0473, %nesting_level.exit318 ] ; 2 uses
  %.4273 = phi i32 [ %.0269474, %.lr.ph477 ], [ %.0269474, %bb.ao ], [ %.0269474, %bb.br ], [ %spec.select, %nesting_level.exit327 ], [ %.0269474, %bb.bf ], [ %spec.select309, %nesting_level.exit336 ], [ %.0269474, %bb.bq ], [ %.0269474, %nesting_level.exit ], [ %.0269474, %nesting_level.exit318 ] ; 2 uses
  %.5258 = phi i32 [ %.2255475, %.lr.ph477 ], [ %i.hk, %bb.ao ], [ %i.gu, %bb.br ], [ %i.kf, %nesting_level.exit327 ], [ %i.ko, %bb.bf ], [ %i.lm, %nesting_level.exit336 ], [ %i.lv, %bb.bq ], [ %i.if, %nesting_level.exit ], [ %9, %nesting_level.exit318 ]
  %.0268 = load ptr, ptr %.0268476, align 8, !tbaa !46 ; 2 uses
  %.not295 = icmp eq ptr %.0268, null
  br i1 %.not295, label %._crit_edge.loopexit, label %.lr.ph477, !llvm.loop !98

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.loopexit345
  %.sroa.10.3 = phi ptr [ %i.gi, %.loopexit345 ], [ %.sroa.10.2, %._crit_edge.loopexit ]
  %.sroa.059.3 = phi i64 [ %i.gh, %.loopexit345 ], [ %.sroa.059.2, %._crit_edge.loopexit ]
  %.5274 = phi i32 [ 1, %.loopexit345 ], [ %i.gl, %._crit_edge.loopexit ]
  %i.mb = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.059.3, ptr %i.mb, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.10.3, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !37
  %i.mc = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.5274, ptr %i.mc, align 4, !tbaa !105
  br i1 %.not440, label %block_free.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph.i
  %.05.i = phi ptr [ %i.md, %.lr.ph.i ], [ %i.u, %._crit_edge ] ; 2 uses
  %i.md = load ptr, ptr %.05.i, align 8, !tbaa !28 ; 2 uses
  tail call fastcc void @inst_free(ptr noundef nonnull %.05.i), !inline_history !43
  %.not.i337 = icmp eq ptr %i.md, null
  br i1 %.not.i337, label %block_free.exit, label %.lr.ph.i, !llvm.loop !0

block_free.exit:                                  ; preds = %.lr.ph.i, %._crit_edge.thread, %._crit_edge
  ret i32 %.7
}

declare void @bytecode_free(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal fastcc i32 @block_bind_subblock_inner(ptr nofree noundef nonnull writeonly captures(none) %0, ptr %1, ptr %2, ptr nofree captures(address_is_null) %3, i32 noundef range(i32 4, 0) %4, i32 noundef %5) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp ne ptr %1, %2
  %.not3 = select i1 %i.a, i1 true, i1 %i.b
  br i1 %.not3, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.1, i32 noundef 307, ptr noundef nonnull @__PRETTY_FUNCTION__.block_bind_subblock_inner) #16
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8, !tbaa !32
  %i.e = tail call ptr @opcode_describe(i32 noundef %i.d) #15
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i32, ptr %i.f, align 8, !tbaa !36
  %i.h = and i32 %i.g, %4                         ; 2 uses
  %i.i = and i32 %4, -2049
  %i.j = icmp eq i32 %i.h, %i.i
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.1, i32 noundef 308, ptr noundef nonnull @__PRETTY_FUNCTION__.block_bind_subblock_inner) #16
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !38
  %.not68 = icmp eq ptr %i.l, null
  br i1 %.not68, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.1, i32 noundef 309, ptr noundef nonnull @__PRETTY_FUNCTION__.block_bind_subblock_inner) #16
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !41   ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  %i.p = icmp eq ptr %i.n, %1
  %or.cond78 = or i1 %i.o, %i.p
  br i1 %or.cond78, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.1, i32 noundef 310, ptr noundef nonnull @__PRETTY_FUNCTION__.block_bind_subblock_inner) #16
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.q = icmp sgt i32 %5, -1
  br i1 %i.q, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.1, i32 noundef 311, ptr noundef nonnull @__PRETTY_FUNCTION__.block_bind_subblock_inner) #16
  unreachable

bb.k:                                             ; preds = %bb.i
  store ptr %1, ptr %i.m, align 8, !tbaa !41
  %.not694 = icmp eq ptr %3, null
  br i1 %.not694, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.r = and i32 %4, 2048
  %.not71 = icmp eq i32 %i.r, 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 104
  br label %bb.l

._crit_edge:                                      ; preds = %bb.ab, %bb.k
  %.060.lcssa = phi i32 [ 0, %bb.k ], [ %.2, %bb.ab ]
  ret i32 %.060.lcssa

bb.l:                                             ; preds = %.lr.ph, %bb.ab
  %.07 = phi ptr [ %3, %.lr.ph ], [ %i.bw, %bb.ab ] ; 11 uses
  %.0606 = phi i32 [ 0, %.lr.ph ], [ %.2, %bb.ab ] ; 10 uses
  %.0615 = phi i32 [ %5, %.lr.ph ], [ %.263, %bb.ab ] ; 12 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.07, i64 96 ; 5 uses
  %i.u = load i32, ptr %i.t, align 8, !tbaa !39
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.ab, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %.07, i64 16
  %i.x = load i32, ptr %i.w, align 8, !tbaa !32
  %i.y = tail call ptr @opcode_describe(i32 noundef %i.x) #15
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !36
  %i.ab = and i32 %i.aa, %4
  %i.ac = icmp eq i32 %i.ab, %i.h
  br i1 %i.ac, label %bb.n, label %.critedge

bb.n:                                             ; preds = %bb.m
  %i.ad = getelementptr inbounds nuw i8, ptr %.07, i64 80 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !41
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.o, label %bb.w

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %.07, i64 88
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !38 ; 4 uses
  %i.ai = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.aj = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ah, ptr noundef nonnull dereferenceable(1) %i.ai) #17
  %.not70 = icmp eq i32 %i.aj, 0
  br i1 %.not70, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  br i1 %.not71, label %.critedge, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ak = load i8, ptr %i.ah, align 1, !tbaa !37
  %i.al = icmp eq i8 %i.ak, 42
  %i.am = icmp slt i32 %.0615, 4
  %or.cond = select i1 %i.al, i1 %i.am, i1 false
  br i1 %or.cond, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 1
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !37
  %i.ap = sext i8 %i.ao to i32
  %i.aq = add nuw nsw i32 %.0615, 49
  %i.ar = icmp eq i32 %i.aq, %i.ap
  br i1 %i.ar, label %bb.s, label %.critedge

bb.s:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %i.ah, i64 2
  %i.at = load i8, ptr %i.as, align 1, !tbaa !37
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.t, label %.critedge

bb.t:                                             ; preds = %bb.s, %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.07, i64 108
  %i.aw = load i32, ptr %i.av, align 4, !tbaa !35 ; 2 uses
  %i.ax = icmp eq i32 %i.aw, -1
  br i1 %i.ax, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ay = load i32, ptr %i.s, align 8, !tbaa !34
  %i.az = icmp eq i32 %i.aw, %i.ay
  br i1 %i.az, label %bb.v, label %.critedge

bb.v:                                             ; preds = %bb.u, %bb.t
  store ptr %1, ptr %i.ad, align 8, !tbaa !41
  %i.ba = add nsw i32 %.0606, 1
  br label %.critedge

bb.w:                                             ; preds = %bb.n
  %i.bb = load ptr, ptr %i.k, align 8, !tbaa !38
  %i.bc = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.bb, ptr noundef nonnull dereferenceable(11) @.str.46, i64 noundef 10) #17
  %.not73 = icmp eq i32 %i.bc, 0
  br i1 %.not73, label %bb.x, label %.critedge

bb.x:                                             ; preds = %bb.w
  %i.bd = getelementptr inbounds nuw i8, ptr %.07, i64 88
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !38
  %i.bf = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.be, ptr noundef nonnull dereferenceable(11) @.str.46, i64 noundef 10) #17
  %.not74 = icmp eq i32 %i.bf, 0
  %i.bg = zext i1 %.not74 to i32
  %spec.select = add nuw nsw i32 %.0615, %i.bg
  br label %.critedge

.critedge:                                        ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.x, %bb.m, %bb.w, %bb.u, %bb.v
  %.162 = phi i32 [ %.0615, %bb.v ], [ %.0615, %bb.u ], [ %.0615, %bb.w ], [ %.0615, %bb.m ], [ %spec.select, %bb.x ], [ %.0615, %bb.p ], [ %.0615, %bb.q ], [ %.0615, %bb.r ], [ %.0615, %bb.s ] ; 4 uses
  %.1 = phi i32 [ %i.ba, %bb.v ], [ %.0606, %bb.u ], [ %.0606, %bb.w ], [ %.0606, %bb.m ], [ %.0606, %bb.x ], [ %.0606, %bb.p ], [ %.0606, %bb.q ], [ %.0606, %bb.r ], [ %.0606, %bb.s ]
  %i.bh = getelementptr inbounds nuw i8, ptr %.07, i64 88
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !38
  %.not75 = icmp eq ptr %i.bi, null
  br i1 %.not75, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge
  %i.bj = getelementptr inbounds nuw i8, ptr %.07, i64 80
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !41
end_hunk_0
