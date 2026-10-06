Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/prism?download=true
inline.NumInlined: 2622
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@parse_pattern:bb.a

bb.f:                                             ; preds = %bb.a
  %i.t = add i16 %4, 1                            ; 3 uses
  %i.u = tail call fastcc ptr @parse_pattern_primitive(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %3, i16 noundef zeroext %i.t) ; 4 uses
  %i.v = load i16, ptr %i.u, align 8, !tbaa !115
  switch i16 %i.v, label %pm_symbol_node_label_p.exit.thread [
    i16 143, label %bb.h
    i16 86, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink.i = phi i64 [ 72, %bb.g ], [ 64, %bb.f ]
  %i.w = getelementptr i8, ptr %i.u, i64 %.sink.i
  %.0.i = load ptr, ptr %i.w, align 8, !tbaa !36  ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %pm_symbol_node_label_p.exit.thread, label %pm_symbol_node_label_p.exit

pm_symbol_node_label_p.exit:                      ; preds = %bb.h
  %i.x = getelementptr i8, ptr %.0.i, i64 -1
  %i.y = load i8, ptr %i.x, align 1, !tbaa !83
  %i.z = icmp eq i8 %i.y, 58
  br i1 %i.z, label %bb.i, label %pm_symbol_node_label_p.exit.thread

bb.i:                                             ; preds = %pm_symbol_node_label_p.exit
  %i.aa = tail call fastcc ptr @parse_pattern_hash(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.u, i16 noundef zeroext %i.t) ; 4 uses
  %i.ab = and i8 %2, 1
  %.not89 = icmp eq i8 %i.ab, 0
  br i1 %.not89, label %bb.j, label %bb.ax

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %.val97 = load ptr, ptr %i.ac, align 8, !tbaa !133
  %i.ad = getelementptr i8, ptr %i.aa, i64 16
  %.val98 = load ptr, ptr %i.ad, align 8, !tbaa !134
  %i.ae = getelementptr i8, ptr %0, i64 472
  %i.af = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ae, ptr noundef %.val97, ptr noundef %.val98, i32 noundef 234) #27 ; 0 uses
  br label %bb.ax

pm_symbol_node_label_p.exit.thread:               ; preds = %bb.h, %bb.f, %pm_symbol_node_label_p.exit
  %i.ag = tail call fastcc ptr @parse_pattern_primitives(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.u, i32 noundef %3, i16 noundef zeroext %i.t)
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  %.not = icmp eq i8 %2, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.ah = tail call fastcc ptr @parse_pattern_rest(ptr noundef nonnull %0, ptr noundef %1)
  br label %bb.n

bb.m:                                             ; preds = %bb.k, %bb.a
  %i.ai = add i16 %4, 1
  %i.aj = tail call fastcc ptr @parse_pattern_primitives(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, i32 noundef %3, i16 noundef zeroext %i.ai)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %pm_symbol_node_label_p.exit.thread
  %.085 = phi ptr [ %i.aj, %bb.m ], [ %i.ag, %pm_symbol_node_label_p.exit.thread ], [ %i.ah, %bb.l ] ; 7 uses
  %.084 = phi i1 [ false, %bb.m ], [ false, %pm_symbol_node_label_p.exit.thread ], [ true, %bb.l ] ; 3 uses
  %i.ak = load i16, ptr %.085, align 8, !tbaa !115
  switch i16 %i.ak, label %pm_symbol_node_label_p.exit108.thread [
    i16 143, label %bb.p
    i16 86, label %bb.o
  ]

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sink.i104 = phi i64 [ 72, %bb.o ], [ 64, %bb.n ]
  %i.al = getelementptr i8, ptr %.085, i64 %.sink.i104
  %.0.i105 = load ptr, ptr %i.al, align 8, !tbaa !36 ; 2 uses
  %.not.i106 = icmp eq ptr %.0.i105, null
  br i1 %.not.i106, label %pm_symbol_node_label_p.exit108.thread, label %pm_symbol_node_label_p.exit108

pm_symbol_node_label_p.exit108:                   ; preds = %bb.p
  %i.am = getelementptr i8, ptr %.0.i105, i64 -1
  %i.an = load i8, ptr %i.am, align 1, !tbaa !83
  %i.ao = icmp eq i8 %i.an, 58
  br i1 %i.ao, label %bb.q, label %pm_symbol_node_label_p.exit108.thread

bb.q:                                             ; preds = %pm_symbol_node_label_p.exit108
  %i.ap = add i16 %4, 1
  %i.aq = tail call fastcc ptr @parse_pattern_hash(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %.085, i16 noundef zeroext %i.ap)
  br label %bb.ax

pm_symbol_node_label_p.exit108.thread:            ; preds = %bb.p, %bb.n, %pm_symbol_node_label_p.exit108
  %.not92 = icmp samesign ult i8 %2, 2
  br i1 %.not92, label %bb.au, label %bb.r

bb.r:                                             ; preds = %pm_symbol_node_label_p.exit108.thread
  %.val = load i32, ptr %i.a, align 8, !tbaa !154
  %i.ar = icmp eq i32 %.val, 3
  br i1 %i.ar, label %bb.s, label %bb.au

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @pm_node_list_append(ptr noundef nonnull %5, ptr noundef nonnull %.085) #27
  %.val.i121 = load i32, ptr %i.a, align 8, !tbaa !154
  %i.as = icmp eq i32 %.val.i121, 3
  br i1 %i.as, label %.lr.ph, label %accept1.exit

.lr.ph:                                           ; preds = %bb.s
  %i.at = getelementptr i8, ptr %0, i64 328       ; 2 uses
  %i.au = getelementptr i8, ptr %0, i64 336
  %i.av = getelementptr i8, ptr %0, i64 472
  %i.aw = add i16 %4, 1
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph, %bb.aa
  %.0122 = phi i8 [ 0, %.lr.ph ], [ %.1, %bb.aa ] ; 2 uses
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val103 = load i32, ptr %i.a, align 8, !tbaa !154
  switch i32 %.val103, label %accept1.exit110 [
    i32 92, label %bb.u
    i32 74, label %bb.u
    i32 33, label %bb.u
    i32 17, label %bb.u
    i32 15, label %bb.u
    i32 12, label %bb.u
    i32 2, label %bb.u
    i32 159, label %bb.y
  ]

bb.u:                                             ; preds = %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t, %bb.t
  %i.ax = getelementptr i8, ptr %0, i64 320
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !126
  %i.az = icmp eq i32 %i.ay, 3
  br i1 %i.az, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @__assert_fail(ptr noundef nonnull @.str.120, ptr noundef nonnull @.str.2, i32 noundef 4458, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_implicit_rest_node_create) #26
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ba = call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #30 ; 5 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.x, label %pm_implicit_rest_node_create.exit

bb.x:                                             ; preds = %bb.w
  %i.bc = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.bd = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bc, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 24) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_implicit_rest_node_create.exit:                ; preds = %bb.w
  %i.be = load i32, ptr %0, align 8, !tbaa !109
  %i.bf = add i32 %i.be, 1                        ; 2 uses
  store i32 %i.bf, ptr %0, align 8, !tbaa !109
  store i16 70, ptr %i.ba, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  store i32 %i.bf, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bg = load <2 x ptr>, ptr %i.at, align 8, !tbaa !36
  store <2 x ptr> %i.bg, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !36
  call void @pm_node_list_append(ptr noundef nonnull %5, ptr noundef nonnull %i.ba) #27
  br label %accept1.exit

bb.y:                                             ; preds = %bb.t
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.bh = call fastcc ptr @parse_pattern_rest(ptr noundef nonnull %0, ptr noundef %1) ; 2 uses
  %i.bi = trunc nuw i8 %.0122 to i1
  br i1 %i.bi, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bj = load ptr, ptr %i.at, align 8, !tbaa !181
  %i.bk = load ptr, ptr %i.au, align 8, !tbaa !180
  %i.bl = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.av, ptr noundef %i.bj, ptr noundef %i.bk, i32 noundef 242) #27 ; 0 uses
  br label %bb.aa

accept1.exit110:                                  ; preds = %bb.t
  %i.bm = call fastcc ptr @parse_pattern_primitives(ptr noundef nonnull %0, ptr noundef %1, ptr noundef null, i32 noundef 224, i16 noundef zeroext %i.aw)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.y, %bb.z, %accept1.exit110
  %.186 = phi ptr [ %i.bm, %accept1.exit110 ], [ %i.bh, %bb.z ], [ %i.bh, %bb.y ]
  %.1 = phi i8 [ %.0122, %accept1.exit110 ], [ 1, %bb.z ], [ 1, %bb.y ] ; 2 uses
  call void @pm_node_list_append(ptr noundef nonnull %5, ptr noundef nonnull %.186) #27
  %.val.i = load i32, ptr %i.a, align 8, !tbaa !154
  %i.bn = icmp eq i32 %.val.i, 3
  br i1 %i.bn, label %bb.t, label %accept1.exit.loopexit, !llvm.loop !555

accept1.exit.loopexit:                            ; preds = %bb.aa
  %i.bo = trunc nuw i8 %.1 to i1
  br label %accept1.exit

accept1.exit:                                     ; preds = %accept1.exit.loopexit, %bb.s, %pm_implicit_rest_node_create.exit
  %.2 = phi i1 [ true, %pm_implicit_rest_node_create.exit ], [ false, %bb.s ], [ %i.bo, %accept1.exit.loopexit ]
  br i1 %.084, label %bb.ab, label %bb.ak

bb.ab:                                            ; preds = %accept1.exit
  %i.bp = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !139 ; 2 uses
  %i.br = load i64, ptr %5, align 8, !tbaa !138   ; 4 uses
  %i.bs = getelementptr [8 x i8], ptr %i.bq, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bs, i64 -8
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !106 ; 2 uses
  %i.bv = load i16, ptr %i.bu, align 8, !tbaa !115
  %i.bw = icmp eq i16 %i.bv, 139
  br i1 %i.bw, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.bx = call noalias dereferenceable_or_null(104) ptr @calloc(i64 noundef 1, i64 noundef 104) #30 ; 10 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %bb.ad, label %pm_node_alloc.exit.i127

bb.ad:                                            ; preds = %bb.ac
  %i.bz = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.ca = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bz, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 104) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_node_alloc.exit.i127:                          ; preds = %bb.ac
  %i.cb = load ptr, ptr %i.bq, align 8, !tbaa !106 ; 4 uses
  %i.cc = load i16, ptr %i.cb, align 8, !tbaa !115
  %i.cd = icmp eq i16 %i.cc, 139
  br i1 %i.cd, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %pm_node_alloc.exit.i127
  call void @__assert_fail(ptr noundef nonnull @.str.164, ptr noundef nonnull @.str.2, i32 noundef 3778, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_find_pattern_node_create) #26
  unreachable

bb.af:                                            ; preds = %pm_node_alloc.exit.i127
  %i.ce = icmp eq i64 %i.br, 1
  br i1 %i.ce, label %bb.ag, label %._crit_edge27.i

bb.ag:                                            ; preds = %bb.af
  %i.cf = getelementptr i8, ptr %i.cb, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !134 ; 2 uses
  %i.ch = call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #30 ; 6 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.ah, label %pm_missing_node_create.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.cj = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.ck = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.cj, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 24) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_missing_node_create.exit.i:                    ; preds = %bb.ag
  %i.cl = load i32, ptr %0, align 8, !tbaa !109
  %i.cm = add i32 %i.cl, 1                        ; 2 uses
  store i16 103, ptr %i.ch, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  store i32 %i.cm, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  store ptr %i.cg, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  store ptr %i.cg, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !36
  br label %bb.ai

._crit_edge27.i:                                  ; preds = %bb.af
  %.pre.i = load i32, ptr %0, align 8, !tbaa !109
  br label %bb.ai

bb.ai:                                            ; preds = %._crit_edge27.i, %pm_missing_node_create.exit.i
  %i.cn = phi i32 [ %i.cm, %pm_missing_node_create.exit.i ], [ %.pre.i, %._crit_edge27.i ]
  %.024.i = phi ptr [ %i.ch, %pm_missing_node_create.exit.i ], [ %i.bu, %._crit_edge27.i ] ; 2 uses
  %i.co = add i32 %i.cn, 1                        ; 2 uses
  store i32 %i.co, ptr %0, align 8, !tbaa !109
  %i.cp = getelementptr i8, ptr %i.cb, i64 8
  %6 = load ptr, ptr %i.cp, align 8, !tbaa !133
  %7 = getelementptr i8, ptr %.024.i, i64 16
  %i.cq = load ptr, ptr %7, align 8, !tbaa !134
  %.sroa.8.0..sroa_idx.i128 = getelementptr i8, ptr %i.bx, i64 40
  store i16 52, ptr %i.bx, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i129 = getelementptr inbounds nuw i8, ptr %i.bx, i64 4
  store i32 %i.co, ptr %.sroa.3.0..sroa_idx.i129, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i130 = getelementptr inbounds nuw i8, ptr %i.bx, i64 8 ; 2 uses
  store ptr %6, ptr %.sroa.4.0..sroa_idx.i130, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx.i131 = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  store ptr %i.cq, ptr %.sroa.5.0..sroa_idx.i131, align 8, !tbaa !36
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  store ptr %i.cb, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !558
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  store ptr %.024.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !106
  %i.cr = add i64 %i.br, -3
  %i.cs = icmp ult i64 %i.cr, -2
  br i1 %i.cs, label %.lr.ph.i132, label %pm_find_pattern_node_create.exit

.lr.ph.i132:                                      ; preds = %bb.ai, %.lr.ph.i132
  %.026.i = phi i64 [ %i.cw, %.lr.ph.i132 ], [ 1, %bb.ai ] ; 2 uses
  %i.ct = load ptr, ptr %i.bp, align 8, !tbaa !139
  %i.cu = getelementptr [8 x i8], ptr %i.ct, i64 %.026.i
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !106
  call void @pm_node_list_append(ptr noundef nonnull %.sroa.8.0..sroa_idx.i128, ptr noundef %i.cv) #27
  %i.cw = add nuw i64 %.026.i, 1                  ; 2 uses
  %i.cx = load i64, ptr %5, align 8, !tbaa !138   ; 2 uses
  %i.cy = add i64 %i.cx, -1
  %i.cz = icmp ult i64 %i.cw, %i.cy
  br i1 %i.cz, label %.lr.ph.i132, label %pm_find_pattern_node_create.exit, !llvm.loop !556

pm_find_pattern_node_create.exit:                 ; preds = %.lr.ph.i132, %bb.ai
  %i.da = phi i64 [ %i.br, %bb.ai ], [ %i.cx, %.lr.ph.i132 ]
  %i.db = icmp eq i64 %i.da, 2
  br i1 %i.db, label %bb.aj, label %bb.at

bb.aj:                                            ; preds = %pm_find_pattern_node_create.exit
  %.val95 = load ptr, ptr %.sroa.4.0..sroa_idx.i130, align 8, !tbaa !133
  %.val96 = load ptr, ptr %.sroa.5.0..sroa_idx.i131, align 8, !tbaa !134
  %i.dc = getelementptr i8, ptr %0, i64 472
  %i.dd = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.dc, ptr noundef %.val95, ptr noundef %.val96, i32 noundef 233) #27 ; 0 uses
  br label %bb.at

bb.ak:                                            ; preds = %bb.ab, %accept1.exit
  %i.de = call noalias dereferenceable_or_null(120) ptr @calloc(i64 noundef 1, i64 noundef 120) #30 ; 10 uses
  %i.df = icmp eq ptr %i.de, null
  br i1 %i.df, label %bb.al, label %pm_node_alloc.exit.i

bb.al:                                            ; preds = %bb.ak
  %i.dg = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.dh = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.dg, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 120) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_node_alloc.exit.i:                             ; preds = %bb.ak
  %i.di = load i32, ptr %0, align 8, !tbaa !109
  %i.dj = add i32 %i.di, 1                        ; 2 uses
  store i32 %i.dj, ptr %0, align 8, !tbaa !109
  %i.dk = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !139 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !106
  %i.dn = getelementptr i8, ptr %i.dm, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !133
  %i.dp = load i64, ptr %5, align 8, !tbaa !138   ; 2 uses
  %i.dq = getelementptr [8 x i8], ptr %i.dl, i64 %i.dp
  %i.dr = getelementptr i8, ptr %i.dq, i64 -8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !106
  %i.dt = getelementptr i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !134
  store i16 7, ptr %i.de, align 8, !tbaa !110
  %.sroa.39.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.de, i64 4
  store i32 %i.dj, ptr %.sroa.39.0..sroa_idx.i, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i111 = getelementptr inbounds nuw i8, ptr %i.de, i64 8 ; 2 uses
  store ptr %i.do, ptr %.sroa.4.0..sroa_idx.i111, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx.i112 = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 2 uses
  store ptr %i.du, ptr %.sroa.5.0..sroa_idx.i112, align 8, !tbaa !36
  %.not30.i = icmp eq i64 %i.dp, 0
  br i1 %.not30.i, label %pm_array_pattern_node_node_list_create.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %pm_node_alloc.exit.i
  %i.dv = getelementptr i8, ptr %i.de, i64 56
  %i.dw = getelementptr i8, ptr %i.de, i64 32
  %i.dx = getelementptr i8, ptr %i.de, i64 64
  br label %bb.am

bb.am:                                            ; preds = %bb.ar, %.lr.ph.i
  %.028.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ec, %bb.ar ] ; 2 uses
  %.02227.i = phi i1 [ false, %.lr.ph.i ], [ %.1.i, %bb.ar ]
  %i.dy = load ptr, ptr %i.dk, align 8, !tbaa !139
  %i.dz = getelementptr [8 x i8], ptr %i.dy, i64 %.028.i
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !106 ; 5 uses
  %.not.i113 = icmp eq ptr %i.ea, null
  br i1 %.not.i113, label %pm_array_pattern_node_node_list_create.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  br i1 %.02227.i, label %.critedge26.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.eb = load i16, ptr %i.ea, align 8, !tbaa !115
  switch i16 %i.eb, label %bb.aq [
    i16 139, label %bb.ap
    i16 70, label %bb.ap
  ]

bb.ap:                                            ; preds = %bb.ao, %bb.ao
  store ptr %i.ea, ptr %i.dv, align 8, !tbaa !559
  br label %bb.ar

.critedge26.i:                                    ; preds = %bb.an
  call void @pm_node_list_append(ptr noundef %i.dx, ptr noundef nonnull %i.ea) #27
  br label %bb.ar

bb.aq:                                            ; preds = %bb.ao
  call void @pm_node_list_append(ptr noundef %i.dw, ptr noundef nonnull %i.ea) #27
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.critedge26.i, %bb.ap
  %.1.i = phi i1 [ true, %.critedge26.i ], [ false, %bb.aq ], [ true, %bb.ap ]
  %i.ec = add nuw i64 %.028.i, 1                  ; 2 uses
  %i.ed = load i64, ptr %5, align 8, !tbaa !138
  %i.ee = icmp ult i64 %i.ec, %i.ed
  br i1 %i.ee, label %bb.am, label %pm_array_pattern_node_node_list_create.exit, !llvm.loop !557

pm_array_pattern_node_node_list_create.exit:      ; preds = %bb.am, %bb.ar, %pm_node_alloc.exit.i
  %or.cond = select i1 %.084, i1 %.2, i1 false
  br i1 %or.cond, label %bb.as, label %bb.at

bb.as:                                            ; preds = %pm_array_pattern_node_node_list_create.exit
  %.val93 = load ptr, ptr %.sroa.4.0..sroa_idx.i111, align 8, !tbaa !133
  %.val94 = load ptr, ptr %.sroa.5.0..sroa_idx.i112, align 8, !tbaa !134
  %i.ef = getelementptr i8, ptr %0, i64 472
  %i.eg = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ef, ptr noundef %.val93, ptr noundef %.val94, i32 noundef 220) #27 ; 0 uses
  br label %bb.at

bb.at:                                            ; preds = %pm_array_pattern_node_node_list_create.exit, %bb.as, %pm_find_pattern_node_create.exit, %bb.aj
  %.287 = phi ptr [ %i.bx, %bb.aj ], [ %i.bx, %pm_find_pattern_node_create.exit ], [ %i.de, %bb.as ], [ %i.de, %pm_array_pattern_node_node_list_create.exit ]
  %i.eh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !139
  call void @free(ptr noundef %i.ei) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.ax

bb.au:                                            ; preds = %bb.r, %pm_symbol_node_label_p.exit108.thread
  br i1 %.084, label %bb.av, label %bb.ax

bb.av:                                            ; preds = %bb.au
  %i.ej = tail call noalias dereferenceable_or_null(120) ptr @calloc(i64 noundef 1, i64 noundef 120) #30 ; 6 uses
  %i.ek = icmp eq ptr %i.ej, null
  br i1 %i.ek, label %bb.aw, label %pm_array_pattern_node_rest_create.exit

bb.aw:                                            ; preds = %bb.av
  %i.el = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.em = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.el, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 120) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_array_pattern_node_rest_create.exit:           ; preds = %bb.av
  %i.en = load i32, ptr %0, align 8, !tbaa !109
  %i.eo = add i32 %i.en, 1                        ; 2 uses
  store i32 %i.eo, ptr %0, align 8, !tbaa !109
  %i.ep = getelementptr i8, ptr %.085, i64 8
  store i16 7, ptr %i.ej, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i115 = getelementptr inbounds nuw i8, ptr %i.ej, i64 4
  store i32 %i.eo, ptr %.sroa.3.0..sroa_idx.i115, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i116 = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.eq = load <2 x ptr>, ptr %i.ep, align 8, !tbaa !36
  store <2 x ptr> %i.eq, ptr %.sroa.4.0..sroa_idx.i116, align 8, !tbaa !36
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 56
  store ptr %.085, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !106
  br label %bb.ax

bb.ax:                                            ; preds = %bb.at, %pm_array_pattern_node_rest_create.exit, %bb.au, %bb.i, %bb.j, %bb.d, %bb.e, %bb.b, %bb.c, %bb.q
  %.088 = phi ptr [ %i.aq, %bb.q ], [ %i.aa, %bb.i ], [ %i.n, %bb.d ], [ %i.f, %bb.b ], [ %i.f, %bb.c ], [ %i.n, %bb.e ], [ %i.aa, %bb.j ], [ %.287, %bb.at ], [ %i.ej, %pm_array_pattern_node_rest_create.exit ], [ %.085, %bb.au ]
  ret ptr %.088
}

declare void @pm_constant_id_list_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_if_node_modifier_create(ptr noundef %0, ptr noundef %1, ptr %.8.val, ptr %.16.val, ptr noundef %2) unnamed_addr #1 {
bb.a:
  tail call fastcc void @pm_conditional_predicate(ptr noundef %0, ptr noundef %2, i32 noundef 0)
  %i.a = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 7 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %pm_node_alloc.exit
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.h = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.g, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

bb.d:                                             ; preds = %pm_node_alloc.exit
  %i.i = load i32, ptr %0, align 8, !tbaa !109
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %0, align 8, !tbaa !109
  %i.k = getelementptr i8, ptr %0, i64 304
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86   ; 2 uses
  store i16 140, ptr %i.e, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
end_hunk_0
