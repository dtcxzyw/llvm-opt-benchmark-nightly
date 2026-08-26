Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cpython/original/_zoneinfo?download=true
inline.NumInlined: 123
inline.NumDeleted: 45
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 12
begin_hunk_0_@parse_tz_str:bb.a
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !23
  %.not26.i = icmp eq i8 %i.dd, 46
  br i1 %.not26.i, label %.preheader76.i, label %.loopexit

.preheader76.i:                                   ; preds = %.lr.ph.preheader.i
  %i.de = getelementptr i8, ptr %i.dc, i64 1
  %i.df = load i8, ptr %i.de, align 1, !tbaa !23  ; 2 uses
  %i.dg = zext i8 %i.df to i64
  %i.dh = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.dg
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !6
  %i.dj = and i32 %i.di, 4
  %.not.i3698.i = icmp eq i32 %i.dj, 0
  br i1 %.not.i3698.i, label %.loopexit, label %parse_digits.exit38.thread.i

parse_digits.exit38.thread.i:                     ; preds = %.preheader76.i
  %i.dk = sext i8 %i.df to i32
  %i.dl = add nsw i32 %i.dk, -48
  %scevgep140.i = getelementptr i8, ptr %i.dc, i64 2
  %i.dm = load i8, ptr %scevgep140.i, align 1, !tbaa !23
  %.not28.i = icmp eq i8 %i.dm, 46
  br i1 %.not28.i, label %.preheader.i57, label %.loopexit

.preheader.i57:                                   ; preds = %parse_digits.exit38.thread.i
  %i.dn = getelementptr i8, ptr %i.dc, i64 3
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !23  ; 2 uses
  %i.dp = zext i8 %i.do to i64
  %i.dq = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.dp
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !6
  %i.ds = and i32 %i.dr, 4
  %.not.i41108.i = icmp eq i32 %i.ds, 0
  br i1 %.not.i41108.i, label %.loopexit, label %parse_digits.exit43.thread.i

parse_digits.exit43.thread.i:                     ; preds = %.preheader.i57
  %i.dt = sext i8 %i.do to i32
  %i.du = add nsw i32 %i.dt, -48
  %scevgep141.i = getelementptr i8, ptr %i.dc, i64 4 ; 2 uses
  store ptr %scevgep141.i, ptr %i.a, align 8
  %i.dv = load i8, ptr %scevgep141.i, align 1, !tbaa !23
  %i.dw = icmp eq i8 %i.dv, 47
  br i1 %i.dw, label %bb.x, label %bb.y

bb.x:                                             ; preds = %parse_digits.exit43.thread.i
  %i.dx = getelementptr i8, ptr %i.dc, i64 5
  store ptr %i.dx, ptr %i.a, align 8, !tbaa !134
  %i.dy = call fastcc i32 @parse_transition_time(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  %.not30.i = icmp eq i32 %i.dy, 0
  br i1 %.not30.i, label %bb.y, label %.loopexit

bb.y:                                             ; preds = %bb.x, %parse_digits.exit43.thread.i
  %i.dz = tail call ptr @PyMem_Calloc(i64 noundef 1, i64 noundef 16) #9 ; 4 uses
  %i.ea = icmp eq ptr %i.dz, null
  br i1 %i.ea, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.eb = load i32, ptr %i.b, align 4, !tbaa !6
  %i.ec = load i32, ptr %i.c, align 4, !tbaa !6
  %i.ed = load i32, ptr %i.d, align 4, !tbaa !6
  %i.ee = tail call i32 @calendarrule_new(i32 noundef %.15861.i, i32 noundef %i.dl, i32 noundef %i.du, i32 noundef %i.eb, i32 noundef %i.ec, i32 noundef %i.ed, ptr noundef nonnull %i.dz)
  %.not31.i = icmp eq i32 %i.ee, 0
  br i1 %.not31.i, label %bb.am, label %bb.aa

bb.aa:                                            ; preds = %bb.as, %bb.z
  %.1142 = phi ptr [ %storemerge.i, %bb.as ], [ null, %bb.z ]
  %.lcssa130 = phi ptr [ %i.gh, %bb.as ], [ %i.ci, %bb.z ]
  %.lcssa = phi ptr [ %i.hz, %bb.as ], [ %i.dz, %bb.z ]
  store ptr %.lcssa130, ptr %i.i, align 8
  tail call void @PyMem_Free(ptr noundef nonnull %.lcssa) #9
  br label %bb.al

bb.ab:                                            ; preds = %bb.v
  %i.ef = getelementptr i8, ptr %.promoted, i64 2 ; 2 uses
  %.pre.i = load i8, ptr %i.ef, align 1, !tbaa !23
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.v
  %i.eg = phi i8 [ %.pre.i, %bb.ab ], [ %i.cj, %bb.v ] ; 2 uses
  %.pre.i44.i = phi ptr [ %i.ef, %bb.ab ], [ %i.ci, %bb.v ] ; 3 uses
  %.0.i56 = phi i32 [ 1, %bb.ab ], [ 0, %bb.v ]   ; 3 uses
  %i.eh = zext i8 %i.eg to i64
  %i.ei = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.eh
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !6
  %i.ek = and i32 %i.ej, 4
  %.not.i46118.i = icmp eq i32 %i.ek, 0
  br i1 %.not.i46118.i, label %.loopexit, label %.lr.ph121.preheader.i

.lr.ph121.preheader.i:                            ; preds = %bb.ac
  %scevgep142.i = getelementptr i8, ptr %.pre.i44.i, i64 3
  %i.el = sext i8 %i.eg to i32
  %i.em = add nsw i32 %i.el, -48                  ; 2 uses
  %i.en = getelementptr i8, ptr %.pre.i44.i, i64 1 ; 2 uses
  %i.eo = load i8, ptr %i.en, align 1, !tbaa !23  ; 2 uses
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.ep
  %i.er = load i32, ptr %i.eq, align 4, !tbaa !6
  %i.es = and i32 %i.er, 4
  %.not.i46.i = icmp eq i32 %i.es, 0
  br i1 %.not.i46.i, label %parse_digits.exit48.thread.i, label %.lr.ph121.1.i

.lr.ph121.1.i:                                    ; preds = %.lr.ph121.preheader.i
  %i.et = mul nsw i32 %i.em, 10
  %i.eu = sext i8 %i.eo to i32
  %i.ev = add nsw i32 %i.et, -48
  %i.ew = add nsw i32 %i.ev, %i.eu                ; 2 uses
  %i.ex = getelementptr i8, ptr %.pre.i44.i, i64 2 ; 2 uses
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !23  ; 2 uses
  %i.ez = zext i8 %i.ey to i64
  %i.fa = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.ez
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !6
  %i.fc = and i32 %i.fb, 4
  %.not.i46.1.i = icmp eq i32 %i.fc, 0
  br i1 %.not.i46.1.i, label %parse_digits.exit48.thread.i, label %parse_digits.exit48.thread.loopexit.i

parse_digits.exit48.thread.loopexit.i:            ; preds = %.lr.ph121.1.i
  %i.fd = mul nsw i32 %i.ew, 10
  %i.fe = add nsw i32 %i.fd, -48
  %i.ff = sext i8 %i.ey to i32
  %i.fg = add nsw i32 %i.fe, %i.ff
  br label %parse_digits.exit48.thread.i

parse_digits.exit48.thread.i:                     ; preds = %parse_digits.exit48.thread.loopexit.i, %.lr.ph121.1.i, %.lr.ph121.preheader.i
  %.lcssa116.ph.sink.i = phi ptr [ %scevgep142.i, %parse_digits.exit48.thread.loopexit.i ], [ %i.ex, %.lr.ph121.1.i ], [ %i.en, %.lr.ph121.preheader.i ] ; 3 uses
  %.170.i = phi i32 [ %i.fg, %parse_digits.exit48.thread.loopexit.i ], [ %i.ew, %.lr.ph121.1.i ], [ %i.em, %.lr.ph121.preheader.i ] ; 4 uses
  store ptr %.lcssa116.ph.sink.i, ptr %i.a, align 8
  %i.fh = load i8, ptr %.lcssa116.ph.sink.i, align 1, !tbaa !23
  %i.fi = icmp eq i8 %i.fh, 47
  br i1 %i.fi, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %parse_digits.exit48.thread.i
  %i.fj = getelementptr i8, ptr %.lcssa116.ph.sink.i, i64 1
  store ptr %i.fj, ptr %i.a, align 8, !tbaa !134
  %i.fk = call fastcc i32 @parse_transition_time(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  %.not23.i = icmp eq i32 %i.fk, 0
  br i1 %.not23.i, label %bb.ae, label %.loopexit

bb.ae:                                            ; preds = %bb.ad, %parse_digits.exit48.thread.i
  %i.fl = tail call ptr @PyMem_Calloc(i64 noundef 1, i64 noundef 16) #9 ; 11 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.fn = load i32, ptr %i.b, align 4, !tbaa !6   ; 2 uses
  %i.fo = load i32, ptr %i.c, align 4, !tbaa !6
  %i.fp = load i32, ptr %i.d, align 4, !tbaa !6
  %i.fq = icmp slt i32 %.170.i, %.0.i56
  %i.fr = icmp sgt i32 %.170.i, 365
  %or.cond.i.i = or i1 %i.fq, %i.fr
  br i1 %or.cond.i.i, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.aw, %bb.af
  %.2143 = phi ptr [ null, %bb.af ], [ %storemerge.i, %bb.aw ]
  %.lcssa131 = phi ptr [ %i.ci, %bb.af ], [ %i.gh, %bb.aw ]
  %.lcssa121 = phi ptr [ %i.fl, %bb.af ], [ %i.jk, %bb.aw ]
  %.170.i.lcssa = phi i32 [ %.170.i, %bb.af ], [ %.170.i.1, %bb.aw ]
  %.0.i56.lcssa = phi i32 [ %.0.i56, %bb.af ], [ %.0.i56.1, %bb.aw ]
  store ptr %.lcssa131, ptr %i.i, align 8
  %i.fs = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !20
  %i.ft = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.fs, ptr noundef nonnull @.str.54, i32 noundef range(i32 0, 2) %.0.i56.lcssa, i32 noundef %.170.i.lcssa) #9 ; 0 uses
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.fu = add i32 %i.fn, -168
  %or.cond3.i.i = icmp ult i32 %i.fu, -335
  br i1 %or.cond3.i.i, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %bb.ax, %bb.ah
  %.3 = phi ptr [ null, %bb.ah ], [ %storemerge.i, %bb.ax ]
  %.lcssa132 = phi ptr [ %i.ci, %bb.ah ], [ %i.gh, %bb.ax ]
  %.lcssa122 = phi ptr [ %i.fl, %bb.ah ], [ %i.jk, %bb.ax ]
  store ptr %.lcssa132, ptr %i.i, align 8
  %i.fv = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !20
  %i.fw = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.fv, ptr noundef nonnull @.str.3) #9 ; 0 uses
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ag
  %.4 = phi ptr [ %.2143, %bb.ag ], [ %.3, %bb.ai ]
  %i.fx = phi ptr [ %.lcssa121, %bb.ag ], [ %.lcssa122, %bb.ai ]
  tail call void @PyMem_Free(ptr noundef nonnull %i.fx) #9
  br label %bb.al

bb.ak:                                            ; preds = %bb.ah
  %i.fy = trunc nuw nsw i32 %.0.i56 to i8
  %i.fz = trunc nuw nsw i32 %.170.i to i16
  %i.ga = trunc nsw i32 %i.fn to i16
  %i.gb = trunc i32 %i.fo to i8
  %i.gc = trunc i32 %i.fp to i8
  store ptr @dayrule_year_to_timestamp, ptr %i.fl, align 8, !tbaa !22
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i8 %i.fy, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !23
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 9
  store i8 0, ptr %.sroa.5.0..sroa_idx.i.i, align 1
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 10
  store i16 %i.fz, ptr %.sroa.6.0..sroa_idx.i.i, align 2, !tbaa !24
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 12
  store i16 %i.ga, ptr %.sroa.7.0..sroa_idx.i.i, align 4, !tbaa !24
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 14
  store i8 %i.gb, ptr %.sroa.8.0..sroa_idx.i.i, align 2, !tbaa !23
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.fl, i64 15
  store i8 %i.gc, ptr %.sroa.9.0..sroa_idx.i.i, align 1, !tbaa !23
  br label %bb.am

.loopexit:                                        ; preds = %bb.av, %bb.au, %bb.at, %bb.ar, %bb.aq, %.preheader.i57.1, %parse_digits.exit38.thread.i.1, %.preheader76.i.1, %.lr.ph.preheader.i.1, %bb.ap, %bb.ac, %.preheader.i57, %bb.ae, %bb.ad, %.lr.ph.preheader.i, %bb.w, %parse_digits.exit38.thread.i, %.preheader76.i, %bb.y, %bb.x
  %.5 = phi ptr [ null, %bb.ac ], [ null, %bb.ae ], [ %storemerge.i, %bb.at ], [ %storemerge.i, %bb.av ], [ %storemerge.i, %bb.au ], [ %storemerge.i, %bb.ap ], [ %storemerge.i, %.preheader76.i.1 ], [ %storemerge.i, %.preheader.i57.1 ], [ %storemerge.i, %bb.ar ], [ %storemerge.i, %bb.aq ], [ %storemerge.i, %parse_digits.exit38.thread.i.1 ], [ %storemerge.i, %.lr.ph.preheader.i.1 ], [ null, %bb.ad ], [ null, %bb.w ], [ null, %.preheader76.i ], [ null, %.preheader.i57 ], [ null, %bb.y ], [ null, %bb.x ], [ null, %parse_digits.exit38.thread.i ], [ null, %.lr.ph.preheader.i ]
  %.lcssa129 = phi ptr [ %i.ci, %bb.ac ], [ %i.ci, %bb.ae ], [ %i.gh, %bb.at ], [ %i.gh, %bb.av ], [ %i.gh, %bb.au ], [ %i.gh, %bb.ap ], [ %i.gh, %.preheader76.i.1 ], [ %i.gh, %.preheader.i57.1 ], [ %i.gh, %bb.ar ], [ %i.gh, %bb.aq ], [ %i.gh, %parse_digits.exit38.thread.i.1 ], [ %i.gh, %.lr.ph.preheader.i.1 ], [ %i.ci, %bb.ad ], [ %i.ci, %bb.w ], [ %i.ci, %.preheader76.i ], [ %i.ci, %.preheader.i57 ], [ %i.ci, %bb.y ], [ %i.ci, %bb.x ], [ %i.ci, %parse_digits.exit38.thread.i ], [ %i.ci, %.lr.ph.preheader.i ]
  store ptr %.lcssa129, ptr %i.i, align 8
  br label %bb.al

bb.al:                                            ; preds = %.loopexit, %bb.aa, %bb.aj
  %.6 = phi ptr [ %.5, %.loopexit ], [ %.4, %bb.aj ], [ %.1142, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.gd = load ptr, ptr @PyExc_ValueError, align 8, !tbaa !20
  %i.ge = tail call ptr (ptr, ptr, ...) @PyErr_Format(ptr noundef %i.gd, ptr noundef nonnull @.str.52, ptr noundef %1) #9 ; 0 uses
  br label %.thread

bb.am:                                            ; preds = %bb.ak, %bb.z
  %storemerge.i = phi ptr [ %i.fl, %bb.ak ], [ %i.dz, %bb.z ] ; 16 uses
  %i.gf = load ptr, ptr %i.a, align 8, !tbaa !134 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !23
  %.not26.1 = icmp eq i8 %i.gg, 44
  br i1 %.not26.1, label %bb.an, label %bb.u

bb.an:                                            ; preds = %bb.am
  %i.gh = getelementptr i8, ptr %i.gf, i64 1      ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store i32 2, ptr %i.b, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  store i32 0, ptr %i.c, align 4, !tbaa !6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store i32 0, ptr %i.d, align 4, !tbaa !6
  %i.gi = load i8, ptr %i.gh, align 1, !tbaa !23  ; 2 uses
  switch i8 %i.gi, label %bb.at [
    i8 77, label %bb.ap
    i8 74, label %bb.ao
  ]

bb.ao:                                            ; preds = %bb.an
  %i.gj = getelementptr i8, ptr %i.gf, i64 2      ; 2 uses
  %.pre.i.1 = load i8, ptr %i.gj, align 1, !tbaa !23
  br label %bb.at

bb.ap:                                            ; preds = %bb.an
  %i.gk = getelementptr i8, ptr %i.gf, i64 2
  %i.gl = load i8, ptr %i.gk, align 1, !tbaa !23  ; 2 uses
  %i.gm = zext i8 %i.gl to i64
  %i.gn = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.gm
  %i.go = load i32, ptr %i.gn, align 4, !tbaa !6
  %i.gp = and i32 %i.go, 4
  %.not.i90.i.1 = icmp eq i32 %i.gp, 0
  br i1 %.not.i90.i.1, label %.loopexit, label %.lr.ph.preheader.i.1

.lr.ph.preheader.i.1:                             ; preds = %bb.ap
  %scevgep.i.1 = getelementptr i8, ptr %i.gf, i64 4
  %i.gq = sext i8 %i.gl to i32
  %i.gr = add nsw i32 %i.gq, -48                  ; 2 uses
  %i.gs = getelementptr i8, ptr %i.gf, i64 3      ; 2 uses
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !23  ; 2 uses
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.gu
  %i.gw = load i32, ptr %i.gv, align 4, !tbaa !6
  %i.gx = and i32 %i.gw, 4
  %.not.i.i.1 = icmp eq i32 %i.gx, 0              ; 2 uses
  %i.gy = mul nsw i32 %i.gr, 10
  %i.gz = add nsw i32 %i.gy, -48
  %i.ha = sext i8 %i.gt to i32
  %i.hb = add nsw i32 %i.gz, %i.ha
  %i.hc = select i1 %.not.i.i.1, ptr %i.gs, ptr %scevgep.i.1 ; 6 uses
  %.15861.i.1 = select i1 %.not.i.i.1, i32 %i.gr, i32 %i.hb
  %i.hd = load i8, ptr %i.hc, align 1, !tbaa !23
  %.not26.i.1 = icmp eq i8 %i.hd, 46
  br i1 %.not26.i.1, label %.preheader76.i.1, label %.loopexit

.preheader76.i.1:                                 ; preds = %.lr.ph.preheader.i.1
  %i.he = getelementptr i8, ptr %i.hc, i64 1
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !23  ; 2 uses
  %i.hg = zext i8 %i.hf to i64
  %i.hh = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.hg
  %i.hi = load i32, ptr %i.hh, align 4, !tbaa !6
  %i.hj = and i32 %i.hi, 4
  %.not.i3698.i.1 = icmp eq i32 %i.hj, 0
  br i1 %.not.i3698.i.1, label %.loopexit, label %parse_digits.exit38.thread.i.1

parse_digits.exit38.thread.i.1:                   ; preds = %.preheader76.i.1
  %i.hk = sext i8 %i.hf to i32
  %i.hl = add nsw i32 %i.hk, -48
  %scevgep140.i.1 = getelementptr i8, ptr %i.hc, i64 2
  %i.hm = load i8, ptr %scevgep140.i.1, align 1, !tbaa !23
  %.not28.i.1 = icmp eq i8 %i.hm, 46
  br i1 %.not28.i.1, label %.preheader.i57.1, label %.loopexit

.preheader.i57.1:                                 ; preds = %parse_digits.exit38.thread.i.1
  %i.hn = getelementptr i8, ptr %i.hc, i64 3
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !23  ; 2 uses
  %i.hp = zext i8 %i.ho to i64
  %i.hq = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.hp
  %i.hr = load i32, ptr %i.hq, align 4, !tbaa !6
  %i.hs = and i32 %i.hr, 4
  %.not.i41108.i.1 = icmp eq i32 %i.hs, 0
  br i1 %.not.i41108.i.1, label %.loopexit, label %parse_digits.exit43.thread.i.1

parse_digits.exit43.thread.i.1:                   ; preds = %.preheader.i57.1
  %i.ht = sext i8 %i.ho to i32
  %i.hu = add nsw i32 %i.ht, -48
  %scevgep141.i.1 = getelementptr i8, ptr %i.hc, i64 4 ; 2 uses
  store ptr %scevgep141.i.1, ptr %i.a, align 8
  %i.hv = load i8, ptr %scevgep141.i.1, align 1, !tbaa !23
  %i.hw = icmp eq i8 %i.hv, 47
  br i1 %i.hw, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %parse_digits.exit43.thread.i.1
  %i.hx = getelementptr i8, ptr %i.hc, i64 5
  store ptr %i.hx, ptr %i.a, align 8, !tbaa !134
  %i.hy = call fastcc i32 @parse_transition_time(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  %.not30.i.1 = icmp eq i32 %i.hy, 0
  br i1 %.not30.i.1, label %bb.ar, label %.loopexit

bb.ar:                                            ; preds = %bb.aq, %parse_digits.exit43.thread.i.1
  %i.hz = tail call ptr @PyMem_Calloc(i64 noundef 1, i64 noundef 16) #9 ; 4 uses
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %.loopexit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ib = load i32, ptr %i.b, align 4, !tbaa !6
  %i.ic = load i32, ptr %i.c, align 4, !tbaa !6
  %i.id = load i32, ptr %i.d, align 4, !tbaa !6
  %i.ie = tail call i32 @calendarrule_new(i32 noundef %.15861.i.1, i32 noundef %i.hl, i32 noundef %i.hu, i32 noundef %i.ib, i32 noundef %i.ic, i32 noundef %i.id, ptr noundef nonnull %i.hz)
  %.not31.i.1 = icmp eq i32 %i.ie, 0
  br i1 %.not31.i.1, label %bb.az, label %bb.aa

bb.at:                                            ; preds = %bb.ao, %bb.an
  %i.if = phi i8 [ %.pre.i.1, %bb.ao ], [ %i.gi, %bb.an ] ; 2 uses
  %.pre.i44.i.1 = phi ptr [ %i.gj, %bb.ao ], [ %i.gh, %bb.an ] ; 3 uses
  %.0.i56.1 = phi i32 [ 1, %bb.ao ], [ 0, %bb.an ] ; 3 uses
  %i.ig = zext i8 %i.if to i64
  %i.ih = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.ig
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !6
  %i.ij = and i32 %i.ii, 4
  %.not.i46118.i.1 = icmp eq i32 %i.ij, 0
  br i1 %.not.i46118.i.1, label %.loopexit, label %.lr.ph121.preheader.i.1

.lr.ph121.preheader.i.1:                          ; preds = %bb.at
  %scevgep142.i.1 = getelementptr i8, ptr %.pre.i44.i.1, i64 3 ; 2 uses
  %i.ik = sext i8 %i.if to i32
  %i.il = add nsw i32 %i.ik, -48                  ; 2 uses
  %i.im = getelementptr i8, ptr %.pre.i44.i.1, i64 1 ; 2 uses
  %i.in = load i8, ptr %i.im, align 1, !tbaa !23  ; 3 uses
  %i.io = zext i8 %i.in to i64
  %i.ip = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.io
  %i.iq = load i32, ptr %i.ip, align 4, !tbaa !6
  %i.ir = and i32 %i.iq, 4
  %.not.i46.i.1 = icmp eq i32 %i.ir, 0
  br i1 %.not.i46.i.1, label %parse_digits.exit48.thread.i.1, label %.lr.ph121.1.i.1

.lr.ph121.1.i.1:                                  ; preds = %.lr.ph121.preheader.i.1
  %i.is = mul nsw i32 %i.il, 10
  %i.it = sext i8 %i.in to i32
  %i.iu = add nsw i32 %i.is, -48
  %i.iv = add nsw i32 %i.iu, %i.it                ; 2 uses
  %i.iw = getelementptr i8, ptr %.pre.i44.i.1, i64 2 ; 2 uses
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !23  ; 3 uses
  %i.iy = zext i8 %i.ix to i64
  %i.iz = getelementptr [4 x i8], ptr @_Py_ctype_table, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !6
  %i.jb = and i32 %i.ja, 4
  %.not.i46.1.i.1 = icmp eq i32 %i.jb, 0
  br i1 %.not.i46.1.i.1, label %parse_digits.exit48.thread.i.1, label %parse_digits.exit48.thread.loopexit.i.1

parse_digits.exit48.thread.loopexit.i.1:          ; preds = %.lr.ph121.1.i.1
  %i.jc = mul nsw i32 %i.iv, 10
  %i.jd = add nsw i32 %i.jc, -48
  %i.je = sext i8 %i.ix to i32
  %i.jf = add nsw i32 %i.jd, %i.je
  %.pre = load i8, ptr %scevgep142.i.1, align 1, !tbaa !23
  br label %parse_digits.exit48.thread.i.1

parse_digits.exit48.thread.i.1:                   ; preds = %parse_digits.exit48.thread.loopexit.i.1, %.lr.ph121.1.i.1, %.lr.ph121.preheader.i.1
  %i.jg = phi i8 [ %.pre, %parse_digits.exit48.thread.loopexit.i.1 ], [ %i.ix, %.lr.ph121.1.i.1 ], [ %i.in, %.lr.ph121.preheader.i.1 ]
  %.lcssa116.ph.sink.i.1 = phi ptr [ %scevgep142.i.1, %parse_digits.exit48.thread.loopexit.i.1 ], [ %i.iw, %.lr.ph121.1.i.1 ], [ %i.im, %.lr.ph121.preheader.i.1 ] ; 2 uses
  %.170.i.1 = phi i32 [ %i.jf, %parse_digits.exit48.thread.loopexit.i.1 ], [ %i.iv, %.lr.ph121.1.i.1 ], [ %i.il, %.lr.ph121.preheader.i.1 ] ; 4 uses
  store ptr %.lcssa116.ph.sink.i.1, ptr %i.a, align 8
  %i.jh = icmp eq i8 %i.jg, 47
  br i1 %i.jh, label %bb.au, label %bb.av

bb.au:                                            ; preds = %parse_digits.exit48.thread.i.1
  %i.ji = getelementptr i8, ptr %.lcssa116.ph.sink.i.1, i64 1
  store ptr %i.ji, ptr %i.a, align 8, !tbaa !134
  %i.jj = call fastcc i32 @parse_transition_time(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d)
  %.not23.i.1 = icmp eq i32 %i.jj, 0
  br i1 %.not23.i.1, label %bb.av, label %.loopexit

bb.av:                                            ; preds = %bb.au, %parse_digits.exit48.thread.i.1
  %i.jk = tail call ptr @PyMem_Calloc(i64 noundef 1, i64 noundef 16) #9 ; 11 uses
  %i.jl = icmp eq ptr %i.jk, null
  br i1 %i.jl, label %.loopexit, label %bb.aw

end_hunk_0
