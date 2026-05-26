inline.NumInlined: 2622
inline.NumDeleted: 264
begin_hunk_0_@pm_parse:bb.a
  %.0.i = phi ptr [ %.4.i.i, %wrap_statements.exit.i ], [ %i.g, %flush_block_exits.exit.i ] ; 2 uses
  call void @pm_node_list_free(ptr noundef nonnull %2) #27
  %i.kq = icmp eq ptr %.0.i, null
  br i1 %i.kq, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %bb.bx
  %i.kr = call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 6 uses
  %i.ks = icmp eq ptr %i.kr, null
  br i1 %i.ks, label %bb.bz, label %pm_statements_node_create.exit.i

bb.bz:                                            ; preds = %bb.by
  %i.kt = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.ku = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.kt, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  call void @abort() #26
  unreachable

pm_statements_node_create.exit.i:                 ; preds = %bb.by
  %i.kv = load i32, ptr %0, align 8, !tbaa !109
  %i.kw = add i32 %i.kv, 1                        ; 2 uses
  store i32 %i.kw, ptr %0, align 8, !tbaa !109
  %i.kx = getelementptr i8, ptr %0, i64 304
  %i.ky = load ptr, ptr %i.kx, align 8, !tbaa !74 ; 2 uses
  store i16 140, ptr %i.kr, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i32.i = getelementptr inbounds nuw i8, ptr %i.kr, i64 4
  store i32 %i.kw, ptr %.sroa.3.0..sroa_idx.i32.i, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i33.i = getelementptr inbounds nuw i8, ptr %i.kr, i64 8
  %.sroa.5.0..sroa_idx.i34.i = getelementptr inbounds nuw i8, ptr %i.kr, i64 16
  store ptr %i.ky, ptr %.sroa.4.0..sroa_idx.i33.i, align 8, !tbaa !14
  store ptr %i.ky, ptr %.sroa.5.0..sroa_idx.i34.i, align 8, !tbaa !14
  br label %bb.ca

bb.ca:                                            ; preds = %pm_statements_node_create.exit.i, %bb.bx
  %.1.i = phi ptr [ %i.kr, %pm_statements_node_create.exit.i ], [ %.0.i, %bb.bx ] ; 2 uses
  %i.kz = call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #30 ; 7 uses
  %i.la = icmp eq ptr %i.kz, null
  br i1 %i.la, label %bb.cb, label %parse_program.exit

bb.cb:                                            ; preds = %bb.ca
  %i.lb = load ptr, ptr @stderr, align 8, !tbaa !107
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
  %i.lg = load <2 x ptr>, ptr %i.lf, align 8, !tbaa !14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx.i35.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %3, i64 24, i1 false)
  store i16 121, ptr %i.kz, align 8, !tbaa !110
  store i32 %i.le, ptr %.sroa.3.0..sroa_idx.i36.i, align 4, !tbaa !7
  store <2 x ptr> %i.lg, ptr %.sroa.4.0..sroa_idx.i37.i, align 8, !tbaa !14
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.kz, i64 48
  store ptr %.1.i, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !tbaa !136
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #27
  ret ptr %i.kz
}

; Function Attrs: nounwind sspstrong uwtable
define hidden nonnull ptr @pm_parse_stream(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef readonly captures(none) %3, ptr noundef readonly captures(none) %4, ptr noundef %5) local_unnamed_addr #1 {
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
  %i.i = load i64, ptr %i.f, align 8, !tbaa !141
  %.not = icmp eq i64 %i.i, 0
  br i1 %.not, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.g, align 8, !tbaa !90
  %.not29 = icmp eq i64 %i.j, 0
  br i1 %.not29, label %.preheader, label %.critedge2

.preheader:                                       ; preds = %bb.c, %bb.d
  %.0.in.i = phi ptr [ %.0.i, %bb.d ], [ %i.h, %bb.c ]
  %.0.i = load ptr, ptr %.0.in.i, align 8, !tbaa !142 ; 3 uses
  %.not.not.not.not.i.not = icmp eq ptr %.0.i, null
  br i1 %.not.not.not.not.i.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.k = getelementptr i8, ptr %.0.i, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !143
  %i.m = icmp eq i32 %i.l, 138
  br i1 %i.m, label %.critedge2, label %.preheader, !llvm.loop !145

.critedge2:                                       ; preds = %bb.d, %bb.c
  tail call void @pm_node_destroy(ptr noundef %0, ptr noundef nonnull %.033) #27
  %i.n = tail call fastcc zeroext i1 @pm_parse_stream_read(ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  tail call void @pm_parser_free(ptr noundef %0)
  %i.o = tail call ptr @pm_buffer_value(ptr noundef %1) #27
  %i.p = tail call i64 @pm_buffer_length(ptr noundef %1) #27
  tail call void @pm_parser_init(ptr noundef %0, ptr noundef %i.o, i64 noundef %i.p, ptr noundef %5)
  %i.q = tail call ptr @pm_parse(ptr noundef %0)  ; 2 uses
  br i1 %i.n, label %.critedge, label %bb.b, !llvm.loop !146

.critedge:                                        ; preds = %.critedge2, %bb.b, %.preheader, %bb.a
  %.032 = phi ptr [ %.033, %.preheader ], [ %i.e, %bb.a ], [ %i.q, %.critedge2 ], [ %.033, %bb.b ]
  ret ptr %.032
}

declare zeroext i1 @pm_buffer_init(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @pm_parse_stream_read(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3) unnamed_addr #1 {
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
  %i.e = load i8, ptr %i.d, align 1, !tbaa !67
  %i.f = icmp eq i8 %i.e, 10
  br i1 %i.f, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.preheader
  %i.g = add nsw i64 %.01628, -1                  ; 2 uses
  %cond = icmp eq i64 %i.g, 0
  br i1 %cond, label %.thread, label %.preheader.backedge

.preheader.backedge:                              ; preds = %bb.b, %select.unfold
  %.01628.be = phi i64 [ %i.g, %bb.b ], [ 4096, %select.unfold ]
  br label %.preheader, !llvm.loop !147

.critedge:                                        ; preds = %.preheader
  %i.h = icmp eq i64 %.01628, 4096
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.critedge
  call void @pm_buffer_append_string(ptr noundef %0, ptr noundef nonnull %i.a, i64 noundef 4095) #27
  br label %select.unfold, !llvm.loop !148

bb.d:                                             ; preds = %.critedge
  %i.i = add i64 %.01628, -1                      ; 2 uses
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
  %i.c = load i64, ptr %i.b, align 8, !tbaa !141
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
define hidden void @pm_serialize_parse_stream(ptr noundef %0, ptr noundef %1, ptr noundef readonly captures(none) %2, ptr noundef readonly captures(none) %3, ptr noundef %4) local_unnamed_addr #1 {
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
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  call void @pm_serialize_encoding(ptr noundef %i.c, ptr noundef %0) #27
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 664
  %i.e = load i32, ptr %i.d, align 8, !tbaa !26
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
bb.a:
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #29
  %i.b = getelementptr i8, ptr %2, i64 %i.a
  %i.c = tail call ptr @pm_encoding_find(ptr noundef nonnull %2, ptr noundef %i.b) #27 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %bb.o, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !149
  %i.h = tail call i64 %i.g(ptr noundef %0, i64 noundef %1) #27 ; 2 uses
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = load i8, ptr %0, align 1, !tbaa !67      ; 2 uses
  %i.j = icmp eq i8 %i.i, 95
  br i1 %i.j, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = icmp slt i8 %i.i, 0
  br i1 %i.k, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !151
  %i.m = tail call i64 %i.l(ptr noundef nonnull %0, i64 noundef %1) #27 ; 2 uses
  %.not58 = icmp eq i64 %i.m, 0
  br i1 %.not58, label %bb.o, label %bb.g

bb.g:                                             ; preds = %bb.d, %bb.f, %bb.c
  %.046 = phi i64 [ %i.h, %bb.c ], [ %i.m, %bb.f ], [ 1, %bb.d ]
  %i.n = getelementptr i8, ptr %0, i64 %1         ; 4 uses
  %i.o = getelementptr i8, ptr %i.c, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !152
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = tail call zeroext i1 %i.p(ptr noundef %0, i64 noundef %1) #27
end_hunk_0
begin_hunk_1_@parse_statements:bb.a

bb.o:                                             ; preds = %context_terminator.exit60.thread
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val = load i32, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  %i.bm = icmp eq i32 %.val, 1
  br i1 %i.bm, label %context_terminator.exit52.thread.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.o, %accept2.exit63
  %.val45 = phi i32 [ %.val.i61.pre, %accept2.exit63 ], [ %.val, %bb.o ] ; 3 uses
  switch i32 %.val45, label %bb.p [
    i32 17, label %accept2.exit63
    i32 14, label %accept2.exit63
  ]

accept2.exit63:                                   ; preds = %.preheader, %.preheader
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  %.val.i61.pre = load i32, ptr %i.a, align 8, !tbaa !170
  br label %.preheader

bb.p:                                             ; preds = %.preheader
  %i.bn = icmp ult i32 %.val45, 32
  br i1 %i.bn, label %context_terminator.exit64, label %context_terminator.exit59.thread.backedge

context_terminator.exit64:                        ; preds = %bb.p
  %i.bo = load i32, ptr %i.y, align 4, !tbaa !7
  %i.bp = shl nuw i32 1, %.val45
  %i.bq = and i32 %i.bo, %i.bp
  %.not73 = icmp eq i32 %i.bq, 0
  br i1 %.not73, label %context_terminator.exit59.thread.backedge, label %context_terminator.exit52.thread

context_terminator.exit59.thread.backedge:        ; preds = %context_terminator.exit64, %accept2.exit67, %accept2.exit67.thread, %bb.p, %bb.m, %context_terminator.exit59
  br label %context_terminator.exit59.thread

bb.q:                                             ; preds = %context_terminator.exit60.thread
  switch i32 %.val48, label %accept2.exit67 [
    i32 14, label %accept2.exit67.thread
    i32 1, label %accept2.exit67.thread
  ]

accept2.exit67.thread:                            ; preds = %bb.q, %bb.q
  tail call fastcc void @parser_lex(ptr noundef nonnull %0)
  br label %context_terminator.exit59.thread.backedge

accept2.exit67:                                   ; preds = %bb.q
  %i.br = load ptr, ptr %i.aa, align 8, !tbaa !166
  %i.bs = load ptr, ptr %i.ab, align 8, !tbaa !76
  %i.bt = tail call ptr @pm_token_type_human(i32 noundef %.val48) #27
  %i.bu = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.z, ptr noundef %i.br, ptr noundef %i.bs, i32 noundef 90, ptr noundef %i.bt) #27 ; 0 uses
  %i.bv = load ptr, ptr %i.ad, align 8, !tbaa !255
  store ptr %i.bv, ptr %i.ae, align 8, !tbaa !256
  store i32 163, ptr %i.ac, align 8, !tbaa !200
  br label %context_terminator.exit59.thread.backedge

context_terminator.exit52.thread.sink.split:      ; preds = %bb.o, %context_terminator.exit52
  %.sink = phi i8 [ 0, %context_terminator.exit52 ], [ 1, %bb.o ]
  store i8 %.sink, ptr %i.w, align 1, !tbaa !254
  br label %context_terminator.exit52.thread

context_terminator.exit52.thread:                 ; preds = %context_terminator.exit59, %context_terminator.exit60, %context_terminator.exit64, %context_terminator.exit52.thread.sink.split, %bb.k, %context_terminator.exit52
  %i.bw = getelementptr i8, ptr %0, i64 504       ; 2 uses
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !253 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bx, i64 8
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !257
  tail call void @free(ptr noundef %i.bx) #27
  store ptr %i.bz, ptr %i.bw, align 8, !tbaa !253
  %i.ca = load i64, ptr %i.t, align 8, !tbaa !101 ; 2 uses
  %.not.i = icmp eq i64 %i.ca, 0
  br i1 %.not.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %context_terminator.exit52.thread
  tail call void @__assert_fail(ptr noundef nonnull @.str.241, ptr noundef nonnull @.str.2, i32 noundef 1338, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_void_statements_check) #26
  unreachable

bb.s:                                             ; preds = %context_terminator.exit52.thread
  %i.cb = add nsw i32 %1, -2
  %switch.and = and i32 %i.cb, -17
  %switch.selectcmp = icmp ne i32 %switch.and, 0
  %.neg.i = sext i1 %switch.selectcmp to i64
  %i.cc = add i64 %i.ca, %.neg.i                  ; 2 uses
  %.not10.i = icmp eq i64 %i.cc, 0
  br i1 %.not10.i, label %pm_void_statements_check.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.s, %.lr.ph.i
  %.09.i = phi i64 [ %i.cg, %.lr.ph.i ], [ 0, %bb.s ] ; 2 uses
  %i.cd = load ptr, ptr %i.u, align 8, !tbaa !104
  %i.ce = getelementptr [8 x i8], ptr %i.cd, i64 %.09.i
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !105
  tail call fastcc void @pm_void_statement_check(ptr noundef nonnull %0, ptr noundef %i.cf)
  %i.cg = add nuw i64 %.09.i, 1                   ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.cg, %i.cc
  br i1 %exitcond.not.i, label %pm_void_statements_check.exit, label %.lr.ph.i, !llvm.loop !258

pm_void_statements_check.exit:                    ; preds = %.lr.ph.i, %bb.s, %context_terminator.exit
  %.044 = phi ptr [ null, %context_terminator.exit ], [ %i.h, %bb.s ], [ %i.h, %.lr.ph.i ]
  ret ptr %.044
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_void_statement_check(ptr noundef %0, ptr noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !115
  switch i16 %i.a, label %bb.t [
    i16 10, label %select.unfold
    i16 30, label %select.unfold
    i16 62, label %select.unfold
    i16 79, label %select.unfold
    i16 96, label %select.unfold
    i16 111, label %select.unfold
    i16 19, label %bb.b
    i16 37, label %bb.k
    i16 42, label %bb.l
    i16 46, label %bb.m
    i16 51, label %bb.n
    i16 54, label %bb.o
    i16 68, label %bb.o
    i16 82, label %bb.o
    i16 84, label %bb.o
    i16 85, label %bb.o
    i16 123, label %bb.o
    i16 125, label %bb.o
    i16 136, label %bb.o
    i16 137, label %bb.o
    i16 138, label %bb.o
    i16 141, label %bb.o
    i16 143, label %bb.o
    i16 108, label %bb.p
    i16 122, label %bb.q
    i16 133, label %bb.r
    i16 144, label %bb.s
  ]

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !259
  %.not34 = icmp eq ptr %i.c, null
  br i1 %.not34, label %bb.c, label %bb.t

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 56
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !260
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.t, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr i8, ptr %0, i64 576
  %i.h = getelementptr i8, ptr %1, i64 48
  %i.i = load i32, ptr %i.h, align 8, !tbaa !120
  %i.j = tail call ptr @pm_constant_pool_id_to_constant(ptr noundef %i.g, i32 noundef %i.i) #27 ; 4 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = load i64, ptr %i.k, align 8, !tbaa !261
  switch i64 %i.l, label %bb.t [
    i64 1, label %bb.e
    i64 2, label %bb.f
    i64 3, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !263  ; 11 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !67
  switch i8 %i.n, label %bb.t [
    i8 43, label %select.unfold
    i8 45, label %select.unfold
    i8 42, label %select.unfold
    i8 47, label %select.unfold
    i8 37, label %select.unfold
    i8 124, label %select.unfold
    i8 94, label %select.unfold
    i8 38, label %select.unfold
    i8 62, label %select.unfold
    i8 60, label %select.unfold
  ]

bb.f:                                             ; preds = %bb.d
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !263  ; 11 uses
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = load i8, ptr %i.p, align 1, !tbaa !67
  switch i8 %i.q, label %bb.t [
    i8 61, label %bb.g
    i8 64, label %bb.h
    i8 42, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.r = load i8, ptr %i.o, align 1, !tbaa !67
  switch i8 %i.r, label %bb.t [
    i8 60, label %select.unfold
    i8 62, label %select.unfold
    i8 33, label %select.unfold
    i8 61, label %select.unfold
  ]

bb.h:                                             ; preds = %bb.f
  %i.s = load i8, ptr %i.o, align 1, !tbaa !67
  switch i8 %i.s, label %bb.t [
    i8 43, label %select.unfold
    i8 45, label %select.unfold
  ]

bb.i:                                             ; preds = %bb.f
  %i.t = load i8, ptr %i.o, align 1, !tbaa !67
  %i.u = icmp eq i8 %i.t, 42
  br i1 %i.u, label %select.unfold, label %bb.t

bb.j:                                             ; preds = %bb.d
  %i.v = load ptr, ptr %i.j, align 8, !tbaa !263  ; 2 uses
  %i.w = load i16, ptr %i.v, align 1
  %i.x = xor i16 %i.w, 15676
  %i.y = getelementptr i8, ptr %i.v, i64 2
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = zext i8 %i.z to i16
  %i.ab = xor i16 %i.aa, 62
  %i.ac = or i16 %i.x, %i.ab
  %i.ad = icmp ne i16 %i.ac, 0
  %i.ae = zext i1 %i.ad to i32
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %select.unfold, label %bb.t

bb.k:                                             ; preds = %bb.a
  br label %select.unfold

bb.l:                                             ; preds = %bb.a
  br label %select.unfold

bb.m:                                             ; preds = %bb.a
  br label %select.unfold

bb.n:                                             ; preds = %bb.a
  br label %select.unfold

bb.o:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %select.unfold

bb.p:                                             ; preds = %bb.a
  br label %select.unfold

bb.q:                                             ; preds = %bb.a
  %i.ag = getelementptr i8, ptr %1, i64 2
  %i.ah = load i16, ptr %i.ag, align 2, !tbaa !116
  %i.ai = and i16 %i.ah, 4
  %.not = icmp eq i16 %i.ai, 0                    ; 2 uses
  %. = select i1 %.not, i32 2, i32 3
  %.str.246..str.128 = select i1 %.not, ptr @.str.246, ptr @.str.128
  br label %select.unfold

bb.r:                                             ; preds = %bb.a
  br label %select.unfold

bb.s:                                             ; preds = %bb.a
  br label %select.unfold

select.unfold:                                    ; preds = %bb.j, %bb.i, %bb.h, %bb.h, %bb.g, %bb.g, %bb.g, %bb.g, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.e, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.s, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r
  %.331.ph = phi i32 [ 2, %bb.i ], [ 2, %bb.h ], [ 2, %bb.g ], [ 1, %bb.e ], [ 10, %bb.a ], [ 4, %bb.r ], [ %., %bb.q ], [ 3, %bb.p ], [ 9, %bb.o ], [ 5, %bb.n ], [ 8, %bb.m ], [ 10, %bb.l ], [ 2, %bb.k ], [ 4, %bb.s ], [ 10, %bb.a ], [ 10, %bb.a ], [ 10, %bb.a ], [ 10, %bb.a ], [ 10, %bb.a ], [ 1, %bb.e ], [ 1, %bb.e ], [ 1, %bb.e ], [ 1, %bb.e ], [ 1, %bb.e ], [ 1, %bb.e ], [ 1, %bb.e ], [ 1, %bb.e ], [ 1, %bb.e ], [ 2, %bb.g ], [ 2, %bb.g ], [ 2, %bb.g ], [ 2, %bb.h ], [ 3, %bb.j ]
  %.3.ph = phi ptr [ %i.o, %bb.i ], [ %i.o, %bb.h ], [ %i.o, %bb.g ], [ %i.m, %bb.e ], [ @.str.242, %bb.a ], [ @.str.75, %bb.r ], [ %.str.246..str.128, %bb.q ], [ @.str.69, %bb.p ], [ @.str.245, %bb.o ], [ @.str.53, %bb.n ], [ @.str.59, %bb.m ], [ @.str.244, %bb.l ], [ @.str.243, %bb.k ], [ @.str.52, %bb.s ], [ @.str.242, %bb.a ], [ @.str.242, %bb.a ], [ @.str.242, %bb.a ], [ @.str.242, %bb.a ], [ @.str.242, %bb.a ], [ %i.m, %bb.e ], [ %i.m, %bb.e ], [ %i.m, %bb.e ], [ %i.m, %bb.e ], [ %i.m, %bb.e ], [ %i.m, %bb.e ], [ %i.m, %bb.e ], [ %i.m, %bb.e ], [ %i.m, %bb.e ], [ %i.o, %bb.g ], [ %i.o, %bb.g ], [ %i.o, %bb.g ], [ %i.o, %bb.h ], [ @.str.16, %bb.j ]
  %i.aj = getelementptr i8, ptr %0, i64 448
  %i.ak = getelementptr i8, ptr %1, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !133
  %i.am = getelementptr i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !134
  %i.ao = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.aj, ptr noundef %i.al, ptr noundef %i.an, i32 noundef 325, i32 noundef %.331.ph, ptr noundef nonnull %.3.ph) #27 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.a, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.b, %bb.c, %bb.i, %bb.j, %select.unfold
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_locals_order(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef nonnull %2, i1 noundef zeroext %3) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !155
  %i.b = zext i32 %i.a to i64
  tail call void @pm_constant_id_list_init_capacity(ptr noundef nonnull %2, i64 noundef %i.b) #27
  %i.c = getelementptr i8, ptr %1, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !93   ; 2 uses
  %i.e = icmp ult i32 %i.d, 9
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %1, align 8, !tbaa !155
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi i32 [ %i.f, %bb.b ], [ %i.d, %bb.a ] ; 4 uses
  br i1 %3, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 694
  %i.i = load i8, ptr %i.h, align 2, !tbaa !57, !range !45, !noundef !46
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 692
  %i.l = load i8, ptr %i.k, align 4, !tbaa !51
  %.fr41 = freeze i8 %i.l
  %i.m = and i8 %.fr41, 2
  %.not = icmp eq i8 %i.m, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.fr = phi i1 [ true, %bb.c ], [ %.not, %bb.e ]
  %.not39 = icmp eq i32 %i.g, 0
  br i1 %.not39, label %._crit_edge, label %.lr.ph

.thread:                                          ; preds = %bb.d
  %.not3955 = icmp eq i32 %i.g, 0
  br i1 %.not3955, label %._crit_edge, label %.lr.ph.thread

.lr.ph.thread:                                    ; preds = %.thread
  %i.n = getelementptr i8, ptr %1, i64 8
  br label %.lr.ph.split.preheader

.lr.ph:                                           ; preds = %bb.f
  %i.o = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.p = getelementptr i8, ptr %0, i64 664
  %i.q = getelementptr i8, ptr %0, i64 600
  %i.r = getelementptr i8, ptr %0, i64 576
  %i.s = getelementptr i8, ptr %0, i64 448
  br i1 %.fr, label %.lr.ph.split.us.preheader, label %.lr.ph.split.preheader

.lr.ph.split.preheader:                           ; preds = %.lr.ph.thread, %.lr.ph
  %i.t = phi ptr [ %i.n, %.lr.ph.thread ], [ %i.o, %.lr.ph ]
  %wide.trip.count = zext i32 %i.g to i64
  br label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %wide.trip.count47 = zext i32 %i.g to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.m
  %indvars.iv44 = phi i64 [ 0, %.lr.ph.split.us.preheader ], [ %indvars.iv.next45, %bb.m ] ; 2 uses
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !94
  %i.v = getelementptr [40 x i8], ptr %i.u, i64 %indvars.iv44 ; 7 uses
  %i.w = load i32, ptr %i.v, align 8, !tbaa !156  ; 2 uses
  %.not35.us = icmp eq i32 %i.w, 0
  br i1 %.not35.us, label %bb.m, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.us
  %i.x = getelementptr i8, ptr %i.v, i64 24
  %i.y = load i32, ptr %i.x, align 8, !tbaa !264
  %i.z = zext i32 %i.y to i64
  tail call void @pm_constant_id_list_insert(ptr noundef nonnull %2, i64 noundef %i.z, i32 noundef %i.w) #27
  %i.aa = getelementptr i8, ptr %i.v, i64 28
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !265
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.h, label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.ad = load i32, ptr %i.p, align 8, !tbaa !26  ; 2 uses
  %i.ae = icmp sgt i32 %i.ad, -1
  br i1 %i.ae, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr i8, ptr %i.v, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !266
  %i.ah = tail call i32 @pm_newline_list_line(ptr noundef %i.q, ptr noundef %i.ag, i32 noundef %i.ad) #27
  %i.ai = icmp sgt i32 %i.ah, -1
  br i1 %i.ai, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = load i32, ptr %i.v, align 8, !tbaa !156
  %i.ak = tail call ptr @pm_constant_pool_id_to_constant(ptr noundef %i.r, i32 noundef %i.aj) #27 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !261 ; 2 uses
  %.not36.us = icmp eq i64 %i.am, 0
  br i1 %.not36.us, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = load ptr, ptr %i.ak, align 8, !tbaa !263 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !67
  %.not37.us = icmp eq i8 %i.ao, 95
  br i1 %.not37.us, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = getelementptr i8, ptr %i.v, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !266
  %i.ar = getelementptr i8, ptr %i.v, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !267
  %i.at = trunc i64 %i.am to i32
  %i.au = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.s, ptr noundef %i.aq, ptr noundef %i.as, i32 noundef 324, i32 noundef %i.at, ptr noundef nonnull %i.an) #27 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %.lr.ph.split.us
  %indvars.iv.next45 = add nuw nsw i64 %indvars.iv44, 1 ; 2 uses
  %exitcond48.not = icmp eq i64 %indvars.iv.next45, %wide.trip.count47
  br i1 %exitcond48.not, label %._crit_edge, label %.lr.ph.split.us, !llvm.loop !268

._crit_edge:                                      ; preds = %bb.m, %bb.o, %.thread, %bb.f
  ret void

.lr.ph.split:                                     ; preds = %.lr.ph.split.preheader, %bb.o
  %indvars.iv = phi i64 [ 0, %.lr.ph.split.preheader ], [ %indvars.iv.next, %bb.o ] ; 2 uses
  %i.av = load ptr, ptr %i.t, align 8, !tbaa !94
  %i.aw = getelementptr [40 x i8], ptr %i.av, i64 %indvars.iv ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !156 ; 2 uses
  %.not35 = icmp eq i32 %i.ax, 0
  br i1 %.not35, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.lr.ph.split
  %i.ay = getelementptr i8, ptr %i.aw, i64 24
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !264
  %i.ba = zext i32 %i.az to i64
  tail call void @pm_constant_id_list_insert(ptr noundef nonnull %2, i64 noundef %i.ba, i32 noundef %i.ax) #27
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %.lr.ph.split
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph.split, !llvm.loop !268
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @flush_block_exits(ptr noundef %0, ptr noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 680        ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !100  ; 2 uses
end_hunk_1
begin_hunk_2_@parse_assocs:bb.a
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
define internal fastcc noalias nonnull ptr @pm_assoc_node_create(ptr noundef captures(none) %0, ptr noundef %1, ptr noundef nonnull readonly captures(none) %2, ptr noundef %3) unnamed_addr #1 {
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
    i16 141, label %.thread
    i16 6, label %bb.h
    i16 65, label %bb.h
  ]

.thread:                                          ; preds = %bb.d
  %i.o = getelementptr i8, ptr %1, i64 2          ; 2 uses
  %i.p = load i16, ptr %i.o, align 2, !tbaa !116
  %i.q = or i16 %i.p, 18
  store i16 %i.q, ptr %i.o, align 2, !tbaa !116
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.thread
  %i.r = icmp ne i16 %i.n, 122
  %or.cond = and i1 %i.e, %i.r
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.s = load i16, ptr %3, align 8, !tbaa !115
  switch i16 %i.s, label %bb.g [
    i16 6, label %bb.h
    i16 65, label %bb.h
    i16 122, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %1, i64 2
  %i.u = load i16, ptr %i.t, align 2, !tbaa !116
  %i.v = getelementptr i8, ptr %3, i64 2
  %i.w = load i16, ptr %i.v, align 2, !tbaa !116
  %i.x = and i16 %i.u, 2
  %i.y = and i16 %i.x, %i.w
  br label %bb.h

bb.h:                                             ; preds = %bb.d, %bb.d, %bb.f, %bb.f, %bb.f, %bb.g, %bb.e
  %.030 = phi i16 [ 0, %bb.d ], [ 0, %bb.d ], [ 0, %bb.f ], [ 0, %bb.f ], [ 0, %bb.f ], [ %i.y, %bb.g ], [ 0, %bb.e ]
  %i.z = load i32, ptr %0, align 8, !tbaa !109
  %i.aa = add i32 %i.z, 1                         ; 2 uses
  store i32 %i.aa, ptr %0, align 8, !tbaa !109
  %i.ab = getelementptr i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !133
  %i.ad = load i32, ptr %2, align 8, !tbaa !126
  %i.ae = icmp eq i32 %i.ad, 164
  br i1 %i.ae, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr i8, ptr %2, i64 8
  %i.ag = load <2 x ptr>, ptr %i.af, align 8, !tbaa !14
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.ah = phi <2 x ptr> [ %i.ag, %bb.i ], [ splat (ptr null), %bb.h ]
  store i16 8, ptr %i.a, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i16 %.030, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.aa, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ac, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.0, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %3, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !105
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store <2 x ptr> %i.ah, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_keyword_hash_node_elements_append(ptr noundef nonnull %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = load i16, ptr %1, align 8, !tbaa !115
  %i.b = icmp eq i16 %i.a, 8
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !129
  %i.e = load i16, ptr %i.d, align 8, !tbaa !115
  %i.f = icmp eq i16 %i.e, 143
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr i8, ptr %0, i64 2          ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !tbaa !116
  %i.i = and i16 %i.h, -5
  store i16 %i.i, ptr %i.g, align 2, !tbaa !116
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.j = getelementptr i8, ptr %0, i64 24
  tail call void @pm_node_list_append(ptr noundef %i.j, ptr noundef nonnull %1) #27
  %i.k = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !131
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !133
  store ptr %i.o, ptr %i.k, align 8, !tbaa !131
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.p = getelementptr i8, ptr %1, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !134
  %i.r = getelementptr i8, ptr %0, i64 16
  store ptr %i.q, ptr %i.r, align 8, !tbaa !135
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
end_hunk_2
begin_hunk_3_@parse_rescues:bb.a
pm_ensure_node_create.exit:                       ; preds = %accept2.exit190
  %i.er = load i32, ptr %0, align 8, !tbaa !109
  %i.es = add i32 %i.er, 1                        ; 2 uses
  store i32 %i.es, ptr %0, align 8, !tbaa !109
  store i16 50, ptr %i.en, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i192 = getelementptr inbounds nuw i8, ptr %i.en, i64 4
  store i32 %i.es, ptr %.sroa.3.0..sroa_idx.i192, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx.i193 = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store ptr %.sroa.3.0.copyload, ptr %.sroa.4.0..sroa_idx.i193, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx.i194 = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %.sroa.6.0..sroa_idx.i195 = getelementptr inbounds nuw i8, ptr %i.en, i64 24
  store <2 x ptr> %i.ec, ptr %.sroa.6.0..sroa_idx.i195, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.en, i64 40
  store ptr %.0133, ptr %.sroa.8.0..sroa_idx.i, align 8, !tbaa !136
  %.sroa.9.0..sroa_idx.i197 = getelementptr inbounds nuw i8, ptr %i.en, i64 48
  %i.et = load ptr, ptr %.sroa.4217.0..sroa_idx, align 8, !tbaa !128 ; 2 uses
  %i.eu = load <2 x ptr>, ptr %.sroa.3.0..sroa_idx, align 8, !tbaa !14
  store ptr %i.et, ptr %.sroa.5.0..sroa_idx.i194, align 8, !tbaa !14
  store <2 x ptr> %i.eu, ptr %.sroa.9.0..sroa_idx.i197, align 8, !tbaa !14
  %i.ev = getelementptr i8, ptr %3, i64 16
  store ptr %i.et, ptr %i.ev, align 8, !tbaa !348
  %i.ew = getelementptr i8, ptr %3, i64 64
  store ptr %i.en, ptr %i.ew, align 8, !tbaa !508
  %.val.pr = load i32, ptr %i.a, align 8, !tbaa !170
  br label %bb.au

bb.au:                                            ; preds = %pm_ensure_node_create.exit, %bb.an
  %.val = phi i32 [ %.val.pr, %pm_ensure_node_create.exit ], [ %.val150, %bb.an ]
  %i.ex = icmp eq i32 %.val, 8
  br i1 %i.ex, label %bb.av, label %pm_begin_node_end_keyword_set.exit199

bb.av:                                            ; preds = %bb.au
  %.not146 = icmp eq ptr %.0134, null
  br i1 %.not146, label %pm_begin_node_end_keyword_set.exit, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call fastcc void @parser_warn_indentation_mismatch(ptr noundef nonnull %0, i64 noundef %.0, ptr noundef %.0134, i1 noundef zeroext false, i1 noundef zeroext false)
  %.pre249 = load i32, ptr %i.a, align 8, !tbaa !126
  switch i32 %.pre249, label %bb.ax [
    i32 8, label %pm_begin_node_end_keyword_set.exit
    i32 163, label %pm_begin_node_end_keyword_set.exit
  ]

bb.ax:                                            ; preds = %bb.aw
  call void @__assert_fail(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.2, i32 noundef 2384, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_begin_node_end_keyword_set) #26
  unreachable

pm_begin_node_end_keyword_set.exit:               ; preds = %bb.av, %bb.aw, %bb.aw
  %i.ey = getelementptr i8, ptr %0, i64 360
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !128 ; 2 uses
  %i.fa = getelementptr i8, ptr %3, i64 16
  store ptr %i.ez, ptr %i.fa, align 8, !tbaa !348
  %i.fb = getelementptr i8, ptr %3, i64 72
  %i.fc = getelementptr i8, ptr %0, i64 352
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !127
  store ptr %i.fd, ptr %i.fb, align 8, !tbaa !14
  br label %bb.ay

pm_begin_node_end_keyword_set.exit199:            ; preds = %bb.au
  %i.fe = getelementptr i8, ptr %0, i64 336
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !255 ; 3 uses
  %i.fg = getelementptr i8, ptr %3, i64 16
  store ptr %i.ff, ptr %i.fg, align 8, !tbaa !348
  %i.fh = getelementptr i8, ptr %3, i64 72
  store ptr %i.ff, ptr %i.fh, align 8, !tbaa !14
  br label %bb.ay

bb.ay:                                            ; preds = %pm_begin_node_end_keyword_set.exit199, %pm_begin_node_end_keyword_set.exit
  %.sink = phi ptr [ %i.ff, %pm_begin_node_end_keyword_set.exit199 ], [ %i.ez, %pm_begin_node_end_keyword_set.exit ]
  %.sroa.2.0..sroa_idx.i198 = getelementptr i8, ptr %3, i64 80
  store ptr %.sink, ptr %.sroa.2.0..sroa_idx.i198, align 8, !tbaa !14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #27
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_begin_node_end_keyword_set(ptr noundef nonnull writeonly captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !126
  switch i32 %i.a, label %bb.b [
    i32 8, label %bb.c
    i32 163, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.167, ptr noundef nonnull @.str.2, i32 noundef 2384, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_begin_node_end_keyword_set) #26
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a
  %i.b = getelementptr i8, ptr %1, i64 16
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = getelementptr i8, ptr %0, i64 72
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !128
  %i.g = load <2 x ptr>, ptr %i.e, align 8, !tbaa !14
  store ptr %i.f, ptr %i.c, align 8, !tbaa !348
  store <2 x ptr> %i.g, ptr %i.d, align 8, !tbaa !14
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_pre_execution_node_create(ptr noundef captures(none) %0, ptr %.8.val, ptr %.16.val, ptr %.8.val1, ptr %.16.val3, ptr noundef %1, ptr noundef readonly captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(80) ptr @calloc(i64 noundef 1, i64 noundef 80) #30 ; 12 uses
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
  %i.g = getelementptr i8, ptr %2, i64 16
  %i.h = getelementptr i8, ptr %2, i64 8
  store i16 120, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.8.val, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !136
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %.8.val, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %.16.val, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !14
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.8.val1, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %.16.val3, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.i = load ptr, ptr %i.g, align 8, !tbaa !128
  %i.j = load <2 x ptr>, ptr %i.h, align 8, !tbaa !14
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  store <2 x ptr> %i.j, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parse_arguments(ptr noundef %0, ptr noundef nonnull captures(none) %1, i1 noundef zeroext %2, i32 noundef range(i32 1, 34) %3, i16 noundef zeroext %4) unnamed_addr #1 {
bb.a:
  %5 = alloca %struct.pm_static_literals_t, align 8 ; 5 uses
  %6 = alloca %struct.pm_token_t, align 8         ; 4 uses
  %7 = alloca %struct.pm_token_t, align 8         ; 8 uses
  %8 = alloca %struct.pm_static_literals_t, align 8 ; 6 uses
  %i.a = getelementptr i8, ptr %0, i64 344        ; 13 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !170  ; 6 uses
  %i.c = zext i32 %i.b to i64
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
end_hunk_3
begin_hunk_4_@parse_arguments:bb.a
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
  %i.lp = icmp eq i32 %i.lo, 3
  %i.lq = trunc nuw i8 %.2149 to i1
  %or.cond5 = select i1 %i.lp, i1 %i.lq, i1 false
  br i1 %or.cond5, label %.thread298, label %bb.dd

bb.dd:                                            ; preds = %accept1.exit270
  %.val.i271 = load i32, ptr %i.a, align 8, !tbaa !170
  %i.lr = icmp eq i32 %.val.i271, 3
  br i1 %i.lr, label %bb.de, label %accept1.exit272.thread301

bb.de:                                            ; preds = %bb.dd
  call fastcc void @parser_lex(ptr noundef nonnull %0)
  br i1 %.0143, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  %i.ls = load ptr, ptr %i.w, align 8, !tbaa !256
  %i.lt = load ptr, ptr %i.x, align 8, !tbaa !255
  %i.lu = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.t, ptr noundef %i.ls, ptr noundef %i.lt, i32 noundef 147) #27 ; 0 uses
  br label %bb.dg

bb.dg:                                            ; preds = %bb.df, %bb.de
  %i.lv = load i16, ptr %.4, align 8, !tbaa !115
  %i.lw = icmp eq i16 %i.lv, 19
  br i1 %i.lw, label %bb.dh, label %.thread298

bb.dh:                                            ; preds = %bb.dg
  %i.lx = getelementptr i8, ptr %.4, i64 72
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !288
  %i.lz = icmp eq ptr %i.ly, null
  br i1 %i.lz, label %bb.di, label %.thread298

bb.di:                                            ; preds = %bb.dh
  %i.ma = getelementptr i8, ptr %.4, i64 88
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !117
  %.not162 = icmp eq ptr %i.mb, null
  br i1 %.not162, label %.thread298, label %bb.dj

bb.dj:                                            ; preds = %bb.di
  %i.mc = getelementptr i8, ptr %.4, i64 128
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !289
  %.not163 = icmp eq ptr %i.md, null
  br i1 %.not163, label %.thread298, label %bb.dk

bb.dk:                                            ; preds = %bb.dj
  %i.me = load ptr, ptr %i.w, align 8, !tbaa !256
  %i.mf = load ptr, ptr %i.x, align 8, !tbaa !255
  %i.mg = call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.t, ptr noundef %i.me, ptr noundef %i.mf, i32 noundef 147) #27 ; 0 uses
  br label %accept1.exit272.thread301

.thread298:                                       ; preds = %bb.dh, %bb.di, %bb.dj, %bb.dg, %accept1.exit270
  %.val = load i32, ptr %i.a, align 8, !tbaa !170 ; 2 uses
  %i.mh = icmp eq i32 %.val, %3
  br i1 %i.mh, label %accept1.exit272.thread301, label %accept1.exit272

accept1.exit272.thread301:                        ; preds = %.thread298, %bb.dd, %bb.cz, %parse_arguments_append.exit233, %accept1.exit272, %bb.dk, %bb.c, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_break_node_create(ptr noundef captures(none) %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 77
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.169, ptr noundef nonnull @.str.2, i32 noundef 2529, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_break_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = icmp eq ptr %2, null
  %. = select i1 %i.g, ptr %1, ptr %2
  %storemerge.in = load i32, ptr %0, align 8, !tbaa !109
  %storemerge = add i32 %storemerge.in, 1         ; 2 uses
  store i32 %storemerge, ptr %0, align 8, !tbaa !109
  %.sroa.7.0.in = getelementptr i8, ptr %1, i64 8 ; 2 uses
  %.sroa.9.0.in = getelementptr i8, ptr %., i64 16
  %.sroa.9.0 = load ptr, ptr %.sroa.9.0.in, align 8, !tbaa !14
  store i16 17, ptr %i.c, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %storemerge, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %2, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !511
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load <2 x ptr>, ptr %.sroa.7.0.in, align 8, !tbaa !14
  %.sroa.7.0 = load ptr, ptr %.sroa.7.0.in, align 8, !tbaa !127
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  store <2 x ptr> %i.h, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @parse_block_exit(ptr noundef readonly captures(none) %0, ptr noundef nonnull %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 504
  %.09 = load ptr, ptr %i.a, align 8, !tbaa !213  ; 2 uses
  %.not10 = icmp eq ptr %.09, null
  br i1 %.not10, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.f
  %.011 = phi ptr [ %.0, %bb.f ], [ %.09, %bb.a ] ; 2 uses
  %i.b = load i32, ptr %.011, align 8, !tbaa !215
  switch i32 %i.b, label %bb.f [
    i32 5, label %.loopexit
    i32 6, label %.loopexit
    i32 8, label %.loopexit
    i32 7, label %.loopexit
    i32 9, label %.loopexit
    i32 10, label %.loopexit
    i32 22, label %.loopexit
    i32 27, label %.loopexit
    i32 30, label %.loopexit
    i32 31, label %.loopexit
    i32 33, label %.loopexit
    i32 32, label %.loopexit
    i32 34, label %.loopexit
    i32 35, label %.loopexit
    i32 43, label %.loopexit
    i32 53, label %.loopexit
    i32 54, label %.loopexit
    i32 17, label %bb.b
    i32 21, label %bb.b
    i32 19, label %bb.b
    i32 18, label %bb.b
    i32 20, label %bb.b
    i32 36, label %bb.b
    i32 45, label %bb.b
    i32 47, label %bb.b
    i32 49, label %bb.b
    i32 48, label %bb.b
    i32 50, label %bb.b
    i32 0, label %bb.e
  ]

bb.b:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %i.c = getelementptr i8, ptr %0, i64 680
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !100  ; 2 uses
  %.not8 = icmp eq ptr %i.d, null
  br i1 %.not8, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.170, ptr noundef nonnull @.str.2, i32 noundef 15049, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_block_exit) #26
  unreachable

bb.d:                                             ; preds = %bb.b
  tail call void @pm_node_list_append(ptr noundef nonnull %i.d, ptr noundef nonnull %1) #27
  br label %.loopexit

bb.e:                                             ; preds = %.lr.ph
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 15083, ptr noundef nonnull @__PRETTY_FUNCTION__.parse_block_exit) #26
  unreachable

bb.f:                                             ; preds = %.lr.ph
  %i.e = getelementptr i8, ptr %.011, i64 8
  %.0 = load ptr, ptr %i.e, align 8, !tbaa !213   ; 2 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !512

.loopexit:                                        ; preds = %bb.f, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %bb.a, %bb.d
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_next_node_create(ptr noundef captures(none) %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 89
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.171, ptr noundef nonnull @.str.2, i32 noundef 5475, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_next_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #30 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 48) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = icmp eq ptr %2, null
  %. = select i1 %i.g, ptr %1, ptr %2
  %storemerge.in = load i32, ptr %0, align 8, !tbaa !109
  %storemerge = add i32 %storemerge.in, 1         ; 2 uses
  store i32 %storemerge, ptr %0, align 8, !tbaa !109
  %.sroa.7.0.in = getelementptr i8, ptr %1, i64 8 ; 2 uses
  %.sroa.9.0.in = getelementptr i8, ptr %., i64 16
  %.sroa.9.0 = load ptr, ptr %.sroa.9.0.in, align 8, !tbaa !14
  store i16 107, ptr %i.c, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %storemerge, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %2, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !511
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.h = load <2 x ptr>, ptr %.sroa.7.0.in, align 8, !tbaa !14
  %.sroa.7.0 = load ptr, ptr %.sroa.7.0.in, align 8, !tbaa !127
  store ptr %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !14
  store <2 x ptr> %i.h, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !14
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_return_node_create(ptr noundef captures(none) %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef %2) unnamed_addr #1 {
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
  store i16 132, ptr %i.a, align 8, !tbaa !110
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %storemerge, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !7
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !14
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
end_hunk_4
