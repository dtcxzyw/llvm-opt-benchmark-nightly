Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/html_document?download=true
inline.NumInlined: 85
inline.NumDeleted: 34
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@zim_Dom_HTMLDocument_createFromString:bb.a
  %i.af = and i32 %i.ae, 2
  %.not70 = icmp eq i32 %i.af, 0
  br i1 %.not70, label %dom_should_register_error_handlers.exit.thread59, label %dom_should_register_error_handlers.exit.thread

dom_should_register_error_handlers.exit.thread:   ; preds = %bb.d, %dom_should_register_error_handlers.exit
  call void @lexbor_libxml2_bridge_parse_set_error_callbacks(ptr noundef nonnull %3, ptr noundef nonnull @dom_lexbor_libxml2_bridge_tokenizer_error_reporter, ptr noundef nonnull @dom_lexbor_libxml2_bridge_tree_error_reporter) #9
  br label %dom_should_register_error_handlers.exit.thread59

dom_should_register_error_handlers.exit.thread59: ; preds = %bb.c, %dom_should_register_error_handlers.exit.thread, %dom_should_register_error_handlers.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.ag, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  store i64 0, ptr %i.h, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  store i64 0, ptr %i.i, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #9
  %i.ah = load ptr, ptr %i.c, align 8, !tbaa !27  ; 2 uses
  store ptr %i.ah, ptr %i.j, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = call ptr @lxb_encoding_data(i32 noundef 27) #9 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 3 uses
  store ptr %i.ai, ptr %i.aj, align 8, !tbaa !99
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 3 uses
  store ptr %i.ai, ptr %i.ak, align 8, !tbaa !100
  store i8 1, ptr %4, align 8, !tbaa !101
  %i.al = icmp eq ptr %i.ai, null
  br i1 %i.al, label %lxb_encoding_encode_init.exit.i, label %lxb_encoding_decode_init.exit.thread.i

lxb_encoding_encode_init.exit.i:                  ; preds = %dom_should_register_error_handlers.exit.thread59
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !102
  %i.am = icmp eq ptr %.pre.i, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %i.an = icmp ult i64 %.pre, 3
  %or.cond82 = select i1 %i.am, i1 true, i1 %i.an
  br i1 %or.cond82, label %lxb_encoding_decode_init.exit.i, label %lxb_encoding_encode_replace_set.exit.i.thread81

lxb_encoding_encode_replace_set.exit.i.thread81:  ; preds = %lxb_encoding_encode_init.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @.str.113, ptr %i.ao, align 8, !tbaa !103
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 3, ptr %i.ap, align 8, !tbaa !104
  br label %lxb_encoding_decode_init.exit.i

lxb_encoding_decode_init.exit.thread.i:           ; preds = %dom_should_register_error_handlers.exit.thread59
  %i.aq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, i8 0, i64 32, i1 false)
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.ar, ptr %i.at, align 8, !tbaa !102
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 4096, ptr %i.au, align 8, !tbaa !105
  store ptr %i.ai, ptr %i.aq, align 8, !tbaa !106
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @.str.113, ptr %i.av, align 8, !tbaa !103
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 3, ptr %i.aw, align 8, !tbaa !104
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 4256
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.az, i8 0, i64 56, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %i.ay, ptr %i.ba, align 8, !tbaa !107
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 4096, ptr %i.bb, align 8, !tbaa !108
  store ptr %i.ai, ptr %i.ax, align 8, !tbaa !109
  br label %bb.e

lxb_encoding_decode_init.exit.i:                  ; preds = %lxb_encoding_encode_replace_set.exit.i.thread81, %lxb_encoding_encode_init.exit.i
  %.phi.trans.insert14.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %.pre15.i = load ptr, ptr %.phi.trans.insert14.i, align 8, !tbaa !107
  %i.bc = icmp eq ptr %.pre15.i, null
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.be = load i64, ptr %i.bd, align 8
  %i.bf = icmp eq i64 %i.be, 0
  %or.cond = select i1 %i.bc, i1 true, i1 %i.bf
  br i1 %or.cond, label %dom_decoding_encoding_ctx_init.exit, label %bb.e

bb.e:                                             ; preds = %lxb_encoding_decode_init.exit.thread.i, %lxb_encoding_decode_init.exit.i
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr %i.b, ptr %i.bg, align 8, !tbaa !110
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 1, ptr %i.bh, align 8, !tbaa !111
  br label %dom_decoding_encoding_ctx_init.exit

dom_decoding_encoding_ctx_init.exit:              ; preds = %lxb_encoding_decode_init.exit.i, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bi = load ptr, ptr %i.d, align 8, !tbaa !27  ; 2 uses
  %.not = icmp eq ptr %i.bi, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %dom_decoding_encoding_ctx_init.exit
  %i.bj = load i64, ptr %i.f, align 8, !tbaa !29
  %i.bk = call ptr @lxb_encoding_data_by_name(ptr noundef nonnull %i.bi, i64 noundef %i.bj) #9 ; 4 uses
  %.not42.not = icmp eq ptr %i.bk, null
  br i1 %.not42.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.f
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef 3, ptr noundef nonnull @.str.3) #9
  br label %bb.aa

bb.g:                                             ; preds = %bb.f
  store ptr %i.bk, ptr %i.ak, align 8, !tbaa !100
  %i.bl = getelementptr inbounds nuw i8, ptr %4, i64 4256 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bn = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bn, i8 0, i64 56, i1 false)
  %i.bo = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %i.bl, ptr %i.bo, align 8, !tbaa !107
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 4096, ptr %i.bp, align 8, !tbaa !108
  store ptr %i.bk, ptr %i.bm, align 8, !tbaa !109
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr @dom_setup_parser_encoding_manually.replacement_codepoint, ptr %i.bq, align 8, !tbaa !110
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 1, ptr %i.br, align 8, !tbaa !111
  %i.bs = load ptr, ptr %i.aj, align 8, !tbaa !99
  %i.bt = icmp eq ptr %i.bk, %i.bs                ; 3 uses
  %i.bu = zext i1 %i.bt to i8
  store i8 %i.bu, ptr %4, align 8, !tbaa !101
  %spec.select.i = select i1 %i.bt, ptr null, ptr %i.bl
  %spec.select18.i = select i1 %i.bt, ptr %i.ah, ptr null
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %spec.select.i, ptr %i.bv, align 8, !tbaa !112
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %spec.select18.i, ptr %i.bw, align 8, !tbaa !113
  br label %bb.i

bb.h:                                             ; preds = %dom_decoding_encoding_ctx_init.exit
  call fastcc void @dom_setup_parser_encoding_implicitly(ptr noundef %i.j, ptr noundef %i.e, ptr noundef %4, ptr noundef %2)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.bx = call ptr @lxb_html_document_create() #9 ; 10 uses
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %dom_parse_decode_encode_finish.exit, label %bb.j, !prof !30

bb.j:                                             ; preds = %bb.i
  %i.bz = call i32 @lxb_html_document_parse_chunk_begin(ptr noundef nonnull %i.bx) #9
  %.not43 = icmp eq i32 %i.bz, 0
  br i1 %.not43, label %bb.k, label %dom_parse_decode_encode_finish.exit, !prof !114

bb.k:                                             ; preds = %bb.j
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 208
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !127 ; 3 uses
  %i.cc = load i64, ptr %i.e, align 8, !tbaa !29  ; 2 uses
  %.not4471 = icmp eq i64 %i.cc, 0
  br i1 %.not4471, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.k
  %i.cd = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.o
  %i.ce = phi i64 [ %i.cc, %.lr.ph ], [ %i.cl, %bb.o ] ; 2 uses
  %spec.store.select = call i64 @llvm.umin.i64(i64 %i.ce, i64 4096) ; 3 uses
  %i.cf = sub nuw i64 %i.ce, %spec.store.select
  store i64 %i.cf, ptr %i.e, align 8, !tbaa !29
  %i.cg = load ptr, ptr %i.j, align 8, !tbaa !27
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %spec.store.select
  %i.ci = call fastcc zeroext i1 @dom_parse_decode_encode_step(ptr noundef %3, ptr noundef %i.bx, ptr noundef %i.cb, ptr noundef %i.j, ptr noundef nonnull %i.ch, ptr noundef %4, ptr noundef %i.h, ptr noundef %i.i)
  br i1 %i.ci, label %bb.m, label %dom_parse_decode_encode_finish.exit

bb.m:                                             ; preds = %bb.l
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !113 ; 2 uses
  %.not49 = icmp eq ptr %i.cj, null
  br i1 %.not49, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %spec.store.select
  store ptr %i.ck, ptr %i.cd, align 8, !tbaa !113
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.cl = load i64, ptr %i.e, align 8, !tbaa !29  ; 2 uses
  %.not44 = icmp eq i64 %i.cl, 0
  br i1 %.not44, label %._crit_edge, label %bb.l

._crit_edge:                                      ; preds = %bb.o, %bb.k
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !128
  %.not.i.i = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i, label %lxb_encoding_decode_finish.exit.i, label %bb.p

bb.p:                                             ; preds = %._crit_edge
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !109
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !130
  %i.cr = icmp eq i32 %i.cq, 8
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 132
  %i.ct = load i32, ptr %i.cs, align 4
  %i.cu = icmp eq i32 %i.ct, 0
  %or.cond69 = select i1 %i.cr, i1 %i.cu, i1 false
  br i1 %or.cond69, label %lxb_encoding_decode_finish.exit.i, label %lxb_encoding_decode_buf_add_to.exit.i.i

lxb_encoding_decode_buf_add_to.exit.i.i:          ; preds = %bb.p
  %i.cv = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !110, !nonnull !131, !noundef !131
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !111 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !132
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !107
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %i.da
  %i.de = shl i64 %i.cy, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.dd, ptr nonnull readonly align 4 %i.cw, i64 %i.de, i1 false)
  %i.df = load i64, ptr %i.cz, align 8, !tbaa !132
  %i.dg = add i64 %i.df, %i.cy
  store i64 %i.dg, ptr %i.cz, align 8, !tbaa !132
  br label %lxb_encoding_decode_finish.exit.i

lxb_encoding_decode_finish.exit.i:                ; preds = %bb.p, %lxb_encoding_decode_buf_add_to.exit.i.i, %._crit_edge
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %.val23.i = load i64, ptr %i.dh, align 8, !tbaa !132 ; 2 uses
  %.not.i55 = icmp eq i64 %.val23.i, 0
  br i1 %.not.i55, label %bb.r, label %bb.q

bb.q:                                             ; preds = %lxb_encoding_decode_finish.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 4256 ; 2 uses
  store ptr %i.di, ptr %i.a, align 8, !tbaa !133
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %.val23.i
  %i.dk = load ptr, ptr %i.aj, align 8, !tbaa !99
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !134
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.do = call i32 %i.dm(ptr noundef nonnull %i.dn, ptr noundef nonnull %i.a, ptr noundef nonnull %i.dj) #9, !inline_history !0 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %lxb_encoding_decode_finish.exit.i
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !106
  %i.dr = load i32, ptr %i.dq, align 8, !tbaa !130
  %i.ds = icmp eq i32 %i.dr, 8
  br i1 %i.ds, label %bb.s, label %lxb_encoding_encode_finish.exit.i

bb.s:                                             ; preds = %bb.r
  %i.dt = call i32 @lxb_encoding_encode_iso_2022_jp_eof(ptr noundef nonnull %i.dp) #9 ; 0 uses
  br label %lxb_encoding_encode_finish.exit.i

lxb_encoding_encode_finish.exit.i:                ; preds = %bb.s, %bb.r
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.val25.i = load i64, ptr %i.du, align 8, !tbaa !135 ; 2 uses
  %.not22.i = icmp eq i64 %.val25.i, 0
  br i1 %.not22.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %lxb_encoding_encode_finish.exit.i
  %i.dv = getelementptr inbounds nuw i8, ptr %4, i64 160
  %.val.i = load i64, ptr %i.dh, align 8, !tbaa !132
  %i.dw = call fastcc zeroext i1 @dom_process_parse_chunk(ptr noundef nonnull %3, ptr noundef nonnull %i.bx, ptr noundef %i.cb, i64 noundef %.val25.i, ptr noundef nonnull %i.dv, i64 noundef %.val.i, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i)
  br i1 %i.dw, label %bb.u, label %dom_parse_decode_encode_finish.exit

bb.u:                                             ; preds = %lxb_encoding_encode_finish.exit.i, %bb.t
  %i.dx = call i32 @lxb_html_document_parse_chunk_end(ptr noundef nonnull %i.bx) #9
  %.not45 = icmp eq i32 %i.dx, 0
  br i1 %.not45, label %bb.v, label %dom_parse_decode_encode_finish.exit

bb.v:                                             ; preds = %bb.u
  %i.dy = call ptr @php_dom_private_data_create() #9 ; 3 uses
  %i.dz = load i64, ptr %i.g, align 8, !tbaa !29  ; 2 uses
  %i.ea = and i64 %i.dz, 65536
  %i.eb = icmp ne i64 %i.ea, 0
  %i.ec = and i64 %i.dz, 2147483648
  %.not46 = icmp eq i64 %i.ec, 0
  %i.ed = call i32 @lexbor_libxml2_bridge_convert_document(ptr noundef nonnull %i.bx, ptr noundef nonnull %i.k, i1 noundef zeroext %i.eb, i1 noundef zeroext %.not46, ptr noundef %i.dy) #9 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cb, i64 8
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !139
  %i.eg = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @lexbor_libxml2_bridge_copy_observations(ptr noundef %i.ef, ptr noundef nonnull %i.eg) #9
  %.not47 = icmp eq i32 %i.ed, 0
  br i1 %.not47, label %bb.x, label %bb.w, !prof !114

bb.w:                                             ; preds = %bb.v
  call void @php_dom_private_data_destroy(ptr noundef %i.dy) #9
  %i.eh = icmp ult i32 %i.ed, 5
  br i1 %i.eh, label %switch.lookup, label %dom_lexbor_libxml2_bridge_status_code_to_string.exit

switch.lookup:                                    ; preds = %bb.w
  %i.ei = zext nneg i32 %i.ed to i64
  %i.ej = getelementptr [8 x i8], ptr @switch.table.zim_Dom_HTMLDocument_createFromString, i64 %i.ei
  %switch.gep = getelementptr i8, ptr %i.ej, i64 -8
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %dom_lexbor_libxml2_bridge_status_code_to_string.exit

dom_lexbor_libxml2_bridge_status_code_to_string.exit: ; preds = %bb.w, %switch.lookup
  %.0.i57 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.75, %bb.w ]
  %i.ek = load ptr, ptr %2, align 8, !tbaa !56
  call void (ptr, ptr, ...) @php_libxml_ctx_error(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull %.0.i57, ptr noundef %i.ek) #9
  %i.el = call ptr @lxb_html_document_destroy(ptr noundef nonnull %i.bx) #9 ; 0 uses
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.em, align 8, !tbaa !22
  br label %bb.aa

bb.x:                                             ; preds = %bb.v
  %i.en = call ptr @lxb_html_document_destroy(ptr noundef nonnull %i.bx) #9 ; 0 uses
  %i.eo = load ptr, ptr %i.k, align 8, !tbaa !140
  %i.ep = load i64, ptr %i.g, align 8, !tbaa !29
  call fastcc void @dom_post_process_html5_loading(ptr noundef %i.eo, i64 noundef %i.ep, ptr noundef %i.eg)
  %i.eq = load ptr, ptr %i.ak, align 8, !tbaa !100 ; 2 uses
  %.not48 = icmp eq ptr %i.eq, null
  br i1 %.not48, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 40
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !141
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.str.1.sink = phi ptr [ %i.es, %bb.y ], [ @.str.1, %bb.x ]
  %i.et = call ptr @xmlStrdup(ptr noundef %.str.1.sink) #9
  %i.eu = load ptr, ptr %i.k, align 8, !tbaa !140 ; 2 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 112
  store ptr %i.et, ptr %i.ev, align 8, !tbaa !37
  %i.ew = load ptr, ptr @dom_html_document_class_entry, align 8, !tbaa !39
  %i.ex = call ptr @php_dom_instantiate_object_helper(ptr noundef %1, ptr noundef %i.ew, ptr noundef nonnull %i.eu, ptr noundef null) #9
  %i.ey = getelementptr inbounds nuw i8, ptr %i.ex, i64 8 ; 3 uses
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !45
  call void @dom_set_xml_class(ptr noundef %i.ez) #9
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.fb = load i32, ptr %i.fa, align 4, !tbaa !142
  %i.fc = load ptr, ptr %i.ey, align 8, !tbaa !45
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 44 ; 2 uses
  %i.fe = trunc i32 %i.fb to i16
  %i.ff = load i16, ptr %i.fd, align 4
  %i.fg = shl i16 %i.fe, 8
  %i.fh = and i16 %i.ff, 255
  %i.fi = or disjoint i16 %i.fh, %i.fg
  store i16 %i.fi, ptr %i.fd, align 4
  %i.fj = call ptr @php_dom_libxml_private_data_header(ptr noundef %i.dy) #9
  %i.fk = load ptr, ptr %i.ey, align 8, !tbaa !45
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fk, i64 24
  store ptr %i.fj, ptr %i.fl, align 8, !tbaa !51
  br label %bb.aa

dom_parse_decode_encode_finish.exit:              ; preds = %bb.l, %bb.t, %bb.u, %bb.j, %bb.i
  %i.fm = call ptr @lxb_html_document_destroy(ptr noundef %i.bx) #9 ; 0 uses
  call void @php_dom_throw_error(i32 noundef 11, i1 noundef zeroext true) #9
  br label %bb.aa

bb.aa:                                            ; preds = %.thread, %dom_lexbor_libxml2_bridge_status_code_to_string.exit, %bb.z, %dom_parse_decode_encode_finish.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.ab

bb.ab:                                            ; preds = %check_options_validity.exit, %bb.a, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret void
}

declare void @lexbor_libxml2_bridge_parse_context_init(ptr noundef) local_unnamed_addr #2

declare void @lexbor_libxml2_bridge_parse_set_error_callbacks(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal void @dom_lexbor_libxml2_bridge_tokenizer_error_reporter(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.c = load i64, ptr %i.b, align 8, !tbaa !57
  %i.d = sub i64 %2, %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = load i64, ptr %i.e, align 8, !tbaa !143
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.f) ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !60   ; 6 uses
  %i.i = load i64, ptr %i.a, align 8, !tbaa !59   ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !61   ; 13 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !112  ; 4 uses
  %.not.i = icmp eq ptr %i.m, null
  %i.n = icmp ult i64 %i.k, %spec.select.i        ; 2 uses
  br i1 %.not.i, label %.preheader.i, label %.preheader46.i

.preheader46.i:                                   ; preds = %bb.a
  br i1 %i.n, label %.lr.ph.i.preheader, label %dom_find_line_and_column_using_cache.exit

.lr.ph.i.preheader:                               ; preds = %.preheader46.i
  %i.o = sub nuw i64 %spec.select.i, %i.k
  %.neg = add i64 %i.k, 1
  %xtraiter = and i64 %i.o, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.k
  %i.q = load i32, ptr %i.p, align 4, !tbaa !144
  %i.r = icmp eq i32 %i.q, 10                     ; 2 uses
  %i.s = add i64 %i.h, 1
  %.136.i.prol = select i1 %i.r, i64 1, i64 %i.s  ; 2 uses
  %i.t = zext i1 %i.r to i64
  %.132.i.prol = add i64 %i.i, %i.t               ; 2 uses
  %i.u = add nuw i64 %i.k, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.136.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %.136.i.prol, %.lr.ph.i.prol ]
  %.132.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %.132.i.prol, %.lr.ph.i.prol ]
  %.050.i.unr = phi i64 [ %i.k, %.lr.ph.i.preheader ], [ %i.u, %.lr.ph.i.prol ]
  %.03149.i.unr = phi i64 [ %i.i, %.lr.ph.i.preheader ], [ %.132.i.prol, %.lr.ph.i.prol ]
  %.03548.i.unr = phi i64 [ %i.h, %.lr.ph.i.preheader ], [ %.136.i.prol, %.lr.ph.i.prol ]
  %i.v = icmp eq i64 %spec.select.i, %.neg
  br i1 %i.v, label %dom_find_line_and_column_using_cache.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.a
  br i1 %i.n, label %.lr.ph56.i, label %dom_find_line_and_column_using_cache.exit

.lr.ph56.i:                                       ; preds = %.preheader.i
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !113  ; 3 uses
  %i.y = sub nuw i64 %spec.select.i, %i.k
  %.neg18 = add i64 %i.k, 1
  %xtraiter16 = and i64 %i.y, 1
  %lcmp.mod17.not = icmp eq i64 %xtraiter16, 0
  br i1 %lcmp.mod17.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph56.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.k
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !22   ; 2 uses
  %i.ab = icmp eq i8 %i.aa, 10                    ; 2 uses
  %.not44.i.prol = icmp sgt i8 %i.aa, -65
  %i.ac = zext i1 %.not44.i.prol to i64
  %spec.select45.i.prol = add i64 %i.h, %i.ac
  %.439.i.prol = select i1 %i.ab, i64 1, i64 %spec.select45.i.prol ; 2 uses
  %i.ad = zext i1 %i.ab to i64
  %.334.i.prol = add i64 %i.i, %i.ad              ; 2 uses
  %.2.i.prol = add nuw i64 %i.k, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph56.i
  %.439.i.lcssa.unr = phi i64 [ poison, %.lr.ph56.i ], [ %.439.i.prol, %.prol.loopexit.unr-lcssa ]
  %.334.i.lcssa.unr = phi i64 [ poison, %.lr.ph56.i ], [ %.334.i.prol, %.prol.loopexit.unr-lcssa ]
  %.155.i.unr = phi i64 [ %i.k, %.lr.ph56.i ], [ %.2.i.prol, %.prol.loopexit.unr-lcssa ]
  %.23354.i.unr = phi i64 [ %i.i, %.lr.ph56.i ], [ %.334.i.prol, %.prol.loopexit.unr-lcssa ]
  %.23753.i.unr = phi i64 [ %i.h, %.lr.ph56.i ], [ %.439.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.ae = icmp eq i64 %spec.select.i, %.neg18
  br i1 %i.ae, label %dom_find_line_and_column_using_cache.exit, label %.lr.ph56.i.new

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.050.i = phi i64 [ %i.aq, %.lr.ph.i ], [ %.050.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.03149.i = phi i64 [ %.132.i.1, %.lr.ph.i ], [ %.03149.i.unr, %.lr.ph.i.prol.loopexit ]
  %.03548.i = phi i64 [ %.136.i.1, %.lr.ph.i ], [ %.03548.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.050.i
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !144
  %i.ah = icmp eq i32 %i.ag, 10                   ; 2 uses
  %i.ai = zext i1 %i.ah to i64
  %.132.i = add i64 %.03149.i, %i.ai
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.050.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !144
  %i.am = icmp eq i32 %i.al, 10                   ; 2 uses
  %i.an = add i64 %.03548.i, 2
  %i.ao = select i1 %i.ah, i64 2, i64 %i.an
  %.136.i.1 = select i1 %i.am, i64 1, i64 %i.ao   ; 2 uses
  %i.ap = zext i1 %i.am to i64
  %.132.i.1 = add i64 %.132.i, %i.ap              ; 2 uses
  %i.aq = add nuw i64 %.050.i, 2                  ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.aq, %spec.select.i
  br i1 %exitcond.not.i.1, label %dom_find_line_and_column_using_cache.exit, label %.lr.ph.i, !llvm.loop !1

.lr.ph56.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph56.i.new
  %.155.i = phi i64 [ %.2.i.1, %.lr.ph56.i.new ], [ %.155.i.unr, %.prol.loopexit ] ; 3 uses
  %.23354.i = phi i64 [ %.334.i.1, %.lr.ph56.i.new ], [ %.23354.i.unr, %.prol.loopexit ]
  %.23753.i = phi i64 [ %.439.i.1, %.lr.ph56.i.new ], [ %.23753.i.unr, %.prol.loopexit ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.x, i64 %.155.i
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !22  ; 2 uses
  %i.at = icmp eq i8 %i.as, 10                    ; 2 uses
  %.not44.i = icmp sgt i8 %i.as, -65
  %i.au = zext i1 %.not44.i to i64
  %spec.select45.i = add i64 %.23753.i, %i.au
  %.439.i = select i1 %i.at, i64 1, i64 %spec.select45.i
  %i.av = zext i1 %i.at to i64
  %.334.i = add i64 %.23354.i, %i.av
  %i.aw = getelementptr inbounds nuw i8, ptr %i.x, i64 %.155.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 1
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !22  ; 2 uses
  %i.az = icmp eq i8 %i.ay, 10                    ; 2 uses
  %.not44.i.1 = icmp sgt i8 %i.ay, -65
  %i.ba = zext i1 %.not44.i.1 to i64
  %spec.select45.i.1 = add i64 %.439.i, %i.ba
  %.439.i.1 = select i1 %i.az, i64 1, i64 %spec.select45.i.1 ; 2 uses
  %i.bb = zext i1 %i.az to i64
  %.334.i.1 = add i64 %.334.i, %i.bb              ; 2 uses
  %.2.i.1 = add nuw i64 %.155.i, 2                ; 2 uses
  %exitcond61.not.i.1 = icmp eq i64 %.2.i.1, %spec.select.i
  br i1 %exitcond61.not.i.1, label %dom_find_line_and_column_using_cache.exit, label %.lr.ph56.i.new, !llvm.loop !2

dom_find_line_and_column_using_cache.exit:        ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.prol.loopexit, %.lr.ph56.i.new, %.preheader46.i, %.preheader.i
  %.5.i = phi i64 [ %.439.i.1, %.lr.ph56.i.new ], [ %i.h, %.preheader.i ], [ %i.h, %.preheader46.i ], [ %.439.i.lcssa.unr, %.prol.loopexit ], [ %.136.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.136.i.1, %.lr.ph.i ] ; 3 uses
  %.4.i = phi i64 [ %.334.i.1, %.lr.ph56.i.new ], [ %i.i, %.preheader.i ], [ %i.i, %.preheader46.i ], [ %.334.i.lcssa.unr, %.prol.loopexit ], [ %.132.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.132.i.1, %.lr.ph.i ] ; 3 uses
  %.3.i = phi i64 [ %spec.select.i, %.prol.loopexit ], [ %i.k, %.preheader.i ], [ %i.k, %.preheader46.i ], [ %spec.select.i, %.lr.ph56.i.new ], [ %spec.select.i, %.lr.ph.i ], [ %spec.select.i, %.lr.ph.i.prol.loopexit ]
  store i64 %.5.i, ptr %i.g, align 8, !tbaa !60
  store i64 %.4.i, ptr %i.a, align 8, !tbaa !59
  store i64 %.3.i, ptr %i.j, align 8, !tbaa !61
  %i.bc = load ptr, ptr %0, align 8, !tbaa !56    ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !194 ; 2 uses
  %i.bf = icmp ult i32 %i.be, 49
  br i1 %i.bf, label %switch.lookup, label %dom_lexbor_tokenizer_error_code_to_string.exit

switch.lookup:                                    ; preds = %dom_find_line_and_column_using_cache.exit
  %i.bg = zext nneg i32 %i.be to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dom_lexbor_libxml2_bridge_tokenizer_error_reporter, i64 %i.bg
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %dom_lexbor_tokenizer_error_code_to_string.exit

dom_lexbor_tokenizer_error_code_to_string.exit:   ; preds = %dom_find_line_and_column_using_cache.exit, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.75, %dom_find_line_and_column_using_cache.exit ]
  %i.bh = trunc i64 %.5.i to i32
  %i.bi = trunc i64 %.4.i to i32
  tail call void (ptr, i32, i32, ptr, ...) @php_libxml_pretend_ctx_error_ex(ptr noundef %i.bc, i32 noundef %i.bi, i32 noundef %i.bh, ptr noundef nonnull @.str.25, ptr noundef nonnull %.0.i, ptr noundef %i.bc, i64 noundef %.4.i, i64 noundef %.5.i) #9
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @dom_lexbor_libxml2_bridge_tree_error_reporter(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) #0 {
bb.a:
  %i.a = icmp eq i64 %2, 1
  br i1 %i.a, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.c = load i8, ptr %i.b, align 8, !tbaa !58, !range !146, !noundef !131
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i32, ptr %1, align 8, !tbaa !196
  %i.f = icmp eq i32 %i.e, 4
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %i.g = icmp ult i64 %4, 2
  %i.h = load ptr, ptr %0, align 8, !tbaa !56     ; 4 uses
  %i.i = trunc i64 %2 to i32                      ; 2 uses
  %i.j = trunc i64 %3 to i32                      ; 2 uses
  %i.k = load i32, ptr %1, align 8, !tbaa !196    ; 3 uses
  %i.l = icmp ult i32 %i.k, 36                    ; 2 uses
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br i1 %i.l, label %switch.lookup, label %dom_lexbor_tree_error_code_to_string.exit

switch.lookup:                                    ; preds = %bb.e
  %i.m = zext nneg i32 %i.k to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dom_lexbor_libxml2_bridge_tree_error_reporter.5, i64 %i.m
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %dom_lexbor_tree_error_code_to_string.exit

dom_lexbor_tree_error_code_to_string.exit:        ; preds = %bb.e, %switch.lookup
  %.0.i = phi ptr [ %switch.load, %switch.lookup ], [ @.str.75, %bb.e ]
  tail call void (ptr, i32, i32, ptr, ...) @php_libxml_pretend_ctx_error_ex(ptr noundef %i.h, i32 noundef %i.i, i32 noundef %i.j, ptr noundef nonnull @.str.76, ptr noundef nonnull %.0.i, ptr noundef %i.h, i64 noundef %2, i64 noundef %3) #9
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  br i1 %i.l, label %switch.lookup22, label %dom_lexbor_tree_error_code_to_string.exit21

switch.lookup22:                                  ; preds = %bb.f
  %i.n = zext nneg i32 %i.k to i64
  %switch.gep23 = getelementptr inbounds nuw [8 x i8], ptr @switch.table.dom_lexbor_libxml2_bridge_tree_error_reporter.5, i64 %i.n
  %switch.load24 = load ptr, ptr %switch.gep23, align 8
  br label %dom_lexbor_tree_error_code_to_string.exit21

dom_lexbor_tree_error_code_to_string.exit21:      ; preds = %bb.f, %switch.lookup22
  %.0.i20 = phi ptr [ %switch.load24, %switch.lookup22 ], [ @.str.75, %bb.f ]
  %i.o = add i64 %3, -1
  %i.p = add i64 %i.o, %4
  tail call void (ptr, i32, i32, ptr, ...) @php_libxml_pretend_ctx_error_ex(ptr noundef %i.h, i32 noundef %i.i, i32 noundef %i.j, ptr noundef nonnull @.str.77, ptr noundef nonnull %.0.i20, ptr noundef %i.h, i64 noundef %2, i64 noundef %3, i64 noundef %i.p) #9
  br label %bb.g

bb.g:                                             ; preds = %dom_lexbor_tree_error_code_to_string.exit, %dom_lexbor_tree_error_code_to_string.exit21, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @dom_setup_parser_encoding_implicitly(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr noundef nonnull initializes((152, 160)) %2, ptr nofree noundef nonnull writeonly captures(none) initializes((8, 24)) %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.lxb_html_encoding_t, align 8 ; 8 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !27     ; 9 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !29     ; 3 uses
  %i.c = icmp ugt i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1, !tbaa !22    ; 2 uses
  %i.e = icmp eq i8 %i.d, -17
  br i1 %i.e, label %bb.c, label %.thread.i

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.g = load i8, ptr %i.f, align 1, !tbaa !22
  %i.h = icmp eq i8 %i.g, -69
  br i1 %i.h, label %bb.d, label %.thread22.i

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  %i.j = load i8, ptr %i.i, align 1, !tbaa !22
  %i.k = icmp eq i8 %i.j, -65
  br i1 %i.k, label %bb.e, label %.thread22.i

bb.e:                                             ; preds = %bb.d
  %i.l = tail call ptr @lxb_encoding_data(i32 noundef 27) #9
  br label %dom_determine_encoding.exit

bb.f:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %i.b, 2
  br i1 %i.m, label %..threadthread-pre-split_crit_edge.i, label %.thread22.i

..threadthread-pre-split_crit_edge.i:             ; preds = %bb.f
  %.pr.pre.i = load i8, ptr %i.a, align 1, !tbaa !22
  br label %.thread.i

.thread.i:                                        ; preds = %..threadthread-pre-split_crit_edge.i, %bb.b
  %i.n = phi i8 [ %i.d, %bb.b ], [ %.pr.pre.i, %..threadthread-pre-split_crit_edge.i ]
  switch i8 %i.n, label %.thread22.i [
    i8 -2, label %bb.g
    i8 -1, label %bb.i
  ]

bb.g:                                             ; preds = %.thread.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !22
  %i.q = icmp eq i8 %i.p, -1
  br i1 %i.q, label %bb.h, label %.thread22.i

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr @lxb_encoding_data(i32 noundef 25) #9
  br label %dom_determine_encoding.exit

bb.i:                                             ; preds = %.thread.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %i.t = load i8, ptr %i.s, align 1, !tbaa !22
  %i.u = icmp eq i8 %i.t, -2
  br i1 %i.u, label %bb.j, label %.thread22.i

bb.j:                                             ; preds = %bb.i
  %i.v = tail call ptr @lxb_encoding_data(i32 noundef 26) #9
  br label %dom_determine_encoding.exit

.thread22.i:                                      ; preds = %bb.i, %bb.g, %.thread.i, %bb.f, %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  %i.w = call i32 @lxb_html_encoding_init(ptr noundef nonnull %4) #9
  %.not.i = icmp eq i32 %i.w, 0
  br i1 %.not.i, label %bb.k, label %bb.p

bb.k:                                             ; preds = %.thread22.i
  %spec.store.select.i = call i64 @llvm.umin.i64(i64 %i.b, i64 1024)
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 %spec.store.select.i
  %i.y = call i32 @lxb_html_encoding_determine(ptr noundef nonnull %4, ptr noundef %i.a, ptr noundef %i.x) #9
  %.not19.i = icmp eq i32 %i.y, 0
  br i1 %.not19.i, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.val.i = load ptr, ptr %i.z, align 8           ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 48
  %.val21.i = load i64, ptr %i.aa, align 8, !tbaa !198
  %i.ab = icmp eq i64 %.val21.i, 0
  %i.ac = icmp eq ptr %.val.i, null
  %i.ad = select i1 %i.ab, i1 true, i1 %i.ac
  br i1 %i.ad, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ae = load ptr, ptr %.val.i, align 8, !tbaa !200 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !201
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.ae to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = call ptr @lxb_encoding_data_by_pre_name(ptr noundef %i.ae, i64 noundef %i.aj) #9 ; 2 uses
  %.not20.i = icmp eq ptr %i.ak, null
  br i1 %.not20.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = call ptr @lxb_html_encoding_destroy(ptr noundef nonnull %4, i1 noundef zeroext false) #9 ; 0 uses
  br label %bb.q

bb.o:                                             ; preds = %bb.m, %bb.l, %bb.k
  %i.am = call ptr @lxb_html_encoding_destroy(ptr noundef nonnull %4, i1 noundef zeroext false) #9 ; 0 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread22.i
  %i.an = call ptr @lxb_encoding_data(i32 noundef 27) #9
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.n
  %.sroa.0.0.i = phi ptr [ %i.an, %bb.p ], [ %i.ak, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  br label %dom_determine_encoding.exit

dom_determine_encoding.exit:                      ; preds = %bb.e, %bb.h, %bb.j, %bb.q
  %.sroa.0.1.i = phi ptr [ %i.l, %bb.e ], [ %i.r, %bb.h ], [ %i.v, %bb.j ], [ %.sroa.0.0.i, %bb.q ] ; 4 uses
  %.sroa.7.1.i = phi i64 [ 3, %bb.e ], [ 2, %bb.h ], [ 2, %bb.j ], [ 0, %bb.q ] ; 2 uses
  %i.ao = load ptr, ptr %0, align 8, !tbaa !27
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %.sroa.7.1.i
  store ptr %i.ap, ptr %0, align 8, !tbaa !27
  %i.aq = load i64, ptr %1, align 8, !tbaa !29
  %i.ar = sub i64 %i.aq, %.sroa.7.1.i
  store i64 %i.ar, ptr %1, align 8, !tbaa !29
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 152
  store ptr %.sroa.0.1.i, ptr %i.as, align 8, !tbaa !100
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4256 ; 2 uses
  %i.au = icmp eq ptr %.sroa.0.1.i, null
  br i1 %i.au, label %lxb_encoding_decode_init.exit.i, label %.thread

.thread:                                          ; preds = %dom_determine_encoding.exit
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %2, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aw, i8 0, i64 56, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 72
  store ptr %i.at, ptr %i.ax, align 8, !tbaa !107
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 80
  store i64 4096, ptr %i.ay, align 8, !tbaa !108
  store ptr %.sroa.0.1.i, ptr %i.av, align 8, !tbaa !109
  br label %bb.s

lxb_encoding_decode_init.exit.i:                  ; preds = %dom_determine_encoding.exit
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %2, i64 72
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !107
  %i.az = icmp eq ptr %.pre.i, null
  br i1 %i.az, label %dom_setup_parser_encoding_manually.exit, label %bb.r

bb.r:                                             ; preds = %lxb_encoding_decode_init.exit.i
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %2, i64 80
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !108
  %i.ba = icmp eq i64 %.pre, 0
  br i1 %i.ba, label %dom_setup_parser_encoding_manually.exit, label %bb.s

bb.s:                                             ; preds = %.thread, %bb.r
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 96
  store ptr @dom_setup_parser_encoding_manually.replacement_codepoint, ptr %i.bb, align 8, !tbaa !110
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 104
  store i64 1, ptr %i.bc, align 8, !tbaa !111
  br label %dom_setup_parser_encoding_manually.exit

dom_setup_parser_encoding_manually.exit:          ; preds = %lxb_encoding_decode_init.exit.i, %bb.r, %bb.s
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 144
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !99
  %i.bf = icmp eq ptr %.sroa.0.1.i, %i.be         ; 3 uses
  %i.bg = zext i1 %i.bf to i8
  store i8 %i.bg, ptr %2, align 8, !tbaa !101
  %spec.select.i = select i1 %i.bf, ptr null, ptr %i.at
  %spec.select18.i = select i1 %i.bf, ptr %i.a, ptr null
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %spec.select.i, ptr %i.bh, align 8, !tbaa !112
  %i.bi = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %spec.select18.i, ptr %i.bi, align 8, !tbaa !113
  ret void
}

declare ptr @lxb_html_document_create() local_unnamed_addr #2

declare i32 @lxb_html_document_parse_chunk_begin(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @dom_parse_decode_encode_step(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, ptr nofree noundef nonnull captures(none) %3, ptr noundef %4, ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = alloca ptr, align 8                      ; 14 uses
  %i.d = alloca [4 x i8], align 1                 ; 8 uses
  %i.e = alloca ptr, align 8                      ; 6 uses
  %i.f = load i8, ptr %5, align 8, !tbaa !101, !range !146, !noundef !131
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 64 ; 3 uses
  br i1 %i.g, label %bb.b, label %bb.m

bb.b:                                             ; preds = %bb.a
  %i.i = ptrtoaddr ptr %4 to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  %i.j = load ptr, ptr %3, align 8, !tbaa !27     ; 2 uses
  store ptr %i.j, ptr %i.c, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 124 ; 3 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !206
  %i.m = icmp eq i32 %i.l, 14
  br i1 %i.m, label %bb.c, label %._crit_edge91.i

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  store ptr %i.d, ptr %i.e, align 8, !tbaa !27
  %i.n = call i32 @lxb_encoding_decode_utf_8_single(ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef %4) #9
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.q = call signext i8 @lxb_encoding_encode_utf_8_single(ptr noundef nonnull %i.o, ptr noundef nonnull %i.e, ptr noundef nonnull %i.p, i32 noundef %i.n) #9
  %i.r = icmp ugt i8 %i.q, 4
  br i1 %i.r, label %bb.d, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.c
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !27
  br label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.d, ptr noundef nonnull align 1 dereferenceable(3) @.str.113, i64 3, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 3 ; 2 uses
  store ptr %i.s, ptr %i.e, align 8, !tbaa !27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge.i
  %i.t = phi ptr [ %.pre.i, %._crit_edge.i ], [ %i.s, %bb.d ]
  store i32 0, ptr %i.k, align 4, !tbaa !206
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.d to i64
  %i.w = sub i64 %i.u, %i.v
  %i.x = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.y = load ptr, ptr %3, align 8, !tbaa !27
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = sub i64 %i.z, %i.aa
  %i.ac = call fastcc zeroext i1 @dom_process_parse_chunk(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %i.w, ptr noundef nonnull %i.d, i64 noundef %i.ab, ptr noundef nonnull %6, ptr noundef nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  %.pre99.i = load ptr, ptr %i.c, align 8, !tbaa !27 ; 2 uses
  br i1 %i.ac, label %._crit_edge91.i, label %.thread62.i

._crit_edge91.i:                                  ; preds = %bb.e, %bb.b
  %i.ad = phi ptr [ %i.j, %bb.b ], [ %.pre99.i, %bb.e ] ; 4 uses
  %.not78.i = icmp eq ptr %i.ad, %4
  br i1 %.not78.i, label %._crit_edge96.i, label %.lr.ph80.i

.lr.ph80.i:                                       ; preds = %._crit_edge91.i
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 128
  br label %bb.f

bb.f:                                             ; preds = %select.unfold.i, %.lr.ph80.i
  %.promoted.i = phi ptr [ %i.ad, %.lr.ph80.i ], [ %i.bh, %select.unfold.i ] ; 4 uses
  %.079.i = phi ptr [ %i.ad, %.lr.ph80.i ], [ %.2.i, %select.unfold.i ] ; 4 uses
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !22
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %.preheader68.i, label %dom_seek_utf8_non_ascii.exit.thread.i

.preheader68.i:                                   ; preds = %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %.promoted.i, i64 8 ; 2 uses
  %.not.i74.i = icmp ugt ptr %i.ah, %4
  br i1 %.not.i74.i, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.g, %.preheader68.i
  %.promoted75.i = phi ptr [ %.promoted.i, %.preheader68.i ], [ %i.ak, %bb.g ] ; 5 uses
  %i.ai = icmp ult ptr %.promoted75.i, %4
  br i1 %i.ai, label %.lr.ph76.preheader.i, label %dom_seek_utf8_non_ascii.exit.i

.lr.ph76.preheader.i:                             ; preds = %.preheader.i
  %.promoted7589.i = ptrtoaddr ptr %.promoted75.i to i64
  %scevgep.i = getelementptr i8, ptr %.promoted75.i, i64 %i.i
  %i.aj = sub i64 0, %.promoted7589.i
  %scevgep90.i = getelementptr i8, ptr %scevgep.i, i64 %i.aj
  br label %.lr.ph76.i

.lr.ph.i:                                         ; preds = %.preheader68.i, %bb.g
  %i.ak = phi ptr [ %i.an, %bb.g ], [ %i.ah, %.preheader68.i ] ; 4 uses
  %i.al = phi ptr [ %i.ak, %bb.g ], [ %.promoted.i, %.preheader68.i ] ; 2 uses
  %.0.copyload.i.i = load i64, ptr %i.al, align 1
  %i.am = and i64 %.0.copyload.i.i, -9187201950435737472
  %.not14.i.not.i = icmp eq i64 %i.am, 0
  br i1 %.not14.i.not.i, label %bb.g, label %dom_seek_utf8_non_ascii.exit.thread.i

bb.g:                                             ; preds = %.lr.ph.i
  store ptr %i.ak, ptr %i.c, align 8, !tbaa !27
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 8 ; 2 uses
  %.not.i.i = icmp ugt ptr %i.an, %4
  br i1 %.not.i.i, label %.preheader.i, label %.lr.ph.i

.lr.ph76.i:                                       ; preds = %bb.h, %.lr.ph76.preheader.i
  %i.ao = phi ptr [ %i.aq, %bb.h ], [ %.promoted75.i, %.lr.ph76.preheader.i ] ; 3 uses
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !22
  %.not13.i.i = icmp sgt i8 %i.ap, -1
  br i1 %.not13.i.i, label %bb.h, label %dom_seek_utf8_non_ascii.exit.thread.i

bb.h:                                             ; preds = %.lr.ph76.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 1 ; 4 uses
  store ptr %i.aq, ptr %i.c, align 8, !tbaa !27
  %exitcond.not.i = icmp eq ptr %i.aq, %scevgep90.i
  br i1 %exitcond.not.i, label %dom_seek_utf8_non_ascii.exit.i, label %.lr.ph76.i, !llvm.loop !202

dom_seek_utf8_non_ascii.exit.i:                   ; preds = %.preheader.i, %bb.h
  %i.ar = phi ptr [ %i.aq, %bb.h ], [ %.promoted75.i, %.preheader.i ] ; 2 uses
  %i.as = icmp eq ptr %i.ar, %4
  call void @llvm.assume(i1 %i.as)
  br label %.loopexit.i

dom_seek_utf8_non_ascii.exit.thread.i:            ; preds = %.lr.ph.i, %.lr.ph76.i, %bb.f
  %i.at = phi ptr [ %i.ao, %.lr.ph76.i ], [ %.promoted.i, %bb.f ], [ %i.al, %.lr.ph.i ]
  %i.au = call i32 @lxb_encoding_decode_utf_8_single(ptr noundef nonnull %i.h, ptr noundef nonnull %i.c, ptr noundef %4) #9 ; 2 uses
  %i.av = icmp ugt i32 %i.au, 1114111
  %.pre95.i = load ptr, ptr %i.c, align 8, !tbaa !27 ; 2 uses
  br i1 %i.av, label %bb.i, label %select.unfold.i, !prof !30

bb.i:                                             ; preds = %dom_seek_utf8_non_ascii.exit.thread.i
  %i.aw = ptrtoint ptr %i.at to i64
  %i.ax = ptrtoint ptr %.079.i to i64             ; 2 uses
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ptrtoint ptr %.pre95.i to i64
  %i.ba = sub i64 %i.az, %i.ax
  %i.bb = call fastcc zeroext i1 @dom_process_parse_chunk(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %i.ay, ptr noundef %.079.i, i64 noundef %i.ba, ptr noundef nonnull %6, ptr noundef nonnull %7)
  br i1 %i.bb, label %bb.j, label %..thread62.loopexit_crit_edge.i

..thread62.loopexit_crit_edge.i:                  ; preds = %bb.i
  %.pre98.pre.i = load ptr, ptr %i.c, align 8, !tbaa !27
  br label %.thread62.i

bb.j:                                             ; preds = %bb.i
  %i.bc = icmp eq i32 %i.au, 3145727
  br i1 %i.bc, label %.thread65.i, label %bb.k

.thread65.i:                                      ; preds = %bb.j
  %i.bd = load ptr, ptr %i.c, align 8, !tbaa !27  ; 2 uses
  %i.be = icmp eq ptr %i.bd, %4
  call void @llvm.assume(i1 %i.be)
  store ptr %i.bd, ptr %3, align 8, !tbaa !27
  store i32 14, ptr %i.k, align 4, !tbaa !206
  br label %dom_decode_encode_fast_path.exit

bb.k:                                             ; preds = %bb.j
  %i.bf = call fastcc zeroext i1 @dom_process_parse_chunk(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef 3, ptr noundef nonnull @.str.113, i64 noundef 0, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %i.bg = load ptr, ptr %i.c, align 8             ; 3 uses
  br i1 %i.bf, label %select.unfold.i, label %.thread62.i

select.unfold.i:                                  ; preds = %bb.k, %dom_seek_utf8_non_ascii.exit.thread.i
  %i.bh = phi ptr [ %.pre95.i, %dom_seek_utf8_non_ascii.exit.thread.i ], [ %i.bg, %bb.k ] ; 3 uses
  %.2.i = phi ptr [ %.079.i, %dom_seek_utf8_non_ascii.exit.thread.i ], [ %i.bg, %bb.k ] ; 2 uses
  %.not.i = icmp eq ptr %i.bh, %4
  br i1 %.not.i, label %.loopexit.i, label %bb.f

.loopexit.i:                                      ; preds = %select.unfold.i, %dom_seek_utf8_non_ascii.exit.i
  %i.bi = phi ptr [ %i.ar, %dom_seek_utf8_non_ascii.exit.i ], [ %i.bh, %select.unfold.i ] ; 3 uses
  %.073.i = phi ptr [ %.079.i, %dom_seek_utf8_non_ascii.exit.i ], [ %.2.i, %select.unfold.i ] ; 3 uses
  %.not59.i = icmp eq ptr %i.bi, %.073.i
  br i1 %.not59.i, label %._crit_edge96.i, label %bb.l

bb.l:                                             ; preds = %.loopexit.i
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = ptrtoint ptr %.073.i to i64
  %i.bl = sub i64 %i.bj, %i.bk                    ; 2 uses
  %i.bm = call fastcc zeroext i1 @dom_process_parse_chunk(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %i.bl, ptr noundef %.073.i, i64 noundef %i.bl, ptr noundef nonnull %6, ptr noundef nonnull %7)
  %.pre100.i = load ptr, ptr %i.c, align 8, !tbaa !27 ; 2 uses
  br i1 %i.bm, label %._crit_edge96.i, label %.thread62.i

._crit_edge96.i:                                  ; preds = %bb.l, %.loopexit.i, %._crit_edge91.i
  %i.bn = phi ptr [ %.pre100.i, %bb.l ], [ %i.bi, %.loopexit.i ], [ %i.ad, %._crit_edge91.i ]
  store ptr %i.bn, ptr %3, align 8, !tbaa !27
  br label %dom_decode_encode_fast_path.exit

.thread62.i:                                      ; preds = %bb.k, %bb.l, %..thread62.loopexit_crit_edge.i, %bb.e
  %i.bo = phi ptr [ %.pre100.i, %bb.l ], [ %.pre99.i, %bb.e ], [ %.pre98.pre.i, %..thread62.loopexit_crit_edge.i ], [ %i.bg, %bb.k ]
  store ptr %i.bo, ptr %3, align 8, !tbaa !27
  br label %dom_decode_encode_fast_path.exit

dom_decode_encode_fast_path.exit:                 ; preds = %.thread65.i, %._crit_edge96.i, %.thread62.i
  %.255.i = phi i1 [ true, %.thread65.i ], [ true, %._crit_edge96.i ], [ false, %.thread62.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  br label %bb.v

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.bp = load ptr, ptr %3, align 8, !tbaa !27
  store ptr %i.bp, ptr %i.a, align 8, !tbaa !27
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 152
  %i.br = getelementptr inbounds nuw i8, ptr %5, i64 4256 ; 2 uses
  %i.bs = getelementptr i8, ptr %5, i64 88        ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %5, i64 144
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bv = getelementptr i8, ptr %5, i64 32        ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 160 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.n

bb.n:                                             ; preds = %bb.t, %bb.m
  %i.bz = load ptr, ptr %i.bq, align 8, !tbaa !100
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !207
  %i.cc = call i32 %i.cb(ptr noundef nonnull %i.h, ptr noundef nonnull %i.a, ptr noundef %4) #9, !inline_history !203
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  store ptr %i.br, ptr %i.b, align 8, !tbaa !133
  %.val.i = load i64, ptr %i.bs, align 8, !tbaa !132 ; 4 uses
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %i.br, i64 %.val.i
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %bb.n
  %i.ce = load ptr, ptr %i.bt, align 8, !tbaa !99
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !134
  %i.ch = call i32 %i.cg(ptr noundef nonnull %i.bu, ptr noundef nonnull %i.b, ptr noundef nonnull %i.cd) #9, !inline_history !203 ; 2 uses
  %i.ci = icmp ne i32 %i.ch, 1
  call void @llvm.assume(i1 %i.ci)
  %.val28.i = load i64, ptr %i.bv, align 8, !tbaa !135
  %i.cj = load ptr, ptr %i.bx, align 8, !tbaa !94 ; 9 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 2 uses
  store i64 %.val.i, ptr %i.ck, align 8, !tbaa !143
  %i.cl = call i32 @lxb_html_document_parse_chunk(ptr noundef nonnull %1, ptr noundef nonnull %i.bw, i64 noundef %.val28.i) #9
  %.not.i.i18 = icmp eq i32 %i.cl, 0              ; 2 uses
  br i1 %.not.i.i18, label %bb.p, label %bb.u, !prof !114

bb.p:                                             ; preds = %bb.o
  %i.cm = load ptr, ptr %0, align 8, !tbaa !147
  %.not22.i.i = icmp eq ptr %i.cm, null
  br i1 %.not22.i.i, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.cn = load ptr, ptr %i.by, align 8, !tbaa !148
  %.not23.i.i = icmp eq ptr %i.cn, null
  br i1 %.not23.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.co = getelementptr inbounds nuw i8, ptr %i.cj, i64 32
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !57
  call void @lexbor_libxml2_bridge_report_errors(ptr noundef nonnull %0, ptr noundef %2, ptr noundef nonnull %i.bw, i64 noundef %i.cp, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cj, i64 40 ; 2 uses
  %i.cr = load i64, ptr %i.ck, align 8, !tbaa !143
  %spec.select.i.i.i = call i64 @llvm.umin.i64(i64 %.val.i, i64 %i.cr) ; 7 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cj, i64 48 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !60 ; 6 uses
  %i.cu = load i64, ptr %i.cq, align 8, !tbaa !59 ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !61 ; 11 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !112 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.cy, null
  %i.cz = icmp ult i64 %i.cw, %spec.select.i.i.i  ; 2 uses
  br i1 %.not.i.i.i, label %.preheader.i.i.i, label %.preheader46.i.i.i

.preheader46.i.i.i:                               ; preds = %bb.r
  br i1 %i.cz, label %.lr.ph.i.i.i.preheader, label %dom_find_line_and_column_using_cache.exit.i.i

.lr.ph.i.i.i.preheader:                           ; preds = %.preheader46.i.i.i
  %i.da = sub nuw i64 %spec.select.i.i.i, %i.cw
  %.neg = add i64 %i.cw, 1
  %xtraiter = and i64 %i.da, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %i.cw
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !144
  %i.dd = icmp eq i32 %i.dc, 10                   ; 2 uses
  %i.de = add i64 %i.ct, 1
  %.136.i.i.i.prol = select i1 %i.dd, i64 1, i64 %i.de ; 2 uses
  %i.df = zext i1 %i.dd to i64
  %.132.i.i.i.prol = add i64 %i.cu, %i.df         ; 2 uses
  %i.dg = add nuw i64 %i.cw, 1
  br label %.lr.ph.i.i.i.prol.loopexit

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.136.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %.136.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.132.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.i.preheader ], [ %.132.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.050.i.i.i.unr = phi i64 [ %i.cw, %.lr.ph.i.i.i.preheader ], [ %i.dg, %.lr.ph.i.i.i.prol ]
  %.03149.i.i.i.unr = phi i64 [ %i.cu, %.lr.ph.i.i.i.preheader ], [ %.132.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %.03548.i.i.i.unr = phi i64 [ %i.ct, %.lr.ph.i.i.i.preheader ], [ %.136.i.i.i.prol, %.lr.ph.i.i.i.prol ]
  %i.dh = icmp eq i64 %spec.select.i.i.i, %.neg
  br i1 %i.dh, label %dom_find_line_and_column_using_cache.exit.i.i, label %.lr.ph.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.r
  br i1 %i.cz, label %.lr.ph56.i.i.i, label %dom_find_line_and_column_using_cache.exit.i.i

.lr.ph56.i.i.i:                                   ; preds = %.preheader.i.i.i
  %i.di = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !113 ; 3 uses
  %i.dk = sub nuw i64 %spec.select.i.i.i, %i.cw
  %.neg136 = add i64 %i.cw, 1
  %xtraiter134 = and i64 %i.dk, 1
  %lcmp.mod135.not = icmp eq i64 %xtraiter134, 0
  br i1 %lcmp.mod135.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph56.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 %i.cw
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !22  ; 2 uses
  %i.dn = icmp eq i8 %i.dm, 10                    ; 2 uses
  %.not44.i.i.i.prol = icmp sgt i8 %i.dm, -65
  %i.do = zext i1 %.not44.i.i.i.prol to i64
  %spec.select45.i.i.i.prol = add i64 %i.ct, %i.do
  %.439.i.i.i.prol = select i1 %i.dn, i64 1, i64 %spec.select45.i.i.i.prol ; 2 uses
  %i.dp = zext i1 %i.dn to i64
  %.334.i.i.i.prol = add i64 %i.cu, %i.dp         ; 2 uses
  %.2.i.i.i.prol = add nuw i64 %i.cw, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph56.i.i.i
  %.439.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph56.i.i.i ], [ %.439.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.334.i.i.i.lcssa.unr = phi i64 [ poison, %.lr.ph56.i.i.i ], [ %.334.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.155.i.i.i.unr = phi i64 [ %i.cw, %.lr.ph56.i.i.i ], [ %.2.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.23354.i.i.i.unr = phi i64 [ %i.cu, %.lr.ph56.i.i.i ], [ %.334.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.23753.i.i.i.unr = phi i64 [ %i.ct, %.lr.ph56.i.i.i ], [ %.439.i.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.dq = icmp eq i64 %spec.select.i.i.i, %.neg136
  br i1 %i.dq, label %dom_find_line_and_column_using_cache.exit.i.i, label %.lr.ph56.i.i.i.new

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.050.i.i.i = phi i64 [ %i.ec, %.lr.ph.i.i.i ], [ %.050.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 3 uses
  %.03149.i.i.i = phi i64 [ %.132.i.i.i.1, %.lr.ph.i.i.i ], [ %.03149.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %.03548.i.i.i = phi i64 [ %.136.i.i.i.1, %.lr.ph.i.i.i ], [ %.03548.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.050.i.i.i
  %i.ds = load i32, ptr %i.dr, align 4, !tbaa !144
  %i.dt = icmp eq i32 %i.ds, 10                   ; 2 uses
  %i.du = zext i1 %i.dt to i64
  %.132.i.i.i = add i64 %.03149.i.i.i, %i.du
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.cy, i64 %.050.i.i.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 4
  %i.dx = load i32, ptr %i.dw, align 4, !tbaa !144
  %i.dy = icmp eq i32 %i.dx, 10                   ; 2 uses
  %i.dz = add i64 %.03548.i.i.i, 2
  %i.ea = select i1 %i.dt, i64 2, i64 %i.dz
  %.136.i.i.i.1 = select i1 %i.dy, i64 1, i64 %i.ea ; 2 uses
  %i.eb = zext i1 %i.dy to i64
  %.132.i.i.i.1 = add i64 %.132.i.i.i, %i.eb      ; 2 uses
  %i.ec = add nuw i64 %.050.i.i.i, 2              ; 2 uses
  %exitcond.not.i.i.i.1 = icmp eq i64 %i.ec, %spec.select.i.i.i
  br i1 %exitcond.not.i.i.i.1, label %dom_find_line_and_column_using_cache.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !1

.lr.ph56.i.i.i.new:                               ; preds = %.prol.loopexit, %.lr.ph56.i.i.i.new
  %.155.i.i.i = phi i64 [ %.2.i.i.i.1, %.lr.ph56.i.i.i.new ], [ %.155.i.i.i.unr, %.prol.loopexit ] ; 3 uses
  %.23354.i.i.i = phi i64 [ %.334.i.i.i.1, %.lr.ph56.i.i.i.new ], [ %.23354.i.i.i.unr, %.prol.loopexit ]
  %.23753.i.i.i = phi i64 [ %.439.i.i.i.1, %.lr.ph56.i.i.i.new ], [ %.23753.i.i.i.unr, %.prol.loopexit ]
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.155.i.i.i
  %i.ee = load i8, ptr %i.ed, align 1, !tbaa !22  ; 2 uses
  %i.ef = icmp eq i8 %i.ee, 10                    ; 2 uses
  %.not44.i.i.i = icmp sgt i8 %i.ee, -65
  %i.eg = zext i1 %.not44.i.i.i to i64
  %spec.select45.i.i.i = add i64 %.23753.i.i.i, %i.eg
  %.439.i.i.i = select i1 %i.ef, i64 1, i64 %spec.select45.i.i.i
  %i.eh = zext i1 %i.ef to i64
  %.334.i.i.i = add i64 %.23354.i.i.i, %i.eh
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dj, i64 %.155.i.i.i
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 1
  %i.ek = load i8, ptr %i.ej, align 1, !tbaa !22  ; 2 uses
  %i.el = icmp eq i8 %i.ek, 10                    ; 2 uses
  %.not44.i.i.i.1 = icmp sgt i8 %i.ek, -65
  %i.em = zext i1 %.not44.i.i.i.1 to i64
  %spec.select45.i.i.i.1 = add i64 %.439.i.i.i, %i.em
  %.439.i.i.i.1 = select i1 %i.el, i64 1, i64 %spec.select45.i.i.i.1 ; 2 uses
  %i.en = zext i1 %i.el to i64
  %.334.i.i.i.1 = add i64 %.334.i.i.i, %i.en      ; 2 uses
  %.2.i.i.i.1 = add nuw i64 %.155.i.i.i, 2        ; 2 uses
  %exitcond61.not.i.i.i.1 = icmp eq i64 %.2.i.i.i.1, %spec.select.i.i.i
  br i1 %exitcond61.not.i.i.i.1, label %dom_find_line_and_column_using_cache.exit.i.i, label %.lr.ph56.i.i.i.new, !llvm.loop !2

dom_find_line_and_column_using_cache.exit.i.i:    ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %.prol.loopexit, %.lr.ph56.i.i.i.new, %.preheader.i.i.i, %.preheader46.i.i.i
  %.5.i.i.i = phi i64 [ %.439.i.i.i.1, %.lr.ph56.i.i.i.new ], [ %i.ct, %.preheader.i.i.i ], [ %i.ct, %.preheader46.i.i.i ], [ %.439.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.136.i.i.i.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %.136.i.i.i.1, %.lr.ph.i.i.i ]
  %.4.i.i.i = phi i64 [ %.334.i.i.i.1, %.lr.ph56.i.i.i.new ], [ %i.cu, %.preheader.i.i.i ], [ %i.cu, %.preheader46.i.i.i ], [ %.334.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.132.i.i.i.lcssa.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %.132.i.i.i.1, %.lr.ph.i.i.i ]
  store i64 %.5.i.i.i, ptr %i.cs, align 8, !tbaa !60
  store i64 %.4.i.i.i, ptr %i.cq, align 8, !tbaa !59
  br label %bb.s

bb.s:                                             ; preds = %dom_find_line_and_column_using_cache.exit.i.i, %bb.q
  %i.eo = getelementptr inbounds nuw i8, ptr %i.cj, i64 32 ; 2 uses
  %i.ep = load i64, ptr %i.eo, align 8, !tbaa !57
  %i.eq = add i64 %i.ep, %.val.i
  store i64 %i.eq, ptr %i.eo, align 8, !tbaa !57
  %i.er = getelementptr inbounds nuw i8, ptr %i.cj, i64 56
  store i64 0, ptr %i.er, align 8, !tbaa !149
  store i64 0, ptr %i.bv, align 8, !tbaa !135
  %i.es = icmp eq i32 %i.ch, 15
  br i1 %i.es, label %bb.o, label %bb.t, !llvm.loop !204

bb.t:                                             ; preds = %bb.s
  store i64 0, ptr %i.bs, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.et = icmp eq i32 %i.cc, 15
  br i1 %i.et, label %bb.n, label %dom_decode_encode_slow_path.exit, !llvm.loop !205

bb.u:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %dom_decode_encode_slow_path.exit

dom_decode_encode_slow_path.exit:                 ; preds = %bb.t, %bb.u
  %storemerge.i = load ptr, ptr %i.a, align 8, !tbaa !27
  store ptr %storemerge.i, ptr %3, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.v

bb.v:                                             ; preds = %dom_decode_encode_slow_path.exit, %dom_decode_encode_fast_path.exit
  %.0 = phi i1 [ %.255.i, %dom_decode_encode_fast_path.exit ], [ %.not.i.i18, %dom_decode_encode_slow_path.exit ]
  ret i1 %.0
}

declare i32 @lxb_html_document_parse_chunk_end(ptr noundef) local_unnamed_addr #2

declare i32 @lexbor_libxml2_bridge_convert_document(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

declare void @lexbor_libxml2_bridge_copy_observations(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @php_dom_private_data_destroy(ptr noundef) local_unnamed_addr #2

declare void @php_libxml_ctx_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @lxb_html_document_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @dom_post_process_html5_loading(ptr noundef %0, i64 noundef %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = and i64 %1, 8192
  %.not = icmp eq i64 %i.a, 0
  br i1 %.not, label %dom_place_remove_element_and_hoist_children.exit38, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.09.i = load ptr, ptr %i.b, align 8, !tbaa !150 ; 2 uses
  %.not10.i = icmp eq ptr %.09.i, null
  br i1 %.not10.i, label %dom_search_child.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.d
  %.011.i = phi ptr [ %.0.i, %bb.d ], [ %.09.i, %bb.b ] ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.011.i, i64 8
  %i.d = load i32, ptr %i.c, align 8, !tbaa !154
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph.i
  %i.f = getelementptr inbounds nuw i8, ptr %.011.i, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !155
  %i.h = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.g, ptr noundef nonnull dereferenceable(5) @.str.119) #10
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %dom_search_child.exit, label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %i.j = getelementptr inbounds nuw i8, ptr %.011.i, i64 48
  %.0.i = load ptr, ptr %i.j, align 8, !tbaa !150 ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %dom_search_child.exit, label %.lr.ph.i, !llvm.loop !208

dom_search_child.exit:                            ; preds = %bb.c, %bb.d, %bb.b
  %.0.lcssa.i = phi ptr [ null, %bb.b ], [ %.011.i, %bb.c ], [ null, %bb.d ] ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.l = load i8, ptr %i.k, align 1, !tbaa !210, !range !146, !noundef !131
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %dom_place_remove_element_and_hoist_children.exit, label %bb.e

bb.e:                                             ; preds = %dom_search_child.exit
  %i.n = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 24
  %.09.i.i = load ptr, ptr %i.n, align 8, !tbaa !150 ; 2 uses
  %.not10.i.i = icmp eq ptr %.09.i.i, null
  br i1 %.not10.i.i, label %dom_place_remove_element_and_hoist_children.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e, %bb.g
  %.011.i.i = phi ptr [ %.0.i.i, %bb.g ], [ %.09.i.i, %bb.e ] ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 8
  %i.p = load i32, ptr %i.o, align 8, !tbaa !154
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !155
  %i.t = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull readonly dereferenceable(5) @.str.120) #10
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %dom_search_child.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 48
  %.0.i.i = load ptr, ptr %i.v, align 8, !tbaa !150 ; 2 uses
  %.not.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not.i.i, label %dom_place_remove_element_and_hoist_children.exit, label %.lr.ph.i.i, !llvm.loop !208

dom_search_child.exit.i:                          ; preds = %bb.f
  tail call void @xmlUnlinkNode(ptr noundef nonnull %.011.i.i) #9
  %i.w = getelementptr inbounds nuw i8, ptr %.011.i.i, i64 24 ; 2 uses
  %.016.i = load ptr, ptr %i.w, align 8, !tbaa !156 ; 2 uses
  %.not1217.i = icmp eq ptr %.016.i, null
  br i1 %.not1217.i, label %._crit_edge.i, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %dom_search_child.exit.i, %.lr.ph.i7
  %.018.i = phi ptr [ %.0.i8, %.lr.ph.i7 ], [ %.016.i, %dom_search_child.exit.i ] ; 2 uses
  tail call void @xmlUnlinkNode(ptr noundef nonnull %.018.i) #9
  %i.x = tail call ptr @xmlAddChild(ptr noundef %.0.lcssa.i, ptr noundef nonnull %.018.i) #9 ; 0 uses
  %.0.i8 = load ptr, ptr %i.w, align 8, !tbaa !156 ; 2 uses
  %.not12.i = icmp eq ptr %.0.i8, null
  br i1 %.not12.i, label %._crit_edge.i, label %.lr.ph.i7, !llvm.loop !209

._crit_edge.i:                                    ; preds = %.lr.ph.i7, %dom_search_child.exit.i
  tail call void @xmlFreeNode(ptr noundef nonnull %.011.i.i) #9
  br label %dom_place_remove_element_and_hoist_children.exit

dom_place_remove_element_and_hoist_children.exit: ; preds = %bb.g, %._crit_edge.i, %bb.e, %dom_search_child.exit
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.z = load i8, ptr %i.y, align 2, !tbaa !211, !range !146, !noundef !131
  %i.aa = trunc nuw i8 %i.z to i1
  br i1 %i.aa, label %dom_place_remove_element_and_hoist_children.exit23, label %bb.h

bb.h:                                             ; preds = %dom_place_remove_element_and_hoist_children.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 24
  %.09.i.i9 = load ptr, ptr %i.ab, align 8, !tbaa !150 ; 2 uses
  %.not10.i.i10 = icmp eq ptr %.09.i.i9, null
  br i1 %.not10.i.i10, label %dom_place_remove_element_and_hoist_children.exit23, label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %bb.h, %bb.j
  %.011.i.i12 = phi ptr [ %.0.i.i13, %bb.j ], [ %.09.i.i9, %bb.h ] ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.011.i.i12, i64 8
  %i.ad = load i32, ptr %i.ac, align 8, !tbaa !154
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i.i11
  %i.af = getelementptr inbounds nuw i8, ptr %.011.i.i12, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !155
  %i.ah = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ag, ptr noundef nonnull readonly dereferenceable(5) @.str.121) #10
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %dom_search_child.exit.i15, label %bb.j

bb.j:                                             ; preds = %bb.i, %.lr.ph.i.i11
  %i.aj = getelementptr inbounds nuw i8, ptr %.011.i.i12, i64 48
  %.0.i.i13 = load ptr, ptr %i.aj, align 8, !tbaa !150 ; 2 uses
  %.not.i.i14 = icmp eq ptr %.0.i.i13, null
  br i1 %.not.i.i14, label %dom_place_remove_element_and_hoist_children.exit23, label %.lr.ph.i.i11, !llvm.loop !208

dom_search_child.exit.i15:                        ; preds = %bb.i
  tail call void @xmlUnlinkNode(ptr noundef nonnull %.011.i.i12) #9
  %i.ak = getelementptr inbounds nuw i8, ptr %.011.i.i12, i64 24 ; 2 uses
  %.016.i16 = load ptr, ptr %i.ak, align 8, !tbaa !156 ; 2 uses
  %.not1217.i17 = icmp eq ptr %.016.i16, null
  br i1 %.not1217.i17, label %._crit_edge.i22, label %.lr.ph.i18

.lr.ph.i18:                                       ; preds = %dom_search_child.exit.i15, %.lr.ph.i18
  %.018.i19 = phi ptr [ %.0.i20, %.lr.ph.i18 ], [ %.016.i16, %dom_search_child.exit.i15 ] ; 2 uses
  tail call void @xmlUnlinkNode(ptr noundef nonnull %.018.i19) #9
  %i.al = tail call ptr @xmlAddChild(ptr noundef %.0.lcssa.i, ptr noundef nonnull %.018.i19) #9 ; 0 uses
  %.0.i20 = load ptr, ptr %i.ak, align 8, !tbaa !156 ; 2 uses
  %.not12.i21 = icmp eq ptr %.0.i20, null
  br i1 %.not12.i21, label %._crit_edge.i22, label %.lr.ph.i18, !llvm.loop !209

._crit_edge.i22:                                  ; preds = %.lr.ph.i18, %dom_search_child.exit.i15
  tail call void @xmlFreeNode(ptr noundef nonnull %.011.i.i12) #9
  br label %dom_place_remove_element_and_hoist_children.exit23

dom_place_remove_element_and_hoist_children.exit23: ; preds = %bb.j, %._crit_edge.i22, %bb.h, %dom_place_remove_element_and_hoist_children.exit
  %i.am = load i8, ptr %2, align 4, !tbaa !212, !range !146, !noundef !131
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %dom_place_remove_element_and_hoist_children.exit38, label %bb.k

bb.k:                                             ; preds = %dom_place_remove_element_and_hoist_children.exit23
  %.09.i.i24 = load ptr, ptr %i.b, align 8, !tbaa !150 ; 2 uses
  %.not10.i.i25 = icmp eq ptr %.09.i.i24, null
  br i1 %.not10.i.i25, label %dom_place_remove_element_and_hoist_children.exit38, label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %bb.k, %bb.m
  %.011.i.i27 = phi ptr [ %.0.i.i28, %bb.m ], [ %.09.i.i24, %bb.k ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.i.i27, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !tbaa !154
  %i.aq = icmp eq i32 %i.ap, 1
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph.i.i26
  %i.ar = getelementptr inbounds nuw i8, ptr %.011.i.i27, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !155
  %i.at = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.as, ptr noundef nonnull readonly dereferenceable(5) @.str.119) #10
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %dom_search_child.exit.i30, label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.i.i26
  %i.av = getelementptr inbounds nuw i8, ptr %.011.i.i27, i64 48
  %.0.i.i28 = load ptr, ptr %i.av, align 8, !tbaa !150 ; 2 uses
  %.not.i.i29 = icmp eq ptr %.0.i.i28, null
  br i1 %.not.i.i29, label %dom_place_remove_element_and_hoist_children.exit38, label %.lr.ph.i.i26, !llvm.loop !208

dom_search_child.exit.i30:                        ; preds = %bb.l
  tail call void @xmlUnlinkNode(ptr noundef nonnull %.011.i.i27) #9
  %i.aw = getelementptr inbounds nuw i8, ptr %.011.i.i27, i64 24 ; 2 uses
  %.016.i31 = load ptr, ptr %i.aw, align 8, !tbaa !156 ; 2 uses
  %.not1217.i32 = icmp eq ptr %.016.i31, null
  br i1 %.not1217.i32, label %._crit_edge.i37, label %.lr.ph.i33

.lr.ph.i33:                                       ; preds = %dom_search_child.exit.i30, %.lr.ph.i33
  %.018.i34 = phi ptr [ %.0.i35, %.lr.ph.i33 ], [ %.016.i31, %dom_search_child.exit.i30 ] ; 2 uses
  tail call void @xmlUnlinkNode(ptr noundef nonnull %.018.i34) #9
  %i.ax = tail call ptr @xmlAddChild(ptr noundef %0, ptr noundef nonnull %.018.i34) #9 ; 0 uses
  %.0.i35 = load ptr, ptr %i.aw, align 8, !tbaa !156 ; 2 uses
  %.not12.i36 = icmp eq ptr %.0.i35, null
  br i1 %.not12.i36, label %._crit_edge.i37, label %.lr.ph.i33, !llvm.loop !209

._crit_edge.i37:                                  ; preds = %.lr.ph.i33, %dom_search_child.exit.i30
  tail call void @xmlFreeNode(ptr noundef nonnull %.011.i.i27) #9
  br label %dom_place_remove_element_and_hoist_children.exit38

dom_place_remove_element_and_hoist_children.exit38: ; preds = %bb.m, %._crit_edge.i37, %bb.k, %dom_place_remove_element_and_hoist_children.exit23, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @zim_Dom_HTMLDocument_createFromFile(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca i32, align 4                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 8 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  %i.e = alloca i64, align 8                      ; 3 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 8 uses
  %2 = alloca %struct.dom_lexbor_libxml2_bridge_application_data, align 8 ; 14 uses
  %3 = alloca %struct.lexbor_libxml2_bridge_parse_context, align 8 ; 10 uses
  %i.h = alloca [4096 x i8], align 16             ; 10 uses
  %4 = alloca %struct.dom_decoding_encoding_ctx, align 8 ; 57 uses
  %i.i = alloca ptr, align 8                      ; 7 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %i.k = alloca i64, align 8                      ; 4 uses
  %i.l = alloca i64, align 8                      ; 5 uses
  %i.m = alloca ptr, align 8                      ; 10 uses
  %i.n = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store ptr null, ptr %i.d, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #9
  store i64 0, ptr %i.g, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !22
  %i.q = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.p, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.c, ptr noundef nonnull %i.e, ptr noundef nonnull %i.g, ptr noundef nonnull %i.d, ptr noundef nonnull %i.f) #9
  %i.r = icmp eq i32 %i.q, -1
  br i1 %i.r, label %bb.bd, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.s = load ptr, ptr %i.c, align 8, !tbaa !27   ; 2 uses
  %i.t = call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.s, ptr noundef nonnull dereferenceable(1) @.str.8) #10
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef 1, ptr noundef nonnull @.str.9) #9
  br label %bb.bd

bb.d:                                             ; preds = %bb.b
  %i.u = load i64, ptr %i.g, align 8, !tbaa !29   ; 2 uses
  %i.v = and i64 %i.u, -2147557409
  %.not.i101 = icmp eq i64 %i.v, 0
  br i1 %.not.i101, label %bb.e, label %check_options_validity.exit

check_options_validity.exit:                      ; preds = %bb.d
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef 2, ptr noundef nonnull @.str.24) #9
  br label %bb.bd

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  store ptr %i.s, ptr %2, align 8, !tbaa !56
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 0, ptr %i.w, align 8, !tbaa !57
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.y = lshr i64 %i.u, 13
  %i.z = trunc i64 %i.y to i8
  %i.aa = and i8 %i.z, 1
  store i8 %i.aa, ptr %i.x, align 8, !tbaa !58
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 1, ptr %i.ab, align 8, !tbaa !59
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 1, ptr %i.ac, align 8, !tbaa !60
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 56
  store i64 0, ptr %i.ad, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  call void @lexbor_libxml2_bridge_parse_context_init(ptr noundef nonnull %3) #9
  %i.ae = load i64, ptr %i.g, align 8, !tbaa !29
  %i.af = and i64 %i.ae, 32
  %.not.i102 = icmp eq i64 %i.af, 0
  br i1 %.not.i102, label %bb.f, label %dom_should_register_error_handlers.exit.thread118

bb.f:                                             ; preds = %bb.e
  %i.ag = call zeroext i1 @php_libxml_uses_internal_errors() #9
  br i1 %i.ag, label %dom_should_register_error_handlers.exit.thread, label %dom_should_register_error_handlers.exit

dom_should_register_error_handlers.exit:          ; preds = %bb.f
  %i.ah = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 424), align 8, !tbaa !90
  %i.ai = load i32, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 720), align 8, !tbaa !91
  %i.aj = or i32 %i.ai, %i.ah
  %i.ak = and i32 %i.aj, 2
  %.not135 = icmp eq i32 %i.ak, 0
  br i1 %.not135, label %dom_should_register_error_handlers.exit.thread118, label %dom_should_register_error_handlers.exit.thread

dom_should_register_error_handlers.exit.thread:   ; preds = %bb.f, %dom_should_register_error_handlers.exit
  call void @lexbor_libxml2_bridge_parse_set_error_callbacks(ptr noundef nonnull %3, ptr noundef nonnull @dom_lexbor_libxml2_bridge_tokenizer_error_reporter, ptr noundef nonnull @dom_lexbor_libxml2_bridge_tree_error_reporter) #9
  br label %dom_should_register_error_handlers.exit.thread118

dom_should_register_error_handlers.exit.thread118: ; preds = %bb.e, %dom_should_register_error_handlers.exit.thread, %dom_should_register_error_handlers.exit
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %2, ptr %i.al, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.am = call ptr @lxb_encoding_data(i32 noundef 27) #9 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 144 ; 4 uses
  store ptr %i.am, ptr %i.an, align 8, !tbaa !99
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 152 ; 4 uses
  store ptr %i.am, ptr %i.ao, align 8, !tbaa !100
  store i8 1, ptr %4, align 8, !tbaa !101
  %i.ap = icmp eq ptr %i.am, null
  br i1 %i.ap, label %lxb_encoding_encode_init.exit.i, label %lxb_encoding_decode_init.exit.thread.i

lxb_encoding_encode_init.exit.i:                  ; preds = %dom_should_register_error_handlers.exit.thread118
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !102
  %i.aq = icmp eq ptr %.pre.i, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  %i.ar = icmp ult i64 %.pre, 3
  %or.cond159 = select i1 %i.aq, i1 true, i1 %i.ar
  br i1 %or.cond159, label %lxb_encoding_decode_init.exit.i, label %lxb_encoding_encode_replace_set.exit.i.thread157

lxb_encoding_encode_replace_set.exit.i.thread157: ; preds = %lxb_encoding_encode_init.exit.i
  %i.as = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @.str.113, ptr %i.as, align 8, !tbaa !103
  %i.at = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 3, ptr %i.at, align 8, !tbaa !104
  br label %lxb_encoding_decode_init.exit.i

lxb_encoding_decode_init.exit.thread.i:           ; preds = %dom_should_register_error_handlers.exit.thread118
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %4, i64 160
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i8 0, i64 32, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.av, ptr %i.ax, align 8, !tbaa !102
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 4096, ptr %i.ay, align 8, !tbaa !105
  store ptr %i.am, ptr %i.au, align 8, !tbaa !106
  %i.az = getelementptr inbounds nuw i8, ptr %4, i64 40
  store ptr @.str.113, ptr %i.az, align 8, !tbaa !103
  %i.ba = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 3, ptr %i.ba, align 8, !tbaa !104
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 4256
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bd, i8 0, i64 56, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %i.bc, ptr %i.be, align 8, !tbaa !107
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 4096, ptr %i.bf, align 8, !tbaa !108
  store ptr %i.am, ptr %i.bb, align 8, !tbaa !109
  br label %bb.g

end_hunk_0
begin_hunk_1_@zim_Dom_HTMLDocument_createFromFile:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bm = load ptr, ptr %i.d, align 8, !tbaa !27  ; 2 uses
  %.not79 = icmp eq ptr %i.bm, null               ; 2 uses
  br i1 %.not79, label %bb.j, label %bb.h

bb.h:                                             ; preds = %dom_decoding_encoding_ctx_init.exit
  %i.bn = load i64, ptr %i.f, align 8, !tbaa !29
  %i.bo = call ptr @lxb_encoding_data_by_name(ptr noundef nonnull %i.bm, i64 noundef %i.bn) #9 ; 4 uses
  %.not80.not = icmp eq ptr %i.bo, null
  br i1 %.not80.not, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.h
  call void (i32, ptr, ...) @zend_argument_value_error(i32 noundef 3, ptr noundef nonnull @.str.3) #9
  br label %bb.bc

bb.i:                                             ; preds = %bb.h
  store ptr %i.bo, ptr %i.ao, align 8, !tbaa !100
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 4256 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.br, i8 0, i64 56, i1 false)
  %i.bs = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %i.bp, ptr %i.bs, align 8, !tbaa !107
  %i.bt = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 4096, ptr %i.bt, align 8, !tbaa !108
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !109
  %i.bu = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr @dom_setup_parser_encoding_manually.replacement_codepoint, ptr %i.bu, align 8, !tbaa !110
  %i.bv = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 1, ptr %i.bv, align 8, !tbaa !111
  %i.bw = load ptr, ptr %i.an, align 8, !tbaa !99
  %i.bx = icmp eq ptr %i.bo, %i.bw                ; 3 uses
  %i.by = zext i1 %i.bx to i8
  store i8 %i.by, ptr %4, align 8, !tbaa !101
  %spec.select.i = select i1 %i.bx, ptr null, ptr %i.bp
  %spec.select18.i = select i1 %i.bx, ptr %i.h, ptr null
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %spec.select.i, ptr %i.bz, align 8, !tbaa !112
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %spec.select18.i, ptr %i.ca, align 8, !tbaa !113
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %dom_decoding_encoding_ctx_init.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #9
  store ptr null, ptr %i.i, align 8, !tbaa !157
  %i.cb = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.cc = call ptr @php_libxml_get_stream_context() #9
  %i.cd = call ptr @_php_stream_open_wrapper_ex(ptr noundef %i.cb, ptr noundef nonnull @.str.10, i32 noundef 8, ptr noundef nonnull %i.i, ptr noundef %i.cc) #9 ; 7 uses
  %.not81 = icmp eq ptr %i.cd, null
  br i1 %.not81, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.ce = load ptr, ptr getelementptr inbounds nuw (i8, ptr @executor_globals, i64 960), align 8, !tbaa !214
  %.not82 = icmp eq ptr %i.ce, null
  br i1 %.not82, label %bb.l, label %zend_string_release_ex.exit

bb.l:                                             ; preds = %bb.k
  %i.cf = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.cg = call ptr (ptr, i64, ptr, ...) @zend_throw_exception_ex(ptr noundef null, i64 noundef 0, ptr noundef nonnull @.str.11, ptr noundef %i.cf) #9 ; 0 uses
  br label %zend_string_release_ex.exit

bb.m:                                             ; preds = %bb.j
  br i1 %.not79, label %bb.n, label %zend_string_release_ex.exit100

bb.n:                                             ; preds = %bb.m
  %i.ch = call ptr @php_libxml_sniff_charset_from_stream(ptr noundef nonnull %i.cd) #9 ; 7 uses
  %.not83 = icmp eq ptr %i.ch, null
  br i1 %.not83, label %zend_string_release_ex.exit100, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ck = load i64, ptr %i.cj, align 8, !tbaa !159
  %i.cl = call ptr @lxb_encoding_data_by_name(ptr noundef nonnull %i.ci, i64 noundef %i.ck) #9 ; 4 uses
  %.not84 = icmp eq ptr %i.cl, null               ; 4 uses
  br i1 %.not84, label %bb.p, label %dom_setup_parser_encoding_manually.exit113

dom_setup_parser_encoding_manually.exit113:       ; preds = %bb.o
  store ptr %i.cl, ptr %i.ao, align 8, !tbaa !100
  %i.cm = getelementptr inbounds nuw i8, ptr %4, i64 4256 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.co = getelementptr inbounds nuw i8, ptr %4, i64 88
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.co, i8 0, i64 56, i1 false)
  %i.cp = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %i.cm, ptr %i.cp, align 8, !tbaa !107
  %i.cq = getelementptr inbounds nuw i8, ptr %4, i64 80
  store i64 4096, ptr %i.cq, align 8, !tbaa !108
  store ptr %i.cl, ptr %i.cn, align 8, !tbaa !109
  %i.cr = getelementptr inbounds nuw i8, ptr %4, i64 96
  store ptr @dom_setup_parser_encoding_manually.replacement_codepoint, ptr %i.cr, align 8, !tbaa !110
  %i.cs = getelementptr inbounds nuw i8, ptr %4, i64 104
  store i64 1, ptr %i.cs, align 8, !tbaa !111
  %i.ct = load ptr, ptr %i.an, align 8, !tbaa !99
  %i.cu = icmp eq ptr %i.cl, %i.ct                ; 3 uses
  %i.cv = zext i1 %i.cu to i8
  store i8 %i.cv, ptr %4, align 8, !tbaa !101
  %spec.select.i108 = select i1 %i.cu, ptr null, ptr %i.cm
  %spec.select18.i109 = select i1 %i.cu, ptr %i.h, ptr null
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %spec.select.i108, ptr %i.cw, align 8, !tbaa !112
  %i.cx = getelementptr inbounds nuw i8, ptr %2, i64 16
  store ptr %spec.select18.i109, ptr %i.cx, align 8, !tbaa !113
  br label %bb.p

bb.p:                                             ; preds = %dom_setup_parser_encoding_manually.exit113, %bb.o
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ch, i64 4
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !22
  %i.da = and i32 %i.cz, 64
  %.not.i99 = icmp eq i32 %i.da, 0
  br i1 %.not.i99, label %bb.q, label %zend_string_release_ex.exit100

bb.q:                                             ; preds = %bb.p
  %i.db = load i32, ptr %i.ch, align 8, !tbaa !24 ; 2 uses
  %i.dc = icmp ne i32 %i.db, 0
  call void @llvm.assume(i1 %i.dc)
  %i.dd = add i32 %i.db, -1                       ; 2 uses
  store i32 %i.dd, ptr %i.ch, align 8, !tbaa !24
  %i.de = icmp eq i32 %i.dd, 0
  br i1 %i.de, label %bb.r, label %zend_string_release_ex.exit100

bb.r:                                             ; preds = %bb.q
  call void @_efree(ptr noundef nonnull %i.ch) #9
  br label %zend_string_release_ex.exit100

zend_string_release_ex.exit100:                   ; preds = %bb.r, %bb.q, %bb.p, %bb.n, %bb.m
  %.467 = phi i1 [ false, %bb.m ], [ true, %bb.n ], [ %.not84, %bb.p ], [ %.not84, %bb.q ], [ %.not84, %bb.r ]
  %i.df = call ptr @lxb_html_document_create() #9 ; 10 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %dom_parse_decode_encode_finish.exit, label %bb.s, !prof !30

bb.s:                                             ; preds = %zend_string_release_ex.exit100
  %i.dh = call i32 @lxb_html_document_parse_chunk_begin(ptr noundef nonnull %i.df) #9
  %.not85 = icmp eq i32 %i.dh, 0
  br i1 %.not85, label %.peel.begin, label %dom_parse_decode_encode_finish.exit, !prof !114

.peel.begin:                                      ; preds = %bb.s
  store i64 0, ptr %i.j, align 8, !tbaa !29
  store i64 0, ptr %i.k, align 8, !tbaa !29
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 208
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !127 ; 4 uses
  %i.dk = call i64 @_php_stream_read(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.h, i64 noundef 4096) #9 ; 3 uses
  store i64 %i.dk, ptr %i.l, align 8, !tbaa !29
  %i.dl = icmp sgt i64 %i.dk, 0
  br i1 %i.dl, label %bb.t, label %.loopexit

bb.t:                                             ; preds = %.peel.begin
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  store ptr %i.h, ptr %i.m, align 8, !tbaa !27
  br i1 %.467, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call fastcc void @dom_setup_parser_encoding_implicitly(ptr noundef %i.m, ptr noundef %i.l, ptr noundef %4, ptr noundef %2)
  %.pre137 = load ptr, ptr %i.m, align 8, !tbaa !27
  %.pre138 = load i64, ptr %i.l, align 8, !tbaa !29
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dm = phi i64 [ %.pre138, %bb.u ], [ %i.dk, %bb.t ]
  %i.dn = phi ptr [ %.pre137, %bb.u ], [ %i.h, %bb.t ]
  %i.do = getelementptr inbounds i8, ptr %i.dn, i64 %i.dm
  %i.dp = call fastcc zeroext i1 @dom_parse_decode_encode_step(ptr noundef %3, ptr noundef %i.df, ptr noundef %i.dj, ptr noundef %i.m, ptr noundef %i.do, ptr noundef %4, ptr noundef %i.j, ptr noundef %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  br i1 %i.dp, label %.peel.next, label %dom_parse_decode_encode_finish.exit

.peel.next:                                       ; preds = %bb.v, %bb.w
  %i.dq = call i64 @_php_stream_read(ptr noundef nonnull %i.cd, ptr noundef nonnull %i.h, i64 noundef 4096) #9 ; 4 uses
  %i.dr = icmp sgt i64 %i.dq, 0
  br i1 %i.dr, label %bb.w, label %.loopexit.loopexit

bb.w:                                             ; preds = %.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #9
  store ptr %i.h, ptr %i.m, align 8, !tbaa !27
  %i.ds = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.dq
  %i.dt = call fastcc zeroext i1 @dom_parse_decode_encode_step(ptr noundef %3, ptr noundef %i.df, ptr noundef %i.dj, ptr noundef %i.m, ptr noundef nonnull %i.ds, ptr noundef %4, ptr noundef %i.j, ptr noundef %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #9
  br i1 %i.dt, label %.peel.next, label %dom_parse_decode_encode_finish.exit.loopexit, !llvm.loop !213

.loopexit.loopexit:                               ; preds = %.peel.next
  store i64 %i.dq, ptr %i.l, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %.peel.begin
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 124
  %i.dv = load i32, ptr %i.du, align 4, !tbaa !128
  %.not.i.i = icmp eq i32 %i.dv, 0
  br i1 %.not.i.i, label %lxb_encoding_decode_finish.exit.i, label %bb.x

bb.x:                                             ; preds = %.loopexit
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 64
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !109
  %i.dy = load i32, ptr %i.dx, align 8, !tbaa !130
  %i.dz = icmp eq i32 %i.dy, 8
  %i.ea = getelementptr inbounds nuw i8, ptr %4, i64 132
  %i.eb = load i32, ptr %i.ea, align 4
  %i.ec = icmp eq i32 %i.eb, 0
  %or.cond134 = select i1 %i.dz, i1 %i.ec, i1 false
  br i1 %or.cond134, label %lxb_encoding_decode_finish.exit.i, label %lxb_encoding_decode_buf_add_to.exit.i.i

lxb_encoding_decode_buf_add_to.exit.i.i:          ; preds = %bb.x
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 96
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !110, !nonnull !131, !noundef !131
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.eg = load i64, ptr %i.ef, align 8, !tbaa !111 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 3 uses
  %i.ei = load i64, ptr %i.eh, align 8, !tbaa !132
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !107
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.ei
  %i.em = shl i64 %i.eg, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.el, ptr nonnull readonly align 4 %i.ee, i64 %i.em, i1 false)
  %i.en = load i64, ptr %i.eh, align 8, !tbaa !132
  %i.eo = add i64 %i.en, %i.eg
  store i64 %i.eo, ptr %i.eh, align 8, !tbaa !132
  br label %lxb_encoding_decode_finish.exit.i

lxb_encoding_decode_finish.exit.i:                ; preds = %bb.x, %lxb_encoding_decode_buf_add_to.exit.i.i, %.loopexit
  %i.ep = getelementptr inbounds nuw i8, ptr %4, i64 88 ; 2 uses
  %.val23.i = load i64, ptr %i.ep, align 8, !tbaa !132 ; 2 uses
  %.not.i114 = icmp eq i64 %.val23.i, 0
  br i1 %.not.i114, label %bb.z, label %bb.y

bb.y:                                             ; preds = %lxb_encoding_decode_finish.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.eq = getelementptr inbounds nuw i8, ptr %4, i64 4256 ; 2 uses
  store ptr %i.eq, ptr %i.a, align 8, !tbaa !133
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eq, i64 %.val23.i
  %i.es = load ptr, ptr %i.an, align 8, !tbaa !99
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !134
  %i.ev = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ew = call i32 %i.eu(ptr noundef nonnull %i.ev, ptr noundef nonnull %i.a, ptr noundef nonnull %i.er) #9, !inline_history !0 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %lxb_encoding_decode_finish.exit.i
  %i.ex = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !106
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !130
  %i.fa = icmp eq i32 %i.ez, 8
  br i1 %i.fa, label %bb.aa, label %lxb_encoding_encode_finish.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.fb = call i32 @lxb_encoding_encode_iso_2022_jp_eof(ptr noundef nonnull %i.ex) #9 ; 0 uses
  br label %lxb_encoding_encode_finish.exit.i

lxb_encoding_encode_finish.exit.i:                ; preds = %bb.aa, %bb.z
  %i.fc = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.val25.i = load i64, ptr %i.fc, align 8, !tbaa !135 ; 2 uses
  %.not22.i = icmp eq i64 %.val25.i, 0
  br i1 %.not22.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %lxb_encoding_encode_finish.exit.i
  %i.fd = getelementptr inbounds nuw i8, ptr %4, i64 160
  %.val.i = load i64, ptr %i.ep, align 8, !tbaa !132
  %i.fe = call fastcc zeroext i1 @dom_process_parse_chunk(ptr noundef nonnull %3, ptr noundef nonnull %i.df, ptr noundef %i.dj, i64 noundef %.val25.i, ptr noundef nonnull %i.fd, i64 noundef %.val.i, ptr noundef nonnull %i.j, ptr noundef nonnull %i.k)
  br i1 %i.fe, label %bb.ac, label %dom_parse_decode_encode_finish.exit

bb.ac:                                            ; preds = %lxb_encoding_encode_finish.exit.i, %bb.ab
  %i.ff = call i32 @lxb_html_document_parse_chunk_end(ptr noundef nonnull %i.df) #9
  %.not86 = icmp eq i32 %i.ff, 0
  br i1 %.not86, label %bb.ad, label %dom_parse_decode_encode_finish.exit

bb.ad:                                            ; preds = %bb.ac
  %i.fg = call ptr @php_dom_private_data_create() #9 ; 6 uses
  %i.fh = load i64, ptr %i.g, align 8, !tbaa !29  ; 2 uses
  %i.fi = and i64 %i.fh, 65536
  %i.fj = icmp ne i64 %i.fi, 0
  %i.fk = and i64 %i.fh, 2147483648
  %.not87 = icmp eq i64 %i.fk, 0
  %i.fl = call i32 @lexbor_libxml2_bridge_convert_document(ptr noundef nonnull %i.df, ptr noundef nonnull %i.n, i1 noundef zeroext %i.fj, i1 noundef zeroext %.not87, ptr noundef %i.fg) #9
  %i.fm = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !139
  %i.fo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @lexbor_libxml2_bridge_copy_observations(ptr noundef %i.fn, ptr noundef nonnull %i.fo) #9
  switch i32 %i.fl, label %bb.ah [
    i32 0, label %bb.ai
    i32 1, label %dom_lexbor_libxml2_bridge_status_code_to_string.exit
    i32 2, label %bb.ae
    i32 3, label %bb.af
    i32 4, label %bb.ag
  ], !prof !216

bb.ae:                                            ; preds = %bb.ad
  br label %dom_lexbor_libxml2_bridge_status_code_to_string.exit

bb.af:                                            ; preds = %bb.ad
  br label %dom_lexbor_libxml2_bridge_status_code_to_string.exit

bb.ag:                                            ; preds = %bb.ad
  br label %dom_lexbor_libxml2_bridge_status_code_to_string.exit

bb.ah:                                            ; preds = %bb.ad
  br label %dom_lexbor_libxml2_bridge_status_code_to_string.exit

dom_lexbor_libxml2_bridge_status_code_to_string.exit: ; preds = %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah
  %.0.i116 = phi ptr [ @.str.75, %bb.ah ], [ @.str.118, %bb.ag ], [ @.str.116, %bb.ae ], [ @.str.117, %bb.af ], [ @.str.115, %bb.ad ]
  %i.fp = load ptr, ptr %i.c, align 8, !tbaa !27
  call void (ptr, ptr, ...) @php_libxml_ctx_error(ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull %.0.i116, ptr noundef %i.fp) #9
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.fq, align 8, !tbaa !22
  br label %bb.aw

bb.ai:                                            ; preds = %bb.ad
  %i.fr = call ptr @lxb_html_document_destroy(ptr noundef nonnull %i.df) #9 ; 0 uses
  %i.fs = load ptr, ptr %i.n, align 8, !tbaa !140
  %i.ft = load i64, ptr %i.g, align 8, !tbaa !29
  call fastcc void @dom_post_process_html5_loading(ptr noundef %i.fs, i64 noundef %i.ft, ptr noundef %i.fo)
  %i.fu = load ptr, ptr %i.ao, align 8, !tbaa !100 ; 2 uses
  %.not89 = icmp eq ptr %i.fu, null
  br i1 %.not89, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.fv = getelementptr inbounds nuw i8, ptr %i.fu, i64 40
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !141
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %.str.1.sink = phi ptr [ %i.fw, %bb.aj ], [ @.str.1, %bb.ai ]
  %i.fx = call ptr @xmlStrdup(ptr noundef %.str.1.sink) #9
  %i.fy = load ptr, ptr %i.n, align 8, !tbaa !140
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 112
  store ptr %i.fx, ptr %i.fz, align 8, !tbaa !37
  %i.ga = getelementptr inbounds nuw i8, ptr %i.cd, i64 64
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !225
  %i.gc = icmp eq ptr %i.gb, @php_plain_files_wrapper
  %i.gd = load ptr, ptr %i.i, align 8             ; 2 uses
  %i.ge = icmp ne ptr %i.gd, null
  %or.cond = select i1 %i.gc, i1 %i.ge, i1 false
  br i1 %or.cond, label %bb.al, label %bb.as

bb.al:                                            ; preds = %bb.ak
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 24
  %i.gg = call ptr @xmlPathToURI(ptr noundef nonnull %i.gf) #9 ; 7 uses
  %.not90 = icmp eq ptr %i.gg, null
  br i1 %.not90, label %dom_parse_decode_encode_finish.exit, label %bb.am, !prof !30

bb.am:                                            ; preds = %bb.al
  %i.gh = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %i.gg, ptr noundef nonnull dereferenceable(7) @.str.12, i64 noundef 6) #10
  %.not91 = icmp eq i32 %i.gh, 0
  br i1 %.not91, label %.thread126, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.gi = call ptr @xmlStrdup(ptr noundef nonnull @.str.13) #9 ; 3 uses
  %.not92 = icmp eq ptr %i.gi, null
  br i1 %.not92, label %bb.ao, label %bb.ap, !prof !30

bb.ao:                                            ; preds = %bb.an
  %i.gj = load ptr, ptr @xmlFree, align 8, !tbaa !160
  call void %i.gj(ptr noundef nonnull %i.gg) #9
  br label %dom_parse_decode_encode_finish.exit

bb.ap:                                            ; preds = %bb.an
  %i.gk = call ptr @xmlStrcat(ptr noundef nonnull %i.gi, ptr noundef nonnull %i.gg) #9 ; 2 uses
  %.not93 = icmp eq ptr %i.gk, null
  %i.gl = load ptr, ptr @xmlFree, align 8, !tbaa !160 ; 2 uses
  br i1 %.not93, label %bb.aq, label %bb.ar, !prof !30

bb.aq:                                            ; preds = %bb.ap
  call void %i.gl(ptr noundef nonnull %i.gi) #9
  %i.gm = load ptr, ptr @xmlFree, align 8, !tbaa !160
  call void %i.gm(ptr noundef nonnull %i.gg) #9
  br label %dom_parse_decode_encode_finish.exit

bb.ar:                                            ; preds = %bb.ap
  call void %i.gl(ptr noundef nonnull %i.gg) #9
  br label %.thread126

bb.as:                                            ; preds = %bb.ak
  %i.gn = load ptr, ptr %i.c, align 8, !tbaa !27
  %i.go = call ptr @xmlStrdup(ptr noundef %i.gn) #9
  br label %.thread126

.thread126:                                       ; preds = %bb.am, %bb.ar, %bb.as
  %.sink = phi ptr [ %i.go, %bb.as ], [ %i.gk, %bb.ar ], [ %i.gg, %bb.am ]
  %i.gp = load ptr, ptr %i.n, align 8, !tbaa !140
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 136
  store ptr %.sink, ptr %i.gq, align 8, !tbaa !226
  %i.gr = load ptr, ptr %i.i, align 8, !tbaa !157 ; 5 uses
  %.not94 = icmp eq ptr %i.gr, null
  br i1 %.not94, label %zend_string_release_ex.exit98, label %bb.at

bb.at:                                            ; preds = %.thread126
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 4
  %i.gt = load i32, ptr %i.gs, align 4, !tbaa !22
  %i.gu = and i32 %i.gt, 64
  %.not.i97 = icmp eq i32 %i.gu, 0
  br i1 %.not.i97, label %bb.au, label %zend_string_release_ex.exit98

bb.au:                                            ; preds = %bb.at
  %i.gv = load i32, ptr %i.gr, align 4, !tbaa !24 ; 2 uses
  %i.gw = icmp ne i32 %i.gv, 0
  call void @llvm.assume(i1 %i.gw)
  %i.gx = add i32 %i.gv, -1                       ; 2 uses
  store i32 %i.gx, ptr %i.gr, align 4, !tbaa !24
  %i.gy = icmp eq i32 %i.gx, 0
  br i1 %i.gy, label %bb.av, label %zend_string_release_ex.exit98

bb.av:                                            ; preds = %bb.au
  call void @_efree(ptr noundef nonnull %i.gr) #9
  br label %zend_string_release_ex.exit98

zend_string_release_ex.exit98:                    ; preds = %bb.av, %bb.au, %bb.at, %.thread126
  %i.gz = call i32 @_php_stream_free(ptr noundef nonnull %i.cd, i32 noundef 3) #9 ; 0 uses
  %i.ha = load ptr, ptr @dom_html_document_class_entry, align 8, !tbaa !39
  %i.hb = load ptr, ptr %i.n, align 8, !tbaa !140
  %i.hc = call ptr @php_dom_instantiate_object_helper(ptr noundef %1, ptr noundef %i.ha, ptr noundef %i.hb, ptr noundef null) #9
  %i.hd = getelementptr inbounds nuw i8, ptr %i.hc, i64 8 ; 3 uses
  %i.he = load ptr, ptr %i.hd, align 8, !tbaa !45
  call void @dom_set_xml_class(ptr noundef %i.he) #9
  %i.hf = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !142
  %i.hh = load ptr, ptr %i.hd, align 8, !tbaa !45
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 44 ; 2 uses
  %i.hj = trunc i32 %i.hg to i16
  %i.hk = load i16, ptr %i.hi, align 4
  %i.hl = shl i16 %i.hj, 8
  %i.hm = and i16 %i.hk, 255
  %i.hn = or disjoint i16 %i.hm, %i.hl
  store i16 %i.hn, ptr %i.hi, align 4
  %i.ho = call ptr @php_dom_libxml_private_data_header(ptr noundef %i.fg) #9
  %i.hp = load ptr, ptr %i.hd, align 8, !tbaa !45
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 24
  store ptr %i.ho, ptr %i.hq, align 8, !tbaa !51
  br label %zend_string_release_ex.exit

dom_parse_decode_encode_finish.exit.loopexit:     ; preds = %bb.w
  store i64 %i.dq, ptr %i.l, align 8
  br label %dom_parse_decode_encode_finish.exit

dom_parse_decode_encode_finish.exit:              ; preds = %dom_parse_decode_encode_finish.exit.loopexit, %bb.v, %bb.aq, %bb.ao, %bb.al, %bb.ab, %bb.ac, %bb.s, %zend_string_release_ex.exit100
  %.0 = phi ptr [ null, %zend_string_release_ex.exit100 ], [ null, %bb.s ], [ %i.fg, %bb.aq ], [ null, %bb.ac ], [ null, %bb.ab ], [ %i.fg, %bb.al ], [ %i.fg, %bb.ao ], [ null, %bb.v ], [ null, %dom_parse_decode_encode_finish.exit.loopexit ]
  call void @php_dom_throw_error(i32 noundef 11, i1 noundef zeroext true) #9
  br label %bb.aw

bb.aw:                                            ; preds = %dom_parse_decode_encode_finish.exit, %dom_lexbor_libxml2_bridge_status_code_to_string.exit
  %.1 = phi ptr [ %.0, %dom_parse_decode_encode_finish.exit ], [ %i.fg, %dom_lexbor_libxml2_bridge_status_code_to_string.exit ] ; 2 uses
  %.not95 = icmp eq ptr %.1, null
  br i1 %.not95, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  call void @php_dom_private_data_destroy(ptr noundef nonnull %.1) #9
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %i.hr = call ptr @lxb_html_document_destroy(ptr noundef %i.df) #9 ; 0 uses
  %i.hs = call i32 @_php_stream_free(ptr noundef nonnull %i.cd, i32 noundef 3) #9 ; 0 uses
  %i.ht = load ptr, ptr %i.i, align 8, !tbaa !157 ; 5 uses
  %.not96 = icmp eq ptr %i.ht, null
  br i1 %.not96, label %zend_string_release_ex.exit, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ht, i64 4
  %i.hv = load i32, ptr %i.hu, align 4, !tbaa !22
  %i.hw = and i32 %i.hv, 64
  %.not.i = icmp eq i32 %i.hw, 0
  br i1 %.not.i, label %bb.ba, label %zend_string_release_ex.exit

bb.ba:                                            ; preds = %bb.az
  %i.hx = load i32, ptr %i.ht, align 4, !tbaa !24 ; 2 uses
  %i.hy = icmp ne i32 %i.hx, 0
  call void @llvm.assume(i1 %i.hy)
  %i.hz = add i32 %i.hx, -1                       ; 2 uses
  store i32 %i.hz, ptr %i.ht, align 4, !tbaa !24
  %i.ia = icmp eq i32 %i.hz, 0
  br i1 %i.ia, label %bb.bb, label %zend_string_release_ex.exit

bb.bb:                                            ; preds = %bb.ba
  call void @_efree(ptr noundef nonnull %i.ht) #9
  br label %zend_string_release_ex.exit

zend_string_release_ex.exit:                      ; preds = %bb.bb, %bb.ba, %bb.az, %zend_string_release_ex.exit98, %bb.ay, %bb.l, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #9
  br label %bb.bc

bb.bc:                                            ; preds = %.thread, %zend_string_release_ex.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.bd

bb.bd:                                            ; preds = %check_options_validity.exit, %bb.a, %bb.bc, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #9
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #4

declare ptr @_php_stream_open_wrapper_ex(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @php_libxml_get_stream_context() local_unnamed_addr #2

declare ptr @zend_throw_exception_ex(ptr noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @php_libxml_sniff_charset_from_stream(ptr noundef) local_unnamed_addr #2

declare i64 @_php_stream_read(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @xmlPathToURI(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

declare ptr @xmlStrcat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_php_stream_free(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zim_Dom_HTMLDocument_saveHtmlFile(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %2 = alloca %struct.dom_output_ctx, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.e = load i32, ptr %i.d, align 4, !tbaa !22
  %i.f = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.e, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.b, ptr noundef nonnull %i.a) #9
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.a, align 8, !tbaa !29
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @zend_argument_must_not_be_empty_error(i32 noundef 1) #9
  br label %bb.l

bb.d:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %i.b, align 8, !tbaa !27
  %i.k = call ptr @php_libxml_get_stream_context() #9
  %i.l = call ptr @_php_stream_open_wrapper_ex(ptr noundef %i.j, ptr noundef nonnull @.str.15, i32 noundef 8, ptr noundef null, ptr noundef %i.k) #9 ; 5 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 2, ptr %i.m, align 8, !tbaa !22
  br label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !22   ; 2 uses
  %i.o = getelementptr inbounds i8, ptr %i.n, i64 -24 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !161  ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.g, label %bb.h, !prof !30

bb.g:                                             ; preds = %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !162
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !173
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.v) #9
  br label %bb.l

bb.h:                                             ; preds = %bb.f
  %i.w = load ptr, ptr %i.p, align 8, !tbaa !175  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 48
  store ptr %i.l, ptr %i.x, align 8, !tbaa !177
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 56
  store ptr @dom_write_output_stream, ptr %i.y, align 8, !tbaa !178
  %i.z = call fastcc i32 @dom_common_save(ptr noundef %2, ptr noundef nonnull %i.o, ptr noundef %i.w, ptr noundef %i.w)
  %.not20 = icmp eq i32 %i.z, 0
  br i1 %.not20, label %bb.j, label %bb.i, !prof !114

bb.i:                                             ; preds = %bb.h
  %i.aa = call i32 @_php_stream_free(ptr noundef nonnull %i.l, i32 noundef 3) #9 ; 0 uses
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.ab = call i64 @_php_stream_tell(ptr noundef nonnull %i.l) #9
  %i.ac = call i32 @_php_stream_free(ptr noundef nonnull %i.l, i32 noundef 3) #9 ; 0 uses
  store i64 %i.ab, ptr %1, align 8, !tbaa !22
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.sink = phi i32 [ 4, %bb.j ], [ 2, %bb.i ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %.sink, ptr %i.ad, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.l

bb.l:                                             ; preds = %bb.e, %bb.g, %bb.k, %bb.a, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare void @zend_argument_must_not_be_empty_error(i32 noundef) local_unnamed_addr #2

declare void @zend_throw_error(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @dom_write_output_stream(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = tail call i64 @_php_stream_write(ptr noundef %0, ptr noundef %1, i64 noundef %2) #9
  %.lobit = ashr i64 %i.a, 63
  %. = trunc nsw i64 %.lobit to i32
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @dom_common_save(ptr noundef nonnull initializes((0, 48)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %4 = alloca %struct.lxb_encoding_encode_t, align 8 ; 16 uses
  %5 = alloca %struct.lxb_encoding_decode_t, align 8 ; 18 uses
  %i.a = alloca [4096 x i8], align 16             ; 6 uses
  %i.b = alloca [4096 x i32], align 16            ; 6 uses
  %i.c = alloca i32, align 4                      ; 2 uses
  %6 = alloca %struct.dom_html5_serialize_context, align 8 ; 7 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = tail call ptr @lxb_encoding_data(i32 noundef 27) #9 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !37   ; 2 uses
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.g) #10
  %i.i = tail call ptr @lxb_encoding_data_by_name(ptr noundef nonnull %i.g, i64 noundef %i.h) #9 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %lxb_encoding_encode_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, i8 0, i64 32, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.a, ptr %i.l, align 8, !tbaa !102
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 4096, ptr %i.m, align 8, !tbaa !105
  store ptr %i.i, ptr %4, align 8, !tbaa !106
  br label %lxb_encoding_encode_init.exit

lxb_encoding_encode_init.exit:                    ; preds = %bb.a, %bb.b
  %i.n = icmp eq ptr %i.e, null
  br i1 %i.n, label %lxb_encoding_decode_init.exit, label %bb.c

bb.c:                                             ; preds = %lxb_encoding_encode_init.exit
  %i.o = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.o, i8 0, i64 56, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.b, ptr %i.p, align 8, !tbaa !107
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 4096, ptr %i.q, align 8, !tbaa !108
  store ptr %i.e, ptr %5, align 8, !tbaa !109
  br label %lxb_encoding_decode_init.exit

lxb_encoding_decode_init.exit:                    ; preds = %lxb_encoding_encode_init.exit, %bb.c
  %i.r = load i32, ptr %i.i, align 8, !tbaa !130
  %i.s = icmp eq i32 %i.r, 27                     ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !102
  %i.v = icmp eq ptr %i.u, null                   ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.x = load i64, ptr %i.w, align 8              ; 2 uses
  br i1 %i.s, label %bb.d, label %bb.e

bb.d:                                             ; preds = %lxb_encoding_decode_init.exit
  %i.y = icmp ult i64 %i.x, 3
  %or.cond = select i1 %i.v, i1 true, i1 %i.y
  br i1 %or.cond, label %lxb_encoding_encode_replace_set.exit, label %lxb_encoding_encode_replace_set.exit.sink.split

bb.e:                                             ; preds = %lxb_encoding_decode_init.exit
  %i.z = icmp eq i64 %i.x, 0
  %or.cond43 = select i1 %i.v, i1 true, i1 %i.z
  br i1 %or.cond43, label %lxb_encoding_encode_replace_set.exit, label %lxb_encoding_encode_replace_set.exit.sink.split

lxb_encoding_encode_replace_set.exit.sink.split:  ; preds = %bb.e, %bb.d
  %.str.122.sink = phi ptr [ @.str.113, %bb.d ], [ @.str.122, %bb.e ]
  %.sink = phi i64 [ 3, %bb.d ], [ 1, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %.str.122.sink, ptr %i.aa, align 8, !tbaa !103
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i64 %.sink, ptr %i.ab, align 8, !tbaa !104
  br label %lxb_encoding_encode_replace_set.exit

lxb_encoding_encode_replace_set.exit:             ; preds = %lxb_encoding_encode_replace_set.exit.sink.split, %bb.e, %bb.d
  store i32 65533, ptr %i.c, align 4, !tbaa !144
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !107
  %i.ae = icmp eq ptr %i.ad, null
  %i.af = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = icmp eq i64 %i.ag, 0
  %or.cond46 = select i1 %i.ae, i1 true, i1 %i.ah
  br i1 %or.cond46, label %lxb_encoding_decode_replace_set.exit, label %bb.f

bb.f:                                             ; preds = %lxb_encoding_encode_replace_set.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 32
  store ptr %i.c, ptr %i.ai, align 8, !tbaa !110
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 40
  store i64 1, ptr %i.aj, align 8, !tbaa !111
  br label %lxb_encoding_decode_replace_set.exit

lxb_encoding_decode_replace_set.exit:             ; preds = %lxb_encoding_encode_replace_set.exit, %bb.f
  store ptr %i.i, ptr %0, align 8, !tbaa !179
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.e, ptr %i.ak, align 8, !tbaa !227
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %4, ptr %i.al, align 8, !tbaa !180
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %5, ptr %i.am, align 8, !tbaa !181
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.an, align 8, !tbaa !182
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.a, ptr %i.ao, align 8, !tbaa !183
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %spec.select = select i1 %i.s, ptr @dom_saveHTML_write_string_len_utf8_output, ptr @dom_saveHTML_write_string_len
  %spec.select54 = select i1 %i.s, ptr @dom_saveHTML_write_string_utf8_output, ptr @dom_saveHTML_write_string
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %spec.select, ptr %i.ap, align 8, !tbaa !230
  store ptr %spec.select54, ptr %6, align 8, !tbaa !231
  %i.aq = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %0, ptr %i.aq, align 8, !tbaa !232
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !45, !nonnull !131, !noundef !131
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !51
  %i.av = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %i.au, ptr %i.av, align 8, !tbaa !233
  %i.aw = call i32 @dom_html5_serialize_outer(ptr noundef nonnull %6, ptr noundef %3) #9
  %.not = icmp eq i32 %i.aw, 0
  br i1 %.not, label %bb.g, label %bb.p, !prof !114

bb.g:                                             ; preds = %lxb_encoding_decode_replace_set.exit
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 60
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !128
  %.not.i = icmp eq i32 %i.ay, 0
  br i1 %.not.i, label %lxb_encoding_decode_finish.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.az = load ptr, ptr %5, align 8, !tbaa !109
  %i.ba = load i32, ptr %i.az, align 8, !tbaa !130
  %i.bb = icmp eq i32 %i.ba, 8
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 68
  %i.bd = load i32, ptr %i.bc, align 4
  %i.be = icmp eq i32 %i.bd, 0
  %or.cond49 = select i1 %i.bb, i1 %i.be, i1 false
  br i1 %or.cond49, label %lxb_encoding_decode_finish.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !110 ; 2 uses
  %i.bh = icmp eq ptr %i.bg, null
  br i1 %i.bh, label %lxb_encoding_decode_finish.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !111 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !132 ; 2 uses
  %i.bm = add i64 %i.bl, %i.bj
  %i.bn = load i64, ptr %i.af, align 8, !tbaa !108
  %i.bo = icmp ugt i64 %i.bm, %i.bn
  br i1 %i.bo, label %lxb_encoding_decode_finish.exit, label %lxb_encoding_decode_buf_add_to.exit.i

lxb_encoding_decode_buf_add_to.exit.i:            ; preds = %bb.j
  %i.bp = load ptr, ptr %i.ac, align 8, !tbaa !107
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %i.bl
  %i.br = shl i64 %i.bj, 2
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %i.bq, ptr nonnull readonly align 4 %i.bg, i64 %i.br, i1 false)
  %i.bs = load i64, ptr %i.bk, align 8, !tbaa !132
  %i.bt = add i64 %i.bs, %i.bj
  store i64 %i.bt, ptr %i.bk, align 8, !tbaa !132
  br label %lxb_encoding_decode_finish.exit

lxb_encoding_decode_finish.exit:                  ; preds = %bb.h, %bb.g, %bb.i, %bb.j, %lxb_encoding_decode_buf_add_to.exit.i
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 24
  %.val28 = load i64, ptr %i.bu, align 8, !tbaa !132 ; 2 uses
  %.not24 = icmp eq i64 %.val28, 0
  br i1 %.not24, label %bb.l, label %bb.k

bb.k:                                             ; preds = %lxb_encoding_decode_finish.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #9
  store ptr %i.b, ptr %i.d, align 8, !tbaa !133
  %i.bv = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !tbaa !134
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %.val28
  %i.by = call i32 %i.bw(ptr noundef nonnull %4, ptr noundef nonnull %i.d, ptr noundef nonnull %i.bx) #9 ; 0 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !178
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !177
  %i.cd = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.val31 = load i64, ptr %i.cd, align 8, !tbaa !135
  %i.ce = call i32 %i.ca(ptr noundef %i.cc, ptr noundef nonnull %i.a, i64 noundef %.val31) #9
  %.not25 = icmp eq i32 %i.ce, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #9
  br i1 %.not25, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k, %lxb_encoding_decode_finish.exit
  %i.cf = load ptr, ptr %4, align 8, !tbaa !106
  %i.cg = load i32, ptr %i.cf, align 8, !tbaa !130
  %i.ch = icmp eq i32 %i.cg, 8
  br i1 %i.ch, label %bb.m, label %lxb_encoding_encode_finish.exit

bb.m:                                             ; preds = %bb.l
  %i.ci = call i32 @lxb_encoding_encode_iso_2022_jp_eof(ptr noundef nonnull %4) #9 ; 0 uses
  br label %lxb_encoding_encode_finish.exit

lxb_encoding_encode_finish.exit:                  ; preds = %bb.l, %bb.m
  %i.cj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.val30 = load i64, ptr %i.cj, align 8, !tbaa !135 ; 2 uses
  %.not26 = icmp eq i64 %.val30, 0
  br i1 %.not26, label %bb.o, label %bb.n

bb.n:                                             ; preds = %lxb_encoding_encode_finish.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !178
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !177
  %i.co = call i32 %i.cl(ptr noundef %i.cn, ptr noundef nonnull %i.a, i64 noundef %.val30) #9
  %.not27 = icmp eq i32 %i.co, 0
  br i1 %.not27, label %bb.o, label %bb.p, !prof !114

bb.o:                                             ; preds = %bb.n, %lxb_encoding_encode_finish.exit
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %lxb_encoding_decode_replace_set.exit, %bb.k, %bb.o
  %.1 = phi i32 [ -1, %bb.k ], [ -1, %lxb_encoding_decode_replace_set.exit ], [ 0, %bb.o ], [ -1, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #9
  ret i32 %.1
}

declare i64 @_php_stream_tell(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden void @zim_Dom_HTMLDocument_saveHtml(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %2 = alloca %struct.smart_str, align 8          ; 8 uses
  %3 = alloca %struct.dom_output_ctx, align 8     ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr null, ptr %i.a, align 8, !tbaa !234
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.c = load i32, ptr %i.b, align 4, !tbaa !22
  %i.d = load ptr, ptr @dom_modern_node_class_entry, align 8, !tbaa !39
  %i.e = call i32 (i32, ptr, ...) @zend_parse_parameters(i32 noundef %i.c, ptr noundef nonnull @.str.17, ptr noundef nonnull %i.a, ptr noundef %i.d) #9
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !22   ; 2 uses
  %i.i = getelementptr inbounds i8, ptr %i.h, i64 -24 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !161  ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %bb.c, label %bb.d, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !162
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !173
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.p) #9
  br label %bb.p

bb.d:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.j, align 8, !tbaa !175  ; 3 uses
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !234  ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !22   ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !161  ; 2 uses
  %i.v = icmp eq ptr %i.u, null
  br i1 %i.v, label %bb.f, label %bb.g, !prof !30

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !162
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !173
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  call void (ptr, ptr, ...) @zend_throw_error(ptr noundef null, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.aa) #9
  br label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !175 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 64
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !235
  %.not22 = icmp eq ptr %i.ad, %i.q
  br i1 %.not22, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @php_dom_throw_error(i32 noundef 4, i1 noundef zeroext true) #9
  br label %bb.p

bb.i:                                             ; preds = %bb.d, %bb.g
  %.0 = phi ptr [ %i.ab, %bb.g ], [ %i.q, %bb.d ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 48
  store ptr %2, ptr %i.ae, align 8, !tbaa !177
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 56
  store ptr @dom_write_output_smart_str, ptr %i.af, align 8, !tbaa !178
  %i.ag = call fastcc i32 @dom_common_save(ptr noundef %3, ptr noundef nonnull %i.i, ptr noundef %i.q, ptr noundef %.0) ; 0 uses
  %i.ah = load ptr, ptr %2, align 8, !tbaa !185   ; 3 uses
  %.not.i = icmp eq ptr %i.ah, null
  br i1 %.not.i, label %bb.o, label %smart_str_0.exit

smart_str_0.exit:                                 ; preds = %bb.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !159
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ak
  store i8 0, ptr %i.al, align 1, !tbaa !22
  %i.am = load ptr, ptr %2, align 8, !tbaa !185   ; 9 uses
  %.not.i25 = icmp eq ptr %i.am, null
  br i1 %.not.i25, label %smart_str_trim_to_size_ex.exit, label %bb.j

bb.j:                                             ; preds = %smart_str_0.exit
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !186
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !159 ; 7 uses
  %i.ar = icmp ugt i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.k, label %smart_str_trim_to_size_ex.exit

bb.k:                                             ; preds = %bb.j
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 4 ; 2 uses
  %i.at = load i32, ptr %i.as, align 4, !tbaa !22
  %i.au = and i32 %i.at, 64
  %.not.i26 = icmp eq i32 %i.au, 0
  br i1 %.not.i26, label %bb.l, label %zend_string_alloc.exit

bb.l:                                             ; preds = %bb.k
  %i.av = load i32, ptr %i.am, align 8, !tbaa !24
  %i.aw = icmp eq i32 %i.av, 1
  br i1 %i.aw, label %bb.m, label %zend_string_alloc.exit, !prof !114

bb.m:                                             ; preds = %bb.l
  %i.ax = and i64 %i.aq, -8
  %i.ay = add i64 %i.ax, 32
  %i.az = call ptr @_erealloc(ptr noundef nonnull %i.am, i64 noundef %i.ay) #11 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store i64 %i.aq, ptr %i.ba, align 8, !tbaa !159
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store i64 0, ptr %i.bb, align 8, !tbaa !187
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 4 ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !22
  %i.be = and i32 %i.bd, -513
  store i32 %i.be, ptr %i.bc, align 4, !tbaa !22
  br label %zend_string_realloc.exit

zend_string_alloc.exit:                           ; preds = %bb.k, %bb.l
  %i.bf = and i64 %i.aq, -8
  %i.bg = add i64 %i.bf, 32
  %i.bh = call noalias ptr @_emalloc(i64 noundef %i.bg) #12 ; 7 uses
  store i32 1, ptr %i.bh, align 4, !tbaa !24
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  store i32 22, ptr %i.bi, align 4, !tbaa !22
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 0, ptr %i.bj, align 8, !tbaa !187
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 %i.aq, ptr %i.bk, align 8, !tbaa !159
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.bn = load i64, ptr %i.ap, align 8, !tbaa !159
  %..i = call i64 @llvm.umin.i64(i64 %i.aq, i64 %i.bn)
  %i.bo = add nuw i64 %..i, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bl, ptr noundef nonnull align 8 dereferenceable(1) %i.bm, i64 %i.bo, i1 false)
  %i.bp = load i32, ptr %i.as, align 4, !tbaa !22
  %i.bq = and i32 %i.bp, 64
  %.not24.i = icmp eq i32 %i.bq, 0
  br i1 %.not24.i, label %bb.n, label %zend_string_realloc.exit

bb.n:                                             ; preds = %zend_string_alloc.exit
  %i.br = load i32, ptr %i.am, align 8, !tbaa !24 ; 2 uses
  %i.bs = icmp ne i32 %i.br, 0
  call void @llvm.assume(i1 %i.bs)
  %i.bt = add i32 %i.br, -1
  store i32 %i.bt, ptr %i.am, align 8, !tbaa !24
  br label %zend_string_realloc.exit

zend_string_realloc.exit:                         ; preds = %bb.m, %zend_string_alloc.exit, %bb.n
  %.0.i27 = phi ptr [ %i.az, %bb.m ], [ %i.bh, %bb.n ], [ %i.bh, %zend_string_alloc.exit ]
  store i64 %i.aq, ptr %i.an, align 8, !tbaa !186
  br label %smart_str_trim_to_size_ex.exit

smart_str_trim_to_size_ex.exit:                   ; preds = %smart_str_0.exit, %bb.j, %zend_string_realloc.exit
  %i.bu = phi ptr [ null, %smart_str_0.exit ], [ %i.am, %bb.j ], [ %.0.i27, %zend_string_realloc.exit ]
  store ptr null, ptr %2, align 8, !tbaa !185
  br label %smart_str_extract_ex.exit

bb.o:                                             ; preds = %bb.i
  %i.bv = load ptr, ptr @zend_empty_string, align 8, !tbaa !157
  br label %smart_str_extract_ex.exit

smart_str_extract_ex.exit:                        ; preds = %smart_str_trim_to_size_ex.exit, %bb.o
  %.0.i = phi ptr [ %i.bu, %smart_str_trim_to_size_ex.exit ], [ %i.bv, %bb.o ] ; 2 uses
  store ptr %.0.i, ptr %1, align 8, !tbaa !22
  %i.bw = getelementptr inbounds nuw i8, ptr %.0.i, i64 4
  %i.bx = load i32, ptr %i.bw, align 4, !tbaa !22
  %i.by = and i32 %i.bx, 64
  %.not23 = icmp eq i32 %i.by, 0
  %i.bz = select i1 %.not23, i32 262, i32 6
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.bz, ptr %i.ca, align 8, !tbaa !22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  br label %bb.p

bb.p:                                             ; preds = %bb.a, %smart_str_extract_ex.exit, %bb.h, %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal noundef i32 @dom_write_output_smart_str(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !185    ; 3 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b, !prof !30

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i64, ptr %i.b, align 8, !tbaa !159  ; 2 uses
  %i.d = add i64 %i.c, %2                         ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !186
  %.not12.i = icmp ult i64 %i.d, %i.f
  br i1 %.not12.i, label %smart_str_alloc.exit, label %bb.c, !prof !114

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.i = phi i64 [ %2, %bb.a ], [ %i.d, %bb.b ]  ; 2 uses
  tail call void @smart_str_erealloc(ptr noundef nonnull %0, i64 noundef %.0.i) #9
  %.pre = load ptr, ptr %0, align 8, !tbaa !185   ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre2 = load i64, ptr %.phi.trans.insert, align 8, !tbaa !159
  br label %smart_str_alloc.exit

smart_str_alloc.exit:                             ; preds = %bb.b, %bb.c
  %i.g = phi i64 [ %i.c, %bb.b ], [ %.pre2, %bb.c ]
  %i.h = phi ptr [ %i.a, %bb.b ], [ %.pre, %bb.c ]
  %.1.i = phi i64 [ %i.d, %bb.b ], [ %.0.i, %bb.c ]
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr align 1 %1, i64 %2, i1 false)
  %i.k = load ptr, ptr %0, align 8, !tbaa !185
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.1.i, ptr %i.l, align 8, !tbaa !159
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @dom_html_document_encoding_write(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @dom_object_get_node(ptr noundef %0) #9 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @php_dom_throw_error(i32 noundef 11, i1 noundef zeroext true) #9
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8, !tbaa !22     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !159
  %i.g = tail call ptr @lxb_encoding_data_by_name(ptr noundef nonnull %i.d, i64 noundef %i.f) #9 ; 2 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr @xmlFree, align 8, !tbaa !160
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !37
  tail call void %i.h(ptr noundef %i.j) #9
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !141
  %i.m = tail call ptr @xmlStrdup(ptr noundef %i.l) #9
  store ptr %i.m, ptr %i.i, align 8, !tbaa !37
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void (ptr, ...) @zend_value_error(ptr noundef nonnull @.str.18) #9
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.1 = phi i32 [ -1, %bb.b ], [ 0, %bb.d ], [ -1, %bb.e ]
  ret i32 %.1
}

declare ptr @dom_object_get_node(ptr noundef) local_unnamed_addr #2

declare void @zend_value_error(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @dom_html_document_element_read_helper(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @dom_object_get_node(ptr noundef %0) #9 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @php_dom_throw_error(i32 noundef 11, i1 noundef zeroext true) #9
  br label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @xmlDocGetRootElement(ptr noundef nonnull %i.a) #9 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %dom_html_document_element_read_raw.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @php_dom_ns_is_html_magic_token, align 8, !tbaa !189
  %i.f = tail call zeroext i1 @php_dom_ns_is_fast(ptr noundef nonnull %i.c, ptr noundef %i.e) #9
  br i1 %i.f, label %bb.e, label %dom_html_document_element_read_raw.exit

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !155
  %i.i = tail call i32 @xmlStrEqual(ptr noundef %i.h, ptr noundef nonnull @.str.119) #9
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %dom_html_document_element_read_raw.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.016.i = load ptr, ptr %i.j, align 8, !tbaa !150 ; 2 uses
  %.not1517.i = icmp eq ptr %.016.i, null
  br i1 %.not1517.i, label %dom_html_document_element_read_raw.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f, %bb.i
  %.018.i = phi ptr [ %.0.i, %bb.i ], [ %.016.i, %bb.f ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.018.i, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !154
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i
  %i.n = load ptr, ptr @php_dom_ns_is_html_magic_token, align 8, !tbaa !189
  %i.o = tail call zeroext i1 @php_dom_ns_is_fast(ptr noundef nonnull %.018.i, ptr noundef %i.n) #9
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.018.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !155
  %i.r = tail call zeroext i1 %2(ptr noundef %i.q) #9, !inline_history !236
  br i1 %i.r, label %dom_html_document_element_read_raw.exit, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %.018.i, i64 48
  %.0.i = load ptr, ptr %i.s, align 8, !tbaa !150 ; 2 uses
  %.not15.i = icmp eq ptr %.0.i, null
  br i1 %.not15.i, label %dom_html_document_element_read_raw.exit, label %.lr.ph.i, !llvm.loop !3

dom_html_document_element_read_raw.exit:          ; preds = %bb.h, %bb.i, %bb.c, %bb.d, %bb.e, %bb.f
  %.1.i = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.f ], [ %.018.i, %bb.h ], [ null, %bb.i ]
  %i.t = tail call zeroext i1 @php_dom_create_nullable_object(ptr noundef %.1.i, ptr noundef %1, ptr noundef %0) #9 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %dom_html_document_element_read_raw.exit, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %dom_html_document_element_read_raw.exit ]
  ret i32 %.0
}

declare zeroext i1 @php_dom_create_nullable_object(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @dom_html_document_body_read(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @dom_html_document_element_read_helper(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @dom_accept_body_name)
  ret i32 %i.a
}

; Function Attrs: nounwind uwtable
define internal zeroext i1 @dom_accept_body_name(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call i32 @xmlStrEqual(ptr noundef %0, ptr noundef nonnull @.str.121) #9
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @xmlStrEqual(ptr noundef %0, ptr noundef nonnull @.str.123) #9
  %i.c = icmp ne i32 %i.b, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = phi i1 [ true, %bb.a ], [ %i.c, %bb.b ]
  ret i1 %i.d
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @dom_html_document_head_read(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @dom_object_get_node(ptr noundef %0) #9 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @php_dom_throw_error(i32 noundef 11, i1 noundef zeroext true) #9
  br label %dom_html_document_element_read_helper.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call ptr @xmlDocGetRootElement(ptr noundef nonnull %i.a) #9 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %dom_html_document_element_read_raw.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @php_dom_ns_is_html_magic_token, align 8, !tbaa !189
  %i.f = tail call zeroext i1 @php_dom_ns_is_fast(ptr noundef nonnull %i.c, ptr noundef %i.e) #9
  br i1 %i.f, label %bb.e, label %dom_html_document_element_read_raw.exit.i

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !155
  %i.i = tail call i32 @xmlStrEqual(ptr noundef %i.h, ptr noundef nonnull @.str.119) #9
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %dom_html_document_element_read_raw.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.016.i.i = load ptr, ptr %i.j, align 8, !tbaa !150 ; 2 uses
  %.not1517.i.i = icmp eq ptr %.016.i.i, null
  br i1 %.not1517.i.i, label %dom_html_document_element_read_raw.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %bb.i
  %.018.i.i = phi ptr [ %.0.i.i, %bb.i ], [ %.016.i.i, %bb.f ] ; 5 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !154
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.n = load ptr, ptr @php_dom_ns_is_html_magic_token, align 8, !tbaa !189
  %i.o = tail call zeroext i1 @php_dom_ns_is_fast(ptr noundef nonnull %.018.i.i, ptr noundef %i.n) #9
  br i1 %i.o, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !155
  %i.r = tail call i32 @xmlStrEqual(ptr noundef %i.q, ptr noundef nonnull @.str.120) #9
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.i, label %dom_html_document_element_read_raw.exit.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.lr.ph.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %.018.i.i, i64 48
  %.0.i.i = load ptr, ptr %i.s, align 8, !tbaa !150 ; 2 uses
  %.not15.i.i = icmp eq ptr %.0.i.i, null
  br i1 %.not15.i.i, label %dom_html_document_element_read_raw.exit.i, label %.lr.ph.i.i, !llvm.loop !3

dom_html_document_element_read_raw.exit.i:        ; preds = %bb.i, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c
  %.1.i.i = phi ptr [ null, %bb.c ], [ null, %bb.e ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.i ], [ %.018.i.i, %bb.h ]
  %i.t = tail call zeroext i1 @php_dom_create_nullable_object(ptr noundef %.1.i.i, ptr noundef %1, ptr noundef %0) #9 ; 0 uses
  br label %dom_html_document_element_read_helper.exit

dom_html_document_element_read_helper.exit:       ; preds = %bb.b, %dom_html_document_element_read_raw.exit.i
  %.0.i = phi i32 [ -1, %bb.b ], [ 0, %dom_html_document_element_read_raw.exit.i ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @dom_html_document_body_write(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @dom_object_get_node(ptr noundef %0) #9 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !30

bb.b:                                             ; preds = %bb.a
  tail call void @php_dom_throw_error(i32 noundef 11, i1 noundef zeroext true) #9
  br label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i8, ptr %i.c, align 8, !tbaa !22
  %.not = icmp eq i8 %i.d, 1
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %1, align 8, !tbaa !22
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -24
end_hunk_1
begin_hunk_2_@dom_html_document_title_write:bb.a
  store ptr %i.am, ptr %i.ar, align 8, !tbaa !244
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  store ptr %i.am, ptr %i.j, align 8, !tbaa !156
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store ptr %i.c, ptr %i.as, align 8, !tbaa !192
  br label %.critedge

.critedge:                                        ; preds = %bb.h, %bb.p
  %.057 = phi ptr [ %i.am, %bb.p ], [ %.010.i, %bb.h ] ; 2 uses
  tail call void @dom_remove_all_children(ptr noundef nonnull %.057) #9
  %i.at = load ptr, ptr %1, align 8, !tbaa !22
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  %i.av = tail call ptr @xmlNewDocText(ptr noundef nonnull %i.a, ptr noundef nonnull %i.au) #9
  %i.aw = tail call ptr @xmlAddChild(ptr noundef nonnull %.057, ptr noundef %i.av) #9 ; 0 uses
  br label %.thread86

bb.q:                                             ; preds = %bb.e, %bb.d
  %i.ax = load ptr, ptr @php_dom_ns_is_html_magic_token, align 8, !tbaa !189
  %i.ay = tail call zeroext i1 @php_dom_ns_is_fast(ptr noundef nonnull %i.c, ptr noundef %i.ax) #9
  br i1 %i.ay, label %bb.r, label %.thread86

bb.r:                                             ; preds = %bb.q
  %i.az = getelementptr i8, ptr %i.a, i64 24
  %.val = load ptr, ptr %i.az, align 8, !tbaa !190 ; 2 uses
  %.not1.i = icmp eq ptr %.val, null
  br i1 %.not1.i, label %dom_get_title_element.exit, label %.lr.ph.i74

.lr.ph.i74:                                       ; preds = %bb.r, %php_dom_next_in_tree_order.exit.i
  %.02.i = phi ptr [ %.0.i.i, %php_dom_next_in_tree_order.exit.i ], [ %.val, %bb.r ] ; 7 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.02.i, i64 8 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 8, !tbaa !154
  %i.bc = icmp eq i32 %i.bb, 1
  br i1 %i.bc, label %bb.s, label %.thread.i

bb.s:                                             ; preds = %.lr.ph.i74
  %i.bd = load ptr, ptr @php_dom_ns_is_html_magic_token, align 8, !tbaa !189
  %i.be = tail call zeroext i1 @php_dom_ns_is_fast(ptr noundef nonnull %.02.i, ptr noundef %i.bd) #9
  br i1 %i.be, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %.02.i, i64 16
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !155
  %i.bh = tail call i32 @xmlStrEqual(ptr noundef %i.bg, ptr noundef nonnull @.str.23) #9
  %.not7.i76 = icmp eq i32 %i.bh, 0
  br i1 %.not7.i76, label %bb.u, label %dom_get_title_element.exit

bb.u:                                             ; preds = %bb.t, %bb.s
  %.pr.i = load i32, ptr %i.ba, align 8, !tbaa !154
  %i.bi = icmp eq i32 %.pr.i, 1
  br i1 %i.bi, label %bb.v, label %.thread.i

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %.02.i, i64 24
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !156 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bk, null
  br i1 %.not.i.i, label %.thread.i, label %php_dom_next_in_tree_order.exit.i

.thread.i:                                        ; preds = %bb.v, %bb.u, %.lr.ph.i74
  %i.bl = getelementptr inbounds nuw i8, ptr %.02.i, i64 48
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !191 ; 2 uses
  %.not17.i.i = icmp eq ptr %i.bm, null
  br i1 %.not17.i.i, label %.preheader.i, label %php_dom_next_in_tree_order.exit.i

.preheader.i:                                     ; preds = %.thread.i, %bb.w
  %.012.i.i = phi ptr [ %i.bo, %bb.w ], [ %.02.i, %.thread.i ]
  %i.bn = getelementptr inbounds nuw i8, ptr %.012.i.i, i64 40
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !192 ; 3 uses
  %i.bp = icmp eq ptr %i.bo, null
  br i1 %i.bp, label %dom_get_title_element.exit, label %bb.w

bb.w:                                             ; preds = %.preheader.i
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !191 ; 2 uses
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %.preheader.i, label %php_dom_next_in_tree_order.exit.i, !llvm.loop !5

php_dom_next_in_tree_order.exit.i:                ; preds = %bb.w, %.thread.i, %bb.v
  %.0.i.i = phi ptr [ %i.bm, %.thread.i ], [ %i.bk, %bb.v ], [ %i.br, %bb.w ]
  br label %.lr.ph.i74, !llvm.loop !6

dom_get_title_element.exit:                       ; preds = %bb.t, %.preheader.i, %bb.r
  %.0.lcssa.i75 = phi ptr [ null, %bb.r ], [ null, %.preheader.i ], [ %.02.i, %bb.t ] ; 4 uses
  %i.bt = tail call ptr @xmlDocGetRootElement(ptr noundef nonnull %i.a) #9 ; 4 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %dom_html_document_element_read_raw.exit, label %bb.x

bb.x:                                             ; preds = %dom_get_title_element.exit
  %i.bv = load ptr, ptr @php_dom_ns_is_html_magic_token, align 8, !tbaa !189
  %i.bw = tail call zeroext i1 @php_dom_ns_is_fast(ptr noundef nonnull %i.bt, ptr noundef %i.bv) #9
  br i1 %i.bw, label %bb.y, label %dom_html_document_element_read_raw.exit

bb.y:                                             ; preds = %bb.x
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !155
  %i.bz = tail call i32 @xmlStrEqual(ptr noundef %i.by, ptr noundef nonnull @.str.119) #9
  %.not.i77 = icmp eq i32 %i.bz, 0
  br i1 %.not.i77, label %dom_html_document_element_read_raw.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %.016.i = load ptr, ptr %i.ca, align 8, !tbaa !150 ; 2 uses
  %.not1517.i = icmp eq ptr %.016.i, null
  br i1 %.not1517.i, label %dom_html_document_element_read_raw.exit, label %.lr.ph.i78

.lr.ph.i78:                                       ; preds = %bb.z, %bb.ac
  %.018.i = phi ptr [ %.0.i79, %bb.ac ], [ %.016.i, %bb.z ] ; 5 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.018.i, i64 8
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !154
  %i.cd = icmp eq i32 %i.cc, 1
  br i1 %i.cd, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %.lr.ph.i78
  %i.ce = load ptr, ptr @php_dom_ns_is_html_magic_token, align 8, !tbaa !189
  %i.cf = tail call zeroext i1 @php_dom_ns_is_fast(ptr noundef nonnull %.018.i, ptr noundef %i.ce) #9
  br i1 %i.cf, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cg = getelementptr inbounds nuw i8, ptr %.018.i, i64 16
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !155
  %i.ci = tail call i32 @xmlStrEqual(ptr noundef %i.ch, ptr noundef nonnull @.str.120) #9
  %.not89 = icmp eq i32 %i.ci, 0
  br i1 %.not89, label %bb.ac, label %dom_html_document_element_read_raw.exit.thread

dom_html_document_element_read_raw.exit.thread:   ; preds = %bb.ab
  %i.cj = icmp eq ptr %.0.lcssa.i75, null
  br i1 %i.cj, label %bb.ad, label %bb.af

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %.lr.ph.i78
  %i.ck = getelementptr inbounds nuw i8, ptr %.018.i, i64 48
  %.0.i79 = load ptr, ptr %i.ck, align 8, !tbaa !150 ; 2 uses
  %.not15.i = icmp eq ptr %.0.i79, null
  br i1 %.not15.i, label %dom_html_document_element_read_raw.exit, label %.lr.ph.i78, !llvm.loop !3

dom_html_document_element_read_raw.exit:          ; preds = %bb.ac, %dom_get_title_element.exit, %bb.x, %bb.y, %bb.z
  %i.cl = icmp eq ptr %.0.lcssa.i75, null
  br i1 %i.cl, label %.thread86, label %bb.af

bb.ad:                                            ; preds = %dom_html_document_element_read_raw.exit.thread
  %i.cm = tail call ptr @php_dom_get_ns_mapper(ptr noundef %0) #9
  %i.cn = tail call ptr @php_dom_libxml_ns_mapper_ensure_html_ns(ptr noundef %i.cm) #9
  %i.co = tail call ptr @xmlNewDocNode(ptr noundef nonnull %i.a, ptr noundef %i.cn, ptr noundef nonnull @.str.23, ptr noundef null) #9 ; 3 uses
  %.not70 = icmp eq ptr %i.co, null
  br i1 %.not70, label %.thread85, label %bb.ae, !prof !30

.thread85:                                        ; preds = %bb.ad
  tail call void @php_dom_throw_error(i32 noundef 11, i1 noundef zeroext true) #9
  br label %.thread86

bb.ae:                                            ; preds = %bb.ad
  %i.cp = tail call ptr @xmlAddChild(ptr noundef nonnull %.018.i, ptr noundef nonnull %i.co) #9 ; 0 uses
  br label %bb.af

bb.af:                                            ; preds = %dom_html_document_element_read_raw.exit, %dom_html_document_element_read_raw.exit.thread, %bb.ae
  %.0 = phi ptr [ %i.co, %bb.ae ], [ %.0.lcssa.i75, %dom_html_document_element_read_raw.exit.thread ], [ %.0.lcssa.i75, %dom_html_document_element_read_raw.exit ] ; 2 uses
  tail call void @dom_remove_all_children(ptr noundef nonnull %.0) #9
  %i.cq = load ptr, ptr %1, align 8, !tbaa !22
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 24
  %i.cs = tail call ptr @xmlNewDocText(ptr noundef nonnull %i.a, ptr noundef nonnull %i.cr) #9
  %i.ct = tail call ptr @xmlAddChild(ptr noundef nonnull %.0, ptr noundef %i.cs) #9 ; 0 uses
  br label %.thread86

.thread86:                                        ; preds = %.thread85, %dom_html_document_element_read_raw.exit, %bb.q, %.critedge, %bb.af, %.thread, %bb.c, %bb.b
  %.8 = phi i32 [ -1, %bb.b ], [ 0, %bb.q ], [ -1, %.thread ], [ 0, %bb.c ], [ 0, %bb.af ], [ 0, %.critedge ], [ -1, %.thread85 ], [ 0, %dom_html_document_element_read_raw.exit ]
  ret i32 %.8
}

declare ptr @php_dom_get_ns_mapper(ptr noundef) local_unnamed_addr #2

declare ptr @php_dom_libxml_ns_mapper_get_ns(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @xmlNewDocNode(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @php_dom_libxml_ns_mapper_ensure_html_ns(ptr noundef) local_unnamed_addr #2

declare zeroext i1 @php_libxml_uses_internal_errors() local_unnamed_addr #2

declare void @php_libxml_pretend_ctx_error_ex(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @lxb_encoding_data(i32 noundef) local_unnamed_addr #2

declare i32 @lxb_html_encoding_init(ptr noundef) local_unnamed_addr #2

declare i32 @lxb_html_encoding_determine(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @lxb_encoding_data_by_pre_name(ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @lxb_html_encoding_destroy(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

declare i32 @lxb_encoding_decode_utf_8_single(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare signext i8 @lxb_encoding_encode_utf_8_single(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc noundef zeroext i1 @dom_process_parse_chunk(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef nonnull %6, ptr noundef nonnull %7) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !94   ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %5, ptr %i.c, align 8, !tbaa !143
  %i.d = tail call i32 @lxb_html_document_parse_chunk(ptr noundef nonnull %1, ptr noundef %4, i64 noundef %3) #9
  %.not = icmp eq i32 %i.d, 0                     ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f, !prof !114

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %0, align 8, !tbaa !147
  %.not22 = icmp eq ptr %i.e, null
  br i1 %.not22, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !148
  %.not23 = icmp eq ptr %i.g, null
  br i1 %.not23, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.i = load i64, ptr %i.h, align 8, !tbaa !57
  tail call void @lexbor_libxml2_bridge_report_errors(ptr noundef nonnull %0, ptr noundef %2, ptr noundef %4, i64 noundef %i.i, ptr noundef nonnull %6, ptr noundef nonnull %7) #9
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.k = load i64, ptr %i.c, align 8, !tbaa !143
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %5, i64 %i.k) ; 7 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !60   ; 6 uses
  %i.n = load i64, ptr %i.j, align 8, !tbaa !59   ; 6 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.p = load i64, ptr %i.o, align 8, !tbaa !61   ; 11 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !112  ; 4 uses
  %.not.i = icmp eq ptr %i.r, null
  %i.s = icmp ult i64 %i.p, %spec.select.i        ; 2 uses
  br i1 %.not.i, label %.preheader.i, label %.preheader46.i

.preheader46.i:                                   ; preds = %bb.d
  br i1 %i.s, label %.lr.ph.i.preheader, label %dom_find_line_and_column_using_cache.exit

.lr.ph.i.preheader:                               ; preds = %.preheader46.i
  %i.t = sub nuw i64 %spec.select.i, %i.p
  %.neg = add i64 %i.p, 1
  %xtraiter = and i64 %i.t, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.p
  %i.v = load i32, ptr %i.u, align 4, !tbaa !144
  %i.w = icmp eq i32 %i.v, 10                     ; 2 uses
  %i.x = add i64 %i.m, 1
  %.136.i.prol = select i1 %i.w, i64 1, i64 %i.x  ; 2 uses
  %i.y = zext i1 %i.w to i64
  %.132.i.prol = add i64 %i.n, %i.y               ; 2 uses
  %i.z = add nuw i64 %i.p, 1
  br label %.lr.ph.i.prol.loopexit

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.136.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %.136.i.prol, %.lr.ph.i.prol ]
  %.132.i.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %.132.i.prol, %.lr.ph.i.prol ]
  %.050.i.unr = phi i64 [ %i.p, %.lr.ph.i.preheader ], [ %i.z, %.lr.ph.i.prol ]
  %.03149.i.unr = phi i64 [ %i.n, %.lr.ph.i.preheader ], [ %.132.i.prol, %.lr.ph.i.prol ]
  %.03548.i.unr = phi i64 [ %i.m, %.lr.ph.i.preheader ], [ %.136.i.prol, %.lr.ph.i.prol ]
  %i.aa = icmp eq i64 %spec.select.i, %.neg
  br i1 %i.aa, label %dom_find_line_and_column_using_cache.exit, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.d
  br i1 %i.s, label %.lr.ph56.i, label %dom_find_line_and_column_using_cache.exit

.lr.ph56.i:                                       ; preds = %.preheader.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !113 ; 3 uses
  %i.ad = sub nuw i64 %spec.select.i, %i.p
  %.neg32 = add i64 %i.p, 1
  %xtraiter30 = and i64 %i.ad, 1
  %lcmp.mod31.not = icmp eq i64 %xtraiter30, 0
  br i1 %lcmp.mod31.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph56.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.p
  %i.af = load i8, ptr %i.ae, align 1, !tbaa !22  ; 2 uses
  %i.ag = icmp eq i8 %i.af, 10                    ; 2 uses
  %.not44.i.prol = icmp sgt i8 %i.af, -65
  %i.ah = zext i1 %.not44.i.prol to i64
  %spec.select45.i.prol = add i64 %i.m, %i.ah
  %.439.i.prol = select i1 %i.ag, i64 1, i64 %spec.select45.i.prol ; 2 uses
  %i.ai = zext i1 %i.ag to i64
  %.334.i.prol = add i64 %i.n, %i.ai              ; 2 uses
  %.2.i.prol = add nuw i64 %i.p, 1
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph56.i
  %.439.i.lcssa.unr = phi i64 [ poison, %.lr.ph56.i ], [ %.439.i.prol, %.prol.loopexit.unr-lcssa ]
  %.334.i.lcssa.unr = phi i64 [ poison, %.lr.ph56.i ], [ %.334.i.prol, %.prol.loopexit.unr-lcssa ]
  %.155.i.unr = phi i64 [ %i.p, %.lr.ph56.i ], [ %.2.i.prol, %.prol.loopexit.unr-lcssa ]
  %.23354.i.unr = phi i64 [ %i.n, %.lr.ph56.i ], [ %.334.i.prol, %.prol.loopexit.unr-lcssa ]
  %.23753.i.unr = phi i64 [ %i.m, %.lr.ph56.i ], [ %.439.i.prol, %.prol.loopexit.unr-lcssa ]
  %i.aj = icmp eq i64 %spec.select.i, %.neg32
  br i1 %i.aj, label %dom_find_line_and_column_using_cache.exit, label %.lr.ph56.i.new

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.050.i = phi i64 [ %i.av, %.lr.ph.i ], [ %.050.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %.03149.i = phi i64 [ %.132.i.1, %.lr.ph.i ], [ %.03149.i.unr, %.lr.ph.i.prol.loopexit ]
  %.03548.i = phi i64 [ %.136.i.1, %.lr.ph.i ], [ %.03548.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.050.i
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !144
  %i.am = icmp eq i32 %i.al, 10                   ; 2 uses
  %i.an = zext i1 %i.am to i64
  %.132.i = add i64 %.03149.i, %i.an
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %.050.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 4
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !144
  %i.ar = icmp eq i32 %i.aq, 10                   ; 2 uses
  %i.as = add i64 %.03548.i, 2
  %i.at = select i1 %i.am, i64 2, i64 %i.as
  %.136.i.1 = select i1 %i.ar, i64 1, i64 %i.at   ; 2 uses
  %i.au = zext i1 %i.ar to i64
  %.132.i.1 = add i64 %.132.i, %i.au              ; 2 uses
  %i.av = add nuw i64 %.050.i, 2                  ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.av, %spec.select.i
  br i1 %exitcond.not.i.1, label %dom_find_line_and_column_using_cache.exit, label %.lr.ph.i, !llvm.loop !1

.lr.ph56.i.new:                                   ; preds = %.prol.loopexit, %.lr.ph56.i.new
  %.155.i = phi i64 [ %.2.i.1, %.lr.ph56.i.new ], [ %.155.i.unr, %.prol.loopexit ] ; 3 uses
  %.23354.i = phi i64 [ %.334.i.1, %.lr.ph56.i.new ], [ %.23354.i.unr, %.prol.loopexit ]
  %.23753.i = phi i64 [ %.439.i.1, %.lr.ph56.i.new ], [ %.23753.i.unr, %.prol.loopexit ]
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.155.i
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !22  ; 2 uses
  %i.ay = icmp eq i8 %i.ax, 10                    ; 2 uses
  %.not44.i = icmp sgt i8 %i.ax, -65
  %i.az = zext i1 %.not44.i to i64
  %spec.select45.i = add i64 %.23753.i, %i.az
  %.439.i = select i1 %i.ay, i64 1, i64 %spec.select45.i
  %i.ba = zext i1 %i.ay to i64
  %.334.i = add i64 %.23354.i, %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.155.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !22  ; 2 uses
  %i.be = icmp eq i8 %i.bd, 10                    ; 2 uses
  %.not44.i.1 = icmp sgt i8 %i.bd, -65
  %i.bf = zext i1 %.not44.i.1 to i64
  %spec.select45.i.1 = add i64 %.439.i, %i.bf
  %.439.i.1 = select i1 %i.be, i64 1, i64 %spec.select45.i.1 ; 2 uses
  %i.bg = zext i1 %i.be to i64
  %.334.i.1 = add i64 %.334.i, %i.bg              ; 2 uses
  %.2.i.1 = add nuw i64 %.155.i, 2                ; 2 uses
  %exitcond61.not.i.1 = icmp eq i64 %.2.i.1, %spec.select.i
  br i1 %exitcond61.not.i.1, label %dom_find_line_and_column_using_cache.exit, label %.lr.ph56.i.new, !llvm.loop !2

dom_find_line_and_column_using_cache.exit:        ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %.prol.loopexit, %.lr.ph56.i.new, %.preheader46.i, %.preheader.i
  %.5.i = phi i64 [ %.439.i.1, %.lr.ph56.i.new ], [ %i.m, %.preheader.i ], [ %i.m, %.preheader46.i ], [ %.439.i.lcssa.unr, %.prol.loopexit ], [ %.136.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.136.i.1, %.lr.ph.i ]
  %.4.i = phi i64 [ %.334.i.1, %.lr.ph56.i.new ], [ %i.n, %.preheader.i ], [ %i.n, %.preheader46.i ], [ %.334.i.lcssa.unr, %.prol.loopexit ], [ %.132.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.132.i.1, %.lr.ph.i ]
  store i64 %.5.i, ptr %i.l, align 8, !tbaa !60
  store i64 %.4.i, ptr %i.j, align 8, !tbaa !59
  br label %bb.e

bb.e:                                             ; preds = %dom_find_line_and_column_using_cache.exit, %bb.c
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !57
  %i.bj = add i64 %i.bi, %5
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !57
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store i64 0, ptr %i.bk, align 8, !tbaa !149
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret i1 %.not
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare i32 @lxb_html_document_parse_chunk(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @lexbor_libxml2_bridge_report_errors(ptr noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lxb_encoding_encode_iso_2022_jp_eof(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

declare void @xmlUnlinkNode(ptr noundef) local_unnamed_addr #2

declare void @xmlFreeNode(ptr noundef) local_unnamed_addr #2

declare void @_efree(ptr noundef) local_unnamed_addr #2

declare i64 @_php_stream_write(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @dom_saveHTML_write_string_len_utf8_output(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !181
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  store i32 0, ptr %i.d, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr %1, ptr %i.a, align 8, !tbaa !27
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 %2 ; 5 uses
  %.not43 = icmp samesign eq i64 %2, 0
  br i1 %.not43, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.h
  %i.h = phi ptr [ %1, %.lr.ph ], [ %i.aa, %bb.h ]
  %.02444 = phi ptr [ %1, %.lr.ph ], [ %.2, %bb.h ] ; 3 uses
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !181
  %i.j = call i32 @lxb_encoding_decode_utf_8_single(ptr noundef %i.i, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e) #9 ; 2 uses
  %i.k = icmp ugt i32 %i.j, 1114111
  br i1 %i.k, label %bb.c, label %._crit_edge47, !prof !30

._crit_edge47:                                    ; preds = %bb.b
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !27
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !178
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !177
  %i.n = ptrtoint ptr %i.h to i64
  %i.o = ptrtoint ptr %.02444 to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = call i32 %i.l(ptr noundef %i.m, ptr noundef %.02444, i64 noundef %i.p) #9
  %.not34 = icmp eq i32 %i.q, 0
  br i1 %.not34, label %bb.d, label %.thread, !prof !114

bb.d:                                             ; preds = %bb.c
  %i.r = icmp eq i32 %i.j, 3145727
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.t = icmp eq ptr %i.s, %i.e
  call void @llvm.assume(i1 %i.t)
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !181
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 60
  store i32 14, ptr %i.v, align 4, !tbaa !128
  br label %.thread

bb.f:                                             ; preds = %bb.d
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !178
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !177
  %i.y = call i32 %i.w(ptr noundef %i.x, ptr noundef nonnull @.str.113, i64 noundef 3) #9
  %.not35 = icmp eq i32 %i.y, 0
  br i1 %.not35, label %bb.g, label %.thread, !prof !114

bb.g:                                             ; preds = %bb.f
  %i.z = load ptr, ptr %i.a, align 8, !tbaa !27   ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge47, %bb.g
  %i.aa = phi ptr [ %.pre, %._crit_edge47 ], [ %i.z, %bb.g ] ; 2 uses
  %.2 = phi ptr [ %.02444, %._crit_edge47 ], [ %i.z, %bb.g ] ; 4 uses
  %.not = icmp eq ptr %i.aa, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !7

._crit_edge:                                      ; preds = %bb.h
  %.not32 = icmp eq ptr %i.e, %.2
  br i1 %.not32, label %._crit_edge.thread, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !178
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !177
  %i.af = ptrtoint ptr %i.e to i64
  %i.ag = ptrtoint ptr %.2 to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = call i32 %i.ac(ptr noundef %i.ae, ptr noundef %.2, i64 noundef %i.ah) #9
  %.not33 = icmp eq i32 %i.ai, 0
  br i1 %.not33, label %._crit_edge.thread, label %.thread, !prof !114

._crit_edge.thread:                               ; preds = %bb.a, %bb.i, %._crit_edge
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.f, %bb.e, %bb.i, %._crit_edge.thread
  %.227 = phi i32 [ -1, %bb.i ], [ 0, %._crit_edge.thread ], [ 0, %bb.e ], [ -1, %bb.f ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.227
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @dom_saveHTML_write_string_utf8_output(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !181
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  store i32 0, ptr %i.e, align 4, !tbaa !128
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr %1, ptr %i.a, align 8, !tbaa !27
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 %i.b ; 5 uses
  %.not43.i = icmp samesign eq i64 %i.b, 0
  br i1 %.not43.i, label %._crit_edge.thread.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.h, %.lr.ph.i
  %i.i = phi ptr [ %1, %.lr.ph.i ], [ %i.ab, %bb.h ]
  %.02444.i = phi ptr [ %1, %.lr.ph.i ], [ %.2.i, %bb.h ] ; 3 uses
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !181
  %i.k = call i32 @lxb_encoding_decode_utf_8_single(ptr noundef %i.j, ptr noundef nonnull %i.a, ptr noundef nonnull %i.f) #9 ; 2 uses
  %i.l = icmp ugt i32 %i.k, 1114111
  br i1 %i.l, label %bb.c, label %._crit_edge47.i, !prof !30

._crit_edge47.i:                                  ; preds = %bb.b
  %.pre.i = load ptr, ptr %i.a, align 8, !tbaa !27
  br label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !178
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !177
  %i.o = ptrtoint ptr %i.i to i64
  %i.p = ptrtoint ptr %.02444.i to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = call i32 %i.m(ptr noundef %i.n, ptr noundef %.02444.i, i64 noundef %i.q) #9, !inline_history !245
  %.not34.i = icmp eq i32 %i.r, 0
  br i1 %.not34.i, label %bb.d, label %dom_saveHTML_write_string_len_utf8_output.exit, !prof !114

bb.d:                                             ; preds = %bb.c
  %i.s = icmp eq i32 %i.k, 3145727
  br i1 %i.s, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %i.a, align 8, !tbaa !27
  %i.u = icmp eq ptr %i.t, %i.f
  call void @llvm.assume(i1 %i.u)
  %i.v = load ptr, ptr %i.c, align 8, !tbaa !181
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 60
  store i32 14, ptr %i.w, align 4, !tbaa !128
  br label %dom_saveHTML_write_string_len_utf8_output.exit

bb.f:                                             ; preds = %bb.d
  %i.x = load ptr, ptr %i.g, align 8, !tbaa !178
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !177
  %i.z = call i32 %i.x(ptr noundef %i.y, ptr noundef nonnull @.str.113, i64 noundef 3) #9, !inline_history !245
  %.not35.i = icmp eq i32 %i.z, 0
  br i1 %.not35.i, label %bb.g, label %dom_saveHTML_write_string_len_utf8_output.exit, !prof !114

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge47.i
  %i.ab = phi ptr [ %.pre.i, %._crit_edge47.i ], [ %i.aa, %bb.g ] ; 2 uses
  %.2.i = phi ptr [ %.02444.i, %._crit_edge47.i ], [ %i.aa, %bb.g ] ; 4 uses
  %.not.i = icmp eq ptr %i.ab, %i.f
  br i1 %.not.i, label %._crit_edge.i, label %bb.b, !llvm.loop !7

._crit_edge.i:                                    ; preds = %bb.h
  %.not32.i = icmp eq ptr %i.f, %.2.i
  br i1 %.not32.i, label %._crit_edge.thread.i, label %bb.i

bb.i:                                             ; preds = %._crit_edge.i
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !178
  %i.ad = load ptr, ptr %i.h, align 8, !tbaa !177
  %i.ae = ptrtoint ptr %i.f to i64
  %i.af = ptrtoint ptr %.2.i to i64
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = call i32 %i.ac(ptr noundef %i.ad, ptr noundef %.2.i, i64 noundef %i.ag) #9, !inline_history !245
  %.not33.i = icmp eq i32 %i.ah, 0
  br i1 %.not33.i, label %._crit_edge.thread.i, label %dom_saveHTML_write_string_len_utf8_output.exit, !prof !114

._crit_edge.thread.i:                             ; preds = %bb.i, %._crit_edge.i, %bb.a
  br label %dom_saveHTML_write_string_len_utf8_output.exit

dom_saveHTML_write_string_len_utf8_output.exit:   ; preds = %bb.c, %bb.f, %bb.e, %bb.i, %._crit_edge.thread.i
  %.227.i = phi i32 [ -1, %bb.i ], [ 0, %._crit_edge.thread.i ], [ 0, %bb.e ], [ -1, %bb.f ], [ -1, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.227.i
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @dom_saveHTML_write_string_len(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr %1, ptr %i.a, align 8, !tbaa !27
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load ptr, ptr %i.d, align 8, !tbaa !181
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.j = phi ptr [ %i.ad, %bb.e ], [ %.pre, %bb.a ]
  %i.k = call i32 @lxb_encoding_decode_utf_8(ptr noundef %i.j, ptr noundef nonnull %i.a, ptr noundef %i.c) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !182  ; 2 uses
  store ptr %i.l, ptr %i.b, align 8, !tbaa !133
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !181
  %i.n = getelementptr i8, ptr %i.m, i64 24
  %.val = load i64, ptr %i.n, align 8, !tbaa !132
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.val
  %.pre21 = load ptr, ptr %i.f, align 8, !tbaa !180
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.p = phi ptr [ %i.aa, %bb.d ], [ %.pre21, %bb.b ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !179
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !134
  %i.t = call i32 %i.s(ptr noundef %i.p, ptr noundef nonnull %i.b, ptr noundef %i.o) #9
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !178
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !177
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !183
  %i.x = load ptr, ptr %i.f, align 8, !tbaa !180
  %i.y = getelementptr i8, ptr %i.x, i64 24
  %.val20 = load i64, ptr %i.y, align 8, !tbaa !135
  %i.z = call i32 %i.u(ptr noundef %i.v, ptr noundef %i.w, i64 noundef %.val20) #9
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.d, label %.critedge, !prof !114

bb.d:                                             ; preds = %bb.c
  %i.aa = load ptr, ptr %i.f, align 8, !tbaa !180 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i64 0, ptr %i.ab, align 8, !tbaa !135
  %i.ac = icmp eq i32 %i.t, 15
  br i1 %i.ac, label %bb.c, label %bb.e, !llvm.loop !8

bb.e:                                             ; preds = %bb.d
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !181 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  store i64 0, ptr %i.ae, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.af = icmp eq i32 %i.k, 15
  br i1 %i.af, label %bb.b, label %.loopexit, !llvm.loop !9

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %.loopexit

.loopexit:                                        ; preds = %bb.e, %.critedge
  %.2 = phi i32 [ -1, %.critedge ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @dom_saveHTML_write_string(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  store ptr %1, ptr %i.a, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre.i = load ptr, ptr %i.e, align 8, !tbaa !181
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.k = phi ptr [ %i.ae, %bb.e ], [ %.pre.i, %bb.a ]
  %i.l = call i32 @lxb_encoding_decode_utf_8(ptr noundef %i.k, ptr noundef nonnull %i.a, ptr noundef nonnull %i.d) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #9
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !182  ; 2 uses
  store ptr %i.m, ptr %i.b, align 8, !tbaa !133
  %i.n = load ptr, ptr %i.e, align 8, !tbaa !181
  %i.o = getelementptr i8, ptr %i.n, i64 24
  %.val.i = load i64, ptr %i.o, align 8, !tbaa !132
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.val.i
  %.pre21.i = load ptr, ptr %i.g, align 8, !tbaa !180
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.q = phi ptr [ %i.ab, %bb.d ], [ %.pre21.i, %bb.b ]
  %i.r = load ptr, ptr %0, align 8, !tbaa !179
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !134
  %i.u = call i32 %i.t(ptr noundef %i.q, ptr noundef nonnull %i.b, ptr noundef %i.p) #9, !inline_history !246
  %i.v = load ptr, ptr %i.h, align 8, !tbaa !178
  %i.w = load ptr, ptr %i.i, align 8, !tbaa !177
  %i.x = load ptr, ptr %i.j, align 8, !tbaa !183
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !180
  %i.z = getelementptr i8, ptr %i.y, i64 24
  %.val20.i = load i64, ptr %i.z, align 8, !tbaa !135
  %i.aa = call i32 %i.v(ptr noundef %i.w, ptr noundef %i.x, i64 noundef %.val20.i) #9, !inline_history !246
  %.not.i = icmp eq i32 %i.aa, 0
  br i1 %.not.i, label %bb.d, label %.critedge.i, !prof !114

bb.d:                                             ; preds = %bb.c
  %i.ab = load ptr, ptr %i.g, align 8, !tbaa !180 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store i64 0, ptr %i.ac, align 8, !tbaa !135
  %i.ad = icmp eq i32 %i.u, 15
  br i1 %i.ad, label %bb.c, label %bb.e, !llvm.loop !8

bb.e:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !181 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  store i64 0, ptr %i.af, align 8, !tbaa !132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  %i.ag = icmp eq i32 %i.l, 15
  br i1 %i.ag, label %bb.b, label %dom_saveHTML_write_string_len.exit, !llvm.loop !9

.critedge.i:                                      ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #9
  br label %dom_saveHTML_write_string_len.exit

dom_saveHTML_write_string_len.exit:               ; preds = %bb.e, %.critedge.i
  %.2.i = phi i32 [ -1, %.critedge.i ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret i32 %.2.i
}

declare i32 @dom_html5_serialize_outer(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @lxb_encoding_decode_utf_8(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @smart_str_erealloc(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: allocsize(1)
declare ptr @_erealloc(ptr noundef, i64 noundef) local_unnamed_addr #6

declare noalias ptr @_emalloc_56() local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #7

declare void @dom_remove_all_children(ptr noundef) local_unnamed_addr #2

declare ptr @xmlNewDocText(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #8

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nounwind }
attributes #10 = { nounwind willreturn memory(read) }
attributes #11 = { nounwind allocsize(1) }
attributes #12 = { nounwind allocsize(0) }

!llvm.module.flags = !{!10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}
!llvm.errno.tbaa = !{!21}

!0 = distinct !{null}
!1 = distinct !{!1, !145}
!2 = distinct !{!2, !145}
!3 = distinct !{!3, !145}
!4 = distinct !{!4, !145}
!5 = distinct !{!5, !145}
!6 = distinct !{!6, !145}
!7 = distinct !{!7, !145}
!8 = distinct !{!8, !145}
!9 = distinct !{!9, !145}
!10 = !{i32 7, !"Dwarf Version", i32 5}
!11 = !{i32 2, !"Debug Info Version", i32 3}
!12 = !{i32 8, !"PIC Level", i32 2}
!13 = !{i32 7, !"PIE Level", i32 2}
!14 = !{i32 7, !"uwtable", i32 2}
!15 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!16 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!17 = !{!"Simple C/C++ TBAA"}
!18 = !{!"omnipotent char", !17, i64 0}
!19 = !{!"int", !18, i64 0}
!20 = !{!"__libc_errno", !19, i64 0}
!21 = !{!20, !19, i64 0}
!22 = !{!18, !18, i64 0}
!23 = !{!"_zend_refcounted_h", !19, i64 0, !18, i64 4}
!24 = !{!23, !19, i64 0}
!25 = !{!"any pointer", !18, i64 0}
!26 = !{!"p1 omnipotent char", !25, i64 0}
!27 = !{!26, !26, i64 0}
!28 = !{!"long", !18, i64 0}
!29 = !{!28, !28, i64 0}
!30 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!31 = !{!"p1 _ZTS8_xmlNode", !25, i64 0}
!32 = !{!"p1 _ZTS7_xmlDoc", !25, i64 0}
!33 = !{!"p1 _ZTS7_xmlDtd", !25, i64 0}
!34 = !{!"p1 _ZTS6_xmlNs", !25, i64 0}
!35 = !{!"p1 _ZTS8_xmlDict", !25, i64 0}
!36 = !{!"_xmlDoc", !25, i64 0, !19, i64 8, !26, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !31, i64 56, !32, i64 64, !19, i64 72, !19, i64 76, !33, i64 80, !33, i64 88, !34, i64 96, !26, i64 104, !26, i64 112, !25, i64 120, !25, i64 128, !26, i64 136, !19, i64 144, !35, i64 152, !25, i64 160, !19, i64 168, !19, i64 172}
!37 = !{!36, !26, i64 112}
!38 = !{!"p1 _ZTS17_zend_class_entry", !25, i64 0}
!39 = !{!38, !38, i64 0}
!40 = !{!"p1 _ZTS19_php_libxml_ref_obj", !25, i64 0}
!41 = !{!"p1 _ZTS11_zend_array", !25, i64 0}
!42 = !{!"p1 _ZTS21_zend_object_handlers", !25, i64 0}
!43 = !{!"_zend_object", !23, i64 0, !19, i64 8, !19, i64 12, !38, i64 16, !42, i64 24, !41, i64 32, !18, i64 40}
!44 = !{!"_dom_object", !25, i64 0, !40, i64 8, !41, i64 16, !43, i64 24}
!45 = !{!44, !40, i64 8}
!46 = !{!"p1 _ZTS17_libxml_doc_props", !25, i64 0}
!47 = !{!"", !28, i64 0}
!48 = !{!"p1 _ZTS30php_libxml_private_data_header", !25, i64 0}
!49 = !{!"p1 _ZTS28php_libxml_document_handlers", !25, i64 0}
!50 = !{!"_php_libxml_ref_obj", !25, i64 0, !46, i64 8, !47, i64 16, !48, i64 24, !49, i64 32, !19, i64 40, !19, i64 44, !19, i64 45}
!51 = !{!50, !48, i64 24}
!52 = !{!"p1 int", !25, i64 0}
!53 = !{!"dom_line_column_cache", !28, i64 0, !28, i64 8, !28, i64 16}
!54 = !{!"_Bool", !18, i64 0}
!55 = !{!"dom_lexbor_libxml2_bridge_application_data", !26, i64 0, !52, i64 8, !26, i64 16, !28, i64 24, !28, i64 32, !53, i64 40, !54, i64 64}
!56 = !{!55, !26, i64 0}
!57 = !{!55, !28, i64 32}
!58 = !{!55, !54, i64 64}
!59 = !{!53, !28, i64 0}
!60 = !{!53, !28, i64 8}
!61 = !{!53, !28, i64 16}
!62 = !{!"_zval_struct", !18, i64 0, !18, i64 8, !18, i64 12}
!63 = !{!"any p2 pointer", !25, i64 0}
!64 = !{!"p2 _ZTS11_zend_array", !63, i64 0}
!65 = !{!"_zend_array", !23, i64 0, !18, i64 8, !19, i64 12, !18, i64 16, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !28, i64 40, !25, i64 48}
!66 = !{!"p1 _ZTS13__jmp_buf_tag", !25, i64 0}
!67 = !{!"p1 _ZTS12_zval_struct", !25, i64 0}
!68 = !{!"p1 _ZTS14_zend_vm_stack", !25, i64 0}
!69 = !{!"p1 _ZTS18_zend_execute_data", !25, i64 0}
!70 = !{!"zend_atomic_bool_s", !18, i64 0}
!71 = !{!"_zend_stack", !19, i64 0, !19, i64 4, !19, i64 8, !25, i64 16}
!72 = !{!"p1 _ZTS15_zend_ini_entry", !25, i64 0}
!73 = !{!"p2 _ZTS12_zend_object", !63, i64 0}
!74 = !{!"_zend_objects_store", !73, i64 0, !19, i64 8, !19, i64 12, !19, i64 16}
!75 = !{!"_zend_lazy_objects_store", !65, i64 0}
!76 = !{!"p1 _ZTS12_zend_object", !25, i64 0}
!77 = !{!"p1 _ZTS8_zend_op", !25, i64 0}
!78 = !{!"p1 _ZTS18_zend_module_entry", !25, i64 0}
!79 = !{!"p1 _ZTS18_HashTableIterator", !25, i64 0}
!80 = !{!"_zend_op", !25, i64 0, !18, i64 8, !18, i64 12, !18, i64 16, !19, i64 20, !19, i64 24, !18, i64 28, !18, i64 29, !18, i64 30, !18, i64 31}
!81 = !{!"", !67, i64 0, !67, i64 8, !67, i64 16}
!82 = !{!"p1 _ZTS19_zend_fiber_context", !25, i64 0}
!83 = !{!"p1 _ZTS11_zend_fiber", !25, i64 0}
!84 = !{!"p2 _ZTS16_zend_error_info", !63, i64 0}
!85 = !{!"p1 _ZTS12_zend_string", !25, i64 0}
!86 = !{!"_zend_call_stack", !25, i64 0, !28, i64 8}
!87 = !{!"p1 _ZTS19_zend_strtod_bigint", !25, i64 0}
!88 = !{!"_zend_strtod_state", !18, i64 0, !87, i64 64, !26, i64 72}
!89 = !{!"_zend_executor_globals", !62, i64 0, !62, i64 16, !18, i64 32, !64, i64 288, !64, i64 296, !65, i64 304, !65, i64 360, !66, i64 416, !19, i64 424, !54, i64 428, !62, i64 432, !19, i64 448, !41, i64 456, !41, i64 464, !41, i64 472, !67, i64 480, !67, i64 488, !68, i64 496, !28, i64 504, !69, i64 512, !38, i64 520, !19, i64 528, !69, i64 536, !19, i64 544, !28, i64 552, !19, i64 560, !19, i64 564, !19, i64 568, !54, i64 572, !54, i64 573, !70, i64 574, !70, i64 575, !41, i64 576, !28, i64 584, !25, i64 592, !25, i64 600, !65, i64 608, !65, i64 664, !19, i64 720, !54, i64 724, !62, i64 728, !62, i64 744, !71, i64 760, !71, i64 784, !71, i64 808, !38, i64 832, !19, i64 840, !19, i64 844, !28, i64 848, !41, i64 856, !41, i64 864, !72, i64 872, !74, i64 880, !75, i64 904, !76, i64 960, !76, i64 968, !77, i64 976, !18, i64 984, !78, i64 1080, !54, i64 1088, !18, i64 1089, !28, i64 1096, !19, i64 1104, !19, i64 1108, !79, i64 1112, !18, i64 1120, !25, i64 1376, !18, i64 1384, !80, i64 1640, !65, i64 1672, !28, i64 1728, !81, i64 1736, !82, i64 1760, !82, i64 1768, !83, i64 1776, !28, i64 1784, !54, i64 1792, !19, i64 1796, !84, i64 1800, !85, i64 1808, !28, i64 1816, !86, i64 1824, !28, i64 1840, !28, i64 1848, !88, i64 1856, !18, i64 1936}
!90 = !{!89, !19, i64 424}
!91 = !{!89, !19, i64 720}
!92 = !{!"lexbor_libxml2_bridge_extracted_observations", !54, i64 0, !54, i64 1, !54, i64 2, !19, i64 4}
!93 = !{!"lexbor_libxml2_bridge_parse_context", !25, i64 0, !25, i64 8, !92, i64 16, !25, i64 24}
!94 = !{!93, !25, i64 24}
!95 = !{!"p1 _ZTS17lxb_encoding_data", !25, i64 0}
!96 = !{!"", !95, i64 0, !26, i64 8, !28, i64 16, !28, i64 24, !26, i64 32, !28, i64 40, !19, i64 48}
!97 = !{!"", !95, i64 0, !52, i64 8, !28, i64 16, !28, i64 24, !52, i64 32, !28, i64 40, !19, i64 48, !19, i64 52, !54, i64 56, !54, i64 57, !19, i64 60, !18, i64 64}
!98 = !{!"dom_decoding_encoding_ctx", !54, i64 0, !96, i64 8, !97, i64 64, !95, i64 144, !95, i64 152, !18, i64 160, !18, i64 4256}
!99 = !{!98, !95, i64 144}
!100 = !{!98, !95, i64 152}
!101 = !{!98, !54, i64 0}
!102 = !{!96, !26, i64 8}
!103 = !{!96, !26, i64 32}
!104 = !{!96, !28, i64 40}
!105 = !{!96, !28, i64 16}
!106 = !{!96, !95, i64 0}
!107 = !{!97, !52, i64 8}
!108 = !{!97, !28, i64 16}
!109 = !{!97, !95, i64 0}
!110 = !{!97, !52, i64 32}
!111 = !{!97, !28, i64 40}
!112 = !{!55, !52, i64 8}
!113 = !{!55, !26, i64 16}
!114 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!115 = !{!"lxb_dom_event_target", !25, i64 0}
!116 = !{!"p1 _ZTS16lxb_dom_document", !25, i64 0}
!117 = !{!"p1 _ZTS12lxb_dom_node", !25, i64 0}
!118 = !{!"lxb_dom_node", !115, i64 0, !28, i64 8, !28, i64 16, !28, i64 24, !116, i64 32, !117, i64 40, !117, i64 48, !117, i64 56, !117, i64 64, !117, i64 72, !25, i64 80, !19, i64 88, !28, i64 96}
!119 = !{!"p1 _ZTS21lxb_dom_document_type", !25, i64 0}
!120 = !{!"p1 _ZTS15lxb_dom_element", !25, i64 0}
!121 = !{!"p1 _ZTS11lexbor_hash", !25, i64 0}
!122 = !{!"p1 _ZTS20lxb_dom_document_css", !25, i64 0}
!123 = !{!"lxb_dom_document", !118, i64 0, !19, i64 104, !19, i64 108, !119, i64 112, !120, i64 120, !25, i64 128, !25, i64 136, !25, i64 144, !25, i64 152, !25, i64 160, !25, i64 168, !121, i64 176, !121, i64 184, !121, i64 192, !121, i64 200, !25, i64 208, !25, i64 216, !122, i64 224, !54, i64 232, !54, i64 233, !54, i64 234}
!124 = !{!"p1 _ZTS21lxb_html_head_element", !25, i64 0}
!125 = !{!"p1 _ZTS21lxb_html_body_element", !25, i64 0}
!126 = !{!"lxb_html_document", !123, i64 0, !25, i64 240, !124, i64 248, !125, i64 256, !25, i64 264, !25, i64 272, !19, i64 280, !19, i64 284}
!127 = !{!126, !25, i64 208}
!128 = !{!97, !19, i64 60}
!129 = !{!"lxb_encoding_data", !19, i64 0, !25, i64 8, !25, i64 16, !25, i64 24, !25, i64 32, !26, i64 40}
!130 = !{!129, !19, i64 0}
!131 = !{}
!132 = !{!97, !28, i64 24}
!133 = !{!52, !52, i64 0}
!134 = !{!129, !25, i64 8}
!135 = !{!96, !28, i64 24}
!136 = !{!"p1 _ZTS18lxb_html_tokenizer", !25, i64 0}
!137 = !{!"p1 _ZTS13lxb_html_tree", !25, i64 0}
!138 = !{!"", !136, i64 0, !137, i64 8, !137, i64 16, !117, i64 24, !117, i64 32, !19, i64 40, !19, i64 44, !28, i64 48}
!139 = !{!138, !137, i64 8}
!140 = !{!32, !32, i64 0}
!141 = !{!129, !26, i64 40}
!142 = !{!93, !19, i64 20}
!143 = !{!55, !28, i64 24}
!144 = !{!19, !19, i64 0}
!145 = !{!"llvm.loop.mustprogress"}
!146 = !{i8 0, i8 2}
!147 = !{!93, !25, i64 0}
!148 = !{!93, !25, i64 8}
!149 = !{!55, !28, i64 56}
!150 = !{!31, !31, i64 0}
!151 = !{!"p1 _ZTS8_xmlAttr", !25, i64 0}
!152 = !{!"short", !18, i64 0}
!153 = !{!"_xmlNode", !25, i64 0, !19, i64 8, !26, i64 16, !31, i64 24, !31, i64 32, !31, i64 40, !31, i64 48, !31, i64 56, !32, i64 64, !34, i64 72, !26, i64 80, !151, i64 88, !34, i64 96, !25, i64 104, !152, i64 112, !152, i64 114}
!154 = !{!153, !19, i64 8}
!155 = !{!153, !26, i64 16}
!156 = !{!153, !31, i64 24}
!157 = !{!85, !85, i64 0}
!158 = !{!"_zend_string", !23, i64 0, !28, i64 8, !28, i64 16, !18, i64 24}
!159 = !{!158, !28, i64 16}
!160 = !{!25, !25, i64 0}
!161 = !{!44, !25, i64 0}
!162 = !{!44, !38, i64 40}
!163 = !{!"p1 _ZTS24_zend_class_mutable_data", !25, i64 0}
!164 = !{!"p1 _ZTS29_zend_inheritance_cache_entry", !25, i64 0}
!165 = !{!"p2 _ZTS19_zend_property_info", !63, i64 0}
!166 = !{!"p1 _ZTS14_zend_function", !25, i64 0}
!167 = !{!"p1 _ZTS26_zend_class_iterator_funcs", !25, i64 0}
!168 = !{!"p1 _ZTS29_zend_class_arrayaccess_funcs", !25, i64 0}
!169 = !{!"p1 _ZTS16_zend_class_name", !25, i64 0}
!170 = !{!"p2 _ZTS17_zend_trait_alias", !63, i64 0}
!171 = !{!"p2 _ZTS22_zend_trait_precedence", !63, i64 0}
!172 = !{!"_zend_class_entry", !18, i64 0, !85, i64 8, !18, i64 16, !19, i64 24, !19, i64 28, !19, i64 32, !19, i64 36, !67, i64 40, !67, i64 48, !67, i64 56, !65, i64 64, !65, i64 120, !65, i64 176, !163, i64 232, !164, i64 240, !165, i64 248, !166, i64 256, !166, i64 264, !166, i64 272, !166, i64 280, !166, i64 288, !166, i64 296, !166, i64 304, !166, i64 312, !166, i64 320, !166, i64 328, !166, i64 336, !166, i64 344, !166, i64 352, !42, i64 360, !167, i64 368, !168, i64 376, !18, i64 384, !25, i64 392, !25, i64 400, !25, i64 408, !25, i64 416, !19, i64 424, !19, i64 428, !19, i64 432, !19, i64 436, !18, i64 440, !169, i64 448, !170, i64 456, !171, i64 464, !41, i64 472, !19, i64 480, !41, i64 488, !85, i64 496, !18, i64 504}
!173 = !{!172, !85, i64 8}
!174 = !{!"_php_libxml_node_ptr", !31, i64 0, !19, i64 8, !25, i64 16}
!175 = !{!174, !31, i64 0}
!176 = !{!"dom_output_ctx", !95, i64 0, !95, i64 8, !25, i64 16, !25, i64 24, !52, i64 32, !26, i64 40, !25, i64 48, !25, i64 56}
!177 = !{!176, !25, i64 48}
!178 = !{!176, !25, i64 56}
!179 = !{!176, !95, i64 0}
!180 = !{!176, !25, i64 16}
!181 = !{!176, !25, i64 24}
!182 = !{!176, !52, i64 32}
!183 = !{!176, !26, i64 40}
!184 = !{!"", !85, i64 0, !28, i64 8}
!185 = !{!184, !85, i64 0}
!186 = !{!184, !28, i64 8}
!187 = !{!158, !28, i64 8}
!188 = !{!"p1 _ZTS22php_dom_ns_magic_token", !25, i64 0}
!189 = !{!188, !188, i64 0}
!190 = !{!36, !31, i64 24}
!191 = !{!153, !31, i64 48}
!192 = !{!153, !31, i64 40}
!193 = !{!"", !26, i64 0, !19, i64 8}
!194 = !{!193, !19, i64 8}
!195 = !{!"", !19, i64 0, !28, i64 8, !28, i64 16, !28, i64 24}
!196 = !{!195, !19, i64 0}
!197 = !{!"", !26, i64 0, !28, i64 8, !28, i64 16, !28, i64 24}
!198 = !{!197, !28, i64 16}
!199 = !{!"", !26, i64 0, !26, i64 8}
!200 = !{!199, !26, i64 0}
!201 = !{!199, !26, i64 8}
!202 = distinct !{!202, !145}
!203 = distinct !{null}
!204 = distinct !{!204, !145}
!205 = distinct !{!205, !145}
!206 = !{!98, !19, i64 124}
!207 = !{!129, !25, i64 16}
!208 = distinct !{!208, !145}
!209 = distinct !{!209, !145}
!210 = !{!92, !54, i64 1}
!211 = !{!92, !54, i64 2}
!212 = !{!92, !54, i64 0}
!213 = distinct !{!213, !215}
!214 = !{!89, !76, i64 960}
!215 = !{!"llvm.loop.peeled.count", i32 1}
!216 = !{!"branch_weights", i32 1, i32 10000, i32 1, i32 1, i32 1, i32 1}
!217 = !{!"p1 _ZTS15_php_stream_ops", !25, i64 0}
!218 = !{!"p1 _ZTS18_php_stream_filter", !25, i64 0}
!219 = !{!"p1 _ZTS11_php_stream", !25, i64 0}
!220 = !{!"_php_stream_filter_chain", !218, i64 0, !218, i64 8, !219, i64 16}
!221 = !{!"p1 _ZTS19_php_stream_wrapper", !25, i64 0}
!222 = !{!"p1 _ZTS14_zend_resource", !25, i64 0}
!223 = !{!"p1 _ZTS8_IO_FILE", !25, i64 0}
!224 = !{!"_php_stream", !217, i64 0, !25, i64 8, !220, i64 16, !220, i64 40, !221, i64 64, !25, i64 72, !62, i64 80, !152, i64 96, !152, i64 96, !152, i64 96, !152, i64 96, !152, i64 96, !152, i64 96, !152, i64 97, !152, i64 97, !18, i64 98, !19, i64 116, !222, i64 120, !223, i64 128, !26, i64 136, !222, i64 144, !28, i64 152, !26, i64 160, !28, i64 168, !28, i64 176, !28, i64 184, !28, i64 192, !219, i64 200}
!225 = !{!224, !221, i64 64}
!226 = !{!36, !26, i64 136}
!227 = !{!176, !95, i64 8}
!228 = !{!"p1 _ZTS20php_dom_private_data", !25, i64 0}
!229 = !{!"", !25, i64 0, !25, i64 8, !25, i64 16, !228, i64 24}
!230 = !{!229, !25, i64 8}
!231 = !{!229, !25, i64 0}
!232 = !{!229, !25, i64 16}
!233 = !{!229, !228, i64 24}
!234 = !{!67, !67, i64 0}
!235 = !{!153, !32, i64 64}
!236 = distinct !{null}
!237 = !{!153, !25, i64 0}
!238 = distinct !{!238, !145}
!239 = !{!153, !26, i64 80}
!240 = !{!153, !34, i64 72}
!241 = !{!"_xmlNs", !34, i64 0, !19, i64 8, !26, i64 16, !26, i64 24, !25, i64 32, !32, i64 40}
!242 = !{!241, !26, i64 24}
!243 = !{!153, !31, i64 32}
!244 = !{!153, !31, i64 56}
!245 = !{ptr @dom_saveHTML_write_string_len_utf8_output}
!246 = !{ptr @dom_saveHTML_write_string_len}
end_hunk_2
