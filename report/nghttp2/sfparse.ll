Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nghttp2/original/sfparse?download=true
inline.NumInlined: 70
inline.NumDeleted: 19
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sfparse_value = type { i32, i32, %union.anon }
%union.anon = type { %struct.sfparse_decimal }
%struct.sfparse_decimal = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [46 x i8] c"/opt-bench/work/nghttp2/nghttp2/lib/sfparse.c\00", align 1
@__PRETTY_FUNCTION__.sfparse_parser_param = private unnamed_addr constant [75 x i8] c"int sfparse_parser_param(sfparse_parser *, sfparse_vec *, sfparse_value *)\00", align 1
@__PRETTY_FUNCTION__.sfparse_parser_inner_list = private unnamed_addr constant [65 x i8] c"int sfparse_parser_inner_list(sfparse_parser *, sfparse_value *)\00", align 1
@__PRETTY_FUNCTION__.sfparse_parser_dict = private unnamed_addr constant [74 x i8] c"int sfparse_parser_dict(sfparse_parser *, sfparse_vec *, sfparse_value *)\00", align 1
@__PRETTY_FUNCTION__.sfparse_parser_list = private unnamed_addr constant [59 x i8] c"int sfparse_parser_list(sfparse_parser *, sfparse_value *)\00", align 1
@__PRETTY_FUNCTION__.sfparse_parser_item = private unnamed_addr constant [59 x i8] c"int sfparse_parser_item(sfparse_parser *, sfparse_value *)\00", align 1
@sfparse_base64decode.index_tbl = internal unnamed_addr constant [256 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 62, i32 -1, i32 -1, i32 -1, i32 63, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@.str.2 = private unnamed_addr constant [10 x i8] c"idx != -1\00", align 1
@__PRETTY_FUNCTION__.sfparse_base64decode = private unnamed_addr constant [62 x i8] c"void sfparse_base64decode(sfparse_vec *, const sfparse_vec *)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"'=' == src->base[src->len - 1]\00", align 1
@key_tbl = internal unnamed_addr constant <{ [123 x i8], [133 x i8] }> <{ [123 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\02\02\00\02\02\02\02\02\02\02\02\02\02\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [133 x i8] zeroinitializer }>, align 16
@__PRETTY_FUNCTION__.parser_bare_item = private unnamed_addr constant [56 x i8] c"int parser_bare_item(sfparse_parser *, sfparse_value *)\00", align 1
@bare_item_tbl = internal unnamed_addr constant <{ [123 x i8], [133 x i8] }> <{ [123 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\07\00\00\00\00\06\00\00\02\00\00\02\02\02\02\02\02\02\02\02\02\04\00\00\00\00\05\03\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\00\00\00\00\00\00\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06\06", [133 x i8] zeroinitializer }>, align 16
@.str.6 = private unnamed_addr constant [17 x i8] c"'\22' == *sfp->pos\00", align 1
@__PRETTY_FUNCTION__.parser_string = private unnamed_addr constant [53 x i8] c"int parser_string(sfparse_parser *, sfparse_value *)\00", align 1
@string_tbl = internal unnamed_addr constant <{ [127 x i8], [129 x i8] }> <{ [127 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\03\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [129 x i8] zeroinitializer }>, align 16
@.str.8 = private unnamed_addr constant [17 x i8] c"!parser_eof(sfp)\00", align 1
@__PRETTY_FUNCTION__.parser_number = private unnamed_addr constant [53 x i8] c"int parser_number(sfparse_parser *, sfparse_value *)\00", align 1
@.str.10 = private unnamed_addr constant [17 x i8] c"'@' == *sfp->pos\00", align 1
@__PRETTY_FUNCTION__.parser_date = private unnamed_addr constant [51 x i8] c"int parser_date(sfparse_parser *, sfparse_value *)\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"':' == *sfp->pos\00", align 1
@__PRETTY_FUNCTION__.parser_byteseq = private unnamed_addr constant [54 x i8] c"int parser_byteseq(sfparse_parser *, sfparse_value *)\00", align 1
@byteseq_tbl = internal unnamed_addr constant <{ [123 x i8], [133 x i8] }> <{ [123 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\00\00\01\01\01\01\01\01\01\01\01\01\01\03\00\00\02\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [133 x i8] zeroinitializer }>, align 16
@.str.13 = private unnamed_addr constant [17 x i8] c"'?' == *sfp->pos\00", align 1
@__PRETTY_FUNCTION__.parser_boolean = private unnamed_addr constant [54 x i8] c"int parser_boolean(sfparse_parser *, sfparse_value *)\00", align 1
@token_tbl = internal unnamed_addr constant <{ [127 x i8], [129 x i8] }> <{ [127 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\00\01\01\01\01\01\00\00\01\01\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\00\01\00\01", [129 x i8] zeroinitializer }>, align 16
@.str.15 = private unnamed_addr constant [17 x i8] c"'%' == *sfp->pos\00", align 1
@__PRETTY_FUNCTION__.parser_dispstring = private unnamed_addr constant [57 x i8] c"int parser_dispstring(sfparse_parser *, sfparse_value *)\00", align 1
@dispstring_tbl = internal unnamed_addr constant <{ [127 x i8], [129 x i8] }> <{ [127 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\03\01\01\02\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01", [129 x i8] zeroinitializer }>, align 16
@utf8d = internal unnamed_addr constant [364 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\0A\03\03\03\03\03\03\03\03\03\03\03\03\04\03\03\0B\06\06\06\05\08\08\08\08\08\08\08\08\08\08\08\00\0C\18$<`T\0C\0C\0C0H\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\00\0C\0C\0C\0C\0C\00\0C\00\0C\0C\0C\18\0C\0C\0C\0C\0C\18\0C\18\0C\0C\0C\0C\0C\0C\0C\0C\0C\18\0C\0C\0C\0C\0C\18\0C\0C\0C\0C\0C\0C\0C\18\0C\0C\0C\0C\0C\0C\0C\0C\0C$\0C$\0C\0C\0C$\0C\0C\0C\0C\0C$\0C$\0C\0C\0C$\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C", align 16
@__PRETTY_FUNCTION__.parser_skip_inner_list = private unnamed_addr constant [45 x i8] c"int parser_skip_inner_list(sfparse_parser *)\00", align 1
@__PRETTY_FUNCTION__.pctdecode = private unnamed_addr constant [43 x i8] c"int pctdecode(uint8_t *, const uint8_t **)\00", align 1
@pct_tbl = internal unnamed_addr constant <{ [103 x i8], [153 x i8] }> <{ [103 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\02\02\02\02\02\02", [153 x i8] zeroinitializer }>, align 16
@switch.table.parser_number = private unnamed_addr constant [3 x i16] [i16 10, i16 100, i16 1000], align 8

; Function Attrs: nounwind uwtable
define hidden range(i32 -2, 1) i32 @sfparse_parser_param(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !16   ; 3 uses
  %i.c = and i32 %i.b, 3
  switch i32 %i.c, label %default.unreachable59 [
    i32 0, label %.preheader
    i32 1, label %parser_skip_inner_list.exit.thread
    i32 2, label %bb.d
    i32 3, label %bb.c
  ]

.preheader:                                       ; preds = %bb.a, %.preheader
  %i.d = tail call i32 @sfparse_parser_inner_list(ptr noundef nonnull %0, ptr noundef null), !inline_history !0 ; 2 uses
  switch i32 %i.d, label %bb.b [
    i32 0, label %.preheader
    i32 -2, label %parser_skip_inner_list.exit.thread.loopexit
    i32 -1, label %parser_skip_inner_list.exit
  ]

bb.b:                                             ; preds = %.preheader
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1094, ptr noundef nonnull @__PRETTY_FUNCTION__.parser_skip_inner_list) #6, !inline_history !0
  unreachable

parser_skip_inner_list.exit.thread.loopexit:      ; preds = %.preheader
  %.pre = load i32, ptr %i.a, align 8, !tbaa !16
  br label %parser_skip_inner_list.exit.thread

parser_skip_inner_list.exit.thread:               ; preds = %parser_skip_inner_list.exit.thread.loopexit, %bb.a
  %i.e = phi i32 [ %.pre, %parser_skip_inner_list.exit.thread.loopexit ], [ %i.b, %bb.a ]
  %i.f = and i32 %i.e, -4
  %i.g = or disjoint i32 %i.f, 2                  ; 2 uses
  store i32 %i.g, ptr %i.a, align 8, !tbaa !16
  br label %bb.d

default.unreachable59:                            ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 955, ptr noundef nonnull @__PRETTY_FUNCTION__.sfparse_parser_param) #6
  unreachable

bb.d:                                             ; preds = %bb.a, %parser_skip_inner_list.exit.thread
  %i.h = phi i32 [ %i.b, %bb.a ], [ %i.g, %parser_skip_inner_list.exit.thread ]
  %.val41 = load ptr, ptr %0, align 8, !tbaa !17  ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 8
  %.val42 = load ptr, ptr %i.i, align 8, !tbaa !18 ; 9 uses
  %.not = icmp eq ptr %.val41, %.val42
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i8, ptr %.val41, align 1, !tbaa !19
  %.not29 = icmp eq i8 %i.j, 59
  br i1 %.not29, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = or i32 %i.h, 3
  store i32 %i.k, ptr %i.a, align 8, !tbaa !16
  br label %parser_skip_inner_list.exit

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val41, i64 1 ; 4 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !17
  %.not5.i = icmp eq ptr %i.l, %.val42
  br i1 %.not5.i, label %parser_discard_sp.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %.val46.i = phi ptr [ %i.o, %bb.h ], [ %i.l, %bb.g ] ; 3 uses
  %i.m = load i8, ptr %.val46.i, align 1, !tbaa !19
  %i.n = icmp eq i8 %i.m, 32
  br i1 %i.n, label %bb.h, label %parser_discard_sp.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.val46.i, i64 1 ; 4 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !17
  %.not.i = icmp eq ptr %i.o, %.val42
  br i1 %.not.i, label %parser_discard_sp.exit, label %.lr.ph.i, !llvm.loop !1

parser_discard_sp.exit:                           ; preds = %.lr.ph.i, %bb.h, %bb.g
  %.val39 = phi ptr [ %i.l, %bb.g ], [ %.val46.i, %.lr.ph.i ], [ %i.o, %bb.h ] ; 7 uses
  %.not49 = icmp eq ptr %.val39, %.val42
  br i1 %.not49, label %parser_skip_inner_list.exit, label %bb.i

bb.i:                                             ; preds = %parser_discard_sp.exit
  %i.p = load i8, ptr %.val39, align 1, !tbaa !19
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @key_tbl, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !tbaa !19
  %.not.i43 = icmp eq i8 %i.s, 1
  br i1 %.not.i43, label %.preheader.i.preheader, label %parser_skip_inner_list.exit

.preheader.i.preheader:                           ; preds = %bb.i
  %storemerge.i60 = getelementptr inbounds nuw i8, ptr %.val39, i64 1 ; 4 uses
  store ptr %storemerge.i60, ptr %0, align 8, !tbaa !17
  %.not16.i61 = icmp eq ptr %storemerge.i60, %.val42
  br i1 %.not16.i61, label %.critedge.i, label %.lr.ph

.preheader.i:                                     ; preds = %.lr.ph
  %storemerge.i = getelementptr inbounds nuw i8, ptr %storemerge.i63, i64 1 ; 4 uses
  store ptr %storemerge.i, ptr %0, align 8, !tbaa !17
  %.not16.i = icmp eq ptr %storemerge.i, %.val42
  br i1 %.not16.i, label %.critedge.i, label %.lr.ph, !llvm.loop !2

.lr.ph:                                           ; preds = %.preheader.i.preheader, %.preheader.i
  %storemerge.i63 = phi ptr [ %storemerge.i, %.preheader.i ], [ %storemerge.i60, %.preheader.i.preheader ] ; 6 uses
  %.pn.i62 = phi ptr [ %storemerge.i63, %.preheader.i ], [ %.val39, %.preheader.i.preheader ]
  %i.t = load i8, ptr %storemerge.i63, align 1, !tbaa !19
  %i.u = zext i8 %i.t to i64
  %i.v = getelementptr inbounds nuw i8, ptr @key_tbl, i64 %i.u
  %i.w = load i8, ptr %i.v, align 1, !tbaa !19
  %.not13.i = icmp eq i8 %i.w, 0
  br i1 %.not13.i, label %..critedge.i_crit_edge, label %.preheader.i, !llvm.loop !2

..critedge.i_crit_edge:                           ; preds = %.lr.ph
  br label %.critedge.i, !llvm.loop !2

.critedge.i:                                      ; preds = %.preheader.i, %..critedge.i_crit_edge, %.preheader.i.preheader
  %.pn.i.lcssa = phi ptr [ %.pn.i62, %..critedge.i_crit_edge ], [ %.val39, %.preheader.i.preheader ], [ %storemerge.i63, %.preheader.i ]
  %storemerge.i.lcssa = phi ptr [ %storemerge.i63, %..critedge.i_crit_edge ], [ %storemerge.i60, %.preheader.i.preheader ], [ %storemerge.i, %.preheader.i ]
  %.not16.i.lcssa = phi i1 [ false, %..critedge.i_crit_edge ], [ true, %.preheader.i.preheader ], [ true, %.preheader.i ]
  %storemerge.lcssa.i = phi ptr [ %storemerge.i63, %..critedge.i_crit_edge ], [ %.val42, %.preheader.i.preheader ], [ %.val42, %.preheader.i ]
  %.not14.i = icmp eq ptr %1, null
  br i1 %.not14.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.critedge.i
  store ptr %.val39, ptr %1, align 8, !tbaa !23
  %i.x = ptrtoint ptr %storemerge.lcssa.i to i64
  %i.y = ptrtoint ptr %.val39 to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.z, ptr %i.aa, align 8, !tbaa !24
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.critedge.i
  br i1 %.not16.i.lcssa, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ab = load i8, ptr %storemerge.i.lcssa, align 1, !tbaa !19
  %.not33 = icmp eq i8 %i.ab, 61
  br i1 %.not33, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not35 = icmp eq ptr %2, null
  br i1 %.not35, label %parser_skip_inner_list.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  store i32 0, ptr %2, align 8, !tbaa !26
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.ac, align 4, !tbaa !27
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 1, ptr %i.ad, align 8, !tbaa !19
  br label %parser_skip_inner_list.exit

bb.o:                                             ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn.i.lcssa, i64 2 ; 2 uses
  store ptr %i.ae, ptr %0, align 8, !tbaa !17
  %.not51 = icmp eq ptr %i.ae, %.val42
  br i1 %.not51, label %parser_skip_inner_list.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = tail call fastcc i32 @parser_bare_item(ptr noundef nonnull %0, ptr noundef %2)
  br label %parser_skip_inner_list.exit

parser_skip_inner_list.exit:                      ; preds = %.preheader, %bb.i, %bb.o, %bb.m, %bb.n, %parser_discard_sp.exit, %bb.p, %bb.f
  %.0 = phi i32 [ %i.af, %bb.p ], [ -2, %bb.f ], [ -1, %bb.o ], [ -1, %parser_discard_sp.exit ], [ -1, %bb.i ], [ 0, %bb.m ], [ 0, %bb.n ], [ %i.d, %.preheader ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @parser_bare_item(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.sfparse_value, align 8      ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !17     ; 26 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = load i8, ptr %i.a, align 1, !tbaa !19    ; 6 uses
  %i.d = zext i8 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr @bare_item_tbl, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !19
  switch i8 %i.f, label %bb.bi [
    i8 0, label %parser_string.exit
    i8 1, label %bb.b
    i8 2, label %bb.k
    i8 3, label %bb.l
    i8 4, label %bb.r
    i8 5, label %bb.ae
    i8 6, label %bb.al
    i8 7, label %bb.ao
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i8 %i.c, 34
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 391, ptr noundef nonnull @__PRETTY_FUNCTION__.parser_string) #6
  unreachable

bb.d:                                             ; preds = %bb.b
  %.ptr.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 4 uses
  %i.h = getelementptr i8, ptr %0, i64 8
  %.val25.i = load ptr, ptr %i.h, align 8, !tbaa !18 ; 3 uses
  store ptr %.ptr.i, ptr %0, align 8, !tbaa !17
  %.not30.i = icmp eq ptr %.ptr.i, %.val25.i
  br i1 %.not30.i, label %parser_string.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %bb.g
  %i.i = phi ptr [ %.ptr36.i, %bb.g ], [ %.ptr.i, %bb.d ]
  %.032.i = phi i32 [ %.1.i, %bb.g ], [ 0, %bb.d ] ; 2 uses
  %storemerge31.idx.i = phi i64 [ %storemerge29.add.i, %bb.g ], [ 1, %bb.d ] ; 5 uses
  %storemerge31.ptr.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %storemerge31.idx.i
  %i.j = load i8, ptr %storemerge31.ptr.i, align 1, !tbaa !19
  %i.k = zext i8 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr @string_tbl, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !19
  switch i8 %i.m, label %bb.g [
    i8 0, label %parser_string.exit
    i8 3, label %bb.h
    i8 2, label %bb.e
  ]

bb.e:                                             ; preds = %.lr.ph.i
  %storemerge31.add.i = add nuw nsw i64 %storemerge31.idx.i, 1 ; 3 uses
  %.ptr37.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %storemerge31.add.i ; 3 uses
  store ptr %.ptr37.i, ptr %0, align 8, !tbaa !17
  %.not26.i = icmp eq ptr %.ptr37.i, %.val25.i
  br i1 %.not26.i, label %parser_string.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load i8, ptr %.ptr37.i, align 1, !tbaa !19
  switch i8 %i.n, label %parser_string.exit [
    i8 34, label %bb.g
    i8 92, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %.lr.ph.i
  %storemerge29.idx.i = phi i64 [ %storemerge31.idx.i, %.lr.ph.i ], [ %storemerge31.add.i, %bb.f ], [ %storemerge31.add.i, %bb.f ]
  %.1.i = phi i32 [ %.032.i, %.lr.ph.i ], [ 1, %bb.f ], [ 1, %bb.f ]
  %storemerge29.add.i = add nuw nsw i64 %storemerge29.idx.i, 1 ; 2 uses
  %.ptr36.i = getelementptr inbounds nuw i8, ptr %i.a, i64 %storemerge29.add.i ; 3 uses
  store ptr %.ptr36.i, ptr %0, align 8, !tbaa !17
  %.not.i = icmp eq ptr %.ptr36.i, %.val25.i
  br i1 %.not.i, label %parser_string.exit, label %.lr.ph.i, !llvm.loop !29

bb.h:                                             ; preds = %.lr.ph.i
  %.not22.i = icmp eq ptr %1, null
  br i1 %.not22.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i32 3, ptr %1, align 8, !tbaa !26
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 %.032.i, ptr %i.o, align 4, !tbaa !27
  %gepdiff.i = add nsw i64 %storemerge31.idx.i, -1
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %gepdiff.i, ptr %i.q, align 8, !tbaa !19
  %i.r = icmp eq i64 %storemerge31.idx.i, 1
  %i.s = select i1 %i.r, ptr null, ptr %.ptr.i
  store ptr %i.s, ptr %i.p, align 8, !tbaa !19
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !17
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.t = phi ptr [ %.pre.i, %bb.i ], [ %i.i, %bb.h ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  store ptr %i.u, ptr %0, align 8, !tbaa !17
  br label %parser_string.exit

bb.k:                                             ; preds = %bb.a
  %i.v = tail call fastcc i32 @parser_number(ptr noundef nonnull %0, ptr noundef %1)
  br label %parser_string.exit

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.w = icmp eq i8 %i.c, 64
  br i1 %i.w, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.1, i32 noundef 322, ptr noundef nonnull @__PRETTY_FUNCTION__.parser_date) #6
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !17
  %i.y = getelementptr i8, ptr %0, i64 8
  %.val14.i = load ptr, ptr %i.y, align 8, !tbaa !18
  %.not.i15 = icmp eq ptr %i.x, %.val14.i
  br i1 %.not.i15, label %parser_date.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.z = call fastcc i32 @parser_number(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %.not11.i = icmp eq i32 %i.z, 0
  %i.aa = load i32, ptr %2, align 8
  %.not12.i = icmp eq i32 %i.aa, 1
  %or.cond.i = select i1 %.not11.i, i1 %.not12.i, i1 false
  br i1 %or.cond.i, label %bb.p, label %parser_date.exit

bb.p:                                             ; preds = %bb.o
  %.not13.i = icmp eq ptr %1, null
  br i1 %.not13.i, label %parser_date.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !33
  store i32 7, ptr %1, align 8, !tbaa !26
  br label %parser_date.exit

parser_date.exit:                                 ; preds = %bb.n, %bb.o, %bb.p, %bb.q
  %.0.i = phi i32 [ 0, %bb.p ], [ -1, %bb.n ], [ -1, %bb.o ], [ 0, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %parser_string.exit

bb.r:                                             ; preds = %bb.a
  %i.ab = icmp eq i8 %i.c, 58
  br i1 %i.ab, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @__assert_fail(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.1, i32 noundef 619, ptr noundef nonnull @__PRETTY_FUNCTION__.parser_byteseq) #6
  unreachable

bb.t:                                             ; preds = %bb.r
  %.ptr56.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %i.ac = getelementptr i8, ptr %0, i64 8
end_hunk_0
