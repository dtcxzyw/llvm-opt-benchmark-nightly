Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/php/original/filters?download=true
inline.NumInlined: 20
inline.NumDeleted: 13
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._php_stream_filter_ops = type { ptr, ptr, ptr }
%struct._php_stream_filter_factory = type { ptr }

@strfilter_rot13_ops = internal constant %struct._php_stream_filter_ops { ptr @strfilter_rot13_filter, ptr null, ptr @.str }, align 8
@strfilter_rot13_factory = internal constant %struct._php_stream_filter_factory { ptr @strfilter_rot13_create }, align 8
@strfilter_toupper_ops = internal constant %struct._php_stream_filter_ops { ptr @strfilter_toupper_filter, ptr null, ptr @.str.1 }, align 8
@strfilter_toupper_factory = internal constant %struct._php_stream_filter_factory { ptr @strfilter_toupper_create }, align 8
@strfilter_tolower_ops = internal constant %struct._php_stream_filter_ops { ptr @strfilter_tolower_filter, ptr null, ptr @.str.2 }, align 8
@strfilter_tolower_factory = internal constant %struct._php_stream_filter_factory { ptr @strfilter_tolower_create }, align 8
@strfilter_convert_ops = internal constant %struct._php_stream_filter_ops { ptr @strfilter_convert_filter, ptr @strfilter_convert_dtor, ptr @.str.3 }, align 8
@strfilter_convert_factory = internal constant %struct._php_stream_filter_factory { ptr @strfilter_convert_create }, align 8
@consumed_filter_ops = internal constant %struct._php_stream_filter_ops { ptr @consumed_filter_filter, ptr @consumed_filter_dtor, ptr @.str.19 }, align 8
@consumed_filter_factory = internal constant %struct._php_stream_filter_factory { ptr @consumed_filter_create }, align 8
@chunked_filter_ops = internal constant %struct._php_stream_filter_ops { ptr @php_chunked_filter, ptr @php_chunked_dtor, ptr @.str.20 }, align 8
@chunked_filter_factory = internal constant %struct._php_stream_filter_factory { ptr @chunked_filter_create }, align 8
@.str = private unnamed_addr constant [13 x i8] c"string.rot13\00", align 1
@rot13_from = internal constant [53 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 16
@rot13_to = internal constant [53 x i8] c"nopqrstuvwxyzabcdefghijklmNOPQRSTUVWXYZABCDEFGHIJKLM\00", align 16
@.str.1 = private unnamed_addr constant [15 x i8] c"string.toupper\00", align 1
@lowercase = internal constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 16
@uppercase = internal constant [27 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZ\00", align 16
@.str.2 = private unnamed_addr constant [15 x i8] c"string.tolower\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"convert.*\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Stream filter (%s): invalid byte sequence\00", align 1
@.str.5 = private unnamed_addr constant [40 x i8] c"Stream filter (%s): insufficient buffer\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"Stream filter (%s): unexpected end of stream\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"Stream filter (%s): unknown error\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"Stream filter (%s): unexpected octet values\00", align 1
@.str.9 = private unnamed_addr constant [45 x i8] c"Stream filter (%s): invalid filter parameter\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"base64-encode\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"base64-decode\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"quoted-printable-encode\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"quoted-printable-decode\00", align 1
@.str.14 = private unnamed_addr constant [17 x i8] c"line-break-chars\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"line-length\00", align 1
@.str.16 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.18 = private unnamed_addr constant [19 x i8] c"force-encode-first\00", align 1
@b64_tbl_enc = internal unnamed_addr constant [256 x i8] c"ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/", align 16
@b64_tbl_dec = internal unnamed_addr constant [256 x i32] [i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 62, i32 64, i32 64, i32 64, i32 63, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 64, i32 64, i32 64, i32 128, i32 64, i32 64, i32 64, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64, i32 64], align 16
@php_conv_qprint_encode_convert.qp_digits = internal unnamed_addr constant [17 x i8] c"0123456789ABCDEF\00", align 16
@.str.19 = private unnamed_addr constant [9 x i8] c"consumed\00", align 1
@.str.20 = private unnamed_addr constant [8 x i8] c"dechunk\00", align 1

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @zm_startup_standard_filters(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @php_stream_filter_register_factory(ptr noundef nonnull @.str, ptr noundef nonnull @strfilter_rot13_factory) #17
  %i.b = icmp eq i32 %i.a, -1
  br i1 %i.b, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @php_stream_filter_register_factory(ptr noundef nonnull @.str.1, ptr noundef nonnull @strfilter_toupper_factory) #17
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i32 @php_stream_filter_register_factory(ptr noundef nonnull @.str.2, ptr noundef nonnull @strfilter_tolower_factory) #17
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @php_stream_filter_register_factory(ptr noundef nonnull @.str.3, ptr noundef nonnull @strfilter_convert_factory) #17
  %i.h = icmp eq i32 %i.g, -1
  br i1 %i.h, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = tail call i32 @php_stream_filter_register_factory(ptr noundef nonnull @.str.19, ptr noundef nonnull @consumed_filter_factory) #17
  %i.j = icmp eq i32 %i.i, -1
  br i1 %i.j, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @php_stream_filter_register_factory(ptr noundef nonnull @.str.20, ptr noundef nonnull @chunked_filter_factory) #17
  %i.l = icmp eq i32 %i.k, -1
  %spec.select = sext i1 %i.l to i32
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.05 = phi i32 [ -1, %bb.a ], [ -1, %bb.d ], [ -1, %bb.b ], [ %spec.select, %bb.f ], [ -1, %bb.c ], [ -1, %bb.e ]
  ret i32 %.05
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @php_stream_filter_register_factory(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define hidden noundef i32 @zm_shutdown_standard_filters(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @php_stream_filter_unregister_factory(ptr noundef nonnull @.str) #17 ; 0 uses
  %i.b = tail call i32 @php_stream_filter_unregister_factory(ptr noundef nonnull @.str.1) #17 ; 0 uses
  %i.c = tail call i32 @php_stream_filter_unregister_factory(ptr noundef nonnull @.str.2) #17 ; 0 uses
  %i.d = tail call i32 @php_stream_filter_unregister_factory(ptr noundef nonnull @.str.3) #17 ; 0 uses
  %i.e = tail call i32 @php_stream_filter_unregister_factory(ptr noundef nonnull @.str.19) #17 ; 0 uses
  %i.f = tail call i32 @php_stream_filter_unregister_factory(ptr noundef nonnull @.str.20) #17 ; 0 uses
  ret i32 0
}

declare i32 @php_stream_filter_unregister_factory(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @strfilter_rot13_filter(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 %5) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %.not13 = icmp eq ptr %i.a, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.b = phi ptr [ %i.k, %.lr.ph ], [ %i.a, %bb.a ]
  %.014 = phi i64 [ %i.j, %.lr.ph ], [ 0, %bb.a ]
  %i.c = tail call ptr @php_stream_bucket_make_writeable(ptr noundef nonnull %i.b) #17 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22
  %i.h = tail call ptr @php_strtr(ptr noundef %i.e, i64 noundef %i.g, ptr noundef nonnull @rot13_from, ptr noundef nonnull @rot13_to, i64 noundef 52) #17 ; 0 uses
  %i.i = load i64, ptr %i.f, align 8, !tbaa !22
  %i.j = add i64 %i.i, %.014                      ; 2 uses
  tail call void @php_stream_bucket_append(ptr noundef %3, ptr noundef %i.c) #17
  %i.k = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !73

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.j, %.lr.ph ]
  %.not12 = icmp eq ptr %4, null
  br i1 %.not12, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store i64 %.0.lcssa, ptr %4, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret i32 2
}

declare ptr @php_stream_bucket_make_writeable(ptr noundef) local_unnamed_addr #2

declare ptr @php_strtr(ptr noundef, i64 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @php_stream_bucket_append(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @strfilter_rot13_create(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i8 noundef zeroext %2) #0 {
bb.a:
  %i.a = tail call ptr @_php_stream_filter_alloc(ptr noundef nonnull @strfilter_rot13_ops, ptr noundef null, i8 noundef zeroext %2) #17
  ret ptr %i.a
}

declare ptr @_php_stream_filter_alloc(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal noundef i32 @strfilter_toupper_filter(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 %5) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %.not13 = icmp eq ptr %i.a, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.b = phi ptr [ %i.k, %.lr.ph ], [ %i.a, %bb.a ]
  %.014 = phi i64 [ %i.j, %.lr.ph ], [ 0, %bb.a ]
  %i.c = tail call ptr @php_stream_bucket_make_writeable(ptr noundef nonnull %i.b) #17 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22
  %i.h = tail call ptr @php_strtr(ptr noundef %i.e, i64 noundef %i.g, ptr noundef nonnull @lowercase, ptr noundef nonnull @uppercase, i64 noundef 26) #17 ; 0 uses
  %i.i = load i64, ptr %i.f, align 8, !tbaa !22
  %i.j = add i64 %i.i, %.014                      ; 2 uses
  tail call void @php_stream_bucket_append(ptr noundef %3, ptr noundef %i.c) #17
  %i.k = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !74

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.j, %.lr.ph ]
  %.not12 = icmp eq ptr %4, null
  br i1 %.not12, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store i64 %.0.lcssa, ptr %4, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal ptr @strfilter_toupper_create(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i8 noundef zeroext %2) #0 {
bb.a:
  %i.a = tail call ptr @_php_stream_filter_alloc(ptr noundef nonnull @strfilter_toupper_ops, ptr noundef null, i8 noundef zeroext %2) #17
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal noundef i32 @strfilter_tolower_filter(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 %5) #0 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %.not13 = icmp eq ptr %i.a, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.b = phi ptr [ %i.k, %.lr.ph ], [ %i.a, %bb.a ]
  %.014 = phi i64 [ %i.j, %.lr.ph ], [ 0, %bb.a ]
  %i.c = tail call ptr @php_stream_bucket_make_writeable(ptr noundef nonnull %i.b) #17 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !22
  %i.h = tail call ptr @php_strtr(ptr noundef %i.e, i64 noundef %i.g, ptr noundef nonnull @uppercase, ptr noundef nonnull @lowercase, i64 noundef 26) #17 ; 0 uses
  %i.i = load i64, ptr %i.f, align 8, !tbaa !22
  %i.j = add i64 %i.i, %.014                      ; 2 uses
  tail call void @php_stream_bucket_append(ptr noundef %3, ptr noundef %i.c) #17
  %i.k = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !75

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.j, %.lr.ph ]
  %.not12 = icmp eq ptr %4, null
  br i1 %.not12, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store i64 %.0.lcssa, ptr %4, align 8, !tbaa !24
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %._crit_edge
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal ptr @strfilter_tolower_create(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i8 noundef zeroext %2) #0 {
bb.a:
  %i.a = tail call ptr @_php_stream_filter_alloc(ptr noundef nonnull @strfilter_tolower_ops, ptr noundef null, i8 noundef zeroext %2) #17
  ret ptr %i.a
}

; Function Attrs: nounwind uwtable
define internal range(i32 0, 3) i32 @strfilter_convert_filter(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  store i64 0, ptr %i.a, align 8, !tbaa !24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !25   ; 2 uses
  %i.d = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %.not35 = icmp eq ptr %i.d, null
  br i1 %.not35, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %i.f = phi ptr [ %i.d, %.lr.ph ], [ %i.n, %bb.c ] ; 6 uses
  tail call void @php_stream_bucket_unlink(ptr noundef nonnull %i.f) #17
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !22
  %i.k = load i16, ptr %i.e, align 8
  %i.l = trunc i16 %i.k to i1
  %i.m = call fastcc i32 @strfilter_convert_append_bucket(ptr noundef %i.c, ptr noundef %0, ptr noundef %3, ptr noundef %i.h, i64 noundef %i.j, ptr noundef %i.a, i1 noundef zeroext %i.l)
  %.not28 = icmp eq i32 %i.m, 0
  br i1 %.not28, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  tail call void @php_stream_bucket_delref(ptr noundef nonnull %i.f) #17
  %i.n = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %.not = icmp eq ptr %i.n, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !76

._crit_edge:                                      ; preds = %bb.c, %bb.a
  %.0.lcssa = phi ptr [ null, %bb.a ], [ %i.f, %bb.c ] ; 2 uses
  %i.o = and i32 %5, 2
  %.not25 = icmp eq i32 %i.o, 0
  br i1 %.not25, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.q = load i16, ptr %i.p, align 8
  %i.r = trunc i16 %i.q to i1
  %i.s = call fastcc i32 @strfilter_convert_append_bucket(ptr noundef %i.c, ptr noundef %0, ptr noundef %3, ptr noundef null, i64 noundef 0, ptr noundef %i.a, i1 noundef zeroext %i.r)
  %.not26 = icmp eq i32 %i.s, 0
  br i1 %.not26, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %.not27 = icmp eq ptr %4, null
  br i1 %.not27, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = load i64, ptr %i.a, align 8, !tbaa !24
  store i64 %i.t, ptr %4, align 8, !tbaa !24
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %.not29 = icmp eq ptr %.0.lcssa, null
  br i1 %.not29, label %bb.h, label %.thread

.thread:                                          ; preds = %bb.b, %bb.g
  %.132 = phi ptr [ %.0.lcssa, %bb.g ], [ %i.f, %bb.b ]
  tail call void @php_stream_bucket_delref(ptr noundef nonnull %.132) #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.thread, %bb.e, %bb.f
  %.022 = phi i32 [ 2, %bb.e ], [ 2, %bb.f ], [ 0, %.thread ], [ 0, %bb.g ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  ret i32 %.022
}

; Function Attrs: nounwind uwtable
define internal void @strfilter_convert_dtor(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !28   ; 3 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !78
  tail call void %i.e(ptr noundef nonnull %i.c) #17, !inline_history !77
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i8, ptr %i.f, align 8, !tbaa !30, !range !31, !noundef !32
  %i.h = trunc nuw i8 %i.g to i1
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !28   ; 2 uses
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef %i.i) #17
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  tail call void @_efree(ptr noundef %i.i) #17
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33   ; 3 uses
  %.not11.i = icmp eq ptr %i.k, null
  br i1 %.not11.i, label %php_convert_filter_dtor.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.m = load i8, ptr %i.l, align 8, !tbaa !30, !range !31, !noundef !32
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.k) #17
  br label %php_convert_filter_dtor.exit

bb.h:                                             ; preds = %bb.f
  tail call void @_efree(ptr noundef nonnull %i.k) #17
  br label %php_convert_filter_dtor.exit

php_convert_filter_dtor.exit:                     ; preds = %bb.e, %bb.g, %bb.h
  %i.o = load ptr, ptr %i.a, align 8, !tbaa !25   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i8, ptr %i.p, align 8, !tbaa !30, !range !31, !noundef !32
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.i, label %bb.j

bb.i:                                             ; preds = %php_convert_filter_dtor.exit
  tail call void @free(ptr noundef nonnull %i.o) #17
  br label %bb.k

bb.j:                                             ; preds = %php_convert_filter_dtor.exit
  tail call void @_efree(ptr noundef nonnull %i.o) #17
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

declare void @php_stream_bucket_unlink(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @strfilter_convert_append_bucket(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4, ptr nofree noundef nonnull captures(none) %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 8 uses
  %i.b = alloca ptr, align 8                      ; 12 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %i.d = alloca i64, align 8                      ; 15 uses
  %i.e = alloca i64, align 8                      ; 11 uses
  %i.f = alloca i64, align 8                      ; 7 uses
  store ptr %3, ptr %i.a, align 8, !tbaa !34
  %i.g = zext i1 %6 to i8                         ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #17
  %i.h = icmp eq ptr %3, null                     ; 2 uses
  %. = select i1 %i.h, i64 1, i64 %4              ; 2 uses
  %.232 = select i1 %i.h, i64 64, i64 %4          ; 13 uses
  store i64 %., ptr %i.e, align 8, !tbaa !24
  store i64 %.232, ptr %i.d, align 8, !tbaa !24
  br i1 %6, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = tail call noalias ptr @__zend_malloc(i64 noundef %.232) #18
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.j = tail call noalias ptr @_emalloc(i64 noundef %.232) #18
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.k = phi ptr [ %i.i, %bb.b ], [ %i.j, %bb.c ] ; 3 uses
  store ptr %i.k, ptr %i.b, align 8, !tbaa !34
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 6 uses
  %i.m = load i64, ptr %i.l, align 8, !tbaa !35   ; 2 uses
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.u, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.n, ptr %i.c, align 8, !tbaa !34
  store i64 %i.m, ptr %i.f, align 8, !tbaa !24
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.thread
  %.020536 = phi i64 [ %.232, %bb.e ], [ %.3, %.thread ] ; 8 uses
  %.020735 = phi ptr [ %i.k, %bb.e ], [ %.3210, %.thread ] ; 13 uses
  %i.o = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !81
  %i.q = call i32 %i.p(ptr noundef nonnull %i.o, ptr noundef nonnull %i.c, ptr noundef nonnull %i.f, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #17
  switch i32 %i.q, label %.threadthread-pre-split [
    i32 3, label %.loopexit.sink.split.loopexit98
    i32 6, label %bb.g
    i32 4, label %.loopexit.sink.split.loopexit135
    i32 2, label %bb.k
    i32 1, label %.loopexit.sink.split
  ]

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !34   ; 3 uses
  %.not230 = icmp eq ptr %i.r, null
  br i1 %.not230, label %.threadthread-pre-split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = load i64, ptr %i.e, align 8, !tbaa !24   ; 2 uses
  %.not231 = icmp eq i64 %i.s, 0
  br i1 %.not231, label %.thread.thread, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = load i64, ptr %i.l, align 8, !tbaa !35   ; 3 uses
  %i.u = icmp ugt i64 %i.t, 127
  br i1 %i.u, label %.loopexit.sink.split, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 1
  store ptr %i.v, ptr %i.a, align 8, !tbaa !34
  %i.w = load i8, ptr %i.r, align 1, !tbaa !25
  %i.x = add nuw nsw i64 %i.t, 1
  store i64 %i.x, ptr %i.l, align 8, !tbaa !35
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.t
  store i8 %i.w, ptr %i.y, align 1, !tbaa !25
  %i.z = add i64 %i.s, -1
  store i64 %i.z, ptr %i.e, align 8, !tbaa !24
  store ptr %i.n, ptr %i.c, align 8, !tbaa !34
  %i.aa = load i64, ptr %i.l, align 8, !tbaa !35  ; 2 uses
  store i64 %i.aa, ptr %i.f, align 8, !tbaa !24
  br label %.thread

.thread.thread:                                   ; preds = %bb.h
  store i64 0, ptr %i.f, align 8, !tbaa !24
  br label %.loopexit74

bb.k:                                             ; preds = %bb.f
  %i.ab = shl i64 %.020536, 1                     ; 3 uses
  %i.ac = icmp slt i64 %.020536, 0
  br i1 %i.ac, label %bb.l, label %bb.q

bb.l:                                             ; preds = %bb.k
  %i.ad = load i64, ptr %i.d, align 8, !tbaa !24
  %i.ae = sub i64 %.020536, %i.ad
  %i.af = call ptr @php_stream_bucket_new(ptr noundef %1, ptr noundef %.020735, i64 noundef %i.ae, i8 noundef zeroext 1, i8 noundef zeroext %i.g) #17 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  br i1 %i.ag, label %.loopexit, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @php_stream_bucket_append(ptr noundef %2, ptr noundef nonnull %i.af) #17
  store i64 %.232, ptr %i.d, align 8, !tbaa !24
  br i1 %6, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ah = call noalias ptr @__zend_malloc(i64 noundef %.232) #18
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ai = call noalias ptr @_emalloc(i64 noundef %.232) #18
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.aj = phi ptr [ %i.ah, %bb.n ], [ %i.ai, %bb.o ] ; 2 uses
  store ptr %i.aj, ptr %i.b, align 8, !tbaa !34
  br label %.threadthread-pre-split

bb.q:                                             ; preds = %bb.k
  br i1 %6, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ak = call ptr @__zend_realloc(ptr noundef %.020735, i64 noundef %i.ab) #19
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.al = call ptr @_erealloc(ptr noundef %.020735, i64 noundef %i.ab) #19
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.am = phi ptr [ %i.ak, %bb.r ], [ %i.al, %bb.s ] ; 2 uses
  %i.an = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.ao = ptrtoint ptr %i.an to i64
  %i.ap = ptrtoint ptr %.020735 to i64
  %i.aq = sub i64 %i.ao, %i.ap
  %i.ar = getelementptr inbounds i8, ptr %i.am, i64 %i.aq
  store ptr %i.ar, ptr %i.b, align 8, !tbaa !34
  %i.as = load i64, ptr %i.d, align 8, !tbaa !24
  %i.at = add i64 %i.as, %.020536
  store i64 %i.at, ptr %i.d, align 8, !tbaa !24
  br label %.threadthread-pre-split

.threadthread-pre-split:                          ; preds = %bb.g, %bb.f, %bb.t, %bb.p
  %.3210.ph = phi ptr [ %i.aj, %bb.p ], [ %i.am, %bb.t ], [ %.020735, %bb.g ], [ %.020735, %bb.f ]
  %.3.ph = phi i64 [ %.232, %bb.p ], [ %i.ab, %bb.t ], [ %.020536, %bb.g ], [ %.020536, %bb.f ]
  %.pr.pr = load i64, ptr %i.f, align 8, !tbaa !24
  br label %.thread

.thread:                                          ; preds = %.threadthread-pre-split, %bb.j
  %.pr = phi i64 [ %.pr.pr, %.threadthread-pre-split ], [ %i.aa, %bb.j ]
  %.3210 = phi ptr [ %.3210.ph, %.threadthread-pre-split ], [ %.020735, %bb.j ] ; 2 uses
  %.3 = phi i64 [ %.3.ph, %.threadthread-pre-split ], [ %.020536, %bb.j ] ; 2 uses
  %.not227 = icmp eq i64 %.pr, 0
  br i1 %.not227, label %.loopexit74, label %bb.f, !llvm.loop !79

.loopexit74:                                      ; preds = %.thread, %.thread.thread
  %.366 = phi i64 [ %.020536, %.thread.thread ], [ %.3, %.thread ]
  %.321065 = phi ptr [ %.020735, %.thread.thread ], [ %.3210, %.thread ]
  store i64 0, ptr %i.l, align 8, !tbaa !35
  %.pre = load i64, ptr %i.e, align 8, !tbaa !24
  br label %bb.u

bb.u:                                             ; preds = %.loopexit74, %bb.d
  %i.au = phi i64 [ %.pre, %.loopexit74 ], [ %., %bb.d ]
  %.4211 = phi ptr [ %.321065, %.loopexit74 ], [ %i.k, %bb.d ] ; 2 uses
  %.4 = phi i64 [ %.366, %.loopexit74 ], [ %.232, %bb.d ] ; 2 uses
  %.not22837 = icmp eq i64 %i.au, 0
  br i1 %.not22837, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 24
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph, %.thread5
  %.539 = phi i64 [ %.4, %.lr.ph ], [ %.8.ph, %.thread5 ] ; 6 uses
  %.521238 = phi ptr [ %.4211, %.lr.ph ], [ %.8215.ph, %.thread5 ] ; 11 uses
  %i.aw = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.ax = icmp eq ptr %i.aw, null
  %i.ay = load ptr, ptr %0, align 8, !tbaa !28    ; 3 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !81 ; 2 uses
  br i1 %i.ax, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.ba = call i32 %i.az(ptr noundef nonnull %i.ay, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #17
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.bb = call i32 %i.az(ptr noundef nonnull %i.ay, ptr noundef nonnull %i.a, ptr noundef nonnull %i.e, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d) #17
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.bc = phi i32 [ %i.ba, %bb.w ], [ %i.bb, %bb.x ]
  switch i32 %i.bc, label %bb.am [
    i32 3, label %.loopexit.sink.split
    i32 6, label %bb.z
    i32 2, label %bb.ac
    i32 1, label %.loopexit.sink.split.loopexit122
  ]

bb.z:                                             ; preds = %bb.y
  %i.bd = load ptr, ptr %i.a, align 8, !tbaa !34  ; 3 uses
  %.not229 = icmp eq ptr %i.bd, null
  br i1 %.not229, label %.loopexit.sink.split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.be = load i64, ptr %i.e, align 8, !tbaa !24  ; 4 uses
  %i.bf = icmp ugt i64 %i.be, 128
  br i1 %i.bf, label %.loopexit.sink.split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.av, ptr nonnull align 1 %i.bd, i64 %i.be, i1 false)
  store i64 %i.be, ptr %i.l, align 8, !tbaa !35
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.be
  store ptr %i.bg, ptr %i.a, align 8, !tbaa !34
  br label %._crit_edge.sink.split

bb.ac:                                            ; preds = %bb.y
  %i.bh = shl i64 %.539, 1                        ; 3 uses
  %i.bi = icmp slt i64 %.539, 0
  br i1 %i.bi, label %bb.ad, label %bb.ai

bb.ad:                                            ; preds = %bb.ac
  %i.bj = load i64, ptr %i.d, align 8, !tbaa !24
  %i.bk = sub i64 %.539, %i.bj
  %i.bl = call ptr @php_stream_bucket_new(ptr noundef %1, ptr noundef %.521238, i64 noundef %i.bk, i8 noundef zeroext 1, i8 noundef zeroext %i.g) #17 ; 2 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %.loopexit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @php_stream_bucket_append(ptr noundef %2, ptr noundef nonnull %i.bl) #17
  store i64 %.232, ptr %i.d, align 8, !tbaa !24
  br i1 %6, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.bn = call noalias ptr @__zend_malloc(i64 noundef %.232) #18
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ae
  %i.bo = call noalias ptr @_emalloc(i64 noundef %.232) #18
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.bp = phi ptr [ %i.bn, %bb.af ], [ %i.bo, %bb.ag ] ; 2 uses
  store ptr %i.bp, ptr %i.b, align 8, !tbaa !34
  br label %.thread5

bb.ai:                                            ; preds = %bb.ac
  br i1 %6, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bq = call ptr @__zend_realloc(ptr noundef %.521238, i64 noundef %i.bh) #19
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.br = call ptr @_erealloc(ptr noundef %.521238, i64 noundef %i.bh) #19
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  %i.bs = phi ptr [ %i.bq, %bb.aj ], [ %i.br, %bb.ak ] ; 2 uses
  %i.bt = load ptr, ptr %i.b, align 8, !tbaa !34
  %i.bu = ptrtoint ptr %i.bt to i64
  %i.bv = ptrtoint ptr %.521238 to i64
  %i.bw = sub i64 %i.bu, %i.bv
  %i.bx = getelementptr inbounds i8, ptr %i.bs, i64 %i.bw
  store ptr %i.bx, ptr %i.b, align 8, !tbaa !34
  %i.by = load i64, ptr %i.d, align 8, !tbaa !24
  %i.bz = add i64 %i.by, %.539
  store i64 %i.bz, ptr %i.d, align 8, !tbaa !24
  br label %.thread5

bb.am:                                            ; preds = %bb.y
  %i.ca = load ptr, ptr %i.a, align 8, !tbaa !34
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %._crit_edge.sink.split, label %.thread5

.thread5:                                         ; preds = %bb.ah, %bb.al, %bb.am
  %.8215.ph = phi ptr [ %i.bp, %bb.ah ], [ %i.bs, %bb.al ], [ %.521238, %bb.am ] ; 2 uses
  %.8.ph = phi i64 [ %.232, %bb.ah ], [ %i.bh, %bb.al ], [ %.539, %bb.am ] ; 2 uses
  %.pr67 = load i64, ptr %i.e, align 8, !tbaa !24
  %.not228 = icmp eq i64 %.pr67, 0
  br i1 %.not228, label %._crit_edge, label %bb.v, !llvm.loop !80

._crit_edge.sink.split:                           ; preds = %bb.am, %bb.ab
  store i64 0, ptr %i.e, align 8, !tbaa !24
  br label %._crit_edge

._crit_edge:                                      ; preds = %.thread5, %._crit_edge.sink.split, %bb.u
  %.5212.lcssa = phi ptr [ %.4211, %bb.u ], [ %.521238, %._crit_edge.sink.split ], [ %.8215.ph, %.thread5 ] ; 4 uses
  %.5.lcssa = phi i64 [ %.4, %bb.u ], [ %.539, %._crit_edge.sink.split ], [ %.8.ph, %.thread5 ] ; 2 uses
  %i.cc = load i64, ptr %i.d, align 8, !tbaa !24  ; 2 uses
  %i.cd = icmp ugt i64 %.5.lcssa, %i.cc
  br i1 %i.cd, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %._crit_edge
  %i.ce = sub nuw i64 %.5.lcssa, %i.cc
  %i.cf = call ptr @php_stream_bucket_new(ptr noundef %1, ptr noundef %.5212.lcssa, i64 noundef %i.ce, i8 noundef zeroext 1, i8 noundef zeroext %i.g) #17 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @php_stream_bucket_append(ptr noundef %2, ptr noundef nonnull %i.cf) #17
  br label %bb.as

bb.ap:                                            ; preds = %._crit_edge
  br i1 %6, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @free(ptr noundef %.5212.lcssa) #17
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  call void @_efree(ptr noundef %.5212.lcssa) #17
  br label %bb.as

bb.as:                                            ; preds = %bb.aq, %bb.ar, %bb.ao
  %i.ch = load i64, ptr %i.e, align 8, !tbaa !24
  %i.ci = sub i64 %4, %i.ch
  %i.cj = load i64, ptr %5, align 8, !tbaa !24
  %i.ck = add i64 %i.ci, %i.cj
  store i64 %i.ck, ptr %5, align 8, !tbaa !24
  br label %bb.av

.loopexit.sink.split.loopexit98:                  ; preds = %bb.f
  br label %.loopexit.sink.split

.loopexit.sink.split.loopexit122:                 ; preds = %bb.y
  br label %.loopexit.sink.split

.loopexit.sink.split.loopexit135:                 ; preds = %bb.f
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %bb.i, %bb.y, %bb.f, %.loopexit.sink.split.loopexit135, %.loopexit.sink.split.loopexit122, %.loopexit.sink.split.loopexit98, %bb.z, %bb.aa
  %.str.7.sink = phi ptr [ @.str.7, %.loopexit.sink.split.loopexit122 ], [ @.str.5, %bb.aa ], [ @.str.8, %bb.z ], [ @.str.7, %bb.f ], [ @.str.4, %bb.y ], [ @.str.4, %.loopexit.sink.split.loopexit98 ], [ @.str.5, %bb.i ], [ @.str.6, %.loopexit.sink.split.loopexit135 ]
  %.9.ph = phi ptr [ %.521238, %.loopexit.sink.split.loopexit122 ], [ %.521238, %bb.aa ], [ %.521238, %bb.z ], [ %.020735, %bb.f ], [ %.521238, %bb.y ], [ %.020735, %.loopexit.sink.split.loopexit98 ], [ %.020735, %bb.i ], [ %.020735, %.loopexit.sink.split.loopexit135 ]
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !33
  call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull %.str.7.sink, ptr noundef %i.cm) #17
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %bb.ad, %.loopexit.sink.split, %bb.an
  %.9 = phi ptr [ %.5212.lcssa, %bb.an ], [ %.9.ph, %.loopexit.sink.split ], [ %.521238, %bb.ad ], [ %.020735, %bb.l ] ; 2 uses
  br i1 %6, label %bb.at, label %bb.au

bb.at:                                            ; preds = %.loopexit
  call void @free(ptr noundef %.9) #17
  br label %bb.av

bb.au:                                            ; preds = %.loopexit
  call void @_efree(ptr noundef %.9) #17
  br label %bb.av

bb.av:                                            ; preds = %bb.at, %bb.au, %bb.as
  %.0216 = phi i32 [ 0, %bb.as ], [ -1, %bb.au ], [ -1, %bb.at ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #17
  ret i32 %.0216
}

declare void @php_stream_bucket_delref(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @__zend_malloc(i64 noundef) local_unnamed_addr #3

declare noalias ptr @_emalloc_32() local_unnamed_addr #2

declare noalias ptr @_emalloc_56() local_unnamed_addr #2

declare noalias ptr @_emalloc_64() local_unnamed_addr #2

declare noalias ptr @_emalloc_160() local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @_emalloc(i64 noundef) local_unnamed_addr #3

declare void @php_error_docref(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare ptr @php_stream_bucket_new(ptr noundef, ptr noundef, i64 noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: allocsize(1)
declare ptr @__zend_realloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: allocsize(1)
declare ptr @_erealloc(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #5

declare void @_efree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @strfilter_convert_create(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1, i8 noundef zeroext %2) #0 {
bb.a:
  %.not = icmp eq ptr %1, null                    ; 2 uses
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !25
  %.not24 = icmp eq i8 %i.b, 7
  br i1 %.not24, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, ...) @php_error_docref(ptr noundef null, i32 noundef 2, ptr noundef nonnull @.str.9, ptr noundef %0) #17
  br label %bb.cp

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.c = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 46) #20 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.cp, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 1 ; 4 uses
  %.not25 = icmp ne i8 %2, 0                      ; 12 uses
  br i1 %.not25, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.f = tail call noalias dereferenceable_or_null(160) ptr @__zend_malloc(i64 noundef 160) #18
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.g = tail call noalias ptr @_emalloc_160() #17
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.h = phi ptr [ %i.f, %bb.f ], [ %i.g, %bb.g ] ; 8 uses
  %i.i = tail call i32 @strcasecmp(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.10) #20
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.k = tail call i32 @strcasecmp(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.11) #20
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.m = tail call i32 @strcasecmp(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.12) #20
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = tail call i32 @strcasecmp(ptr noundef nonnull %i.e, ptr noundef nonnull @.str.13) #20
  %i.p = icmp eq i32 %i.o, 0
  %spec.select = select i1 %i.p, i32 4, i32 0
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.0 = phi i32 [ %spec.select, %bb.k ], [ 1, %bb.h ], [ 2, %bb.i ], [ 3, %bb.j ]
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.q = load ptr, ptr %1, align 8, !tbaa !25
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.r = phi ptr [ %i.q, %bb.m ], [ null, %bb.l ] ; 10 uses
  %i.s = zext i1 %.not25 to i8                    ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i8 %i.s, ptr %i.t, align 8, !tbaa !30
  br i1 %.not25, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.u = tail call noalias ptr @__zend_strdup(ptr noundef nonnull %0) #17
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.v = tail call noalias ptr @_estrdup(ptr noundef nonnull %0) #17
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.w = phi ptr [ %i.u, %bb.o ], [ %i.v, %bb.p ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  store i64 0, ptr %i.y, align 8, !tbaa !35
  switch i32 %.0, label %bb.cj [
    i32 1, label %bb.r
    i32 2, label %bb.ak
    i32 3, label %bb.ao
    i32 4, label %bb.bq
  ]

bb.r:                                             ; preds = %bb.q
  %.not59.i.i = icmp eq ptr %i.r, null
  br i1 %.not59.i.i, label %bb.af, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.z = tail call ptr @zend_hash_str_find(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.14, i64 noundef 16) #17 ; 4 uses
  %.not.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i.i.i, label %php_conv_get_string_prop_ex.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !25
  %i.ac = icmp eq i8 %i.ab, 6
  br i1 %i.ac, label %bb.u, label %bb.v, !prof !82

bb.u:                                             ; preds = %bb.t
  %i.ad = load ptr, ptr %i.z, align 8, !tbaa !25
  br label %zval_get_tmp_string.exit.i.i.i

bb.v:                                             ; preds = %bb.t
  %i.ae = tail call ptr @zval_get_string_func(ptr noundef nonnull %i.z) #17 ; 2 uses
  br label %zval_get_tmp_string.exit.i.i.i

zval_get_tmp_string.exit.i.i.i:                   ; preds = %bb.v, %bb.u
  %.01.i.i.i = phi ptr [ null, %bb.u ], [ %i.ae, %bb.v ] ; 5 uses
  %.0.i.i.i.i = phi ptr [ %i.ad, %bb.u ], [ %i.ae, %bb.v ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 16 ; 2 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !85
  %i.ah = add i64 %i.ag, 1
  %i.ai = tail call noalias ptr @_emalloc(i64 noundef %i.ah) #18 ; 5 uses
  %i.aj = load i64, ptr %i.af, align 8, !tbaa !85 ; 5 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i, i64 24
  %i.al = add i64 %i.aj, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ai, ptr nonnull align 8 %i.ak, i64 %i.al, i1 false)
  %.not.i.i.i.i = icmp eq ptr %.01.i.i.i, null
  br i1 %.not.i.i.i.i, label %php_conv_get_string_prop_ex.exit.i.i, label %bb.w, !prof !82

bb.w:                                             ; preds = %zval_get_tmp_string.exit.i.i.i
  %i.am = getelementptr inbounds nuw i8, ptr %.01.i.i.i, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !25
  %i.ao = and i32 %i.an, 64
  %.not.i51.i.i.i = icmp eq i32 %i.ao, 0
  br i1 %.not.i51.i.i.i, label %bb.x, label %php_conv_get_string_prop_ex.exit.i.i

bb.x:                                             ; preds = %bb.w
  %i.ap = load i32, ptr %.01.i.i.i, align 4, !tbaa !86 ; 2 uses
  %i.aq = icmp ne i32 %i.ap, 0
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = add i32 %i.ap, -1                       ; 2 uses
  store i32 %i.ar, ptr %.01.i.i.i, align 4, !tbaa !86
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.y, label %php_conv_get_string_prop_ex.exit.i.i

bb.y:                                             ; preds = %bb.x
  tail call void @_efree(ptr noundef nonnull %.01.i.i.i) #17
  br label %php_conv_get_string_prop_ex.exit.i.i

php_conv_get_string_prop_ex.exit.i.i:             ; preds = %bb.y, %bb.x, %bb.w, %zval_get_tmp_string.exit.i.i.i, %bb.s
  %.1125.i.i = phi ptr [ null, %bb.s ], [ %i.ai, %zval_get_tmp_string.exit.i.i.i ], [ %i.ai, %bb.y ], [ %i.ai, %bb.x ], [ %i.ai, %bb.w ] ; 4 uses
  %.1123.i.i = phi i64 [ 0, %bb.s ], [ %i.aj, %zval_get_tmp_string.exit.i.i.i ], [ %i.aj, %bb.y ], [ %i.aj, %bb.x ], [ %i.aj, %bb.w ] ; 3 uses
  %i.at = tail call ptr @zend_hash_str_find(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.15, i64 noundef 11) #17 ; 4 uses
  %.not.i.i62.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i62.i.i, label %php_conv_get_uint_prop_ex.exit.thread.i.i, label %bb.z

bb.z:                                             ; preds = %php_conv_get_string_prop_ex.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = load i8, ptr %i.au, align 8, !tbaa !25
  %i.aw = icmp eq i8 %i.av, 4
  br i1 %i.aw, label %bb.aa, label %bb.ab, !prof !82

bb.aa:                                            ; preds = %bb.z
  %i.ax = load i64, ptr %i.at, align 8, !tbaa !25
  br label %php_conv_get_uint_prop_ex.exit.i.i

bb.ab:                                            ; preds = %bb.z
  %i.ay = tail call i64 @zval_get_long_func(ptr noundef nonnull %i.at, i1 noundef zeroext false) #17
  br label %php_conv_get_uint_prop_ex.exit.i.i

php_conv_get_uint_prop_ex.exit.i.i:               ; preds = %bb.ab, %bb.aa
  %i.az = phi i64 [ %i.ax, %bb.aa ], [ %i.ay, %bb.ab ]
  %..i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.az, i64 0)
  %i.ba = trunc i64 %..i.i.i.i to i32             ; 4 uses
  %i.bb = icmp ult i32 %i.ba, 4
  br i1 %i.bb, label %php_conv_get_uint_prop_ex.exit.thread.i.i, label %bb.ad

php_conv_get_uint_prop_ex.exit.thread.i.i:        ; preds = %php_conv_get_uint_prop_ex.exit.i.i, %php_conv_get_string_prop_ex.exit.i.i
  %.1127129.i.i = phi i32 [ %i.ba, %php_conv_get_uint_prop_ex.exit.i.i ], [ 0, %php_conv_get_string_prop_ex.exit.i.i ] ; 2 uses
  %.not60.i.i = icmp eq ptr %.1125.i.i, null
  br i1 %.not60.i.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %php_conv_get_uint_prop_ex.exit.thread.i.i
  tail call void @_efree(ptr noundef nonnull %.1125.i.i) #17
  br label %bb.af

bb.ad:                                            ; preds = %php_conv_get_uint_prop_ex.exit.i.i
  %i.bc = icmp eq ptr %.1125.i.i, null
  br i1 %i.bc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bd = tail call noalias ptr @_estrdup(ptr noundef nonnull @.str.16) #17
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ac, %php_conv_get_uint_prop_ex.exit.thread.i.i, %bb.r
  %.0126.i.i = phi i32 [ 0, %bb.r ], [ %i.ba, %bb.ad ], [ %i.ba, %bb.ae ], [ %.1127129.i.i, %bb.ac ], [ %.1127129.i.i, %php_conv_get_uint_prop_ex.exit.thread.i.i ] ; 4 uses
  %.0124.i.i = phi ptr [ null, %bb.r ], [ %.1125.i.i, %bb.ad ], [ %i.bd, %bb.ae ], [ null, %bb.ac ], [ null, %php_conv_get_uint_prop_ex.exit.thread.i.i ] ; 4 uses
  %.0122.i.i = phi i64 [ undef, %bb.r ], [ %.1123.i.i, %bb.ad ], [ 2, %bb.ae ], [ %.1123.i.i, %bb.ac ], [ %.1123.i.i, %php_conv_get_uint_prop_ex.exit.thread.i.i ]
  %.not61.i.i = icmp eq ptr %.0124.i.i, null      ; 2 uses
  br i1 %.not25, label %bb.ag, label %.thread.i.i

bb.ag:                                            ; preds = %bb.af
  %i.be = tail call noalias dereferenceable_or_null(56) ptr @__zend_malloc(i64 noundef 56) #18 ; 7 uses
  br i1 %.not61.i.i, label %bb.aj, label %bb.ah

.thread.i.i:                                      ; preds = %bb.af
  %i.bf = tail call noalias ptr @_emalloc_56() #17 ; 7 uses
  br i1 %.not61.i.i, label %bb.aj, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  store ptr @php_conv_base64_encode_convert, ptr %i.be, align 8, !tbaa !87
  %i.bg = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @php_conv_base64_encode_dtor, ptr %i.bg, align 8, !tbaa !88
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  store i64 0, ptr %i.bh, align 8, !tbaa !37
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 40
  store i32 %.0126.i.i, ptr %i.bi, align 8, !tbaa !38
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 44
  store i32 %.0126.i.i, ptr %i.bj, align 4, !tbaa !39
  %i.bk = tail call noalias ptr @__zend_strdup(ptr noundef nonnull %.0124.i.i) #17
  br label %php_conv_base64_encode_ctor.exit.i.i

bb.ai:                                            ; preds = %.thread.i.i
  store ptr @php_conv_base64_encode_convert, ptr %i.bf, align 8, !tbaa !87
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store ptr @php_conv_base64_encode_dtor, ptr %i.bl, align 8, !tbaa !88
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store i64 0, ptr %i.bm, align 8, !tbaa !37
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bf, i64 40
  store i32 %.0126.i.i, ptr %i.bn, align 8, !tbaa !38
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bf, i64 44
  store i32 %.0126.i.i, ptr %i.bo, align 4, !tbaa !39
  %i.bp = tail call noalias ptr @_estrdup(ptr noundef nonnull %.0124.i.i) #17
  br label %php_conv_base64_encode_ctor.exit.i.i

php_conv_base64_encode_ctor.exit.i.i:             ; preds = %bb.ai, %bb.ah
  %i.bq = phi ptr [ %i.bf, %bb.ai ], [ %i.be, %bb.ah ] ; 5 uses
  %i.br = phi ptr [ %i.bp, %bb.ai ], [ %i.bk, %bb.ah ]
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store ptr %i.br, ptr %i.bs, align 8, !tbaa !40
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store i64 %.0122.i.i, ptr %i.bt, align 8, !tbaa !41
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store i32 1, ptr %i.bu, align 8, !tbaa !42
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 52
  store i8 %i.s, ptr %i.bv, align 4, !tbaa !43
  tail call void @_efree(ptr noundef nonnull %.0124.i.i) #17
  br label %bb.co

bb.aj:                                            ; preds = %.thread.i.i, %bb.ag
  %i.bw = phi ptr [ %i.bf, %.thread.i.i ], [ %i.be, %bb.ag ] ; 6 uses
  store ptr @php_conv_base64_encode_convert, ptr %i.bw, align 8, !tbaa !87
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  store ptr @php_conv_base64_encode_dtor, ptr %i.bx, align 8, !tbaa !88
  %i.by = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  store ptr null, ptr %i.bz, align 8, !tbaa !40
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 52
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.by, i8 0, i64 20, i1 false)
  store i8 %i.s, ptr %i.ca, align 4, !tbaa !43
  br label %bb.co

bb.ak:                                            ; preds = %bb.q
  br i1 %.not25, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  %i.cb = tail call noalias dereferenceable_or_null(32) ptr @__zend_malloc(i64 noundef 32) #18
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.cc = tail call noalias ptr @_emalloc_32() #17
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.cd = phi ptr [ %i.cb, %bb.al ], [ %i.cc, %bb.am ] ; 4 uses
  store ptr @php_conv_base64_decode_convert, ptr %i.cd, align 8, !tbaa !89
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  store ptr @php_conv_base64_decode_dtor, ptr %i.ce, align 8, !tbaa !90
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cf, i8 0, i64 16, i1 false)
  br label %bb.co

bb.ao:                                            ; preds = %bb.q
  %.not53.i.i = icmp eq ptr %i.r, null
  br i1 %.not53.i.i, label %bb.bg, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.cg = tail call ptr @zend_hash_str_find(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.14, i64 noundef 16) #17 ; 4 uses
  %.not.i64.i.i = icmp eq ptr %i.cg, null
  br i1 %.not.i64.i.i, label %php_conv_get_string_prop_ex.exit71.i.i, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ci = load i8, ptr %i.ch, align 8, !tbaa !25
  %i.cj = icmp eq i8 %i.ci, 6
  br i1 %i.cj, label %bb.ar, label %bb.as, !prof !82

bb.ar:                                            ; preds = %bb.aq
  %i.ck = load ptr, ptr %i.cg, align 8, !tbaa !25
  br label %zval_get_tmp_string.exit.i65.i.i

bb.as:                                            ; preds = %bb.aq
  %i.cl = tail call ptr @zval_get_string_func(ptr noundef nonnull %i.cg) #17 ; 2 uses
  br label %zval_get_tmp_string.exit.i65.i.i

zval_get_tmp_string.exit.i65.i.i:                 ; preds = %bb.as, %bb.ar
  %.01.i66.i.i = phi ptr [ null, %bb.ar ], [ %i.cl, %bb.as ] ; 5 uses
  %.0.i.i67.i.i = phi ptr [ %i.ck, %bb.ar ], [ %i.cl, %bb.as ] ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0.i.i67.i.i, i64 16 ; 2 uses
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !85
  %i.co = add i64 %i.cn, 1
  %i.cp = tail call noalias ptr @_emalloc(i64 noundef %i.co) #18 ; 5 uses
  %i.cq = load i64, ptr %i.cm, align 8, !tbaa !85 ; 5 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0.i.i67.i.i, i64 24
  %i.cs = add i64 %i.cq, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cp, ptr nonnull align 8 %i.cr, i64 %i.cs, i1 false)
  %.not.i.i68.i.i = icmp eq ptr %.01.i66.i.i, null
  br i1 %.not.i.i68.i.i, label %php_conv_get_string_prop_ex.exit71.i.i, label %bb.at, !prof !82

bb.at:                                            ; preds = %zval_get_tmp_string.exit.i65.i.i
  %i.ct = getelementptr inbounds nuw i8, ptr %.01.i66.i.i, i64 4
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !25
  %i.cv = and i32 %i.cu, 64
  %.not.i51.i69.i.i = icmp eq i32 %i.cv, 0
  br i1 %.not.i51.i69.i.i, label %bb.au, label %php_conv_get_string_prop_ex.exit71.i.i

bb.au:                                            ; preds = %bb.at
  %i.cw = load i32, ptr %.01.i66.i.i, align 4, !tbaa !86 ; 2 uses
  %i.cx = icmp ne i32 %i.cw, 0
  tail call void @llvm.assume(i1 %i.cx)
  %i.cy = add i32 %i.cw, -1                       ; 2 uses
  store i32 %i.cy, ptr %.01.i66.i.i, align 4, !tbaa !86
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %bb.av, label %php_conv_get_string_prop_ex.exit71.i.i

bb.av:                                            ; preds = %bb.au
  tail call void @_efree(ptr noundef nonnull %.01.i66.i.i) #17
  br label %php_conv_get_string_prop_ex.exit71.i.i

php_conv_get_string_prop_ex.exit71.i.i:           ; preds = %bb.av, %bb.au, %bb.at, %zval_get_tmp_string.exit.i65.i.i, %bb.ap
  %.2119.i.i = phi ptr [ null, %bb.ap ], [ %i.cp, %zval_get_tmp_string.exit.i65.i.i ], [ %i.cp, %bb.av ], [ %i.cp, %bb.au ], [ %i.cp, %bb.at ] ; 3 uses
  %.2.i.i = phi i64 [ 0, %bb.ap ], [ %i.cq, %zval_get_tmp_string.exit.i65.i.i ], [ %i.cq, %bb.av ], [ %i.cq, %bb.au ], [ %i.cq, %bb.at ] ; 3 uses
  %i.da = tail call ptr @zend_hash_str_find(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.15, i64 noundef 11) #17 ; 4 uses
  %.not.i.i72.i.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i72.i.i, label %php_conv_get_uint_prop_ex.exit75.i.i, label %bb.aw

bb.aw:                                            ; preds = %php_conv_get_string_prop_ex.exit71.i.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load i8, ptr %i.db, align 8, !tbaa !25
  %i.dd = icmp eq i8 %i.dc, 4
  br i1 %i.dd, label %bb.ax, label %bb.ay, !prof !82

bb.ax:                                            ; preds = %bb.aw
  %i.de = load i64, ptr %i.da, align 8, !tbaa !25
  br label %bb.az

bb.ay:                                            ; preds = %bb.aw
  %i.df = tail call i64 @zval_get_long_func(ptr noundef nonnull %i.da, i1 noundef zeroext false) #17
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.dg = phi i64 [ %i.de, %bb.ax ], [ %i.df, %bb.ay ]
  %..i.i73.i.i = tail call i64 @llvm.smax.i64(i64 %i.dg, i64 0)
  %i.dh = trunc i64 %..i.i73.i.i to i32
  br label %php_conv_get_uint_prop_ex.exit75.i.i

php_conv_get_uint_prop_ex.exit75.i.i:             ; preds = %bb.az, %php_conv_get_string_prop_ex.exit71.i.i
  %.1121.i.i = phi i32 [ 0, %php_conv_get_string_prop_ex.exit71.i.i ], [ %i.dh, %bb.az ] ; 5 uses
  %i.di = tail call ptr @zend_hash_str_find(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.17, i64 noundef 6) #17 ; 2 uses
  %.not.i76.i.i = icmp eq ptr %i.di, null
  br i1 %.not.i76.i.i, label %php_conv_get_bool_prop_ex.exit.i.i, label %bb.ba

bb.ba:                                            ; preds = %php_conv_get_uint_prop_ex.exit75.i.i
  %i.dj = tail call zeroext i1 @zend_is_true(ptr noundef nonnull %i.di) #17
  %i.dk = zext i1 %i.dj to i32
  br label %php_conv_get_bool_prop_ex.exit.i.i

php_conv_get_bool_prop_ex.exit.i.i:               ; preds = %bb.ba, %php_conv_get_uint_prop_ex.exit75.i.i
  %storemerge.i.i.i = phi i32 [ %i.dk, %bb.ba ], [ 0, %php_conv_get_uint_prop_ex.exit75.i.i ] ; 2 uses
  %i.dl = tail call ptr @zend_hash_str_find(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.18, i64 noundef 18) #17 ; 2 uses
  %.not.i78.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i78.i.i, label %php_conv_get_bool_prop_ex.exit81.i.i, label %bb.bb

bb.bb:                                            ; preds = %php_conv_get_bool_prop_ex.exit.i.i
  %i.dm = tail call zeroext i1 @zend_is_true(ptr noundef nonnull %i.dl) #17
  %i.dn = select i1 %i.dm, i32 2, i32 0
  %i.do = or disjoint i32 %i.dn, %storemerge.i.i.i
  br label %php_conv_get_bool_prop_ex.exit81.i.i

php_conv_get_bool_prop_ex.exit81.i.i:             ; preds = %bb.bb, %php_conv_get_bool_prop_ex.exit.i.i
  %storemerge.i79.i.i = phi i32 [ %i.do, %bb.bb ], [ %storemerge.i.i.i, %php_conv_get_bool_prop_ex.exit.i.i ] ; 4 uses
  %i.dp = icmp ult i32 %.1121.i.i, 4
  %.not54.i.i = icmp eq ptr %.2119.i.i, null      ; 2 uses
  br i1 %i.dp, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %php_conv_get_bool_prop_ex.exit81.i.i
  br i1 %.not54.i.i, label %bb.bg, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  tail call void @_efree(ptr noundef nonnull %.2119.i.i) #17
  br label %bb.bg

bb.be:                                            ; preds = %php_conv_get_bool_prop_ex.exit81.i.i
  br i1 %.not54.i.i, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.dq = tail call noalias ptr @_estrdup(ptr noundef nonnull @.str.16) #17
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.ao
  %.0120.i.i = phi i32 [ 0, %bb.ao ], [ %.1121.i.i, %bb.bc ], [ %.1121.i.i, %bb.bd ], [ %.1121.i.i, %bb.be ], [ %.1121.i.i, %bb.bf ] ; 3 uses
  %.1118.i.i = phi ptr [ null, %bb.ao ], [ null, %bb.bc ], [ null, %bb.bd ], [ %.2119.i.i, %bb.be ], [ %i.dq, %bb.bf ] ; 5 uses
  %.1116.i.i = phi i64 [ undef, %bb.ao ], [ %.2.i.i, %bb.bc ], [ %.2.i.i, %bb.bd ], [ %.2.i.i, %bb.be ], [ 2, %bb.bf ]
  %.0.i.i = phi i32 [ 0, %bb.ao ], [ %storemerge.i79.i.i, %bb.bc ], [ %storemerge.i79.i.i, %bb.bd ], [ %storemerge.i79.i.i, %bb.be ], [ %storemerge.i79.i.i, %bb.bf ] ; 2 uses
  br i1 %.not25, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.dr = tail call noalias dereferenceable_or_null(64) ptr @__zend_malloc(i64 noundef 64) #18
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  %i.ds = tail call noalias ptr @_emalloc_64() #17
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh
  %i.dt = phi ptr [ %i.dr, %bb.bh ], [ %i.ds, %bb.bi ] ; 26 uses
  %.not55.i.i = icmp eq ptr %.1118.i.i, null
  br i1 %.not55.i.i, label %bb.bp, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.du = icmp ult i32 %.0120.i.i, 4
  br i1 %i.du, label %bb.cf, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  store ptr @php_conv_qprint_encode_convert, ptr %i.dt, align 8, !tbaa !91
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr @php_conv_qprint_encode_dtor, ptr %i.dv, align 8, !tbaa !92
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dt, i64 36
  store i32 %.0120.i.i, ptr %i.dw, align 4, !tbaa !46
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  store i32 %.0120.i.i, ptr %i.dx, align 8, !tbaa !47
  br i1 %.not25, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.dy = tail call noalias ptr @__zend_strdup(ptr noundef nonnull %.1118.i.i) #17
  br label %bb.bo

bb.bn:                                            ; preds = %bb.bl
  %i.dz = tail call noalias ptr @_estrdup(ptr noundef nonnull %.1118.i.i) #17
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm
  %i.ea = phi ptr [ %i.dz, %bb.bn ], [ %i.dy, %bb.bm ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !48
  %i.ec = getelementptr inbounds nuw i8, ptr %i.dt, i64 24
  store i64 %.1116.i.i, ptr %i.ec, align 8, !tbaa !49
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dt, i64 44
  store i32 1, ptr %i.ed, align 4, !tbaa !50
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  store i8 %i.s, ptr %i.ee, align 8, !tbaa !51
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  store i32 %.0.i.i, ptr %i.ef, align 8, !tbaa !52
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dt, i64 52
  store i32 0, ptr %i.eg, align 4, !tbaa !53
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dt, i64 56
  store i32 0, ptr %i.eh, align 8, !tbaa !54
  tail call void @_efree(ptr noundef nonnull %.1118.i.i) #17
  br label %bb.co

bb.bp:                                            ; preds = %bb.bj
  store ptr @php_conv_qprint_encode_convert, ptr %i.dt, align 8, !tbaa !91
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  store ptr @php_conv_qprint_encode_dtor, ptr %i.ei, align 8, !tbaa !92
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dt, i64 36
  store i32 0, ptr %i.ej, align 4, !tbaa !46
  %i.ek = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  store i32 0, ptr %i.ek, align 8, !tbaa !47
  %i.el = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store ptr null, ptr %i.el, align 8, !tbaa !48
  %i.em = getelementptr inbounds nuw i8, ptr %i.dt, i64 44
  store i32 0, ptr %i.em, align 4, !tbaa !50
  %i.en = getelementptr inbounds nuw i8, ptr %i.dt, i64 48
  store i8 %i.s, ptr %i.en, align 8, !tbaa !51
  %i.eo = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  store i32 %.0.i.i, ptr %i.eo, align 8, !tbaa !52
  %i.ep = getelementptr inbounds nuw i8, ptr %i.dt, i64 52
  store i32 0, ptr %i.ep, align 4, !tbaa !53
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dt, i64 56
  store i32 0, ptr %i.eq, align 8, !tbaa !54
  br label %bb.co

bb.bq:                                            ; preds = %bb.q
  %.not.i.i = icmp eq ptr %i.r, null
  br i1 %.not.i.i, label %php_conv_get_string_prop_ex.exit91.i.i, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.er = tail call ptr @zend_hash_str_find(ptr noundef nonnull %i.r, ptr noundef nonnull @.str.14, i64 noundef 16) #17 ; 4 uses
  %.not.i84.i.i = icmp eq ptr %i.er, null
  br i1 %.not.i84.i.i, label %php_conv_get_string_prop_ex.exit91.i.i, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.et = load i8, ptr %i.es, align 8, !tbaa !25
  %i.eu = icmp eq i8 %i.et, 6
  br i1 %i.eu, label %bb.bt, label %bb.bu, !prof !82

bb.bt:                                            ; preds = %bb.bs
  %i.ev = load ptr, ptr %i.er, align 8, !tbaa !25
  br label %zval_get_tmp_string.exit.i85.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.ew = tail call ptr @zval_get_string_func(ptr noundef nonnull %i.er) #17 ; 2 uses
  br label %zval_get_tmp_string.exit.i85.i.i

zval_get_tmp_string.exit.i85.i.i:                 ; preds = %bb.bu, %bb.bt
  %.01.i86.i.i = phi ptr [ null, %bb.bt ], [ %i.ew, %bb.bu ] ; 5 uses
  %.0.i.i87.i.i = phi ptr [ %i.ev, %bb.bt ], [ %i.ew, %bb.bu ] ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.0.i.i87.i.i, i64 16 ; 2 uses
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !85
  %i.ez = add i64 %i.ey, 1
  %i.fa = tail call noalias ptr @_emalloc(i64 noundef %i.ez) #18 ; 5 uses
  %i.fb = load i64, ptr %i.ex, align 8, !tbaa !85 ; 5 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.0.i.i87.i.i, i64 24
  %i.fd = add i64 %i.fb, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.fa, ptr nonnull align 8 %i.fc, i64 %i.fd, i1 false)
  %.not.i.i88.i.i = icmp eq ptr %.01.i86.i.i, null
  br i1 %.not.i.i88.i.i, label %php_conv_get_string_prop_ex.exit91.i.i, label %bb.bv, !prof !82

bb.bv:                                            ; preds = %zval_get_tmp_string.exit.i85.i.i
  %i.fe = getelementptr inbounds nuw i8, ptr %.01.i86.i.i, i64 4
  %i.ff = load i32, ptr %i.fe, align 4, !tbaa !25
  %i.fg = and i32 %i.ff, 64
  %.not.i51.i89.i.i = icmp eq i32 %i.fg, 0
  br i1 %.not.i51.i89.i.i, label %bb.bw, label %php_conv_get_string_prop_ex.exit91.i.i

bb.bw:                                            ; preds = %bb.bv
  %i.fh = load i32, ptr %.01.i86.i.i, align 4, !tbaa !86 ; 2 uses
  %i.fi = icmp ne i32 %i.fh, 0
  tail call void @llvm.assume(i1 %i.fi)
  %i.fj = add i32 %i.fh, -1                       ; 2 uses
  store i32 %i.fj, ptr %.01.i86.i.i, align 4, !tbaa !86
  %i.fk = icmp eq i32 %i.fj, 0
  br i1 %i.fk, label %bb.bx, label %php_conv_get_string_prop_ex.exit91.i.i

bb.bx:                                            ; preds = %bb.bw
  tail call void @_efree(ptr noundef nonnull %.01.i86.i.i) #17
  br label %php_conv_get_string_prop_ex.exit91.i.i

php_conv_get_string_prop_ex.exit91.i.i:           ; preds = %bb.bx, %bb.bw, %bb.bv, %zval_get_tmp_string.exit.i85.i.i, %bb.br, %bb.bq
  %.0113.i.i = phi ptr [ null, %bb.bq ], [ null, %bb.br ], [ %i.fa, %zval_get_tmp_string.exit.i85.i.i ], [ %i.fa, %bb.bx ], [ %i.fa, %bb.bw ], [ %i.fa, %bb.bv ] ; 4 uses
  %.0111.i.i = phi i64 [ undef, %bb.bq ], [ 0, %bb.br ], [ %i.fb, %zval_get_tmp_string.exit.i85.i.i ], [ %i.fb, %bb.bx ], [ %i.fb, %bb.bw ], [ %i.fb, %bb.bv ]
  br i1 %.not25, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %php_conv_get_string_prop_ex.exit91.i.i
  %i.fl = tail call noalias dereferenceable_or_null(56) ptr @__zend_malloc(i64 noundef 56) #18
  br label %bb.ca

bb.bz:                                            ; preds = %php_conv_get_string_prop_ex.exit91.i.i
  %i.fm = tail call noalias ptr @_emalloc_56() #17
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %i.fn = phi ptr [ %i.fl, %bb.by ], [ %i.fm, %bb.bz ] ; 16 uses
  %.not52.i.i = icmp eq ptr %.0113.i.i, null
  store ptr @php_conv_qprint_decode_convert, ptr %i.fn, align 8, !tbaa !93
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 8
  store ptr @php_conv_qprint_decode_dtor, ptr %i.fo, align 8, !tbaa !94
  br i1 %.not52.i.i, label %bb.ce, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 32
  store i32 0, ptr %i.fp, align 8, !tbaa !56
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fn, i64 36
  store i32 0, ptr %i.fq, align 4, !tbaa !57
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fn, i64 52
  store i32 0, ptr %i.fr, align 4, !tbaa !58
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  store i32 0, ptr %i.fs, align 8, !tbaa !59
  br i1 %.not25, label %bb.cc, label %bb.cd

bb.cc:                                            ; preds = %bb.cb
  %i.ft = tail call noalias ptr @__zend_strdup(ptr noundef nonnull %.0113.i.i) #17
  br label %php_conv_qprint_decode_ctor.exit.i.i

bb.cd:                                            ; preds = %bb.cb
  %i.fu = tail call noalias ptr @_estrdup(ptr noundef nonnull %.0113.i.i) #17
  br label %php_conv_qprint_decode_ctor.exit.i.i

php_conv_qprint_decode_ctor.exit.i.i:             ; preds = %bb.cd, %bb.cc
  %i.fv = phi ptr [ %i.fu, %bb.cd ], [ %i.ft, %bb.cc ]
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  store ptr %i.fv, ptr %i.fw, align 8, !tbaa !60
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fn, i64 24
  store i64 %.0111.i.i, ptr %i.fx, align 8, !tbaa !61
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fn, i64 40
  store i32 1, ptr %i.fy, align 8, !tbaa !62
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fn, i64 44
  store i8 %i.s, ptr %i.fz, align 4, !tbaa !63
  tail call void @_efree(ptr noundef nonnull %.0113.i.i) #17
  br label %bb.co

bb.ce:                                            ; preds = %bb.ca
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fn, i64 52
  store i32 0, ptr %i.ga, align 4, !tbaa !58
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fn, i64 48
  store i32 0, ptr %i.gb, align 8, !tbaa !59
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fn, i64 44
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.gc, i8 0, i64 28, i1 false)
  store i8 %i.s, ptr %i.gd, align 4, !tbaa !63
  br label %bb.co

bb.cf:                                            ; preds = %bb.bk
  tail call void @_efree(ptr noundef nonnull %.1118.i.i) #17
  %.not58.i.i = icmp eq ptr %i.dt, null
  br i1 %.not58.i.i, label %thread-pre-split.i, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  br i1 %.not25, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  tail call void @free(ptr noundef nonnull %i.dt) #17
  br label %thread-pre-split.i

bb.ci:                                            ; preds = %bb.cg
  tail call void @_efree(ptr noundef nonnull %i.dt) #17
  br label %thread-pre-split.i

thread-pre-split.i:                               ; preds = %bb.ci, %bb.ch, %bb.cf
  %.pr.i = load ptr, ptr %i.x, align 8, !tbaa !33
  br label %bb.cj

bb.cj:                                            ; preds = %thread-pre-split.i, %bb.q
  %i.ge = phi ptr [ %.pr.i, %thread-pre-split.i ], [ %i.w, %bb.q ] ; 3 uses
  store ptr null, ptr %i.h, align 8, !tbaa !28
  %.not.i = icmp eq ptr %i.ge, null
  br i1 %.not.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  br i1 %.not25, label %.thread29, label %.thread

.thread29:                                        ; preds = %bb.ck
  tail call void @free(ptr noundef nonnull %i.ge) #17
  br label %bb.cm

.thread:                                          ; preds = %bb.ck
  tail call void @_efree(ptr noundef nonnull %i.ge) #17
  br label %bb.cn

bb.cl:                                            ; preds = %bb.cj
  br i1 %.not25, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %.thread29, %bb.cl
  tail call void @free(ptr noundef nonnull %i.h) #17
  br label %bb.cp

bb.cn:                                            ; preds = %.thread, %bb.cl
  tail call void @_efree(ptr noundef nonnull %i.h) #17
  br label %bb.cp

bb.co:                                            ; preds = %bb.ce, %php_conv_qprint_decode_ctor.exit.i.i, %bb.bp, %bb.bo, %bb.an, %bb.aj, %php_conv_base64_encode_ctor.exit.i.i
  %.043.i.ph.i = phi ptr [ %i.dt, %bb.bo ], [ %i.dt, %bb.bp ], [ %i.fn, %php_conv_qprint_decode_ctor.exit.i.i ], [ %i.bq, %php_conv_base64_encode_ctor.exit.i.i ], [ %i.fn, %bb.ce ], [ %i.cd, %bb.an ], [ %i.bw, %bb.aj ]
  store ptr %.043.i.ph.i, ptr %i.h, align 8, !tbaa !28
  %i.gf = tail call ptr @_php_stream_filter_alloc(ptr noundef nonnull @strfilter_convert_ops, ptr noundef nonnull %i.h, i8 noundef zeroext %2) #17
  br label %bb.cp

bb.cp:                                            ; preds = %bb.cm, %bb.cn, %bb.d, %bb.co, %bb.c
  %.021 = phi ptr [ null, %bb.c ], [ %i.gf, %bb.co ], [ null, %bb.d ], [ null, %bb.cn ], [ null, %bb.cm ]
  ret ptr %.021
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare noalias ptr @__zend_strdup(ptr noundef) local_unnamed_addr #2

declare noalias ptr @_estrdup(ptr noundef) local_unnamed_addr #2

declare ptr @zend_hash_str_find(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare ptr @zval_get_string_func(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

declare i64 @zval_get_long_func(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable
define internal i32 @php_conv_base64_encode_convert(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) #9 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store volatile i32 0, ptr %i.b, align 4, !tbaa !64
  %i.c = icmp eq ptr %1, null
  %i.d = icmp eq ptr %2, null
  %or.cond = or i1 %i.c, %i.d
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 9 uses
  br i1 %or.cond, label %bb.b, label %bb.s

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store volatile i32 0, ptr %i.a, align 4, !tbaa !64
  %i.g = load ptr, ptr %3, align 8, !tbaa !34     ; 10 uses
  %i.h = load i64, ptr %4, align 8, !tbaa !24     ; 10 uses
  %i.i = load i32, ptr %i.e, align 8, !tbaa !38   ; 8 uses
  %i.j = load i64, ptr %i.f, align 8, !tbaa !37
  switch i64 %i.j, label %bb.q [
    i64 0, label %bb.r
    i64 1, label %bb.c
    i64 2, label %bb.j
  ]

bb.c:                                             ; preds = %bb.b
  %i.k = icmp ult i32 %i.i, 4
  br i1 %i.k, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !40   ; 2 uses
  %.not71.i = icmp eq ptr %i.m, null
  br i1 %.not71.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !41   ; 2 uses
  %i.p = icmp ult i64 %i.h, %i.o
  br i1 %i.p, label %php_conv_base64_encode_flush.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.m, i64 %i.o, i1 false)
  %i.q = load i64, ptr %i.n, align 8, !tbaa !41   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.q
  %i.s = sub i64 %i.h, %i.q
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.u = load i32, ptr %i.t, align 4, !tbaa !39
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d, %bb.c
  %.058.i = phi ptr [ %i.r, %bb.f ], [ %i.g, %bb.d ], [ %i.g, %bb.c ] ; 6 uses
  %.055.i = phi i64 [ %i.s, %bb.f ], [ %i.h, %bb.d ], [ %i.h, %bb.c ] ; 3 uses
  %.0.i = phi i32 [ %i.u, %bb.f ], [ %i.i, %bb.d ], [ %i.i, %bb.c ] ; 2 uses
  %i.v = icmp ult i64 %.055.i, 4
  br i1 %i.v, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store volatile i32 2, ptr %i.a, align 4, !tbaa !64
  br label %bb.r

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 2 uses
  %i.x = load i8, ptr %i.w, align 1, !tbaa !25
  %i.y = lshr i8 %i.x, 2
  %i.z = zext nneg i8 %i.y to i64
  %i.aa = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !25
  %i.ac = getelementptr inbounds nuw i8, ptr %.058.i, i64 1
  store i8 %i.ab, ptr %.058.i, align 1, !tbaa !25
  %i.ad = load i8, ptr %i.w, align 1, !tbaa !25
  %i.ae = shl i8 %i.ad, 4
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 16, !tbaa !25
  %i.ai = getelementptr inbounds nuw i8, ptr %.058.i, i64 2
  store i8 %i.ah, ptr %i.ac, align 1, !tbaa !25
  %i.aj = getelementptr inbounds nuw i8, ptr %.058.i, i64 3
  store i8 61, ptr %i.ai, align 1, !tbaa !25
  %i.ak = getelementptr inbounds nuw i8, ptr %.058.i, i64 4
  store i8 61, ptr %i.aj, align 1, !tbaa !25
  store i64 0, ptr %i.f, align 8, !tbaa !37
  %i.al = add i64 %.055.i, -4
  %i.am = add i32 %.0.i, -4
  br label %bb.r

bb.j:                                             ; preds = %bb.b
  %i.an = icmp ult i32 %i.i, 4
  br i1 %i.an, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !40 ; 2 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !41 ; 3 uses
  %i.as = icmp ult i64 %i.h, %i.ar
  br i1 %i.as, label %php_conv_base64_encode_flush.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.g, ptr nonnull align 1 %i.ap, i64 %i.ar, i1 false)
  %i.at = getelementptr inbounds i8, ptr %i.g, i64 %i.ar
  %i.au = load i64, ptr %i.aq, align 8, !tbaa !41
  %i.av = sub i64 %i.h, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !39
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.j
  %.159.i = phi ptr [ %i.at, %bb.m ], [ %i.g, %bb.k ], [ %i.g, %bb.j ] ; 6 uses
  %.156.i = phi i64 [ %i.av, %bb.m ], [ %i.h, %bb.k ], [ %i.h, %bb.j ] ; 3 uses
  %.1.i = phi i32 [ %i.ax, %bb.m ], [ %i.i, %bb.k ], [ %i.i, %bb.j ] ; 2 uses
  %i.ay = icmp ult i64 %.156.i, 4
  br i1 %i.ay, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store volatile i32 2, ptr %i.a, align 4, !tbaa !64
  br label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 2 uses
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !25
  %i.bb = lshr i8 %i.ba, 2
  %i.bc = zext nneg i8 %i.bb to i64
  %i.bd = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.bc
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !25
  %i.bf = getelementptr inbounds nuw i8, ptr %.159.i, i64 1
  store i8 %i.be, ptr %.159.i, align 1, !tbaa !25
  %i.bg = load i8, ptr %i.az, align 1, !tbaa !25
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 54 ; 2 uses
  %i.bi = load i8, ptr %i.bh, align 2, !tbaa !25
  %i.bj = tail call i8 @llvm.fshl.i8(i8 %i.bg, i8 %i.bi, i8 4)
  %i.bk = zext i8 %i.bj to i64
  %i.bl = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.bk
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !25
  %i.bn = getelementptr inbounds nuw i8, ptr %.159.i, i64 2
  store i8 %i.bm, ptr %i.bf, align 1, !tbaa !25
  %i.bo = load i8, ptr %i.bh, align 2, !tbaa !25
  %i.bp = shl i8 %i.bo, 2
  %i.bq = zext i8 %i.bp to i64
  %i.br = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 4, !tbaa !25
  %i.bt = getelementptr inbounds nuw i8, ptr %.159.i, i64 3
  store i8 %i.bs, ptr %i.bn, align 1, !tbaa !25
  %i.bu = getelementptr inbounds nuw i8, ptr %.159.i, i64 4
  store i8 61, ptr %i.bt, align 1, !tbaa !25
  store i64 0, ptr %i.f, align 8, !tbaa !37
  %i.bv = add i64 %.156.i, -4
  %i.bw = add i32 %.1.i, -4
  br label %bb.r

bb.q:                                             ; preds = %bb.b
  store volatile i32 1, ptr %i.a, align 4, !tbaa !64
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.i, %bb.h, %bb.b
  %.260.i = phi ptr [ %i.g, %bb.q ], [ %i.g, %bb.b ], [ %.058.i, %bb.h ], [ %i.ak, %bb.i ], [ %.159.i, %bb.o ], [ %i.bu, %bb.p ]
  %.257.i = phi i64 [ %i.h, %bb.q ], [ %i.h, %bb.b ], [ %.055.i, %bb.h ], [ %i.al, %bb.i ], [ %.156.i, %bb.o ], [ %i.bv, %bb.p ]
  %.2.i = phi i32 [ %i.i, %bb.q ], [ %i.i, %bb.b ], [ %.0.i, %bb.h ], [ %i.am, %bb.i ], [ %.1.i, %bb.o ], [ %i.bw, %bb.p ]
  store ptr %.260.i, ptr %3, align 8, !tbaa !34
  store i64 %.257.i, ptr %4, align 8, !tbaa !24
  store i32 %.2.i, ptr %i.e, align 8, !tbaa !38
  %.0..0..0..0..0..0.25.i = load volatile i32, ptr %i.a, align 4, !tbaa !64
  br label %php_conv_base64_encode_flush.exit

php_conv_base64_encode_flush.exit:                ; preds = %bb.e, %bb.l, %bb.r
  %.061.i = phi i32 [ %.0..0..0..0..0..0.25.i, %bb.r ], [ 2, %bb.e ], [ 2, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ap

bb.s:                                             ; preds = %bb.a
  %i.bx = load ptr, ptr %3, align 8, !tbaa !34    ; 11 uses
  %i.by = load i64, ptr %4, align 8, !tbaa !24    ; 11 uses
  %i.bz = load ptr, ptr %1, align 8, !tbaa !34    ; 11 uses
  %i.ca = load i64, ptr %2, align 8, !tbaa !24    ; 7 uses
  %i.cb = load i32, ptr %i.e, align 8, !tbaa !38  ; 9 uses
  %i.cc = load i64, ptr %i.f, align 8, !tbaa !37
  switch i64 %i.cc, label %bb.ah [
    i64 1, label %bb.t
    i64 2, label %bb.aa
  ]

bb.t:                                             ; preds = %bb.s
  %i.cd = icmp ugt i64 %i.ca, 1
  br i1 %i.cd, label %bb.u, label %.preheader

bb.u:                                             ; preds = %bb.t
  %i.ce = icmp ult i32 %i.cb, 4
  br i1 %i.ce, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !40 ; 2 uses
  %.not150 = icmp eq ptr %i.cg, null
  br i1 %.not150, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ci = load i64, ptr %i.ch, align 8, !tbaa !41 ; 3 uses
  %i.cj = icmp ult i64 %i.by, %i.ci
  br i1 %i.cj, label %bb.ap, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr nonnull align 1 %i.cg, i64 %i.ci, i1 false)
  %i.ck = getelementptr inbounds i8, ptr %i.bx, i64 %i.ci
  %i.cl = load i64, ptr %i.ch, align 8, !tbaa !41
  %i.cm = sub i64 %i.by, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !39
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.v, %bb.u
  %.0124 = phi i64 [ %i.cm, %bb.x ], [ %i.by, %bb.v ], [ %i.by, %bb.u ] ; 3 uses
  %.0110 = phi ptr [ %i.ck, %bb.x ], [ %i.bx, %bb.v ], [ %i.bx, %bb.u ] ; 6 uses
  %.0 = phi i32 [ %i.co, %bb.x ], [ %i.cb, %bb.v ], [ %i.cb, %bb.u ] ; 2 uses
  %i.cp = icmp ult i64 %.0124, 4
  br i1 %i.cp, label %.loopexit.sink.split, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !25
  %i.cs = lshr i8 %i.cr, 2
  %i.ct = zext nneg i8 %i.cs to i64
  %i.cu = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.ct
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !25
  %i.cw = getelementptr inbounds nuw i8, ptr %.0110, i64 1
  store i8 %i.cv, ptr %.0110, align 1, !tbaa !25
  %i.cx = load i8, ptr %i.cq, align 1, !tbaa !25
  %i.cy = load i8, ptr %i.bz, align 1, !tbaa !25
  %i.cz = tail call i8 @llvm.fshl.i8(i8 %i.cx, i8 %i.cy, i8 4)
  %i.da = zext i8 %i.cz to i64
  %i.db = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !25
  %i.dd = getelementptr inbounds nuw i8, ptr %.0110, i64 2
  store i8 %i.dc, ptr %i.cw, align 1, !tbaa !25
  %i.de = load i8, ptr %i.bz, align 1, !tbaa !25
  %i.df = getelementptr inbounds nuw i8, ptr %i.bz, i64 1 ; 2 uses
  %i.dg = load i8, ptr %i.df, align 1, !tbaa !25
  %i.dh = tail call i8 @llvm.fshl.i8(i8 %i.de, i8 %i.dg, i8 2)
  %i.di = zext i8 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !tbaa !25
  %i.dl = getelementptr inbounds nuw i8, ptr %.0110, i64 3
  store i8 %i.dk, ptr %i.dd, align 1, !tbaa !25
  %i.dm = load i8, ptr %i.df, align 1, !tbaa !25
  %i.dn = zext i8 %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.dn
  %i.dp = load i8, ptr %i.do, align 1, !tbaa !25
  store i8 %i.dp, ptr %i.dl, align 1, !tbaa !25
  br label %.sink.split

bb.aa:                                            ; preds = %bb.s
  %.not = icmp eq i64 %i.ca, 0
  br i1 %.not, label %.loopexit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dq = icmp ult i32 %i.cb, 4
  br i1 %i.dq, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !40 ; 2 uses
  %.not149 = icmp eq ptr %i.ds, null
  br i1 %.not149, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !41 ; 3 uses
  %i.dv = icmp ult i64 %i.by, %i.du
  br i1 %i.dv, label %bb.ap, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bx, ptr nonnull align 1 %i.ds, i64 %i.du, i1 false)
  %i.dw = getelementptr inbounds i8, ptr %i.bx, i64 %i.du
  %i.dx = load i64, ptr %i.dt, align 8, !tbaa !41
  %i.dy = sub i64 %i.by, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !39
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ac, %bb.ab
  %.1125 = phi i64 [ %i.dy, %bb.ae ], [ %i.by, %bb.ac ], [ %i.by, %bb.ab ] ; 3 uses
  %.1111 = phi ptr [ %i.dw, %bb.ae ], [ %i.bx, %bb.ac ], [ %i.bx, %bb.ab ] ; 6 uses
  %.1 = phi i32 [ %i.ea, %bb.ae ], [ %i.cb, %bb.ac ], [ %i.cb, %bb.ab ] ; 2 uses
  %i.eb = icmp ult i64 %.1125, 4
  br i1 %i.eb, label %.loopexit.sink.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 2 uses
  %i.ed = load i8, ptr %i.ec, align 1, !tbaa !25
  %i.ee = lshr i8 %i.ed, 2
  %i.ef = zext nneg i8 %i.ee to i64
  %i.eg = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.ef
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !25
  %i.ei = getelementptr inbounds nuw i8, ptr %.1111, i64 1
  store i8 %i.eh, ptr %.1111, align 1, !tbaa !25
  %i.ej = load i8, ptr %i.ec, align 1, !tbaa !25
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 54 ; 2 uses
  %i.el = load i8, ptr %i.ek, align 2, !tbaa !25
  %i.em = tail call i8 @llvm.fshl.i8(i8 %i.ej, i8 %i.el, i8 4)
  %i.en = zext i8 %i.em to i64
  %i.eo = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !25
  %i.eq = getelementptr inbounds nuw i8, ptr %.1111, i64 2
  store i8 %i.ep, ptr %i.ei, align 1, !tbaa !25
  %i.er = load i8, ptr %i.ek, align 2, !tbaa !25
  %i.es = load i8, ptr %i.bz, align 1, !tbaa !25
  %i.et = tail call i8 @llvm.fshl.i8(i8 %i.er, i8 %i.es, i8 2)
  %i.eu = zext i8 %i.et to i64
  %i.ev = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.eu
  %i.ew = load i8, ptr %i.ev, align 1, !tbaa !25
  %i.ex = getelementptr inbounds nuw i8, ptr %.1111, i64 3
  store i8 %i.ew, ptr %i.eq, align 1, !tbaa !25
  %i.ey = load i8, ptr %i.bz, align 1, !tbaa !25
  %i.ez = zext i8 %i.ey to i64
  %i.fa = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.ez
  %i.fb = load i8, ptr %i.fa, align 1, !tbaa !25
  store i8 %i.fb, ptr %i.ex, align 1, !tbaa !25
  br label %.sink.split

.sink.split:                                      ; preds = %bb.z, %bb.ag
  %.1125.sink = phi i64 [ %.1125, %bb.ag ], [ %.0124, %bb.z ]
  %.sink252 = phi i64 [ 1, %bb.ag ], [ 2, %bb.z ]
  %.sink = phi i64 [ -1, %bb.ag ], [ -2, %bb.z ]
  %.1.sink = phi i32 [ %.1, %bb.ag ], [ %.0, %bb.z ]
  %.1111.pn = phi ptr [ %.1111, %bb.ag ], [ %.0110, %bb.z ]
  %.2112.ph = getelementptr inbounds nuw i8, ptr %.1111.pn, i64 4
  %i.fc = add i64 %.1125.sink, -4
  %i.fd = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.sink252
  %i.fe = add i64 %i.ca, %.sink
  store i64 0, ptr %i.f, align 8, !tbaa !37
  %i.ff = add i32 %.1.sink, -4
  br label %bb.ah

bb.ah:                                            ; preds = %.sink.split, %bb.s
  %.2126 = phi i64 [ %i.by, %bb.s ], [ %i.fc, %.sink.split ] ; 2 uses
  %.0120 = phi i64 [ %i.ca, %bb.s ], [ %i.fe, %.sink.split ] ; 3 uses
  %.0116 = phi ptr [ %i.bz, %bb.s ], [ %i.fd, %.sink.split ] ; 2 uses
  %.2112 = phi ptr [ %i.bx, %bb.s ], [ %.2112.ph, %.sink.split ] ; 2 uses
  %.2 = phi i32 [ %i.cb, %bb.s ], [ %i.ff, %.sink.split ] ; 2 uses
  %i.fg = icmp ugt i64 %.0120, 2
  br i1 %i.fg, label %.lr.ph, label %.preheader

.lr.ph:                                           ; preds = %bb.ah
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 44
  br label %bb.aj

.preheader:                                       ; preds = %bb.ao, %bb.t, %bb.ah
  %.3127.lcssa = phi i64 [ %.2126, %bb.ah ], [ %i.by, %bb.t ], [ %i.ha, %bb.ao ] ; 4 uses
  %.1121.lcssa = phi i64 [ %.0120, %bb.ah ], [ %i.ca, %bb.t ], [ %i.gz, %bb.ao ] ; 3 uses
  %.1117.lcssa = phi ptr [ %.0116, %bb.ah ], [ %i.bz, %bb.t ], [ %i.gy, %bb.ao ] ; 5 uses
  %.3113.lcssa = phi ptr [ %.2112, %bb.ah ], [ %i.bx, %bb.t ], [ %i.gx, %bb.ao ] ; 4 uses
  %.3.lcssa = phi i32 [ %.2, %bb.ah ], [ %i.cb, %bb.t ], [ %i.hb, %bb.ao ] ; 4 uses
  %.not151172 = icmp eq i64 %.1121.lcssa, 0
  br i1 %.not151172, label %.loopexit, label %bb.ai

bb.ai:                                            ; preds = %.preheader
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 53 ; 3 uses
  %.promoted = load i64, ptr %i.f, align 8, !tbaa !37 ; 4 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.1117.lcssa, i64 1 ; 2 uses
  %i.fl = load i8, ptr %.1117.lcssa, align 1, !tbaa !25
  %i.fm = add i64 %.promoted, 1                   ; 2 uses
  store i64 %i.fm, ptr %i.f, align 8, !tbaa !37
  %i.fn = getelementptr inbounds nuw i8, ptr %5, i64 %.promoted
  store i8 %i.fl, ptr %i.fn, align 1, !tbaa !25
  %prol.iter.cmp.not = icmp eq i64 %.1121.lcssa, 1
  br i1 %prol.iter.cmp.not, label %.loopexit, label %.lr.ph175.new

bb.aj:                                            ; preds = %.lr.ph, %bb.ao
  %.3167 = phi i32 [ %.2, %.lr.ph ], [ %i.hb, %bb.ao ] ; 4 uses
  %.3113166 = phi ptr [ %.2112, %.lr.ph ], [ %i.gx, %bb.ao ] ; 5 uses
  %.1117165 = phi ptr [ %.0116, %.lr.ph ], [ %i.gy, %bb.ao ] ; 7 uses
  %.1121164 = phi i64 [ %.0120, %.lr.ph ], [ %i.gz, %bb.ao ] ; 3 uses
  %.3127163 = phi i64 [ %.2126, %.lr.ph ], [ %i.ha, %bb.ao ] ; 5 uses
  %i.fo = icmp ult i32 %.3167, 4
  br i1 %i.fo, label %bb.ak, label %bb.an

bb.ak:                                            ; preds = %bb.aj
  %i.fp = load ptr, ptr %i.fh, align 8, !tbaa !40 ; 2 uses
  %.not152 = icmp eq ptr %i.fp, null
  br i1 %.not152, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fq = load i64, ptr %i.fi, align 8, !tbaa !41 ; 3 uses
  %i.fr = icmp ult i64 %.3127163, %i.fq
  br i1 %i.fr, label %.loopexit.sink.split, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.3113166, ptr nonnull align 1 %i.fp, i64 %i.fq, i1 false)
  %i.fs = getelementptr inbounds i8, ptr %.3113166, i64 %i.fq
  %i.ft = load i64, ptr %i.fi, align 8, !tbaa !41
  %i.fu = sub i64 %.3127163, %i.ft
  %i.fv = load i32, ptr %i.fj, align 4, !tbaa !39
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.ak, %bb.aj
  %.4128 = phi i64 [ %i.fu, %bb.am ], [ %.3127163, %bb.ak ], [ %.3127163, %bb.aj ] ; 3 uses
  %.4114 = phi ptr [ %i.fs, %bb.am ], [ %.3113166, %bb.ak ], [ %.3113166, %bb.aj ] ; 6 uses
  %.4 = phi i32 [ %i.fv, %bb.am ], [ %.3167, %bb.ak ], [ %.3167, %bb.aj ] ; 2 uses
  %i.fw = icmp ult i64 %.4128, 4
  br i1 %i.fw, label %.loopexit.sink.split, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fx = load i8, ptr %.1117165, align 1, !tbaa !25
  %i.fy = lshr i8 %i.fx, 2
  %i.fz = zext nneg i8 %i.fy to i64
  %i.ga = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.fz
  %i.gb = load i8, ptr %i.ga, align 1, !tbaa !25
  %i.gc = getelementptr inbounds nuw i8, ptr %.4114, i64 1
  store i8 %i.gb, ptr %.4114, align 1, !tbaa !25
  %i.gd = load i8, ptr %.1117165, align 1, !tbaa !25
  %i.ge = getelementptr inbounds nuw i8, ptr %.1117165, i64 1 ; 2 uses
  %i.gf = load i8, ptr %i.ge, align 1, !tbaa !25
  %i.gg = tail call i8 @llvm.fshl.i8(i8 %i.gd, i8 %i.gf, i8 4)
  %i.gh = zext i8 %i.gg to i64
  %i.gi = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.gh
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !25
  %i.gk = getelementptr inbounds nuw i8, ptr %.4114, i64 2
  store i8 %i.gj, ptr %i.gc, align 1, !tbaa !25
  %i.gl = load i8, ptr %i.ge, align 1, !tbaa !25
  %i.gm = getelementptr inbounds nuw i8, ptr %.1117165, i64 2 ; 2 uses
  %i.gn = load i8, ptr %i.gm, align 1, !tbaa !25
  %i.go = tail call i8 @llvm.fshl.i8(i8 %i.gl, i8 %i.gn, i8 2)
  %i.gp = zext i8 %i.go to i64
  %i.gq = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.gp
  %i.gr = load i8, ptr %i.gq, align 1, !tbaa !25
  %i.gs = getelementptr inbounds nuw i8, ptr %.4114, i64 3
  store i8 %i.gr, ptr %i.gk, align 1, !tbaa !25
  %i.gt = load i8, ptr %i.gm, align 1, !tbaa !25
  %i.gu = zext i8 %i.gt to i64
  %i.gv = getelementptr inbounds nuw i8, ptr @b64_tbl_enc, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !25
  %i.gx = getelementptr inbounds nuw i8, ptr %.4114, i64 4 ; 2 uses
  store i8 %i.gw, ptr %i.gs, align 1, !tbaa !25
  %i.gy = getelementptr inbounds nuw i8, ptr %.1117165, i64 3 ; 2 uses
  %i.gz = add i64 %.1121164, -3                   ; 3 uses
  %i.ha = add i64 %.4128, -4                      ; 2 uses
  %i.hb = add i32 %.4, -4                         ; 2 uses
  %i.hc = icmp ugt i64 %i.gz, 2
  br i1 %i.hc, label %bb.aj, label %.preheader, !llvm.loop !95

.lr.ph175.new:                                    ; preds = %bb.ai
  %i.hd = getelementptr inbounds nuw i8, ptr %.1117.lcssa, i64 2 ; 2 uses
  %i.he = load i8, ptr %i.fk, align 1, !tbaa !25
  %i.hf = add i64 %.promoted, 2                   ; 2 uses
  store i64 %i.hf, ptr %i.f, align 8, !tbaa !37
  %i.hg = getelementptr inbounds nuw i8, ptr %5, i64 %i.fm
  store i8 %i.he, ptr %i.hg, align 1, !tbaa !25
  %.not151.3 = icmp eq i64 %.1121.lcssa, 2
  br i1 %.not151.3, label %.loopexit, label %6

6:                                                ; preds = %.lr.ph175.new
  %7 = getelementptr inbounds nuw i8, ptr %.1117.lcssa, i64 3
  %8 = load i8, ptr %i.hd, align 1, !tbaa !25
  %9 = add i64 %.promoted, 3
  store i64 %9, ptr %i.f, align 8, !tbaa !37
  %10 = getelementptr inbounds nuw i8, ptr %5, i64 %i.hf
  store i8 %8, ptr %10, align 1, !tbaa !25
  br label %.loopexit

.loopexit.sink.split:                             ; preds = %bb.an, %bb.al, %bb.af, %bb.y
  %.5129.ph = phi i64 [ %.1125, %bb.af ], [ %.0124, %bb.y ], [ %.3127163, %bb.al ], [ %.4128, %bb.an ]
  %.3123.ph = phi i64 [ %i.ca, %bb.af ], [ %i.ca, %bb.y ], [ %.1121164, %bb.al ], [ %.1121164, %bb.an ]
  %.3119.ph = phi ptr [ %i.bz, %bb.af ], [ %i.bz, %bb.y ], [ %.1117165, %bb.al ], [ %.1117165, %bb.an ]
  %.5115.ph = phi ptr [ %.1111, %bb.af ], [ %.0110, %bb.y ], [ %.3113166, %bb.al ], [ %.4114, %bb.an ]
  %.5.ph = phi i32 [ %.1, %bb.af ], [ %.0, %bb.y ], [ %.3167, %bb.al ], [ %.4, %bb.an ]
  store volatile i32 2, ptr %i.b, align 4, !tbaa !64
  br label %.loopexit

.loopexit:                                        ; preds = %bb.ai, %.lr.ph175.new, %6, %.loopexit.sink.split, %bb.aa, %.preheader
  %.5129 = phi i64 [ %.5129.ph, %.loopexit.sink.split ], [ %.3127.lcssa, %.preheader ], [ %i.by, %bb.aa ], [ %.3127.lcssa, %6 ], [ %.3127.lcssa, %.lr.ph175.new ], [ %.3127.lcssa, %bb.ai ]
  %.3123 = phi i64 [ %.3123.ph, %.loopexit.sink.split ], [ 0, %.preheader ], [ 0, %bb.aa ], [ 0, %6 ], [ 0, %.lr.ph175.new ], [ 0, %bb.ai ]
  %.3119 = phi ptr [ %.3119.ph, %.loopexit.sink.split ], [ %.1117.lcssa, %.preheader ], [ %i.bz, %bb.aa ], [ %i.fk, %bb.ai ], [ %i.hd, %.lr.ph175.new ], [ %7, %6 ]
  %.5115 = phi ptr [ %.5115.ph, %.loopexit.sink.split ], [ %.3113.lcssa, %.preheader ], [ %i.bx, %bb.aa ], [ %.3113.lcssa, %6 ], [ %.3113.lcssa, %.lr.ph175.new ], [ %.3113.lcssa, %bb.ai ]
  %.5 = phi i32 [ %.5.ph, %.loopexit.sink.split ], [ %.3.lcssa, %.preheader ], [ %i.cb, %bb.aa ], [ %.3.lcssa, %6 ], [ %.3.lcssa, %.lr.ph175.new ], [ %.3.lcssa, %bb.ai ]
  store ptr %.3119, ptr %1, align 8, !tbaa !34
  store i64 %.3123, ptr %2, align 8, !tbaa !24
  store ptr %.5115, ptr %3, align 8, !tbaa !34
  store i64 %.5129, ptr %4, align 8, !tbaa !24
  store i32 %.5, ptr %i.e, align 8, !tbaa !38
  %.0..0..0..0.61 = load volatile i32, ptr %i.b, align 4, !tbaa !64
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ad, %bb.w, %.loopexit, %php_conv_base64_encode_flush.exit
  %.0130 = phi i32 [ %.061.i, %php_conv_base64_encode_flush.exit ], [ %.0..0..0..0.61, %.loopexit ], [ 2, %bb.w ], [ 2, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i32 %.0130
}

; Function Attrs: nounwind uwtable
define internal void @php_conv_base64_encode_dtor(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !40   ; 3 uses
  %.not5 = icmp eq ptr %i.d, null
  br i1 %.not5, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.f = load i8, ptr %i.e, align 4, !tbaa !43, !range !31, !noundef !32
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_efree(ptr noundef nonnull %i.d) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 5) i32 @php_conv_base64_decode_convert(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) #10 {
bb.a:
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.d = load i32, ptr %i.c, align 4, !tbaa !96
  %.not141 = icmp eq i32 %i.d, 0
  br i1 %.not141, label %bb.c, label %bb.r

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4, !tbaa !97
  %i.g = icmp eq i32 %i.f, 0
  %spec.select = select i1 %i.g, i32 0, i32 4
  br label %bb.r

bb.d:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %1, align 8, !tbaa !34
  %i.i = load ptr, ptr %3, align 8, !tbaa !34
  %i.j = load i64, ptr %2, align 8, !tbaa !24
  %i.k = load i64, ptr %4, align 8, !tbaa !24
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !98
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !97
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !99
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 28
  br label %.outer

.outer:                                           ; preds = %bb.q, %bb.d
  %.0118.ph = phi i32 [ %.4122, %bb.q ], [ %i.m, %bb.d ]
  %.0111.ph = phi i32 [ %.4115, %bb.q ], [ %i.o, %bb.d ]
  %.096.ph = phi ptr [ %.298, %bb.q ], [ %i.h, %bb.d ]
  %.094.ph = phi ptr [ %i.aw, %bb.q ], [ %i.i, %bb.d ] ; 3 uses
  %.090.ph = phi i64 [ %.292, %bb.q ], [ %i.j, %bb.d ]
  %.088.ph = phi i64 [ %i.ax, %bb.q ], [ %i.k, %bb.d ] ; 6 uses
  %.087.ph = phi i32 [ %.2, %bb.q ], [ %i.q, %bb.d ]
  br label %bb.e

bb.e:                                             ; preds = %.outer, %.thread148
  %.0118 = phi i32 [ %.4122, %.thread148 ], [ %.0118.ph, %.outer ] ; 10 uses
  %.0111 = phi i32 [ %.4115, %.thread148 ], [ %.0111.ph, %.outer ] ; 3 uses
  %.0104 = phi i32 [ %.4108, %.thread148 ], [ 0, %.outer ] ; 2 uses
  %.0100 = phi i32 [ %.4, %.thread148 ], [ 8, %.outer ] ; 3 uses
  %.096 = phi ptr [ %.298, %.thread148 ], [ %.096.ph, %.outer ] ; 5 uses
  %.090 = phi i64 [ %.292, %.thread148 ], [ %.090.ph, %.outer ] ; 4 uses
  %.087 = phi i32 [ %.2, %.thread148 ], [ %.087.ph, %.outer ] ; 4 uses
  %.not = icmp ult i32 %.0100, %.0111
  br i1 %.not, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  %i.s = sub nuw i32 %.0111, %.0100               ; 3 uses
  %i.t = lshr i32 %.0118, %i.s
  %i.u = sub i32 16, %i.s
  %i.v = lshr i32 65535, %i.u
  %i.w = and i32 %i.v, %.0118
  %.1105146 = or i32 %i.t, %.0104
  br label %.thread148

bb.f:                                             ; preds = %bb.e
  %i.x = sub nuw nsw i32 %.0100, %.0111           ; 13 uses
  %i.y = shl i32 %.0118, %i.x
  %.1105 = or i32 %i.y, %.0104                    ; 9 uses
  %.not134 = icmp eq i32 %i.x, 0
  br i1 %.not134, label %.thread148, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.z = icmp eq i64 %.090, 0
  br i1 %i.z, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.096, i64 1 ; 7 uses
  %i.ab = load i8, ptr %.096, align 1, !tbaa !25
  %i.ac = zext i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @b64_tbl_dec, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !64 ; 5 uses
  %i.af = add i64 %.090, -1                       ; 7 uses
  %i.ag = and i32 %i.ae, 128
  %i.ah = or i32 %i.ag, %.087                     ; 5 uses
  %i.ai = and i32 %i.ae, 192
  %.not135 = icmp eq i32 %i.ai, 0
  %.not136 = icmp eq i32 %i.ah, 0                 ; 2 uses
  br i1 %.not135, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  br i1 %.not136, label %bb.j, label %.loopexit

bb.j:                                             ; preds = %bb.i
  %i.aj = icmp ugt i32 %i.x, 5
  br i1 %i.aj, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ak = add nsw i32 %i.x, -6                    ; 2 uses
  %i.al = shl i32 %i.ae, %i.ak
  %i.am = or i32 %i.al, %.1105
  br label %.thread148

bb.l:                                             ; preds = %bb.j
  %i.an = sub nuw nsw i32 6, %i.x                 ; 2 uses
  %i.ao = lshr i32 %i.ae, %i.an
  %i.ap = or i32 %i.ao, %.1105
  %i.aq = lshr i32 63, %i.x
  %i.ar = and i32 %i.ae, %i.aq
  br label %.thread148

bb.m:                                             ; preds = %bb.h
  br i1 %.not136, label %.thread148, label %bb.n

bb.n:                                             ; preds = %bb.m
  switch i32 %i.x, label %bb.o [
    i32 8, label %.loopexit
    i32 2, label %.loopexit
  ]

bb.o:                                             ; preds = %bb.n
  store i32 1, ptr %i.r, align 4, !tbaa !96
  br label %.thread148

.thread148:                                       ; preds = %bb.l, %bb.k, %bb.o, %bb.m, %.thread, %bb.f
  %.4122 = phi i32 [ %i.w, %.thread ], [ %.0118, %bb.f ], [ %i.ar, %bb.l ], [ 0, %bb.k ], [ %.0118, %bb.m ], [ %.0118, %bb.o ] ; 3 uses
  %.4115 = phi i32 [ %i.s, %.thread ], [ 0, %bb.f ], [ %i.an, %bb.l ], [ 0, %bb.k ], [ 0, %bb.m ], [ 0, %bb.o ] ; 3 uses
  %.4108 = phi i32 [ %.1105146, %.thread ], [ %.1105, %bb.f ], [ %i.ap, %bb.l ], [ %i.am, %bb.k ], [ %.1105, %bb.m ], [ %.1105, %bb.o ] ; 3 uses
  %.4 = phi i32 [ 0, %.thread ], [ 0, %bb.f ], [ 0, %bb.l ], [ %i.ak, %bb.k ], [ %i.x, %bb.m ], [ %i.x, %bb.o ] ; 3 uses
  %.298 = phi ptr [ %.096, %.thread ], [ %.096, %bb.f ], [ %i.aa, %bb.l ], [ %i.aa, %bb.k ], [ %i.aa, %bb.m ], [ %i.aa, %bb.o ] ; 3 uses
  %.292 = phi i64 [ %.090, %.thread ], [ %.090, %bb.f ], [ %i.af, %bb.l ], [ %i.af, %bb.k ], [ %i.af, %bb.m ], [ %i.af, %bb.o ] ; 3 uses
  %.2 = phi i32 [ %.087, %.thread ], [ %.087, %bb.f ], [ 0, %bb.l ], [ 0, %bb.k ], [ 0, %bb.m ], [ %i.ah, %bb.o ] ; 4 uses
  %i.as = or i32 %.2, %.4
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.p, label %bb.e

bb.p:                                             ; preds = %.thread148
  %i.au = icmp eq i64 %.088.ph, 0
  br i1 %i.au, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = trunc i32 %.4108 to i8
  %i.aw = getelementptr inbounds nuw i8, ptr %.094.ph, i64 1
  store i8 %i.av, ptr %.094.ph, align 1, !tbaa !25
  %i.ax = add i64 %.088.ph, -1
  br label %.outer

.loopexit:                                        ; preds = %bb.p, %bb.g, %bb.i, %bb.n, %bb.n
  %.088.lcssa = phi i64 [ %.088.ph, %bb.g ], [ %.088.ph, %bb.n ], [ %.088.ph, %bb.n ], [ %.088.ph, %bb.i ], [ 0, %bb.p ]
  %.3128 = phi i32 [ 0, %bb.g ], [ 3, %bb.n ], [ 3, %bb.n ], [ 3, %bb.i ], [ 2, %bb.p ]
  %.5123 = phi i32 [ %.0118, %bb.g ], [ %.0118, %bb.n ], [ %.0118, %bb.n ], [ %.0118, %bb.i ], [ %.4122, %bb.p ]
  %.5116 = phi i32 [ 0, %bb.g ], [ 0, %bb.n ], [ 0, %bb.n ], [ 0, %bb.i ], [ %.4115, %bb.p ] ; 3 uses
  %.6110 = phi i32 [ %.1105, %bb.g ], [ %.1105, %bb.n ], [ %.1105, %bb.n ], [ %.1105, %bb.i ], [ %.4108, %bb.p ] ; 2 uses
  %.6 = phi i32 [ %i.x, %bb.g ], [ %i.x, %bb.n ], [ %i.x, %bb.n ], [ %i.x, %bb.i ], [ %.4, %bb.p ] ; 3 uses
  %.399 = phi ptr [ %.096, %bb.g ], [ %i.aa, %bb.n ], [ %i.aa, %bb.n ], [ %i.aa, %bb.i ], [ %.298, %bb.p ]
  %.393 = phi i64 [ 0, %bb.g ], [ %i.af, %bb.n ], [ %i.af, %bb.n ], [ %i.af, %bb.i ], [ %.292, %bb.p ]
  %.3 = phi i32 [ %.087, %bb.g ], [ %i.ah, %bb.n ], [ %i.ah, %bb.n ], [ %i.ah, %bb.i ], [ %.2, %bb.p ]
  %.not138 = icmp ult i32 %.5116, %.6
  %i.ay = sub i32 %.5116, %.6                     ; 2 uses
  %i.az = shl i32 %.6110, %i.ay
  %i.ba = sub nuw i32 %.6, %.5116
  %i.bb = lshr i32 %.6110, %i.ba
  %.pn140 = select i1 %.not138, i32 %i.bb, i32 %i.az
  %.6117 = add i32 %i.ay, 8
  %.6124 = or i32 %.pn140, %.5123
  store i32 %.6124, ptr %i.l, align 8, !tbaa !98
  store i32 %.6117, ptr %i.n, align 4, !tbaa !97
  store i32 %.3, ptr %i.p, align 8, !tbaa !99
  store ptr %.399, ptr %1, align 8, !tbaa !34
  store i64 %.393, ptr %2, align 8, !tbaa !24
  store ptr %.094.ph, ptr %3, align 8, !tbaa !34
  store i64 %.088.lcssa, ptr %4, align 8, !tbaa !24
  br label %bb.r

bb.r:                                             ; preds = %bb.c, %bb.b, %.loopexit
  %.0129 = phi i32 [ %.3128, %.loopexit ], [ 0, %bb.b ], [ %spec.select, %bb.c ]
  ret i32 %.0129
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define internal void @php_conv_base64_decode_dtor(ptr nofree readnone captures(none) %0) #11 {
bb.a:
  ret void
}

declare zeroext i1 @zend_is_true(ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 3) i32 @php_conv_qprint_encode_convert(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.d = icmp eq ptr %1, null
  %i.e = icmp eq ptr %2, null
  %or.cond = or i1 %i.d, %i.e
  br i1 %or.cond, label %bb.aq, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load i32, ptr %i.f, align 8, !tbaa !52   ; 2 uses
  %i.h = load i32, ptr %i.c, align 8, !tbaa !54
  %i.i = load i32, ptr %i.b, align 4, !tbaa !53
  %i.j = load i32, ptr %i.a, align 4, !tbaa !46
  %i.k = load ptr, ptr %1, align 8, !tbaa !34
  %i.l = load i64, ptr %2, align 8, !tbaa !24
  %i.m = load ptr, ptr %3, align 8, !tbaa !34
  %i.n = load i64, ptr %4, align 8, !tbaa !24
  %i.o = and i32 %i.g, 1
  %.not = icmp eq i32 %i.o, 0                     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 15 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 11 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 5 uses
  %i.s = and i32 %i.g, 2
  %.not227 = icmp eq i32 %i.s, 0
  br label %.outer

.outer:                                           ; preds = %.outer.backedge, %bb.b
  %.0212.ph = phi ptr [ %i.k, %bb.b ], [ %.0212.ph.be, %.outer.backedge ] ; 3 uses
  %.0204.ph = phi ptr [ %i.m, %bb.b ], [ %.0204.ph.be, %.outer.backedge ] ; 3 uses
  %.0202.ph = phi i64 [ %i.l, %bb.b ], [ %.0202.ph.be, %.outer.backedge ] ; 3 uses
  %.0195.ph = phi i64 [ %i.n, %bb.b ], [ %.0195.ph.be, %.outer.backedge ] ; 3 uses
  %.0188.ph = phi i32 [ %i.j, %bb.b ], [ %.0188.ph.be, %.outer.backedge ] ; 3 uses
  %.0183.ph = phi i32 [ %i.i, %bb.b ], [ %.0183.ph.be, %.outer.backedge ] ; 3 uses
  %.0178.ph = phi i32 [ %i.h, %bb.b ], [ %.0178.ph.be, %.outer.backedge ] ; 3 uses
  %.0176.ph = phi i32 [ 0, %bb.b ], [ %.0176.ph.be, %.outer.backedge ] ; 4 uses
  br i1 %.not, label %.lr.ph301.split.us, label %._crit_edge

.lr.ph301.split.us:                               ; preds = %.outer
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !48   ; 3 uses
  %.not225.us358 = icmp eq ptr %i.t, null
  br i1 %.not225.us358, label %._crit_edge, label %.lr.ph366

.lr.ph366:                                        ; preds = %.lr.ph301.split.us, %bb.f
  %.pre404 = phi ptr [ %.pre405, %bb.f ], [ %i.t, %.lr.ph301.split.us ] ; 2 uses
  %i.u = phi ptr [ %i.bi, %bb.f ], [ %i.t, %.lr.ph301.split.us ] ; 2 uses
  %.0212294.us365 = phi ptr [ %i.bj, %bb.f ], [ %.0212.ph, %.lr.ph301.split.us ] ; 5 uses
  %.0204295.us364 = phi ptr [ %.3207.us, %bb.f ], [ %.0204.ph, %.lr.ph301.split.us ] ; 7 uses
  %.0202296.us363 = phi i64 [ %i.bk, %bb.f ], [ %.0202.ph, %.lr.ph301.split.us ] ; 5 uses
  %.0195297.us362 = phi i64 [ %.3198.us, %bb.f ], [ %.0195.ph, %.lr.ph301.split.us ] ; 7 uses
  %.0188298.us361 = phi i32 [ %.2190.us, %bb.f ], [ %.0188.ph, %.lr.ph301.split.us ] ; 4 uses
  %.0183299.us360 = phi i32 [ %.2185.us, %bb.f ], [ %.0183.ph, %.lr.ph301.split.us ] ; 4 uses
  %.0178300.us359 = phi i32 [ %.2180.us, %bb.f ], [ %.0178.ph, %.lr.ph301.split.us ] ; 5 uses
  %i.v = load i64, ptr %i.q, align 8, !tbaa !49   ; 2 uses
  %i.w = icmp ne i64 %i.v, 0
  %i.x = icmp ne i64 %.0202296.us363, 0
  %or.cond13.us = select i1 %i.w, i1 %i.x, i1 false
  br i1 %or.cond13.us, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %.lr.ph366
  %i.y = load i8, ptr %.0212294.us365, align 1, !tbaa !25
  %i.z = zext i8 %i.y to i32
  %i.aa = zext i32 %.0178300.us359 to i64         ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.aa
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !25
  %i.ad = sext i8 %i.ac to i32
  %i.ae = icmp eq i32 %i.z, %i.ad
  br i1 %i.ae, label %bb.d, label %.thread246

bb.d:                                             ; preds = %bb.c
  %i.af = add i32 %.0178300.us359, 1              ; 4 uses
  %i.ag = zext i32 %i.af to i64                   ; 4 uses
  %.not226.us = icmp ugt i64 %i.v, %i.ag
  br i1 %.not226.us, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ah = icmp ult i64 %.0195297.us362, %i.ag
  br i1 %i.ah, label %.loopexit, label %.preheader250.us

.lr.ph.us:                                        ; preds = %.lr.ph.us, %.lr.ph.us.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.us.preheader.new ], [ %indvars.iv.next.3, %.lr.ph.us ] ; 5 uses
  %.1205290.us = phi ptr [ %.0204295.us364, %.lr.ph.us.preheader.new ], [ %i.ba, %.lr.ph.us ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.us.preheader.new ], [ %niter.next.3, %.lr.ph.us ]
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 %indvars.iv
  %i.ak = load i8, ptr %i.aj, align 1, !tbaa !25
  %i.al = getelementptr inbounds nuw i8, ptr %.1205290.us, i64 1
  store i8 %i.ak, ptr %.1205290.us, align 1, !tbaa !25
  %i.am = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %indvars.iv
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !25
  %i.aq = getelementptr inbounds nuw i8, ptr %.1205290.us, i64 2
  store i8 %i.ap, ptr %i.al, align 1, !tbaa !25
  %i.ar = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %indvars.iv
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.au = load i8, ptr %i.at, align 1, !tbaa !25
  %i.av = getelementptr inbounds nuw i8, ptr %.1205290.us, i64 3
  store i8 %i.au, ptr %i.aq, align 1, !tbaa !25
  %i.aw = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %indvars.iv
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 3
  %i.az = load i8, ptr %i.ay, align 1, !tbaa !25
  %i.ba = getelementptr inbounds nuw i8, ptr %.1205290.us, i64 4 ; 3 uses
  store i8 %i.az, ptr %i.av, align 1, !tbaa !25
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.thread.us.loopexit.unr-lcssa, label %.lr.ph.us, !llvm.loop !100

.thread.us.loopexit.unr-lcssa:                    ; preds = %.lr.ph.us
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.thread.us.loopexit, label %.lr.ph.us.epil.preheader

.lr.ph.us.epil.preheader:                         ; preds = %.thread.us.loopexit.unr-lcssa, %.lr.ph.us.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us.preheader ], [ %indvars.iv.next.3, %.thread.us.loopexit.unr-lcssa ]
  %.1205290.us.epil.init = phi ptr [ %.0204295.us364, %.lr.ph.us.preheader ], [ %i.ba, %.thread.us.loopexit.unr-lcssa ]
  %lcmp.mod461 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod461)
  br label %.lr.ph.us.epil

.lr.ph.us.epil:                                   ; preds = %.lr.ph.us.epil, %.lr.ph.us.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.next.epil, %.lr.ph.us.epil ], [ %indvars.iv.epil.init, %.lr.ph.us.epil.preheader ] ; 2 uses
  %.1205290.us.epil = phi ptr [ %i.be, %.lr.ph.us.epil ], [ %.1205290.us.epil.init, %.lr.ph.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.us.epil ], [ 0, %.lr.ph.us.epil.preheader ]
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %indvars.iv.epil
  %i.bd = load i8, ptr %i.bc, align 1, !tbaa !25
  %i.be = getelementptr inbounds nuw i8, ptr %.1205290.us.epil, i64 1 ; 2 uses
  store i8 %i.bd, ptr %.1205290.us.epil, align 1, !tbaa !25
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.thread.us.loopexit, label %.lr.ph.us.epil, !llvm.loop !101

.thread.us.loopexit:                              ; preds = %.lr.ph.us.epil, %.thread.us.loopexit.unr-lcssa
  %.lcssa = phi ptr [ %i.ba, %.thread.us.loopexit.unr-lcssa ], [ %i.be, %.lr.ph.us.epil ]
  %i.bf = xor i64 %i.aa, -1
  %i.bg = add i64 %.0195297.us362, %i.bf
  %.pre.pre = load ptr, ptr %i.p, align 8, !tbaa !48
  br label %.thread.us

.thread.us:                                       ; preds = %.thread.us.loopexit, %.preheader250.us
  %.pre = phi ptr [ %.pre404, %.preheader250.us ], [ %.pre.pre, %.thread.us.loopexit ] ; 2 uses
  %.1205.lcssa.us = phi ptr [ %.0204295.us364, %.preheader250.us ], [ %.lcssa, %.thread.us.loopexit ]
  %.1196.lcssa.us = phi i64 [ %.0195297.us362, %.preheader250.us ], [ %i.bg, %.thread.us.loopexit ]
  %i.bh = load i32, ptr %i.r, align 8, !tbaa !47
  br label %bb.f

bb.f:                                             ; preds = %.thread.us, %bb.d
  %.pre405 = phi ptr [ %.pre, %.thread.us ], [ %.pre404, %bb.d ]
  %i.bi = phi ptr [ %.pre, %.thread.us ], [ %i.u, %bb.d ] ; 2 uses
  %.3207.us = phi ptr [ %.1205.lcssa.us, %.thread.us ], [ %.0204295.us364, %bb.d ] ; 2 uses
  %.3198.us = phi i64 [ %.1196.lcssa.us, %.thread.us ], [ %.0195297.us362, %bb.d ] ; 2 uses
  %.2190.us = phi i32 [ %i.bh, %.thread.us ], [ %.0188298.us361, %bb.d ] ; 2 uses
  %.2185.us = phi i32 [ 0, %.thread.us ], [ %.0183299.us360, %bb.d ] ; 2 uses
  %.2180.us = phi i32 [ 0, %.thread.us ], [ %i.af, %bb.d ] ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0212294.us365, i64 1 ; 2 uses
  %i.bk = add i64 %.0202296.us363, -1             ; 2 uses
  %.not225.us = icmp eq ptr %i.bi, null
  br i1 %.not225.us, label %._crit_edge, label %.lr.ph366

.preheader250.us:                                 ; preds = %bb.e
  %.not386 = icmp eq i32 %i.af, 0
  br i1 %.not386, label %.thread.us, label %.lr.ph.us.preheader

.lr.ph.us.preheader:                              ; preds = %.preheader250.us
  %xtraiter = and i64 %i.ag, 3                    ; 3 uses
  %i.bl = icmp ult i32 %i.af, 4
  br i1 %i.bl, label %.lr.ph.us.epil.preheader, label %.lr.ph.us.preheader.new

.lr.ph.us.preheader.new:                          ; preds = %.lr.ph.us.preheader
  %unroll_iter = and i64 %i.ag, 4294967292
  br label %.lr.ph.us

._crit_edge:                                      ; preds = %bb.f, %.lr.ph366, %.lr.ph301.split.us, %.outer
  %.0212.lcssa = phi ptr [ %.0212.ph, %.outer ], [ %.0212.ph, %.lr.ph301.split.us ], [ %.0212294.us365, %.lr.ph366 ], [ %i.bj, %bb.f ] ; 2 uses
  %.0204.lcssa = phi ptr [ %.0204.ph, %.outer ], [ %.0204.ph, %.lr.ph301.split.us ], [ %.0204295.us364, %.lr.ph366 ], [ %.3207.us, %bb.f ] ; 2 uses
  %.0202.lcssa = phi i64 [ %.0202.ph, %.outer ], [ %.0202.ph, %.lr.ph301.split.us ], [ %.0202296.us363, %.lr.ph366 ], [ %i.bk, %bb.f ] ; 2 uses
  %.0195.lcssa = phi i64 [ %.0195.ph, %.outer ], [ %.0195.ph, %.lr.ph301.split.us ], [ %.0195297.us362, %.lr.ph366 ], [ %.3198.us, %bb.f ] ; 2 uses
  %.0188.lcssa = phi i32 [ %.0188.ph, %.outer ], [ %.0188.ph, %.lr.ph301.split.us ], [ %.0188298.us361, %.lr.ph366 ], [ %.2190.us, %bb.f ] ; 2 uses
  %.0183.lcssa = phi i32 [ %.0183.ph, %.outer ], [ %.0183.ph, %.lr.ph301.split.us ], [ %.0183299.us360, %.lr.ph366 ], [ %.2185.us, %bb.f ] ; 3 uses
  %.0178.lcssa = phi i32 [ %.0178.ph, %.outer ], [ %.0178.ph, %.lr.ph301.split.us ], [ %.0178300.us359, %.lr.ph366 ], [ %.2180.us, %bb.f ] ; 3 uses
  %i.bm = icmp uge i32 %.0183.lcssa, %.0178.lcssa
  %i.bn = icmp eq i64 %.0202.lcssa, 0
  %or.cond3 = select i1 %i.bm, i1 %i.bn, i1 false
  br i1 %or.cond3, label %.loopexit, label %.thread246

.thread246:                                       ; preds = %bb.c, %._crit_edge
  %.0212285 = phi ptr [ %.0212.lcssa, %._crit_edge ], [ %.0212294.us365, %bb.c ] ; 17 uses
  %.0204281 = phi ptr [ %.0204.lcssa, %._crit_edge ], [ %.0204295.us364, %bb.c ] ; 18 uses
  %.0202275 = phi i64 [ %.0202.lcssa, %._crit_edge ], [ %.0202296.us363, %bb.c ] ; 15 uses
  %.0195271 = phi i64 [ %.0195.lcssa, %._crit_edge ], [ %.0195297.us362, %bb.c ] ; 17 uses
  %.0188267 = phi i32 [ %.0188.lcssa, %._crit_edge ], [ %.0188298.us361, %bb.c ] ; 15 uses
  %.0183263 = phi i32 [ %.0183.lcssa, %._crit_edge ], [ %.0183299.us360, %bb.c ] ; 14 uses
  %.0178258 = phi i32 [ %.0178.lcssa, %._crit_edge ], [ %.0178300.us359, %bb.c ] ; 13 uses
  %.not254 = phi i1 [ %.not, %._crit_edge ], [ true, %bb.c ]
  %i.bo = icmp ult i32 %.0183263, %.0178258       ; 4 uses
  br i1 %i.bo, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.thread246
  %i.bp = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.bq = zext i32 %.0183263 to i64
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bq
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !25
  %i.bt = sext i8 %i.bs to i32
  br label %bb.i

bb.h:                                             ; preds = %.thread246
  %i.bu = load i8, ptr %.0212285, align 1, !tbaa !25
  %i.bv = zext i8 %i.bu to i32
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bw = phi i32 [ %i.bt, %bb.g ], [ %i.bv, %bb.h ] ; 7 uses
  %i.bx = icmp eq i32 %.0176.ph, 0
  %or.cond5 = select i1 %.not254, i1 %i.bx, i1 false
  br i1 %or.cond5, label %bb.j, label %bb.x

bb.j:                                             ; preds = %bb.i
  switch i32 %i.bw, label %bb.x [
    i32 32, label %bb.k
    i32 9, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.by = icmp ult i32 %.0188267, 2
  br i1 %i.by, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.bz = load ptr, ptr %i.p, align 8, !tbaa !48
  %.not231 = icmp eq ptr %i.bz, null
  br i1 %.not231, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ca = load i64, ptr %i.q, align 8, !tbaa !49
  %i.cb = add i64 %i.ca, 1
  %i.cc = icmp ult i64 %.0195271, %i.cb
  br i1 %i.cc, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %.0204281, i64 1 ; 2 uses
  store i8 61, ptr %.0204281, align 1, !tbaa !25
  %i.ce = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.cf = load i64, ptr %i.q, align 8, !tbaa !49  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cd, ptr align 1 %i.ce, i64 %i.cf, i1 false)
  %i.cg = getelementptr inbounds i8, ptr %i.cd, i64 %i.cf
  %i.ch = load i64, ptr %i.q, align 8, !tbaa !49
  %i.ci = xor i64 %i.ch, -1
  %i.cj = add i64 %.0195271, %i.ci
  %i.ck = load i32, ptr %i.r, align 8, !tbaa !47
  br label %.outer.backedge

bb.o:                                             ; preds = %bb.l, %bb.k
  %i.cl = icmp eq i64 %.0195271, 0
  br i1 %i.cl, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = load ptr, ptr %i.p, align 8, !tbaa !48  ; 2 uses
  %.not232 = icmp eq ptr %i.cm, null
  br i1 %.not232, label %.thread248, label %.preheader

.preheader:                                       ; preds = %bb.p
  %.0375 = add i64 %.0202275, -1                  ; 2 uses
  %.not233376 = icmp eq i64 %.0375, 0
  br i1 %.not233376, label %.outer.backedge, label %.lr.ph381

.outer.backedge:                                  ; preds = %.preheader, %bb.ah, %bb.ag, %bb.ap, %bb.ao, %bb.n, %bb.v, %bb.w, %._crit_edge382
  %.0212.ph.be = phi ptr [ %.0212285, %bb.n ], [ %.0212285, %bb.v ], [ %i.dg, %bb.w ], [ %.0212285, %._crit_edge382 ], [ %.0212285, %bb.ag ], [ %i.ef, %bb.ah ], [ %.0212285, %bb.ao ], [ %i.fj, %bb.ap ], [ %.0212285, %.preheader ]
  %.0204.ph.be = phi ptr [ %i.cg, %bb.n ], [ %i.db, %bb.v ], [ %i.db, %bb.w ], [ %.0204281, %._crit_edge382 ], [ %i.ea, %bb.ag ], [ %i.ea, %bb.ah ], [ %i.fe, %bb.ao ], [ %i.fe, %bb.ap ], [ %.0204281, %.preheader ]
  %.0202.ph.be = phi i64 [ %.0202275, %bb.n ], [ %.0202275, %bb.v ], [ %i.df, %bb.w ], [ %.0202275, %._crit_edge382 ], [ %.0202275, %bb.ag ], [ %i.ee, %bb.ah ], [ %.0202275, %bb.ao ], [ %i.fi, %bb.ap ], [ 1, %.preheader ]
  %.0195.ph.be = phi i64 [ %i.cj, %bb.n ], [ %i.dc, %bb.v ], [ %i.dc, %bb.w ], [ %.0195271, %._crit_edge382 ], [ %i.eb, %bb.ag ], [ %i.eb, %bb.ah ], [ %i.ff, %bb.ao ], [ %i.ff, %bb.ap ], [ %.0195271, %.preheader ]
  %.0188.ph.be = phi i32 [ %i.ck, %bb.n ], [ %i.dd, %bb.v ], [ %i.dd, %bb.w ], [ %.0188267, %._crit_edge382 ], [ %i.ec, %bb.ag ], [ %i.ec, %bb.ah ], [ %i.fg, %bb.ao ], [ %i.fg, %bb.ap ], [ %.0188267, %.preheader ]
  %.0183.ph.be = phi i32 [ %.0183263, %bb.n ], [ %i.de, %bb.v ], [ 0, %bb.w ], [ %.0183263, %._crit_edge382 ], [ %i.ed, %bb.ag ], [ 0, %bb.ah ], [ %i.fh, %bb.ao ], [ 0, %bb.ap ], [ %.0183263, %.preheader ]
  %.0178.ph.be = phi i32 [ %.0178258, %bb.n ], [ %.0178258, %bb.v ], [ 0, %bb.w ], [ %.0178258, %._crit_edge382 ], [ %.0178258, %bb.ag ], [ 0, %bb.ah ], [ %.0178258, %bb.ao ], [ 0, %bb.ap ], [ %.0178258, %.preheader ]
  %.0176.ph.be = phi i32 [ 0, %bb.n ], [ 0, %bb.v ], [ 0, %bb.w ], [ %.1177.lcssa, %._crit_edge382 ], [ %.0176.ph, %bb.ag ], [ %.0176.ph, %bb.ah ], [ %spec.select, %bb.ao ], [ %spec.select, %bb.ap ], [ 1, %.preheader ]
  br label %.outer

.lr.ph381:                                        ; preds = %.preheader, %bb.u
  %.0380 = phi i64 [ %.0, %bb.u ], [ %.0375, %.preheader ]
  %.0172379 = phi i32 [ %.1, %bb.u ], [ 0, %.preheader ] ; 3 uses
  %.0173378 = phi ptr [ %i.cy, %bb.u ], [ %.0212285, %.preheader ] ; 2 uses
  %.1177377 = phi i32 [ %.2, %bb.u ], [ 1, %.preheader ] ; 3 uses
  %i.cn = load i8, ptr %.0173378, align 1, !tbaa !25 ; 2 uses
  %i.co = zext i8 %i.cn to i32
  %i.cp = zext i32 %.0172379 to i64
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cm, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !25
  %i.cs = sext i8 %i.cr to i32
  %i.ct = icmp eq i32 %i.co, %i.cs
  br i1 %i.ct, label %bb.q, label %bb.r

bb.q:                                             ; preds = %.lr.ph381
  %i.cu = add i32 %.0172379, 1                    ; 2 uses
  %i.cv = zext i32 %i.cu to i64
  %i.cw = load i64, ptr %i.q, align 8, !tbaa !49
  %.not237 = icmp ugt i64 %i.cw, %i.cv
  br i1 %.not237, label %bb.u, label %._crit_edge382

bb.r:                                             ; preds = %.lr.ph381
  %.not234 = icmp eq i32 %.0172379, 0
  br i1 %.not234, label %bb.s, label %.thread248

bb.s:                                             ; preds = %bb.r
  switch i8 %i.cn, label %.thread248 [
    i8 9, label %bb.t
    i8 32, label %bb.t
  ]

bb.t:                                             ; preds = %bb.s, %bb.s
  %i.cx = add i32 %.1177377, 1
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.q
  %.2 = phi i32 [ %.1177377, %bb.q ], [ %i.cx, %bb.t ] ; 2 uses
  %.1 = phi i32 [ %i.cu, %bb.q ], [ 0, %bb.t ]
  %i.cy = getelementptr inbounds nuw i8, ptr %.0173378, i64 1
  %.0 = add i64 %.0380, -1                        ; 2 uses
  %.not233 = icmp eq i64 %.0, 0
  br i1 %.not233, label %._crit_edge382, label %.lr.ph381, !llvm.loop !102

._crit_edge382:                                   ; preds = %bb.q, %bb.u
  %.1177.lcssa = phi i32 [ %.2, %bb.u ], [ %.1177377, %bb.q ] ; 2 uses
  %i.cz = icmp eq i32 %.1177.lcssa, 0
  br i1 %i.cz, label %.thread248, label %.outer.backedge

.thread248:                                       ; preds = %bb.r, %bb.s, %bb.p, %._crit_edge382
  %i.da = trunc nuw i32 %i.bw to i8
  %i.db = getelementptr inbounds nuw i8, ptr %.0204281, i64 1 ; 2 uses
  store i8 %i.da, ptr %.0204281, align 1, !tbaa !25
  %i.dc = add i64 %.0195271, -1                   ; 2 uses
  %i.dd = add i32 %.0188267, -1                   ; 2 uses
  br i1 %i.bo, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.thread248
  %i.de = add nuw i32 %.0183263, 1
  br label %.outer.backedge

bb.w:                                             ; preds = %.thread248
  %i.df = add i64 %.0202275, -1
  %i.dg = getelementptr inbounds nuw i8, ptr %.0212285, i64 1
  br label %.outer.backedge

bb.x:                                             ; preds = %bb.j, %bb.i
  br i1 %.not227, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.dh = load i32, ptr %i.r, align 8, !tbaa !47
  %i.di = icmp ult i32 %.0188267, %i.dh
  br i1 %i.di, label %bb.z, label %bb.ai

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.dj = add nsw i32 %i.bw, -33
  %or.cond9 = icmp ult i32 %i.dj, 28
  %i.dk = add nsw i32 %i.bw, -62
  %or.cond11 = icmp ult i32 %i.dk, 65
  %or.cond238 = select i1 %or.cond9, i1 true, i1 %or.cond11
  br i1 %or.cond238, label %bb.aa, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.dl = icmp ult i32 %.0188267, 2
  br i1 %i.dl, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  %i.dm = load ptr, ptr %i.p, align 8, !tbaa !48
  %.not230 = icmp eq ptr %i.dm, null
  br i1 %.not230, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dn = load i64, ptr %i.q, align 8, !tbaa !49
  %i.do = add i64 %i.dn, 1
  %i.dp = icmp ult i64 %.0195271, %i.do
  br i1 %i.dp, label %.loopexit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dq = getelementptr inbounds nuw i8, ptr %.0204281, i64 1 ; 2 uses
  store i8 61, ptr %.0204281, align 1, !tbaa !25
  %i.dr = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.ds = load i64, ptr %i.q, align 8, !tbaa !49  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dq, ptr align 1 %i.dr, i64 %i.ds, i1 false)
  %i.dt = getelementptr inbounds i8, ptr %i.dq, i64 %i.ds
  %i.du = load i64, ptr %i.q, align 8, !tbaa !49
  %i.dv = xor i64 %i.du, -1
  %i.dw = add i64 %.0195271, %i.dv
  %i.dx = load i32, ptr %i.r, align 8, !tbaa !47
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ab, %bb.aa
  %.4208 = phi ptr [ %i.dt, %bb.ad ], [ %.0204281, %bb.ab ], [ %.0204281, %bb.aa ] ; 3 uses
  %.4199 = phi i64 [ %i.dw, %bb.ad ], [ %.0195271, %bb.ab ], [ %.0195271, %bb.aa ] ; 2 uses
  %.3191 = phi i32 [ %i.dx, %bb.ad ], [ %.0188267, %bb.ab ], [ %.0188267, %bb.aa ] ; 2 uses
  %i.dy = icmp eq i64 %.4199, 0
  br i1 %i.dy, label %.loopexit, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.dz = trunc nuw nsw i32 %i.bw to i8
  %i.ea = getelementptr inbounds nuw i8, ptr %.4208, i64 1 ; 2 uses
  store i8 %i.dz, ptr %.4208, align 1, !tbaa !25
  %i.eb = add i64 %.4199, -1                      ; 2 uses
  %i.ec = add i32 %.3191, -1                      ; 2 uses
  br i1 %i.bo, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.ed = add nuw i32 %.0183263, 1
  br label %.outer.backedge

bb.ah:                                            ; preds = %bb.af
  %i.ee = add i64 %.0202275, -1
  %i.ef = getelementptr inbounds nuw i8, ptr %.0212285, i64 1
  br label %.outer.backedge

bb.ai:                                            ; preds = %bb.z, %bb.y
  %i.eg = icmp ult i32 %.0188267, 4
  br i1 %i.eg, label %bb.aj, label %bb.am

bb.aj:                                            ; preds = %bb.ai
  %i.eh = load ptr, ptr %i.p, align 8, !tbaa !48
  %.not228 = icmp eq ptr %i.eh, null
  br i1 %.not228, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ei = load i64, ptr %i.q, align 8, !tbaa !49
  %i.ej = add i64 %i.ei, 1
  %i.ek = icmp ult i64 %.0195271, %i.ej
  br i1 %i.ek, label %.loopexit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.el = getelementptr inbounds nuw i8, ptr %.0204281, i64 1 ; 2 uses
  store i8 61, ptr %.0204281, align 1, !tbaa !25
  %i.em = load ptr, ptr %i.p, align 8, !tbaa !48
  %i.en = load i64, ptr %i.q, align 8, !tbaa !49  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.el, ptr align 1 %i.em, i64 %i.en, i1 false)
  %i.eo = getelementptr inbounds i8, ptr %i.el, i64 %i.en
  %i.ep = load i64, ptr %i.q, align 8, !tbaa !49
  %i.eq = xor i64 %i.ep, -1
  %i.er = add i64 %.0195271, %i.eq
  %i.es = load i32, ptr %i.r, align 8, !tbaa !47
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj, %bb.ai
  %.5209 = phi ptr [ %i.eo, %bb.al ], [ %.0204281, %bb.aj ], [ %.0204281, %bb.ai ] ; 5 uses
  %.5200 = phi i64 [ %i.er, %bb.al ], [ %.0195271, %bb.aj ], [ %.0195271, %bb.ai ] ; 3 uses
  %.4192 = phi i32 [ %i.es, %bb.al ], [ %.0188267, %bb.aj ], [ %.0188267, %bb.ai ] ; 2 uses
  %i.et = icmp ult i64 %.5200, 3
  br i1 %i.et, label %.loopexit, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.eu = getelementptr inbounds nuw i8, ptr %.5209, i64 1
  store i8 61, ptr %.5209, align 1, !tbaa !25
  %i.ev = lshr i32 %i.bw, 4
  %i.ew = zext nneg i32 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr @php_conv_qprint_encode_convert.qp_digits, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !25
  %i.ez = getelementptr inbounds nuw i8, ptr %.5209, i64 2
  store i8 %i.ey, ptr %i.eu, align 1, !tbaa !25
  %i.fa = and i32 %i.bw, 15
  %i.fb = zext nneg i32 %i.fa to i64
  %i.fc = getelementptr inbounds nuw i8, ptr @php_conv_qprint_encode_convert.qp_digits, i64 %i.fb
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !25
  %i.fe = getelementptr inbounds nuw i8, ptr %.5209, i64 3 ; 2 uses
  store i8 %i.fd, ptr %i.ez, align 1, !tbaa !25
  %i.ff = add i64 %.5200, -3                      ; 2 uses
  %i.fg = add i32 %.4192, -3                      ; 2 uses
  %spec.select = tail call i32 @llvm.usub.sat.i32(i32 %.0176.ph, i32 1) ; 2 uses
  br i1 %i.bo, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fh = add nuw i32 %.0183263, 1
  br label %.outer.backedge

bb.ap:                                            ; preds = %bb.an
  %i.fi = add i64 %.0202275, -1
  %i.fj = getelementptr inbounds nuw i8, ptr %.0212285, i64 1
  br label %.outer.backedge

.loopexit:                                        ; preds = %bb.am, %bb.ak, %bb.ae, %bb.ac, %bb.o, %bb.m, %._crit_edge, %bb.e
  %.0212287 = phi ptr [ %.0212294.us365, %bb.e ], [ %.0212285, %bb.ak ], [ %.0212285, %bb.ae ], [ %.0212285, %bb.ac ], [ %.0212285, %bb.o ], [ %.0212285, %bb.m ], [ %.0212285, %bb.am ], [ %.0212.lcssa, %._crit_edge ]
  %.0202277 = phi i64 [ %.0202296.us363, %bb.e ], [ %.0202275, %bb.ak ], [ %.0202275, %bb.ae ], [ %.0202275, %bb.ac ], [ %.0202275, %bb.o ], [ %.0202275, %bb.m ], [ %.0202275, %bb.am ], [ 0, %._crit_edge ]
  %.0183262 = phi i32 [ %.0183299.us360, %bb.e ], [ %.0183263, %bb.ak ], [ %.0183263, %bb.ae ], [ %.0183263, %bb.ac ], [ %.0183263, %bb.o ], [ %.0183263, %bb.m ], [ %.0183263, %bb.am ], [ %.0183.lcssa, %._crit_edge ]
  %.0178257 = phi i32 [ %.0178300.us359, %bb.e ], [ %.0178258, %bb.ak ], [ %.0178258, %bb.ae ], [ %.0178258, %bb.ac ], [ %.0178258, %bb.o ], [ %.0178258, %bb.m ], [ %.0178258, %bb.am ], [ %.0178.lcssa, %._crit_edge ]
  %.3217 = phi i32 [ 2, %bb.e ], [ 2, %bb.ak ], [ 2, %bb.ae ], [ 2, %bb.ac ], [ 2, %bb.o ], [ 2, %bb.m ], [ 2, %bb.am ], [ 0, %._crit_edge ]
  %.7211 = phi ptr [ %.0204295.us364, %bb.e ], [ %.0204281, %bb.ak ], [ %.4208, %bb.ae ], [ %.0204281, %bb.ac ], [ %.0204281, %bb.o ], [ %.0204281, %bb.m ], [ %.5209, %bb.am ], [ %.0204.lcssa, %._crit_edge ]
  %.7 = phi i64 [ %.0195297.us362, %bb.e ], [ %.0195271, %bb.ak ], [ 0, %bb.ae ], [ %.0195271, %bb.ac ], [ 0, %bb.o ], [ %.0195271, %bb.m ], [ %.5200, %bb.am ], [ %.0195.lcssa, %._crit_edge ]
  %.6194 = phi i32 [ %.0188298.us361, %bb.e ], [ %.0188267, %bb.ak ], [ %.3191, %bb.ae ], [ %.0188267, %bb.ac ], [ %.0188267, %bb.o ], [ %.0188267, %bb.m ], [ %.4192, %bb.am ], [ %.0188.lcssa, %._crit_edge ]
  store ptr %.0212287, ptr %1, align 8, !tbaa !34
  store i64 %.0202277, ptr %2, align 8, !tbaa !24
  store ptr %.7211, ptr %3, align 8, !tbaa !34
  store i64 %.7, ptr %4, align 8, !tbaa !24
  store i32 %.6194, ptr %i.a, align 4, !tbaa !46
  store i32 %.0183262, ptr %i.b, align 4, !tbaa !53
  store i32 %.0178257, ptr %i.c, align 8, !tbaa !54
  br label %bb.aq

bb.aq:                                            ; preds = %bb.a, %.loopexit
  %.0218 = phi i32 [ %.3217, %.loopexit ], [ 0, %bb.a ]
  ret i32 %.0218
}

; Function Attrs: nounwind uwtable
define internal void @php_conv_qprint_encode_dtor(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.b = load i32, ptr %i.a, align 4, !tbaa !50
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !48   ; 3 uses
  %.not5 = icmp eq ptr %i.d, null
  br i1 %.not5, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = load i8, ptr %i.e, align 8, !tbaa !51, !range !31, !noundef !32
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #17
end_hunk_0
begin_hunk_1_@php_conv_qprint_encode_dtor:bb.a
  ret void
}

; Function Attrs: nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal range(i32 0, 5) i32 @php_conv_qprint_decode_convert(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef captures(none) %4) #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.c = icmp eq ptr %1, null
  %i.d = icmp eq ptr %2, null
  %or.cond = or i1 %i.c, %i.d
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !56
  %.not158 = icmp eq i32 %i.f, 0
  %. = select i1 %.not158, i32 0, i32 4
  br label %bb.ag

bb.c:                                             ; preds = %bb.a
  %i.g = load i32, ptr %i.b, align 4, !tbaa !58   ; 7 uses
  %i.h = load i32, ptr %i.a, align 8, !tbaa !59   ; 7 uses
  %i.i = load ptr, ptr %1, align 8, !tbaa !34     ; 7 uses
  %i.j = load i64, ptr %2, align 8, !tbaa !24     ; 7 uses
  %i.k = load ptr, ptr %3, align 8, !tbaa !34     ; 7 uses
  %i.l = load i64, ptr %4, align 8, !tbaa !24     ; 7 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !56
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !57   ; 7 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  switch i32 %i.n, label %bb.d [
    i32 0, label %.loopexit.preheader
    i32 1, label %.loopexit228
    i32 2, label %.loopexit229
    i32 3, label %.loopexit230
    i32 4, label %.loopexit231
    i32 5, label %.loopexit232
    i32 6, label %.loopexit233.preheader
  ]

.loopexit233.preheader:                           ; preds = %bb.d, %bb.ac
  %.0222.ph = phi i32 [ %.0224, %bb.ac ], [ %i.g, %bb.d ] ; 2 uses
  %.0118213.ph = phi i32 [ %.0118215, %bb.ac ], [ %i.h, %bb.d ]
  %.0120206.ph = phi i32 [ %.0120208, %bb.ac ], [ %i.p, %bb.d ] ; 2 uses
  %.0127194.ph = phi ptr [ %.0127196, %bb.ac ], [ %i.k, %bb.d ]
  %.0130187.ph = phi ptr [ %.0130189, %bb.ac ], [ %i.i, %bb.d ] ; 2 uses
  %.0134179.ph = phi i64 [ %.0134181, %bb.ac ], [ %i.l, %bb.d ]
  %.0137172.ph = phi i64 [ %.0137174, %bb.ac ], [ %i.j, %bb.d ] ; 2 uses
  br label %.loopexit233

bb.e:                                             ; preds = %bb.l, %bb.q, %bb.w, %bb.ad
  %.0130184.sink = phi ptr [ %.0130189, %bb.ad ], [ %.0130184, %bb.q ], [ %.0130186, %bb.w ], [ %.0130184, %bb.l ]
  %.0137169.sink = phi i64 [ %.0137174, %bb.ad ], [ %.0137169, %bb.q ], [ %.0137171, %bb.w ], [ %.0137169, %bb.l ]
  %.2136.jt5 = phi i64 [ %.0134181, %bb.ad ], [ %.0134176, %bb.q ], [ %.0134178, %bb.w ], [ %.0134176, %bb.l ]
  %.2129.jt5 = phi ptr [ %.0127196, %bb.ad ], [ %.0127191, %bb.q ], [ %.0127193, %bb.w ], [ %.0127191, %bb.l ]
  %.2122.jt5 = phi i32 [ %.0120208, %bb.ad ], [ %.0120203, %bb.q ], [ %.0120205, %bb.w ], [ %.0120203, %bb.l ]
  %.1119.jt5 = phi i32 [ %.0118215, %bb.ad ], [ %.0118210, %bb.q ], [ %.0118212, %bb.w ], [ %.0118210, %bb.l ]
  %.2.jt5 = phi i32 [ %i.cn, %bb.ad ], [ %i.av, %bb.q ], [ %i.bx, %bb.w ], [ 1, %bb.l ]
  %i.s = getelementptr inbounds nuw i8, ptr %.0130184.sink, i64 1
  %i.t = add i64 %.0137169.sink, -1
  br label %.loopexit232

bb.f:                                             ; preds = %bb.v, %bb.v, %bb.k, %bb.k
  %.0130184.sink235 = phi ptr [ %.0130184, %bb.k ], [ %.0130184, %bb.k ], [ %.0130186, %bb.v ], [ %.0130186, %bb.v ]
  %.0137169.sink234 = phi i64 [ %.0137169, %bb.k ], [ %.0137169, %bb.k ], [ %.0137171, %bb.v ], [ %.0137171, %bb.v ]
  %.2136.jt4 = phi i64 [ %.0134176, %bb.k ], [ %.0134176, %bb.k ], [ %.0134178, %bb.v ], [ %.0134178, %bb.v ]
  %.2129.jt4 = phi ptr [ %.0127191, %bb.k ], [ %.0127191, %bb.k ], [ %.0127193, %bb.v ], [ %.0127193, %bb.v ]
  %.2122.jt4 = phi i32 [ %.0120203, %bb.k ], [ %.0120203, %bb.k ], [ %.0120205, %bb.v ], [ %.0120205, %bb.v ]
  %.1119.jt4 = phi i32 [ %.0118210, %bb.k ], [ %.0118210, %bb.k ], [ %.0118212, %bb.v ], [ %.0118212, %bb.v ]
  %.2.jt4 = phi i32 [ %.0219, %bb.k ], [ %.0219, %bb.k ], [ %.0221, %bb.v ], [ %.0221, %bb.v ]
  %i.u = getelementptr inbounds nuw i8, ptr %.0130184.sink235, i64 1
  %i.v = add i64 %.0137169.sink234, -1
  br label %.loopexit231

bb.g:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %.0130188, i64 1
  %i.x = add i64 %.0137173, -1
  br label %.loopexit228

.loopexit.preheader:                              ; preds = %bb.d, %.loopexit233, %bb.n, %bb.s, %bb.z, %bb.aa, %bb.ab
  %.0223.ph = phi i32 [ 0, %.loopexit233 ], [ 0, %bb.aa ], [ 0, %bb.n ], [ 0, %bb.z ], [ 0, %bb.ab ], [ %.0227, %bb.s ], [ %i.g, %bb.d ] ; 3 uses
  %.0118214.ph = phi i32 [ 0, %.loopexit233 ], [ 0, %bb.aa ], [ 0, %bb.n ], [ 0, %bb.z ], [ 0, %bb.ab ], [ %.0118218, %bb.s ], [ %i.h, %bb.d ] ; 3 uses
  %.0120207.ph = phi i32 [ %.0120206.ph, %.loopexit233 ], [ %.0120208, %bb.aa ], [ %.0120203, %bb.n ], [ %.0120208, %bb.z ], [ %.0120208, %bb.ab ], [ %.1121, %bb.s ], [ %i.p, %bb.d ] ; 3 uses
  %.0127195.ph = phi ptr [ %.0127194, %.loopexit233 ], [ %.0127196, %bb.aa ], [ %.0127191, %bb.n ], [ %.0127196, %bb.z ], [ %.0127196, %bb.ab ], [ %i.bn, %bb.s ], [ %i.k, %bb.d ]
  %.0130188.ph = phi ptr [ %.0130187.ph, %.loopexit233 ], [ %.0130189, %bb.aa ], [ %i.an, %bb.n ], [ %i.ce, %bb.z ], [ %.0130189, %bb.ab ], [ %.1131, %bb.s ], [ %i.i, %bb.d ]
  %.0134180.ph = phi i64 [ %.0134179, %.loopexit233 ], [ %.0134181, %bb.aa ], [ %.0134176, %bb.n ], [ %.0134181, %bb.z ], [ %.0134181, %bb.ab ], [ %i.bo, %bb.s ], [ %i.l, %bb.d ]
  %.0137173.ph = phi i64 [ %.0137172.ph, %.loopexit233 ], [ %.0137174, %bb.aa ], [ %i.ao, %bb.n ], [ %i.cf, %bb.z ], [ %.0137174, %bb.ab ], [ %.1138, %bb.s ], [ %i.j, %bb.d ]
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.preheader, %bb.j
  %.0127195 = phi ptr [ %i.ac, %bb.j ], [ %.0127195.ph, %.loopexit.preheader ] ; 5 uses
  %.0130188 = phi ptr [ %i.ae, %bb.j ], [ %.0130188.ph, %.loopexit.preheader ] ; 5 uses
  %.0134180 = phi i64 [ %i.ad, %bb.j ], [ %.0134180.ph, %.loopexit.preheader ] ; 4 uses
  %.0137173 = phi i64 [ %i.af, %bb.j ], [ %.0137173.ph, %.loopexit.preheader ] ; 4 uses
  %i.y = icmp eq i64 %.0137173, 0
  br i1 %i.y, label %.loopexit236, label %bb.h

bb.h:                                             ; preds = %.loopexit
  %i.z = load i8, ptr %.0130188, align 1, !tbaa !25 ; 2 uses
  %i.aa = icmp eq i8 %i.z, 61
  br i1 %i.aa, label %bb.g, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ab = icmp eq i64 %.0134180, 0
  br i1 %i.ab, label %.loopexit236, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.0127195, i64 1
  store i8 %i.z, ptr %.0127195, align 1, !tbaa !25
  %i.ad = add i64 %.0134180, -1
  %i.ae = getelementptr inbounds nuw i8, ptr %.0130188, i64 1
  %i.af = add i64 %.0137173, -1
  br label %.loopexit

.loopexit228:                                     ; preds = %bb.d, %bb.g
  %.0219 = phi i32 [ %.0223.ph, %bb.g ], [ %i.g, %bb.d ] ; 8 uses
  %.0118210 = phi i32 [ %.0118214.ph, %bb.g ], [ %i.h, %bb.d ] ; 7 uses
  %.0120203 = phi i32 [ %.0120207.ph, %bb.g ], [ %i.p, %bb.d ] ; 8 uses
  %.0127191 = phi ptr [ %.0127195, %bb.g ], [ %i.k, %bb.d ] ; 8 uses
  %.0130184 = phi ptr [ %i.w, %bb.g ], [ %i.i, %bb.d ] ; 9 uses
  %.0134176 = phi i64 [ %.0134180, %bb.g ], [ %i.l, %bb.d ] ; 8 uses
  %.0137169 = phi i64 [ %i.x, %bb.g ], [ %i.j, %bb.d ] ; 8 uses
  %i.ag = icmp eq i64 %.0137169, 0
  br i1 %i.ag, label %.loopexit236, label %bb.k

bb.k:                                             ; preds = %.loopexit228
  %i.ah = load i8, ptr %.0130184, align 1, !tbaa !25 ; 6 uses
  switch i8 %i.ah, label %bb.l [
    i8 32, label %bb.f
    i8 9, label %bb.f
  ]

bb.l:                                             ; preds = %bb.k
  %i.ai = load ptr, ptr %i.q, align 8, !tbaa !60  ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  %i.ak = icmp eq i32 %.0219, 0
  %or.cond3 = select i1 %i.aj, i1 %i.ak, i1 false ; 2 uses
  %i.al = icmp eq i8 %i.ah, 13
  %or.cond159 = and i1 %i.al, %or.cond3
  br i1 %or.cond159, label %bb.e, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = icmp eq i8 %i.ah, 10
  %or.cond160 = and i1 %i.am, %or.cond3
  br i1 %or.cond160, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.an = getelementptr inbounds nuw i8, ptr %.0130184, i64 1
  %i.ao = add i64 %.0137169, -1
  br label %.loopexit.preheader

bb.o:                                             ; preds = %bb.m
  %i.ap = zext i32 %.0219 to i64                  ; 2 uses
  %i.aq = load i64, ptr %i.r, align 8, !tbaa !61
  %i.ar = icmp ugt i64 %i.aq, %i.ap
  br i1 %i.ar, label %bb.p, label %.thread

bb.p:                                             ; preds = %bb.o
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 %i.ap
  %i.at = load i8, ptr %i.as, align 1, !tbaa !25
  %i.au = icmp eq i8 %i.ah, %i.at
  br i1 %i.au, label %bb.q, label %.thread

bb.q:                                             ; preds = %bb.p
  %i.av = add i32 %.0219, 1
  br label %bb.e

.loopexit229:                                     ; preds = %bb.d, %bb.r
  %.0220 = phi i32 [ %.0226, %bb.r ], [ %i.g, %bb.d ] ; 2 uses
  %.0118211 = phi i32 [ %.0118217, %bb.r ], [ %i.h, %bb.d ] ; 2 uses
  %.0120204 = phi i32 [ %i.bi, %bb.r ], [ %i.p, %bb.d ] ; 2 uses
  %.0127192 = phi ptr [ %.0127198, %bb.r ], [ %i.k, %bb.d ] ; 2 uses
  %.0130185 = phi ptr [ %i.bj, %bb.r ], [ %i.i, %bb.d ] ; 3 uses
  %.0134177 = phi i64 [ %.0134182, %bb.r ], [ %i.l, %bb.d ] ; 2 uses
  %.0137170 = phi i64 [ %i.bk, %bb.r ], [ %i.j, %bb.d ] ; 2 uses
  %i.aw = icmp eq i64 %.0137170, 0
  br i1 %i.aw, label %.loopexit236, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %.loopexit229
  %.pre161 = load i8, ptr %.0130185, align 1, !tbaa !25
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.o, %bb.p
  %.0226 = phi i32 [ %.0220, %..thread_crit_edge ], [ %.0219, %bb.o ], [ %.0219, %bb.p ] ; 3 uses
  %.0118217 = phi i32 [ %.0118211, %..thread_crit_edge ], [ %.0118210, %bb.o ], [ %.0118210, %bb.p ] ; 3 uses
  %.0120209 = phi i32 [ %.0120204, %..thread_crit_edge ], [ %.0120203, %bb.o ], [ %.0120203, %bb.p ] ; 2 uses
  %.not157 = phi i1 [ true, %..thread_crit_edge ], [ false, %bb.o ], [ false, %bb.p ]
  %.0123202 = phi i32 [ 2, %..thread_crit_edge ], [ 1, %bb.o ], [ 1, %bb.p ]
  %.0127198 = phi ptr [ %.0127192, %..thread_crit_edge ], [ %.0127191, %bb.o ], [ %.0127191, %bb.p ] ; 3 uses
  %.0130190 = phi ptr [ %.0130185, %..thread_crit_edge ], [ %.0130184, %bb.o ], [ %.0130184, %bb.p ] ; 2 uses
  %.0134182 = phi i64 [ %.0134177, %..thread_crit_edge ], [ %.0134176, %bb.o ], [ %.0134176, %bb.p ] ; 3 uses
  %.0137175 = phi i64 [ %.0137170, %..thread_crit_edge ], [ %.0137169, %bb.o ], [ %.0137169, %bb.p ] ; 2 uses
  %i.ax = phi i8 [ %.pre161, %..thread_crit_edge ], [ %i.ah, %bb.o ], [ %i.ah, %bb.p ] ; 3 uses
  %i.ay = tail call ptr @__ctype_b_loc() #21
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !105
  %i.ba = zext i8 %i.ax to i64
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %i.az, i64 %i.ba
  %i.bc = load i16, ptr %i.bb, align 2, !tbaa !107
  %i.bd = and i16 %i.bc, 4096
  %.not156 = icmp eq i16 %i.bd, 0
  br i1 %.not156, label %.loopexit236, label %bb.r

bb.r:                                             ; preds = %.thread
  %i.be = zext i8 %i.ax to i32
  %i.bf = shl i32 %.0120209, 4
  %i.bg = icmp ugt i8 %i.ax, 64
  %.v = select i1 %i.bg, i32 -55, i32 -48
  %i.bh = add nsw i32 %.v, %i.be
  %i.bi = or i32 %i.bh, %i.bf                     ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.0130190, i64 1 ; 2 uses
  %i.bk = add i64 %.0137175, -1                   ; 2 uses
  br i1 %.not157, label %.loopexit230, label %.loopexit229

.loopexit230:                                     ; preds = %bb.d, %bb.r
  %.0227 = phi i32 [ %.0226, %bb.r ], [ %i.g, %bb.d ] ; 2 uses
  %.0118218 = phi i32 [ %.0118217, %bb.r ], [ %i.h, %bb.d ] ; 2 uses
  %.0127199 = phi ptr [ %.0127198, %bb.r ], [ %i.k, %bb.d ] ; 3 uses
  %.0134183 = phi i64 [ %.0134182, %bb.r ], [ %i.l, %bb.d ] ; 2 uses
  %.1138 = phi i64 [ %i.bk, %bb.r ], [ %i.j, %bb.d ] ; 2 uses
  %.1131 = phi ptr [ %i.bj, %bb.r ], [ %i.i, %bb.d ] ; 2 uses
  %.1121 = phi i32 [ %i.bi, %bb.r ], [ %i.p, %bb.d ] ; 3 uses
  %i.bl = icmp eq i64 %.0134183, 0
  br i1 %i.bl, label %.loopexit236, label %bb.s

bb.s:                                             ; preds = %.loopexit230
  %i.bm = trunc i32 %.1121 to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %.0127199, i64 1
  store i8 %i.bm, ptr %.0127199, align 1, !tbaa !25
  %i.bo = add i64 %.0134183, -1
  br label %.loopexit.preheader

.loopexit231:                                     ; preds = %bb.d, %bb.f
  %.0221 = phi i32 [ %.2.jt4, %bb.f ], [ %i.g, %bb.d ] ; 6 uses
  %.0118212 = phi i32 [ %.1119.jt4, %bb.f ], [ %i.h, %bb.d ] ; 5 uses
  %.0120205 = phi i32 [ %.2122.jt4, %bb.f ], [ %i.p, %bb.d ] ; 5 uses
  %.0127193 = phi ptr [ %.2129.jt4, %bb.f ], [ %i.k, %bb.d ] ; 5 uses
  %.0130186 = phi ptr [ %i.u, %bb.f ], [ %i.i, %bb.d ] ; 6 uses
  %.0134178 = phi i64 [ %.2136.jt4, %bb.f ], [ %i.l, %bb.d ] ; 5 uses
  %.0137171 = phi i64 [ %i.v, %bb.f ], [ %i.j, %bb.d ] ; 5 uses
  %i.bp = icmp eq i64 %.0137171, 0
  br i1 %i.bp, label %.loopexit236, label %bb.t

bb.t:                                             ; preds = %.loopexit231
  %i.bq = zext i32 %.0221 to i64                  ; 2 uses
  %i.br = load i64, ptr %i.r, align 8, !tbaa !61
  %i.bs = icmp ugt i64 %i.br, %i.bq
  %.pre = load i8, ptr %.0130186, align 1, !tbaa !25 ; 2 uses
  br i1 %i.bs, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bt = load ptr, ptr %i.q, align 8, !tbaa !60
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bq
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !25
  %i.bw = icmp eq i8 %.pre, %i.bv
  br i1 %i.bw, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  switch i8 %.pre, label %.loopexit236 [
    i8 9, label %bb.f
    i8 32, label %bb.f
  ]

bb.w:                                             ; preds = %bb.u
  %i.bx = add i32 %.0221, 1
  br label %bb.e

.loopexit232:                                     ; preds = %bb.d, %bb.e
  %.0224 = phi i32 [ %.2.jt5, %bb.e ], [ %i.g, %bb.d ] ; 6 uses
  %.0118215 = phi i32 [ %.1119.jt5, %bb.e ], [ %i.h, %bb.d ] ; 3 uses
  %.0120208 = phi i32 [ %.2122.jt5, %bb.e ], [ %i.p, %bb.d ] ; 6 uses
  %.0127196 = phi ptr [ %.2129.jt5, %bb.e ], [ %i.k, %bb.d ] ; 6 uses
  %.0130189 = phi ptr [ %i.s, %bb.e ], [ %i.i, %bb.d ] ; 8 uses
  %.0134181 = phi i64 [ %.2136.jt5, %bb.e ], [ %i.l, %bb.d ] ; 6 uses
  %.0137174 = phi i64 [ %i.t, %bb.e ], [ %i.j, %bb.d ] ; 6 uses
  %i.by = icmp eq i64 %.0137174, 0
  br i1 %i.by, label %.loopexit236, label %bb.x

bb.x:                                             ; preds = %.loopexit232
  %i.bz = load ptr, ptr %i.q, align 8, !tbaa !60  ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null                 ; 2 uses
  %i.cb = icmp eq i32 %.0224, 1
  %or.cond7 = select i1 %i.ca, i1 %i.cb, i1 false
  br i1 %or.cond7, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.cc = load i8, ptr %.0130189, align 1, !tbaa !25
  %i.cd = icmp eq i8 %i.cc, 10
  br i1 %i.cd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.ce = getelementptr inbounds nuw i8, ptr %.0130189, i64 1
  %i.cf = add i64 %.0137174, -1
  br label %.loopexit.preheader

bb.aa:                                            ; preds = %bb.y, %bb.x
  %i.cg = icmp ne i32 %.0224, 0
  %or.cond9 = select i1 %i.ca, i1 %i.cg, i1 false
  br i1 %or.cond9, label %.loopexit.preheader, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ch = zext i32 %.0224 to i64                  ; 2 uses
  %i.ci = load i64, ptr %i.r, align 8, !tbaa !61
  %.not = icmp ugt i64 %i.ci, %i.ch
  br i1 %.not, label %bb.ac, label %.loopexit.preheader

bb.ac:                                            ; preds = %bb.ab
  %i.cj = load i8, ptr %.0130189, align 1, !tbaa !25
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.ch
  %i.cl = load i8, ptr %i.ck, align 1, !tbaa !25
  %i.cm = icmp eq i8 %i.cj, %i.cl
  br i1 %i.cm, label %bb.ad, label %.loopexit233.preheader

bb.ad:                                            ; preds = %bb.ac
  %i.cn = add i32 %.0224, 1
  br label %bb.e

.loopexit233:                                     ; preds = %.loopexit233.preheader, %bb.af
  %.0118213 = phi i32 [ %i.cr, %bb.af ], [ %.0118213.ph, %.loopexit233.preheader ] ; 4 uses
  %.0127194 = phi ptr [ %i.cv, %bb.af ], [ %.0127194.ph, %.loopexit233.preheader ] ; 4 uses
  %.0134179 = phi i64 [ %i.cw, %bb.af ], [ %.0134179.ph, %.loopexit233.preheader ] ; 3 uses
  %i.co = icmp ult i32 %.0118213, %.0222.ph
  br i1 %i.co, label %bb.ae, label %.loopexit.preheader

bb.ae:                                            ; preds = %.loopexit233
  %i.cp = icmp eq i64 %.0134179, 0
  br i1 %i.cp, label %.loopexit236, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cq = load ptr, ptr %i.q, align 8, !tbaa !60
  %i.cr = add nuw i32 %.0118213, 1
  %i.cs = zext i32 %.0118213 to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !tbaa !25
  %i.cv = getelementptr inbounds nuw i8, ptr %.0127194, i64 1
  store i8 %i.cu, ptr %.0127194, align 1, !tbaa !25
  %i.cw = add i64 %.0134179, -1
  br label %.loopexit233

.loopexit236:                                     ; preds = %bb.i, %.loopexit, %bb.ae, %bb.v, %.loopexit230, %.thread, %.loopexit232, %.loopexit231, %.loopexit229, %.loopexit228
  %.0225 = phi i32 [ %.0219, %.loopexit228 ], [ %.0221, %bb.v ], [ %.0227, %.loopexit230 ], [ %.0226, %.thread ], [ %.0222.ph, %bb.ae ], [ %.0224, %.loopexit232 ], [ %.0221, %.loopexit231 ], [ %.0220, %.loopexit229 ], [ %.0223.ph, %.loopexit ], [ %.0223.ph, %bb.i ]
  %.0118216 = phi i32 [ %.0118210, %.loopexit228 ], [ %.0118212, %bb.v ], [ %.0118218, %.loopexit230 ], [ %.0118217, %.thread ], [ %.0118213, %bb.ae ], [ %.0118215, %.loopexit232 ], [ %.0118212, %.loopexit231 ], [ %.0118211, %.loopexit229 ], [ %.0118214.ph, %.loopexit ], [ %.0118214.ph, %bb.i ]
  %.0127197 = phi ptr [ %.0127191, %.loopexit228 ], [ %.0127193, %bb.v ], [ %.0127199, %.loopexit230 ], [ %.0127198, %.thread ], [ %.0127194, %bb.ae ], [ %.0127196, %.loopexit232 ], [ %.0127193, %.loopexit231 ], [ %.0127192, %.loopexit229 ], [ %.0127195, %.loopexit ], [ %.0127195, %bb.i ]
  %.0134.lcssa = phi i64 [ %.0134176, %.loopexit228 ], [ %.0134178, %bb.v ], [ 0, %.loopexit230 ], [ %.0134182, %.thread ], [ 0, %bb.ae ], [ %.0134181, %.loopexit232 ], [ %.0134178, %.loopexit231 ], [ %.0134177, %.loopexit229 ], [ 0, %bb.i ], [ %.0134180, %.loopexit ]
  %.0141 = phi i32 [ 0, %.loopexit228 ], [ 3, %bb.v ], [ 2, %.loopexit230 ], [ 3, %.thread ], [ 2, %bb.ae ], [ 0, %.loopexit232 ], [ 0, %.loopexit231 ], [ 0, %.loopexit229 ], [ 2, %bb.i ], [ 0, %.loopexit ]
  %.3140 = phi i64 [ 0, %.loopexit228 ], [ %.0137171, %bb.v ], [ %.1138, %.loopexit230 ], [ %.0137175, %.thread ], [ %.0137172.ph, %bb.ae ], [ 0, %.loopexit232 ], [ 0, %.loopexit231 ], [ 0, %.loopexit229 ], [ %.0137173, %bb.i ], [ 0, %.loopexit ]
  %.3133 = phi ptr [ %.0130184, %.loopexit228 ], [ %.0130186, %bb.v ], [ %.1131, %.loopexit230 ], [ %.0130190, %.thread ], [ %.0130187.ph, %bb.ae ], [ %.0130189, %.loopexit232 ], [ %.0130186, %.loopexit231 ], [ %.0130185, %.loopexit229 ], [ %.0130188, %.loopexit ], [ %.0130188, %bb.i ]
  %.5 = phi i32 [ 1, %.loopexit228 ], [ 4, %bb.v ], [ 3, %.loopexit230 ], [ %.0123202, %.thread ], [ 6, %bb.ae ], [ 5, %.loopexit232 ], [ 4, %.loopexit231 ], [ 2, %.loopexit229 ], [ 0, %.loopexit ], [ 0, %bb.i ]
  %.3 = phi i32 [ %.0120203, %.loopexit228 ], [ %.0120205, %bb.v ], [ %.1121, %.loopexit230 ], [ %.0120209, %.thread ], [ %.0120206.ph, %bb.ae ], [ %.0120208, %.loopexit232 ], [ %.0120205, %.loopexit231 ], [ %.0120204, %.loopexit229 ], [ %.0120207.ph, %.loopexit ], [ %.0120207.ph, %bb.i ]
  store ptr %.3133, ptr %1, align 8, !tbaa !34
  store i64 %.3140, ptr %2, align 8, !tbaa !24
  store ptr %.0127197, ptr %3, align 8, !tbaa !34
  store i64 %.0134.lcssa, ptr %4, align 8, !tbaa !24
  store i32 %.5, ptr %i.m, align 8, !tbaa !56
  store i32 %.0118216, ptr %i.a, align 8, !tbaa !59
  store i32 %.0225, ptr %i.b, align 4, !tbaa !58
  store i32 %.3, ptr %i.o, align 4, !tbaa !57
  br label %bb.ag

bb.ag:                                            ; preds = %bb.b, %.loopexit236
  %.0142 = phi i32 [ %., %bb.b ], [ %.0141, %.loopexit236 ]
  ret i32 %.0142
}

; Function Attrs: nounwind uwtable
define internal void @php_conv_qprint_decode_dtor(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !62
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60   ; 3 uses
  %.not5 = icmp eq ptr %i.d, null
  br i1 %.not5, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.f = load i8, ptr %i.e, align 4, !tbaa !63, !range !31, !noundef !32
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.d) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_efree(ptr noundef nonnull %i.d) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #13

; Function Attrs: nounwind uwtable
define internal noundef i32 @consumed_filter_filter(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 noundef %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !66
  %i.e = icmp eq i64 %i.d, -1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i64 @_php_stream_tell(ptr noundef %0) #17
  store i64 %i.f, ptr %i.c, align 8, !tbaa !66
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %.not22 = icmp eq ptr %i.g, null
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.lr.ph
  %i.h = phi ptr [ %i.l, %.lr.ph ], [ %i.g, %bb.c ] ; 3 uses
  %.023 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.c ]
  tail call void @php_stream_bucket_unlink(ptr noundef nonnull %i.h) #17
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i64, ptr %i.i, align 8, !tbaa !22
  %i.k = add i64 %i.j, %.023                      ; 2 uses
  tail call void @php_stream_bucket_append(ptr noundef %3, ptr noundef nonnull %i.h) #17
  %i.l = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !108

._crit_edge:                                      ; preds = %.lr.ph, %bb.c
  %.0.lcssa = phi i64 [ 0, %bb.c ], [ %i.k, %.lr.ph ] ; 2 uses
  %.not20 = icmp eq ptr %4, null
  br i1 %.not20, label %bb.e, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  store i64 %.0.lcssa, ptr %4, align 8, !tbaa !24
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge
  %i.m = and i32 %5, 2
  %.not21 = icmp eq i32 %i.m, 0
  br i1 %.not21, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i64, ptr %i.c, align 8, !tbaa !66
  %i.o = load i64, ptr %i.b, align 8, !tbaa !67
  %i.p = add i64 %i.o, %i.n
  %i.q = tail call i32 @_php_stream_seek(ptr noundef %0, i64 noundef %i.p, i32 noundef 0) #17 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.r = load i64, ptr %i.b, align 8, !tbaa !67
  %i.s = add i64 %i.r, %.0.lcssa
  store i64 %i.s, ptr %i.b, align 8, !tbaa !67
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal void @consumed_filter_dtor(ptr nofree noundef readonly captures(address_is_null) %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !68, !range !31, !noundef !32
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_efree(ptr noundef nonnull %i.b) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  ret void
}

declare i64 @_php_stream_tell(ptr noundef) local_unnamed_addr #2

declare i32 @_php_stream_seek(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal ptr @consumed_filter_create(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i8 noundef zeroext %2) #0 {
bb.a:
  %i.a = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.19) #20
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not9 = icmp ne i8 %2, 0                       ; 2 uses
  br i1 %.not9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noalias dereferenceable_or_null(24) ptr @__zend_calloc(i64 noundef 1, i64 noundef 24) #22
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(24) ptr @_ecalloc(i64 noundef 1, i64 noundef 24) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = phi ptr [ %i.b, %bb.c ], [ %i.c, %bb.d ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = zext i1 %.not9 to i8
  store i8 %i.f, ptr %i.e, align 8, !tbaa !68
  store i64 0, ptr %i.d, align 8, !tbaa !67
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 -1, ptr %i.g, align 8, !tbaa !66
  %i.h = tail call ptr @_php_stream_filter_alloc(ptr noundef nonnull @consumed_filter_ops, ptr noundef nonnull %i.d, i8 noundef zeroext %2) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi ptr [ %i.h, %bb.e ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: allocsize(0,1)
declare noalias ptr @__zend_calloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: allocsize(0,1)
declare noalias ptr @_ecalloc(i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind uwtable
define internal noundef i32 @php_chunked_filter(ptr nofree readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, ptr nofree noundef writeonly captures(address_is_null) %4, i32 %5) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 12 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !15     ; 2 uses
  %.not27 = icmp eq ptr %i.c, null
  br i1 %.not27, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 12 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %php_dechunk.exit
  %i.e = phi ptr [ %i.c, %.lr.ph ], [ %i.co, %php_dechunk.exit ]
  %.028 = phi i64 [ 0, %.lr.ph ], [ %i.i, %php_dechunk.exit ]
  %i.f = tail call ptr @php_stream_bucket_make_writeable(ptr noundef nonnull %i.e) #17 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !tbaa !22   ; 5 uses
  %i.i = add i64 %i.h, %.028                      ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !21   ; 18 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.h ; 12 uses
  %.not190.i = icmp eq i64 %i.h, 0
  br i1 %.not190.i, label %php_dechunk.exit, label %.lr.ph185.i

.lr.ph185.i:                                      ; preds = %bb.b
  %i.m = ptrtoaddr ptr %i.k to i64
  %i.n = ptrtoint ptr %i.l to i64                 ; 2 uses
  %i.o = add i64 %i.h, %i.m                       ; 2 uses
  %.pre.i = load i32, ptr %i.d, align 8, !tbaa !70
  switch i32 %.pre.i, label %.backedge.i [
    i32 0, label %.loopexit274.i
    i32 1, label %.loopexit275.i
    i32 2, label %._crit_edge227.i
    i32 3, label %.loopexit277.i
    i32 4, label %thread-pre-split136.i
    i32 5, label %._crit_edge.i
    i32 6, label %.loopexit278.i
    i32 7, label %thread-pre-split138.i
    i32 8, label %php_dechunk.exit
    i32 9, label %._crit_edge226.i
  ]

.backedge.i:                                      ; preds = %.lr.ph185.i, %.backedge.i
  br label %.backedge.i

._crit_edge.i:                                    ; preds = %.lr.ph185.i
  %.pre223.i = load i64, ptr %i.b, align 8, !tbaa !71
  br label %bb.w

.loopexit274.i:                                   ; preds = %.lr.ph185.i, %.backedge.jt0.i
  %.sink.i = phi ptr [ %i.bs, %.backedge.jt0.i ], [ %i.k, %.lr.ph185.i ]
  %.0111180258.i = phi ptr [ %.2113.i, %.backedge.jt0.i ], [ %i.k, %.lr.ph185.i ]
  %.0181249.i = phi i64 [ %.2.i, %.backedge.jt0.i ], [ 0, %.lr.ph185.i ]
  store i64 0, ptr %i.b, align 8, !tbaa !71
  br label %.loopexit275.i

.loopexit275.i:                                   ; preds = %.lr.ph185.i, %.loopexit274.i
  %.0114179269.i = phi ptr [ %.sink.i, %.loopexit274.i ], [ %i.k, %.lr.ph185.i ] ; 8 uses
  %.0111180261.i = phi ptr [ %.0111180258.i, %.loopexit274.i ], [ %i.k, %.lr.ph185.i ] ; 2 uses
  %.0181252.i = phi i64 [ %.0181249.i, %.loopexit274.i ], [ 0, %.lr.ph185.i ] ; 3 uses
  %i.p = phi i1 [ true, %.loopexit274.i ], [ false, %.lr.ph185.i ]
  %i.q = icmp ult ptr %.0114179269.i, %i.l
  br i1 %i.q, label %.lr.ph.preheader.i, label %thread-pre-split.thread.i

.lr.ph.preheader.i:                               ; preds = %.loopexit275.i
  %.0114179214271.i = ptrtoaddr ptr %.0114179269.i to i64
  %i.r = sub i64 %i.o, %.0114179214271.i          ; 2 uses
  %scevgep215.i = getelementptr i8, ptr %.0114179269.i, i64 %i.r ; 2 uses
  %i.s = load i8, ptr %.0114179269.i, align 1, !tbaa !25 ; 5 uses
  %i.t = add i8 %i.s, -48                         ; 2 uses
  %or.cond.i.peel = icmp ult i8 %i.t, 10
  br i1 %or.cond.i.peel, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader.i
  %i.u = add i8 %i.s, -65
  %or.cond134.i.peel = icmp ult i8 %i.u, 6
  br i1 %or.cond134.i.peel, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = add i8 %i.s, -97
  %or.cond135.i.peel = icmp ult i8 %i.v, 6
  br i1 %or.cond135.i.peel, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.w = load i64, ptr %i.b, align 8, !tbaa !71
  %i.x = shl i64 %i.w, 4
  %i.y = zext nneg i8 %i.s to i64
  %i.z = add nsw i64 %i.y, -87
  %i.aa = add nuw i64 %i.z, %i.x
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.ab = load i64, ptr %i.b, align 8, !tbaa !71
  %i.ac = shl i64 %i.ab, 4
  %i.ad = zext nneg i8 %i.s to i64
  %i.ae = add nsw i64 %i.ad, -55
  %i.af = add nuw i64 %i.ae, %i.ac
  br label %bb.h

bb.g:                                             ; preds = %.lr.ph.preheader.i
  %i.ag = load i64, ptr %i.b, align 8, !tbaa !71
  %i.ah = shl i64 %i.ag, 4
  %i.ai = zext nneg i8 %i.t to i64
  %i.aj = or disjoint i64 %i.ah, %i.ai
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.sink296.i.peel = phi i64 [ %i.af, %bb.f ], [ %i.aa, %bb.e ], [ %i.aj, %bb.g ] ; 2 uses
  store i64 %.sink296.i.peel, ptr %i.b, align 8, !tbaa !71
  store i32 1, ptr %i.d, align 8, !tbaa !70
  %exitcond.not.i.peel = icmp eq i64 %i.r, 1
  br i1 %exitcond.not.i.peel, label %thread-pre-split.thread.i, label %.lr.ph.i.peel.next

.lr.ph.i.peel.next:                               ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %.0114179269.i, i64 1
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.n, %.lr.ph.i.peel.next
  %i.al = phi i64 [ %.sink296.i, %bb.n ], [ %.sink296.i.peel, %.lr.ph.i.peel.next ] ; 3 uses
  %.1115171.i = phi ptr [ %i.bb, %bb.n ], [ %i.ak, %.lr.ph.i.peel.next ] ; 3 uses
  %i.am = load i8, ptr %.1115171.i, align 1, !tbaa !25 ; 5 uses
  %i.an = add i8 %i.am, -48                       ; 2 uses
  %or.cond.i = icmp ult i8 %i.an, 10
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %.lr.ph.i
  %i.ao = shl i64 %i.al, 4
  %i.ap = zext nneg i8 %i.an to i64
  %i.aq = or disjoint i64 %i.ao, %i.ap
  br label %bb.n

bb.j:                                             ; preds = %.lr.ph.i
  %i.ar = add i8 %i.am, -65
  %or.cond134.i = icmp ult i8 %i.ar, 6
  br i1 %or.cond134.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.as = shl i64 %i.al, 4
  %i.at = zext nneg i8 %i.am to i64
  %i.au = add nsw i64 %i.at, -55
  %i.av = add nuw i64 %i.au, %i.as
  br label %bb.n

bb.l:                                             ; preds = %bb.j
  %i.aw = add i8 %i.am, -97
  %or.cond135.i = icmp ult i8 %i.aw, 6
  br i1 %or.cond135.i, label %bb.m, label %.thread.i

bb.m:                                             ; preds = %bb.l
  %i.ax = shl i64 %i.al, 4
  %i.ay = zext nneg i8 %i.am to i64
  %i.az = add nsw i64 %i.ay, -87
  %i.ba = add nuw i64 %i.az, %i.ax
  br label %bb.n

.loopexit:                                        ; preds = %bb.d
  br i1 %i.p, label %.backedge.jt9.i, label %.thread.i

.thread.i:                                        ; preds = %bb.l, %.loopexit
  %.1115171.i.lcssa56 = phi ptr [ %.0114179269.i, %.loopexit ], [ %.1115171.i, %bb.l ]
  store i32 2, ptr %i.d, align 8, !tbaa !70
  br label %thread-pre-split.thread.i

bb.n:                                             ; preds = %bb.m, %bb.k, %bb.i
  %.sink296.i = phi i64 [ %i.av, %bb.k ], [ %i.ba, %bb.m ], [ %i.aq, %bb.i ] ; 2 uses
  store i64 %.sink296.i, ptr %i.b, align 8, !tbaa !71
  store i32 1, ptr %i.d, align 8, !tbaa !70
  %i.bb = getelementptr inbounds nuw i8, ptr %.1115171.i, i64 1 ; 3 uses
  %exitcond.not.i = icmp eq ptr %i.bb, %scevgep215.i
  br i1 %exitcond.not.i, label %thread-pre-split.thread.i, label %.lr.ph.i, !llvm.loop !109

thread-pre-split.thread.i:                        ; preds = %bb.n, %bb.h, %.loopexit275.i, %.thread.i
  %.1115143.i = phi ptr [ %.1115171.i.lcssa56, %.thread.i ], [ %.0114179269.i, %.loopexit275.i ], [ %scevgep215.i, %bb.h ], [ %i.bb, %bb.n ] ; 2 uses
  %i.bc = icmp eq ptr %.1115143.i, %i.l
  br i1 %i.bc, label %php_dechunk.exit, label %._crit_edge227.i

._crit_edge227.i:                                 ; preds = %.lr.ph185.i, %thread-pre-split.thread.i
  %.sink297.i = phi ptr [ %.1115143.i, %thread-pre-split.thread.i ], [ %i.k, %.lr.ph185.i ] ; 5 uses
  %.0111180262.i = phi ptr [ %.0111180261.i, %thread-pre-split.thread.i ], [ %i.k, %.lr.ph185.i ]
  %.0181253.i = phi i64 [ %.0181252.i, %thread-pre-split.thread.i ], [ 0, %.lr.ph185.i ] ; 2 uses
  %i.bd = icmp ult ptr %.sink297.i, %i.l
  br i1 %i.bd, label %.lr.ph173.preheader.i, label %.critedge.i

.lr.ph173.preheader.i:                            ; preds = %._crit_edge227.i
  %.0114179214.le.i = ptrtoaddr ptr %.sink297.i to i64
  %scevgep216.i = getelementptr i8, ptr %.sink297.i, i64 %i.o
  %i.be = sub i64 0, %.0114179214.le.i
  %scevgep218.i = getelementptr i8, ptr %scevgep216.i, i64 %i.be ; 2 uses
  br label %.lr.ph173.i

.lr.ph173.i:                                      ; preds = %bb.o, %.lr.ph173.preheader.i
  %.3172.i = phi ptr [ %i.bg, %bb.o ], [ %.sink297.i, %.lr.ph173.preheader.i ] ; 4 uses
  %i.bf = load i8, ptr %.3172.i, align 1, !tbaa !25
  switch i8 %i.bf, label %bb.o [
    i8 13, label %.critedge.i
    i8 10, label %.critedge.i
  ]

bb.o:                                             ; preds = %.lr.ph173.i
  %i.bg = getelementptr inbounds nuw i8, ptr %.3172.i, i64 1 ; 2 uses
  %exitcond219.not.i = icmp eq ptr %i.bg, %scevgep218.i
  br i1 %exitcond219.not.i, label %.critedge.i, label %.lr.ph173.i, !llvm.loop !110

.critedge.i:                                      ; preds = %bb.o, %.lr.ph173.i, %.lr.ph173.i, %._crit_edge227.i
  %.3.lcssa.i = phi ptr [ %.sink297.i, %._crit_edge227.i ], [ %scevgep218.i, %bb.o ], [ %.3172.i, %.lr.ph173.i ], [ %.3172.i, %.lr.ph173.i ] ; 2 uses
  %i.bh = icmp eq ptr %.3.lcssa.i, %i.l
  br i1 %i.bh, label %php_dechunk.exit, label %.loopexit277.i

.loopexit277.i:                                   ; preds = %.lr.ph185.i, %.critedge.i
  %.0111180263.i = phi ptr [ %.0111180262.i, %.critedge.i ], [ %i.k, %.lr.ph185.i ] ; 2 uses
  %.0181254.i = phi i64 [ %.0181253.i, %.critedge.i ], [ 0, %.lr.ph185.i ] ; 3 uses
  %.4.i = phi ptr [ %.3.lcssa.i, %.critedge.i ], [ %i.k, %.lr.ph185.i ] ; 3 uses
  %i.bi = load i8, ptr %.4.i, align 1, !tbaa !25  ; 2 uses
  %i.bj = icmp eq i8 %i.bi, 13
  br i1 %i.bj, label %bb.p, label %bb.r

bb.p:                                             ; preds = %.loopexit277.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.4.i, i64 1 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, %i.l
  br i1 %i.bl, label %bb.q, label %thread-pre-split136.i

bb.q:                                             ; preds = %bb.p
  store i32 4, ptr %i.d, align 8, !tbaa !70
  br label %php_dechunk.exit

thread-pre-split136.i:                            ; preds = %.lr.ph185.i, %bb.p
  %.0111180265.i = phi ptr [ %.0111180263.i, %bb.p ], [ %i.k, %.lr.ph185.i ]
  %.0181256.i = phi i64 [ %.0181254.i, %bb.p ], [ 0, %.lr.ph185.i ]
  %.5.ph.i = phi ptr [ %i.bk, %bb.p ], [ %i.k, %.lr.ph185.i ] ; 2 uses
  %.pr137.i = load i8, ptr %.5.ph.i, align 1, !tbaa !25
  br label %bb.r

bb.r:                                             ; preds = %thread-pre-split136.i, %.loopexit277.i
  %.0111180264.i = phi ptr [ %.0111180265.i, %thread-pre-split136.i ], [ %.0111180263.i, %.loopexit277.i ] ; 2 uses
  %.0181255.i = phi i64 [ %.0181256.i, %thread-pre-split136.i ], [ %.0181254.i, %.loopexit277.i ] ; 4 uses
  %i.bm = phi i8 [ %.pr137.i, %thread-pre-split136.i ], [ %i.bi, %.loopexit277.i ]
  %.5.i = phi ptr [ %.5.ph.i, %thread-pre-split136.i ], [ %.4.i, %.loopexit277.i ] ; 2 uses
  %i.bn = icmp eq i8 %i.bm, 10
  br i1 %i.bn, label %bb.s, label %.backedge.jt9.i

bb.s:                                             ; preds = %bb.r
  %i.bo = getelementptr inbounds nuw i8, ptr %.5.i, i64 1 ; 3 uses
  %i.bp = load i64, ptr %i.b, align 8, !tbaa !71  ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  store i32 8, ptr %i.d, align 8, !tbaa !70
  %i.br = icmp ult ptr %i.bo, %i.l                ; 0 uses
  br label %php_dechunk.exit

.backedge.jt0.i:                                  ; preds = %bb.ag
  %i.bs = getelementptr inbounds nuw i8, ptr %.8.i, i64 1 ; 2 uses
  store i32 0, ptr %i.d, align 8, !tbaa !70
  %i.bt = icmp ult ptr %i.bs, %i.l
  br i1 %i.bt, label %.loopexit274.i, label %php_dechunk.exit, !llvm.loop !111

.backedge.jt9.i:                                  ; preds = %.loopexit, %bb.r, %bb.ag
  %.0114.be.jt9.ph.i = phi ptr [ %.8.i, %bb.ag ], [ %.5.i, %bb.r ], [ %.0114179269.i, %.loopexit ] ; 4 uses
  %.0111.be.jt9.ph.i = phi ptr [ %.2113.i, %bb.ag ], [ %.0111180264.i, %bb.r ], [ %.0111180261.i, %.loopexit ] ; 2 uses
  %.0.be.jt9.ph.i = phi i64 [ %.2.i, %bb.ag ], [ %.0181255.i, %bb.r ], [ %.0181252.i, %.loopexit ] ; 3 uses
  store i32 9, ptr %i.d, align 8, !tbaa !70
  %i.bu = icmp ult ptr %.0114.be.jt9.ph.i, %i.l
  br i1 %i.bu, label %.loopexit280.i, label %php_dechunk.exit, !llvm.loop !111

bb.u:                                             ; preds = %bb.s
  %i.bv = icmp eq ptr %i.bo, %i.l
  br i1 %i.bv, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 5, ptr %i.d, align 8, !tbaa !70
  br label %php_dechunk.exit

bb.w:                                             ; preds = %bb.u, %._crit_edge.i
  %.0111180266.i = phi ptr [ %i.k, %._crit_edge.i ], [ %.0111180264.i, %bb.u ] ; 4 uses
  %.0181257.i = phi i64 [ 0, %._crit_edge.i ], [ %.0181255.i, %bb.u ] ; 2 uses
  %i.bw = phi i64 [ %.pre223.i, %._crit_edge.i ], [ %i.bp, %bb.u ] ; 4 uses
  %.6.i = phi ptr [ %i.k, %._crit_edge.i ], [ %i.bo, %bb.u ] ; 5 uses
  %i.bx = ptrtoint ptr %.6.i to i64
  %i.by = sub i64 %i.n, %i.bx                     ; 4 uses
  %.not131.i = icmp ult i64 %i.by, %i.bw
  %.not132.i = icmp eq ptr %.6.i, %.0111180266.i  ; 2 uses
  br i1 %.not131.i, label %bb.ab, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %.not132.i, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0111180266.i, ptr align 1 %.6.i, i64 %i.bw, i1 false)
  %.pre224.i = load i64, ptr %i.b, align 8, !tbaa !71
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  %i.bz = phi i64 [ %.pre224.i, %bb.y ], [ %i.bw, %bb.x ] ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %.0111180266.i, i64 %i.bz
  %i.cb = add i64 %i.bz, %.0181257.i              ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.6.i, i64 %i.bz ; 2 uses
  %i.cd = icmp eq ptr %i.cc, %i.l
  br i1 %i.cd, label %bb.aa, label %.loopexit278.i

bb.aa:                                            ; preds = %bb.z
  store i32 6, ptr %i.d, align 8, !tbaa !70
  br label %php_dechunk.exit

bb.ab:                                            ; preds = %bb.w
  br i1 %.not132.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0111180266.i, ptr align 1 %.6.i, i64 %i.by, i1 false)
  %.pre225.i = load i64, ptr %i.b, align 8, !tbaa !71
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.ce = phi i64 [ %.pre225.i, %bb.ac ], [ %i.bw, %bb.ab ]
  %i.cf = sub i64 %i.ce, %i.by
  store i64 %i.cf, ptr %i.b, align 8, !tbaa !71
  store i32 5, ptr %i.d, align 8, !tbaa !70
  %i.cg = add i64 %i.by, %.0181257.i
  br label %php_dechunk.exit

.loopexit278.i:                                   ; preds = %.lr.ph185.i, %bb.z
  %.7.i = phi ptr [ %i.cc, %bb.z ], [ %i.k, %.lr.ph185.i ] ; 3 uses
  %.1112.i = phi ptr [ %i.ca, %bb.z ], [ %i.k, %.lr.ph185.i ] ; 2 uses
  %.1.i = phi i64 [ %i.cb, %bb.z ], [ 0, %.lr.ph185.i ] ; 3 uses
  %i.ch = load i8, ptr %.7.i, align 1, !tbaa !25  ; 2 uses
  %i.ci = icmp eq i8 %i.ch, 13
  br i1 %i.ci, label %bb.ae, label %bb.ag

bb.ae:                                            ; preds = %.loopexit278.i
  %i.cj = getelementptr inbounds nuw i8, ptr %.7.i, i64 1 ; 2 uses
  %i.ck = icmp eq ptr %i.cj, %i.l
  br i1 %i.ck, label %bb.af, label %thread-pre-split138.i

bb.af:                                            ; preds = %bb.ae
  store i32 7, ptr %i.d, align 8, !tbaa !70
  br label %php_dechunk.exit

thread-pre-split138.i:                            ; preds = %.lr.ph185.i, %bb.ae
  %.8.ph.i = phi ptr [ %i.cj, %bb.ae ], [ %i.k, %.lr.ph185.i ] ; 2 uses
  %.2113.ph.i = phi ptr [ %.1112.i, %bb.ae ], [ %i.k, %.lr.ph185.i ]
  %.2.ph.i = phi i64 [ %.1.i, %bb.ae ], [ 0, %.lr.ph185.i ]
  %.pr139.i = load i8, ptr %.8.ph.i, align 1, !tbaa !25
  br label %bb.ag

bb.ag:                                            ; preds = %thread-pre-split138.i, %.loopexit278.i
  %i.cl = phi i8 [ %.pr139.i, %thread-pre-split138.i ], [ %i.ch, %.loopexit278.i ]
  %.8.i = phi ptr [ %.8.ph.i, %thread-pre-split138.i ], [ %.7.i, %.loopexit278.i ] ; 2 uses
  %.2113.i = phi ptr [ %.2113.ph.i, %thread-pre-split138.i ], [ %.1112.i, %.loopexit278.i ] ; 2 uses
  %.2.i = phi i64 [ %.2.ph.i, %thread-pre-split138.i ], [ %.1.i, %.loopexit278.i ] ; 3 uses
  %i.cm = icmp eq i8 %i.cl, 10
  br i1 %i.cm, label %.backedge.jt0.i, label %.backedge.jt9.i

.loopexit280.i:                                   ; preds = %.backedge.jt9.i
  %.not.i = icmp eq ptr %.0114.be.jt9.ph.i, %.0111.be.jt9.ph.i
  %.pre229.i = ptrtoint ptr %.0114.be.jt9.ph.i to i64
  %.pre230.i = sub i64 %i.n, %.pre229.i           ; 3 uses
  br i1 %.not.i, label %._crit_edge226.i, label %bb.ah

bb.ah:                                            ; preds = %.loopexit280.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.0111.be.jt9.ph.i, ptr nonnull align 1 %.0114.be.jt9.ph.i, i64 %.pre230.i, i1 false)
  br label %._crit_edge226.i

._crit_edge226.i:                                 ; preds = %.lr.ph185.i, %bb.ah, %.loopexit280.i
  %.pre230.i23 = phi i64 [ %.pre230.i, %.loopexit280.i ], [ %.pre230.i, %bb.ah ], [ %i.h, %.lr.ph185.i ]
  %.0181250.i22 = phi i64 [ %.0.be.jt9.ph.i, %.loopexit280.i ], [ %.0.be.jt9.ph.i, %bb.ah ], [ 0, %.lr.ph185.i ]
  %i.cn = add i64 %.0181250.i22, %.pre230.i23
  br label %php_dechunk.exit

php_dechunk.exit:                                 ; preds = %.lr.ph185.i, %bb.t, %bb.b, %thread-pre-split.thread.i, %.critedge.i, %bb.q, %.backedge.jt0.i, %.backedge.jt9.i, %bb.v, %bb.aa, %bb.ad, %bb.af, %._crit_edge226.i
  %.0117.i = phi i64 [ %i.cg, %bb.ad ], [ %i.cn, %._crit_edge226.i ], [ %.0181254.i, %bb.q ], [ %.0181255.i, %bb.v ], [ %i.cb, %bb.aa ], [ %.1.i, %bb.af ], [ 0, %bb.b ], [ %.2.i, %.backedge.jt0.i ], [ %.0181253.i, %.critedge.i ], [ %.0181252.i, %thread-pre-split.thread.i ], [ %.0.be.jt9.ph.i, %.backedge.jt9.i ], [ 0, %.lr.ph185.i ], [ %.0181255.i, %bb.t ]
  store i64 %.0117.i, ptr %i.g, align 8, !tbaa !22
  tail call void @php_stream_bucket_append(ptr noundef %3, ptr noundef %i.f) #17
  %i.co = load ptr, ptr %2, align 8, !tbaa !15    ; 2 uses
  %.not = icmp eq ptr %i.co, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !112

._crit_edge:                                      ; preds = %php_dechunk.exit, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.i, %php_dechunk.exit ]
  %.not15 = icmp eq ptr %4, null
  br i1 %.not15, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %._crit_edge
  store i64 %.0.lcssa, ptr %4, align 8, !tbaa !24
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %._crit_edge
  ret i32 2
}

; Function Attrs: nounwind uwtable
define internal void @php_chunked_dtor(ptr nofree noundef readonly captures(address_is_null) %0) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 4 uses
  %.not7 = icmp eq ptr %i.b, null
  br i1 %.not7, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.d = load i8, ptr %i.c, align 4, !tbaa !72, !range !31, !noundef !32
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.b) #17
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  tail call void @_efree(ptr noundef nonnull %i.b) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @chunked_filter_create(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i8 noundef zeroext %2) #0 {
bb.a:
  %i.a = tail call i32 @strcasecmp(ptr noundef %0, ptr noundef nonnull @.str.20) #20
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not9 = icmp ne i8 %2, 0                       ; 2 uses
  br i1 %.not9, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.b = tail call noalias dereferenceable_or_null(16) ptr @__zend_calloc(i64 noundef 1, i64 noundef 16) #22
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = tail call noalias dereferenceable_or_null(16) ptr @_ecalloc(i64 noundef 1, i64 noundef 16) #22
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.d = phi ptr [ %i.b, %bb.c ], [ %i.c, %bb.d ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !70
  store i64 0, ptr %i.d, align 8, !tbaa !71
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.g = zext i1 %.not9 to i8
  store i8 %i.g, ptr %i.f, align 4, !tbaa !72
  %i.h = tail call ptr @_php_stream_filter_alloc(ptr noundef nonnull @chunked_filter_ops, ptr noundef nonnull %i.d, i8 noundef zeroext %2) #17
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.0 = phi ptr [ %i.h, %bb.e ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.fshl.i8(i8, i8, i8) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #15

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { nofree norecurse nosync nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind allocsize(1) }
attributes #20 = { nounwind willreturn memory(read) }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { nounwind allocsize(0,1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!11}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!"omnipotent char", !7, i64 0}
!9 = !{!"int", !8, i64 0}
!10 = !{!"__libc_errno", !9, i64 0}
!11 = !{!10, !9, i64 0}
!12 = !{!"any pointer", !8, i64 0}
!13 = !{!"p1 _ZTS18_php_stream_bucket", !12, i64 0}
!14 = !{!"_php_stream_bucket_brigade", !13, i64 0, !13, i64 8}
!15 = !{!14, !13, i64 0}
!16 = !{!"p1 _ZTS26_php_stream_bucket_brigade", !12, i64 0}
!17 = !{!"p1 omnipotent char", !12, i64 0}
!18 = !{!"long", !8, i64 0}
!19 = !{!"_Bool", !8, i64 0}
!20 = !{!"_php_stream_bucket", !13, i64 0, !13, i64 8, !16, i64 16, !17, i64 24, !18, i64 32, !19, i64 40, !19, i64 41, !9, i64 44}
!21 = !{!20, !17, i64 24}
!22 = !{!20, !18, i64 32}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!18, !18, i64 0}
!25 = !{!8, !8, i64 0}
!26 = !{!"p1 _ZTS9_php_conv", !12, i64 0}
!27 = !{!"_php_convert_filter", !26, i64 0, !19, i64 8, !17, i64 16, !8, i64 24, !18, i64 152}
!28 = !{!27, !26, i64 0}
!29 = !{!"_php_conv", !12, i64 0, !12, i64 8}
!30 = !{!27, !19, i64 8}
!31 = !{i8 0, i8 2}
!32 = !{}
!33 = !{!27, !17, i64 16}
!34 = !{!17, !17, i64 0}
!35 = !{!27, !18, i64 152}
!36 = !{!"_php_conv_base64_encode", !29, i64 0, !17, i64 16, !18, i64 24, !18, i64 32, !9, i64 40, !9, i64 44, !9, i64 48, !19, i64 52, !8, i64 53}
!37 = !{!36, !18, i64 32}
!38 = !{!36, !9, i64 40}
!39 = !{!36, !9, i64 44}
!40 = !{!36, !17, i64 16}
!41 = !{!36, !18, i64 24}
!42 = !{!36, !9, i64 48}
!43 = !{!36, !19, i64 52}
!44 = !{!"_php_conv_base64_decode", !29, i64 0, !9, i64 16, !9, i64 20, !9, i64 24, !9, i64 28}
!45 = !{!"_php_conv_qprint_encode", !29, i64 0, !17, i64 16, !18, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !9, i64 44, !19, i64 48, !9, i64 52, !9, i64 56}
!46 = !{!45, !9, i64 36}
!47 = !{!45, !9, i64 40}
!48 = !{!45, !17, i64 16}
!49 = !{!45, !18, i64 24}
!50 = !{!45, !9, i64 44}
!51 = !{!45, !19, i64 48}
!52 = !{!45, !9, i64 32}
!53 = !{!45, !9, i64 52}
!54 = !{!45, !9, i64 56}
!55 = !{!"_php_conv_qprint_decode", !29, i64 0, !17, i64 16, !18, i64 24, !9, i64 32, !9, i64 36, !9, i64 40, !19, i64 44, !9, i64 48, !9, i64 52}
!56 = !{!55, !9, i64 32}
!57 = !{!55, !9, i64 36}
!58 = !{!55, !9, i64 52}
!59 = !{!55, !9, i64 48}
!60 = !{!55, !17, i64 16}
!61 = !{!55, !18, i64 24}
!62 = !{!55, !9, i64 40}
!63 = !{!55, !19, i64 44}
!64 = !{!9, !9, i64 0}
!65 = !{!"_php_consumed_filter_data", !18, i64 0, !18, i64 8, !19, i64 16}
!66 = !{!65, !18, i64 8}
!67 = !{!65, !18, i64 0}
!68 = !{!65, !19, i64 16}
!69 = !{!"_php_chunked_filter_data", !18, i64 0, !9, i64 8, !19, i64 12}
!70 = !{!69, !9, i64 8}
!71 = !{!69, !18, i64 0}
!72 = !{!69, !19, i64 12}
!73 = distinct !{!73, !23}
!74 = distinct !{!74, !23}
!75 = distinct !{!75, !23}
!76 = distinct !{!76, !23}
!77 = distinct !{null}
!78 = !{!29, !12, i64 8}
!79 = distinct !{!79, !23}
!80 = distinct !{!80, !23}
!81 = !{!29, !12, i64 0}
!82 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!83 = !{!"_zend_refcounted_h", !9, i64 0, !8, i64 4}
!84 = !{!"_zend_string", !83, i64 0, !18, i64 8, !18, i64 16, !8, i64 24}
!85 = !{!84, !18, i64 16}
!86 = !{!83, !9, i64 0}
!87 = !{!36, !12, i64 0}
!88 = !{!36, !12, i64 8}
!89 = !{!44, !12, i64 0}
!90 = !{!44, !12, i64 8}
!91 = !{!45, !12, i64 0}
!92 = !{!45, !12, i64 8}
!93 = !{!55, !12, i64 0}
!94 = !{!55, !12, i64 8}
!95 = distinct !{!95, !23}
!96 = !{!44, !9, i64 28}
!97 = !{!44, !9, i64 20}
!98 = !{!44, !9, i64 16}
!99 = !{!44, !9, i64 24}
!100 = distinct !{!100, !23}
!101 = distinct !{!101, !103}
!102 = distinct !{!102, !23}
!103 = !{!"llvm.loop.unroll.disable"}
!104 = !{!"p1 short", !12, i64 0}
!105 = !{!104, !104, i64 0}
!106 = !{!"short", !8, i64 0}
!107 = !{!106, !106, i64 0}
!108 = distinct !{!108, !23}
!109 = distinct !{!109, !23, !113}
!110 = distinct !{!110, !23}
!111 = distinct !{!111, !23}
!112 = distinct !{!112, !23}
!113 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_1
