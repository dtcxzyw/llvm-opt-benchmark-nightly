inline.NumInlined: 84
inline.NumDeleted: 36
begin_hunk_0_@strlen

declare ptr @PyBytes_AsString(ptr noundef) local_unnamed_addr #3

declare ptr @_PyAST_arg(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden i32 @_PyPegen_check_barry_as_flufl(ptr noundef %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90   ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 32       ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 100
  %i.e = load i32, ptr %i.d, align 4, !tbaa !149
  %i.f = and i32 %i.e, 32
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %bb.b, label %sub_0

sub_0:                                            ; preds = %bb.a
  %i.g = load i8, ptr %i.c, align 1
  %.not8 = icmp eq i8 %i.g, 60
  br i1 %.not8, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.h = getelementptr i8, ptr %i.b, i64 33
  %i.i = load i8, ptr %i.h, align 1
  %.not9 = icmp eq i8 %i.i, 62
  br i1 %.not9, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_1
  %i.j = getelementptr i8, ptr %i.b, i64 34
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.c, label %.tail.thread

.tail.thread:                                     ; preds = %sub_1, %sub_0, %.tail
  %i.m = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !37
  %i.n = tail call ptr (ptr, ptr, i32, ptr, ...) @_PyPegen_raise_error(ptr noundef nonnull %0, ptr noundef %i.m, i32 noundef 0, ptr noundef nonnull @.str.5) #14 ; 0 uses
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef nonnull dereferenceable(3) @.str.6) #15
  br label %bb.c

bb.c:                                             ; preds = %.tail, %bb.b, %.tail.thread
  %.0 = phi i32 [ -1, %.tail.thread ], [ %i.o, %bb.b ], [ 0, %.tail ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #7

declare ptr @_PyPegen_raise_error(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden range(i32 0, 2) i32 @_PyPegen_check_legacy_stmt(ptr noundef readnone captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !63
  %.not = icmp eq i32 %i.a, 26
  br i1 %.not, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef %i.c, ptr noundef nonnull @.str.7) #14
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.preheader
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.g = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef %i.f, ptr noundef nonnull @.str.8) #14
  %i.h = icmp eq i32 %i.g, 0
  %spec.select = zext i1 %i.h to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.preheader, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ 1, %.preheader ], [ %spec.select, %bb.b ]
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

declare i32 @PyUnicode_CompareWithASCIIString(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden noalias noundef ptr @_PyPegen_raise_error_for_missing_comma(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef readonly captures(none) %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !63
  %.not.i = icmp eq i32 %i.a, 26
  br i1 %.not.i, label %.preheader.i, label %_PyPegen_check_legacy_stmt.exit.thread

.preheader.i:                                     ; preds = %bb.a
  %i.b = getelementptr i8, ptr %1, i64 8          ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.d = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef %i.c, ptr noundef nonnull @.str.7) #14
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %_PyPegen_check_legacy_stmt.exit.thread21, label %_PyPegen_check_legacy_stmt.exit

_PyPegen_check_legacy_stmt.exit:                  ; preds = %.preheader.i
  %i.f = load ptr, ptr %i.b, align 8, !tbaa !36
  %i.g = tail call i32 @PyUnicode_CompareWithASCIIString(ptr noundef %i.f, ptr noundef nonnull @.str.8) #14
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %_PyPegen_check_legacy_stmt.exit.thread21, label %_PyPegen_check_legacy_stmt.exit.thread

_PyPegen_check_legacy_stmt.exit.thread:           ; preds = %bb.a, %_PyPegen_check_legacy_stmt.exit
  %i.h = getelementptr i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !150
  %i.j = getelementptr i8, ptr %0, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !151
  %i.l = add i32 %i.k, -1
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr [8 x i8], ptr %i.i, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !25
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %i.q = load i32, ptr %i.p, align 8, !tbaa !152
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %_PyPegen_check_legacy_stmt.exit.thread21, label %bb.b

bb.b:                                             ; preds = %_PyPegen_check_legacy_stmt.exit.thread
  %i.s = getelementptr i8, ptr %1, i64 48
  %i.t = load i32, ptr %i.s, align 8, !tbaa !43   ; 2 uses
  %i.u = getelementptr i8, ptr %1, i64 40
  %i.v = load i32, ptr %i.u, align 8, !tbaa !40   ; 2 uses
  %i.w = icmp sgt i32 %i.t, %i.v
  %i.x = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !37 ; 2 uses
  %i.y = getelementptr i8, ptr %1, i64 44
  %i.z = load i32, ptr %i.y, align 4, !tbaa !42
  %i.aa = sext i32 %i.z to i64                    ; 2 uses
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ab = sext i32 %i.t to i64                    ; 2 uses
  %i.ac = getelementptr i8, ptr %1, i64 52
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !44
  %i.ae = sext i32 %i.ad to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.x, i64 noundef %i.ab, i64 noundef %i.aa, i64 noundef %i.ab, i64 noundef %i.ae, ptr noundef nonnull @.str.9)
  br label %_PyPegen_check_legacy_stmt.exit.thread21

bb.d:                                             ; preds = %bb.b
  %i.af = sext i32 %i.v to i64
  %i.ag = getelementptr i8, ptr %2, i64 48
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !43
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr i8, ptr %2, i64 52
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !44
  %i.al = sext i32 %i.ak to i64
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.x, i64 noundef %i.af, i64 noundef %i.aa, i64 noundef %i.ai, i64 noundef %i.al, ptr noundef nonnull @.str.9)
  br label %_PyPegen_check_legacy_stmt.exit.thread21

_PyPegen_check_legacy_stmt.exit.thread21:         ; preds = %.preheader.i, %_PyPegen_check_legacy_stmt.exit.thread, %_PyPegen_check_legacy_stmt.exit, %bb.d, %bb.c
  ret ptr null
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_check_fstring_conversion(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 20
  %i.b = load i32, ptr %i.a, align 4, !tbaa !153  ; 3 uses
  %i.c = getelementptr i8, ptr %2, i64 40
  %i.d = load i32, ptr %i.c, align 8, !tbaa !40
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 32
  %i.f = load i32, ptr %i.e, align 8, !tbaa !154  ; 2 uses
  %i.g = getelementptr i8, ptr %2, i64 44
  %i.h = load i32, ptr %i.g, align 4, !tbaa !42
  %.not30 = icmp eq i32 %i.f, %i.h
  br i1 %.not30, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !37
  %i.j = sext i32 %i.b to i64
  %i.k = getelementptr i8, ptr %1, i64 24
  %i.l = load i32, ptr %i.k, align 8, !tbaa !155
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr i8, ptr %2, i64 48
  %i.o = load i32, ptr %i.n, align 8, !tbaa !43
  %i.p = sext i32 %i.o to i64
  %i.q = getelementptr i8, ptr %2, i64 52
  %i.r = load i32, ptr %i.q, align 4, !tbaa !44
  %i.s = sext i32 %i.r to i64
  %i.t = load ptr, ptr %0, align 8, !tbaa !156    ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 18464
  %i.v = load i32, ptr %i.u, align 8, !tbaa !157
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr [104 x i8], ptr %i.t, i64 %i.w
  %i.y = getelementptr i8, ptr %i.x, i64 2960
  %i.z = load i32, ptr %i.y, align 8, !tbaa !160
  %i.aa = icmp eq i32 %i.z, 1
  %i.ab = select i1 %i.aa, i32 116, i32 102
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.i, i64 noundef %i.j, i64 noundef %i.m, i64 noundef %i.p, i64 noundef %i.s, ptr noundef nonnull @.str.10, i32 noundef %i.ab)
  br label %result_token_with_metadata.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = getelementptr i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !36 ; 9 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 32
  %i.af = load i32, ptr %i.ae, align 8            ; 5 uses
  %i.ag = and i32 %i.af, 28
  %i.ah = and i32 %i.af, 32
  %.not.i19.i = icmp eq i32 %i.ah, 0              ; 3 uses
  switch i32 %i.ag, label %bb.k [
    i32 4, label %bb.e
    i32 8, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  br i1 %.not.i19.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ai = and i32 %i.af, 64
  %.not.i.i.i = icmp eq i32 %i.ai, 0
  %.0.v.i.i.i = select i1 %.not.i.i.i, i64 56, i64 40
  %.0.i.i.i = getelementptr i8, ptr %i.ad, i64 %.0.v.i.i.i
  br label %_PyUnicode_DATA.exit.i

bb.g:                                             ; preds = %bb.e
  %i.aj = getelementptr i8, ptr %i.ad, i64 56
  %.val4.i.i = load ptr, ptr %i.aj, align 8, !tbaa !36
  br label %_PyUnicode_DATA.exit.i

_PyUnicode_DATA.exit.i:                           ; preds = %bb.g, %bb.f
  %.0.i.i = phi ptr [ %.0.i.i.i, %bb.f ], [ %.val4.i.i, %bb.g ]
  %i.ak = load i8, ptr %.0.i.i, align 1, !tbaa !36
  %i.al = zext i8 %i.ak to i32
  br label %PyUnicode_READ_CHAR.exit

bb.h:                                             ; preds = %bb.d
  br i1 %.not.i19.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.am = and i32 %i.af, 64
  %.not.i.i12.i = icmp eq i32 %i.am, 0
  %.0.v.i.i13.i = select i1 %.not.i.i12.i, i64 56, i64 40
  %.0.i.i14.i = getelementptr i8, ptr %i.ad, i64 %.0.v.i.i13.i
  br label %_PyUnicode_DATA.exit17.i

bb.j:                                             ; preds = %bb.h
  %i.an = getelementptr i8, ptr %i.ad, i64 56
  %.val4.i16.i = load ptr, ptr %i.an, align 8, !tbaa !36
  br label %_PyUnicode_DATA.exit17.i

_PyUnicode_DATA.exit17.i:                         ; preds = %bb.j, %bb.i
  %.0.i15.i = phi ptr [ %.0.i.i14.i, %bb.i ], [ %.val4.i16.i, %bb.j ]
  %i.ao = load i16, ptr %.0.i15.i, align 2, !tbaa !162
  %i.ap = zext i16 %i.ao to i32
  br label %PyUnicode_READ_CHAR.exit

bb.k:                                             ; preds = %bb.d
  br i1 %.not.i19.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aq = and i32 %i.af, 64
  %.not.i.i20.i = icmp eq i32 %i.aq, 0
  %.0.v.i.i21.i = select i1 %.not.i.i20.i, i64 56, i64 40
  %.0.i.i22.i = getelementptr i8, ptr %i.ad, i64 %.0.v.i.i21.i
  br label %_PyUnicode_DATA.exit25.i

bb.m:                                             ; preds = %bb.k
  %i.ar = getelementptr i8, ptr %i.ad, i64 56
  %.val4.i24.i = load ptr, ptr %i.ar, align 8, !tbaa !36
  br label %_PyUnicode_DATA.exit25.i

_PyUnicode_DATA.exit25.i:                         ; preds = %bb.m, %bb.l
  %.0.i23.i = phi ptr [ %.0.i.i22.i, %bb.l ], [ %.val4.i24.i, %bb.m ]
  %i.as = load i32, ptr %.0.i23.i, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit

PyUnicode_READ_CHAR.exit:                         ; preds = %_PyUnicode_DATA.exit.i, %_PyUnicode_DATA.exit17.i, %_PyUnicode_DATA.exit25.i
  %.0.i = phi i32 [ %i.al, %_PyUnicode_DATA.exit.i ], [ %i.ap, %_PyUnicode_DATA.exit17.i ], [ %i.as, %_PyUnicode_DATA.exit25.i ]
  %i.at = getelementptr i8, ptr %i.ad, i64 16
  %.val = load i64, ptr %i.at, align 8, !tbaa !164
  %i.au = icmp sgt i64 %.val, 1
  br i1 %i.au, label %bb.o, label %bb.n

bb.n:                                             ; preds = %PyUnicode_READ_CHAR.exit
  switch i32 %.0.i, label %bb.o [
    i32 115, label %bb.p
    i32 114, label %bb.p
    i32 97, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n, %PyUnicode_READ_CHAR.exit
  %i.av = load ptr, ptr @PyExc_SyntaxError, align 8, !tbaa !37
  %i.aw = sext i32 %i.b to i64
  %i.ax = sext i32 %i.f to i64
  %i.ay = getelementptr i8, ptr %2, i64 48
  %i.az = load i32, ptr %i.ay, align 8, !tbaa !43
  %i.ba = sext i32 %i.az to i64
  %i.bb = getelementptr i8, ptr %2, i64 52
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !44
  %i.bd = sext i32 %i.bc to i64
  %i.be = load ptr, ptr %0, align 8, !tbaa !156   ; 2 uses
  %i.bf = getelementptr i8, ptr %i.be, i64 18464
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !157
  %i.bh = sext i32 %i.bg to i64
  %i.bi = getelementptr [104 x i8], ptr %i.be, i64 %i.bh
  %i.bj = getelementptr i8, ptr %i.bi, i64 2960
  %i.bk = load i32, ptr %i.bj, align 8, !tbaa !160
  %i.bl = icmp eq i32 %i.bk, 1
  %i.bm = select i1 %i.bl, i32 116, i32 102
  tail call void (ptr, ptr, i64, i64, i64, i64, ptr, ...) @RAISE_ERROR_KNOWN_LOCATION(ptr noundef nonnull %0, ptr noundef %i.av, i64 noundef %i.aw, i64 noundef %i.ax, i64 noundef %i.ba, i64 noundef %i.bd, ptr noundef nonnull @.str.11, i32 noundef %i.bm, ptr noundef nonnull %i.ad)
  br label %result_token_with_metadata.exit

bb.p:                                             ; preds = %bb.n, %bb.n, %bb.n
  %i.bn = getelementptr i8, ptr %1, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !167
  %i.bp = getelementptr i8, ptr %0, i64 32
  %.val31 = load ptr, ptr %i.bp, align 8, !tbaa !11
  %i.bq = tail call ptr @_PyArena_Malloc(ptr noundef %.val31, i64 noundef 16) #14 ; 4 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %result_token_with_metadata.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr i8, ptr %i.bq, i64 8
  store ptr %i.bo, ptr %i.bs, align 8, !tbaa !168
  store ptr %2, ptr %i.bq, align 8, !tbaa !170
  br label %result_token_with_metadata.exit

result_token_with_metadata.exit:                  ; preds = %bb.q, %bb.p, %bb.o, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ null, %bb.o ], [ null, %bb.p ], [ %i.bq, %bb.q ]
  ret ptr %.1
}

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_setup_full_format_spec(ptr noundef %0, ptr noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7) local_unnamed_addr #1 {
bb.a:
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %2, align 8, !tbaa !50     ; 4 uses
  %i.b = icmp sgt i64 %i.a, 0                     ; 2 uses
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.c = getelementptr i8, ptr %2, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %bb.f, %bb.b
  %.059.lcssa = phi i64 [ 0, %bb.b ], [ %i.o, %bb.f ] ; 2 uses
  %.not64 = icmp eq i64 %.059.lcssa, %i.a
  br i1 %.not64, label %.loopexit, label %bb.g

bb.c:                                             ; preds = %.lr.ph, %bb.f
  %.05976 = phi i64 [ 0, %.lr.ph ], [ %i.o, %bb.f ]
  %.06075 = phi i64 [ 0, %.lr.ph ], [ %i.p, %bb.f ] ; 2 uses
  %i.d = getelementptr [8 x i8], ptr %i.c, i64 %.06075
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52   ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !63
  %i.g = icmp eq i32 %i.f, 22
  br i1 %i.g, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.e, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !36   ; 2 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val69 = load ptr, ptr %i.j, align 8, !tbaa !137
  %.not74 = icmp eq ptr %.val69, @PyUnicode_Type
  br i1 %.not74, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %i.i, i64 16
  %.val71 = load i64, ptr %i.k, align 8, !tbaa !164
  %i.l = icmp ne i64 %.val71, 0
  %i.m = zext i1 %i.l to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %i.n = phi i64 [ 1, %bb.d ], [ 1, %bb.c ], [ %i.m, %bb.e ]
  %i.o = add i64 %i.n, %.05976                    ; 2 uses
  %i.p = add nuw nsw i64 %.06075, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.p, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !171

bb.g:                                             ; preds = %._crit_edge
  %i.q = getelementptr i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !11
  %i.s = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %.059.lcssa, ptr noundef %i.r) #14 ; 4 uses
  %.not66 = icmp eq ptr %i.s, null
  br i1 %.not66, label %.critedge, label %.preheader

.preheader:                                       ; preds = %bb.g
  br i1 %i.b, label %.lr.ph79, label %.loopexit

.lr.ph79:                                         ; preds = %.preheader
  %i.t = getelementptr i8, ptr %2, i64 16
  %i.u = getelementptr i8, ptr %i.s, i64 16
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph79, %bb.l
  %.05578 = phi i64 [ 0, %.lr.ph79 ], [ %i.ag, %bb.l ] ; 2 uses
  %.05677 = phi i64 [ 0, %.lr.ph79 ], [ %.157, %bb.l ] ; 3 uses
  %i.v = getelementptr [8 x i8], ptr %i.t, i64 %.05578
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !52   ; 3 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !63
  %i.y = icmp eq i32 %i.x, 22
  br i1 %i.y, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %i.w, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !36  ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val = load ptr, ptr %i.ab, align 8, !tbaa !137
end_hunk_0
begin_hunk_1_@_PyPegen_decoded_constant_from_token:bb.a

bb.d:                                             ; preds = %bb.c, %bb.b
  %.018 = phi i32 [ %i.n, %bb.c ], [ 0, %bb.b ]
  %i.o = load ptr, ptr %i.b, align 8, !tbaa !204
  %i.p = load i64, ptr %i.a, align 8, !tbaa !205
  %i.q = call ptr @_PyPegen_decode_string(ptr noundef nonnull %0, i32 noundef %.018, ptr noundef %i.o, i64 noundef %i.p, ptr noundef nonnull %1) #14 ; 6 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %Py_DECREF.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.u = call i32 @_PyArena_AddPyObject(ptr noundef %i.t, ptr noundef nonnull %i.q) #14
  %i.v = icmp slt i32 %i.u, 0
  br i1 %i.v, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.w = load i32, ptr %i.q, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp sgt i32 %i.w, -1
  br i1 %.not.i, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  %i.x = add nsw i32 %i.w, -1                     ; 2 uses
  store i32 %i.x, ptr %i.q, align 8, !tbaa !36
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %bb.h, label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.g
  call void @_Py_Dealloc(ptr noundef nonnull %i.q) #14
  br label %Py_DECREF.exit

bb.i:                                             ; preds = %bb.e
  %i.z = getelementptr i8, ptr %1, i64 20
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !153
  %i.ab = getelementptr i8, ptr %1, i64 24
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !155
  %i.ad = getelementptr i8, ptr %1, i64 28
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !197
  %i.af = getelementptr i8, ptr %1, i64 32
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !154
  %i.ah = load ptr, ptr %i.s, align 8, !tbaa !11
  %i.ai = call ptr @_PyAST_Constant(ptr noundef nonnull %i.q, ptr noundef null, i32 noundef %i.aa, i32 noundef %i.ac, i32 noundef %i.ae, i32 noundef %i.ag, ptr noundef %i.ah) #14
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.h, %bb.g, %bb.f, %bb.i, %bb.d, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.ai, %bb.i ], [ null, %bb.d ], [ null, %bb.f ], [ null, %bb.g ], [ null, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret ptr %.1
}

declare i32 @PyBytes_AsStringAndSize(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyPegen_decode_string(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

declare ptr @_PyAST_Constant(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_constant_from_token(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(none) %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.c = tail call ptr @PyBytes_AsString(ptr noundef %i.b) #14 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @PyUnicode_FromString(ptr noundef nonnull %i.c) #14 ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %Py_DECREF.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.i = tail call i32 @_PyArena_AddPyObject(ptr noundef %i.h, ptr noundef nonnull %i.e) #14
  %i.j = icmp slt i32 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp sgt i32 %i.k, -1
  br i1 %.not.i, label %bb.e, label %Py_DECREF.exit

bb.e:                                             ; preds = %bb.d
  %i.l = add nsw i32 %i.k, -1                     ; 2 uses
  store i32 %i.l, ptr %i.e, align 8, !tbaa !36
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #14
  br label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %1, i64 20
  %i.o = load i32, ptr %i.n, align 4, !tbaa !153
  %i.p = getelementptr i8, ptr %1, i64 24
  %i.q = load i32, ptr %i.p, align 8, !tbaa !155
  %i.r = getelementptr i8, ptr %1, i64 28
  %i.s = load i32, ptr %i.r, align 4, !tbaa !197
  %i.t = getelementptr i8, ptr %1, i64 32
  %i.u = load i32, ptr %i.t, align 8, !tbaa !154
  %i.v = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.w = tail call ptr @_PyAST_Constant(ptr noundef nonnull %i.e, ptr noundef null, i32 noundef %i.o, i32 noundef %i.q, i32 noundef %i.s, i32 noundef %i.u, ptr noundef %i.v) #14
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.f, %bb.e, %bb.d, %bb.g, %bb.b, %bb.a
  %.1 = phi ptr [ null, %bb.a ], [ %i.w, %bb.g ], [ null, %bb.b ], [ null, %bb.d ], [ null, %bb.e ], [ null, %bb.f ]
  ret ptr %.1
}

declare ptr @PyUnicode_FromString(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_constant_from_string(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90
  %i.c = tail call ptr @PyBytes_AsString(ptr noundef %i.b) #14 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %Py_DECREF.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @_PyPegen_parse_string(ptr noundef %0, ptr noundef nonnull %1) #14 ; 6 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 @_Pypegen_raise_decode_error(ptr noundef %0) #14 ; 0 uses
  br label %Py_DECREF.exit

bb.d:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.j = tail call i32 @_PyArena_AddPyObject(ptr noundef %i.i, ptr noundef nonnull %i.e) #14
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.l = load i32, ptr %i.e, align 8, !tbaa !36   ; 2 uses
  %.not.i = icmp sgt i32 %i.l, -1
  br i1 %.not.i, label %bb.f, label %Py_DECREF.exit

bb.f:                                             ; preds = %bb.e
  %i.m = add nsw i32 %i.l, -1                     ; 2 uses
  store i32 %i.m, ptr %i.e, align 8, !tbaa !36
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %Py_DECREF.exit

bb.g:                                             ; preds = %bb.f
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.e) #14
  br label %Py_DECREF.exit

bb.h:                                             ; preds = %bb.d
  %i.o = load i8, ptr %i.c, align 1, !tbaa !36
  %i.p = icmp eq i8 %i.o, 117
  br i1 %i.p, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.q = tail call ptr @_PyPegen_new_identifier(ptr noundef nonnull %0, ptr noundef nonnull @.str.43) #14 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %Py_DECREF.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.0 = phi ptr [ %i.q, %bb.i ], [ null, %bb.h ]
  %i.s = getelementptr i8, ptr %1, i64 20
  %i.t = load i32, ptr %i.s, align 4, !tbaa !153
  %i.u = getelementptr i8, ptr %1, i64 24
  %i.v = load i32, ptr %i.u, align 8, !tbaa !155
  %i.w = getelementptr i8, ptr %1, i64 28
  %i.x = load i32, ptr %i.w, align 4, !tbaa !197
  %i.y = getelementptr i8, ptr %1, i64 32
  %i.z = load i32, ptr %i.y, align 8, !tbaa !154
  %i.aa = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.ab = tail call ptr @_PyAST_Constant(ptr noundef nonnull %i.e, ptr noundef %.0, i32 noundef %i.t, i32 noundef %i.v, i32 noundef %i.x, i32 noundef %i.z, ptr noundef %i.aa) #14
  br label %Py_DECREF.exit

Py_DECREF.exit:                                   ; preds = %bb.g, %bb.f, %bb.e, %bb.c, %bb.i, %bb.j, %bb.a
  %.2 = phi ptr [ null, %bb.a ], [ null, %bb.c ], [ null, %bb.i ], [ %i.ab, %bb.j ], [ null, %bb.e ], [ null, %bb.f ], [ null, %bb.g ]
  ret ptr %.2
}

declare ptr @_PyPegen_parse_string(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @_Pypegen_raise_decode_error(ptr noundef) local_unnamed_addr #3

declare ptr @_PyPegen_new_identifier(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_interpolation(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef readnone captures(address_is_null) %2, ptr noundef readonly captures(address_is_null) %3, ptr noundef readonly captures(address_is_null) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10) local_unnamed_addr #1 {
bb.a:
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !170    ; 3 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 7 uses
  %i.d = getelementptr i8, ptr %i.c, i64 32
  %i.e = load i32, ptr %i.d, align 8              ; 5 uses
  %i.f = and i32 %i.e, 28
  %i.g = and i32 %i.e, 32
  %.not.i19.i.i = icmp eq i32 %i.g, 0             ; 3 uses
  switch i32 %i.f, label %bb.i [
    i32 4, label %bb.c
    i32 8, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i19.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %i.e, 64
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  %.0.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %i.c, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.c, i64 56
  %.val4.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !36
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.d ], [ %.val4.i.i.i, %bb.e ]
  %i.j = load i8, ptr %.0.i.i.i, align 1, !tbaa !36
  %i.k = zext i8 %i.j to i32
  br label %bb.l

bb.f:                                             ; preds = %bb.b
  br i1 %.not.i19.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = and i32 %i.e, 64
  %.not.i.i12.i.i = icmp eq i32 %i.l, 0
  %.0.v.i.i13.i.i = select i1 %.not.i.i12.i.i, i64 56, i64 40
  %.0.i.i14.i.i = getelementptr i8, ptr %i.c, i64 %.0.v.i.i13.i.i
  br label %_PyUnicode_DATA.exit17.i.i

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %i.c, i64 56
  %.val4.i16.i.i = load ptr, ptr %i.m, align 8, !tbaa !36
  br label %_PyUnicode_DATA.exit17.i.i

_PyUnicode_DATA.exit17.i.i:                       ; preds = %bb.h, %bb.g
  %.0.i15.i.i = phi ptr [ %.0.i.i14.i.i, %bb.g ], [ %.val4.i16.i.i, %bb.h ]
  %i.n = load i16, ptr %.0.i15.i.i, align 2, !tbaa !162
  %i.o = zext i16 %i.n to i32
  br label %bb.l

bb.i:                                             ; preds = %bb.b
  br i1 %.not.i19.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = and i32 %i.e, 64
  %.not.i.i20.i.i = icmp eq i32 %i.p, 0
  %.0.v.i.i21.i.i = select i1 %.not.i.i20.i.i, i64 56, i64 40
  %.0.i.i22.i.i = getelementptr i8, ptr %i.c, i64 %.0.v.i.i21.i.i
  br label %_PyUnicode_DATA.exit25.i.i

bb.k:                                             ; preds = %bb.i
  %i.q = getelementptr i8, ptr %i.c, i64 56
  %.val4.i24.i.i = load ptr, ptr %i.q, align 8, !tbaa !36
  br label %_PyUnicode_DATA.exit25.i.i

_PyUnicode_DATA.exit25.i.i:                       ; preds = %bb.k, %bb.j
  %.0.i23.i.i = phi ptr [ %.0.i.i22.i.i, %bb.j ], [ %.val4.i24.i.i, %bb.k ]
  %i.r = load i32, ptr %.0.i23.i.i, align 4, !tbaa !7
  br label %bb.l

bb.l:                                             ; preds = %_PyUnicode_DATA.exit.i.i, %_PyUnicode_DATA.exit17.i.i, %_PyUnicode_DATA.exit25.i.i
  %.0.i.ph = phi i32 [ %i.r, %_PyUnicode_DATA.exit25.i.i ], [ %i.o, %_PyUnicode_DATA.exit17.i.i ], [ %i.k, %_PyUnicode_DATA.exit.i.i ]
  %i.s = getelementptr i8, ptr %i.a, i64 40
  %i.t = load i32, ptr %i.s, align 8, !tbaa !40
  %i.u = getelementptr i8, ptr %i.a, i64 44
  %i.v = load i32, ptr %i.u, align 4, !tbaa !42
  %i.w = getelementptr i8, ptr %3, i64 8
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  %i.x = icmp eq ptr %2, null
  %i.y = icmp ne ptr %4, null
  %or.cond.i = or i1 %i.x, %i.y
  %..i = select i1 %or.cond.i, i32 -1, i32 114    ; 2 uses
  %.not60 = icmp eq ptr %4, null
  br i1 %.not60, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.z = load ptr, ptr %4, align 8, !tbaa !170    ; 2 uses
  %i.aa = getelementptr i8, ptr %i.z, i64 40
  %i.ab = load i32, ptr %i.aa, align 8, !tbaa !40
  %i.ac = getelementptr i8, ptr %i.z, i64 44
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !42
  %i.ae = add i32 %i.ad, 1
  %i.af = getelementptr i8, ptr %4, i64 8
  br label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ag = getelementptr i8, ptr %5, i64 48
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o, %bb.l
  %.0.i87 = phi i32 [ %.0.i.ph, %bb.l ], [ %..i, %bb.n ], [ %..i, %bb.o ]
  %.052.in = phi ptr [ %i.w, %bb.l ], [ %i.af, %bb.n ], [ %i.ag, %bb.o ]
  %.051 = phi i32 [ %i.v, %bb.l ], [ %i.ae, %bb.n ], [ %9, %bb.o ] ; 2 uses
  %.050 = phi i32 [ %i.t, %bb.l ], [ %i.ab, %bb.n ], [ %8, %bb.o ] ; 2 uses
  %.052 = load ptr, ptr %.052.in, align 8, !tbaa !37 ; 8 uses
  %i.ah = getelementptr i8, ptr %.052, i64 16
  %.val.i = load i64, ptr %i.ah, align 8, !tbaa !164 ; 3 uses
  %i.ai = getelementptr i8, ptr %.052, i64 32
  %i.aj = getelementptr i8, ptr %.052, i64 56     ; 3 uses
  %i.ak = add i64 %.val.i, -1
  %smin.i = tail call i64 @llvm.smin.i64(i64 %i.ak, i64 -1)
  %i.al = add nsw i64 %smin.i, 1                  ; 2 uses
  %.013.i93 = add i64 %.val.i, -1                 ; 2 uses
  %i.am = icmp sgt i64 %.013.i93, -1
  br i1 %i.am, label %.lr.ph, label %_strip_interpolation_expr.exit

bb.q:                                             ; preds = %PyUnicode_READ_CHAR.exit.i
  %.013.i = add nsw i64 %.013.i95, -1
  %i.an = icmp sgt i64 %.013.i95, 0
  br i1 %i.an, label %.lr.ph, label %_strip_interpolation_expr.exit, !llvm.loop !206

.lr.ph:                                           ; preds = %bb.p, %bb.q
  %.013.i95 = phi i64 [ %.013.i, %bb.q ], [ %.013.i93, %bb.p ] ; 6 uses
  %.013.in.i94 = phi i64 [ %.013.i95, %bb.q ], [ %.val.i, %bb.p ]
  %i.ao = load i32, ptr %i.ai, align 8            ; 5 uses
  %i.ap = and i32 %i.ao, 28
  %i.aq = and i32 %i.ao, 32
  %.not.i19.i.i65 = icmp eq i32 %i.aq, 0          ; 3 uses
  switch i32 %i.ap, label %bb.x [
    i32 4, label %bb.r
    i32 8, label %bb.u
  ]

bb.r:                                             ; preds = %.lr.ph
  br i1 %.not.i19.i.i65, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ar = and i32 %i.ao, 64
  %.not.i.i.i.i73 = icmp eq i32 %i.ar, 0
  %.0.v.i.i.i.i74 = select i1 %.not.i.i.i.i73, i64 56, i64 40
  %.0.i.i.i.i75 = getelementptr i8, ptr %.052, i64 %.0.v.i.i.i.i74
  br label %_PyUnicode_DATA.exit.i.i76

bb.t:                                             ; preds = %bb.r
  %.val4.i.i.i78 = load ptr, ptr %i.aj, align 8, !tbaa !36
  br label %_PyUnicode_DATA.exit.i.i76

_PyUnicode_DATA.exit.i.i76:                       ; preds = %bb.t, %bb.s
  %.0.i.i.i77 = phi ptr [ %.0.i.i.i.i75, %bb.s ], [ %.val4.i.i.i78, %bb.t ]
  %i.as = getelementptr i8, ptr %.0.i.i.i77, i64 %.013.i95
  %i.at = load i8, ptr %i.as, align 1, !tbaa !36
  %i.au = zext i8 %i.at to i32
  br label %PyUnicode_READ_CHAR.exit.i

bb.u:                                             ; preds = %.lr.ph
  br i1 %.not.i19.i.i65, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.av = and i32 %i.ao, 64
  %.not.i.i12.i.i66 = icmp eq i32 %i.av, 0
  %.0.v.i.i13.i.i67 = select i1 %.not.i.i12.i.i66, i64 56, i64 40
  %.0.i.i14.i.i68 = getelementptr i8, ptr %.052, i64 %.0.v.i.i13.i.i67
  br label %_PyUnicode_DATA.exit17.i.i69

bb.w:                                             ; preds = %bb.u
  %.val4.i16.i.i72 = load ptr, ptr %i.aj, align 8, !tbaa !36
  br label %_PyUnicode_DATA.exit17.i.i69

_PyUnicode_DATA.exit17.i.i69:                     ; preds = %bb.w, %bb.v
  %.0.i15.i.i70 = phi ptr [ %.0.i.i14.i.i68, %bb.v ], [ %.val4.i16.i.i72, %bb.w ]
  %i.aw = getelementptr [2 x i8], ptr %.0.i15.i.i70, i64 %.013.i95
  %i.ax = load i16, ptr %i.aw, align 2, !tbaa !162
  %i.ay = zext i16 %i.ax to i32
  br label %PyUnicode_READ_CHAR.exit.i

bb.x:                                             ; preds = %.lr.ph
  br i1 %.not.i19.i.i65, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.az = and i32 %i.ao, 64
  %.not.i.i20.i.i79 = icmp eq i32 %i.az, 0
  %.0.v.i.i21.i.i80 = select i1 %.not.i.i20.i.i79, i64 56, i64 40
  %.0.i.i22.i.i81 = getelementptr i8, ptr %.052, i64 %.0.v.i.i21.i.i80
  br label %_PyUnicode_DATA.exit25.i.i82

bb.z:                                             ; preds = %bb.x
  %.val4.i24.i.i84 = load ptr, ptr %i.aj, align 8, !tbaa !36
  br label %_PyUnicode_DATA.exit25.i.i82

_PyUnicode_DATA.exit25.i.i82:                     ; preds = %bb.z, %bb.y
  %.0.i23.i.i83 = phi ptr [ %.0.i.i22.i.i81, %bb.y ], [ %.val4.i24.i.i84, %bb.z ]
  %i.ba = getelementptr [4 x i8], ptr %.0.i23.i.i83, i64 %.013.i95
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !7
  br label %PyUnicode_READ_CHAR.exit.i

PyUnicode_READ_CHAR.exit.i:                       ; preds = %_PyUnicode_DATA.exit25.i.i82, %_PyUnicode_DATA.exit17.i.i69, %_PyUnicode_DATA.exit.i.i76
  %.0.i.i = phi i32 [ %i.au, %_PyUnicode_DATA.exit.i.i76 ], [ %i.ay, %_PyUnicode_DATA.exit17.i.i69 ], [ %i.bb, %_PyUnicode_DATA.exit25.i.i82 ] ; 2 uses
  %i.bc = tail call i32 @_PyUnicode_IsWhitespace(i32 noundef %.0.i.i) #14
  %i.bd = icmp ne i32 %i.bc, 0
  %i.be = icmp eq i32 %.0.i.i, 61
  %or.cond.i71 = or i1 %i.be, %i.bd
  br i1 %or.cond.i71, label %bb.q, label %PyUnicode_READ_CHAR.exit.i._strip_interpolation_expr.exit_crit_edge, !llvm.loop !206

PyUnicode_READ_CHAR.exit.i._strip_interpolation_expr.exit_crit_edge: ; preds = %PyUnicode_READ_CHAR.exit.i
  br label %_strip_interpolation_expr.exit, !llvm.loop !206

_strip_interpolation_expr.exit:                   ; preds = %bb.q, %PyUnicode_READ_CHAR.exit.i._strip_interpolation_expr.exit_crit_edge, %bb.p
  %.0.lcssa.i = phi i64 [ %i.al, %bb.p ], [ %.013.in.i94, %PyUnicode_READ_CHAR.exit.i._strip_interpolation_expr.exit_crit_edge ], [ %i.al, %bb.q ]
  %i.bf = tail call ptr @PyUnicode_Substring(ptr noundef nonnull %.052, i64 noundef 0, i64 noundef %.0.lcssa.i) #14 ; 6 uses
  %.not61 = icmp eq ptr %i.bf, null
  br i1 %.not61, label %.split, label %bb.aa

bb.aa:                                            ; preds = %_strip_interpolation_expr.exit
  %i.bg = tail call i32 @_PyArena_AddPyObject(ptr noundef %10, ptr noundef nonnull %i.bf) #14
  %i.bh = icmp slt i32 %i.bg, 0
  br i1 %i.bh, label %.split54, label %bb.ad

.split54:                                         ; preds = %bb.aa
  %i.bi = load i32, ptr %i.bf, align 8, !tbaa !36 ; 2 uses
  %.not.i.i = icmp sgt i32 %i.bi, -1
  br i1 %.not.i.i, label %bb.ab, label %.split

bb.ab:                                            ; preds = %.split54
  %i.bj = add nsw i32 %i.bi, -1                   ; 2 uses
  store i32 %i.bj, ptr %i.bf, align 8, !tbaa !36
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.ac, label %.split

bb.ac:                                            ; preds = %bb.ab
  tail call void @_Py_Dealloc(ptr noundef nonnull %i.bf) #14
  br label %.split

bb.ad:                                            ; preds = %bb.aa
  %.not62 = icmp eq ptr %4, null
  br i1 %.not62, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bl = load ptr, ptr %4, align 8, !tbaa !170
  br label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  %i.bm = phi ptr [ %i.bl, %bb.ae ], [ null, %bb.ad ]
  %i.bn = tail call ptr @_PyAST_Interpolation(ptr noundef %1, ptr noundef nonnull %i.bf, i32 noundef %.0.i87, ptr noundef %i.bm, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10) #14 ; 2 uses
  %.not63 = icmp eq ptr %2, null
  br i1 %.not63, label %.split, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bo = add i32 %7, 1
  %i.bp = add i32 %.051, -1
  %i.bq = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !11
  %i.bs = tail call ptr @_PyAST_Constant(ptr noundef nonnull %.052, ptr noundef null, i32 noundef %6, i32 noundef %i.bo, i32 noundef %.050, i32 noundef %i.bp, ptr noundef %i.br) #14 ; 2 uses
  %.not64 = icmp eq ptr %i.bs, null
  br i1 %.not64, label %.split, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.bt = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef 2, ptr noundef %10) #14 ; 3 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 16
  store ptr %i.bs, ptr %i.bu, align 8, !tbaa !52
  %i.bv = getelementptr i8, ptr %i.bt, i64 24
  store ptr %i.bn, ptr %i.bv, align 8, !tbaa !52
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !11
  %i.bx = tail call ptr @_PyAST_JoinedStr(ptr noundef %i.bt, i32 noundef %6, i32 noundef %7, i32 noundef %.050, i32 noundef %.051, ptr noundef %i.bw) #14
  br label %.split

.split:                                           ; preds = %bb.ac, %bb.ab, %.split54, %_strip_interpolation_expr.exit, %bb.af, %bb.ag, %bb.ah
  %.2 = phi ptr [ null, %bb.ag ], [ null, %_strip_interpolation_expr.exit ], [ %i.bn, %bb.af ], [ %i.bx, %bb.ah ], [ null, %.split54 ], [ null, %bb.ab ], [ null, %bb.ac ]
  ret ptr %.2
}

declare ptr @_PyAST_Interpolation(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_formatted_value(ptr noundef readonly captures(none) %0, ptr noundef %1, ptr noundef readnone captures(address_is_null) %2, ptr noundef readonly captures(address_is_null) %3, ptr noundef readonly captures(address_is_null) %4, ptr noundef readonly captures(none) %5, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10) local_unnamed_addr #1 {
bb.a:
  %.not.i = icmp eq ptr %3, null                  ; 2 uses
  br i1 %.not.i, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %3, align 8, !tbaa !170
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !36   ; 7 uses
  %i.d = getelementptr i8, ptr %i.c, i64 32
  %i.e = load i32, ptr %i.d, align 8              ; 5 uses
  %i.f = and i32 %i.e, 28
  %i.g = and i32 %i.e, 32
  %.not.i19.i.i = icmp eq i32 %i.g, 0             ; 3 uses
  switch i32 %i.f, label %bb.i [
    i32 4, label %bb.c
    i32 8, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b
  br i1 %.not.i19.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = and i32 %i.e, 64
  %.not.i.i.i.i = icmp eq i32 %i.h, 0
  %.0.v.i.i.i.i = select i1 %.not.i.i.i.i, i64 56, i64 40
  %.0.i.i.i.i = getelementptr i8, ptr %i.c, i64 %.0.v.i.i.i.i
  br label %_PyUnicode_DATA.exit.i.i

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.c, i64 56
  %.val4.i.i.i = load ptr, ptr %i.i, align 8, !tbaa !36
  br label %_PyUnicode_DATA.exit.i.i

_PyUnicode_DATA.exit.i.i:                         ; preds = %bb.e, %bb.d
  %.0.i.i.i = phi ptr [ %.0.i.i.i.i, %bb.d ], [ %.val4.i.i.i, %bb.e ]
  %i.j = load i8, ptr %.0.i.i.i, align 1, !tbaa !36
  %i.k = zext i8 %i.j to i32
  br label %_get_interpolation_conversion.exit

bb.f:                                             ; preds = %bb.b
  br i1 %.not.i19.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = and i32 %i.e, 64
  %.not.i.i12.i.i = icmp eq i32 %i.l, 0
  %.0.v.i.i13.i.i = select i1 %.not.i.i12.i.i, i64 56, i64 40
  %.0.i.i14.i.i = getelementptr i8, ptr %i.c, i64 %.0.v.i.i13.i.i
  br label %_PyUnicode_DATA.exit17.i.i

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr i8, ptr %i.c, i64 56
  %.val4.i16.i.i = load ptr, ptr %i.m, align 8, !tbaa !36
  br label %_PyUnicode_DATA.exit17.i.i

_PyUnicode_DATA.exit17.i.i:                       ; preds = %bb.h, %bb.g
  %.0.i15.i.i = phi ptr [ %.0.i.i14.i.i, %bb.g ], [ %.val4.i16.i.i, %bb.h ]
  %i.n = load i16, ptr %.0.i15.i.i, align 2, !tbaa !162
  %i.o = zext i16 %i.n to i32
  br label %_get_interpolation_conversion.exit

bb.i:                                             ; preds = %bb.b
  br i1 %.not.i19.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = and i32 %i.e, 64
  %.not.i.i20.i.i = icmp eq i32 %i.p, 0
  %.0.v.i.i21.i.i = select i1 %.not.i.i20.i.i, i64 56, i64 40
  %.0.i.i22.i.i = getelementptr i8, ptr %i.c, i64 %.0.v.i.i21.i.i
  br label %_PyUnicode_DATA.exit25.i.i

bb.k:                                             ; preds = %bb.i
  %i.q = getelementptr i8, ptr %i.c, i64 56
  %.val4.i24.i.i = load ptr, ptr %i.q, align 8, !tbaa !36
  br label %_PyUnicode_DATA.exit25.i.i

_PyUnicode_DATA.exit25.i.i:                       ; preds = %bb.k, %bb.j
  %.0.i23.i.i = phi ptr [ %.0.i.i22.i.i, %bb.j ], [ %.val4.i24.i.i, %bb.k ]
  %i.r = load i32, ptr %.0.i23.i.i, align 4, !tbaa !7
  br label %_get_interpolation_conversion.exit

bb.l:                                             ; preds = %bb.a
  %i.s = icmp eq ptr %2, null
  %i.t = icmp ne ptr %4, null
  %or.cond.i = or i1 %i.s, %i.t
  %..i = select i1 %or.cond.i, i32 -1, i32 114
  br label %_get_interpolation_conversion.exit

_get_interpolation_conversion.exit:               ; preds = %_PyUnicode_DATA.exit.i.i, %_PyUnicode_DATA.exit17.i.i, %_PyUnicode_DATA.exit25.i.i, %bb.l
  %.0.i = phi i32 [ %..i, %bb.l ], [ %i.k, %_PyUnicode_DATA.exit.i.i ], [ %i.o, %_PyUnicode_DATA.exit17.i.i ], [ %i.r, %_PyUnicode_DATA.exit25.i.i ]
  %.not = icmp eq ptr %4, null                    ; 2 uses
  br i1 %.not, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_get_interpolation_conversion.exit
  %i.u = load ptr, ptr %4, align 8, !tbaa !170
  br label %bb.n

bb.n:                                             ; preds = %_get_interpolation_conversion.exit, %bb.m
  %i.v = phi ptr [ %i.u, %bb.m ], [ null, %_get_interpolation_conversion.exit ]
  %i.w = tail call ptr @_PyAST_FormattedValue(ptr noundef %1, i32 noundef %.0.i, ptr noundef %i.v, i32 noundef %6, i32 noundef %7, i32 noundef %8, i32 noundef %9, ptr noundef %10) #14 ; 2 uses
  %.not51 = icmp eq ptr %2, null
  br i1 %.not51, label %bb.v, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.x = load ptr, ptr %3, align 8, !tbaa !170    ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 40
  %i.z = load i32, ptr %i.y, align 8, !tbaa !40
  %i.aa = getelementptr i8, ptr %i.x, i64 44
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !42
  %i.ac = getelementptr i8, ptr %3, i64 8
  br label %bb.t

bb.q:                                             ; preds = %bb.o
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ad = load ptr, ptr %4, align 8, !tbaa !170   ; 2 uses
  %i.ae = getelementptr i8, ptr %i.ad, i64 40
  %i.af = load i32, ptr %i.ae, align 8, !tbaa !40
  %i.ag = getelementptr i8, ptr %i.ad, i64 44
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !42
  %i.ai = add i32 %i.ah, 1
  %i.aj = getelementptr i8, ptr %4, i64 8
  br label %bb.t

bb.s:                                             ; preds = %bb.q
  %i.ak = getelementptr i8, ptr %5, i64 48
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %bb.p
  %.046 = phi i32 [ %i.z, %bb.p ], [ %i.af, %bb.r ], [ %8, %bb.s ] ; 2 uses
  %.045 = phi i32 [ %i.ab, %bb.p ], [ %i.ai, %bb.r ], [ %9, %bb.s ] ; 2 uses
  %.044.in = phi ptr [ %i.ac, %bb.p ], [ %i.aj, %bb.r ], [ %i.ak, %bb.s ]
  %.044 = load ptr, ptr %.044.in, align 8, !tbaa !37
  %i.al = add i32 %7, 1
  %i.am = add i32 %.045, -1
  %i.an = getelementptr i8, ptr %0, i64 32        ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !11
  %i.ap = tail call ptr @_PyAST_Constant(ptr noundef %.044, ptr noundef null, i32 noundef %6, i32 noundef %i.al, i32 noundef %.046, i32 noundef %i.am, ptr noundef %i.ao) #14 ; 2 uses
  %.not53 = icmp eq ptr %i.ap, null
  br i1 %.not53, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aq = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef 2, ptr noundef %10) #14 ; 3 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 16
  store ptr %i.ap, ptr %i.ar, align 8, !tbaa !52
  %i.as = getelementptr i8, ptr %i.aq, i64 24
  store ptr %i.w, ptr %i.as, align 8, !tbaa !52
  %i.at = load ptr, ptr %i.an, align 8, !tbaa !11
  %i.au = tail call ptr @_PyAST_JoinedStr(ptr noundef %i.aq, i32 noundef %6, i32 noundef %7, i32 noundef %.046, i32 noundef %.045, ptr noundef %i.at) #14
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.n
  %.1 = phi ptr [ %i.w, %bb.n ], [ %i.au, %bb.u ], [ null, %bb.t ]
  ret ptr %.1
}

declare ptr @_PyAST_FormattedValue(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define hidden ptr @_PyPegen_concatenate_tstrings(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc ptr @_build_concatenated_str(ptr noundef %0, ptr noundef %1)
  %i.b = tail call ptr @_PyAST_TemplateStr(ptr noundef %i.a, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, ptr noundef %6) #14
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define internal fastcc ptr @_build_concatenated_str(ptr noundef readonly captures(none) %0, ptr noundef readonly captures(address_is_null) %1) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %._crit_edge.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i64, ptr %1, align 8, !tbaa !50     ; 3 uses
  %i.c = icmp sgt i64 %i.b, 0                     ; 2 uses
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %i.d = getelementptr i8, ptr %1, i64 16
  br label %bb.c

._crit_edge:                                      ; preds = %bb.k, %bb.b
  %.0124.lcssa = phi i64 [ 0, %bb.b ], [ %.1125, %bb.k ] ; 7 uses
  %i.e = getelementptr i8, ptr %0, i64 32         ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !11
  %i.g = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef %.0124.lcssa, ptr noundef %i.f) #14 ; 4 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %.critedge, label %.preheader43

._crit_edge.thread:                               ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 32         ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.k = tail call ptr @_Py_asdl_expr_seq_new(i64 noundef 0, ptr noundef %i.j) #14
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.critedge, label %.critedge198._crit_edge.thread

.preheader43:                                     ; preds = %._crit_edge
  br i1 %i.c, label %.lr.ph67, label %.critedge198.preheader

.lr.ph67:                                         ; preds = %.preheader43
  %i.m = getelementptr i8, ptr %1, i64 16
  %i.n = getelementptr i8, ptr %i.g, i64 16       ; 3 uses
  br label %bb.l

bb.c:                                             ; preds = %.lr.ph, %bb.k
  %.012451 = phi i64 [ 0, %.lr.ph ], [ %.1125, %bb.k ] ; 3 uses
  %.013050 = phi i64 [ 0, %.lr.ph ], [ %i.ae, %bb.k ] ; 2 uses
  %i.o = getelementptr [8 x i8], ptr %i.d, i64 %.013050
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52   ; 3 uses
  %i.q = load i32, ptr %i.p, align 8, !tbaa !63
  switch i32 %i.q, label %bb.j [
    i32 20, label %bb.d
    i32 21, label %bb.g
end_hunk_1
