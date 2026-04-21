inline.NumInlined: 2622
inline.NumDeleted: 264
begin_hunk_0_@parse_parameters:bb.a
  %.sroa.7.0.in19.i454 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.9.0.in21.i473 = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 328        ; 10 uses
  %i.q = getelementptr i8, ptr %0, i64 336        ; 9 uses
  %i.r = getelementptr i8, ptr %0, i64 472        ; 16 uses
  %i.s = getelementptr i8, ptr %i.e, i64 128      ; 4 uses
  %i.t = getelementptr i8, ptr %i.e, i64 8        ; 31 uses
  %i.u = getelementptr i8, ptr %i.e, i64 16       ; 13 uses
  %i.v = getelementptr i8, ptr %i.e, i64 80       ; 8 uses
  %.sroa.4500.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 4
  %.sroa.5501.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@parse_parameters:bb.a

pm_block_parameter_node_create.exit:              ; preds = %pm_node_alloc.exit.i, %bb.l
  %i.bw = phi i32 [ %i.bv, %bb.l ], [ 0, %pm_node_alloc.exit.i ]
  %i.bx = phi ptr [ %.sroa.9.0.i, %bb.l ], [ %.sroa.6532.0.copyload, %pm_node_alloc.exit.i ] ; 4 uses
  %.sroa.13.0.i = phi ptr [ %.val.i.i283, %bb.l ], [ null, %pm_node_alloc.exit.i ]
  %.sroa.15.0.i = phi ptr [ %.sroa.9.0.i, %bb.l ], [ null, %pm_node_alloc.exit.i ]
  store i16 15, ptr %i.bk, align 8, !tbaa !110
end_hunk_1
begin_hunk_2_@parse_parameters:bb.a
  br i1 %i.cc, label %pm_parameters_node_block_set.exit, label %bb.n

pm_parameters_node_block_set.exit:                ; preds = %bb.m
  %15 = load ptr, ptr %i.t, align 8, !tbaa !523   ; 3 uses
  %16 = icmp eq ptr %15, null
  %17 = icmp uge ptr %15, %.sroa.4531.0.copyload
  %18 = select i1 %16, i1 true, i1 %17
  %storemerge.i.i284 = select i1 %18, ptr %.sroa.4531.0.copyload, ptr %15
  store ptr %storemerge.i.i284, ptr %i.t, align 8, !tbaa !523
  %19 = load ptr, ptr %i.u, align 8, !tbaa !524   ; 3 uses
  %20 = icmp eq ptr %19, null
  %21 = icmp ule ptr %19, %i.bx
  %22 = select i1 %20, i1 true, i1 %21
  %storemerge19.i.i285 = select i1 %22, ptr %i.bx, ptr %19
  store ptr %storemerge19.i.i285, ptr %i.u, align 8, !tbaa !524
  store ptr %i.bk, ptr %i.ak, align 8, !tbaa !520
  br label %bb.o

end_hunk_2
begin_hunk_3_@parse_parameters:bb.a
  store i32 %i.db, ptr %.sroa.3.0..sroa_idx.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 2 uses
  store <2 x ptr> %i.dc, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !14
  %i.dd = load ptr, ptr %i.s, align 8, !tbaa !525 ; 3 uses
  %.not243 = icmp eq ptr %i.dd, null
  br i1 %.not243, label %pm_parameters_node_keyword_rest_set.exit, label %bb.v

end_hunk_3
begin_hunk_4_@parse_parameters:bb.a
  %i.dx = select <2 x i1> %i.dt, <2 x i1> splat (i1 true), <2 x i1> %i.dw
  %i.dy = select <2 x i1> %i.dx, <2 x ptr> %i.dr, <2 x ptr> %i.ds
  store <2 x ptr> %i.dy, ptr %i.t, align 8, !tbaa !14
  store ptr %i.cw, ptr %i.s, align 8, !tbaa !525
  br label %.critedge

bb.y:                                             ; preds = %.critedge245, %.critedge245, %.critedge245, %.critedge245, %.critedge245, %.critedge245
end_hunk_4
begin_hunk_5_@parse_parameters:bb.a
  br label %bb.av

bb.av:                                            ; preds = %pm_node_flag_set_repeated_parameter.exit305, %pm_optional_parameter_node_create.exit
  %i.gy = load ptr, ptr %i.t, align 8, !tbaa !523 ; 3 uses
  %i.gz = icmp eq ptr %i.gy, null
  %i.ha = icmp uge ptr %i.gy, %.val271
  %i.hb = or i1 %i.gz, %i.ha
  %storemerge.i.i306 = select i1 %i.hb, ptr %.val271, ptr %i.gy
  store ptr %storemerge.i.i306, ptr %i.t, align 8, !tbaa !523
  %i.hc = load ptr, ptr %i.u, align 8, !tbaa !524 ; 3 uses
  %i.hd = icmp eq ptr %i.hc, null
  %i.he = icmp ule ptr %i.hc, %i.gt
  %i.hf = select i1 %i.hd, i1 true, i1 %i.he
  %storemerge19.i.i307 = select i1 %i.hf, ptr %i.gt, ptr %i.hc
  store ptr %storemerge19.i.i307, ptr %i.u, align 8, !tbaa !524
  tail call void @pm_node_list_append(ptr noundef %i.aj, ptr noundef nonnull %i.gm) #28
  %i.hg = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.hh = icmp ult i32 %i.hg, 2
end_hunk_5
begin_hunk_6_@parse_parameters:bb.a

.thread542:                                       ; preds = %.thread542.sink.split, %pm_required_parameter_node_create.exit337, %pm_required_parameter_node_create.exit
  %.sink645 = phi ptr [ %i.ai, %pm_required_parameter_node_create.exit ], [ %i.v, %pm_required_parameter_node_create.exit337 ], [ %.sink645.ph, %.thread542.sink.split ]
  %i.jl = load ptr, ptr %i.t, align 8, !tbaa !523 ; 3 uses
  %i.jm = icmp eq ptr %i.jl, null
  %i.jn = icmp uge ptr %i.jl, %.val271
  %i.jo = or i1 %i.jm, %i.jn
  %storemerge.i.i339 = select i1 %i.jo, ptr %.val271, ptr %i.jl
  store ptr %storemerge.i.i339, ptr %i.t, align 8, !tbaa !523
  %i.jp = load ptr, ptr %i.u, align 8, !tbaa !524 ; 2 uses
  %.not545 = icmp ugt ptr %i.jp, %.val272
  %storemerge19.i.i340 = select i1 %.not545, ptr %i.jp, ptr %.val272
  store ptr %storemerge19.i.i340, ptr %i.u, align 8, !tbaa !524
  tail call void @pm_node_list_append(ptr noundef %.sink645, ptr noundef nonnull %i.iw) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.critedge
end_hunk_6
begin_hunk_7_@parse_parameters:bb.a
context_push.exit343:                             ; preds = %bb.bm, %bb.bn
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.0505.0.copyload = load i64, ptr %i.l, align 8
  %.sroa.4507.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !14 ; 29 uses
  %.sroa.11.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !14 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  store i64 %.sroa.0505.0.copyload, ptr %11, align 8
  store ptr %.sroa.4507.0.copyload, ptr %.sroa.4507.0..sroa_idx508, align 8, !tbaa !14
  %i.jy = getelementptr i8, ptr %.sroa.11.0.copyload, i64 -1 ; 9 uses
  store ptr %i.jy, ptr %.sroa.11.0..sroa_idx515, align 8, !tbaa !128
  %i.jz = load i8, ptr %i.z, align 1, !tbaa !43, !range !45, !noundef !46
  %i.ka = trunc nuw i8 %i.jz to i1
end_hunk_7
begin_hunk_8_@parse_parameters:bb.a
  %i.kc = getelementptr i8, ptr %i.kb, i64 24
  %i.kd = load ptr, ptr %i.kc, align 8, !tbaa !152
  %i.ke = ptrtoint ptr %i.jy to i64
  %i.kf = ptrtoint ptr %.sroa.4507.0.copyload to i64
  %i.kg = sub i64 %i.ke, %i.kf
  %i.kh = tail call zeroext i1 %i.kd(ptr noundef %.sroa.4507.0.copyload, i64 noundef %i.kg) #28
  br i1 %i.kh, label %bb.bq, label %bb.br

bb.bp:                                            ; preds = %context_push.exit343
  %i.ki = ptrtoint ptr %i.jy to i64
  %i.kj = ptrtoint ptr %.sroa.4507.0.copyload to i64
  %i.kk = sub i64 %i.ki, %i.kj
  %i.kl = tail call zeroext i1 @pm_encoding_utf_8_isupper_char(ptr noundef %.sroa.4507.0.copyload, i64 noundef %i.kk) #28
  br i1 %i.kl, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.km = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.r, ptr noundef %.sroa.4507.0.copyload, ptr noundef %i.jy, i32 noundef 12) #28 ; 0 uses
  br label %bb.bt

bb.br:                                            ; preds = %bb.bp, %bb.bo
  %i.kn = getelementptr i8, ptr %.sroa.11.0.copyload, i64 -2
  %i.ko = load i8, ptr %i.kn, align 1, !tbaa !67
  switch i8 %i.ko, label %bb.bt [
    i8 33, label %bb.bs
end_hunk_8
begin_hunk_9_@parse_parameters:bb.a

bb.bs:                                            ; preds = %bb.br, %bb.br
  %i.kp = ptrtoint ptr %i.jy to i64
  %i.kq = ptrtoint ptr %.sroa.4507.0.copyload to i64
  %i.kr = sub i64 %i.kp, %i.kq
  %i.ks = trunc i64 %i.kr to i32
  %i.kt = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.r, ptr noundef %.sroa.4507.0.copyload, ptr noundef %i.jy, i32 noundef 152, i32 noundef %i.ks, ptr noundef %.sroa.4507.0.copyload) #28 ; 0 uses
  br label %bb.bt

bb.bt:                                            ; preds = %bb.br, %bb.bs, %bb.bq
  %i.ku = call fastcc zeroext i1 @pm_parser_parameter_name_check(ptr noundef nonnull %0, ptr noundef nonnull %11) ; 3 uses
  %i.kv = ptrtoint ptr %i.jy to i64
  %i.kw = ptrtoint ptr %.sroa.4507.0.copyload to i64
  %i.kx = sub i64 %i.kv, %i.kw                    ; 7 uses
  %i.ky = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %.sroa.4507.0.copyload, i64 noundef %i.kx) #28 ; 2 uses
  %.not.i.i344 = icmp eq i32 %i.ky, 0
  br i1 %.not.i.i344, label %pm_parser_local_add_token.exit346, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %.val.i.i345 = load ptr, ptr %i.n, align 8, !tbaa !59
  tail call fastcc void @pm_parser_local_add(ptr %.val.i.i345, i32 noundef %i.ky, ptr noundef %.sroa.4507.0.copyload, ptr noundef %i.jy, i32 noundef 1)
  br label %pm_parser_local_add_token.exit346

pm_parser_local_add_token.exit346:                ; preds = %bb.bt, %bb.bu
end_hunk_9
begin_hunk_10_@parse_parameters:bb.a
  %i.lh = load i32, ptr %0, align 8, !tbaa !109
  %i.li = add i32 %i.lh, 1                        ; 2 uses
  store i32 %i.li, ptr %0, align 8, !tbaa !109
  %i.lj = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %.sroa.4507.0.copyload, i64 noundef %i.kx) #28
  store i16 126, ptr %i.ld, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i348 = getelementptr inbounds nuw i8, ptr %i.ld, i64 4
  store i32 %i.li, ptr %.sroa.3.0..sroa_idx.i348, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i349 = getelementptr inbounds nuw i8, ptr %i.ld, i64 8
  store ptr %.sroa.4507.0.copyload, ptr %.sroa.4.0..sroa_idx.i349, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i350 = getelementptr inbounds nuw i8, ptr %i.ld, i64 16
  store ptr %.sroa.11.0.copyload, ptr %.sroa.5.0..sroa_idx.i350, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i351 = getelementptr inbounds nuw i8, ptr %i.ld, i64 24
  store i32 %i.lj, ptr %.sroa.6.0..sroa_idx.i351, align 8, !tbaa !7
  %.sroa.8.0..sroa_idx.i352 = getelementptr inbounds nuw i8, ptr %i.ld, i64 32
  store ptr %.sroa.4507.0.copyload, ptr %.sroa.8.0..sroa_idx.i352, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i353 = getelementptr inbounds nuw i8, ptr %i.ld, i64 40
  store ptr %.sroa.11.0.copyload, ptr %.sroa.9.0..sroa_idx.i353, align 8, !tbaa !14
  br i1 %i.ku, label %.thread.sink.split, label %.thread

bb.bx:                                            ; preds = %pm_parser_local_add_token.exit346, %pm_parser_local_add_token.exit346
end_hunk_10
begin_hunk_11_@parse_parameters:bb.a
  %i.lr = load i32, ptr %0, align 8, !tbaa !109
  %i.ls = add i32 %i.lr, 1                        ; 2 uses
  store i32 %i.ls, ptr %0, align 8, !tbaa !109
  %i.lt = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %.sroa.4507.0.copyload, i64 noundef %i.kx) #28
  store i16 126, ptr %i.ln, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i358 = getelementptr inbounds nuw i8, ptr %i.ln, i64 4
  store i32 %i.ls, ptr %.sroa.3.0..sroa_idx.i358, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i359 = getelementptr inbounds nuw i8, ptr %i.ln, i64 8
  store ptr %.sroa.4507.0.copyload, ptr %.sroa.4.0..sroa_idx.i359, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i360 = getelementptr inbounds nuw i8, ptr %i.ln, i64 16
  store ptr %.sroa.11.0.copyload, ptr %.sroa.5.0..sroa_idx.i360, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i361 = getelementptr inbounds nuw i8, ptr %i.ln, i64 24
  store i32 %i.lt, ptr %.sroa.6.0..sroa_idx.i361, align 8, !tbaa !7
  %.sroa.8.0..sroa_idx.i362 = getelementptr inbounds nuw i8, ptr %i.ln, i64 32
  store ptr %.sroa.4507.0.copyload, ptr %.sroa.8.0..sroa_idx.i362, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i363 = getelementptr inbounds nuw i8, ptr %i.ln, i64 40
  store ptr %.sroa.11.0.copyload, ptr %.sroa.9.0..sroa_idx.i363, align 8, !tbaa !14
  br i1 %i.ku, label %.thread.sink.split, label %.thread

bb.ca:                                            ; preds = %pm_parser_local_add_token.exit346
end_hunk_11
begin_hunk_12_@parse_parameters:bb.a
  br i1 %i.lu, label %bb.cb, label %bb.cz

bb.cb:                                            ; preds = %bb.ca
  %i.lv = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %.sroa.4507.0.copyload, i64 noundef %i.kx) #28 ; 8 uses
  %i.lw = load i32, ptr %i.ac, align 8, !tbaa !53
  %i.lx = icmp ult i32 %i.lw, 2
  br i1 %i.lx, label %bb.cc, label %bb.cj
end_hunk_12
begin_hunk_13_@parse_parameters:bb.a

bb.cw:                                            ; preds = %pm_locals_reads.exit399
  %i.pe = trunc i64 %i.kx to i32
  %i.pf = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.r, ptr noundef %.sroa.4507.0.copyload, ptr noundef %i.jy, i32 noundef 207, i32 noundef %i.pe, ptr noundef %.sroa.4507.0.copyload) #28 ; 0 uses
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %pm_locals_reads.exit399, %bb.co
end_hunk_13
begin_hunk_14_@parse_parameters:bb.a
  store i32 %i.pl, ptr %0, align 8, !tbaa !109
  %i.pm = getelementptr i8, ptr %i.nl, i64 16
  %i.pn = load ptr, ptr %i.pm, align 8, !tbaa !134
  %i.po = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %.sroa.4507.0.copyload, i64 noundef %i.kx) #28
  store i16 112, ptr %i.pg, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i401 = getelementptr inbounds nuw i8, ptr %i.pg, i64 4
  store i32 %i.pl, ptr %.sroa.3.0..sroa_idx.i401, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i402 = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  store ptr %.sroa.4507.0.copyload, ptr %.sroa.4.0..sroa_idx.i402, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i403 = getelementptr inbounds nuw i8, ptr %i.pg, i64 16
  store ptr %i.pn, ptr %.sroa.5.0..sroa_idx.i403, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i404 = getelementptr inbounds nuw i8, ptr %i.pg, i64 24
  store i32 %i.po, ptr %.sroa.6.0..sroa_idx.i404, align 8, !tbaa !7
  %.sroa.8.0..sroa_idx.i405 = getelementptr inbounds nuw i8, ptr %i.pg, i64 32
  store ptr %.sroa.4507.0.copyload, ptr %.sroa.8.0..sroa_idx.i405, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i406 = getelementptr inbounds nuw i8, ptr %i.pg, i64 40
  store ptr %.sroa.11.0.copyload, ptr %.sroa.9.0..sroa_idx.i406, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx.i407 = getelementptr inbounds nuw i8, ptr %i.pg, i64 48
  store ptr %i.nl, ptr %.sroa.10.0..sroa_idx.i407, align 8, !tbaa !105
  br label %bb.db
end_hunk_14
begin_hunk_15_@parse_parameters:bb.a
  %i.pt = load i32, ptr %0, align 8, !tbaa !109
  %i.pu = add i32 %i.pt, 1                        ; 2 uses
  store i32 %i.pu, ptr %0, align 8, !tbaa !109
  %i.pv = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %.sroa.4507.0.copyload, i64 noundef %i.kx) #28
  store i16 126, ptr %i.pp, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i409 = getelementptr inbounds nuw i8, ptr %i.pp, i64 4
  store i32 %i.pu, ptr %.sroa.3.0..sroa_idx.i409, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i410 = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  store ptr %.sroa.4507.0.copyload, ptr %.sroa.4.0..sroa_idx.i410, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i411 = getelementptr inbounds nuw i8, ptr %i.pp, i64 16
  store ptr %.sroa.11.0.copyload, ptr %.sroa.5.0..sroa_idx.i411, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx.i412 = getelementptr inbounds nuw i8, ptr %i.pp, i64 24
  store i32 %i.pv, ptr %.sroa.6.0..sroa_idx.i412, align 8, !tbaa !7
  %.sroa.8.0..sroa_idx.i413 = getelementptr inbounds nuw i8, ptr %i.pp, i64 32
  store ptr %.sroa.4507.0.copyload, ptr %.sroa.8.0..sroa_idx.i413, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx.i414 = getelementptr inbounds nuw i8, ptr %i.pp, i64 40
  store ptr %.sroa.11.0.copyload, ptr %.sroa.9.0..sroa_idx.i414, align 8, !tbaa !14
  br label %bb.db

bb.db:                                            ; preds = %pm_required_keyword_parameter_node_create.exit415, %pm_optional_keyword_parameter_node_create.exit
end_hunk_15
begin_hunk_16_@parse_parameters:bb.a

pm_rest_parameter_node_create.exit:               ; preds = %pm_node_alloc.exit.i424, %bb.dg
  %i.qw = phi i32 [ %i.qv, %bb.dg ], [ 0, %pm_node_alloc.exit.i424 ]
  %i.qx = phi ptr [ %.sroa.9.0.i427, %bb.dg ], [ %.sroa.5504.0.copyload, %pm_node_alloc.exit.i424 ] ; 4 uses
  %.sroa.13.0.i430 = phi ptr [ %.val.i.i428, %bb.dg ], [ null, %pm_node_alloc.exit.i424 ]
  %.sroa.15.0.i431 = phi ptr [ %.sroa.9.0.i427, %bb.dg ], [ null, %pm_node_alloc.exit.i424 ]
  store i16 130, ptr %i.qk, align 8, !tbaa !110
end_hunk_16
begin_hunk_17_@parse_parameters:bb.a
  br i1 %i.rc, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %23 = load ptr, ptr %i.t, align 8, !tbaa !523   ; 3 uses
  %24 = icmp eq ptr %23, null
  %25 = icmp uge ptr %23, %.sroa.3.0.copyload
  %26 = select i1 %24, i1 true, i1 %25
  %storemerge.i.i442 = select i1 %26, ptr %.sroa.3.0.copyload, ptr %23
  store ptr %storemerge.i.i442, ptr %i.t, align 8, !tbaa !523
  %27 = load ptr, ptr %i.u, align 8, !tbaa !524   ; 3 uses
  %28 = icmp eq ptr %27, null
  %29 = icmp ule ptr %27, %i.qx
  %30 = select i1 %28, i1 true, i1 %29
  %storemerge19.i.i443 = select i1 %30, ptr %i.qx, ptr %27
  store ptr %storemerge19.i.i443, ptr %i.u, align 8, !tbaa !524
  store ptr %i.qk, ptr %i.w, align 8, !tbaa !526
  br label %bb.dk

end_hunk_17
begin_hunk_18_@parse_parameters:bb.a

bb.du:                                            ; preds = %bb.dt, %bb.do
  %.0232 = phi ptr [ %i.rt, %bb.do ], [ %i.se, %bb.dt ] ; 5 uses
  %i.sv = load ptr, ptr %i.s, align 8, !tbaa !525
  %i.sw = icmp eq ptr %i.sv, null
  br i1 %i.sw, label %pm_parameters_node_keyword_rest_set.exit478, label %bb.dv

end_hunk_18
begin_hunk_19_@parse_parameters:bb.a
  %i.te = select <2 x i1> %i.sz, <2 x i1> splat (i1 true), <2 x i1> %i.td
  %i.tf = select <2 x i1> %i.te, <2 x ptr> %i.ta, <2 x ptr> %i.sy
  store <2 x ptr> %i.tf, ptr %i.t, align 8, !tbaa !14
  store ptr %.0232, ptr %i.s, align 8, !tbaa !525
  br label %bb.dw

bb.dv:                                            ; preds = %bb.du
end_hunk_19
begin_hunk_20_@parse_parameters:bb.a
  br i1 %or.cond3, label %bb.dz, label %bb.ed

bb.dz:                                            ; preds = %bb.dy
  %i.tv = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #31 ; 7 uses
  %i.tw = icmp eq ptr %i.tv, null
  br i1 %i.tw, label %bb.ea, label %pm_implicit_rest_node_create.exit

end_hunk_20
begin_hunk_21_@parse_parameters:bb.a
  %i.tz = load i32, ptr %0, align 8, !tbaa !109
  %i.ua = add i32 %i.tz, 1                        ; 2 uses
  store i32 %i.ua, ptr %0, align 8, !tbaa !109
  %31 = load ptr, ptr %i.p, align 8, !tbaa !127   ; 4 uses
  %32 = load ptr, ptr %i.q, align 8, !tbaa !128   ; 4 uses
  store i16 70, ptr %i.tv, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i482 = getelementptr inbounds nuw i8, ptr %i.tv, i64 4
  store i32 %i.ua, ptr %.sroa.3.0..sroa_idx.i482, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i483 = getelementptr inbounds nuw i8, ptr %i.tv, i64 8 ; 2 uses
  store ptr %31, ptr %.sroa.4.0..sroa_idx.i483, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i484 = getelementptr inbounds nuw i8, ptr %i.tv, i64 16
  store ptr %32, ptr %.sroa.5.0..sroa_idx.i484, align 8, !tbaa !14
  %i.ub = load ptr, ptr %i.w, align 8, !tbaa !526
  %i.uc = icmp eq ptr %i.ub, null
  br i1 %i.uc, label %bb.eb, label %bb.ec

bb.eb:                                            ; preds = %pm_implicit_rest_node_create.exit
  %33 = load ptr, ptr %i.t, align 8, !tbaa !523   ; 3 uses
  %34 = icmp eq ptr %33, null
  %35 = icmp uge ptr %33, %31
  %36 = select i1 %34, i1 true, i1 %35
  %storemerge.i.i485 = select i1 %36, ptr %31, ptr %33
  store ptr %storemerge.i.i485, ptr %i.t, align 8, !tbaa !523
  %37 = load ptr, ptr %i.u, align 8, !tbaa !524   ; 3 uses
  %38 = icmp eq ptr %37, null
  %39 = icmp ule ptr %37, %32
  %40 = select i1 %38, i1 true, i1 %39
  %storemerge19.i.i486 = select i1 %40, ptr %32, ptr %37
  store ptr %storemerge19.i.i486, ptr %i.u, align 8, !tbaa !524
  store ptr %i.tv, ptr %i.w, align 8, !tbaa !526
  br label %.critedge245.thread

bb.ec:                                            ; preds = %pm_implicit_rest_node_create.exit
  %i.ud = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.r, ptr noundef %31, ptr noundef %32, i32 noundef 215) #28 ; 0 uses
  %i.ue = load <2 x ptr>, ptr %i.t, align 8, !tbaa !14 ; 4 uses
  %i.uf = icmp eq <2 x ptr> %i.ue, zeroinitializer
  %i.ug = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx.i483, align 8, !tbaa !14 ; 3 uses
end_hunk_21
begin_hunk_22_@parse_parameters:bb.a

.thread:                                          ; preds = %.thread.sink.split, %pm_required_keyword_parameter_node_create.exit364, %pm_required_keyword_parameter_node_create.exit
  %.sink654 = phi ptr [ %i.ld, %pm_required_keyword_parameter_node_create.exit ], [ %i.ln, %pm_required_keyword_parameter_node_create.exit364 ], [ %.sink671, %.thread.sink.split ]
  %41 = load ptr, ptr %i.t, align 8, !tbaa !523   ; 3 uses
  %42 = icmp eq ptr %41, null
  %43 = icmp uge ptr %41, %.sroa.4507.0.copyload
  %44 = select i1 %42, i1 true, i1 %43
  %storemerge.i.i355 = select i1 %44, ptr %.sroa.4507.0.copyload, ptr %41
  store ptr %storemerge.i.i355, ptr %i.t, align 8, !tbaa !523
  %45 = load ptr, ptr %i.u, align 8, !tbaa !524   ; 3 uses
  %46 = icmp eq ptr %45, null
  %47 = icmp ule ptr %45, %.sroa.11.0.copyload
  %48 = select i1 %46, i1 true, i1 %47
  %storemerge19.i.i356 = select i1 %48, ptr %.sroa.11.0.copyload, ptr %45
  store ptr %storemerge19.i.i356, ptr %i.u, align 8, !tbaa !524
  tail call void @pm_node_list_append(ptr noundef %i.ab, ptr noundef nonnull %.sink654) #28
  store i8 0, ptr %i.x, align 1, !tbaa !197
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
end_hunk_22
begin_hunk_23_@parse_parameters:bb.a
  %i.vk = load i32, ptr %i.b, align 4, !tbaa !7
  %i.vl = lshr i32 %i.vk, 1
  store i32 %i.vl, ptr %i.b, align 4, !tbaa !7
  %i.vm = load ptr, ptr %i.t, align 8, !tbaa !523
  %i.vn = load ptr, ptr %i.u, align 8, !tbaa !524
  %i.vo = icmp eq ptr %i.vm, %i.vn
  br i1 %i.vo, label %bb.ei, label %bb.ej

end_hunk_23
begin_hunk_24_@pm_block_parameters_node_create:bb.a

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !524
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7, i8 0, i64 24, i1 false)
  %.phi.trans.insert = getelementptr i8, ptr %2, i64 16
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !128
end_hunk_24
begin_hunk_25_@llvm.vector.reduce.add.v2i64
!520 = !{!521, !522, i64 136}
!521 = !{!"pm_parameters_node", !103, i64 0, !63, i64 24, !63, i64 48, !106, i64 72, !63, i64 80, !63, i64 104, !106, i64 128, !522, i64 136}
!522 = !{!"p1 _ZTS23pm_block_parameter_node", !13, i64 0}
!523 = !{!521, !15, i64 8}
!524 = !{!521, !15, i64 16}
!525 = !{!521, !106, i64 128}
!526 = !{!521, !106, i64 72}
!527 = !{!349, !137, i64 40}
!528 = !{!529, !106, i64 24}
end_hunk_25
