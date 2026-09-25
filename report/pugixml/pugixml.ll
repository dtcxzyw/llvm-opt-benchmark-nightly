Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pugixml/original/pugixml?download=true
inline.NumInlined: 2249
inline.NumDeleted: 424
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN4pugi4impl12_GLOBAL__N_112xpath_parser14parse_functionERKNS1_18xpath_lexer_stringEmPPNS1_14xpath_ast_nodeE:bb.a

bb.bg:                                            ; preds = %bb.be
  %i.gv = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.gw = tail call noundef ptr %i.gv(i64 noundef 4112), !inline_history !48 ; 5 uses
  %.not23.i.i.i345 = icmp eq ptr %i.gw, null
  br i1 %.not23.i.i.i345, label %bb.bh, label %bb.bj

bb.bh:                                            ; preds = %bb.bg
  %i.gx = getelementptr inbounds nuw i8, ptr %.val180.a, i64 16
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !225 ; 2 uses
  %.not24.i.i.i346 = icmp eq ptr %i.gy, null
  br i1 %.not24.i.i.i346, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  store i8 1, ptr %i.gy, align 1, !tbaa !251
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit

bb.bj:                                            ; preds = %bb.bg
  %i.gz = load ptr, ptr %.val180.a, align 8, !tbaa !223
  store ptr %i.gz, ptr %i.gw, align 8, !tbaa !240
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i64 4096, ptr %i.ha, align 8, !tbaa !250
  store ptr %i.gw, ptr %.val180.a, align 8, !tbaa !223
  store i64 40, ptr %i.gn, align 8, !tbaa !224
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i343

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i343: ; preds = %bb.bj, %bb.bf
  %.1.i.i.i344 = phi ptr [ %i.gu, %bb.bf ], [ %i.hb, %bb.bj ] ; 3 uses
  store <4 x i8> <i8 21, i8 2, i8 0, i8 0>, ptr %.1.i.i.i344, align 8, !tbaa !86
  %i.hc = getelementptr inbounds nuw i8, ptr %.1.i.i.i344, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.hc, i8 0, i64 24, i1 false)
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit

bb.bk:                                            ; preds = %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit341.thread, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit341
  %i.hd = phi i1 [ %i.gk, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit341.thread ], [ %i.gm, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit341 ]
  br label %.lr.ph.i.i349

bb.bl:                                            ; preds = %.lr.ph.i.i349
  %i.he = add nuw nsw i64 %.01013.i.i350, 1       ; 2 uses
  %exitcond.not.i.i353 = icmp eq i64 %i.he, %i.ge
  br i1 %exitcond.not.i.i353, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit355, label %.lr.ph.i.i349, !llvm.loop !20

.lr.ph.i.i349:                                    ; preds = %bb.bk, %bb.bl
  %.01013.i.i350 = phi i64 [ %i.he, %bb.bl ], [ 0, %bb.bk ] ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr @.str.55, i64 %.01013.i.i350
  %i.hg = load i8, ptr %i.hf, align 1, !tbaa !86
  %i.hh = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.01013.i.i350
  %i.hi = load i8, ptr %i.hh, align 1, !tbaa !86
  %.not.i.i351 = icmp eq i8 %i.hg, %i.hi
  br i1 %.not.i.i351, label %bb.bl, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit355.thread

_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit355.thread: ; preds = %.lr.ph.i.i349
  %i.hj = icmp eq i64 %1, 1
  br label %bb.bs

_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit355: ; preds = %bb.bl
  %i.hk = icmp eq i64 %i.ge, 4
  %i.hl = icmp eq i64 %1, 1                       ; 2 uses
  %or.cond19 = and i1 %i.hl, %i.hk
  br i1 %or.cond19, label %bb.bm, label %bb.bs

bb.bm:                                            ; preds = %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit355
  %.val179.a = load ptr, ptr %0, align 8, !tbaa !232 ; 5 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.val179.a, i64 8 ; 3 uses
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !224 ; 2 uses
  %i.ho = add i64 %i.hn, 40                       ; 2 uses
  %i.hp = load ptr, ptr %.val179.a, align 8, !tbaa !223 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !250
  %.not.i.i.i356 = icmp ugt i64 %i.ho, %i.hr
  br i1 %.not.i.i.i356, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hp, i64 16
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 %i.hn
  store i64 %i.ho, ptr %i.hm, align 8, !tbaa !224
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i357

bb.bo:                                            ; preds = %bb.bm
  %i.hu = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.hv = tail call noundef ptr %i.hu(i64 noundef 4112), !inline_history !48 ; 5 uses
  %.not23.i.i.i359 = icmp eq ptr %i.hv, null
  br i1 %.not23.i.i.i359, label %bb.bp, label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.hw = getelementptr inbounds nuw i8, ptr %.val179.a, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !225 ; 2 uses
  %.not24.i.i.i360 = icmp eq ptr %i.hx, null
  br i1 %.not24.i.i.i360, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store i8 1, ptr %i.hx, align 1, !tbaa !251
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit

bb.br:                                            ; preds = %bb.bo
  %i.hy = load ptr, ptr %.val179.a, align 8, !tbaa !223
  store ptr %i.hy, ptr %i.hv, align 8, !tbaa !240
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hv, i64 8
  store i64 4096, ptr %i.hz, align 8, !tbaa !250
  store ptr %i.hv, ptr %.val179.a, align 8, !tbaa !223
  store i64 40, ptr %i.hm, align 8, !tbaa !224
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i357

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i357: ; preds = %bb.br, %bb.bn
  %.1.i.i.i358 = phi ptr [ %i.ht, %bb.bn ], [ %i.ia, %bb.br ] ; 4 uses
  store <4 x i8> <i8 49, i8 4, i8 0, i8 0>, ptr %.1.i.i.i358, align 8, !tbaa !86
  %i.ib = getelementptr inbounds nuw i8, ptr %.1.i.i.i358, i64 8
  store ptr %.0.val1, ptr %i.ib, align 8, !tbaa !242
  %i.ic = getelementptr inbounds nuw i8, ptr %.1.i.i.i358, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ic, i8 0, i64 16, i1 false)
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit

bb.bs:                                            ; preds = %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit355.thread, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit355
  %i.id = phi i1 [ %i.hj, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit355.thread ], [ %i.hl, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit355 ]
  br label %.lr.ph.i.i363

bb.bt:                                            ; preds = %.lr.ph.i.i363
  %i.ie = add nuw nsw i64 %.01013.i.i364, 1       ; 2 uses
  %exitcond.not.i.i367 = icmp eq i64 %i.ie, %i.ge
  br i1 %exitcond.not.i.i367, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit369, label %.lr.ph.i.i363, !llvm.loop !20

.lr.ph.i.i363:                                    ; preds = %bb.bs, %bb.bt
  %.01013.i.i364 = phi i64 [ %i.ie, %bb.bt ], [ 0, %bb.bs ] ; 3 uses
  %i.if = getelementptr inbounds nuw i8, ptr @.str.56, i64 %.01013.i.i364
  %i.ig = load i8, ptr %i.if, align 1, !tbaa !86
  %i.ih = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.01013.i.i364
  %i.ii = load i8, ptr %i.ih, align 1, !tbaa !86
  %.not.i.i365 = icmp eq i8 %i.ig, %i.ii
  br i1 %.not.i.i365, label %bb.bt, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit.thread

_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit369: ; preds = %bb.bt
  %i.ij = icmp eq i64 %i.ge, 10
  %i.ik = icmp ult i64 %1, 2
  %or.cond21 = and i1 %i.ik, %i.ij
  br i1 %or.cond21, label %bb.bu, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit.thread

bb.bu:                                            ; preds = %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit369
  br i1 %i.id, label %bb.bv, label %bb.bx

bb.bv:                                            ; preds = %bb.bu
  %i.il = getelementptr i8, ptr %.0.val1, i64 1
  %.val192.a = load i8, ptr %i.il, align 1, !tbaa !246
  %.not160.a = icmp eq i8 %.val192.a, 1
  br i1 %.not160.a, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !236 ; 2 uses
  store ptr @.str.47, ptr %i.in, align 8, !tbaa !195
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i370 = load ptr, ptr %i.io, align 8, !tbaa !239
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !234
  %i.ir = ptrtoint ptr %.val.i370 to i64
  %i.is = ptrtoint ptr %i.iq to i64
  %i.it = sub i64 %i.ir, %i.is
  %i.iu = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store i64 %i.it, ptr %i.iu, align 8, !tbaa !196
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit

bb.bx:                                            ; preds = %bb.bv, %bb.bu
  %i.iv = select i1 %i.hd, i32 25, i32 26
  %.val178.a = load ptr, ptr %0, align 8, !tbaa !232
  %i.iw = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_(ptr %.val178.a, i32 noundef %i.iv, i32 noundef 3, ptr noundef %.0.val1, ptr noundef null)
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit

bb.by:                                            ; preds = %bb.a
  %i.ix = ptrtoint ptr %.8.val to i64
  %i.iy = ptrtoint ptr %.0.val to i64
  %i.iz = sub i64 %i.ix, %i.iy                    ; 10 uses
  %.not14.i.i371 = icmp eq ptr %.8.val, %.0.val
  br i1 %.not14.i.i371, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit.thread, label %.lr.ph.i.i372

bb.bz:                                            ; preds = %.lr.ph.i.i372
  %i.ja = add nuw nsw i64 %.01013.i.i373, 1       ; 2 uses
  %exitcond.not.i.i376 = icmp eq i64 %i.ja, %i.iz
  br i1 %exitcond.not.i.i376, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit378, label %.lr.ph.i.i372, !llvm.loop !20

.lr.ph.i.i372:                                    ; preds = %bb.by, %bb.bz
  %.01013.i.i373 = phi i64 [ %i.ja, %bb.bz ], [ 0, %bb.by ] ; 3 uses
  %i.jb = getelementptr inbounds nuw i8, ptr @.str.57, i64 %.01013.i.i373
  %i.jc = load i8, ptr %i.jb, align 1, !tbaa !86
  %i.jd = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.01013.i.i373
  %i.je = load i8, ptr %i.jd, align 1, !tbaa !86
  %.not.i.i374 = icmp eq i8 %i.jc, %i.je
  br i1 %.not.i.i374, label %bb.bz, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit378.thread

_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit378.thread: ; preds = %.lr.ph.i.i372
  %i.jf = icmp ult i64 %1, 2
  br label %bb.cj

_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit378: ; preds = %bb.bz
  %i.jg = icmp eq i64 %i.iz, 4
  %i.jh = icmp ult i64 %1, 2                      ; 2 uses
  %or.cond23 = and i1 %i.jh, %i.jg
  br i1 %or.cond23, label %bb.ca, label %bb.cj

bb.ca:                                            ; preds = %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit378
  %i.ji = icmp eq i64 %1, 1
  br i1 %i.ji, label %bb.cb, label %bb.cd

bb.cb:                                            ; preds = %bb.ca
  %i.jj = getelementptr i8, ptr %.0.val1, i64 1
  %.val191.a = load i8, ptr %i.jj, align 1, !tbaa !246
  %.not159.a = icmp eq i8 %.val191.a, 1
  br i1 %.not159.a, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jk = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !236 ; 2 uses
  store ptr @.str.47, ptr %i.jl, align 8, !tbaa !195
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i379 = load ptr, ptr %i.jm, align 8, !tbaa !239
  %i.jn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !234
  %i.jp = ptrtoint ptr %.val.i379 to i64
  %i.jq = ptrtoint ptr %i.jo to i64
  %i.jr = sub i64 %i.jp, %i.jq
  %i.js = getelementptr inbounds nuw i8, ptr %i.jl, i64 8
  store i64 %i.jr, ptr %i.js, align 8, !tbaa !196
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit

bb.cd:                                            ; preds = %bb.cb, %bb.ca
  %2 = icmp eq i64 %1, 0
  %.val177.a = load ptr, ptr %0, align 8, !tbaa !232 ; 5 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.val177.a, i64 8 ; 3 uses
  %i.ju = load i64, ptr %i.jt, align 8, !tbaa !224 ; 2 uses
  %i.jv = add i64 %i.ju, 40                       ; 2 uses
  %i.jw = load ptr, ptr %.val177.a, align 8, !tbaa !223 ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load i64, ptr %i.jx, align 8, !tbaa !250
  %.not.i.i.i380 = icmp ugt i64 %i.jv, %i.jy
  br i1 %.not.i.i.i380, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 %i.ju
  store i64 %i.jv, ptr %i.jt, align 8, !tbaa !224
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i381

bb.cf:                                            ; preds = %bb.cd
  %i.kb = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.kc = tail call noundef ptr %i.kb(i64 noundef 4112), !inline_history !48 ; 5 uses
  %.not23.i.i.i383 = icmp eq ptr %i.kc, null
  br i1 %.not23.i.i.i383, label %bb.cg, label %bb.ci

bb.cg:                                            ; preds = %bb.cf
  %i.kd = getelementptr inbounds nuw i8, ptr %.val177.a, i64 16
  %i.ke = load ptr, ptr %i.kd, align 8, !tbaa !225 ; 2 uses
  %.not24.i.i.i384 = icmp eq ptr %i.ke, null
  br i1 %.not24.i.i.i384, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  store i8 1, ptr %i.ke, align 1, !tbaa !251
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit

bb.ci:                                            ; preds = %bb.cf
  %i.kf = load ptr, ptr %.val177.a, align 8, !tbaa !223
  store ptr %i.kf, ptr %i.kc, align 8, !tbaa !240
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kc, i64 8
  store i64 4096, ptr %i.kg, align 8, !tbaa !250
  store ptr %i.kc, ptr %.val177.a, align 8, !tbaa !223
  store i64 40, ptr %i.jt, align 8, !tbaa !224
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kc, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i381

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i381: ; preds = %bb.ci, %bb.ce
  %.1.i.i.i382 = phi ptr [ %i.ka, %bb.ce ], [ %i.kh, %bb.ci ] ; 7 uses
  %3 = select i1 %2, i8 29, i8 30
  store i8 %3, ptr %.1.i.i.i382, align 8, !tbaa !245
  %i.ki = getelementptr inbounds nuw i8, ptr %.1.i.i.i382, i64 1
  store i8 3, ptr %i.ki, align 1, !tbaa !246
  %i.kj = getelementptr inbounds nuw i8, ptr %.1.i.i.i382, i64 2
  store i8 0, ptr %i.kj, align 2, !tbaa !248
  %i.kk = getelementptr inbounds nuw i8, ptr %.1.i.i.i382, i64 3
  store i8 0, ptr %i.kk, align 1, !tbaa !247
  %i.kl = getelementptr inbounds nuw i8, ptr %.1.i.i.i382, i64 8
  store ptr %.0.val1, ptr %i.kl, align 8, !tbaa !242
  %i.km = getelementptr inbounds nuw i8, ptr %.1.i.i.i382, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.km, i8 0, i64 16, i1 false)
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit

bb.cj:                                            ; preds = %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit378.thread, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit378
  %i.kn = phi i1 [ %i.jf, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit378.thread ], [ %i.jh, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit378 ] ; 3 uses
  br label %.lr.ph.i.i387

bb.ck:                                            ; preds = %.lr.ph.i.i387
  %i.ko = add nuw nsw i64 %.01013.i.i388, 1       ; 2 uses
  %exitcond.not.i.i391 = icmp eq i64 %i.ko, %i.iz
  br i1 %exitcond.not.i.i391, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit393, label %.lr.ph.i.i387, !llvm.loop !20

.lr.ph.i.i387:                                    ; preds = %bb.cj, %bb.ck
  %.01013.i.i388 = phi i64 [ %i.ko, %bb.ck ], [ 0, %bb.cj ] ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr @.str.58, i64 %.01013.i.i388
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !86
  %i.kr = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.01013.i.i388
  %i.ks = load i8, ptr %i.kr, align 1, !tbaa !86
  %.not.i.i389 = icmp eq i8 %i.kq, %i.ks
  br i1 %.not.i.i389, label %bb.ck, label %.lr.ph.i.i396.preheader

_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit393: ; preds = %bb.ck
  %i.kt = icmp eq i64 %i.iz, 13
  %or.cond25 = and i1 %i.kt, %i.kn
  br i1 %or.cond25, label %bb.cl, label %.lr.ph.i.i396.preheader

.lr.ph.i.i396.preheader:                          ; preds = %.lr.ph.i.i387, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit393
  br label %.lr.ph.i.i396

bb.cl:                                            ; preds = %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit393
  %i.ku = icmp eq i64 %1, 1
  br i1 %i.ku, label %bb.cm, label %bb.co

bb.cm:                                            ; preds = %bb.cl
  %i.kv = getelementptr i8, ptr %.0.val1, i64 1
  %.val190 = load i8, ptr %i.kv, align 1, !tbaa !246
  %.not158 = icmp eq i8 %.val190, 1
  br i1 %.not158, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.kw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.kx = load ptr, ptr %i.kw, align 8, !tbaa !236 ; 2 uses
  store ptr @.str.47, ptr %i.kx, align 8, !tbaa !195
  %i.ky = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i394 = load ptr, ptr %i.ky, align 8, !tbaa !239
  %i.kz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !234
  %i.lb = ptrtoint ptr %.val.i394 to i64
  %i.lc = ptrtoint ptr %i.la to i64
  %i.ld = sub i64 %i.lb, %i.lc
  %i.le = getelementptr inbounds nuw i8, ptr %i.kx, i64 8
  store i64 %i.ld, ptr %i.le, align 8, !tbaa !196
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit

bb.co:                                            ; preds = %bb.cm, %bb.cl
  %4 = icmp eq i64 %1, 0
  %5 = select i1 %4, i32 27, i32 28
  %.val176.a = load ptr, ptr %0, align 8, !tbaa !232
  %i.lf = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_(ptr %.val176.a, i32 noundef %5, i32 noundef 3, ptr noundef %.0.val1, ptr noundef null)
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit

bb.cp:                                            ; preds = %.lr.ph.i.i396
  %i.lg = add nuw nsw i64 %.01013.i.i397, 1       ; 2 uses
  %exitcond.not.i.i400 = icmp eq i64 %i.lg, %i.iz
  br i1 %exitcond.not.i.i400, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit402, label %.lr.ph.i.i396, !llvm.loop !20

.lr.ph.i.i396:                                    ; preds = %.lr.ph.i.i396.preheader, %bb.cp
  %.01013.i.i397 = phi i64 [ %i.lg, %bb.cp ], [ 0, %.lr.ph.i.i396.preheader ] ; 3 uses
  %i.lh = getelementptr inbounds nuw i8, ptr @.str.59, i64 %.01013.i.i397
  %i.li = load i8, ptr %i.lh, align 1, !tbaa !86
  %i.lj = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.01013.i.i397
  %i.lk = load i8, ptr %i.lj, align 1, !tbaa !86
  %.not.i.i398 = icmp eq i8 %i.li, %i.lk
  br i1 %.not.i.i398, label %bb.cp, label %.lr.ph.i.i404.preheader

_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit402: ; preds = %bb.cp
  %i.ll = icmp eq i64 %i.iz, 15
  %or.cond27 = and i1 %i.ll, %i.kn
  br i1 %or.cond27, label %bb.cq, label %.lr.ph.i.i404.preheader

.lr.ph.i.i404.preheader:                          ; preds = %.lr.ph.i.i396, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit402
  br label %.lr.ph.i.i404

bb.cq:                                            ; preds = %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit402
  %i.lm = icmp eq i64 %1, 0
  %i.ln = select i1 %i.lm, i32 42, i32 43
  %.val175.a = load ptr, ptr %0, align 8, !tbaa !232
  %i.lo = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_(ptr %.val175.a, i32 noundef %i.ln, i32 noundef 3, ptr noundef %.0.val1, ptr noundef %.8.val3)
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit

bb.cr:                                            ; preds = %.lr.ph.i.i404
  %i.lp = add nuw nsw i64 %.01013.i.i405, 1       ; 2 uses
  %exitcond.not.i.i408 = icmp eq i64 %i.lp, %i.iz
  br i1 %exitcond.not.i.i408, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit410, label %.lr.ph.i.i404, !llvm.loop !20

.lr.ph.i.i404:                                    ; preds = %.lr.ph.i.i404.preheader, %bb.cr
  %.01013.i.i405 = phi i64 [ %i.lp, %bb.cr ], [ 0, %.lr.ph.i.i404.preheader ] ; 3 uses
  %i.lq = getelementptr inbounds nuw i8, ptr @.str.60, i64 %.01013.i.i405
  %i.lr = load i8, ptr %i.lq, align 1, !tbaa !86
  %i.ls = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.01013.i.i405
  %i.lt = load i8, ptr %i.ls, align 1, !tbaa !86
  %.not.i.i406 = icmp eq i8 %i.lr, %i.lt
  br i1 %.not.i.i406, label %bb.cr, label %.lr.ph.i.i412.preheader

_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit410: ; preds = %bb.cr
  %i.lu = icmp eq i64 %i.iz, 3
  %i.lv = icmp eq i64 %1, 1
  %or.cond29 = and i1 %i.lv, %i.lu
  br i1 %or.cond29, label %bb.cs, label %.lr.ph.i.i412.preheader

.lr.ph.i.i412.preheader:                          ; preds = %.lr.ph.i.i404, %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit410
  br label %.lr.ph.i.i412

bb.cs:                                            ; preds = %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit410
  %.val174.a = load ptr, ptr %0, align 8, !tbaa !232
  %i.lw = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_(ptr %.val174.a, i32 noundef 46, i32 noundef 4, ptr noundef %.0.val1, ptr noundef null)
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit

bb.ct:                                            ; preds = %.lr.ph.i.i412
  %i.lx = add nuw nsw i64 %.01013.i.i413, 1       ; 2 uses
  %exitcond.not.i.i416 = icmp eq i64 %i.lx, %i.iz
  br i1 %exitcond.not.i.i416, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit418, label %.lr.ph.i.i412, !llvm.loop !20

.lr.ph.i.i412:                                    ; preds = %.lr.ph.i.i412.preheader, %bb.ct
  %.01013.i.i413 = phi i64 [ %i.lx, %bb.ct ], [ 0, %.lr.ph.i.i412.preheader ] ; 3 uses
  %i.ly = getelementptr inbounds nuw i8, ptr @.str.61, i64 %.01013.i.i413
  %i.lz = load i8, ptr %i.ly, align 1, !tbaa !86
  %i.ma = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.01013.i.i413
  %i.mb = load i8, ptr %i.ma, align 1, !tbaa !86
  %.not.i.i414 = icmp eq i8 %i.lz, %i.mb
  br i1 %.not.i.i414, label %bb.ct, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit.thread

_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit418: ; preds = %bb.ct
  %i.mc = icmp eq i64 %i.iz, 6
  %or.cond31 = and i1 %i.mc, %i.kn
  br i1 %or.cond31, label %bb.cu, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit.thread

bb.cu:                                            ; preds = %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit418
  %i.md = icmp eq i64 %1, 0
  %i.me = select i1 %i.md, i32 50, i32 51
  %.val173.a = load ptr, ptr %0, align 8, !tbaa !232
  %i.mf = tail call fastcc noundef ptr @_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_(ptr %.val173.a, i32 noundef %i.me, i32 noundef 2, ptr noundef %.0.val1, ptr noundef null)
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit

bb.cv:                                            ; preds = %bb.a
  %i.mg = ptrtoint ptr %.8.val to i64
  %i.mh = ptrtoint ptr %.0.val to i64
  %i.mi = sub i64 %i.mg, %i.mh                    ; 2 uses
  %.not14.i.i419 = icmp eq ptr %.8.val, %.0.val
  br i1 %.not14.i.i419, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit.thread, label %.lr.ph.i.i420

bb.cw:                                            ; preds = %.lr.ph.i.i420
  %i.mj = add nuw nsw i64 %.01013.i.i421, 1       ; 2 uses
  %exitcond.not.i.i424 = icmp eq i64 %i.mj, %i.mi
  br i1 %exitcond.not.i.i424, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit426, label %.lr.ph.i.i420, !llvm.loop !20

.lr.ph.i.i420:                                    ; preds = %bb.cv, %bb.cw
  %.01013.i.i421 = phi i64 [ %i.mj, %bb.cw ], [ 0, %bb.cv ] ; 3 uses
  %i.mk = getelementptr inbounds nuw i8, ptr @.str.62, i64 %.01013.i.i421
  %i.ml = load i8, ptr %i.mk, align 1, !tbaa !86
  %i.mm = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.01013.i.i421
  %i.mn = load i8, ptr %i.mm, align 1, !tbaa !86
  %.not.i.i422 = icmp eq i8 %i.ml, %i.mn
  br i1 %.not.i.i422, label %bb.cw, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit.thread

_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit426: ; preds = %bb.cw
  %i.mo = icmp eq i64 %i.mi, 8
  %i.mp = icmp eq i64 %1, 0
  %or.cond33 = and i1 %i.mp, %i.mo
  br i1 %or.cond33, label %bb.cx, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit.thread

bb.cx:                                            ; preds = %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit426
  %.val172.a = load ptr, ptr %0, align 8, !tbaa !232 ; 5 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %.val172.a, i64 8 ; 3 uses
  %i.mr = load i64, ptr %i.mq, align 8, !tbaa !224 ; 2 uses
  %i.ms = add i64 %i.mr, 40                       ; 2 uses
  %i.mt = load ptr, ptr %.val172.a, align 8, !tbaa !223 ; 2 uses
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 8
  %i.mv = load i64, ptr %i.mu, align 8, !tbaa !250
  %.not.i.i.i427 = icmp ugt i64 %i.ms, %i.mv
  br i1 %.not.i.i.i427, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 %i.mr
  store i64 %i.ms, ptr %i.mq, align 8, !tbaa !224
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i428

bb.cz:                                            ; preds = %bb.cx
  %i.my = load ptr, ptr @_ZN4pugi4impl12_GLOBAL__N_138xml_memory_management_function_storageIiE8allocateE, align 8, !tbaa !106
  %i.mz = tail call noundef ptr %i.my(i64 noundef 4112), !inline_history !48 ; 5 uses
  %.not23.i.i.i430 = icmp eq ptr %i.mz, null
  br i1 %.not23.i.i.i430, label %bb.da, label %bb.dc

bb.da:                                            ; preds = %bb.cz
  %i.na = getelementptr inbounds nuw i8, ptr %.val172.a, i64 16
  %i.nb = load ptr, ptr %i.na, align 8, !tbaa !225 ; 2 uses
  %.not24.i.i.i431 = icmp eq ptr %i.nb, null
  br i1 %.not24.i.i.i431, label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  store i8 1, ptr %i.nb, align 1, !tbaa !251
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit

bb.dc:                                            ; preds = %bb.cz
  %i.nc = load ptr, ptr %.val172.a, align 8, !tbaa !223
  store ptr %i.nc, ptr %i.mz, align 8, !tbaa !240
  %i.nd = getelementptr inbounds nuw i8, ptr %i.mz, i64 8
  store i64 4096, ptr %i.nd, align 8, !tbaa !250
  store ptr %i.mz, ptr %.val172.a, align 8, !tbaa !223
  store i64 40, ptr %i.mq, align 8, !tbaa !224
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i428

_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeEv.exit.i428: ; preds = %bb.dc, %bb.cy
  %.1.i.i.i429 = phi ptr [ %i.mx, %bb.cy ], [ %i.ne, %bb.dc ] ; 3 uses
  store <4 x i8> <i8 22, i8 2, i8 0, i8 0>, ptr %.1.i.i.i429, align 8, !tbaa !86
  %i.nf = getelementptr inbounds nuw i8, ptr %.1.i.i.i429, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.nf, i8 0, i64 24, i1 false)
  br label %_ZN4pugi4impl12_GLOBAL__N_112xpath_parser10alloc_nodeENS1_10ast_type_tENS_16xpath_value_typeEPNS1_14xpath_ast_nodeES6_.exit

bb.dd:                                            ; preds = %bb.a
  %i.ng = ptrtoint ptr %.8.val to i64
  %i.nh = ptrtoint ptr %.0.val to i64
  %i.ni = sub i64 %i.ng, %i.nh                    ; 2 uses
  %.not14.i.i433 = icmp eq ptr %.8.val, %.0.val
  br i1 %.not14.i.i433, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit.thread, label %.lr.ph.i.i434

bb.de:                                            ; preds = %.lr.ph.i.i434
  %i.nj = add nuw nsw i64 %.01013.i.i435, 1       ; 2 uses
  %exitcond.not.i.i438 = icmp eq i64 %i.nj, %i.ni
  br i1 %exitcond.not.i.i438, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit440, label %.lr.ph.i.i434, !llvm.loop !20

.lr.ph.i.i434:                                    ; preds = %bb.dd, %bb.de
  %.01013.i.i435 = phi i64 [ %i.nj, %bb.de ], [ 0, %bb.dd ] ; 3 uses
  %i.nk = getelementptr inbounds nuw i8, ptr @.str.63, i64 %.01013.i.i435
  %i.nl = load i8, ptr %i.nk, align 1, !tbaa !86
  %i.nm = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.01013.i.i435
  %i.nn = load i8, ptr %i.nm, align 1, !tbaa !86
  %.not.i.i436 = icmp eq i8 %i.nl, %i.nn
  br i1 %.not.i.i436, label %bb.de, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit.thread

_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit440: ; preds = %bb.de
  %i.no = icmp eq i64 %i.ni, 5
  %i.np = icmp eq i64 %1, 1
  %or.cond35 = and i1 %i.np, %i.no
  br i1 %or.cond35, label %bb.df, label %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit.thread

bb.df:                                            ; preds = %_ZNK4pugi4impl12_GLOBAL__N_118xpath_lexer_stringeqEPKc.exit440
  %.val171.a = load ptr, ptr %0, align 8, !tbaa !232 ; 5 uses
  %i.nq = getelementptr inbounds nuw i8, ptr %.val171.a, i64 8 ; 3 uses
  %i.nr = load i64, ptr %i.nq, align 8, !tbaa !224 ; 2 uses
  %i.ns = add i64 %i.nr, 40                       ; 2 uses
  %i.nt = load ptr, ptr %.val171.a, align 8, !tbaa !223 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 8
  %i.nv = load i64, ptr %i.nu, align 8, !tbaa !250
  %.not.i.i.i441 = icmp ugt i64 %i.ns, %i.nv
  br i1 %.not.i.i.i441, label %bb.dh, label %bb.dg

end_hunk_0
