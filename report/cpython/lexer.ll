inline.NumInlined: 86
inline.NumDeleted: 14
begin_hunk_0_@tok_decimal_tail:bb.a
  %i.bh = trunc nuw i32 %.0.i15 to i8
  %.not6.i = icmp eq i8 %i.bg, %i.bh
  br i1 %.not6.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.bi = load i32, ptr %i.f, align 4, !tbaa !28
  %i.bj = add i32 %i.bi, -1
  store i32 %i.bj, ptr %i.f, align 4, !tbaa !28
  br label %tok_backup.exit

tok_backup.exit:                                  ; preds = %bb.t, %bb.y
  %i.bk = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.9) #8 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %bb.k, %tok_backup.exit
  %.0 = phi i32 [ 0, %tok_backup.exit ], [ %.0.i, %bb.k ]
  ret i32 %.0
}

declare i32 @_PyTokenizer_syntaxerror_known_range(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @set_ftstring_expr(ptr noundef readonly captures(none) %0, ptr noundef captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 2864
  %i.b = getelementptr i8, ptr %0, i64 18464
  %i.c = load i32, ptr %i.b, align 8, !tbaa !17
  %i.d = sext i32 %i.c to i64
  %i.e = getelementptr [104 x i8], ptr %i.a, i64 %i.d ; 5 uses
  %i.f = getelementptr i8, ptr %i.e, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !83
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.e, i64 96
  %i.i = load i32, ptr %i.h, align 8, !tbaa !37
  %i.j = icmp eq i32 %i.i, 1
  br i1 %i.j, label %bb.c, label %.thread120

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !86
  %.not103 = icmp eq ptr %i.l, null
  br i1 %.not103, label %.preheader126, label %.thread120

.preheader126:                                    ; preds = %bb.c
  %i.m = getelementptr i8, ptr %i.e, i64 64       ; 3 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !22
  %i.o = getelementptr i8, ptr %i.e, i64 72       ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !tbaa !21
  %i.q = sub i64 %i.n, %i.p                       ; 4 uses
  %.not122133 = icmp sgt i64 %i.q, 0
  %i.r = getelementptr i8, ptr %i.e, i64 80       ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !18   ; 2 uses
  br i1 %.not122133, label %.lr.ph, label %.critedge124

.lr.ph:                                           ; preds = %.preheader126, %select.unfold
  %.087136 = phi i64 [ %i.z, %select.unfold ], [ 0, %.preheader126 ] ; 5 uses
  %.089135 = phi i8 [ %.291.ph, %select.unfold ], [ 0, %.preheader126 ] ; 4 uses
  %.092134 = phi i32 [ %.294.ph, %select.unfold ], [ 0, %.preheader126 ] ; 4 uses
  %i.t = getelementptr i8, ptr %i.s, i64 %.087136
  %i.u = load i8, ptr %i.t, align 1, !tbaa !34    ; 4 uses
  switch i8 %i.u, label %bb.g [
    i8 92, label %bb.d
    i8 39, label %bb.e
    i8 34, label %bb.e
  ]

bb.d:                                             ; preds = %.lr.ph
  %i.v = add nsw i64 %.087136, 1
  br label %select.unfold

bb.e:                                             ; preds = %.lr.ph, %.lr.ph
  %.not104 = icmp eq i32 %.092134, 0
  br i1 %.not104, label %select.unfold, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.w = icmp ne i8 %i.u, %.089135
  %spec.select = zext i1 %i.w to i32
  br label %select.unfold

bb.g:                                             ; preds = %.lr.ph
  %i.x = icmp ne i8 %i.u, 35
  %i.y = icmp ne i32 %.092134, 0
  %or.cond4 = select i1 %i.x, i1 true, i1 %i.y
  br i1 %or.cond4, label %select.unfold, label %bb.h

select.unfold:                                    ; preds = %bb.g, %bb.d, %bb.e, %bb.f
  %.294.ph = phi i32 [ %.092134, %bb.d ], [ 1, %bb.e ], [ %spec.select, %bb.f ], [ %.092134, %bb.g ]
  %.291.ph = phi i8 [ %.089135, %bb.d ], [ %i.u, %bb.e ], [ %.089135, %bb.f ], [ %.089135, %bb.g ]
  %.188.ph = phi i64 [ %i.v, %bb.d ], [ %.087136, %bb.e ], [ %.087136, %bb.f ], [ %.087136, %bb.g ]
  %i.z = add i64 %.188.ph, 1                      ; 2 uses
  %.not122 = icmp slt i64 %i.z, %i.q
  br i1 %.not122, label %.lr.ph, label %.critedge124, !llvm.loop !88

bb.h:                                             ; preds = %bb.g
  %i.aa = add nuw i64 %i.q, 1
  %i.ab = tail call ptr @PyMem_Malloc(i64 noundef %i.aa) #8 ; 5 uses
  %.not106.not = icmp eq ptr %i.ab, null
  br i1 %.not106.not, label %.thread120, label %.preheader125

.preheader125:                                    ; preds = %bb.h
  %i.ac = load i64, ptr %i.m, align 8, !tbaa !22
  %i.ad = load i64, ptr %i.o, align 8, !tbaa !21
  %i.ae = sub i64 %i.ac, %i.ad                    ; 2 uses
  %i.af = icmp sgt i64 %i.ae, 0
  br i1 %i.af, label %.lr.ph144, label %._crit_edge

.lr.ph144:                                        ; preds = %.preheader125, %.critedge
  %i.ag = phi i64 [ %i.aw, %.critedge ], [ %i.ae, %.preheader125 ] ; 3 uses
  %.078143 = phi i64 [ %.179, %.critedge ], [ 0, %.preheader125 ] ; 4 uses
  %.080142 = phi i64 [ %i.at, %.critedge ], [ 0, %.preheader125 ] ; 6 uses
  %.3141 = phi i8 [ %.5, %.critedge ], [ 0, %.preheader125 ] ; 6 uses
  %.395140 = phi i32 [ %.597, %.critedge ], [ 0, %.preheader125 ] ; 3 uses
  %i.ah = load ptr, ptr %i.r, align 8, !tbaa !18  ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 %.080142
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !34  ; 6 uses
  switch i8 %i.aj, label %bb.j [
    i8 39, label %bb.i
    i8 34, label %bb.i
  ]

bb.i:                                             ; preds = %.lr.ph144, %.lr.ph144
  %.not109 = icmp eq i32 %.395140, 0              ; 2 uses
  %i.ak = icmp ne i8 %i.aj, %.3141
  %narrow = select i1 %.not109, i1 true, i1 %i.ak
  %.496 = zext i1 %narrow to i32
  %.4 = select i1 %.not109, i8 %i.aj, i8 %.3141
  br label %.critedge.sink.split

bb.j:                                             ; preds = %.lr.ph144
  %i.al = icmp ne i8 %i.aj, 35
  %i.am = icmp ne i32 %.395140, 0
  %or.cond9 = select i1 %i.al, i1 true, i1 %i.am
  br i1 %or.cond9, label %.critedge.sink.split, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.an = icmp slt i64 %.080142, %i.ag
  br i1 %i.an, label %.lr.ph138, label %.critedge

.lr.ph138:                                        ; preds = %.preheader, %bb.k
  %.181137 = phi i64 [ %i.aq, %bb.k ], [ %.080142, %.preheader ] ; 3 uses
  %i.ao = getelementptr i8, ptr %i.ah, i64 %.181137
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !34
  %.not108 = icmp eq i8 %i.ap, 10
  br i1 %.not108, label %.critedge.sink.split, label %bb.k

bb.k:                                             ; preds = %.lr.ph138
  %i.aq = add nsw i64 %.181137, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.aq, %i.ag
  br i1 %exitcond.not, label %.critedge, label %.lr.ph138, !llvm.loop !89

.critedge.sink.split:                             ; preds = %.lr.ph138, %bb.j, %bb.i
  %.sink = phi i8 [ %i.aj, %bb.j ], [ %i.aj, %bb.i ], [ 10, %.lr.ph138 ]
  %.597.ph = phi i32 [ %.395140, %bb.j ], [ %.496, %bb.i ], [ 0, %.lr.ph138 ]
  %.5.ph = phi i8 [ %.3141, %bb.j ], [ %.4, %bb.i ], [ %.3141, %.lr.ph138 ]
  %.282.ph = phi i64 [ %.080142, %bb.j ], [ %.080142, %bb.i ], [ %.181137, %.lr.ph138 ]
  %i.ar = add i64 %.078143, 1
  %i.as = getelementptr i8, ptr %i.ab, i64 %.078143
  store i8 %.sink, ptr %i.as, align 1, !tbaa !34
  br label %.critedge

.critedge:                                        ; preds = %bb.k, %.critedge.sink.split, %.preheader
  %.597 = phi i32 [ %.597.ph, %.critedge.sink.split ], [ 0, %.preheader ], [ 0, %bb.k ]
  %.5 = phi i8 [ %.5.ph, %.critedge.sink.split ], [ %.3141, %.preheader ], [ %.3141, %bb.k ]
  %.282 = phi i64 [ %.282.ph, %.critedge.sink.split ], [ %.080142, %.preheader ], [ %i.ag, %bb.k ]
  %.179 = phi i64 [ %i.ar, %.critedge.sink.split ], [ %.078143, %.preheader ], [ %.078143, %bb.k ] ; 2 uses
  %i.at = add i64 %.282, 1                        ; 2 uses
  %i.au = load i64, ptr %i.m, align 8, !tbaa !22
  %i.av = load i64, ptr %i.o, align 8, !tbaa !21
  %i.aw = sub i64 %i.au, %i.av                    ; 2 uses
  %i.ax = icmp slt i64 %i.at, %i.aw
  br i1 %i.ax, label %.lr.ph144, label %._crit_edge, !llvm.loop !90

._crit_edge:                                      ; preds = %.critedge, %.preheader125
  %.078.lcssa = phi i64 [ 0, %.preheader125 ], [ %.179, %.critedge ] ; 2 uses
  %i.ay = getelementptr i8, ptr %i.ab, i64 %.078.lcssa
  store i8 0, ptr %i.ay, align 1, !tbaa !34
  %i.az = tail call ptr @PyUnicode_DecodeUTF8(ptr noundef nonnull %i.ab, i64 noundef %.078.lcssa, ptr noundef null) #8
  tail call void @PyMem_Free(ptr noundef nonnull %i.ab) #8
  br label %bb.l

.critedge124:                                     ; preds = %select.unfold, %.preheader126
  %i.ba = tail call ptr @PyUnicode_DecodeUTF8(ptr noundef %i.s, i64 noundef %i.q, ptr noundef null) #8
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge, %.critedge124
  %.186 = phi ptr [ %i.az, %._crit_edge ], [ %i.ba, %.critedge124 ] ; 2 uses
  %.not107 = icmp eq ptr %.186, null
  br i1 %.not107, label %.thread120, label %bb.m

bb.m:                                             ; preds = %bb.l
  store ptr %.186, ptr %i.k, align 8, !tbaa !86
  br label %.thread120

.thread120:                                       ; preds = %bb.m, %bb.l, %bb.h, %bb.b, %bb.c
  %.2 = phi i32 [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.m ], [ -1, %bb.l ], [ -1, %bb.h ]
  ret i32 %.2
}

declare i32 @_PyToken_OneChar(i32 noundef) local_unnamed_addr #2

declare i32 @_PyToken_TwoChars(i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @_PyToken_ThreeChars(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @_PyUnicode_IsPrintable(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @_Py_FatalErrorFunc(ptr noundef, ptr noundef) local_unnamed_addr #5

declare ptr @PyUnicode_DecodeUTF8(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @PyErr_ExceptionMatches(ptr noundef) local_unnamed_addr #2

declare i64 @_PyUnicode_ScanIdentifier(ptr noundef) local_unnamed_addr #2

declare ptr @PyUnicode_Substring(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare ptr @PyUnicode_AsUTF8String(ptr noundef) local_unnamed_addr #2

declare void @_Py_Dealloc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 0, 2) i32 @lookahead(ptr noundef %0, ptr noundef readonly captures(address) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 7 uses
  %i.b = getelementptr i8, ptr %0, i64 16         ; 4 uses
  %i.c = getelementptr i8, ptr %0, i64 64         ; 2 uses
  %i.d = getelementptr i8, ptr %0, i64 2848
  %i.e = getelementptr i8, ptr %0, i64 2776
  %i.f = getelementptr i8, ptr %0, i64 524        ; 6 uses
  %.pre.i.pre = load ptr, ptr %i.a, align 8, !tbaa !11
  %.pre39.i.pre = load ptr, ptr %i.b, align 8, !tbaa !30
  br label %bb.b

bb.b:                                             ; preds = %bb.y, %bb.a
  %.pre39.i = phi ptr [ %.pre39.i.pre, %bb.a ], [ %.pre39.i79, %bb.y ]
  %.pre.i = phi ptr [ %.pre.i.pre, %bb.a ], [ %i.y, %bb.y ]
  %.032 = phi ptr [ %1, %bb.a ], [ %i.bb, %bb.y ] ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.j, %bb.b
  %.pre39.i80 = phi ptr [ %i.r, %bb.j ], [ %.pre39.i, %bb.b ] ; 4 uses
  %.pre.i77 = phi ptr [ %i.q, %bb.j ], [ %.pre.i, %bb.b ] ; 5 uses
  %.not.i = icmp eq ptr %.pre.i77, %.pre39.i80
  br i1 %.not.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i32, ptr %i.f, align 4, !tbaa !28   ; 2 uses
  %i.h = icmp ugt i32 %i.g, 2147483646
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 29, ptr %i.c, align 8, !tbaa !24
  br label %tok_nextc.exit

bb.f:                                             ; preds = %bb.d
  %i.i = add nuw nsw i32 %i.g, 1
  store i32 %i.i, ptr %i.f, align 4, !tbaa !28
  %i.j = getelementptr i8, ptr %.pre.i77, i64 1   ; 2 uses
  store ptr %i.j, ptr %i.a, align 8, !tbaa !11
  %i.k = load i8, ptr %.pre.i77, align 1, !tbaa !34
  %i.l = zext i8 %i.k to i32
  br label %tok_nextc.exit

bb.g:                                             ; preds = %bb.c
  %i.m = load i32, ptr %i.c, align 8, !tbaa !24
  %.not21.i = icmp eq i32 %i.m, 10
  br i1 %.not21.i, label %bb.h, label %tok_nextc.exit

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !31
  %i.o = tail call i32 %i.n(ptr noundef nonnull %0) #8, !inline_history !53
  %.not22.i = icmp eq i32 %i.o, 0
  br i1 %.not22.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = load ptr, ptr %i.b, align 8, !tbaa !30   ; 3 uses
  store ptr %i.p, ptr %i.a, align 8, !tbaa !11
  br label %tok_nextc.exit

bb.j:                                             ; preds = %bb.h
  %i.q = load ptr, ptr %i.a, align 8, !tbaa !11   ; 4 uses
  store ptr %i.q, ptr %i.e, align 8, !tbaa !33
  %i.r = load ptr, ptr %i.b, align 8, !tbaa !30   ; 2 uses
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = tail call ptr @memchr(ptr noundef readonly %i.q, i32 noundef 0, i64 noundef %i.u) #7
  %.not24.i = icmp eq ptr %i.v, null
  br i1 %.not24.i, label %bb.c, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = tail call i32 (ptr, ptr, ...) @_PyTokenizer_syntaxerror(ptr noundef nonnull %0, ptr noundef nonnull @.str.25) #8 ; 0 uses
  %i.x = load ptr, ptr %i.b, align 8, !tbaa !30   ; 3 uses
  store ptr %i.x, ptr %i.a, align 8, !tbaa !11
  br label %tok_nextc.exit

tok_nextc.exit:                                   ; preds = %bb.g, %bb.e, %bb.f, %bb.i, %bb.k
  %.pre39.i79 = phi ptr [ %.pre39.i80, %bb.e ], [ %.pre39.i80, %bb.f ], [ %i.p, %bb.i ], [ %i.x, %bb.k ], [ %.pre39.i80, %bb.g ]
  %i.y = phi ptr [ %.pre.i77, %bb.e ], [ %i.j, %bb.f ], [ %i.p, %bb.i ], [ %i.x, %bb.k ], [ %.pre.i77, %bb.g ] ; 3 uses
  %.0.i = phi i32 [ -1, %bb.e ], [ %i.l, %bb.f ], [ -1, %bb.i ], [ -1, %bb.k ], [ -1, %bb.g ] ; 7 uses
  %i.z = load i8, ptr %.032, align 1, !tbaa !34   ; 2 uses
  %i.aa = icmp eq i8 %i.z, 0
  br i1 %i.aa, label %bb.l, label %bb.o

bb.l:                                             ; preds = %tok_nextc.exit
  %i.ab = and i32 %.0.i, -33
  %i.ac = add i32 %i.ab, -65
  %or.cond37 = icmp ult i32 %i.ac, 26
  br i1 %or.cond37, label %.thread, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = add nsw i32 %.0.i, -48
  %or.cond5 = icmp ult i32 %i.ad, 10
  %i.ae = icmp eq i32 %.0.i, 95
  %or.cond7 = or i1 %i.ae, %or.cond5
  br i1 %or.cond7, label %.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = icmp slt i32 %.0.i, 128
  %i.ag = zext i1 %i.af to i32
  br label %.loopexit

bb.o:                                             ; preds = %tok_nextc.exit
  %i.ah = sext i8 %i.z to i32
  %i.ai = icmp eq i32 %.0.i, %i.ah
  br i1 %i.ai, label %bb.y, label %.loopexit

.loopexit:                                        ; preds = %bb.o, %bb.n
  %.131 = phi i32 [ %i.ag, %bb.n ], [ 0, %bb.o ]  ; 2 uses
  %.not.i38 = icmp eq i32 %.0.i, -1
  br i1 %.not.i38, label %tok_backup.exit, label %.thread

.thread:                                          ; preds = %bb.m, %bb.l, %.loopexit
  %.13144 = phi i32 [ %.131, %.loopexit ], [ 0, %bb.l ], [ 0, %bb.m ]
  %i.aj = getelementptr i8, ptr %i.y, i64 -1      ; 4 uses
  store ptr %i.aj, ptr %i.a, align 8, !tbaa !11
  %i.ak = load ptr, ptr %0, align 8, !tbaa !35
  %i.al = icmp ult ptr %i.aj, %i.ak
  br i1 %i.al, label %bb.p, label %bb.q

bb.p:                                             ; preds = %.thread
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.q:                                             ; preds = %.thread
  %i.am = load i8, ptr %i.aj, align 1, !tbaa !34
  %i.an = trunc nuw i32 %.0.i to i8
  %.not6.i = icmp eq i8 %i.am, %i.an
  br i1 %.not6.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.27) #9
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.ao = load i32, ptr %i.f, align 4, !tbaa !28
  %i.ap = add i32 %i.ao, -1
  store i32 %i.ap, ptr %i.f, align 4, !tbaa !28
  br label %tok_backup.exit

tok_backup.exit:                                  ; preds = %.loopexit, %bb.s
  %i.aq = phi ptr [ %i.y, %.loopexit ], [ %i.aj, %bb.s ]
  %.13145 = phi i32 [ %.131, %.loopexit ], [ %.13144, %bb.s ]
  %.not64 = icmp eq ptr %.032, %1
  br i1 %.not64, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %tok_backup.exit, %tok_backup.exit41
  %i.ar = phi ptr [ %i.ba, %tok_backup.exit41 ], [ %i.aq, %tok_backup.exit ] ; 2 uses
  %.13365 = phi ptr [ %i.as, %tok_backup.exit41 ], [ %.032, %tok_backup.exit ]
  %i.as = getelementptr i8, ptr %.13365, i64 -1   ; 3 uses
  %i.at = load i8, ptr %i.as, align 1, !tbaa !34  ; 2 uses
  %.not.i39 = icmp eq i8 %i.at, -1
  br i1 %.not.i39, label %tok_backup.exit41, label %bb.t

bb.t:                                             ; preds = %.lr.ph
  %i.au = getelementptr i8, ptr %i.ar, i64 -1     ; 4 uses
  store ptr %i.au, ptr %i.a, align 8, !tbaa !11
  %i.av = load ptr, ptr %0, align 8, !tbaa !35
  %i.aw = icmp ult ptr %i.au, %i.av
  br i1 %i.aw, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  tail call void @_Py_FatalErrorFunc(ptr noundef nonnull @__func__.tok_backup, ptr noundef nonnull @.str.26) #9
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.ax = load i8, ptr %i.au, align 1, !tbaa !34
  %.not6.i40 = icmp eq i8 %i.ax, %i.at
  br i1 %.not6.i40, label %bb.x, label %bb.w

end_hunk_0
