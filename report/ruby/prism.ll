inline.NumInlined: 2622
inline.NumDeleted: 264
begin_hunk_0_@parse_expression_prefix:bb.a
    i32 37, label %bb.ct
    i32 41, label %bb.cw
    i32 153, label %bb.dg
    i32 154, label %bb.dk
    i32 155, label %bb.dk
    i32 55, label %bb.dn
    i32 56, label %bb.do
    i32 57, label %bb.dp
    i32 58, label %bb.dq
    i32 123, label %bb.dr
    i32 59, label %bb.du
    i32 24, label %bb.dx
    i32 66, label %bb.ea
    i32 119, label %bb.ea
    i32 65, label %bb.ff
    i32 68, label %bb.gk
    i32 69, label %bb.gn
    i32 70, label %bb.go
    i32 71, label %bb.gp
    i32 72, label %bb.gq
    i32 108, label %bb.gr
    i32 109, label %bb.gs
    i32 110, label %bb.gt
    i32 73, label %bb.gu
    i32 78, label %bb.he
    i32 75, label %bb.iz
    i32 76, label %bb.jd
    i32 77, label %bb.ji
    i32 89, label %bb.ji
    i32 96, label %bb.ji
    i32 98, label %bb.ju
    i32 107, label %bb.ka
    i32 79, label %bb.kg
    i32 80, label %bb.lh
    i32 81, label %bb.nr
    i32 83, label %bb.ob
    i32 84, label %bb.og
    i32 85, label %bb.oh
    i32 86, label %bb.ow
    i32 100, label %bb.oz
    i32 91, label %bb.ph
    i32 101, label %bb.pu
    i32 88, label %bb.pv
    i32 90, label %bb.ql
    i32 93, label %bb.qm
    i32 95, label %bb.qo
    i32 97, label %bb.qp
    i32 99, label %bb.qq
    i32 103, label %bb.qr
    i32 105, label %bb.qx
    i32 128, label %bb.rd
    i32 131, label %bb.sc
    i32 129, label %bb.uh
    i32 132, label %bb.uz
    i32 139, label %bb.wo
    i32 23, label %bb.xi
    i32 130, label %bb.xi
    i32 159, label %bb.yc
    i32 25, label %bb.yk
    i32 151, label %bb.yn
    i32 156, label %bb.yq
    i32 157, label %bb.yt
    i32 122, label %bb.yy
    i32 158, label %bb.zs
    i32 147, label %bb.zv
    i32 150, label %bb.zw
  ]

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.d = getelementptr i8, ptr %0, i64 320        ; 6 uses
  %i.e = tail call fastcc ptr @pm_array_node_create(ptr noundef nonnull %0, ptr noundef %i.d) ; 7 uses
  %i.f = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.g = load i32, ptr %i.f, align 8, !tbaa !7
  %i.h = shl i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !7
  %i.i = getelementptr i8, ptr %i.e, i64 24       ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 336        ; 5 uses
  %i.k = getelementptr i8, ptr %0, i64 472        ; 8 uses
  %i.l = getelementptr i8, ptr %0, i64 328        ; 5 uses
  %i.m = getelementptr i8, ptr %0, i64 496
  %i.n = add i16 %5, 1                            ; 5 uses
  %i.o = getelementptr i8, ptr %0, i64 352        ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 360        ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 304
  %.sroa.43241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.sroa.53242.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.63243.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.r = getelementptr i8, ptr %i.e, i64 48
  %i.s = getelementptr i8, ptr %i.e, i64 8
  %i.t = getelementptr i8, ptr %i.e, i64 16
  %i.u = getelementptr i8, ptr %i.e, i64 2        ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %bb.b
  %.01873 = phi i8 [ 0, %bb.b ], [ %.11874, %.backedge ] ; 4 uses
  %.val2157 = load i32, ptr %i.b, align 8, !tbaa !170 ; 5 uses
  switch i32 %.val2157, label %bb.d [
    i32 33, label %.loopexit
    i32 1, label %.loopexit
  ]

bb.d:                                             ; preds = %bb.c
  %i.v = icmp eq i32 %.val2157, 14                ; 2 uses
  br i1 %i.v, label %bb.e, label %accept1.exit

bb.e:                                             ; preds = %bb.d
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val2134 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  %i.w = icmp eq i32 %.val2134, 33
  br i1 %i.w, label %accept1.exit2351.thread, label %accept1.exit

accept1.exit:                                     ; preds = %bb.d, %bb.e
  %i.x = phi i32 [ %.val2157, %bb.d ], [ %.val2134, %bb.e ] ; 2 uses
  %i.y = load i64, ptr %i.i, align 8, !tbaa !294
  %.not2035 = icmp eq i64 %i.y, 0
  br i1 %.not2035, label %bb.i, label %bb.f

bb.f:                                             ; preds = %accept1.exit
  %i.z = icmp eq i32 %i.x, 3
  br i1 %i.z, label %bb.g, label %accept1.exit2336

bb.g:                                             ; preds = %bb.f
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !256
  %i.ab = load ptr, ptr %i.j, align 8, !tbaa !255
  %i.ac = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.k, ptr noundef %i.aa, ptr noundef %i.ab, i32 noundef 147) #27 ; 0 uses
  br label %bb.i

accept1.exit2336:                                 ; preds = %bb.f
  %i.ad = load ptr, ptr %i.j, align 8, !tbaa !255 ; 3 uses
  %i.ae = call ptr @pm_token_type_human(i32 noundef %i.x) #27
  %i.af = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.k, ptr noundef %i.ad, ptr noundef %i.ad, i32 noundef 29, ptr noundef %i.ae) #27 ; 0 uses
  store ptr %i.ad, ptr %i.l, align 8, !tbaa !256
  store i32 163, ptr %i.d, align 8, !tbaa !200
  br label %bb.i

bb.i:                                             ; preds = %accept1.exit2336, %bb.h, %bb.g, %accept1.exit
  %.val2133 = load i32, ptr %i.b, align 8, !tbaa !170
  switch i32 %.val2133, label %bb.w [
    i32 33, label %accept1.exit2351.thread
    i32 159, label %bb.j
    i32 160, label %bb.q
    i32 111, label %bb.q
  ]

bb.j:                                             ; preds = %bb.i
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.33245.0.copyload = load ptr, ptr %i.l, align 8, !tbaa !14 ; 3 uses
  %.sroa.53246.0.copyload = load ptr, ptr %i.j, align 8, !tbaa !14 ; 3 uses
  %.val2166 = load i32, ptr %i.b, align 8, !tbaa !170
  switch i32 %.val2166, label %bb.n [
    i32 33, label %.outer.i.i.preheader
    i32 3, label %.outer.i.i.preheader
    i32 1, label %.outer.i.i.preheader
  ]

.outer.i.i.preheader:                             ; preds = %bb.j, %bb.j, %bb.j
  br label %.outer.i.i

.outer.i.i:                                       ; preds = %.outer.i.i.preheader, %bb.m
  %.08.in.ph.i.i = phi ptr [ %.08.i.i, %bb.m ], [ %i.m, %.outer.i.i.preheader ]
  %cond.i = phi i1 [ true, %bb.m ], [ false, %.outer.i.i.preheader ]
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i, %.outer.i.i
  %.08.in.i.i = phi ptr [ %.08.i.i, %._crit_edge.i.i ], [ %.08.in.ph.i.i, %.outer.i.i ]
  %.08.i.i = load ptr, ptr %.08.in.i.i, align 8, !tbaa !66 ; 5 uses
  %.not.i.i = icmp eq ptr %.08.i.i, null
  br i1 %.not.i.i, label %.sink.split.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ag = getelementptr i8, ptr %.08.i.i, i64 48
  %i.ah = load i8, ptr %i.ag, align 8, !tbaa !70
  %i.ai = and i8 %i.ah, 1
  %.not10.i.i = icmp eq i8 %i.ai, 0
  %.phi.trans.insert.i.i = getelementptr i8, ptr %.08.i.i, i64 50
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 2, !tbaa !188, !range !45
  %i.aj = trunc nuw i8 %.pre.i.i to i1            ; 2 uses
  br i1 %.not10.i.i, label %._crit_edge.i.i, label %bb.m

._crit_edge.i.i:                                  ; preds = %bb.l
  br i1 %i.aj, label %.sink.split.i, label %bb.k, !llvm.loop !296

bb.m:                                             ; preds = %bb.l
  br i1 %i.aj, label %pm_parser_scope_forwarding_param_check.exit.i, label %.outer.i.i, !llvm.loop !296

pm_parser_scope_forwarding_param_check.exit.i:    ; preds = %bb.m
  br i1 %cond.i, label %.sink.split.i, label %pm_parser_scope_forwarding_positionals_check.exit

.sink.split.i:                                    ; preds = %._crit_edge.i.i, %bb.k, %pm_parser_scope_forwarding_param_check.exit.i
  %.sink8.i = phi i32 [ 9, %pm_parser_scope_forwarding_param_check.exit.i ], [ 20, %bb.k ], [ 20, %._crit_edge.i.i ]
  %i.ak = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.k, ptr noundef %.sroa.33245.0.copyload, ptr noundef %.sroa.53246.0.copyload, i32 noundef %.sink8.i) #27 ; 0 uses
  br label %pm_parser_scope_forwarding_positionals_check.exit

bb.n:                                             ; preds = %bb.j
  %i.al = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 14, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 28, i16 noundef zeroext %i.n), !inline_history !297 ; 3 uses
  %i.am = call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.al) ; 3 uses
  %.not.i2979 = icmp eq ptr %i.am, null
  br i1 %.not.i2979, label %pm_parser_scope_forwarding_positionals_check.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = getelementptr i8, ptr %i.am, i64 8
  %.val.i2980 = load ptr, ptr %i.an, align 8, !tbaa !133
  %i.ao = getelementptr i8, ptr %i.am, i64 16
  %.val5.i = load ptr, ptr %i.ao, align 8, !tbaa !134
  %i.ap = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.k, ptr noundef %.val.i2980, ptr noundef %.val5.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_parser_scope_forwarding_positionals_check.exit

pm_parser_scope_forwarding_positionals_check.exit: ; preds = %bb.o, %bb.n, %.sink.split.i, %pm_parser_scope_forwarding_param_check.exit.i
  %.01890 = phi ptr [ null, %.sink.split.i ], [ null, %pm_parser_scope_forwarding_param_check.exit.i ], [ %i.al, %bb.n ], [ %i.al, %bb.o ] ; 3 uses
  %i.aq = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 9 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.p, label %pm_splat_node_create.exit

bb.p:                                             ; preds = %pm_parser_scope_forwarding_positionals_check.exit
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.at = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.as, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_splat_node_create.exit:                        ; preds = %pm_parser_scope_forwarding_positionals_check.exit
  %i.au = icmp eq ptr %.01890, null
  %storemerge.in.i = load i32, ptr %0, align 8, !tbaa !109
  %storemerge.i = add i32 %storemerge.in.i, 1     ; 2 uses
  store i32 %storemerge.i, ptr %0, align 8, !tbaa !109
  br i1 %i.au, label %pm_splat_node_create.exit.cont, label %pm_splat_node_create.exit.else

pm_splat_node_create.exit.else:                   ; preds = %pm_splat_node_create.exit
  %.01890.sroa.gep = getelementptr i8, ptr %.01890, i64 16
  %.sroa.9.0.i.else.val = load ptr, ptr %.01890.sroa.gep, align 8, !tbaa !14
  br label %pm_splat_node_create.exit.cont

pm_splat_node_create.exit.cont:                   ; preds = %pm_splat_node_create.exit, %pm_splat_node_create.exit.else
  %.sroa.9.0.i = phi ptr [ %.sroa.53246.0.copyload, %pm_splat_node_create.exit ], [ %.sroa.9.0.i.else.val, %pm_splat_node_create.exit.else ]
  store i16 139, ptr %i.aq, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %storemerge.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %.sroa.33245.0.copyload, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %.sroa.33245.0.copyload, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %.sroa.53246.0.copyload, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store ptr %.01890, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !105
  br label %accept1.exit2344

bb.q:                                             ; preds = %bb.i, %bb.i
  %i.av = trunc nuw i8 %.01873 to i1
  br i1 %i.av, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.aw = load ptr, ptr %i.o, align 8, !tbaa !166
  %i.ax = load ptr, ptr %i.p, align 8, !tbaa !76
  %i.ay = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.k, ptr noundef %i.aw, ptr noundef %i.ax, i32 noundef 116) #27 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.az = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 6 uses
  %i.ba = icmp eq ptr %i.az, null
  br i1 %i.ba, label %bb.t, label %pm_keyword_hash_node_create.exit

bb.t:                                             ; preds = %bb.s
  %i.bb = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.bc = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bb, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_keyword_hash_node_create.exit:                 ; preds = %bb.s
  %i.bd = load i32, ptr %0, align 8, !tbaa !109
  %i.be = add i32 %i.bd, 1                        ; 2 uses
  store i32 %i.be, ptr %0, align 8, !tbaa !109
  store i16 90, ptr %i.az, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store i16 4, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.az, i64 4
  store i32 %i.be, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %6, i8 0, i64 128, i1 false)
  %.val2184 = load i32, ptr %i.b, align 8, !tbaa !170
  switch i32 %.val2184, label %bb.u [
    i32 33, label %bb.v
    i32 17, label %bb.v
    i32 15, label %bb.v
    i32 14, label %bb.v
    i32 5, label %bb.v
    i32 2, label %bb.v
    i32 1, label %bb.v
  ]

bb.u:                                             ; preds = %pm_keyword_hash_node_create.exit
  %i.bf = call fastcc zeroext i1 @parse_assocs(ptr noundef nonnull %0, ptr noundef %6, ptr noundef %i.az, i16 noundef zeroext %i.n) ; 0 uses
  br label %bb.v

bb.v:                                             ; preds = %pm_keyword_hash_node_create.exit, %pm_keyword_hash_node_create.exit, %pm_keyword_hash_node_create.exit, %pm_keyword_hash_node_create.exit, %pm_keyword_hash_node_create.exit, %pm_keyword_hash_node_create.exit, %pm_keyword_hash_node_create.exit, %bb.u
  call void @pm_static_literals_free(ptr noundef nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %accept1.exit2344

bb.w:                                             ; preds = %bb.i
  %i.bg = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 14, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 27, i16 noundef zeroext %i.n), !inline_history !297 ; 6 uses
  %i.bh = call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.bg) ; 3 uses
  %.not.i2981 = icmp eq ptr %i.bh, null
  br i1 %.not.i2981, label %pm_assert_value_expression.exit2984, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bi = getelementptr i8, ptr %i.bh, i64 8
  %.val.i2982 = load ptr, ptr %i.bi, align 8, !tbaa !133
  %i.bj = getelementptr i8, ptr %i.bh, i64 16
  %.val5.i2983 = load ptr, ptr %i.bj, align 8, !tbaa !134
  %i.bk = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.k, ptr noundef %.val.i2982, ptr noundef %.val5.i2983, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit2984

pm_assert_value_expression.exit2984:              ; preds = %bb.w, %bb.x
  %i.bl = load i16, ptr %i.bg, align 8, !tbaa !115
  switch i16 %i.bl, label %pm_symbol_node_label_p.exit.thread [
    i16 143, label %bb.z
    i16 86, label %bb.y
  ]

bb.y:                                             ; preds = %pm_assert_value_expression.exit2984
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %pm_assert_value_expression.exit2984
  %.sink.i = phi i64 [ 72, %bb.y ], [ 64, %pm_assert_value_expression.exit2984 ]
  %i.bm = getelementptr i8, ptr %i.bg, i64 %.sink.i
  %.0.i = load ptr, ptr %i.bm, align 8, !tbaa !14 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %pm_symbol_node_label_p.exit.thread, label %pm_symbol_node_label_p.exit

pm_symbol_node_label_p.exit:                      ; preds = %bb.z
  %i.bn = getelementptr i8, ptr %.0.i, i64 -1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !67
  %i.bp = icmp eq i8 %i.bo, 58
  br i1 %i.bp, label %bb.aa, label %pm_symbol_node_label_p.exit.thread

pm_symbol_node_label_p.exit.thread:               ; preds = %bb.z, %pm_assert_value_expression.exit2984, %pm_symbol_node_label_p.exit
  %.val.i2343 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.bq = icmp eq i32 %.val.i2343, 53
  br i1 %i.bq, label %accept1.exit2344.thread, label %accept1.exit2344

accept1.exit2344.thread:                          ; preds = %pm_symbol_node_label_p.exit.thread
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %bb.aa

bb.aa:                                            ; preds = %accept1.exit2344.thread, %pm_symbol_node_label_p.exit
  %i.br = trunc nuw i8 %.01873 to i1
  br i1 %i.br, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.bs = load ptr, ptr %i.l, align 8, !tbaa !256
  %i.bt = load ptr, ptr %i.j, align 8, !tbaa !255
  %i.bu = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.k, ptr noundef %i.bs, ptr noundef %i.bt, i32 noundef 116) #27 ; 0 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.bv = call fastcc ptr @pm_keyword_hash_node_create(ptr noundef nonnull %0) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %7, i8 0, i64 128, i1 false)
  call fastcc void @pm_hash_key_static_literals_add(ptr noundef nonnull %0, ptr noundef %7, ptr noundef nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.bw = load i32, ptr %i.d, align 8, !tbaa !200
  %i.bx = icmp eq i32 %i.bw, 53
  br i1 %i.bx, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %8, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !tbaa.struct !163
  br label %bb.af

bb.ae:                                            ; preds = %bb.ac
  %.val2235 = load ptr, ptr %i.q, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %8, align 8, !tbaa !7
  store i32 0, ptr %.sroa.43241.0..sroa_idx, align 4
  store ptr %.val2235, ptr %.sroa.53242.0..sroa_idx, align 8, !tbaa !14
  store ptr %.val2235, ptr %.sroa.63243.0..sroa_idx, align 8, !tbaa !14
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.by = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 14, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 136, i16 noundef zeroext %i.n), !inline_history !297 ; 2 uses
  call fastcc void @pm_assert_value_expression(ptr noundef nonnull %0, ptr noundef %i.by), !inline_history !297
  %i.bz = call fastcc ptr @pm_assoc_node_create(ptr noundef nonnull %0, ptr noundef nonnull %i.bg, ptr noundef %8, ptr noundef %i.by)
  call fastcc void @pm_keyword_hash_node_elements_append(ptr noundef %i.bv, ptr noundef %i.bz)
  %.val.i2345 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.ca = icmp eq i32 %.val.i2345, 3
  br i1 %i.ca, label %bb.ag, label %accept1.exit2346

bb.ag:                                            ; preds = %bb.af
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val2132 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.cb = icmp eq i32 %.val2132, 33
  br i1 %i.cb, label %accept1.exit2346, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cc = call fastcc zeroext i1 @parse_assocs(ptr noundef nonnull %0, ptr noundef %7, ptr noundef %i.bv, i16 noundef zeroext %i.n) ; 0 uses
  br label %accept1.exit2346

accept1.exit2346:                                 ; preds = %bb.af, %bb.ah, %bb.ag
  call void @pm_static_literals_free(ptr noundef nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %accept1.exit2344

accept1.exit2344:                                 ; preds = %pm_symbol_node_label_p.exit.thread, %bb.v, %accept1.exit2346, %pm_splat_node_create.exit.cont
  %.01883 = phi ptr [ %i.aq, %pm_splat_node_create.exit.cont ], [ %i.az, %bb.v ], [ %i.bv, %accept1.exit2346 ], [ %i.bg, %pm_symbol_node_label_p.exit.thread ] ; 5 uses
  %.11874 = phi i8 [ %.01873, %pm_splat_node_create.exit.cont ], [ 1, %bb.v ], [ 1, %accept1.exit2346 ], [ %.01873, %pm_symbol_node_label_p.exit.thread ]
  %i.cd = load i64, ptr %i.i, align 8, !tbaa !294
  %.not.i2347 = icmp eq i64 %i.cd, 0
  br i1 %.not.i2347, label %bb.ai, label %bb.ak

bb.ai:                                            ; preds = %accept1.exit2344
  %i.ce = load ptr, ptr %i.r, align 8, !tbaa !298
  %.not15.i = icmp eq ptr %i.ce, null
  br i1 %.not15.i, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.cf = getelementptr i8, ptr %.01883, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !133
  store ptr %i.cg, ptr %i.s, align 8, !tbaa !299
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai, %accept1.exit2344
  call void @pm_node_list_append(ptr noundef nonnull %i.i, ptr noundef nonnull %.01883) #27
  %i.ch = getelementptr i8, ptr %.01883, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !134
  store ptr %i.ci, ptr %i.t, align 8, !tbaa !300
  %i.cj = load i16, ptr %.01883, align 8, !tbaa !115 ; 2 uses
  switch i16 %i.cj, label %bb.al [
    i16 6, label %bb.am
    i16 65, label %bb.am
    i16 122, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %i.ck = getelementptr i8, ptr %.01883, i64 2
  %i.cl = load i16, ptr %i.ck, align 2, !tbaa !116
  %i.cm = and i16 %i.cl, 2
  %.not16.i = icmp eq i16 %i.cm, 0
  br i1 %.not16.i, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al, %bb.ak, %bb.ak, %bb.ak
  %i.cn = load i16, ptr %i.u, align 2, !tbaa !116
  %i.co = and i16 %i.cn, -3
  store i16 %i.co, ptr %i.u, align 2, !tbaa !116
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  switch i16 %i.cj, label %.backedge [
    i16 139, label %pm_array_node_elements_append.exit.thread
    i16 103, label %..thread_crit_edge
  ]

.backedge:                                        ; preds = %bb.an, %pm_array_node_elements_append.exit.thread
  br label %bb.c

..thread_crit_edge:                               ; preds = %bb.an
  %.val.i2348.pr.pre = load i32, ptr %i.b, align 8, !tbaa !170
  br label %.loopexit

pm_array_node_elements_append.exit.thread:        ; preds = %bb.an
  %i.cp = load i16, ptr %i.u, align 2, !tbaa !116
  %i.cq = or i16 %i.cp, 4
  store i16 %i.cq, ptr %i.u, align 2, !tbaa !116
  br label %.backedge

.loopexit:                                        ; preds = %bb.c, %bb.c, %..thread_crit_edge
  %.val.i2348 = phi i32 [ %.val.i2348.pr.pre, %..thread_crit_edge ], [ %.val2157, %bb.c ], [ %.val2157, %bb.c ] ; 2 uses
  %i.cr = icmp eq i32 %.val.i2348, 14
  br i1 %i.cr, label %bb.ao, label %accept1.exit2349

bb.ao:                                            ; preds = %.loopexit
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i2350.pre = load i32, ptr %i.b, align 8, !tbaa !170
  br label %accept1.exit2349

accept1.exit2349:                                 ; preds = %.loopexit, %bb.ao
  %i.cs = phi i32 [ %.val.i2348, %.loopexit ], [ %.val.i2350.pre, %bb.ao ] ; 2 uses
  %i.ct = icmp eq i32 %i.cs, 33
  br i1 %i.ct, label %accept1.exit2351.thread, label %accept1.exit2351

accept1.exit2351.thread:                          ; preds = %bb.e, %bb.i, %accept1.exit2349
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %bb.ap

accept1.exit2351:                                 ; preds = %accept1.exit2349
  %i.cu = load ptr, ptr %i.o, align 8, !tbaa !166
  %i.cv = load ptr, ptr %i.p, align 8, !tbaa !76
  %i.cw = call ptr @pm_token_type_human(i32 noundef %i.cs) #27
  %i.cx = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.k, ptr noundef %i.cu, ptr noundef %i.cv, i32 noundef 30, ptr noundef %i.cw) #27 ; 0 uses
  %i.cy = load ptr, ptr %i.j, align 8, !tbaa !255
  store ptr %i.cy, ptr %i.l, align 8, !tbaa !256
  store i32 163, ptr %i.d, align 8, !tbaa !200
  br label %bb.ap

bb.ap:                                            ; preds = %accept1.exit2351.thread, %accept1.exit2351
  call fastcc void @pm_array_node_close_set(ptr noundef %i.e, ptr noundef %i.d)
  %i.cz = load i32, ptr %i.f, align 8, !tbaa !7
  %i.da = lshr i32 %i.cz, 1
  store i32 %i.da, ptr %i.f, align 8, !tbaa !7
  br label %.loopexit3341

bb.aq:                                            ; preds = %bb.a, %bb.a
  %.sroa.43238.0..sroa_idx = getelementptr i8, ptr %0, i64 352 ; 3 uses
end_hunk_0
begin_hunk_1_@parse_expression_prefix:bb.a

.sink.split:                                      ; preds = %bb.gx, %bb.gy
  %.sink3624 = phi i32 [ 0, %bb.gy ], [ 1, %bb.gx ]
  %i.ts = getelementptr i8, ptr %i.tp, i64 8
  %.val2177 = load ptr, ptr %i.ts, align 8, !tbaa !133
  %i.tt = getelementptr i8, ptr %i.tp, i64 16
  %.val2178 = load ptr, ptr %i.tt, align 8, !tbaa !134
  %i.tu = getelementptr i8, ptr %0, i64 472
  %i.tv = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.tu, ptr noundef %.val2177, ptr noundef %.val2178, i32 noundef %.sink3624) #27 ; 0 uses
  br label %bb.gz

bb.gz:                                            ; preds = %.sink.split, %bb.gx, %bb.gx
  %i.tw = call fastcc ptr @pm_alias_global_variable_node_create(ptr noundef nonnull %0, ptr noundef %28, ptr noundef %i.to, ptr noundef %i.tp)
  br label %bb.hd

bb.ha:                                            ; preds = %bb.gw, %bb.gw
  %i.tx = load i16, ptr %i.tp, align 8, !tbaa !115
  switch i16 %i.tx, label %bb.hb [
    i16 143, label %bb.hc
    i16 86, label %bb.hc
  ]

bb.hb:                                            ; preds = %bb.ha
  %i.ty = getelementptr i8, ptr %i.tp, i64 8
  %.val2173 = load ptr, ptr %i.ty, align 8, !tbaa !133
  %i.tz = getelementptr i8, ptr %i.tp, i64 16
  %.val2174 = load ptr, ptr %i.tz, align 8, !tbaa !134
  %i.ua = getelementptr i8, ptr %0, i64 472
  %i.ub = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ua, ptr noundef %.val2173, ptr noundef %.val2174, i32 noundef 0) #27 ; 0 uses
  br label %bb.hc

bb.hc:                                            ; preds = %bb.ha, %bb.ha, %bb.hb, %bb.gw
  %i.uc = call fastcc ptr @pm_alias_method_node_create(ptr noundef nonnull %0, ptr noundef %28, ptr noundef %i.to, ptr noundef %i.tp)
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hc, %bb.gz
  %.6 = phi ptr [ %i.uc, %bb.hc ], [ %i.tw, %bb.gz ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #27
  br label %.loopexit3341

bb.he:                                            ; preds = %bb.a
  %i.ud = tail call fastcc i64 @token_newline_index(ptr noundef nonnull %0) ; 4 uses
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #27
  %i.ue = getelementptr i8, ptr %0, i64 320       ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %29, ptr noundef nonnull align 8 dereferenceable(24) %i.ue, i64 24, i1 false), !tbaa.struct !163
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %30, i8 0, i64 24, i1 false)
  %i.uf = getelementptr i8, ptr %0, i64 680       ; 2 uses
  %i.ug = load ptr, ptr %i.uf, align 8, !tbaa !100 ; 2 uses
  store ptr %30, ptr %i.uf, align 8, !tbaa !100
  %.val.i2418 = load i32, ptr %i.b, align 8, !tbaa !170 ; 5 uses
  switch i32 %.val.i2418, label %bb.hf [
    i32 17, label %accept2.exit2420.preheader
    i32 14, label %accept2.exit2420.preheader
    i32 13, label %accept2.exit2423.thread
    i32 10, label %accept2.exit2423.thread
    i32 8, label %accept2.exit2423.thread
  ]

accept2.exit2420.preheader:                       ; preds = %bb.he, %bb.he
  br label %accept2.exit2420

accept2.exit2420:                                 ; preds = %accept2.exit2420.backedge, %accept2.exit2420.preheader
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i2421 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  switch i32 %.val.i2421, label %accept2.exit2423.thread [
    i32 17, label %accept2.exit2420.backedge
    i32 14, label %accept2.exit2420.backedge
  ]

accept2.exit2420.backedge:                        ; preds = %accept2.exit2420, %accept2.exit2420
  br label %accept2.exit2420

bb.hf:                                            ; preds = %bb.he
  %i.uh = call fastcc zeroext i1 @token_begins_expression_p(i32 noundef %.val.i2418)
  br i1 %i.uh, label %bb.hg, label %.thread-pre-split3260_crit_edge

.thread-pre-split3260_crit_edge:                  ; preds = %bb.hf
  %.val2108.pr.pre = load i32, ptr %i.b, align 8, !tbaa !170
  br label %accept2.exit2423.thread

bb.hg:                                            ; preds = %bb.hf
  %i.ui = add i16 %5, 1
  %i.uj = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 42, i16 noundef zeroext %i.ui), !inline_history !297 ; 2 uses
  call fastcc void @pm_assert_value_expression(ptr noundef nonnull %0, ptr noundef %i.uj), !inline_history !297
  br label %bb.hh

bb.hh:                                            ; preds = %accept2.exit2428, %bb.hg
  %.val.i2426 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  switch i32 %.val.i2426, label %accept2.exit2423.thread [
    i32 17, label %accept2.exit2428
    i32 14, label %accept2.exit2428
  ]

accept2.exit2428:                                 ; preds = %bb.hh, %bb.hh
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %bb.hh

accept2.exit2423.thread:                          ; preds = %accept2.exit2420, %bb.hh, %bb.he, %bb.he, %bb.he, %.thread-pre-split3260_crit_edge
  %.val2108 = phi i32 [ %.val.i2426, %bb.hh ], [ %.val.i2418, %bb.he ], [ %.val2108.pr.pre, %.thread-pre-split3260_crit_edge ], [ %.val.i2418, %bb.he ], [ %.val.i2418, %bb.he ], [ %.val.i2421, %accept2.exit2420 ] ; 2 uses
  %.01918 = phi ptr [ %i.uj, %bb.hh ], [ null, %bb.he ], [ null, %.thread-pre-split3260_crit_edge ], [ null, %bb.he ], [ null, %bb.he ], [ null, %accept2.exit2420 ] ; 4 uses
  %i.uk = icmp eq i32 %.val2108, 8
  br i1 %i.uk, label %bb.hi, label %bb.hj

bb.hi:                                            ; preds = %accept2.exit2423.thread
  call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %i.ud, ptr noundef %29, i1 noundef zeroext false, i1 noundef zeroext false)
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  call fastcc void @pop_block_exits(ptr noundef nonnull %0, ptr noundef %i.ug)
  call void @pm_node_list_free(ptr noundef nonnull %30) #27
  %i.ul = getelementptr inbounds nuw i8, ptr %29, i64 8
  %.val2074 = load ptr, ptr %i.ul, align 8, !tbaa !127 ; 2 uses
  %i.um = getelementptr inbounds nuw i8, ptr %29, i64 16
  %.val2075 = load ptr, ptr %i.um, align 8, !tbaa !128 ; 2 uses
  %i.un = getelementptr i8, ptr %0, i64 472
  %i.uo = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.un, ptr noundef %.val2074, ptr noundef %.val2075, i32 noundef 45) #27 ; 0 uses
  %i.up = call fastcc ptr @pm_case_node_create(ptr noundef nonnull %0, ptr %.val2074, ptr %.val2075, ptr noundef %.01918, ptr noundef nonnull %i.ue)
  br label %bb.iy

bb.hj:                                            ; preds = %accept2.exit2423.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #27
  %i.uq = getelementptr i8, ptr %0, i64 304       ; 2 uses
  %.val2233 = load ptr, ptr %i.uq, align 8, !tbaa !74 ; 4 uses
  store i32 164, ptr %31, align 8, !tbaa !126, !alias.scope !329
  %i.ur = getelementptr inbounds nuw i8, ptr %31, i64 4
  store i32 0, ptr %i.ur, align 4, !alias.scope !329
  %i.us = getelementptr inbounds nuw i8, ptr %31, i64 8
  store ptr %.val2233, ptr %i.us, align 8, !tbaa !127, !alias.scope !329
  %i.ut = getelementptr inbounds nuw i8, ptr %31, i64 16
  store ptr %.val2233, ptr %i.ut, align 8, !tbaa !128, !alias.scope !329
  %i.uu = icmp eq i32 %.val2108, 13
  %i.uv = getelementptr inbounds nuw i8, ptr %29, i64 8
  %.val2260 = load ptr, ptr %i.uv, align 8        ; 5 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %29, i64 16
  %.val2261 = load ptr, ptr %i.uw, align 8        ; 5 uses
  br i1 %i.uu, label %bb.hk, label %bb.ie

bb.hk:                                            ; preds = %bb.hj
  %i.ux = call fastcc ptr @pm_case_node_create(ptr noundef nonnull %0, ptr %.val2260, ptr %.val2261, ptr noundef %.01918, ptr noundef nonnull %31) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %32, i8 0, i64 128, i1 false)
  %.val21063402 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.uy = icmp eq i32 %.val21063402, 13
  br i1 %i.uy, label %.lr.ph3404, label %._crit_edge3405

.lr.ph3404:                                       ; preds = %bb.hk
  %.sroa.33234.0..sroa_idx = getelementptr i8, ptr %0, i64 328 ; 5 uses
  %.sroa.43235.0..sroa_idx = getelementptr i8, ptr %0, i64 336 ; 4 uses
  %i.uz = add i16 %5, 1                           ; 3 uses
  %i.va = getelementptr i8, ptr %0, i64 472       ; 3 uses
  %i.vb = getelementptr i8, ptr %0, i64 600       ; 3 uses
  %i.vc = getelementptr i8, ptr %0, i64 664       ; 3 uses
  %i.vd = getelementptr i8, ptr %0, i64 448
  %i.ve = getelementptr i8, ptr %i.ux, i64 32
  %i.vf = getelementptr i8, ptr %i.ux, i64 16
  br label %bb.hl

bb.hl:                                            ; preds = %.lr.ph3404, %pm_case_node_condition_append.exit
  call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %i.ud, ptr noundef %29, i1 noundef zeroext false, i1 noundef zeroext true)
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.33234.0.copyload = load ptr, ptr %.sroa.33234.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.43235.0.copyload = load ptr, ptr %.sroa.43235.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %i.vg = call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #30 ; 13 uses
  %i.vh = icmp eq ptr %i.vg, null
  br i1 %i.vh, label %bb.hm, label %pm_when_node_create.exit

bb.hm:                                            ; preds = %bb.hl
  %i.vi = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.vj = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.vi, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 88) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_when_node_create.exit:                         ; preds = %bb.hl
  %i.vk = load i32, ptr %0, align 8, !tbaa !109
  %i.vl = add i32 %i.vk, 1                        ; 2 uses
  store i32 %i.vl, ptr %0, align 8, !tbaa !109
  store i16 148, ptr %i.vg, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i2429 = getelementptr inbounds nuw i8, ptr %i.vg, i64 4
  store i32 %i.vl, ptr %.sroa.3.0..sroa_idx.i2429, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  store ptr %.sroa.33234.0.copyload, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i2430 = getelementptr inbounds nuw i8, ptr %i.vg, i64 16 ; 7 uses
  store ptr %.sroa.43235.0.copyload, ptr %.sroa.5.0..sroa_idx.i2430, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.vg, i64 24
  store ptr %.sroa.33234.0.copyload, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.7.0..sroa_idx.i2431 = getelementptr inbounds nuw i8, ptr %i.vg, i64 32
  store ptr %.sroa.43235.0.copyload, ptr %.sroa.7.0..sroa_idx.i2431, align 8, !tbaa !14
  %i.vm = getelementptr i8, ptr %i.vg, i64 40     ; 2 uses
  br label %bb.hn

bb.hn:                                            ; preds = %accept1.exit2450, %pm_when_node_create.exit
  %.val.i2432 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.vn = icmp eq i32 %.val.i2432, 159
  br i1 %i.vn, label %bb.ho, label %accept1.exit2433

bb.ho:                                            ; preds = %bb.hn
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.33231.0.copyload = load ptr, ptr %.sroa.33234.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.43232.0.copyload = load ptr, ptr %.sroa.43235.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %i.vo = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 14, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 101, i16 noundef zeroext %i.uz), !inline_history !297 ; 5 uses
  %i.vp = call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.vo) ; 3 uses
  %.not.i2985 = icmp eq ptr %i.vp, null
  br i1 %.not.i2985, label %pm_assert_value_expression.exit2988, label %bb.hp

bb.hp:                                            ; preds = %bb.ho
  %i.vq = getelementptr i8, ptr %i.vp, i64 8
  %.val.i2986 = load ptr, ptr %i.vq, align 8, !tbaa !133
  %i.vr = getelementptr i8, ptr %i.vp, i64 16
  %.val5.i2987 = load ptr, ptr %i.vr, align 8, !tbaa !134
  %i.vs = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.va, ptr noundef %.val.i2986, ptr noundef %.val5.i2987, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit2988

pm_assert_value_expression.exit2988:              ; preds = %bb.ho, %bb.hp
  %i.vt = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 9 uses
  %i.vu = icmp eq ptr %i.vt, null
  br i1 %i.vu, label %bb.hq, label %pm_splat_node_create.exit2447

bb.hq:                                            ; preds = %pm_assert_value_expression.exit2988
  %i.vv = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.vw = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.vv, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_splat_node_create.exit2447:                    ; preds = %pm_assert_value_expression.exit2988
  %i.vx = icmp eq ptr %i.vo, null
  %storemerge.in.i2435 = load i32, ptr %0, align 8, !tbaa !109
  %storemerge.i2436 = add i32 %storemerge.in.i2435, 1 ; 2 uses
  store i32 %storemerge.i2436, ptr %0, align 8, !tbaa !109
  br i1 %i.vx, label %pm_splat_node_create.exit2447.cont, label %pm_splat_node_create.exit2447.else

pm_splat_node_create.exit2447.else:               ; preds = %pm_splat_node_create.exit2447
  %.sroa.gep3229 = getelementptr i8, ptr %i.vo, i64 16
  %.sroa.9.0.i2440.else.val = load ptr, ptr %.sroa.gep3229, align 8, !tbaa !14
  br label %pm_splat_node_create.exit2447.cont

pm_splat_node_create.exit2447.cont:               ; preds = %pm_splat_node_create.exit2447, %pm_splat_node_create.exit2447.else
  %.sroa.9.0.i2440 = phi ptr [ %.sroa.43232.0.copyload, %pm_splat_node_create.exit2447 ], [ %.sroa.9.0.i2440.else.val, %pm_splat_node_create.exit2447.else ] ; 2 uses
  store i16 139, ptr %i.vt, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i2441 = getelementptr inbounds nuw i8, ptr %i.vt, i64 4
  store i32 %storemerge.i2436, ptr %.sroa.5.0..sroa_idx.i2441, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx.i2442 = getelementptr inbounds nuw i8, ptr %i.vt, i64 8
  store ptr %.sroa.33231.0.copyload, ptr %.sroa.7.0..sroa_idx.i2442, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i2443 = getelementptr inbounds nuw i8, ptr %i.vt, i64 16
  store ptr %.sroa.9.0.i2440, ptr %.sroa.9.0..sroa_idx.i2443, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i2444 = getelementptr inbounds nuw i8, ptr %i.vt, i64 24
  store ptr %.sroa.33231.0.copyload, ptr %.sroa.11.0..sroa_idx.i2444, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i2445 = getelementptr inbounds nuw i8, ptr %i.vt, i64 32
  store ptr %.sroa.43232.0.copyload, ptr %.sroa.12.0..sroa_idx.i2445, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx.i2446 = getelementptr inbounds nuw i8, ptr %i.vt, i64 40
  store ptr %i.vo, ptr %.sroa.13.0..sroa_idx.i2446, align 8, !tbaa !105
  store ptr %.sroa.9.0.i2440, ptr %.sroa.5.0..sroa_idx.i2430, align 8, !tbaa !332
  call void @pm_node_list_append(ptr noundef %i.vm, ptr noundef nonnull %i.vt) #27
  %i.vy = load i16, ptr %i.vo, align 8, !tbaa !115
  %i.vz = icmp eq i16 %i.vy, 103
  br i1 %i.vz, label %pm_when_clause_static_literals_add.exitthread-pre-split, label %pm_when_clause_static_literals_add.exit.thread

accept1.exit2433:                                 ; preds = %bb.hn
  %i.wa = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 14, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 43, i16 noundef zeroext %i.uz), !inline_history !297 ; 7 uses
  %i.wb = call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.wa) ; 3 uses
  %.not.i2989 = icmp eq ptr %i.wb, null
  br i1 %.not.i2989, label %pm_assert_value_expression.exit2992, label %bb.hr

bb.hr:                                            ; preds = %accept1.exit2433
  %i.wc = getelementptr i8, ptr %i.wb, i64 8
  %.val.i2990 = load ptr, ptr %i.wc, align 8, !tbaa !133
  %i.wd = getelementptr i8, ptr %i.wb, i64 16
  %.val5.i2991 = load ptr, ptr %i.wd, align 8, !tbaa !134
  %i.we = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.va, ptr noundef %.val.i2990, ptr noundef %.val5.i2991, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit2992

pm_assert_value_expression.exit2992:              ; preds = %accept1.exit2433, %bb.hr
  %i.wf = getelementptr i8, ptr %i.wa, i64 16     ; 2 uses
  %i.wg = load ptr, ptr %i.wf, align 8, !tbaa !134
  store ptr %i.wg, ptr %.sroa.5.0..sroa_idx.i2430, align 8, !tbaa !332
  call void @pm_node_list_append(ptr noundef %i.vm, ptr noundef %i.wa) #27
  %i.wh = load i16, ptr %i.wa, align 8, !tbaa !115
  switch i16 %i.wh, label %bb.ht [
    i16 103, label %pm_when_clause_static_literals_add.exitthread-pre-split
    i16 141, label %.sink.split3627
    i16 137, label %bb.hs
  ]

bb.hs:                                            ; preds = %pm_assert_value_expression.exit2992
  br label %.sink.split3627

.sink.split3627:                                  ; preds = %pm_assert_value_expression.exit2992, %bb.hs
  %.sink3631 = phi i16 [ 2, %bb.hs ], [ 18, %pm_assert_value_expression.exit2992 ]
  %i.wi = getelementptr i8, ptr %i.wa, i64 2      ; 2 uses
  %i.wj = load i16, ptr %i.wi, align 2, !tbaa !116
  %i.wk = or i16 %i.wj, %.sink3631
  store i16 %i.wk, ptr %i.wi, align 2, !tbaa !116
  br label %bb.ht

bb.ht:                                            ; preds = %.sink.split3627, %pm_assert_value_expression.exit2992
  %i.wl = load i32, ptr %i.vc, align 8, !tbaa !26
  %i.wm = call ptr @pm_static_literals_add(ptr noundef %i.vb, i32 noundef %i.wl, ptr noundef nonnull %32, ptr noundef nonnull %i.wa, i1 noundef zeroext false) #27 ; 2 uses
  %.not.i2448 = icmp eq ptr %i.wm, null
  br i1 %.not.i2448, label %pm_when_clause_static_literals_add.exit.thread, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.wn = getelementptr i8, ptr %i.wa, i64 8
  %i.wo = load ptr, ptr %i.wn, align 8, !tbaa !133 ; 2 uses
  %i.wp = load ptr, ptr %i.wf, align 8, !tbaa !134
  %i.wq = load i32, ptr %i.vc, align 8, !tbaa !26
  %i.wr = call i64 @pm_newline_list_line_column(ptr noundef %i.vb, ptr noundef %i.wo, i32 noundef %i.wq) #27
  %.sroa.01.0.extract.trunc.i = trunc i64 %i.wr to i32
  %i.ws = getelementptr i8, ptr %i.wm, i64 8
  %i.wt = load ptr, ptr %i.ws, align 8, !tbaa !133
  %i.wu = load i32, ptr %i.vc, align 8, !tbaa !26
  %i.wv = call i64 @pm_newline_list_line_column(ptr noundef %i.vb, ptr noundef %i.wt, i32 noundef %i.wu) #27
  %.sroa.0.0.extract.trunc.i = trunc i64 %i.wv to i32
  %i.ww = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.vd, ptr noundef %i.wo, ptr noundef %i.wp, i32 noundef 309, i32 noundef %.sroa.01.0.extract.trunc.i, i32 noundef %.sroa.0.0.extract.trunc.i) #27 ; 0 uses
  br label %pm_when_clause_static_literals_add.exit.thread

pm_when_clause_static_literals_add.exit.thread:   ; preds = %bb.hu, %bb.ht, %pm_splat_node_create.exit2447.cont
  %.val.i2449 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  %i.wx = icmp eq i32 %.val.i2449, 3
  br i1 %i.wx, label %accept1.exit2450, label %pm_when_clause_static_literals_add.exit

accept1.exit2450:                                 ; preds = %pm_when_clause_static_literals_add.exit.thread
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %bb.hn, !llvm.loop !334

pm_when_clause_static_literals_add.exitthread-pre-split: ; preds = %pm_splat_node_create.exit2447.cont, %pm_assert_value_expression.exit2992
  %.val.i2451.pr = load i32, ptr %i.b, align 8, !tbaa !170
  br label %pm_when_clause_static_literals_add.exit

pm_when_clause_static_literals_add.exit:          ; preds = %pm_when_clause_static_literals_add.exit.thread, %pm_when_clause_static_literals_add.exitthread-pre-split
  %.val.i2451 = phi i32 [ %.val.i2451.pr, %pm_when_clause_static_literals_add.exitthread-pre-split ], [ %.val.i2449, %pm_when_clause_static_literals_add.exit.thread ]
  switch i32 %.val.i2451, label %accept1.exit.i [
    i32 17, label %bb.hv
    i32 14, label %bb.hv
    i32 12, label %accept1.exit.thread.i
  ]

bb.hv:                                            ; preds = %pm_when_clause_static_literals_add.exit, %pm_when_clause_static_literals_add.exit
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i2454 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  %i.wy = icmp eq i32 %.val.i2454, 12
  br i1 %i.wy, label %bb.hw, label %accept1.exit2455

bb.hw:                                            ; preds = %bb.hv
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val2268 = load ptr, ptr %.sroa.33234.0..sroa_idx, align 8, !tbaa !127
  br label %accept1.exit2455thread-pre-split

accept1.exit.thread.i:                            ; preds = %pm_when_clause_static_literals_add.exit
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val2266.pre = load ptr, ptr %.sroa.33234.0..sroa_idx, align 8, !tbaa !127
  br label %accept1.exit2455thread-pre-split

accept1.exit.i:                                   ; preds = %pm_when_clause_static_literals_add.exit
  %i.wz = load ptr, ptr %.sroa.43235.0..sroa_idx, align 8, !tbaa !255 ; 4 uses
  %i.xa = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.va, ptr noundef %i.wz, ptr noundef %i.wz, i32 noundef 115) #27 ; 0 uses
  store ptr %i.wz, ptr %.sroa.33234.0..sroa_idx, align 8, !tbaa !256
  store i32 163, ptr %i.ue, align 8, !tbaa !200
  br label %accept1.exit2455thread-pre-split

accept1.exit2455thread-pre-split:                 ; preds = %accept1.exit.i, %accept1.exit.thread.i, %bb.hw
  %.val2266.sink = phi ptr [ %.val2268, %bb.hw ], [ %.val2266.pre, %accept1.exit.thread.i ], [ %i.wz, %accept1.exit.i ]
  %.val2267 = load ptr, ptr %.sroa.43235.0..sroa_idx, align 8, !tbaa !128 ; 2 uses
  store ptr %.val2267, ptr %.sroa.5.0..sroa_idx.i2430, align 8, !tbaa !332
  %i.xb = getelementptr i8, ptr %i.vg, i64 64
  store ptr %.val2266.sink, ptr %i.xb, align 8, !tbaa !14
  %.sroa.2.0..sroa_idx.i2457 = getelementptr i8, ptr %i.vg, i64 72
  store ptr %.val2267, ptr %.sroa.2.0..sroa_idx.i2457, align 8, !tbaa !14
  %.val2162.pr = load i32, ptr %i.b, align 8, !tbaa !170
  br label %accept1.exit2455

accept1.exit2455:                                 ; preds = %accept1.exit2455thread-pre-split, %bb.hv
  %.val2162 = phi i32 [ %.val2162.pr, %accept1.exit2455thread-pre-split ], [ %.val.i2454, %bb.hv ]
  switch i32 %.val2162, label %bb.hx [
    i32 13, label %bb.ia
    i32 8, label %bb.ia
    i32 6, label %bb.ia
  ]

bb.hx:                                            ; preds = %accept1.exit2455
  %i.xc = call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 11, i16 noundef zeroext %i.uz) ; 3 uses
  %.not2029 = icmp eq ptr %i.xc, null
  br i1 %.not2029, label %bb.ia, label %bb.hy

bb.hy:                                            ; preds = %bb.hx
  %i.xd = getelementptr i8, ptr %i.xc, i64 16
  %i.xe = load ptr, ptr %i.xd, align 8, !tbaa !122 ; 2 uses
  %i.xf = load ptr, ptr %.sroa.5.0..sroa_idx.i2430, align 8, !tbaa !332
  %i.xg = icmp ugt ptr %i.xe, %i.xf
  br i1 %i.xg, label %bb.hz, label %pm_when_node_statements_set.exit

bb.hz:                                            ; preds = %bb.hy
  store ptr %i.xe, ptr %.sroa.5.0..sroa_idx.i2430, align 8, !tbaa !332
  br label %pm_when_node_statements_set.exit

pm_when_node_statements_set.exit:                 ; preds = %bb.hy, %bb.hz
  %i.xh = getelementptr i8, ptr %i.vg, i64 80
  store ptr %i.xc, ptr %i.xh, align 8, !tbaa !335
  br label %bb.ia

bb.ia:                                            ; preds = %accept1.exit2455, %accept1.exit2455, %accept1.exit2455, %bb.hx, %pm_when_node_statements_set.exit
  %i.xi = load i16, ptr %i.vg, align 8, !tbaa !115
  %i.xj = icmp eq i16 %i.xi, 148
  br i1 %i.xj, label %pm_case_node_condition_append.exit, label %bb.ib

bb.ib:                                            ; preds = %bb.ia
  call void @__assert_fail(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.2, i32 noundef 3171, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_case_node_condition_append) #26
  unreachable

pm_case_node_condition_append.exit:               ; preds = %bb.ia
  call void @pm_node_list_append(ptr noundef %i.ve, ptr noundef nonnull %i.vg) #27
  %i.xk = load ptr, ptr %.sroa.5.0..sroa_idx.i2430, align 8, !tbaa !134
  store ptr %i.xk, ptr %i.vf, align 8, !tbaa !336
  %.val2106 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.xl = icmp eq i32 %.val2106, 13
  br i1 %i.xl, label %bb.hl, label %._crit_edge3405, !llvm.loop !339

._crit_edge3405:                                  ; preds = %pm_case_node_condition_append.exit, %bb.hk
  %i.xm = getelementptr i8, ptr %i.ux, i64 32
  %i.xn = load i64, ptr %i.xm, align 8, !tbaa !340
  %i.xo = icmp eq i64 %i.xn, 0
  br i1 %i.xo, label %bb.ic, label %bb.id

bb.ic:                                            ; preds = %._crit_edge3405
  %i.xp = getelementptr i8, ptr %0, i64 472
  %i.xq = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.xp, ptr noundef %.val2260, ptr noundef %.val2261, i32 noundef 45) #27 ; 0 uses
  br label %bb.id

bb.id:                                            ; preds = %bb.ic, %._crit_edge3405
  call void @pm_static_literals_free(ptr noundef nonnull %32) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #27
  br label %bb.it

bb.ie:                                            ; preds = %bb.hj
  %i.xr = call fastcc ptr @pm_case_match_node_create(ptr noundef nonnull %0, ptr %.val2260, ptr %.val2261, ptr noundef %.01918, ptr %.val2233, ptr %.val2233) ; 5 uses
  %i.xs = icmp eq ptr %.01918, null
  br i1 %i.xs, label %bb.if, label %bb.ig

bb.if:                                            ; preds = %bb.ie
  %i.xt = getelementptr i8, ptr %0, i64 472
  %i.xu = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.xt, ptr noundef %.val2260, ptr noundef %.val2261, i32 noundef 44) #27 ; 0 uses
  br label %bb.ig

bb.ig:                                            ; preds = %bb.if, %bb.ie
  %.val21053398 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.xv = icmp eq i32 %.val21053398, 10
  br i1 %i.xv, label %.lr.ph3400, label %._crit_edge3401

.lr.ph3400:                                       ; preds = %bb.ig
  %i.xw = getelementptr i8, ptr %0, i64 700       ; 3 uses
  %i.xx = getelementptr i8, ptr %0, i64 4
  %i.xy = getelementptr i8, ptr %0, i64 696
  %.sroa.33227.0..sroa_idx = getelementptr i8, ptr %0, i64 328 ; 7 uses
  %.sroa.43228.0..sroa_idx = getelementptr i8, ptr %0, i64 336 ; 4 uses
  %i.xz = add i16 %5, 1                           ; 4 uses
  %i.ya = getelementptr i8, ptr %0, i64 472       ; 3 uses
  %i.yb = getelementptr i8, ptr %i.xr, i64 32
  %i.yc = getelementptr i8, ptr %i.xr, i64 16
  br label %bb.ih

bb.ih:                                            ; preds = %.lr.ph3400, %pm_case_match_node_condition_append.exit
  call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %i.ud, ptr noundef %29, i1 noundef zeroext false, i1 noundef zeroext true)
  %i.yd = load i8, ptr %i.xw, align 4, !tbaa !196, !range !45, !noundef !46
  store i8 1, ptr %i.xw, align 4, !tbaa !196
  store i32 1025, ptr %i.xx, align 4, !tbaa !195
  store i8 0, ptr %i.xy, align 8, !tbaa !164
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.ye = load <2 x ptr>, ptr %.sroa.33227.0..sroa_idx, align 8, !tbaa !14
  %.sroa.33227.0.copyload = load ptr, ptr %.sroa.33227.0..sroa_idx, align 8, !tbaa !14
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %33, i8 0, i64 24, i1 false)
  %i.yf = call fastcc ptr @parse_pattern(ptr noundef nonnull %0, ptr noundef %33, i8 noundef zeroext 3, i32 noundef 226, i16 noundef zeroext %i.xz) ; 3 uses
  store i8 %i.yd, ptr %i.xw, align 4, !tbaa !196
  call void @pm_constant_id_list_free(ptr noundef nonnull %33) #27
  %.val.i2460 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  switch i32 %.val.i2460, label %accept1.exit2463 [
    i32 87, label %bb.ii
    i32 102, label %bb.ik
  ]

bb.ii:                                            ; preds = %bb.ih
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.33224.0.copyload = load ptr, ptr %.sroa.33227.0..sroa_idx, align 8, !tbaa !14
  %.sroa.43225.0.copyload = load ptr, ptr %.sroa.43228.0..sroa_idx, align 8, !tbaa !14
  %i.yg = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 54, i16 noundef zeroext %i.xz), !inline_history !297 ; 2 uses
  %i.yh = call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.yg) ; 3 uses
  %.not.i2993 = icmp eq ptr %i.yh, null
  br i1 %.not.i2993, label %pm_assert_value_expression.exit2996, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.yi = getelementptr i8, ptr %i.yh, i64 8
  %.val.i2994 = load ptr, ptr %i.yi, align 8, !tbaa !133
  %i.yj = getelementptr i8, ptr %i.yh, i64 16
  %.val5.i2995 = load ptr, ptr %i.yj, align 8, !tbaa !134
  %i.yk = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ya, ptr noundef %.val.i2994, ptr noundef %.val5.i2995, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit2996

pm_assert_value_expression.exit2996:              ; preds = %bb.ii, %bb.ij
  %i.yl = call fastcc ptr @pm_if_node_modifier_create(ptr noundef nonnull %0, ptr noundef nonnull %i.yf, ptr %.sroa.33224.0.copyload, ptr %.sroa.43225.0.copyload, ptr noundef %i.yg)
  br label %accept1.exit2463thread-pre-split

bb.ik:                                            ; preds = %bb.ih
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.33221.0.copyload = load ptr, ptr %.sroa.33227.0..sroa_idx, align 8, !tbaa !14
  %.sroa.43222.0.copyload = load ptr, ptr %.sroa.43228.0..sroa_idx, align 8, !tbaa !14
  %i.ym = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 8, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 58, i16 noundef zeroext %i.xz), !inline_history !297 ; 2 uses
  %i.yn = call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.ym) ; 3 uses
  %.not.i2997 = icmp eq ptr %i.yn, null
  br i1 %.not.i2997, label %pm_assert_value_expression.exit3000, label %bb.il

bb.il:                                            ; preds = %bb.ik
  %i.yo = getelementptr i8, ptr %i.yn, i64 8
  %.val.i2998 = load ptr, ptr %i.yo, align 8, !tbaa !133
  %i.yp = getelementptr i8, ptr %i.yn, i64 16
  %.val5.i2999 = load ptr, ptr %i.yp, align 8, !tbaa !134
  %i.yq = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ya, ptr noundef %.val.i2998, ptr noundef %.val5.i2999, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit3000

pm_assert_value_expression.exit3000:              ; preds = %bb.ik, %bb.il
  %i.yr = call fastcc ptr @pm_unless_node_modifier_create(ptr noundef nonnull %0, ptr noundef nonnull %i.yf, ptr %.sroa.33221.0.copyload, ptr %.sroa.43222.0.copyload, ptr noundef %i.ym)
  br label %accept1.exit2463thread-pre-split

accept1.exit2463thread-pre-split:                 ; preds = %pm_assert_value_expression.exit2996, %pm_assert_value_expression.exit3000
  %.01920.ph = phi ptr [ %i.yr, %pm_assert_value_expression.exit3000 ], [ %i.yl, %pm_assert_value_expression.exit2996 ]
  %.val.i2464.pr = load i32, ptr %i.b, align 8, !tbaa !170
  br label %accept1.exit2463

accept1.exit2463:                                 ; preds = %bb.ih, %accept1.exit2463thread-pre-split
  %.val.i2464 = phi i32 [ %.val.i2464.pr, %accept1.exit2463thread-pre-split ], [ %.val.i2460, %bb.ih ]
  %.01920 = phi ptr [ %.01920.ph, %accept1.exit2463thread-pre-split ], [ %i.yf, %bb.ih ] ; 2 uses
  switch i32 %.val.i2464, label %accept1.exit.i2470 [
    i32 17, label %bb.im
    i32 14, label %bb.im
    i32 12, label %accept1.exit.thread.i2471
  ]

bb.im:                                            ; preds = %accept1.exit2463, %accept1.exit2463
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i2467 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  %i.ys = icmp eq i32 %.val.i2467, 12
  br i1 %i.ys, label %bb.in, label %accept1.exit2468

bb.in:                                            ; preds = %bb.im
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.03209.0.copyload = load i32, ptr %i.ue, align 8, !tbaa !7
  %.sroa.83214.0.copyload = load ptr, ptr %.sroa.33227.0..sroa_idx, align 8, !tbaa !14
  br label %thread-pre-split3548

accept1.exit2468:                                 ; preds = %bb.im
  %.val2232 = load ptr, ptr %i.uq, align 8, !tbaa !74 ; 2 uses
  br label %bb.io

accept1.exit.thread.i2471:                        ; preds = %accept1.exit2463
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.03209.0.copyload3210.pre = load i32, ptr %i.ue, align 8, !tbaa !7
  %.sroa.83214.0.copyload3216.pre = load ptr, ptr %.sroa.33227.0..sroa_idx, align 8, !tbaa !14
  br label %thread-pre-split3548

accept1.exit.i2470:                               ; preds = %accept1.exit2463
  %i.yt = load ptr, ptr %.sroa.43228.0..sroa_idx, align 8, !tbaa !255 ; 4 uses
  %i.yu = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ya, ptr noundef %i.yt, ptr noundef %i.yt, i32 noundef 104) #27 ; 0 uses
  store ptr %i.yt, ptr %.sroa.33227.0..sroa_idx, align 8, !tbaa !256
  store i32 163, ptr %i.ue, align 8, !tbaa !200
  br label %thread-pre-split3548

thread-pre-split3548:                             ; preds = %accept1.exit.i2470, %accept1.exit.thread.i2471, %bb.in
  %.sroa.03209.0.ph = phi i32 [ %.sroa.03209.0.copyload, %bb.in ], [ %.sroa.03209.0.copyload3210.pre, %accept1.exit.thread.i2471 ], [ 163, %accept1.exit.i2470 ]
  %.sroa.83214.0.ph = phi ptr [ %.sroa.83214.0.copyload, %bb.in ], [ %.sroa.83214.0.copyload3216.pre, %accept1.exit.thread.i2471 ], [ %i.yt, %accept1.exit.i2470 ]
  %.sroa.103217.0.copyload3219 = load ptr, ptr %.sroa.43228.0..sroa_idx, align 8, !tbaa !14
  %.val2161.pr = load i32, ptr %i.b, align 8, !tbaa !170
  %i.yv = icmp eq i32 %.sroa.03209.0.ph, 164
  br label %bb.io

bb.io:                                            ; preds = %thread-pre-split3548, %accept1.exit2468
  %.val2161 = phi i32 [ %.val2161.pr, %thread-pre-split3548 ], [ %.val.i2467, %accept1.exit2468 ]
  %.sroa.03209.0 = phi i1 [ %i.yv, %thread-pre-split3548 ], [ true, %accept1.exit2468 ] ; 3 uses
  %.sroa.83214.0 = phi ptr [ %.sroa.83214.0.ph, %thread-pre-split3548 ], [ %.val2232, %accept1.exit2468 ] ; 2 uses
  %.sroa.103217.0 = phi ptr [ %.sroa.103217.0.copyload3219, %thread-pre-split3548 ], [ %.val2232, %accept1.exit2468 ] ; 3 uses
  switch i32 %.val2161, label %bb.ip [
    i32 10, label %.thread3262
    i32 8, label %.thread3262
    i32 6, label %.thread3262
  ]

bb.ip:                                            ; preds = %bb.io
  %i.yw = call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 12, i16 noundef zeroext %i.xz) ; 3 uses
  %i.yx = call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 3 uses
  %i.yy = icmp eq ptr %i.yx, null
  br i1 %i.yy, label %bb.iq, label %pm_node_alloc.exit.i

.thread3262:                                      ; preds = %bb.io, %bb.io, %bb.io
  %i.yz = call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 2 uses
  %i.za = icmp eq ptr %i.yz, null
  br i1 %i.za, label %bb.iq, label %pm_node_alloc.exit.i.thread

bb.iq:                                            ; preds = %.thread3262, %bb.ip
  %i.zb = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.zc = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.zb, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 72) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_node_alloc.exit.i:                             ; preds = %bb.ip
  %.not.i2475 = icmp eq ptr %i.yw, null
  br i1 %.not.i2475, label %pm_node_alloc.exit.i.thread, label %bb.ir

pm_node_alloc.exit.i.thread:                      ; preds = %.thread3262, %pm_node_alloc.exit.i
  %i.zd = phi ptr [ %i.yx, %pm_node_alloc.exit.i ], [ %i.yz, %.thread3262 ] ; 2 uses
  %i.ze = load i32, ptr %0, align 8, !tbaa !109
  %i.zf = add i32 %i.ze, 1                        ; 4 uses
  br i1 %.sroa.03209.0, label %.thread.i, label %.thread4.i

.thread4.i:                                       ; preds = %pm_node_alloc.exit.i.thread
  store i32 %i.zf, ptr %0, align 8, !tbaa !109
  br label %pm_case_match_node_condition_append.exit

.thread.i:                                        ; preds = %pm_node_alloc.exit.i.thread
  %i.zg = getelementptr i8, ptr %.01920, i64 16
  %.02.i = load ptr, ptr %i.zg, align 8, !tbaa !14
  store i32 %i.zf, ptr %0, align 8, !tbaa !109
  br label %pm_case_match_node_condition_append.exit

bb.ir:                                            ; preds = %pm_node_alloc.exit.i
  %i.zh = getelementptr i8, ptr %i.yw, i64 16
  %.0.i2476 = load ptr, ptr %i.zh, align 8, !tbaa !14
  %i.zi = load i32, ptr %0, align 8, !tbaa !109
  %i.zj = add i32 %i.zi, 1                        ; 2 uses
  store i32 %i.zj, ptr %0, align 8, !tbaa !109
  %spec.select = select i1 %.sroa.03209.0, ptr null, ptr %.sroa.83214.0
  %spec.select3328 = select i1 %.sroa.03209.0, ptr null, ptr %.sroa.103217.0
  br label %pm_case_match_node_condition_append.exit

pm_case_match_node_condition_append.exit:         ; preds = %bb.ir, %.thread.i, %.thread4.i
  %.0192132643268 = phi ptr [ null, %.thread.i ], [ %i.yw, %bb.ir ], [ null, %.thread4.i ]
  %i.zk = phi ptr [ %i.zd, %.thread.i ], [ %i.yx, %bb.ir ], [ %i.zd, %.thread4.i ] ; 10 uses
  %i.zl = phi i32 [ %i.zf, %.thread.i ], [ %i.zj, %bb.ir ], [ %i.zf, %.thread4.i ]
  %.03.i = phi ptr [ %.02.i, %.thread.i ], [ %.0.i2476, %bb.ir ], [ %.sroa.103217.0, %.thread4.i ]
  %.sroa.10.0.i = phi ptr [ null, %.thread.i ], [ %spec.select, %bb.ir ], [ %.sroa.83214.0, %.thread4.i ]
  %.sroa.12.0.i = phi ptr [ null, %.thread.i ], [ %spec.select3328, %bb.ir ], [ %.sroa.103217.0, %.thread4.i ]
  store i16 71, ptr %i.zk, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i2477 = getelementptr inbounds nuw i8, ptr %i.zk, i64 4
  store i32 %i.zl, ptr %.sroa.3.0..sroa_idx.i2477, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i2478 = getelementptr inbounds nuw i8, ptr %i.zk, i64 8
  store ptr %.sroa.33227.0.copyload, ptr %.sroa.4.0..sroa_idx.i2478, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i2479 = getelementptr inbounds nuw i8, ptr %i.zk, i64 16 ; 2 uses
  store ptr %.03.i, ptr %.sroa.5.0..sroa_idx.i2479, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i2480 = getelementptr inbounds nuw i8, ptr %i.zk, i64 24
  store ptr %.01920, ptr %.sroa.6.0..sroa_idx.i2480, align 8, !tbaa !105
  %.sroa.7.0..sroa_idx.i2481 = getelementptr inbounds nuw i8, ptr %i.zk, i64 32
  store ptr %.0192132643268, ptr %.sroa.7.0..sroa_idx.i2481, align 8, !tbaa !136
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.zk, i64 40
  store <2 x ptr> %i.ye, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.zk, i64 56
  store ptr %.sroa.10.0.i, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i2483 = getelementptr inbounds nuw i8, ptr %i.zk, i64 64
  store ptr %.sroa.12.0.i, ptr %.sroa.12.0..sroa_idx.i2483, align 8, !tbaa !14
  call void @pm_node_list_append(ptr noundef %i.yb, ptr noundef nonnull %i.zk) #27
  %i.zm = load ptr, ptr %.sroa.5.0..sroa_idx.i2479, align 8, !tbaa !134
  store ptr %i.zm, ptr %i.yc, align 8, !tbaa !341
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #27
  %.val2105 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.zn = icmp eq i32 %.val2105, 10
  br i1 %i.zn, label %bb.ih, label %._crit_edge3401, !llvm.loop !343

._crit_edge3401:                                  ; preds = %pm_case_match_node_condition_append.exit, %bb.ig
  %i.zo = getelementptr i8, ptr %i.xr, i64 32
  %i.zp = load i64, ptr %i.zo, align 8, !tbaa !344
  %i.zq = icmp eq i64 %i.zp, 0
  br i1 %i.zq, label %bb.is, label %bb.it

bb.is:                                            ; preds = %._crit_edge3401
  %i.zr = getelementptr i8, ptr %0, i64 472
  %i.zs = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.zr, ptr noundef %.val2260, ptr noundef %.val2261, i32 noundef 45) #27 ; 0 uses
  br label %bb.it

bb.it:                                            ; preds = %._crit_edge3401, %bb.is, %bb.id
  %.01919 = phi ptr [ %i.ux, %bb.id ], [ %i.xr, %bb.is ], [ %i.xr, %._crit_edge3401 ] ; 5 uses
  %.val.i2486 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  switch i32 %.val.i2486, label %accept2.exit2488 [
    i32 17, label %bb.iu
    i32 14, label %bb.iu
  ]

bb.iu:                                            ; preds = %bb.it, %bb.it
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i2489.pr = load i32, ptr %i.b, align 8, !tbaa !170
  br label %accept2.exit2488

accept2.exit2488:                                 ; preds = %bb.it, %bb.iu
  %.val.i2489 = phi i32 [ %.val.i2486, %bb.it ], [ %.val.i2489.pr, %bb.iu ]
  %i.zt = icmp eq i32 %.val.i2489, 6
  br i1 %i.zt, label %bb.iv, label %accept1.exit2490

bb.iv:                                            ; preds = %accept2.exit2488
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %34, ptr noundef nonnull align 8 dereferenceable(24) %i.ue, i64 24, i1 false), !tbaa.struct !163
  %.val2104 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.zu = icmp eq i32 %.val2104, 8
  br i1 %i.zu, label %bb.ix, label %bb.iw

bb.iw:                                            ; preds = %bb.iv
  %i.zv = add i16 %5, 1
  %i.zw = call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 24, i16 noundef zeroext %i.zv)
  br label %bb.ix

bb.ix:                                            ; preds = %bb.iv, %bb.iw
  %.sink3635 = phi ptr [ %i.zw, %bb.iw ], [ null, %bb.iv ]
end_hunk_1
begin_hunk_2_@parse_expression_infix:bb.a
  %i.in = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val1019 = load ptr, ptr %i.in, align 8
  %i.io = tail call fastcc ptr @pm_class_variable_operator_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr %.val1018, ptr %.val1019, ptr noundef %i.il)
  tail call void @pm_node_destroy(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  br label %.critedge.thread

bb.bl:                                            ; preds = %bb.bc
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %narrow944 = add nuw nsw i16 %5, 1
  %i.ip = tail call fastcc ptr @parse_assignment_value(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef 96, i16 noundef zeroext %narrow944)
  %i.iq = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val1020 = load ptr, ptr %i.iq, align 8
  %i.ir = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val1021 = load ptr, ptr %i.ir, align 8
  %i.is = tail call fastcc ptr @pm_constant_path_operator_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr %.val1020, ptr %.val1021, ptr noundef %i.ip)
  %i.it = tail call fastcc ptr @parse_shareable_constant_write(ptr noundef nonnull %0, ptr noundef %i.is)
  br label %.critedge.thread

bb.bm:                                            ; preds = %bb.bc
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %narrow943 = add nuw nsw i16 %5, 1
  %i.iu = tail call fastcc ptr @parse_assignment_value(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef 96, i16 noundef zeroext %narrow943)
  %i.iv = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val1022 = load ptr, ptr %i.iv, align 8
  %i.iw = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val1023 = load ptr, ptr %i.iw, align 8
  %i.ix = tail call fastcc ptr @pm_constant_operator_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr %.val1022, ptr %.val1023, ptr noundef %i.iu)
  tail call void @pm_node_destroy(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  %i.iy = tail call fastcc ptr @parse_shareable_constant_write(ptr noundef nonnull %0, ptr noundef %i.ix)
  br label %.critedge.thread

bb.bn:                                            ; preds = %bb.bc
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %narrow942 = add nuw nsw i16 %5, 1
  %i.iz = tail call fastcc ptr @parse_assignment_value(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef 96, i16 noundef zeroext %narrow942)
  %i.ja = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val1024 = load ptr, ptr %i.ja, align 8
  %i.jb = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val1025 = load ptr, ptr %i.jb, align 8
  %i.jc = tail call fastcc ptr @pm_instance_variable_operator_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr %.val1024, ptr %.val1025, ptr noundef %i.iz)
  tail call void @pm_node_destroy(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  br label %.critedge.thread

bb.bo:                                            ; preds = %bb.bc
  %i.jd = tail call fastcc i32 @pm_parser_local_add_constant(ptr noundef nonnull %0, ptr noundef nonnull @.str.183)
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %narrow941 = add nuw nsw i16 %5, 1
  %i.je = tail call fastcc ptr @parse_assignment_value(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef 96, i16 noundef zeroext %narrow941)
  %i.jf = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val1030 = load ptr, ptr %i.jf, align 8
  %i.jg = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val1031 = load ptr, ptr %i.jg, align 8
  %i.jh = tail call fastcc ptr @pm_local_variable_operator_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr %.val1030, ptr %.val1031, ptr noundef %i.je, i32 noundef %i.jd, i32 noundef 0)
  tail call void @pm_visit_node(ptr noundef nonnull %1, ptr noundef nonnull @pm_node_unreference_each, ptr noundef nonnull %0) #27
  tail call void @pm_node_destroy(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  br label %.critedge.thread

bb.bp:                                            ; preds = %bb.bc
  %i.ji = getelementptr i8, ptr %1, i64 8         ; 2 uses
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !133 ; 3 uses
  %i.jk = getelementptr i8, ptr %1, i64 16        ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !134
  %i.jm = ptrtoint ptr %i.jl to i64
  %i.jn = ptrtoint ptr %i.jj to i64
  %i.jo = sub i64 %i.jm, %i.jn
  %i.jp = icmp eq i64 %i.jo, 2
  br i1 %i.jp, label %bb.bq, label %pm_token_is_numbered_parameter.exit1049.thread

bb.bq:                                            ; preds = %bb.bp
  %i.jq = load i8, ptr %i.jj, align 1, !tbaa !67
  %i.jr = icmp eq i8 %i.jq, 95
  br i1 %i.jr, label %bb.br, label %pm_token_is_numbered_parameter.exit1049.thread

bb.br:                                            ; preds = %bb.bq
  %i.js = getelementptr i8, ptr %i.jj, i64 1
  %i.jt = load i8, ptr %i.js, align 1, !tbaa !67  ; 2 uses
  %.not.i1048 = icmp eq i8 %i.jt, 48
  br i1 %.not.i1048, label %pm_token_is_numbered_parameter.exit1049.thread, label %pm_token_is_numbered_parameter.exit1049

pm_token_is_numbered_parameter.exit1049:          ; preds = %bb.br
  %i.ju = tail call zeroext i1 @pm_char_is_decimal_digit(i8 noundef zeroext %i.jt) #27
  br i1 %i.ju, label %bb.bs, label %pm_token_is_numbered_parameter.exit1049.thread

bb.bs:                                            ; preds = %pm_token_is_numbered_parameter.exit1049
  %i.jv = getelementptr i8, ptr %0, i64 472
  %i.jw = load ptr, ptr %i.ji, align 8, !tbaa !133 ; 2 uses
  %i.jx = load ptr, ptr %i.jk, align 8, !tbaa !134
  %i.jy = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.jv, ptr noundef %i.jw, ptr noundef %i.jx, i32 noundef 213, ptr noundef %i.jw) #27 ; 0 uses
  tail call void @pm_visit_node(ptr noundef nonnull %1, ptr noundef nonnull @pm_node_unreference_each, ptr noundef nonnull %0) #27
  br label %pm_token_is_numbered_parameter.exit1049.thread

pm_token_is_numbered_parameter.exit1049.thread:   ; preds = %bb.bp, %bb.bq, %bb.br, %bb.bs, %pm_token_is_numbered_parameter.exit1049
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %narrow940 = add nuw nsw i16 %5, 1
  %i.jz = tail call fastcc ptr @parse_assignment_value(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef 96, i16 noundef zeroext %narrow940)
  %i.ka = getelementptr i8, ptr %1, i64 24
  %i.kb = load i32, ptr %i.ka, align 8, !tbaa !320
  %i.kc = getelementptr i8, ptr %1, i64 28
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !317
  %i.ke = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val1028 = load ptr, ptr %i.ke, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val1029 = load ptr, ptr %i.kf, align 8
  %i.kg = tail call fastcc ptr @pm_local_variable_operator_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr %.val1028, ptr %.val1029, ptr noundef %i.jz, i32 noundef %i.kb, i32 noundef %i.kd)
  tail call void @pm_node_destroy(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  br label %.critedge.thread

bb.bt:                                            ; preds = %bb.bc
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.kh = getelementptr i8, ptr %1, i64 2
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !116
  %i.kj = zext i16 %i.ki to i32                   ; 2 uses
  %i.kk = and i32 %i.kj, 8
  %.not935 = icmp eq i32 %i.kk, 0
  br i1 %.not935, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.kl = getelementptr i8, ptr %1, i64 56        ; 2 uses
  %i.km = load ptr, ptr %i.kl, align 8, !tbaa !283
  %i.kn = getelementptr i8, ptr %1, i64 64        ; 2 uses
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !284
  tail call fastcc void @pm_refute_numbered_parameter(ptr noundef nonnull %0, ptr noundef %i.km, ptr noundef %i.ko)
  %i.kp = load ptr, ptr %i.kl, align 8, !tbaa !283
  %i.kq = load ptr, ptr %i.kn, align 8, !tbaa !284
  %i.kr = tail call fastcc i32 @pm_parser_local_add_location(ptr noundef nonnull %0, ptr noundef %i.kp, ptr noundef %i.kq, i32 noundef 1)
  %narrow939 = add nuw nsw i16 %5, 1
  %i.ks = tail call fastcc ptr @parse_assignment_value(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef 96, i16 noundef zeroext %narrow939)
  %i.kt = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val1026 = load ptr, ptr %i.kt, align 8
  %i.ku = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val1027 = load ptr, ptr %i.ku, align 8
  %i.kv = tail call fastcc ptr @pm_local_variable_operator_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr %.val1026, ptr %.val1027, ptr noundef %i.ks, i32 noundef %i.kr, i32 noundef 0)
  tail call void @pm_node_destroy(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  br label %.critedge.thread

bb.bv:                                            ; preds = %bb.bt
  %i.kw = and i32 %i.kj, 256
  %.not936 = icmp eq i32 %i.kw, 0
  br i1 %.not936, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %narrow938 = add nuw nsw i16 %5, 1
  %i.kx = tail call fastcc ptr @parse_assignment_value(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef 96, i16 noundef zeroext %narrow938)
  %i.ky = call fastcc ptr @pm_index_operator_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %6, ptr noundef %i.kx)
  br label %.critedge.thread

bb.bx:                                            ; preds = %bb.bv
  %i.kz = tail call fastcc zeroext i1 @pm_call_node_writable_p(ptr noundef nonnull %0, ptr noundef nonnull %1)
  br i1 %i.kz, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.la = getelementptr i8, ptr %1, i64 48
  tail call fastcc void @parse_write_name(ptr noundef nonnull %0, ptr noundef %i.la)
  br label %bb.ca

bb.bz:                                            ; preds = %bb.bx
  %i.lb = getelementptr i8, ptr %1, i64 8
  %.val1003 = load ptr, ptr %i.lb, align 8, !tbaa !133
  %i.lc = getelementptr i8, ptr %1, i64 16
  %.val1004 = load ptr, ptr %i.lc, align 8, !tbaa !134
  %i.ld = getelementptr i8, ptr %0, i64 472
  %i.le = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ld, ptr noundef %.val1003, ptr noundef %.val1004, i32 noundef 294) #27 ; 0 uses
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  call fastcc void @parse_call_operator_write(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %6)
  %narrow937 = add nuw nsw i16 %5, 1
  %i.lf = tail call fastcc ptr @parse_assignment_value(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef 96, i16 noundef zeroext %narrow937)
  %i.lg = call fastcc ptr @pm_call_operator_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %6, ptr noundef %i.lf)
  br label %.critedge.thread

bb.cb:                                            ; preds = %bb.bc
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.lh = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val = load ptr, ptr %i.lh, align 8, !tbaa !127
  %i.li = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.val985 = load ptr, ptr %i.li, align 8, !tbaa !128
  %i.lj = getelementptr i8, ptr %0, i64 472
  %i.lk = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.lj, ptr noundef %.val, ptr noundef %.val985, i32 noundef 202) #27 ; 0 uses
  br label %.critedge.thread

bb.cc:                                            ; preds = %bb.bc
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.ll = getelementptr i8, ptr %0, i64 472
  %i.lm = getelementptr i8, ptr %0, i64 328
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !256
  %i.lo = getelementptr i8, ptr %0, i64 336
  %i.lp = load ptr, ptr %i.lo, align 8, !tbaa !255
  %i.lq = load i32, ptr %i.a, align 8, !tbaa !170
  %i.lr = tail call ptr @pm_token_type_human(i32 noundef %i.lq) #27
  %i.ls = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.ll, ptr noundef %i.ln, ptr noundef %i.lp, i32 noundef 96, ptr noundef %i.lr) #27 ; 0 uses
  br label %.critedge.thread

bb.cd:                                            ; preds = %bb.a, %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.lt = getelementptr i8, ptr %0, i64 320
  %i.lu = load i32, ptr %i.lt, align 8, !tbaa !200
  %i.lv = icmp eq i32 %i.lu, 74
  %narrow934 = add nuw nsw i16 %5, 1
  %i.lw = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef %3, i1 noundef zeroext %i.lv, i1 noundef zeroext false, i32 noundef 96, i16 noundef zeroext %narrow934) ; 2 uses
  %i.lx = tail call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %1) ; 3 uses
  %.not.i.i = icmp eq ptr %i.lx, null
  br i1 %.not.i.i, label %pm_assert_value_expression.exit.i, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.ly = getelementptr i8, ptr %i.lx, i64 8
  %.val.i.i = load ptr, ptr %i.ly, align 8, !tbaa !133
  %i.lz = getelementptr i8, ptr %i.lx, i64 16
  %.val5.i.i = load ptr, ptr %i.lz, align 8, !tbaa !134
  %i.ma = getelementptr i8, ptr %0, i64 472
  %i.mb = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ma, ptr noundef %.val.i.i, ptr noundef %.val5.i.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit.i

pm_assert_value_expression.exit.i:                ; preds = %bb.ce, %bb.cd
  %i.mc = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #30 ; 9 uses
  %i.md = icmp eq ptr %i.mc, null
  br i1 %i.md, label %bb.cf, label %pm_and_node_create.exit

bb.cf:                                            ; preds = %pm_assert_value_expression.exit.i
  %i.me = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.mf = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.me, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 56) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_and_node_create.exit:                          ; preds = %pm_assert_value_expression.exit.i
  %i.mg = load i32, ptr %0, align 8, !tbaa !109
  %i.mh = add i32 %i.mg, 1                        ; 2 uses
  store i32 %i.mh, ptr %0, align 8, !tbaa !109
  %i.mi = getelementptr i8, ptr %1, i64 8
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !133
  %i.mk = getelementptr i8, ptr %i.lw, i64 16
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !134
  %i.mm = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 4, ptr %i.mc, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i1051 = getelementptr inbounds nuw i8, ptr %i.mc, i64 4
  store i32 %i.mh, ptr %.sroa.3.0..sroa_idx.i1051, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i1052 = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  store ptr %i.mj, ptr %.sroa.4.0..sroa_idx.i1052, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i1053 = getelementptr inbounds nuw i8, ptr %i.mc, i64 16
  store ptr %i.ml, ptr %.sroa.5.0..sroa_idx.i1053, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i1054 = getelementptr inbounds nuw i8, ptr %i.mc, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx.i1054, align 8, !tbaa !105
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.mc, i64 32
  store ptr %i.lw, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !105
  %.sroa.8.0..sroa_idx.i1055 = getelementptr inbounds nuw i8, ptr %i.mc, i64 40
  %i.mn = load <2 x ptr>, ptr %i.mm, align 8, !tbaa !14
  store <2 x ptr> %i.mn, ptr %.sroa.8.0..sroa_idx.i1055, align 8, !tbaa !14
  br label %.critedge.thread

bb.cg:                                            ; preds = %bb.a, %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.mo = getelementptr i8, ptr %0, i64 320
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !200
  %i.mq = icmp eq i32 %i.mp, 92
  %narrow933 = add nuw nsw i16 %5, 1
  %i.mr = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef %3, i1 noundef zeroext %i.mq, i1 noundef zeroext false, i32 noundef 96, i16 noundef zeroext %narrow933) ; 2 uses
  %i.ms = tail call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %1) ; 3 uses
  %.not.i.i1057 = icmp eq ptr %i.ms, null
  br i1 %.not.i.i1057, label %pm_assert_value_expression.exit.i1060, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.mt = getelementptr i8, ptr %i.ms, i64 8
  %.val.i.i1058 = load ptr, ptr %i.mt, align 8, !tbaa !133
  %i.mu = getelementptr i8, ptr %i.ms, i64 16
  %.val5.i.i1059 = load ptr, ptr %i.mu, align 8, !tbaa !134
  %i.mv = getelementptr i8, ptr %0, i64 472
  %i.mw = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.mv, ptr noundef %.val.i.i1058, ptr noundef %.val5.i.i1059, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit.i1060

pm_assert_value_expression.exit.i1060:            ; preds = %bb.ch, %bb.cg
  %i.mx = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #30 ; 9 uses
  %i.my = icmp eq ptr %i.mx, null
  br i1 %i.my, label %bb.ci, label %pm_or_node_create.exit

bb.ci:                                            ; preds = %pm_assert_value_expression.exit.i1060
  %i.mz = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.na = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.mz, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 56) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_or_node_create.exit:                           ; preds = %pm_assert_value_expression.exit.i1060
  %i.nb = load i32, ptr %0, align 8, !tbaa !109
  %i.nc = add i32 %i.nb, 1                        ; 2 uses
  store i32 %i.nc, ptr %0, align 8, !tbaa !109
  %i.nd = getelementptr i8, ptr %1, i64 8
  %i.ne = load ptr, ptr %i.nd, align 8, !tbaa !133
  %i.nf = getelementptr i8, ptr %i.mr, i64 16
  %i.ng = load ptr, ptr %i.nf, align 8, !tbaa !134
  %i.nh = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i16 114, ptr %i.mx, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i1062 = getelementptr inbounds nuw i8, ptr %i.mx, i64 4
  store i32 %i.nc, ptr %.sroa.3.0..sroa_idx.i1062, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i1063 = getelementptr inbounds nuw i8, ptr %i.mx, i64 8
  store ptr %i.ne, ptr %.sroa.4.0..sroa_idx.i1063, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i1064 = getelementptr inbounds nuw i8, ptr %i.mx, i64 16
  store ptr %i.ng, ptr %.sroa.5.0..sroa_idx.i1064, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i1065 = getelementptr inbounds nuw i8, ptr %i.mx, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx.i1065, align 8, !tbaa !105
  %.sroa.7.0..sroa_idx.i1066 = getelementptr inbounds nuw i8, ptr %i.mx, i64 32
  store ptr %i.mr, ptr %.sroa.7.0..sroa_idx.i1066, align 8, !tbaa !105
  %.sroa.8.0..sroa_idx.i1067 = getelementptr inbounds nuw i8, ptr %i.mx, i64 40
  %i.ni = load <2 x ptr>, ptr %i.nh, align 8, !tbaa !14
  store <2 x ptr> %i.ni, ptr %.sroa.8.0..sroa_idx.i1067, align 8, !tbaa !14
  br label %.critedge.thread

bb.cj:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %narrow929 = add nuw nsw i16 %5, 1
  %i.nj = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef %3, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 96, i16 noundef zeroext %narrow929)
  %i.nk = call fastcc ptr @pm_call_node_binary_create(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %6, ptr noundef %i.nj, i16 noundef zeroext 0) ; 6 uses
  %i.nl = load i16, ptr %1, align 8, !tbaa !115
  switch i16 %i.nl, label %.critedge.thread [
    i16 84, label %bb.ck
    i16 125, label %bb.cr
  ]

bb.ck:                                            ; preds = %bb.cj
  %i.nm = getelementptr i8, ptr %1, i64 40        ; 3 uses
  %i.nn = load i64, ptr %i.nm, align 8, !tbaa !138
  %.not1119 = icmp eq i64 %i.nn, 0
  br i1 %.not1119, label %.critedge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.ck
  %i.no = getelementptr i8, ptr %1, i64 56
  br label %bb.cl

bb.cl:                                            ; preds = %.lr.ph, %bb.cn
  %.08891112 = phi i64 [ 0, %.lr.ph ], [ %i.nw, %bb.cn ] ; 2 uses
  %.08901111 = phi i64 [ 0, %.lr.ph ], [ %i.nx, %bb.cn ] ; 2 uses
  %i.np = load ptr, ptr %i.no, align 8, !tbaa !139
  %i.nq = getelementptr [8 x i8], ptr %i.np, i64 %.08901111
  %i.nr = load ptr, ptr %i.nq, align 8, !tbaa !105 ; 3 uses
  %.not930 = icmp eq ptr %i.nr, null
  br i1 %.not930, label %.critedge, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ns = load i16, ptr %i.nr, align 8, !tbaa !115
  %i.nt = icmp eq i16 %i.ns, 141
  br i1 %i.nt, label %bb.cn, label %.critedge.thread

bb.cn:                                            ; preds = %bb.cm
  %i.nu = getelementptr i8, ptr %i.nr, i64 72
  %i.nv = tail call i64 @pm_string_length(ptr noundef %i.nu) #27
  %i.nw = add i64 %i.nv, %.08891112               ; 2 uses
  %i.nx = add nuw i64 %.08901111, 1               ; 2 uses
  %i.ny = load i64, ptr %i.nm, align 8, !tbaa !138 ; 2 uses
  %i.nz = icmp ult i64 %i.nx, %i.ny
  br i1 %i.nz, label %bb.cl, label %.critedge, !llvm.loop !427

.critedge:                                        ; preds = %bb.cn, %bb.cl
  %i.oa = phi i64 [ %i.ny, %bb.cn ], [ 1, %bb.cl ]
  %.0889.lcssa.ph = phi i64 [ %i.nw, %bb.cn ], [ %.08891112, %bb.cl ] ; 3 uses
  %i.ob = icmp eq i64 %i.oa, 0
  %.not1109 = icmp eq i64 %.0889.lcssa.ph, 0
  br i1 %.not1109, label %.critedge.thread, label %bb.co

bb.co:                                            ; preds = %.critedge
  %i.oc = tail call noalias ptr @malloc(i64 noundef %.0889.lcssa.ph) #28 ; 3 uses
  %.not931 = icmp eq ptr %i.oc, null
  br i1 %.not931, label %bb.cp, label %.preheader

.preheader:                                       ; preds = %bb.co
  %i.od = getelementptr i8, ptr %1, i64 56
  br i1 %i.ob, label %.critedge5, label %.lr.ph1117

bb.cp:                                            ; preds = %bb.co
  tail call void @abort() #26
  unreachable

.lr.ph1117:                                       ; preds = %.preheader, %bb.cq
  %.08911116 = phi ptr [ %i.op, %bb.cq ], [ %i.oc, %.preheader ] ; 2 uses
  %.08921115 = phi i64 [ %i.oq, %bb.cq ], [ 0, %.preheader ] ; 2 uses
  %i.oe = load ptr, ptr %i.od, align 8, !tbaa !139
  %i.of = getelementptr [8 x i8], ptr %i.oe, i64 %.08921115
  %i.og = load ptr, ptr %i.of, align 8, !tbaa !105 ; 2 uses
  %.not932 = icmp eq ptr %i.og, null
  br i1 %.not932, label %.critedge5, label %bb.cq

.critedge5:                                       ; preds = %.lr.ph1117, %bb.cq, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  call void @pm_string_owned_init(ptr noundef nonnull %7, ptr noundef nonnull %i.oc, i64 noundef %.0889.lcssa.ph) #27
  %i.oh = getelementptr i8, ptr %1, i64 2
  %i.oi = load i16, ptr %i.oh, align 2, !tbaa !116
  %i.oj = and i16 %i.oi, 8
  %i.ok = icmp ne i16 %i.oj, 0
  %i.ol = call fastcc ptr @parse_regular_expression_named_captures(ptr noundef %0, ptr noundef nonnull %7, ptr noundef %i.nk, i1 noundef zeroext %i.ok)
  call void @pm_string_free(ptr noundef nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %.critedge.thread

bb.cq:                                            ; preds = %.lr.ph1117
  %i.om = getelementptr i8, ptr %i.og, i64 72     ; 2 uses
  %i.on = tail call i64 @pm_string_length(ptr noundef %i.om) #27 ; 2 uses
  %i.oo = tail call ptr @pm_string_source(ptr noundef %i.om) #27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %.08911116, ptr noundef nonnull align 1 %i.oo, i64 noundef %i.on, i1 noundef false) #27
  %i.op = getelementptr i8, ptr %.08911116, i64 %i.on
  %i.oq = add nuw i64 %.08921115, 1               ; 2 uses
  %i.or = load i64, ptr %i.nm, align 8, !tbaa !138
  %i.os = icmp ult i64 %i.oq, %i.or
  br i1 %i.os, label %.lr.ph1117, label %.critedge5, !llvm.loop !428

bb.cr:                                            ; preds = %bb.cj
  %i.ot = getelementptr i8, ptr %1, i64 72
  %i.ou = getelementptr i8, ptr %1, i64 2
  %i.ov = load i16, ptr %i.ou, align 2, !tbaa !116
  %i.ow = and i16 %i.ov, 8
  %i.ox = icmp ne i16 %i.ow, 0
  %i.oy = tail call fastcc ptr @parse_regular_expression_named_captures(ptr noundef nonnull %0, ptr noundef %i.ot, ptr noundef %i.nk, i1 noundef zeroext %i.ox)
  br label %.critedge.thread

bb.cs:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.oz = getelementptr i8, ptr %0, i64 320
  %.sroa.060.0.copyload = load i32, ptr %i.oz, align 8, !tbaa !7
  %.sroa.663.0..sroa_idx = getelementptr i8, ptr %0, i64 328
  %.sroa.663.0.copyload = load ptr, ptr %.sroa.663.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr i8, ptr %0, i64 336
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %i.pa = load i16, ptr %1, align 8, !tbaa !115
  switch i16 %i.pa, label %bb.cw [
    i16 128, label %bb.ct
    i16 4, label %bb.cu
    i16 114, label %bb.cv
  ]

bb.ct:                                            ; preds = %bb.cs
  %i.pb = getelementptr i8, ptr %1, i64 48
  %i.pc = load ptr, ptr %i.pb, align 8, !tbaa !429
  %i.pd = load i16, ptr %i.pc, align 8, !tbaa !115
  %i.pe = and i16 %i.pd, -2
  %switch = icmp eq i16 %i.pe, 100
  br i1 %switch, label %.sink.split, label %bb.cw

bb.cu:                                            ; preds = %bb.cs
  %i.pf = getelementptr i8, ptr %1, i64 32
  %i.pg = load ptr, ptr %i.pf, align 8, !tbaa !431
  %i.ph = load i16, ptr %i.pg, align 8, !tbaa !115
  %i.pi = and i16 %i.ph, -2
  %switch976 = icmp eq i16 %i.pi, 100
  br i1 %switch976, label %.sink.split, label %bb.cw

bb.cv:                                            ; preds = %bb.cs
  %i.pj = getelementptr i8, ptr %1, i64 32
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !433
  %i.pl = load i16, ptr %i.pk, align 8, !tbaa !115
  %i.pm = and i16 %i.pl, -2
  %switch978 = icmp eq i16 %i.pm, 100
  br i1 %switch978, label %.sink.split, label %bb.cw

.sink.split:                                      ; preds = %bb.cv, %bb.cu, %bb.ct
  %i.pn = getelementptr i8, ptr %0, i64 472
  %i.po = tail call ptr @pm_token_type_human(i32 noundef %.sroa.060.0.copyload) #27
  %i.pp = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.pn, ptr noundef %.sroa.663.0.copyload, ptr noundef %.sroa.9.0.copyload, i32 noundef 90, ptr noundef %i.po) #27 ; 0 uses
  br label %bb.cw

bb.cw:                                            ; preds = %.sink.split, %bb.cv, %bb.cu, %bb.ct, %bb.cs
  %narrow928 = add nuw nsw i16 %5, 1
end_hunk_2
begin_hunk_3_@parse_expression_infix:bb.a
  %i.wr = getelementptr i8, ptr %0, i64 4
  store i32 1025, ptr %i.wr, align 4, !tbaa !195
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %20, i8 0, i64 24, i1 false)
  %narrow = add nuw nsw i16 %5, 1
  %i.ws = call fastcc ptr @parse_pattern(ptr noundef nonnull %0, ptr noundef %20, i8 noundef zeroext 3, i32 noundef 225, i16 noundef zeroext %narrow)
  store i8 %i.wp, ptr %i.wo, align 4, !tbaa !196
  call void @pm_constant_id_list_free(ptr noundef nonnull %20) #27
  %i.wt = call fastcc ptr @pm_match_required_node_create(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %i.ws, ptr %.sroa.3.0.copyload, ptr %.sroa.4.0.copyload)
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #27
  br label %.critedge.thread

bb.fi:                                            ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 21590, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_expression_infix) #26
  unreachable

.critedge.thread:                                 ; preds = %bb.cm, %bb.ck, %bb.cr, %.critedge5, %.critedge, %bb.cj, %bb.bu, %bb.bw, %bb.ca, %bb.at, %bb.av, %bb.az, %bb.x, %bb.z, %bb.ad, %bb.fh, %bb.fg, %bb.ff, %accept1.exit1074, %bb.es, %bb.eb, %bb.dv, %bb.du, %bb.dt, %bb.ds, %bb.dr, %bb.do, %bb.da, %bb.cw, %pm_or_node_create.exit, %pm_and_node_create.exit, %bb.cc, %bb.cb, %pm_token_is_numbered_parameter.exit1049.thread, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %pm_global_variable_operator_write_node_create.exit, %bb.bb, %bb.ba, %pm_token_is_numbered_parameter.exit1047.thread, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.af, %bb.ae, %pm_token_is_numbered_parameter.exit.thread, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.j, %bb.i, %bb.h, %bb.g
  %.10 = phi ptr [ %1, %bb.j ], [ %i.ad, %bb.g ], [ %i.ag, %bb.h ], [ %i.ai, %bb.i ], [ %1, %bb.af ], [ %i.az, %bb.m ], [ %i.bb, %bb.n ], [ %i.be, %bb.o ], [ %i.bh, %bb.p ], [ %i.bj, %bb.q ], [ %i.bm, %bb.r ], [ %i.cj, %pm_token_is_numbered_parameter.exit.thread ], [ %i.wt, %bb.fh ], [ %1, %bb.ae ], [ %1, %bb.bb ], [ %i.ec, %bb.ai ], [ %i.ee, %bb.aj ], [ %i.eh, %bb.ak ], [ %i.ek, %bb.al ], [ %i.em, %bb.am ], [ %i.ep, %bb.an ], [ %i.fm, %pm_token_is_numbered_parameter.exit1047.thread ], [ %i.dh, %bb.ad ], [ %1, %bb.ba ], [ %1, %bb.cc ], [ %i.hf, %pm_global_variable_operator_write_node_create.exit ], [ %i.io, %bb.bk ], [ %i.it, %bb.bl ], [ %i.iy, %bb.bm ], [ %i.jc, %bb.bn ], [ %i.jh, %bb.bo ], [ %i.kg, %pm_token_is_numbered_parameter.exit1049.thread ], [ %i.gk, %bb.az ], [ %1, %bb.cb ], [ %i.mc, %pm_and_node_create.exit ], [ %i.mx, %pm_or_node_create.exit ], [ %i.lg, %bb.ca ], [ %i.pr, %bb.cw ], [ %i.qi, %bb.da ], [ %.4, %bb.do ], [ %i.sf, %bb.dr ], [ %i.sh, %bb.ds ], [ %i.sj, %bb.dt ], [ %i.sp, %bb.du ], [ %i.sx, %bb.dv ], [ %.5, %bb.eb ], [ %.8, %bb.es ], [ %i.va, %accept1.exit1074 ], [ %.9, %bb.ff ], [ %i.wn, %bb.fg ], [ %i.cv, %bb.x ], [ %i.cz, %bb.z ], [ %i.fy, %bb.at ], [ %i.gc, %bb.av ], [ %i.kv, %bb.bu ], [ %i.ky, %bb.bw ], [ %i.nk, %bb.cj ], [ %i.oy, %bb.cr ], [ %i.ol, %.critedge5 ], [ %i.nk, %.critedge ], [ %i.nk, %bb.ck ], [ %i.nk, %bb.cm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret ptr %.10
}

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_array_node_create(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !127  ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !128  ; 2 uses
  %i.k = load i32, ptr %1, align 8, !tbaa !126
  %i.l = icmp eq i32 %i.k, 164                    ; 2 uses
  %.sroa.9.015 = select i1 %i.l, ptr null, ptr %i.j ; 2 uses
  %.sroa.7.014 = select i1 %i.l, ptr null, ptr %i.h ; 2 uses
  store i16 6, ptr %i.a, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 2, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.7.014, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.sroa.9.015, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %.sroa.7.014, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %.sroa.9.015, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_splat_node_create(ptr noundef captures(none) %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 8 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = icmp eq ptr %2, null
  %. = select i1 %i.e, ptr %1, ptr %2
  %storemerge.in = load i32, ptr %0, align 8, !tbaa !109
  %storemerge = add i32 %storemerge.in, 1         ; 2 uses
  store i32 %storemerge, ptr %0, align 8, !tbaa !109
  %.sroa.7.0.in = getelementptr i8, ptr %1, i64 8 ; 2 uses
  %.sroa.9.0.in = getelementptr i8, ptr %., i64 16
  %.sroa.9.0 = load ptr, ptr %.sroa.9.0.in, align 8, !tbaa !14
  store i16 139, ptr %i.a, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %storemerge, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.f = load <2 x ptr>, ptr %.sroa.7.0.in, align 8, !tbaa !14
  %.sroa.7.0 = load ptr, ptr %.sroa.7.0.in, align 8, !tbaa !127
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  store <2 x ptr> %i.f, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !105
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_keyword_hash_node_create(ptr noundef captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  store i16 90, ptr %i.a, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 4, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @parse_assocs(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i16 noundef zeroext %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.pm_token_t, align 8         ; 6 uses
  %5 = alloca %struct.pm_token_t, align 8         ; 7 uses
  %6 = alloca %struct.pm_token_t, align 8         ; 7 uses
  %7 = alloca %struct.pm_token_t, align 8         ; 8 uses
  %i.a = load i16, ptr %2, align 8, !tbaa !115
  switch i16 %i.a, label %bb.b [
    i16 65, label %bb.c
    i16 90, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.2, i32 noundef 13334, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_assocs) #26
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.b = getelementptr i8, ptr %0, i64 344        ; 7 uses
  %i.c = getelementptr i8, ptr %0, i64 304        ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.g = getelementptr i8, ptr %0, i64 520
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = getelementptr i8, ptr %0, i64 472        ; 8 uses
  %i.k = getelementptr i8, ptr %0, i64 576        ; 3 uses
  %i.l = getelementptr i8, ptr %0, i64 496        ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.p = add i16 %3, 1                            ; 5 uses
  %i.q = getelementptr i8, ptr %0, i64 320        ; 3 uses
  %.sroa.4121.0..sroa_idx = getelementptr i8, ptr %0, i64 328 ; 2 uses
  %.sroa.6122.0..sroa_idx = getelementptr i8, ptr %0, i64 336 ; 2 uses
  %i.r = getelementptr i8, ptr %0, i64 512
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.s = getelementptr i8, ptr %2, i64 2          ; 4 uses
  %i.t = getelementptr i8, ptr %2, i64 24
  %i.u = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.v = getelementptr i8, ptr %2, i64 16
  %i.w = getelementptr i8, ptr %2, i64 40
  br label %accept1.exit

accept1.exit:                                     ; preds = %accept1.exit.backedge, %bb.c
  %.065 = phi i1 [ false, %bb.c ], [ %.1, %accept1.exit.backedge ] ; 2 uses
  %i.x = load i32, ptr %i.b, align 8, !tbaa !170
  switch i32 %i.x, label %bb.am [
    i32 160, label %bb.d
    i32 111, label %bb.p
  ]

bb.d:                                             ; preds = %accept1.exit
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.0119.0.copyload = load i32, ptr %i.q, align 8, !tbaa !7
  %.sroa.4121.0.copyload = load ptr, ptr %.sroa.4121.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %.sroa.6122.0.copyload = load ptr, ptr %.sroa.6122.0..sroa_idx, align 8, !tbaa !14 ; 3 uses
  %.val74 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  %i.y = icmp eq i32 %.val74, 28
  br i1 %i.y, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  store ptr %1, ptr %i.r, align 8, !tbaa !305
  %i.z = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 14, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 100, i16 noundef zeroext %i.p), !inline_history !297 ; 3 uses
  %i.aa = tail call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.z) ; 3 uses
  %.not.i87 = icmp eq ptr %i.aa, null
  br i1 %.not.i87, label %pm_assert_value_expression.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val.i88 = load ptr, ptr %i.ab, align 8, !tbaa !133
  %i.ac = getelementptr i8, ptr %i.aa, i64 16
  %.val5.i89 = load ptr, ptr %i.ac, align 8, !tbaa !134
  %i.ad = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.j, ptr noundef %.val.i88, ptr noundef %.val5.i89, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

bb.g:                                             ; preds = %bb.d
  %i.ae = tail call fastcc zeroext i1 @token_begins_expression_p(i32 noundef %.val74)
  br i1 %i.ae, label %bb.h, label %.outer.i.i

bb.h:                                             ; preds = %bb.g
  %i.af = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 14, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 100, i16 noundef zeroext %i.p), !inline_history !297 ; 3 uses
  %i.ag = tail call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.af) ; 3 uses
  %.not.i90 = icmp eq ptr %i.ag, null
  br i1 %.not.i90, label %pm_assert_value_expression.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val.i91 = load ptr, ptr %i.ah, align 8, !tbaa !133
  %i.ai = getelementptr i8, ptr %i.ag, i64 16
  %.val5.i92 = load ptr, ptr %i.ai, align 8, !tbaa !134
  %i.aj = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.j, ptr noundef %.val.i91, ptr noundef %.val5.i92, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

.outer.i.i:                                       ; preds = %bb.g, %bb.l
  %.08.in.ph.i.i = phi ptr [ %.08.i.i, %bb.l ], [ %i.l, %bb.g ]
  %cond.i = phi i1 [ true, %bb.l ], [ false, %bb.g ]
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge.i.i, %.outer.i.i
  %.08.in.i.i = phi ptr [ %.08.i.i, %._crit_edge.i.i ], [ %.08.in.ph.i.i, %.outer.i.i ]
  %.08.i.i = load ptr, ptr %.08.in.i.i, align 8, !tbaa !66 ; 5 uses
  %.not.i.i = icmp eq ptr %.08.i.i, null
  br i1 %.not.i.i, label %.sink.split.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = getelementptr i8, ptr %.08.i.i, i64 48
  %i.al = load i8, ptr %i.ak, align 8, !tbaa !70
  %i.am = and i8 %i.al, 2
  %.not10.i.i = icmp eq i8 %i.am, 0
  %.phi.trans.insert.i.i = getelementptr i8, ptr %.08.i.i, i64 50
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 2, !tbaa !188, !range !45
  %i.an = trunc nuw i8 %.pre.i.i to i1            ; 2 uses
  br i1 %.not10.i.i, label %._crit_edge.i.i, label %bb.l

._crit_edge.i.i:                                  ; preds = %bb.k
  br i1 %i.an, label %.sink.split.i, label %bb.j, !llvm.loop !296

bb.l:                                             ; preds = %bb.k
  br i1 %i.an, label %pm_parser_scope_forwarding_param_check.exit.i, label %.outer.i.i, !llvm.loop !296

pm_parser_scope_forwarding_param_check.exit.i:    ; preds = %bb.l
  br i1 %cond.i, label %.sink.split.i, label %pm_assert_value_expression.exit

.sink.split.i:                                    ; preds = %._crit_edge.i.i, %bb.j, %pm_parser_scope_forwarding_param_check.exit.i
  %.sink8.i = phi i32 [ 10, %pm_parser_scope_forwarding_param_check.exit.i ], [ 21, %bb.j ], [ 21, %._crit_edge.i.i ]
  %i.ao = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.j, ptr noundef %.sroa.4121.0.copyload, ptr noundef %.sroa.6122.0.copyload, i32 noundef %.sink8.i) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

pm_assert_value_expression.exit:                  ; preds = %.sink.split.i, %pm_parser_scope_forwarding_param_check.exit.i, %bb.i, %bb.h, %bb.f, %bb.e
  %.070 = phi ptr [ %i.af, %bb.i ], [ %i.z, %bb.f ], [ %i.z, %bb.e ], [ %i.af, %bb.h ], [ null, %pm_parser_scope_forwarding_param_check.exit.i ], [ null, %.sink.split.i ] ; 3 uses
  %i.ap = icmp eq i32 %.sroa.0119.0.copyload, 160
  br i1 %i.ap, label %bb.n, label %bb.m

bb.m:                                             ; preds = %pm_assert_value_expression.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.2, i32 noundef 2295, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_assoc_splat_node_create) #26
  unreachable

bb.n:                                             ; preds = %pm_assert_value_expression.exit
  %i.aq = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 9 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.o, label %pm_assoc_splat_node_create.exit

bb.o:                                             ; preds = %bb.n
  %i.as = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.at = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.as, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_assoc_splat_node_create.exit:                  ; preds = %bb.n
  %i.au = icmp eq ptr %.070, null
  %storemerge.in.i = load i32, ptr %0, align 8, !tbaa !109
  %storemerge.i = add i32 %storemerge.in.i, 1     ; 2 uses
  store i32 %storemerge.i, ptr %0, align 8, !tbaa !109
  br i1 %i.au, label %pm_assoc_splat_node_create.exit.cont, label %pm_assoc_splat_node_create.exit.else

pm_assoc_splat_node_create.exit.else:             ; preds = %pm_assoc_splat_node_create.exit
  %.070.sroa.gep = getelementptr i8, ptr %.070, i64 16
  %.sroa.9.0.i.else.val = load ptr, ptr %.070.sroa.gep, align 8, !tbaa !14
  br label %pm_assoc_splat_node_create.exit.cont

pm_assoc_splat_node_create.exit.cont:             ; preds = %pm_assoc_splat_node_create.exit, %pm_assoc_splat_node_create.exit.else
  %.sroa.9.0.i = phi ptr [ %.sroa.6122.0.copyload, %pm_assoc_splat_node_create.exit ], [ %.sroa.9.0.i.else.val, %pm_assoc_splat_node_create.exit.else ]
  store i16 9, ptr %i.aq, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  store i32 %storemerge.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %.sroa.4121.0.copyload, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store ptr %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store ptr %.070, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !105
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr %.sroa.4121.0.copyload, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store ptr %.sroa.6122.0.copyload, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !14
  br label %bb.av

bb.p:                                             ; preds = %accept1.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !163
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.av = call fastcc ptr @pm_symbol_node_label_create(ptr noundef nonnull %0, ptr noundef nonnull %4) ; 2 uses
  tail call fastcc void @pm_hash_key_static_literals_add(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  %.val79 = load ptr, ptr %i.c, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %5, align 8, !tbaa !126, !alias.scope !435
  store i32 0, ptr %i.d, align 4, !alias.scope !435
  store ptr %.val79, ptr %i.e, align 8, !tbaa !127, !alias.scope !435
  store ptr %.val79, ptr %i.f, align 8, !tbaa !128, !alias.scope !435
  %i.aw = load i32, ptr %i.b, align 8, !tbaa !170
  %i.ax = tail call fastcc zeroext i1 @token_begins_expression_p(i32 noundef %i.aw)
  br i1 %i.ax, label %bb.q, label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.ay = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 14, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 132, i16 noundef zeroext %i.p), !inline_history !297 ; 3 uses
  %i.az = tail call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.ay) ; 3 uses
  %.not.i94 = icmp eq ptr %i.az, null
  br i1 %.not.i94, label %pm_assert_value_expression.exit97, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = getelementptr i8, ptr %i.az, i64 8
  %.val.i95 = load ptr, ptr %i.ba, align 8, !tbaa !133
  %i.bb = getelementptr i8, ptr %i.az, i64 16
  %.val5.i96 = load ptr, ptr %i.bb, align 8, !tbaa !134
  %i.bc = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.j, ptr noundef %.val.i95, ptr noundef %.val5.i96, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit97

bb.s:                                             ; preds = %bb.p
  %i.bd = load ptr, ptr %i.g, align 8, !tbaa !40
  %i.be = getelementptr i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !152
  %i.bg = load ptr, ptr %i.h, align 8, !tbaa !127 ; 11 uses
  %i.bh = load ptr, ptr %i.i, align 8, !tbaa !128 ; 2 uses
  %i.bi = getelementptr i8, ptr %i.bh, i64 -1     ; 6 uses
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %i.bg to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 5 uses
  %i.bm = tail call zeroext i1 %i.bf(ptr noundef %i.bg, i64 noundef %i.bl) #27
  br i1 %i.bm, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  store i32 41, ptr %6, align 8, !tbaa !126
  store i32 0, ptr %i.m, align 4
  store ptr %i.bg, ptr %i.n, align 8, !tbaa !127
  store ptr %i.bi, ptr %i.o, align 8, !tbaa !128
  %i.bn = call fastcc ptr @pm_constant_read_node_create(ptr noundef nonnull %0, ptr noundef nonnull %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %bb.ak

bb.u:                                             ; preds = %bb.s
  %i.bo = getelementptr i8, ptr %i.bh, i64 -2
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !67
  switch i8 %i.bp, label %bb.w [
    i8 33, label %bb.v
    i8 63, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u, %bb.u
  %i.bq = trunc i64 %i.bl to i32
  %i.br = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.j, ptr noundef %i.bg, ptr noundef %i.bi, i32 noundef 151, i32 noundef %i.bq, ptr noundef %i.bg) #27 ; 0 uses
  br label %pm_parser_local_depth.exit.thread

bb.w:                                             ; preds = %bb.u
  %i.bs = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.k, ptr noundef %i.bg, i64 noundef %i.bl) #27 ; 4 uses
  %.0816.i.i = load ptr, ptr %i.l, align 8, !tbaa !66 ; 2 uses
  %.not17.i.i = icmp eq ptr %.0816.i.i, null
  br i1 %.not17.i.i, label %pm_parser_local_depth.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.w
  %i.bt = lshr i32 %i.bs, 16
  %i.bu = xor i32 %i.bt, %i.bs
  %i.bv = mul i32 %i.bu, 73244475                 ; 2 uses
  %i.bw = lshr i32 %i.bv, 16
  %i.bx = xor i32 %i.bw, %i.bv
  %i.by = mul i32 %i.bx, 73244475                 ; 2 uses
  %i.bz = lshr i32 %i.by, 16
  %i.ca = xor i32 %i.bz, %i.by                    ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.ae, %.lr.ph.i.i
  %.0820.i.i = phi ptr [ %.0816.i.i, %.lr.ph.i.i ], [ %.08.i.i80, %bb.ae ] ; 6 uses
  %.018.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.da, %bb.ae ] ; 5 uses
  %i.cb = getelementptr i8, ptr %.0820.i.i, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !93 ; 2 uses
  %i.cd = icmp ult i32 %i.cc, 9
  br i1 %i.cd, label %.preheader.i.i.i, label %bb.aa

.preheader.i.i.i:                                 ; preds = %bb.x
  %i.ce = getelementptr i8, ptr %.0820.i.i, i64 8
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !155 ; 2 uses
  %.not58.i.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not58.i.i.i, label %pm_locals_find.exit.thread.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i
  %i.cg = getelementptr i8, ptr %.0820.i.i, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !94
  %wide.trip.count.i.i.i = zext i32 %i.cf to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.z, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.z ] ; 3 uses
  %i.ci = getelementptr [40 x i8], ptr %i.ch, i64 %indvars.iv.i.i.i
  %i.cj = load i32, ptr %i.ci, align 8, !tbaa !156
  %.not39.i.i.i = icmp eq i32 %i.cj, %i.bs
  br i1 %.not39.i.i.i, label %.thread.loopexit.split.loop.exit66.i.i.i, label %bb.z

bb.z:                                             ; preds = %bb.y
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %pm_locals_find.exit.thread.i.i, label %bb.y, !llvm.loop !233

bb.aa:                                            ; preds = %bb.x
  %i.ck = add i32 %i.cc, -1                       ; 2 uses
  %i.cl = getelementptr i8, ptr %.0820.i.i, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !94
  br label %bb.ab

bb.ab:                                            ; preds = %bb.ad, %bb.aa
  %.031.i.i.i = phi i32 [ %i.ca, %bb.aa ], [ %i.ct, %bb.ad ] ; 2 uses
  %i.cn = and i32 %.031.i.i.i, %i.ck              ; 2 uses
  %i.co = zext i32 %i.cn to i64
  %i.cp = getelementptr [40 x i8], ptr %i.cm, i64 %i.co
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !156 ; 2 uses
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %pm_locals_find.exit.thread.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cs = icmp eq i32 %i.cq, %i.bs
  br i1 %i.cs, label %pm_locals_find.exit.i.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ct = add i32 %.031.i.i.i, 1                  ; 2 uses
  %i.cu = xor i32 %i.ct, %i.ca
  %i.cv = and i32 %i.cu, %i.ck
  %.not.i.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i.i.i, label %pm_locals_find.exit.thread.i.i, label %bb.ab, !llvm.loop !234

.thread.loopexit.split.loop.exit66.i.i.i:         ; preds = %bb.y
  %i.cw = trunc nuw i64 %indvars.iv.i.i.i to i32
  br label %pm_locals_find.exit.i.i

pm_locals_find.exit.i.i:                          ; preds = %bb.ac, %.thread.loopexit.split.loop.exit66.i.i.i
  %.5.i.i.i = phi i32 [ %i.cw, %.thread.loopexit.split.loop.exit66.i.i.i ], [ %i.cn, %bb.ac ]
  %.not10.i.i82 = icmp eq i32 %.5.i.i.i, -1
  br i1 %.not10.i.i82, label %pm_locals_find.exit.thread.i.i, label %pm_parser_local_depth.exit

pm_locals_find.exit.thread.i.i:                   ; preds = %bb.ad, %bb.ab, %bb.z, %pm_locals_find.exit.i.i, %.preheader.i.i.i
  %i.cx = getelementptr i8, ptr %.0820.i.i, i64 50
  %i.cy = load i8, ptr %i.cx, align 2, !tbaa !188, !range !45, !noundef !46
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %pm_parser_local_depth.exit.thread, label %bb.ae

bb.ae:                                            ; preds = %pm_locals_find.exit.thread.i.i
  %i.da = add i32 %.018.i.i, 1
  %.08.i.i80 = load ptr, ptr %.0820.i.i, align 8, !tbaa !66 ; 2 uses
  %.not.i.i81 = icmp eq ptr %.08.i.i80, null
  br i1 %.not.i.i81, label %pm_parser_local_depth.exit.thread, label %bb.x, !llvm.loop !235

pm_parser_local_depth.exit:                       ; preds = %pm_locals_find.exit.i.i
  %i.db = icmp eq i32 %.018.i.i, -1
  br i1 %i.db, label %pm_parser_local_depth.exit.thread, label %bb.ag

pm_parser_local_depth.exit.thread:                ; preds = %pm_locals_find.exit.thread.i.i, %bb.ae, %bb.w, %bb.v, %pm_parser_local_depth.exit
  %i.dc = tail call noalias dereferenceable_or_null(136) ptr @calloc(i64 noundef 1, i64 noundef 136) #30 ; 10 uses
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.af, label %pm_call_node_variable_call_create.exit

bb.af:                                            ; preds = %pm_parser_local_depth.exit.thread
  %i.de = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.df = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.de, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 136) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_call_node_variable_call_create.exit:           ; preds = %pm_parser_local_depth.exit.thread
  %i.dg = load i32, ptr %0, align 8, !tbaa !109
  %i.dh = add i32 %i.dg, 1                        ; 2 uses
  store i32 %i.dh, ptr %0, align 8, !tbaa !109
  store i16 19, ptr %i.dc, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 2
  store i16 32, ptr %.sroa.3.0..sroa_idx.i.i, align 2, !tbaa !110
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 4
  store i32 %i.dh, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !7
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store ptr %i.bg, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !14
  store ptr %i.bi, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !14
  %i.di = getelementptr i8, ptr %i.dc, i64 56
  store ptr %i.bg, ptr %i.di, align 8, !tbaa !14
  %i.dj = getelementptr i8, ptr %i.dc, i64 64
  store ptr %i.bi, ptr %i.dj, align 8, !tbaa !14
  %i.dk = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.k, ptr noundef %i.bg, i64 noundef %i.bl) #27
  %i.dl = getelementptr i8, ptr %i.dc, i64 48
  store i32 %i.dk, ptr %i.dl, align 8, !tbaa !120
  br label %bb.ak

bb.ag:                                            ; preds = %pm_parser_local_depth.exit
  %i.dm = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.k, ptr noundef %i.bg, i64 noundef %i.bl) #27 ; 2 uses
  %.0.i.i166 = load ptr, ptr %i.l, align 8, !tbaa !66 ; 2 uses
  %.not.i.i98167 = icmp eq i32 %.018.i.i, 0
  br i1 %.not.i.i98167, label %pm_parser_scope_find.exit.i, label %.lr.ph

bb.ah:                                            ; preds = %.lr.ph
  %i.dn = add i32 %.04.i.i168, -1                 ; 2 uses
  %.0.i.i = load ptr, ptr %.0.i.i169, align 8, !tbaa !66 ; 2 uses
  %.not.i.i98 = icmp eq i32 %i.dn, 0
  br i1 %.not.i.i98, label %pm_parser_scope_find.exit.i, label %.lr.ph, !llvm.loop !319

.lr.ph:                                           ; preds = %bb.ag, %bb.ah
  %.0.i.i169 = phi ptr [ %.0.i.i, %bb.ah ], [ %.0.i.i166, %bb.ag ] ; 2 uses
  %.04.i.i168 = phi i32 [ %i.dn, %bb.ah ], [ %.018.i.i, %bb.ag ]
  %.not5.i.i = icmp eq ptr %.0.i.i169, null
  br i1 %.not5.i.i, label %bb.ai, label %bb.ah, !llvm.loop !319

bb.ai:                                            ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.2, i32 noundef 626, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_parser_scope_find) #26
  unreachable

pm_parser_scope_find.exit.i:                      ; preds = %bb.ah, %bb.ag
  %.0.i.i.lcssa = phi ptr [ %.0.i.i166, %bb.ag ], [ %.0.i.i, %bb.ah ]
  %i.do = getelementptr i8, ptr %.0.i.i.lcssa, i64 8
  tail call fastcc void @pm_locals_read(ptr noundef %i.do, i32 noundef %i.dm)
  %i.dp = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 8 uses
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %bb.aj, label %pm_local_variable_read_node_create_constant_id.exit

bb.aj:                                            ; preds = %pm_parser_scope_find.exit.i
  %i.dr = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.ds = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.dr, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_local_variable_read_node_create_constant_id.exit: ; preds = %pm_parser_scope_find.exit.i
  %i.dt = load i32, ptr %0, align 8, !tbaa !109
  %i.du = add i32 %i.dt, 1                        ; 2 uses
  store i32 %i.du, ptr %0, align 8, !tbaa !109
  store i16 96, ptr %i.dp, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %i.dp, i64 4
  store i32 %i.du, ptr %.sroa.3.0..sroa_idx.i99, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i100 = getelementptr inbounds nuw i8, ptr %i.dp, i64 8
  store ptr %i.bg, ptr %.sroa.4.0..sroa_idx.i100, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  store ptr %i.bi, ptr %.sroa.5.0..sroa_idx.i101, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.dp, i64 24
  store i32 %i.dm, ptr %.sroa.6.0..sroa_idx.i102, align 8, !tbaa !7
  %.sroa.7.0..sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %i.dp, i64 28
  store i32 %.018.i.i, ptr %.sroa.7.0..sroa_idx.i103, align 4, !tbaa !7
  br label %bb.ak

bb.ak:                                            ; preds = %pm_call_node_variable_call_create.exit, %pm_local_variable_read_node_create_constant_id.exit, %bb.t
  %.169 = phi ptr [ %i.bn, %bb.t ], [ %i.dc, %pm_call_node_variable_call_create.exit ], [ %i.dp, %pm_local_variable_read_node_create_constant_id.exit ] ; 3 uses
  %i.dv = getelementptr i8, ptr %.169, i64 16     ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !134
  %i.dx = getelementptr i8, ptr %i.dw, i64 1      ; 2 uses
  store ptr %i.dx, ptr %i.dv, align 8, !tbaa !134
  %i.dy = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 7 uses
  %i.dz = icmp eq ptr %i.dy, null
  br i1 %i.dz, label %bb.al, label %pm_implicit_node_create.exit

bb.al:                                            ; preds = %bb.ak
  %i.ea = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.eb = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ea, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_implicit_node_create.exit:                     ; preds = %bb.ak
  %i.ec = load i32, ptr %0, align 8, !tbaa !109
  %i.ed = add i32 %i.ec, 1                        ; 2 uses
  store i32 %i.ed, ptr %0, align 8, !tbaa !109
  %i.ee = getelementptr i8, ptr %.169, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !133
  store i16 69, ptr %i.dy, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 4
  store i32 %i.ed, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  store ptr %i.ef, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  store ptr %i.dx, ptr %.sroa.5.0..sroa_idx.i83, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  store ptr %.169, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !105
  br label %pm_assert_value_expression.exit97

pm_assert_value_expression.exit97:                ; preds = %bb.r, %bb.q, %pm_implicit_node_create.exit
  %.2 = phi ptr [ %i.dy, %pm_implicit_node_create.exit ], [ %i.ay, %bb.q ], [ %i.ay, %bb.r ]
  %i.eg = call fastcc ptr @pm_assoc_node_create(ptr noundef nonnull %0, ptr noundef nonnull %i.av, ptr noundef %5, ptr noundef %.2)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %bb.av

bb.am:                                            ; preds = %accept1.exit
  %i.eh = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 14, i1 noundef zeroext false, i1 noundef zeroext true, i32 noundef 133, i16 noundef zeroext %i.p), !inline_history !297 ; 7 uses
  %i.ei = tail call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.eh) ; 3 uses
  %.not.i104 = icmp eq ptr %i.ei, null
  br i1 %.not.i104, label %pm_assert_value_expression.exit107, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ej = getelementptr i8, ptr %i.ei, i64 8
  %.val.i105 = load ptr, ptr %i.ej, align 8, !tbaa !133
  %i.ek = getelementptr i8, ptr %i.ei, i64 16
  %.val5.i106 = load ptr, ptr %i.ek, align 8, !tbaa !134
  %i.el = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.j, ptr noundef %.val.i105, ptr noundef %.val5.i106, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit107

pm_assert_value_expression.exit107:               ; preds = %bb.am, %bb.an
  %i.em = load i16, ptr %i.eh, align 8, !tbaa !115
  %i.en = icmp eq i16 %i.em, 141
  br i1 %i.en, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %pm_assert_value_expression.exit107
  %i.eo = getelementptr i8, ptr %i.eh, i64 2      ; 2 uses
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !116
  %i.eq = or i16 %i.ep, 18
  store i16 %i.eq, ptr %i.eo, align 2, !tbaa !116
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %pm_assert_value_expression.exit107
  tail call fastcc void @pm_hash_key_static_literals_add(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %i.eh)
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.er = load i16, ptr %i.eh, align 8, !tbaa !115
  switch i16 %i.er, label %pm_symbol_node_label_p.exit.thread [
    i16 143, label %bb.ar
    i16 86, label %bb.aq
  ]

bb.aq:                                            ; preds = %bb.ap
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %.sink.i = phi i64 [ 72, %bb.aq ], [ 64, %bb.ap ]
  %i.es = getelementptr i8, ptr %i.eh, i64 %.sink.i
  %.0.i = load ptr, ptr %i.es, align 8, !tbaa !14 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %pm_symbol_node_label_p.exit.thread, label %pm_symbol_node_label_p.exit

pm_symbol_node_label_p.exit:                      ; preds = %bb.ar
  %i.et = getelementptr i8, ptr %.0.i, i64 -1
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !67
  %i.ev = icmp eq i8 %i.eu, 58
  br i1 %i.ev, label %bb.as, label %pm_symbol_node_label_p.exit.thread

bb.as:                                            ; preds = %pm_symbol_node_label_p.exit
  %.val78 = load ptr, ptr %i.c, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %7, align 8, !tbaa !7
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 4
  store ptr %.val78, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  store ptr %.val78, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !14
  br label %bb.at

pm_symbol_node_label_p.exit.thread:               ; preds = %bb.ar, %bb.ap, %pm_symbol_node_label_p.exit
  %.val.i.i = load i32, ptr %i.b, align 8, !tbaa !170
  %i.ew = icmp eq i32 %.val.i.i, 53
  br i1 %i.ew, label %accept1.exit.thread.i, label %accept1.exit.i

accept1.exit.thread.i:                            ; preds = %pm_symbol_node_label_p.exit.thread
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %expect1.exit

accept1.exit.i:                                   ; preds = %pm_symbol_node_label_p.exit.thread
  %i.ex = load ptr, ptr %.sroa.6122.0..sroa_idx, align 8, !tbaa !255 ; 3 uses
  %i.ey = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.j, ptr noundef %i.ex, ptr noundef %i.ex, i32 noundef 134) #27 ; 0 uses
  store ptr %i.ex, ptr %.sroa.4121.0..sroa_idx, align 8, !tbaa !256
  store i32 163, ptr %i.q, align 8, !tbaa !200
  br label %expect1.exit

expect1.exit:                                     ; preds = %accept1.exit.thread.i, %accept1.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !tbaa.struct !163
  br label %bb.at

bb.at:                                            ; preds = %expect1.exit, %bb.as
  %i.ez = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 14, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 136, i16 noundef zeroext %i.p), !inline_history !297 ; 2 uses
  %i.fa = tail call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.ez) ; 3 uses
  %.not.i108 = icmp eq ptr %i.fa, null
  br i1 %.not.i108, label %pm_assert_value_expression.exit111, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fb = getelementptr i8, ptr %i.fa, i64 8
  %.val.i109 = load ptr, ptr %i.fb, align 8, !tbaa !133
  %i.fc = getelementptr i8, ptr %i.fa, i64 16
  %.val5.i110 = load ptr, ptr %i.fc, align 8, !tbaa !134
  %i.fd = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.j, ptr noundef %.val.i109, ptr noundef %.val5.i110, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit111

pm_assert_value_expression.exit111:               ; preds = %bb.at, %bb.au
  %i.fe = call fastcc ptr @pm_assoc_node_create(ptr noundef nonnull %0, ptr noundef nonnull %i.eh, ptr noundef %7, ptr noundef %i.ez)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %bb.av

bb.av:                                            ; preds = %pm_assert_value_expression.exit111, %pm_assert_value_expression.exit97, %pm_assoc_splat_node_create.exit.cont
  %.066 = phi ptr [ %i.fe, %pm_assert_value_expression.exit111 ], [ %i.aq, %pm_assoc_splat_node_create.exit.cont ], [ %i.eg, %pm_assert_value_expression.exit97 ] ; 9 uses
  %.1 = phi i1 [ %.065, %pm_assert_value_expression.exit111 ], [ true, %pm_assoc_splat_node_create.exit.cont ], [ %.065, %pm_assert_value_expression.exit97 ] ; 2 uses
  %i.ff = load i16, ptr %2, align 8, !tbaa !115
  %i.fg = icmp eq i16 %i.ff, 65
  br i1 %i.fg, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  tail call void @pm_node_list_append(ptr noundef %i.w, ptr noundef nonnull %.066) #27
  %i.fh = load i16, ptr %.066, align 8, !tbaa !115
  %i.fi = icmp eq i16 %i.fh, 8
  br i1 %i.fi, label %bb.ax, label %.critedge15.i

bb.ax:                                            ; preds = %bb.aw
  %i.fj = getelementptr i8, ptr %.066, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !129 ; 2 uses
  %i.fl = load i16, ptr %i.fk, align 8, !tbaa !115
  switch i16 %i.fl, label %.critedge.i [
    i16 6, label %.critedge15.i
    i16 65, label %.critedge15.i
    i16 122, label %.critedge15.i
  ]

.critedge.i:                                      ; preds = %bb.ax
  %i.fm = getelementptr i8, ptr %i.fk, i64 2
  %i.fn = load i16, ptr %i.fm, align 2, !tbaa !116
  %i.fo = and i16 %i.fn, 2
  %.not.i84 = icmp eq i16 %i.fo, 0
  br i1 %.not.i84, label %.critedge15.i, label %.critedge14.i

.critedge14.i:                                    ; preds = %.critedge.i
  %i.fp = getelementptr i8, ptr %.066, i64 2
  %i.fq = load i16, ptr %i.fp, align 2, !tbaa !116
  %i.fr = and i16 %i.fq, 2
  %.not17.i = icmp eq i16 %i.fr, 0
  br i1 %.not17.i, label %.critedge15.i, label %pm_hash_node_elements_append.exit

.critedge15.i:                                    ; preds = %.critedge14.i, %.critedge.i, %bb.ax, %bb.ax, %bb.ax, %bb.aw
  %i.fs = load i16, ptr %i.s, align 2, !tbaa !116
  %i.ft = and i16 %i.fs, -3
  store i16 %i.ft, ptr %i.s, align 2, !tbaa !116
  br label %pm_hash_node_elements_append.exit

bb.ay:                                            ; preds = %bb.av
  %i.fu = load i16, ptr %.066, align 8, !tbaa !115
  %i.fv = icmp eq i16 %i.fu, 8
  br i1 %i.fv, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.fw = getelementptr i8, ptr %.066, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !129
  %i.fy = load i16, ptr %i.fx, align 8, !tbaa !115
  %i.fz = icmp eq i16 %i.fy, 143
  br i1 %i.fz, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.ga = load i16, ptr %i.s, align 2, !tbaa !116
  %i.gb = and i16 %i.ga, -5
  store i16 %i.gb, ptr %i.s, align 2, !tbaa !116
  br label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  tail call void @pm_node_list_append(ptr noundef %i.t, ptr noundef nonnull %.066) #27
  %i.gc = load ptr, ptr %i.u, align 8, !tbaa !131
  %i.gd = icmp eq ptr %i.gc, null
  br i1 %i.gd, label %bb.bc, label %pm_keyword_hash_node_elements_append.exit

bb.bc:                                            ; preds = %bb.bb
  %i.ge = getelementptr i8, ptr %.066, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !133
  store ptr %i.gf, ptr %i.u, align 8, !tbaa !131
  br label %pm_keyword_hash_node_elements_append.exit

pm_keyword_hash_node_elements_append.exit:        ; preds = %bb.bb, %bb.bc
  %i.gg = getelementptr i8, ptr %.066, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !134
  store ptr %i.gh, ptr %i.v, align 8, !tbaa !135
  br label %pm_hash_node_elements_append.exit

pm_hash_node_elements_append.exit:                ; preds = %.critedge15.i, %.critedge14.i, %pm_keyword_hash_node_elements_append.exit
  %.val.i85 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.gi = icmp eq i32 %.val.i85, 3
  br i1 %i.gi, label %bb.bd, label %bb.bf

bb.bd:                                            ; preds = %pm_hash_node_elements_append.exit
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val75 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  switch i32 %.val75, label %bb.be [
    i32 160, label %accept1.exit.backedge
    i32 111, label %accept1.exit.backedge
  ]

accept1.exit.backedge:                            ; preds = %bb.bd, %bb.bd, %bb.be
  br label %accept1.exit

bb.be:                                            ; preds = %bb.bd
  %i.gj = tail call fastcc zeroext i1 @token_begins_expression_p(i32 noundef %.val75)
  br i1 %i.gj, label %accept1.exit.backedge, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %pm_hash_node_elements_append.exit
  ret i1 %.1
}

declare void @pm_static_literals_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_hash_key_static_literals_add(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.pm_buffer_t, align 8        ; 7 uses
  %i.a = getelementptr i8, ptr %0, i64 600        ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 664        ; 3 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !26
  %i.d = tail call ptr @pm_static_literals_add(ptr noundef %i.a, i32 noundef %i.c, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext true) #27 ; 4 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, i8 0, i64 24, i1 false)
  %i.e = load i32, ptr %i.b, align 8, !tbaa !26
  %i.f = getelementptr i8, ptr %0, i64 520
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !40
  %i.h = getelementptr i8, ptr %i.g, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !276
  call void @pm_static_literal_inspect(ptr noundef nonnull %3, ptr noundef %i.a, i32 noundef %i.e, ptr noundef %i.i, ptr noundef nonnull %i.d) #27
  %i.j = getelementptr i8, ptr %0, i64 448
  %i.k = getelementptr i8, ptr %i.d, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !133
  %i.m = getelementptr i8, ptr %i.d, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134
  %i.o = call i64 @pm_buffer_length(ptr noundef nonnull %3) #27
  %i.p = trunc i64 %i.o to i32
  %i.q = call ptr @pm_buffer_value(ptr noundef nonnull %3) #27
  %i.r = getelementptr i8, ptr %2, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !133
  %i.t = load i32, ptr %i.b, align 8, !tbaa !26
  %i.u = call i64 @pm_newline_list_line_column(ptr noundef %i.a, ptr noundef %i.s, i32 noundef %i.t) #27
  %.sroa.0.0.extract.trunc = trunc i64 %i.u to i32
  %i.v = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.j, ptr noundef %i.l, ptr noundef %i.n, i32 noundef 308, i32 noundef %i.p, ptr noundef %i.q, i32 noundef %.sroa.0.0.extract.trunc) #27 ; 0 uses
  call void @pm_buffer_free(ptr noundef nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_assoc_node_create(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #30 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 56) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = icmp ne ptr %3, null                     ; 2 uses
  br i1 %i.e, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %pm_node_alloc.exit
  %i.f = getelementptr i8, ptr %3, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !134  ; 2 uses
  %i.h = getelementptr i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.j = icmp ugt ptr %i.g, %i.i
  br i1 %i.j, label %bb.d, label %.sink.split

.sink.split:                                      ; preds = %bb.c, %pm_node_alloc.exit
  %i.k = load i32, ptr %2, align 8, !tbaa !126
  %.not = icmp eq i32 %i.k, 164
  %. = select i1 %.not, ptr %1, ptr %2
  %i.l = getelementptr i8, ptr %., i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.c
  %.0 = phi ptr [ %i.g, %bb.c ], [ %i.m, %.sink.split ]
  %i.n = load i16, ptr %1, align 8, !tbaa !115    ; 2 uses
  switch i16 %i.n, label %bb.e [
end_hunk_3
begin_hunk_4_@parse_arguments_list:bb.a
  %i.cx = getelementptr i8, ptr %i.cs, i64 8
  store ptr %i.cw, ptr %i.cx, align 8, !tbaa !113
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.cy = getelementptr i8, ptr %i.cs, i64 16     ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !114
  %i.da = getelementptr i8, ptr %i.cg, i64 16
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !134 ; 2 uses
  %i.dc = icmp ult ptr %i.cz, %i.db
  br i1 %i.dc, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.db, ptr %i.cy, align 8, !tbaa !114
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  tail call void @pm_node_list_append(ptr noundef nonnull %i.ct, ptr noundef nonnull %i.cg) #27
  %i.dd = load i16, ptr %i.cg, align 8, !tbaa !115
  %i.de = icmp eq i16 %i.dd, 139
  br i1 %i.de, label %.sink.split.i, label %pm_arguments_validate_block.exit.sink.split

.sink.split.i:                                    ; preds = %bb.ac
  %i.df = getelementptr i8, ptr %i.cs, i64 2      ; 2 uses
  %i.dg = load i16, ptr %i.df, align 2, !tbaa !116 ; 2 uses
  %i.dh = and i16 %i.dg, 32
  %..i = add nuw nsw i16 %i.dh, 32
  %i.di = or i16 %..i, %i.dg
  store i16 %i.di, ptr %i.df, align 2, !tbaa !116
  br label %pm_arguments_validate_block.exit.sink.split

pm_arguments_validate_block.exit.sink.split:      ; preds = %bb.u, %bb.ac, %.sink.split.i, %bb.t
  store ptr %.0.ph, ptr %i.bw, align 8, !tbaa !314
  br label %pm_arguments_validate_block.exit

pm_arguments_validate_block.exit:                 ; preds = %pm_arguments_validate_block.exit.sink.split, %accept1.exit86, %bb.k
  %.2 = phi i1 [ %.075, %bb.k ], [ %.075, %accept1.exit86 ], [ true, %pm_arguments_validate_block.exit.sink.split ]
  ret i1 %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_call_node_fcall_create(ptr noundef %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef nonnull readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(136) ptr @calloc(i64 noundef 1, i64 noundef 136) #30 ; 14 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_call_node_create.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 136) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_call_node_create.exit:                         ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  store i16 19, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 32, ptr %.sroa.3.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !127  ; 4 uses
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !123
  %i.i = getelementptr i8, ptr %2, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !314  ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %pm_call_node_create.exit
  %i.k = getelementptr i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134  ; 3 uses
  %i.m = getelementptr i8, ptr %2, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !315
  %.not20.i = icmp eq ptr %i.n, null
  br i1 %.not20.i, label %pm_arguments_end.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %2, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !316  ; 2 uses
  %i.q = icmp ugt ptr %i.p, %i.l
  %spec.select.i = select i1 %i.q, ptr %i.p, ptr %i.l
  br label %pm_arguments_end.exit

bb.e:                                             ; preds = %pm_call_node_create.exit
  %i.r = getelementptr i8, ptr %2, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !315
  %.not18.i = icmp eq ptr %i.s, null
  br i1 %.not18.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr i8, ptr %2, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !316
  br label %pm_arguments_end.exit

bb.g:                                             ; preds = %bb.e
  %i.v = getelementptr i8, ptr %2, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !312  ; 2 uses
  %.not19.i = icmp eq ptr %i.w, null
  br i1 %.not19.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !114
  br label %pm_arguments_end.exit

bb.i:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %2, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !316
  br label %pm_arguments_end.exit

pm_arguments_end.exit:                            ; preds = %bb.c, %bb.d, %bb.f, %bb.h, %bb.i
  %.013.i = phi ptr [ %i.aa, %bb.i ], [ %i.u, %bb.f ], [ %i.y, %bb.h ], [ %i.l, %bb.c ], [ %spec.select.i, %bb.d ]
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.013.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !124
  %i.ab = load i32, ptr %1, align 8, !tbaa !126
  %i.ac = icmp eq i32 %i.ab, 164                  ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %1, i64 16
  %.val23.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !128 ; 2 uses
  %. = select i1 %i.ac, ptr null, ptr %i.h
  %..val23.pre = select i1 %i.ac, ptr null, ptr %.val23.pre
  %i.ad = getelementptr i8, ptr %i.a, i64 56
  store ptr %., ptr %i.ad, align 8, !tbaa !14
  %i.ae = getelementptr i8, ptr %i.a, i64 64
  store ptr %..val23.pre, ptr %i.ae, align 8, !tbaa !14
  %i.af = getelementptr i8, ptr %i.a, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !311
  %i.ag = getelementptr i8, ptr %2, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !312
  %i.ai = getelementptr i8, ptr %i.a, i64 88
  store ptr %i.ah, ptr %i.ai, align 8, !tbaa !117
  %i.aj = getelementptr i8, ptr %i.a, i64 96
  %i.ak = getelementptr i8, ptr %2, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.ak, i64 16, i1 false), !tbaa.struct !311
  %i.al = getelementptr i8, ptr %i.a, i64 128
  store ptr %i.j, ptr %i.al, align 8, !tbaa !289
  %i.am = getelementptr i8, ptr %0, i64 576
  %i.an = ptrtoint ptr %.val23.pre to i64
  %i.ao = ptrtoint ptr %i.h to i64
  %i.ap = sub i64 %i.an, %i.ao
  %i.aq = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.am, ptr noundef %i.h, i64 noundef %i.ap) #27
  %i.ar = getelementptr i8, ptr %i.a, i64 48
  store i32 %i.aq, ptr %i.ar, align 8, !tbaa !120
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_constant_read_node_create(ptr noundef %0, ptr noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !126
  switch i32 %i.a, label %bb.b [
    i32 41, label %bb.c
    i32 163, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.2, i32 noundef 3539, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_constant_read_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.b = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.d = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.e = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.d, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.f = load i32, ptr %0, align 8, !tbaa !109
  %i.g = add i32 %i.f, 1                          ; 2 uses
  store i32 %i.g, ptr %0, align 8, !tbaa !109
  %i.h = getelementptr i8, ptr %1, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !127  ; 3 uses
  %i.j = getelementptr i8, ptr %1, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !128  ; 2 uses
  %i.l = getelementptr i8, ptr %0, i64 576
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = ptrtoint ptr %i.i to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.l, ptr noundef %i.i, i64 noundef %i.o) #27
  store i16 42, ptr %i.b, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %i.g, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.k, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i32 %i.p, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_constant_path_node_create(ptr noundef %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef readonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %1) ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %pm_assert_value_expression.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val5.i = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.d = getelementptr i8, ptr %0, i64 472
  %i.e = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.d, ptr noundef %.val.i, ptr noundef %.val5.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

pm_assert_value_expression.exit:                  ; preds = %bb.a, %bb.b
  %i.f = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 14 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %pm_node_alloc.exit

bb.c:                                             ; preds = %pm_assert_value_expression.exit
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.i = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.h, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 72) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %pm_assert_value_expression.exit
  %i.j = load i32, ptr %3, align 8, !tbaa !126
  %i.k = icmp eq i32 %i.j, 41
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %pm_node_alloc.exit
  %i.l = getelementptr i8, ptr %3, i64 8
  %.val = load ptr, ptr %i.l, align 8, !tbaa !127 ; 2 uses
  %i.m = getelementptr i8, ptr %3, i64 16
  %.val40 = load ptr, ptr %i.m, align 8, !tbaa !128
  %i.n = getelementptr i8, ptr %0, i64 576
  %i.o = ptrtoint ptr %.val40 to i64
  %i.p = ptrtoint ptr %.val to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.n, ptr noundef %.val, i64 noundef %i.q) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %pm_node_alloc.exit
  %.0 = phi i32 [ %i.r, %bb.d ], [ 0, %pm_node_alloc.exit ]
  %i.s = icmp eq ptr %1, null
  %i.t = load i32, ptr %0, align 8, !tbaa !109
  %i.u = add i32 %i.t, 1                          ; 3 uses
  store i32 %i.u, ptr %0, align 8, !tbaa !109
  %i.v = getelementptr i8, ptr %3, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !128  ; 3 uses
  br i1 %i.s, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.y = load <2 x ptr>, ptr %i.x, align 8, !tbaa !14
  %i.z = load ptr, ptr %i.x, align 8, !tbaa !127
  %i.aa = getelementptr i8, ptr %3, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !127
  store i16 37, ptr %i.f, align 8, !tbaa !110
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.u, ptr %.sroa.33.0..sroa_idx, align 4, !tbaa !7
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.ac = getelementptr i8, ptr %1, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !133
  %i.ae = getelementptr i8, ptr %2, i64 8
  %i.af = load <2 x ptr>, ptr %i.ae, align 8, !tbaa !14
  %i.ag = getelementptr i8, ptr %3, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !127
  store i16 37, ptr %i.f, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.u, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink50 = phi i64 [ 16, %bb.g ], [ 8, %bb.f ]
  %.sink49 = phi ptr [ %i.w, %bb.g ], [ %i.z, %bb.f ]
  %.sink48 = phi i64 [ 24, %bb.g ], [ 16, %bb.f ]
  %.sink47 = phi ptr [ %1, %bb.g ], [ %i.w, %bb.f ]
  %.sink41 = phi ptr [ %i.ah, %bb.g ], [ %i.ab, %bb.f ]
  %i.ai = phi <2 x ptr> [ %i.af, %bb.g ], [ %i.y, %bb.f ]
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink50
  store ptr %.sink49, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 %.sink48
  store ptr %.sink47, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i32 %.0, ptr %i.aj, align 8, !tbaa !7
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  store i32 0, ptr %i.ak, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store <2 x ptr> %i.ai, ptr %i.al, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr %.sink41, ptr %i.am, align 8, !tbaa !14
  %i.an = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store ptr %i.w, ptr %i.an, align 8, !tbaa !14
  ret ptr %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_range_node_create(ptr noundef %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %1) ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %pm_assert_value_expression.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val5.i = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.d = getelementptr i8, ptr %0, i64 472
  %i.e = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.d, ptr noundef %.val.i, ptr noundef %.val5.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

pm_assert_value_expression.exit:                  ; preds = %bb.a, %bb.b
  %i.f = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %3) ; 3 uses
  %.not.i37 = icmp eq ptr %i.f, null
  br i1 %.not.i37, label %pm_assert_value_expression.exit40, label %bb.c

bb.c:                                             ; preds = %pm_assert_value_expression.exit
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val.i38 = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.h = getelementptr i8, ptr %i.f, i64 16
  %.val5.i39 = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.i = getelementptr i8, ptr %0, i64 472
  %i.j = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.i, ptr noundef %.val.i38, ptr noundef %.val5.i39, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit40

pm_assert_value_expression.exit40:                ; preds = %pm_assert_value_expression.exit, %bb.c
  %i.k = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #30 ; 10 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %pm_assert_value_expression.exit40
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.n = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.m, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 56) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %pm_assert_value_expression.exit40
  %i.o = load i32, ptr %2, align 8, !tbaa !126    ; 2 uses
  %switch.selectcmp.case1 = icmp eq i32 %i.o, 44
  %switch.selectcmp.case2 = icmp eq i32 %i.o, 155
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %i.p = select i1 %switch.selectcmp, i16 4, i16 0 ; 3 uses
  %i.q = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.q, label %bb.f, label %bb.e

bb.e:                                             ; preds = %pm_node_alloc.exit
  %i.r = load i16, ptr %1, align 8, !tbaa !115
  switch i16 %i.r, label %bb.i [
    i16 108, label %bb.f
    i16 82, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %pm_node_alloc.exit
  %i.s = icmp eq ptr %3, null
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.t = load i16, ptr %3, align 8, !tbaa !115
  switch i16 %i.t, label %bb.i [
    i16 108, label %bb.h
    i16 82, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.f
  %i.u = or disjoint i16 %i.p, 2
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.h
  %.1 = phi i16 [ %i.u, %bb.h ], [ %i.p, %bb.g ], [ %i.p, %bb.e ]
  %i.v = load i32, ptr %0, align 8, !tbaa !109
  %i.w = add i32 %i.v, 1                          ; 2 uses
  store i32 %i.w, ptr %0, align 8, !tbaa !109
  %. = select i1 %i.q, ptr %2, ptr %1
  %.in = getelementptr i8, ptr %., i64 8
  %i.x = load ptr, ptr %.in, align 8, !tbaa !14
  %i.y = icmp eq ptr %3, null
  %.pn36 = select i1 %i.y, ptr %2, ptr %3
  %.in35 = getelementptr i8, ptr %.pn36, i64 16
  %i.z = load ptr, ptr %.in35, align 8, !tbaa !14
  %i.aa = getelementptr i8, ptr %2, i64 8
  store i16 122, ptr %i.k, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i16 %.1, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.w, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.x, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.z, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %3, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !105
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ab = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !14
  store <2 x ptr> %i.ab, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.k
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_float_node_create(ptr noundef %0, ptr noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !126
  %i.c = icmp eq i32 %i.b, 55
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.2, i32 noundef 3895, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_float_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 8 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.g = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.f, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.h = load i32, ptr %0, align 8, !tbaa !109
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %0, align 8, !tbaa !109
  %i.j = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !127  ; 3 uses
  %i.l = getelementptr i8, ptr %1, i64 16         ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !128  ; 2 uses
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o                       ; 12 uses
  %i.q = icmp slt i64 %i.p, 1
  br i1 %i.q, label %pm_double_parse.exit, label %bb.e

bb.e:                                             ; preds = %pm_node_alloc.exit
  %i.r = add nuw i64 %i.p, 1
  %i.s = tail call noalias ptr @malloc(i64 noundef %i.r) #28 ; 46 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.s, ptr noundef nonnull align 1 %i.k, i64 noundef %i.p, i1 noundef false) #27
  %i.t = tail call ptr @localeconv() #27
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !448
  %i.v = load i8, ptr %i.u, align 1, !tbaa !67    ; 42 uses
  %.not.i = icmp eq i8 %i.v, 46
  br i1 %.not.i, label %.loopexit.i.preheader, label %iter.check

.loopexit.i.preheader:                            ; preds = %bb.g, %middle.block, %vec.epilog.middle.block, %bb.e
  br label %.loopexit.i

iter.check:                                       ; preds = %bb.e
  %min.iters.check = icmp ult i64 %i.p, 8
  br i1 %min.iters.check, label %.preheader.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check13 = icmp ult i64 %i.p, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.p, 24
  %n.vec = and i64 %i.p, 9223372036854775776      ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue76, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue76 ] ; 33 uses
  %i.w = getelementptr i8, ptr %i.s, i64 %index   ; 3 uses
  %i.x = getelementptr i8, ptr %i.w, i64 16
  %wide.load = load <16 x i8>, ptr %i.w, align 1, !tbaa !67
  %wide.load14 = load <16 x i8>, ptr %i.x, align 1, !tbaa !67
  %i.y = icmp eq <16 x i8> %wide.load, splat (i8 46) ; 16 uses
  %i.z = icmp eq <16 x i8> %wide.load14, splat (i8 46) ; 16 uses
  %i.aa = extractelement <16 x i1> %i.y, i64 0
  br i1 %i.aa, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 %i.v, ptr %i.w, align 1, !tbaa !67
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.ab = extractelement <16 x i1> %i.y, i64 1
  br i1 %i.ab, label %pred.store.if15, label %pred.store.continue16

pred.store.if15:                                  ; preds = %pred.store.continue
  %i.ac = getelementptr i8, ptr %i.s, i64 %index
  %i.ad = getelementptr i8, ptr %i.ac, i64 1
  store i8 %i.v, ptr %i.ad, align 1, !tbaa !67
  br label %pred.store.continue16

pred.store.continue16:                            ; preds = %pred.store.if15, %pred.store.continue
  %i.ae = extractelement <16 x i1> %i.y, i64 2
  br i1 %i.ae, label %pred.store.if17, label %pred.store.continue18

pred.store.if17:                                  ; preds = %pred.store.continue16
  %i.af = getelementptr i8, ptr %i.s, i64 %index
  %i.ag = getelementptr i8, ptr %i.af, i64 2
  store i8 %i.v, ptr %i.ag, align 1, !tbaa !67
  br label %pred.store.continue18

pred.store.continue18:                            ; preds = %pred.store.if17, %pred.store.continue16
  %i.ah = extractelement <16 x i1> %i.y, i64 3
  br i1 %i.ah, label %pred.store.if19, label %pred.store.continue20

pred.store.if19:                                  ; preds = %pred.store.continue18
  %i.ai = getelementptr i8, ptr %i.s, i64 %index
  %i.aj = getelementptr i8, ptr %i.ai, i64 3
  store i8 %i.v, ptr %i.aj, align 1, !tbaa !67
  br label %pred.store.continue20

pred.store.continue20:                            ; preds = %pred.store.if19, %pred.store.continue18
  %i.ak = extractelement <16 x i1> %i.y, i64 4
  br i1 %i.ak, label %pred.store.if21, label %pred.store.continue22

pred.store.if21:                                  ; preds = %pred.store.continue20
  %i.al = getelementptr i8, ptr %i.s, i64 %index
end_hunk_4
begin_hunk_5_@pm_else_node_create:bb.a
  %i.f = icmp eq i32 %i.e, 164                    ; 2 uses
  %i.g = icmp ne ptr %2, null
  %or.cond = and i1 %i.g, %i.f
  %i.h = load i32, ptr %0, align 8, !tbaa !109
  %i.i = add i32 %i.h, 1                          ; 2 uses
  store i32 %i.i, ptr %0, align 8, !tbaa !109
  %.sroa.7.0.in20 = getelementptr i8, ptr %1, i64 8 ; 2 uses
  %i.j = load <2 x ptr>, ptr %.sroa.7.0.in20, align 8, !tbaa !14
  %.sroa.7.021 = load ptr, ptr %.sroa.7.0.in20, align 8, !tbaa !127
  br i1 %or.cond, label %.thread, label %bb.c

.thread:                                          ; preds = %pm_node_alloc.exit
  %.sroa.9.0.in22 = getelementptr i8, ptr %2, i64 16
  %.sroa.9.023 = load ptr, ptr %.sroa.9.0.in22, align 8, !tbaa !14
  br label %bb.e

bb.c:                                             ; preds = %pm_node_alloc.exit
  %.sroa.9.0.in = getelementptr i8, ptr %3, i64 16
  %.sroa.9.0 = load ptr, ptr %.sroa.9.0.in, align 8, !tbaa !14 ; 3 uses
  br i1 %i.f, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %3, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !127
  br label %bb.e

bb.e:                                             ; preds = %.thread, %bb.c, %bb.d
  %.sroa.9.026 = phi ptr [ %.sroa.9.0, %bb.d ], [ %.sroa.9.0, %bb.c ], [ %.sroa.9.023, %.thread ]
  %.sroa.14.0 = phi ptr [ %i.l, %bb.d ], [ null, %bb.c ], [ null, %.thread ]
  %.sroa.16.0 = phi ptr [ %.sroa.9.0, %bb.d ], [ null, %bb.c ], [ null, %.thread ]
  store i16 47, ptr %i.a, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.i, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.7.021, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.9.026, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store <2 x ptr> %i.j, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !136
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.14.0, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !14
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.sroa.16.0, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_begin_node_create(ptr noundef captures(none) %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #30 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 88) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = icmp eq ptr %2, null
  %. = select i1 %i.e, ptr %1, ptr %2
  %storemerge.in = load i32, ptr %0, align 8, !tbaa !109
  %storemerge = add i32 %storemerge.in, 1         ; 2 uses
  store i32 %storemerge, ptr %0, align 8, !tbaa !109
  %.sroa.7.0.in = getelementptr i8, ptr %1, i64 8
  %.sroa.7.0 = load ptr, ptr %.sroa.7.0.in, align 8, !tbaa !127 ; 2 uses
  %.sroa.9.0.in = getelementptr i8, ptr %., i64 16
  %.sroa.9.0 = load ptr, ptr %.sroa.9.0.in, align 8, !tbaa !14
  %i.f = load i32, ptr %1, align 8, !tbaa !126
  %i.g = icmp eq i32 %i.f, 164
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %pm_node_alloc.exit
  %i.h = getelementptr i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !128
  br label %bb.d

bb.d:                                             ; preds = %pm_node_alloc.exit, %bb.c
  %.sroa.13.0 = phi ptr [ %i.i, %bb.c ], [ null, %pm_node_alloc.exit ]
  %.sroa.11.0 = phi ptr [ %.sroa.7.0, %bb.c ], [ null, %pm_node_alloc.exit ]
  store i16 11, ptr %i.a, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %storemerge, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.sroa.13.0, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !14
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %2, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !136
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @parse_rescues(ptr noundef %0, i64 noundef %1, ptr noundef readonly captures(address) %2, ptr noundef nonnull captures(none) %3, i32 noundef range(i32 1, 8) %4, i16 noundef zeroext %5) unnamed_addr #8 {
bb.a:
  %6 = alloca %struct.pm_token_t, align 8         ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 344        ; 21 uses
  %.val153235 = load i32, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  %.not = icmp eq i32 %.val153235, 11             ; 2 uses
  br i1 %.not, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.a
  %.not147 = icmp eq ptr %2, null
  %i.b = getelementptr i8, ptr %0, i64 320        ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 328        ; 6 uses
  %i.d = getelementptr i8, ptr %0, i64 336        ; 4 uses
  %i.e = add i16 %5, 1                            ; 3 uses
  %i.f = getelementptr i8, ptr %0, i64 472        ; 3 uses
  %i.g = add i16 %5, 2
  %i.h = getelementptr i8, ptr %0, i64 24         ; 4 uses
  %i.i = getelementptr i8, ptr %3, i64 24
  %i.j = getelementptr i8, ptr %3, i64 8
  %i.k = getelementptr i8, ptr %3, i64 16
  %i.l = getelementptr i8, ptr %3, i64 48
  %i.m = zext nneg i32 %4 to i64
  %i.n = getelementptr [4 x i8], ptr @switch.table.parse_rescues, i64 %i.m
  %switch.gep = getelementptr i8, ptr %i.n, i64 -4
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.ab
  %.0138236 = phi ptr [ null, %.lr.ph ], [ %i.o, %bb.ab ] ; 3 uses
  br i1 %.not147, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %1, ptr noundef %2, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.o = tail call noalias dereferenceable_or_null(120) ptr @calloc(i64 noundef 1, i64 noundef 120) #30 ; 19 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %pm_rescue_node_create.exit

bb.e:                                             ; preds = %bb.d
  %i.q = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.r = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.q, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 120) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_rescue_node_create.exit:                       ; preds = %bb.d
  %i.s = load i32, ptr %0, align 8, !tbaa !109
  %i.t = add i32 %i.s, 1                          ; 2 uses
  store i32 %i.t, ptr %0, align 8, !tbaa !109
  %i.u = load ptr, ptr %i.c, align 8, !tbaa !127  ; 2 uses
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !128  ; 2 uses
  store i16 129, ptr %i.o, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  store i32 %i.t, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.u, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 6 uses
  store ptr %i.v, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.u, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store ptr %i.v, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !14
  %i.w = load i32, ptr %i.a, align 8, !tbaa !170  ; 5 uses
  switch i32 %i.w, label %bb.g [
    i32 53, label %bb.f
    i32 14, label %accept1.exit.thread222
    i32 17, label %accept1.exit.thread222
    i32 12, label %accept1.exit.thread222
  ]

bb.f:                                             ; preds = %pm_rescue_node_create.exit
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.x = load i32, ptr %i.b, align 8, !tbaa !126
  %i.y = icmp eq i32 %i.x, 164
  br i1 %i.y, label %accept1.exit.thread222thread-pre-split, label %accept1.exit.thread222thread-pre-split.sink.split

bb.g:                                             ; preds = %pm_rescue_node_create.exit
  %i.z = tail call fastcc zeroext i1 @token_begins_expression_p(i32 noundef %i.w)
  br i1 %i.z, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val152 = load i32, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  %i.aa = icmp eq i32 %.val152, 159
  br i1 %i.aa, label %bb.i, label %accept1.exit.thread222

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = getelementptr i8, ptr %i.o, i64 40
  br label %bb.j

bb.j:                                             ; preds = %accept1.exit165, %bb.i
  %.val.i214 = load i32, ptr %i.a, align 8, !tbaa !170
  %i.ac = icmp eq i32 %.val.i214, 159
  br i1 %i.ac, label %bb.k, label %accept1.exit215

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.3220.0.copyload = load ptr, ptr %i.c, align 8, !tbaa !14 ; 2 uses
  %.sroa.4221.0.copyload = load ptr, ptr %i.d, align 8, !tbaa !14 ; 2 uses
  %i.ad = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 14, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 101, i16 noundef zeroext %i.g), !inline_history !493 ; 4 uses
  %i.ae = tail call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.ad), !inline_history !493 ; 3 uses
  %.not.i.i210 = icmp eq ptr %i.ae, null
  br i1 %.not.i.i210, label %parse_value_expression.exit213, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val.i.i211 = load ptr, ptr %i.af, align 8, !tbaa !133
  %i.ag = getelementptr i8, ptr %i.ae, i64 16
  %.val5.i.i212 = load ptr, ptr %i.ag, align 8, !tbaa !134
  %i.ah = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.f, ptr noundef %.val.i.i211, ptr noundef %.val5.i.i212, i32 noundef 290) #27, !inline_history !493 ; 0 uses
  br label %parse_value_expression.exit213

parse_value_expression.exit213:                   ; preds = %bb.k, %bb.l
  %i.ai = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 9 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.m, label %pm_splat_node_create.exit

bb.m:                                             ; preds = %parse_value_expression.exit213
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.al = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ak, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_splat_node_create.exit:                        ; preds = %parse_value_expression.exit213
  %i.am = icmp eq ptr %i.ad, null
  %storemerge.in.i = load i32, ptr %0, align 8, !tbaa !109
  %storemerge.i = add i32 %storemerge.in.i, 1     ; 2 uses
  store i32 %storemerge.i, ptr %0, align 8, !tbaa !109
  br i1 %i.am, label %pm_splat_node_create.exit.cont, label %pm_splat_node_create.exit.else

pm_splat_node_create.exit.else:                   ; preds = %pm_splat_node_create.exit
  %.sroa.gep218 = getelementptr i8, ptr %i.ad, i64 16
  %.sroa.9.0.i203.else.val = load ptr, ptr %.sroa.gep218, align 8, !tbaa !14
  br label %pm_splat_node_create.exit.cont

pm_splat_node_create.exit.cont:                   ; preds = %pm_splat_node_create.exit, %pm_splat_node_create.exit.else
  %.sroa.9.0.i203 = phi ptr [ %.sroa.4221.0.copyload, %pm_splat_node_create.exit ], [ %.sroa.9.0.i203.else.val, %pm_splat_node_create.exit.else ]
  store i16 139, ptr %i.ai, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i204 = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %storemerge.i, ptr %.sroa.5.0..sroa_idx.i204, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx.i205 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.sroa.3220.0.copyload, ptr %.sroa.7.0..sroa_idx.i205, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i206 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %.sroa.9.0.i203, ptr %.sroa.9.0..sroa_idx.i206, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i207 = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %.sroa.3220.0.copyload, ptr %.sroa.11.0..sroa_idx.i207, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i208 = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr %.sroa.4221.0.copyload, ptr %.sroa.12.0..sroa_idx.i208, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx.i209 = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr %i.ad, ptr %.sroa.13.0..sroa_idx.i209, align 8, !tbaa !105
  br label %parse_starred_expression.exit

accept1.exit215:                                  ; preds = %bb.j
  %i.an = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 14, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 255, i16 noundef zeroext %i.e), !inline_history !493 ; 3 uses
  %i.ao = tail call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.an), !inline_history !493 ; 3 uses
  %.not.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i, label %parse_starred_expression.exit, label %bb.n

bb.n:                                             ; preds = %accept1.exit215
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.val.i.i200 = load ptr, ptr %i.ap, align 8, !tbaa !133
  %i.aq = getelementptr i8, ptr %i.ao, i64 16
  %.val5.i.i = load ptr, ptr %i.aq, align 8, !tbaa !134
  %i.ar = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.f, ptr noundef %.val.i.i200, ptr noundef %.val5.i.i, i32 noundef 290) #27, !inline_history !493 ; 0 uses
  br label %parse_starred_expression.exit

parse_starred_expression.exit:                    ; preds = %bb.n, %accept1.exit215, %pm_splat_node_create.exit.cont
  %.0.i = phi ptr [ %i.ai, %pm_splat_node_create.exit.cont ], [ %i.an, %accept1.exit215 ], [ %i.an, %bb.n ] ; 2 uses
  tail call void @pm_node_list_append(ptr noundef %i.ab, ptr noundef %.0.i) #27
  %i.as = getelementptr i8, ptr %.0.i, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !134
  store ptr %i.at, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !494
  %.val156 = load i32, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  switch i32 %.val156, label %accept1.exit.thread222 [
    i32 3, label %accept1.exit165
    i32 53, label %bb.o
  ]

bb.o:                                             ; preds = %parse_starred_expression.exit
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.au = load i32, ptr %i.b, align 8, !tbaa !126
  %i.av = icmp eq i32 %i.au, 164
  br i1 %i.av, label %accept1.exit.thread222thread-pre-split, label %accept1.exit.thread222thread-pre-split.sink.split

accept1.exit165:                                  ; preds = %parse_starred_expression.exit
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %bb.j, !llvm.loop !496

accept1.exit.thread222thread-pre-split.sink.split: ; preds = %bb.o, %bb.f
  %i.aw = load <2 x ptr>, ptr %i.c, align 8, !tbaa !14
  br label %accept1.exit.thread222thread-pre-split

accept1.exit.thread222thread-pre-split:           ; preds = %accept1.exit.thread222thread-pre-split.sink.split, %bb.o, %bb.f
  %i.ax = phi <2 x ptr> [ splat (ptr null), %bb.f ], [ splat (ptr null), %bb.o ], [ %i.aw, %accept1.exit.thread222thread-pre-split.sink.split ]
  %i.ay = getelementptr i8, ptr %i.o, i64 64
  store <2 x ptr> %i.ax, ptr %i.ay, align 8, !tbaa !14
  %i.az = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 48, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 258, i16 noundef zeroext %i.e)
  %i.ba = tail call fastcc ptr @parse_target(ptr noundef nonnull %0, ptr noundef %i.az, i1 noundef zeroext false, i1 noundef zeroext false) ; 2 uses
  %i.bb = getelementptr i8, ptr %i.o, i64 80
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !497
  %i.bc = getelementptr i8, ptr %i.ba, i64 16
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !134
  store ptr %i.bd, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !494
  %.val.i166.pr = load i32, ptr %i.a, align 8, !tbaa !170
  br label %accept1.exit.thread222

accept1.exit.thread222:                           ; preds = %parse_starred_expression.exit, %accept1.exit.thread222thread-pre-split, %bb.h, %pm_rescue_node_create.exit, %pm_rescue_node_create.exit, %pm_rescue_node_create.exit
  %.val.i166 = phi i32 [ %.val.i166.pr, %accept1.exit.thread222thread-pre-split ], [ %.val152, %bb.h ], [ %i.w, %pm_rescue_node_create.exit ], [ %i.w, %pm_rescue_node_create.exit ], [ %i.w, %pm_rescue_node_create.exit ], [ %.val156, %parse_starred_expression.exit ]
  switch i32 %.val.i166, label %expect1.exit.thread [
    i32 17, label %bb.p
    i32 14, label %bb.p
    i32 12, label %expect1.exit
  ]

bb.p:                                             ; preds = %accept1.exit.thread222, %accept1.exit.thread222
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i167 = load i32, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  %i.be = icmp eq i32 %.val.i167, 12
  br i1 %i.be, label %bb.q, label %accept1.exit168

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.bf = getelementptr i8, ptr %i.o, i64 88      ; 2 uses
  %i.bg = load i32, ptr %i.b, align 8, !tbaa !200
  %i.bh = icmp eq i32 %i.bg, 164
  br i1 %i.bh, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i8 0, i64 16, i1 false)
  br label %accept1.exit168thread-pre-split

bb.s:                                             ; preds = %bb.q
  %i.bi = load <2 x ptr>, ptr %i.c, align 8, !tbaa !14
  store <2 x ptr> %i.bi, ptr %i.bf, align 8, !tbaa !14
  br label %accept1.exit168thread-pre-split

expect1.exit.thread:                              ; preds = %accept1.exit.thread222
  %i.bj = load ptr, ptr %i.d, align 8, !tbaa !255 ; 4 uses
  %i.bk = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.f, ptr noundef %i.bj, ptr noundef %i.bj, i32 noundef 257) #27 ; 0 uses
  store ptr %i.bj, ptr %i.c, align 8, !tbaa !256
  store i32 163, ptr %i.b, align 8, !tbaa !200
  %i.bl = getelementptr i8, ptr %i.o, i64 88
  br label %bb.u

expect1.exit:                                     ; preds = %accept1.exit.thread222
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.pr = load i32, ptr %i.b, align 8, !tbaa !200
  %i.bm = getelementptr i8, ptr %i.o, i64 88      ; 2 uses
  %i.bn = icmp eq i32 %.pr, 164
  br i1 %i.bn, label %bb.t, label %expect1.exit._crit_edge

expect1.exit._crit_edge:                          ; preds = %expect1.exit
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !256
  br label %bb.u

bb.t:                                             ; preds = %expect1.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i8 0, i64 16, i1 false)
  br label %accept1.exit168thread-pre-split

bb.u:                                             ; preds = %expect1.exit._crit_edge, %expect1.exit.thread
  %i.bo = phi ptr [ %i.bj, %expect1.exit.thread ], [ %.pre, %expect1.exit._crit_edge ]
  %i.bp = phi ptr [ %i.bl, %expect1.exit.thread ], [ %i.bm, %expect1.exit._crit_edge ]
  %i.bq = load ptr, ptr %i.d, align 8, !tbaa !255
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !14
  %.sroa.2.0..sroa_idx = getelementptr i8, ptr %i.o, i64 96
  store ptr %i.bq, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !14
  br label %accept1.exit168thread-pre-split

accept1.exit168thread-pre-split:                  ; preds = %bb.r, %bb.s, %bb.u, %bb.t
  %.val155.pr = load i32, ptr %i.a, align 8, !tbaa !170
  br label %accept1.exit168

accept1.exit168:                                  ; preds = %accept1.exit168thread-pre-split, %bb.p
  %.val155 = phi i32 [ %.val155.pr, %accept1.exit168thread-pre-split ], [ %.val.i167, %bb.p ]
  switch i32 %.val155, label %switch.lookup [
    i32 9, label %accept2.exit173
    i32 8, label %accept2.exit173
    i32 6, label %accept2.exit173
  ]

switch.lookup:                                    ; preds = %accept1.exit168
  %i.br = load i32, ptr %i.h, align 8, !tbaa !7
  %i.bs = shl i32 %i.br, 1
  store i32 %i.bs, ptr %i.h, align 8, !tbaa !7
  %switch.load = load i32, ptr %switch.gep, align 4
  %i.bt = tail call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef %switch.load, i16 noundef zeroext %i.e) ; 4 uses
  %.not148 = icmp eq ptr %i.bt, null
  br i1 %.not148, label %pm_rescue_node_statements_set.exit, label %bb.v

bb.v:                                             ; preds = %switch.lookup
  %i.bu = getelementptr i8, ptr %i.o, i64 104
  store ptr %i.bt, ptr %i.bu, align 8, !tbaa !498
  %i.bv = getelementptr i8, ptr %i.bt, i64 24
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !101
  %.not5.i = icmp eq i64 %i.bw, 0
  br i1 %.not5.i, label %pm_rescue_node_statements_set.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = getelementptr i8, ptr %i.bt, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !122
  store ptr %i.by, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !494
  br label %pm_rescue_node_statements_set.exit

pm_rescue_node_statements_set.exit:               ; preds = %bb.w, %bb.v, %switch.lookup
  %i.bz = load i32, ptr %i.h, align 8, !tbaa !7
  %i.ca = lshr i32 %i.bz, 1
  store i32 %i.ca, ptr %i.h, align 8, !tbaa !7
  %.val.i171 = load i32, ptr %i.a, align 8, !tbaa !170
  switch i32 %.val.i171, label %accept2.exit173 [
    i32 17, label %bb.x
    i32 14, label %bb.x
  ]

bb.x:                                             ; preds = %pm_rescue_node_statements_set.exit, %pm_rescue_node_statements_set.exit
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept2.exit173

accept2.exit173:                                  ; preds = %pm_rescue_node_statements_set.exit, %accept1.exit168, %accept1.exit168, %accept1.exit168, %bb.x
  %i.cb = icmp eq ptr %.0138236, null
  br i1 %i.cb, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %accept2.exit173
  %i.cc = load ptr, ptr %i.i, align 8, !tbaa !499
  %.not.i = icmp eq ptr %i.cc, null
  br i1 %.not.i, label %bb.z, label %pm_begin_node_rescue_clause_set.exit

bb.z:                                             ; preds = %bb.y
  %i.cd = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !500
  store ptr %i.cd, ptr %i.j, align 8, !tbaa !501
  br label %pm_begin_node_rescue_clause_set.exit

pm_begin_node_rescue_clause_set.exit:             ; preds = %bb.y, %bb.z
  %i.ce = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !494
  store ptr %i.ce, ptr %i.k, align 8, !tbaa !348
  store ptr %i.o, ptr %i.l, align 8, !tbaa !502
  br label %bb.ab

bb.aa:                                            ; preds = %accept2.exit173
  %i.cf = getelementptr i8, ptr %.0138236, i64 112
  store ptr %i.o, ptr %i.cf, align 8, !tbaa !503
  %i.cg = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !494
  %i.ch = getelementptr i8, ptr %.0138236, i64 16
  store ptr %i.cg, ptr %i.ch, align 8, !tbaa !494
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %pm_begin_node_rescue_clause_set.exit
  %.val153 = load i32, ptr %i.a, align 8, !tbaa !170 ; 3 uses
  %i.ci = icmp eq i32 %.val153, 11
  br i1 %i.ci, label %bb.b, label %._crit_edge, !llvm.loop !504

._crit_edge:                                      ; preds = %bb.ab
  %i.cj = getelementptr i8, ptr %i.o, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !494
  %i.cl = getelementptr i8, ptr %3, i64 48
  %.0137239 = load ptr, ptr %i.cl, align 8, !tbaa !505 ; 2 uses
end_hunk_5
begin_hunk_6_@parse_arguments:bb.a
  %i.d = getelementptr [12 x i8], ptr @pm_binding_powers, i64 %i.c
  %i.e = load i32, ptr %i.d, align 4, !tbaa !286
  %i.f = icmp eq i32 %i.b, %3
  %i.g = icmp eq i32 %i.b, 1
  %spec.select.i = or i1 %i.f, %i.g
  %i.h = add i32 %i.e, -1
  %or.cond = icmp ult i32 %i.h, 21
  %or.cond164 = select i1 %spec.select.i, i1 true, i1 %or.cond
  br i1 %or.cond164, label %accept1.exit272.thread301, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp ult i32 %i.b, 32
  br i1 %i.i, label %bb.c, label %thread-pre-split

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 504
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !253
  %i.l = load i32, ptr %i.k, align 8, !tbaa !215
  %i.m = zext i32 %i.l to i64
  %i.n = getelementptr [4 x i8], ptr @context_terminators, i64 %i.m
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %i.p = shl nuw i32 1, %i.b
  %i.q = and i32 %i.o, %i.p
  %.not303 = icmp eq i32 %i.q, 0
  br i1 %.not303, label %thread-pre-split, label %accept1.exit272.thread301

thread-pre-split:                                 ; preds = %bb.b, %bb.c
  %i.r = getelementptr i8, ptr %0, i64 352        ; 3 uses
  %i.s = getelementptr i8, ptr %0, i64 360        ; 3 uses
  %i.t = getelementptr i8, ptr %0, i64 472        ; 17 uses
  %i.u = getelementptr i8, ptr %0, i64 320        ; 5 uses
  %i.v = getelementptr i8, ptr %0, i64 496        ; 3 uses
  %i.w = getelementptr i8, ptr %0, i64 328        ; 9 uses
  %i.x = getelementptr i8, ptr %0, i64 336        ; 9 uses
  %i.y = icmp eq i32 %3, 1                        ; 2 uses
  %i.z = getelementptr i8, ptr %1, i64 16         ; 13 uses
  %i.aa = getelementptr i8, ptr %0, i64 304       ; 6 uses
  %i.ab = getelementptr i8, ptr %1, i64 48
  %i.ac = add i16 %4, 1                           ; 7 uses
  %i.ad = getelementptr i8, ptr %1, i64 40
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ae = getelementptr i8, ptr %0, i64 697
  br label %accept1.exit272

accept1.exit272:                                  ; preds = %.thread298, %thread-pre-split
  %.val167 = phi i32 [ %i.b, %thread-pre-split ], [ %.val, %.thread298 ] ; 2 uses
  %.0155 = phi i1 [ false, %thread-pre-split ], [ %.1156, %.thread298 ] ; 7 uses
  %.0153 = phi i1 [ false, %thread-pre-split ], [ %.1154, %.thread298 ] ; 6 uses
  %.0147 = phi i8 [ 0, %thread-pre-split ], [ %.2149, %.thread298 ] ; 12 uses
  %.0146 = phi i1 [ false, %thread-pre-split ], [ true, %.thread298 ] ; 2 uses
  %i.af = icmp eq i32 %.val167, 1
  br i1 %i.af, label %accept1.exit272.thread301, label %bb.d

bb.d:                                             ; preds = %accept1.exit272
  br i1 %.0155, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ag = load ptr, ptr %i.r, align 8, !tbaa !166
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !76
  %i.ai = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.t, ptr noundef %i.ag, ptr noundef %i.ah, i32 noundef 4) #27 ; 0 uses
  %.pr = load i32, ptr %i.a, align 8, !tbaa !170
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aj = phi i32 [ %.pr, %bb.e ], [ %.val167, %bb.d ]
  switch i32 %i.aj, label %bb.bv [
    i32 160, label %bb.g
    i32 111, label %bb.g
    i32 152, label %bb.r
    i32 159, label %bb.ai
    i32 155, label %bb.bb
  ]

bb.g:                                             ; preds = %bb.f, %bb.f
  %i.ak = trunc nuw i8 %.0147 to i1
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.r, align 8, !tbaa !166
  %i.am = load ptr, ptr %i.s, align 8, !tbaa !76
  %i.an = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.t, ptr noundef %i.al, ptr noundef %i.am, i32 noundef 5) #27 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ao = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 10 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.j, label %pm_keyword_hash_node_create.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.ar = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.aq, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_keyword_hash_node_create.exit:                 ; preds = %bb.i
  %i.as = load i32, ptr %0, align 8, !tbaa !109
  %i.at = add i32 %i.as, 1                        ; 2 uses
  store i32 %i.at, ptr %0, align 8, !tbaa !109
  store i16 90, ptr %i.ao, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i16 4, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 %i.at, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %5, i8 0, i64 128, i1 false)
  %i.au = call fastcc zeroext i1 @parse_assocs(ptr noundef nonnull %0, ptr noundef %5, ptr noundef %i.ao, i16 noundef zeroext %i.ac)
  %i.av = load ptr, ptr %i.z, align 8, !tbaa !312 ; 2 uses
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %bb.k, label %bb.m

bb.k:                                             ; preds = %pm_keyword_hash_node_create.exit
  %i.ax = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 7 uses
  %i.ay = icmp eq ptr %i.ax, null
  br i1 %i.ay, label %bb.l, label %pm_arguments_node_create.exit.i

bb.l:                                             ; preds = %bb.k
  %i.az = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.ba = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.az, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_arguments_node_create.exit.i:                  ; preds = %bb.k
  %i.bb = load i32, ptr %0, align 8, !tbaa !109
  %i.bc = add i32 %i.bb, 1                        ; 2 uses
  store i32 %i.bc, ptr %0, align 8, !tbaa !109
  %i.bd = load ptr, ptr %i.aa, align 8, !tbaa !74 ; 2 uses
  store i16 5, ptr %i.ax, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  store i32 %i.bc, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.bd, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %i.bd, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !14
  store ptr %i.ax, ptr %i.z, align 8, !tbaa !312
  br label %bb.m

bb.m:                                             ; preds = %pm_arguments_node_create.exit.i, %pm_keyword_hash_node_create.exit
  %i.be = phi ptr [ %i.ax, %pm_arguments_node_create.exit.i ], [ %i.av, %pm_keyword_hash_node_create.exit ] ; 4 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 24     ; 2 uses
  %.val.i.i = load i64, ptr %i.bf, align 8, !tbaa !111
  %i.bg = icmp eq i64 %.val.i.i, 0
  br i1 %i.bg, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr i8, ptr %i.ao, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !133
  %i.bj = getelementptr i8, ptr %i.be, i64 8
  store ptr %i.bi, ptr %i.bj, align 8, !tbaa !113
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.bk = getelementptr i8, ptr %i.be, i64 16     ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !114
  %i.bm = getelementptr i8, ptr %i.ao, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !134 ; 2 uses
  %i.bo = icmp ult ptr %i.bl, %i.bn
  br i1 %i.bo, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.bn, ptr %i.bk, align 8, !tbaa !114
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @pm_node_list_append(ptr noundef nonnull %i.bf, ptr noundef nonnull %i.ao) #27
  %i.bp = load i16, ptr %i.ao, align 8, !tbaa !115
  %i.bq = icmp eq i16 %i.bp, 139
  br i1 %i.bq, label %.sink.split.i.i, label %parse_arguments_append.exit

.sink.split.i.i:                                  ; preds = %bb.q
  %i.br = getelementptr i8, ptr %i.be, i64 2      ; 2 uses
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !116 ; 2 uses
  %i.bt = and i16 %i.bs, 32
  %..i.i = add nuw nsw i16 %i.bt, 32
  %i.bu = or i16 %..i.i, %i.bs
  store i16 %i.bu, ptr %i.br, align 2, !tbaa !116
  br label %parse_arguments_append.exit

parse_arguments_append.exit:                      ; preds = %bb.q, %.sink.split.i.i
  %spec.select = select i1 %i.au, i16 24, i16 8
  %i.bv = load ptr, ptr %i.z, align 8, !tbaa !312
  %i.bw = getelementptr i8, ptr %i.bv, i64 2      ; 2 uses
  %i.bx = load i16, ptr %i.bw, align 2, !tbaa !116
  %i.by = or i16 %i.bx, %spec.select
  store i16 %i.by, ptr %i.bw, align 2, !tbaa !116
  call void @pm_static_literals_free(ptr noundef nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %parse_arguments_append.exit233thread-pre-split

bb.r:                                             ; preds = %bb.f
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.3291.0.copyload = load ptr, ptr %i.w, align 8, !tbaa !14 ; 4 uses
  %.sroa.5292.0.copyload = load ptr, ptr %i.x, align 8, !tbaa !14 ; 3 uses
  %i.bz = load i32, ptr %i.a, align 8, !tbaa !170
  %i.ca = call fastcc zeroext i1 @token_begins_expression_p(i32 noundef %i.bz)
  br i1 %i.ca, label %bb.s, label %.outer.i.i

bb.s:                                             ; preds = %bb.r
  %i.cb = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 14, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 89, i16 noundef zeroext %i.ac), !inline_history !297 ; 3 uses
  %i.cc = call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.cb) ; 3 uses
  %.not.i273 = icmp eq ptr %i.cc, null
  br i1 %.not.i273, label %pm_assert_value_expression.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cd = getelementptr i8, ptr %i.cc, i64 8
  %.val.i274 = load ptr, ptr %i.cd, align 8, !tbaa !133
  %i.ce = getelementptr i8, ptr %i.cc, i64 16
  %.val5.i = load ptr, ptr %i.ce, align 8, !tbaa !134
  %i.cf = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.t, ptr noundef %.val.i274, ptr noundef %.val5.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

.outer.i.i:                                       ; preds = %bb.r, %bb.w
  %.08.in.ph.i.i = phi ptr [ %.08.i.i, %bb.w ], [ %i.v, %bb.r ]
  %cond.i = phi i1 [ true, %bb.w ], [ false, %bb.r ]
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge.i.i, %.outer.i.i
  %.08.in.i.i = phi ptr [ %.08.i.i, %._crit_edge.i.i ], [ %.08.in.ph.i.i, %.outer.i.i ]
  %.08.i.i = load ptr, ptr %.08.in.i.i, align 8, !tbaa !66 ; 5 uses
  %.not.i.i = icmp eq ptr %.08.i.i, null
  br i1 %.not.i.i, label %.sink.split.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cg = getelementptr i8, ptr %.08.i.i, i64 48
  %i.ch = load i8, ptr %i.cg, align 8, !tbaa !70
  %i.ci = and i8 %i.ch, 4
  %.not10.i.i = icmp eq i8 %i.ci, 0
  %.phi.trans.insert.i.i = getelementptr i8, ptr %.08.i.i, i64 50
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 2, !tbaa !188, !range !45
  %i.cj = trunc nuw i8 %.pre.i.i to i1            ; 2 uses
  br i1 %.not10.i.i, label %._crit_edge.i.i, label %bb.w

._crit_edge.i.i:                                  ; preds = %bb.v
  br i1 %i.cj, label %.sink.split.i, label %bb.u, !llvm.loop !296

bb.w:                                             ; preds = %bb.v
  br i1 %i.cj, label %pm_parser_scope_forwarding_param_check.exit.i, label %.outer.i.i, !llvm.loop !296

pm_parser_scope_forwarding_param_check.exit.i:    ; preds = %bb.w
  br i1 %cond.i, label %.sink.split.i, label %pm_assert_value_expression.exit

.sink.split.i:                                    ; preds = %._crit_edge.i.i, %bb.u, %pm_parser_scope_forwarding_param_check.exit.i
  %.sink8.i = phi i32 [ 8, %pm_parser_scope_forwarding_param_check.exit.i ], [ 16, %bb.u ], [ 16, %._crit_edge.i.i ]
  %i.ck = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.t, ptr noundef %.sroa.3291.0.copyload, ptr noundef %.sroa.5292.0.copyload, i32 noundef %.sink8.i) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

pm_assert_value_expression.exit:                  ; preds = %.sink.split.i, %pm_parser_scope_forwarding_param_check.exit.i, %bb.t, %bb.s
  %.0160 = phi ptr [ %i.cb, %bb.t ], [ %i.cb, %bb.s ], [ null, %pm_parser_scope_forwarding_param_check.exit.i ], [ null, %.sink.split.i ] ; 3 uses
  %i.cl = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 13 uses
  %i.cm = icmp eq ptr %i.cl, null
  br i1 %i.cm, label %bb.x, label %pm_block_argument_node_create.exit

bb.x:                                             ; preds = %pm_assert_value_expression.exit
  %i.cn = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.co = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.cn, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_block_argument_node_create.exit:               ; preds = %pm_assert_value_expression.exit
  %i.cp = icmp eq ptr %.0160, null
  %storemerge.in.i = load i32, ptr %0, align 8, !tbaa !109
  %storemerge.i = add i32 %storemerge.in.i, 1     ; 2 uses
  store i32 %storemerge.i, ptr %0, align 8, !tbaa !109
  br i1 %i.cp, label %pm_block_argument_node_create.exit.cont, label %pm_block_argument_node_create.exit.else

pm_block_argument_node_create.exit.else:          ; preds = %pm_block_argument_node_create.exit
  %.0160.sroa.gep = getelementptr i8, ptr %.0160, i64 16
  %.sroa.9.0.i.else.val = load ptr, ptr %.0160.sroa.gep, align 8, !tbaa !14
  br label %pm_block_argument_node_create.exit.cont

pm_block_argument_node_create.exit.cont:          ; preds = %pm_block_argument_node_create.exit, %pm_block_argument_node_create.exit.else
  %i.cq = phi ptr [ %.sroa.5292.0.copyload, %pm_block_argument_node_create.exit ], [ %.sroa.9.0.i.else.val, %pm_block_argument_node_create.exit.else ] ; 3 uses
  store i16 12, ptr %i.cl, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 4
  store i32 %storemerge.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr %.sroa.3291.0.copyload, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store ptr %i.cq, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %.0160, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !105
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store ptr %.sroa.3291.0.copyload, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 40
  store ptr %.sroa.5292.0.copyload, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !14
  br i1 %.0153, label %bb.y, label %bb.ag

bb.y:                                             ; preds = %pm_block_argument_node_create.exit.cont
  %i.cr = load ptr, ptr %i.z, align 8, !tbaa !312 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, null
  br i1 %i.cs, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ct = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 7 uses
  %i.cu = icmp eq ptr %i.ct, null
  br i1 %i.cu, label %bb.aa, label %pm_arguments_node_create.exit.i180

bb.aa:                                            ; preds = %bb.z
  %i.cv = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.cw = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.cv, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_arguments_node_create.exit.i180:               ; preds = %bb.z
  %i.cx = load i32, ptr %0, align 8, !tbaa !109
  %i.cy = add i32 %i.cx, 1                        ; 2 uses
  store i32 %i.cy, ptr %0, align 8, !tbaa !109
  %i.cz = load ptr, ptr %i.aa, align 8, !tbaa !74 ; 2 uses
  store i16 5, ptr %i.ct, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i.i181 = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  store i32 %i.cy, ptr %.sroa.3.0..sroa_idx.i.i181, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i.i182 = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  store ptr %i.cz, ptr %.sroa.4.0..sroa_idx.i.i182, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i.i183 = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store ptr %i.cz, ptr %.sroa.5.0..sroa_idx.i.i183, align 8, !tbaa !14
  store ptr %i.ct, ptr %i.z, align 8, !tbaa !312
  br label %bb.ab

bb.ab:                                            ; preds = %pm_arguments_node_create.exit.i180, %bb.y
  %i.da = phi ptr [ %i.ct, %pm_arguments_node_create.exit.i180 ], [ %i.cr, %bb.y ] ; 4 uses
  %i.db = getelementptr i8, ptr %i.da, i64 24     ; 2 uses
  %.val.i.i177 = load i64, ptr %i.db, align 8, !tbaa !111
  %i.dc = icmp eq i64 %.val.i.i177, 0
  br i1 %i.dc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dd = getelementptr i8, ptr %i.da, i64 8
  store ptr %.sroa.3291.0.copyload, ptr %i.dd, align 8, !tbaa !113
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.de = getelementptr i8, ptr %i.da, i64 16     ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !114
  %i.dg = icmp ult ptr %i.df, %i.cq
  br i1 %i.dg, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.cq, ptr %i.de, align 8, !tbaa !114
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  call void @pm_node_list_append(ptr noundef nonnull %i.db, ptr noundef nonnull %i.cl) #27
  %i.dh = load i16, ptr %i.cl, align 8, !tbaa !115
  %i.di = icmp eq i16 %i.dh, 139
  br i1 %i.di, label %.sink.split.i.i178, label %parse_arguments_append.exit184

.sink.split.i.i178:                               ; preds = %bb.af
  %i.dj = getelementptr i8, ptr %i.da, i64 2      ; 2 uses
  %i.dk = load i16, ptr %i.dj, align 2, !tbaa !116 ; 2 uses
  %i.dl = and i16 %i.dk, 32
  %..i.i179 = add nuw nsw i16 %i.dl, 32
  %i.dm = or i16 %..i.i179, %i.dk
  store i16 %i.dm, ptr %i.dj, align 2, !tbaa !116
  br label %parse_arguments_append.exit184

bb.ag:                                            ; preds = %pm_block_argument_node_create.exit.cont
  store ptr %i.cl, ptr %i.ad, align 8, !tbaa !314
  br label %parse_arguments_append.exit184

parse_arguments_append.exit184:                   ; preds = %.sink.split.i.i178, %bb.af, %bb.ag
  %.val166 = load i32, ptr %i.a, align 8, !tbaa !170
  %i.dn = icmp eq i32 %.val166, 3
  br i1 %i.dn, label %bb.ah, label %parse_arguments_append.exit233thread-pre-split

bb.ah:                                            ; preds = %parse_arguments_append.exit184
  %i.do = load ptr, ptr %i.r, align 8, !tbaa !166
  %i.dp = load ptr, ptr %i.s, align 8, !tbaa !76
  %i.dq = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.t, ptr noundef %i.do, ptr noundef %i.dp, i32 noundef 3) #27 ; 0 uses
  br label %parse_arguments_append.exit233thread-pre-split

bb.ai:                                            ; preds = %bb.f
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.3.0.copyload = load ptr, ptr %i.w, align 8, !tbaa !14 ; 6 uses
  %.sroa.7.0.copyload = load ptr, ptr %i.x, align 8, !tbaa !14 ; 5 uses
  %.val176 = load i32, ptr %i.a, align 8, !tbaa !170
  switch i32 %.val176, label %bb.ao [
    i32 33, label %.outer.i.i186.preheader
    i32 17, label %.outer.i.i186.preheader
    i32 15, label %.outer.i.i186.preheader
    i32 3, label %.outer.i.i186.preheader
  ]

.outer.i.i186.preheader:                          ; preds = %bb.ai, %bb.ai, %bb.ai, %bb.ai
  br label %.outer.i.i186

.outer.i.i186:                                    ; preds = %.outer.i.i186.preheader, %bb.al
  %.08.in.ph.i.i187 = phi ptr [ %.08.i.i190, %bb.al ], [ %i.v, %.outer.i.i186.preheader ]
  %cond.i188 = phi i1 [ true, %bb.al ], [ false, %.outer.i.i186.preheader ]
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge.i.i196, %.outer.i.i186
  %.08.in.i.i189 = phi ptr [ %.08.i.i190, %._crit_edge.i.i196 ], [ %.08.in.ph.i.i187, %.outer.i.i186 ]
  %.08.i.i190 = load ptr, ptr %.08.in.i.i189, align 8, !tbaa !66 ; 5 uses
  %.not.i.i191 = icmp eq ptr %.08.i.i190, null
  br i1 %.not.i.i191, label %.sink.split.i194, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dr = getelementptr i8, ptr %.08.i.i190, i64 48
  %i.ds = load i8, ptr %i.dr, align 8, !tbaa !70
  %i.dt = and i8 %i.ds, 1
  %.not10.i.i192 = icmp eq i8 %i.dt, 0
  %.phi.trans.insert.i.i197 = getelementptr i8, ptr %.08.i.i190, i64 50
  %.pre.i.i198 = load i8, ptr %.phi.trans.insert.i.i197, align 2, !tbaa !188, !range !45
  %i.du = trunc nuw i8 %.pre.i.i198 to i1         ; 2 uses
  br i1 %.not10.i.i192, label %._crit_edge.i.i196, label %bb.al

._crit_edge.i.i196:                               ; preds = %bb.ak
  br i1 %i.du, label %.sink.split.i194, label %bb.aj, !llvm.loop !296

bb.al:                                            ; preds = %bb.ak
  br i1 %i.du, label %pm_parser_scope_forwarding_param_check.exit.i193, label %.outer.i.i186, !llvm.loop !296

pm_parser_scope_forwarding_param_check.exit.i193: ; preds = %bb.al
  br i1 %cond.i188, label %.sink.split.i194, label %pm_parser_scope_forwarding_positionals_check.exit

.sink.split.i194:                                 ; preds = %._crit_edge.i.i196, %bb.aj, %pm_parser_scope_forwarding_param_check.exit.i193
  %.sink8.i195 = phi i32 [ 9, %pm_parser_scope_forwarding_param_check.exit.i193 ], [ 20, %bb.aj ], [ 20, %._crit_edge.i.i196 ]
  %i.dv = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.t, ptr noundef %.sroa.3.0.copyload, ptr noundef %.sroa.7.0.copyload, i32 noundef %.sink8.i195) #27 ; 0 uses
  br label %pm_parser_scope_forwarding_positionals_check.exit

pm_parser_scope_forwarding_positionals_check.exit: ; preds = %pm_parser_scope_forwarding_param_check.exit.i193, %.sink.split.i194
  %i.dw = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 10 uses
  %i.dx = icmp eq ptr %i.dw, null
  br i1 %i.dx, label %bb.am, label %pm_splat_node_create.exit

bb.am:                                            ; preds = %pm_parser_scope_forwarding_positionals_check.exit
  %i.dy = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.dz = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.dy, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_splat_node_create.exit:                        ; preds = %pm_parser_scope_forwarding_positionals_check.exit
  %storemerge.in.i200 = load i32, ptr %0, align 8, !tbaa !109
  %storemerge.i201 = add i32 %storemerge.in.i200, 1 ; 2 uses
  store i32 %storemerge.i201, ptr %0, align 8, !tbaa !109
  store i16 139, ptr %i.dw, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i206 = getelementptr inbounds nuw i8, ptr %i.dw, i64 4
  store i32 %storemerge.i201, ptr %.sroa.5.0..sroa_idx.i206, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx.i207 = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  store ptr %.sroa.3.0.copyload, ptr %.sroa.7.0..sroa_idx.i207, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i208 = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store ptr %.sroa.7.0.copyload, ptr %.sroa.9.0..sroa_idx.i208, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i209 = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store ptr %.sroa.3.0.copyload, ptr %.sroa.11.0..sroa_idx.i209, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i210 = getelementptr inbounds nuw i8, ptr %i.dw, i64 32
  store ptr %.sroa.7.0.copyload, ptr %.sroa.12.0..sroa_idx.i210, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx.i211 = getelementptr inbounds nuw i8, ptr %i.dw, i64 40
  store ptr null, ptr %.sroa.13.0..sroa_idx.i211, align 8, !tbaa !105
  %i.ea = trunc nuw i8 %.0147 to i1
  br i1 %i.ea, label %bb.an, label %bb.at

bb.an:                                            ; preds = %pm_splat_node_create.exit
  %i.eb = load ptr, ptr %i.w, align 8, !tbaa !256
  %i.ec = load ptr, ptr %i.x, align 8, !tbaa !255
  %i.ed = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.t, ptr noundef %i.eb, ptr noundef %i.ec, i32 noundef 22) #27 ; 0 uses
  br label %bb.at

bb.ao:                                            ; preds = %bb.ai
  %i.ee = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 14, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 99, i16 noundef zeroext %i.ac), !inline_history !297 ; 5 uses
  %i.ef = call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.ee) ; 3 uses
  %.not.i275 = icmp eq ptr %i.ef, null
  br i1 %.not.i275, label %pm_assert_value_expression.exit278, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.eg = getelementptr i8, ptr %i.ef, i64 8
  %.val.i276 = load ptr, ptr %i.eg, align 8, !tbaa !133
  %i.eh = getelementptr i8, ptr %i.ef, i64 16
  %.val5.i277 = load ptr, ptr %i.eh, align 8, !tbaa !134
  %i.ei = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.t, ptr noundef %.val.i276, ptr noundef %.val5.i277, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit278

pm_assert_value_expression.exit278:               ; preds = %bb.ao, %bb.ap
  %i.ej = trunc nuw i8 %.0147 to i1
  br i1 %i.ej, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %pm_assert_value_expression.exit278
  %i.ek = getelementptr i8, ptr %i.ee, i64 16
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !134
  %i.em = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.t, ptr noundef %.sroa.3.0.copyload, ptr noundef %i.el, i32 noundef 22) #27 ; 0 uses
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %pm_assert_value_expression.exit278
  %i.en = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 9 uses
  %i.eo = icmp eq ptr %i.en, null
  br i1 %i.eo, label %bb.as, label %pm_splat_node_create.exit225

bb.as:                                            ; preds = %bb.ar
  %i.ep = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.eq = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ep, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_splat_node_create.exit225:                     ; preds = %bb.ar
  %i.er = icmp eq ptr %i.ee, null
  %storemerge.in.i213 = load i32, ptr %0, align 8, !tbaa !109
  %storemerge.i214 = add i32 %storemerge.in.i213, 1 ; 2 uses
  store i32 %storemerge.i214, ptr %0, align 8, !tbaa !109
  br i1 %i.er, label %pm_splat_node_create.exit225.cont, label %pm_splat_node_create.exit225.else

pm_splat_node_create.exit225.else:                ; preds = %pm_splat_node_create.exit225
  %.sroa.gep287 = getelementptr i8, ptr %i.ee, i64 16
  %.sroa.9.0.i218.else.val = load ptr, ptr %.sroa.gep287, align 8, !tbaa !14
  br label %pm_splat_node_create.exit225.cont

pm_splat_node_create.exit225.cont:                ; preds = %pm_splat_node_create.exit225, %pm_splat_node_create.exit225.else
  %.sroa.9.0.i218 = phi ptr [ %.sroa.7.0.copyload, %pm_splat_node_create.exit225 ], [ %.sroa.9.0.i218.else.val, %pm_splat_node_create.exit225.else ]
  store i16 139, ptr %i.en, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i219 = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i32 %storemerge.i214, ptr %.sroa.5.0..sroa_idx.i219, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx.i220 = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %.sroa.3.0.copyload, ptr %.sroa.7.0..sroa_idx.i220, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i221 = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store ptr %.sroa.9.0.i218, ptr %.sroa.9.0..sroa_idx.i221, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i222 = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  store ptr %.sroa.3.0.copyload, ptr %.sroa.11.0..sroa_idx.i222, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i223 = getelementptr inbounds nuw i8, ptr %i.en, i64 32
  store ptr %.sroa.7.0.copyload, ptr %.sroa.12.0..sroa_idx.i223, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx.i224 = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  store ptr %i.ee, ptr %.sroa.13.0..sroa_idx.i224, align 8, !tbaa !105
  br label %bb.at

bb.at:                                            ; preds = %pm_splat_node_create.exit, %bb.an, %pm_splat_node_create.exit225.cont
  %.0157 = phi ptr [ %i.dw, %bb.an ], [ %i.dw, %pm_splat_node_create.exit ], [ %i.en, %pm_splat_node_create.exit225.cont ] ; 6 uses
  %i.es = load ptr, ptr %i.z, align 8, !tbaa !312 ; 2 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.au, label %bb.aw

bb.au:                                            ; preds = %bb.at
  %i.eu = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 7 uses
  %i.ev = icmp eq ptr %i.eu, null
  br i1 %i.ev, label %bb.av, label %pm_arguments_node_create.exit.i229

bb.av:                                            ; preds = %bb.au
  %i.ew = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.ex = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ew, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_arguments_node_create.exit.i229:               ; preds = %bb.au
  %i.ey = load i32, ptr %0, align 8, !tbaa !109
  %i.ez = add i32 %i.ey, 1                        ; 2 uses
  store i32 %i.ez, ptr %0, align 8, !tbaa !109
  %i.fa = load ptr, ptr %i.aa, align 8, !tbaa !74 ; 2 uses
  store i16 5, ptr %i.eu, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i.i230 = getelementptr inbounds nuw i8, ptr %i.eu, i64 4
  store i32 %i.ez, ptr %.sroa.3.0..sroa_idx.i.i230, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i.i231 = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  store ptr %i.fa, ptr %.sroa.4.0..sroa_idx.i.i231, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i.i232 = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  store ptr %i.fa, ptr %.sroa.5.0..sroa_idx.i.i232, align 8, !tbaa !14
  store ptr %i.eu, ptr %i.z, align 8, !tbaa !312
  br label %bb.aw

bb.aw:                                            ; preds = %pm_arguments_node_create.exit.i229, %bb.at
  %i.fb = phi ptr [ %i.eu, %pm_arguments_node_create.exit.i229 ], [ %i.es, %bb.at ] ; 4 uses
  %i.fc = getelementptr i8, ptr %i.fb, i64 24     ; 2 uses
  %.val.i.i226 = load i64, ptr %i.fc, align 8, !tbaa !111
  %i.fd = icmp eq i64 %.val.i.i226, 0
  br i1 %i.fd, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fe = getelementptr i8, ptr %.0157, i64 8
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !133
  %i.fg = getelementptr i8, ptr %i.fb, i64 8
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !113
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.fh = getelementptr i8, ptr %i.fb, i64 16     ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !114
  %i.fj = getelementptr i8, ptr %.0157, i64 16
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !134 ; 2 uses
  %i.fl = icmp ult ptr %i.fi, %i.fk
  br i1 %i.fl, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  store ptr %i.fk, ptr %i.fh, align 8, !tbaa !114
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  call void @pm_node_list_append(ptr noundef nonnull %i.fc, ptr noundef nonnull %.0157) #27
  %i.fm = load i16, ptr %.0157, align 8, !tbaa !115 ; 2 uses
  %i.fn = icmp eq i16 %i.fm, 139
  br i1 %i.fn, label %.sink.split.i.i227, label %parse_arguments_append.exit233

.sink.split.i.i227:                               ; preds = %bb.ba
  %i.fo = getelementptr i8, ptr %i.fb, i64 2      ; 2 uses
  %i.fp = load i16, ptr %i.fo, align 2, !tbaa !116 ; 2 uses
  %i.fq = and i16 %i.fp, 32
  %..i.i228 = add nuw nsw i16 %i.fq, 32
  %i.fr = or i16 %..i.i228, %i.fp
  store i16 %i.fr, ptr %i.fo, align 2, !tbaa !116
  br label %parse_arguments_append.exit233thread-pre-split

bb.bb:                                            ; preds = %bb.f
  br i1 %2, label %bb.bc, label %bb.bv

bb.bc:                                            ; preds = %bb.bb
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.fs = load i32, ptr %i.a, align 8, !tbaa !170
  %i.ft = call fastcc zeroext i1 @token_begins_expression_p(i32 noundef %i.fs)
  br i1 %i.ft, label %bb.bd, label %.outer.i.i234

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !tbaa.struct !163
  %i.fu = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 22, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 96, i16 noundef zeroext %i.ac) ; 4 uses
  %i.fv = load i16, ptr %i.fu, align 8, !tbaa !115
  %i.fw = icmp eq i16 %i.fv, 122
  br i1 %i.fw, label %bb.be, label %bb.bu

bb.be:                                            ; preds = %bb.bd
  %i.fx = getelementptr i8, ptr %i.fu, i64 40
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !509
  %i.fz = getelementptr i8, ptr %i.fu, i64 48
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !510
  %i.gb = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.t, ptr noundef %i.fy, ptr noundef %i.ga, i32 noundef 285) #27 ; 0 uses
  br label %bb.bu

.outer.i.i234:                                    ; preds = %bb.bc, %.outer.i.i234.backedge
  %.08.in.i.i236 = phi ptr [ %.08.i.i237, %.outer.i.i234.backedge ], [ %i.v, %bb.bc ]
  %.08.i.i237 = load ptr, ptr %.08.in.i.i236, align 8, !tbaa !66 ; 4 uses
  %.not.i.i238 = icmp eq ptr %.08.i.i237, null
  br i1 %.not.i.i238, label %bb.bh, label %bb.bf

bb.bf:                                            ; preds = %.outer.i.i234
  %i.gc = getelementptr i8, ptr %.08.i.i237, i64 48
  %i.gd = load i8, ptr %i.gc, align 8, !tbaa !70
  %i.ge = and i8 %i.gd, 8
  %.not10.i.i239 = icmp eq i8 %i.ge, 0
  %.phi.trans.insert.i.i242 = getelementptr i8, ptr %.08.i.i237, i64 50
  %.pre.i.i243 = load i8, ptr %.phi.trans.insert.i.i242, align 2, !tbaa !188, !range !45
  %i.gf = trunc nuw i8 %.pre.i.i243 to i1         ; 2 uses
  br i1 %.not10.i.i239, label %._crit_edge.i.i241, label %bb.bg

._crit_edge.i.i241:                               ; preds = %bb.bf
  br i1 %i.gf, label %bb.bh, label %.outer.i.i234.backedge

.outer.i.i234.backedge:                           ; preds = %._crit_edge.i.i241, %bb.bg
  br label %.outer.i.i234, !llvm.loop !296

bb.bg:                                            ; preds = %bb.bf
  br i1 %i.gf, label %pm_parser_scope_forwarding_all_check.exit, label %.outer.i.i234.backedge

bb.bh:                                            ; preds = %._crit_edge.i.i241, %.outer.i.i234
  %.val.i = load ptr, ptr %i.w, align 8, !tbaa !127
  %.val3.i = load ptr, ptr %i.x, align 8, !tbaa !128
  %i.gg = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.t, ptr noundef %.val.i, ptr noundef %.val3.i, i32 noundef 17) #27 ; 0 uses
  br label %pm_parser_scope_forwarding_all_check.exit

pm_parser_scope_forwarding_all_check.exit:        ; preds = %bb.bg, %bb.bh
  %or.cond3 = and i1 %i.y, %.0146
  br i1 %or.cond3, label %bb.bi, label %bb.bj

bb.bi:                                            ; preds = %pm_parser_scope_forwarding_all_check.exit
  %i.gh = load ptr, ptr %i.w, align 8, !tbaa !256
  %i.gi = load ptr, ptr %i.x, align 8, !tbaa !255
  %i.gj = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.t, ptr noundef %i.gh, ptr noundef %i.gi, i32 noundef 15) #27 ; 0 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %pm_parser_scope_forwarding_all_check.exit
  %i.gk = load i32, ptr %i.u, align 8, !tbaa !126
  %i.gl = icmp eq i32 %i.gk, 155
  br i1 %i.gl, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @__assert_fail(ptr noundef nonnull @.str.168, ptr noundef nonnull @.str.2, i32 noundef 4034, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_forwarding_arguments_node_create) #26
  unreachable

bb.bl:                                            ; preds = %bb.bj
  %i.gm = call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #30 ; 8 uses
  %i.gn = icmp eq ptr %i.gm, null
  br i1 %i.gn, label %bb.bm, label %pm_forwarding_arguments_node_create.exit

bb.bm:                                            ; preds = %bb.bl
  %i.go = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.gp = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.go, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 24) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_forwarding_arguments_node_create.exit:         ; preds = %bb.bl
  %i.gq = load i32, ptr %0, align 8, !tbaa !109
  %i.gr = add i32 %i.gq, 1                        ; 2 uses
  store i32 %i.gr, ptr %0, align 8, !tbaa !109
  %i.gs = load ptr, ptr %i.w, align 8, !tbaa !127 ; 2 uses
  %i.gt = load ptr, ptr %i.x, align 8, !tbaa !128 ; 3 uses
  store i16 56, ptr %i.gm, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i244 = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  store i32 %i.gr, ptr %.sroa.3.0..sroa_idx.i244, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  store ptr %i.gs, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i245 = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  store ptr %i.gt, ptr %.sroa.5.0..sroa_idx.i245, align 8, !tbaa !14
  %i.gu = load ptr, ptr %i.z, align 8, !tbaa !312 ; 2 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.bn, label %bb.bp

bb.bn:                                            ; preds = %pm_forwarding_arguments_node_create.exit
  %i.gw = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 7 uses
  %i.gx = icmp eq ptr %i.gw, null
  br i1 %i.gx, label %bb.bo, label %pm_arguments_node_create.exit.i249

bb.bo:                                            ; preds = %bb.bn
  %i.gy = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.gz = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.gy, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_arguments_node_create.exit.i249:               ; preds = %bb.bn
  %i.ha = load i32, ptr %0, align 8, !tbaa !109
  %i.hb = add i32 %i.ha, 1                        ; 2 uses
  store i32 %i.hb, ptr %0, align 8, !tbaa !109
  %i.hc = load ptr, ptr %i.aa, align 8, !tbaa !74 ; 2 uses
  store i16 5, ptr %i.gw, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i.i250 = getelementptr inbounds nuw i8, ptr %i.gw, i64 4
  store i32 %i.hb, ptr %.sroa.3.0..sroa_idx.i.i250, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i.i251 = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store ptr %i.hc, ptr %.sroa.4.0..sroa_idx.i.i251, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i.i252 = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  store ptr %i.hc, ptr %.sroa.5.0..sroa_idx.i.i252, align 8, !tbaa !14
  store ptr %i.gw, ptr %i.z, align 8, !tbaa !312
  br label %bb.bp

bb.bp:                                            ; preds = %pm_arguments_node_create.exit.i249, %pm_forwarding_arguments_node_create.exit
  %i.hd = phi ptr [ %i.gw, %pm_arguments_node_create.exit.i249 ], [ %i.gu, %pm_forwarding_arguments_node_create.exit ] ; 4 uses
  %i.he = getelementptr i8, ptr %i.hd, i64 24     ; 2 uses
  %.val.i.i246 = load i64, ptr %i.he, align 8, !tbaa !111
  %i.hf = icmp eq i64 %.val.i.i246, 0
  br i1 %i.hf, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.hg = getelementptr i8, ptr %i.hd, i64 8
  store ptr %i.gs, ptr %i.hg, align 8, !tbaa !113
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bp
  %i.hh = getelementptr i8, ptr %i.hd, i64 16     ; 2 uses
  %i.hi = load ptr, ptr %i.hh, align 8, !tbaa !114
  %i.hj = icmp ult ptr %i.hi, %i.gt
  br i1 %i.hj, label %bb.bs, label %bb.bt

bb.bs:                                            ; preds = %bb.br
  store ptr %i.gt, ptr %i.hh, align 8, !tbaa !114
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %bb.br
  call void @pm_node_list_append(ptr noundef nonnull %i.he, ptr noundef nonnull %i.gm) #27
  %i.hk = load i16, ptr %i.gm, align 8, !tbaa !115
  %i.hl = icmp eq i16 %i.hk, 139
  br i1 %i.hl, label %.sink.split.i.i247, label %parse_arguments_append.exit253

.sink.split.i.i247:                               ; preds = %bb.bt
  %i.hm = getelementptr i8, ptr %i.hd, i64 2      ; 2 uses
  %i.hn = load i16, ptr %i.hm, align 2, !tbaa !116 ; 2 uses
  %i.ho = and i16 %i.hn, 32
  %..i.i248 = add nuw nsw i16 %i.ho, 32
  %i.hp = or i16 %..i.i248, %i.hn
  store i16 %i.hp, ptr %i.hm, align 2, !tbaa !116
  br label %parse_arguments_append.exit253

parse_arguments_append.exit253:                   ; preds = %bb.bt, %.sink.split.i.i247
  %i.hq = load ptr, ptr %i.z, align 8, !tbaa !312
  %i.hr = getelementptr i8, ptr %i.hq, i64 2      ; 2 uses
  %i.hs = load i16, ptr %i.hr, align 2, !tbaa !116
  %i.ht = or i16 %i.hs, 4
  store i16 %i.ht, ptr %i.hr, align 2, !tbaa !116
  store i8 1, ptr %i.ab, align 8, !tbaa !447
  br label %parse_arguments_append.exit233thread-pre-split

bb.bu:                                            ; preds = %bb.bd, %bb.be
  %i.hu = call fastcc ptr @pm_range_node_create(ptr noundef nonnull %0, ptr noundef null, ptr noundef %6, ptr noundef nonnull %i.fu)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  br label %pm_assert_value_expression.exit282

bb.bv:                                            ; preds = %bb.f, %bb.bb
  %i.hv = xor i1 %.0146, true
  %i.hw = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 14, i1 noundef zeroext %i.hv, i1 noundef zeroext true, i32 noundef 89, i16 noundef zeroext %i.ac), !inline_history !297 ; 3 uses
  %i.hx = call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.hw) ; 3 uses
  %.not.i279 = icmp eq ptr %i.hx, null
  br i1 %.not.i279, label %pm_assert_value_expression.exit282, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.hy = getelementptr i8, ptr %i.hx, i64 8
  %.val.i280 = load ptr, ptr %i.hy, align 8, !tbaa !133
  %i.hz = getelementptr i8, ptr %i.hx, i64 16
  %.val5.i281 = load ptr, ptr %i.hz, align 8, !tbaa !134
  %i.ia = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.t, ptr noundef %.val.i280, ptr noundef %.val5.i281, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit282

pm_assert_value_expression.exit282:               ; preds = %bb.bw, %bb.bv, %bb.bu
  %.2159 = phi ptr [ %i.hu, %bb.bu ], [ %i.hw, %bb.bv ], [ %i.hw, %bb.bw ] ; 10 uses
  %i.ib = load i16, ptr %.2159, align 8, !tbaa !115
  switch i16 %i.ib, label %.thread15.i [
    i16 143, label %bb.by
    i16 86, label %bb.bx
    i16 19, label %bb.bz
  ]

bb.bx:                                            ; preds = %pm_assert_value_expression.exit282
  br label %bb.by

bb.by:                                            ; preds = %bb.bx, %pm_assert_value_expression.exit282
  %.sink.i.i = phi i64 [ 72, %bb.bx ], [ 64, %pm_assert_value_expression.exit282 ]
  %i.ic = getelementptr i8, ptr %.2159, i64 %.sink.i.i
  %.0.i.i = load ptr, ptr %i.ic, align 8, !tbaa !14 ; 2 uses
  %.not.i.i255 = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i255, label %.thread15.i, label %pm_symbol_node_label_p.exit.i

pm_symbol_node_label_p.exit.i:                    ; preds = %bb.by
  %i.id = getelementptr i8, ptr %.0.i.i, i64 -1
  %i.ie = load i8, ptr %i.id, align 1, !tbaa !67
  %i.if = icmp eq i8 %i.ie, 58
  br i1 %i.if, label %argument_allowed_for_bare_hash.exit, label %.thread15.i

bb.bz:                                            ; preds = %pm_assert_value_expression.exit282
  %i.ig = getelementptr i8, ptr %.2159, i64 72
  %i.ih = load ptr, ptr %i.ig, align 8, !tbaa !288
  %i.ii = icmp eq ptr %i.ih, null
  br i1 %i.ii, label %bb.ca, label %.thread15.i

bb.ca:                                            ; preds = %bb.bz
  %i.ij = getelementptr i8, ptr %.2159, i64 88
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !117 ; 2 uses
  %.not.i = icmp eq ptr %i.ik, null
  br i1 %.not.i, label %.thread15.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.il = getelementptr i8, ptr %i.ik, i64 2
  %i.im = load i16, ptr %i.il, align 2, !tbaa !116
  %i.in = and i16 %i.im, 40
  %.not11.i = icmp eq i16 %i.in, 0
  br i1 %.not11.i, label %bb.cc, label %argument_allowed_for_bare_hash.exit.thread

bb.cc:                                            ; preds = %bb.cb
  %i.io = getelementptr i8, ptr %.2159, i64 128
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !289
  %.not12.i = icmp eq ptr %i.ip, null
  br i1 %.not12.i, label %.thread15.i, label %argument_allowed_for_bare_hash.exit.thread

.thread15.i:                                      ; preds = %bb.cc, %bb.ca, %bb.bz, %pm_symbol_node_label_p.exit.i, %bb.by, %pm_assert_value_expression.exit282
  %.val.i.i254 = load i32, ptr %i.a, align 8, !tbaa !170
  %i.iq = icmp eq i32 %.val.i.i254, 53
  br i1 %i.iq, label %bb.cd, label %argument_allowed_for_bare_hash.exit.thread

bb.cd:                                            ; preds = %.thread15.i
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %argument_allowed_for_bare_hash.exit

argument_allowed_for_bare_hash.exit:              ; preds = %bb.cd, %pm_symbol_node_label_p.exit.i
  %i.ir = trunc nuw i8 %.0147 to i1
  br i1 %i.ir, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %argument_allowed_for_bare_hash.exit
  %i.is = load ptr, ptr %i.w, align 8, !tbaa !256
  %i.it = load ptr, ptr %i.x, align 8, !tbaa !255
  %i.iu = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.t, ptr noundef %i.is, ptr noundef %i.it, i32 noundef 5) #27 ; 0 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %argument_allowed_for_bare_hash.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.iv = load i32, ptr %i.u, align 8, !tbaa !200
  %i.iw = icmp eq i32 %i.iv, 53
  br i1 %i.iw, label %bb.cg, label %bb.ch

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !tbaa.struct !163
  br label %bb.ci

bb.ch:                                            ; preds = %bb.cf
  %.val173 = load ptr, ptr %i.aa, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %7, align 8, !tbaa !7
  store i32 0, ptr %.sroa.4.0..sroa_idx, align 4
  store ptr %.val173, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  store ptr %.val173, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !14
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %bb.cg
  %i.ix = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 9 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %bb.cj, label %pm_keyword_hash_node_create.exit258

bb.cj:                                            ; preds = %bb.ci
  %i.iz = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.ja = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.iz, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_keyword_hash_node_create.exit258:              ; preds = %bb.ci
  %i.jb = load i32, ptr %0, align 8, !tbaa !109
  %i.jc = add i32 %i.jb, 1                        ; 2 uses
  store i32 %i.jc, ptr %0, align 8, !tbaa !109
  store i16 90, ptr %i.ix, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i256 = getelementptr inbounds nuw i8, ptr %i.ix, i64 2 ; 3 uses
  store i16 4, ptr %.sroa.2.0..sroa_idx.i256, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i257 = getelementptr inbounds nuw i8, ptr %i.ix, i64 4
  store i32 %i.jc, ptr %.sroa.3.0..sroa_idx.i257, align 4, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %8, i8 0, i64 128, i1 false)
  call fastcc void @pm_hash_key_static_literals_add(ptr noundef nonnull %0, ptr noundef %8, ptr noundef nonnull %.2159)
  %i.jd = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 14, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 136, i16 noundef zeroext %i.ac), !inline_history !297 ; 2 uses
  %i.je = call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.jd) ; 3 uses
  %.not.i283 = icmp eq ptr %i.je, null
  br i1 %.not.i283, label %pm_assert_value_expression.exit286, label %bb.ck

bb.ck:                                            ; preds = %pm_keyword_hash_node_create.exit258
  %i.jf = getelementptr i8, ptr %i.je, i64 8
  %.val.i284 = load ptr, ptr %i.jf, align 8, !tbaa !133
  %i.jg = getelementptr i8, ptr %i.je, i64 16
  %.val5.i285 = load ptr, ptr %i.jg, align 8, !tbaa !134
  %i.jh = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.t, ptr noundef %.val.i284, ptr noundef %.val5.i285, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit286

pm_assert_value_expression.exit286:               ; preds = %pm_keyword_hash_node_create.exit258, %bb.ck
  %i.ji = call fastcc ptr @pm_assoc_node_create(ptr noundef nonnull %0, ptr noundef nonnull %.2159, ptr noundef %7, ptr noundef %i.jd) ; 5 uses
  %i.jj = load i16, ptr %i.ji, align 8, !tbaa !115
  %i.jk = icmp eq i16 %i.jj, 8
  br i1 %i.jk, label %bb.cl, label %bb.cm

bb.cl:                                            ; preds = %pm_assert_value_expression.exit286
  %i.jl = getelementptr i8, ptr %i.ji, i64 24
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !129
  %i.jn = load i16, ptr %i.jm, align 8, !tbaa !115
  %i.jo = icmp eq i16 %i.jn, 143
  br i1 %i.jo, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl, %pm_assert_value_expression.exit286
  %i.jp = load i16, ptr %.sroa.2.0..sroa_idx.i256, align 2, !tbaa !116
  %i.jq = and i16 %i.jp, -5
  store i16 %i.jq, ptr %.sroa.2.0..sroa_idx.i256, align 2, !tbaa !116
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %bb.cl
  %i.jr = getelementptr i8, ptr %i.ix, i64 24
  call void @pm_node_list_append(ptr noundef %i.jr, ptr noundef nonnull %i.ji) #27
  %i.js = getelementptr i8, ptr %i.ix, i64 8      ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !131
  %i.ju = icmp eq ptr %i.jt, null
  br i1 %i.ju, label %bb.co, label %pm_keyword_hash_node_elements_append.exit

bb.co:                                            ; preds = %bb.cn
  %i.jv = getelementptr i8, ptr %i.ji, i64 8
  %i.jw = load ptr, ptr %i.jv, align 8, !tbaa !133
  store ptr %i.jw, ptr %i.js, align 8, !tbaa !131
  br label %pm_keyword_hash_node_elements_append.exit

pm_keyword_hash_node_elements_append.exit:        ; preds = %bb.cn, %bb.co
  %i.jx = getelementptr i8, ptr %i.ji, i64 16
  %i.jy = load ptr, ptr %i.jx, align 8, !tbaa !134
  %i.jz = getelementptr i8, ptr %i.ix, i64 16
  store ptr %i.jy, ptr %i.jz, align 8, !tbaa !135
  %.val.i259 = load i32, ptr %i.a, align 8, !tbaa !170
  %i.ka = icmp eq i32 %.val.i259, 3
  br i1 %i.ka, label %bb.cp, label %accept1.exit

bb.cp:                                            ; preds = %pm_keyword_hash_node_elements_append.exit
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.kb = load i32, ptr %i.a, align 8, !tbaa !170
  %i.kc = call fastcc zeroext i1 @token_begins_expression_p(i32 noundef %i.kb)
  br i1 %i.kc, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %.val168 = load i32, ptr %i.a, align 8, !tbaa !170
  switch i32 %.val168, label %accept1.exit [
    i32 160, label %bb.cr
    i32 111, label %bb.cr
  ]

bb.cr:                                            ; preds = %bb.cq, %bb.cq, %bb.cp
  %i.kd = call fastcc zeroext i1 @parse_assocs(ptr noundef nonnull %0, ptr noundef %8, ptr noundef %i.ix, i16 noundef zeroext %i.ac)
  br label %accept1.exit

accept1.exit:                                     ; preds = %bb.cq, %pm_keyword_hash_node_elements_append.exit, %bb.cr
  %.0150 = phi i1 [ %i.kd, %bb.cr ], [ false, %bb.cq ], [ false, %pm_keyword_hash_node_elements_append.exit ]
  call void @pm_static_literals_free(ptr noundef nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  br label %argument_allowed_for_bare_hash.exit.thread

argument_allowed_for_bare_hash.exit.thread:       ; preds = %bb.cc, %bb.cb, %.thread15.i, %accept1.exit
  %.1.i295 = phi i16 [ 8, %accept1.exit ], [ 0, %.thread15.i ], [ 0, %bb.cb ], [ 0, %bb.cc ] ; 2 uses
  %.3 = phi ptr [ %i.ix, %accept1.exit ], [ %.2159, %.thread15.i ], [ %.2159, %bb.cb ], [ %.2159, %bb.cc ] ; 5 uses
  %.1151 = phi i1 [ %.0150, %accept1.exit ], [ false, %.thread15.i ], [ false, %bb.cb ], [ false, %bb.cc ]
  %.1148 = phi i8 [ 1, %accept1.exit ], [ %.0147, %.thread15.i ], [ %.0147, %bb.cb ], [ %.0147, %bb.cc ]
  %i.ke = load ptr, ptr %i.z, align 8, !tbaa !312 ; 2 uses
  %i.kf = icmp eq ptr %i.ke, null
  br i1 %i.kf, label %bb.cs, label %bb.cu

bb.cs:                                            ; preds = %argument_allowed_for_bare_hash.exit.thread
  %i.kg = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 7 uses
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %bb.ct, label %pm_arguments_node_create.exit.i264

bb.ct:                                            ; preds = %bb.cs
  %i.ki = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.kj = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ki, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_arguments_node_create.exit.i264:               ; preds = %bb.cs
  %i.kk = load i32, ptr %0, align 8, !tbaa !109
  %i.kl = add i32 %i.kk, 1                        ; 2 uses
  store i32 %i.kl, ptr %0, align 8, !tbaa !109
  %i.km = load ptr, ptr %i.aa, align 8, !tbaa !74 ; 2 uses
  store i16 5, ptr %i.kg, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i.i265 = getelementptr inbounds nuw i8, ptr %i.kg, i64 4
  store i32 %i.kl, ptr %.sroa.3.0..sroa_idx.i.i265, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i.i266 = getelementptr inbounds nuw i8, ptr %i.kg, i64 8
  store ptr %i.km, ptr %.sroa.4.0..sroa_idx.i.i266, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i.i267 = getelementptr inbounds nuw i8, ptr %i.kg, i64 16
  store ptr %i.km, ptr %.sroa.5.0..sroa_idx.i.i267, align 8, !tbaa !14
  store ptr %i.kg, ptr %i.z, align 8, !tbaa !312
  br label %bb.cu

bb.cu:                                            ; preds = %pm_arguments_node_create.exit.i264, %argument_allowed_for_bare_hash.exit.thread
  %i.kn = phi ptr [ %i.kg, %pm_arguments_node_create.exit.i264 ], [ %i.ke, %argument_allowed_for_bare_hash.exit.thread ] ; 4 uses
  %i.ko = getelementptr i8, ptr %i.kn, i64 24     ; 2 uses
  %.val.i.i261 = load i64, ptr %i.ko, align 8, !tbaa !111
  %i.kp = icmp eq i64 %.val.i.i261, 0
  br i1 %i.kp, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %bb.cu
  %i.kq = getelementptr i8, ptr %.3, i64 8
  %i.kr = load ptr, ptr %i.kq, align 8, !tbaa !133
  %i.ks = getelementptr i8, ptr %i.kn, i64 8
  store ptr %i.kr, ptr %i.ks, align 8, !tbaa !113
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %bb.cu
  %i.kt = getelementptr i8, ptr %i.kn, i64 16     ; 2 uses
  %i.ku = load ptr, ptr %i.kt, align 8, !tbaa !114
  %i.kv = getelementptr i8, ptr %.3, i64 16
  %i.kw = load ptr, ptr %i.kv, align 8, !tbaa !134 ; 2 uses
  %i.kx = icmp ult ptr %i.ku, %i.kw
  br i1 %i.kx, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %bb.cw
  store ptr %i.kw, ptr %i.kt, align 8, !tbaa !114
  br label %bb.cy

bb.cy:                                            ; preds = %bb.cx, %bb.cw
  call void @pm_node_list_append(ptr noundef nonnull %i.ko, ptr noundef nonnull %.3) #27
  %i.ky = load i16, ptr %.3, align 8, !tbaa !115
  %i.kz = icmp eq i16 %i.ky, 139
  br i1 %i.kz, label %.sink.split.i.i262, label %parse_arguments_append.exit268

.sink.split.i.i262:                               ; preds = %bb.cy
  %i.la = getelementptr i8, ptr %i.kn, i64 2      ; 2 uses
  %i.lb = load i16, ptr %i.la, align 2, !tbaa !116 ; 2 uses
  %i.lc = and i16 %i.lb, 32
  %..i.i263 = add nuw nsw i16 %i.lc, 32
  %i.ld = or i16 %..i.i263, %i.lb
  store i16 %i.ld, ptr %i.la, align 2, !tbaa !116
  br label %parse_arguments_append.exit268

parse_arguments_append.exit268:                   ; preds = %bb.cy, %.sink.split.i.i262
  %i.le = or disjoint i16 %.1.i295, 16
  %.1145 = select i1 %.1151, i16 %i.le, i16 %.1.i295
  %i.lf = load ptr, ptr %i.z, align 8, !tbaa !312
  %i.lg = getelementptr i8, ptr %i.lf, i64 2      ; 2 uses
  %i.lh = load i16, ptr %i.lg, align 2, !tbaa !116
  %i.li = or i16 %i.lh, %.1145
  store i16 %i.li, ptr %i.lg, align 2, !tbaa !116
  br label %parse_arguments_append.exit233thread-pre-split

parse_arguments_append.exit233thread-pre-split:   ; preds = %parse_arguments_append.exit, %parse_arguments_append.exit253, %parse_arguments_append.exit268, %bb.ah, %parse_arguments_append.exit184, %.sink.split.i.i227
  %.4.ph = phi ptr [ %.0157, %.sink.split.i.i227 ], [ %i.cl, %bb.ah ], [ %i.cl, %parse_arguments_append.exit184 ], [ %i.gm, %parse_arguments_append.exit253 ], [ %i.ao, %parse_arguments_append.exit ], [ %.3, %parse_arguments_append.exit268 ] ; 2 uses
  %.1156.ph = phi i1 [ %.0155, %.sink.split.i.i227 ], [ %.0155, %bb.ah ], [ %.0155, %parse_arguments_append.exit184 ], [ true, %parse_arguments_append.exit253 ], [ %.0155, %parse_arguments_append.exit ], [ %.0155, %parse_arguments_append.exit268 ]
  %.1154.ph = phi i1 [ %.0153, %.sink.split.i.i227 ], [ true, %bb.ah ], [ true, %parse_arguments_append.exit184 ], [ %.0153, %parse_arguments_append.exit253 ], [ %.0153, %parse_arguments_append.exit ], [ %.0153, %parse_arguments_append.exit268 ]
  %.2149.ph = phi i8 [ %.0147, %.sink.split.i.i227 ], [ %.0147, %bb.ah ], [ %.0147, %parse_arguments_append.exit184 ], [ %.0147, %parse_arguments_append.exit253 ], [ 1, %parse_arguments_append.exit ], [ %.1148, %parse_arguments_append.exit268 ]
  %.pr296 = load i16, ptr %.4.ph, align 8, !tbaa !115
  br label %parse_arguments_append.exit233

parse_arguments_append.exit233:                   ; preds = %parse_arguments_append.exit233thread-pre-split, %bb.ba
  %i.lj = phi i16 [ %.pr296, %parse_arguments_append.exit233thread-pre-split ], [ %i.fm, %bb.ba ]
  %.4 = phi ptr [ %.4.ph, %parse_arguments_append.exit233thread-pre-split ], [ %.0157, %bb.ba ] ; 4 uses
  %.1156 = phi i1 [ %.1156.ph, %parse_arguments_append.exit233thread-pre-split ], [ %.0155, %bb.ba ]
  %.1154 = phi i1 [ %.1154.ph, %parse_arguments_append.exit233thread-pre-split ], [ %.0153, %bb.ba ]
  %.2149 = phi i8 [ %.2149.ph, %parse_arguments_append.exit233thread-pre-split ], [ %.0147, %bb.ba ] ; 2 uses
  %i.lk = icmp eq i16 %i.lj, 103
  br i1 %i.lk, label %accept1.exit272.thread301, label %bb.cz

bb.cz:                                            ; preds = %parse_arguments_append.exit233
  %i.ll = load i8, ptr %i.ae, align 1, !tbaa !254, !range !45, !noundef !46
  %i.lm = trunc nuw i8 %i.ll to i1
  br i1 %i.lm, label %accept1.exit272.thread301, label %bb.da

bb.da:                                            ; preds = %bb.cz
  br i1 %i.y, label %accept1.exit270, label %bb.db

bb.db:                                            ; preds = %bb.da
  %.val.i269 = load i32, ptr %i.a, align 8, !tbaa !170
  %i.ln = icmp eq i32 %.val.i269, 14
  br i1 %i.ln, label %bb.dc, label %accept1.exit270

bb.dc:                                            ; preds = %bb.db
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept1.exit270

accept1.exit270:                                  ; preds = %bb.dc, %bb.db, %bb.da
  %.0143 = phi i1 [ false, %bb.da ], [ false, %bb.db ], [ true, %bb.dc ]
  %i.lo = load i32, ptr %i.u, align 8, !tbaa !200
end_hunk_6
begin_hunk_7_@parse_parameters:bb.a
  %i.dv = load ptr, ptr %i.p, align 8, !tbaa !256
  %i.dw = load ptr, ptr %i.q, align 8, !tbaa !255
  %i.dx = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.r, ptr noundef %i.dv, ptr noundef %i.dw, i32 noundef 217) #27 ; 0 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  %i.dy = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  br label %pm_parameters_node_keyword_rest_set.exit

pm_parameters_node_keyword_rest_set.exit:         ; preds = %pm_forwarding_parameter_node_create.exit, %bb.x
  %i.dz = phi <2 x ptr> [ %i.dk, %pm_forwarding_parameter_node_create.exit ], [ %i.dy, %bb.x ] ; 3 uses
  %i.ea = load <2 x ptr>, ptr %i.t, align 8, !tbaa !14 ; 4 uses
  %i.eb = icmp eq <2 x ptr> %i.ea, splat (ptr null)
  %i.ec = shufflevector <2 x ptr> %i.ea, <2 x ptr> %i.dz, <2 x i32> <i32 0, i32 3>
  %i.ed = shufflevector <2 x ptr> %i.dz, <2 x ptr> %i.ea, <2 x i32> <i32 0, i32 3>
  %i.ee = icmp uge <2 x ptr> %i.ec, %i.ed
  %i.ef = select <2 x i1> %i.eb, <2 x i1> splat (i1 true), <2 x i1> %i.ee
  %i.eg = select <2 x i1> %i.ef, <2 x ptr> %i.dz, <2 x ptr> %i.ea
  store <2 x ptr> %i.eg, ptr %i.t, align 8, !tbaa !14
  store ptr %i.de, ptr %i.s, align 8, !tbaa !523
  br label %.critedge

bb.y:                                             ; preds = %.critedge245, %.critedge245, %.critedge245, %.critedge245, %.critedge245, %.critedge245
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.eh = load i32, ptr %i.l, align 8, !tbaa !200
  switch i32 %i.eh, label %bb.ad [
    i32 41, label %.sink.split
    i32 68, label %bb.z
    i32 59, label %bb.aa
    i32 37, label %bb.ab
    i32 119, label %bb.ac
  ]

bb.z:                                             ; preds = %bb.y
  br label %.sink.split

bb.aa:                                            ; preds = %bb.y
  br label %.sink.split

bb.ab:                                            ; preds = %bb.y
  br label %.sink.split

bb.ac:                                            ; preds = %bb.y
  br label %.sink.split

.sink.split:                                      ; preds = %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac
  %.sink644 = phi i32 [ 209, %bb.ac ], [ 11, %bb.ab ], [ 13, %bb.aa ], [ 14, %bb.z ], [ 12, %bb.y ]
  %i.ei = load ptr, ptr %i.p, align 8, !tbaa !256
  %i.ej = load ptr, ptr %i.q, align 8, !tbaa !255
  %i.ek = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.r, ptr noundef %i.ei, ptr noundef %i.ej, i32 noundef %.sink644) #27 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %.sink.split, %bb.y
  %i.el = load i32, ptr %i.k, align 8, !tbaa !170
  %i.em = icmp eq i32 %i.el, 50
  %. = select i1 %i.em, ptr %i.k, ptr %i.l
  %i.en = call fastcc zeroext i1 @update_parameter_state(ptr noundef nonnull %0, ptr noundef nonnull %., ptr noundef %i.a) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !163
  %i.eo = call fastcc zeroext i1 @pm_parser_parameter_name_check(ptr noundef nonnull %0, ptr noundef nonnull %10) ; 3 uses
  %.val271 = load ptr, ptr %i.ag, align 8, !tbaa !127 ; 17 uses
  %.val272 = load ptr, ptr %i.ah, align 8, !tbaa !128 ; 8 uses
  %i.ep = ptrtoint ptr %.val272 to i64
  %i.eq = ptrtoint ptr %.val271 to i64
  %i.er = sub i64 %i.ep, %i.eq                    ; 6 uses
  %i.es = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %.val271, i64 noundef %i.er) #27 ; 2 uses
  %.not.i.i294 = icmp eq i32 %i.es, 0
  br i1 %.not.i.i294, label %pm_parser_local_add_token.exit296, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.val.i.i295 = load ptr, ptr %i.n, align 8, !tbaa !59
  tail call fastcc void @pm_parser_local_add(ptr %.val.i.i295, i32 noundef %i.es, ptr noundef %.val271, ptr noundef %.val272, i32 noundef 1)
  br label %pm_parser_local_add_token.exit296

pm_parser_local_add_token.exit296:                ; preds = %bb.ad, %bb.ae
  %.val250 = load i32, ptr %i.k, align 8, !tbaa !170
  %i.et = icmp eq i32 %.val250, 50
  br i1 %i.et, label %bb.af, label %bb.be

bb.af:                                            ; preds = %pm_parser_local_add_token.exit296
  %i.eu = load <2 x ptr>, ptr %.sroa.3523.0..sroa_idx, align 8, !tbaa !14
  %i.ev = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not547 = icmp eq ptr %i.ev, null
  br i1 %.not547, label %context_push.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  store i32 23, ptr %i.ev, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ev, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 4
  %.sroa.3.0..sroa_idx.i297 = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  %i.ew = load ptr, ptr %i.y, align 8, !tbaa !253
  store ptr %i.ew, ptr %.sroa.3.0..sroa_idx.i297, align 8
  store ptr %i.ev, ptr %i.y, align 8, !tbaa !253
  br label %context_push.exit

context_push.exit:                                ; preds = %bb.af, %bb.ag
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.ex = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %.val271, i64 noundef %i.er) #27 ; 8 uses
  %i.ey = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.ez = icmp ult i32 %i.ey, 2
  br i1 %i.ez, label %bb.ah, label %bb.ao

bb.ah:                                            ; preds = %context_push.exit
  %i.fa = load ptr, ptr %i.n, align 8, !tbaa !59  ; 4 uses
  %i.fb = getelementptr i8, ptr %i.fa, i64 12
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !93 ; 2 uses
  %i.fd = icmp ult i32 %i.fc, 9
  br i1 %i.fd, label %.preheader.i.i, label %bb.ak

.preheader.i.i:                                   ; preds = %bb.ah
  %i.fe = getelementptr i8, ptr %i.fa, i64 8
  %i.ff = load i32, ptr %i.fe, align 8, !tbaa !155 ; 2 uses
  %.not58.i.i = icmp eq i32 %i.ff, 0
  br i1 %.not58.i.i, label %pm_locals_find.exit.thread.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i
  %i.fg = getelementptr i8, ptr %i.fa, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !94 ; 2 uses
  %wide.trip.count.i.i = zext i32 %i.ff to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.aj, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.aj ] ; 3 uses
  %i.fi = getelementptr [40 x i8], ptr %i.fh, i64 %indvars.iv.i.i
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !156
  %.not39.i.i = icmp eq i32 %i.fj, %i.ex
  br i1 %.not39.i.i, label %.thread.loopexit.split.loop.exit66.i.i, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %pm_locals_find.exit.thread.i, label %bb.ai, !llvm.loop !233

bb.ak:                                            ; preds = %bb.ah
  %i.fk = add i32 %i.fc, -1                       ; 2 uses
  %i.fl = lshr i32 %i.ex, 16
  %i.fm = xor i32 %i.fl, %i.ex
  %i.fn = mul i32 %i.fm, 73244475                 ; 2 uses
  %i.fo = lshr i32 %i.fn, 16
  %i.fp = xor i32 %i.fo, %i.fn
  %i.fq = mul i32 %i.fp, 73244475                 ; 2 uses
  %i.fr = lshr i32 %i.fq, 16
  %i.fs = xor i32 %i.fr, %i.fq                    ; 2 uses
  %i.ft = getelementptr i8, ptr %i.fa, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !94 ; 2 uses
  br label %bb.al

bb.al:                                            ; preds = %bb.an, %bb.ak
  %.031.i.i = phi i32 [ %i.fs, %bb.ak ], [ %i.gb, %bb.an ] ; 2 uses
  %i.fv = and i32 %.031.i.i, %i.fk                ; 2 uses
  %i.fw = zext i32 %i.fv to i64
  %i.fx = getelementptr [40 x i8], ptr %i.fu, i64 %i.fw
  %i.fy = load i32, ptr %i.fx, align 8, !tbaa !156 ; 2 uses
  %i.fz = icmp eq i32 %i.fy, 0
  br i1 %i.fz, label %pm_locals_find.exit.thread.i, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ga = icmp eq i32 %i.fy, %i.ex
  br i1 %i.ga, label %pm_locals_find.exit.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gb = add i32 %.031.i.i, 1                    ; 2 uses
  %i.gc = xor i32 %i.gb, %i.fs
  %i.gd = and i32 %i.gc, %i.fk
  %.not.i.i298 = icmp eq i32 %i.gd, 0
  br i1 %.not.i.i298, label %pm_locals_find.exit.thread.i, label %bb.al, !llvm.loop !234

.thread.loopexit.split.loop.exit66.i.i:           ; preds = %bb.ai
  %i.ge = trunc nuw i64 %indvars.iv.i.i to i32
  br label %pm_locals_find.exit.i

pm_locals_find.exit.i:                            ; preds = %bb.am, %.thread.loopexit.split.loop.exit66.i.i
  %i.gf = phi ptr [ %i.fh, %.thread.loopexit.split.loop.exit66.i.i ], [ %i.fu, %bb.am ]
  %.5.i.i = phi i32 [ %i.ge, %.thread.loopexit.split.loop.exit66.i.i ], [ %i.fv, %bb.am ] ; 2 uses
  %.not.i = icmp eq i32 %.5.i.i, -1
  br i1 %.not.i, label %pm_locals_find.exit.thread.i, label %pm_locals_reads.exit

pm_locals_find.exit.thread.i:                     ; preds = %pm_locals_find.exit.i, %.preheader.i.i, %bb.an, %bb.al, %bb.aj
  tail call void @__assert_fail(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.2, i32 noundef 950, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_locals_reads) #26
  unreachable

pm_locals_reads.exit:                             ; preds = %pm_locals_find.exit.i
  %i.gg = zext i32 %.5.i.i to i64
  %i.gh = getelementptr [40 x i8], ptr %i.gf, i64 %i.gg
  %i.gi = getelementptr i8, ptr %i.gh, i64 28
  %i.gj = load i32, ptr %i.gi, align 4, !tbaa !265
  br label %bb.ao

bb.ao:                                            ; preds = %context_push.exit, %pm_locals_reads.exit
  %i.gk = phi i32 [ %i.gj, %pm_locals_reads.exit ], [ 0, %context_push.exit ]
  br i1 %5, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.gl = load i32, ptr %i.ad, align 8, !tbaa !7
  %i.gm = shl i32 %i.gl, 1
  store i32 %i.gm, ptr %i.ad, align 8, !tbaa !7
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %bb.ao
  %i.gn = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef %1, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 211, i16 noundef zeroext %i.ae), !inline_history !297 ; 3 uses
  %i.go = tail call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.gn) ; 3 uses
  %.not.i493 = icmp eq ptr %i.go, null
  br i1 %.not.i493, label %pm_assert_value_expression.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.gp = getelementptr i8, ptr %i.go, i64 8
  %.val.i494 = load ptr, ptr %i.gp, align 8, !tbaa !133
  %i.gq = getelementptr i8, ptr %i.go, i64 16
  %.val5.i = load ptr, ptr %i.gq, align 8, !tbaa !134
  %i.gr = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.r, ptr noundef %.val.i494, ptr noundef %.val5.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

pm_assert_value_expression.exit:                  ; preds = %bb.aq, %bb.ar
  br i1 %5, label %bb.as, label %bb.at

bb.as:                                            ; preds = %pm_assert_value_expression.exit
  %i.gs = load i32, ptr %i.ad, align 8, !tbaa !7
  %i.gt = lshr i32 %i.gs, 1
  store i32 %i.gt, ptr %i.ad, align 8, !tbaa !7
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %pm_assert_value_expression.exit
  %i.gu = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 12 uses
  %i.gv = icmp eq ptr %i.gu, null
  br i1 %i.gv, label %bb.au, label %pm_optional_parameter_node_create.exit

bb.au:                                            ; preds = %bb.at
  %i.gw = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.gx = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.gw, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 72) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_optional_parameter_node_create.exit:           ; preds = %bb.at
  %i.gy = load i32, ptr %0, align 8, !tbaa !109
  %i.gz = add i32 %i.gy, 1                        ; 2 uses
  store i32 %i.gz, ptr %0, align 8, !tbaa !109
  %i.ha = getelementptr i8, ptr %i.gn, i64 16
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !134 ; 3 uses
  %i.hc = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %.val271, i64 noundef %i.er) #27
  store i16 113, ptr %i.gu, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i300 = getelementptr inbounds nuw i8, ptr %i.gu, i64 4
  store i32 %i.gz, ptr %.sroa.3.0..sroa_idx.i300, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i301 = getelementptr inbounds nuw i8, ptr %i.gu, i64 8
  store ptr %.val271, ptr %.sroa.4.0..sroa_idx.i301, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i302 = getelementptr inbounds nuw i8, ptr %i.gu, i64 16
  store ptr %i.hb, ptr %.sroa.5.0..sroa_idx.i302, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gu, i64 24
  store i32 %i.hc, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !7
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gu, i64 32
  store ptr %.val271, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i303 = getelementptr inbounds nuw i8, ptr %i.gu, i64 40
  store ptr %.val272, ptr %.sroa.9.0..sroa_idx.i303, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gu, i64 48
  store <2 x ptr> %i.eu, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.gu, i64 64
  store ptr %i.gn, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !105
  br i1 %i.eo, label %pm_node_flag_set_repeated_parameter.exit305, label %bb.av

pm_node_flag_set_repeated_parameter.exit305:      ; preds = %pm_optional_parameter_node_create.exit
  %i.hd = getelementptr i8, ptr %i.gu, i64 2      ; 2 uses
  %i.he = load i16, ptr %i.hd, align 2, !tbaa !116
  %i.hf = or i16 %i.he, 4
  store i16 %i.hf, ptr %i.hd, align 2, !tbaa !116
  br label %bb.av

bb.av:                                            ; preds = %pm_node_flag_set_repeated_parameter.exit305, %pm_optional_parameter_node_create.exit
  %i.hg = load ptr, ptr %i.t, align 8, !tbaa !524 ; 3 uses
  %i.hh = icmp eq ptr %i.hg, null
  %i.hi = icmp uge ptr %i.hg, %.val271
  %i.hj = or i1 %i.hh, %i.hi
  %storemerge.i.i306 = select i1 %i.hj, ptr %.val271, ptr %i.hg
  store ptr %storemerge.i.i306, ptr %i.t, align 8, !tbaa !524
  %i.hk = load ptr, ptr %i.u, align 8, !tbaa !525 ; 3 uses
  %i.hl = icmp eq ptr %i.hk, null
  %i.hm = icmp ule ptr %i.hk, %i.hb
  %i.hn = select i1 %i.hl, i1 true, i1 %i.hm
  %storemerge19.i.i307 = select i1 %i.hn, ptr %i.hb, ptr %i.hk
  store ptr %storemerge19.i.i307, ptr %i.u, align 8, !tbaa !525
  tail call void @pm_node_list_append(ptr noundef %i.aj, ptr noundef nonnull %i.gu) #27
  %i.ho = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.hp = icmp ult i32 %i.ho, 2
  br i1 %i.hp, label %bb.aw, label %bb.bj

bb.aw:                                            ; preds = %bb.av
  %i.hq = load ptr, ptr %i.n, align 8, !tbaa !59  ; 4 uses
  %i.hr = getelementptr i8, ptr %i.hq, i64 12
  %i.hs = load i32, ptr %i.hr, align 4, !tbaa !93 ; 2 uses
  %i.ht = icmp ult i32 %i.hs, 9
  br i1 %i.ht, label %.preheader.i.i314, label %bb.az

.preheader.i.i314:                                ; preds = %bb.aw
  %i.hu = getelementptr i8, ptr %i.hq, i64 8
  %i.hv = load i32, ptr %i.hu, align 8, !tbaa !155 ; 2 uses
  %.not58.i.i315 = icmp eq i32 %i.hv, 0
  br i1 %.not58.i.i315, label %pm_locals_find.exit.thread.i310, label %.lr.ph.i.i316

.lr.ph.i.i316:                                    ; preds = %.preheader.i.i314
  %i.hw = getelementptr i8, ptr %i.hq, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !94 ; 2 uses
  %wide.trip.count.i.i317 = zext i32 %i.hv to i64
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ay, %.lr.ph.i.i316
  %indvars.iv.i.i318 = phi i64 [ 0, %.lr.ph.i.i316 ], [ %indvars.iv.next.i.i320, %bb.ay ] ; 3 uses
  %i.hy = getelementptr [40 x i8], ptr %i.hx, i64 %indvars.iv.i.i318
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !156
  %.not39.i.i319 = icmp eq i32 %i.hz, %i.ex
  br i1 %.not39.i.i319, label %.thread.loopexit.split.loop.exit66.i.i322, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %indvars.iv.next.i.i320 = add nuw nsw i64 %indvars.iv.i.i318, 1 ; 2 uses
  %exitcond.not.i.i321 = icmp eq i64 %indvars.iv.next.i.i320, %wide.trip.count.i.i317
  br i1 %exitcond.not.i.i321, label %pm_locals_find.exit.thread.i310, label %bb.ax, !llvm.loop !233

bb.az:                                            ; preds = %bb.aw
  %i.ia = add i32 %i.hs, -1                       ; 2 uses
  %i.ib = lshr i32 %i.ex, 16
  %i.ic = xor i32 %i.ib, %i.ex
  %i.id = mul i32 %i.ic, 73244475                 ; 2 uses
  %i.ie = lshr i32 %i.id, 16
  %i.if = xor i32 %i.ie, %i.id
  %i.ig = mul i32 %i.if, 73244475                 ; 2 uses
  %i.ih = lshr i32 %i.ig, 16
  %i.ii = xor i32 %i.ih, %i.ig                    ; 2 uses
  %i.ij = getelementptr i8, ptr %i.hq, i64 16
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !94 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bc, %bb.az
  %.031.i.i308 = phi i32 [ %i.ii, %bb.az ], [ %i.ir, %bb.bc ] ; 2 uses
  %i.il = and i32 %.031.i.i308, %i.ia             ; 2 uses
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr [40 x i8], ptr %i.ik, i64 %i.im
  %i.io = load i32, ptr %i.in, align 8, !tbaa !156 ; 2 uses
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %pm_locals_find.exit.thread.i310, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.iq = icmp eq i32 %i.io, %i.ex
  br i1 %i.iq, label %pm_locals_find.exit.i311, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ir = add i32 %.031.i.i308, 1                 ; 2 uses
  %i.is = xor i32 %i.ir, %i.ii
  %i.it = and i32 %i.is, %i.ia
  %.not.i.i309 = icmp eq i32 %i.it, 0
  br i1 %.not.i.i309, label %pm_locals_find.exit.thread.i310, label %bb.ba, !llvm.loop !234

.thread.loopexit.split.loop.exit66.i.i322:        ; preds = %bb.ax
  %i.iu = trunc nuw i64 %indvars.iv.i.i318 to i32
  br label %pm_locals_find.exit.i311

pm_locals_find.exit.i311:                         ; preds = %bb.bb, %.thread.loopexit.split.loop.exit66.i.i322
  %i.iv = phi ptr [ %i.hx, %.thread.loopexit.split.loop.exit66.i.i322 ], [ %i.ik, %bb.bb ]
  %.5.i.i312 = phi i32 [ %i.iu, %.thread.loopexit.split.loop.exit66.i.i322 ], [ %i.il, %bb.bb ] ; 2 uses
  %.not.i313 = icmp eq i32 %.5.i.i312, -1
  br i1 %.not.i313, label %pm_locals_find.exit.thread.i310, label %pm_locals_reads.exit323

pm_locals_find.exit.thread.i310:                  ; preds = %pm_locals_find.exit.i311, %.preheader.i.i314, %bb.bc, %bb.ba, %bb.ay
  tail call void @__assert_fail(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.2, i32 noundef 950, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_locals_reads) #26
  unreachable

pm_locals_reads.exit323:                          ; preds = %pm_locals_find.exit.i311
  %i.iw = zext i32 %.5.i.i312 to i64
  %i.ix = getelementptr [40 x i8], ptr %i.iv, i64 %i.iw
  %i.iy = getelementptr i8, ptr %i.ix, i64 28
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !265
  %.not242 = icmp eq i32 %i.iz, %i.gk
  br i1 %.not242, label %bb.bj, label %bb.bd

bb.bd:                                            ; preds = %pm_locals_reads.exit323
  %i.ja = trunc i64 %i.er to i32
  %i.jb = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.r, ptr noundef %.val271, ptr noundef %.val272, i32 noundef 207, i32 noundef %i.ja, ptr noundef %.val271) #27 ; 0 uses
  br label %bb.bj

bb.be:                                            ; preds = %pm_parser_local_add_token.exit296
  %i.jc = load i32, ptr %i.a, align 4, !tbaa !7
  %i.jd = icmp ugt i32 %i.jc, 5
  %i.je = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 13 uses
  %i.jf = icmp eq ptr %i.je, null                 ; 2 uses
  br i1 %i.jd, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  br i1 %i.jf, label %bb.bg, label %pm_required_parameter_node_create.exit

bb.bg:                                            ; preds = %bb.bf
  %i.jg = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.jh = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.jg, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_required_parameter_node_create.exit:           ; preds = %bb.bf
  %i.ji = load i32, ptr %0, align 8, !tbaa !109
  %i.jj = add i32 %i.ji, 1                        ; 2 uses
  store i32 %i.jj, ptr %0, align 8, !tbaa !109
  %i.jk = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %.val271, i64 noundef %i.er) #27
  store i16 127, ptr %i.je, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i325 = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  store i32 %i.jj, ptr %.sroa.3.0..sroa_idx.i325, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i326 = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store ptr %.val271, ptr %.sroa.4.0..sroa_idx.i326, align 8, !tbaa !14
end_hunk_7
begin_hunk_8_@parse_parameters:bb.a
  br label %pm_parser_local_add_token.exit346

pm_parser_local_add_token.exit346:                ; preds = %bb.bt, %bb.bu
  %i.lk = load i32, ptr %i.k, align 8, !tbaa !170 ; 2 uses
  switch i32 %i.lk, label %bb.ca [
    i32 3, label %bb.bv
    i32 15, label %bb.bv
    i32 16, label %bb.bv
    i32 17, label %bb.bx
    i32 14, label %bb.bx
  ]

bb.bv:                                            ; preds = %pm_parser_local_add_token.exit346, %pm_parser_local_add_token.exit346, %pm_parser_local_add_token.exit346
  %i.ll = load ptr, ptr %i.y, align 8, !tbaa !253 ; 2 uses
  %i.lm = getelementptr i8, ptr %i.ll, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !257
  tail call void @free(ptr noundef %i.ll) #27
  store ptr %i.ln, ptr %i.y, align 8, !tbaa !253
  %i.lo = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 10 uses
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %bb.bw, label %pm_required_keyword_parameter_node_create.exit

bb.bw:                                            ; preds = %bb.bv
  %i.lq = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.lr = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.lq, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_required_keyword_parameter_node_create.exit:   ; preds = %bb.bv
  %i.ls = load i32, ptr %0, align 8, !tbaa !109
  %i.lt = add i32 %i.ls, 1                        ; 2 uses
  store i32 %i.lt, ptr %0, align 8, !tbaa !109
  %i.lu = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %i.kh, i64 noundef %i.li) #27
  store i16 126, ptr %i.lo, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i348 = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  store i32 %i.lt, ptr %.sroa.3.0..sroa_idx.i348, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i349 = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store ptr %i.kh, ptr %.sroa.4.0..sroa_idx.i349, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i350 = getelementptr inbounds nuw i8, ptr %i.lo, i64 16
  store ptr %i.ki, ptr %.sroa.5.0..sroa_idx.i350, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i351 = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  store i32 %i.lu, ptr %.sroa.6.0..sroa_idx.i351, align 8, !tbaa !7
  %.sroa.8.0..sroa_idx.i352 = getelementptr inbounds nuw i8, ptr %i.lo, i64 32
  store ptr %i.kh, ptr %.sroa.8.0..sroa_idx.i352, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i353 = getelementptr inbounds nuw i8, ptr %i.lo, i64 40
  store ptr %i.ki, ptr %.sroa.9.0..sroa_idx.i353, align 8, !tbaa !14
  br i1 %i.lf, label %.thread.sink.split, label %.thread

bb.bx:                                            ; preds = %pm_parser_local_add_token.exit346, %pm_parser_local_add_token.exit346
  %i.lv = load ptr, ptr %i.y, align 8, !tbaa !253 ; 2 uses
  %i.lw = getelementptr i8, ptr %i.lv, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !257
  tail call void @free(ptr noundef %i.lv) #27
  store ptr %i.lx, ptr %i.y, align 8, !tbaa !253
  br i1 %2, label %.thread534, label %bb.by

.thread534:                                       ; preds = %bb.bx
  store i8 0, ptr %i.x, align 1, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %.critedge245.thread

bb.by:                                            ; preds = %bb.bx
  %i.ly = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 10 uses
  %i.lz = icmp eq ptr %i.ly, null
  br i1 %i.lz, label %bb.bz, label %pm_required_keyword_parameter_node_create.exit364

bb.bz:                                            ; preds = %bb.by
  %i.ma = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.mb = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ma, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_required_keyword_parameter_node_create.exit364: ; preds = %bb.by
  %i.mc = load i32, ptr %0, align 8, !tbaa !109
  %i.md = add i32 %i.mc, 1                        ; 2 uses
  store i32 %i.md, ptr %0, align 8, !tbaa !109
  %i.me = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %i.kh, i64 noundef %i.li) #27
  store i16 126, ptr %i.ly, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i358 = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  store i32 %i.md, ptr %.sroa.3.0..sroa_idx.i358, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i359 = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  store ptr %i.kh, ptr %.sroa.4.0..sroa_idx.i359, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i360 = getelementptr inbounds nuw i8, ptr %i.ly, i64 16
  store ptr %i.ki, ptr %.sroa.5.0..sroa_idx.i360, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i361 = getelementptr inbounds nuw i8, ptr %i.ly, i64 24
  store i32 %i.me, ptr %.sroa.6.0..sroa_idx.i361, align 8, !tbaa !7
  %.sroa.8.0..sroa_idx.i362 = getelementptr inbounds nuw i8, ptr %i.ly, i64 32
  store ptr %i.kh, ptr %.sroa.8.0..sroa_idx.i362, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i363 = getelementptr inbounds nuw i8, ptr %i.ly, i64 40
  store ptr %i.ki, ptr %.sroa.9.0..sroa_idx.i363, align 8, !tbaa !14
  br i1 %i.lf, label %.thread.sink.split, label %.thread

bb.ca:                                            ; preds = %pm_parser_local_add_token.exit346
  %i.mf = tail call fastcc zeroext i1 @token_begins_expression_p(i32 noundef %i.lk)
  br i1 %i.mf, label %bb.cb, label %bb.cz

bb.cb:                                            ; preds = %bb.ca
  %i.mg = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %i.kh, i64 noundef %i.li) #27 ; 8 uses
  %i.mh = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.mi = icmp ult i32 %i.mh, 2
  br i1 %i.mi, label %bb.cc, label %bb.cj

bb.cc:                                            ; preds = %bb.cb
  %i.mj = load ptr, ptr %i.n, align 8, !tbaa !59  ; 4 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 12
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !93 ; 2 uses
  %i.mm = icmp ult i32 %i.ml, 9
  br i1 %i.mm, label %.preheader.i.i374, label %bb.cf

.preheader.i.i374:                                ; preds = %bb.cc
  %i.mn = getelementptr i8, ptr %i.mj, i64 8
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !155 ; 2 uses
  %.not58.i.i375 = icmp eq i32 %i.mo, 0
  br i1 %.not58.i.i375, label %pm_locals_find.exit.thread.i370, label %.lr.ph.i.i376

.lr.ph.i.i376:                                    ; preds = %.preheader.i.i374
  %i.mp = getelementptr i8, ptr %i.mj, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !94 ; 2 uses
  %wide.trip.count.i.i377 = zext i32 %i.mo to i64
  br label %bb.cd

bb.cd:                                            ; preds = %bb.ce, %.lr.ph.i.i376
  %indvars.iv.i.i378 = phi i64 [ 0, %.lr.ph.i.i376 ], [ %indvars.iv.next.i.i380, %bb.ce ] ; 3 uses
  %i.mr = getelementptr [40 x i8], ptr %i.mq, i64 %indvars.iv.i.i378
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !156
  %.not39.i.i379 = icmp eq i32 %i.ms, %i.mg
  br i1 %.not39.i.i379, label %.thread.loopexit.split.loop.exit66.i.i382, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %indvars.iv.next.i.i380 = add nuw nsw i64 %indvars.iv.i.i378, 1 ; 2 uses
  %exitcond.not.i.i381 = icmp eq i64 %indvars.iv.next.i.i380, %wide.trip.count.i.i377
  br i1 %exitcond.not.i.i381, label %pm_locals_find.exit.thread.i370, label %bb.cd, !llvm.loop !233

bb.cf:                                            ; preds = %bb.cc
  %i.mt = add i32 %i.ml, -1                       ; 2 uses
  %i.mu = lshr i32 %i.mg, 16
  %i.mv = xor i32 %i.mu, %i.mg
  %i.mw = mul i32 %i.mv, 73244475                 ; 2 uses
  %i.mx = lshr i32 %i.mw, 16
  %i.my = xor i32 %i.mx, %i.mw
  %i.mz = mul i32 %i.my, 73244475                 ; 2 uses
  %i.na = lshr i32 %i.mz, 16
  %i.nb = xor i32 %i.na, %i.mz                    ; 2 uses
  %i.nc = getelementptr i8, ptr %i.mj, i64 16
  %i.nd = load ptr, ptr %i.nc, align 8, !tbaa !94 ; 2 uses
  br label %bb.cg

bb.cg:                                            ; preds = %bb.ci, %bb.cf
  %.031.i.i368 = phi i32 [ %i.nb, %bb.cf ], [ %i.nk, %bb.ci ] ; 2 uses
  %i.ne = and i32 %.031.i.i368, %i.mt             ; 2 uses
  %i.nf = zext i32 %i.ne to i64
  %i.ng = getelementptr [40 x i8], ptr %i.nd, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 8, !tbaa !156 ; 2 uses
  %i.ni = icmp eq i32 %i.nh, 0
  br i1 %i.ni, label %pm_locals_find.exit.thread.i370, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nj = icmp eq i32 %i.nh, %i.mg
  br i1 %i.nj, label %pm_locals_find.exit.i371, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %i.nk = add i32 %.031.i.i368, 1                 ; 2 uses
  %i.nl = xor i32 %i.nk, %i.nb
  %i.nm = and i32 %i.nl, %i.mt
  %.not.i.i369 = icmp eq i32 %i.nm, 0
  br i1 %.not.i.i369, label %pm_locals_find.exit.thread.i370, label %bb.cg, !llvm.loop !234

.thread.loopexit.split.loop.exit66.i.i382:        ; preds = %bb.cd
  %i.nn = trunc nuw i64 %indvars.iv.i.i378 to i32
  br label %pm_locals_find.exit.i371

pm_locals_find.exit.i371:                         ; preds = %bb.ch, %.thread.loopexit.split.loop.exit66.i.i382
  %i.no = phi ptr [ %i.mq, %.thread.loopexit.split.loop.exit66.i.i382 ], [ %i.nd, %bb.ch ]
  %.5.i.i372 = phi i32 [ %i.nn, %.thread.loopexit.split.loop.exit66.i.i382 ], [ %i.ne, %bb.ch ] ; 2 uses
  %.not.i373 = icmp eq i32 %.5.i.i372, -1
  br i1 %.not.i373, label %pm_locals_find.exit.thread.i370, label %pm_locals_reads.exit383

pm_locals_find.exit.thread.i370:                  ; preds = %pm_locals_find.exit.i371, %.preheader.i.i374, %bb.ci, %bb.cg, %bb.ce
  tail call void @__assert_fail(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.2, i32 noundef 950, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_locals_reads) #26
  unreachable

pm_locals_reads.exit383:                          ; preds = %pm_locals_find.exit.i371
  %i.np = zext i32 %.5.i.i372 to i64
  %i.nq = getelementptr [40 x i8], ptr %i.no, i64 %i.np
  %i.nr = getelementptr i8, ptr %i.nq, i64 28
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !265
  br label %bb.cj

bb.cj:                                            ; preds = %bb.cb, %pm_locals_reads.exit383
  %i.nt = phi i32 [ %i.ns, %pm_locals_reads.exit383 ], [ 0, %bb.cb ]
  br i1 %5, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.nu = load i32, ptr %i.ad, align 8, !tbaa !7
  %i.nv = shl i32 %i.nu, 1
  store i32 %i.nv, ptr %i.ad, align 8, !tbaa !7
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %i.nw = tail call fastcc ptr @parse_expression(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 212, i16 noundef zeroext %i.ae), !inline_history !297 ; 3 uses
  %i.nx = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %i.nw) ; 3 uses
  %.not.i495 = icmp eq ptr %i.nx, null
  br i1 %.not.i495, label %pm_assert_value_expression.exit498, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ny = getelementptr i8, ptr %i.nx, i64 8
  %.val.i496 = load ptr, ptr %i.ny, align 8, !tbaa !133
  %i.nz = getelementptr i8, ptr %i.nx, i64 16
  %.val5.i497 = load ptr, ptr %i.nz, align 8, !tbaa !134
  %i.oa = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.r, ptr noundef %.val.i496, ptr noundef %.val5.i497, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit498

pm_assert_value_expression.exit498:               ; preds = %bb.cl, %bb.cm
  br i1 %5, label %bb.cn, label %bb.co

bb.cn:                                            ; preds = %pm_assert_value_expression.exit498
  %i.ob = load i32, ptr %i.ad, align 8, !tbaa !7
  %i.oc = lshr i32 %i.ob, 1
  store i32 %i.oc, ptr %i.ad, align 8, !tbaa !7
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %pm_assert_value_expression.exit498
  %i.od = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.oe = icmp ult i32 %i.od, 2
  br i1 %i.oe, label %bb.cp, label %bb.cx

bb.cp:                                            ; preds = %bb.co
  %i.of = load ptr, ptr %i.n, align 8, !tbaa !59  ; 4 uses
  %i.og = getelementptr i8, ptr %i.of, i64 12
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !93 ; 2 uses
  %i.oi = icmp ult i32 %i.oh, 9
  br i1 %i.oi, label %.preheader.i.i390, label %bb.cs

.preheader.i.i390:                                ; preds = %bb.cp
  %i.oj = getelementptr i8, ptr %i.of, i64 8
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !155 ; 2 uses
  %.not58.i.i391 = icmp eq i32 %i.ok, 0
  br i1 %.not58.i.i391, label %pm_locals_find.exit.thread.i386, label %.lr.ph.i.i392

.lr.ph.i.i392:                                    ; preds = %.preheader.i.i390
  %i.ol = getelementptr i8, ptr %i.of, i64 16
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !94 ; 2 uses
  %wide.trip.count.i.i393 = zext i32 %i.ok to i64
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cr, %.lr.ph.i.i392
  %indvars.iv.i.i394 = phi i64 [ 0, %.lr.ph.i.i392 ], [ %indvars.iv.next.i.i396, %bb.cr ] ; 3 uses
  %i.on = getelementptr [40 x i8], ptr %i.om, i64 %indvars.iv.i.i394
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !156
  %.not39.i.i395 = icmp eq i32 %i.oo, %i.mg
  br i1 %.not39.i.i395, label %.thread.loopexit.split.loop.exit66.i.i398, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %indvars.iv.next.i.i396 = add nuw nsw i64 %indvars.iv.i.i394, 1 ; 2 uses
  %exitcond.not.i.i397 = icmp eq i64 %indvars.iv.next.i.i396, %wide.trip.count.i.i393
  br i1 %exitcond.not.i.i397, label %pm_locals_find.exit.thread.i386, label %bb.cq, !llvm.loop !233

bb.cs:                                            ; preds = %bb.cp
  %i.op = add i32 %i.oh, -1                       ; 2 uses
  %i.oq = lshr i32 %i.mg, 16
  %i.or = xor i32 %i.oq, %i.mg
  %i.os = mul i32 %i.or, 73244475                 ; 2 uses
  %i.ot = lshr i32 %i.os, 16
  %i.ou = xor i32 %i.ot, %i.os
  %i.ov = mul i32 %i.ou, 73244475                 ; 2 uses
  %i.ow = lshr i32 %i.ov, 16
  %i.ox = xor i32 %i.ow, %i.ov                    ; 2 uses
  %i.oy = getelementptr i8, ptr %i.of, i64 16
  %i.oz = load ptr, ptr %i.oy, align 8, !tbaa !94 ; 2 uses
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cv, %bb.cs
  %.031.i.i384 = phi i32 [ %i.ox, %bb.cs ], [ %i.pg, %bb.cv ] ; 2 uses
  %i.pa = and i32 %.031.i.i384, %i.op             ; 2 uses
  %i.pb = zext i32 %i.pa to i64
  %i.pc = getelementptr [40 x i8], ptr %i.oz, i64 %i.pb
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !156 ; 2 uses
  %i.pe = icmp eq i32 %i.pd, 0
  br i1 %i.pe, label %pm_locals_find.exit.thread.i386, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.pf = icmp eq i32 %i.pd, %i.mg
  br i1 %i.pf, label %pm_locals_find.exit.i387, label %bb.cv

bb.cv:                                            ; preds = %bb.cu
  %i.pg = add i32 %.031.i.i384, 1                 ; 2 uses
  %i.ph = xor i32 %i.pg, %i.ox
  %i.pi = and i32 %i.ph, %i.op
  %.not.i.i385 = icmp eq i32 %i.pi, 0
  br i1 %.not.i.i385, label %pm_locals_find.exit.thread.i386, label %bb.ct, !llvm.loop !234

.thread.loopexit.split.loop.exit66.i.i398:        ; preds = %bb.cq
  %i.pj = trunc nuw i64 %indvars.iv.i.i394 to i32
  br label %pm_locals_find.exit.i387

pm_locals_find.exit.i387:                         ; preds = %bb.cu, %.thread.loopexit.split.loop.exit66.i.i398
  %i.pk = phi ptr [ %i.om, %.thread.loopexit.split.loop.exit66.i.i398 ], [ %i.oz, %bb.cu ]
  %.5.i.i388 = phi i32 [ %i.pj, %.thread.loopexit.split.loop.exit66.i.i398 ], [ %i.pa, %bb.cu ] ; 2 uses
  %.not.i389 = icmp eq i32 %.5.i.i388, -1
  br i1 %.not.i389, label %pm_locals_find.exit.thread.i386, label %pm_locals_reads.exit399

pm_locals_find.exit.thread.i386:                  ; preds = %pm_locals_find.exit.i387, %.preheader.i.i390, %bb.cv, %bb.ct, %bb.cr
  tail call void @__assert_fail(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.2, i32 noundef 950, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_locals_reads) #26
  unreachable

pm_locals_reads.exit399:                          ; preds = %pm_locals_find.exit.i387
  %i.pl = zext i32 %.5.i.i388 to i64
  %i.pm = getelementptr [40 x i8], ptr %i.pk, i64 %i.pl
  %i.pn = getelementptr i8, ptr %i.pm, i64 28
  %i.po = load i32, ptr %i.pn, align 4, !tbaa !265
  %.not = icmp eq i32 %i.po, %i.nt
  br i1 %.not, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %pm_locals_reads.exit399
  %i.pp = trunc i64 %i.li to i32
  %i.pq = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.r, ptr noundef %i.kh, ptr noundef %i.kj, i32 noundef 207, i32 noundef %i.pp, ptr noundef %i.kh) #27 ; 0 uses
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %pm_locals_reads.exit399, %bb.co
  %i.pr = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #30 ; 10 uses
  %i.ps = icmp eq ptr %i.pr, null
  br i1 %i.ps, label %bb.cy, label %pm_optional_keyword_parameter_node_create.exit

bb.cy:                                            ; preds = %bb.cx
  %i.pt = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.pu = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.pt, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 56) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_optional_keyword_parameter_node_create.exit:   ; preds = %bb.cx
  %i.pv = load i32, ptr %0, align 8, !tbaa !109
  %i.pw = add i32 %i.pv, 1                        ; 2 uses
  store i32 %i.pw, ptr %0, align 8, !tbaa !109
  %i.px = getelementptr i8, ptr %i.nw, i64 16
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !134
  %i.pz = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %i.kh, i64 noundef %i.li) #27
  store i16 112, ptr %i.pr, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i401 = getelementptr inbounds nuw i8, ptr %i.pr, i64 4
  store i32 %i.pw, ptr %.sroa.3.0..sroa_idx.i401, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i402 = getelementptr inbounds nuw i8, ptr %i.pr, i64 8
  store ptr %i.kh, ptr %.sroa.4.0..sroa_idx.i402, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i403 = getelementptr inbounds nuw i8, ptr %i.pr, i64 16
  store ptr %i.py, ptr %.sroa.5.0..sroa_idx.i403, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i404 = getelementptr inbounds nuw i8, ptr %i.pr, i64 24
  store i32 %i.pz, ptr %.sroa.6.0..sroa_idx.i404, align 8, !tbaa !7
  %.sroa.8.0..sroa_idx.i405 = getelementptr inbounds nuw i8, ptr %i.pr, i64 32
  store ptr %i.kh, ptr %.sroa.8.0..sroa_idx.i405, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i406 = getelementptr inbounds nuw i8, ptr %i.pr, i64 40
  store ptr %i.ki, ptr %.sroa.9.0..sroa_idx.i406, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i407 = getelementptr inbounds nuw i8, ptr %i.pr, i64 48
  store ptr %i.nw, ptr %.sroa.10.0..sroa_idx.i407, align 8, !tbaa !105
  br label %bb.db

bb.cz:                                            ; preds = %bb.ca
  %i.qa = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 9 uses
  %i.qb = icmp eq ptr %i.qa, null
  br i1 %i.qb, label %bb.da, label %pm_required_keyword_parameter_node_create.exit415

bb.da:                                            ; preds = %bb.cz
  %i.qc = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.qd = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.qc, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_required_keyword_parameter_node_create.exit415: ; preds = %bb.cz
  %i.qe = load i32, ptr %0, align 8, !tbaa !109
  %i.qf = add i32 %i.qe, 1                        ; 2 uses
  store i32 %i.qf, ptr %0, align 8, !tbaa !109
  %i.qg = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %i.kh, i64 noundef %i.li) #27
  store i16 126, ptr %i.qa, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i409 = getelementptr inbounds nuw i8, ptr %i.qa, i64 4
  store i32 %i.qf, ptr %.sroa.3.0..sroa_idx.i409, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i410 = getelementptr inbounds nuw i8, ptr %i.qa, i64 8
  store ptr %i.kh, ptr %.sroa.4.0..sroa_idx.i410, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i411 = getelementptr inbounds nuw i8, ptr %i.qa, i64 16
  store ptr %i.ki, ptr %.sroa.5.0..sroa_idx.i411, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i412 = getelementptr inbounds nuw i8, ptr %i.qa, i64 24
  store i32 %i.qg, ptr %.sroa.6.0..sroa_idx.i412, align 8, !tbaa !7
  %.sroa.8.0..sroa_idx.i413 = getelementptr inbounds nuw i8, ptr %i.qa, i64 32
  store ptr %i.kh, ptr %.sroa.8.0..sroa_idx.i413, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i414 = getelementptr inbounds nuw i8, ptr %i.qa, i64 40
  store ptr %i.ki, ptr %.sroa.9.0..sroa_idx.i414, align 8, !tbaa !14
  br label %bb.db

bb.db:                                            ; preds = %pm_required_keyword_parameter_node_create.exit415, %pm_optional_keyword_parameter_node_create.exit
  %.0239 = phi ptr [ %i.pr, %pm_optional_keyword_parameter_node_create.exit ], [ %i.qa, %pm_required_keyword_parameter_node_create.exit415 ] ; 3 uses
  br i1 %i.lf, label %pm_node_flag_set_repeated_parameter.exit416, label %bb.ee

pm_node_flag_set_repeated_parameter.exit416:      ; preds = %bb.db
  %i.qh = getelementptr i8, ptr %.0239, i64 2     ; 2 uses
  %i.qi = load i16, ptr %i.qh, align 2, !tbaa !116
  %i.qj = or i16 %i.qi, 4
  store i16 %i.qj, ptr %i.qh, align 2, !tbaa !116
  br label %bb.ee

bb.dc:                                            ; preds = %.critedge245, %.critedge245
  %i.qk = call fastcc zeroext i1 @update_parameter_state(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef %i.a) ; 0 uses
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.3.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !14 ; 5 uses
  %.sroa.5504.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !14 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
end_hunk_8
begin_hunk_9_@parse_target:bb.a
  br i1 %.not17.i.i, label %.critedge.i.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.en = load i16, ptr %i.em, align 8, !tbaa !115
  %i.eo = icmp eq i16 %i.en, 90
  br i1 %i.eo, label %bb.ax, label %bb.au

bb.ax:                                            ; preds = %bb.aw
  %i.ep = getelementptr i8, ptr %i.em, i64 8
  %.val20.i.i = load ptr, ptr %i.ep, align 8, !tbaa !133
  %i.eq = getelementptr i8, ptr %i.em, i64 16
  %.val21.i.i = load ptr, ptr %i.eq, align 8, !tbaa !134
  %i.er = getelementptr i8, ptr %0, i64 472
  %i.es = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.er, ptr noundef %.val20.i.i, ptr noundef %.val21.i.i, i32 noundef 281) #27 ; 0 uses
  br label %.critedge.i.i

.critedge.i.i:                                    ; preds = %bb.av, %bb.au, %bb.ax, %.preheader.i.i, %bb.at, %bb.as
  %.not18.i.i = icmp eq ptr %i.dz, null
  br i1 %.not18.i.i, label %pm_index_arguments_check.exitthread-pre-split.i, label %bb.ay

bb.ay:                                            ; preds = %.critedge.i.i
  %i.et = getelementptr i8, ptr %i.dz, i64 8
  %.val.i.i = load ptr, ptr %i.et, align 8, !tbaa !133
  %i.eu = getelementptr i8, ptr %i.dz, i64 16
  %.val19.i.i = load ptr, ptr %i.eu, align 8, !tbaa !134
  %i.ev = getelementptr i8, ptr %0, i64 472
  %i.ew = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ev, ptr noundef %.val.i.i, ptr noundef %.val19.i.i, i32 noundef 280) #27 ; 0 uses
  br label %pm_index_arguments_check.exitthread-pre-split.i

pm_index_arguments_check.exitthread-pre-split.i:  ; preds = %bb.ay, %.critedge.i.i
  %.pr.i = load ptr, ptr %i.dy, align 8, !tbaa !289
  br label %pm_index_arguments_check.exit.i

pm_index_arguments_check.exit.i:                  ; preds = %pm_index_arguments_check.exitthread-pre-split.i, %pm_node_alloc.exit.i
  %i.ex = phi ptr [ %.pr.i, %pm_index_arguments_check.exitthread-pre-split.i ], [ %i.dz, %pm_node_alloc.exit.i ] ; 3 uses
  %.not.i134 = icmp eq ptr %i.ex, null
  br i1 %.not.i134, label %pm_index_target_node_create.exit, label %bb.az

bb.az:                                            ; preds = %pm_index_arguments_check.exit.i
  %i.ey = load i16, ptr %i.ex, align 8, !tbaa !115
  %i.ez = icmp eq i16 %i.ey, 12
  br i1 %i.ez, label %pm_index_target_node_create.exit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  tail call void @__assert_fail(ptr noundef nonnull @.str.184, ptr noundef nonnull @.str.2, i32 noundef 3111, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_index_target_node_create) #26
  unreachable

pm_index_target_node_create.exit:                 ; preds = %pm_index_arguments_check.exit.i, %bb.az
  %i.fa = load i16, ptr %i.dp, align 2, !tbaa !116
  %i.fb = or i16 %i.fa, 16
  %i.fc = load i32, ptr %0, align 8, !tbaa !109
  %i.fd = add i32 %i.fc, 1                        ; 2 uses
  store i32 %i.fd, ptr %0, align 8, !tbaa !109
  %i.fe = getelementptr i8, ptr %1, i64 8
  %i.ff = getelementptr i8, ptr %1, i64 24
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !125
  %i.fh = getelementptr i8, ptr %1, i64 72
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fh, i64 16, i1 false)
  %i.fi = load ptr, ptr %i.dw, align 8, !tbaa !117
  %i.fj = getelementptr i8, ptr %1, i64 96
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %i.fj, i64 16, i1 false)
  store i16 75, ptr %i.ds, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 2
  store i16 %i.fb, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 4
  store i32 %i.fd, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %i.fk = load <2 x ptr>, ptr %i.fe, align 8, !tbaa !14
  store <2 x ptr> %i.fk, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  store ptr %i.fg, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !105
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 48
  store ptr %i.fi, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !511
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ds, i64 72
  store ptr %i.ex, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !536
  tail call void @free(ptr noundef nonnull %1) #27
  br label %common.ret172

bb.bb:                                            ; preds = %bb.a, %bb.ap
  %i.fl = getelementptr i8, ptr %1, i64 8
  %.val108 = load ptr, ptr %i.fl, align 8, !tbaa !133
  %i.fm = getelementptr i8, ptr %1, i64 16
  %.val109 = load ptr, ptr %i.fm, align 8, !tbaa !134
  %i.fn = getelementptr i8, ptr %0, i64 472
  %i.fo = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.fn, ptr noundef %.val108, ptr noundef %.val109, i32 noundef 294) #27 ; 0 uses
  br label %common.ret172
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_for_node_create(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr %.8.val, ptr %.16.val, ptr %.8.val1, ptr %.16.val3, ptr noundef nonnull readonly captures(none) %4, ptr noundef readonly captures(none) %5) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(112) ptr @calloc(i64 noundef 1, i64 noundef 112) #30 ; 16 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 112) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %5, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %i.i = load i32, ptr %4, align 8, !tbaa !126
  %i.j = icmp eq i32 %i.i, 164
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %pm_node_alloc.exit
  %i.k = getelementptr i8, ptr %4, i64 8
  %i.l = load <2 x ptr>, ptr %i.k, align 8, !tbaa !14
  br label %bb.d

bb.d:                                             ; preds = %pm_node_alloc.exit, %bb.c
  %i.m = phi <2 x ptr> [ %i.l, %bb.c ], [ splat (ptr null), %pm_node_alloc.exit ]
  %i.n = getelementptr i8, ptr %5, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !127
  store i16 55, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.8.val, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %2, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !105
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %3, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !136
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.8.val, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.16.val, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %.8.val1, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %.16.val3, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store <2 x ptr> %i.m, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !14
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.o, ptr %.sroa.17.0..sroa_idx, align 8, !tbaa !14
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.h, ptr %.sroa.18.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc nonnull ptr @parse_conditional(ptr noundef %0, i32 noundef range(i32 29, 53) %1, i64 noundef %2, i1 noundef zeroext %3, i16 noundef zeroext %4) unnamed_addr #8 {
bb.a:
  %5 = alloca %struct.pm_node_list, align 8       ; 5 uses
  %6 = alloca %struct.pm_token_t, align 8         ; 12 uses
  %7 = alloca %struct.pm_token_t, align 8         ; 11 uses
  %8 = alloca %struct.pm_token_t, align 8         ; 8 uses
  %9 = alloca %struct.pm_token_t, align 8         ; 4 uses
  %10 = alloca %struct.pm_token_t, align 8        ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  %i.a = getelementptr i8, ptr %0, i64 680        ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100
  store ptr %5, ptr %i.a, align 8, !tbaa !100
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  %i.c = getelementptr i8, ptr %0, i64 320        ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !163
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.d = getelementptr i8, ptr %0, i64 304        ; 2 uses
  %.val97 = load ptr, ptr %i.d, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %7, align 8, !tbaa !126, !alias.scope !538
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 4
  store i32 0, ptr %i.e, align 4, !alias.scope !538
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  store ptr %.val97, ptr %i.f, align 8, !tbaa !127, !alias.scope !538
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %.val97, ptr %i.g, align 8, !tbaa !128, !alias.scope !538
  %i.h = add i16 %4, 1                            ; 3 uses
  %i.i = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %context_push.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 44, ptr %i.i, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i134 = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i134, align 4
  %.sroa.3.0..sroa_idx.i135 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.j = getelementptr i8, ptr %0, i64 504        ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !253
  store ptr %i.k, ptr %.sroa.3.0..sroa_idx.i135, align 8
  store ptr %i.i, ptr %i.j, align 8, !tbaa !253
  br label %context_push.exit

context_push.exit:                                ; preds = %bb.a, %bb.b
  %i.l = icmp eq i32 %1, 29
  %i.m = select i1 %i.l, i32 54, i32 58
  %i.n = add i16 %4, 2                            ; 2 uses
  %i.o = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 6, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef range(i32 26, 256) %i.m, i16 noundef zeroext %i.n), !inline_history !541 ; 5 uses
  %i.p = call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.o), !inline_history !541 ; 3 uses
  %.not.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i, label %parse_value_expression.exit, label %bb.c

bb.c:                                             ; preds = %context_push.exit
  %i.q = getelementptr i8, ptr %i.p, i64 8
  %.val.i.i133 = load ptr, ptr %i.q, align 8, !tbaa !133
  %i.r = getelementptr i8, ptr %i.p, i64 16
  %.val5.i.i = load ptr, ptr %i.r, align 8, !tbaa !134
  %i.s = getelementptr i8, ptr %0, i64 472
  %i.t = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.s, ptr noundef %.val.i.i133, ptr noundef %.val5.i.i, i32 noundef 290) #27, !inline_history !541 ; 0 uses
  br label %parse_value_expression.exit

parse_value_expression.exit:                      ; preds = %context_push.exit, %bb.c
  %i.u = getelementptr i8, ptr %0, i64 344        ; 14 uses
  %.val.i130 = load i32, ptr %i.u, align 8, !tbaa !170
  switch i32 %.val.i130, label %accept1.exit.thread149 [
    i32 17, label %accept2.exit132
    i32 14, label %accept2.exit132
    i32 12, label %.critedge.i
  ]

accept2.exit132:                                  ; preds = %parse_value_expression.exit, %parse_value_expression.exit
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i129.pr = load i32, ptr %i.u, align 8, !tbaa !170
  %i.v = icmp eq i32 %.val.i129.pr, 12
  br i1 %i.v, label %.critedge.i, label %parse_predicate.exit

.critedge.i:                                      ; preds = %parse_value_expression.exit, %accept2.exit132
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !163
  br label %parse_predicate.exit

accept1.exit.thread149:                           ; preds = %parse_value_expression.exit
  %i.w = getelementptr i8, ptr %0, i64 352
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !166
  %i.y = getelementptr i8, ptr %0, i64 360
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !76
  %i.aa = getelementptr i8, ptr %0, i64 472
  %i.ab = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.aa, ptr noundef %i.x, ptr noundef %i.z, i32 noundef 55) #27 ; 0 uses
  br label %parse_predicate.exit

parse_predicate.exit:                             ; preds = %accept2.exit132, %.critedge.i, %accept1.exit.thread149
  %i.ac = getelementptr i8, ptr %0, i64 504       ; 6 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !253 ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !257
  call void @free(ptr noundef %i.ad) #27
  store ptr %i.af, ptr %i.ac, align 8, !tbaa !253
  %.val95 = load i32, ptr %i.u, align 8, !tbaa !170
  %i.ag = add i32 %.val95, -6
  %i.ah = icmp ult i32 %i.ag, 3
  br i1 %i.ah, label %accept2.exit, label %bb.d

bb.d:                                             ; preds = %parse_predicate.exit
  %i.ai = getelementptr i8, ptr %0, i64 24        ; 4 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !7
  %i.ak = shl i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8, !tbaa !7
  %i.al = call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef %1, i16 noundef zeroext %i.h) ; 2 uses
  %i.am = load i32, ptr %i.ai, align 8, !tbaa !7
  %i.an = lshr i32 %i.am, 1
  store i32 %i.an, ptr %i.ai, align 8, !tbaa !7
  %.val.i = load i32, ptr %i.u, align 8, !tbaa !170
  switch i32 %.val.i, label %accept2.exit [
    i32 17, label %bb.e
    i32 14, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept2.exit

accept2.exit:                                     ; preds = %bb.d, %parse_predicate.exit, %bb.e
  %.090 = phi ptr [ null, %parse_predicate.exit ], [ %i.al, %bb.d ], [ %i.al, %bb.e ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %.val96 = load ptr, ptr %i.d, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %8, align 8, !tbaa !126, !alias.scope !542
  %i.ao = getelementptr inbounds nuw i8, ptr %8, i64 4
  store i32 0, ptr %i.ao, align 4, !alias.scope !542
  %i.ap = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr %.val96, ptr %i.ap, align 8, !tbaa !127, !alias.scope !542
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %.val96, ptr %i.aq, align 8, !tbaa !128, !alias.scope !542
  switch i32 %1, label %bb.h [
    i32 29, label %bb.i
    i32 52, label %bb.f
  ]

bb.f:                                             ; preds = %accept2.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.as = load <2 x ptr>, ptr %i.ar, align 8
  %.val98 = load ptr, ptr %i.ar, align 8
  call fastcc void @pm_conditional_predicate(ptr noundef nonnull %0, ptr noundef %i.o, i32 noundef 0)
  %i.at = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 12 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.g, label %pm_node_alloc.exit.i

bb.g:                                             ; preds = %bb.f
  %i.av = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.aw = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.av, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_node_alloc.exit.i:                             ; preds = %bb.f
  %i.ax = icmp eq ptr %.090, null
  %i.ay = select i1 %i.ax, ptr %i.o, ptr %.090
  %i.az = load i32, ptr %0, align 8, !tbaa !109
  %i.ba = add i32 %i.az, 1                        ; 2 uses
  store i32 %i.ba, ptr %0, align 8, !tbaa !109
  %i.bb = getelementptr i8, ptr %i.ay, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !134
  %i.bd = load i32, ptr %7, align 8, !tbaa !126
  %i.be = icmp eq i32 %i.bd, 164
  store i16 146, ptr %i.at, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 2
  store i16 1, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  store i32 %i.ba, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %.val98, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.bc, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  store <2 x ptr> %i.as, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store ptr %i.o, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !105
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  %i.bf = load <2 x ptr>, ptr %i.f, align 8
  %i.bg = insertelement <2 x i1> poison, i1 %i.be, i64 0
  %i.bh = shufflevector <2 x i1> %i.bg, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bi = select <2 x i1> %i.bh, <2 x ptr> splat (ptr null), <2 x ptr> %i.bf
  store <2 x ptr> %i.bi, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  store ptr %.090, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !136
  %.val.pr = load i32, ptr %i.u, align 8, !tbaa !170
  br label %.loopexit156

bb.h:                                             ; preds = %accept2.exit
  call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 15202, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_conditional) #26
  unreachable

bb.i:                                             ; preds = %accept2.exit
  %i.bj = call fastcc ptr @pm_if_node_create(ptr noundef nonnull %0, ptr noundef %6, ptr noundef %i.o, ptr noundef %7, ptr noundef %.090, ptr noundef %8) ; 4 uses
  %.val94157 = load i32, ptr %i.u, align 8, !tbaa !170 ; 2 uses
  %i.bk = icmp eq i32 %.val94157, 7
  br i1 %i.bk, label %.lr.ph, label %.loopexit156

.lr.ph:                                           ; preds = %bb.i
  %i.bl = getelementptr i8, ptr %0, i64 360       ; 3 uses
  %i.bm = getelementptr i8, ptr %0, i64 312
  %i.bn = getelementptr i8, ptr %0, i64 448
  %i.bo = getelementptr i8, ptr %0, i64 352       ; 2 uses
  %i.bp = getelementptr i8, ptr %0, i64 472       ; 2 uses
  %i.bq = getelementptr i8, ptr %0, i64 24        ; 4 uses
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph, %accept2.exit109
  %.092158 = phi ptr [ %i.bj, %.lr.ph ], [ %i.cx, %accept2.exit109 ]
  %i.br = load ptr, ptr %i.bl, align 8, !tbaa !76
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %bb.j
  %.0.i = phi ptr [ %i.br, %bb.j ], [ %i.bv, %bb.m ] ; 3 uses
  %i.bs = load ptr, ptr %i.bm, align 8, !tbaa !78
  %i.bt = icmp ult ptr %.0.i, %i.bs
  br i1 %i.bt, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bu = load i8, ptr %.0.i, align 1, !tbaa !67  ; 2 uses
  switch i8 %i.bu, label %bb.m [
    i8 10, label %bb.n
    i8 35, label %bb.n
  ]

bb.m:                                             ; preds = %bb.l
  %i.bv = getelementptr i8, ptr %.0.i, i64 1
  %i.bw = call zeroext i1 @pm_char_is_inline_whitespace(i8 noundef zeroext %i.bu) #27
  br i1 %i.bw, label %bb.k, label %parser_end_of_line_p.exit, !llvm.loop !275

bb.n:                                             ; preds = %bb.l, %bb.l, %bb.k
  %i.bx = load ptr, ptr %i.bo, align 8, !tbaa !166 ; 3 uses
  %i.by = load ptr, ptr %i.bl, align 8, !tbaa !76 ; 2 uses
  %i.bz = ptrtoint ptr %i.by to i64
  %i.ca = ptrtoint ptr %i.bx to i64
  %i.cb = sub i64 %i.bz, %i.ca
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.bn, ptr noundef %i.bx, ptr noundef %i.by, i32 noundef 317, i32 noundef %i.cc, ptr noundef %i.bx) #27 ; 0 uses
  br label %parser_end_of_line_p.exit

parser_end_of_line_p.exit:                        ; preds = %bb.m, %bb.n
  call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %2, ptr noundef %6, i1 noundef zeroext false, i1 noundef zeroext false)
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !tbaa.struct !163
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.ce = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not155 = icmp eq ptr %i.ce, null
  br i1 %.not155, label %context_push.exit147, label %bb.o

bb.o:                                             ; preds = %parser_end_of_line_p.exit
  store i32 44, ptr %i.ce, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %i.ce, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i145, align 4
  %.sroa.3.0..sroa_idx.i146 = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cf = load ptr, ptr %i.ac, align 8, !tbaa !253
  store ptr %i.cf, ptr %.sroa.3.0..sroa_idx.i146, align 8
  store ptr %i.ce, ptr %i.ac, align 8, !tbaa !253
  br label %context_push.exit147

context_push.exit147:                             ; preds = %parser_end_of_line_p.exit, %bb.o
  %i.cg = call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 6, i1 noundef zeroext true, i1 noundef zeroext false, i32 noundef 58, i16 noundef zeroext %i.n), !inline_history !541 ; 2 uses
  %i.ch = call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.cg), !inline_history !541 ; 3 uses
  %.not.i.i141 = icmp eq ptr %i.ch, null
  br i1 %.not.i.i141, label %parse_value_expression.exit144, label %bb.p

bb.p:                                             ; preds = %context_push.exit147
  %i.ci = getelementptr i8, ptr %i.ch, i64 8
  %.val.i.i142 = load ptr, ptr %i.ci, align 8, !tbaa !133
  %i.cj = getelementptr i8, ptr %i.ch, i64 16
  %.val5.i.i143 = load ptr, ptr %i.cj, align 8, !tbaa !134
  %i.ck = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.bp, ptr noundef %.val.i.i142, ptr noundef %.val5.i.i143, i32 noundef 290) #27, !inline_history !541 ; 0 uses
  br label %parse_value_expression.exit144

parse_value_expression.exit144:                   ; preds = %context_push.exit147, %bb.p
  %.val.i138 = load i32, ptr %i.u, align 8, !tbaa !170
  switch i32 %.val.i138, label %accept1.exit137.thread154 [
    i32 17, label %accept2.exit140
    i32 14, label %accept2.exit140
    i32 12, label %.critedge.i105
  ]

accept2.exit140:                                  ; preds = %parse_value_expression.exit144, %parse_value_expression.exit144
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i136.pr = load i32, ptr %i.u, align 8, !tbaa !170
  %i.cl = icmp eq i32 %.val.i136.pr, 12
  br i1 %i.cl, label %.critedge.i105, label %parse_predicate.exit106

.critedge.i105:                                   ; preds = %parse_value_expression.exit144, %accept2.exit140
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !163
  br label %parse_predicate.exit106

accept1.exit137.thread154:                        ; preds = %parse_value_expression.exit144
  %i.cm = load ptr, ptr %i.bo, align 8, !tbaa !166
  %i.cn = load ptr, ptr %i.bl, align 8, !tbaa !76
  %i.co = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.bp, ptr noundef %i.cm, ptr noundef %i.cn, i32 noundef 55) #27 ; 0 uses
  br label %parse_predicate.exit106

parse_predicate.exit106:                          ; preds = %accept2.exit140, %.critedge.i105, %accept1.exit137.thread154
  %i.cp = load ptr, ptr %i.ac, align 8, !tbaa !253 ; 2 uses
  %i.cq = getelementptr i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !257
  call void @free(ptr noundef %i.cp) #27
  store ptr %i.cr, ptr %i.ac, align 8, !tbaa !253
  %i.cs = load i32, ptr %i.bq, align 8, !tbaa !7
  %i.ct = shl i32 %i.cs, 1
  store i32 %i.ct, ptr %i.bq, align 8, !tbaa !7
  %i.cu = call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 25, i16 noundef zeroext %i.h)
  %i.cv = load i32, ptr %i.bq, align 8, !tbaa !7
  %i.cw = lshr i32 %i.cv, 1
  store i32 %i.cw, ptr %i.bq, align 8, !tbaa !7
  %.val.i107 = load i32, ptr %i.u, align 8, !tbaa !170
  switch i32 %.val.i107, label %accept2.exit109 [
    i32 17, label %bb.q
    i32 14, label %bb.q
  ]

bb.q:                                             ; preds = %parse_predicate.exit106, %parse_predicate.exit106
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept2.exit109

accept2.exit109:                                  ; preds = %parse_predicate.exit106, %bb.q
  %i.cx = call fastcc ptr @pm_if_node_create(ptr noundef nonnull %0, ptr noundef %9, ptr noundef %i.cg, ptr noundef %7, ptr noundef %i.cu, ptr noundef %8) ; 3 uses
  %i.cy = getelementptr i8, ptr %.092158, i64 72
  store ptr %i.cx, ptr %i.cy, align 8, !tbaa !545
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  %.val94 = load i32, ptr %i.u, align 8, !tbaa !170 ; 2 uses
  %i.cz = icmp eq i32 %.val94, 7
  br i1 %i.cz, label %bb.j, label %.loopexit156, !llvm.loop !547

.loopexit156:                                     ; preds = %accept2.exit109, %bb.i, %pm_node_alloc.exit.i
  %.val = phi i32 [ %.val.pr, %pm_node_alloc.exit.i ], [ %.val94157, %bb.i ], [ %.val94, %accept2.exit109 ]
  %.091151 = phi ptr [ %i.at, %pm_node_alloc.exit.i ], [ %i.bj, %bb.i ], [ %i.bj, %accept2.exit109 ] ; 5 uses
  %.193 = phi ptr [ %i.at, %pm_node_alloc.exit.i ], [ %i.bj, %bb.i ], [ %i.cx, %accept2.exit109 ]
  %i.da = icmp eq i32 %.val, 6
  br i1 %i.da, label %bb.r, label %bb.ab

bb.r:                                             ; preds = %.loopexit156
  call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %2, ptr noundef %6, i1 noundef zeroext false, i1 noundef zeroext false)
  %i.db = getelementptr i8, ptr %0, i64 376
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !168
  %i.dd = icmp eq ptr %i.dc, null
  br i1 %i.dd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.de = getelementptr i8, ptr %0, i64 608
  %i.df = load i64, ptr %i.de, align 8, !tbaa !483
  %i.dg = add i64 %i.df, -1
  br label %token_newline_index.exit

bb.t:                                             ; preds = %bb.r
  %i.dh = getelementptr i8, ptr %0, i64 600
  %i.di = getelementptr i8, ptr %0, i64 352
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !166
  %i.dk = call i32 @pm_newline_list_line(ptr noundef %i.dh, ptr noundef %i.dj, i32 noundef 0) #27
  %i.dl = sext i32 %i.dk to i64
  br label %token_newline_index.exit

token_newline_index.exit:                         ; preds = %bb.s, %bb.t
  %.0.i110 = phi i64 [ %i.dg, %bb.s ], [ %i.dl, %bb.t ]
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !tbaa.struct !163
  %i.dm = getelementptr i8, ptr %0, i64 24        ; 4 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !7
  %i.do = shl i32 %i.dn, 1
  store i32 %i.do, ptr %i.dm, align 8, !tbaa !7
  %i.dp = call fastcc ptr @parse_statements(ptr noundef nonnull %0, i32 noundef 24, i16 noundef zeroext %i.h) ; 3 uses
  %i.dq = load i32, ptr %i.dm, align 8, !tbaa !7
  %i.dr = lshr i32 %i.dq, 1
  store i32 %i.dr, ptr %i.dm, align 8, !tbaa !7
  %.val.i111 = load i32, ptr %i.u, align 8, !tbaa !170
  switch i32 %.val.i111, label %accept2.exit113 [
    i32 17, label %bb.u
    i32 14, label %bb.u
  ]

bb.u:                                             ; preds = %token_newline_index.exit, %token_newline_index.exit
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept2.exit113

accept2.exit113:                                  ; preds = %token_newline_index.exit, %bb.u
  call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %.0.i110, ptr noundef %10, i1 noundef zeroext false, i1 noundef zeroext false)
  %.val.i.i = load i32, ptr %i.u, align 8, !tbaa !170
  %i.ds = icmp eq i32 %.val.i.i, 8
  br i1 %i.ds, label %accept1.exit.thread.i, label %accept1.exit.i

accept1.exit.thread.i:                            ; preds = %accept2.exit113
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %expect1_opening.exit

accept1.exit.i:                                   ; preds = %accept2.exit113
  %i.dt = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !127
  %i.dv = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !128 ; 2 uses
  %i.dx = getelementptr i8, ptr %0, i64 472
  %i.dy = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.dx, ptr noundef %i.du, ptr noundef %i.dw, i32 noundef 57) #27 ; 0 uses
  %i.dz = getelementptr i8, ptr %0, i64 328
  store ptr %i.dw, ptr %i.dz, align 8, !tbaa !256
  store i32 163, ptr %i.c, align 8, !tbaa !200
  br label %expect1_opening.exit

expect1_opening.exit:                             ; preds = %accept1.exit.thread.i, %accept1.exit.i
  %i.ea = call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #30 ; 10 uses
  %i.eb = icmp eq ptr %i.ea, null
  br i1 %i.eb, label %bb.v, label %pm_node_alloc.exit.i114

bb.v:                                             ; preds = %expect1_opening.exit
  %i.ec = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.ed = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ec, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 64) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_node_alloc.exit.i114:                          ; preds = %expect1_opening.exit
  %i.ee = load i32, ptr %i.c, align 8, !tbaa !126
  %i.ef = icmp eq i32 %i.ee, 164                  ; 2 uses
  %i.eg = icmp ne ptr %i.dp, null
  %or.cond.i115 = and i1 %i.eg, %i.ef
  %i.eh = load i32, ptr %0, align 8, !tbaa !109
  %i.ei = add i32 %i.eh, 1                        ; 2 uses
  store i32 %i.ei, ptr %0, align 8, !tbaa !109
  %.sroa.7.0.in20.i = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.ej = load <2 x ptr>, ptr %.sroa.7.0.in20.i, align 8, !tbaa !14
  %.sroa.7.021.i = load ptr, ptr %.sroa.7.0.in20.i, align 8, !tbaa !127
  br i1 %or.cond.i115, label %.thread.i, label %bb.w

.thread.i:                                        ; preds = %pm_node_alloc.exit.i114
  %.sroa.9.0.in22.i = getelementptr i8, ptr %i.dp, i64 16
  %.sroa.9.023.i = load ptr, ptr %.sroa.9.0.in22.i, align 8, !tbaa !14
  br label %pm_else_node_create.exit

bb.w:                                             ; preds = %pm_node_alloc.exit.i114
  %.sroa.9.0.in.i = getelementptr i8, ptr %0, i64 336
  %.sroa.9.0.i116 = load ptr, ptr %.sroa.9.0.in.i, align 8, !tbaa !14 ; 3 uses
  br i1 %i.ef, label %pm_else_node_create.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ek = getelementptr i8, ptr %0, i64 328
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !127
  br label %pm_else_node_create.exit

pm_else_node_create.exit:                         ; preds = %.thread.i, %bb.w, %bb.x
  %.sroa.9.026.i = phi ptr [ %.sroa.9.0.i116, %bb.x ], [ %.sroa.9.0.i116, %bb.w ], [ %.sroa.9.023.i, %.thread.i ]
  %.sroa.14.0.i = phi ptr [ %i.el, %bb.x ], [ null, %bb.w ], [ null, %.thread.i ]
  %.sroa.16.0.i = phi ptr [ %.sroa.9.0.i116, %bb.x ], [ null, %bb.w ], [ null, %.thread.i ]
  store i16 47, ptr %i.ea, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i117 = getelementptr inbounds nuw i8, ptr %i.ea, i64 4
  store i32 %i.ei, ptr %.sroa.5.0..sroa_idx.i117, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.ea, i64 8
  store ptr %.sroa.7.021.i, ptr %.sroa.7.0..sroa_idx.i118, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i119 = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  store ptr %.sroa.9.026.i, ptr %.sroa.9.0..sroa_idx.i119, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %i.ea, i64 24
  store <2 x ptr> %i.ej, ptr %.sroa.11.0..sroa_idx.i120, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx.i121 = getelementptr inbounds nuw i8, ptr %i.ea, i64 40
  store ptr %i.dp, ptr %.sroa.13.0..sroa_idx.i121, align 8, !tbaa !136
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 48
  store ptr %.sroa.14.0.i, ptr %.sroa.14.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.16.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ea, i64 56
  store ptr %.sroa.16.0.i, ptr %.sroa.16.0..sroa_idx.i, align 8, !tbaa !14
  switch i32 %1, label %bb.z [
end_hunk_9
begin_hunk_10_@parse_undef_argument:bb.a
    i32 26, label %bb.b
    i32 27, label %bb.b
    i32 25, label %bb.b
    i32 32, label %bb.b
    i32 31, label %bb.b
    i32 34, label %bb.b
    i32 52, label %bb.b
    i32 51, label %bb.b
    i32 54, label %bb.b
    i32 61, label %bb.b
    i32 62, label %bb.b
    i32 60, label %bb.b
    i32 116, label %bb.b
    i32 115, label %bb.b
    i32 117, label %bb.b
    i32 114, label %bb.b
    i32 120, label %bb.b
    i32 126, label %bb.b
    i32 16, label %bb.b
    i32 136, label %bb.b
    i32 141, label %bb.b
    i32 145, label %bb.b
    i32 143, label %bb.b
    i32 151, label %bb.b
    i32 152, label %bb.b
    i32 156, label %bb.b
    i32 157, label %bb.b
    i32 158, label %bb.b
    i32 159, label %bb.b
    i32 160, label %bb.b
    i32 108, label %bb.c
    i32 109, label %bb.c
    i32 110, label %bb.c
    i32 73, label %bb.c
    i32 74, label %bb.c
    i32 75, label %bb.c
    i32 76, label %bb.c
    i32 77, label %bb.c
    i32 78, label %bb.c
    i32 79, label %bb.c
    i32 80, label %bb.c
    i32 81, label %bb.c
    i32 5, label %bb.c
    i32 82, label %bb.c
    i32 6, label %bb.c
    i32 7, label %bb.c
    i32 8, label %bb.c
    i32 83, label %bb.c
    i32 9, label %bb.c
    i32 84, label %bb.c
    i32 85, label %bb.c
    i32 86, label %bb.c
    i32 10, label %bb.c
    i32 88, label %bb.c
    i32 89, label %bb.c
    i32 90, label %bb.c
    i32 91, label %bb.c
    i32 92, label %bb.c
    i32 93, label %bb.c
    i32 11, label %bb.c
    i32 95, label %bb.c
    i32 96, label %bb.c
    i32 97, label %bb.c
    i32 98, label %bb.c
    i32 12, label %bb.c
    i32 99, label %bb.c
    i32 100, label %bb.c
    i32 101, label %bb.c
    i32 103, label %bb.c
    i32 13, label %bb.c
    i32 105, label %bb.c
    i32 107, label %bb.c
    i32 41, label %bb.c
    i32 66, label %bb.c
    i32 119, label %bb.c
    i32 150, label %bb.i
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #27
  %i.c = getelementptr i8, ptr %0, i64 304
  %.val25 = load ptr, ptr %i.c, align 8, !tbaa !74 ; 2 uses
  store i32 164, ptr %2, align 8, !tbaa !126, !alias.scope !552
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.d, align 4, !alias.scope !552
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %.val25, ptr %i.e, align 8, !tbaa !127, !alias.scope !552
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %.val25, ptr %i.f, align 8, !tbaa !128, !alias.scope !552
  %i.g = call fastcc ptr @parse_operator_symbol(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  br label %bb.k

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.h = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 10 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %pm_symbol_node_create.exit

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.k = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.j, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_symbol_node_create.exit:                       ; preds = %bb.c
  %.sroa.gep33 = getelementptr i8, ptr %0, i64 328
  %.then.val40 = load ptr, ptr %.sroa.gep33, align 8, !tbaa !127 ; 3 uses
  %.sroa.gep = getelementptr i8, ptr %0, i64 336
  %.then.val = load ptr, ptr %.sroa.gep, align 8, !tbaa !128 ; 3 uses
  %i.l = load i32, ptr %0, align 8, !tbaa !109
  %i.m = add i32 %i.l, 1                          ; 2 uses
  store i32 %i.m, ptr %0, align 8, !tbaa !109
  store i16 143, ptr %i.h, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 3 uses
  store i16 2, ptr %.sroa.2.0..sroa_idx.i.i, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.m, ptr %.sroa.3.0..sroa_idx.i.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %.then.val40, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %.then.val, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %.then.val40, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %.then.val, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !tbaa !14
  %i.n = getelementptr i8, ptr %i.h, i64 72       ; 3 uses
  tail call void @pm_string_shared_init(ptr noundef %i.n, ptr noundef %.then.val40, ptr noundef %.then.val) #27
  %i.o = getelementptr i8, ptr %0, i64 672
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !207  ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %pm_symbol_node_create.exit
  %i.q = icmp eq ptr %i.p, @pm_encodings
  br i1 %i.q, label %parse_symbol_encoding.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr i8, ptr %0, i64 520
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !40
  %.not = icmp eq ptr %i.s, getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 48)
  %.mux.i = select i1 %.not, i16 8, i16 0
  br label %parse_symbol_encoding.exit

bb.g:                                             ; preds = %pm_symbol_node_create.exit
  %i.t = tail call i64 @pm_string_length(ptr noundef %i.n) #27 ; 2 uses
  %i.u = tail call ptr @pm_string_source(ptr noundef %i.n) #27
  %.not1011.i.i = icmp eq i64 %i.t, 0
  br i1 %.not1011.i.i, label %parse_symbol_encoding.exit, label %.lr.ph.i24.i

bb.h:                                             ; preds = %.lr.ph.i24.i
  %i.v = add nuw i64 %.0812.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.v, %i.t
  br i1 %exitcond.not.i.i, label %parse_symbol_encoding.exit, label %.lr.ph.i24.i, !llvm.loop !482

.lr.ph.i24.i:                                     ; preds = %bb.g, %bb.h
  %.0812.i.i = phi i64 [ %i.v, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.w = getelementptr i8, ptr %i.u, i64 %.0812.i.i
  %i.x = load i8, ptr %i.w, align 1, !tbaa !67
  %.not.i25.i = icmp sgt i8 %i.x, -1
  br i1 %.not.i25.i, label %bb.h, label %parse_symbol_encoding.exit

parse_symbol_encoding.exit:                       ; preds = %.lr.ph.i24.i, %bb.h, %bb.e, %bb.g, %bb.f
  %.0.i = phi i16 [ %.mux.i, %bb.f ], [ 16, %bb.g ], [ 4, %bb.e ], [ 0, %.lr.ph.i24.i ], [ 16, %bb.h ]
  %i.y = load i16, ptr %.sroa.2.0..sroa_idx.i.i, align 2, !tbaa !116
  %i.z = or i16 %i.y, %.0.i
  store i16 %i.z, ptr %.sroa.2.0..sroa_idx.i.i, align 2, !tbaa !116
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !91 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.ab, align 8, !tbaa !7
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.sroa.428.0.copyload = load i8, ptr %.sroa.428.0..sroa_idx, align 8
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.ac = add i16 %1, 1
  %i.ad = tail call fastcc ptr @parse_symbol(ptr noundef nonnull %0, i32 %.sroa.0.0.copyload, i8 %.sroa.428.0.copyload, i32 noundef 0, i16 noundef zeroext %i.ac)
  br label %bb.k

bb.j:                                             ; preds = %bb.a
  %i.ae = getelementptr i8, ptr %0, i64 352       ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !166
  %i.ag = getelementptr i8, ptr %0, i64 360       ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !76
  %i.ai = getelementptr i8, ptr %0, i64 472
  %i.aj = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ai, ptr noundef %i.af, ptr noundef %i.ah, i32 noundef 278) #27 ; 0 uses
  %i.ak = load ptr, ptr %i.ae, align 8, !tbaa !166
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !76
  %i.am = tail call fastcc ptr @pm_missing_node_create(ptr noundef nonnull %0, ptr noundef %i.ak, ptr noundef %i.al)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %parse_symbol_encoding.exit, %bb.b
  %.0 = phi ptr [ %i.am, %bb.j ], [ %i.g, %bb.b ], [ %i.h, %parse_symbol_encoding.exit ], [ %i.ad, %bb.i ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_call_node_not_create(ptr noundef %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef nonnull readonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %1) ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %pm_assert_value_expression.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val5.i = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.d = getelementptr i8, ptr %0, i64 472
  %i.e = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.d, ptr noundef %.val.i, ptr noundef %.val5.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

pm_assert_value_expression.exit:                  ; preds = %bb.a, %bb.b
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %pm_assert_value_expression.exit
  tail call fastcc void @pm_conditional_predicate(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 2)
  %.val = load i16, ptr %1, align 8, !tbaa !115
  %i.f = icmp eq i16 %.val, 133
  %i.g = select i1 %i.f, i16 32, i16 0
  br label %.thread

.thread:                                          ; preds = %pm_assert_value_expression.exit, %bb.c
  %i.h = phi i16 [ %i.g, %bb.c ], [ 0, %pm_assert_value_expression.exit ]
  %i.i = tail call noalias dereferenceable_or_null(136) ptr @calloc(i64 noundef 1, i64 noundef 136) #30 ; 14 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %pm_call_node_create.exit

bb.d:                                             ; preds = %.thread
  %i.k = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.l = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.k, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 136) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_call_node_create.exit:                         ; preds = %.thread
  %i.m = load i32, ptr %0, align 8, !tbaa !109
  %i.n = add i32 %i.m, 1                          ; 2 uses
  store i32 %i.n, ptr %0, align 8, !tbaa !109
  store i16 19, ptr %i.i, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i16 %i.h, ptr %.sroa.3.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %i.n, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.o = getelementptr i8, ptr %2, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !127  ; 2 uses
  store ptr %i.p, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !123
  %i.q = getelementptr i8, ptr %3, i64 24         ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !315
  %.not33 = icmp eq ptr %i.r, null
  br i1 %.not33, label %bb.f, label %bb.e

bb.e:                                             ; preds = %pm_call_node_create.exit
  %i.s = getelementptr i8, ptr %3, i64 32
  br label %bb.i

bb.f:                                             ; preds = %pm_call_node_create.exit
  br i1 %.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @__assert_fail(ptr noundef nonnull @.str.186, ptr noundef nonnull @.str.2, i32 noundef 2749, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_call_node_not_create) #26
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %1, i64 16
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %storemerge.in = phi ptr [ %i.s, %bb.e ], [ %i.t, %bb.h ]
  %storemerge = load ptr, ptr %storemerge.in, align 8, !tbaa !14
  store ptr %storemerge, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !124
  %i.u = getelementptr i8, ptr %i.i, i64 24
  store ptr %1, ptr %i.u, align 8, !tbaa !125
  %i.v = load i32, ptr %2, align 8, !tbaa !126
  %i.w = icmp eq i32 %i.v, 164
  br i1 %i.w, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr i8, ptr %2, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !128
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sink34 = phi ptr [ %i.p, %bb.j ], [ null, %bb.i ]
  %.sink = phi ptr [ %i.y, %bb.j ], [ null, %bb.i ]
  %i.z = getelementptr i8, ptr %i.i, i64 56
  store ptr %.sink34, ptr %i.z, align 8, !tbaa !14
  %i.aa = getelementptr i8, ptr %i.i, i64 64
  store ptr %.sink, ptr %i.aa, align 8, !tbaa !14
  %i.ab = getelementptr i8, ptr %i.i, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !311
  %i.ac = getelementptr i8, ptr %3, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !312
  %i.ae = getelementptr i8, ptr %i.i, i64 88
  store ptr %i.ad, ptr %i.ae, align 8, !tbaa !117
  %i.af = getelementptr i8, ptr %i.i, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false), !tbaa.struct !311
  %i.ag = getelementptr i8, ptr %0, i64 576
  %i.ah = tail call i32 @pm_constant_pool_insert_constant(ptr noundef %i.ag, ptr noundef nonnull @.str.109, i64 noundef 1) #27
  %i.ai = getelementptr i8, ptr %i.i, i64 48
  store i32 %i.ah, ptr %i.ai, align 8, !tbaa !120
  ret ptr %i.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_module_node_create(ptr noundef %0, ptr noundef readonly captures(address_is_null) %1, ptr %.8.val, ptr %.16.val, ptr noundef %2, ptr %.8.val1, ptr %.16.val3, ptr noundef %3, ptr noundef readonly captures(none) %4) unnamed_addr #1 {
bb.a:
  %.sroa.6 = alloca %struct.pm_constant_id_list_t, align 8 ; 3 uses
  %i.a = tail call noalias dereferenceable_or_null(104) ptr @calloc(i64 noundef 1, i64 noundef 104) #30 ; 14 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 104) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %4, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !128  ; 2 uses
  %i.i = icmp eq ptr %1, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %pm_node_alloc.exit
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i8 0, i64 24, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %pm_node_alloc.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !517
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr i8, ptr %4, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !127
  %i.l = getelementptr i8, ptr %0, i64 576
  %i.m = ptrtoint ptr %.16.val3 to i64
  %i.n = ptrtoint ptr %.8.val1 to i64
  %i.o = sub i64 %i.m, %i.n
  %i.p = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.l, ptr noundef %.8.val1, i64 noundef %i.o) #27
  store i16 104, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.8.val, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.h, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6, i64 24, i1 false), !tbaa.struct !555
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.8.val, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.16.val, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %2, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !105
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %3, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !105
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %i.k, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.h, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !14
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 %i.p, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !7
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_redo_node_create(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 93
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.187, ptr noundef nonnull @.str.2, i32 noundef 5889, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_redo_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #30 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 24) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8
  store i16 124, ptr %i.c, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
end_hunk_10
begin_hunk_11_@pm_interpolated_regular_expression_node_append:bb.a
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.k = getelementptr i8, ptr %0, i64 40
  tail call fastcc void @pm_interpolated_node_append(ptr noundef nonnull %0, ptr noundef %i.k, ptr noundef nonnull %1)
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_xstring_node_create(ptr noundef captures(none) %0, ptr %.8.val, ptr %.16.val, ptr %.8.val1, ptr %.16.val3, ptr noundef readonly captures(none) %1) unnamed_addr #8 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 12 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_xstring_node_create_unescaped.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_xstring_node_create_unescaped.exit:            ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %1, i64 16
  %i.h = getelementptr i8, ptr %1, i64 8
  store i16 150, ptr %i.a, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 16, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.8.val, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.8.val, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.16.val, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %.8.val1, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.16.val3, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !128
  %i.j = load <2 x ptr>, ptr %i.h, align 8, !tbaa !14
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  store <2 x ptr> %i.j, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_parser_err_prefix(ptr noundef %0, i32 noundef range(i32 26, 278) %1) unnamed_addr #1 {
bb.a:
  switch i32 %1, label %bb.h [
    i32 133, label %bb.b
    i32 136, label %bb.c
    i32 96, label %bb.c
    i32 277, label %bb.d
    i32 276, label %bb.g
    i32 89, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 472
  %i.b = getelementptr i8, ptr %0, i64 320
  %i.c = getelementptr i8, ptr %0, i64 328
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !256
  %i.e = getelementptr i8, ptr %0, i64 336
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !255
  %i.g = load i32, ptr %i.b, align 8, !tbaa !200
  %i.h = tail call ptr @pm_token_type_human(i32 noundef %i.g) #27
  %i.i = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.a, ptr noundef %i.d, ptr noundef %i.f, i32 noundef 133, ptr noundef %i.h) #27 ; 0 uses
  br label %bb.i

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.j = getelementptr i8, ptr %0, i64 472
  %i.k = getelementptr i8, ptr %0, i64 344
  %i.l = getelementptr i8, ptr %0, i64 352
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !166
  %i.n = getelementptr i8, ptr %0, i64 360
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !76
  %i.p = load i32, ptr %i.k, align 8, !tbaa !170
  %i.q = tail call ptr @pm_token_type_human(i32 noundef %i.p) #27
  %i.r = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.j, ptr noundef %i.m, ptr noundef %i.o, i32 noundef %1, ptr noundef %i.q) #27 ; 0 uses
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.s = getelementptr i8, ptr %0, i64 344
  %i.t = load i32, ptr %i.s, align 8, !tbaa !170  ; 2 uses
  %i.u = icmp eq i32 %i.t, 1
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = tail call ptr @pm_token_type_human(i32 noundef %i.t) #27
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.w = phi ptr [ %i.v, %bb.e ], [ @.str.193, %bb.d ]
  %i.x = getelementptr i8, ptr %0, i64 472
  %i.y = getelementptr i8, ptr %0, i64 328
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !256  ; 2 uses
  %i.aa = getelementptr i8, ptr %0, i64 336
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !255
  %i.ac = load i8, ptr %i.z, align 1, !tbaa !67
  %i.ad = zext i8 %i.ac to i32
  %i.ae = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.x, ptr noundef nonnull %i.z, ptr noundef %i.ab, i32 noundef 277, ptr noundef %i.w, i32 noundef %i.ad) #27 ; 0 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.a, %bb.a
  %i.af = getelementptr i8, ptr %0, i64 472
  %i.ag = getelementptr i8, ptr %0, i64 344
  %i.ah = getelementptr i8, ptr %0, i64 352
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !166
  %i.aj = getelementptr i8, ptr %0, i64 360
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !76
  %i.al = load i32, ptr %i.ag, align 8, !tbaa !170
  %i.am = tail call ptr @pm_token_type_human(i32 noundef %i.al) #27
  %i.an = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.af, ptr noundef %i.ai, ptr noundef %i.ak, i32 noundef %1, ptr noundef %i.am) #27 ; 0 uses
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  %i.ao = getelementptr i8, ptr %0, i64 328
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !256
  %i.aq = getelementptr i8, ptr %0, i64 336
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !255
  %i.as = getelementptr i8, ptr %0, i64 472
  %i.at = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.as, ptr noundef %i.ap, ptr noundef %i.ar, i32 noundef range(i32 5, 278) %1) #27 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @parse_target_validate(ptr noundef %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @parse_target(ptr noundef %0, ptr noundef nonnull %1, i1 noundef zeroext true, i1 noundef zeroext false) ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 344
  %.val11 = load i32, ptr %i.b, align 8, !tbaa !170 ; 3 uses
  %i.c = icmp eq i32 %.val11, 50
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 504
  %.06.i = load ptr, ptr %i.d, align 8, !tbaa !213 ; 3 uses
  %.not7.not.i = icmp eq ptr %.06.i, null
  br i1 %.not7.not.i, label %context_p.exit21.thread, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.e = getelementptr i8, ptr %.08.i, i64 8
  %.0.i = load ptr, ptr %i.e, align 8, !tbaa !213 ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.not.i, label %.lr.ph.i16.preheader, label %.lr.ph.i, !llvm.loop !214

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.08.i = phi ptr [ %.0.i, %bb.c ], [ %.06.i, %bb.b ] ; 2 uses
  %i.f = load i32, ptr %.08.i, align 8, !tbaa !215
  %i.g = icmp eq i32 %i.f, 28
  br i1 %i.g, label %context_p.exit, label %bb.c

context_p.exit:                                   ; preds = %.lr.ph.i
  %i.h = icmp eq i32 %.val11, 10
  br i1 %i.h, label %bb.e, label %.lr.ph.i16.preheader

.lr.ph.i16.preheader:                             ; preds = %bb.c, %context_p.exit
  br label %.lr.ph.i16

bb.d:                                             ; preds = %.lr.ph.i16
  %i.i = getelementptr i8, ptr %.08.i17, i64 8
  %.0.i18 = load ptr, ptr %i.i, align 8, !tbaa !213 ; 2 uses
  %.not.not.i19 = icmp eq ptr %.0.i18, null
  br i1 %.not.not.i19, label %context_p.exit21.thread, label %.lr.ph.i16, !llvm.loop !214

.lr.ph.i16:                                       ; preds = %.lr.ph.i16.preheader, %bb.d
  %.08.i17 = phi ptr [ %.0.i18, %bb.d ], [ %.06.i, %.lr.ph.i16.preheader ] ; 2 uses
  %i.j = load i32, ptr %.08.i17, align 8, !tbaa !215
  %i.k = icmp eq i32 %i.j, 42
  br i1 %i.k, label %context_p.exit21, label %bb.d

context_p.exit21:                                 ; preds = %.lr.ph.i16
  %i.l = icmp eq i32 %.val11, 15
  br i1 %i.l, label %bb.e, label %context_p.exit21.thread

context_p.exit21.thread:                          ; preds = %bb.d, %bb.b, %context_p.exit21
  %i.m = getelementptr i8, ptr %i.a, i64 8
  %.val12 = load ptr, ptr %i.m, align 8, !tbaa !133
  %i.n = getelementptr i8, ptr %i.a, i64 16
  %.val13 = load ptr, ptr %i.n, align 8, !tbaa !134
  %i.o = getelementptr i8, ptr %0, i64 472
  %i.p = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.o, ptr noundef %.val12, ptr noundef %.val13, i32 noundef 294) #27 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %context_p.exit21.thread, %context_p.exit21, %context_p.exit, %bb.a
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_call_node_unary_create(ptr noundef %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %2) ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %pm_assert_value_expression.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val5.i = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.d = getelementptr i8, ptr %0, i64 472
  %i.e = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.d, ptr noundef %.val.i, ptr noundef %.val5.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

pm_assert_value_expression.exit:                  ; preds = %bb.a, %bb.b
  %.val = load i16, ptr %2, align 8, !tbaa !115
  %i.f = tail call noalias dereferenceable_or_null(136) ptr @calloc(i64 noundef 1, i64 noundef 136) #30 ; 11 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %pm_call_node_create.exit

bb.c:                                             ; preds = %pm_assert_value_expression.exit
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.i = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.h, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 136) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_call_node_create.exit:                         ; preds = %pm_assert_value_expression.exit
  %i.j = icmp eq i16 %.val, 133
  %i.k = select i1 %i.j, i16 32, i16 0
  %i.l = load i32, ptr %0, align 8, !tbaa !109
  %i.m = add i32 %i.l, 1                          ; 2 uses
  store i32 %i.m, ptr %0, align 8, !tbaa !109
  store i16 19, ptr %i.f, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 2
  store i16 %i.k, ptr %.sroa.3.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.m, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = getelementptr i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !127  ; 2 uses
  store ptr %i.o, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !123
  %i.p = getelementptr i8, ptr %2, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !134
  store ptr %i.q, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !124
  %i.r = getelementptr i8, ptr %i.f, i64 24
  store ptr %2, ptr %i.r, align 8, !tbaa !125
  %i.s = load i32, ptr %1, align 8, !tbaa !126
  %i.t = icmp eq i32 %i.s, 164
  br i1 %i.t, label %bb.e, label %bb.d

bb.d:                                             ; preds = %pm_call_node_create.exit
  %i.u = getelementptr i8, ptr %1, i64 16
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !128
  br label %bb.e

bb.e:                                             ; preds = %pm_call_node_create.exit, %bb.d
  %.sink21 = phi ptr [ %i.o, %bb.d ], [ null, %pm_call_node_create.exit ]
  %.sink = phi ptr [ %i.v, %bb.d ], [ null, %pm_call_node_create.exit ]
  %i.w = getelementptr i8, ptr %i.f, i64 56
  store ptr %.sink21, ptr %i.w, align 8, !tbaa !14
  %i.x = getelementptr i8, ptr %i.f, i64 64
  store ptr %.sink, ptr %i.x, align 8, !tbaa !14
  %i.y = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #29
  %i.z = getelementptr i8, ptr %0, i64 576
  %i.aa = tail call i32 @pm_constant_pool_insert_constant(ptr noundef %i.z, ptr noundef nonnull %3, i64 noundef %i.y) #27
  %i.ab = getelementptr i8, ptr %i.f, i64 48
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !120
  ret ptr %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_conditional_predicate(ptr noundef %0, ptr noundef captures(none) %1, i32 noundef range(i32 0, 3) %2) unnamed_addr #1 {
bb.a:
  br label %tailrecurse.outer

tailrecurse.outer:                                ; preds = %tailrecurse.outer.backedge, %bb.a
  %.tr112.ph = phi ptr [ %1, %bb.a ], [ %.tr112.ph.be, %tailrecurse.outer.backedge ]
  %.tr113.ph = phi i32 [ %2, %bb.a ], [ 0, %tailrecurse.outer.backedge ] ; 6 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %tailrecurse.outer
  %.tr112 = phi ptr [ %.tr112.ph, %tailrecurse.outer ], [ %.tr112.be, %tailrecurse.backedge ] ; 30 uses
  %i.a = load i16, ptr %.tr112, align 8, !tbaa !115
  switch i16 %i.a, label %pm_parser_warn_conditional_predicate_literal.exit [
    i16 4, label %tailrecurse.outer.backedge
    i16 114, label %tailrecurse.outer.backedge
    i16 116, label %bb.b
    i16 11, label %bb.e
    i16 122, label %bb.g
    i16 125, label %bb.l
    i16 84, label %bb.o
    i16 82, label %bb.r
    i16 141, label %bb.u
    i16 137, label %bb.u
    i16 85, label %bb.u
    i16 143, label %bb.w
    i16 86, label %bb.w
    i16 138, label %bb.y
    i16 136, label %bb.y
    i16 54, label %bb.y
    i16 123, label %bb.y
    i16 68, label %bb.y
    i16 32, label %bb.aa
    i16 44, label %bb.ac
    i16 64, label %bb.ae
    i16 81, label %bb.ag
    i16 98, label %bb.ai
    i16 106, label %bb.ak
  ]

tailrecurse.outer.backedge:                       ; preds = %tailrecurse, %tailrecurse
  %i.b = getelementptr i8, ptr %.tr112, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !105
  tail call fastcc void @pm_conditional_predicate(ptr noundef %0, ptr noundef %i.c, i32 noundef 0)
  %.tr112.ph.be.in = getelementptr i8, ptr %.tr112, i64 32
  %.tr112.ph.be = load ptr, ptr %.tr112.ph.be.in, align 8, !tbaa !105
  br label %tailrecurse.outer

bb.b:                                             ; preds = %tailrecurse
  %i.d = getelementptr i8, ptr %.tr112, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !528  ; 4 uses
  %.not80 = icmp eq ptr %i.e, null
  br i1 %.not80, label %pm_parser_warn_conditional_predicate_literal.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i16, ptr %i.e, align 8, !tbaa !115
  %i.g = icmp eq i16 %i.f, 140
  br i1 %i.g, label %bb.d, label %pm_parser_warn_conditional_predicate_literal.exit

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.e, i64 24
  %i.i = load i64, ptr %i.h, align 8, !tbaa !101
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %tailrecurse.backedge, label %pm_parser_warn_conditional_predicate_literal.exit

tailrecurse.backedge:                             ; preds = %bb.f, %bb.d
  %.pn = phi ptr [ %i.e, %bb.d ], [ %i.l, %bb.f ]
  %.tr112.be.in.in = getelementptr i8, ptr %.pn, i64 40
  %.tr112.be.in = load ptr, ptr %.tr112.be.in.in, align 8, !tbaa !104
  %.tr112.be = load ptr, ptr %.tr112.be.in, align 8, !tbaa !105
  br label %tailrecurse

bb.e:                                             ; preds = %tailrecurse
  %i.k = getelementptr i8, ptr %.tr112, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !527  ; 3 uses
  %.not79 = icmp eq ptr %i.l, null
  br i1 %.not79, label %pm_parser_warn_conditional_predicate_literal.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %i.l, i64 24
  %i.n = load i64, ptr %i.m, align 8, !tbaa !101
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %tailrecurse.backedge, label %pm_parser_warn_conditional_predicate_literal.exit

bb.g:                                             ; preds = %tailrecurse
  %i.p = getelementptr i8, ptr %.tr112, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !571  ; 2 uses
  %.not77 = icmp eq ptr %i.q, null
  br i1 %.not77, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @pm_conditional_predicate(ptr noundef %0, ptr noundef nonnull %i.q, i32 noundef 1)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.r = getelementptr i8, ptr %.tr112, i64 32
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !290  ; 2 uses
  %.not78 = icmp eq ptr %i.s, null
  br i1 %.not78, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call fastcc void @pm_conditional_predicate(ptr noundef %0, ptr noundef nonnull %i.s, i32 noundef 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i16 53, ptr %.tr112, align 8, !tbaa !115
  br label %pm_parser_warn_conditional_predicate_literal.exit

bb.l:                                             ; preds = %tailrecurse
  store i16 99, ptr %.tr112, align 8, !tbaa !115
  %i.t = getelementptr i8, ptr %0, i64 692
  %i.u = load i8, ptr %i.t, align 4, !tbaa !51
  %i.v = and i8 %i.u, 2
  %.not76 = icmp eq i8 %i.v, 0
  br i1 %.not76, label %bb.m, label %pm_parser_warn_conditional_predicate_literal.exit

bb.m:                                             ; preds = %bb.l
  switch i32 %.tr113.ph, label %pm_parser_warn_conditional_predicate_literal.exit [
    i32 0, label %.sink.split.i
    i32 1, label %bb.n
  ]

bb.n:                                             ; preds = %bb.m
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.n, %bb.m
  %.str.198.sink.i = phi ptr [ @.str.198, %bb.n ], [ @.str.197, %bb.m ]
  %i.w = getelementptr i8, ptr %0, i64 448
  %i.x = getelementptr i8, ptr %.tr112, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !133
  %i.z = getelementptr i8, ptr %.tr112, i64 16
end_hunk_11
begin_hunk_12_@pm_conditional_predicate:bb.a
  %i.an = and i8 %i.am, 2
  %.not = icmp eq i8 %i.an, 0
  br i1 %.not, label %bb.t, label %pm_parser_warn_conditional_predicate_literal.exit

bb.t:                                             ; preds = %bb.s
  %i.ao = getelementptr i8, ptr %.tr112, i64 8
  %.val = load ptr, ptr %i.ao, align 8, !tbaa !133
  %i.ap = getelementptr i8, ptr %.tr112, i64 16
  %.val81 = load ptr, ptr %i.ap, align 8, !tbaa !134
  %i.aq = getelementptr i8, ptr %0, i64 448
  %i.ar = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.aq, ptr noundef %.val, ptr noundef %.val81, i32 noundef range(i32 297, 324) 313) #27 ; 0 uses
  br label %pm_parser_warn_conditional_predicate_literal.exit

.sink.split.i85:                                  ; preds = %bb.r
  %i.as = getelementptr i8, ptr %0, i64 448
  %i.at = getelementptr i8, ptr %.tr112, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !133
  %i.av = getelementptr i8, ptr %.tr112, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !134
  %i.ax = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.as, ptr noundef %i.au, ptr noundef %i.aw, i32 noundef 319, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.197) #27 ; 0 uses
  br label %pm_parser_warn_conditional_predicate_literal.exit

bb.u:                                             ; preds = %tailrecurse, %tailrecurse, %tailrecurse
  switch i32 %.tr113.ph, label %pm_parser_warn_conditional_predicate_literal.exit [
    i32 0, label %.sink.split.i88
    i32 1, label %bb.v
  ]

bb.v:                                             ; preds = %bb.u
  br label %.sink.split.i88

.sink.split.i88:                                  ; preds = %bb.v, %bb.u
  %.str.198.sink.i89 = phi ptr [ @.str.198, %bb.v ], [ @.str.197, %bb.u ]
  %i.ay = getelementptr i8, ptr %0, i64 448
  %i.az = getelementptr i8, ptr %.tr112, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !133
  %i.bb = getelementptr i8, ptr %.tr112, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !134
  %i.bd = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.ay, ptr noundef %i.ba, ptr noundef %i.bc, i32 noundef 318, ptr noundef nonnull @.str.195, ptr noundef nonnull %.str.198.sink.i89) #27 ; 0 uses
  br label %pm_parser_warn_conditional_predicate_literal.exit

bb.w:                                             ; preds = %tailrecurse, %tailrecurse
  switch i32 %.tr113.ph, label %pm_parser_warn_conditional_predicate_literal.exit [
    i32 0, label %.sink.split.i91
    i32 1, label %bb.x
  ]

bb.x:                                             ; preds = %bb.w
  br label %.sink.split.i91

.sink.split.i91:                                  ; preds = %bb.x, %bb.w
  %.str.198.sink.i92 = phi ptr [ @.str.198, %bb.x ], [ @.str.197, %bb.w ]
  %i.be = getelementptr i8, ptr %0, i64 448
  %i.bf = getelementptr i8, ptr %.tr112, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !133
  %i.bh = getelementptr i8, ptr %.tr112, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !134
  %i.bj = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.be, ptr noundef %i.bg, ptr noundef %i.bi, i32 noundef 319, ptr noundef nonnull @.str.196, ptr noundef nonnull %.str.198.sink.i92) #27 ; 0 uses
  br label %pm_parser_warn_conditional_predicate_literal.exit

bb.y:                                             ; preds = %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse, %tailrecurse
  switch i32 %.tr113.ph, label %pm_parser_warn_conditional_predicate_literal.exit [
    i32 0, label %.sink.split.i94
    i32 1, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y
  br label %.sink.split.i94

.sink.split.i94:                                  ; preds = %bb.z, %bb.y
  %.str.198.sink.i95 = phi ptr [ @.str.198, %bb.z ], [ @.str.197, %bb.y ]
  %i.bk = getelementptr i8, ptr %0, i64 448
  %i.bl = getelementptr i8, ptr %.tr112, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !133
  %i.bn = getelementptr i8, ptr %.tr112, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !134
  %i.bp = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.bk, ptr noundef %i.bm, ptr noundef %i.bo, i32 noundef 319, ptr noundef nonnull @.str.103, ptr noundef nonnull %.str.198.sink.i95) #27 ; 0 uses
  br label %pm_parser_warn_conditional_predicate_literal.exit

bb.aa:                                            ; preds = %tailrecurse
  %i.bq = getelementptr i8, ptr %.tr112, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !572 ; 3 uses
  %i.bs = tail call fastcc zeroext i1 @pm_conditional_predicate_warn_write_literal_p(ptr noundef readonly %i.br)
  br i1 %i.bs, label %bb.ab, label %pm_parser_warn_conditional_predicate_literal.exit

bb.ab:                                            ; preds = %bb.aa
  %i.bt = getelementptr i8, ptr %0, i64 688
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !53
  %i.bv = icmp ult i32 %i.bu, 2
  %i.bw = select i1 %i.bv, i32 306, i32 305
  %i.bx = getelementptr i8, ptr %i.br, i64 8
  %.val.i = load ptr, ptr %i.bx, align 8, !tbaa !133
  %i.by = getelementptr i8, ptr %i.br, i64 16
  %.val4.i = load ptr, ptr %i.by, align 8, !tbaa !134
  %i.bz = getelementptr i8, ptr %0, i64 448
  %i.ca = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.bz, ptr noundef %.val.i, ptr noundef %.val4.i, i32 noundef range(i32 305, 324) %i.bw) #27 ; 0 uses
  br label %pm_parser_warn_conditional_predicate_literal.exit

bb.ac:                                            ; preds = %tailrecurse
  %i.cb = getelementptr i8, ptr %.tr112, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !574 ; 3 uses
  %i.cd = tail call fastcc zeroext i1 @pm_conditional_predicate_warn_write_literal_p(ptr noundef readonly %i.cc)
  br i1 %i.cd, label %bb.ad, label %pm_parser_warn_conditional_predicate_literal.exit

bb.ad:                                            ; preds = %bb.ac
  %i.ce = getelementptr i8, ptr %0, i64 688
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !53
  %i.cg = icmp ult i32 %i.cf, 2
  %i.ch = select i1 %i.cg, i32 306, i32 305
  %i.ci = getelementptr i8, ptr %i.cc, i64 8
  %.val.i97 = load ptr, ptr %i.ci, align 8, !tbaa !133
  %i.cj = getelementptr i8, ptr %i.cc, i64 16
  %.val4.i98 = load ptr, ptr %i.cj, align 8, !tbaa !134
  %i.ck = getelementptr i8, ptr %0, i64 448
  %i.cl = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ck, ptr noundef %.val.i97, ptr noundef %.val4.i98, i32 noundef range(i32 305, 324) %i.ch) #27 ; 0 uses
  br label %pm_parser_warn_conditional_predicate_literal.exit

bb.ae:                                            ; preds = %tailrecurse
  %i.cm = getelementptr i8, ptr %.tr112, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !576 ; 3 uses
  %i.co = tail call fastcc zeroext i1 @pm_conditional_predicate_warn_write_literal_p(ptr noundef readonly %i.cn)
  br i1 %i.co, label %bb.af, label %pm_parser_warn_conditional_predicate_literal.exit

bb.af:                                            ; preds = %bb.ae
  %i.cp = getelementptr i8, ptr %0, i64 688
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !53
  %i.cr = icmp ult i32 %i.cq, 2
  %i.cs = select i1 %i.cr, i32 306, i32 305
  %i.ct = getelementptr i8, ptr %i.cn, i64 8
  %.val.i100 = load ptr, ptr %i.ct, align 8, !tbaa !133
  %i.cu = getelementptr i8, ptr %i.cn, i64 16
  %.val4.i101 = load ptr, ptr %i.cu, align 8, !tbaa !134
  %i.cv = getelementptr i8, ptr %0, i64 448
  %i.cw = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.cv, ptr noundef %.val.i100, ptr noundef %.val4.i101, i32 noundef range(i32 305, 324) %i.cs) #27 ; 0 uses
  br label %pm_parser_warn_conditional_predicate_literal.exit

bb.ag:                                            ; preds = %tailrecurse
  %i.cx = getelementptr i8, ptr %.tr112, i64 48
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !578 ; 3 uses
  %i.cz = tail call fastcc zeroext i1 @pm_conditional_predicate_warn_write_literal_p(ptr noundef readonly %i.cy)
  br i1 %i.cz, label %bb.ah, label %pm_parser_warn_conditional_predicate_literal.exit

bb.ah:                                            ; preds = %bb.ag
  %i.da = getelementptr i8, ptr %0, i64 688
  %i.db = load i32, ptr %i.da, align 8, !tbaa !53
  %i.dc = icmp ult i32 %i.db, 2
  %i.dd = select i1 %i.dc, i32 306, i32 305
  %i.de = getelementptr i8, ptr %i.cy, i64 8
  %.val.i103 = load ptr, ptr %i.de, align 8, !tbaa !133
  %i.df = getelementptr i8, ptr %i.cy, i64 16
  %.val4.i104 = load ptr, ptr %i.df, align 8, !tbaa !134
  %i.dg = getelementptr i8, ptr %0, i64 448
  %i.dh = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.dg, ptr noundef %.val.i103, ptr noundef %.val4.i104, i32 noundef range(i32 305, 324) %i.dd) #27 ; 0 uses
  br label %pm_parser_warn_conditional_predicate_literal.exit

bb.ai:                                            ; preds = %tailrecurse
  %i.di = getelementptr i8, ptr %.tr112, i64 48
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !580 ; 3 uses
  %i.dk = tail call fastcc zeroext i1 @pm_conditional_predicate_warn_write_literal_p(ptr noundef readonly %i.dj)
  br i1 %i.dk, label %bb.aj, label %pm_parser_warn_conditional_predicate_literal.exit

bb.aj:                                            ; preds = %bb.ai
  %i.dl = getelementptr i8, ptr %0, i64 688
  %i.dm = load i32, ptr %i.dl, align 8, !tbaa !53
  %i.dn = icmp ult i32 %i.dm, 2
  %i.do = select i1 %i.dn, i32 306, i32 305
  %i.dp = getelementptr i8, ptr %i.dj, i64 8
  %.val.i106 = load ptr, ptr %i.dp, align 8, !tbaa !133
  %i.dq = getelementptr i8, ptr %i.dj, i64 16
  %.val4.i107 = load ptr, ptr %i.dq, align 8, !tbaa !134
  %i.dr = getelementptr i8, ptr %0, i64 448
  %i.ds = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.dr, ptr noundef %.val.i106, ptr noundef %.val4.i107, i32 noundef range(i32 305, 324) %i.do) #27 ; 0 uses
  br label %pm_parser_warn_conditional_predicate_literal.exit

bb.ak:                                            ; preds = %tailrecurse
  %i.dt = getelementptr i8, ptr %.tr112, i64 128
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !582 ; 3 uses
  %i.dv = tail call fastcc zeroext i1 @pm_conditional_predicate_warn_write_literal_p(ptr noundef readonly %i.du)
  br i1 %i.dv, label %bb.al, label %pm_parser_warn_conditional_predicate_literal.exit

bb.al:                                            ; preds = %bb.ak
  %i.dw = getelementptr i8, ptr %0, i64 688
  %i.dx = load i32, ptr %i.dw, align 8, !tbaa !53
  %i.dy = icmp ult i32 %i.dx, 2
  %i.dz = select i1 %i.dy, i32 306, i32 305
  %i.ea = getelementptr i8, ptr %i.du, i64 8
  %.val.i109 = load ptr, ptr %i.ea, align 8, !tbaa !133
  %i.eb = getelementptr i8, ptr %i.du, i64 16
  %.val4.i110 = load ptr, ptr %i.eb, align 8, !tbaa !134
  %i.ec = getelementptr i8, ptr %0, i64 448
  %i.ed = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ec, ptr noundef %.val.i109, ptr noundef %.val4.i110, i32 noundef range(i32 305, 324) %i.dz) #27 ; 0 uses
  br label %pm_parser_warn_conditional_predicate_literal.exit

pm_parser_warn_conditional_predicate_literal.exit: ; preds = %bb.e, %bb.f, %bb.b, %bb.c, %bb.d, %tailrecurse, %bb.r, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %.sink.split.i94, %bb.y, %.sink.split.i91, %bb.w, %.sink.split.i88, %bb.u, %.sink.split.i85, %.sink.split.i82, %bb.p, %.sink.split.i, %bb.m, %bb.t, %bb.s, %bb.o, %bb.l, %bb.k
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_call_node_binary_create(ptr noundef %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef %3, i16 noundef zeroext range(i16 0, 129) %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %1) ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %pm_assert_value_expression.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val5.i = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.d = getelementptr i8, ptr %0, i64 472
  %i.e = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.d, ptr noundef %.val.i, ptr noundef %.val5.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

pm_assert_value_expression.exit:                  ; preds = %bb.a, %bb.b
  %i.f = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %3) ; 3 uses
  %.not.i38 = icmp eq ptr %i.f, null
  br i1 %.not.i38, label %pm_assert_value_expression.exit41, label %bb.c

bb.c:                                             ; preds = %pm_assert_value_expression.exit
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val.i39 = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.h = getelementptr i8, ptr %i.f, i64 16
  %.val5.i40 = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.i = getelementptr i8, ptr %0, i64 472
  %i.j = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.i, ptr noundef %.val.i39, ptr noundef %.val5.i40, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit41

pm_assert_value_expression.exit41:                ; preds = %pm_assert_value_expression.exit, %bb.c
  %.val37 = load i16, ptr %1, align 8, !tbaa !115
  %i.k = tail call noalias dereferenceable_or_null(136) ptr @calloc(i64 noundef 1, i64 noundef 136) #30 ; 11 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %pm_call_node_create.exit

bb.d:                                             ; preds = %pm_assert_value_expression.exit41
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.n = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.m, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 136) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_call_node_create.exit:                         ; preds = %pm_assert_value_expression.exit41
  %i.o = icmp eq i16 %.val37, 133
  %i.p = select i1 %i.o, i16 32, i16 0
  %i.q = or i16 %i.p, %4
  %i.r = load i32, ptr %0, align 8, !tbaa !109
  %i.s = add i32 %i.r, 1                          ; 2 uses
  store i32 %i.s, ptr %0, align 8, !tbaa !109
  %i.t = getelementptr i8, ptr %0, i64 304
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !74   ; 2 uses
  store i16 19, ptr %i.k, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  store i16 %i.q, ptr %.sroa.3.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %i.s, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.v = getelementptr i8, ptr %1, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !133  ; 2 uses
  %i.x = getelementptr i8, ptr %3, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !133  ; 3 uses
  %i.z = icmp ult ptr %i.w, %i.y
  %. = select i1 %i.z, ptr %i.w, ptr %i.y
  store ptr %., ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !123
  %i.aa = getelementptr i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !134 ; 2 uses
  %i.ac = getelementptr i8, ptr %3, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !134 ; 4 uses
  %i.ae = icmp ugt ptr %i.ab, %i.ad
  %i.af = select i1 %i.ae, ptr %i.ab, ptr %i.ad
  store ptr %i.af, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !124
  %i.ag = getelementptr i8, ptr %i.k, i64 24
  store ptr %1, ptr %i.ag, align 8, !tbaa !125
  %i.ah = getelementptr i8, ptr %i.k, i64 56
  %i.ai = load i32, ptr %2, align 8, !tbaa !126
  %i.aj = icmp eq i32 %i.ai, 164
  br i1 %i.aj, label %bb.f, label %bb.e

bb.e:                                             ; preds = %pm_call_node_create.exit
  %i.ak = getelementptr i8, ptr %2, i64 8
  %i.al = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %pm_call_node_create.exit, %bb.e
  %i.am = phi <2 x ptr> [ %i.al, %bb.e ], [ splat (ptr null), %pm_call_node_create.exit ]
  store <2 x ptr> %i.am, ptr %i.ah, align 8, !tbaa !14
  %i.an = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 8 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ap = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.aq = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ap, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.ar = load i32, ptr %0, align 8, !tbaa !109
  %i.as = add i32 %i.ar, 1                        ; 2 uses
  store i32 %i.as, ptr %0, align 8, !tbaa !109
  store i16 5, ptr %i.an, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i42 = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  store i32 %i.as, ptr %.sroa.3.0..sroa_idx.i42, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i43 = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.5.0..sroa_idx.i44 = getelementptr inbounds nuw i8, ptr %i.an, i64 16 ; 2 uses
  store ptr %i.u, ptr %.sroa.5.0..sroa_idx.i44, align 8, !tbaa !14
  %i.at = getelementptr i8, ptr %i.an, i64 24
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx.i43, align 8, !tbaa !113
  %i.au = icmp ult ptr %i.u, %i.ad
  br i1 %i.au, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.ad, ptr %.sroa.5.0..sroa_idx.i44, align 8, !tbaa !114
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  tail call void @pm_node_list_append(ptr noundef nonnull %i.at, ptr noundef nonnull %3) #27
  %i.av = load i16, ptr %3, align 8, !tbaa !115
  %i.aw = icmp eq i16 %i.av, 139
  br i1 %i.aw, label %.sink.split.i, label %pm_arguments_node_arguments_append.exit

.sink.split.i:                                    ; preds = %bb.j
  %i.ax = getelementptr i8, ptr %i.an, i64 2      ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2, !tbaa !116 ; 2 uses
  %i.az = and i16 %i.ay, 32
  %..i = add nuw nsw i16 %i.az, 32
  %i.ba = or i16 %..i, %i.ay
  store i16 %i.ba, ptr %i.ax, align 2, !tbaa !116
  br label %pm_arguments_node_arguments_append.exit

pm_arguments_node_arguments_append.exit:          ; preds = %bb.j, %.sink.split.i
  %i.bb = getelementptr i8, ptr %i.k, i64 88
  store ptr %i.an, ptr %i.bb, align 8, !tbaa !117
  %i.bc = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.bc, align 8, !tbaa !127 ; 2 uses
  %i.bd = getelementptr i8, ptr %2, i64 16
  %.val36 = load ptr, ptr %i.bd, align 8, !tbaa !128
  %i.be = getelementptr i8, ptr %0, i64 576
  %i.bf = ptrtoint ptr %.val36 to i64
  %i.bg = ptrtoint ptr %.val to i64
  %i.bh = sub i64 %i.bf, %i.bg
  %i.bi = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.be, ptr noundef %.val, i64 noundef %i.bh) #27
  %i.bj = getelementptr i8, ptr %i.k, i64 48
  store i32 %i.bi, ptr %i.bj, align 8, !tbaa !120
  ret ptr %i.k
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @parse_negative_numeric(ptr noundef captures(none) %0) unnamed_addr #8 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.e, %bb.a
  %.tr = phi ptr [ %0, %bb.a ], [ %i.t, %bb.e ]   ; 9 uses
  %i.a = load i16, ptr %.tr, align 8, !tbaa !115
  switch i16 %i.a, label %bb.f [
    i16 82, label %bb.b
    i16 54, label %bb.c
    i16 123, label %bb.d
    i16 68, label %bb.e
  ]

bb.b:                                             ; preds = %tailrecurse
  %i.b = getelementptr i8, ptr %.tr, i64 8        ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !584
  %i.d = getelementptr i8, ptr %i.c, i64 -1
  store ptr %i.d, ptr %i.b, align 8, !tbaa !584
  %i.e = getelementptr i8, ptr %.tr, i64 44
  store i8 1, ptr %i.e, align 4, !tbaa !586
  br label %bb.g

bb.c:                                             ; preds = %tailrecurse
  %i.f = getelementptr i8, ptr %.tr, i64 8        ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !587
  %i.h = getelementptr i8, ptr %i.g, i64 -1
  store ptr %i.h, ptr %i.f, align 8, !tbaa !587
  %i.i = getelementptr i8, ptr %.tr, i64 24       ; 2 uses
  %i.j = load double, ptr %i.i, align 8, !tbaa !589
  %i.k = fneg double %i.j
  store double %i.k, ptr %i.i, align 8, !tbaa !589
  br label %bb.g

bb.d:                                             ; preds = %tailrecurse
  %i.l = getelementptr i8, ptr %.tr, i64 8        ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !590
  %i.n = getelementptr i8, ptr %i.m, i64 -1
  store ptr %i.n, ptr %i.l, align 8, !tbaa !590
  %i.o = getelementptr i8, ptr %.tr, i64 44
  store i8 1, ptr %i.o, align 4, !tbaa !591
  br label %bb.g

bb.e:                                             ; preds = %tailrecurse
  %i.p = getelementptr i8, ptr %.tr, i64 8        ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !133
  %i.r = getelementptr i8, ptr %i.q, i64 -1
  store ptr %i.r, ptr %i.p, align 8, !tbaa !133
  %i.s = getelementptr i8, ptr %.tr, i64 24
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !592
  br label %tailrecurse

bb.f:                                             ; preds = %tailrecurse
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 17157, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_negative_numeric) #26
  unreachable

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_block_parameters_node_create(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %.sroa.7 = alloca %struct.pm_node_list, align 8 ; 5 uses
  %i.a = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #30 ; 9 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
end_hunk_12
begin_hunk_13_@parse_symbol:bb.a
  br label %bb.bb

bb.bb:                                            ; preds = %expect1.exit203._crit_edge, %expect1.exit203.thread
  %i.fz = phi ptr [ %.pre, %expect1.exit203._crit_edge ], [ %i.fu, %expect1.exit203.thread ]
  %i.ga = getelementptr i8, ptr %0, i64 336
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !128 ; 2 uses
  br label %pm_interpolated_symbol_node_closing_loc_set.exit206

pm_interpolated_symbol_node_closing_loc_set.exit206: ; preds = %expect1.exit203.pm_interpolated_symbol_node_closing_loc_set.exit206_crit_edge, %bb.bb
  %i.gc = phi ptr [ %i.gb, %bb.bb ], [ %.pre73, %expect1.exit203.pm_interpolated_symbol_node_closing_loc_set.exit206_crit_edge ]
  %.sink8.i204 = phi ptr [ %i.fz, %bb.bb ], [ null, %expect1.exit203.pm_interpolated_symbol_node_closing_loc_set.exit206_crit_edge ]
  %.sink.i205 = phi ptr [ %i.gb, %bb.bb ], [ null, %expect1.exit203.pm_interpolated_symbol_node_closing_loc_set.exit206_crit_edge ]
  store ptr %.sink8.i204, ptr %.sroa.11.0..sroa_idx.i157, align 8, !tbaa !14
  store ptr %.sink.i205, ptr %.sroa.13.0..sroa_idx.i158, align 8, !tbaa !14
  store ptr %i.gc, ptr %.sroa.5.0..sroa_idx.i153, align 8, !tbaa !371
  br label %bb.bn

bb.bc:                                            ; preds = %bb.aq
  %i.gd = getelementptr i8, ptr %0, i64 336
  %i.ge = load ptr, ptr %i.gd, align 8, !tbaa !255 ; 4 uses
  call void @pm_string_shared_init(ptr noundef nonnull %5, ptr noundef %i.ge, ptr noundef %i.ge) #27
  br label %bb.bd

bb.bd:                                            ; preds = %bb.ar, %bb.bc
  %.sroa.10.0 = phi ptr [ %.sroa.10.0.copyload, %bb.ar ], [ %i.ge, %bb.bc ] ; 2 uses
  %.sroa.5.0 = phi ptr [ %.sroa.5.0.copyload, %bb.ar ], [ %i.ge, %bb.bc ] ; 2 uses
  %.not101 = icmp eq i32 %1, 0
  br i1 %.not101, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gf = getelementptr i8, ptr %0, i64 4
  store i32 %1, ptr %i.gf, align 4, !tbaa !195
  br label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %.val112 = load i32, ptr %i.ea, align 8, !tbaa !170
  switch i32 %.val112, label %accept1.exit.i208 [
    i32 1, label %bb.bg
    i32 149, label %accept1.exit.thread.i209
  ]

bb.bg:                                            ; preds = %bb.bf
  %i.gg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val = load ptr, ptr %i.gg, align 8, !tbaa !127
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val109 = load ptr, ptr %i.gh, align 8, !tbaa !128
  %i.gi = getelementptr i8, ptr %0, i64 472
  %i.gj = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.gi, ptr noundef %.val, ptr noundef %.val109, i32 noundef 271) #27 ; 0 uses
  br label %expect1.exit210

accept1.exit.thread.i209:                         ; preds = %bb.bf
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %expect1.exit210

accept1.exit.i208:                                ; preds = %bb.bf
  %i.gk = getelementptr i8, ptr %0, i64 336
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !255 ; 3 uses
  %i.gm = getelementptr i8, ptr %0, i64 472
  %i.gn = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.gm, ptr noundef %i.gl, ptr noundef %i.gl, i32 noundef 271) #27 ; 0 uses
  %i.go = getelementptr i8, ptr %0, i64 328
  store ptr %i.gl, ptr %i.go, align 8, !tbaa !256
  store i32 163, ptr %i.a, align 8, !tbaa !200
  br label %expect1.exit210

expect1.exit210:                                  ; preds = %accept1.exit.i208, %accept1.exit.thread.i209, %bb.bg
  %i.gp = getelementptr i8, ptr %0, i64 672
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !207 ; 2 uses
  %.not.i211 = icmp eq ptr %i.gq, null
  br i1 %.not.i211, label %bb.bj, label %bb.bh

bb.bh:                                            ; preds = %expect1.exit210
  %i.gr = icmp eq ptr %i.gq, @pm_encodings
  br i1 %i.gr, label %parse_symbol_encoding.exit219, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.gs = getelementptr i8, ptr %0, i64 520
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !40
  %.not71 = icmp eq ptr %i.gt, getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 48)
  %i.gu = select i1 %.not71, i16 10, i16 2
  br label %parse_symbol_encoding.exit219

bb.bj:                                            ; preds = %expect1.exit210
  %i.gv = call i64 @pm_string_length(ptr noundef nonnull %5) #27 ; 2 uses
  %i.gw = call ptr @pm_string_source(ptr noundef nonnull %5) #27
  %.not1011.i.i214 = icmp eq i64 %i.gv, 0
  br i1 %.not1011.i.i214, label %parse_symbol_encoding.exit219, label %.lr.ph.i24.i215

bb.bk:                                            ; preds = %.lr.ph.i24.i215
  %i.gx = add nuw i64 %.0812.i.i216, 1            ; 2 uses
  %exitcond.not.i.i218 = icmp eq i64 %i.gx, %i.gv
  br i1 %exitcond.not.i.i218, label %parse_symbol_encoding.exit219, label %.lr.ph.i24.i215, !llvm.loop !482

.lr.ph.i24.i215:                                  ; preds = %bb.bj, %bb.bk
  %.0812.i.i216 = phi i64 [ %i.gx, %bb.bk ], [ 0, %bb.bj ] ; 2 uses
  %i.gy = getelementptr i8, ptr %i.gw, i64 %.0812.i.i216
  %i.gz = load i8, ptr %i.gy, align 1, !tbaa !67
  %.not.i25.i217 = icmp sgt i8 %i.gz, -1
  br i1 %.not.i25.i217, label %bb.bk, label %parse_symbol_encoding.exit219

parse_symbol_encoding.exit219:                    ; preds = %.lr.ph.i24.i215, %bb.bk, %bb.bh, %bb.bj, %bb.bi
  %.0.i213 = phi i16 [ %i.gu, %bb.bi ], [ 18, %bb.bj ], [ 6, %bb.bh ], [ 18, %bb.bk ], [ 2, %.lr.ph.i24.i215 ]
  %i.ha = call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 13 uses
  %i.hb = icmp eq ptr %i.ha, null
  br i1 %i.hb, label %bb.bl, label %pm_node_alloc.exit.i220

bb.bl:                                            ; preds = %parse_symbol_encoding.exit219
  %i.hc = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.hd = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.hc, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_node_alloc.exit.i220:                          ; preds = %parse_symbol_encoding.exit219
  %i.he = load i32, ptr %4, align 8, !tbaa !126
  %i.hf = icmp eq i32 %i.he, 164                  ; 5 uses
  %.sroa.gep25 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.sroa.speculate.load.false = load ptr, ptr %.sroa.gep25, align 8, !tbaa !127 ; 3 uses
  %.sroa.speculated34 = select i1 %i.hf, ptr %.sroa.5.0, ptr %.sroa.speculate.load.false
  %i.hg = load i32, ptr %i.a, align 8, !tbaa !126
  %i.hh = icmp eq i32 %i.hg, 164
  br i1 %i.hh, label %pm_node_alloc.exit.i220.cont.thread, label %bb.bm

pm_node_alloc.exit.i220.cont.thread:              ; preds = %pm_node_alloc.exit.i220
  %i.hi = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hj = load ptr, ptr %i.hi, align 8
  %.sroa.6.0.i22396 = select i1 %i.hf, ptr null, ptr %.sroa.speculate.load.false
  %.sroa.8.0.i22497 = select i1 %i.hf, ptr null, ptr %i.hj
  br label %pm_symbol_node_create_unescaped.exit

bb.bm:                                            ; preds = %pm_node_alloc.exit.i220
  %.sroa.gep27 = getelementptr i8, ptr %0, i64 336
  %i.hk = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.hl = load ptr, ptr %i.hk, align 8
  %.sroa.6.0.i223 = select i1 %i.hf, ptr null, ptr %.sroa.speculate.load.false
  %.sroa.8.0.i224 = select i1 %i.hf, ptr null, ptr %i.hl
  %i.hm = getelementptr i8, ptr %0, i64 328
  %.else.val = load ptr, ptr %.sroa.gep27, align 8, !tbaa !128
  %i.hn = load <2 x ptr>, ptr %i.hm, align 8, !tbaa !14
  br label %pm_symbol_node_create_unescaped.exit

pm_symbol_node_create_unescaped.exit:             ; preds = %pm_node_alloc.exit.i220.cont.thread, %bb.bm
  %.sroa.8.0.i22499 = phi ptr [ %.sroa.8.0.i22497, %pm_node_alloc.exit.i220.cont.thread ], [ %.sroa.8.0.i224, %bb.bm ]
  %.sroa.6.0.i22398 = phi ptr [ %.sroa.6.0.i22396, %pm_node_alloc.exit.i220.cont.thread ], [ %.sroa.6.0.i223, %bb.bm ]
  %i.ho = phi ptr [ %.sroa.10.0, %pm_node_alloc.exit.i220.cont.thread ], [ %.else.val, %bb.bm ]
  %i.hp = phi <2 x ptr> [ splat (ptr null), %pm_node_alloc.exit.i220.cont.thread ], [ %i.hn, %bb.bm ]
  %.sink.in = load i32, ptr %0, align 8, !tbaa !109
  %.sink = add i32 %.sink.in, 1                   ; 2 uses
  store i32 %.sink, ptr %0, align 8, !tbaa !109
  %.sroa.16.0..sroa_idx.i227 = getelementptr inbounds nuw i8, ptr %i.ha, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.0..sroa_idx.i227, ptr noundef nonnull readonly align 8 dereferenceable(24) %5, i64 24, i1 false)
  store i16 143, ptr %i.ha, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i228 = getelementptr inbounds nuw i8, ptr %i.ha, i64 2
  store i16 %.0.i213, ptr %.sroa.2.0..sroa_idx.i228, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i229 = getelementptr inbounds nuw i8, ptr %i.ha, i64 4
  store i32 %.sink, ptr %.sroa.3.0..sroa_idx.i229, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i230 = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  store ptr %.sroa.speculated34, ptr %.sroa.4.0..sroa_idx.i230, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i231 = getelementptr inbounds nuw i8, ptr %i.ha, i64 16
  store ptr %i.ho, ptr %.sroa.5.0..sroa_idx.i231, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i232 = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  store ptr %.sroa.6.0.i22398, ptr %.sroa.6.0..sroa_idx.i232, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i233 = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  store ptr %.sroa.8.0.i22499, ptr %.sroa.8.0..sroa_idx.i233, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i234 = getelementptr inbounds nuw i8, ptr %i.ha, i64 40
  store ptr %.sroa.5.0, ptr %.sroa.10.0..sroa_idx.i234, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i235 = getelementptr inbounds nuw i8, ptr %i.ha, i64 48
  store ptr %.sroa.10.0, ptr %.sroa.11.0..sroa_idx.i235, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i236 = getelementptr inbounds nuw i8, ptr %i.ha, i64 56
  store <2 x ptr> %i.hp, ptr %.sroa.12.0..sroa_idx.i236, align 8, !tbaa !14
  br label %bb.bn

bb.bn:                                            ; preds = %pm_symbol_node_create_unescaped.exit, %pm_interpolated_symbol_node_closing_loc_set.exit206
  %.1 = phi ptr [ %i.ee, %pm_interpolated_symbol_node_closing_loc_set.exit206 ], [ %i.ha, %pm_symbol_node_create_unescaped.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  br label %bb.bo

bb.bo:                                            ; preds = %pm_string_node_to_symbol_node.exit, %pm_interpolated_symbol_node_closing_loc_set.exit, %bb.bn, %pm_node_alloc.exit.i.i122, %parse_symbol_encoding.exit, %bb.e
  %.2 = phi ptr [ %i.g, %parse_symbol_encoding.exit ], [ %i.f, %bb.e ], [ %i.am, %pm_node_alloc.exit.i.i122 ], [ %.1, %bb.bn ], [ %i.bi, %pm_string_node_to_symbol_node.exit ], [ %i.ch, %pm_interpolated_symbol_node_closing_loc_set.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret ptr %.2
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef nonnull ptr @context_human(i32 noundef range(i32 1, 0) %0) unnamed_addr #1 {
bb.a:
  %i.a = icmp ult i32 %0, 55
  br i1 %i.a, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 7914, ptr noundef nonnull @__PRETTY_FUNCTION__.context_human) #26
  unreachable

switch.lookup:                                    ; preds = %bb.a
  %switch.tableidx = add i32 %0, -1
  %i.b = zext nneg i32 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.context_human, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  ret ptr %switch.load
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @pm_assert_value_expression(ptr noundef %0, ptr noundef captures(address) %1) unnamed_addr #8 {
bb.a:
  %i.a = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %1) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val5 = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.d = getelementptr i8, ptr %0, i64 472
  %i.e = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.d, ptr noundef %.val, ptr noundef %.val5, i32 noundef 290) #27 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef readonly captures(address_is_null, ret: address, provenance) %1) unnamed_addr #1 {
bb.a:
  %.not184 = icmp eq ptr %1, null
  br i1 %.not184, label %.thread, label %.lr.ph189

.lr.ph189:                                        ; preds = %bb.a, %.thread156
  %.091186 = phi ptr [ %.899, %.thread156 ], [ %1, %bb.a ] ; 20 uses
  %.0100185 = phi ptr [ %.15, %.thread156 ], [ null, %bb.a ] ; 16 uses
  %i.a = load i16, ptr %.091186, align 8, !tbaa !115
  switch i16 %i.a, label %.thread [
    i16 132, label %bb.b
    i16 17, label %bb.b
    i16 107, label %bb.b
    i16 124, label %bb.b
    i16 131, label %bb.b
    i16 101, label %bb.b
    i16 98, label %bb.ab
    i16 11, label %bb.c
    i16 50, label %bb.n
    i16 116, label %bb.o
    i16 140, label %bb.p
    i16 67, label %bb.q
    i16 146, label %bb.u
    i16 47, label %bb.y
    i16 4, label %bb.z
    i16 114, label %bb.aa
  ]

bb.b:                                             ; preds = %.lr.ph189, %.lr.ph189, %.lr.ph189, %.lr.ph189, %.lr.ph189, %.lr.ph189
  %.not145 = icmp eq ptr %.0100185, null
  %i.b = select i1 %.not145, ptr %.091186, ptr %.0100185
  br label %.thread

bb.c:                                             ; preds = %.lr.ph189
  %i.c = getelementptr i8, ptr %.091186, i64 64   ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !508
  %.not136 = icmp eq ptr %i.d, null
  %i.e = getelementptr i8, ptr %.091186, i64 48   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !502  ; 2 uses
  %.not137 = icmp eq ptr %i.f, null               ; 2 uses
  br i1 %.not136, label %bb.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %.not137, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef nonnull %i.f) ; 2 uses
  %.not142 = icmp eq ptr %i.g, null
  br i1 %.not142, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = getelementptr i8, ptr %.091186, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !527  ; 2 uses
  %.not143 = icmp eq ptr %i.i, null
  br i1 %.not143, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.j = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef nonnull %i.i) ; 2 uses
  %.not144 = icmp eq ptr %i.j, null
  br i1 %.not144, label %bb.h, label %.thread

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !508
  br label %.thread156

bb.i:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %.091186, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !527  ; 3 uses
  br i1 %.not137, label %.thread156, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef nonnull %i.m) ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = icmp eq ptr %.0100185, null
  %spec.select = select i1 %i.q, ptr %i.o, ptr %.0100185 ; 2 uses
  %.0123179 = load ptr, ptr %i.e, align 8, !tbaa !505 ; 2 uses
  %.not138180 = icmp eq ptr %.0123179, null
  br i1 %.not138180, label %._crit_edge, label %.lr.ph

bb.m:                                             ; preds = %.lr.ph
  %i.r = getelementptr i8, ptr %.0123181, i64 112
  %.0123 = load ptr, ptr %i.r, align 8, !tbaa !505 ; 2 uses
  %.not138 = icmp eq ptr %.0123, null
  br i1 %.not138, label %._crit_edge, label %.lr.ph, !llvm.loop !606

.lr.ph:                                           ; preds = %bb.l, %bb.m
  %.0123181 = phi ptr [ %.0123, %bb.m ], [ %.0123179, %bb.l ] ; 2 uses
  %i.s = getelementptr i8, ptr %.0123181, i64 104
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !498
  %i.u = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %i.t)
  %.not139 = icmp eq ptr %i.u, null
  br i1 %.not139, label %._crit_edge, label %bb.m

._crit_edge:                                      ; preds = %bb.m, %.lr.ph, %bb.l
  %.5105 = phi ptr [ %spec.select, %bb.l ], [ null, %.lr.ph ], [ %spec.select, %bb.m ] ; 2 uses
  %i.v = getelementptr i8, ptr %.091186, i64 56
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !507  ; 2 uses
  %.not140.not = icmp eq ptr %i.w, null
  br i1 %.not140.not, label %.thread, label %.thread156

bb.n:                                             ; preds = %.lr.ph189
  %i.x = getelementptr i8, ptr %.091186, i64 40
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !607
  br label %.thread156

bb.o:                                             ; preds = %.lr.ph189
  %i.z = getelementptr i8, ptr %.091186, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !528
  br label %.thread156

bb.p:                                             ; preds = %.lr.ph189
  %i.ab = getelementptr i8, ptr %.091186, i64 24
  %i.ac = getelementptr i8, ptr %.091186, i64 40
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !104
  %i.ae = load i64, ptr %i.ab, align 8, !tbaa !101
  %i.af = getelementptr [8 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = getelementptr i8, ptr %i.af, i64 -8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !105
  br label %.thread156

bb.q:                                             ; preds = %.lr.ph189
  %i.ai = getelementptr i8, ptr %.091186, i64 64
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !609 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %.thread, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.al = getelementptr i8, ptr %.091186, i64 72  ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !545
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ao = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef nonnull %i.aj) ; 2 uses
  %.not174 = icmp eq ptr %i.ao, null
  br i1 %.not174, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = icmp eq ptr %.0100185, null
  %spec.select147 = select i1 %i.ap, ptr %i.ao, ptr %.0100185
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !545
  br label %.thread156

bb.u:                                             ; preds = %.lr.ph189
  %i.ar = getelementptr i8, ptr %.091186, i64 64
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !610 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %.thread, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.au = getelementptr i8, ptr %.091186, i64 72  ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !611
  %i.aw = icmp eq ptr %i.av, null
  br i1 %i.aw, label %.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ax = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef nonnull %i.as) ; 2 uses
  %.not173 = icmp eq ptr %i.ax, null
  br i1 %.not173, label %.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ay = icmp eq ptr %.0100185, null
  %spec.select148 = select i1 %i.ay, ptr %i.ax, ptr %.0100185
  %i.az = load ptr, ptr %i.au, align 8, !tbaa !611
  br label %.thread156

bb.y:                                             ; preds = %.lr.ph189
  %i.ba = getelementptr i8, ptr %.091186, i64 40
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !612
  br label %.thread156

bb.z:                                             ; preds = %.lr.ph189
  %i.bc = getelementptr i8, ptr %.091186, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !613
end_hunk_13
begin_hunk_14_@parse_and_validate_regular_expression_encoding_modifier:bb.a
  br i1 %i.l, label %bb.g, label %bb.n

bb.g:                                             ; preds = %bb.f
  br i1 %2, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.m = select i1 %i.b, i16 4096, i16 %3
  br label %bb.q

bb.i:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %0, i64 520
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !40   ; 3 uses
  %i.p = icmp eq ptr %i.o, getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 48)
  br i1 %i.p, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr i8, ptr %0, i64 472
  %i.r = getelementptr i8, ptr %0, i64 352
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !166
  %i.t = getelementptr i8, ptr %0, i64 360
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !76
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 80), align 16, !tbaa !276
  %i.w = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.q, ptr noundef %i.s, ptr noundef %i.u, i32 noundef 153, ptr noundef %i.v) #27 ; 0 uses
  br label %bb.q

bb.k:                                             ; preds = %bb.i
  %.not70 = icmp eq ptr %i.o, %5
  br i1 %.not70, label %bb.q, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr i8, ptr %0, i64 472        ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 352        ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !166
  %i.aa = getelementptr i8, ptr %0, i64 360       ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !76
  %i.ac = getelementptr i8, ptr %i.o, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !276
  %i.ae = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.x, ptr noundef %i.z, ptr noundef %i.ab, i32 noundef 247, i32 noundef %i.a, ptr noundef %i.ad) #27 ; 0 uses
  br i1 %i.b, label %bb.m, label %bb.q

bb.m:                                             ; preds = %bb.l
  %i.af = load ptr, ptr %i.y, align 8, !tbaa !166
  %i.ag = load ptr, ptr %i.aa, align 8, !tbaa !76
  %i.ah = tail call i64 @pm_string_length(ptr noundef nonnull %1) #27
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = tail call ptr @pm_string_source(ptr noundef nonnull %1) #27
  %i.ak = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.x, ptr noundef %i.af, ptr noundef %i.ag, i32 noundef 250, i32 noundef %i.ai, ptr noundef %i.aj) #27 ; 0 uses
  br label %bb.q

bb.n:                                             ; preds = %bb.f
  %.not68 = icmp ne i8 %4, 117
  %i.al = icmp eq ptr %i.k, @pm_encodings
  %or.cond74 = and i1 %.not68, %i.al
  br i1 %or.cond74, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.am = getelementptr i8, ptr %0, i64 520
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !40
  %.not69 = icmp eq ptr %i.an, @pm_encodings
  br i1 %.not69, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr i8, ptr %0, i64 472
  %i.ap = getelementptr i8, ptr %0, i64 352
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !166
  %i.ar = getelementptr i8, ptr %0, i64 360
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !76
  %i.at = tail call i64 @pm_string_length(ptr noundef nonnull %1) #27
  %i.au = trunc i64 %i.at to i32
  %i.av = tail call ptr @pm_string_source(ptr noundef nonnull %1) #27
  %i.aw = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.ao, ptr noundef %i.aq, ptr noundef %i.as, i32 noundef 248, i32 noundef %i.au, ptr noundef %i.av) #27 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.j, %bb.l, %bb.m, %bb.k, %bb.h
  %.0 = phi i16 [ %i.m, %bb.h ], [ %3, %bb.j ], [ %3, %bb.k ], [ %3, %bb.m ], [ %3, %bb.l ], [ %3, %bb.n ], [ %3, %bb.o ], [ %3, %bb.p ]
  ret i16 %.0
}

; Function Attrs: nofree nosync nounwind sspstrong memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @pm_conditional_predicate_warn_write_literal_p(ptr noundef readonly captures(none) %0) unnamed_addr #21 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !tbaa !115
  switch i16 %i.a, label %bb.i [
    i16 6, label %bb.b
    i16 65, label %bb.d
    i16 51, label %.critedge
    i16 54, label %.critedge
    i16 68, label %.critedge
    i16 82, label %.critedge
    i16 108, label %.critedge
    i16 123, label %.critedge
    i16 125, label %.critedge
    i16 136, label %.critedge
    i16 137, label %.critedge
    i16 138, label %.critedge
    i16 141, label %.critedge
    i16 143, label %.critedge
    i16 144, label %.critedge
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 2
  %i.c = load i16, ptr %i.b, align 2, !tbaa !116
  %i.d = and i16 %i.c, 2
  %.not31 = icmp eq i16 %i.d, 0
  br i1 %.not31, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !294  ; 2 uses
  %.not32.not47.not = icmp eq i64 %i.f, 0
  br i1 %.not32.not47.not, label %.critedge, label %.lr.ph49

.lr.ph49:                                         ; preds = %.preheader
  %i.g = getelementptr i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !668
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph49
  %.02448 = phi i64 [ 0, %.lr.ph49 ], [ %i.l, %bb.c ] ; 2 uses
  %i.i = getelementptr [8 x i8], ptr %i.h, i64 %.02448
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !105
  %i.k = tail call fastcc zeroext i1 @pm_conditional_predicate_warn_write_literal_p(ptr noundef %i.j) ; 2 uses
  %i.l = add nuw i64 %.02448, 1                   ; 2 uses
  %exitcond55.not = icmp ne i64 %i.l, %i.f
  %or.cond.not = select i1 %i.k, i1 %exitcond55.not, i1 false
  br i1 %or.cond.not, label %bb.c, label %.critedge, !llvm.loop !669

bb.d:                                             ; preds = %bb.a
  %i.m = getelementptr i8, ptr %0, i64 2
  %i.n = load i16, ptr %i.m, align 2, !tbaa !116
  %i.o = and i16 %i.n, 2
  %.not = icmp eq i16 %i.o, 0
  br i1 %.not, label %.preheader36, label %.critedge

.preheader36:                                     ; preds = %bb.d
  %i.p = getelementptr i8, ptr %0, i64 40
  %i.q = load i64, ptr %i.p, align 8, !tbaa !670  ; 2 uses
  %.not30.not39.not = icmp eq i64 %i.q, 0
  br i1 %.not30.not39.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader36
  %i.r = getelementptr i8, ptr %0, i64 56
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !671
  br label %bb.f

bb.e:                                             ; preds = %bb.h
  %i.t = add nuw i64 %.02540, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %i.q
  br i1 %exitcond.not, label %.critedge, label %bb.f, !llvm.loop !672

bb.f:                                             ; preds = %.lr.ph, %bb.e
  %.02540 = phi i64 [ 0, %.lr.ph ], [ %i.t, %bb.e ] ; 2 uses
  %i.u = getelementptr [8 x i8], ptr %i.s, i64 %.02540
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !105  ; 3 uses
  %i.w = load i16, ptr %i.v, align 8, !tbaa !115
  %i.x = icmp eq i16 %i.w, 8
  br i1 %i.x, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.v, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !129
  %i.aa = tail call fastcc zeroext i1 @pm_conditional_predicate_warn_write_literal_p(ptr noundef %i.z)
  br i1 %i.aa, label %bb.h, label %.critedge

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %i.v, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !673
  %i.ad = tail call fastcc zeroext i1 @pm_conditional_predicate_warn_write_literal_p(ptr noundef %i.ac)
  br i1 %i.ad, label %bb.e, label %.critedge

bb.i:                                             ; preds = %bb.a
  br label %.critedge

.critedge:                                        ; preds = %bb.f, %bb.h, %bb.g, %bb.e, %bb.c, %.preheader36, %.preheader, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.d, %bb.b, %bb.i
  %.7 = phi i1 [ false, %bb.i ], [ true, %bb.a ], [ true, %bb.b ], [ true, %bb.a ], [ true, %bb.d ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %.preheader36 ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %bb.a ], [ true, %.preheader ], [ %i.k, %bb.c ], [ true, %bb.e ], [ false, %bb.h ], [ false, %bb.g ], [ false, %bb.f ]
  ret i1 %.7
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @parse_assignment_values(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i16 noundef zeroext range(i16 2, 10002) %4) unnamed_addr #1 {
._crit_edge:
  %.not = icmp eq i32 %1, 2                       ; 2 uses
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 344
  %.val.i88.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !170 ; 2 uses
  %i.a = icmp ne i32 %.val.i88.pre, 159
  %.051 = or i1 %.not, %i.a
  %narrow = add nuw nsw i16 %4, 1                 ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 344        ; 5 uses
  %i.c = icmp eq i32 %.val.i88.pre, 159
  br i1 %i.c, label %bb.a, label %accept1.exit89

bb.a:                                             ; preds = %._crit_edge
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.3118.0..sroa_idx = getelementptr i8, ptr %0, i64 328
  %.sroa.3118.0.copyload = load ptr, ptr %.sroa.3118.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.4119.0..sroa_idx = getelementptr i8, ptr %0, i64 336
  %.sroa.4119.0.copyload = load ptr, ptr %.sroa.4119.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %i.d = add nuw nsw i16 %4, 2
  %i.e = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef %2, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 101, i16 noundef zeroext %i.d), !inline_history !493 ; 4 uses
  %i.f = tail call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.e), !inline_history !493 ; 3 uses
  %.not.i.i84 = icmp eq ptr %i.f, null
  br i1 %.not.i.i84, label %parse_value_expression.exit87, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %.val.i.i85 = load ptr, ptr %i.g, align 8, !tbaa !133
  %i.h = getelementptr i8, ptr %i.f, i64 16
  %.val5.i.i86 = load ptr, ptr %i.h, align 8, !tbaa !134
  %i.i = getelementptr i8, ptr %0, i64 472
  %i.j = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.i, ptr noundef %.val.i.i85, ptr noundef %.val5.i.i86, i32 noundef 290) #27, !inline_history !493 ; 0 uses
  br label %parse_value_expression.exit87

parse_value_expression.exit87:                    ; preds = %bb.a, %bb.b
  %i.k = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 9 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.c, label %pm_splat_node_create.exit

bb.c:                                             ; preds = %parse_value_expression.exit87
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.n = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.m, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_splat_node_create.exit:                        ; preds = %parse_value_expression.exit87
  %i.o = icmp eq ptr %i.e, null
  %storemerge.in.i = load i32, ptr %0, align 8, !tbaa !109
  %storemerge.i = add i32 %storemerge.in.i, 1     ; 2 uses
  store i32 %storemerge.i, ptr %0, align 8, !tbaa !109
  br i1 %i.o, label %pm_splat_node_create.exit.cont, label %pm_splat_node_create.exit.else

pm_splat_node_create.exit.else:                   ; preds = %pm_splat_node_create.exit
  %.sroa.gep116 = getelementptr i8, ptr %i.e, i64 16
  %.sroa.9.0.i.else.val = load ptr, ptr %.sroa.gep116, align 8, !tbaa !14
  br label %pm_splat_node_create.exit.cont

pm_splat_node_create.exit.cont:                   ; preds = %pm_splat_node_create.exit, %pm_splat_node_create.exit.else
  %.sroa.9.0.i = phi ptr [ %.sroa.4119.0.copyload, %pm_splat_node_create.exit ], [ %.sroa.9.0.i.else.val, %pm_splat_node_create.exit.else ]
  store i16 139, ptr %i.k, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i79 = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 %storemerge.i, ptr %.sroa.5.0..sroa_idx.i79, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx.i80 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.3118.0.copyload, ptr %.sroa.7.0..sroa_idx.i80, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i81 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %.sroa.9.0.i, ptr %.sroa.9.0..sroa_idx.i81, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i82 = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %.sroa.3118.0.copyload, ptr %.sroa.11.0..sroa_idx.i82, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %.sroa.4119.0.copyload, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr %i.e, ptr %.sroa.13.0..sroa_idx.i83, align 8, !tbaa !105
  br label %parse_starred_expression.exit

accept1.exit89:                                   ; preds = %._crit_edge
  %i.p = icmp eq i32 %1, 18
  %i.q = icmp ult i32 %1, 6
  %.in = select i1 %i.p, i1 %3, i1 %i.q
  %i.r = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef %2, i1 noundef zeroext %.in, i1 noundef zeroext false, i32 noundef 93, i16 noundef zeroext %narrow), !inline_history !493 ; 3 uses
  %i.s = tail call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.r), !inline_history !493 ; 3 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %parse_starred_expression.exit, label %bb.d

bb.d:                                             ; preds = %accept1.exit89
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val.i.i = load ptr, ptr %i.t, align 8, !tbaa !133
  %i.u = getelementptr i8, ptr %i.s, i64 16
  %.val5.i.i = load ptr, ptr %i.u, align 8, !tbaa !134
  %i.v = getelementptr i8, ptr %0, i64 472
  %i.w = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.v, ptr noundef %.val.i.i, ptr noundef %.val5.i.i, i32 noundef 290) #27, !inline_history !493 ; 0 uses
  br label %parse_starred_expression.exit

parse_starred_expression.exit:                    ; preds = %bb.d, %accept1.exit89, %pm_splat_node_create.exit.cont
  %.0.i = phi ptr [ %i.k, %pm_splat_node_create.exit.cont ], [ %i.r, %accept1.exit89 ], [ %i.r, %bb.d ] ; 11 uses
  br i1 %.051, label %bb.f, label %bb.e

bb.e:                                             ; preds = %parse_starred_expression.exit
  %i.x = getelementptr i8, ptr %.0.i, i64 8
  %.val61 = load ptr, ptr %i.x, align 8, !tbaa !133
  %i.y = getelementptr i8, ptr %.0.i, i64 16
  %.val62 = load ptr, ptr %i.y, align 8, !tbaa !134
  %i.z = getelementptr i8, ptr %0, i64 472
  %i.aa = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.z, ptr noundef %.val61, ptr noundef %.val62, i32 noundef 283) #27 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %parse_starred_expression.exit
  tail call fastcc void @parse_assignment_value_local(ptr noundef nonnull %0, ptr noundef %.0.i)
  br i1 %.not, label %bb.g, label %accept1.exit.thread125thread-pre-split

bb.g:                                             ; preds = %bb.f
  %i.ab = load i16, ptr %.0.i, align 8, !tbaa !115
  %i.ac = icmp eq i16 %i.ab, 139
  br i1 %i.ac, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val59 = load i32, ptr %i.b, align 8, !tbaa !170 ; 2 uses
  %i.ad = icmp eq i32 %.val59, 3
  br i1 %i.ad, label %bb.i, label %accept1.exit.thread125

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ae = getelementptr i8, ptr %0, i64 304
  %.val63 = load ptr, ptr %i.ae, align 8, !tbaa !74
  %i.af = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 10 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.ai = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ah, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 80) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.aj = load i32, ptr %0, align 8, !tbaa !109
  %i.ak = add i32 %i.aj, 1                        ; 2 uses
  store i32 %i.ak, ptr %0, align 8, !tbaa !109
  store i16 6, ptr %i.af, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 2 ; 9 uses
  store i16 2, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  store i32 %i.ak, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 3 uses
  store ptr %.val63, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.al = getelementptr i8, ptr %i.af, i64 24     ; 3 uses
  %i.am = getelementptr i8, ptr %.0.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !133
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !299
  tail call void @pm_node_list_append(ptr noundef nonnull %i.al, ptr noundef nonnull %.0.i) #27
  %i.ao = getelementptr i8, ptr %.0.i, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !134
  store ptr %i.ap, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !300
  %i.aq = load i16, ptr %.0.i, align 8, !tbaa !115 ; 2 uses
  switch i16 %i.aq, label %bb.l [
    i16 6, label %bb.m
    i16 65, label %bb.m
    i16 122, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ar = getelementptr i8, ptr %.0.i, i64 2
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !116
  %i.at = and i16 %i.as, 2
  %.not16.i = icmp eq i16 %i.at, 0
  br i1 %.not16.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.k, %bb.k
  %i.au = load i16, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !116
  %i.av = and i16 %i.au, -3
  store i16 %i.av, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !116
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.aw = icmp eq i16 %i.aq, 139
  br i1 %i.aw, label %bb.o, label %pm_array_node_elements_append.exit

bb.o:                                             ; preds = %bb.n
  %i.ax = load i16, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !116
  %i.ay = or i16 %i.ax, 4
  store i16 %i.ay, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !116
  br label %pm_array_node_elements_append.exit

pm_array_node_elements_append.exit:               ; preds = %bb.n, %bb.o
  %.val.i131 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.az = icmp eq i32 %.val.i131, 3
  br i1 %i.az, label %.lr.ph, label %accept1.exit

.lr.ph:                                           ; preds = %pm_array_node_elements_append.exit
  %i.ba = getelementptr i8, ptr %0, i64 472       ; 2 uses
  %.sroa.3122.0..sroa_idx = getelementptr i8, ptr %0, i64 328
  %.sroa.4123.0..sroa_idx = getelementptr i8, ptr %0, i64 336
  %i.bb = add nuw nsw i16 %4, 2
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.aa
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i112 = load i32, ptr %i.b, align 8, !tbaa !170
  %i.bc = icmp eq i32 %.val.i112, 159
  br i1 %i.bc, label %bb.q, label %accept1.exit113

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.3122.0.copyload = load ptr, ptr %.sroa.3122.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %.sroa.4123.0.copyload = load ptr, ptr %.sroa.4123.0..sroa_idx, align 8, !tbaa !14 ; 2 uses
  %i.bd = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef %2, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 101, i16 noundef zeroext %i.bb), !inline_history !493 ; 4 uses
  %i.be = tail call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.bd), !inline_history !493 ; 3 uses
  %.not.i.i108 = icmp eq ptr %i.be, null
  br i1 %.not.i.i108, label %parse_value_expression.exit111, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bf = getelementptr i8, ptr %i.be, i64 8
  %.val.i.i109 = load ptr, ptr %i.bf, align 8, !tbaa !133
  %i.bg = getelementptr i8, ptr %i.be, i64 16
  %.val5.i.i110 = load ptr, ptr %i.bg, align 8, !tbaa !134
  %i.bh = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ba, ptr noundef %.val.i.i109, ptr noundef %.val5.i.i110, i32 noundef 290) #27, !inline_history !493 ; 0 uses
  br label %parse_value_expression.exit111

parse_value_expression.exit111:                   ; preds = %bb.q, %bb.r
  %i.bi = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 9 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.s, label %pm_splat_node_create.exit107

bb.s:                                             ; preds = %parse_value_expression.exit111
  %i.bk = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.bl = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bk, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_splat_node_create.exit107:                     ; preds = %parse_value_expression.exit111
  %i.bm = icmp eq ptr %i.bd, null
  %storemerge.in.i95 = load i32, ptr %0, align 8, !tbaa !109
  %storemerge.i96 = add i32 %storemerge.in.i95, 1 ; 2 uses
  store i32 %storemerge.i96, ptr %0, align 8, !tbaa !109
  br i1 %i.bm, label %pm_splat_node_create.exit107.cont, label %pm_splat_node_create.exit107.else

pm_splat_node_create.exit107.else:                ; preds = %pm_splat_node_create.exit107
  %.sroa.gep120 = getelementptr i8, ptr %i.bd, i64 16
  %.sroa.9.0.i100.else.val = load ptr, ptr %.sroa.gep120, align 8, !tbaa !14
  br label %pm_splat_node_create.exit107.cont

pm_splat_node_create.exit107.cont:                ; preds = %pm_splat_node_create.exit107, %pm_splat_node_create.exit107.else
  %.sroa.9.0.i100 = phi ptr [ %.sroa.4123.0.copyload, %pm_splat_node_create.exit107 ], [ %.sroa.9.0.i100.else.val, %pm_splat_node_create.exit107.else ]
  store i16 139, ptr %i.bi, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i101 = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  store i32 %storemerge.i96, ptr %.sroa.5.0..sroa_idx.i101, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx.i102 = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %.sroa.3122.0.copyload, ptr %.sroa.7.0..sroa_idx.i102, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %.sroa.9.0.i100, ptr %.sroa.9.0..sroa_idx.i103, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i104 = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %.sroa.3122.0.copyload, ptr %.sroa.11.0..sroa_idx.i104, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i105 = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store ptr %.sroa.4123.0.copyload, ptr %.sroa.12.0..sroa_idx.i105, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx.i106 = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store ptr %i.bd, ptr %.sroa.13.0..sroa_idx.i106, align 8, !tbaa !105
  br label %parse_starred_expression.exit67

accept1.exit113:                                  ; preds = %bb.p
  %i.bn = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef %2, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 26, i16 noundef zeroext %narrow), !inline_history !493 ; 3 uses
  %i.bo = tail call fastcc ptr @pm_check_value_expression(ptr noundef nonnull %0, ptr noundef %i.bn), !inline_history !493 ; 3 uses
  %.not.i.i90 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i90, label %parse_starred_expression.exit67, label %bb.t

bb.t:                                             ; preds = %accept1.exit113
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %.val.i.i91 = load ptr, ptr %i.bp, align 8, !tbaa !133
  %i.bq = getelementptr i8, ptr %i.bo, i64 16
  %.val5.i.i92 = load ptr, ptr %i.bq, align 8, !tbaa !134
  %i.br = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.ba, ptr noundef %.val.i.i91, ptr noundef %.val5.i.i92, i32 noundef 290) #27, !inline_history !493 ; 0 uses
  br label %parse_starred_expression.exit67

parse_starred_expression.exit67:                  ; preds = %bb.t, %accept1.exit113, %pm_splat_node_create.exit107.cont
  %.0.i66 = phi ptr [ %i.bi, %pm_splat_node_create.exit107.cont ], [ %i.bn, %accept1.exit113 ], [ %i.bn, %bb.t ] ; 6 uses
  %i.bs = load i64, ptr %i.al, align 8, !tbaa !294
  %.not.i68 = icmp eq i64 %i.bs, 0
  br i1 %.not.i68, label %bb.u, label %bb.w

bb.u:                                             ; preds = %parse_starred_expression.exit67
  %i.bt = load ptr, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !298
  %.not15.i70 = icmp eq ptr %i.bt, null
  br i1 %.not15.i70, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bu = getelementptr i8, ptr %.0.i66, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !133
  store ptr %i.bv, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !299
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %parse_starred_expression.exit67
  tail call void @pm_node_list_append(ptr noundef nonnull %i.al, ptr noundef %.0.i66) #27
  %i.bw = getelementptr i8, ptr %.0.i66, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !134
  store ptr %i.bx, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !300
  %i.by = load i16, ptr %.0.i66, align 8, !tbaa !115 ; 2 uses
  switch i16 %i.by, label %bb.x [
    i16 6, label %bb.y
    i16 65, label %bb.y
    i16 122, label %bb.y
  ]

bb.x:                                             ; preds = %bb.w
  %i.bz = getelementptr i8, ptr %.0.i66, i64 2
  %i.ca = load i16, ptr %i.bz, align 2, !tbaa !116
  %i.cb = and i16 %i.ca, 2
  %.not16.i69 = icmp eq i16 %i.cb, 0
  br i1 %.not16.i69, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.w, %bb.w
  %i.cc = load i16, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !116
  %i.cd = and i16 %i.cc, -3
  store i16 %i.cd, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !116
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  switch i16 %i.by, label %bb.aa [
    i16 139, label %pm_array_node_elements_append.exit71.thread
    i16 103, label %accept1.exit
  ]

pm_array_node_elements_append.exit71.thread:      ; preds = %bb.z
  %i.ce = load i16, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !116
  %i.cf = or i16 %i.ce, 4
  store i16 %i.cf, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !116
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %pm_array_node_elements_append.exit71.thread
  tail call fastcc void @parse_assignment_value_local(ptr noundef nonnull %0, ptr noundef nonnull %.0.i66)
  %.val.i = load i32, ptr %i.b, align 8, !tbaa !170
  %i.cg = icmp eq i32 %.val.i, 3
  br i1 %i.cg, label %bb.p, label %accept1.exit

accept1.exit:                                     ; preds = %bb.aa, %bb.z, %pm_array_node_elements_append.exit
  %i.ch = icmp eq i32 %2, 17
  br i1 %i.ch, label %accept1.exit.thread125thread-pre-split, label %bb.ah

accept1.exit.thread125thread-pre-split:           ; preds = %accept1.exit, %bb.f
  %.054129.ph = phi ptr [ %.0.i, %bb.f ], [ %i.af, %accept1.exit ]
  %.val.pr = load i32, ptr %i.b, align 8, !tbaa !170
  br label %accept1.exit.thread125

accept1.exit.thread125:                           ; preds = %accept1.exit.thread125thread-pre-split, %bb.h
  %.val = phi i32 [ %.val.pr, %accept1.exit.thread125thread-pre-split ], [ %.val59, %bb.h ]
  %.054129 = phi ptr [ %.054129.ph, %accept1.exit.thread125thread-pre-split ], [ %.0.i, %bb.h ] ; 6 uses
  %i.ci = icmp eq i32 %.val, 94
  br i1 %i.ci, label %bb.ab, label %bb.ah

bb.ab:                                            ; preds = %accept1.exit.thread125
  %i.cj = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not130 = icmp eq ptr %i.cj, null
  br i1 %.not130, label %context_push.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  store i32 46, ptr %i.cj, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i72 = getelementptr inbounds nuw i8, ptr %i.cj, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i72, align 4
  %.sroa.3.0..sroa_idx.i73 = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.ck = getelementptr i8, ptr %0, i64 504       ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !253
  store ptr %i.cl, ptr %.sroa.3.0..sroa_idx.i73, align 8
  store ptr %i.cj, ptr %i.ck, align 8, !tbaa !253
  br label %context_push.exit

context_push.exit:                                ; preds = %bb.ab, %bb.ac
  %.sroa.3.0..sroa_idx = getelementptr i8, ptr %0, i64 352
  %i.cm = load <2 x ptr>, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !14
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.cn = load i16, ptr %.054129, align 8, !tbaa !115
  %i.co = icmp eq i16 %i.cn, 19
  br i1 %i.co, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %context_push.exit
  %i.cp = getelementptr i8, ptr %.054129, i64 88
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !117
  %.not57 = icmp eq ptr %i.cq, null
  br i1 %.not57, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cr = getelementptr i8, ptr %.054129, i64 72
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !288
  %i.ct = icmp eq ptr %i.cs, null
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %context_push.exit
  %.1 = phi i1 [ false, %context_push.exit ], [ false, %bb.ad ], [ %i.ct, %bb.ae ]
  %i.cu = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 13, i1 noundef zeroext %.1, i1 noundef zeroext false, i32 noundef 256, i16 noundef zeroext %narrow) ; 2 uses
  %i.cv = getelementptr i8, ptr %0, i64 504       ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !253 ; 2 uses
  %i.cx = getelementptr i8, ptr %i.cw, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !257
  tail call void @free(ptr noundef %i.cw) #27
  store ptr %i.cy, ptr %i.cv, align 8, !tbaa !253
  %i.cz = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #30 ; 9 uses
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %bb.ag, label %pm_rescue_modifier_node_create.exit

bb.ag:                                            ; preds = %bb.af
  %i.db = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.dc = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.db, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 56) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_rescue_modifier_node_create.exit:              ; preds = %bb.af
  %i.dd = load i32, ptr %0, align 8, !tbaa !109
  %i.de = add i32 %i.dd, 1                        ; 2 uses
  store i32 %i.de, ptr %0, align 8, !tbaa !109
  %i.df = getelementptr i8, ptr %.054129, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !133
  %i.dh = getelementptr i8, ptr %i.cu, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !134
  store i16 128, ptr %i.cz, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i74 = getelementptr inbounds nuw i8, ptr %i.cz, i64 4
  store i32 %i.de, ptr %.sroa.3.0..sroa_idx.i74, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i75 = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  store ptr %i.dg, ptr %.sroa.4.0..sroa_idx.i75, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i76 = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store ptr %i.di, ptr %.sroa.5.0..sroa_idx.i76, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  store ptr %.054129, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !105
  %.sroa.7.0..sroa_idx.i77 = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  store <2 x ptr> %i.cm, ptr %.sroa.7.0..sroa_idx.i77, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i78 = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  store ptr %i.cu, ptr %.sroa.9.0..sroa_idx.i78, align 8, !tbaa !105
  br label %bb.ah

bb.ah:                                            ; preds = %accept1.exit.thread125, %accept1.exit, %pm_rescue_modifier_node_create.exit
  %.0 = phi ptr [ %i.cz, %pm_rescue_modifier_node_create.exit ], [ %i.af, %accept1.exit ], [ %.054129, %accept1.exit.thread125 ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc ptr @parse_write(ptr noundef %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.pm_location_t, align 8      ; 6 uses
  %i.a = load i16, ptr %1, align 8, !tbaa !115
  switch i16 %i.a, label %bb.cl [
    i16 103, label %bb.b
    i16 30, label %bb.c
    i16 37, label %bb.g
    i16 42, label %bb.p
    i16 10, label %bb.y
    i16 111, label %bb.y
    i16 62, label %bb.z
    i16 96, label %bb.ai
    i16 88, label %bb.as
    i16 79, label %bb.ay
    i16 105, label %bb.bd
    i16 139, label %bb.be
    i16 19, label %bb.bi
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @pm_node_destroy(ptr noundef %0, ptr noundef %3) #27
  br label %parse_shareable_constant_write.exit

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 11 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.d, label %pm_node_alloc.exit.i

bb.d:                                             ; preds = %bb.c
end_hunk_14
begin_hunk_15_@parse_write:bb.a
  %i.ly = load i16, ptr %i.lx, align 8, !tbaa !115
  %i.lz = icmp eq i16 %i.ly, 90
  br i1 %i.lz, label %bb.cg, label %bb.cd

bb.cg:                                            ; preds = %bb.cf
  %i.ma = getelementptr i8, ptr %i.lx, i64 8
  %.val20.i = load ptr, ptr %i.ma, align 8, !tbaa !133
  %i.mb = getelementptr i8, ptr %i.lx, i64 16
  %.val21.i = load ptr, ptr %i.mb, align 8, !tbaa !134
  %i.mc = getelementptr i8, ptr %0, i64 472
  %i.md = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.mc, ptr noundef %.val20.i, ptr noundef %.val21.i, i32 noundef 281) #27 ; 0 uses
  br label %.critedge.i

.critedge.i:                                      ; preds = %bb.ce, %bb.cd, %bb.cg, %.preheader.i, %bb.cc, %bb.cb
  %.not18.i = icmp eq ptr %i.lk, null
  br i1 %.not18.i, label %pm_index_arguments_check.exit, label %bb.ch

bb.ch:                                            ; preds = %.critedge.i
  %i.me = getelementptr i8, ptr %i.lk, i64 8
  %.val.i302 = load ptr, ptr %i.me, align 8, !tbaa !133
  %i.mf = getelementptr i8, ptr %i.lk, i64 16
  %.val19.i = load ptr, ptr %i.mf, align 8, !tbaa !134
  %i.mg = getelementptr i8, ptr %0, i64 472
  %i.mh = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.mg, ptr noundef %.val.i302, ptr noundef %.val19.i, i32 noundef 280) #27 ; 0 uses
  br label %pm_index_arguments_check.exit

pm_index_arguments_check.exit:                    ; preds = %pm_arguments_node_arguments_append.exit, %.critedge.i, %bb.ch
  %i.mi = load i16, ptr %3, align 8, !tbaa !115
  %i.mj = icmp eq i16 %i.mi, 6
  br i1 %i.mj, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %pm_index_arguments_check.exit
  %i.mk = getelementptr i8, ptr %3, i64 48
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !298
  %i.mm = icmp eq ptr %i.ml, null
  br i1 %i.mm, label %pm_implicit_array_write_flags.exit304, label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %pm_index_arguments_check.exit
  br label %pm_implicit_array_write_flags.exit304

pm_implicit_array_write_flags.exit304:            ; preds = %bb.ci, %bb.cj
  %.0.i303 = phi i16 [ 16, %bb.cj ], [ 80, %bb.ci ]
  %i.mn = load i16, ptr %i.kc, align 2, !tbaa !116
  %i.mo = or i16 %i.mn, %.0.i303
  store i16 %i.mo, ptr %i.kc, align 2, !tbaa !116
  br label %parse_shareable_constant_write.exit

bb.ck:                                            ; preds = %bb.bt
  tail call void @pm_visit_node(ptr noundef %3, ptr noundef nonnull @pm_node_unreference_each, ptr noundef %0) #27
  tail call void @pm_node_destroy(ptr noundef %0, ptr noundef %3) #27
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.a
  %i.mp = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.mp, align 8, !tbaa !127
  %i.mq = getelementptr i8, ptr %2, i64 16
  %.val185 = load ptr, ptr %i.mq, align 8, !tbaa !128
  %i.mr = getelementptr i8, ptr %0, i64 472
  %i.ms = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.mr, ptr noundef %.val, ptr noundef %.val185, i32 noundef 294) #27 ; 0 uses
  br label %parse_shareable_constant_write.exit

parse_shareable_constant_write.exit:              ; preds = %pm_implicit_array_write_flags.exit304, %pm_implicit_array_write_flags.exit, %bb.bo, %pm_shareable_constant_node_create.exit.i226, %context_def_p.exit222, %pm_shareable_constant_node_create.exit.i, %context_def_p.exit, %bb.cl, %pm_multi_target_node_create.exit, %bb.bd, %pm_instance_variable_write_node_create.exit, %pm_local_variable_write_node_create.exit281, %pm_local_variable_write_node_create.exit, %pm_global_variable_write_node_create.exit, %pm_class_variable_write_node_create.exit, %bb.b
  %.1 = phi ptr [ %1, %bb.cl ], [ %1, %bb.b ], [ %i.b, %pm_class_variable_write_node_create.exit ], [ %i.bd, %context_def_p.exit222 ], [ %i.v, %context_def_p.exit ], [ %i.cx, %pm_global_variable_write_node_create.exit ], [ %i.ff, %pm_local_variable_write_node_create.exit ], [ %i.gd, %pm_local_variable_write_node_create.exit281 ], [ %i.gw, %pm_instance_variable_write_node_create.exit ], [ %i.ht, %bb.bd ], [ %i.id, %pm_multi_target_node_create.exit ], [ %i.aw, %pm_shareable_constant_node_create.exit.i ], [ %i.cg, %pm_shareable_constant_node_create.exit.i226 ], [ %1, %pm_implicit_array_write_flags.exit304 ], [ %1, %pm_implicit_array_write_flags.exit ], [ %i.jf, %bb.bo ]
  ret ptr %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @parse_unwriteable_write(ptr noundef %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !115
  switch i16 %i.a, label %bb.h [
    i16 136, label %.sink.split
    i16 51, label %bb.b
    i16 137, label %bb.c
    i16 138, label %bb.d
    i16 108, label %bb.e
    i16 133, label %bb.f
    i16 144, label %bb.g
  ]

bb.b:                                             ; preds = %bb.a
  br label %.sink.split

bb.c:                                             ; preds = %bb.a
  br label %.sink.split

bb.d:                                             ; preds = %bb.a
  br label %.sink.split

bb.e:                                             ; preds = %bb.a
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  br label %.sink.split

bb.g:                                             ; preds = %bb.a
  br label %.sink.split

.sink.split:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g
  %.sink39 = phi i32 [ 125, %bb.g ], [ 124, %bb.f ], [ 122, %bb.e ], [ 121, %bb.d ], [ 120, %bb.c ], [ 119, %bb.b ], [ 118, %bb.a ]
  %i.b = getelementptr i8, ptr %2, i64 8
  %.val = load ptr, ptr %i.b, align 8, !tbaa !127
  %i.c = getelementptr i8, ptr %2, i64 16
  %.val25 = load ptr, ptr %i.c, align 8, !tbaa !128
  %i.d = getelementptr i8, ptr %0, i64 472
  %i.e = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.d, ptr noundef %.val, ptr noundef %.val25, i32 noundef %.sink39) #27 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.sink.split, %bb.a
  %i.f = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !133  ; 3 uses
  %i.h = getelementptr i8, ptr %1, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !134  ; 2 uses
  %i.j = getelementptr i8, ptr %0, i64 576
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = ptrtoint ptr %i.g to i64
  %i.m = sub i64 %i.k, %i.l
  %i.n = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.j, ptr noundef %i.g, i64 noundef %i.m) #27 ; 3 uses
  %.not.i = icmp eq i32 %i.n, 0
  br i1 %.not.i, label %pm_parser_local_add_location.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr i8, ptr %0, i64 496
  %.val.i = load ptr, ptr %i.o, align 8, !tbaa !59
  tail call fastcc void @pm_parser_local_add(ptr %.val.i, i32 noundef %i.n, ptr noundef %i.g, ptr noundef %i.i, i32 noundef 1)
  br label %pm_parser_local_add_location.exit

pm_parser_local_add_location.exit:                ; preds = %bb.h, %bb.i
  %i.p = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 11 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.j, label %pm_node_alloc.exit.i

bb.j:                                             ; preds = %pm_parser_local_add_location.exit
  %i.r = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.s = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.r, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 72) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit.i:                             ; preds = %pm_parser_local_add_location.exit
  %i.t = load i16, ptr %3, align 8, !tbaa !115
  %i.u = icmp eq i16 %i.t, 6
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %pm_node_alloc.exit.i
  %i.v = getelementptr i8, ptr %3, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !298
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %pm_implicit_array_write_flags.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k, %pm_node_alloc.exit.i
  br label %pm_implicit_array_write_flags.exit.i

pm_implicit_array_write_flags.exit.i:             ; preds = %bb.l, %bb.k
  %.0.i.i = phi i16 [ 0, %bb.l ], [ 4, %bb.k ]
  %i.y = load i32, ptr %0, align 8, !tbaa !109
  %i.z = add i32 %i.y, 1                          ; 2 uses
  store i32 %i.z, ptr %0, align 8, !tbaa !109
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !283
  %i.ab = getelementptr i8, ptr %3, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !134
  %i.ad = load i32, ptr %2, align 8, !tbaa !126
  %i.ae = icmp eq i32 %i.ad, 164
  br i1 %i.ae, label %pm_local_variable_write_node_create.exit, label %bb.m

bb.m:                                             ; preds = %pm_implicit_array_write_flags.exit.i
  %i.af = getelementptr i8, ptr %2, i64 8
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !14
  br label %pm_local_variable_write_node_create.exit

pm_local_variable_write_node_create.exit:         ; preds = %pm_implicit_array_write_flags.exit.i, %bb.m
  %i.ah = phi <2 x ptr> [ %i.ag, %bb.m ], [ splat (ptr null), %pm_implicit_array_write_flags.exit.i ]
  store i16 98, ptr %i.p, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 2
  store i16 %.0.i.i, ptr %.sroa.2.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  store i32 %i.z, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.aa, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store ptr %i.ac, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store i32 %i.n, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !7
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.f, i64 16, i1 false)
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %3, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !105
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  store <2 x ptr> %i.ah, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !14
  tail call void @pm_node_destroy(ptr noundef nonnull %0, ptr noundef nonnull %1) #27
  ret ptr %i.p
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @parse_assignment_value(ptr noundef %0, i32 noundef %1, i32 noundef %2, i1 noundef zeroext %3, i32 noundef range(i32 91, 98) %4, i16 noundef zeroext range(i16 2, 10002) %5) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %1, 18
  %i.b = icmp ult i32 %1, 12
  %.in = select i1 %i.a, i1 %3, i1 %i.b
  %narrow = add nuw nsw i16 %5, 1                 ; 2 uses
  %i.c = tail call fastcc ptr @parse_expression(ptr noundef %0, i32 noundef %2, i1 noundef zeroext %.in, i1 noundef zeroext false, i32 noundef range(i32 26, 256) %4, i16 noundef zeroext %narrow), !inline_history !297 ; 4 uses
  %i.d = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %i.c) ; 3 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %pm_assert_value_expression.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %.val.i = load ptr, ptr %i.e, align 8, !tbaa !133
  %i.f = getelementptr i8, ptr %i.d, i64 16
  %.val5.i = load ptr, ptr %i.f, align 8, !tbaa !134
  %i.g = getelementptr i8, ptr %0, i64 472
  %i.h = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.g, ptr noundef %.val.i, ptr noundef %.val5.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

pm_assert_value_expression.exit:                  ; preds = %bb.a, %bb.b
  %i.i = getelementptr i8, ptr %0, i64 344
  %.val = load i32, ptr %i.i, align 8, !tbaa !170
  %i.j = icmp eq i32 %.val, 94
  br i1 %i.j, label %bb.c, label %bb.f

bb.c:                                             ; preds = %pm_assert_value_expression.exit
  %i.k = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %context_push.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 46, ptr %i.k, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i, align 4
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.l = getelementptr i8, ptr %0, i64 504        ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !253
  store ptr %i.m, ptr %.sroa.3.0..sroa_idx.i, align 8
  store ptr %i.k, ptr %i.l, align 8, !tbaa !253
  br label %context_push.exit

context_push.exit:                                ; preds = %bb.c, %bb.d
  %.sroa.3.0..sroa_idx = getelementptr i8, ptr %0, i64 352
  %i.n = load <2 x ptr>, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !14
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.o = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef 13, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 256, i16 noundef zeroext %narrow) ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 504        ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !253  ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !257
  tail call void @free(ptr noundef %i.q) #27
  store ptr %i.s, ptr %i.p, align 8, !tbaa !253
  %i.t = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #30 ; 9 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.e, label %pm_rescue_modifier_node_create.exit

bb.e:                                             ; preds = %context_push.exit
  %i.v = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.w = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.v, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 56) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_rescue_modifier_node_create.exit:              ; preds = %context_push.exit
  %i.x = load i32, ptr %0, align 8, !tbaa !109
  %i.y = add i32 %i.x, 1                          ; 2 uses
  store i32 %i.y, ptr %0, align 8, !tbaa !109
  %i.z = getelementptr i8, ptr %i.c, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !133
  %i.ab = getelementptr i8, ptr %i.o, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !134
  store i16 128, ptr %i.t, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i21 = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store i32 %i.y, ptr %.sroa.3.0..sroa_idx.i21, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.aa, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.ac, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.c, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !105
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store <2 x ptr> %i.n, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.t, i64 48
  store ptr %i.o, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !105
  br label %bb.f

bb.f:                                             ; preds = %pm_assert_value_expression.exit, %pm_rescue_modifier_node_create.exit
  %.0 = phi ptr [ %i.t, %pm_rescue_modifier_node_create.exit ], [ %i.c, %pm_assert_value_expression.exit ]
  ret ptr %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_global_variable_and_write_node_create(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 20
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.2, i32 noundef 4167, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_global_variable_and_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 10 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 72) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !133  ; 3 uses
  %i.k = getelementptr i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134
  %i.m = load i16, ptr %1, align 8, !tbaa !115
  switch i16 %i.m, label %bb.h [
    i16 62, label %bb.e
    i16 10, label %bb.f
    i16 111, label %bb.g
  ]

bb.e:                                             ; preds = %pm_node_alloc.exit
  %i.n = getelementptr i8, ptr %1, i64 24
  %i.o = load i32, ptr %i.n, align 8, !tbaa !423
  br label %pm_global_variable_write_name.exit

bb.f:                                             ; preds = %pm_node_alloc.exit
  %i.p = getelementptr i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !425
  br label %pm_global_variable_write_name.exit

bb.g:                                             ; preds = %pm_node_alloc.exit
  %i.r = getelementptr i8, ptr %1, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !134
  %i.t = getelementptr i8, ptr %0, i64 576
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = ptrtoint ptr %i.j to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.t, ptr noundef %i.j, i64 noundef %i.w) #27
  br label %pm_global_variable_write_name.exit

bb.h:                                             ; preds = %pm_node_alloc.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 4157, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_global_variable_write_name) #26
  unreachable

pm_global_variable_write_name.exit:               ; preds = %bb.e, %bb.f, %bb.g
  %.0.i = phi i32 [ %i.o, %bb.e ], [ %i.q, %bb.f ], [ %i.x, %bb.g ]
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  %i.y = getelementptr i8, ptr %2, i64 8
  store i16 59, ptr %i.c, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %.0.i, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.z = load <2 x ptr>, ptr %i.y, align 8, !tbaa !14
  store <2 x ptr> %i.z, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %3, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !105
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_class_variable_and_write_node_create(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %2, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 20
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.234, ptr noundef nonnull @.str.2, i32 noundef 3270, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_class_variable_and_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 10 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 72) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !133
  %i.k = getelementptr i8, ptr %3, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !134
  %i.m = getelementptr i8, ptr %1, i64 24
  %i.n = load i32, ptr %i.m, align 8, !tbaa !674
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
end_hunk_15
begin_hunk_16_@pm_index_operator_write_node_create:bb.a
  %i.al = add i32 %i.ak, 1                        ; 2 uses
  store i32 %i.al, ptr %0, align 8, !tbaa !109
  %i.am = getelementptr i8, ptr %1, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !133
  %i.ao = getelementptr i8, ptr %3, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !134
  %i.aq = getelementptr i8, ptr %1, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !125
  %i.as = getelementptr i8, ptr %1, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false)
  %i.at = getelementptr i8, ptr %1, i64 72
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.at, i64 16, i1 false)
  %i.au = load ptr, ptr %i.e, align 8, !tbaa !117
  %i.av = getelementptr i8, ptr %1, i64 96
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.10.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false)
  %i.aw = getelementptr i8, ptr %2, i64 8         ; 2 uses
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !127 ; 2 uses
  %i.ay = getelementptr i8, ptr %2, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !128
  %i.ba = getelementptr i8, ptr %i.az, i64 -1
  %i.bb = getelementptr i8, ptr %0, i64 576
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = ptrtoint ptr %i.ax to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.bb, ptr noundef %i.ax, i64 noundef %i.be) #27
  store i16 73, ptr %i.a, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %i.aj, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.al, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.an, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ap, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.ar, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %i.au, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !511
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.af, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !536
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i32 %i.bf, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !7
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.bg = load <2 x ptr>, ptr %i.aw, align 8, !tbaa !14
  store <2 x ptr> %i.bg, ptr %.sroa.14.0..sroa_idx, align 8, !tbaa !14
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %3, ptr %.sroa.16.0..sroa_idx, align 8, !tbaa !105
  tail call void @free(ptr noundef nonnull %1) #27
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_call_operator_write_node_create(ptr noundef %0, ptr noundef captures(none) %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 128
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !289
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.236, ptr noundef nonnull @.str.2, i32 noundef 2950, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_call_operator_write_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(104) ptr @calloc(i64 noundef 1, i64 noundef 104) #30 ; 15 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.g = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.f, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 104) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.h = getelementptr i8, ptr %1, i64 2
  %i.i = load i16, ptr %i.h, align 2, !tbaa !116
  %i.j = load i32, ptr %0, align 8, !tbaa !109
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %0, align 8, !tbaa !109
  %i.l = getelementptr i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !133
  %i.n = getelementptr i8, ptr %3, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !134
  %i.p = getelementptr i8, ptr %1, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !125
  %i.r = getelementptr i8, ptr %1, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %i.s = getelementptr i8, ptr %1, i64 56
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false)
  %i.t = getelementptr i8, ptr %1, i64 48
  %i.u = load i32, ptr %i.t, align 8, !tbaa !120  ; 2 uses
  %i.v = getelementptr i8, ptr %2, i64 8          ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !127  ; 2 uses
  %i.x = getelementptr i8, ptr %2, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !128
  %i.z = getelementptr i8, ptr %i.y, i64 -1
  %i.aa = getelementptr i8, ptr %0, i64 576       ; 4 uses
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = ptrtoint ptr %i.w to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.aa, ptr noundef %i.w, i64 noundef %i.ad) #27
  store i16 20, ptr %i.d, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i16 %i.i, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.k, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.o, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.q, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 68
  store i32 %i.u, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !7
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  store i32 %i.ae, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !7
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.af = load <2 x ptr>, ptr %i.v, align 8, !tbaa !14
  store <2 x ptr> %i.af, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !14
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  store ptr %3, ptr %.sroa.15.0..sroa_idx, align 8, !tbaa !105
  %i.ag = tail call ptr @pm_constant_pool_id_to_constant(ptr noundef %i.aa, i32 noundef %i.u) #27 ; 2 uses
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !261 ; 2 uses
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %pm_node_alloc.exit
  %i.aj = add i64 %i.ai, -1                       ; 3 uses
  %i.ak = tail call noalias ptr @malloc(i64 noundef %i.aj) #28 ; 2 uses
  %i.al = load ptr, ptr %i.ag, align 8, !tbaa !263
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ak, ptr noundef nonnull align 1 %i.al, i64 noundef %i.aj, i1 noundef false) #27
  %i.am = tail call i32 @pm_constant_pool_insert_owned(ptr noundef %i.aa, ptr noundef nonnull %i.ak, i64 noundef %i.aj) #27
  br label %pm_call_write_read_name_init.exit

bb.f:                                             ; preds = %pm_node_alloc.exit
  %i.an = tail call i32 @pm_constant_pool_insert_constant(ptr noundef %i.aa, ptr noundef nonnull @.str.103, i64 noundef 0) #27
  br label %pm_call_write_read_name_init.exit

pm_call_write_read_name_init.exit:                ; preds = %bb.e, %bb.f
  %storemerge.i = phi i32 [ %i.an, %bb.f ], [ %i.am, %bb.e ]
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  store i32 %storemerge.i, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !7
  tail call void @free(ptr noundef nonnull %1) #27
  ret ptr %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @parse_regular_expression_named_captures(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, i1 noundef zeroext %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.parse_regular_expression_named_capture_data_t, align 8 ; 9 uses
  %5 = alloca %struct.parse_regular_expression_error_data_t, align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  store ptr %0, ptr %4, align 8, !tbaa !682
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.a, align 8, !tbaa !686
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.e = getelementptr i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.f = load i32, ptr %i.e, align 8, !tbaa !569
  %i.g = icmp eq i32 %i.f, 1
  %i.h = zext i1 %i.g to i8                       ; 2 uses
  store i8 %i.h, ptr %i.d, align 8, !tbaa !687
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 49
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.i, i8 0, i64 7, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  store ptr %0, ptr %5, align 8, !tbaa !566
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.k = getelementptr i8, ptr %2, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !125
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %i.n = load <2 x ptr>, ptr %i.m, align 8, !tbaa !14
  store <2 x ptr> %i.n, ptr %i.j, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i8 %i.h, ptr %i.o, align 8, !tbaa !570
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.p, i8 0, i64 7, i1 false)
  %i.q = tail call ptr @pm_string_source(ptr noundef %1) #27
  %i.r = tail call i64 @pm_string_length(ptr noundef %1) #27
  call void @pm_regexp_parse(ptr noundef %0, ptr noundef %i.q, i64 noundef %i.r, i1 noundef zeroext %3, ptr noundef nonnull @parse_regular_expression_named_capture, ptr noundef nonnull %4, ptr noundef nonnull @parse_regular_expression_error, ptr noundef nonnull %5) #27
  call void @pm_constant_id_list_free(ptr noundef nonnull %i.c) #27
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !688  ; 2 uses
  %.not = icmp eq ptr %i.s, null
  %. = select i1 %.not, ptr %2, ptr %i.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret ptr %.
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_call_node_shorthand_create(ptr noundef %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef nonnull readonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %1) ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %pm_assert_value_expression.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val5.i = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.d = getelementptr i8, ptr %0, i64 472
  %i.e = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.d, ptr noundef %.val.i, ptr noundef %.val5.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

pm_assert_value_expression.exit:                  ; preds = %bb.a, %bb.b
  %.val = load i16, ptr %1, align 8, !tbaa !115
  %i.f = icmp eq i16 %.val, 133
  %i.g = select i1 %i.f, i16 32, i16 0            ; 2 uses
  %i.h = tail call noalias dereferenceable_or_null(136) ptr @calloc(i64 noundef 1, i64 noundef 136) #30 ; 14 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %pm_call_node_create.exit

bb.c:                                             ; preds = %pm_assert_value_expression.exit
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.k = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.j, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 136) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_call_node_create.exit:                         ; preds = %pm_assert_value_expression.exit
  %i.l = load i32, ptr %0, align 8, !tbaa !109
  %i.m = add i32 %i.l, 1                          ; 2 uses
  store i32 %i.m, ptr %0, align 8, !tbaa !109
  store i16 19, ptr %i.h, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 2 uses
  store i16 %i.g, ptr %.sroa.3.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.m, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = getelementptr i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !133
  store ptr %i.o, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !123
  %i.p = getelementptr i8, ptr %3, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !314  ; 3 uses
  %.not.i29 = icmp eq ptr %i.q, null
  br i1 %.not.i29, label %bb.f, label %bb.d

bb.d:                                             ; preds = %pm_call_node_create.exit
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !134  ; 3 uses
  %i.t = getelementptr i8, ptr %3, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !315
  %.not20.i = icmp eq ptr %i.u, null
  br i1 %.not20.i, label %pm_arguments_end.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %3, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !316  ; 2 uses
  %i.x = icmp ugt ptr %i.w, %i.s
  %spec.select.i = select i1 %i.x, ptr %i.w, ptr %i.s
  br label %pm_arguments_end.exit

bb.f:                                             ; preds = %pm_call_node_create.exit
  %i.y = getelementptr i8, ptr %3, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !315
  %.not18.i = icmp eq ptr %i.z, null
  br i1 %.not18.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %3, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !316
  br label %pm_arguments_end.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %3, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !312 ; 2 uses
  %.not19.i = icmp eq ptr %i.ad, null
  br i1 %.not19.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !114
  br label %pm_arguments_end.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr i8, ptr %3, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !316
  br label %pm_arguments_end.exit

pm_arguments_end.exit:                            ; preds = %bb.d, %bb.e, %bb.g, %bb.i, %bb.j
  %.013.i = phi ptr [ %i.ah, %bb.j ], [ %i.ab, %bb.g ], [ %i.af, %bb.i ], [ %i.s, %bb.d ], [ %spec.select.i, %bb.e ]
  store ptr %.013.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !124
  %i.ai = getelementptr i8, ptr %i.h, i64 24
  store ptr %1, ptr %i.ai, align 8, !tbaa !125
  %i.aj = getelementptr i8, ptr %i.h, i64 32
  %i.ak = load i32, ptr %2, align 8, !tbaa !126   ; 2 uses
  %i.al = icmp eq i32 %i.ak, 164
  br i1 %i.al, label %bb.l, label %bb.k

bb.k:                                             ; preds = %pm_arguments_end.exit
  %i.am = getelementptr i8, ptr %2, i64 8
  %i.an = load <2 x ptr>, ptr %i.am, align 8, !tbaa !14
  br label %bb.l

bb.l:                                             ; preds = %pm_arguments_end.exit, %bb.k
  %i.ao = phi <2 x ptr> [ %i.an, %bb.k ], [ splat (ptr null), %pm_arguments_end.exit ]
  store <2 x ptr> %i.ao, ptr %i.aj, align 8, !tbaa !14
  %i.ap = getelementptr i8, ptr %i.h, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ap, ptr noundef nonnull align 8 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !311
  %i.aq = getelementptr i8, ptr %3, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !312
  %i.as = getelementptr i8, ptr %i.h, i64 88
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !117
  %i.at = getelementptr i8, ptr %i.h, i64 96
  %i.au = getelementptr i8, ptr %3, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !311
  %i.av = getelementptr i8, ptr %i.h, i64 128
  store ptr %i.q, ptr %i.av, align 8, !tbaa !289
  %i.aw = icmp eq i32 %i.ak, 21
  br i1 %i.aw, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.ax = or disjoint i16 %i.g, 4
  store i16 %i.ax, ptr %.sroa.3.0..sroa_idx.i, align 2, !tbaa !116
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ay = getelementptr i8, ptr %0, i64 576
  %i.az = tail call i32 @pm_constant_pool_insert_constant(ptr noundef %i.ay, ptr noundef nonnull @.str.240, i64 noundef 4) #27
  %i.ba = getelementptr i8, ptr %i.h, i64 48
  store i32 %i.az, ptr %i.ba, align 8, !tbaa !120
  ret ptr %i.h
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_call_node_call_create(ptr noundef %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef nonnull readonly captures(none) %3, ptr noundef nonnull readonly captures(none) %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %1) ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %pm_assert_value_expression.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val5.i = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.d = getelementptr i8, ptr %0, i64 472
  %i.e = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.d, ptr noundef %.val.i, ptr noundef %.val5.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

pm_assert_value_expression.exit:                  ; preds = %bb.a, %bb.b
  %.val = load i16, ptr %1, align 8, !tbaa !115
  %i.f = icmp eq i16 %.val, 133
  %i.g = select i1 %i.f, i16 32, i16 0            ; 2 uses
  %i.h = tail call noalias dereferenceable_or_null(136) ptr @calloc(i64 noundef 1, i64 noundef 136) #30 ; 15 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %pm_call_node_create.exit

bb.c:                                             ; preds = %pm_assert_value_expression.exit
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.k = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.j, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 136) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_call_node_create.exit:                         ; preds = %pm_assert_value_expression.exit
  %i.l = load i32, ptr %0, align 8, !tbaa !109
  %i.m = add i32 %i.l, 1                          ; 2 uses
  store i32 %i.m, ptr %0, align 8, !tbaa !109
  store i16 19, ptr %i.h, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2 ; 2 uses
  store i16 %i.g, ptr %.sroa.3.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.m, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = getelementptr i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !133
  store ptr %i.o, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !123
  %i.p = getelementptr i8, ptr %4, i64 40
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !314  ; 3 uses
  %.not.i43 = icmp eq ptr %i.q, null
  br i1 %.not.i43, label %bb.f, label %bb.d

bb.d:                                             ; preds = %pm_call_node_create.exit
  %i.r = getelementptr i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !134  ; 3 uses
  %i.t = getelementptr i8, ptr %4, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !315
  %.not20.i = icmp eq ptr %i.u, null
  br i1 %.not20.i, label %pm_arguments_end.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr i8, ptr %4, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !316  ; 2 uses
  %i.x = icmp ugt ptr %i.w, %i.s
  %spec.select.i = select i1 %i.x, ptr %i.w, ptr %i.s
  br label %pm_arguments_end.exit

bb.f:                                             ; preds = %pm_call_node_create.exit
  %i.y = getelementptr i8, ptr %4, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !315
  %.not18.i = icmp eq ptr %i.z, null
  br i1 %.not18.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %4, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !316
  br label %pm_arguments_end.exit

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr i8, ptr %4, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !312 ; 2 uses
  %.not19.i = icmp eq ptr %i.ad, null
  br i1 %.not19.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !114
  br label %pm_arguments_end.exit

bb.j:                                             ; preds = %bb.h
  %i.ag = getelementptr i8, ptr %4, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !316
  br label %pm_arguments_end.exit

pm_arguments_end.exit:                            ; preds = %bb.d, %bb.e, %bb.g, %bb.i, %bb.j
  %.013.i = phi ptr [ %i.ah, %bb.j ], [ %i.ab, %bb.g ], [ %i.af, %bb.i ], [ %i.s, %bb.d ], [ %spec.select.i, %bb.e ] ; 2 uses
  %i.ai = icmp eq ptr %.013.i, null
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %pm_arguments_end.exit
  %i.aj = getelementptr i8, ptr %3, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !128
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %pm_arguments_end.exit
  %.0 = phi ptr [ %i.ak, %bb.k ], [ %.013.i, %pm_arguments_end.exit ]
  store ptr %.0, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !124
  %i.al = getelementptr i8, ptr %i.h, i64 24
  store ptr %1, ptr %i.al, align 8, !tbaa !125
  %i.am = getelementptr i8, ptr %i.h, i64 32
  %i.an = load i32, ptr %2, align 8, !tbaa !126   ; 2 uses
  %i.ao = icmp eq i32 %i.an, 164
  br i1 %i.ao, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr i8, ptr %2, i64 8
  %i.aq = load <2 x ptr>, ptr %i.ap, align 8, !tbaa !14
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.ar = phi <2 x ptr> [ %i.aq, %bb.m ], [ splat (ptr null), %bb.l ]
  store <2 x ptr> %i.ar, ptr %i.am, align 8, !tbaa !14
  %i.as = getelementptr i8, ptr %i.h, i64 56
  %i.at = load i32, ptr %3, align 8, !tbaa !126   ; 2 uses
  %i.au = icmp eq i32 %i.at, 164
  br i1 %i.au, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.av = getelementptr i8, ptr %3, i64 8
  %i.aw = load <2 x ptr>, ptr %i.av, align 8, !tbaa !14
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.ax = phi <2 x ptr> [ %i.aw, %bb.o ], [ splat (ptr null), %bb.n ]
  store <2 x ptr> %i.ax, ptr %i.as, align 8, !tbaa !14
  %i.ay = getelementptr i8, ptr %i.h, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !311
  %i.az = getelementptr i8, ptr %4, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !312
  %i.bb = getelementptr i8, ptr %i.h, i64 88
  store ptr %i.ba, ptr %i.bb, align 8, !tbaa !117
  %i.bc = getelementptr i8, ptr %i.h, i64 96
  %i.bd = getelementptr i8, ptr %4, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 8 dereferenceable(16) %i.bd, i64 16, i1 false), !tbaa.struct !311
  %i.be = getelementptr i8, ptr %i.h, i64 128
  store ptr %i.q, ptr %i.be, align 8, !tbaa !289
  %i.bf = icmp eq i32 %i.an, 21
  br i1 %i.bf, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bg = or disjoint i16 %i.g, 4
  store i16 %i.bg, ptr %.sroa.3.0..sroa_idx.i, align 2, !tbaa !116
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.bh = getelementptr i8, ptr %3, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !127 ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %3, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !128 ; 3 uses
  switch i32 %i.at, label %parse_operator_symbol_name.exit [
    i32 151, label %bb.s
    i32 25, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r, %bb.r
  %i.bj = getelementptr i8, ptr %.pre.i, i64 -1   ; 2 uses
  %i.bk = load i8, ptr %i.bj, align 1, !tbaa !67
  %i.bl = icmp eq i8 %i.bk, 64
  %spec.select.i44 = select i1 %i.bl, ptr %i.bj, ptr %.pre.i
  br label %parse_operator_symbol_name.exit

parse_operator_symbol_name.exit:                  ; preds = %bb.r, %bb.s
  %.0.i = phi ptr [ %spec.select.i44, %bb.s ], [ %.pre.i, %bb.r ]
  %i.bm = getelementptr i8, ptr %0, i64 576
  %i.bn = ptrtoint ptr %.0.i to i64
  %i.bo = ptrtoint ptr %i.bi to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.bm, ptr noundef %i.bi, i64 noundef %i.bp) #27
  %i.br = getelementptr i8, ptr %i.h, i64 48
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !120
  ret ptr %i.h
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_until_node_modifier_create(ptr noundef %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef %2, ptr noundef nonnull %3, i16 noundef zeroext range(i16 0, 5) %4) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #30 ; 10 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 88) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  tail call fastcc void @pm_conditional_predicate(ptr noundef %0, ptr noundef %2, i32 noundef 0)
  %i.e = getelementptr i8, ptr %0, i64 680
  %.val = load ptr, ptr %i.e, align 8, !tbaa !100 ; 4 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %pm_node_alloc.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.2, i32 noundef 6864, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_loop_modifier_block_exits) #26
  unreachable

bb.d:                                             ; preds = %pm_node_alloc.exit
  %i.f = getelementptr i8, ptr %3, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !121  ; 2 uses
  %i.h = load i64, ptr %.val, align 8, !tbaa !138 ; 2 uses
  %.not121.i = icmp eq i64 %i.h, 0
  br i1 %.not121.i, label %pm_loop_modifier_block_exits.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.i = getelementptr i8, ptr %.val, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !139
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %i.k = phi i64 [ %i.h, %.lr.ph.i ], [ %i.q, %bb.f ] ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %i.j, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !133
  %.not13.i = icmp ult ptr %i.p, %i.g
  br i1 %.not13.i, label %pm_loop_modifier_block_exits.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add i64 %i.k, -1                         ; 3 uses
  store i64 %i.q, ptr %.val, align 8, !tbaa !138
  %.not12.i = icmp eq i64 %i.q, 0
  br i1 %.not12.i, label %pm_loop_modifier_block_exits.exit, label %bb.e, !llvm.loop !689

pm_loop_modifier_block_exits.exit:                ; preds = %bb.e, %bb.f, %bb.d
  %i.r = load i32, ptr %0, align 8, !tbaa !109
  %i.s = add i32 %i.r, 1                          ; 2 uses
  store i32 %i.s, ptr %0, align 8, !tbaa !109
  %i.t = getelementptr i8, ptr %2, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !134
  %i.v = getelementptr i8, ptr %1, i64 8
  store i16 147, ptr %i.a, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %4, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.s, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.u, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.w = load <2 x ptr>, ptr %i.v, align 8, !tbaa !14
  store <2 x ptr> %i.w, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %2, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !105
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %3, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !136
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_while_node_modifier_create(ptr noundef %0, ptr %.8.val, ptr %.16.val, ptr noundef %1, ptr noundef nonnull %2, i16 noundef zeroext range(i16 0, 5) %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(88) ptr @calloc(i64 noundef 1, i64 noundef 88) #30 ; 11 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 88) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  tail call fastcc void @pm_conditional_predicate(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  %i.e = getelementptr i8, ptr %0, i64 680
  %.val = load ptr, ptr %i.e, align 8, !tbaa !100 ; 4 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %pm_node_alloc.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.2, i32 noundef 6864, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_loop_modifier_block_exits) #26
  unreachable

bb.d:                                             ; preds = %pm_node_alloc.exit
  %i.f = getelementptr i8, ptr %2, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !121  ; 2 uses
  %i.h = load i64, ptr %.val, align 8, !tbaa !138 ; 2 uses
  %.not121.i = icmp eq i64 %i.h, 0
  br i1 %.not121.i, label %pm_loop_modifier_block_exits.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d
  %i.i = getelementptr i8, ptr %.val, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !139
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %i.k = phi i64 [ %i.h, %.lr.ph.i ], [ %i.q, %bb.f ] ; 2 uses
  %i.l = getelementptr [8 x i8], ptr %i.j, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !105
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !133
  %.not13.i = icmp ult ptr %i.p, %i.g
  br i1 %.not13.i, label %pm_loop_modifier_block_exits.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = add i64 %i.k, -1                         ; 3 uses
  store i64 %i.q, ptr %.val, align 8, !tbaa !138
  %.not12.i = icmp eq i64 %i.q, 0
  br i1 %.not12.i, label %pm_loop_modifier_block_exits.exit, label %bb.e, !llvm.loop !689

pm_loop_modifier_block_exits.exit:                ; preds = %bb.e, %bb.f, %bb.d
  %i.r = load i32, ptr %0, align 8, !tbaa !109
  %i.s = add i32 %i.r, 1                          ; 2 uses
  store i32 %i.s, ptr %0, align 8, !tbaa !109
  %i.t = getelementptr i8, ptr %1, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !134
  store i16 149, ptr %i.a, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %3, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.s, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.u, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %.8.val, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !14
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.16.val, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %1, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !105
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr %2, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !136
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_if_node_ternary_create(ptr noundef %0, ptr noundef %1, ptr %.8.val, ptr %.16.val, ptr noundef %2, ptr %.8.val1, ptr %.16.val3, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %1) ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %pm_assert_value_expression.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val5.i = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.d = getelementptr i8, ptr %0, i64 472
  %i.e = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.d, ptr noundef %.val.i, ptr noundef %.val5.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

pm_assert_value_expression.exit:                  ; preds = %bb.a, %bb.b
  tail call fastcc void @pm_conditional_predicate(ptr noundef %0, ptr noundef %1, i32 noundef 0)
  %i.f = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 7 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %pm_assert_value_expression.exit
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.i = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.h, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

bb.d:                                             ; preds = %pm_assert_value_expression.exit
  %i.j = load i32, ptr %0, align 8, !tbaa !109
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %0, align 8, !tbaa !109
  %i.l = getelementptr i8, ptr %0, i64 304        ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !74   ; 2 uses
  store i16 140, ptr %i.f, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.k, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !14
  %i.n = getelementptr i8, ptr %i.f, i64 24
  %.phi.trans.insert.i.i = getelementptr i8, ptr %2, i64 8
  %.pre.i.i = load ptr, ptr %.phi.trans.insert.i.i, align 8, !tbaa !133
  store ptr %.pre.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !121
  %i.o = getelementptr i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !134  ; 2 uses
  %i.q = icmp ugt ptr %i.p, %i.m
  br i1 %i.q, label %bb.e, label %pm_statements_node_body_append.exit

bb.e:                                             ; preds = %bb.d
  store ptr %i.p, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !122
  br label %pm_statements_node_body_append.exit

pm_statements_node_body_append.exit:              ; preds = %bb.d, %bb.e
  tail call void @pm_node_list_append(ptr noundef nonnull %i.n, ptr noundef nonnull %2) #27
  %i.r = getelementptr i8, ptr %2, i64 2          ; 2 uses
  %i.s = load i16, ptr %i.r, align 2, !tbaa !116
  %i.t = or i16 %i.s, 1
  store i16 %i.t, ptr %i.r, align 2, !tbaa !116
  %i.u = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 7 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %pm_statements_node_body_append.exit
  %i.w = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.x = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.w, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

bb.g:                                             ; preds = %pm_statements_node_body_append.exit
  %i.y = load i32, ptr %0, align 8, !tbaa !109
  %i.z = add i32 %i.y, 1                          ; 2 uses
  store i32 %i.z, ptr %0, align 8, !tbaa !109
  %i.aa = load ptr, ptr %i.l, align 8, !tbaa !74  ; 2 uses
  store i16 140, ptr %i.u, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i28 = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  store i32 %i.z, ptr %.sroa.3.0..sroa_idx.i28, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i29 = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5.0..sroa_idx.i30 = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  store ptr %i.aa, ptr %.sroa.5.0..sroa_idx.i30, align 8, !tbaa !14
  %i.ab = getelementptr i8, ptr %i.u, i64 24
  %.phi.trans.insert.i.i33 = getelementptr i8, ptr %3, i64 8
  %.pre.i.i34 = load ptr, ptr %.phi.trans.insert.i.i33, align 8, !tbaa !133
  store ptr %.pre.i.i34, ptr %.sroa.4.0..sroa_idx.i29, align 8, !tbaa !121
  %i.ac = getelementptr i8, ptr %3, i64 16        ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !134 ; 2 uses
  %i.ae = icmp ugt ptr %i.ad, %i.aa
  br i1 %i.ae, label %bb.h, label %pm_statements_node_body_append.exit39

bb.h:                                             ; preds = %bb.g
  store ptr %i.ad, ptr %.sroa.5.0..sroa_idx.i30, align 8, !tbaa !122
  br label %pm_statements_node_body_append.exit39

pm_statements_node_body_append.exit39:            ; preds = %bb.g, %bb.h
  tail call void @pm_node_list_append(ptr noundef nonnull %i.ab, ptr noundef nonnull %3) #27
  %i.af = getelementptr i8, ptr %3, i64 2         ; 2 uses
  %i.ag = load i16, ptr %i.af, align 2, !tbaa !116
  %i.ah = or i16 %i.ag, 1
  store i16 %i.ah, ptr %i.af, align 2, !tbaa !116
  %i.ai = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #30 ; 9 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.i, label %pm_else_node_create.exit

bb.i:                                             ; preds = %pm_statements_node_body_append.exit39
  %i.ak = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.al = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ak, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 64) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_else_node_create.exit:                         ; preds = %pm_statements_node_body_append.exit39
  %i.am = load i32, ptr %0, align 8, !tbaa !109
  %i.an = add i32 %i.am, 1                        ; 2 uses
  store i32 %i.an, ptr %0, align 8, !tbaa !109
  %.sroa.9.023.i = load ptr, ptr %.sroa.5.0..sroa_idx.i30, align 8, !tbaa !14
  store i16 47, ptr %i.ai, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i40 = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store i32 %i.an, ptr %.sroa.5.0..sroa_idx.i40, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store ptr %.8.val1, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store ptr %.sroa.9.023.i, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  store ptr %.8.val1, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 32
  store ptr %.16.val3, ptr %.sroa.12.0..sroa_idx.i, align 8, !tbaa !14
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  store ptr %i.u, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !136
  %i.ao = tail call noalias dereferenceable_or_null(96) ptr @calloc(i64 noundef 1, i64 noundef 96) #30 ; 12 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.j, label %pm_node_alloc.exit

bb.j:                                             ; preds = %pm_else_node_create.exit
  %i.aq = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.ar = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.aq, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 96) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %pm_else_node_create.exit
  %i.as = load i32, ptr %0, align 8, !tbaa !109
  %i.at = add i32 %i.as, 1                        ; 2 uses
  store i32 %i.at, ptr %0, align 8, !tbaa !109
  %i.au = getelementptr i8, ptr %1, i64 8
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !133
  %i.aw = load ptr, ptr %i.ac, align 8, !tbaa !134
  store i16 67, ptr %i.ao, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i16 1, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  store i32 %i.at, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store ptr %i.av, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr %i.aw, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 40
  store ptr %1, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !105
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 48
  store ptr %.8.val, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 56
  store ptr %.16.val, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 64
  store ptr %i.f, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !136
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ao, i64 72
  store ptr %i.ai, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !105
  ret ptr %i.ao
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_call_node_aref_create(ptr noundef %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %1) ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %pm_assert_value_expression.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val5.i = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.d = getelementptr i8, ptr %0, i64 472
  %i.e = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.d, ptr noundef %.val.i, ptr noundef %.val5.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

pm_assert_value_expression.exit:                  ; preds = %bb.a, %bb.b
  %.val = load i16, ptr %1, align 8, !tbaa !115
  %i.f = icmp eq i16 %.val, 133
  %i.g = select i1 %i.f, i16 32, i16 0            ; 2 uses
  %i.h = getelementptr i8, ptr %2, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !314  ; 4 uses
  %i.j = icmp eq ptr %i.i, null                   ; 2 uses
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %pm_assert_value_expression.exit
  %i.k = load i16, ptr %i.i, align 8, !tbaa !115
  %i.l = icmp eq i16 %i.k, 12
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %pm_assert_value_expression.exit
  %i.m = or disjoint i16 %i.g, 256
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i16 [ %i.m, %bb.d ], [ %i.g, %bb.c ]
  %i.n = tail call noalias dereferenceable_or_null(136) ptr @calloc(i64 noundef 1, i64 noundef 136) #30 ; 15 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.f, label %pm_call_node_create.exit

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.q = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.p, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 136) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_call_node_create.exit:                         ; preds = %bb.e
  %i.r = load i32, ptr %0, align 8, !tbaa !109
  %i.s = add i32 %i.r, 1                          ; 2 uses
  store i32 %i.s, ptr %0, align 8, !tbaa !109
  store i16 19, ptr %i.n, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 2
  store i16 %.0, ptr %.sroa.3.0..sroa_idx.i, align 2, !tbaa !110
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 %i.s, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.t = getelementptr i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !133
  store ptr %i.u, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !123
  br i1 %i.j, label %bb.i, label %bb.g

bb.g:                                             ; preds = %pm_call_node_create.exit
  %i.v = getelementptr i8, ptr %i.i, i64 16
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !134  ; 3 uses
  %i.x = getelementptr i8, ptr %2, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !315
  %.not20.i = icmp eq ptr %i.y, null
  br i1 %.not20.i, label %pm_arguments_end.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = getelementptr i8, ptr %2, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !316 ; 2 uses
  %i.ab = icmp ugt ptr %i.aa, %i.w
  %spec.select.i = select i1 %i.ab, ptr %i.aa, ptr %i.w
  br label %pm_arguments_end.exit

bb.i:                                             ; preds = %pm_call_node_create.exit
  %i.ac = getelementptr i8, ptr %2, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !315
  %.not18.i = icmp eq ptr %i.ad, null
  br i1 %.not18.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr i8, ptr %2, i64 32
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !316
  br label %pm_arguments_end.exit

bb.k:                                             ; preds = %bb.i
  %i.ag = getelementptr i8, ptr %2, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !312 ; 2 uses
  %.not19.i = icmp eq ptr %i.ah, null
  br i1 %.not19.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ai = getelementptr i8, ptr %i.ah, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !114
  br label %pm_arguments_end.exit

bb.m:                                             ; preds = %bb.k
  %i.ak = getelementptr i8, ptr %2, i64 32
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !316
  br label %pm_arguments_end.exit

pm_arguments_end.exit:                            ; preds = %bb.g, %bb.h, %bb.j, %bb.l, %bb.m
  %.013.i = phi ptr [ %i.al, %bb.m ], [ %i.af, %bb.j ], [ %i.aj, %bb.l ], [ %i.w, %bb.g ], [ %spec.select.i, %bb.h ]
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr %.013.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !tbaa !124
  %i.am = getelementptr i8, ptr %i.n, i64 24
  store ptr %1, ptr %i.am, align 8, !tbaa !125
  %i.an = load ptr, ptr %2, align 8, !tbaa !352
  %i.ao = getelementptr i8, ptr %i.n, i64 56
  store ptr %i.an, ptr %i.ao, align 8, !tbaa !260
  %i.ap = getelementptr i8, ptr %2, i64 24
  %i.aq = getelementptr i8, ptr %2, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !316
  %i.as = getelementptr i8, ptr %i.n, i64 64
  store ptr %i.ar, ptr %i.as, align 8, !tbaa !292
  %i.at = getelementptr i8, ptr %i.n, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !311
  %i.au = getelementptr i8, ptr %2, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !312
  %i.aw = getelementptr i8, ptr %i.n, i64 88
  store ptr %i.av, ptr %i.aw, align 8, !tbaa !117
  %i.ax = getelementptr i8, ptr %i.n, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ax, ptr noundef nonnull align 8 dereferenceable(16) %i.ap, i64 16, i1 false), !tbaa.struct !311
  %i.ay = getelementptr i8, ptr %i.n, i64 128
  store ptr %i.i, ptr %i.ay, align 8, !tbaa !289
  %i.az = getelementptr i8, ptr %0, i64 576
  %i.ba = tail call i32 @pm_constant_pool_insert_constant(ptr noundef %i.az, ptr noundef nonnull @.str.7, i64 noundef 2) #27
  %i.bb = getelementptr i8, ptr %i.n, i64 48
  store i32 %i.ba, ptr %i.bb, align 8, !tbaa !120
  ret ptr %i.n
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_match_predicate_node_create(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr %.8.val, ptr %.16.val) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %1) ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %pm_assert_value_expression.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val5.i = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.d = getelementptr i8, ptr %0, i64 472
  %i.e = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.d, ptr noundef %.val.i, ptr noundef %.val5.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

pm_assert_value_expression.exit:                  ; preds = %bb.a, %bb.b
  %i.f = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #30 ; 10 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %pm_node_alloc.exit

bb.c:                                             ; preds = %pm_assert_value_expression.exit
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.i = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.h, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 56) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %pm_assert_value_expression.exit
  %i.j = load i32, ptr %0, align 8, !tbaa !109
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %0, align 8, !tbaa !109
  %i.l = getelementptr i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !133
  %i.n = getelementptr i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !134
  store i16 100, ptr %i.f, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.k, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.o, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %2, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !105
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %.8.val, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %.16.val, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_match_required_node_create(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr %.8.val, ptr %.16.val) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef %1) ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %pm_assert_value_expression.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val.i = load ptr, ptr %i.b, align 8, !tbaa !133
  %i.c = getelementptr i8, ptr %i.a, i64 16
  %.val5.i = load ptr, ptr %i.c, align 8, !tbaa !134
  %i.d = getelementptr i8, ptr %0, i64 472
  %i.e = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.d, ptr noundef %.val.i, ptr noundef %.val5.i, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit

pm_assert_value_expression.exit:                  ; preds = %bb.a, %bb.b
  %i.f = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #30 ; 10 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %pm_node_alloc.exit

bb.c:                                             ; preds = %pm_assert_value_expression.exit
  %i.h = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.i = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.h, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 56) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %pm_assert_value_expression.exit
  %i.j = load i32, ptr %0, align 8, !tbaa !109
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %0, align 8, !tbaa !109
  %i.l = getelementptr i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !133
  %i.n = getelementptr i8, ptr %2, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !134
  store i16 101, ptr %i.f, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.k, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.o, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %2, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !105
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %.8.val, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %.16.val, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parse_assignment_value_local(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr25 = phi ptr [ %1, %bb.a ], [ %.tr25.be, %tailrecurse.backedge ] ; 7 uses
  %i.a = load i16, ptr %.tr25, align 8, !tbaa !115
  switch i16 %i.a, label %.critedge [
    i16 11, label %bb.b
    i16 98, label %bb.c
    i16 116, label %bb.f
    i16 140, label %.preheader
  ]

.preheader:                                       ; preds = %tailrecurse
  %i.b = getelementptr i8, ptr %.tr25, i64 40
  %i.c = getelementptr i8, ptr %.tr25, i64 24     ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !101
  %.not32 = icmp eq i64 %i.d, 0
  br i1 %.not32, label %.critedge, label %.lr.ph

bb.b:                                             ; preds = %tailrecurse
  %i.e = getelementptr i8, ptr %.tr25, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !527  ; 2 uses
  %.not24 = icmp eq ptr %i.f, null
  br i1 %.not24, label %.critedge, label %tailrecurse.backedge

tailrecurse.backedge:                             ; preds = %bb.b, %bb.f
  %.tr25.be = phi ptr [ %i.f, %bb.b ], [ %i.o, %bb.f ]
  br label %tailrecurse

bb.c:                                             ; preds = %tailrecurse
  %i.g = getelementptr i8, ptr %.tr25, i64 28
  %i.h = load i32, ptr %i.g, align 4, !tbaa !615  ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 496
  %.0.i48 = load ptr, ptr %i.i, align 8, !tbaa !66 ; 2 uses
  %.not.i49 = icmp eq i32 %i.h, 0
  br i1 %.not.i49, label %pm_parser_scope_find.exit, label %.lr.ph52

bb.d:                                             ; preds = %.lr.ph52
  %i.j = add i32 %.04.i50, -1                     ; 2 uses
  %.0.i = load ptr, ptr %.0.i51, align 8, !tbaa !66 ; 2 uses
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %pm_parser_scope_find.exit, label %.lr.ph52, !llvm.loop !319

.lr.ph52:                                         ; preds = %bb.c, %bb.d
  %.0.i51 = phi ptr [ %.0.i, %bb.d ], [ %.0.i48, %bb.c ] ; 2 uses
  %.04.i50 = phi i32 [ %i.j, %bb.d ], [ %i.h, %bb.c ]
  %.not5.i = icmp eq ptr %.0.i51, null
  br i1 %.not5.i, label %bb.e, label %bb.d, !llvm.loop !319

bb.e:                                             ; preds = %.lr.ph52
  tail call void @__assert_fail(ptr noundef nonnull @.str.148, ptr noundef nonnull @.str.2, i32 noundef 626, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_parser_scope_find) #26
  unreachable

pm_parser_scope_find.exit:                        ; preds = %bb.d, %bb.c
  %.0.i.lcssa = phi ptr [ %.0.i48, %bb.c ], [ %.0.i, %bb.d ]
  %i.k = getelementptr i8, ptr %.0.i.lcssa, i64 8
  %i.l = getelementptr i8, ptr %.tr25, i64 24
  %i.m = load i32, ptr %i.l, align 8, !tbaa !619
  tail call fastcc void @pm_locals_read(ptr noundef %i.k, i32 noundef %i.m)
  br label %.critedge

bb.f:                                             ; preds = %tailrecurse
  %i.n = getelementptr i8, ptr %.tr25, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !528  ; 2 uses
  %.not23 = icmp eq ptr %i.o, null
  br i1 %.not23, label %.critedge, label %tailrecurse.backedge

.lr.ph:                                           ; preds = %.preheader, %bb.g
  %.030 = phi i64 [ %i.s, %bb.g ], [ 0, %.preheader ] ; 2 uses
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !104
  %i.q = getelementptr [8 x i8], ptr %i.p, i64 %.030
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !105  ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %.critedge, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  tail call fastcc void @parse_assignment_value_local(ptr noundef %0, ptr noundef nonnull %i.r)
  %i.s = add nuw i64 %.030, 1                     ; 2 uses
  %i.t = load i64, ptr %i.c, align 8, !tbaa !101
  %i.u = icmp ult i64 %i.s, %i.t
  br i1 %i.u, label %.lr.ph, label %.critedge, !llvm.loop !690

.critedge:                                        ; preds = %bb.f, %bb.b, %tailrecurse, %bb.g, %.lr.ph, %.preheader, %pm_parser_scope_find.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @pm_local_variable_write_node_create(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef readonly captures(none) %4, ptr noundef nonnull readonly captures(none) %5) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(72) ptr @calloc(i64 noundef 1, i64 noundef 72) #30 ; 12 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 72) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i16, ptr %3, align 8, !tbaa !115
  %i.f = icmp eq i16 %i.e, 6
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %pm_node_alloc.exit
  %i.g = getelementptr i8, ptr %3, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !298
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %pm_implicit_array_write_flags.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %pm_node_alloc.exit
  br label %pm_implicit_array_write_flags.exit

pm_implicit_array_write_flags.exit:               ; preds = %bb.c, %bb.d
  %.0.i = phi i16 [ 0, %bb.d ], [ 4, %bb.c ]
  %i.j = load i32, ptr %0, align 8, !tbaa !109
  %i.k = add i32 %i.j, 1                          ; 2 uses
  store i32 %i.k, ptr %0, align 8, !tbaa !109
  %i.l = load ptr, ptr %4, align 8, !tbaa !283
  %i.m = getelementptr i8, ptr %3, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !134
  %i.o = load i32, ptr %5, align 8, !tbaa !126
  %i.p = icmp eq i32 %i.o, 164
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %pm_implicit_array_write_flags.exit
  %i.q = getelementptr i8, ptr %5, i64 8
  %i.r = load <2 x ptr>, ptr %i.q, align 8, !tbaa !14
  br label %bb.f

bb.f:                                             ; preds = %pm_implicit_array_write_flags.exit, %bb.e
  %i.s = phi <2 x ptr> [ %i.r, %bb.e ], [ splat (ptr null), %pm_implicit_array_write_flags.exit ]
  store i16 98, ptr %i.a, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %.0.i, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.k, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.n, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  store i32 %2, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !7
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %4, i64 16, i1 false)
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
end_hunk_16
