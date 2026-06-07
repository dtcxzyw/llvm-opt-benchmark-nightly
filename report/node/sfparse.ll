inline.NumInlined: 63
inline.NumDeleted: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.sfparse_value = type { i32, i32, %union.anon }
%union.anon = type { %struct.sfparse_decimal }
%struct.sfparse_decimal = type { i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"../../deps/nghttp2/lib/sfparse.c\00", align 1
@__PRETTY_FUNCTION__.sfparse_parser_param = private unnamed_addr constant [75 x i8] c"int sfparse_parser_param(sfparse_parser *, sfparse_vec *, sfparse_value *)\00", align 1
@__PRETTY_FUNCTION__.sfparse_parser_inner_list = private unnamed_addr constant [65 x i8] c"int sfparse_parser_inner_list(sfparse_parser *, sfparse_value *)\00", align 1
@__PRETTY_FUNCTION__.sfparse_parser_dict = private unnamed_addr constant [74 x i8] c"int sfparse_parser_dict(sfparse_parser *, sfparse_vec *, sfparse_value *)\00", align 1
@__PRETTY_FUNCTION__.sfparse_parser_list = private unnamed_addr constant [59 x i8] c"int sfparse_parser_list(sfparse_parser *, sfparse_value *)\00", align 1
@__PRETTY_FUNCTION__.sfparse_parser_item = private unnamed_addr constant [59 x i8] c"int sfparse_parser_item(sfparse_parser *, sfparse_value *)\00", align 1
@sfparse_base64decode.index_tbl = internal unnamed_addr constant [256 x i32] [i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 62, i32 -1, i32 -1, i32 -1, i32 63, i32 52, i32 53, i32 54, i32 55, i32 56, i32 57, i32 58, i32 59, i32 60, i32 61, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 26, i32 27, i32 28, i32 29, i32 30, i32 31, i32 32, i32 33, i32 34, i32 35, i32 36, i32 37, i32 38, i32 39, i32 40, i32 41, i32 42, i32 43, i32 44, i32 45, i32 46, i32 47, i32 48, i32 49, i32 50, i32 51, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1], align 16
@.str.2 = private unnamed_addr constant [10 x i8] c"idx != -1\00", align 1
@__PRETTY_FUNCTION__.sfparse_base64decode = private unnamed_addr constant [62 x i8] c"void sfparse_base64decode(sfparse_vec *, const sfparse_vec *)\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"'=' == src->base[src->len - 1]\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"'\22' == *sfp->pos\00", align 1
@__PRETTY_FUNCTION__.parser_string = private unnamed_addr constant [53 x i8] c"int parser_string(sfparse_parser *, sfparse_value *)\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"!parser_eof(sfp)\00", align 1
@__PRETTY_FUNCTION__.parser_number = private unnamed_addr constant [53 x i8] c"int parser_number(sfparse_parser *, sfparse_value *)\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"'@' == *sfp->pos\00", align 1
@__PRETTY_FUNCTION__.parser_date = private unnamed_addr constant [51 x i8] c"int parser_date(sfparse_parser *, sfparse_value *)\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"':' == *sfp->pos\00", align 1
@__PRETTY_FUNCTION__.parser_byteseq = private unnamed_addr constant [54 x i8] c"int parser_byteseq(sfparse_parser *, sfparse_value *)\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"'?' == *sfp->pos\00", align 1
@__PRETTY_FUNCTION__.parser_boolean = private unnamed_addr constant [54 x i8] c"int parser_boolean(sfparse_parser *, sfparse_value *)\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"'%' == *sfp->pos\00", align 1
@__PRETTY_FUNCTION__.parser_dispstring = private unnamed_addr constant [57 x i8] c"int parser_dispstring(sfparse_parser *, sfparse_value *)\00", align 1
@utf8d = internal unnamed_addr constant [364 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\01\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\09\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\07\08\08\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\02\0A\03\03\03\03\03\03\03\03\03\03\03\03\04\03\03\0B\06\06\06\05\08\08\08\08\08\08\08\08\08\08\08\00\0C\18$<`T\0C\0C\0C0H\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C\00\0C\0C\0C\0C\0C\00\0C\00\0C\0C\0C\18\0C\0C\0C\0C\0C\18\0C\18\0C\0C\0C\0C\0C\0C\0C\0C\0C\18\0C\0C\0C\0C\0C\18\0C\0C\0C\0C\0C\0C\0C\18\0C\0C\0C\0C\0C\0C\0C\0C\0C$\0C$\0C\0C\0C$\0C\0C\0C\0C\0C$\0C$\0C\0C\0C$\0C\0C\0C\0C\0C\0C\0C\0C\0C\0C", align 16
@__PRETTY_FUNCTION__.parser_skip_inner_list = private unnamed_addr constant [45 x i8] c"int parser_skip_inner_list(sfparse_parser *)\00", align 1
@switch.table.parser_number = private unnamed_addr constant [3 x i64] [i64 10, i64 100, i64 1000], align 8
@switch.table.parser_dispstring = private unnamed_addr constant [55 x i8] [i8 0, i8 16, i8 32, i8 48, i8 64, i8 80, i8 96, i8 112, i8 -128, i8 -112, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 -96, i8 -80, i8 -64, i8 -48, i8 -32, i8 -16], align 1
@switch.table.parser_dispstring.3 = private unnamed_addr constant [55 x i8] [i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 -48, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 poison, i8 -87, i8 -87, i8 -87, i8 -87, i8 -87, i8 -87], align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -2, 1) i32 @sfparse_parser_param(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !9    ; 3 uses
  %i.c = and i32 %i.b, 3
  switch i32 %i.c, label %default.unreachable53 [
    i32 0, label %.preheader
    i32 1, label %parser_skip_inner_list.exit.thread
    i32 2, label %bb.d
    i32 3, label %bb.c
  ]

.preheader:                                       ; preds = %bb.a, %.preheader
  %i.d = tail call i32 @sfparse_parser_inner_list(ptr noundef nonnull %0, ptr noundef null), !inline_history !13 ; 2 uses
  switch i32 %i.d, label %bb.b [
    i32 0, label %.preheader
    i32 -2, label %parser_skip_inner_list.exit.thread.loopexit
    i32 -1, label %parser_skip_inner_list.exit
  ]

bb.b:                                             ; preds = %.preheader
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1365, ptr noundef nonnull @__PRETTY_FUNCTION__.parser_skip_inner_list) #7, !inline_history !13
  unreachable

parser_skip_inner_list.exit.thread.loopexit:      ; preds = %.preheader
  %.pre = load i32, ptr %i.a, align 8, !tbaa !9
  br label %parser_skip_inner_list.exit.thread

parser_skip_inner_list.exit.thread:               ; preds = %parser_skip_inner_list.exit.thread.loopexit, %bb.a
  %i.e = phi i32 [ %.pre, %parser_skip_inner_list.exit.thread.loopexit ], [ %i.b, %bb.a ]
  %i.f = and i32 %i.e, -4
  %i.g = or disjoint i32 %i.f, 2                  ; 2 uses
  store i32 %i.g, ptr %i.a, align 8, !tbaa !9
  br label %bb.d

default.unreachable53:                            ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 1226, ptr noundef nonnull @__PRETTY_FUNCTION__.sfparse_parser_param) #7
  unreachable

bb.d:                                             ; preds = %bb.a, %parser_skip_inner_list.exit.thread
  %i.h = phi i32 [ %i.b, %bb.a ], [ %i.g, %parser_skip_inner_list.exit.thread ]
  %.val41 = load ptr, ptr %0, align 8, !tbaa !14  ; 3 uses
  %i.i = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %.val42 = load ptr, ptr %i.i, align 8, !tbaa !15 ; 4 uses
  %.not = icmp eq ptr %.val41, %.val42
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i8, ptr %.val41, align 1, !tbaa !16
  %.not29 = icmp eq i8 %i.j, 59
  br i1 %.not29, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = or i32 %i.h, 3
  store i32 %i.k, ptr %i.a, align 8, !tbaa !9
  br label %parser_skip_inner_list.exit

bb.g:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %.val41, i64 1 ; 3 uses
  store ptr %i.l, ptr %0, align 8, !tbaa !14
  %.not5.i = icmp eq ptr %i.l, %.val42
  br i1 %.not5.i, label %parser_skip_inner_list.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.g, %bb.h
  %.val46.i = phi ptr [ %i.o, %bb.h ], [ %i.l, %bb.g ] ; 3 uses
  %i.m = load i8, ptr %.val46.i, align 1, !tbaa !16
  %i.n = icmp eq i8 %i.m, 32
  br i1 %i.n, label %bb.h, label %parser_discard_sp.exit

bb.h:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %.val46.i, i64 1 ; 3 uses
  store ptr %i.o, ptr %0, align 8, !tbaa !14
  %.not.i = icmp eq ptr %i.o, %.val42
  br i1 %.not.i, label %parser_skip_inner_list.exit, label %.lr.ph.i, !llvm.loop !17

parser_discard_sp.exit:                           ; preds = %.lr.ph.i
  %i.p = icmp eq ptr %.val46.i, %.val42
  br i1 %i.p, label %parser_skip_inner_list.exit, label %bb.i

bb.i:                                             ; preds = %parser_discard_sp.exit
  %i.q = tail call fastcc i32 @parser_key(ptr noundef nonnull %0, ptr noundef %1)
  %.not31 = icmp eq i32 %i.q, 0
  br i1 %.not31, label %bb.j, label %parser_skip_inner_list.exit

bb.j:                                             ; preds = %bb.i
  %.val37 = load ptr, ptr %0, align 8, !tbaa !14  ; 3 uses
  %.val38 = load ptr, ptr %i.i, align 8, !tbaa !15 ; 2 uses
  %.not46 = icmp eq ptr %.val37, %.val38
  br i1 %.not46, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = load i8, ptr %.val37, align 1, !tbaa !16
  %.not33 = icmp eq i8 %i.r, 61
  br i1 %.not33, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.not35 = icmp eq ptr %2, null
  br i1 %.not35, label %parser_skip_inner_list.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  store i32 0, ptr %2, align 8, !tbaa !19
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.s, align 4, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 1, ptr %i.t, align 8, !tbaa !16
  br label %parser_skip_inner_list.exit

bb.n:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %.val37, i64 1 ; 2 uses
  store ptr %i.u, ptr %0, align 8, !tbaa !14
  %.not47 = icmp eq ptr %i.u, %.val38
  br i1 %.not47, label %parser_skip_inner_list.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = tail call fastcc i32 @parser_bare_item(ptr noundef nonnull %0, ptr noundef %2)
  br label %parser_skip_inner_list.exit

parser_skip_inner_list.exit:                      ; preds = %.preheader, %bb.h, %bb.g, %bb.n, %bb.l, %bb.m, %bb.i, %parser_discard_sp.exit, %bb.o, %bb.f
  %.0 = phi i32 [ %i.v, %bb.o ], [ -2, %bb.f ], [ -1, %bb.n ], [ -1, %parser_discard_sp.exit ], [ -1, %bb.i ], [ 0, %bb.l ], [ 0, %bb.m ], [ -1, %bb.g ], [ -1, %bb.h ], [ %i.d, %.preheader ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -1, 1) i32 @parser_key(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 4 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !16
  switch i8 %i.b, label %bb.e [
    i8 42, label %bb.b
    i8 97, label %bb.b
    i8 98, label %bb.b
    i8 99, label %bb.b
    i8 100, label %bb.b
    i8 101, label %bb.b
    i8 102, label %bb.b
    i8 103, label %bb.b
    i8 104, label %bb.b
    i8 105, label %bb.b
    i8 106, label %bb.b
    i8 107, label %bb.b
    i8 108, label %bb.b
    i8 109, label %bb.b
    i8 110, label %bb.b
    i8 111, label %bb.b
    i8 112, label %bb.b
    i8 113, label %bb.b
    i8 114, label %bb.b
    i8 115, label %bb.b
    i8 116, label %bb.b
    i8 117, label %bb.b
    i8 118, label %bb.b
    i8 119, label %bb.b
    i8 120, label %bb.b
    i8 121, label %bb.b
    i8 122, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8
  %.val13 = load ptr, ptr %i.c, align 8, !tbaa !15 ; 4 uses
  %storemerge14 = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  store ptr %storemerge14, ptr %0, align 8, !tbaa !14
  %.not15 = icmp eq ptr %storemerge14, %.val13
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %storemerge16 = phi ptr [ %storemerge, %bb.c ], [ %storemerge14, %bb.b ] ; 3 uses
  %i.d = load i8, ptr %storemerge16, align 1, !tbaa !16
  switch i8 %i.d, label %._crit_edge [
    i8 95, label %bb.c
    i8 45, label %bb.c
    i8 46, label %bb.c
    i8 42, label %bb.c
    i8 48, label %bb.c
    i8 49, label %bb.c
    i8 50, label %bb.c
    i8 51, label %bb.c
    i8 52, label %bb.c
    i8 53, label %bb.c
    i8 54, label %bb.c
    i8 55, label %bb.c
    i8 56, label %bb.c
    i8 57, label %bb.c
    i8 97, label %bb.c
    i8 98, label %bb.c
    i8 99, label %bb.c
    i8 100, label %bb.c
end_hunk_0
begin_hunk_1_@parser_number:bb.a
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !16  ; 3 uses
  %.off.8 = add i8 %i.ba, -48
  %switch.8 = icmp ult i8 %.off.8, 10
  br i1 %switch.8, label %bb.m, label %bb.t

bb.m:                                             ; preds = %.lr.ph.8
  %i.bb = mul nuw nsw i64 %i.ay, 10
  %i.bc = zext nneg i8 %i.ba to i64
  %i.bd = add nsw i64 %i.bb, -48
  %i.be = add nsw i64 %i.bd, %i.bc                ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %.promoted, i64 9 ; 4 uses
  store ptr %i.bf, ptr %0, align 8, !tbaa !14
  %.not74.8 = icmp eq ptr %i.bf, %.val69
  br i1 %.not74.8, label %.thread72, label %.lr.ph.9

.lr.ph.9:                                         ; preds = %bb.m
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !16  ; 3 uses
  %.off.9 = add i8 %i.bg, -48
  %switch.9 = icmp ult i8 %.off.9, 10
  br i1 %switch.9, label %bb.n, label %bb.t

bb.n:                                             ; preds = %.lr.ph.9
  %i.bh = mul nuw nsw i64 %i.be, 10
  %i.bi = zext nneg i8 %i.bg to i64
  %i.bj = add nsw i64 %i.bh, -48
  %i.bk = add nsw i64 %i.bj, %i.bi                ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.promoted, i64 10 ; 4 uses
  store ptr %i.bl, ptr %0, align 8, !tbaa !14
  %.not74.9 = icmp eq ptr %i.bl, %.val69
  br i1 %.not74.9, label %.thread72, label %.lr.ph.10

.lr.ph.10:                                        ; preds = %bb.n
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !16  ; 3 uses
  %.off.10 = add i8 %i.bm, -48
  %switch.10 = icmp ult i8 %.off.10, 10
  br i1 %switch.10, label %bb.o, label %bb.t

bb.o:                                             ; preds = %.lr.ph.10
  %i.bn = mul nuw nsw i64 %i.bk, 10
  %i.bo = zext nneg i8 %i.bm to i64
  %i.bp = add nsw i64 %i.bn, -48
  %i.bq = add nsw i64 %i.bp, %i.bo                ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %.promoted, i64 11 ; 4 uses
  store ptr %i.br, ptr %0, align 8, !tbaa !14
  %.not74.10 = icmp eq ptr %i.br, %.val69
  br i1 %.not74.10, label %.thread72, label %.lr.ph.11

.lr.ph.11:                                        ; preds = %bb.o
  %i.bs = load i8, ptr %i.br, align 1, !tbaa !16  ; 3 uses
  %.off.11 = add i8 %i.bs, -48
  %switch.11 = icmp ult i8 %.off.11, 10
  br i1 %switch.11, label %bb.p, label %bb.t

bb.p:                                             ; preds = %.lr.ph.11
  %i.bt = mul nuw nsw i64 %i.bq, 10
  %i.bu = zext nneg i8 %i.bs to i64
  %i.bv = add nsw i64 %i.bt, -48
  %i.bw = add nsw i64 %i.bv, %i.bu                ; 3 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %.promoted, i64 12 ; 4 uses
  store ptr %i.bx, ptr %0, align 8, !tbaa !14
  %.not74.11 = icmp eq ptr %i.bx, %.val69
  br i1 %.not74.11, label %.thread72, label %.lr.ph.12

.lr.ph.12:                                        ; preds = %bb.p
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !16  ; 3 uses
  %.off.12 = add i8 %i.by, -48
  %switch.12 = icmp ult i8 %.off.12, 10
  br i1 %switch.12, label %bb.q, label %bb.t

bb.q:                                             ; preds = %.lr.ph.12
  %i.bz = mul nuw nsw i64 %i.bw, 10
  %i.ca = zext nneg i8 %i.by to i64
  %i.cb = add nsw i64 %i.bz, -48
  %i.cc = add nsw i64 %i.cb, %i.ca                ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.promoted, i64 13 ; 4 uses
  store ptr %i.cd, ptr %0, align 8, !tbaa !14
  %.not74.12 = icmp eq ptr %i.cd, %.val69
  br i1 %.not74.12, label %.thread72, label %.lr.ph.13

.lr.ph.13:                                        ; preds = %bb.q
  %i.ce = load i8, ptr %i.cd, align 1, !tbaa !16  ; 3 uses
  %.off.13 = add i8 %i.ce, -48
  %switch.13 = icmp ult i8 %.off.13, 10
  br i1 %switch.13, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.lr.ph.13
  %i.cf = mul nuw nsw i64 %i.cc, 10
  %i.cg = zext nneg i8 %i.ce to i64
  %i.ch = add nsw i64 %i.cf, -48
  %i.ci = add nsw i64 %i.ch, %i.cg                ; 3 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %.promoted, i64 14 ; 4 uses
  store ptr %i.cj, ptr %0, align 8, !tbaa !14
  %.not74.13 = icmp eq ptr %i.cj, %.val69
  br i1 %.not74.13, label %.thread72, label %.lr.ph.14

.lr.ph.14:                                        ; preds = %bb.r
  %i.ck = load i8, ptr %i.cj, align 1, !tbaa !16  ; 3 uses
  %.off.14 = add i8 %i.ck, -48
  %switch.14 = icmp ult i8 %.off.14, 10
  br i1 %switch.14, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.14
  %i.cl = mul nuw nsw i64 %i.ci, 10
  %i.cm = zext nneg i8 %i.ck to i64
  %i.cn = add nsw i64 %i.cl, -48
  %i.co = add nsw i64 %i.cn, %i.cm                ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.promoted, i64 15 ; 4 uses
  store ptr %i.cp, ptr %0, align 8, !tbaa !14
  %.not74.14 = icmp eq ptr %i.cp, %.val69
  br i1 %.not74.14, label %.thread72, label %.lr.ph.15

.lr.ph.15:                                        ; preds = %bb.s
  %i.cq = load i8, ptr %i.cp, align 1, !tbaa !16  ; 2 uses
  %.off.15 = add i8 %i.cq, -48
  %switch.15 = icmp ult i8 %.off.15, 10
  br i1 %switch.15, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.15, %.lr.ph.14, %.lr.ph.13, %.lr.ph.12, %.lr.ph.11, %.lr.ph.10, %.lr.ph.9, %.lr.ph.8, %.lr.ph.7, %.lr.ph.6, %.lr.ph.5, %.lr.ph.4, %.lr.ph.3, %.lr.ph.2, %.lr.ph.1
  %.ph = phi i8 [ %i.cq, %.lr.ph.15 ], [ %i.ck, %.lr.ph.14 ], [ %i.ce, %.lr.ph.13 ], [ %i.by, %.lr.ph.12 ], [ %i.bs, %.lr.ph.11 ], [ %i.bm, %.lr.ph.10 ], [ %i.bg, %.lr.ph.9 ], [ %i.ba, %.lr.ph.8 ], [ %i.au, %.lr.ph.7 ], [ %i.ao, %.lr.ph.6 ], [ %i.ai, %.lr.ph.5 ], [ %i.ac, %.lr.ph.4 ], [ %i.w, %.lr.ph.3 ], [ %i.q, %.lr.ph.2 ], [ %i.k, %.lr.ph.1 ]
  %.ph133 = phi i1 [ true, %.lr.ph.15 ], [ true, %.lr.ph.14 ], [ true, %.lr.ph.13 ], [ false, %.lr.ph.12 ], [ false, %.lr.ph.11 ], [ false, %.lr.ph.10 ], [ false, %.lr.ph.9 ], [ false, %.lr.ph.8 ], [ false, %.lr.ph.7 ], [ false, %.lr.ph.6 ], [ false, %.lr.ph.5 ], [ false, %.lr.ph.4 ], [ false, %.lr.ph.3 ], [ false, %.lr.ph.2 ], [ false, %.lr.ph.1 ]
  %.091.lcssa.ph = phi i64 [ 15, %.lr.ph.15 ], [ 14, %.lr.ph.14 ], [ 13, %.lr.ph.13 ], [ 12, %.lr.ph.12 ], [ 11, %.lr.ph.11 ], [ 10, %.lr.ph.10 ], [ 9, %.lr.ph.9 ], [ 8, %.lr.ph.8 ], [ 7, %.lr.ph.7 ], [ 6, %.lr.ph.6 ], [ 5, %.lr.ph.5 ], [ 4, %.lr.ph.4 ], [ 3, %.lr.ph.3 ], [ 2, %.lr.ph.2 ], [ 1, %.lr.ph.1 ] ; 5 uses
  %.04590.lcssa.ph = phi i64 [ %i.co, %.lr.ph.15 ], [ %i.ci, %.lr.ph.14 ], [ %i.cc, %.lr.ph.13 ], [ %i.bw, %.lr.ph.12 ], [ %i.bq, %.lr.ph.11 ], [ %i.bk, %.lr.ph.10 ], [ %i.be, %.lr.ph.9 ], [ %i.ay, %.lr.ph.8 ], [ %i.as, %.lr.ph.7 ], [ %i.am, %.lr.ph.6 ], [ %i.ag, %.lr.ph.5 ], [ %i.aa, %.lr.ph.4 ], [ %i.u, %.lr.ph.3 ], [ %i.o, %.lr.ph.2 ], [ %i.i, %.lr.ph.1 ] ; 3 uses
  %.val668789.lcssa.ph = phi ptr [ %i.cp, %.lr.ph.15 ], [ %i.cj, %.lr.ph.14 ], [ %i.cd, %.lr.ph.13 ], [ %i.bx, %.lr.ph.12 ], [ %i.br, %.lr.ph.11 ], [ %i.bl, %.lr.ph.10 ], [ %i.bf, %.lr.ph.9 ], [ %i.az, %.lr.ph.8 ], [ %i.at, %.lr.ph.7 ], [ %i.an, %.lr.ph.6 ], [ %i.ah, %.lr.ph.5 ], [ %i.ab, %.lr.ph.4 ], [ %i.v, %.lr.ph.3 ], [ %i.p, %.lr.ph.2 ], [ %i.j, %.lr.ph.1 ] ; 2 uses
  %.val668789.lcssa112138 = ptrtoint ptr %.val668789.lcssa.ph to i64
  %.not57 = icmp eq i8 %.ph, 46
  br i1 %.not57, label %bb.v, label %.thread72

.thread72:                                        ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.t
  %.04586 = phi i64 [ %.04590.lcssa.ph, %bb.t ], [ %i.i, %bb.e ], [ %i.o, %bb.f ], [ %i.u, %bb.g ], [ %i.aa, %bb.h ], [ %i.ag, %bb.i ], [ %i.am, %bb.j ], [ %i.as, %bb.k ], [ %i.ay, %bb.l ], [ %i.be, %bb.m ], [ %i.bk, %bb.n ], [ %i.bq, %bb.o ], [ %i.bw, %bb.p ], [ %i.cc, %bb.q ], [ %i.ci, %bb.r ], [ %i.co, %bb.s ]
  %.not60 = icmp eq ptr %1, null
  br i1 %.not60, label %.loopexit, label %bb.u

bb.u:                                             ; preds = %.thread72
  store i32 1, ptr %1, align 8, !tbaa !19
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.cr, align 4, !tbaa !21
  %i.cs = mul nsw i64 %.04586, %.047
  br label %.loopexit.sink.split

bb.v:                                             ; preds = %bb.t
  br i1 %.ph133, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.v
  %storemerge93 = getelementptr inbounds nuw i8, ptr %.val668789.lcssa.ph, i64 1 ; 3 uses
  store ptr %storemerge93, ptr %0, align 8, !tbaa !14
  %.not7594 = icmp eq ptr %storemerge93, %.val69
  br i1 %.not7594, label %._crit_edge, label %.lr.ph98.preheader

.lr.ph98.preheader:                               ; preds = %.preheader
  %i.ct = add i64 %.091.lcssa.ph, %.val69111
  %i.cu = xor i64 %.val668789.lcssa112138, -1
  %i.cv = add i64 %i.ct, %i.cu
  br label %.lr.ph98

.lr.ph98:                                         ; preds = %.lr.ph98.preheader, %bb.x
  %storemerge97 = phi ptr [ %storemerge, %bb.x ], [ %storemerge93, %.lr.ph98.preheader ] ; 2 uses
  %.196 = phi i64 [ %i.cx, %bb.x ], [ %.091.lcssa.ph, %.lr.ph98.preheader ] ; 3 uses
  %.14695 = phi i64 [ %i.db, %bb.x ], [ %.04590.lcssa.ph, %.lr.ph98.preheader ] ; 2 uses
  %i.cw = load i8, ptr %storemerge97, align 1, !tbaa !16 ; 2 uses
  %.off61 = add i8 %i.cw, -48
  %switch62 = icmp ult i8 %.off61, 10
  br i1 %switch62, label %bb.w, label %._crit_edge

bb.w:                                             ; preds = %.lr.ph98
  %exitcond = icmp eq i64 %.196, 15
  br i1 %exitcond, label %.loopexit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cx = add nuw nsw i64 %.196, 1
  %i.cy = mul nsw i64 %.14695, 10
  %i.cz = zext nneg i8 %i.cw to i64
  %i.da = add i64 %i.cy, -48
  %i.db = add i64 %i.da, %i.cz                    ; 2 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %storemerge97, i64 1 ; 3 uses
  store ptr %storemerge, ptr %0, align 8, !tbaa !14
  %.not75 = icmp eq ptr %storemerge, %.val69
  br i1 %.not75, label %._crit_edge, label %.lr.ph98, !llvm.loop !32

._crit_edge:                                      ; preds = %bb.x, %.lr.ph98, %.preheader
  %.146.lcssa = phi i64 [ %.04590.lcssa.ph, %.preheader ], [ %.14695, %.lr.ph98 ], [ %i.db, %bb.x ]
  %.1.lcssa = phi i64 [ %.091.lcssa.ph, %.preheader ], [ %.196, %.lr.ph98 ], [ %i.cv, %bb.x ] ; 2 uses
  %i.dc = icmp eq i64 %.091.lcssa.ph, %.1.lcssa
  br i1 %i.dc, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %._crit_edge
  %i.dd = sub nsw i64 %.1.lcssa, %.091.lcssa.ph   ; 2 uses
  %i.de = icmp ugt i64 %i.dd, 3
  br i1 %i.de, label %.loopexit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.not59 = icmp eq ptr %1, null
  br i1 %.not59, label %.loopexit, label %switch.lookup

switch.lookup:                                    ; preds = %bb.z
  store i32 2, ptr %1, align 8, !tbaa !19
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.df, align 4, !tbaa !21
  %i.dg = mul nsw i64 %.146.lcssa, %.047
  %i.dh = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.dg, ptr %i.dh, align 8, !tbaa !16
  %2 = getelementptr [8 x i8], ptr @switch.table.parser_number, i64 %i.dd
  %switch.gep = getelementptr i8, ptr %2, i64 -8
  %switch.load = load i64, ptr %switch.gep, align 8
  br label %.loopexit.sink.split

.loopexit.sink.split:                             ; preds = %switch.lookup, %bb.u
  %.sink144 = phi i64 [ 8, %bb.u ], [ 16, %switch.lookup ]
  %.sink = phi i64 [ %i.cs, %bb.u ], [ %switch.load, %switch.lookup ]
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 %.sink144
  store i64 %.sink, ptr %i.di, align 8, !tbaa !16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.w, %.loopexit.sink.split, %.lr.ph.preheader, %.lr.ph.15, %bb.z, %._crit_edge, %bb.y, %bb.v, %.thread72, %bb.b
  %.048 = phi i32 [ -1, %bb.b ], [ 0, %bb.z ], [ -1, %.lr.ph.preheader ], [ 0, %.thread72 ], [ -1, %.lr.ph.15 ], [ -1, %._crit_edge ], [ -1, %bb.v ], [ 0, %.loopexit.sink.split ], [ -1, %bb.y ], [ -1, %bb.w ]
  ret i32 %.048
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @parser_date(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.sfparse_value, align 8      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !16
  %i.c = icmp eq i8 %i.b, 64
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.1, i32 noundef 624, ptr noundef nonnull @__PRETTY_FUNCTION__.parser_date) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  store ptr %i.d, ptr %0, align 8, !tbaa !14
  %i.e = getelementptr i8, ptr %0, i64 8
  %.val14 = load ptr, ptr %i.e, align 8, !tbaa !15
  %.not = icmp eq ptr %i.d, %.val14
  br i1 %.not, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = call fastcc i32 @parser_number(ptr noundef nonnull %0, ptr noundef nonnull %2)
  %.not11 = icmp eq i32 %i.f, 0
  %i.g = load i32, ptr %2, align 8
  %.not12 = icmp eq i32 %i.g, 1
  %or.cond = select i1 %.not11, i1 %.not12, i1 false
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %.not13 = icmp eq ptr %1, null
  br i1 %.not13, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !tbaa.struct !33
  store i32 7, ptr %1, align 8, !tbaa !19
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d, %bb.c
  %.0 = phi i32 [ 0, %bb.e ], [ -1, %bb.c ], [ -1, %bb.d ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #9
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @parser_byteseq(ptr nofree noundef captures(none) %0, ptr nofree noundef writeonly captures(address_is_null) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !14     ; 8 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !16
  %i.c = icmp eq i8 %i.b, 58
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 911, ptr noundef nonnull @__PRETTY_FUNCTION__.parser_byteseq) #7
  unreachable

bb.c:                                             ; preds = %bb.a
  %.ptr56 = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 3 uses
  %i.d = getelementptr i8, ptr %0, i64 8
  %.val35 = load ptr, ptr %i.d, align 8, !tbaa !15 ; 4 uses
  store ptr %.ptr56, ptr %0, align 8, !tbaa !14
  %.not42 = icmp eq ptr %.ptr56, %.val35
  br i1 %.not42, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.j
  %storemerge43.idx = phi i64 [ %storemerge43.add, %bb.j ], [ 1, %bb.c ] ; 7 uses
  %storemerge43.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %storemerge43.idx
  %i.e = load i8, ptr %storemerge43.ptr, align 1, !tbaa !16
  switch i8 %i.e, label %.loopexit [
    i8 43, label %bb.j
    i8 47, label %bb.j
    i8 48, label %bb.j
    i8 49, label %bb.j
    i8 50, label %bb.j
    i8 51, label %bb.j
    i8 52, label %bb.j
    i8 53, label %bb.j
    i8 54, label %bb.j
    i8 55, label %bb.j
    i8 56, label %bb.j
    i8 57, label %bb.j
    i8 65, label %bb.j
    i8 66, label %bb.j
    i8 67, label %bb.j
    i8 68, label %bb.j
    i8 69, label %bb.j
    i8 70, label %bb.j
    i8 71, label %bb.j
    i8 72, label %bb.j
    i8 73, label %bb.j
    i8 74, label %bb.j
    i8 75, label %bb.j
    i8 76, label %bb.j
    i8 77, label %bb.j
    i8 78, label %bb.j
    i8 79, label %bb.j
    i8 80, label %bb.j
    i8 81, label %bb.j
    i8 82, label %bb.j
    i8 83, label %bb.j
    i8 84, label %bb.j
    i8 85, label %bb.j
    i8 86, label %bb.j
    i8 87, label %bb.j
    i8 88, label %bb.j
    i8 89, label %bb.j
    i8 90, label %bb.j
    i8 97, label %bb.j
    i8 98, label %bb.j
    i8 99, label %bb.j
    i8 100, label %bb.j
    i8 101, label %bb.j
    i8 102, label %bb.j
    i8 103, label %bb.j
    i8 104, label %bb.j
    i8 105, label %bb.j
    i8 106, label %bb.j
    i8 107, label %bb.j
    i8 108, label %bb.j
    i8 109, label %bb.j
    i8 110, label %bb.j
    i8 111, label %bb.j
    i8 112, label %bb.j
    i8 113, label %bb.j
    i8 114, label %bb.j
    i8 115, label %bb.j
    i8 116, label %bb.j
    i8 117, label %bb.j
    i8 118, label %bb.j
    i8 119, label %bb.j
    i8 120, label %bb.j
    i8 121, label %bb.j
    i8 122, label %bb.j
    i8 61, label %bb.d
    i8 58, label %bb.i
  ]

bb.d:                                             ; preds = %.lr.ph
  %gepdiff = add nuw i64 %storemerge43.idx, 3
  %i.f = and i64 %gepdiff, 3
  switch i64 %i.f, label %default.unreachable52 [
    i64 0, label %.loopexit
    i64 1, label %.loopexit
    i64 2, label %bb.e
    i64 3, label %.sink.split
  ]

bb.e:                                             ; preds = %bb.d
  %storemerge43.add55 = add nuw nsw i64 %storemerge43.idx, 1 ; 2 uses
  %.ptr60 = getelementptr inbounds nuw i8, ptr %i.a, i64 %storemerge43.add55 ; 3 uses
  store ptr %.ptr60, ptr %0, align 8, !tbaa !14
  %.not36 = icmp eq ptr %.ptr60, %.val35
  br i1 %.not36, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = load i8, ptr %.ptr60, align 1, !tbaa !16
  %i.h = icmp eq i8 %i.g, 61
  br i1 %i.h, label %.sink.split, label %bb.g

default.unreachable52:                            ; preds = %bb.d
  unreachable

.sink.split:                                      ; preds = %bb.d, %bb.f
  %.sink = phi i64 [ 2, %bb.f ], [ 1, %bb.d ]
  %storemerge43.add54 = add nuw nsw i64 %storemerge43.idx, %.sink ; 2 uses
  %.ptr59 = getelementptr inbounds nuw i8, ptr %i.a, i64 %storemerge43.add54
  store ptr %.ptr59, ptr %0, align 8, !tbaa !14
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.f
  %.val.idx = phi i64 [ %storemerge43.add55, %bb.f ], [ %storemerge43.add54, %.sink.split ] ; 2 uses
  %.val.ptr = getelementptr inbounds nuw i8, ptr %i.a, i64 %.val.idx ; 2 uses
  %.not37 = icmp eq ptr %.val.ptr, %.val35
  br i1 %.not37, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = load i8, ptr %.val.ptr, align 1, !tbaa !16
  %.not29 = icmp eq i8 %i.i, 58
  br i1 %.not29, label %bb.k, label %.loopexit

bb.i:                                             ; preds = %.lr.ph
  %i.j = and i64 %storemerge43.idx, 3
  %i.k = icmp eq i64 %i.j, 2
  br i1 %i.k, label %.loopexit, label %bb.k

bb.j:                                             ; preds = %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph, %.lr.ph
  %storemerge43.add = add nuw nsw i64 %storemerge43.idx, 1 ; 2 uses
  %.ptr57 = getelementptr inbounds nuw i8, ptr %i.a, i64 %storemerge43.add ; 2 uses
  store ptr %.ptr57, ptr %0, align 8, !tbaa !14
  %.not = icmp eq ptr %.ptr57, %.val35
end_hunk_1
