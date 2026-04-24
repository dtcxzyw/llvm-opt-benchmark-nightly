inline.NumInlined: 2622
inline.NumDeleted: 264
begin_hunk_0_@parser_lex:bb.a
  %i.c = getelementptr i8, ptr %0, i64 344        ; 275 uses
  %i.d = getelementptr i8, ptr %0, i64 360        ; 295 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !76   ; 5 uses
  %i.f = getelementptr i8, ptr %0, i64 312        ; 102 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !78   ; 6 uses
  %.not1962 = icmp ugt ptr %i.e, %i.g
  br i1 %.not1962, label %bb.b, label %bb.c
end_hunk_0
begin_hunk_1_@parser_lex:bb.a

match_eol_offset.exit.thread.thread:              ; preds = %match_eol_offset.exit2266, %.lr.ph4118, %peek_at.exit.i.i, %peek_at.exit11.i.i
  %.ph = phi ptr [ %i.at, %peek_at.exit11.i.i ], [ %i.at, %peek_at.exit.i.i ], [ %i.at, %.lr.ph4118 ], [ %.pre4554, %match_eol_offset.exit2266 ] ; 61 uses
  %i.bu = load ptr, ptr %i.f, align 8, !tbaa !78  ; 57 uses
  %i.bv = icmp ult ptr %.ph, %i.bu
  %i.bw = trunc nuw i8 %.018334116 to i1          ; 21 uses
  store ptr %.ph, ptr %i.v, align 8, !tbaa !166
end_hunk_1
begin_hunk_2_@parser_lex:bb.a
  br label %match.exit2500.thread

match.exit2500.thread:                            ; preds = %match.exit2500.thread.sink.split, %bb.jr, %peek.exit.i2499
  %.val3.i2510 = phi ptr [ %i.agc, %peek.exit.i2499 ], [ %i.agc, %bb.jr ], [ %i.agm, %match.exit2500.thread.sink.split ] ; 10 uses
  %.01871 = phi i32 [ 0, %peek.exit.i2499 ], [ 0, %bb.jr ], [ %.01871.ph, %match.exit2500.thread.sink.split ] ; 2 uses
  %i.agn = icmp ult ptr %.val3.i2510, %i.bu
  br i1 %i.agn, label %peek.exit.i2503, label %.critedge2054

peek.exit.i2503:                                  ; preds = %match.exit2500.thread
  %i.ago = load i8, ptr %.val3.i2510, align 1, !tbaa !67
end_hunk_2
begin_hunk_3_@parser_lex:bb.a
peek.exit.i2511:                                  ; preds = %peek.exit.i2507
  %i.ags = load i8, ptr %.val3.i2510, align 1, !tbaa !67
  %i.agt = icmp eq i8 %i.ags, 39
  br i1 %i.agt, label %.sink.split.a, label %bb.jt

.sink.split.a:                                    ; preds = %peek.exit.i2511, %peek.exit.i2507, %peek.exit.i2503
  %.01870 = phi i8 [ 96, %peek.exit.i2503 ], [ 34, %peek.exit.i2507 ], [ 39, %peek.exit.i2511 ]
  %.01870.ph = phi i32 [ 96, %peek.exit.i2503 ], [ 34, %peek.exit.i2507 ], [ 39, %peek.exit.i2511 ] ; 3 uses
  %i.agu = getelementptr i8, ptr %.val3.i2510, i64 1 ; 7 uses
  store ptr %i.agu, ptr %i.d, align 8, !tbaa !76
  %.not2014 = icmp ult ptr %i.agu, %i.bu
  br i1 %.not2014, label %bb.js, label %.critedge2054

bb.js:                                            ; preds = %.sink.split.a
  %.promoted4533 = ptrtoint ptr %i.agu to i64     ; 2 uses
  %8 = getelementptr i8, ptr %.val3.i2510, i64 1
  %9 = ptrtoint ptr %i.bu to i64
  %10 = sub i64 %9, %.promoted4533
  %scevgep4534 = getelementptr i8, ptr %8, i64 %10
  br label %.lr.ph4143

bb.jt:                                            ; preds = %peek.exit.i2511
  %i.agv = ptrtoint ptr %i.bu to i64
  %i.agw = ptrtoint ptr %.val3.i2510 to i64       ; 2 uses
  %i.agx = sub i64 %i.agv, %i.agw
  %i.agy = call fastcc i64 @char_is_identifier(ptr noundef nonnull %0, ptr noundef nonnull %.val3.i2510, i64 noundef %i.agx) ; 2 uses
  %i.agz = icmp eq i64 %i.agy, 0
  %.val.i2521.pre.pre = load ptr, ptr %i.f, align 8, !tbaa !78 ; 2 uses
  br i1 %i.agz, label %.critedge2054, label %bb.ju

bb.ju:                                            ; preds = %bb.jt
  %i.aha = load ptr, ptr %i.d, align 8, !tbaa !76
  %i.ahb = getelementptr i8, ptr %i.aha, i64 %i.agy ; 4 uses
  store ptr %i.ahb, ptr %i.d, align 8, !tbaa !76
  %i.ahc = ptrtoint ptr %.val.i2521.pre.pre to i64
  %i.ahd = ptrtoint ptr %i.ahb to i64             ; 2 uses
  %i.ahe = sub i64 %i.ahc, %i.ahd                 ; 2 uses
  %i.ahf = icmp slt i64 %i.ahe, 1
  br i1 %i.ahf, label %.critedge19, label %.lr.ph4148

.lr.ph4148:                                       ; preds = %bb.ju, %char_is_identifier.exit.thread
  %i.ahg = phi i64 [ %i.aih, %char_is_identifier.exit.thread ], [ %i.ahe, %bb.ju ] ; 3 uses
end_hunk_3
begin_hunk_4_@parser_lex:bb.a
  %i.aii = icmp slt i64 %i.aih, 1
  br i1 %i.aii, label %.critedge19.loopexit, label %.lr.ph4148, !llvm.loop !205

.lr.ph4143:                                       ; preds = %bb.js, %bb.kd
  %i.aij = phi ptr [ %i.aim, %bb.kd ], [ %i.agu, %bb.js ] ; 5 uses
  %i.aik = load i8, ptr %i.aij, align 1, !tbaa !67
  %.fr3573 = freeze i8 %i.aik                     ; 2 uses
  %i.ail = zext i8 %.fr3573 to i32
  %.not2015 = icmp eq i32 %.01870.ph, %i.ail
  br i1 %.not2015, label %bb.ke, label %switch.early.test

switch.early.test:                                ; preds = %.lr.ph4143
  switch i8 %.fr3573, label %bb.kd [
    i8 13, label %bb.ke
    i8 10, label %bb.ke
  ]

bb.kd:                                            ; preds = %switch.early.test
  %i.aim = getelementptr i8, ptr %i.aij, i64 1    ; 4 uses
  store ptr %i.aim, ptr %i.d, align 8, !tbaa !76
  %exitcond4525.not = icmp eq ptr %i.aim, %scevgep4534
  br i1 %exitcond4525.not, label %bb.ke, label %.lr.ph4143, !llvm.loop !206

.critedge19.loopexit:                             ; preds = %char_is_identifier.exit.thread, %bb.jx, %char_is_identifier.exit
  %.pre4565.a = load ptr, ptr %i.d, align 8, !tbaa !76 ; 2 uses
  %.pre4634 = ptrtoint ptr %.pre4565.a to i64
  br label %.critedge19

.critedge19:                                      ; preds = %.critedge19.loopexit, %bb.ju
  %.pre-phi4635 = phi i64 [ %.pre4634, %.critedge19.loopexit ], [ %i.ahd, %bb.ju ]
  %11 = phi ptr [ %.pre4565.a, %.critedge19.loopexit ], [ %i.ahb, %bb.ju ]
  %i.ain = sub i64 %.pre-phi4635, %i.agw
  br label %bb.kg

bb.ke:                                            ; preds = %bb.kd, %.lr.ph4143, %switch.early.test, %switch.early.test
  %12 = phi ptr [ %i.aij, %switch.early.test ], [ %i.aij, %switch.early.test ], [ %i.aij, %.lr.ph4143 ], [ %i.aim, %bb.kd ] ; 4 uses
  %.pre4633 = ptrtoint ptr %12 to i64
  %13 = sub i64 %.pre4633, %.promoted4533         ; 3 uses
  %i.aio = icmp ult ptr %12, %i.bu
  br i1 %i.aio, label %peek.exit.i2516, label %bb.kf

peek.exit.i2516:                                  ; preds = %bb.ke
  %i.aip = load i8, ptr %12, align 1, !tbaa !67
  %i.aiq = icmp eq i8 %i.aip, %.01870
  br i1 %i.aiq, label %match.exit2517, label %bb.kf

match.exit2517:                                   ; preds = %peek.exit.i2516
end_hunk_4
begin_hunk_5_@parser_lex:bb.a
  br label %bb.kg

bb.kf:                                            ; preds = %peek.exit.i2516, %bb.ke
  %14 = getelementptr i8, ptr %.val3.i2510, i64 1
  %i.ais = getelementptr i8, ptr %14, i64 %13
  %i.ait = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.y, ptr noundef %i.agu, ptr noundef %i.ais, i32 noundef 137) #28 ; 0 uses
  %.pre4566.a = load ptr, ptr %i.d, align 8, !tbaa !76
  br label %bb.kg

bb.kg:                                            ; preds = %match.exit2517, %.critedge19, %bb.kf
  %15 = phi ptr [ %i.air, %match.exit2517 ], [ %.pre4566.a, %bb.kf ], [ %11, %.critedge19 ] ; 2 uses
  %16 = phi i64 [ %13, %match.exit2517 ], [ %13, %bb.kf ], [ %i.ain, %.critedge19 ] ; 4 uses
  %17 = phi i32 [ %.01870.ph, %match.exit2517 ], [ %.01870.ph, %bb.kf ], [ 0, %.critedge19 ] ; 2 uses
  %18 = phi ptr [ %i.agu, %match.exit2517 ], [ %i.agu, %bb.kf ], [ %.val3.i2510, %.critedge19 ] ; 5 uses
  %.01873 = phi i1 [ false, %match.exit2517 ], [ true, %bb.kf ], [ false, %.critedge19 ]
  %i.aiu = getelementptr i8, ptr %0, i64 672
  store ptr null, ptr %i.aiu, align 8, !tbaa !207
  %i.aiv = load ptr, ptr %i.o, align 8, !tbaa !91 ; 2 uses
end_hunk_5
begin_hunk_6_@parser_lex:bb.a
  %.sroa.53150.0..sroa_idx3151 = getelementptr inbounds nuw i8, ptr %i.aja, i64 4
  store i32 0, ptr %.sroa.53150.0..sroa_idx3151, align 4
  %.sroa.63153.0..sroa_idx3154 = getelementptr inbounds nuw i8, ptr %i.aja, i64 8
  store ptr %18, ptr %.sroa.63153.0..sroa_idx3154, align 8
  %.sroa.73156.0..sroa_idx3157 = getelementptr inbounds nuw i8, ptr %i.aja, i64 16
  store i64 %16, ptr %.sroa.73156.0..sroa_idx3157, align 8
  %.sroa.83159.0..sroa_idx3160 = getelementptr inbounds nuw i8, ptr %i.aja, i64 24
  store i32 %17, ptr %.sroa.83159.0..sroa_idx3160, align 8
  %.sroa.93162.0..sroa_idx3163 = getelementptr inbounds nuw i8, ptr %i.aja, i64 28
  store i32 %.01871, ptr %.sroa.93162.0..sroa_idx3163, align 4
  %.sroa.103165.0..sroa_idx3166 = getelementptr inbounds nuw i8, ptr %i.aja, i64 32
  store ptr %15, ptr %.sroa.103165.0..sroa_idx3166, align 8
  %.sroa.113168.0..sroa_idx3169 = getelementptr inbounds nuw i8, ptr %i.aja, i64 40
  %.sroa.14.0..sroa_idx3174 = getelementptr inbounds nuw i8, ptr %i.aja, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.113168.0..sroa_idx3169, i8 0, i64 16, i1 false)
end_hunk_6
begin_hunk_7_@parser_lex:bb.a
  %.sroa.53150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajd, i64 4
  store i32 0, ptr %.sroa.53150.0..sroa_idx, align 4
  %.sroa.63153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajd, i64 8
  store ptr %18, ptr %.sroa.63153.0..sroa_idx, align 8
  %.sroa.73156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajd, i64 16
  store i64 %16, ptr %.sroa.73156.0..sroa_idx, align 8
  %.sroa.83159.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajd, i64 24
  store i32 %17, ptr %.sroa.83159.0..sroa_idx, align 8
  %.sroa.93162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajd, i64 28
  store i32 %.01871, ptr %.sroa.93162.0..sroa_idx, align 4
  %.sroa.103165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajd, i64 32
  store ptr %15, ptr %.sroa.103165.0..sroa_idx, align 8
  %.sroa.113168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajd, i64 40
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ajd, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.113168.0..sroa_idx, i8 0, i64 16, i1 false)
end_hunk_7
begin_hunk_8_@parser_lex:bb.a
  br i1 %.01873, label %bb.kn, label %bb.km

bb.km:                                            ; preds = %bb.kl
  %i.ajp = getelementptr i8, ptr %18, i64 %16
  %i.ajq = trunc i64 %16 to i32
  %i.ajr = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.y, ptr noundef %18, ptr noundef %i.ajp, i32 noundef 138, i32 noundef %i.ajq, ptr noundef %18) #28 ; 0 uses
  br label %bb.kn

bb.kn:                                            ; preds = %bb.km, %bb.kl
end_hunk_8
begin_hunk_9_@parser_lex:bb.a
  call void %i.ajx(ptr noundef %i.ajy, ptr noundef nonnull %0, ptr noundef %i.c) #28, !inline_history !175
  br label %parser_lex_callback.exit2965

.critedge2054:                                    ; preds = %match.exit2500.thread, %bb.jt, %.sink.split.a
  %.val.i2519.pre = phi ptr [ %i.bu, %.sink.split.a ], [ %.val.i2521.pre.pre, %bb.jt ], [ %i.bu, %match.exit2500.thread ]
  store ptr %i.agc, ptr %i.d, align 8, !tbaa !76
  br label %bb.kr

bb.kr:                                            ; preds = %.critedge2054, %bb.jq, %bb.jo
  %.val.i2521 = phi ptr [ %.val.i2519.pre, %.critedge2054 ], [ %i.bu, %bb.jq ], [ %i.bu, %bb.jo ]
  %i.ajz = icmp ult ptr %i.agc, %.val.i2521
  br i1 %i.ajz, label %peek.exit.i2523, label %.thread5100

end_hunk_9
begin_hunk_10_@pm_range_node_create:bb.a
pm_assert_value_expression.exit40:                ; preds = %pm_assert_value_expression.exit, %bb.c
  %i.k = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #31 ; 10 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %pm_assert_value_expression.exit40
  %i.m = load ptr, ptr @stderr, align 8, !tbaa !107
end_hunk_10
begin_hunk_11_@pm_range_node_create:bb.a
  tail call void @abort() #27
  unreachable

pm_node_alloc.exit:                               ; preds = %pm_assert_value_expression.exit40
  %4 = load i32, ptr %2, align 8, !tbaa !126
  switch i32 %4, label %pm_node_alloc.exit.a [
    i32 44, label %5
    i32 155, label %5
  ]

5:                                                ; preds = %pm_node_alloc.exit, %pm_node_alloc.exit
  br label %pm_node_alloc.exit.a

pm_node_alloc.exit.a:                             ; preds = %pm_node_alloc.exit, %5
  %.0 = phi i16 [ 6, %5 ], [ 2, %pm_node_alloc.exit ]
  %6 = phi i16 [ 4, %5 ], [ 0, %pm_node_alloc.exit ] ; 2 uses
  %i.o = icmp eq ptr %1, null                     ; 2 uses
  br i1 %i.o, label %bb.f, label %bb.e

end_hunk_11
begin_hunk_12_@pm_range_node_create:bb.a
  ]

bb.h:                                             ; preds = %bb.g, %bb.g, %bb.f
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.e, %bb.h
  %.1 = phi i16 [ %.0, %bb.h ], [ %6, %bb.g ], [ %6, %bb.e ]
  %i.s = load i32, ptr %0, align 8, !tbaa !109
  %i.t = add i32 %i.s, 1                          ; 2 uses
  store i32 %i.t, ptr %0, align 8, !tbaa !109
end_hunk_12
begin_hunk_13_@parse_arguments:bb.a
  br label %argument_allowed_for_bare_hash.exit.thread

argument_allowed_for_bare_hash.exit.thread:       ; preds = %bb.cc, %bb.cb, %.thread15.i, %accept1.exit
  %.1.i296 = phi i1 [ true, %accept1.exit ], [ false, %.thread15.i ], [ false, %bb.cb ], [ false, %bb.cc ] ; 2 uses
  %.3 = phi ptr [ %i.ix, %accept1.exit ], [ %.2159, %.thread15.i ], [ %.2159, %bb.cb ], [ %.2159, %bb.cc ] ; 5 uses
  %.1151 = phi i1 [ %.0150, %accept1.exit ], [ false, %.thread15.i ], [ false, %bb.cb ], [ false, %bb.cc ]
  %.1148 = phi i8 [ 1, %accept1.exit ], [ %.0147, %.thread15.i ], [ %.0147, %bb.cb ], [ %.0147, %bb.cc ]
end_hunk_13
begin_hunk_14_@parse_arguments:bb.a
  br label %parse_arguments_append.exit268

parse_arguments_append.exit268:                   ; preds = %bb.cy, %.sink.split.i.i262
  %spec.select165 = select i1 %.1.i296, i16 24, i16 16
  %spec.select166 = select i1 %.1.i296, i16 8, i16 0
  %.1145 = select i1 %.1151, i16 %spec.select165, i16 %spec.select166
  %i.le = load ptr, ptr %i.z, align 8, !tbaa !312
  %i.lf = getelementptr i8, ptr %i.le, i64 2      ; 2 uses
  %i.lg = load i16, ptr %i.lf, align 2, !tbaa !116
end_hunk_14
