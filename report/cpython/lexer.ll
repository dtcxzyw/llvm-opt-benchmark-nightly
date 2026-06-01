inline.NumInlined: 86
inline.NumDeleted: 14
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_Py_ctype_table = external local_unnamed_addr constant [256 x i32], align 16
@.str.1 = private unnamed_addr constant [28 x i8] c"invalid hexadecimal literal\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"hexadecimal\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"invalid digit '%c' in octal literal\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"invalid octal literal\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"octal\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"invalid digit '%c' in binary literal\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"invalid binary literal\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"binary\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"invalid decimal literal\00", align 1
@.str.10 = private unnamed_addr constant [97 x i8] c"leading zeros in decimal integer literals are not permitted; use an 0o prefix for octal integers\00", align 1
@.str.11 = private unnamed_addr constant [8 x i8] c"decimal\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"imaginary\00", align 1
@_Py_ctype_tolower = external local_unnamed_addr constant [256 x i8], align 16
@.str.13 = private unnamed_addr constant [39 x i8] c"too many nested f-strings or t-strings\00", align 1
@.str.14 = private unnamed_addr constant [25 x i8] c"%c-string: expecting '}'\00", align 1
@.str.15 = private unnamed_addr constant [64 x i8] c"unterminated triple-quoted string literal (detected at line %d)\00", align 1
@.str.16 = private unnamed_addr constant [86 x i8] c"unterminated string literal (detected at line %d); perhaps you escaped the end quote?\00", align 1
@.str.17 = private unnamed_addr constant [50 x i8] c"unterminated string literal (detected at line %d)\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"too many nested parentheses\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"%c-string: single '}' is not allowed\00", align 1
@.str.20 = private unnamed_addr constant [15 x i8] c"unmatched '%c'\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"%c-string: unmatched '%c'\00", align 1
@.str.22 = private unnamed_addr constant [76 x i8] c"closing parenthesis '%c' does not match opening parenthesis '%c' on line %d\00", align 1
@.str.23 = private unnamed_addr constant [65 x i8] c"closing parenthesis '%c' does not match opening parenthesis '%c'\00", align 1
@.str.24 = private unnamed_addr constant [39 x i8] c"invalid non-printable character U+%04X\00", align 1
@.str.25 = private unnamed_addr constant [38 x i8] c"source code cannot contain null bytes\00", align 1
@__func__.tok_backup = private unnamed_addr constant [11 x i8] c"tok_backup\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"tokenizer beginning of buffer\00", align 1
@.str.27 = private unnamed_addr constant [28 x i8] c"tok_backup: wrong character\00", align 1
@.str.29 = private unnamed_addr constant [38 x i8] c"'u' and 'b' prefixes are incompatible\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"'u' and 'r' prefixes are incompatible\00", align 1
@.str.31 = private unnamed_addr constant [38 x i8] c"'u' and 'f' prefixes are incompatible\00", align 1
@.str.32 = private unnamed_addr constant [38 x i8] c"'u' and 't' prefixes are incompatible\00", align 1
@.str.33 = private unnamed_addr constant [38 x i8] c"'b' and 'f' prefixes are incompatible\00", align 1
@.str.34 = private unnamed_addr constant [38 x i8] c"'b' and 't' prefixes are incompatible\00", align 1
@.str.35 = private unnamed_addr constant [38 x i8] c"'f' and 't' prefixes are incompatible\00", align 1
@PyExc_UnicodeDecodeError = external local_unnamed_addr global ptr, align 8
@.str.36 = private unnamed_addr constant [32 x i8] c"invalid character '%c' (U+%04X)\00", align 1
@.str.37 = private unnamed_addr constant [3 x i8] c"nd\00", align 1
@.str.38 = private unnamed_addr constant [4 x i8] c"lse\00", align 1
@.str.39 = private unnamed_addr constant [3 x i8] c"or\00", align 1
@.str.40 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c"ot\00", align 1
@PyExc_SyntaxWarning = external local_unnamed_addr global ptr, align 8
@.str.42 = private unnamed_addr constant [19 x i8] c"invalid %s literal\00", align 1
@.str.43 = private unnamed_addr constant [41 x i8] c"%c-string: expressions nested too deeply\00", align 1
@.str.44 = private unnamed_addr constant [86 x i8] c"%c-string: newlines are not allowed in format specifiers for single quoted %c-strings\00", align 1
@.str.45 = private unnamed_addr constant [67 x i8] c"unterminated triple-quoted %c-string literal (detected at line %d)\00", align 1
@.str.46 = private unnamed_addr constant [53 x i8] c"unterminated %c-string literal (detected at line %d)\00", align 1

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_PyLexer_update_ftstring_expr(ptr noundef captures(none) %0, i8 noundef signext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #7 ; 6 uses
  %i.d = getelementptr i8, ptr %0, i64 2864
  %i.e = getelementptr i8, ptr %0, i64 18464
  %i.f = load i32, ptr %i.e, align 8, !tbaa !17
  %i.g = sext i32 %i.f to i64
  %i.h = getelementptr [104 x i8], ptr %i.d, i64 %i.g ; 8 uses
  switch i8 %1, label %bb.n [
    i8 0, label %bb.b
    i8 123, label %bb.g
    i8 125, label %bb.k
    i8 33, label %bb.k
    i8 58, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %i.h, i64 80       ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !18   ; 2 uses
  %.not39 = icmp eq ptr %i.j, null
  br i1 %.not39, label %bb.p, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %i.h, i64 72
  %i.l = load i64, ptr %i.k, align 8, !tbaa !21
  %i.m = icmp sgt i64 %i.l, -1
  br i1 %i.m, label %bb.p, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %i.h, i64 64       ; 4 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !22
  %i.p = add i64 %i.o, %i.c
  %i.q = tail call ptr @PyMem_Realloc(ptr noundef nonnull %i.j, i64 noundef %i.p) #8 ; 3 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.i, align 8, !tbaa !18
  tail call void @PyMem_Free(ptr noundef %i.s) #8
  br label %bb.o

bb.f:                                             ; preds = %bb.d
  store ptr %i.q, ptr %i.i, align 8, !tbaa !18
  %i.t = load i64, ptr %i.n, align 8, !tbaa !22
  %i.u = getelementptr i8, ptr %i.q, i64 %i.t
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.w = tail call ptr @strncpy(ptr noundef %i.u, ptr noundef %i.v, i64 noundef %i.c) #8 ; 0 uses
  %i.x = load i64, ptr %i.n, align 8, !tbaa !22
  %i.y = add i64 %i.x, %i.c
  store i64 %i.y, ptr %i.n, align 8, !tbaa !22
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.z = getelementptr i8, ptr %i.h, i64 80       ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !18  ; 2 uses
  %.not = icmp eq ptr %i.aa, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @PyMem_Free(ptr noundef nonnull %i.aa) #8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ab = tail call ptr @PyMem_Malloc(i64 noundef %i.c) #8 ; 3 uses
  store ptr %i.ab, ptr %i.z, align 8, !tbaa !18
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ad = getelementptr i8, ptr %i.h, i64 64
  store i64 %i.c, ptr %i.ad, align 8, !tbaa !22
  %i.ae = getelementptr i8, ptr %i.h, i64 72
  store i64 -1, ptr %i.ae, align 8, !tbaa !21
  %i.af = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.ag = tail call ptr @strncpy(ptr noundef nonnull %i.ab, ptr noundef %i.af, i64 noundef %i.c) #8 ; 0 uses
  br label %bb.p

bb.k:                                             ; preds = %bb.a, %bb.a
  %i.ah = getelementptr i8, ptr %0, i64 56
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !23
  %i.aj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ai) #7
  %i.ak = getelementptr i8, ptr %i.h, i64 72
  store i64 %i.aj, ptr %i.ak, align 8, !tbaa !21
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.al = getelementptr i8, ptr %i.h, i64 72      ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !21
  %i.an = icmp eq i64 %i.am, -1
  br i1 %i.an, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr i8, ptr %0, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !23
  %i.aq = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ap) #7
  store i64 %i.aq, ptr %i.al, align 8, !tbaa !21
  br label %bb.p

bb.n:                                             ; preds = %bb.a
  unreachable

bb.o:                                             ; preds = %bb.i, %bb.e
  %i.ar = getelementptr i8, ptr %0, i64 64
  store i32 15, ptr %i.ar, align 8, !tbaa !24
  br label %bb.p

bb.p:                                             ; preds = %bb.f, %bb.j, %bb.k, %bb.m, %bb.l, %bb.b, %bb.c, %bb.o
  %.0 = phi i32 [ 1, %bb.b ], [ 0, %bb.o ], [ 1, %bb.c ], [ 1, %bb.l ], [ 1, %bb.m ], [ 1, %bb.k ], [ 1, %bb.j ], [ 1, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

declare ptr @PyMem_Realloc(ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @PyMem_Free(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #3

declare ptr @PyMem_Malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define hidden i32 @_PyTokenizer_Get(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2864       ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 18464      ; 10 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr [104 x i8], ptr %i.a, i64 %i.d ; 21 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !25
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = tail call fastcc i32 @tok_get_normal_mode(ptr noundef nonnull %0, ptr noundef nonnull %i.e, ptr noundef %1)
  br label %tok_get.exit

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 8          ; 47 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11   ; 2 uses
  %i.k = getelementptr i8, ptr %0, i64 56         ; 7 uses
  store ptr %i.j, ptr %i.k, align 8, !tbaa !23
  %i.l = getelementptr i8, ptr %0, i64 512        ; 3 uses
  %i.m = load i32, ptr %i.l, align 8, !tbaa !26
  %i.n = getelementptr i8, ptr %0, i64 516
  store i32 %i.m, ptr %i.n, align 4, !tbaa !27
  %i.o = getelementptr i8, ptr %0, i64 524        ; 32 uses
  %i.p = load i32, ptr %i.o, align 4, !tbaa !28
  %i.q = getelementptr i8, ptr %0, i64 520
  store i32 %i.p, ptr %i.q, align 8, !tbaa !29
  %i.r = getelementptr i8, ptr %0, i64 16         ; 27 uses
  %i.s = getelementptr i8, ptr %0, i64 64         ; 19 uses
  %i.t = getelementptr i8, ptr %0, i64 2848       ; 8 uses
  %i.u = getelementptr i8, ptr %0, i64 2776       ; 10 uses
  %.pre39.i.i.i = load ptr, ptr %i.r, align 8, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %bb.c
  %.pre39.i301.i.i = phi ptr [ %i.ad, %bb.j ], [ %.pre39.i.i.i, %bb.c ] ; 5 uses
  %i.v = phi ptr [ %i.ac, %bb.j ], [ %i.j, %bb.c ] ; 9 uses
  %.not.i.i.i = icmp eq ptr %i.v, %.pre39.i301.i.i
  br i1 %.not.i.i.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %i.o, align 4, !tbaa !28   ; 3 uses
  %i.x = icmp ugt i32 %i.w, 2147483646
  br i1 %i.x, label %bb.f, label %tok_nextc.exit.i.i

bb.f:                                             ; preds = %bb.e
  store i32 29, ptr %i.s, align 8, !tbaa !24
  br label %tok_backup.exit313.i.i

bb.g:                                             ; preds = %bb.d
  %i.y = load i32, ptr %i.s, align 8, !tbaa !24
  %.not21.i.i.i = icmp eq i32 %i.y, 10
  br i1 %.not21.i.i.i, label %bb.h, label %tok_backup.exit313.i.i

bb.h:                                             ; preds = %bb.g
  %i.z = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.aa = tail call i32 %i.z(ptr noundef nonnull %0) #8, !inline_history !32
  %.not22.i.i.i = icmp eq i32 %i.aa, 0
  br i1 %.not22.i.i.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ab = load ptr, ptr %i.r, align 8, !tbaa !30  ; 3 uses
  store ptr %i.ab, ptr %i.i, align 8, !tbaa !11
  br label %tok_backup.exit313.i.i

bb.j:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.i, align 8, !tbaa !11  ; 4 uses
  store ptr %i.ac, ptr %i.u, align 8, !tbaa !33
  %i.ad = load ptr, ptr %i.r, align 8, !tbaa !30  ; 2 uses
  %i.ae = ptrtoint ptr %i.ad to i64
  %i.af = ptrtoint ptr %i.ac to i64
end_hunk_0
begin_hunk_1_@tok_continuation_line:bb.a
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.av to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = tail call ptr @memchr(ptr noundef readonly %i.av, i32 noundef 0, i64 noundef %i.az) #7
  %.not24.i30 = icmp eq ptr %i.ba, null
  br i1 %.not24.i30, label %.preheader, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bb = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  br label %tok_nextc.exit31.thread.sink.split

tok_nextc.exit31:                                 ; preds = %bb.l
  %i.bc = add nuw nsw i32 %i.aq, 1
  store i32 %i.bc, ptr %i.g, align 4, !tbaa !28
  %i.bd = getelementptr i8, ptr %i.ap, i64 1
  store ptr %i.bd, ptr %i.a, align 8, !tbaa !11
  %i.be = load i8, ptr %i.ap, align 1, !tbaa !34  ; 2 uses
  %i.bf = zext i8 %i.be to i32
  store ptr %i.ap, ptr %i.a, align 8, !tbaa !11
  %i.bg = load ptr, ptr %0, align 8, !tbaa !35
  %i.bh = icmp ult ptr %i.ap, %i.bg
  br i1 %i.bh, label %bb.q, label %bb.r

tok_nextc.exit31.thread.sink.split:               ; preds = %bb.n, %bb.p
  %i.bi = load ptr, ptr %i.b, align 8, !tbaa !30
  br label %tok_nextc.exit31.thread

tok_nextc.exit31.thread:                          ; preds = %bb.m, %tok_nextc.exit31.thread.sink.split, %bb.l
  %i.bj = phi ptr [ %i.ao, %bb.l ], [ %i.bi, %tok_nextc.exit31.thread.sink.split ], [ %i.ao, %bb.m ]
  store i32 11, ptr %i.c, align 8, !tbaa !24
  store ptr %i.bj, ptr %i.a, align 8, !tbaa !11
  br label %bb.t

bb.q:                                             ; preds = %tok_nextc.exit31
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.r:                                             ; preds = %tok_nextc.exit31
  %i.bk = load i8, ptr %i.ap, align 1, !tbaa !34
  %.not6.i = icmp eq i8 %i.bk, %i.be
  br i1 %.not6.i, label %tok_backup.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

tok_backup.exit:                                  ; preds = %bb.r
  store i32 %i.aq, ptr %i.g, align 4, !tbaa !28
  br label %bb.t

bb.t:                                             ; preds = %tok_backup.exit, %tok_nextc.exit31.thread, %tok_nextc.exit23.thread
  %.013 = phi i32 [ -1, %tok_nextc.exit23.thread ], [ -1, %tok_nextc.exit31.thread ], [ %i.bf, %tok_backup.exit ]
  ret i32 %.013
}

declare i32 @_PyLexer_token_setup(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @PyErr_Occurred() local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc void @tok_backup(ptr noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, -1
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.c = getelementptr i8, ptr %i.b, i64 -1       ; 3 uses
  store ptr %i.c, ptr %i.a, align 8, !tbaa !11
  %i.d = load ptr, ptr %0, align 8, !tbaa !35
  %i.e = icmp ult ptr %i.c, %i.d
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.f = load i8, ptr %i.c, align 1, !tbaa !34
  %i.g = trunc i32 %1 to i8
  %.not6 = icmp eq i8 %i.f, %i.g
  br i1 %.not6, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.h = getelementptr i8, ptr %0, i64 524        ; 2 uses
  %i.i = load i32, ptr %i.h, align 4, !tbaa !28
  %i.j = add i32 %i.i, -1
  store i32 %i.j, ptr %i.h, align 4, !tbaa !28
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.a
  ret void
}

declare i32 @_PyTokenizer_indenterror(ptr noundef) local_unnamed_addr #2

declare i32 @_PyLexer_type_comment_token_setup(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @_PyTokenizer_syntaxerror(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @verify_end_of_number(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 18468
  %i.b = load i32, ptr %i.a, align 4, !tbaa !60
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %tok_nextc.exit67

bb.b:                                             ; preds = %bb.a
  switch i32 %1, label %tok_backup.exit.thread [
    i32 97, label %bb.c
    i32 101, label %bb.d
    i32 102, label %bb.e
    i32 105, label %bb.f
    i32 111, label %bb.u
    i32 110, label %bb.v
  ]

bb.c:                                             ; preds = %bb.b
  %i.c = tail call fastcc i32 @lookahead(ptr noundef nonnull %0, ptr noundef nonnull @.str.37)
  br label %tok_backup.exit

bb.d:                                             ; preds = %bb.b
  %i.d = tail call fastcc i32 @lookahead(ptr noundef nonnull %0, ptr noundef nonnull @.str.38)
  br label %tok_backup.exit

bb.e:                                             ; preds = %bb.b
  %i.e = tail call fastcc i32 @lookahead(ptr noundef nonnull %0, ptr noundef nonnull @.str.39)
  br label %tok_backup.exit

bb.f:                                             ; preds = %bb.b
  %i.f = getelementptr i8, ptr %0, i64 8          ; 6 uses
  %i.g = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.h = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 2848
  %i.j = getelementptr i8, ptr %0, i64 2776
  %.pre.i = load ptr, ptr %i.f, align 8, !tbaa !11
  %.pre39.i = load ptr, ptr %i.g, align 8, !tbaa !30
  br label %bb.g

bb.g:                                             ; preds = %bb.m, %bb.f
  %i.k = phi ptr [ %i.u, %bb.m ], [ %.pre39.i, %bb.f ]
  %i.l = phi ptr [ %i.t, %bb.m ], [ %.pre.i, %bb.f ] ; 6 uses
  %.not.i = icmp eq ptr %i.l, %i.k
  br i1 %.not.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr i8, ptr %0, i64 524        ; 3 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !28   ; 3 uses
  %i.o = icmp ugt i32 %i.n, 2147483646
  br i1 %i.o, label %bb.i, label %tok_nextc.exit

bb.i:                                             ; preds = %bb.h
  store i32 29, ptr %i.h, align 8, !tbaa !24
  br label %tok_backup.exit.thread

bb.j:                                             ; preds = %bb.g
  %i.p = load i32, ptr %i.h, align 8, !tbaa !24
  %.not21.i = icmp eq i32 %i.p, 10
  br i1 %.not21.i, label %bb.k, label %tok_backup.exit.thread

bb.k:                                             ; preds = %bb.j
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !31
  %i.r = tail call i32 %i.q(ptr noundef nonnull %0) #8, !inline_history !53
  %.not22.i = icmp eq i32 %i.r, 0
  br i1 %.not22.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.s = load ptr, ptr %i.g, align 8, !tbaa !30
  store ptr %i.s, ptr %i.f, align 8, !tbaa !11
  br label %tok_backup.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.t = load ptr, ptr %i.f, align 8, !tbaa !11   ; 4 uses
  store ptr %i.t, ptr %i.j, align 8, !tbaa !33
  %i.u = load ptr, ptr %i.g, align 8, !tbaa !30   ; 2 uses
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = tail call ptr @memchr(ptr noundef readonly %i.t, i32 noundef 0, i64 noundef %i.x) #7
  %.not24.i = icmp eq ptr %i.y, null
  br i1 %.not24.i, label %bb.g, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  %i.aa = load ptr, ptr %i.g, align 8, !tbaa !30
  store ptr %i.aa, ptr %i.f, align 8, !tbaa !11
  br label %tok_backup.exit.thread

tok_nextc.exit:                                   ; preds = %bb.h
  %i.ab = add nuw nsw i32 %i.n, 1
  store i32 %i.ab, ptr %i.m, align 4, !tbaa !28
  %i.ac = getelementptr i8, ptr %i.l, i64 1
  store ptr %i.ac, ptr %i.f, align 8, !tbaa !11
  %i.ad = load i8, ptr %i.l, align 1, !tbaa !34   ; 2 uses
  switch i8 %i.ad, label %bb.p [
    i8 115, label %bb.o
    i8 110, label %bb.o
    i8 102, label %bb.o
  ]

bb.o:                                             ; preds = %tok_nextc.exit, %tok_nextc.exit, %tok_nextc.exit
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %tok_nextc.exit
  %.050.ph = phi i32 [ 0, %tok_nextc.exit ], [ 1, %bb.o ]
  store ptr %i.l, ptr %i.f, align 8, !tbaa !11
  %i.ae = load ptr, ptr %0, align 8, !tbaa !35
  %i.af = icmp ult ptr %i.l, %i.ae
  br i1 %i.af, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.ag = load i8, ptr %i.l, align 1, !tbaa !34
  %.not6.i = icmp eq i8 %i.ag, %i.ad
  br i1 %.not6.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

bb.t:                                             ; preds = %bb.r
  store i32 %i.n, ptr %i.m, align 4, !tbaa !28
  br label %tok_backup.exit

bb.u:                                             ; preds = %bb.b
  %i.ah = tail call fastcc i32 @lookahead(ptr noundef nonnull %0, ptr noundef nonnull @.str.40)
  br label %tok_backup.exit

bb.v:                                             ; preds = %bb.b
  %i.ai = tail call fastcc i32 @lookahead(ptr noundef nonnull %0, ptr noundef nonnull @.str.41)
  br label %tok_backup.exit

tok_backup.exit:                                  ; preds = %bb.t, %bb.d, %bb.v, %bb.u, %bb.e, %bb.c
  %.151 = phi i32 [ %i.c, %bb.c ], [ %i.d, %bb.d ], [ %i.e, %bb.e ], [ %.050.ph, %bb.t ], [ %i.ah, %bb.u ], [ %i.ai, %bb.v ]
  %.not54 = icmp eq i32 %.151, 0
  br i1 %.not54, label %tok_backup.exit.thread, label %bb.w

bb.w:                                             ; preds = %tok_backup.exit
  %.not.i57 = icmp eq i32 %1, -1
  br i1 %.not.i57, label %tok_backup.exit59, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.aj = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !11
  %i.al = getelementptr i8, ptr %i.ak, i64 -1     ; 3 uses
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !11
  %i.am = load ptr, ptr %0, align 8, !tbaa !35
  %i.an = icmp ult ptr %i.al, %i.am
  br i1 %i.an, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.ao = load i8, ptr %i.al, align 1, !tbaa !34
  %i.ap = trunc i32 %1 to i8
  %.not6.i58 = icmp eq i8 %i.ao, %i.ap
  br i1 %.not6.i58, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.aq = getelementptr i8, ptr %0, i64 524       ; 2 uses
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !28
  %i.as = add i32 %i.ar, -1
  store i32 %i.as, ptr %i.aq, align 4, !tbaa !28
  br label %tok_backup.exit59

tok_backup.exit59:                                ; preds = %bb.w, %bb.ab
  %i.at = load ptr, ptr @PyExc_SyntaxWarning, align 8, !tbaa !66
  %i.au = tail call i32 (ptr, ptr, ptr, ...) @_PyTokenizer_parser_warn(ptr noundef nonnull %0, ptr noundef %i.at, ptr noundef nonnull @.str.42, ptr noundef %2) #8
  %.not55 = icmp eq i32 %i.au, 0
  br i1 %.not55, label %bb.ac, label %tok_nextc.exit67

bb.ac:                                            ; preds = %tok_backup.exit59
  %i.av = getelementptr i8, ptr %0, i64 8         ; 5 uses
  %i.aw = getelementptr i8, ptr %0, i64 16        ; 4 uses
  %i.ax = getelementptr i8, ptr %0, i64 64        ; 2 uses
  %i.ay = getelementptr i8, ptr %0, i64 2848
  %i.az = getelementptr i8, ptr %0, i64 2776
  %.pre.i60 = load ptr, ptr %i.av, align 8, !tbaa !11
  %.pre39.i61 = load ptr, ptr %i.aw, align 8, !tbaa !30
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ak, %bb.ac
  %i.ba = phi ptr [ %i.bm, %bb.ak ], [ %.pre39.i61, %bb.ac ]
  %i.bb = phi ptr [ %i.bl, %bb.ak ], [ %.pre.i60, %bb.ac ] ; 2 uses
  %.not.i62 = icmp eq ptr %i.bb, %i.ba
  br i1 %.not.i62, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bc = getelementptr i8, ptr %0, i64 524       ; 2 uses
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !28 ; 2 uses
  %i.be = icmp ugt i32 %i.bd, 2147483646
  br i1 %i.be, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  store i32 29, ptr %i.ax, align 8, !tbaa !24
  br label %tok_nextc.exit67

bb.ag:                                            ; preds = %bb.ae
  %i.bf = add nuw nsw i32 %i.bd, 1
  store i32 %i.bf, ptr %i.bc, align 4, !tbaa !28
  %i.bg = getelementptr i8, ptr %i.bb, i64 1
  store ptr %i.bg, ptr %i.av, align 8, !tbaa !11
  br label %tok_nextc.exit67

bb.ah:                                            ; preds = %bb.ad
  %i.bh = load i32, ptr %i.ax, align 8, !tbaa !24
  %.not21.i64 = icmp eq i32 %i.bh, 10
  br i1 %.not21.i64, label %bb.ai, label %tok_nextc.exit67

bb.ai:                                            ; preds = %bb.ah
  %i.bi = load ptr, ptr %i.ay, align 8, !tbaa !31
  %i.bj = tail call i32 %i.bi(ptr noundef nonnull %0) #8, !inline_history !53
  %.not22.i65 = icmp eq i32 %i.bj, 0
  br i1 %.not22.i65, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.bk = load ptr, ptr %i.aw, align 8, !tbaa !30
  store ptr %i.bk, ptr %i.av, align 8, !tbaa !11
  br label %tok_nextc.exit67

bb.ak:                                            ; preds = %bb.ai
  %i.bl = load ptr, ptr %i.av, align 8, !tbaa !11 ; 4 uses
  store ptr %i.bl, ptr %i.az, align 8, !tbaa !33
  %i.bm = load ptr, ptr %i.aw, align 8, !tbaa !30 ; 2 uses
  %i.bn = ptrtoint ptr %i.bm to i64
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = sub i64 %i.bn, %i.bo
  %i.bq = tail call ptr @memchr(ptr noundef readonly %i.bl, i32 noundef 0, i64 noundef %i.bp) #7
  %.not24.i66 = icmp eq ptr %i.bq, null
  br i1 %.not24.i66, label %bb.ad, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.br = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  %i.bs = load ptr, ptr %i.aw, align 8, !tbaa !30
  store ptr %i.bs, ptr %i.av, align 8, !tbaa !11
  br label %tok_nextc.exit67

tok_backup.exit.thread:                           ; preds = %bb.j, %bb.n, %bb.l, %bb.i, %bb.b, %tok_backup.exit
  %i.bt = icmp slt i32 %1, 128
  br i1 %i.bt, label %bb.am, label %tok_nextc.exit67

bb.am:                                            ; preds = %tok_backup.exit.thread
  %i.bu = and i32 %1, -33
  %i.bv = add i32 %i.bu, -65
  %or.cond = icmp ult i32 %i.bv, 26
  br i1 %or.cond, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bw = add i32 %1, -48
  %or.cond9 = icmp ult i32 %i.bw, 10
  %i.bx = icmp eq i32 %1, 95
  %or.cond11 = or i1 %i.bx, %or.cond9
  br i1 %or.cond11, label %bb.ao, label %tok_nextc.exit67

bb.ao:                                            ; preds = %bb.am, %bb.an
  %i.by = getelementptr i8, ptr %0, i64 8         ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !11
  %i.ca = getelementptr i8, ptr %i.bz, i64 -1     ; 3 uses
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !11
  %i.cb = load ptr, ptr %0, align 8, !tbaa !35
  %i.cc = icmp ult ptr %i.ca, %i.cb
  br i1 %i.cc, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.aq:                                            ; preds = %bb.ao
  %i.cd = load i8, ptr %i.ca, align 1, !tbaa !34
  %i.ce = trunc nuw nsw i32 %1 to i8
  %.not6.i69 = icmp eq i8 %i.cd, %i.ce
  br i1 %.not6.i69, label %tok_backup.exit70, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

tok_backup.exit70:                                ; preds = %bb.aq
  %i.cf = getelementptr i8, ptr %0, i64 524       ; 2 uses
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !28
  %i.ch = add i32 %i.cg, -1
  store i32 %i.ch, ptr %i.cf, align 4, !tbaa !28
  %i.ci = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.42, ptr noundef %2) #8 ; 0 uses
  br label %tok_nextc.exit67

tok_nextc.exit67:                                 ; preds = %bb.ah, %bb.al, %bb.aj, %bb.ag, %bb.af, %tok_backup.exit70, %tok_backup.exit59, %tok_backup.exit.thread, %bb.an, %bb.a
  %.1 = phi i32 [ 1, %bb.a ], [ 0, %tok_backup.exit70 ], [ 0, %tok_backup.exit59 ], [ 1, %tok_backup.exit.thread ], [ 1, %bb.an ], [ 1, %bb.af ], [ 1, %bb.ag ], [ 1, %bb.al ], [ 1, %bb.aj ], [ 1, %bb.ah ]
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 256) i32 @tok_decimal_tail(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 10 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 7 uses
  %i.c = getelementptr i8, ptr %0, i64 64         ; 4 uses
end_hunk_1
