Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/prism?download=true
inline.NumInlined: 2622
inline.NumDeleted: 264
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 8
begin_hunk_0_@pm_parse:bb.a
  %i.kf = load ptr, ptr %i.ke, align 8, !tbaa !106 ; 4 uses
  %.not.i30.i = icmp eq ptr %i.kf, null
  br i1 %.not.i30.i, label %flush_block_exits.exit.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.kg = load i16, ptr %i.kf, align 8, !tbaa !115
  switch i16 %i.kg, label %bb.bv [
    i16 17, label %bb.bw
    i16 107, label %bb.bt
    i16 124, label %bb.bu
  ]

bb.bt:                                            ; preds = %bb.bs
  br label %bb.bw

bb.bu:                                            ; preds = %bb.bs
  br label %bb.bw

bb.bv:                                            ; preds = %bb.bs
  call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 15115, ptr noundef nonnull @__PRETTY_FUNCTION__.flush_block_exits) #26
  unreachable

bb.bw:                                            ; preds = %bb.bu, %bb.bt, %bb.bs
  %.0.i31.i = phi ptr [ @.str.74, %bb.bu ], [ @.str.73, %bb.bt ], [ @.str.80, %bb.bs ]
  %i.kh = getelementptr i8, ptr %i.kf, i64 8
  %i.ki = load ptr, ptr %i.kh, align 8, !tbaa !133
  %i.kj = getelementptr i8, ptr %i.kf, i64 16
  %i.kk = load ptr, ptr %i.kj, align 8, !tbaa !134
  %i.kl = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.ka, ptr noundef %i.ki, ptr noundef %i.kk, i32 noundef 145, ptr noundef nonnull %.0.i31.i) #27 ; 0 uses
  %i.km = add nuw i64 %.01114.i.i, 1              ; 2 uses
  %i.kn = load ptr, ptr %i.e, align 8, !tbaa !100 ; 2 uses
  %i.ko = load i64, ptr %i.kn, align 8, !tbaa !138
  %i.kp = icmp ult i64 %i.km, %i.ko
  br i1 %i.kp, label %bb.br, label %flush_block_exits.exit.i, !llvm.loop !1

flush_block_exits.exit.i:                         ; preds = %bb.bw, %bb.br, %bb.bq
  store ptr %i.f, ptr %i.e, align 8, !tbaa !100
  br label %bb.bx

bb.bx:                                            ; preds = %flush_block_exits.exit.i, %wrap_statements.exit.i
  %.0.i = phi ptr [ %.4.i.i, %wrap_statements.exit.i ], [ %i.g, %flush_block_exits.exit.i ] ; 2 uses
  call void @pm_node_list_free(ptr noundef nonnull %2) #27
  %i.kq = icmp eq ptr %.0.i, null
  br i1 %i.kq, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.kr = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 6 uses
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %bb.bz, label %pm_statements_node_create.exit.i

bb.bz:                                            ; preds = %bb.by
  %i.kt = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.ku = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.kt, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_statements_node_create.exit.i:                 ; preds = %bb.by
  %i.kv = load i32, ptr %0, align 8, !tbaa !109
  %i.kw = add i32 %i.kv, 1                        ; 2 uses
  store i32 %i.kw, ptr %0, align 8, !tbaa !109
  %i.kx = getelementptr i8, ptr %0, i64 304
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !86 ; 2 uses
  store i16 140, ptr %i.kr, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i32.i = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  store i32 %i.kw, ptr %.sroa.3.0..sroa_idx.i32.i, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i33.i = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %.sroa.5.0..sroa_idx.i34.i = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  store ptr %i.ky, ptr %.sroa.4.0..sroa_idx.i33.i, align 8, !tbaa !36
  store ptr %i.ky, ptr %.sroa.5.0..sroa_idx.i34.i, align 8, !tbaa !36
  br label %bb.ca

bb.ca:                                            ; preds = %pm_statements_node_create.exit.i, %bb.bx
  %.1.i = phi ptr [ %i.kr, %pm_statements_node_create.exit.i ], [ %.0.i, %bb.bx ] ; 2 uses
  %i.kz = call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #30 ; 7 uses
  %i.la = icmp eq ptr %i.kz, null
  br i1 %i.la, label %bb.cb, label %parse_program.exit

bb.cb:                                            ; preds = %bb.ca
  %i.lb = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.lc = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.lb, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 56) #27 ; 0 uses
  call void @abort() #26
  unreachable

parse_program.exit:                               ; preds = %bb.ca
  %i.ld = load i32, ptr %0, align 8, !tbaa !109
  %i.le = add i32 %i.ld, 1                        ; 2 uses
  store i32 %i.le, ptr %0, align 8, !tbaa !109
  %i.lf = getelementptr i8, ptr %.1.i, i64 8
  %.sroa.6.0..sroa_idx.i35.i = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %.sroa.3.0..sroa_idx.i36.i = getelementptr inbounds nuw i8, ptr %i.kz, i64 4
  %.sroa.4.0..sroa_idx.i37.i = getelementptr inbounds nuw i8, ptr %i.kz, i64 8
  %i.lg = load <2 x ptr>, ptr %i.lf, align 8, !tbaa !36
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i35.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false)
  store i16 121, ptr %i.kz, align 8, !tbaa !110
  store i32 %i.le, ptr %.sroa.3.0..sroa_idx.i36.i, align 4, !tbaa !31
  store <2 x ptr> %i.lg, ptr %.sroa.4.0..sroa_idx.i37.i, align 8, !tbaa !36
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.kz, i64 48
  store ptr %.1.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !137
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret ptr %i.kz
}

; Function Attrs: nounwind sspstrong uwtable
define hidden nonnull ptr @pm_parse_stream(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i1 @pm_buffer_init(ptr noundef %1) #27 ; 0 uses
  %i.b = tail call fastcc zeroext i1 @pm_parse_stream_read(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  %i.c = tail call ptr @pm_buffer_value(ptr noundef %1) #27
  %i.d = tail call i64 @pm_buffer_length(ptr noundef %1) #27
  tail call void @pm_parser_init(ptr noundef %0, ptr noundef %i.c, i64 noundef %i.d, ptr noundef %5)
  %i.e = tail call ptr @pm_parse(ptr noundef %0)  ; 2 uses
  br i1 %i.b, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 472
  %i.g = getelementptr i8, ptr %0, i64 296
  %i.h = getelementptr i8, ptr %0, i64 480
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.critedge2
  %.033 = phi ptr [ %i.e, %.lr.ph ], [ %i.q, %.critedge2 ] ; 3 uses
  %i.i = load i64, ptr %i.f, align 8, !tbaa !140
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.g, align 8, !tbaa !92
  %.not29 = icmp eq i64 %i.j, 0
  br i1 %.not29, label %.preheader, label %.critedge2

.preheader:                                       ; preds = %bb.c, %bb.d
  %.0.in.i = phi ptr [ %.0.i, %bb.d ], [ %i.h, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !346 ; 3 uses
  %.not.not.not.not.i.not = icmp eq ptr %.0.i, null
  br i1 %.not.not.not.not.i.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.k = getelementptr i8, ptr %.0.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !348
  %i.m = icmp eq i32 %i.l, 138
  br i1 %i.m, label %.critedge2, label %.preheader, !llvm.loop !344

.critedge2:                                       ; preds = %bb.d, %bb.c
  tail call void @pm_node_destroy(ptr noundef %0, ptr noundef nonnull %.033) #27
  %i.n = tail call fastcc zeroext i1 @pm_parse_stream_read(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  tail call void @pm_parser_free(ptr noundef %0)
  %i.o = tail call ptr @pm_buffer_value(ptr noundef %1) #27
  %i.p = tail call i64 @pm_buffer_length(ptr noundef %1) #27
  tail call void @pm_parser_init(ptr noundef %0, ptr noundef %i.o, i64 noundef %i.p, ptr noundef %5)
  %i.q = tail call ptr @pm_parse(ptr noundef %0)  ; 2 uses
  br i1 %i.n, label %.critedge, label %bb.b, !llvm.loop !345

.critedge:                                        ; preds = %.critedge2, %bb.b, %.preheader, %bb.a
  %.032 = phi ptr [ %.033, %.preheader ], [ %i.e, %bb.a ], [ %i.q, %.critedge2 ], [ %.033, %bb.b ]
  ret ptr %.032
}

declare zeroext i1 @pm_buffer_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @pm_parse_stream_read(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4096 x i8], align 16             ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 noundef 10, i64 noundef 4096, i1 noundef false) #27
  %i.b = call ptr %2(ptr noundef nonnull %i.a, i32 noundef 4096, ptr noundef %1) #27
  %.not29 = icmp eq ptr %i.b, null
  br i1 %.not29, label %.thread25, label %.preheader

.thread:                                          ; preds = %bb.b
  call void @pm_buffer_append_string(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef -1) #27
  br label %bb.h

.preheader:                                       ; preds = %bb.a, %.preheader.backedge
  %.01628 = phi i64 [ %.01628.be, %.preheader.backedge ], [ 4096, %bb.a ] ; 4 uses
  %i.c = getelementptr i8, ptr %i.a, i64 %.01628
  %i.d = getelementptr i8, ptr %i.c, i64 -1
  %i.e = load i8, ptr %i.d, align 1, !tbaa !83
  %i.f = icmp eq i8 %i.e, 10
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.preheader
  %i.g = add nsw i64 %.01628, -1                  ; 2 uses
  %cond = icmp eq i64 %i.g, 0
  br i1 %cond, label %.thread, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.b, %select.unfold
  %.01628.be = phi i64 [ %i.g, %bb.b ], [ 4096, %select.unfold ]
  br label %.preheader, !llvm.loop !349

.critedge:                                        ; preds = %.preheader
  %i.h = icmp eq i64 %.01628, 4096
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  call void @pm_buffer_append_string(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4095) #27
  br label %select.unfold, !llvm.loop !350

bb.d:                                             ; preds = %.critedge
  %i.i = add nsw i64 %.01628, -1                  ; 2 uses
  call void @pm_buffer_append_string(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef %i.i) #27
  switch i64 %i.i, label %bb.h [
    i64 7, label %bb.e
    i64 8, label %bb.f
    i64 9, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.a, align 16
  %i.k = xor i32 %i.j, 1313169247
  %i.l = getelementptr i8, ptr %i.a, i64 3
  %i.m = load i32, ptr %i.l, align 1
  %i.n = xor i32 %i.m, 1600078926
  %i.o = or i32 %i.k, %i.n
  %i.p = icmp ne i32 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.thread25, label %bb.h

bb.f:                                             ; preds = %bb.d
  %lhsv = load i64, ptr %i.a, align 16
  %.not20 = icmp eq i64 %lhsv, 747420810142375775
  br i1 %.not20, label %.thread25, label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.s = load i64, ptr %i.a, align 16
  %i.t = xor i64 %i.s, 963593592256159583
  %i.u = getelementptr i8, ptr %i.a, i64 8
  %i.v = load i8, ptr %i.u, align 8
  %i.w = zext i8 %i.v to i64
  %i.x = xor i64 %i.w, 10
  %i.y = or i64 %i.t, %i.x
  %i.z = icmp ne i64 %i.y, 0
  %i.aa = zext i1 %i.z to i32
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.thread25, label %bb.h

bb.h:                                             ; preds = %.thread, %bb.g, %bb.f, %bb.e, %bb.d
  %i.ac = call i32 %3(ptr noundef %1) #27
  %.not22 = icmp eq i32 %i.ac, 0
  br i1 %.not22, label %select.unfold, label %.thread25

select.unfold:                                    ; preds = %bb.h, %bb.c
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(4096) %i.a, i8 noundef 10, i64 noundef 4096, i1 noundef false) #27
  %i.ad = call ptr %2(ptr noundef nonnull %i.a, i32 noundef 4096, ptr noundef %1) #27
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %.thread25, label %.preheader.backedge

.thread25:                                        ; preds = %select.unfold, %bb.h, %bb.g, %bb.f, %bb.e, %bb.a
  %.2 = phi i1 [ true, %bb.a ], [ false, %bb.g ], [ true, %bb.h ], [ false, %bb.f ], [ false, %bb.e ], [ true, %select.unfold ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  ret i1 %.2
}

declare ptr @pm_buffer_value(ptr noundef) local_unnamed_addr #5

declare i64 @pm_buffer_length(ptr noundef) local_unnamed_addr #5

declare void @pm_node_destroy(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define hidden zeroext i1 @pm_parse_success_p(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %3 = alloca %struct.pm_options, align 8         ; 6 uses
  %4 = alloca %struct.pm_parser, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %3, i8 0, i64 104, i1 false)
  call void @pm_options_read(ptr noundef nonnull %3, ptr noundef %2) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @pm_parser_init(ptr noundef nonnull %4, ptr noundef %0, i64 noundef %1, ptr noundef nonnull %3)
  %i.a = call ptr @pm_parse(ptr noundef nonnull %4)
  call void @pm_node_destroy(ptr noundef nonnull %4, ptr noundef nonnull %i.a) #27
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 472
  %i.c = load i64, ptr %i.b, align 8, !tbaa !140
  %i.d = icmp eq i64 %i.c, 0
  call void @pm_parser_free(ptr noundef nonnull %4)
  call void @pm_options_free(ptr noundef nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  ret i1 %i.d
}

declare void @pm_options_read(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @pm_options_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define hidden void @pm_serialize(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  tail call void @pm_buffer_append_string(ptr noundef %2, ptr noundef nonnull @.str.257, i64 noundef 5) #27
  tail call void @pm_buffer_append_byte(ptr noundef %2, i8 noundef zeroext 1) #27
  tail call void @pm_buffer_append_byte(ptr noundef %2, i8 noundef zeroext 8) #27
  tail call void @pm_buffer_append_byte(ptr noundef %2, i8 noundef zeroext 1) #27
  tail call void @pm_buffer_append_byte(ptr noundef %2, i8 noundef zeroext 0) #27
  tail call void @pm_serialize_content(ptr noundef %0, ptr noundef %1, ptr noundef %2) #27
  tail call void @pm_buffer_append_byte(ptr noundef %2, i8 noundef zeroext 0) #27
  ret void
}

declare void @pm_serialize_content(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @pm_buffer_append_byte(ptr noundef, i8 noundef zeroext) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define hidden void @pm_serialize_parse(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.pm_options, align 8         ; 6 uses
  %5 = alloca %struct.pm_parser, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 0, i64 104, i1 false)
  call void @pm_options_read(ptr noundef nonnull %4, ptr noundef %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @pm_parser_init(ptr noundef nonnull %5, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4)
  %i.a = call ptr @pm_parse(ptr noundef nonnull %5) ; 2 uses
  call void @pm_buffer_append_string(ptr noundef %0, ptr noundef nonnull @.str.257, i64 noundef 5) #27
  call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 1) #27
  call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 8) #27
  call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 1) #27
  call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 0) #27
  call void @pm_serialize_content(ptr noundef nonnull %5, ptr noundef nonnull %i.a, ptr noundef %0) #27
  call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 0) #27
  call void @pm_node_destroy(ptr noundef nonnull %5, ptr noundef nonnull %i.a) #27
  call void @pm_parser_free(ptr noundef nonnull %5)
  call void @pm_options_free(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @pm_serialize_parse_stream(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.pm_parser, align 8          ; 6 uses
  %6 = alloca %struct.pm_options, align 8         ; 6 uses
  %7 = alloca %struct.pm_buffer_t, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %6, i8 0, i64 104, i1 false)
  call void @pm_options_read(ptr noundef nonnull %6, ptr noundef %4) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #27
  %i.a = call ptr @pm_parse_stream(ptr noundef nonnull %5, ptr noundef nonnull %7, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %6) ; 2 uses
  call void @pm_buffer_append_string(ptr noundef %0, ptr noundef nonnull @.str.257, i64 noundef 5) #27
  call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 1) #27
  call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 8) #27
  call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 1) #27
  call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 0) #27
  call void @pm_serialize_content(ptr noundef nonnull %5, ptr noundef nonnull %i.a, ptr noundef %0) #27
  call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 0) #27
  call void @pm_node_destroy(ptr noundef nonnull %5, ptr noundef nonnull %i.a) #27
  call void @pm_buffer_free(ptr noundef nonnull %7) #27
  call void @pm_parser_free(ptr noundef nonnull %5)
  call void @pm_options_free(ptr noundef nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  ret void
}

declare void @pm_buffer_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define hidden void @pm_serialize_parse_comments(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.pm_options, align 8         ; 6 uses
  %5 = alloca %struct.pm_parser, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %4, i8 0, i64 104, i1 false)
  call void @pm_options_read(ptr noundef nonnull %4, ptr noundef %3) #27
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #27
  call void @pm_parser_init(ptr noundef nonnull %5, ptr noundef %1, i64 noundef %2, ptr noundef nonnull %4)
  %i.a = call ptr @pm_parse(ptr noundef nonnull %5)
  call void @pm_buffer_append_string(ptr noundef %0, ptr noundef nonnull @.str.257, i64 noundef 5) #27
  call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 1) #27
  call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 8) #27
  call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 1) #27
  call void @pm_buffer_append_byte(ptr noundef %0, i8 noundef zeroext 0) #27
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 520
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !60
  call void @pm_serialize_encoding(ptr noundef %i.c, ptr noundef %0) #27
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 664
  %i.e = load i32, ptr %i.d, align 8, !tbaa !59
  call void @pm_buffer_append_varsint(ptr noundef %0, i32 noundef %i.e) #27
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 384
  call void @pm_serialize_comment_list(ptr noundef nonnull %5, ptr noundef nonnull %i.f, ptr noundef %0) #27
  call void @pm_node_destroy(ptr noundef nonnull %5, ptr noundef nonnull %i.a) #27
  call void @pm_parser_free(ptr noundef nonnull %5)
  call void @pm_options_free(ptr noundef nonnull %4) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  ret void
}

declare void @pm_serialize_encoding(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @pm_buffer_append_varsint(ptr noundef, i32 noundef) local_unnamed_addr #5

declare void @pm_serialize_comment_list(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 -1, 4) i32 @pm_slice_type(ptr noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #1 {
end_hunk_0
begin_hunk_1_@parse_expression:bb.a
  %.sroa.41.0.copyload = load i8, ptr %.sroa.41.0..sroa_idx, align 4, !tbaa !39
  %i.eg = trunc i8 %.sroa.41.0.copyload to i1
  br i1 %i.eg, label %bb.an, label %pm_call_node_command_p.exit.thread106

bb.an:                                            ; preds = %bb.am
  %.sroa.0.0.copyload = load i32, ptr %i.ef, align 4, !tbaa !31
  %i.eh = icmp ugt i32 %1, %.sroa.0.0.copyload
  br i1 %i.eh, label %pm_call_node_command_p.exit.thread106, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ei = icmp eq i16 %i.aw, 19
  br i1 %i.ei, label %bb.ap, label %context_terminator.exit.thread

bb.ap:                                            ; preds = %bb.ao
  %i.ej = getelementptr i8, ptr %i.av, i64 72
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !197
  %i.el = icmp eq ptr %i.ek, null
  br i1 %i.el, label %bb.aq, label %context_terminator.exit.thread

bb.aq:                                            ; preds = %bb.ap
  %i.em = getelementptr i8, ptr %i.av, i64 128
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !198 ; 2 uses
  %.not121 = icmp eq ptr %i.en, null
  br i1 %.not121, label %pm_call_node_command_p.exit105, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.eo = load i16, ptr %i.en, align 8, !tbaa !115
  %i.ep = icmp eq i16 %i.eo, 12
  br i1 %i.ep, label %pm_call_node_command_p.exit.thread106, label %context_terminator.exit.thread

pm_call_node_command_p.exit105:                   ; preds = %bb.aq
  %i.eq = getelementptr i8, ptr %i.av, i64 88
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !119
  %.not.i103.not = icmp eq ptr %i.er, null
  br i1 %.not.i103.not, label %context_terminator.exit.thread, label %pm_call_node_command_p.exit.thread106

context_terminator.exit.thread:                   ; preds = %bb.ap, %bb.ar, %bb.al, %pm_call_node_command_p.exit105, %bb.ao, %context_terminator.exit
  %i.es = zext i32 %.val99 to i64
  %i.et = getelementptr [12 x i8], ptr @pm_binding_powers, i64 %i.es ; 3 uses
  %.sroa.016.0.copyload = load i32, ptr %i.et, align 4, !tbaa !31 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %.sroa.6.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !39
  %i.eu = icmp ule i32 %1, %.sroa.016.0.copyload
  %i.ev = trunc i8 %.sroa.6.0.copyload to i1
  %i.ew = select i1 %i.eu, i1 %i.ev, i1 false
  br i1 %i.ew, label %bb.j, label %pm_call_node_command_p.exit.thread106, !llvm.loop !423

pm_call_node_command_p.exit.thread106:            ; preds = %bb.k, %bb.m, %bb.o, %bb.x, %bb.w, %context_terminator.exit.thread, %pm_call_node_command_p.exit105, %bb.an, %bb.am, %bb.ar, %pm_call_node_command_p.exit.thread, %bb.h, %bb.c, %bb.d, %pm_call_node_command_p.exit, %pm_symbol_node_label_p.exit, %bb.r, %bb.v, %bb.b
  %.5 = phi ptr [ %i.j, %bb.b ], [ %i.k, %pm_symbol_node_label_p.exit ], [ %i.k, %pm_call_node_command_p.exit ], [ %i.k, %bb.c ], [ %i.k, %bb.d ], [ %i.av, %bb.v ], [ %i.k, %bb.h ], [ %i.av, %bb.r ], [ %i.k, %pm_call_node_command_p.exit.thread ], [ %i.av, %bb.ar ], [ %i.av, %bb.am ], [ %i.av, %bb.an ], [ %i.av, %pm_call_node_command_p.exit105 ], [ %i.av, %context_terminator.exit.thread ], [ %i.av, %bb.w ], [ %i.av, %bb.x ], [ %i.av, %bb.o ], [ %i.av, %bb.m ], [ %i.av, %bb.k ]
  ret ptr %.5
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_statements_node_body_append(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %2, i1 noundef zeroext %3) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24         ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %.not.i = icmp eq i64 %i.b, 0                   ; 2 uses
  %.phi.trans.insert.i = getelementptr i8, ptr %2, i64 8 ; 2 uses
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !133 ; 2 uses
  br i1 %.not.i, label %._crit_edge.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !121
  %i.e = icmp ult ptr %.pre.i, %i.d
  br i1 %i.e, label %._crit_edge.i, label %bb.c

._crit_edge.i:                                    ; preds = %bb.b, %bb.a
  %i.f = getelementptr i8, ptr %1, i64 8
  store ptr %.pre.i, ptr %i.f, align 8, !tbaa !121
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge.i, %bb.b
  %i.g = getelementptr i8, ptr %2, i64 16         ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !134  ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 16         ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !122
  %i.k = icmp ugt ptr %i.h, %i.j
  br i1 %i.k, label %bb.d, label %pm_statements_node_body_update.exit

bb.d:                                             ; preds = %bb.c
  store ptr %i.h, ptr %i.i, align 8, !tbaa !122
  br label %pm_statements_node_body_update.exit

pm_statements_node_body_update.exit:              ; preds = %bb.c, %bb.d
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %pm_statements_node_body_update.exit
  %i.l = getelementptr i8, ptr %1, i64 40
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !104
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %i.b
  %i.o = getelementptr i8, ptr %i.n, i64 -8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !106
  %i.q = load i16, ptr %i.p, align 8, !tbaa !115
  switch i16 %i.q, label %bb.g [
    i16 17, label %bb.f
    i16 107, label %bb.f
    i16 124, label %bb.f
    i16 131, label %bb.f
    i16 132, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e, %bb.e
  %.val = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !133
  %.val11 = load ptr, ptr %i.g, align 8, !tbaa !134
  %i.r = getelementptr i8, ptr %0, i64 448
  %i.s = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.r, ptr noundef %.val, ptr noundef %.val11, i32 noundef range(i32 297, 324) 323) #27 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %pm_statements_node_body_update.exit
  tail call void @pm_node_list_append(ptr noundef nonnull %i.a, ptr noundef nonnull %2) #27
  br i1 %3, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr i8, ptr %2, i64 2          ; 2 uses
  %i.u = load i16, ptr %i.t, align 2, !tbaa !116
  %i.v = or i16 %i.u, 1
  store i16 %i.v, ptr %i.t, align 2, !tbaa !116
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_void_statements_check(ptr noundef %0, ptr nofree noundef nonnull readonly captures(none) %1, i1 noundef zeroext %2) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 24
  %i.b = load i64, ptr %i.a, align 8, !tbaa !103  ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.2, i32 noundef 1338, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_void_statements_check) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %.neg = sext i1 %2 to i64
  %i.c = add i64 %i.b, %.neg                      ; 2 uses
  %.not10 = icmp eq i64 %i.c, 0
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.d = getelementptr i8, ptr %1, i64 40
  br label %bb.d

._crit_edge:                                      ; preds = %bb.d, %bb.c
  ret void

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %.09 = phi i64 [ 0, %.lr.ph ], [ %i.h, %bb.d ]  ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.f = getelementptr [8 x i8], ptr %i.e, i64 %.09
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !106
  tail call fastcc void @pm_void_statement_check(ptr noundef %0, ptr noundef %i.g)
  %i.h = add nuw i64 %.09, 1                      ; 2 uses
  %exitcond.not = icmp eq i64 %i.h, %i.c
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !7
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_missing_node_create(ptr nofree noundef captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #30 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 24) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  store i16 103, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !36
  ret ptr %i.a
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @parse_expression_prefix(ptr noundef %0, i32 noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i32 noundef range(i32 26, 278) %4, i16 noundef zeroext %5) unnamed_addr #8 {
bb.a:
  %6 = alloca %struct.pm_static_literals_t, align 8 ; 5 uses
  %7 = alloca %struct.pm_static_literals_t, align 8 ; 6 uses
  %8 = alloca %struct.pm_token_t, align 8         ; 8 uses
  %9 = alloca %struct.pm_node_list, align 8       ; 7 uses
  %10 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %11 = alloca %struct.pm_token_t, align 8        ; 6 uses
  %12 = alloca %struct.pm_static_literals_t, align 8 ; 5 uses
  %13 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %14 = alloca %struct.pm_token_t, align 8        ; 5 uses
  %15 = alloca %struct.pm_token_t, align 8        ; 4 uses
  %16 = alloca %struct.pm_token_t, align 8        ; 4 uses
  %17 = alloca %struct.pm_arguments_t, align 8    ; 5 uses
  %18 = alloca %struct.pm_token_t, align 8        ; 4 uses
  %19 = alloca %struct.pm_token_t, align 8        ; 5 uses
  %20 = alloca %struct.pm_token_t, align 8        ; 6 uses
  %21 = alloca %struct.pm_arguments_t, align 8    ; 11 uses
  %22 = alloca %struct.pm_arguments_t, align 8    ; 5 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %23 = alloca %struct.pm_token_t, align 8        ; 11 uses
  %24 = alloca %struct.pm_token_t, align 8        ; 8 uses
  %25 = alloca %struct.pm_string_t, align 8       ; 2 uses
  %26 = alloca %struct.pm_string_t, align 8       ; 2 uses
  %27 = alloca %struct.pm_node_list, align 8      ; 7 uses
  %28 = alloca %struct.pm_token_t, align 8        ; 5 uses
  %29 = alloca %struct.pm_token_t, align 8        ; 12 uses
  %30 = alloca %struct.pm_node_list, align 8      ; 6 uses
  %31 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %32 = alloca %struct.pm_static_literals_t, align 8 ; 5 uses
  %33 = alloca %struct.pm_constant_id_list_t, align 8 ; 5 uses
  %34 = alloca %struct.pm_token_t, align 8        ; 4 uses
  %35 = alloca %struct.pm_token_t, align 8        ; 6 uses
  %36 = alloca %struct.pm_node_list, align 8      ; 5 uses
  %37 = alloca %struct.pm_node_list, align 8      ; 5 uses
  %38 = alloca %struct.pm_token_t, align 8        ; 6 uses
  %39 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %40 = alloca %struct.pm_arguments_t, align 8    ; 5 uses
  %41 = alloca %struct.pm_token_t, align 8        ; 5 uses
  %42 = alloca %struct.pm_arguments_t, align 8    ; 8 uses
  %43 = alloca %struct.pm_token_t, align 8        ; 4 uses
  %44 = alloca %struct.pm_arguments_t, align 8    ; 8 uses
  %45 = alloca %struct.pm_token_t, align 8        ; 21 uses
  %46 = alloca %struct.pm_node_list, align 8      ; 6 uses
  %47 = alloca %struct.pm_constant_id_list_t, align 8 ; 4 uses
  %48 = alloca %struct.pm_token_t, align 8        ; 9 uses
  %49 = alloca %struct.pm_constant_id_list_t, align 8 ; 4 uses
  %50 = alloca %struct.pm_node_list, align 8      ; 5 uses
  %51 = alloca %struct.pm_token_t, align 8        ; 11 uses
  %52 = alloca %struct.pm_token_t, align 8        ; 10 uses
  %53 = alloca %struct.pm_token_t, align 8        ; 18 uses
  %54 = alloca %struct.pm_token_t, align 8        ; 19 uses
  %55 = alloca %struct.pm_token_t, align 8        ; 4 uses
  %56 = alloca %struct.pm_token_t, align 8        ; 13 uses
  %57 = alloca %struct.pm_token_t, align 8        ; 12 uses
  %58 = alloca %struct.pm_token_t, align 8        ; 8 uses
  %59 = alloca %struct.pm_token_t, align 8        ; 8 uses
  %60 = alloca %struct.pm_constant_id_list_t, align 8 ; 4 uses
  %61 = alloca %struct.pm_token_t, align 8        ; 12 uses
  %62 = alloca %struct.pm_token_t, align 8        ; 16 uses
  %63 = alloca %struct.pm_token_t, align 8        ; 6 uses
  %64 = alloca %struct.pm_token_t, align 8        ; 9 uses
  %65 = alloca %struct.pm_token_t, align 8        ; 4 uses
  %66 = alloca %struct.pm_token_t, align 8        ; 8 uses
  %67 = alloca %struct.pm_token_t, align 8        ; 4 uses
  %68 = alloca %struct.pm_arguments_t, align 8    ; 7 uses
  %69 = alloca %struct.pm_node_list, align 8      ; 6 uses
  %70 = alloca %struct.pm_token_t, align 8        ; 15 uses
  %71 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %72 = alloca %struct.pm_token_t, align 8        ; 4 uses
  %73 = alloca %struct.pm_constant_id_list_t, align 8 ; 4 uses
  %74 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %75 = alloca %struct.pm_token_t, align 8        ; 8 uses
  %76 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %77 = alloca %struct.pm_token_t, align 8        ; 8 uses
  %78 = alloca %struct.pm_token_t, align 8        ; 6 uses
  %79 = alloca %struct.pm_token_t, align 8        ; 9 uses
  %80 = alloca %struct.pm_token_t, align 8        ; 9 uses
  %81 = alloca %struct.pm_token_t, align 8        ; 10 uses
  %82 = alloca %struct.pm_token_t, align 8        ; 6 uses
  %83 = alloca %struct.pm_token_t, align 8        ; 9 uses
  %84 = alloca %struct.pm_token_t, align 8        ; 9 uses
  %85 = alloca %struct.pm_token_t, align 8        ; 8 uses
  %86 = alloca %struct.pm_token_t, align 8        ; 6 uses
  %87 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %88 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %89 = alloca %struct.pm_token_t, align 8        ; 10 uses
  %90 = alloca %struct.pm_token_t, align 8        ; 6 uses
  %91 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %92 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %93 = alloca %struct.pm_token_t, align 8        ; 8 uses
  %94 = alloca %struct.pm_token_t, align 8        ; 9 uses
  %95 = alloca %struct.pm_string_t, align 8       ; 7 uses
  %96 = alloca %struct.pm_token_t, align 8        ; 5 uses
  %97 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %98 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %99 = alloca %struct.pm_token_t, align 8        ; 10 uses
  %100 = alloca %struct.pm_token_t, align 8       ; 12 uses
  %101 = alloca %struct.pm_string_t, align 8      ; 6 uses
  %102 = alloca %struct.pm_token_t, align 8       ; 5 uses
  %103 = alloca %struct.pm_token_t, align 8       ; 7 uses
  %104 = alloca %struct.pm_token_t, align 8       ; 7 uses
  %105 = alloca %struct.pm_token_t, align 8       ; 4 uses
  %106 = alloca %struct.pm_token_t, align 8       ; 4 uses
  %107 = alloca %struct.pm_token_t, align 8       ; 4 uses
  %108 = alloca %struct.pm_token_t, align 8       ; 4 uses
  %109 = alloca %struct.pm_token_t, align 8       ; 5 uses
  %110 = alloca %struct.pm_token_t, align 8       ; 5 uses
  %111 = alloca %struct.pm_token_t, align 8       ; 11 uses
  %112 = alloca %struct.pm_token_t, align 8       ; 5 uses
  %113 = alloca %struct.pm_token_t, align 8       ; 7 uses
  %114 = alloca %struct.pm_token_t, align 8       ; 9 uses
  %115 = alloca %struct.pm_constant_id_list_t, align 8 ; 4 uses
  %116 = alloca %struct.pm_token_t, align 8       ; 4 uses
  %i.b = getelementptr i8, ptr %0, i64 344        ; 164 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !154  ; 6 uses
  switch i32 %i.c, label %bb.zx [
    i32 30, label %bb.b
    i32 124, label %bb.aq
    i32 125, label %bb.aq
    i32 28, label %bb.ch
    i32 36, label %bb.cn
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
  %i.g = load i32, ptr %i.f, align 8, !tbaa !31
  %i.h = shl i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 8, !tbaa !31
  %i.i = getelementptr i8, ptr %i.e, i64 24       ; 3 uses
  %i.j = getelementptr i8, ptr %0, i64 336        ; 5 uses
  %i.k = getelementptr i8, ptr %0, i64 472        ; 8 uses
  %i.l = getelementptr i8, ptr %0, i64 328        ; 5 uses
  %i.m = getelementptr i8, ptr %0, i64 496
  %i.n = add i16 %5, 1                            ; 5 uses
  %i.o = getelementptr i8, ptr %0, i64 352        ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 360        ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 304
  %.sroa.43239.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 4
  %.sroa.53240.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.63241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.r = getelementptr i8, ptr %i.e, i64 48
  %i.s = getelementptr i8, ptr %i.e, i64 8
end_hunk_1
begin_hunk_2_@parse_expression_prefix:bb.a
  br i1 %i.gp, label %bb.bz, label %.loopexit3337

bb.bz:                                            ; preds = %bb.by
  store i8 0, ptr %i.fu, align 1, !tbaa !179
  br label %.loopexit3337

bb.ca:                                            ; preds = %pm_statements_node_body_append.exit
  %i.gq = load i16, ptr %i.fw, align 8, !tbaa !115
  %i.gr = icmp eq i16 %i.gq, 103
  br i1 %i.gr, label %.loopexit3337, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %.val.i2386 = load i32, ptr %i.b, align 8, !tbaa !154 ; 2 uses
  switch i32 %.val.i2386, label %bb.cc [
    i32 17, label %accept2.exit.preheader
    i32 14, label %accept2.exit.preheader
    i32 15, label %.loopexit3337
    i32 1, label %.backedge3733
  ]

.backedge3733:                                    ; preds = %accept2.exit, %bb.cb, %bb.cc
  br label %bb.bs

accept2.exit.preheader:                           ; preds = %bb.cb, %bb.cb
  br label %accept2.exit

accept2.exit:                                     ; preds = %accept2.exit.backedge, %accept2.exit.preheader
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i2387 = load i32, ptr %i.b, align 8, !tbaa !154
  switch i32 %.val.i2387, label %.backedge3733 [
    i32 17, label %accept2.exit.backedge
    i32 14, label %accept2.exit.backedge
    i32 15, label %.loopexit3337
  ]

accept2.exit.backedge:                            ; preds = %accept2.exit, %accept2.exit
  br label %accept2.exit

bb.cc:                                            ; preds = %bb.cb
  %i.gs = load ptr, ptr %.sroa.43236.0..sroa_idx, align 8, !tbaa !151
  %i.gt = load ptr, ptr %.sroa.83237.0..sroa_idx, align 8, !tbaa !87
  %i.gu = call ptr @pm_token_type_human(i32 noundef %.val.i2386) #27
  %i.gv = call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.fv, ptr noundef %i.gs, ptr noundef %i.gt, i32 noundef 90, ptr noundef %i.gu) #27 ; 0 uses
  br label %.backedge3733

.loopexit3337:                                    ; preds = %bb.ca, %bb.cb, %accept2.exit, %bb.by, %bb.bz
  %i.gw = load ptr, ptr %i.dn, align 8, !tbaa !178 ; 2 uses
  %i.gx = getelementptr i8, ptr %i.gw, i64 8
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !182
  call void @free(ptr noundef %i.gw) #27
  store ptr %i.gy, ptr %i.dn, align 8, !tbaa !178
  %i.gz = load i32, ptr %i.df, align 8, !tbaa !31
  %i.ha = lshr i32 %i.gz, 1
  store i32 %i.ha, ptr %i.df, align 8, !tbaa !31
  call fastcc void @expect1(ptr noundef nonnull %0, i32 noundef 15, i32 noundef 110)
  %i.hb = load ptr, ptr %i.fs, align 8, !tbaa !104
  %i.hc = load i64, ptr %i.fp, align 8, !tbaa !103
  %i.hd = getelementptr [8 x i8], ptr %i.hb, i64 %i.hc
  %i.he = getelementptr i8, ptr %i.hd, i64 -8
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !106 ; 3 uses
  %i.hg = load i16, ptr %i.hf, align 8, !tbaa !115 ; 2 uses
  %i.hh = icmp eq i16 %i.hg, 139
  br i1 %i.hh, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.loopexit3337
  %i.hi = call fastcc ptr @pm_multi_target_node_create(ptr noundef nonnull %0) ; 4 uses
  call fastcc void @pm_multi_target_node_targets_append(ptr noundef nonnull %0, ptr noundef %i.hi, ptr noundef nonnull %i.hf)
  %i.hj = load ptr, ptr %i.fs, align 8, !tbaa !104
  %i.hk = load i64, ptr %i.fp, align 8, !tbaa !103
  %i.hl = getelementptr [8 x i8], ptr %i.hj, i64 %i.hk
  %i.hm = getelementptr i8, ptr %i.hl, i64 -8
  store ptr %i.hi, ptr %i.hm, align 8, !tbaa !106
  %.pr = load i16, ptr %i.hi, align 8, !tbaa !115
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %.loopexit3337
  %i.hn = phi i16 [ %.pr, %bb.cd ], [ %i.hg, %.loopexit3337 ]
  %.01906 = phi ptr [ %i.hi, %bb.cd ], [ %i.hf, %.loopexit3337 ] ; 2 uses
  %i.ho = icmp eq i16 %i.hn, 105
  br i1 %i.ho, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.hp = getelementptr i8, ptr %.01906, i64 16
  %i.hq = load ptr, ptr %i.hp, align 8, !tbaa !134 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  store i32 50, ptr %10, align 8, !tbaa !126
  %i.hr = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i32 0, ptr %i.hr, align 4
  %i.hs = getelementptr inbounds nuw i8, ptr %10, i64 8
  store ptr %i.hq, ptr %i.hs, align 8, !tbaa !127
  %i.ht = getelementptr inbounds nuw i8, ptr %10, i64 16
  store ptr %i.hq, ptr %i.ht, align 8, !tbaa !128
  %i.hu = call fastcc ptr @pm_missing_node_create(ptr noundef nonnull %0, ptr noundef %i.hq, ptr noundef %i.hq)
  %i.hv = call fastcc ptr @pm_multi_write_node_create(ptr noundef nonnull %0, ptr noundef nonnull %.01906, ptr noundef %10, ptr noundef nonnull %i.hu) ; 3 uses
  %i.hw = load ptr, ptr %i.fs, align 8, !tbaa !104
  %i.hx = load i64, ptr %i.fp, align 8, !tbaa !103
  %i.hy = getelementptr [8 x i8], ptr %i.hw, i64 %i.hx
  %i.hz = getelementptr i8, ptr %i.hy, i64 -8
  store ptr %i.hv, ptr %i.hz, align 8, !tbaa !106
  %i.ia = getelementptr i8, ptr %i.hv, i64 8
  %.val2177 = load ptr, ptr %i.ia, align 8, !tbaa !133
  %i.ib = getelementptr i8, ptr %i.hv, i64 16
  %.val2178 = load ptr, ptr %i.ib, align 8, !tbaa !134
  %i.ic = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.fv, ptr noundef %.val2177, ptr noundef %.val2178, i32 noundef 294) #27 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce
  call fastcc void @pop_block_exits(ptr noundef nonnull %0, ptr noundef %i.dc)
  call void @pm_node_list_free(ptr noundef nonnull %9) #27
  call fastcc void @pm_void_statements_check(ptr noundef nonnull %0, ptr noundef %i.fi, i1 noundef zeroext true)
  %i.id = getelementptr i8, ptr %0, i64 320
  %i.ie = call fastcc ptr @pm_parentheses_node_create(ptr noundef nonnull %0, ptr %.sroa.43236.0.copyload, ptr %.sroa.83237.0.copyload, ptr noundef nonnull %i.fi, ptr noundef %i.id, i16 noundef zeroext %i.fh)
  br label %context_p.exit

context_p.exit:                                   ; preds = %.lr.ph.i, %bb.bk, %bb.bk, %bb.bm, %bb.cg, %context_p.exit2376, %bb.bl, %bb.bj, %bb.at
  %.1 = phi ptr [ %i.de, %bb.at ], [ %i.ie, %bb.cg ], [ %i.fe, %bb.bm ], [ %.01903, %context_p.exit2376 ], [ %.01903, %bb.bk ], [ %.01903, %bb.bl ], [ %.01903, %bb.bj ], [ %.01903, %bb.bk ], [ %.01903, %.lr.ph.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #27
  br label %.loopexit3339

bb.ch:                                            ; preds = %bb.a
  %i.if = getelementptr i8, ptr %0, i64 512       ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !210 ; 2 uses
  store ptr null, ptr %i.if, align 8, !tbaa !210
  %i.ih = getelementptr i8, ptr %0, i64 24        ; 4 uses
  %i.ii = load i32, ptr %i.ih, align 8, !tbaa !31
  %i.ij = shl i32 %i.ii, 1
  store i32 %i.ij, ptr %i.ih, align 8, !tbaa !31
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  %i.ik = getelementptr i8, ptr %0, i64 320
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, ptr noundef nonnull align 8 dereferenceable(24) %i.ik, i64 24, i1 false), !tbaa.struct !149
  %i.il = getelementptr inbounds nuw i8, ptr %11, i64 8
  %.val2246 = load ptr, ptr %i.il, align 8
  %i.im = getelementptr inbounds nuw i8, ptr %11, i64 16
  %.val2247 = load ptr, ptr %i.im, align 8
  %i.in = tail call fastcc ptr @pm_hash_node_create(ptr noundef nonnull %0, ptr %.val2246, ptr %.val2247) ; 5 uses
  %.val2151 = load i32, ptr %i.b, align 8, !tbaa !154
  %i.io = add i32 %.val2151, -1
  %i.ip = icmp ult i32 %i.io, 2
  br i1 %i.ip, label %accept1.exit2392, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  %.not2033 = icmp eq ptr %i.ig, null
  br i1 %.not2033, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.iq = add i16 %5, 1
  %i.ir = tail call fastcc zeroext i1 @parse_assocs(ptr noundef nonnull %0, ptr noundef %i.ig, ptr noundef %i.in, i16 noundef zeroext %i.iq) ; 0 uses
  br label %bb.cl

bb.ck:                                            ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %12, i8 0, i64 128, i1 false)
  %i.is = add i16 %5, 1
  %i.it = call fastcc zeroext i1 @parse_assocs(ptr noundef nonnull %0, ptr noundef %12, ptr noundef %i.in, i16 noundef zeroext %i.is) ; 0 uses
  call void @pm_static_literals_free(ptr noundef nonnull %12) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.val.i2391 = load i32, ptr %i.b, align 8, !tbaa !154
  %i.iu = icmp eq i32 %.val.i2391, 14
  br i1 %i.iu, label %bb.cm, label %accept1.exit2392

bb.cm:                                            ; preds = %bb.cl
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %accept1.exit2392

accept1.exit2392:                                 ; preds = %bb.ch, %bb.cm, %bb.cl
  %i.iv = load i32, ptr %i.ih, align 8, !tbaa !31
  %i.iw = lshr i32 %i.iv, 1
  store i32 %i.iw, ptr %i.ih, align 8, !tbaa !31
  call fastcc void @expect1_opening(ptr noundef nonnull %0, i32 noundef 2, i32 noundef 135, ptr noundef %11)
  %i.ix = getelementptr i8, ptr %0, i64 328
  %i.iy = getelementptr i8, ptr %0, i64 336
  %i.iz = getelementptr i8, ptr %i.in, i64 16
  %i.ja = getelementptr i8, ptr %i.in, i64 64
  %.val2249 = load ptr, ptr %i.iy, align 8, !tbaa !128
  %i.jb = load <2 x ptr>, ptr %i.ix, align 8, !tbaa !36
  store ptr %.val2249, ptr %i.iz, align 8, !tbaa !475
  store <2 x ptr> %i.jb, ptr %i.ja, align 8, !tbaa !36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %.loopexit3339

bb.cn:                                            ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  %i.jc = getelementptr i8, ptr %0, i64 304
  %.val2232 = load ptr, ptr %i.jc, align 8, !tbaa !86 ; 2 uses
  store i32 164, ptr %13, align 8, !tbaa !126, !alias.scope !476
  %i.jd = getelementptr inbounds nuw i8, ptr %13, i64 4
  store i32 0, ptr %i.jd, align 4, !alias.scope !476
  %i.je = getelementptr inbounds nuw i8, ptr %13, i64 8
  store ptr %.val2232, ptr %i.je, align 8, !tbaa !127, !alias.scope !476
  %i.jf = getelementptr inbounds nuw i8, ptr %13, i64 16
  store ptr %.val2232, ptr %i.jf, align 8, !tbaa !128, !alias.scope !476
  store i32 147, ptr %14, align 8, !tbaa !126
  %i.jg = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i32 0, ptr %i.jg, align 4
  %i.jh = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.ji = getelementptr i8, ptr %0, i64 352       ; 2 uses
  %117 = getelementptr inbounds nuw i8, ptr %14, i64 16
  store i32 148, ptr %15, align 8, !tbaa !126
  %i.jj = getelementptr inbounds nuw i8, ptr %15, i64 4
  store i32 0, ptr %i.jj, align 4
  %i.jk = getelementptr inbounds nuw i8, ptr %15, i64 8
  %118 = load <2 x ptr>, ptr %i.ji, align 8, !tbaa !36
  %119 = load ptr, ptr %i.ji, align 8, !tbaa !151 ; 2 uses
  store ptr %119, ptr %i.jh, align 8, !tbaa !127
  %i.jl = getelementptr i8, ptr %119, i64 1
  %120 = getelementptr i8, <2 x ptr> %118, <2 x i64> <i64 1, i64 0>
  store ptr %i.jl, ptr %117, align 8, !tbaa !128
  store <2 x ptr> %120, ptr %i.jk, align 8, !tbaa !36
  %i.jm = call fastcc ptr @pm_string_node_create_current_string(ptr noundef nonnull %0, ptr noundef %14, ptr noundef nonnull %15, ptr noundef %13) ; 3 uses
  %i.jn = getelementptr i8, ptr %0, i64 672
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !168 ; 2 uses
  %.not.i2394 = icmp eq ptr %i.jo, null
  br i1 %.not.i2394, label %bb.cq, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.jp = icmp eq ptr %i.jo, @pm_encodings
  br i1 %i.jp, label %parse_unescaped_encoding.exit, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  %i.jq = getelementptr i8, ptr %0, i64 520
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !60
  %i.js = icmp eq ptr %i.jr, getelementptr inbounds nuw (i8, ptr @pm_encodings, i64 48)
  br i1 %i.js, label %parse_unescaped_encoding.exit, label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.cn
  br label %parse_unescaped_encoding.exit

parse_unescaped_encoding.exit:                    ; preds = %bb.co, %bb.cp, %bb.cq
  %.0.i2395 = phi i16 [ 0, %bb.cq ], [ 4, %bb.co ], [ 8, %bb.cp ]
  %i.jt = getelementptr i8, ptr %i.jm, i64 2      ; 2 uses
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !116
  %i.jv = or i16 %i.ju, %.0.i2395
  store i16 %i.jv, ptr %i.jt, align 2, !tbaa !116
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val2121 = load i32, ptr %i.b, align 8, !tbaa !154
  %i.jw = icmp eq i32 %.val2121, 147
  br i1 %i.jw, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %parse_unescaped_encoding.exit
  %i.jx = add i16 %5, 1
  %i.jy = tail call fastcc ptr @parse_strings(ptr noundef nonnull %0, ptr noundef nonnull %i.jm, i1 noundef zeroext false, i16 noundef zeroext %i.jx)
  br label %bb.cs

bb.cs:                                            ; preds = %parse_unescaped_encoding.exit, %bb.cr
  %.2 = phi ptr [ %i.jy, %bb.cr ], [ %i.jm, %parse_unescaped_encoding.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #27
  br label %.loopexit3339

bb.ct:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.jz = getelementptr i8, ptr %0, i64 320
  %i.ka = tail call fastcc ptr @pm_class_variable_read_node_create(ptr noundef nonnull %0, ptr noundef %i.jz) ; 3 uses
  %i.kb = icmp eq i32 %1, 2
  br i1 %i.kb, label %bb.cu, label %.loopexit3339

bb.cu:                                            ; preds = %bb.ct
  %.val2120 = load i32, ptr %i.b, align 8, !tbaa !154
  %i.kc = icmp eq i32 %.val2120, 3
  br i1 %i.kc, label %bb.cv, label %.loopexit3339

bb.cv:                                            ; preds = %bb.cu
  %i.kd = add i16 %5, 1
  %i.ke = tail call fastcc ptr @parse_targets_validate(ptr noundef nonnull %0, ptr noundef nonnull %i.ka, i16 noundef zeroext %i.kd)
  br label %.loopexit3339

bb.cw:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #27
  %i.kf = getelementptr i8, ptr %0, i64 320       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, ptr noundef nonnull align 8 dereferenceable(24) %i.kf, i64 24, i1 false), !tbaa.struct !149
  %.val2119 = load i32, ptr %i.b, align 8, !tbaa !154 ; 3 uses
  %i.kg = icmp eq i32 %.val2119, 124
  br i1 %i.kg, label %bb.db, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  br i1 %2, label %bb.cy, label %bb.da

bb.cy:                                            ; preds = %bb.cx
  %i.kh = tail call fastcc zeroext i1 @token_begins_expression_p(i32 noundef %.val2119)
  br i1 %i.kh, label %bb.db, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %.val2163 = load i32, ptr %i.b, align 8, !tbaa !154 ; 2 uses
  switch i32 %.val2163, label %bb.da [
    i32 160, label %bb.db
    i32 159, label %bb.db
    i32 152, label %bb.db
  ]

bb.da:                                            ; preds = %bb.cz, %bb.cx
  %.val2117.pr = phi i32 [ %.val2163, %bb.cz ], [ %.val2119, %bb.cx ] ; 2 uses
  %i.ki = getelementptr i8, ptr %0, i64 24
  %.val2251 = load i32, ptr %i.ki, align 8, !tbaa !31
  %i.kj = trunc i32 %.val2251 to i1
  %.not3612 = xor i1 %i.kj, true
  %i.kk = icmp eq i32 %.val2117.pr, 5
  %or.cond3613 = and i1 %i.kk, %.not3612
  %i.kl = icmp eq i32 %.val2117.pr, 28
  %or.cond3614 = or i1 %or.cond3613, %i.kl
  br i1 %or.cond3614, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cz, %bb.cz, %bb.cy, %bb.cw
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #27
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %17, i8 0, i64 56, i1 false)
  %i.km = add i16 %5, 1
  %i.kn = call fastcc zeroext i1 @parse_arguments_list(ptr noundef nonnull %0, ptr noundef %17, i1 noundef zeroext true, i1 noundef zeroext %2, i16 noundef zeroext %i.km) ; 0 uses
  %i.ko = call fastcc ptr @pm_call_node_fcall_create(ptr noundef nonnull %0, ptr noundef %16, ptr noundef %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #27
  br label %bb.df

bb.dc:                                            ; preds = %bb.da
  %i.kp = tail call fastcc ptr @pm_constant_read_node_create(ptr noundef nonnull %0, ptr noundef nonnull %i.kf) ; 3 uses
  %i.kq = icmp eq i32 %1, 2
  br i1 %i.kq, label %bb.dd, label %bb.df

bb.dd:                                            ; preds = %bb.dc
  %.val2116 = load i32, ptr %i.b, align 8, !tbaa !154
  %i.kr = icmp eq i32 %.val2116, 3
  br i1 %i.kr, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.ks = add i16 %5, 1
  %i.kt = tail call fastcc ptr @parse_targets_validate(ptr noundef nonnull %0, ptr noundef nonnull %i.kp, i16 noundef zeroext %i.ks)
  br label %bb.df

bb.df:                                            ; preds = %bb.dc, %bb.dd, %bb.de, %bb.db
  %.3 = phi ptr [ %i.ko, %bb.db ], [ %i.kt, %bb.de ], [ %i.kp, %bb.dd ], [ %i.kp, %bb.dc ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #27
  br label %.loopexit3339

bb.dg:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #27
  %i.ku = getelementptr i8, ptr %0, i64 320       ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %i.ku, i64 24, i1 false), !tbaa.struct !149
  tail call fastcc void @expect1(ptr noundef nonnull %0, i32 noundef 41, i32 noundef 61)
  %i.kv = call fastcc ptr @pm_constant_path_node_create(ptr noundef nonnull %0, ptr noundef null, ptr noundef %18, ptr noundef nonnull %i.ku) ; 3 uses
  %i.kw = icmp eq i32 %1, 2
  br i1 %i.kw, label %bb.dh, label %bb.dj

bb.dh:                                            ; preds = %bb.dg
  %.val2115 = load i32, ptr %i.b, align 8, !tbaa !154
  %i.kx = icmp eq i32 %.val2115, 3
  br i1 %i.kx, label %bb.di, label %bb.dj

bb.di:                                            ; preds = %bb.dh
  %i.ky = add i16 %5, 1
  %i.kz = tail call fastcc ptr @parse_targets_validate(ptr noundef nonnull %0, ptr noundef nonnull %i.kv, i16 noundef zeroext %i.ky)
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh, %bb.dg
  %.01909 = phi ptr [ %i.kz, %bb.di ], [ %i.kv, %bb.dh ], [ %i.kv, %bb.dg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #27
  br label %.loopexit3339

bb.dk:                                            ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !tbaa.struct !149
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.la = load i32, ptr %19, align 8, !tbaa !126
  %i.lb = zext i32 %i.la to i64
  %i.lc = getelementptr [12 x i8], ptr @pm_binding_powers, i64 %i.lb
  %i.ld = load i32, ptr %i.lc, align 4, !tbaa !196
  %i.le = add i16 %5, 1
  %i.lf = tail call fastcc ptr @parse_expression(ptr noundef nonnull %0, i32 noundef %i.ld, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 96, i16 noundef zeroext %i.le)
  %.val2150 = load i32, ptr %i.b, align 8, !tbaa !154
  %i.lg = add i32 %.val2150, -43
  %i.lh = icmp ult i32 %i.lg, 2
  br i1 %i.lh, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.li = getelementptr i8, ptr %0, i64 352
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !151
  %i.lk = getelementptr i8, ptr %0, i64 360
  %i.ll = load ptr, ptr %i.lk, align 8, !tbaa !87
  %i.lm = getelementptr i8, ptr %0, i64 472
  %i.ln = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.lm, ptr noundef %i.lj, ptr noundef %i.ll, i32 noundef 285) #27 ; 0 uses
  br label %bb.dm

bb.dm:                                            ; preds = %bb.dk, %bb.dl
  %i.lo = call fastcc ptr @pm_range_node_create(ptr noundef nonnull %0, ptr noundef null, ptr noundef %19, ptr noundef %i.lf)
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #27
  br label %.loopexit3339

bb.dn:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.lp = getelementptr i8, ptr %0, i64 320
  %i.lq = tail call fastcc ptr @pm_float_node_create(ptr noundef nonnull %0, ptr noundef %i.lp)
  br label %.loopexit3339

bb.do:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.lr = getelementptr i8, ptr %0, i64 320
  %i.ls = tail call fastcc ptr @pm_float_node_imaginary_create(ptr noundef nonnull %0, ptr noundef %i.lr)
  br label %.loopexit3339

bb.dp:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.lt = getelementptr i8, ptr %0, i64 320
  %i.lu = tail call fastcc ptr @pm_float_node_rational_create(ptr noundef nonnull %0, ptr noundef %i.lt)
  br label %.loopexit3339

bb.dq:                                            ; preds = %bb.a
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.lv = getelementptr i8, ptr %0, i64 320
  %i.lw = tail call fastcc ptr @pm_float_node_rational_imaginary_create(ptr noundef nonnull %0, ptr noundef %i.lv)
  br label %.loopexit3339

end_hunk_2
begin_hunk_3_@parse_method_definition_name:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load <2 x ptr>, ptr %i.l, align 8, !tbaa !36
  store <2 x ptr> %i.t, ptr %i.s, align 8, !tbaa !36
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @pm_refute_numbered_parameter(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #8 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.b, label %pm_token_is_numbered_parameter.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %1, align 1, !tbaa !83
  %i.f = icmp eq i8 %i.e, 95
  br i1 %i.f, label %bb.c, label %pm_token_is_numbered_parameter.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %1, i64 1
  %i.h = load i8, ptr %i.g, align 1, !tbaa !83    ; 2 uses
  %.not.i = icmp eq i8 %i.h, 48
  br i1 %.not.i, label %pm_token_is_numbered_parameter.exit.thread, label %pm_token_is_numbered_parameter.exit

pm_token_is_numbered_parameter.exit:              ; preds = %bb.c
  %i.i = tail call zeroext i1 @pm_char_is_decimal_digit(i8 noundef zeroext %i.h) #27
  br i1 %i.i, label %bb.d, label %pm_token_is_numbered_parameter.exit.thread

bb.d:                                             ; preds = %pm_token_is_numbered_parameter.exit
  %i.j = getelementptr i8, ptr %0, i64 472
  %i.k = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.j, ptr noundef nonnull %1, ptr noundef %2, i32 noundef 213, ptr noundef nonnull %1) #27 ; 0 uses
  br label %pm_token_is_numbered_parameter.exit.thread

pm_token_is_numbered_parameter.exit.thread:       ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %pm_token_is_numbered_parameter.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_nil_node_create(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 90
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.175, ptr noundef nonnull @.str.2, i32 noundef 5496, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_nil_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #30 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 24) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8
  store i16 108, ptr %i.c, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 2, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !36
  store <2 x ptr> %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_self_node_create(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 97
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.176, ptr noundef nonnull @.str.2, i32 noundef 6084, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_self_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #30 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 24) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8
  store i16 133, ptr %i.c, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !36
  store <2 x ptr> %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_true_node_create(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 99
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.177, ptr noundef nonnull @.str.2, i32 noundef 6754, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_true_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #30 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 24) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8
  store i16 144, ptr %i.c, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 2, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !36
  store <2 x ptr> %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_false_node_create(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 84
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.178, ptr noundef nonnull @.str.2, i32 noundef 3759, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_false_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(24) ptr @calloc(i64 noundef 1, i64 noundef 24) #30 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 24) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8
  store i16 51, ptr %i.c, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 2, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load <2 x ptr>, ptr %i.i, align 8, !tbaa !36
  store <2 x ptr> %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !36
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef ptr @parse_parameters(ptr noundef %0, i32 noundef range(i32 14, 49) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, i1 noundef zeroext %6, i32 noundef range(i32 17, 20) %7, i16 noundef zeroext %8) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 14 uses
  %9 = alloca %struct.pm_token_t, align 8         ; 9 uses
  %10 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %11 = alloca %struct.pm_token_t, align 8        ; 7 uses
  %12 = alloca %struct.pm_token_t, align 8        ; 9 uses
  %13 = alloca %struct.pm_token_t, align 8        ; 6 uses
  %14 = alloca %struct.pm_token_t, align 8        ; 9 uses
  %i.b = getelementptr i8, ptr %0, i64 20         ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !31
  %i.d = shl i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !31
  %i.e = tail call noalias dereferenceable_or_null(144) ptr @calloc(i64 noundef 1, i64 noundef 144) #30 ; 14 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %pm_parameters_node_create.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.h = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.g, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 144) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_parameters_node_create.exit:                   ; preds = %bb.a
  %i.i = load i32, ptr %0, align 8, !tbaa !109
  %i.j = add i32 %i.i, 1                          ; 2 uses
  store i32 %i.j, ptr %0, align 8, !tbaa !109
  store i16 115, ptr %i.e, align 8, !tbaa !110
  %.sroa.31.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  store i32 %i.j, ptr %.sroa.31.0..sroa_idx.i, align 4, !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  store i32 8, ptr %i.a, align 4, !tbaa !31
  %i.k = getelementptr i8, ptr %0, i64 344        ; 16 uses
  %i.l = getelementptr i8, ptr %0, i64 320        ; 12 uses
  %i.m = getelementptr i8, ptr %0, i64 304        ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.n = getelementptr i8, ptr %0, i64 496        ; 13 uses
  %i.o = getelementptr i8, ptr %0, i64 576        ; 17 uses
  %.sroa.7.0.in19.i454 = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.9.0.in21.i473 = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 328        ; 10 uses
  %i.q = getelementptr i8, ptr %0, i64 336        ; 7 uses
  %i.r = getelementptr i8, ptr %0, i64 472        ; 16 uses
  %i.s = getelementptr i8, ptr %i.e, i64 128      ; 4 uses
  %i.t = getelementptr i8, ptr %i.e, i64 8        ; 31 uses
  %i.u = getelementptr i8, ptr %i.e, i64 16       ; 5 uses
  %i.v = getelementptr i8, ptr %i.e, i64 80       ; 8 uses
  %.sroa.4500.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 4
  %.sroa.5501.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %.sroa.6502.0..sroa_idx = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.w = getelementptr i8, ptr %i.e, i64 72       ; 4 uses
  %or.cond = or i1 %2, %6
  %i.x = getelementptr i8, ptr %0, i64 701        ; 4 uses
  %i.y = getelementptr i8, ptr %0, i64 504        ; 12 uses
  %.sroa.11.0..sroa_idx515 = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.z = getelementptr i8, ptr %0, i64 699
  %i.aa = getelementptr i8, ptr %0, i64 520
  %i.ab = getelementptr i8, ptr %i.e, i64 104     ; 2 uses
  %i.ac = getelementptr i8, ptr %0, i64 688       ; 4 uses
  %i.ad = getelementptr i8, ptr %0, i64 24        ; 8 uses
  %i.ae = add i16 %8, 1                           ; 2 uses
  %i.af = getelementptr i8, ptr %0, i64 697       ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ai = getelementptr i8, ptr %i.e, i64 24      ; 3 uses
  %.sroa.3523.0..sroa_idx = getelementptr i8, ptr %0, i64 352 ; 2 uses
  %.sroa.4524.0..sroa_idx = getelementptr i8, ptr %0, i64 360
  %i.aj = getelementptr i8, ptr %i.e, i64 48
  %.sroa.4526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 4
  %.sroa.5527.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.sroa.6528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.ak = getelementptr i8, ptr %i.e, i64 136     ; 2 uses
  br label %.critedge245

.critedge245:                                     ; preds = %.critedge245.backedge, %pm_parameters_node_create.exit
  %i.al = load i32, ptr %i.k, align 8, !tbaa !154
  switch i32 %i.al, label %bb.dw [
    i32 124, label %bb.c
    i32 152, label %bb.f
    i32 18, label %bb.f
    i32 155, label %bb.p
    i32 37, label %bb.y
    i32 66, label %bb.y
    i32 41, label %bb.y
    i32 68, label %bb.y
    i32 59, label %bb.y
    i32 119, label %bb.y
    i32 111, label %bb.bj
    i32 159, label %bb.db
    i32 143, label %bb.db
    i32 145, label %bb.dk
    i32 160, label %bb.dk
  ]

bb.c:                                             ; preds = %.critedge245
  %i.am = call fastcc zeroext i1 @update_parameter_state(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef %i.a) ; 0 uses
  %i.an = tail call fastcc ptr @parse_required_destructured_parameter(ptr noundef nonnull %0) ; 3 uses
  %i.ao = load i32, ptr %i.a, align 4, !tbaa !31
  %i.ap = icmp ugt i32 %i.ao, 5
  %i.aq = getelementptr i8, ptr %i.an, i64 8
  %i.ar = load <2 x ptr>, ptr %i.t, align 8, !tbaa !36 ; 4 uses
  %i.as = icmp eq <2 x ptr> %i.ar, splat (ptr null)
  %i.at = load <2 x ptr>, ptr %i.aq, align 8, !tbaa !36 ; 3 uses
  %i.au = shufflevector <2 x ptr> %i.ar, <2 x ptr> %i.at, <2 x i32> <i32 0, i32 3>
  %i.av = shufflevector <2 x ptr> %i.at, <2 x ptr> %i.ar, <2 x i32> <i32 0, i32 3>
  %i.aw = icmp uge <2 x ptr> %i.au, %i.av
  %i.ax = select <2 x i1> %i.as, <2 x i1> splat (i1 true), <2 x i1> %i.aw
  %i.ay = select <2 x i1> %i.ax, <2 x ptr> %i.at, <2 x ptr> %i.ar
  store <2 x ptr> %i.ay, ptr %i.t, align 8, !tbaa !36
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @pm_node_list_append(ptr noundef %i.ai, ptr noundef nonnull %i.an) #27
  br label %.critedge

bb.e:                                             ; preds = %bb.c
  tail call void @pm_node_list_append(ptr noundef %i.v, ptr noundef nonnull %i.an) #27
  br label %.critedge

bb.f:                                             ; preds = %.critedge245, %.critedge245
  %i.az = call fastcc zeroext i1 @update_parameter_state(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef %i.a) ; 0 uses
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.0529.0.copyload = load i32, ptr %i.l, align 8, !tbaa !31
  %.sroa.4531.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !36 ; 5 uses
  %.sroa.6532.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !36 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #27
  %.val.i = load i32, ptr %i.k, align 8, !tbaa !154
  %i.ba = icmp eq i32 %.val.i, 66
  br i1 %i.ba, label %bb.g, label %accept1.exit

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !149
  %i.bb = call fastcc zeroext i1 @pm_parser_parameter_name_check(ptr noundef nonnull %0, ptr noundef nonnull %9) ; 2 uses
  %.val273 = load ptr, ptr %.sroa.5527.0..sroa_idx, align 8, !tbaa !127 ; 5 uses
  %.val274 = load ptr, ptr %.sroa.6528.0..sroa_idx, align 8, !tbaa !128 ; 4 uses
  %i.bc = ptrtoint ptr %.val274 to i64
  %i.bd = ptrtoint ptr %.val273 to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %.val273, i64 noundef %i.be) #27 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i, label %pm_parser_local_add_token.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.val.i.i = load ptr, ptr %i.n, align 8, !tbaa !75
  tail call fastcc void @pm_parser_local_add(ptr %.val.i.i, i32 noundef %i.bf, ptr noundef %.val273, ptr noundef %.val274, i32 noundef 1)
  br label %pm_parser_local_add_token.exit

accept1.exit:                                     ; preds = %bb.f
  %.val260 = load ptr, ptr %i.m, align 8, !tbaa !86 ; 4 uses
  store i32 164, ptr %9, align 8, !tbaa !31
  store i32 0, ptr %.sroa.4526.0..sroa_idx, align 4
  store ptr %.val260, ptr %.sroa.5527.0..sroa_idx, align 8, !tbaa !36
  store ptr %.val260, ptr %.sroa.6528.0..sroa_idx, align 8, !tbaa !36
  %i.bg = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.bh = getelementptr i8, ptr %i.bg, i64 48     ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 8, !tbaa !84
  %i.bj = or i8 %i.bi, 4
  store i8 %i.bj, ptr %i.bh, align 8, !tbaa !84
  br label %pm_parser_local_add_token.exit

pm_parser_local_add_token.exit:                   ; preds = %bb.h, %bb.g, %accept1.exit
  %.val.i.i283 = phi ptr [ %.val260, %accept1.exit ], [ %.val273, %bb.g ], [ %.val273, %bb.h ] ; 3 uses
  %.sroa.9.0.i = phi ptr [ %.val260, %accept1.exit ], [ %.val274, %bb.g ], [ %.val274, %bb.h ] ; 3 uses
  %.0235 = phi i1 [ false, %accept1.exit ], [ %i.bb, %bb.g ], [ %i.bb, %bb.h ]
  switch i32 %.sroa.0529.0.copyload, label %bb.i [
    i32 164, label %bb.j
    i32 152, label %bb.j
    i32 18, label %bb.j
  ]

bb.i:                                             ; preds = %pm_parser_local_add_token.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.179, ptr noundef nonnull @.str.2, i32 noundef 2434, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_block_parameter_node_create) #26
  unreachable

bb.j:                                             ; preds = %pm_parser_local_add_token.exit, %pm_parser_local_add_token.exit, %pm_parser_local_add_token.exit
  %i.bk = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #30 ; 13 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.k, label %pm_node_alloc.exit.i

bb.k:                                             ; preds = %bb.j
  %i.bm = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.bn = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.bm, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 64) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit.i:                             ; preds = %bb.j
  %i.bo = load i32, ptr %9, align 8, !tbaa !126
  %i.bp = icmp eq i32 %i.bo, 164
  %i.bq = load i32, ptr %0, align 8, !tbaa !109
  %i.br = add i32 %i.bq, 1                        ; 2 uses
  store i32 %i.br, ptr %0, align 8, !tbaa !109
  br i1 %i.bp, label %pm_block_parameter_node_create.exit, label %bb.l

bb.l:                                             ; preds = %pm_node_alloc.exit.i
  %i.bs = ptrtoint ptr %.sroa.9.0.i to i64
  %i.bt = ptrtoint ptr %.val.i.i283 to i64
  %i.bu = sub i64 %i.bs, %i.bt
  %i.bv = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %.val.i.i283, i64 noundef %i.bu) #27
  br label %pm_block_parameter_node_create.exit

pm_block_parameter_node_create.exit:              ; preds = %pm_node_alloc.exit.i, %bb.l
  %i.bw = phi i32 [ %i.bv, %bb.l ], [ 0, %pm_node_alloc.exit.i ]
  %i.bx = phi ptr [ %.sroa.9.0.i, %bb.l ], [ %.sroa.6532.0.copyload, %pm_node_alloc.exit.i ] ; 3 uses
  %.sroa.13.0.i = phi ptr [ %.val.i.i283, %bb.l ], [ null, %pm_node_alloc.exit.i ]
  %.sroa.15.0.i = phi ptr [ %.sroa.9.0.i, %bb.l ], [ null, %pm_node_alloc.exit.i ]
  store i16 15, ptr %i.bk, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 4
  store i32 %i.br, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !31
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  store ptr %.sroa.4531.0.copyload, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !36
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  store ptr %i.bx, ptr %.sroa.9.0..sroa_idx.i, align 8, !tbaa !36
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  store i32 %i.bw, ptr %.sroa.11.0..sroa_idx.i, align 8, !tbaa !31
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  store ptr %.sroa.13.0.i, ptr %.sroa.13.0..sroa_idx.i, align 8, !tbaa !36
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  store ptr %.sroa.15.0.i, ptr %.sroa.15.0..sroa_idx.i, align 8, !tbaa !36
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 48
  store ptr %.sroa.4531.0.copyload, ptr %.sroa.17.0..sroa_idx.i, align 8, !tbaa !36
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 56
  store ptr %.sroa.6532.0.copyload, ptr %.sroa.18.0..sroa_idx.i, align 8, !tbaa !36
  br i1 %.0235, label %pm_node_flag_set_repeated_parameter.exit, label %bb.m

pm_node_flag_set_repeated_parameter.exit:         ; preds = %pm_block_parameter_node_create.exit
  %i.by = getelementptr i8, ptr %i.bk, i64 2      ; 2 uses
  %i.bz = load i16, ptr %i.by, align 2, !tbaa !116
  %i.ca = or i16 %i.bz, 4
  store i16 %i.ca, ptr %i.by, align 2, !tbaa !116
  br label %bb.m

bb.m:                                             ; preds = %pm_node_flag_set_repeated_parameter.exit, %pm_block_parameter_node_create.exit
  %i.cb = load ptr, ptr %i.ak, align 8, !tbaa !576
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %pm_parameters_node_block_set.exit, label %bb.n

pm_parameters_node_block_set.exit:                ; preds = %bb.m
  %i.cd = load <2 x ptr>, ptr %i.t, align 8, !tbaa !36 ; 4 uses
  %i.ce = icmp eq <2 x ptr> %i.cd, splat (ptr null)
  %i.cf = insertelement <2 x ptr> %i.cd, ptr %i.bx, i64 1 ; 2 uses
  %i.cg = insertelement <2 x ptr> %i.cd, ptr %.sroa.4531.0.copyload, i64 0
  %i.ch = icmp uge <2 x ptr> %i.cf, %i.cg
  %i.ci = select <2 x i1> %i.ce, <2 x i1> splat (i1 true), <2 x i1> %i.ch
  %i.cj = insertelement <2 x ptr> %i.cf, ptr %.sroa.4531.0.copyload, i64 0
  %i.ck = select <2 x i1> %i.ci, <2 x ptr> %i.cj, <2 x ptr> %i.cd
  store <2 x ptr> %i.ck, ptr %i.t, align 8, !tbaa !36
  store ptr %i.bk, ptr %i.ak, align 8, !tbaa !576
  br label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.cl = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.r, ptr noundef %.sroa.4531.0.copyload, ptr noundef %i.bx, i32 noundef 206) #27 ; 0 uses
  %i.cm = load <2 x ptr>, ptr %i.t, align 8, !tbaa !36 ; 4 uses
  %i.cn = icmp eq <2 x ptr> %i.cm, splat (ptr null)
  %i.co = load <2 x ptr>, ptr %.sroa.7.0..sroa_idx.i, align 8, !tbaa !36 ; 3 uses
end_hunk_3
begin_hunk_4_@parse_parameters:bb.a
  %.not57.i.i315 = icmp eq i32 %i.hv, 0
  br i1 %.not57.i.i315, label %pm_locals_find.exit.thread.i310, label %.lr.ph.i.i316

.lr.ph.i.i316:                                    ; preds = %.preheader.i.i314
  %i.hw = getelementptr i8, ptr %i.hq, i64 16
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !96 ; 2 uses
  %wide.trip.count.i.i317 = zext i32 %i.hv to i64
  br label %bb.ax

bb.ax:                                            ; preds = %bb.ay, %.lr.ph.i.i316
  %indvars.iv.i.i318 = phi i64 [ 0, %.lr.ph.i.i316 ], [ %indvars.iv.next.i.i320, %bb.ay ] ; 3 uses
  %i.hy = getelementptr [40 x i8], ptr %i.hx, i64 %indvars.iv.i.i318
  %i.hz = load i32, ptr %i.hy, align 8, !tbaa !148
  %.not39.i.i319 = icmp eq i32 %i.hz, %i.ex
  br i1 %.not39.i.i319, label %.thread.loopexit.split.loop.exit66.i.i322, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %indvars.iv.next.i.i320 = add nuw nsw i64 %indvars.iv.i.i318, 1 ; 2 uses
  %exitcond.not.i.i321 = icmp eq i64 %indvars.iv.next.i.i320, %wide.trip.count.i.i317
  br i1 %exitcond.not.i.i321, label %pm_locals_find.exit.thread.i310, label %bb.ax, !llvm.loop !4

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
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !96 ; 2 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.bc, %bb.az
  %.0.i.i308 = phi i32 [ %i.ii, %bb.az ], [ %i.ir, %bb.bc ] ; 2 uses
  %i.il = and i32 %.0.i.i308, %i.ia               ; 2 uses
  %i.im = zext i32 %i.il to i64
  %i.in = getelementptr [40 x i8], ptr %i.ik, i64 %i.im
  %i.io = load i32, ptr %i.in, align 8, !tbaa !148 ; 2 uses
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
  br i1 %.not.i.i309, label %pm_locals_find.exit.thread.i310, label %bb.ba, !llvm.loop !5

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
  %i.iz = load i32, ptr %i.iy, align 4, !tbaa !188
  %.not242 = icmp eq i32 %i.iz, %i.gk
  br i1 %.not242, label %.split, label %bb.bd

bb.bd:                                            ; preds = %pm_locals_reads.exit323
  %i.ja = trunc i64 %i.er to i32
  %i.jb = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.r, ptr noundef %.val271, ptr noundef %.val272, i32 noundef 207, i32 noundef %i.ja, ptr noundef %.val271) #27 ; 0 uses
  br label %.split

bb.be:                                            ; preds = %pm_parser_local_add_token.exit296
  %i.jc = load i32, ptr %i.a, align 4, !tbaa !31
  %i.jd = icmp ugt i32 %i.jc, 5
  %i.je = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 13 uses
  %i.jf = icmp eq ptr %i.je, null                 ; 2 uses
  br i1 %i.jd, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  br i1 %i.jf, label %bb.bg, label %pm_required_parameter_node_create.exit

bb.bg:                                            ; preds = %bb.bf
  %i.jg = load ptr, ptr @stderr, align 8, !tbaa !108
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
  store i32 %i.jj, ptr %.sroa.3.0..sroa_idx.i325, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i326 = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store ptr %.val271, ptr %.sroa.4.0..sroa_idx.i326, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx.i327 = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store ptr %.val272, ptr %.sroa.5.0..sroa_idx.i327, align 8, !tbaa !36
  %.sroa.6.0..sroa_idx.i328 = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  store i32 %i.jk, ptr %.sroa.6.0..sroa_idx.i328, align 8, !tbaa !31
  br i1 %i.eo, label %.split.thread.sink.split, label %.split.thread

bb.bh:                                            ; preds = %bb.be
  br i1 %i.jf, label %bb.bi, label %pm_required_parameter_node_create.exit337

bb.bi:                                            ; preds = %bb.bh
  %i.jl = load ptr, ptr @stderr, align 8, !tbaa !108
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
  store i32 %i.jo, ptr %.sroa.3.0..sroa_idx.i333, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i334 = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  store ptr %.val271, ptr %.sroa.4.0..sroa_idx.i334, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx.i335 = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  store ptr %.val272, ptr %.sroa.5.0..sroa_idx.i335, align 8, !tbaa !36
  %.sroa.6.0..sroa_idx.i336 = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  store i32 %i.jp, ptr %.sroa.6.0..sroa_idx.i336, align 8, !tbaa !31
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
  %i.jt = load ptr, ptr %i.t, align 8, !tbaa !578 ; 3 uses
  %i.ju = icmp eq ptr %i.jt, null
  %i.jv = icmp uge ptr %i.jt, %.val271
  %i.jw = or i1 %i.ju, %i.jv
  %storemerge.i.i339 = select i1 %i.jw, ptr %.val271, ptr %i.jt
  store ptr %storemerge.i.i339, ptr %i.t, align 8, !tbaa !578
  %i.jx = load ptr, ptr %i.u, align 8, !tbaa !272 ; 2 uses
  %.not543 = icmp ugt ptr %i.jx, %.val272
  %storemerge19.i.i340 = select i1 %.not543, ptr %i.jx, ptr %.val272
  store ptr %storemerge19.i.i340, ptr %i.u, align 8, !tbaa !272
  tail call void @pm_node_list_append(ptr noundef %.sink643, ptr noundef nonnull %i.je) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %.critedge

.split:                                           ; preds = %bb.av, %pm_locals_reads.exit323, %bb.bd
  %i.jy = load ptr, ptr %i.y, align 8, !tbaa !178 ; 2 uses
  %i.jz = getelementptr i8, ptr %i.jy, i64 8
  %i.ka = load ptr, ptr %i.jz, align 8, !tbaa !182
  tail call void @free(ptr noundef %i.jy) #27
  store ptr %i.ka, ptr %i.y, align 8, !tbaa !178
  %i.kb = load i8, ptr %i.af, align 1, !tbaa !179, !range !64, !noundef !65
  %i.kc = trunc nuw i8 %i.kb to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br i1 %i.kc, label %.critedge245.thread, label %.critedge

bb.bj:                                            ; preds = %.critedge245
  br i1 %or.cond, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store i8 1, ptr %i.x, align 1, !tbaa !162
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.kd = call fastcc zeroext i1 @update_parameter_state(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef %i.a) ; 0 uses
  %i.ke = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #28 ; 5 uses
  %.not542 = icmp eq ptr %i.ke, null
  br i1 %.not542, label %context_push.exit343, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  store i32 23, ptr %i.ke, align 8, !tbaa !31
  %.sroa.2.0..sroa_idx.i341 = getelementptr inbounds nuw i8, ptr %i.ke, i64 4
  store i32 0, ptr %.sroa.2.0..sroa_idx.i341, align 4
  %.sroa.3.0..sroa_idx.i342 = getelementptr inbounds nuw i8, ptr %i.ke, i64 8
  %i.kf = load ptr, ptr %i.y, align 8, !tbaa !178
  store ptr %i.kf, ptr %.sroa.3.0..sroa_idx.i342, align 8
  store ptr %i.ke, ptr %i.y, align 8, !tbaa !178
  br label %context_push.exit343

context_push.exit343:                             ; preds = %bb.bl, %bb.bm
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.0505.0.copyload = load i64, ptr %i.l, align 8
  %i.kg = load <2 x ptr>, ptr %i.p, align 8, !tbaa !36 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #27
  store i64 %.sroa.0505.0.copyload, ptr %11, align 8
  %15 = extractelement <2 x ptr> %i.kg, i64 0     ; 22 uses
  %16 = getelementptr i8, <2 x ptr> %i.kg, <2 x i64> <i64 0, i64 -1> ; 2 uses
  %17 = extractelement <2 x ptr> %16, i64 1       ; 8 uses
  store <2 x ptr> %16, ptr %.sroa.11.0..sroa_idx515, align 8, !tbaa !36
  %i.kh = load i8, ptr %i.z, align 1, !tbaa !63, !range !64, !noundef !65
  %i.ki = trunc nuw i8 %i.kh to i1
  br i1 %i.ki, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %context_push.exit343
  %i.kj = load ptr, ptr %i.aa, align 8, !tbaa !60
  %i.kk = getelementptr i8, ptr %i.kj, i64 24
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !144
  %i.km = ptrtoint ptr %17 to i64
  %i.kn = ptrtoint ptr %15 to i64
  %i.ko = sub i64 %i.km, %i.kn
  %i.kp = tail call zeroext i1 %i.kl(ptr noundef %15, i64 noundef %i.ko) #27
  br i1 %i.kp, label %bb.bp, label %bb.bq

bb.bo:                                            ; preds = %context_push.exit343
  %i.kq = ptrtoint ptr %17 to i64
  %i.kr = ptrtoint ptr %15 to i64
  %i.ks = sub i64 %i.kq, %i.kr
  %i.kt = tail call zeroext i1 @pm_encoding_utf_8_isupper_char(ptr noundef %15, i64 noundef %i.ks) #27
  br i1 %i.kt, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.ku = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.r, ptr noundef %15, ptr noundef %17, i32 noundef 12) #27 ; 0 uses
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bo, %bb.bn
  %18 = extractelement <2 x ptr> %i.kg, i64 1
  %i.kv = getelementptr i8, ptr %18, i64 -2
  %i.kw = load i8, ptr %i.kv, align 1, !tbaa !83
  switch i8 %i.kw, label %bb.bs [
    i8 33, label %bb.br
    i8 63, label %bb.br
  ]

bb.br:                                            ; preds = %bb.bq, %bb.bq
  %i.kx = ptrtoint ptr %17 to i64
  %i.ky = ptrtoint ptr %15 to i64
  %i.kz = sub i64 %i.kx, %i.ky
  %i.la = trunc i64 %i.kz to i32
  %i.lb = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.r, ptr noundef %15, ptr noundef %17, i32 noundef 152, i32 noundef %i.la, ptr noundef %15) #27 ; 0 uses
  br label %bb.bs

bb.bs:                                            ; preds = %bb.bq, %bb.br, %bb.bp
  %i.lc = call fastcc zeroext i1 @pm_parser_parameter_name_check(ptr noundef nonnull %0, ptr noundef nonnull %11) ; 3 uses
  %i.ld = ptrtoint ptr %17 to i64
  %i.le = ptrtoint ptr %15 to i64
  %i.lf = sub i64 %i.ld, %i.le                    ; 7 uses
  %i.lg = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %15, i64 noundef %i.lf) #27 ; 2 uses
  %.not.i.i344 = icmp eq i32 %i.lg, 0
  br i1 %.not.i.i344, label %pm_parser_local_add_token.exit346, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %.val.i.i345 = load ptr, ptr %i.n, align 8, !tbaa !75
  tail call fastcc void @pm_parser_local_add(ptr %.val.i.i345, i32 noundef %i.lg, ptr noundef %15, ptr noundef %17, i32 noundef 1)
  br label %pm_parser_local_add_token.exit346

pm_parser_local_add_token.exit346:                ; preds = %bb.bs, %bb.bt
  %i.lh = load i32, ptr %i.k, align 8, !tbaa !154 ; 2 uses
  switch i32 %i.lh, label %bb.bz [
    i32 3, label %bb.bu
    i32 15, label %bb.bu
    i32 16, label %bb.bu
    i32 17, label %bb.bw
    i32 14, label %bb.bw
  ]

bb.bu:                                            ; preds = %pm_parser_local_add_token.exit346, %pm_parser_local_add_token.exit346, %pm_parser_local_add_token.exit346
  %i.li = load ptr, ptr %i.y, align 8, !tbaa !178 ; 2 uses
  %i.lj = getelementptr i8, ptr %i.li, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !182
  tail call void @free(ptr noundef %i.li) #27
  store ptr %i.lk, ptr %i.y, align 8, !tbaa !178
  %i.ll = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 8 uses
  %i.lm = icmp eq ptr %i.ll, null
  br i1 %i.lm, label %bb.bv, label %pm_required_keyword_parameter_node_create.exit

bb.bv:                                            ; preds = %bb.bu
  %i.ln = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.lo = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.ln, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_required_keyword_parameter_node_create.exit:   ; preds = %bb.bu
  %i.lp = load i32, ptr %0, align 8, !tbaa !109
  %i.lq = add i32 %i.lp, 1                        ; 2 uses
  store i32 %i.lq, ptr %0, align 8, !tbaa !109
  %i.lr = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %15, i64 noundef %i.lf) #27
  store i16 126, ptr %i.ll, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i348 = getelementptr inbounds nuw i8, ptr %i.ll, i64 4
  store i32 %i.lq, ptr %.sroa.3.0..sroa_idx.i348, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i349 = getelementptr inbounds nuw i8, ptr %i.ll, i64 8
  store <2 x ptr> %i.kg, ptr %.sroa.4.0..sroa_idx.i349, align 8, !tbaa !36
  %.sroa.6.0..sroa_idx.i351 = getelementptr inbounds nuw i8, ptr %i.ll, i64 24
  store i32 %i.lr, ptr %.sroa.6.0..sroa_idx.i351, align 8, !tbaa !31
  %.sroa.8.0..sroa_idx.i352 = getelementptr inbounds nuw i8, ptr %i.ll, i64 32
  store <2 x ptr> %i.kg, ptr %.sroa.8.0..sroa_idx.i352, align 8, !tbaa !36
  br i1 %i.lc, label %.thread.sink.split, label %.thread

bb.bw:                                            ; preds = %pm_parser_local_add_token.exit346, %pm_parser_local_add_token.exit346
  %i.ls = load ptr, ptr %i.y, align 8, !tbaa !178 ; 2 uses
  %i.lt = getelementptr i8, ptr %i.ls, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !182
  tail call void @free(ptr noundef %i.ls) #27
  store ptr %i.lu, ptr %i.y, align 8, !tbaa !178
  br i1 %2, label %.thread534, label %bb.bx

.thread534:                                       ; preds = %bb.bw
  store i8 0, ptr %i.x, align 1, !tbaa !162
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %.critedge245.thread

bb.bx:                                            ; preds = %bb.bw
  %i.lv = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 8 uses
  %i.lw = icmp eq ptr %i.lv, null
  br i1 %i.lw, label %bb.by, label %pm_required_keyword_parameter_node_create.exit364

bb.by:                                            ; preds = %bb.bx
  %i.lx = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.ly = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.lx, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_required_keyword_parameter_node_create.exit364: ; preds = %bb.bx
  %i.lz = load i32, ptr %0, align 8, !tbaa !109
  %i.ma = add i32 %i.lz, 1                        ; 2 uses
  store i32 %i.ma, ptr %0, align 8, !tbaa !109
  %i.mb = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %15, i64 noundef %i.lf) #27
  store i16 126, ptr %i.lv, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i358 = getelementptr inbounds nuw i8, ptr %i.lv, i64 4
  store i32 %i.ma, ptr %.sroa.3.0..sroa_idx.i358, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i359 = getelementptr inbounds nuw i8, ptr %i.lv, i64 8
  store <2 x ptr> %i.kg, ptr %.sroa.4.0..sroa_idx.i359, align 8, !tbaa !36
  %.sroa.6.0..sroa_idx.i361 = getelementptr inbounds nuw i8, ptr %i.lv, i64 24
  store i32 %i.mb, ptr %.sroa.6.0..sroa_idx.i361, align 8, !tbaa !31
  %.sroa.8.0..sroa_idx.i362 = getelementptr inbounds nuw i8, ptr %i.lv, i64 32
  store <2 x ptr> %i.kg, ptr %.sroa.8.0..sroa_idx.i362, align 8, !tbaa !36
  br i1 %i.lc, label %.thread.sink.split, label %.thread

bb.bz:                                            ; preds = %pm_parser_local_add_token.exit346
  %i.mc = tail call fastcc zeroext i1 @token_begins_expression_p(i32 noundef %i.lh)
  br i1 %i.mc, label %bb.ca, label %bb.cy

bb.ca:                                            ; preds = %bb.bz
  %i.md = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %15, i64 noundef %i.lf) #27 ; 8 uses
  %i.me = load i32, ptr %i.ac, align 8, !tbaa !71
  %i.mf = icmp ult i32 %i.me, 2
  br i1 %i.mf, label %bb.cb, label %bb.ci

bb.cb:                                            ; preds = %bb.ca
  %i.mg = load ptr, ptr %i.n, align 8, !tbaa !75  ; 4 uses
  %i.mh = getelementptr i8, ptr %i.mg, i64 12
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !95 ; 2 uses
  %i.mj = icmp ult i32 %i.mi, 9
  br i1 %i.mj, label %.preheader.i.i374, label %bb.ce

.preheader.i.i374:                                ; preds = %bb.cb
  %i.mk = getelementptr i8, ptr %i.mg, i64 8
  %i.ml = load i32, ptr %i.mk, align 8, !tbaa !146 ; 2 uses
  %.not57.i.i375 = icmp eq i32 %i.ml, 0
  br i1 %.not57.i.i375, label %pm_locals_find.exit.thread.i370, label %.lr.ph.i.i376

.lr.ph.i.i376:                                    ; preds = %.preheader.i.i374
  %i.mm = getelementptr i8, ptr %i.mg, i64 16
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !96 ; 2 uses
  %wide.trip.count.i.i377 = zext i32 %i.ml to i64
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cd, %.lr.ph.i.i376
  %indvars.iv.i.i378 = phi i64 [ 0, %.lr.ph.i.i376 ], [ %indvars.iv.next.i.i380, %bb.cd ] ; 3 uses
  %i.mo = getelementptr [40 x i8], ptr %i.mn, i64 %indvars.iv.i.i378
  %i.mp = load i32, ptr %i.mo, align 8, !tbaa !148
  %.not39.i.i379 = icmp eq i32 %i.mp, %i.md
  br i1 %.not39.i.i379, label %.thread.loopexit.split.loop.exit66.i.i382, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %indvars.iv.next.i.i380 = add nuw nsw i64 %indvars.iv.i.i378, 1 ; 2 uses
  %exitcond.not.i.i381 = icmp eq i64 %indvars.iv.next.i.i380, %wide.trip.count.i.i377
  br i1 %exitcond.not.i.i381, label %pm_locals_find.exit.thread.i370, label %bb.cc, !llvm.loop !4

bb.ce:                                            ; preds = %bb.cb
  %i.mq = add i32 %i.mi, -1                       ; 2 uses
  %i.mr = lshr i32 %i.md, 16
  %i.ms = xor i32 %i.mr, %i.md
  %i.mt = mul i32 %i.ms, 73244475                 ; 2 uses
  %i.mu = lshr i32 %i.mt, 16
  %i.mv = xor i32 %i.mu, %i.mt
  %i.mw = mul i32 %i.mv, 73244475                 ; 2 uses
  %i.mx = lshr i32 %i.mw, 16
  %i.my = xor i32 %i.mx, %i.mw                    ; 2 uses
  %i.mz = getelementptr i8, ptr %i.mg, i64 16
  %i.na = load ptr, ptr %i.mz, align 8, !tbaa !96 ; 2 uses
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ch, %bb.ce
  %.0.i.i368 = phi i32 [ %i.my, %bb.ce ], [ %i.nh, %bb.ch ] ; 2 uses
  %i.nb = and i32 %.0.i.i368, %i.mq               ; 2 uses
  %i.nc = zext i32 %i.nb to i64
  %i.nd = getelementptr [40 x i8], ptr %i.na, i64 %i.nc
  %i.ne = load i32, ptr %i.nd, align 8, !tbaa !148 ; 2 uses
  %i.nf = icmp eq i32 %i.ne, 0
  br i1 %i.nf, label %pm_locals_find.exit.thread.i370, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.ng = icmp eq i32 %i.ne, %i.md
  br i1 %i.ng, label %pm_locals_find.exit.i371, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.nh = add i32 %.0.i.i368, 1                   ; 2 uses
  %i.ni = xor i32 %i.nh, %i.my
  %i.nj = and i32 %i.ni, %i.mq
  %.not.i.i369 = icmp eq i32 %i.nj, 0
  br i1 %.not.i.i369, label %pm_locals_find.exit.thread.i370, label %bb.cf, !llvm.loop !5

.thread.loopexit.split.loop.exit66.i.i382:        ; preds = %bb.cc
  %i.nk = trunc nuw i64 %indvars.iv.i.i378 to i32
  br label %pm_locals_find.exit.i371

pm_locals_find.exit.i371:                         ; preds = %bb.cg, %.thread.loopexit.split.loop.exit66.i.i382
  %i.nl = phi ptr [ %i.mn, %.thread.loopexit.split.loop.exit66.i.i382 ], [ %i.na, %bb.cg ]
  %.5.i.i372 = phi i32 [ %i.nk, %.thread.loopexit.split.loop.exit66.i.i382 ], [ %i.nb, %bb.cg ] ; 2 uses
  %.not.i373 = icmp eq i32 %.5.i.i372, -1
  br i1 %.not.i373, label %pm_locals_find.exit.thread.i370, label %pm_locals_reads.exit383

pm_locals_find.exit.thread.i370:                  ; preds = %pm_locals_find.exit.i371, %.preheader.i.i374, %bb.ch, %bb.cf, %bb.cd
  tail call void @__assert_fail(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.2, i32 noundef 950, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_locals_reads) #26
  unreachable

pm_locals_reads.exit383:                          ; preds = %pm_locals_find.exit.i371
  %i.nm = zext i32 %.5.i.i372 to i64
  %i.nn = getelementptr [40 x i8], ptr %i.nl, i64 %i.nm
  %i.no = getelementptr i8, ptr %i.nn, i64 28
  %i.np = load i32, ptr %i.no, align 4, !tbaa !188
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ca, %pm_locals_reads.exit383
  %i.nq = phi i32 [ %i.np, %pm_locals_reads.exit383 ], [ 0, %bb.ca ]
  br i1 %5, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %bb.ci
  %i.nr = load i32, ptr %i.ad, align 8, !tbaa !31
  %i.ns = shl i32 %i.nr, 1
  store i32 %i.ns, ptr %i.ad, align 8, !tbaa !31
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.nt = tail call fastcc ptr @parse_expression(ptr noundef %0, i32 noundef %1, i1 noundef zeroext false, i1 noundef zeroext false, i32 noundef 212, i16 noundef zeroext %i.ae), !inline_history !13 ; 3 uses
  %i.nu = tail call fastcc ptr @pm_check_value_expression(ptr noundef %0, ptr noundef readonly %i.nt) ; 3 uses
  %.not.i495 = icmp eq ptr %i.nu, null
  br i1 %.not.i495, label %pm_assert_value_expression.exit498, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.nv = getelementptr i8, ptr %i.nu, i64 8
  %.val.i496 = load ptr, ptr %i.nv, align 8, !tbaa !133
  %i.nw = getelementptr i8, ptr %i.nu, i64 16
  %.val5.i497 = load ptr, ptr %i.nw, align 8, !tbaa !134
  %i.nx = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.r, ptr noundef %.val.i496, ptr noundef %.val5.i497, i32 noundef 290) #27 ; 0 uses
  br label %pm_assert_value_expression.exit498

pm_assert_value_expression.exit498:               ; preds = %bb.ck, %bb.cl
  br i1 %5, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %pm_assert_value_expression.exit498
  %i.ny = load i32, ptr %i.ad, align 8, !tbaa !31
  %i.nz = lshr i32 %i.ny, 1
  store i32 %i.nz, ptr %i.ad, align 8, !tbaa !31
  br label %bb.cn

bb.cn:                                            ; preds = %bb.cm, %pm_assert_value_expression.exit498
  %i.oa = load i32, ptr %i.ac, align 8, !tbaa !71
  %i.ob = icmp ult i32 %i.oa, 2
  br i1 %i.ob, label %bb.co, label %bb.cw

bb.co:                                            ; preds = %bb.cn
  %i.oc = load ptr, ptr %i.n, align 8, !tbaa !75  ; 4 uses
  %i.od = getelementptr i8, ptr %i.oc, i64 12
  %i.oe = load i32, ptr %i.od, align 4, !tbaa !95 ; 2 uses
  %i.of = icmp ult i32 %i.oe, 9
  br i1 %i.of, label %.preheader.i.i390, label %bb.cr

.preheader.i.i390:                                ; preds = %bb.co
  %i.og = getelementptr i8, ptr %i.oc, i64 8
  %i.oh = load i32, ptr %i.og, align 8, !tbaa !146 ; 2 uses
  %.not57.i.i391 = icmp eq i32 %i.oh, 0
  br i1 %.not57.i.i391, label %pm_locals_find.exit.thread.i386, label %.lr.ph.i.i392

.lr.ph.i.i392:                                    ; preds = %.preheader.i.i390
  %i.oi = getelementptr i8, ptr %i.oc, i64 16
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !96 ; 2 uses
  %wide.trip.count.i.i393 = zext i32 %i.oh to i64
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cq, %.lr.ph.i.i392
  %indvars.iv.i.i394 = phi i64 [ 0, %.lr.ph.i.i392 ], [ %indvars.iv.next.i.i396, %bb.cq ] ; 3 uses
  %i.ok = getelementptr [40 x i8], ptr %i.oj, i64 %indvars.iv.i.i394
  %i.ol = load i32, ptr %i.ok, align 8, !tbaa !148
  %.not39.i.i395 = icmp eq i32 %i.ol, %i.md
  br i1 %.not39.i.i395, label %.thread.loopexit.split.loop.exit66.i.i398, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %indvars.iv.next.i.i396 = add nuw nsw i64 %indvars.iv.i.i394, 1 ; 2 uses
  %exitcond.not.i.i397 = icmp eq i64 %indvars.iv.next.i.i396, %wide.trip.count.i.i393
  br i1 %exitcond.not.i.i397, label %pm_locals_find.exit.thread.i386, label %bb.cp, !llvm.loop !4

bb.cr:                                            ; preds = %bb.co
  %i.om = add i32 %i.oe, -1                       ; 2 uses
  %i.on = lshr i32 %i.md, 16
  %i.oo = xor i32 %i.on, %i.md
  %i.op = mul i32 %i.oo, 73244475                 ; 2 uses
  %i.oq = lshr i32 %i.op, 16
  %i.or = xor i32 %i.oq, %i.op
  %i.os = mul i32 %i.or, 73244475                 ; 2 uses
  %i.ot = lshr i32 %i.os, 16
  %i.ou = xor i32 %i.ot, %i.os                    ; 2 uses
  %i.ov = getelementptr i8, ptr %i.oc, i64 16
  %i.ow = load ptr, ptr %i.ov, align 8, !tbaa !96 ; 2 uses
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cu, %bb.cr
  %.0.i.i384 = phi i32 [ %i.ou, %bb.cr ], [ %i.pd, %bb.cu ] ; 2 uses
  %i.ox = and i32 %.0.i.i384, %i.om               ; 2 uses
  %i.oy = zext i32 %i.ox to i64
  %i.oz = getelementptr [40 x i8], ptr %i.ow, i64 %i.oy
  %i.pa = load i32, ptr %i.oz, align 8, !tbaa !148 ; 2 uses
  %i.pb = icmp eq i32 %i.pa, 0
  br i1 %i.pb, label %pm_locals_find.exit.thread.i386, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.pc = icmp eq i32 %i.pa, %i.md
  br i1 %i.pc, label %pm_locals_find.exit.i387, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.pd = add i32 %.0.i.i384, 1                   ; 2 uses
  %i.pe = xor i32 %i.pd, %i.ou
  %i.pf = and i32 %i.pe, %i.om
  %.not.i.i385 = icmp eq i32 %i.pf, 0
  br i1 %.not.i.i385, label %pm_locals_find.exit.thread.i386, label %bb.cs, !llvm.loop !5

.thread.loopexit.split.loop.exit66.i.i398:        ; preds = %bb.cp
  %i.pg = trunc nuw i64 %indvars.iv.i.i394 to i32
  br label %pm_locals_find.exit.i387

pm_locals_find.exit.i387:                         ; preds = %bb.ct, %.thread.loopexit.split.loop.exit66.i.i398
  %i.ph = phi ptr [ %i.oj, %.thread.loopexit.split.loop.exit66.i.i398 ], [ %i.ow, %bb.ct ]
  %.5.i.i388 = phi i32 [ %i.pg, %.thread.loopexit.split.loop.exit66.i.i398 ], [ %i.ox, %bb.ct ] ; 2 uses
  %.not.i389 = icmp eq i32 %.5.i.i388, -1
  br i1 %.not.i389, label %pm_locals_find.exit.thread.i386, label %pm_locals_reads.exit399

pm_locals_find.exit.thread.i386:                  ; preds = %pm_locals_find.exit.i387, %.preheader.i.i390, %bb.cu, %bb.cs, %bb.cq
  tail call void @__assert_fail(ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.2, i32 noundef 950, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_locals_reads) #26
  unreachable

pm_locals_reads.exit399:                          ; preds = %pm_locals_find.exit.i387
  %i.pi = zext i32 %.5.i.i388 to i64
  %i.pj = getelementptr [40 x i8], ptr %i.ph, i64 %i.pi
  %i.pk = getelementptr i8, ptr %i.pj, i64 28
  %i.pl = load i32, ptr %i.pk, align 4, !tbaa !188
  %.not = icmp eq i32 %i.pl, %i.nq
  br i1 %.not, label %bb.cw, label %bb.cv

bb.cv:                                            ; preds = %pm_locals_reads.exit399
  %i.pm = trunc i64 %i.lf to i32
  %i.pn = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.r, ptr noundef %15, ptr noundef %17, i32 noundef 207, i32 noundef %i.pm, ptr noundef %15) #27 ; 0 uses
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %pm_locals_reads.exit399, %bb.cn
  %i.po = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #30 ; 10 uses
  %i.pp = icmp eq ptr %i.po, null
  br i1 %i.pp, label %bb.cx, label %pm_optional_keyword_parameter_node_create.exit

bb.cx:                                            ; preds = %bb.cw
  %i.pq = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.pr = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.pq, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 56) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_optional_keyword_parameter_node_create.exit:   ; preds = %bb.cw
  %i.ps = load i32, ptr %0, align 8, !tbaa !109
  %i.pt = add i32 %i.ps, 1                        ; 2 uses
  store i32 %i.pt, ptr %0, align 8, !tbaa !109
  %i.pu = getelementptr i8, ptr %i.nt, i64 16
  %i.pv = load ptr, ptr %i.pu, align 8, !tbaa !134
  %i.pw = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %15, i64 noundef %i.lf) #27
  store i16 112, ptr %i.po, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i401 = getelementptr inbounds nuw i8, ptr %i.po, i64 4
  store i32 %i.pt, ptr %.sroa.3.0..sroa_idx.i401, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i402 = getelementptr inbounds nuw i8, ptr %i.po, i64 8
  store ptr %15, ptr %.sroa.4.0..sroa_idx.i402, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx.i403 = getelementptr inbounds nuw i8, ptr %i.po, i64 16
  store ptr %i.pv, ptr %.sroa.5.0..sroa_idx.i403, align 8, !tbaa !36
  %.sroa.6.0..sroa_idx.i404 = getelementptr inbounds nuw i8, ptr %i.po, i64 24
  store i32 %i.pw, ptr %.sroa.6.0..sroa_idx.i404, align 8, !tbaa !31
  %.sroa.8.0..sroa_idx.i405 = getelementptr inbounds nuw i8, ptr %i.po, i64 32
  store ptr %15, ptr %.sroa.8.0..sroa_idx.i405, align 8, !tbaa !36
  %.sroa.9.0..sroa_idx.i406 = getelementptr inbounds nuw i8, ptr %i.po, i64 40
  %19 = extractelement <2 x ptr> %i.kg, i64 1
  store ptr %19, ptr %.sroa.9.0..sroa_idx.i406, align 8, !tbaa !36
  %.sroa.10.0..sroa_idx.i407 = getelementptr inbounds nuw i8, ptr %i.po, i64 48
  store ptr %i.nt, ptr %.sroa.10.0..sroa_idx.i407, align 8, !tbaa !106
  br label %bb.da

bb.cy:                                            ; preds = %bb.bz
  %i.px = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 9 uses
  %i.py = icmp eq ptr %i.px, null
  br i1 %i.py, label %bb.cz, label %pm_required_keyword_parameter_node_create.exit415

bb.cz:                                            ; preds = %bb.cy
  %i.pz = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.qa = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.pz, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_required_keyword_parameter_node_create.exit415: ; preds = %bb.cy
  %i.qb = load i32, ptr %0, align 8, !tbaa !109
  %i.qc = add i32 %i.qb, 1                        ; 2 uses
  store i32 %i.qc, ptr %0, align 8, !tbaa !109
  %i.qd = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %15, i64 noundef %i.lf) #27
  store i16 126, ptr %i.px, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i409 = getelementptr inbounds nuw i8, ptr %i.px, i64 4
  store i32 %i.qc, ptr %.sroa.3.0..sroa_idx.i409, align 4, !tbaa !31
  %.sroa.4.0..sroa_idx.i410 = getelementptr inbounds nuw i8, ptr %i.px, i64 8
  store ptr %15, ptr %.sroa.4.0..sroa_idx.i410, align 8, !tbaa !36
  %.sroa.5.0..sroa_idx.i411 = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  %20 = extractelement <2 x ptr> %i.kg, i64 1     ; 2 uses
  store ptr %20, ptr %.sroa.5.0..sroa_idx.i411, align 8, !tbaa !36
  %.sroa.6.0..sroa_idx.i412 = getelementptr inbounds nuw i8, ptr %i.px, i64 24
  store i32 %i.qd, ptr %.sroa.6.0..sroa_idx.i412, align 8, !tbaa !31
  %.sroa.8.0..sroa_idx.i413 = getelementptr inbounds nuw i8, ptr %i.px, i64 32
  store ptr %15, ptr %.sroa.8.0..sroa_idx.i413, align 8, !tbaa !36
  %.sroa.9.0..sroa_idx.i414 = getelementptr inbounds nuw i8, ptr %i.px, i64 40
  store ptr %20, ptr %.sroa.9.0..sroa_idx.i414, align 8, !tbaa !36
  br label %bb.da

bb.da:                                            ; preds = %pm_required_keyword_parameter_node_create.exit415, %pm_optional_keyword_parameter_node_create.exit
  %.0233.jt112 = phi ptr [ %i.po, %pm_optional_keyword_parameter_node_create.exit ], [ %i.px, %pm_required_keyword_parameter_node_create.exit415 ] ; 3 uses
  br i1 %i.lc, label %pm_node_flag_set_repeated_parameter.exit416, label %bb.ed

pm_node_flag_set_repeated_parameter.exit416:      ; preds = %bb.da
  %i.qe = getelementptr i8, ptr %.0233.jt112, i64 2 ; 2 uses
  %i.qf = load i16, ptr %i.qe, align 2, !tbaa !116
  %i.qg = or i16 %i.qf, 4
  store i16 %i.qg, ptr %i.qe, align 2, !tbaa !116
  br label %bb.ed

bb.db:                                            ; preds = %.critedge245, %.critedge245
  %i.qh = call fastcc zeroext i1 @update_parameter_state(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef %i.a) ; 0 uses
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.sroa.3.0.copyload = load ptr, ptr %i.p, align 8, !tbaa !36 ; 5 uses
  %.sroa.5504.0.copyload = load ptr, ptr %i.q, align 8, !tbaa !36 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #27
  %.val.i419 = load i32, ptr %i.k, align 8, !tbaa !154
  %i.qi = icmp eq i32 %.val.i419, 66
  br i1 %i.qi, label %bb.dc, label %accept1.exit420

bb.dc:                                            ; preds = %bb.db
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !149
  %i.qj = call fastcc zeroext i1 @pm_parser_parameter_name_check(ptr noundef nonnull %0, ptr noundef nonnull %12) ; 2 uses
  %.val267 = load ptr, ptr %.sroa.5501.0..sroa_idx, align 8, !tbaa !127 ; 5 uses
  %.val268 = load ptr, ptr %.sroa.6502.0..sroa_idx, align 8, !tbaa !128 ; 4 uses
  %i.qk = ptrtoint ptr %.val268 to i64
  %i.ql = ptrtoint ptr %.val267 to i64
  %i.qm = sub i64 %i.qk, %i.ql
  %i.qn = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %.val267, i64 noundef %i.qm) #27 ; 2 uses
  %.not.i.i421 = icmp eq i32 %i.qn, 0
  br i1 %.not.i.i421, label %pm_parser_local_add_token.exit423, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %.val.i.i422 = load ptr, ptr %i.n, align 8, !tbaa !75
  tail call fastcc void @pm_parser_local_add(ptr %.val.i.i422, i32 noundef %i.qn, ptr noundef %.val267, ptr noundef %.val268, i32 noundef 1)
  br label %pm_parser_local_add_token.exit423

accept1.exit420:                                  ; preds = %bb.db
  %.val259 = load ptr, ptr %i.m, align 8, !tbaa !86 ; 4 uses
  store i32 164, ptr %12, align 8, !tbaa !31
  store i32 0, ptr %.sroa.4500.0..sroa_idx, align 4
  store ptr %.val259, ptr %.sroa.5501.0..sroa_idx, align 8, !tbaa !36
  store ptr %.val259, ptr %.sroa.6502.0..sroa_idx, align 8, !tbaa !36
  %i.qo = load ptr, ptr %i.n, align 8, !tbaa !75
  %i.qp = getelementptr i8, ptr %i.qo, i64 48     ; 2 uses
  %i.qq = load i8, ptr %i.qp, align 8, !tbaa !84
  %i.qr = or i8 %i.qq, 1
  store i8 %i.qr, ptr %i.qp, align 8, !tbaa !84
  br label %pm_parser_local_add_token.exit423

pm_parser_local_add_token.exit423:                ; preds = %bb.dd, %bb.dc, %accept1.exit420
  %.val.i.i428 = phi ptr [ %.val259, %accept1.exit420 ], [ %.val267, %bb.dc ], [ %.val267, %bb.dd ] ; 3 uses
  %.sroa.9.0.i427 = phi ptr [ %.val259, %accept1.exit420 ], [ %.val268, %bb.dc ], [ %.val268, %bb.dd ] ; 3 uses
  %.0232 = phi i1 [ false, %accept1.exit420 ], [ %i.qj, %bb.dc ], [ %i.qj, %bb.dd ]
  %i.qs = tail call noalias dereferenceable_or_null(64) ptr @calloc(i64 noundef 1, i64 noundef 64) #30 ; 13 uses
  %i.qt = icmp eq ptr %i.qs, null
  br i1 %i.qt, label %bb.de, label %pm_node_alloc.exit.i424

bb.de:                                            ; preds = %pm_parser_local_add_token.exit423
  %i.qu = load ptr, ptr @stderr, align 8, !tbaa !108
  %i.qv = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.qu, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 64) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit.i424:                          ; preds = %pm_parser_local_add_token.exit423
  %i.qw = load i32, ptr %12, align 8, !tbaa !126
  %i.qx = icmp eq i32 %i.qw, 164
  %i.qy = load i32, ptr %0, align 8, !tbaa !109
  %i.qz = add i32 %i.qy, 1                        ; 2 uses
  store i32 %i.qz, ptr %0, align 8, !tbaa !109
  br i1 %i.qx, label %pm_rest_parameter_node_create.exit, label %bb.df

bb.df:                                            ; preds = %pm_node_alloc.exit.i424
  %i.ra = ptrtoint ptr %.sroa.9.0.i427 to i64
  %i.rb = ptrtoint ptr %.val.i.i428 to i64
  %i.rc = sub i64 %i.ra, %i.rb
  %i.rd = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %.val.i.i428, i64 noundef %i.rc) #27
  br label %pm_rest_parameter_node_create.exit

pm_rest_parameter_node_create.exit:               ; preds = %pm_node_alloc.exit.i424, %bb.df
  %i.re = phi i32 [ %i.rd, %bb.df ], [ 0, %pm_node_alloc.exit.i424 ]
  %i.rf = phi ptr [ %.sroa.9.0.i427, %bb.df ], [ %.sroa.5504.0.copyload, %pm_node_alloc.exit.i424 ] ; 3 uses
  %.sroa.13.0.i430 = phi ptr [ %.val.i.i428, %bb.df ], [ null, %pm_node_alloc.exit.i424 ]
  %.sroa.15.0.i431 = phi ptr [ %.sroa.9.0.i427, %bb.df ], [ null, %pm_node_alloc.exit.i424 ]
  store i16 130, ptr %i.qs, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx.i432 = getelementptr inbounds nuw i8, ptr %i.qs, i64 4
  store i32 %i.qz, ptr %.sroa.5.0..sroa_idx.i432, align 4, !tbaa !31
  %.sroa.7.0..sroa_idx.i433 = getelementptr inbounds nuw i8, ptr %i.qs, i64 8 ; 2 uses
  store ptr %.sroa.3.0.copyload, ptr %.sroa.7.0..sroa_idx.i433, align 8, !tbaa !36
  %.sroa.9.0..sroa_idx.i434 = getelementptr inbounds nuw i8, ptr %i.qs, i64 16
  store ptr %i.rf, ptr %.sroa.9.0..sroa_idx.i434, align 8, !tbaa !36
  %.sroa.11.0..sroa_idx.i435 = getelementptr inbounds nuw i8, ptr %i.qs, i64 24
  store i32 %i.re, ptr %.sroa.11.0..sroa_idx.i435, align 8, !tbaa !31
  %.sroa.13.0..sroa_idx.i436 = getelementptr inbounds nuw i8, ptr %i.qs, i64 32
  store ptr %.sroa.13.0.i430, ptr %.sroa.13.0..sroa_idx.i436, align 8, !tbaa !36
  %.sroa.15.0..sroa_idx.i437 = getelementptr inbounds nuw i8, ptr %i.qs, i64 40
  store ptr %.sroa.15.0.i431, ptr %.sroa.15.0..sroa_idx.i437, align 8, !tbaa !36
  %.sroa.17.0..sroa_idx.i438 = getelementptr inbounds nuw i8, ptr %i.qs, i64 48
  store ptr %.sroa.3.0.copyload, ptr %.sroa.17.0..sroa_idx.i438, align 8, !tbaa !36
  %.sroa.18.0..sroa_idx.i439 = getelementptr inbounds nuw i8, ptr %i.qs, i64 56
  store ptr %.sroa.5504.0.copyload, ptr %.sroa.18.0..sroa_idx.i439, align 8, !tbaa !36
  br i1 %.0232, label %pm_node_flag_set_repeated_parameter.exit441, label %bb.dg

pm_node_flag_set_repeated_parameter.exit441:      ; preds = %pm_rest_parameter_node_create.exit
  %i.rg = getelementptr i8, ptr %i.qs, i64 2      ; 2 uses
  %i.rh = load i16, ptr %i.rg, align 2, !tbaa !116
  %i.ri = or i16 %i.rh, 4
  store i16 %i.ri, ptr %i.rg, align 2, !tbaa !116
  br label %bb.dg

bb.dg:                                            ; preds = %pm_node_flag_set_repeated_parameter.exit441, %pm_rest_parameter_node_create.exit
  %i.rj = load ptr, ptr %i.w, align 8, !tbaa !579
  %i.rk = icmp eq ptr %i.rj, null
  br i1 %i.rk, label %bb.dh, label %bb.di

bb.dh:                                            ; preds = %bb.dg
  %i.rl = load <2 x ptr>, ptr %i.t, align 8, !tbaa !36 ; 4 uses
  %i.rm = icmp eq <2 x ptr> %i.rl, splat (ptr null)
  %i.rn = insertelement <2 x ptr> %i.rl, ptr %i.rf, i64 1 ; 2 uses
  %i.ro = insertelement <2 x ptr> %i.rl, ptr %.sroa.3.0.copyload, i64 0
  %i.rp = icmp uge <2 x ptr> %i.rn, %i.ro
  %i.rq = select <2 x i1> %i.rm, <2 x i1> splat (i1 true), <2 x i1> %i.rp
  %i.rr = insertelement <2 x ptr> %i.rn, ptr %.sroa.3.0.copyload, i64 0
  %i.rs = select <2 x i1> %i.rq, <2 x ptr> %i.rr, <2 x ptr> %i.rl
  store <2 x ptr> %i.rs, ptr %i.t, align 8, !tbaa !36
  store ptr %i.qs, ptr %i.w, align 8, !tbaa !579
  br label %bb.dj

bb.di:                                            ; preds = %bb.dg
  %i.rt = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.r, ptr noundef %.sroa.3.0.copyload, ptr noundef %i.rf, i32 noundef 215) #27 ; 0 uses
  %i.ru = load <2 x ptr>, ptr %i.t, align 8, !tbaa !36 ; 4 uses
  %i.rv = icmp eq <2 x ptr> %i.ru, splat (ptr null)
  %i.rw = load <2 x ptr>, ptr %.sroa.7.0..sroa_idx.i433, align 8, !tbaa !36 ; 3 uses
  %i.rx = shufflevector <2 x ptr> %i.ru, <2 x ptr> %i.rw, <2 x i32> <i32 0, i32 3>
  %i.ry = shufflevector <2 x ptr> %i.rw, <2 x ptr> %i.ru, <2 x i32> <i32 0, i32 3>
  %i.rz = icmp uge <2 x ptr> %i.rx, %i.ry
  %i.sa = select <2 x i1> %i.rv, <2 x i1> splat (i1 true), <2 x i1> %i.rz
  %i.sb = select <2 x i1> %i.sa, <2 x ptr> %i.rw, <2 x ptr> %i.ru
  store <2 x ptr> %i.sb, ptr %i.t, align 8, !tbaa !36
  tail call void @pm_node_list_append(ptr noundef %i.v, ptr noundef nonnull %i.qs) #27
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #27
  br label %.critedge

bb.dk:                                            ; preds = %.critedge245, %.critedge245
  %i.sc = load i32, ptr %i.a, align 4, !tbaa !31
  %i.sd = call fastcc zeroext i1 @update_parameter_state(ptr noundef nonnull %0, ptr noundef nonnull %i.k, ptr noundef %i.a) ; 0 uses
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %13, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !149
  %.val.i446 = load i32, ptr %i.k, align 8, !tbaa !154 ; 2 uses
  %i.se = icmp eq i32 %.val.i446, 90
  br i1 %i.se, label %bb.dl, label %accept1.exit447

bb.dl:                                            ; preds = %bb.dk
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %i.sf = icmp ult i32 %i.sc, 4
  br i1 %i.sf, label %bb.dm, label %bb.dn

bb.dm:                                            ; preds = %bb.dl
  %i.sg = load ptr, ptr %i.p, align 8, !tbaa !181
  %i.sh = load ptr, ptr %i.q, align 8, !tbaa !180
  %i.si = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.r, ptr noundef %i.sg, ptr noundef %i.sh, i32 noundef 218) #27 ; 0 uses
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl
  %i.sj = call fastcc ptr @pm_no_keywords_parameter_node_create(ptr noundef nonnull %0, ptr noundef %13, ptr noundef nonnull %i.l)
  br label %bb.dt

accept1.exit447:                                  ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #27
  %i.sk = icmp eq i32 %.val.i446, 66
  br i1 %i.sk, label %bb.do, label %accept1.exit449

bb.do:                                            ; preds = %accept1.exit447
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %14, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !tbaa.struct !149
  %i.sl = call fastcc zeroext i1 @pm_parser_parameter_name_check(ptr noundef nonnull %0, ptr noundef nonnull %14) ; 2 uses
  %.val265 = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !127 ; 5 uses
  %.val266 = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !128 ; 4 uses
  %i.sm = ptrtoint ptr %.val266 to i64
  %i.sn = ptrtoint ptr %.val265 to i64
  %i.so = sub i64 %i.sm, %i.sn
  %i.sp = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.o, ptr noundef %.val265, i64 noundef %i.so) #27 ; 2 uses
  %.not.i.i450 = icmp eq i32 %i.sp, 0
  br i1 %.not.i.i450, label %pm_parser_local_add_token.exit452, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %.val.i.i451 = load ptr, ptr %i.n, align 8, !tbaa !75
  tail call fastcc void @pm_parser_local_add(ptr %.val.i.i451, i32 noundef %i.sp, ptr noundef %.val265, ptr noundef %.val266, i32 noundef 1)
  br label %pm_parser_local_add_token.exit452

accept1.exit449:                                  ; preds = %accept1.exit447
  %.val258 = load ptr, ptr %i.m, align 8, !tbaa !86 ; 4 uses
end_hunk_4
