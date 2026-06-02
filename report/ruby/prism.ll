inline.NumInlined: 2622
inline.NumDeleted: 264
begin_hunk_0_@pm_parser_init:bb.a
  %i.fs = icmp eq i8 %i.fr, 114
  br i1 %i.fs, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %.lr.ph.i232
  %i.ft = load i32, ptr %.01517.i233, align 1
  %i.fu = icmp ne i32 %i.ft, 2036495730
  %i.fv = zext i1 %i.fu to i32
  %i.fw = icmp eq i32 %i.fv, 0
  br i1 %i.fw, label %pm_strnstr.exit237, label %bb.aw

bb.aw:                                            ; preds = %bb.av, %.lr.ph.i232
  %i.fx = getelementptr i8, ptr %.01517.i233, i64 1 ; 2 uses
  %.not.i234 = icmp ugt ptr %i.fx, %i.fq
  br i1 %.not.i234, label %.loopexit, label %.lr.ph.i232, !llvm.loop !79

pm_strnstr.exit237:                               ; preds = %bb.av
  br i1 %.not221, label %bb.bb, label %bb.ax

bb.ax:                                            ; preds = %pm_strnstr.exit237
  %i.fy = add i64 %i.fi, 1                        ; 2 uses
  %i.fz = icmp ugt i64 %i.fy, 2
  br i1 %i.fz, label %bb.ay, label %pm_parser_warn_shebang_carriage_return.exit238

bb.ay:                                            ; preds = %bb.ax
  %i.ga = getelementptr i8, ptr %i.fa, i64 %i.fy  ; 2 uses
  %i.gb = getelementptr i8, ptr %i.ga, i64 -2
  %i.gc = load i8, ptr %i.gb, align 1, !tbaa !67
  %i.gd = icmp eq i8 %i.gc, 13
  br i1 %i.gd, label %bb.az, label %pm_parser_warn_shebang_carriage_return.exit238

bb.az:                                            ; preds = %bb.ay
  %i.ge = load i8, ptr %i.fp, align 1, !tbaa !67
  %i.gf = icmp eq i8 %i.ge, 10
  br i1 %i.gf, label %bb.ba, label %pm_parser_warn_shebang_carriage_return.exit238

bb.ba:                                            ; preds = %bb.az
  %i.gg = getelementptr i8, ptr %0, i64 448
  %i.gh = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.gg, ptr noundef nonnull %i.fa, ptr noundef %i.ga, i32 noundef 321) #27 ; 0 uses
  br label %pm_parser_warn_shebang_carriage_return.exit238

pm_parser_warn_shebang_carriage_return.exit238:   ; preds = %bb.ax, %bb.ay, %bb.az, %bb.ba
  %i.gi = getelementptr i8, ptr %i.fg, i64 1
  store ptr %i.gi, ptr %.sroa.1581.0..sroa_idx, align 8, !tbaa !77
  br label %bb.bb

bb.bb:                                            ; preds = %pm_parser_warn_shebang_carriage_return.exit238, %pm_strnstr.exit237
  br i1 %.not213, label %.thread254, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gj = load ptr, ptr %3, align 8, !tbaa !81
  %.not223 = icmp eq ptr %i.gj, null
  br i1 %.not223, label %.thread254, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gk = ptrtoint ptr %.01517.i233 to i64
  %i.gl = sub i64 %i.fh, %i.gk
  tail call fastcc void @pm_parser_init_shebang(ptr noundef nonnull %0, ptr noundef %3, ptr noundef %.01517.i233, i64 noundef %i.gl)
  br label %.thread254

.loopexit:                                        ; preds = %bb.aw, %bb.au, %next_newline.exit230, %bb.as, %bb.at
  br i1 %.not221, label %._crit_edge277.loopexit, label %.lr.ph276

.thread254:                                       ; preds = %bb.bc, %bb.bd, %bb.bb
  store i32 1, ptr %.sroa.8.0..sroa_idx, align 8, !tbaa !7
  store i32 0, ptr %.sroa.9.0..sroa_idx, align 4
  store ptr %i.fa, ptr %.sroa.978.0..sroa_idx, align 8, !tbaa !14
  store ptr %i.fa, ptr %.sroa.10.0..sroa_idx, align 8, !tbaa !14
  store i32 1, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !7
  store i32 0, ptr %.sroa.12.0..sroa_idx, align 4
  store ptr %i.fa, ptr %.sroa.1279.0..sroa_idx, align 8, !tbaa !14
  store ptr %i.fa, ptr %.sroa.13.0..sroa_idx, align 8, !tbaa !14
  br label %.thread

._crit_edge277.loopexit:                          ; preds = %.loopexit
  %.pre292 = load ptr, ptr %.sroa.677.0..sroa_idx, align 8, !tbaa !74
  br label %._crit_edge277

._crit_edge277:                                   ; preds = %._crit_edge277.loopexit, %next_newline.exit229
  %i.gm = phi ptr [ %.pre292, %._crit_edge277.loopexit ], [ %i.eu, %next_newline.exit229 ] ; 2 uses
  %i.gn = getelementptr i8, ptr %0, i64 472
  %i.go = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.gn, ptr noundef %i.gm, ptr noundef %i.gm, i32 noundef 260) #27 ; 0 uses
  tail call void @pm_newline_list_clear(ptr noundef %i.j) #27
  br label %.thread

.thread:                                          ; preds = %bb.af, %pm_parser_warn_shebang_carriage_return.exit.thread, %bb.ak, %bb.al, %pm_parser_warn_shebang_carriage_return.exit, %.thread254, %._crit_edge277, %bb.ao
  %i.gp = load ptr, ptr %.sroa.1581.0..sroa_idx, align 8, !tbaa !77 ; 2 uses
  %i.gq = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !78
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.gp to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %i.gu = tail call i64 @pm_strspn_inline_whitespace(ptr noundef %i.gp, i64 noundef %i.gt) #27
  %i.gv = load ptr, ptr %.sroa.1581.0..sroa_idx, align 8, !tbaa !77
  %i.gw = getelementptr i8, ptr %i.gv, i64 %i.gu
  store ptr %i.gw, ptr %.sroa.1581.0..sroa_idx, align 8, !tbaa !77
  ret void
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

declare zeroext i1 @pm_constant_pool_init(ptr noundef, i32 noundef) local_unnamed_addr #5

declare zeroext i1 @pm_newline_list_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

declare i64 @pm_string_length(ptr noundef) local_unnamed_addr #5

declare ptr @pm_string_source(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @parser_lex_magic_comment_encoding_value(ptr noundef %0, ptr noundef %1, ptr noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @pm_encoding_find(ptr noundef %1, ptr noundef %2) #27 ; 4 uses
  %.not = icmp ne ptr %i.a, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 520        ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !40
  %.not15 = icmp eq ptr %i.c, %i.a
  br i1 %.not15, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.a, ptr %i.b, align 8, !tbaa !40
  %i.d = getelementptr i8, ptr %0, i64 528
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !41   ; 2 uses
  %.not16 = icmp eq ptr %i.e, null
  br i1 %.not16, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.e(ptr noundef nonnull %0) #27
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.f = icmp ne ptr %i.a, @pm_encodings
  %i.g = getelementptr i8, ptr %0, i64 699
  %i.h = zext i1 %i.f to i8
  store i8 %i.h, ptr %i.g, align 1, !tbaa !43
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret i1 %.not
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

declare ptr @pm_options_scope_get(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind sspstrong willreturn memory(readwrite, target_mem: none) uwtable
define internal fastcc void @pm_parser_scope_push(ptr noundef captures(none) %0, i1 noundef zeroext %1) unnamed_addr #6 {
bb.a:
  %i.a = zext i1 %1 to i8
  %i.b = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #28 ; 7 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 496        ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !59   ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %i.d, i64 49
  %i.g = load i8, ptr %i.f, align 1, !tbaa !60
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.h = phi i8 [ %i.g, %bb.c ], [ 0, %bb.b ]
  store ptr %i.d, ptr %i.b, align 8, !tbaa !66
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 49
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(41) %.sroa.3.0..sroa_idx, i8 0, i64 41, i1 false)
  store i8 %i.h, ptr %.sroa.4.0..sroa_idx, align 1, !tbaa !67
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 50
  store i8 %i.a, ptr %.sroa.5.0..sroa_idx, align 2, !tbaa !17
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 51
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.6.0..sroa_idx, i8 0, i64 5, i1 false)
  store ptr %i.b, ptr %i.c, align 8, !tbaa !59
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare ptr @pm_options_scope_local_get(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc ptr @next_newline(ptr noundef readonly %0, i64 noundef %1) unnamed_addr #8 {
bb.a:
  %i.a = icmp sgt i64 %1, -1
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.2, i32 noundef 7348, ptr noundef nonnull @__PRETTY_FUNCTION__.next_newline) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = tail call ptr @memchr(ptr noundef %0, i32 noundef 10, i64 noundef %1) #29
  ret ptr %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_parser_init_shebang(ptr noundef %0, ptr noundef nonnull readonly captures(none) %1, ptr noundef nonnull %2, i64 noundef %3) unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.pm_options, align 8         ; 7 uses
  %i.a = getelementptr i8, ptr %2, i64 %3
  %i.b = getelementptr i8, ptr %i.a, i64 -2       ; 2 uses
  %.not16.i = icmp ugt ptr %2, %i.b
  br i1 %.not16.i, label %pm_strnstr.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %bb.c
  %.01517.i = phi ptr [ %i.i, %bb.c ], [ %2, %bb.a ] ; 5 uses
  %i.c = load i8, ptr %.01517.i, align 1, !tbaa !67
  %i.d = icmp eq i8 %i.c, 32
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.i
  %i.e = load i16, ptr %.01517.i, align 1
  %i.f = icmp ne i16 %i.e, 11552
  %i.g = zext i1 %i.f to i32
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %pm_strnstr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %i.i = getelementptr i8, ptr %.01517.i, i64 1   ; 2 uses
  %.not.i = icmp ugt ptr %i.i, %i.b
  br i1 %.not.i, label %pm_strnstr.exit.thread, label %.lr.ph.i, !llvm.loop !79

pm_strnstr.exit:                                  ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %4, ptr noundef nonnull align 8 dereferenceable(104) %1, i64 104, i1 false), !tbaa.struct !82
  %i.j = load ptr, ptr %1, align 8, !tbaa !81
  %i.k = getelementptr i8, ptr %.01517.i, i64 1
  %i.l = ptrtoint ptr %.01517.i to i64
  %i.m = ptrtoint ptr %2 to i64
  %.neg = add i64 %i.m, -1
  %i.n = add i64 %.neg, %3
  %i.o = sub i64 %i.n, %i.l
  %i.p = getelementptr i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !84
  call void %i.j(ptr noundef nonnull %4, ptr noundef %i.k, i64 noundef %i.o, ptr noundef %i.q) #27
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.s = call i64 @pm_string_length(ptr noundef nonnull %i.r) #27 ; 2 uses
  %.not = icmp eq i64 %i.s, 0
  br i1 %.not, label %parser_lex_magic_comment_encoding_value.exit, label %bb.d

bb.d:                                             ; preds = %pm_strnstr.exit
  %i.t = call ptr @pm_string_source(ptr noundef nonnull %i.r) #27 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 %i.s
  %i.v = call ptr @pm_encoding_find(ptr noundef %i.t, ptr noundef %i.u) #27 ; 4 uses
  %.not.i16.not = icmp eq ptr %i.v, null
  br i1 %.not.i16.not, label %parser_lex_magic_comment_encoding_value.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr i8, ptr %0, i64 520        ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !40
  %.not15.i = icmp eq ptr %i.x, %i.v
  br i1 %.not15.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %i.v, ptr %i.w, align 8, !tbaa !40
  %i.y = getelementptr i8, ptr %0, i64 528
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !41   ; 2 uses
  %.not16.i17 = icmp eq ptr %i.z, null
  br i1 %.not16.i17, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void %i.z(ptr noundef nonnull %0) #27, !inline_history !42
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %i.aa = icmp ne ptr %i.v, @pm_encodings
  %i.ab = getelementptr i8, ptr %0, i64 699
  %i.ac = zext i1 %i.aa to i8
  store i8 %i.ac, ptr %i.ab, align 1, !tbaa !43
  br label %parser_lex_magic_comment_encoding_value.exit

parser_lex_magic_comment_encoding_value.exit:     ; preds = %bb.h, %bb.d, %pm_strnstr.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 92
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !50
  %i.af = getelementptr i8, ptr %0, i64 692
  store i8 %i.ae, ptr %i.af, align 4, !tbaa !51
  %i.ag = getelementptr inbounds nuw i8, ptr %4, i64 93
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !48
  %i.ai = getelementptr i8, ptr %0, i64 693
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !49
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #27
  br label %pm_strnstr.exit.thread

pm_strnstr.exit.thread:                           ; preds = %bb.c, %bb.a, %parser_lex_magic_comment_encoding_value.exit
  ret void
}

declare zeroext i1 @pm_newline_list_append(ptr noundef, ptr noundef) local_unnamed_addr #5

declare void @pm_newline_list_clear(ptr noundef) local_unnamed_addr #5

declare i64 @pm_strspn_inline_whitespace(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define hidden void @pm_parser_register_encoding_changed_callback(ptr noundef writeonly captures(none) initializes((528, 536)) %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 528
  store ptr %1, ptr %i.a, align 8, !tbaa !41
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @pm_parser_free(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 552
  tail call void @pm_string_free(ptr noundef %i.a) #27
  %i.b = getelementptr i8, ptr %0, i64 472
  tail call void @pm_diagnostic_list_free(ptr noundef %i.b) #27
  %i.c = getelementptr i8, ptr %0, i64 448
  tail call void @pm_diagnostic_list_free(ptr noundef %i.c) #27
  %i.d = getelementptr i8, ptr %0, i64 392
  %.val = load ptr, ptr %i.d, align 8, !tbaa !85  ; 2 uses
  %.not1.i = icmp eq ptr %.val, null
  br i1 %.not1.i, label %pm_comment_list_free.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %.02.i = phi ptr [ %i.e, %.lr.ph.i ], [ %.val, %bb.a ] ; 2 uses
  %i.e = load ptr, ptr %.02.i, align 8, !tbaa !86 ; 2 uses
  tail call void @free(ptr noundef nonnull %.02.i) #27
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %pm_comment_list_free.exit, label %.lr.ph.i, !llvm.loop !88

pm_comment_list_free.exit:                        ; preds = %.lr.ph.i, %bb.a
  %i.f = getelementptr i8, ptr %0, i64 416
  %.val11 = load ptr, ptr %i.f, align 8, !tbaa !85 ; 2 uses
  %.not1.i12 = icmp eq ptr %.val11, null
  br i1 %.not1.i12, label %pm_magic_comment_list_free.exit, label %.lr.ph.i13

.lr.ph.i13:                                       ; preds = %pm_comment_list_free.exit, %.lr.ph.i13
  %.02.i14 = phi ptr [ %i.g, %.lr.ph.i13 ], [ %.val11, %pm_comment_list_free.exit ] ; 2 uses
  %i.g = load ptr, ptr %.02.i14, align 8, !tbaa !86 ; 2 uses
  tail call void @free(ptr noundef nonnull %.02.i14) #27
  %.not.i15 = icmp eq ptr %i.g, null
  br i1 %.not.i15, label %pm_magic_comment_list_free.exit, label %.lr.ph.i13, !llvm.loop !89

pm_magic_comment_list_free.exit:                  ; preds = %.lr.ph.i13, %pm_comment_list_free.exit
  %i.h = getelementptr i8, ptr %0, i64 576
  tail call void @pm_constant_pool_free(ptr noundef %i.h) #27
  %i.i = getelementptr i8, ptr %0, i64 600
  tail call void @pm_newline_list_free(ptr noundef %i.i) #27
  %i.j = getelementptr i8, ptr %0, i64 496        ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !59   ; 2 uses
  %.not16 = icmp eq ptr %i.k, null
  br i1 %.not16, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %pm_parser_scope_pop.exit, %pm_magic_comment_list_free.exit
  %i.l = getelementptr i8, ptr %0, i64 296        ; 3 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !90   ; 2 uses
  %i.n = icmp ugt i64 %i.m, 3
  br i1 %i.n, label %lex_mode_pop.exit.lr.ph, label %._crit_edge

lex_mode_pop.exit.lr.ph:                          ; preds = %.preheader
  %i.o = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %.pre = load ptr, ptr %i.o, align 8, !tbaa !91
  br label %lex_mode_pop.exit

.lr.ph:                                           ; preds = %pm_magic_comment_list_free.exit, %pm_parser_scope_pop.exit
  %i.p = phi ptr [ %i.w, %pm_parser_scope_pop.exit ], [ %i.k, %pm_magic_comment_list_free.exit ] ; 5 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !92
  store ptr %i.q, ptr %i.j, align 8, !tbaa !59
  %i.r = getelementptr i8, ptr %i.p, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !93
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %pm_parser_scope_pop.exit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.t = getelementptr i8, ptr %i.p, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !94
  tail call void @free(ptr noundef %i.u) #27
  br label %pm_parser_scope_pop.exit

pm_parser_scope_pop.exit:                         ; preds = %.lr.ph, %bb.b
  %i.v = getelementptr i8, ptr %i.p, i64 24
  tail call void @pm_node_list_free(ptr noundef %i.v) #27
  tail call void @free(ptr noundef nonnull %i.p) #27
  %i.w = load ptr, ptr %i.j, align 8, !tbaa !59   ; 2 uses
  %.not = icmp eq ptr %i.w, null
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !95

lex_mode_pop.exit:                                ; preds = %lex_mode_pop.exit.lr.ph, %lex_mode_pop.exit
  %i.x = phi ptr [ %.pre, %lex_mode_pop.exit.lr.ph ], [ %i.ab, %lex_mode_pop.exit ] ; 2 uses
  %i.y = phi i64 [ %i.m, %lex_mode_pop.exit.lr.ph ], [ %i.ac, %lex_mode_pop.exit ]
end_hunk_0
begin_hunk_1_@pm_float_node_rational_create:bb.a
..critedge2_crit_edge89:                          ; preds = %.lr.ph87
  br label %.critedge2, !llvm.loop !460

.critedge2:                                       ; preds = %bb.f, %..critedge2_crit_edge89, %.critedge
  %indvars.iv.lcssa = phi i64 [ %.pre-phi, %.critedge ], [ %indvars.iv85, %..critedge2_crit_edge89 ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %.063.lcssa = phi ptr [ %i.n, %.critedge ], [ %.06386, %..critedge2_crit_edge89 ], [ %i.x, %bb.f ] ; 2 uses
  %i.aa = ptrtoint ptr %.063.lcssa to i64         ; 2 uses
  %i.ab = ptrtoint ptr %.062.lcssa to i64         ; 2 uses
  %i.ac = sub i64 %i.aa, %i.ab                    ; 4 uses
  %i.ad = icmp eq i64 %i.ac, 1
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.critedge2
  %i.ae = getelementptr i8, ptr %i.c, i64 64
  store i32 1, ptr %i.ae, align 8, !tbaa !461
  br label %bb.o

bb.h:                                             ; preds = %.critedge2
  %i.af = tail call ptr @memchr(ptr noundef %.062.lcssa, i32 noundef 46, i64 noundef %i.ac) #29 ; 8 uses
  %i.ag = ptrtoint ptr %i.af to i64               ; 4 uses
  %.not = icmp eq ptr %i.af, null
  br i1 %.not, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @__assert_fail(ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.2, i32 noundef 3953, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_float_node_rational_create) #26
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.ah = tail call noalias ptr @malloc(i64 noundef %i.ac) #28 ; 11 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.ak = tail call i64 @fwrite(ptr nonnull @.str.133, i64 57, i64 1, ptr %i.aj) #33 ; 0 uses
  tail call void @abort() #26
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.al = sub i64 %i.ag, %i.ab                    ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.ah, ptr noundef nonnull align 1 %.062.lcssa, i64 noundef %i.al, i1 noundef false) #27
  %i.am = getelementptr i8, ptr %i.ah, i64 %i.al
  %i.an = getelementptr i8, ptr %i.af, i64 1
  %i.ao = xor i64 %i.ag, -1
  %i.ap = add i64 %i.ao, %i.aa
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.am, ptr noundef nonnull align 1 %i.an, i64 noundef %i.ap, i1 noundef false) #27
  %i.aq = getelementptr i8, ptr %i.ah, i64 %i.ac
  %i.ar = getelementptr i8, ptr %i.aq, i64 -1
  tail call void @pm_integer_parse(ptr noundef nonnull %.sroa.6.0..sroa_idx, i32 noundef 0, ptr noundef nonnull %i.ah, ptr noundef %i.ar) #27
  %i.as = icmp ult ptr %i.af, %.063.lcssa
  br i1 %i.as, label %.lr.ph73.preheader, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.l
  store i8 49, ptr %i.ah, align 1, !tbaa !67
  br label %bb.n

.lr.ph73.preheader:                               ; preds = %bb.l
  %i.at = sub i64 0, %i.ag
  %scevgep75 = getelementptr i8, ptr %i.af, i64 %i.at
  %scevgep76 = getelementptr i8, ptr %scevgep75, i64 %indvars.iv.lcssa
  %i.au = sub i64 %indvars.iv.lcssa, %i.ag        ; 3 uses
  %min.iters.check = icmp ult i64 %i.au, 4
  br i1 %min.iters.check, label %.lr.ph73.preheader94, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph73.preheader
  %n.vec = and i64 %i.au, -4                      ; 3 uses
  %i.av = getelementptr i8, ptr %i.af, i64 %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bb, %vector.body ]
  %vec.phi92 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.bc, %vector.body ]
  %next.gep = getelementptr i8, ptr %i.af, i64 %index ; 2 uses
  %i.aw = getelementptr i8, ptr %next.gep, i64 2
  %wide.load = load <2 x i8>, ptr %next.gep, align 1, !tbaa !67
  %wide.load93 = load <2 x i8>, ptr %i.aw, align 1, !tbaa !67
  %i.ax = icmp ne <2 x i8> %wide.load, splat (i8 95)
  %i.ay = icmp ne <2 x i8> %wide.load93, splat (i8 95)
  %i.az = zext <2 x i1> %i.ax to <2 x i64>
  %i.ba = zext <2 x i1> %i.ay to <2 x i64>
  %i.bb = add <2 x i64> %vec.phi, %i.az           ; 2 uses
  %i.bc = add <2 x i64> %vec.phi92, %i.ba         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !465

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.bc, %i.bb
  %i.be = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph73.preheader94

.lr.ph73.preheader94:                             ; preds = %.lr.ph73.preheader, %middle.block
  %.072.ph = phi ptr [ %i.af, %.lr.ph73.preheader ], [ %i.av, %middle.block ]
  %.06071.ph = phi i64 [ 0, %.lr.ph73.preheader ], [ %i.be, %middle.block ]
  br label %.lr.ph73

._crit_edge:                                      ; preds = %.lr.ph73, %middle.block
  %spec.select.lcssa = phi i64 [ %i.be, %middle.block ], [ %spec.select, %.lr.ph73 ] ; 4 uses
  store i8 49, ptr %i.ah, align 1, !tbaa !67
  %i.bf = icmp ugt i64 %spec.select.lcssa, 1
  br i1 %i.bf, label %bb.m, label %bb.n

.lr.ph73:                                         ; preds = %.lr.ph73.preheader94, %.lr.ph73
  %.072 = phi ptr [ %i.bi, %.lr.ph73 ], [ %.072.ph, %.lr.ph73.preheader94 ] ; 2 uses
  %.06071 = phi i64 [ %spec.select, %.lr.ph73 ], [ %.06071.ph, %.lr.ph73.preheader94 ]
  %i.bg = load i8, ptr %.072, align 1, !tbaa !67
  %.not67 = icmp ne i8 %i.bg, 95
  %i.bh = zext i1 %.not67 to i64
  %spec.select = add i64 %.06071, %i.bh           ; 2 uses
  %i.bi = getelementptr i8, ptr %.072, i64 1      ; 2 uses
  %exitcond77.not = icmp eq ptr %i.bi, %scevgep76
  br i1 %exitcond77.not, label %._crit_edge, label %.lr.ph73, !llvm.loop !466

bb.m:                                             ; preds = %._crit_edge
  %i.bj = getelementptr i8, ptr %i.ah, i64 1
  %i.bk = add i64 %spec.select.lcssa, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 %i.bj, i8 noundef 48, i64 noundef range(i64 1, -1) %i.bk, i1 noundef false) #27
  br label %bb.n

bb.n:                                             ; preds = %._crit_edge.thread, %bb.m, %._crit_edge
  %.060.lcssa84 = phi i64 [ 0, %._crit_edge.thread ], [ %spec.select.lcssa, %bb.m ], [ %spec.select.lcssa, %._crit_edge ]
  %i.bl = getelementptr i8, ptr %i.ah, i64 %.060.lcssa84
  tail call void @pm_integer_parse(ptr noundef nonnull %.sroa.7.0..sroa_idx, i32 noundef 0, ptr noundef nonnull %i.ah, ptr noundef %i.bl) #27
  tail call void @free(ptr noundef nonnull %i.ah) #27
  tail call void @pm_integers_reduce(ptr noundef nonnull %.sroa.6.0..sroa_idx, ptr noundef nonnull %.sroa.7.0..sroa_idx) #27
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.g
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_float_node_rational_imaginary_create(ptr noundef captures(none) %0, ptr noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.pm_token_t, align 8         ; 5 uses
  %i.a = load i32, ptr %1, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 58
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.134, ptr noundef nonnull @.str.2, i32 noundef 3984, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_float_node_rational_imaginary_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 8 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !127  ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128  ; 2 uses
  store i32 57, ptr %2, align 8, !tbaa !126
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %i.j, ptr %i.n, align 8, !tbaa !127
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = getelementptr i8, ptr %i.l, i64 -1
  store ptr %i.p, ptr %i.o, align 8, !tbaa !128
  %i.q = call fastcc ptr @pm_float_node_rational_create(ptr noundef nonnull %0, ptr noundef nonnull %2)
  store i16 68, ptr %i.c, align 8, !tbaa !110
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 2, ptr %.sroa.2.0..sroa_idx, align 2, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %i.q, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !105
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_numbered_reference_read_node_create(ptr noundef %0, ptr noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = load i32, ptr %1, align 8, !tbaa !126
  %i.c = icmp eq i32 %i.b, 123
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.135, ptr noundef nonnull @.str.2, i32 noundef 5593, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_numbered_reference_read_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 7 uses
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
  %i.j = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !127  ; 2 uses
  %i.l = getelementptr i8, ptr %1, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !128  ; 4 uses
  %i.n = getelementptr i8, ptr %i.k, i64 1        ; 4 uses
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p                       ; 4 uses
  %i.r = icmp sgt i64 %i.q, 0
  br i1 %i.r, label %bb.f, label %bb.e

bb.e:                                             ; preds = %pm_node_alloc.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.136, ptr noundef nonnull @.str.2, i32 noundef 5557, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_numbered_reference_read_node_number) #26
  unreachable

bb.f:                                             ; preds = %pm_node_alloc.exit
  %i.s = add nuw i64 %i.q, 1                      ; 2 uses
  %i.t = tail call noalias ptr @calloc(i64 noundef %i.s, i64 noundef 1) #30 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.t, ptr noundef nonnull align 1 %i.n, i64 noundef %i.q, i1 noundef false) #27
  %i.u = getelementptr i8, ptr %i.t, i64 %i.q
  store i8 0, ptr %i.u, align 1, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #27
  %i.v = tail call ptr @__errno_location() #31    ; 2 uses
  store i32 0, ptr %i.v, align 4, !tbaa !7
  %i.w = call i64 @strtoul(ptr noundef nonnull %i.t, ptr noundef nonnull %i.a, i32 noundef 10) #27
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !14   ; 2 uses
  %i.y = icmp eq ptr %i.t, %i.x
  br i1 %i.y, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = load i8, ptr %i.x, align 1, !tbaa !67
  %.not.i = icmp eq i8 %i.z, 0
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.aa = getelementptr i8, ptr %0, i64 472
  %i.ab = tail call zeroext i1 @pm_diagnostic_list_append(ptr noundef %i.aa, ptr noundef nonnull %i.n, ptr noundef %i.m, i32 noundef 157) #27 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i = phi i64 [ 0, %bb.h ], [ %i.w, %bb.g ]   ; 2 uses
  tail call void @free(ptr noundef nonnull %i.t) #27
  %i.ac = load i32, ptr %i.v, align 4, !tbaa !7
  %i.ad = icmp eq i32 %i.ac, 34
  %i.ae = icmp ugt i64 %.0.i, 1073741823
  %or.cond.i = select i1 %i.ad, i1 true, i1 %i.ae
  br i1 %or.cond.i, label %bb.j, label %pm_numbered_reference_read_node_number.exit

bb.j:                                             ; preds = %bb.i
  %i.af = getelementptr i8, ptr %0, i64 448
  %i.ag = trunc i64 %i.s to i32
  %i.ah = load ptr, ptr %i.j, align 8, !tbaa !127
  %i.ai = tail call zeroext i1 (ptr, ptr, ptr, i32, ...) @pm_diagnostic_list_append_format(ptr noundef %i.af, ptr noundef nonnull %i.n, ptr noundef %i.m, i32 noundef 316, i32 noundef %i.ag, ptr noundef %i.ah) #27 ; 0 uses
  br label %pm_numbered_reference_read_node_number.exit

pm_numbered_reference_read_node_number.exit:      ; preds = %bb.i, %bb.j
  %.1.i = phi i64 [ 0, %bb.j ], [ %.0.i, %bb.i ]
  %i.aj = trunc nuw nsw i64 %.1.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #27
  store i16 111, ptr %i.d, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 %i.i, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.m, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i32 %i.aj, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7
  ret ptr %i.d
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_global_variable_read_node_create(ptr noundef %0, ptr noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 7 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %pm_node_alloc.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.d = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.c, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.a
  %i.e = load i32, ptr %0, align 8, !tbaa !109
  %i.f = add i32 %i.e, 1                          ; 2 uses
  store i32 %i.f, ptr %0, align 8, !tbaa !109
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !127  ; 3 uses
  %i.i = getelementptr i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !128  ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 576
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.h to i64
  %i.n = sub i64 %i.l, %i.m
  %i.o = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.k, ptr noundef %i.h, i64 noundef %i.n) #27
  store i16 62, ptr %i.a, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %i.f, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.h, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.j, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i32 %i.o, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noalias nonnull ptr @pm_back_reference_read_node_create(ptr noundef %0, ptr noundef readonly captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !126
  %i.b = icmp eq i32 %i.a, 24
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.137, ptr noundef nonnull @.str.2, i32 noundef 2316, ptr noundef nonnull @__PRETTY_FUNCTION__.pm_back_reference_read_node_create) #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 1, i64 noundef 32) #30 ; 7 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %pm_node_alloc.exit

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.f = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.e, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 32) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_node_alloc.exit:                               ; preds = %bb.c
  %i.g = load i32, ptr %0, align 8, !tbaa !109
  %i.h = add i32 %i.g, 1                          ; 2 uses
  store i32 %i.h, ptr %0, align 8, !tbaa !109
  %i.i = getelementptr i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !127  ; 3 uses
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !128  ; 2 uses
  %i.m = getelementptr i8, ptr %0, i64 576
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.j to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.m, ptr noundef %i.j, i64 noundef %i.p) #27
  store i16 10, ptr %i.c, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  store i32 %i.h, ptr %.sroa.3.0..sroa_idx, align 4, !tbaa !7
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.j, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !14
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.l, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !14
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %i.q, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !7
  ret ptr %i.c
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc nonnull ptr @parse_variable_call(ptr noundef %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 344
  %.val = load i32, ptr %i.a, align 8, !tbaa !170
  %i.b = icmp eq i32 %.val, 124
  br i1 %i.b, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 336
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !255
  %i.e = getelementptr i8, ptr %i.d, i64 -1
  %i.f = load i8, ptr %i.e, align 1, !tbaa !67
  switch i8 %i.f, label %bb.c [
    i8 33, label %bb.d
    i8 63, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.g = tail call fastcc ptr @parse_variable(ptr noundef nonnull %0) ; 2 uses
  %.not17 = icmp eq ptr %i.g, null
  br i1 %.not17, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.c, %bb.a
  %.115 = phi i16 [ 32, %bb.a ], [ 40, %bb.c ], [ 32, %bb.b ], [ 32, %bb.b ]
  %i.h = tail call noalias dereferenceable_or_null(136) ptr @calloc(i64 noundef 1, i64 noundef 136) #30 ; 10 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %pm_call_node_variable_call_create.exit

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr @stderr, align 8, !tbaa !107
  %i.k = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.j, i32 noundef 1, ptr noundef nonnull @.str.104, i32 noundef 136) #27 ; 0 uses
  tail call void @abort() #26
  unreachable

pm_call_node_variable_call_create.exit:           ; preds = %bb.d
  %i.l = getelementptr i8, ptr %0, i64 320
  %i.m = load i32, ptr %0, align 8, !tbaa !109
  %i.n = add i32 %i.m, 1                          ; 2 uses
  store i32 %i.n, ptr %0, align 8, !tbaa !109
  store i16 19, ptr %i.h, align 8, !tbaa !110
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %i.n, ptr %.sroa.4.0..sroa_idx.i.i, align 4, !tbaa !7
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = getelementptr i8, ptr %0, i64 328
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !127  ; 4 uses
  %i.q = getelementptr i8, ptr %0, i64 336
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !128  ; 3 uses
  store ptr %i.p, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !tbaa !14
  store ptr %i.r, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !tbaa !14
  %i.s = load i32, ptr %i.l, align 8, !tbaa !126
  %i.t = icmp eq i32 %i.s, 164                    ; 2 uses
  %spec.select.i = select i1 %i.t, ptr null, ptr %i.p
  %spec.select18.i = select i1 %i.t, ptr null, ptr %i.r
  %i.u = getelementptr i8, ptr %i.h, i64 56
  store ptr %spec.select.i, ptr %i.u, align 8, !tbaa !14
  %i.v = getelementptr i8, ptr %i.h, i64 64
  store ptr %spec.select18.i, ptr %i.v, align 8, !tbaa !14
  %i.w = getelementptr i8, ptr %0, i64 576
  %i.x = ptrtoint ptr %i.r to i64
  %i.y = ptrtoint ptr %i.p to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = tail call i32 @pm_constant_pool_insert_shared(ptr noundef %i.w, ptr noundef %i.p, i64 noundef %i.z) #27
  %i.ab = getelementptr i8, ptr %i.h, i64 48
  store i32 %i.aa, ptr %i.ab, align 8, !tbaa !120
  store i16 %.115, ptr %.sroa.3.0..sroa_idx.i.i, align 2, !tbaa !116
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %pm_call_node_variable_call_create.exit
  %.1 = phi ptr [ %i.h, %pm_call_node_variable_call_create.exit ], [ %i.g, %bb.c ]
  ret ptr %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pm_locals_unread(ptr noundef readonly captures(none) %0, i32 noundef %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !93   ; 2 uses
  %i.c = icmp ult i32 %i.b, 9
  br i1 %i.c, label %.preheader.i, label %bb.d

.preheader.i:                                     ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !155    ; 2 uses
  %.not58.i = icmp eq i32 %i.d, 0
  br i1 %.not58.i, label %pm_locals_find.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.e = getelementptr i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !94   ; 2 uses
  %wide.trip.count.i = zext i32 %i.d to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.g = getelementptr [40 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load i32, ptr %i.g, align 8, !tbaa !156
  %.not39.i = icmp eq i32 %i.h, %1
  br i1 %.not39.i, label %.thread.loopexit.split.loop.exit66.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %pm_locals_find.exit.thread, label %bb.b, !llvm.loop !233

bb.d:                                             ; preds = %bb.a
  %i.i = add i32 %i.b, -1                         ; 2 uses
  %i.j = lshr i32 %1, 16
  %i.k = xor i32 %i.j, %1
  %i.l = mul i32 %i.k, 73244475                   ; 2 uses
  %i.m = lshr i32 %i.l, 16
end_hunk_1
