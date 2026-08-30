Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nghttp2/original/nghttp2_http?download=true
begin_hunk_0_@nghttp2_http_on_request_headers:bb.a
  %i.c = and i32 %i.b, 32768
  %i.d = and i32 %i.b, 32896
  %or.cond.not = icmp eq i32 %i.d, 128
  br i1 %or.cond.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 11
  %or.cond20.not = icmp eq i32 %i.e, 1
  br i1 %or.cond20.not, label %bb.c, label %check_path.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.f, align 8, !tbaa !56
  br label %check_path.exit.thread26

bb.d:                                             ; preds = %bb.a
  %i.g = and i32 %i.b, 14
  %.not16 = icmp ne i32 %i.g, 14
  %i.h = and i32 %i.b, 17
  %i.i = icmp eq i32 %i.h, 0
  %or.cond22 = or i1 %.not16, %i.i
  br i1 %or.cond22, label %check_path.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not17 = icmp eq i32 %i.c, 0
  %i.j = and i32 %i.b, 129
  %or.cond24.not = icmp eq i32 %i.j, 129
  %or.cond = or i1 %.not17, %or.cond24.not
  br i1 %or.cond, label %bb.f, label %check_path.exit.thread

bb.f:                                             ; preds = %bb.e
  %i.k = and i32 %i.b, 10240
  %or.cond.i = icmp ne i32 %i.k, 8192
  %i.l = and i32 %i.b, 4608
  %or.cond28.not = icmp eq i32 %i.l, 4608
  %or.cond29 = or i1 %or.cond.i, %or.cond28.not
  br i1 %or.cond29, label %check_path.exit.thread26, label %check_path.exit.thread

check_path.exit.thread26:                         ; preds = %bb.f, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.n = load i8, ptr %i.m, align 4, !tbaa !22
  %i.o = icmp eq i8 %i.n, 5
  br i1 %i.o, label %bb.g, label %check_path.exit.thread

bb.g:                                             ; preds = %check_path.exit.thread26
  %i.p = and i32 %i.b, 1920
  store i32 %i.p, ptr %i.a, align 8, !tbaa !16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.q, align 8, !tbaa !56
  br label %check_path.exit.thread

check_path.exit.thread:                           ; preds = %bb.f, %bb.e, %check_path.exit.thread26, %bb.g, %bb.d, %bb.b
  %.0 = phi i32 [ -1, %bb.b ], [ -1, %bb.d ], [ -1, %bb.f ], [ -1, %bb.e ], [ 0, %bb.g ], [ 0, %check_path.exit.thread26 ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -1, 1) i32 @nghttp2_http_on_response_headers(ptr nofree noundef captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16
  %.fr16 = freeze i32 %i.b                        ; 5 uses
  %i.c = and i32 %.fr16, 32
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 108 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !59   ; 2 uses
  %.off = add i32 %i.f, -100
  %i.g = icmp ult i32 %.off, 100
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = and i32 %.fr16, 1920
  %i.i = or disjoint i32 %i.h, 16384
  store i32 %i.i, ptr %i.a, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.j, align 8, !tbaa !56
  store i32 -1, ptr %i.e, align 4, !tbaa !59
  br label %bb.g

bb.d:                                             ; preds = %bb.b
  %i.k = and i32 %.fr16, -16385
  store i32 %i.k, ptr %i.a, align 8, !tbaa !16
  %i.l = and i32 %.fr16, 256
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %switch.early.test, label %expect_response_body.exit.thread

switch.early.test:                                ; preds = %bb.d
  switch i32 %i.f, label %bb.e [
    i32 304, label %expect_response_body.exit.thread
    i32 204, label %expect_response_body.exit.thread
  ]

expect_response_body.exit.thread:                 ; preds = %switch.early.test, %switch.early.test, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.m, align 8, !tbaa !56
  br label %bb.g

bb.e:                                             ; preds = %switch.early.test
  %i.n = and i32 %.fr16, 1152
  %.not12 = icmp eq i32 %i.n, 0
  br i1 %.not12, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 -1, ptr %i.o, align 8, !tbaa !56
  br label %bb.g

bb.g:                                             ; preds = %expect_response_body.exit.thread, %bb.f, %bb.e, %bb.a, %bb.c
  %.0 = phi i32 [ -1, %bb.a ], [ 0, %bb.c ], [ 0, %bb.e ], [ 0, %bb.f ], [ 0, %expect_response_body.exit.thread ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 -1, 1) i32 @nghttp2_http_on_trailer_headers(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.b = load i8, ptr %i.a, align 1, !tbaa !22
  %i.c = and i8 %i.b, 1
  %sext = add nsw i8 %i.c, -1
  %. = sext i8 %sext to i32
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden range(i32 -1, 1) i32 @nghttp2_http_on_remote_end_stream(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16
  %i.c = and i32 %i.b, 16384
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load i64, ptr %i.d, align 8, !tbaa !56   ; 2 uses
  %.not5 = icmp eq i64 %i.e, -1
  br i1 %.not5, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i64, ptr %i.f, align 8, !tbaa !60
  %.not6 = icmp eq i64 %i.e, %i.g
  br i1 %.not6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.d
  %.0 = phi i32 [ 0, %bb.d ], [ -1, %bb.a ], [ -1, %bb.c ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden range(i32 -1, 1) i32 @nghttp2_http_on_data_chunk(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !60
  %i.c = add nsw i64 %i.b, %1                     ; 2 uses
  store i64 %i.c, ptr %i.a, align 8, !tbaa !60
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load i32, ptr %i.d, align 8, !tbaa !16
  %i.f = and i32 %i.e, 16384
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !56   ; 2 uses
  %.not7 = icmp ne i64 %i.h, -1
  %i.i = icmp sgt i64 %i.c, %i.h
  %or.cond = select i1 %.not7, i1 %i.i, i1 false
  %spec.select = sext i1 %or.cond to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @nghttp2_http_record_request_method(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.b = load i8, ptr %i.a, align 4, !tbaa !22
  switch i8 %i.b, label %.critedge [
    i8 1, label %bb.c
    i8 5, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink34 = phi i64 [ 24, %bb.b ], [ 40, %bb.a ]
  %.sink = phi i64 [ 32, %bb.b ], [ 48, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.sink34
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %.0 = load ptr, ptr %i.c, align 8, !tbaa !22
  %.024 = load i64, ptr %i.d, align 8, !tbaa !22  ; 2 uses
  %.not = icmp eq i64 %.024, 0
  br i1 %.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.i
  %.02330 = phi i64 [ %i.ap, %bb.i ], [ 0, %bb.c ] ; 2 uses
  %i.e = getelementptr inbounds nuw [40 x i8], ptr %.0, i64 %.02330 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !61
  %i.h = icmp eq i64 %i.g, 7
  br i1 %i.h, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !63   ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.k = load i8, ptr %i.j, align 1, !tbaa !22
  %i.l = icmp eq i8 %i.k, 100
  br i1 %i.l, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.m = load i32, ptr %i.i, align 1
  %i.n = xor i32 1952804154, %i.m
  %i.o = getelementptr i8, ptr %i.i, i64 4
  %i.p = load i16, ptr %i.o, align 1
  %i.q = zext i16 %i.p to i32
  %i.r = xor i32 28520, %i.q
  %i.s = or i32 %i.n, %i.r
  %i.t = icmp ne i32 %i.s, 0
  %i.u = zext i1 %i.t to i32
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.x = load i64, ptr %i.w, align 8, !tbaa !64
  switch i64 %i.x, label %.critedge [
    i64 7, label %bb.g
    i64 4, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !65   ; 2 uses
  %i.aa = load i32, ptr %i.z, align 1
  %i.ab = xor i32 1313754947, %i.aa
  %i.ac = getelementptr i8, ptr %i.z, i64 3
  %i.ad = load i32, ptr %i.ac, align 1
  %i.ae = xor i32 1413694798, %i.ad
  %i.af = or i32 %i.ab, %i.ae
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %.critedge.sink.split, label %.critedge

bb.h:                                             ; preds = %bb.f
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !65
  %i.al = load i32, ptr %i.ak, align 1
  %i.am = icmp ne i32 1145128264, %i.al
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %.critedge.sink.split, label %.critedge

bb.i:                                             ; preds = %bb.e, %bb.d, %.lr.ph
  %i.ap = add nuw i64 %.02330, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.ap, %.024
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !66

.critedge.sink.split:                             ; preds = %bb.h, %bb.g
  %.sink38 = phi i32 [ 128, %bb.g ], [ 256, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 8, !tbaa !16
  %i.as = or i32 %i.ar, %.sink38
  store i32 %i.as, ptr %i.aq, align 8, !tbaa !16
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %.critedge.sink.split, %bb.c, %bb.f, %bb.g, %bb.h, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nounwind uwtable
define hidden range(i32 -501, 1) i32 @nghttp2_http_parse_priority(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.sfparse_parser, align 8     ; 4 uses
  %4 = alloca %struct.sfparse_vec, align 8        ; 5 uses
  %5 = alloca %struct.sfparse_value, align 8      ; 6 uses
  %.sroa.0.0.copyload = load i32, ptr %0, align 4, !tbaa !67
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !67
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #8
  call void @sfparse_parser_init(ptr noundef nonnull %3, ptr noundef %1, i64 noundef %2) #8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  br label %.outer.outer

.outer.outer:                                     ; preds = %bb.f, %bb.a
  %.sroa.5.0.ph.ph = phi i32 [ %i.h, %bb.f ], [ %.sroa.5.0.copyload, %bb.a ]
  %.sroa.0.0.ph.ph = phi i32 [ %.sroa.0.0.ph.ph41, %bb.f ], [ %.sroa.0.0.copyload, %bb.a ]
  br label %.outer.outer40

.outer.outer40:                                   ; preds = %.outer.outer, %bb.h
  %.sroa.0.0.ph.ph41 = phi i32 [ %.sroa.0.0.ph.ph, %.outer.outer ], [ %i.m, %bb.h ] ; 2 uses
  br label %.outer

.outer:                                           ; preds = %.outer.outer40, %bb.d
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.c
  %i.c = call i32 @sfparse_parser_dict(ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %5) #8
  switch i32 %i.c, label %.loopexit [
    i32 0, label %bb.c
    i32 -2, label %bb.i
  ]

bb.c:                                             ; preds = %bb.b
  %i.d = load i64, ptr %i.a, align 8, !tbaa !68
  %.not16 = icmp eq i64 %i.d, 1
  br i1 %.not16, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.e = load ptr, ptr %4, align 8, !tbaa !70
  %i.f = load i8, ptr %i.e, align 1, !tbaa !22
  switch i8 %i.f, label %.outer [
    i8 105, label %bb.e
    i8 117, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %5, align 8, !tbaa !71
  %.not17 = icmp eq i32 %i.g, 0
  br i1 %.not17, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.h = load i32, ptr %i.b, align 8, !tbaa !22
  br label %.outer.outer

bb.g:                                             ; preds = %bb.d
  %i.i = load i32, ptr %5, align 8, !tbaa !71
  %i.j = icmp ne i32 %i.i, 1
  %i.k = load i64, ptr %i.b, align 8              ; 2 uses
  %i.l = icmp ugt i64 %i.k, 7
  %or.cond5 = select i1 %i.j, i1 true, i1 %i.l
  br i1 %or.cond5, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = trunc nuw nsw i64 %i.k to i32
  br label %.outer.outer40

bb.i:                                             ; preds = %bb.b
  store i32 %.sroa.0.0.ph.ph41, ptr %0, align 4, !tbaa !67
  store i32 %.sroa.5.0.ph.ph, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !67
  br label %.loopexit

.loopexit:                                        ; preds = %bb.g, %bb.e, %bb.b, %bb.i
  %.0 = phi i32 [ 0, %bb.i ], [ -501, %bb.b ], [ -501, %bb.e ], [ -501, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  ret i32 %.0
}

declare void @sfparse_parser_init(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @sfparse_parser_dict(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @nghttp2_check_method(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @nghttp2_check_path(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @nghttp2_check_header_value(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @nghttp2_check_header_value_rfc9113(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define internal fastcc range(i64 -1, -9223372036854775800) i64 @parse_uint(ptr nofree noundef readonly captures(none) %0, i64 noundef %1) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %.020 = phi i64 [ %i.l, %bb.c ], [ 0, %bb.a ]   ; 2 uses
  %.01619 = phi i64 [ %i.k, %bb.c ], [ 0, %bb.a ] ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.020
  %i.c = load i8, ptr %i.b, align 1, !tbaa !22    ; 2 uses
  %i.d = add i8 %i.c, -58
  %or.cond = icmp ult i8 %i.d, -10
  br i1 %or.cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.e = and i8 %i.c, 15
  %i.f = zext nneg i8 %i.e to i64                 ; 2 uses
  %i.g = xor i64 %i.f, 9223372036854775806
  %i.h = udiv i64 %i.g, 10
  %i.i = icmp ugt i64 %.01619, %i.h
  br i1 %i.i, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = mul nuw nsw i64 %.01619, 10
  %i.k = add nuw i64 %i.j, %i.f                   ; 2 uses
  %i.l = add nuw i64 %.020, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.l, %1
  br i1 %exitcond.not, label %.loopexit, label %.preheader, !llvm.loop !57

.loopexit:                                        ; preds = %bb.c, %bb.b, %.preheader, %bb.a
  %.015 = phi i64 [ -1, %bb.a ], [ %i.k, %bb.c ], [ -1, %.preheader ], [ -1, %bb.b ]
  ret i64 %.015
}

declare void @nghttp2_extpri_from_uint8(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

declare zeroext i8 @nghttp2_extpri_to_uint8(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !10, i64 0}
!9 = !{!"", !10, i64 0, !10, i64 8, !5, i64 16, !6, i64 20}
!10 = !{!"p1 _ZTS13nghttp2_rcbuf", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !15, i64 24}
!13 = !{!"nghttp2_rcbuf", !11, i64 0, !11, i64 8, !14, i64 16, !15, i64 24, !5, i64 32}
!14 = !{!"p1 omnipotent char", !11, i64 0}
!15 = !{!"long", !6, i64 0}
!16 = !{!17, !5, i64 112}
!17 = !{!"nghttp2_stream", !5, i64 0, !18, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !19, i64 48, !11, i64 56, !20, i64 64, !15, i64 72, !5, i64 80, !5, i64 84, !5, i64 88, !5, i64 92, !5, i64 96, !5, i64 100, !5, i64 104, !5, i64 108, !5, i64 112, !6, i64 116, !6, i64 117, !6, i64 118, !6, i64 119, !6, i64 120, !6, i64 121}
!18 = !{!"", !15, i64 0}
!19 = !{!"p1 _ZTS14nghttp2_stream", !11, i64 0}
!20 = !{!"p1 _ZTS21nghttp2_outbound_item", !11, i64 0}
!21 = !{!13, !14, i64 16}
!22 = !{!6, !6, i64 0}
!23 = !{!9, !5, i64 16}
!24 = !{!25, !6, i64 2739}
!25 = !{!"nghttp2_session", !26, i64 0, !29, i64 56, !29, i64 80, !29, i64 104, !6, i64 128, !30, i64 448, !33, i64 528, !35, i64 792, !40, i64 1904, !43, i64 2144, !44, i64 2376, !11, i64 2416, !45, i64 2424, !46, i64 2432, !46, i64 2464, !15, i64 2496, !15, i64 2504, !15, i64 2512, !15, i64 2520, !15, i64 2528, !15, i64 2536, !15, i64 2544, !15, i64 2552, !15, i64 2560, !15, i64 2568, !15, i64 2576, !15, i64 2584, !15, i64 2592, !15, i64 2600, !5, i64 2608, !5, i64 2612, !5, i64 2616, !5, i64 2620, !5, i64 2624, !5, i64 2628, !5, i64 2632, !5, i64 2636, !5, i64 2640, !5, i64 2644, !5, i64 2648, !5, i64 2652, !6, i64 2656, !47, i64 2660, !47, i64 2692, !5, i64 2724, !5, i64 2728, !5, i64 2732, !6, i64 2736, !6, i64 2737, !6, i64 2738, !6, i64 2739, !6, i64 2740, !6, i64 2741, !6, i64 2742}
!26 = !{!"nghttp2_map", !27, i64 0, !28, i64 8, !14, i64 16, !11, i64 24, !15, i64 32, !15, i64 40, !15, i64 48}
!27 = !{!"p1 int", !11, i64 0}
!28 = !{!"any p2 pointer", !11, i64 0}
!29 = !{!"", !20, i64 0, !20, i64 8, !15, i64 16}
!30 = !{!"", !20, i64 0, !31, i64 8, !5, i64 72}
end_hunk_0
