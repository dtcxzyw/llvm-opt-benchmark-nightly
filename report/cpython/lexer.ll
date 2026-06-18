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
@switch.table.verify_end_of_number = private unnamed_addr constant [14 x i8] c"\01\00\00\00\00\00\00\00\01\00\00\00\00\01", align 4

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_PyLexer_update_ftstring_expr(ptr nofree noundef captures(none) %0, i8 noundef signext %1) local_unnamed_addr #0 {
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
  %i.i = getelementptr i8, ptr %0, i64 8          ; 46 uses
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
  %i.ag = sub i64 %i.ae, %i.af
  %i.ah = tail call ptr @memchr(ptr noundef readonly %i.ac, i32 noundef 0, i64 noundef %i.ag) #7
  %.not24.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not24.i.i.i, label %bb.d, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ai = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  %i.aj = load ptr, ptr %i.r, align 8, !tbaa !30  ; 3 uses
  store ptr %i.aj, ptr %i.i, align 8, !tbaa !11
  br label %tok_backup.exit313.i.i

tok_nextc.exit.i.i:                               ; preds = %bb.e
  %i.ak = add nuw nsw i32 %i.w, 1
  store i32 %i.ak, ptr %i.o, align 4, !tbaa !28
  %i.al = getelementptr i8, ptr %i.v, i64 1       ; 2 uses
  store ptr %i.al, ptr %i.i, align 8, !tbaa !11
  %i.am = load i8, ptr %i.v, align 1, !tbaa !34   ; 2 uses
  %i.an = icmp eq i8 %i.am, 123
  br i1 %i.an, label %.preheader12.i, label %bb.ac

.preheader12.i:                                   ; preds = %tok_nextc.exit.i.i, %bb.q
  %i.ao = phi ptr [ %i.ax, %bb.q ], [ %.pre39.i301.i.i, %tok_nextc.exit.i.i ] ; 4 uses
  %i.ap = phi ptr [ %i.aw, %bb.q ], [ %i.al, %tok_nextc.exit.i.i ] ; 9 uses
  %.not.i302.i.i = icmp eq ptr %i.ap, %i.ao
  br i1 %.not.i302.i.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %.preheader12.i
  %i.aq = load i32, ptr %i.o, align 4, !tbaa !28  ; 3 uses
  %i.ar = icmp ugt i32 %i.aq, 2147483646
  br i1 %i.ar, label %bb.m, label %tok_nextc.exit307.i.i

bb.m:                                             ; preds = %bb.l
  store i32 29, ptr %i.s, align 8, !tbaa !24
  br label %tok_backup.exit.i.i

bb.n:                                             ; preds = %.preheader12.i
  %i.as = load i32, ptr %i.s, align 8, !tbaa !24
  %.not21.i304.i.i = icmp eq i32 %i.as, 10
  br i1 %.not21.i304.i.i, label %bb.o, label %tok_backup.exit.i.i

bb.o:                                             ; preds = %bb.n
  %i.at = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.au = tail call i32 %i.at(ptr noundef nonnull %0) #8, !inline_history !32
  %.not22.i305.i.i = icmp eq i32 %i.au, 0
  br i1 %.not22.i305.i.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = load ptr, ptr %i.r, align 8, !tbaa !30  ; 2 uses
  br label %tok_backup.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.aw = load ptr, ptr %i.i, align 8, !tbaa !11  ; 4 uses
  store ptr %i.aw, ptr %i.u, align 8, !tbaa !33
  %i.ax = load ptr, ptr %i.r, align 8, !tbaa !30  ; 2 uses
  %i.ay = ptrtoint ptr %i.ax to i64
  %i.az = ptrtoint ptr %i.aw to i64
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = tail call ptr @memchr(ptr noundef readonly %i.aw, i32 noundef 0, i64 noundef %i.ba) #7
  %.not24.i306.i.i = icmp eq ptr %i.bb, null
  br i1 %.not24.i306.i.i, label %.preheader12.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  %i.bd = load ptr, ptr %i.r, align 8, !tbaa !30  ; 2 uses
  br label %tok_backup.exit.i.i

tok_nextc.exit307.i.i:                            ; preds = %bb.l
  %i.be = add nuw nsw i32 %i.aq, 1
  store i32 %i.be, ptr %i.o, align 4, !tbaa !28
  %i.bf = getelementptr i8, ptr %i.ap, i64 1
  store ptr %i.bf, ptr %i.i, align 8, !tbaa !11
  %i.bg = load i8, ptr %i.ap, align 1, !tbaa !34  ; 2 uses
  store ptr %i.ap, ptr %i.i, align 8, !tbaa !11
  %i.bh = load ptr, ptr %0, align 8, !tbaa !35
  %i.bi = icmp ult ptr %i.ap, %i.bh
  br i1 %i.bi, label %bb.s, label %bb.t

bb.s:                                             ; preds = %tok_nextc.exit307.i.i
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.t:                                             ; preds = %tok_nextc.exit307.i.i
  %i.bj = load i8, ptr %i.ap, align 1, !tbaa !34
  %.not6.i.i.i = icmp eq i8 %i.bj, %i.bg
  br i1 %.not6.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

bb.v:                                             ; preds = %bb.t
  store i32 %i.aq, ptr %i.o, align 4, !tbaa !28
  %i.bk = icmp eq i8 %i.bg, 123
  br label %tok_backup.exit.i.i

tok_backup.exit.i.i:                              ; preds = %bb.n, %bb.v, %bb.r, %bb.p, %bb.m
  %.pre39.i315572.i.i.a = phi ptr [ %i.ao, %bb.v ], [ %i.bd, %bb.r ], [ %i.ao, %bb.m ], [ %i.av, %bb.p ], [ %i.ao, %bb.n ]
  %i.bl = phi ptr [ %i.ap, %bb.v ], [ %i.bd, %bb.r ], [ %i.ap, %bb.m ], [ %i.av, %bb.p ], [ %i.ap, %bb.n ]
  %.0.i303384.i.i = phi i1 [ %i.bk, %bb.v ], [ false, %bb.r ], [ false, %bb.m ], [ false, %bb.p ], [ false, %bb.n ]
  %i.bm = getelementptr i8, ptr %i.bl, i64 -1     ; 4 uses
  store ptr %i.bm, ptr %i.i, align 8, !tbaa !11
  %i.bn = load ptr, ptr %0, align 8, !tbaa !35
  %i.bo = icmp ult ptr %i.bm, %i.bn
  br i1 %i.bo, label %bb.w, label %bb.x

bb.w:                                             ; preds = %tok_backup.exit.i.i
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.x:                                             ; preds = %tok_backup.exit.i.i
  %i.bp = load i8, ptr %i.bm, align 1, !tbaa !34
  %.not6.i309.i.i = icmp eq i8 %i.bp, 123
  br i1 %.not6.i309.i.i, label %tok_backup.exit310.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

tok_backup.exit310.i.i:                           ; preds = %bb.x
  %i.bq = load i32, ptr %i.o, align 4, !tbaa !28
  %i.br = add i32 %i.bq, -1
  store i32 %i.br, ptr %i.o, align 4, !tbaa !28
  br i1 %.0.i303384.i.i, label %tok_backup.exit313.i.i, label %bb.z

bb.z:                                             ; preds = %tok_backup.exit310.i.i
  %i.bs = getelementptr i8, ptr %i.e, i64 8       ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 8, !tbaa !36
  %i.bu = add i32 %i.bt, 1                        ; 2 uses
  store i32 %i.bu, ptr %i.bs, align 8, !tbaa !36
  %i.bv = icmp sgt i32 %i.bu, 2
  %i.bw = load i32, ptr %i.b, align 8, !tbaa !17
  %i.bx = sext i32 %i.bw to i64                   ; 2 uses
  br i1 %i.bv, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.by = getelementptr [104 x i8], ptr %0, i64 %i.bx
  %i.bz = getelementptr i8, ptr %i.by, i64 2960
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !37
  %i.cb = icmp eq i32 %i.ca, 1
  %i.cc = select i1 %i.cb, i32 116, i32 102
  %i.cd = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.43, i32 noundef %i.cc) #8
  %i.ce = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.cd, ptr noundef null, ptr noundef null) #8
  br label %tok_get.exit

bb.ab:                                            ; preds = %bb.z
  %i.cf = getelementptr [104 x i8], ptr %i.a, i64 %i.bx
  store i32 0, ptr %i.cf, align 8, !tbaa !25
  %i.cg = tail call fastcc i32 @tok_get_normal_mode(ptr noundef nonnull %0, ptr noundef nonnull %i.e, ptr noundef %1)
  br label %tok_get.exit

bb.ac:                                            ; preds = %tok_nextc.exit.i.i
  store ptr %i.v, ptr %i.i, align 8, !tbaa !11
  %i.ch = load ptr, ptr %0, align 8, !tbaa !35
  %i.ci = icmp ult ptr %i.v, %i.ch
  br i1 %i.ci, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.ae:                                            ; preds = %bb.ac
  %i.cj = load i8, ptr %i.v, align 1, !tbaa !34
  %.not6.i312.i.i = icmp eq i8 %i.cj, %i.am
  br i1 %.not6.i312.i.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

bb.ag:                                            ; preds = %bb.ae
  store i32 %i.w, ptr %i.o, align 4, !tbaa !28
  br label %tok_backup.exit313.i.i

tok_backup.exit313.i.i:                           ; preds = %bb.g, %bb.ag, %tok_backup.exit310.i.i, %bb.k, %bb.i, %bb.f
  %.pre39.i315571.i.i.a = phi ptr [ %.pre39.i315572.i.i.a, %tok_backup.exit310.i.i ], [ %.pre39.i301.i.i, %bb.f ], [ %i.ab, %bb.i ], [ %i.aj, %bb.k ], [ %.pre39.i301.i.i, %bb.ag ], [ %.pre39.i301.i.i, %bb.g ]
  %.pre.i314567.i.i = phi ptr [ %i.bm, %tok_backup.exit310.i.i ], [ %i.v, %bb.f ], [ %i.ab, %bb.i ], [ %i.aj, %bb.k ], [ %i.v, %bb.ag ], [ %i.v, %bb.g ] ; 2 uses
  %i.ck = getelementptr i8, ptr %i.e, i64 16      ; 7 uses
  %i.cl = load i32, ptr %i.ck, align 8, !tbaa !38
  %i.cm = icmp sgt i32 %i.cl, 0
  br i1 %i.cm, label %.lr.ph.i.i, label %._crit_edge.i.i

.lr.ph.i.i:                                       ; preds = %tok_backup.exit313.i.i
  %i.cn = getelementptr i8, ptr %i.e, i64 12      ; 3 uses
  br label %bb.ai

bb.ah:                                            ; preds = %tok_nextc.exit321.i.i
  %i.co = add nuw nsw i32 %.0277496.i.i, 1        ; 2 uses
  %i.cp = load i32, ptr %i.ck, align 8, !tbaa !38
  %i.cq = icmp slt i32 %i.co, %i.cp
  br i1 %i.cq, label %bb.ai, label %._crit_edge.i.i, !llvm.loop !39

bb.ai:                                            ; preds = %bb.ah, %.lr.ph.i.i
  %.pre39.i315.i.i = phi ptr [ %.pre39.i315571.i.i.a, %.lr.ph.i.i ], [ %.pre39.i315570.i.i, %bb.ah ]
  %.pre.i314.i.i = phi ptr [ %.pre.i314567.i.i, %.lr.ph.i.i ], [ %i.dj, %bb.ah ]
  %.0277496.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.co, %bb.ah ]
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aq, %bb.ai
  %.pre39.i315568.i.i = phi ptr [ %i.dc, %bb.aq ], [ %.pre39.i315.i.i, %bb.ai ] ; 4 uses
  %.pre.i314564.i.i = phi ptr [ %i.db, %bb.aq ], [ %.pre.i314.i.i, %bb.ai ] ; 5 uses
  %.not.i316.i.i = icmp eq ptr %.pre.i314564.i.i, %.pre39.i315568.i.i
  br i1 %.not.i316.i.i, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cr = load i32, ptr %i.o, align 4, !tbaa !28  ; 2 uses
  %i.cs = icmp ugt i32 %i.cr, 2147483646
  br i1 %i.cs, label %bb.al, label %bb.am

bb.al:                                            ; preds = %bb.ak
  store i32 29, ptr %i.s, align 8, !tbaa !24
  br label %tok_nextc.exit321.i.i

bb.am:                                            ; preds = %bb.ak
  %i.ct = add nuw nsw i32 %i.cr, 1
  store i32 %i.ct, ptr %i.o, align 4, !tbaa !28
  %i.cu = getelementptr i8, ptr %.pre.i314564.i.i, i64 1 ; 2 uses
  store ptr %i.cu, ptr %i.i, align 8, !tbaa !11
  %i.cv = load i8, ptr %.pre.i314564.i.i, align 1, !tbaa !34
  %i.cw = zext i8 %i.cv to i32
  br label %tok_nextc.exit321.i.i

bb.an:                                            ; preds = %bb.aj
  %i.cx = load i32, ptr %i.s, align 8, !tbaa !24
  %.not21.i318.i.i = icmp eq i32 %i.cx, 10
  br i1 %.not21.i318.i.i, label %bb.ao, label %tok_nextc.exit321.i.i

bb.ao:                                            ; preds = %bb.an
  %i.cy = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.cz = tail call i32 %i.cy(ptr noundef nonnull %0) #8, !inline_history !32
  %.not22.i319.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not22.i319.i.i, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.da = load ptr, ptr %i.r, align 8, !tbaa !30  ; 3 uses
  store ptr %i.da, ptr %i.i, align 8, !tbaa !11
  br label %tok_nextc.exit321.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.db = load ptr, ptr %i.i, align 8, !tbaa !11  ; 4 uses
  store ptr %i.db, ptr %i.u, align 8, !tbaa !33
  %i.dc = load ptr, ptr %i.r, align 8, !tbaa !30  ; 2 uses
  %i.dd = ptrtoint ptr %i.dc to i64
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = sub i64 %i.dd, %i.de
  %i.dg = tail call ptr @memchr(ptr noundef readonly %i.db, i32 noundef 0, i64 noundef %i.df) #7
  %.not24.i320.i.i = icmp eq ptr %i.dg, null
  br i1 %.not24.i320.i.i, label %bb.aj, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.dh = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  %i.di = load ptr, ptr %i.r, align 8, !tbaa !30  ; 3 uses
  store ptr %i.di, ptr %i.i, align 8, !tbaa !11
  br label %tok_nextc.exit321.i.i

tok_nextc.exit321.i.i:                            ; preds = %bb.an, %bb.ar, %bb.ap, %bb.am, %bb.al
  %.pre39.i315570.i.i = phi ptr [ %.pre39.i315568.i.i, %bb.al ], [ %.pre39.i315568.i.i, %bb.am ], [ %i.da, %bb.ap ], [ %i.di, %bb.ar ], [ %.pre39.i315568.i.i, %bb.an ]
  %i.dj = phi ptr [ %.pre.i314564.i.i, %bb.al ], [ %i.cu, %bb.am ], [ %i.da, %bb.ap ], [ %i.di, %bb.ar ], [ %.pre.i314564.i.i, %bb.an ] ; 4 uses
  %.0.i317.i.i = phi i32 [ -1, %bb.al ], [ %i.cw, %bb.am ], [ -1, %bb.ap ], [ -1, %bb.ar ], [ -1, %bb.an ] ; 3 uses
  %i.dk = load i8, ptr %i.cn, align 4, !tbaa !41
  %i.dl = sext i8 %i.dk to i32
  %.not287.i.i = icmp eq i32 %.0.i317.i.i, %i.dl
  br i1 %.not287.i.i, label %bb.ah, label %bb.as

bb.as:                                            ; preds = %tok_nextc.exit321.i.i
  %.not.i322.i.i = icmp eq i32 %.0.i317.i.i, -1
  br i1 %.not.i322.i.i, label %bb.ba, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dm = getelementptr i8, ptr %i.dj, i64 -1     ; 4 uses
  store ptr %i.dm, ptr %i.i, align 8, !tbaa !11
  %i.dn = load ptr, ptr %0, align 8, !tbaa !35
  %i.do = icmp ult ptr %i.dm, %i.dn
  br i1 %i.do, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.av:                                            ; preds = %bb.at
  %i.dp = load i8, ptr %i.dm, align 1, !tbaa !34
  %i.dq = trunc nuw i32 %.0.i317.i.i to i8
  %.not6.i323.i.i = icmp eq i8 %i.dp, %i.dq
  br i1 %.not6.i323.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.dr = load i32, ptr %i.o, align 4, !tbaa !28
  %i.ds = add i32 %i.dr, -1
  store i32 %i.ds, ptr %i.o, align 4, !tbaa !28
  br label %bb.ba

._crit_edge.i.i:                                  ; preds = %bb.ah, %tok_backup.exit313.i.i
  %i.dt = phi ptr [ %.pre.i314567.i.i, %tok_backup.exit313.i.i ], [ %i.dj, %bb.ah ]
  %i.du = getelementptr i8, ptr %i.e, i64 80      ; 2 uses
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !18 ; 2 uses
  %.not299.i.i = icmp eq ptr %i.dv, null
  br i1 %.not299.i.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %._crit_edge.i.i
  tail call void @PyMem_Free(ptr noundef nonnull %i.dv) #8
  store ptr null, ptr %i.du, align 8, !tbaa !18
  %i.dw = getelementptr i8, ptr %i.e, i64 64
  store i64 0, ptr %i.dw, align 8, !tbaa !22
  %i.dx = getelementptr i8, ptr %i.e, i64 72
  store i64 -1, ptr %i.dx, align 8, !tbaa !21
  %.pre582.i.i = load ptr, ptr %i.i, align 8, !tbaa !11
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %._crit_edge.i.i
  %i.dy = phi ptr [ %.pre582.i.i, %bb.ay ], [ %i.dt, %._crit_edge.i.i ]
  %i.dz = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.ea = load i32, ptr %i.b, align 8, !tbaa !17
  %i.eb = add i32 %i.ea, -1
  store i32 %i.eb, ptr %i.b, align 8, !tbaa !17
  %i.ec = getelementptr i8, ptr %i.e, i64 96
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !37
  %i.ee = icmp eq i32 %i.ed, 1
  %i.ef = select i1 %i.ee, i32 64, i32 61
  %i.eg = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.ef, ptr noundef %i.dz, ptr noundef %i.dy) #8
  br label %tok_get.exit

bb.ba:                                            ; preds = %bb.ax, %bb.as
  %.pre580.i191.i = phi ptr [ %i.dm, %bb.ax ], [ %i.dj, %bb.as ]
  %i.eh = load ptr, ptr %i.u, align 8, !tbaa !33
  %i.ei = getelementptr i8, ptr %0, i64 2784
  store ptr %i.eh, ptr %i.ei, align 8, !tbaa !42
  %i.ej = load i32, ptr %i.ck, align 8, !tbaa !38
  %.not288497.i.i = icmp eq i32 %i.ej, 0
  br i1 %.not288497.i.i, label %._crit_edge505.split.i.i, label %.lr.ph502.i.i

.lr.ph502.i.i:                                    ; preds = %bb.ba
  %i.ek = getelementptr i8, ptr %i.e, i64 92      ; 4 uses
  %i.el = getelementptr i8, ptr %i.e, i64 8       ; 3 uses
  %i.em = getelementptr i8, ptr %i.e, i64 20
  br label %bb.bb

.preheader.i.i:                                   ; preds = %.backedge.i.i
  %i.en = icmp sgt i32 %.2262624.i.i, 0
  %.pre580.i.pre.i = load ptr, ptr %i.i, align 8, !tbaa !11 ; 3 uses
  br i1 %i.en, label %.lr.ph504.i.i, label %._crit_edge505.split.i.i

.lr.ph504.i.i:                                    ; preds = %.preheader.i.i
  %i.eo = load i8, ptr %i.cn, align 4, !tbaa !41  ; 2 uses
  %.not.i377.i.i = icmp eq i8 %i.eo, -1
  br i1 %.not.i377.i.i, label %._crit_edge505.split.i.i, label %.lr.ph504.split.i.i

.lr.ph504.split.i.i:                              ; preds = %.lr.ph504.i.i
  %i.ep = load ptr, ptr %0, align 8, !tbaa !35
  br label %bb.en

bb.bb:                                            ; preds = %.backedge.i.i, %.lr.ph502.i.i
  %.0260499.i.i = phi i32 [ 0, %.lr.ph502.i.i ], [ %.2262624.i.i, %.backedge.i.i ]
  %.0263498.i.i = phi i32 [ 0, %.lr.ph502.i.i ], [ %.5268623.i.i, %.backedge.i.i ] ; 15 uses
  %.pre.i325.i.i = load ptr, ptr %i.i, align 8, !tbaa !11
  %.pre39.i326.i.i = load ptr, ptr %i.r, align 8, !tbaa !30
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bi, %bb.bb
  %i.eq = phi ptr [ %i.fd, %bb.bi ], [ %.pre39.i326.i.i, %bb.bb ] ; 4 uses
  %i.er = phi ptr [ %i.fc, %bb.bi ], [ %.pre.i325.i.i, %bb.bb ] ; 5 uses
  %.not.i327.i.i = icmp eq ptr %i.er, %i.eq
  br i1 %.not.i327.i.i, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.es = load i32, ptr %i.o, align 4, !tbaa !28  ; 2 uses
  %i.et = icmp ugt i32 %i.es, 2147483646
  br i1 %i.et, label %tok_nextc.exit332.thread.i.i, label %bb.be

tok_nextc.exit332.thread.i.i:                     ; preds = %bb.bd
  store i32 29, ptr %i.s, align 8, !tbaa !24
  br label %bb.bl

bb.be:                                            ; preds = %bb.bd
  %i.eu = add nuw nsw i32 %i.es, 1
  store i32 %i.eu, ptr %i.o, align 4, !tbaa !28
  %i.ev = getelementptr i8, ptr %i.er, i64 1      ; 2 uses
  store ptr %i.ev, ptr %i.i, align 8, !tbaa !11
  %i.ew = load i8, ptr %i.er, align 1, !tbaa !34
  %i.ex = zext i8 %i.ew to i32
  br label %tok_nextc.exit332thread-pre-split.i.i

bb.bf:                                            ; preds = %bb.bc
  %i.ey = load i32, ptr %i.s, align 8, !tbaa !24  ; 2 uses
  %.not21.i329.i.i = icmp eq i32 %i.ey, 10
  br i1 %.not21.i329.i.i, label %bb.bg, label %tok_nextc.exit332.i.i

bb.bg:                                            ; preds = %bb.bf
  %i.ez = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.fa = tail call i32 %i.ez(ptr noundef nonnull %0) #8, !inline_history !32
  %.not22.i330.i.i = icmp eq i32 %i.fa, 0
  br i1 %.not22.i330.i.i, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fb = load ptr, ptr %i.r, align 8, !tbaa !30  ; 3 uses
  store ptr %i.fb, ptr %i.i, align 8, !tbaa !11
  br label %tok_nextc.exit332thread-pre-split.i.i

bb.bi:                                            ; preds = %bb.bg
  %i.fc = load ptr, ptr %i.i, align 8, !tbaa !11  ; 4 uses
  store ptr %i.fc, ptr %i.u, align 8, !tbaa !33
  %i.fd = load ptr, ptr %i.r, align 8, !tbaa !30  ; 2 uses
  %i.fe = ptrtoint ptr %i.fd to i64
  %i.ff = ptrtoint ptr %i.fc to i64
  %i.fg = sub i64 %i.fe, %i.ff
  %i.fh = tail call ptr @memchr(ptr noundef readonly %i.fc, i32 noundef 0, i64 noundef %i.fg) #7
  %.not24.i331.i.i = icmp eq ptr %i.fh, null
  br i1 %.not24.i331.i.i, label %bb.bc, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.fi = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  %i.fj = load ptr, ptr %i.r, align 8, !tbaa !30  ; 3 uses
  store ptr %i.fj, ptr %i.i, align 8, !tbaa !11
  br label %tok_nextc.exit332thread-pre-split.i.i

tok_nextc.exit332thread-pre-split.i.i:            ; preds = %bb.bj, %bb.bh, %bb.be
  %.pre39.i359578.i.i.a = phi ptr [ %i.fj, %bb.bj ], [ %i.fb, %bb.bh ], [ %i.eq, %bb.be ]
  %.pre.i358575.i.i.a = phi ptr [ %i.fj, %bb.bj ], [ %i.fb, %bb.bh ], [ %i.ev, %bb.be ]
  %.0.i328.ph.i.i = phi i32 [ -1, %bb.bj ], [ -1, %bb.bh ], [ %i.ex, %bb.be ]
  %.pr.i.i = load i32, ptr %i.s, align 8, !tbaa !24
  br label %tok_nextc.exit332.i.i

tok_nextc.exit332.i.i:                            ; preds = %bb.bf, %tok_nextc.exit332thread-pre-split.i.i
  %.pre39.i359577.i.i = phi ptr [ %.pre39.i359578.i.i.a, %tok_nextc.exit332thread-pre-split.i.i ], [ %i.eq, %bb.bf ]
  %.pre.i358574.i.i = phi ptr [ %.pre.i358575.i.i.a, %tok_nextc.exit332thread-pre-split.i.i ], [ %i.er, %bb.bf ]
  %i.fk = phi i32 [ %.pr.i.i, %tok_nextc.exit332thread-pre-split.i.i ], [ %i.ey, %bb.bf ]
  %.0.i328.i.i = phi i32 [ %.0.i328.ph.i.i, %tok_nextc.exit332thread-pre-split.i.i ], [ -1, %bb.bf ]
  switch i32 %i.fk, label %bb.bl [
    i32 17, label %bb.bk
    i32 22, label %bb.bk
  ]

bb.bk:                                            ; preds = %tok_nextc.exit332.i.i, %tok_nextc.exit332.i.i
  %i.fl = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 67, ptr noundef null, ptr noundef null) #8
  br label %tok_get.exit

bb.bl:                                            ; preds = %tok_nextc.exit332.i.i, %tok_nextc.exit332.thread.i.i
  %.pre39.i351.i.i = phi ptr [ %i.eq, %tok_nextc.exit332.thread.i.i ], [ %.pre39.i359577.i.i, %tok_nextc.exit332.i.i ] ; 2 uses
  %i.fm = phi ptr [ %i.er, %tok_nextc.exit332.thread.i.i ], [ %.pre.i358574.i.i, %tok_nextc.exit332.i.i ] ; 5 uses
  %.0.i328393.i.i = phi i32 [ -1, %tok_nextc.exit332.thread.i.i ], [ %.0.i328.i.i, %tok_nextc.exit332.i.i ] ; 4 uses
  %i.fn = load i32, ptr %i.ek, align 4, !tbaa !43
  %.not289.i.i = icmp eq i32 %i.fn, 0
  br i1 %.not289.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.fo = load i32, ptr %i.el, align 8, !tbaa !36
  %i.fp = icmp sgt i32 %i.fo, -1
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %i.fq = phi i1 [ false, %bb.bl ], [ %i.fp, %bb.bm ] ; 3 uses
  %.not.i.not.not.not.i.not.not.not.not.not = icmp ne i32 %.0.i328393.i.i, -1 ; 3 uses
  br i1 %.not.i.not.not.not.i.not.not.not.not.not, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %bb.bn
  %i.fr = load i32, ptr %i.ck, align 8, !tbaa !38
  %i.fs = icmp eq i32 %i.fr, 1
  %i.ft = icmp eq i32 %.0.i328393.i.i, 10
  %or.cond.i.i = select i1 %i.fs, i1 %i.ft, i1 false
  br i1 %or.cond.i.i, label %bb.bp, label %bb.cd

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.fu = getelementptr i8, ptr %0, i64 2756
  %i.fv = load i32, ptr %i.fu, align 4, !tbaa !44
  %.not297.i.i = icmp eq i32 %i.fv, 0
  br i1 %.not297.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.fw = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 67, ptr noundef null, ptr noundef null) #8
  br label %tok_get.exit

bb.br:                                            ; preds = %bb.bp
  %or.cond5.i.i = and i1 %.not.i.not.not.not.i.not.not.not.not.not, %i.fq
  br i1 %or.cond5.i.i, label %bb.bs, label %bb.by

bb.bs:                                            ; preds = %bb.br
  %i.fx = load i32, ptr %i.ck, align 8, !tbaa !38
  %i.fy = icmp eq i32 %i.fx, 1
  br i1 %i.fy, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  %i.fz = load i32, ptr %i.b, align 8, !tbaa !17
  %i.ga = sext i32 %i.fz to i64
  %i.gb = getelementptr [104 x i8], ptr %0, i64 %i.ga
  %i.gc = getelementptr i8, ptr %i.gb, i64 2960
  %i.gd = load i32, ptr %i.gc, align 8, !tbaa !37
  %i.ge = icmp eq i32 %i.gd, 1
  %i.gf = select i1 %i.ge, i32 116, i32 102       ; 2 uses
  %i.gg = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.44, i32 noundef %i.gf, i32 noundef %i.gf) #8
  %i.gh = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.gg, ptr noundef null, ptr noundef null) #8
  br label %tok_get.exit

bb.bu:                                            ; preds = %bb.bs
  %i.gi = getelementptr i8, ptr %i.fm, i64 -1     ; 4 uses
  store ptr %i.gi, ptr %i.i, align 8, !tbaa !11
  %i.gj = load ptr, ptr %0, align 8, !tbaa !35
  %i.gk = icmp ult ptr %i.gi, %i.gj
  br i1 %i.gk, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %bb.bu
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.bw:                                            ; preds = %bb.bu
  %i.gl = load i8, ptr %i.gi, align 1, !tbaa !34
  %.not6.i333.i.i = icmp eq i8 %i.gl, 10
  br i1 %.not6.i333.i.i, label %tok_backup.exit334.i.i, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

tok_backup.exit334.i.i:                           ; preds = %bb.bw
  %i.gm = load i32, ptr %i.o, align 4, !tbaa !28
  %i.gn = add i32 %i.gm, -1
  store i32 %i.gn, ptr %i.o, align 4, !tbaa !28
  %i.go = load i32, ptr %i.b, align 8, !tbaa !17
  %i.gp = sext i32 %i.go to i64
  %i.gq = getelementptr [104 x i8], ptr %i.a, i64 %i.gp
  store i32 0, ptr %i.gq, align 8, !tbaa !25
  store i32 0, ptr %i.ek, align 4, !tbaa !43
  %i.gr = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.gs = getelementptr i8, ptr %i.e, i64 96
  %i.gt = load i32, ptr %i.gs, align 8, !tbaa !37
  %i.gu = icmp eq i32 %i.gt, 1
  %i.gv = select i1 %i.gu, i32 63, i32 60
  %i.gw = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.gv, ptr noundef %i.gr, ptr noundef nonnull %i.gi) #8
  br label %tok_get.exit

bb.by:                                            ; preds = %bb.br
  %i.gx = getelementptr i8, ptr %i.e, i64 24
  %i.gy = load ptr, ptr %i.gx, align 8, !tbaa !45
  %i.gz = getelementptr i8, ptr %i.gy, i64 1
  store ptr %i.gz, ptr %i.i, align 8, !tbaa !11
  %i.ha = getelementptr i8, ptr %i.e, i64 32
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !46
  store ptr %i.hb, ptr %i.u, align 8, !tbaa !33
  %i.hc = load i32, ptr %i.l, align 8, !tbaa !26  ; 2 uses
  %i.hd = load i32, ptr %i.b, align 8, !tbaa !17
  %i.he = sext i32 %i.hd to i64
  %i.hf = getelementptr [104 x i8], ptr %i.a, i64 %i.he ; 2 uses
  %i.hg = getelementptr i8, ptr %i.hf, i64 40
  %i.hh = load i32, ptr %i.hg, align 8, !tbaa !47
  store i32 %i.hh, ptr %i.l, align 8, !tbaa !26
  %i.hi = load i32, ptr %i.ck, align 8, !tbaa !38
end_hunk_0
begin_hunk_1_@_PyTokenizer_Get:bb.a
  %.3257.i.i = phi ptr [ %i.lm, %tok_nextc.exit357.thread.i.i ], [ %i.km, %tok_nextc.exit357.i.i ]
  %.3251.i.i = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.ln = getelementptr i8, ptr %i.e, i64 96
  %i.lo = load i32, ptr %i.ln, align 8, !tbaa !37
  %i.lp = icmp eq i32 %i.lo, 1
  %i.lq = select i1 %i.lp, i32 63, i32 60
  %i.lr = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.lq, ptr noundef %.3251.i.i, ptr noundef %.3257.i.i) #8
  br label %tok_get.exit

.preheader10.i:                                   ; preds = %bb.cf, %bb.dt
  %.pre39.i367.i.i = phi ptr [ %i.ma, %bb.dt ], [ %.pre39.i351.i.i, %bb.cf ] ; 2 uses
  %i.ls = phi ptr [ %i.lz, %bb.dt ], [ %i.fm, %bb.cf ] ; 3 uses
  %.not.i360.i.i = icmp eq ptr %i.ls, %.pre39.i367.i.i
  br i1 %.not.i360.i.i, label %bb.dq, label %bb.do

bb.do:                                            ; preds = %.preheader10.i
  %i.lt = load i32, ptr %i.o, align 4, !tbaa !28  ; 2 uses
  %i.lu = icmp ugt i32 %i.lt, 2147483646
  br i1 %i.lu, label %bb.dp, label %tok_nextc.exit365.i.i

bb.dp:                                            ; preds = %bb.do
  store i32 29, ptr %i.s, align 8, !tbaa !24
  br label %.backedge.i.i

bb.dq:                                            ; preds = %.preheader10.i
  %i.lv = load i32, ptr %i.s, align 8, !tbaa !24
  %.not21.i362.i.i = icmp eq i32 %i.lv, 10
  br i1 %.not21.i362.i.i, label %bb.dr, label %.backedge.i.i

bb.dr:                                            ; preds = %bb.dq
  %i.lw = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.lx = tail call i32 %i.lw(ptr noundef nonnull %0) #8, !inline_history !32
  %.not22.i363.i.i = icmp eq i32 %i.lx, 0
  br i1 %.not22.i363.i.i, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.ly = load ptr, ptr %i.r, align 8, !tbaa !30
  store ptr %i.ly, ptr %i.i, align 8, !tbaa !11
  br label %.backedge.i.i

bb.dt:                                            ; preds = %bb.dr
  %i.lz = load ptr, ptr %i.i, align 8, !tbaa !11  ; 4 uses
  store ptr %i.lz, ptr %i.u, align 8, !tbaa !33
  %i.ma = load ptr, ptr %i.r, align 8, !tbaa !30  ; 2 uses
  %i.mb = ptrtoint ptr %i.ma to i64
  %i.mc = ptrtoint ptr %i.lz to i64
  %i.md = sub i64 %i.mb, %i.mc
  %i.me = tail call ptr @memchr(ptr noundef readonly %i.lz, i32 noundef 0, i64 noundef %i.md) #7
  %.not24.i364.i.i = icmp eq ptr %i.me, null
  br i1 %.not24.i364.i.i, label %.preheader10.i, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.mf = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  %i.mg = load ptr, ptr %i.r, align 8, !tbaa !30
  store ptr %i.mg, ptr %i.i, align 8, !tbaa !11
  br label %.backedge.i.i

tok_nextc.exit365.i.i:                            ; preds = %bb.do
  %i.mh = add nuw nsw i32 %i.lt, 1
  store i32 %i.mh, ptr %i.o, align 4, !tbaa !28
  %i.mi = getelementptr i8, ptr %i.ls, i64 1      ; 3 uses
  store ptr %i.mi, ptr %i.i, align 8, !tbaa !11
  %i.mj = load i8, ptr %i.ls, align 1, !tbaa !34  ; 2 uses
  %i.mk = icmp eq i8 %i.mj, 13
  br i1 %i.mk, label %.preheader9.i, label %tok_nextc.exit373.i.i

.preheader9.i:                                    ; preds = %tok_nextc.exit365.i.i, %bb.eb
  %i.ml = phi ptr [ %i.mx, %bb.eb ], [ %.pre39.i367.i.i, %tok_nextc.exit365.i.i ]
  %i.mm = phi ptr [ %i.mw, %bb.eb ], [ %i.mi, %tok_nextc.exit365.i.i ] ; 3 uses
  %.not.i368.i.i = icmp eq ptr %i.mm, %i.ml
  br i1 %.not.i368.i.i, label %bb.dy, label %bb.dv

bb.dv:                                            ; preds = %.preheader9.i
  %i.mn = load i32, ptr %i.o, align 4, !tbaa !28  ; 2 uses
  %i.mo = icmp ugt i32 %i.mn, 2147483646
  br i1 %i.mo, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  store i32 29, ptr %i.s, align 8, !tbaa !24
  br label %.backedge.i.i

bb.dx:                                            ; preds = %bb.dv
  %i.mp = add nuw nsw i32 %i.mn, 1
  store i32 %i.mp, ptr %i.o, align 4, !tbaa !28
  %i.mq = getelementptr i8, ptr %i.mm, i64 1      ; 2 uses
  store ptr %i.mq, ptr %i.i, align 8, !tbaa !11
  %i.mr = load i8, ptr %i.mm, align 1, !tbaa !34
  br label %tok_nextc.exit373.i.i

bb.dy:                                            ; preds = %.preheader9.i
  %i.ms = load i32, ptr %i.s, align 8, !tbaa !24
  %.not21.i370.i.i = icmp eq i32 %i.ms, 10
  br i1 %.not21.i370.i.i, label %bb.dz, label %.backedge.i.i

bb.dz:                                            ; preds = %bb.dy
  %i.mt = load ptr, ptr %i.t, align 8, !tbaa !31
  %i.mu = tail call i32 %i.mt(ptr noundef nonnull %0) #8, !inline_history !32
  %.not22.i371.i.i = icmp eq i32 %i.mu, 0
  br i1 %.not22.i371.i.i, label %bb.ea, label %bb.eb

bb.ea:                                            ; preds = %bb.dz
  %i.mv = load ptr, ptr %i.r, align 8, !tbaa !30
  store ptr %i.mv, ptr %i.i, align 8, !tbaa !11
  br label %.backedge.i.i

bb.eb:                                            ; preds = %bb.dz
  %i.mw = load ptr, ptr %i.i, align 8, !tbaa !11  ; 4 uses
  store ptr %i.mw, ptr %i.u, align 8, !tbaa !33
  %i.mx = load ptr, ptr %i.r, align 8, !tbaa !30  ; 2 uses
  %i.my = ptrtoint ptr %i.mx to i64
  %i.mz = ptrtoint ptr %i.mw to i64
  %i.na = sub i64 %i.my, %i.mz
  %i.nb = tail call ptr @memchr(ptr noundef readonly %i.mw, i32 noundef 0, i64 noundef %i.na) #7
  %.not24.i372.i.i = icmp eq ptr %i.nb, null
  br i1 %.not24.i372.i.i, label %.preheader9.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.nc = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  %i.nd = load ptr, ptr %i.r, align 8, !tbaa !30
  store ptr %i.nd, ptr %i.i, align 8, !tbaa !11
  br label %.backedge.i.i

tok_nextc.exit373.i.i:                            ; preds = %bb.dx, %tok_nextc.exit365.i.i
  %i.ne = phi ptr [ %i.mq, %bb.dx ], [ %i.mi, %tok_nextc.exit365.i.i ]
  %.0246.in.i.i = phi i8 [ %i.mr, %bb.dx ], [ %i.mj, %tok_nextc.exit365.i.i ] ; 5 uses
  %.0246.i.i = zext i8 %.0246.in.i.i to i32
  %i.nf = load i32, ptr %i.em, align 4, !tbaa !50
  %i.ng = icmp eq i32 %i.nf, 0                    ; 2 uses
  switch i8 %.0246.in.i.i, label %bb.ej [
    i8 125, label %bb.ed
    i8 123, label %bb.ed
  ]

bb.ed:                                            ; preds = %tok_nextc.exit373.i.i, %tok_nextc.exit373.i.i
  br i1 %i.ng, label %bb.ee, label %bb.ef

bb.ee:                                            ; preds = %bb.ed
  %i.nh = tail call i32 @_PyTokenizer_warn_invalid_escape_sequence(ptr noundef nonnull %0, i32 noundef %.0246.i.i) #8
  %.not291.i.i = icmp eq i32 %i.nh, 0
  br i1 %.not291.i.i, label %._crit_edge579.i.i, label %bb.em

._crit_edge579.i.i:                               ; preds = %bb.ee
  %.pre.i.i = load ptr, ptr %i.i, align 8, !tbaa !11
  br label %bb.ef

bb.ef:                                            ; preds = %._crit_edge579.i.i, %bb.ed
  %i.ni = phi ptr [ %.pre.i.i, %._crit_edge579.i.i ], [ %i.ne, %bb.ed ]
  %i.nj = getelementptr i8, ptr %i.ni, i64 -1     ; 3 uses
  store ptr %i.nj, ptr %i.i, align 8, !tbaa !11
  %i.nk = load ptr, ptr %0, align 8, !tbaa !35
  %i.nl = icmp ult ptr %i.nj, %i.nk
  br i1 %i.nl, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.eh:                                            ; preds = %bb.ef
  %i.nm = load i8, ptr %i.nj, align 1, !tbaa !34
  %.not6.i375.i.i = icmp eq i8 %i.nm, %.0246.in.i.i
  br i1 %.not6.i375.i.i, label %tok_backup.exit376.i.i, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

tok_backup.exit376.i.i:                           ; preds = %bb.eh
  %i.nn = load i32, ptr %i.o, align 4, !tbaa !28
  %i.no = add i32 %i.nn, -1
  store i32 %i.no, ptr %i.o, align 4, !tbaa !28
  br label %.backedge.i.i, !llvm.loop !48

bb.ej:                                            ; preds = %tok_nextc.exit373.i.i
  %i.np = icmp eq i8 %.0246.in.i.i, 78
  %or.cond15.i.i = and i1 %i.np, %i.ng
  br i1 %or.cond15.i.i, label %bb.ek, label %.backedge.i.i

bb.ek:                                            ; preds = %bb.ej
  %i.nq = tail call fastcc i32 @tok_nextc(ptr noundef nonnull %0) ; 2 uses
  %i.nr = icmp eq i32 %i.nq, 123
  br i1 %i.nr, label %.backedge.i.i, label %bb.el

bb.el:                                            ; preds = %bb.ek
  tail call fastcc void @tok_backup(ptr noundef nonnull %0, i32 noundef %i.nq)
  br label %.backedge.i.i

bb.em:                                            ; preds = %bb.ee
  %i.ns = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 67, ptr noundef null, ptr noundef null) #8 ; 2 uses
  switch i8 %.0246.in.i.i, label %.backedge.i.i [
    i8 125, label %tok_get.exit
    i8 123, label %tok_get.exit
  ]

.backedge.i.i:                                    ; preds = %bb.dq, %bb.dy, %bb.em, %bb.el, %bb.ek, %bb.ej, %tok_backup.exit376.i.i, %bb.ec, %bb.ea, %bb.dw, %bb.du, %bb.ds, %bb.dp, %bb.cf, %bb.ce
  %.2262624.i.i = phi i32 [ 0, %bb.dy ], [ 0, %tok_backup.exit376.i.i ], [ %i.hv, %bb.ce ], [ 0, %bb.em ], [ 0, %bb.cf ], [ 0, %bb.el ], [ 0, %bb.ek ], [ 0, %bb.ea ], [ 0, %bb.du ], [ 0, %bb.ds ], [ 0, %bb.dp ], [ 0, %bb.dw ], [ 0, %bb.ec ], [ 0, %bb.ej ], [ 0, %bb.dq ] ; 4 uses
  %.5268623.i.i = phi i32 [ %.0263498.i.i, %bb.dy ], [ %.0263498.i.i, %tok_backup.exit376.i.i ], [ %.0263498.i.i, %bb.ce ], [ %.0263498.i.i, %bb.em ], [ %.0263498.i.i, %bb.cf ], [ %.0263498.i.i, %bb.el ], [ 1, %bb.ek ], [ %.0263498.i.i, %bb.ea ], [ %.0263498.i.i, %bb.du ], [ %.0263498.i.i, %bb.ds ], [ %.0263498.i.i, %bb.dp ], [ %.0263498.i.i, %bb.dw ], [ %.0263498.i.i, %bb.ec ], [ %.0263498.i.i, %bb.ej ], [ %.0263498.i.i, %bb.dq ]
  %i.nt = load i32, ptr %i.ck, align 8, !tbaa !38
  %.not288.i.i = icmp eq i32 %.2262624.i.i, %i.nt
  br i1 %.not288.i.i, label %.preheader.i.i, label %bb.bb, !llvm.loop !48

._crit_edge505.split.i.i:                         ; preds = %tok_backup.exit379.i.i, %.lr.ph504.i.i, %.preheader.i.i, %bb.ba
  %i.nu = phi ptr [ %.pre580.i191.i, %bb.ba ], [ %.pre580.i.pre.i, %.lr.ph504.i.i ], [ %.pre580.i.pre.i, %.preheader.i.i ], [ %i.oc, %tok_backup.exit379.i.i ]
  %i.nv = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.nw = getelementptr i8, ptr %i.e, i64 96
  %i.nx = load i32, ptr %i.nw, align 8, !tbaa !37
  %i.ny = icmp eq i32 %i.nx, 1
  %i.nz = select i1 %i.ny, i32 63, i32 60
  %i.oa = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %1, i32 noundef %i.nz, ptr noundef %i.nv, ptr noundef %i.nu) #8
  br label %tok_get.exit

bb.en:                                            ; preds = %tok_backup.exit379.i.i, %.lr.ph504.split.i.i
  %i.ob = phi ptr [ %.pre580.i.pre.i, %.lr.ph504.split.i.i ], [ %i.oc, %tok_backup.exit379.i.i ]
  %.0503.i.i = phi i32 [ 0, %.lr.ph504.split.i.i ], [ %i.oh, %tok_backup.exit379.i.i ]
  %i.oc = getelementptr i8, ptr %i.ob, i64 -1     ; 5 uses
  store ptr %i.oc, ptr %i.i, align 8, !tbaa !11
  %i.od = icmp ult ptr %i.oc, %i.ep
  br i1 %i.od, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.ep:                                            ; preds = %bb.en
  %i.oe = load i8, ptr %i.oc, align 1, !tbaa !34
  %.not6.i378.i.i = icmp eq i8 %i.oe, %i.eo
  br i1 %.not6.i378.i.i, label %tok_backup.exit379.i.i, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

tok_backup.exit379.i.i:                           ; preds = %bb.ep
  %i.of = load i32, ptr %i.o, align 4, !tbaa !28
  %i.og = add i32 %i.of, -1
  store i32 %i.og, ptr %i.o, align 4, !tbaa !28
  %i.oh = add nuw nsw i32 %.0503.i.i, 1           ; 2 uses
  %exitcond.not.i.i = icmp eq i32 %i.oh, %.2262624.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge505.split.i.i, label %bb.en, !llvm.loop !51

tok_get.exit:                                     ; preds = %bb.em, %bb.em, %bb.b, %bb.aa, %bb.ab, %bb.az, %bb.bk, %bb.bq, %bb.bt, %tok_backup.exit334.i.i, %bb.cb, %bb.cc, %bb.cj, %bb.db, %bb.dd, %bb.df, %bb.dn, %._crit_edge505.split.i.i
  %.0.i = phi i32 [ %i.h, %bb.b ], [ %i.ce, %bb.aa ], [ %i.eg, %bb.az ], [ %i.fl, %bb.bk ], [ %i.oa, %._crit_edge505.split.i.i ], [ %i.cg, %bb.ab ], [ %i.ke, %bb.dd ], [ %i.jy, %bb.db ], [ %i.hp, %bb.cb ], [ %i.lr, %bb.dn ], [ %i.kk, %bb.df ], [ %i.ie, %bb.cj ], [ %i.hr, %bb.cc ], [ %i.gw, %tok_backup.exit334.i.i ], [ %i.gh, %bb.bt ], [ %i.fw, %bb.bq ], [ %i.ns, %bb.em ], [ %i.ns, %bb.em ]
  %i.oi = getelementptr i8, ptr %0, i64 2756
  %i.oj = load i32, ptr %i.oi, align 4, !tbaa !44
  %.not = icmp eq i32 %i.oj, 0
  br i1 %.not, label %bb.es, label %bb.er

bb.er:                                            ; preds = %tok_get.exit
  %i.ok = getelementptr i8, ptr %0, i64 64
  store i32 22, ptr %i.ok, align 8, !tbaa !24
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %tok_get.exit
  %.0 = phi i32 [ 67, %bb.er ], [ %.0.i, %tok_get.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc i32 @tok_get_normal_mode(ptr noundef initializes((56, 64), (520, 524)) %0, ptr nofree noundef captures(none) %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56         ; 27 uses
  %i.b = getelementptr i8, ptr %0, i64 520        ; 5 uses
  %i.c = getelementptr i8, ptr %0, i64 488        ; 4 uses
  %i.d = getelementptr i8, ptr %0, i64 8          ; 132 uses
  %i.e = getelementptr i8, ptr %0, i64 16         ; 85 uses
  %i.f = getelementptr i8, ptr %0, i64 64         ; 57 uses
  %i.g = getelementptr i8, ptr %0, i64 2848       ; 24 uses
  %i.h = getelementptr i8, ptr %0, i64 2776       ; 31 uses
  %i.i = getelementptr i8, ptr %0, i64 524        ; 70 uses
  %i.j = getelementptr i8, ptr %0, i64 80
  %i.k = getelementptr i8, ptr %0, i64 496
  %i.l = getelementptr i8, ptr %0, i64 512        ; 8 uses
  %i.m = getelementptr i8, ptr %0, i64 528        ; 11 uses
  %i.n = getelementptr i8, ptr %0, i64 88         ; 4 uses
  %i.o = getelementptr i8, ptr %0, i64 84         ; 4 uses
  %i.p = getelementptr i8, ptr %0, i64 492        ; 7 uses
  %i.q = getelementptr i8, ptr %0, i64 2352       ; 4 uses
  %i.r = getelementptr i8, ptr %0, i64 18468      ; 7 uses
  %i.s = getelementptr i8, ptr %0, i64 2840
  %i.t = load i32, ptr getelementptr inbounds nuw (i8, ptr @_Py_ctype_table, i64 1020), align 4
  %i.u = and i32 %i.t, 4
  %.not11921533 = icmp eq i32 %i.u, 0
  %i.v = getelementptr i8, ptr %0, i64 2768       ; 2 uses
  %.pre = load i32, ptr %i.c, align 8, !tbaa !52
  %i.w = icmp eq i32 %.pre, 0
  store ptr null, ptr %i.a, align 8, !tbaa !23
  store i32 -1, ptr %i.b, align 8, !tbaa !29
  br i1 %i.w, label %.thread, label %bb.b

.critedge3182:                                    ; preds = %bb.gk
  store ptr null, ptr %i.a, align 8, !tbaa !23
  store i32 -1, ptr %i.b, align 8, !tbaa !29
  br label %bb.b

bb.b:                                             ; preds = %.critedge3182, %bb.a
  store i32 0, ptr %i.c, align 8, !tbaa !52
  br label %.outer

.outer:                                           ; preds = %bb.n, %bb.b
  %.01081.ph = phi i32 [ %i.ax, %bb.n ], [ 0, %bb.b ] ; 5 uses
  %.01078.ph = phi i32 [ %.01078, %bb.n ], [ 0, %bb.b ]
  %.01075.ph = phi i32 [ %.01075, %bb.n ], [ 0, %bb.b ]
  br label %bb.c

bb.c:                                             ; preds = %.backedge, %.outer
  %.01078 = phi i32 [ %.01078.ph, %.outer ], [ %.01078.be, %.backedge ] ; 6 uses
  %.01075 = phi i32 [ %.01075.ph, %.outer ], [ %.01075.be, %.backedge ] ; 7 uses
  %.pre.i = load ptr, ptr %i.d, align 8, !tbaa !11
  %.pre39.i = load ptr, ptr %i.e, align 8, !tbaa !30
  br label %bb.d

bb.d:                                             ; preds = %bb.j, %bb.c
  %i.x = phi ptr [ %i.ag, %bb.j ], [ %.pre39.i, %bb.c ]
  %i.y = phi ptr [ %i.af, %bb.j ], [ %.pre.i, %bb.c ] ; 6 uses
  %.not.i = icmp eq ptr %i.y, %i.x
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = load i32, ptr %i.i, align 4, !tbaa !28   ; 3 uses
  %i.aa = icmp ugt i32 %i.z, 2147483646
  br i1 %i.aa, label %bb.f, label %tok_nextc.exit

bb.f:                                             ; preds = %bb.e
  store i32 29, ptr %i.f, align 8, !tbaa !24
  br label %tok_nextc.exit.thread

bb.g:                                             ; preds = %bb.d
  %i.ab = load i32, ptr %i.f, align 8, !tbaa !24
  %.not21.i = icmp eq i32 %i.ab, 10
  br i1 %.not21.i, label %bb.h, label %tok_nextc.exit.thread

bb.h:                                             ; preds = %bb.g
  %i.ac = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.ad = tail call i32 %i.ac(ptr noundef nonnull %0) #8, !inline_history !53
  %.not22.i = icmp eq i32 %i.ad, 0
  br i1 %.not22.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ae = load ptr, ptr %i.e, align 8, !tbaa !30
  store ptr %i.ae, ptr %i.d, align 8, !tbaa !11
  br label %tok_nextc.exit.thread

bb.j:                                             ; preds = %bb.h
  %i.af = load ptr, ptr %i.d, align 8, !tbaa !11  ; 4 uses
  store ptr %i.af, ptr %i.h, align 8, !tbaa !33
  %i.ag = load ptr, ptr %i.e, align 8, !tbaa !30  ; 2 uses
  %i.ah = ptrtoint ptr %i.ag to i64
  %i.ai = ptrtoint ptr %i.af to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = tail call ptr @memchr(ptr noundef readonly %i.af, i32 noundef 0, i64 noundef %i.aj) #7
  %.not24.i = icmp eq ptr %i.ak, null
  br i1 %.not24.i, label %bb.d, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.al = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  %i.am = load ptr, ptr %i.e, align 8, !tbaa !30
  store ptr %i.am, ptr %i.d, align 8, !tbaa !11
  br label %tok_nextc.exit.thread

tok_nextc.exit:                                   ; preds = %bb.e
  %i.an = add nuw nsw i32 %i.z, 1
  store i32 %i.an, ptr %i.i, align 4, !tbaa !28
  %i.ao = getelementptr i8, ptr %i.y, i64 1
  store ptr %i.ao, ptr %i.d, align 8, !tbaa !11
  %i.ap = load i8, ptr %i.y, align 1, !tbaa !34   ; 4 uses
  switch i8 %i.ap, label %.split1125 [
    i8 32, label %bb.l
    i8 9, label %bb.m
    i8 12, label %.backedge
    i8 92, label %bb.n
  ]

.backedge:                                        ; preds = %tok_nextc.exit, %bb.m, %bb.l
  %.01078.be = phi i32 [ 0, %tok_nextc.exit ], [ %i.ar, %bb.l ], [ %i.aw, %bb.m ]
  %.01075.be = phi i32 [ 0, %tok_nextc.exit ], [ %i.aq, %bb.l ], [ %i.av, %bb.m ]
  br label %bb.c

bb.l:                                             ; preds = %tok_nextc.exit
  %i.aq = add i32 %.01075, 1
  %i.ar = add i32 %.01078, 1
  br label %.backedge

bb.m:                                             ; preds = %tok_nextc.exit
  %i.as = load i32, ptr %i.j, align 8, !tbaa !54  ; 2 uses
  %i.at = sdiv i32 %.01075, %i.as
  %i.au = add i32 %i.at, 1
  %i.av = mul i32 %i.au, %i.as
  %i.aw = add i32 %.01078, 1
  br label %.backedge

bb.n:                                             ; preds = %tok_nextc.exit
  %.not1183 = icmp eq i32 %.01081.ph, 0
  %i.ax = select i1 %.not1183, i32 %.01075, i32 %.01081.ph
  %i.ay = tail call fastcc i32 @tok_continuation_line(ptr noundef nonnull %0)
  %i.az = icmp eq i32 %i.ay, -1
  br i1 %i.az, label %bb.o, label %.outer

bb.o:                                             ; preds = %bb.n
  %i.ba = tail call i32 @_PyLexer_token_setup(ptr noundef nonnull %0, ptr noundef %2, i32 noundef 67, ptr noundef null, ptr noundef null) #8
  br label %.thread1499

.split1125:                                       ; preds = %tok_nextc.exit
  store ptr %i.y, ptr %i.d, align 8, !tbaa !11
  %i.bb = load ptr, ptr %0, align 8, !tbaa !35
  %i.bc = icmp ult ptr %i.y, %i.bb
  br i1 %i.bc, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.split1125
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.q:                                             ; preds = %.split1125
  %i.bd = load i8, ptr %i.y, align 1, !tbaa !34
end_hunk_1
