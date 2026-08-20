inline.NumInlined: 2622
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@parse_parameters:bb.a
  %.not57.i.i315 = icmp eq i32 %i.hv, 0
  br i1 %.not57.i.i315, label %pm_locals_find.exit.thread.i310, label %.lr.ph.i.i316

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
  %.0.i.i308 = phi i32 [ %i.ii, %bb.az ], [ %i.ir, %bb.bc ] ; 2 uses
  %i.il = and i32 %.0.i.i308, %i.ia               ; 2 uses
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr [40 x i8], ptr %i.ik, i64 %i.im
  %i.io = load i32, ptr %i.in, align 8, !tbaa !156 ; 2 uses
  %i.ip = icmp eq i32 %i.io, 0
  br i1 %i.ip, label %pm_locals_find.exit.thread.i310, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.iq = icmp eq i32 %i.io, %i.ex
  br i1 %i.iq, label %pm_locals_find.exit.i311, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.ir = add i32 %.0.i.i308, 1                   ; 2 uses
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
  br i1 %.not242, label %.split, label %bb.bd

bb.bd:                                            ; preds = %pm_locals_reads.exit323
  %i.ja = trunc i64 %i.er to i32
  %i.jb = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.r, ptr noundef %.val271, ptr noundef %.val272, i32 noundef 207, i32 noundef %i.ja, ptr noundef %.val271) #27 ; 0 uses
  br label %.split

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
  %.sroa.5.0..sroa_idx.i327 = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store ptr %.val272, ptr %.sroa.5.0..sroa_idx.i327, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i328 = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  store i32 %i.jk, ptr %.sroa.6.0..sroa_idx.i328, align 8, !tbaa !7
  br i1 %i.eo, label %.split.thread.sink.split, label %.split.thread

bb.bh:                                            ; preds = %bb.be
  br i1 %i.jf, label %bb.bi, label %pm_required_parameter_node_create.exit337

bb.bi:                                            ; preds = %bb.bh
  %i.jl = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.jm = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.jl, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_required_parameter_node_create.exit337:        ; preds = %bb.bh
  %i.jn = load i32, ptr %0, align 8, !tbaa !109
  %i.jo = add i32 %i.jn, 1                        ; 2 uses
  store i32 %i.jo, ptr %0, align 8, !tbaa !109
  %i.jp = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %.val271, i64 noundef %i.er) #27
  store i16 127, ptr %i.je, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i333 = getelementptr inbounds nuw i8, ptr %i.je, i64 4
  store i32 %i.jo, ptr %.sroa.3.0..sroa_idx.i333, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i334 = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store ptr %.val271, ptr %.sroa.4.0..sroa_idx.i334, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i335 = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store ptr %.val272, ptr %.sroa.5.0..sroa_idx.i335, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i336 = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  store i32 %i.jp, ptr %.sroa.6.0..sroa_idx.i336, align 8, !tbaa !7
  br i1 %i.eo, label %.split.thread.sink.split, label %.split.thread

.split.thread.sink.split:                         ; preds = %pm_required_parameter_node_create.exit337, %pm_required_parameter_node_create.exit
  %.sink643.ph = phi ptr [ %i.ai, %pm_required_parameter_node_create.exit ], [ %i.v, %pm_required_parameter_node_create.exit337 ]
  %i.jq = getelementptr i8, ptr %i.je, i64 2      ; 2 uses
  %i.jr = load i16, ptr %i.jq, align 2, !tbaa !116
  %i.js = or i16 %i.jr, 4
  store i16 %i.js, ptr %i.jq, align 2, !tbaa !116
  br label %.split.thread

.split.thread:                                    ; preds = %.split.thread.sink.split, %pm_required_parameter_node_create.exit337, %pm_required_parameter_node_create.exit
  %.sink643 = phi ptr [ %i.ai, %pm_required_parameter_node_create.exit ], [ %i.v, %pm_required_parameter_node_create.exit337 ], [ %.sink643.ph, %.split.thread.sink.split ]
  %i.jt = load ptr, ptr %i.t, align 8, !tbaa !524 ; 3 uses
  %i.ju = icmp eq ptr %i.jt, null
  %i.jv = icmp uge ptr %i.jt, %.val271
  %i.jw = or i1 %i.ju, %i.jv
  %storemerge.i.i339 = select i1 %i.jw, ptr %.val271, ptr %i.jt
  store ptr %storemerge.i.i339, ptr %i.t, align 8, !tbaa !524
  %i.jx = load ptr, ptr %i.u, align 8, !tbaa !525 ; 2 uses
  %.not543 = icmp ugt ptr %i.jx, %.val272
  %storemerge19.i.i340 = select i1 %.not543, ptr %i.jx, ptr %.val272
  store ptr %storemerge19.i.i340, ptr %i.u, align 8, !tbaa !525
  tail call void @pm_node_list_append(ptr noundef %.sink643, ptr noundef nonnull %i.je) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %.critedge

.split:                                           ; preds = %bb.av, %pm_locals_reads.exit323, %bb.bd
  %i.jy = load ptr, ptr %i.y, align 8, !tbaa !253 ; 2 uses
  %i.jz = getelementptr i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !257
  tail call void @free(ptr noundef %i.jy) #27
  store ptr %i.ka, ptr %i.y, align 8, !tbaa !253
  %i.kb = load i8, ptr %i.af, align 1, !tbaa !254, !range !45, !noundef !46
  %i.kc = trunc nuw i8 %i.kb to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br i1 %i.kc, label %.critedge245.thread, label %.critedge

bb.bj:                                            ; preds = %.critedge245
  br i1 %or.cond, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store i8 1, ptr %i.x, align 1, !tbaa !197
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.kd = call fastcc zeroext i1 @update_parameter_state(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef %i.a) ; 0 uses
  %i.ke = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not542 = icmp eq ptr %i.ke, null
  br i1 %.not542, label %context_push.exit343, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store i32 23, ptr %i.ke, align 8, !tbaa !7
  %.sroa.2.0..sroa_idx.i341 = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i341, align 4
  %.sroa.3.0..sroa_idx.i342 = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kf = load ptr, ptr %i.y, align 8, !tbaa !253
  store ptr %i.kf, ptr %.sroa.3.0..sroa_idx.i342, align 8
  store ptr %i.ke, ptr %i.y, align 8, !tbaa !253
  br label %context_push.exit343

context_push.exit343:                             ; preds = %bb.bl, %bb.bm
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.0505.0.copyload = load i64, ptr %i.l, align 8
  %i.kg = load <2 x ptr>, ptr %i.p, align 8, !tbaa !14 ; 9 uses
  %i.kh = extractelement <2 x ptr> %i.kg, i64 0   ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  store i64 %.sroa.0505.0.copyload, ptr %11, align 8
  store ptr %i.kh, ptr %.sroa.4507.0..sroa_idx508, align 8, !tbaa !14
  %i.ki = extractelement <2 x ptr> %i.kg, i64 1   ; 5 uses
  %i.kj = getelementptr i8, ptr %i.ki, i64 -1     ; 9 uses
  store ptr %i.kj, ptr %.sroa.11.0..sroa_idx515, align 8, !tbaa !128
  %i.kk = load i8, ptr %i.z, align 1, !tbaa !43, !range !45, !noundef !46
  %i.kl = trunc nuw i8 %i.kk to i1
  br i1 %i.kl, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %context_push.exit343
  %i.km = load ptr, ptr %i.aa, align 8, !tbaa !40
  %i.kn = getelementptr i8, ptr %i.km, i64 24
  %i.ko = load ptr, ptr %i.kn, align 8, !tbaa !152
  %i.kp = ptrtoint ptr %i.kj to i64
  %i.kq = ptrtoint ptr %i.kh to i64
  %i.kr = sub i64 %i.kp, %i.kq
  %i.ks = tail call zeroext i1 %i.ko(ptr noundef %i.kh, i64 noundef %i.kr) #27
  br i1 %i.ks, label %bb.bp, label %bb.bq

bb.bo:                                            ; preds = %context_push.exit343
  %i.kt = ptrtoint ptr %i.kj to i64
  %i.ku = ptrtoint ptr %i.kh to i64
  %i.kv = sub i64 %i.kt, %i.ku
  %i.kw = tail call zeroext i1 @pm_encoding_utf_8_isupper_char(ptr noundef %i.kh, i64 noundef %i.kv) #27
  br i1 %i.kw, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.kx = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.r, ptr noundef %i.kh, ptr noundef %i.kj, i32 noundef 12) #27 ; 0 uses
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo, %bb.bn
  %i.ky = getelementptr i8, ptr %i.ki, i64 -2
  %i.kz = load i8, ptr %i.ky, align 1, !tbaa !67
  switch i8 %i.kz, label %bb.bs [
    i8 33, label %bb.br
    i8 63, label %bb.br
  ]

bb.br:                                            ; preds = %bb.bq, %bb.bq
  %i.la = ptrtoint ptr %i.kj to i64
  %i.lb = ptrtoint ptr %i.kh to i64
  %i.lc = sub i64 %i.la, %i.lb
  %i.ld = trunc i64 %i.lc to i32
  %i.le = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.r, ptr noundef %i.kh, ptr noundef %i.kj, i32 noundef 152, i32 noundef %i.ld, ptr noundef %i.kh) #27 ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br, %bb.bp
  %i.lf = call fastcc zeroext i1 @pm_parser_parameter_name_check(ptr noundef nonnull %0, ptr noundef nonnull %11) ; 3 uses
  %i.lg = ptrtoint ptr %i.kj to i64
  %i.lh = ptrtoint ptr %i.kh to i64
  %i.li = sub i64 %i.lg, %i.lh                    ; 7 uses
  %i.lj = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %i.kh, i64 noundef %i.li) #27 ; 2 uses
  %.not.i.i344 = icmp eq i32 %i.lj, 0
  br i1 %.not.i.i344, label %pm_parser_local_add_token.exit346, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.val.i.i345 = load ptr, ptr %i.n, align 8, !tbaa !59
  tail call fastcc void @pm_parser_local_add(ptr %.val.i.i345, i32 noundef %i.lj, ptr noundef %i.kh, ptr noundef %i.kj, i32 noundef 1)
  br label %pm_parser_local_add_token.exit346

pm_parser_local_add_token.exit346:                ; preds = %bb.bs, %bb.bt
  %i.lk = load i32, ptr %i.k, align 8, !tbaa !170 ; 2 uses
  switch i32 %i.lk, label %bb.bz [
    i32 3, label %bb.bu
    i32 15, label %bb.bu
    i32 16, label %bb.bu
    i32 17, label %bb.bw
    i32 14, label %bb.bw
  ]

bb.bu:                                            ; preds = %pm_parser_local_add_token.exit346, %pm_parser_local_add_token.exit346, %pm_parser_local_add_token.exit346
  %i.ll = load ptr, ptr %i.y, align 8, !tbaa !253 ; 2 uses
  %i.lm = getelementptr i8, ptr %i.ll, i64 8
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !257
  tail call void @free(ptr noundef %i.ll) #27
  store ptr %i.ln, ptr %i.y, align 8, !tbaa !253
  %i.lo = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 8 uses
  %i.lp = icmp eq ptr %i.lo, null
  br i1 %i.lp, label %bb.bv, label %pm_required_keyword_parameter_node_create.exit

bb.bv:                                            ; preds = %bb.bu
  %i.lq = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.lr = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.lq, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_required_keyword_parameter_node_create.exit:   ; preds = %bb.bu
  %i.ls = load i32, ptr %0, align 8, !tbaa !109
  %i.lt = add i32 %i.ls, 1                        ; 2 uses
  store i32 %i.lt, ptr %0, align 8, !tbaa !109
  %i.lu = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %i.kh, i64 noundef %i.li) #27
  store i16 126, ptr %i.lo, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i348 = getelementptr inbounds nuw i8, ptr %i.lo, i64 4
  store i32 %i.lt, ptr %.sroa.3.0..sroa_idx.i348, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i349 = getelementptr inbounds nuw i8, ptr %i.lo, i64 8
  store <2 x ptr> %i.kg, ptr %.sroa.4.0..sroa_idx.i349, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i351 = getelementptr inbounds nuw i8, ptr %i.lo, i64 24
  store i32 %i.lu, ptr %.sroa.6.0..sroa_idx.i351, align 8, !tbaa !7
  %.sroa.8.0..sroa_idx.i352 = getelementptr inbounds nuw i8, ptr %i.lo, i64 32
  store <2 x ptr> %i.kg, ptr %.sroa.8.0..sroa_idx.i352, align 8, !tbaa !14
  br i1 %i.lf, label %.thread.sink.split, label %.thread

bb.bw:                                            ; preds = %pm_parser_local_add_token.exit346, %pm_parser_local_add_token.exit346
  %i.lv = load ptr, ptr %i.y, align 8, !tbaa !253 ; 2 uses
  %i.lw = getelementptr i8, ptr %i.lv, i64 8
  %i.lx = load ptr, ptr %i.lw, align 8, !tbaa !257
  tail call void @free(ptr noundef %i.lv) #27
  store ptr %i.lx, ptr %i.y, align 8, !tbaa !253
  br i1 %2, label %.thread534, label %bb.bx

.thread534:                                       ; preds = %bb.bw
  store i8 0, ptr %i.x, align 1, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %.critedge245.thread

bb.bx:                                            ; preds = %bb.bw
  %i.ly = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 8 uses
  %i.lz = icmp eq ptr %i.ly, null
  br i1 %i.lz, label %bb.by, label %pm_required_keyword_parameter_node_create.exit364

bb.by:                                            ; preds = %bb.bx
  %i.ma = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.mb = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ma, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_required_keyword_parameter_node_create.exit364: ; preds = %bb.bx
  %i.mc = load i32, ptr %0, align 8, !tbaa !109
  %i.md = add i32 %i.mc, 1                        ; 2 uses
  store i32 %i.md, ptr %0, align 8, !tbaa !109
  %i.me = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %i.kh, i64 noundef %i.li) #27
  store i16 126, ptr %i.ly, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i358 = getelementptr inbounds nuw i8, ptr %i.ly, i64 4
  store i32 %i.md, ptr %.sroa.3.0..sroa_idx.i358, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i359 = getelementptr inbounds nuw i8, ptr %i.ly, i64 8
  store <2 x ptr> %i.kg, ptr %.sroa.4.0..sroa_idx.i359, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i361 = getelementptr inbounds nuw i8, ptr %i.ly, i64 24
  store i32 %i.me, ptr %.sroa.6.0..sroa_idx.i361, align 8, !tbaa !7
  %.sroa.8.0..sroa_idx.i362 = getelementptr inbounds nuw i8, ptr %i.ly, i64 32
  store <2 x ptr> %i.kg, ptr %.sroa.8.0..sroa_idx.i362, align 8, !tbaa !14
  br i1 %i.lf, label %.thread.sink.split, label %.thread

bb.bz:                                            ; preds = %pm_parser_local_add_token.exit346
  %i.mf = tail call fastcc zeroext i1 @token_begins_expression_p(i32 noundef %i.lk)
  br i1 %i.mf, label %bb.ca, label %bb.cy

bb.ca:                                            ; preds = %bb.bz
  %i.mg = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %i.kh, i64 noundef %i.li) #27 ; 8 uses
  %i.mh = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.mi = icmp ult i32 %i.mh, 2
  br i1 %i.mi, label %bb.cb, label %bb.ci

bb.cb:                                            ; preds = %bb.ca
  %i.mj = load ptr, ptr %i.n, align 8, !tbaa !59  ; 4 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 12
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !93 ; 2 uses
  %i.mm = icmp ult i32 %i.ml, 9
  br i1 %i.mm, label %.preheader.i.i374, label %bb.ce

.preheader.i.i374:                                ; preds = %bb.cb
  %i.mn = getelementptr i8, ptr %i.mj, i64 8
  %i.mo = load i32, ptr %i.mn, align 8, !tbaa !155 ; 2 uses
  %.not57.i.i375 = icmp eq i32 %i.mo, 0
  br i1 %.not57.i.i375, label %pm_locals_find.exit.thread.i370, label %.lr.ph.i.i376

.lr.ph.i.i376:                                    ; preds = %.preheader.i.i374
  %i.mp = getelementptr i8, ptr %i.mj, i64 16
  %i.mq = load ptr, ptr %i.mp, align 8, !tbaa !94 ; 2 uses
  %wide.trip.count.i.i377 = zext i32 %i.mo to i64
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cd, %.lr.ph.i.i376
  %indvars.iv.i.i378 = phi i64 [ 0, %.lr.ph.i.i376 ], [ %indvars.iv.next.i.i380, %bb.cd ] ; 3 uses
  %i.mr = getelementptr [40 x i8], ptr %i.mq, i64 %indvars.iv.i.i378
  %i.ms = load i32, ptr %i.mr, align 8, !tbaa !156
  %.not39.i.i379 = icmp eq i32 %i.ms, %i.mg
  br i1 %.not39.i.i379, label %.thread.loopexit.split.loop.exit66.i.i382, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %indvars.iv.next.i.i380 = add nuw nsw i64 %indvars.iv.i.i378, 1 ; 2 uses
  %exitcond.not.i.i381 = icmp eq i64 %indvars.iv.next.i.i380, %wide.trip.count.i.i377
  br i1 %exitcond.not.i.i381, label %pm_locals_find.exit.thread.i370, label %bb.cc, !llvm.loop !233

bb.ce:                                            ; preds = %bb.cb
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
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ch, %bb.ce
  %.0.i.i368 = phi i32 [ %i.nb, %bb.ce ], [ %i.nk, %bb.ch ] ; 2 uses
  %i.ne = and i32 %.0.i.i368, %i.mt               ; 2 uses
  %i.nf = zext i32 %i.ne to i64
  %i.ng = getelementptr [40 x i8], ptr %i.nd, i64 %i.nf
  %i.nh = load i32, ptr %i.ng, align 8, !tbaa !156 ; 2 uses
  %i.ni = icmp eq i32 %i.nh, 0
  br i1 %i.ni, label %pm_locals_find.exit.thread.i370, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.nj = icmp eq i32 %i.nh, %i.mg
  br i1 %i.nj, label %pm_locals_find.exit.i371, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nk = add i32 %.0.i.i368, 1                   ; 2 uses
  %i.nl = xor i32 %i.nk, %i.nb
  %i.nm = and i32 %i.nl, %i.mt
  %.not.i.i369 = icmp eq i32 %i.nm, 0
  br i1 %.not.i.i369, label %pm_locals_find.exit.thread.i370, label %bb.cf, !llvm.loop !234

.thread.loopexit.split.loop.exit66.i.i382:        ; preds = %bb.cc
  %i.nn = trunc nuw i64 %indvars.iv.i.i378 to i32
  br label %pm_locals_find.exit.i371

pm_locals_find.exit.i371:                         ; preds = %bb.cg, %.thread.loopexit.split.loop.exit66.i.i382
  %i.no = phi ptr [ %i.mq, %.thread.loopexit.split.loop.exit66.i.i382 ], [ %i.nd, %bb.cg ]
  %.5.i.i372 = phi i32 [ %i.nn, %.thread.loopexit.split.loop.exit66.i.i382 ], [ %i.ne, %bb.cg ] ; 2 uses
  %.not.i373 = icmp eq i32 %.5.i.i372, -1
  br i1 %.not.i373, label %pm_locals_find.exit.thread.i370, label %pm_locals_reads.exit383

pm_locals_find.exit.thread.i370:                  ; preds = %pm_locals_find.exit.i371, %.preheader.i.i374, %bb.ch, %bb.cf, %bb.cd
  tail call void @__assert_fail(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.2, i32 noundef 950, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_locals_reads) #26
  unreachable

pm_locals_reads.exit383:                          ; preds = %pm_locals_find.exit.i371
  %i.np = zext i32 %.5.i.i372 to i64
  %i.nq = getelementptr [40 x i8], ptr %i.no, i64 %i.np
  %i.nr = getelementptr i8, ptr %i.nq, i64 28
  %i.ns = load i32, ptr %i.nr, align 4, !tbaa !265
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ca, %pm_locals_reads.exit383
  %i.nt = phi i32 [ %i.ns, %pm_locals_reads.exit383 ], [ 0, %bb.ca ]
  br i1 %5, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.nu = load i32, ptr %i.ad, align 8, !tbaa !7
  %i.nv = shl i32 %i.nu, 1
  store i32 %i.nv, ptr %i.ad, align 8, !tbaa !7
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.nw = tail call fastcc ptr @parse_expression(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 212, i16 noundef zeroext %i.ae), !inline_history !297 ; 3 uses
  %i.nx = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef readonly %i.nw) ; 3 uses
  %.not.i495 = icmp eq ptr %i.nx, null
  br i1 %.not.i495, label %pm_assert_value_expression.exit498, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.ny = getelementptr i8, ptr %i.nx, i64 8
  %.val.i496 = load ptr, ptr %i.ny, align 8, !tbaa !133
  %i.nz = getelementptr i8, ptr %i.nx, i64 16
  %.val5.i497 = load ptr, ptr %i.nz, align 8, !tbaa !134
  %i.oa = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.r, ptr noundef %.val.i496, ptr noundef %.val5.i497, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit498

pm_assert_value_expression.exit498:               ; preds = %bb.ck, %bb.cl
  br i1 %5, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %pm_assert_value_expression.exit498
  %i.ob = load i32, ptr %i.ad, align 8, !tbaa !7
  %i.oc = lshr i32 %i.ob, 1
  store i32 %i.oc, ptr %i.ad, align 8, !tbaa !7
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %pm_assert_value_expression.exit498
  %i.od = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.oe = icmp ult i32 %i.od, 2
  br i1 %i.oe, label %bb.co, label %bb.cw

bb.co:                                            ; preds = %bb.cn
  %i.of = load ptr, ptr %i.n, align 8, !tbaa !59  ; 4 uses
  %i.og = getelementptr i8, ptr %i.of, i64 12
  %i.oh = load i32, ptr %i.og, align 4, !tbaa !93 ; 2 uses
  %i.oi = icmp ult i32 %i.oh, 9
  br i1 %i.oi, label %.preheader.i.i390, label %bb.cr

.preheader.i.i390:                                ; preds = %bb.co
  %i.oj = getelementptr i8, ptr %i.of, i64 8
  %i.ok = load i32, ptr %i.oj, align 8, !tbaa !155 ; 2 uses
  %.not57.i.i391 = icmp eq i32 %i.ok, 0
  br i1 %.not57.i.i391, label %pm_locals_find.exit.thread.i386, label %.lr.ph.i.i392

.lr.ph.i.i392:                                    ; preds = %.preheader.i.i390
  %i.ol = getelementptr i8, ptr %i.of, i64 16
  %i.om = load ptr, ptr %i.ol, align 8, !tbaa !94 ; 2 uses
  %wide.trip.count.i.i393 = zext i32 %i.ok to i64
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cq, %.lr.ph.i.i392
  %indvars.iv.i.i394 = phi i64 [ 0, %.lr.ph.i.i392 ], [ %indvars.iv.next.i.i396, %bb.cq ] ; 3 uses
  %i.on = getelementptr [40 x i8], ptr %i.om, i64 %indvars.iv.i.i394
  %i.oo = load i32, ptr %i.on, align 8, !tbaa !156
  %.not39.i.i395 = icmp eq i32 %i.oo, %i.mg
  br i1 %.not39.i.i395, label %.thread.loopexit.split.loop.exit66.i.i398, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %indvars.iv.next.i.i396 = add nuw nsw i64 %indvars.iv.i.i394, 1 ; 2 uses
  %exitcond.not.i.i397 = icmp eq i64 %indvars.iv.next.i.i396, %wide.trip.count.i.i393
  br i1 %exitcond.not.i.i397, label %pm_locals_find.exit.thread.i386, label %bb.cp, !llvm.loop !233

bb.cr:                                            ; preds = %bb.co
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
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cu, %bb.cr
  %.0.i.i384 = phi i32 [ %i.ox, %bb.cr ], [ %i.pg, %bb.cu ] ; 2 uses
  %i.pa = and i32 %.0.i.i384, %i.op               ; 2 uses
  %i.pb = zext i32 %i.pa to i64
  %i.pc = getelementptr [40 x i8], ptr %i.oz, i64 %i.pb
  %i.pd = load i32, ptr %i.pc, align 8, !tbaa !156 ; 2 uses
  %i.pe = icmp eq i32 %i.pd, 0
  br i1 %i.pe, label %pm_locals_find.exit.thread.i386, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.pf = icmp eq i32 %i.pd, %i.mg
  br i1 %i.pf, label %pm_locals_find.exit.i387, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.pg = add i32 %.0.i.i384, 1                   ; 2 uses
  %i.ph = xor i32 %i.pg, %i.ox
  %i.pi = and i32 %i.ph, %i.op
  %.not.i.i385 = icmp eq i32 %i.pi, 0
  br i1 %.not.i.i385, label %pm_locals_find.exit.thread.i386, label %bb.cs, !llvm.loop !234
end_hunk_0
