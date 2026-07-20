inline.NumInlined: 19
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 13
begin_hunk_0_@LexPush:bb.a

bb.l:                                             ; preds = %bb.j
  store ptr null, ptr @fp, align 8, !tbaa !32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  ret void
}

declare ptr @Error(i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

declare ptr @PosOfFile(i16 noundef zeroext) local_unnamed_addr #4

declare ptr @FullFileName(i16 noundef zeroext) local_unnamed_addr #4

declare ptr @FileName(i16 noundef zeroext) local_unnamed_addr #4

declare ptr @EchoFileSource(i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i64 @ftell(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @LexPop() local_unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @stack_free, align 4, !tbaa !4 ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %i.d = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef %i.c, ptr noundef nonnull @.str.25) #10 ; 0 uses
  %.pre = load i32, ptr @stack_free, align 4, !tbaa !4
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = phi i32 [ %.pre, %bb.b ], [ %i.a, %bb.a ]
  %i.f = add nsw i32 %i.e, -1                     ; 2 uses
  store i32 %i.f, ptr @stack_free, align 4, !tbaa !4
  %i.g = load i32, ptr @same_file, align 4, !tbaa !4
  %.not = icmp eq i32 %i.g, 0
  %i.h = load ptr, ptr @fp, align 8, !tbaa !32    ; 3 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = sext i32 %i.f to i64
  %i.j = getelementptr inbounds [120 x i8], ptr @lex_stack, i64 %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.l = load i64, ptr %i.k, align 8, !tbaa !43
  %i.m = tail call i32 @fseek(ptr noundef %i.h, i64 noundef %i.l, i32 noundef 0) ; 0 uses
  br label %bb.g

bb.e:                                             ; preds = %bb.c
  %.not1 = icmp eq ptr %i.h, null
  br i1 %.not1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = tail call i32 @fclose(ptr noundef nonnull %i.h) ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.o = load ptr, ptr @mem_block, align 8, !tbaa !23
  tail call void @free(ptr noundef %i.o) #10
  %i.p = load i32, ptr @stack_free, align 4, !tbaa !4
  %i.q = sext i32 %i.p to i64
  %i.r = getelementptr inbounds [120 x i8], ptr @lex_stack, i64 %i.q ; 17 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 112
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !40
  store ptr %i.t, ptr @mem_block, align 8, !tbaa !23
  %i.u = load ptr, ptr %i.r, align 8, !tbaa !24
  store ptr %i.u, ptr @chpt, align 8, !tbaa !23
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !25
  store ptr %i.w, ptr @frst, align 8, !tbaa !23
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 16
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !26
  store ptr %i.y, ptr @limit, align 8, !tbaa !23
  %i.z = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !27
  store ptr %i.aa, ptr @buf, align 8, !tbaa !23
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ac = load i32, ptr %i.ab, align 8, !tbaa !28
  store i32 %i.ac, ptr @blksize, align 4, !tbaa !4
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 36
  %i.ae = load i8, ptr %i.ad, align 4, !tbaa !29
  store i8 %i.ae, ptr @last_char, align 1, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !30
  store ptr %i.ag, ptr @startline, align 8, !tbaa !23
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 48
  %i.ai = load i16, ptr %i.ah, align 8, !tbaa !14
  store i16 %i.ai, ptr @this_file, align 2, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !33
  store ptr %i.ak, ptr @fp, align 8, !tbaa !32
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.am = load i16, ptr %i.al, align 8, !tbaa !34
  store i16 %i.am, ptr @ftype, align 2, !tbaa !31
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 80
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !36
  store ptr %i.ao, ptr @next_token, align 8, !tbaa !35
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.aq = load i32, ptr %i.ap, align 8, !tbaa !37
  store i32 %i.aq, ptr @offset, align 4, !tbaa !4
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 92
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !38
  store i32 %i.as, ptr @first_line_num, align 4, !tbaa !4
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 96
  %i.au = load i32, ptr %i.at, align 8, !tbaa !39
  store i32 %i.au, ptr @same_file, align 4, !tbaa !4
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 66
  %i.aw = load i16, ptr %i.av, align 2, !tbaa !42
  store i16 %i.aw, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 2), align 2, !tbaa !41
  %i.ax = getelementptr inbounds nuw i8, ptr %i.r, i64 68
  %i.ay = load i32, ptr %i.ax, align 4
  store i32 %i.ay, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @fseek(ptr noundef captures(none), i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fclose(ptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local i64 @LexNextTokenPos() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @next_token, align 8, !tbaa !35 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = tail call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 4, ptr noundef nonnull @.str.26, i32 noundef 1, ptr noundef nonnull %i.b) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load ptr, ptr @fp, align 8, !tbaa !32
  %i.e = tail call i64 @ftell(ptr noundef %i.d)
  %i.f = load ptr, ptr @limit, align 8, !tbaa !23
  %i.g = load ptr, ptr @chpt, align 8, !tbaa !23
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = load ptr, ptr @buf, align 8, !tbaa !23
  %i.k = load ptr, ptr @frst, align 8, !tbaa !23
  %i.l = ptrtoint ptr %i.j to i64
  %i.m = ptrtoint ptr %i.k to i64
  %i.n = add i64 %i.e, %i.i
  %i.o = add i64 %i.h, %i.l
  %i.p = sub i64 %i.n, %i.o
  %i.q = add i64 %i.p, %i.m
  ret i64 %i.q
}

; Function Attrs: nounwind uwtable
define dso_local nonnull ptr @LexGetToken() local_unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = load ptr, ptr @next_token, align 8, !tbaa !35 ; 8 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.b, ptr @zz_hold, align 8, !tbaa !35
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8    ; 5 uses
  %i.e = icmp eq ptr %i.d, %i.b
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.d, ptr @zz_res, align 8, !tbaa !35
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !8    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.g, ptr %i.h, align 8, !tbaa !8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.d, ptr %i.i, align 8, !tbaa !8
  store ptr %i.b, ptr %i.c, align 8, !tbaa !8
  store ptr %i.b, ptr %i.f, align 8, !tbaa !8
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.j = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ]
  store ptr %i.j, ptr @next_token, align 8, !tbaa !35
  br label %bb.cx

bb.e:                                             ; preds = %bb.a
  %i.k = load ptr, ptr @chpt, align 8, !tbaa !23
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.e
  %.0190 = phi i8 [ 0, %bb.e ], [ %.2192, %.loopexit ] ; 26 uses
  %.0188 = phi i8 [ 0, %bb.e ], [ %.1189, %.loopexit ] ; 20 uses
  %.0187 = phi ptr [ %i.k, %bb.e ], [ %.10, %.loopexit ] ; 36 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.0187, i64 1 ; 24 uses
  %i.m = load i8, ptr %.0187, align 1, !tbaa !8
  %i.n = zext i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @chtbl, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1, !tbaa !8
  switch i8 %i.p, label %bb.cu [
    i8 3, label %bb.g
    i8 4, label %.preheader296
    i8 5, label %bb.m
    i8 6, label %bb.m
    i8 7, label %bb.n
    i8 8, label %bb.o
    i8 9, label %bb.p
    i8 0, label %bb.ae
    i8 1, label %bb.ai
    i8 2, label %bb.bu
  ]

bb.g:                                             ; preds = %bb.f
  %i.q = load i16, ptr @ftype, align 2, !tbaa !31
  %i.r = icmp eq i16 %i.q, 3
  br i1 %i.r, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.s = load i8, ptr %i.l, align 1, !tbaa !8     ; 2 uses
  %i.t = add i8 %i.s, -97
  %or.cond265 = icmp ult i8 %i.t, 26
  br i1 %or.cond265, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.0187, i64 2
  %i.v = load i8, ptr %i.u, align 1, !tbaa !8
  %i.w = icmp eq i8 %i.v, 123
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.x = load ptr, ptr @StartSym, align 8, !tbaa !35
  %i.y = call ptr @NewToken(i8 noundef zeroext 102, ptr noundef nonnull @file_pos, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %i.s, ptr noundef %i.x) #10
  %i.z = getelementptr inbounds nuw i8, ptr %.0187, i64 3
  br label %.loopexit

bb.k:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.aa = load ptr, ptr @startline, align 8, !tbaa !23
  %i.ab = ptrtoint ptr %.0187 to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = trunc i64 %i.ad to i32
  %i.af = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.ag = shl i32 %i.ae, 20
  %i.ah = and i32 %i.af, 1048575
  %i.ai = or disjoint i32 %i.ag, %i.ah
  store i32 %i.ai, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.aj = load i8, ptr %.0187, align 1, !tbaa !8
  %i.ak = zext i8 %i.aj to i32
  %i.al = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 6, ptr noundef nonnull @.str.27, i32 noundef 2, ptr noundef nonnull @file_pos, i32 noundef %i.ak) #10 ; 0 uses
  br label %.loopexit

.preheader296:                                    ; preds = %bb.f, %.preheader296
  %.1 = phi ptr [ %i.am, %.preheader296 ], [ %i.l, %bb.f ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.1, i64 1 ; 2 uses
  %i.an = load i8, ptr %.1, align 1, !tbaa !8
  switch i8 %i.an, label %.preheader296 [
    i8 10, label %bb.l
    i8 0, label %.loopexit
  ]

bb.l:                                             ; preds = %.preheader296
  store ptr %i.am, ptr @chpt, align 8, !tbaa !23
  call fastcc void @srcnext()
  %i.ao = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.ap = add i32 %i.ao, 1
  %i.aq = and i32 %i.ap, 1048575
  store i32 %i.aq, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.ar = load ptr, ptr @chpt, align 8, !tbaa !23 ; 2 uses
  %i.as = getelementptr inbounds i8, ptr %i.ar, i64 -1
  store ptr %i.as, ptr @startline, align 8, !tbaa !23
  br label %.loopexit

bb.m:                                             ; preds = %bb.f, %bb.f
  %i.at = add i8 %.0188, 1
  br label %.loopexit

bb.n:                                             ; preds = %bb.f
  %i.au = add i8 %.0188, 8
  br label %.loopexit

bb.o:                                             ; preds = %bb.f
  store ptr %i.l, ptr @chpt, align 8, !tbaa !23
  call fastcc void @srcnext()
  %i.av = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.aw = add i32 %i.av, 1
  %i.ax = and i32 %i.aw, 1048575
  store i32 %i.ax, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.ay = add i8 %.0190, 1
  %i.az = load ptr, ptr @chpt, align 8, !tbaa !23 ; 2 uses
  %i.ba = getelementptr inbounds i8, ptr %i.az, i64 -1
  store ptr %i.ba, ptr @startline, align 8, !tbaa !23
  br label %.loopexit

bb.p:                                             ; preds = %bb.f
  %i.bb = load i32, ptr @same_file, align 4, !tbaa !4
  %.not259 = icmp eq i32 %i.bb, 0
  br i1 %.not259, label %bb.q, label %.loopexit297

bb.q:                                             ; preds = %bb.p
  %i.bc = load ptr, ptr @fp, align 8, !tbaa !32   ; 2 uses
  %.not260 = icmp eq ptr %i.bc, null
  br i1 %.not260, label %._crit_edge436, label %bb.r

._crit_edge436:                                   ; preds = %bb.q
  %.pr.pre = load i16, ptr @this_file, align 2, !tbaa !31
  br label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.bd = call i32 @fclose(ptr noundef nonnull %i.bc) ; 0 uses
  store ptr null, ptr @fp, align 8, !tbaa !32
  %i.be = load i16, ptr @ftype, align 2, !tbaa !31
  %i.bf = icmp eq i16 %i.be, 0
  br i1 %i.bf, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bg = load i16, ptr @this_file, align 2, !tbaa !31
  %i.bh = call zeroext i16 @NextFile(i16 noundef zeroext %i.bg) #10
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %i.bi = phi i16 [ %i.bh, %bb.s ], [ 0, %bb.r ]  ; 2 uses
  store i16 %i.bi, ptr @this_file, align 2, !tbaa !31
  br label %bb.u

bb.u:                                             ; preds = %._crit_edge436, %bb.t
  %.pr = phi i16 [ %.pr.pre, %._crit_edge436 ], [ %i.bi, %bb.t ] ; 2 uses
  %.not261339 = icmp eq i16 %.pr, 0
  br i1 %.not261339, label %.loopexit297, label %.lr.ph

.lr.ph:                                           ; preds = %bb.u, %bb.w
  %i.bj = phi i16 [ %i.br, %bb.w ], [ %.pr, %bb.u ] ; 2 uses
  store i16 %i.bj, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 2), align 2, !tbaa !41
  store i32 1, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.bk = call ptr @OpenFile(i16 noundef zeroext %i.bj, i32 noundef 0, i32 noundef 1) #10 ; 3 uses
  store ptr %i.bk, ptr @fp, align 8, !tbaa !32
  %.not262 = icmp eq ptr %i.bk, null
  br i1 %.not262, label %bb.v, label %.thread

bb.v:                                             ; preds = %.lr.ph
  %i.bl = load i16, ptr @this_file, align 2, !tbaa !31
  %i.bm = call ptr @FullFileName(i16 noundef zeroext %i.bl) #10
  %i.bn = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 7, ptr noundef nonnull @.str.28, i32 noundef 2, ptr noundef nonnull @file_pos, ptr noundef %i.bm) #10 ; 0 uses
  %i.bo = load i16, ptr @ftype, align 2, !tbaa !31
  %i.bp = icmp eq i16 %i.bo, 0
  br i1 %i.bp, label %bb.w, label %.thread465

.thread465:                                       ; preds = %bb.v
  store i16 0, ptr @this_file, align 2, !tbaa !31
  br label %.loopexit297

bb.w:                                             ; preds = %bb.v
  %i.bq = load i16, ptr @this_file, align 2, !tbaa !31
  %i.br = call zeroext i16 @NextFile(i16 noundef zeroext %i.bq) #10 ; 3 uses
  store i16 %i.br, ptr @this_file, align 2, !tbaa !31
  %.not261 = icmp eq i16 %i.br, 0
  br i1 %.not261, label %.loopexit297, label %.lr.ph, !llvm.loop !44

.loopexit297:                                     ; preds = %bb.w, %.thread465, %bb.u, %bb.p
  %.pr277 = load ptr, ptr @fp, align 8, !tbaa !32 ; 2 uses
  %.not263 = icmp eq ptr %.pr277, null
  br i1 %.not263, label %bb.z, label %.thread

.thread:                                          ; preds = %.lr.ph, %.loopexit297
  %i.bs = phi ptr [ %.pr277, %.loopexit297 ], [ %i.bk, %.lr.ph ]
  %i.bt = load i32, ptr @offset, align 4, !tbaa !4 ; 2 uses
  %.not264 = icmp eq i32 %i.bt, 0
  br i1 %.not264, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.thread
  %i.bu = sext i32 %i.bt to i64
  %i.bv = call i32 @fseek(ptr noundef nonnull %i.bs, i64 noundef %i.bu, i32 noundef 0) ; 0 uses
  store i32 0, ptr @offset, align 4, !tbaa !4
  %i.bw = load i32, ptr @first_line_num, align 4, !tbaa !4
  %i.bx = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.by = and i32 %i.bw, 1048575
  %i.bz = and i32 %i.bx, -1048576
  %i.ca = or disjoint i32 %i.bz, %i.by
  store i32 %i.ca, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.thread
  %i.cb = load ptr, ptr @buf, align 8, !tbaa !23  ; 3 uses
  store ptr %i.cb, ptr @chpt, align 8, !tbaa !23
  store ptr %i.cb, ptr @limit, align 8, !tbaa !23
  store ptr %i.cb, ptr @frst, align 8, !tbaa !23
  store i32 0, ptr @blksize, align 4, !tbaa !4
  store i8 10, ptr @last_char, align 1, !tbaa !8
  call fastcc void @srcnext()
  %i.cc = load ptr, ptr @chpt, align 8, !tbaa !23 ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 -1
  store ptr %i.cd, ptr @startline, align 8, !tbaa !23
  br label %.loopexit

bb.z:                                             ; preds = %.loopexit297
  %i.ce = load i16, ptr @ftype, align 2, !tbaa !31
  switch i16 %i.ce, label %bb.ad [
    i16 0, label %bb.aa
    i16 3, label %bb.aa
    i16 10, label %bb.ab
    i16 1, label %bb.ac
  ]

bb.aa:                                            ; preds = %bb.z, %bb.z
  %i.cf = load ptr, ptr @StartSym, align 8, !tbaa !35
  %i.cg = call ptr @NewToken(i8 noundef zeroext 105, ptr noundef nonnull @file_pos, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 2, ptr noundef %i.cf) #10
  %i.ch = call ptr @NewToken(i8 noundef zeroext 111, ptr noundef nonnull @file_pos, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef null) #10
  store ptr %i.ch, ptr @next_token, align 8, !tbaa !35
  store ptr %.0187, ptr @startline, align 8, !tbaa !23
  br label %.loopexit

bb.ab:                                            ; preds = %bb.z
  %i.ci = load ptr, ptr @FilterOutSym, align 8, !tbaa !35
  %i.cj = call ptr @NewToken(i8 noundef zeroext 105, ptr noundef nonnull @file_pos, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 2, ptr noundef %i.ci) #10
  store ptr %.0187, ptr @startline, align 8, !tbaa !23
  br label %.loopexit

bb.ac:                                            ; preds = %bb.z
  call void @LexPop()
  %i.ck = load ptr, ptr @chpt, align 8, !tbaa !23
  br label %.loopexit

bb.ad:                                            ; preds = %bb.z
  %i.cl = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %i.cm = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef %i.cl, ptr noundef nonnull @.str.29) #10 ; 0 uses
  br label %.loopexit

bb.ae:                                            ; preds = %bb.f
  %i.cn = load ptr, ptr @startline, align 8, !tbaa !23
  %i.co = ptrtoint ptr %.0187 to i64              ; 2 uses
  %i.cp = ptrtoint ptr %i.cn to i64
  %i.cq = sub i64 %i.co, %i.cp
  %i.cr = trunc i64 %i.cq to i32
  %i.cs = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.ct = shl i32 %i.cr, 20
  %i.cu = and i32 %i.cs, 1048575
  %i.cv = or disjoint i32 %i.ct, %i.cu
  store i32 %i.cv, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  br label %bb.af

bb.af:                                            ; preds = %bb.af, %bb.ae
  %.2 = phi ptr [ %i.l, %bb.ae ], [ %i.cw, %bb.af ] ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.2, i64 1 ; 3 uses
  %i.cx = load i8, ptr %.2, align 1, !tbaa !8
  %i.cy = zext i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr @chtbl, i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !8
  %i.db = icmp eq i8 %i.da, 0
  br i1 %i.db, label %bb.af, label %bb.ag, !llvm.loop !45

bb.ag:                                            ; preds = %bb.af
  %i.dc = ptrtoint ptr %i.cw to i64
  %i.dd = xor i64 %i.co, -1
  %i.de = add i64 %i.dc, %i.dd
  %i.df = trunc i64 %i.de to i32
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ah, %bb.ag
  %.0199 = phi i32 [ %i.df, %bb.ag ], [ %i.dh, %bb.ah ] ; 3 uses
  %.3 = phi ptr [ %i.cw, %bb.ag ], [ %i.di, %bb.ah ]
  %i.dg = call ptr @SearchSym(ptr noundef nonnull %.0187, i32 noundef %.0199) #10 ; 2 uses
  %i.dh = add nsw i32 %.0199, -1
  %i.di = getelementptr inbounds i8, ptr %.3, i64 -1 ; 2 uses
  %i.dj = icmp sgt i32 %.0199, 1
  %i.dk = icmp eq ptr %i.dg, null
  %i.dl = select i1 %i.dj, i1 %i.dk, i1 false
  br i1 %i.dl, label %bb.ah, label %.loopexit298, !llvm.loop !46

bb.ai:                                            ; preds = %bb.f
  %i.dm = load ptr, ptr @startline, align 8, !tbaa !23
  %i.dn = ptrtoint ptr %.0187 to i64              ; 2 uses
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do
  %i.dq = trunc i64 %i.dp to i32
  %i.dr = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.ds = shl i32 %i.dq, 20
  %i.dt = and i32 %i.dr, 1048575
  %i.du = or disjoint i32 %i.ds, %i.dt
  store i32 %i.du, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  br label %bb.aj

bb.aj:                                            ; preds = %bb.aj, %bb.ai
  %.4 = phi ptr [ %i.l, %bb.ai ], [ %i.dv, %bb.aj ] ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %.4, i64 1
  %i.dw = load i8, ptr %.4, align 1, !tbaa !8
  %i.dx = zext i8 %i.dw to i64
  %i.dy = getelementptr inbounds nuw i8, ptr @chtbl, i64 %i.dx
  %i.dz = load i8, ptr %i.dy, align 1, !tbaa !8
  %i.ea = icmp eq i8 %i.dz, 1
  br i1 %i.ea, label %bb.aj, label %bb.ak, !llvm.loop !47

bb.ak:                                            ; preds = %bb.aj
  %i.eb = ptrtoint ptr %.4 to i64
  %i.ec = sub i64 %i.eb, %i.dn
  %i.ed = trunc i64 %i.ec to i32
  %i.ee = call ptr @SearchSym(ptr noundef nonnull %.0187, i32 noundef %i.ed) #10
  br label %.loopexit298

.loopexit298:                                     ; preds = %bb.ah, %bb.ak
  %.1194 = phi ptr [ %i.ee, %bb.ak ], [ %i.dg, %bb.ah ] ; 11 uses
  %.5 = phi ptr [ %.4, %bb.ak ], [ %i.di, %bb.ah ] ; 14 uses
  %i.ef = icmp eq ptr %.1194, null
  br i1 %i.ef, label %bb.al, label %bb.ar

bb.al:                                            ; preds = %.loopexit298
  %.0187543.le778 = ptrtoint ptr %.0187 to i64
  %.5.lcssa724727 = ptrtoaddr ptr %.5 to i64      ; 2 uses
  %.0187543.le758 = ptrtoaddr ptr %.0187 to i64   ; 2 uses
  %i.eg = ptrtoint ptr %.5 to i64
  %i.eh = ptrtoint ptr %.0187 to i64
  %i.ei = sub i64 %i.eg, %i.eh                    ; 14 uses
  %i.ej = shl i64 %i.ei, 32
  %sext258 = add i64 %i.ej, 292057776128
  %i.ek = ashr exact i64 %sext258, 32
  %i.el = lshr i64 %i.ek, 3
  %i.em = trunc i64 %i.el to i32
  %i.en = add i32 %i.em, 1                        ; 4 uses
  store i32 %i.en, ptr @zz_size, align 4, !tbaa !4
  %i.eo = icmp ugt i32 %i.en, 264
  br i1 %i.eo, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ep = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef nonnull @file_pos) #10 ; 0 uses
  %.pre435 = load ptr, ptr @zz_hold, align 8, !tbaa !35
  br label %bb.aq

bb.an:                                            ; preds = %bb.al
  %i.eq = zext nneg i32 %i.en to i64
  %i.er = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.eq ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !35 ; 4 uses
  %i.et = icmp eq ptr %i.es, null
  br i1 %i.et, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.eu = call ptr @GetMemory(i32 noundef %i.en, ptr noundef nonnull @file_pos) #10 ; 2 uses
  store ptr %i.eu, ptr @zz_hold, align 8, !tbaa !35
  br label %bb.aq

bb.ap:                                            ; preds = %bb.an
  store ptr %i.es, ptr @zz_hold, align 8, !tbaa !35
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !8
  store ptr %i.ev, ptr %i.er, align 8, !tbaa !35
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ao, %bb.ap, %bb.am
  %i.ew = phi ptr [ %i.eu, %bb.ao ], [ %i.es, %bb.ap ], [ %.pre435, %bb.am ] ; 16 uses
  %i.ex = ptrtoaddr ptr %i.ew to i64
  %i.ey = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.ez = trunc i32 %i.ey to i8
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ew, i64 33
  store i8 %i.ez, ptr %i.fa, align 1, !tbaa !8
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ew, i64 32
  store i8 11, ptr %i.fb, align 8, !tbaa !8
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  store ptr %i.ew, ptr %i.fc, align 8, !tbaa !8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  store ptr %i.ew, ptr %i.fd, align 8, !tbaa !8
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  store ptr %i.ew, ptr %i.fe, align 8, !tbaa !8
  store ptr %i.ew, ptr %i.ew, align 8, !tbaa !8
  %i.ff = load i16, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 2), align 2, !tbaa !41
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ew, i64 34
  store i16 %i.ff, ptr %i.fg, align 2, !tbaa !8
  %i.fh = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ew, i64 36
  store i32 %i.fh, ptr %i.fi, align 4
  %i.fj = icmp sgt i64 %i.ei, 0
  br i1 %i.fj, label %iter.check658, label %._crit_edge360

iter.check658:                                    ; preds = %bb.aq
  %i.fk = getelementptr inbounds nuw i8, ptr %i.ew, i64 64 ; 7 uses
  %min.iters.check644 = icmp ult i64 %i.ei, 4
  br i1 %min.iters.check644, label %vec.epilog.scalar.ph659.preheader, label %vector.memcheck642

vector.memcheck642:                               ; preds = %iter.check658
  %i.fl = sub i64 %i.ex, %.0187543.le778
  %i.fm = add i64 %i.fl, 63
  %diff.check643 = icmp ult i64 %i.fm, 31
  br i1 %diff.check643, label %vec.epilog.scalar.ph659.preheader, label %vector.main.loop.iter.check645

vector.main.loop.iter.check645:                   ; preds = %vector.memcheck642
  %min.iters.check646 = icmp ult i64 %i.ei, 32
  br i1 %min.iters.check646, label %vec.epilog.ph662, label %vector.ph647

vector.ph647:                                     ; preds = %vector.main.loop.iter.check645
  %n.mod.vf648 = and i64 %i.ei, 28
  %n.vec649 = and i64 %i.ei, 9223372036854775776  ; 4 uses
  br label %vector.body650

vector.body650:                                   ; preds = %vector.body650, %vector.ph647
  %index651 = phi i64 [ 0, %vector.ph647 ], [ %index.next654, %vector.body650 ] ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.0187, i64 %index651 ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %wide.load652 = load <16 x i8>, ptr %i.fn, align 1, !tbaa !8
  %wide.load653 = load <16 x i8>, ptr %i.fo, align 1, !tbaa !8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fk, i64 %index651 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 16
  store <16 x i8> %wide.load652, ptr %i.fp, align 1, !tbaa !8
  store <16 x i8> %wide.load653, ptr %i.fq, align 1, !tbaa !8
  %index.next654 = add nuw i64 %index651, 32      ; 2 uses
  %i.fr = icmp eq i64 %index.next654, %n.vec649
  br i1 %i.fr, label %middle.block655, label %vector.body650, !llvm.loop !48

middle.block655:                                  ; preds = %vector.body650
  %cmp.n656 = icmp eq i64 %i.ei, %n.vec649
  br i1 %cmp.n656, label %._crit_edge360, label %vec.epilog.iter.check660

vec.epilog.iter.check660:                         ; preds = %middle.block655
  %min.epilog.iters.check661 = icmp eq i64 %n.mod.vf648, 0
  br i1 %min.epilog.iters.check661, label %vec.epilog.scalar.ph659.preheader, label %vec.epilog.ph662, !prof !51

vec.epilog.ph662:                                 ; preds = %vector.main.loop.iter.check645, %vec.epilog.iter.check660
  %vec.epilog.resume.val657 = phi i64 [ %n.vec649, %vec.epilog.iter.check660 ], [ 0, %vector.main.loop.iter.check645 ]
  %n.vec664 = and i64 %i.ei, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body665

vec.epilog.vector.body665:                        ; preds = %vec.epilog.vector.body665, %vec.epilog.ph662
  %index666 = phi i64 [ %vec.epilog.resume.val657, %vec.epilog.ph662 ], [ %index.next668, %vec.epilog.vector.body665 ] ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.0187, i64 %index666
  %wide.load667 = load <4 x i8>, ptr %i.fs, align 1, !tbaa !8
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fk, i64 %index666
  store <4 x i8> %wide.load667, ptr %i.ft, align 1, !tbaa !8
  %index.next668 = add nuw i64 %index666, 4       ; 2 uses
  %i.fu = icmp eq i64 %index.next668, %n.vec664
  br i1 %i.fu, label %vec.epilog.middle.block669, label %vec.epilog.vector.body665, !llvm.loop !52

vec.epilog.middle.block669:                       ; preds = %vec.epilog.vector.body665
  %cmp.n670 = icmp eq i64 %i.ei, %n.vec664
  br i1 %cmp.n670, label %._crit_edge360, label %vec.epilog.scalar.ph659.preheader

vec.epilog.scalar.ph659.preheader:                ; preds = %vector.memcheck642, %iter.check658, %vec.epilog.iter.check660, %vec.epilog.middle.block669
  %indvars.iv428.ph = phi i64 [ 0, %iter.check658 ], [ 0, %vector.memcheck642 ], [ %n.vec649, %vec.epilog.iter.check660 ], [ %n.vec664, %vec.epilog.middle.block669 ] ; 3 uses
  %i.fv = sub i64 %.5.lcssa724727, %.0187543.le758
  %xtraiter714 = and i64 %i.fv, 3                 ; 2 uses
  %lcmp.mod715.not = icmp eq i64 %xtraiter714, 0
  br i1 %lcmp.mod715.not, label %vec.epilog.scalar.ph659.prol.loopexit, label %vec.epilog.scalar.ph659.prol

vec.epilog.scalar.ph659.prol:                     ; preds = %vec.epilog.scalar.ph659.preheader, %vec.epilog.scalar.ph659.prol
  %indvars.iv428.prol = phi i64 [ %indvars.iv.next429.prol, %vec.epilog.scalar.ph659.prol ], [ %indvars.iv428.ph, %vec.epilog.scalar.ph659.preheader ] ; 3 uses
  %prol.iter716 = phi i64 [ %prol.iter716.next, %vec.epilog.scalar.ph659.prol ], [ 0, %vec.epilog.scalar.ph659.preheader ]
  %i.fw = getelementptr inbounds nuw i8, ptr %.0187, i64 %indvars.iv428.prol
  %i.fx = load i8, ptr %i.fw, align 1, !tbaa !8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv428.prol
  store i8 %i.fx, ptr %i.fy, align 1, !tbaa !8
  %indvars.iv.next429.prol = add nuw nsw i64 %indvars.iv428.prol, 1 ; 2 uses
  %prol.iter716.next = add i64 %prol.iter716, 1   ; 2 uses
  %prol.iter716.cmp.not = icmp eq i64 %prol.iter716.next, %xtraiter714
  br i1 %prol.iter716.cmp.not, label %vec.epilog.scalar.ph659.prol.loopexit, label %vec.epilog.scalar.ph659.prol, !llvm.loop !53

vec.epilog.scalar.ph659.prol.loopexit:            ; preds = %vec.epilog.scalar.ph659.prol, %vec.epilog.scalar.ph659.preheader
  %indvars.iv428.unr = phi i64 [ %indvars.iv428.ph, %vec.epilog.scalar.ph659.preheader ], [ %indvars.iv.next429.prol, %vec.epilog.scalar.ph659.prol ]
  %i.fz = sub i64 %indvars.iv428.ph, %.5.lcssa724727
  %i.ga = add i64 %i.fz, %.0187543.le758
  %i.gb = icmp ugt i64 %i.ga, -4
  br i1 %i.gb, label %._crit_edge360, label %vec.epilog.scalar.ph659

vec.epilog.scalar.ph659:                          ; preds = %vec.epilog.scalar.ph659.prol.loopexit, %vec.epilog.scalar.ph659
  %indvars.iv428 = phi i64 [ %indvars.iv.next429.3, %vec.epilog.scalar.ph659 ], [ %indvars.iv428.unr, %vec.epilog.scalar.ph659.prol.loopexit ] ; 6 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.0187, i64 %indvars.iv428
  %i.gd = load i8, ptr %i.gc, align 1, !tbaa !8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv428
  store i8 %i.gd, ptr %i.ge, align 1, !tbaa !8
  %indvars.iv.next429 = add nuw nsw i64 %indvars.iv428, 1 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.0187, i64 %indvars.iv.next429
  %i.gg = load i8, ptr %i.gf, align 1, !tbaa !8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv.next429
  store i8 %i.gg, ptr %i.gh, align 1, !tbaa !8
  %indvars.iv.next429.1 = add nuw nsw i64 %indvars.iv428, 2 ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.0187, i64 %indvars.iv.next429.1
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !8
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv.next429.1
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !8
  %indvars.iv.next429.2 = add nuw nsw i64 %indvars.iv428, 3 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %.0187, i64 %indvars.iv.next429.2
  %i.gm = load i8, ptr %i.gl, align 1, !tbaa !8
  %i.gn = getelementptr inbounds nuw i8, ptr %i.fk, i64 %indvars.iv.next429.2
  store i8 %i.gm, ptr %i.gn, align 1, !tbaa !8
  %indvars.iv.next429.3 = add nuw nsw i64 %indvars.iv428, 4 ; 2 uses
  %exitcond431.not.3 = icmp eq i64 %indvars.iv.next429.3, %i.ei
  br i1 %exitcond431.not.3, label %._crit_edge360, label %vec.epilog.scalar.ph659, !llvm.loop !55

._crit_edge360:                                   ; preds = %vec.epilog.scalar.ph659.prol.loopexit, %vec.epilog.scalar.ph659, %middle.block655, %vec.epilog.middle.block669, %bb.aq
  %.lcssa = phi i64 [ 0, %bb.aq ], [ %i.ei, %middle.block655 ], [ %i.ei, %vec.epilog.middle.block669 ], [ %i.ei, %vec.epilog.scalar.ph659 ], [ %i.ei, %vec.epilog.scalar.ph659.prol.loopexit ]
  %i.go = getelementptr inbounds nuw i8, ptr %i.ew, i64 64
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %.lcssa
  store i8 0, ptr %i.gp, align 1, !tbaa !8
  br label %.thread287

bb.ar:                                            ; preds = %.loopexit298
  %i.gq = getelementptr inbounds nuw i8, ptr %.1194, i64 32
  %i.gr = load i8, ptr %i.gq, align 8, !tbaa !8
  %i.gs = icmp eq i8 %i.gr, -114
  br i1 %i.gs, label %bb.as, label %bb.bd

bb.as:                                            ; preds = %bb.ar
  %i.gt = getelementptr inbounds nuw i8, ptr %.1194, i64 41
  %i.gu = load i16, ptr %i.gt, align 1
  %i.gv = and i16 %i.gu, 1024
  %.not255 = icmp eq i16 %i.gv, 0
  br i1 %.not255, label %bb.az, label %bb.at

bb.at:                                            ; preds = %bb.as
  %.0187543.le = ptrtoint ptr %.0187 to i64
  %.5.lcssa715717 = ptrtoaddr ptr %.5 to i64      ; 2 uses
  %.0187543.le.a = ptrtoaddr ptr %.0187 to i64    ; 2 uses
  %i.gw = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 8, ptr noundef nonnull @.str.31, i32 noundef 2, ptr noundef nonnull @file_pos) #10 ; 0 uses
  %i.gx = ptrtoint ptr %.5 to i64
  %i.gy = ptrtoint ptr %.0187 to i64
  %i.gz = sub i64 %i.gx, %i.gy                    ; 14 uses
  %i.ha = shl i64 %i.gz, 32
  %sext257 = add i64 %i.ha, 292057776128
  %i.hb = ashr exact i64 %sext257, 32
  %i.hc = lshr i64 %i.hb, 3
  %i.hd = trunc i64 %i.hc to i32
  %i.he = add i32 %i.hd, 1                        ; 4 uses
  store i32 %i.he, ptr @zz_size, align 4, !tbaa !4
  %i.hf = icmp ugt i32 %i.he, 264
  br i1 %i.hf, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  %i.hg = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef nonnull @file_pos) #10 ; 0 uses
  %.pre434 = load ptr, ptr @zz_hold, align 8, !tbaa !35
  br label %bb.ay

bb.av:                                            ; preds = %bb.at
  %i.hh = zext nneg i32 %i.he to i64
  %i.hi = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.hh ; 2 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !35 ; 4 uses
  %i.hk = icmp eq ptr %i.hj, null
  br i1 %i.hk, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  %i.hl = call ptr @GetMemory(i32 noundef %i.he, ptr noundef nonnull @file_pos) #10 ; 2 uses
  store ptr %i.hl, ptr @zz_hold, align 8, !tbaa !35
  br label %bb.ay

bb.ax:                                            ; preds = %bb.av
  store ptr %i.hj, ptr @zz_hold, align 8, !tbaa !35
  %i.hm = load ptr, ptr %i.hj, align 8, !tbaa !8
  store ptr %i.hm, ptr %i.hi, align 8, !tbaa !35
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax, %bb.au
  %i.hn = phi ptr [ %i.hl, %bb.aw ], [ %i.hj, %bb.ax ], [ %.pre434, %bb.au ] ; 16 uses
  %i.ho = ptrtoaddr ptr %i.hn to i64
  %i.hp = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.hq = trunc i32 %i.hp to i8
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 33
  store i8 %i.hq, ptr %i.hr, align 1, !tbaa !8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.hn, i64 32
  store i8 11, ptr %i.hs, align 8, !tbaa !8
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hn, i64 24
  store ptr %i.hn, ptr %i.ht, align 8, !tbaa !8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hn, i64 16
  store ptr %i.hn, ptr %i.hu, align 8, !tbaa !8
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hn, i64 8
  store ptr %i.hn, ptr %i.hv, align 8, !tbaa !8
  store ptr %i.hn, ptr %i.hn, align 8, !tbaa !8
  %i.hw = load i16, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 2), align 2, !tbaa !41
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hn, i64 34
  store i16 %i.hw, ptr %i.hx, align 2, !tbaa !8
  %i.hy = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hn, i64 36
  store i32 %i.hy, ptr %i.hz, align 4
  %i.ia = icmp sgt i64 %i.gz, 0
  br i1 %i.ia, label %iter.check628, label %._crit_edge355

iter.check628:                                    ; preds = %bb.ay
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hn, i64 64 ; 7 uses
  %min.iters.check614 = icmp ult i64 %i.gz, 4
  br i1 %min.iters.check614, label %vec.epilog.scalar.ph629.preheader, label %vector.memcheck612

vector.memcheck612:                               ; preds = %iter.check628
  %i.ic = sub i64 %i.ho, %.0187543.le
  %i.id = add i64 %i.ic, 63
  %diff.check613 = icmp ult i64 %i.id, 31
  br i1 %diff.check613, label %vec.epilog.scalar.ph629.preheader, label %vector.main.loop.iter.check615

vector.main.loop.iter.check615:                   ; preds = %vector.memcheck612
  %min.iters.check616 = icmp ult i64 %i.gz, 32
  br i1 %min.iters.check616, label %vec.epilog.ph632, label %vector.ph617

vector.ph617:                                     ; preds = %vector.main.loop.iter.check615
  %n.mod.vf618 = and i64 %i.gz, 28
  %n.vec619 = and i64 %i.gz, 9223372036854775776  ; 4 uses
  br label %vector.body620

vector.body620:                                   ; preds = %vector.body620, %vector.ph617
  %index621 = phi i64 [ 0, %vector.ph617 ], [ %index.next624, %vector.body620 ] ; 3 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %.0187, i64 %index621 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %i.ie, i64 16
  %wide.load622 = load <16 x i8>, ptr %i.ie, align 1, !tbaa !8
  %wide.load623 = load <16 x i8>, ptr %i.if, align 1, !tbaa !8
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ib, i64 %index621 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  store <16 x i8> %wide.load622, ptr %i.ig, align 1, !tbaa !8
  store <16 x i8> %wide.load623, ptr %i.ih, align 1, !tbaa !8
  %index.next624 = add nuw i64 %index621, 32      ; 2 uses
  %i.ii = icmp eq i64 %index.next624, %n.vec619
  br i1 %i.ii, label %middle.block625, label %vector.body620, !llvm.loop !56

middle.block625:                                  ; preds = %vector.body620
  %cmp.n626 = icmp eq i64 %i.gz, %n.vec619
  br i1 %cmp.n626, label %._crit_edge355, label %vec.epilog.iter.check630

vec.epilog.iter.check630:                         ; preds = %middle.block625
  %min.epilog.iters.check631 = icmp eq i64 %n.mod.vf618, 0
  br i1 %min.epilog.iters.check631, label %vec.epilog.scalar.ph629.preheader, label %vec.epilog.ph632, !prof !51

vec.epilog.ph632:                                 ; preds = %vector.main.loop.iter.check615, %vec.epilog.iter.check630
  %vec.epilog.resume.val627 = phi i64 [ %n.vec619, %vec.epilog.iter.check630 ], [ 0, %vector.main.loop.iter.check615 ]
  %n.vec634 = and i64 %i.gz, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body635

vec.epilog.vector.body635:                        ; preds = %vec.epilog.vector.body635, %vec.epilog.ph632
  %index636 = phi i64 [ %vec.epilog.resume.val627, %vec.epilog.ph632 ], [ %index.next638, %vec.epilog.vector.body635 ] ; 3 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %.0187, i64 %index636
  %wide.load637 = load <4 x i8>, ptr %i.ij, align 1, !tbaa !8
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ib, i64 %index636
  store <4 x i8> %wide.load637, ptr %i.ik, align 1, !tbaa !8
  %index.next638 = add nuw i64 %index636, 4       ; 2 uses
  %i.il = icmp eq i64 %index.next638, %n.vec634
  br i1 %i.il, label %vec.epilog.middle.block639, label %vec.epilog.vector.body635, !llvm.loop !57

vec.epilog.middle.block639:                       ; preds = %vec.epilog.vector.body635
  %cmp.n640 = icmp eq i64 %i.gz, %n.vec634
  br i1 %cmp.n640, label %._crit_edge355, label %vec.epilog.scalar.ph629.preheader

vec.epilog.scalar.ph629.preheader:                ; preds = %vector.memcheck612, %iter.check628, %vec.epilog.iter.check630, %vec.epilog.middle.block639
  %indvars.iv419.ph = phi i64 [ 0, %iter.check628 ], [ 0, %vector.memcheck612 ], [ %n.vec619, %vec.epilog.iter.check630 ], [ %n.vec634, %vec.epilog.middle.block639 ] ; 3 uses
  %i.im = sub i64 %.5.lcssa715717, %.0187543.le.a
  %xtraiter = and i64 %i.im, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph629.prol.loopexit, label %vec.epilog.scalar.ph629.prol

vec.epilog.scalar.ph629.prol:                     ; preds = %vec.epilog.scalar.ph629.preheader, %vec.epilog.scalar.ph629.prol
  %indvars.iv419.prol = phi i64 [ %indvars.iv.next420.prol, %vec.epilog.scalar.ph629.prol ], [ %indvars.iv419.ph, %vec.epilog.scalar.ph629.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph629.prol ], [ 0, %vec.epilog.scalar.ph629.preheader ]
  %i.in = getelementptr inbounds nuw i8, ptr %.0187, i64 %indvars.iv419.prol
  %i.io = load i8, ptr %i.in, align 1, !tbaa !8
  %i.ip = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv419.prol
  store i8 %i.io, ptr %i.ip, align 1, !tbaa !8
  %indvars.iv.next420.prol = add nuw nsw i64 %indvars.iv419.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph629.prol.loopexit, label %vec.epilog.scalar.ph629.prol, !llvm.loop !58

vec.epilog.scalar.ph629.prol.loopexit:            ; preds = %vec.epilog.scalar.ph629.prol, %vec.epilog.scalar.ph629.preheader
  %indvars.iv419.unr = phi i64 [ %indvars.iv419.ph, %vec.epilog.scalar.ph629.preheader ], [ %indvars.iv.next420.prol, %vec.epilog.scalar.ph629.prol ]
  %i.iq = sub i64 %indvars.iv419.ph, %.5.lcssa715717
  %i.ir = add i64 %i.iq, %.0187543.le.a
  %i.is = icmp ugt i64 %i.ir, -4
  br i1 %i.is, label %._crit_edge355, label %vec.epilog.scalar.ph629

vec.epilog.scalar.ph629:                          ; preds = %vec.epilog.scalar.ph629.prol.loopexit, %vec.epilog.scalar.ph629
  %indvars.iv419 = phi i64 [ %indvars.iv.next420.3, %vec.epilog.scalar.ph629 ], [ %indvars.iv419.unr, %vec.epilog.scalar.ph629.prol.loopexit ] ; 6 uses
  %i.it = getelementptr inbounds nuw i8, ptr %.0187, i64 %indvars.iv419
  %i.iu = load i8, ptr %i.it, align 1, !tbaa !8
  %i.iv = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv419
  store i8 %i.iu, ptr %i.iv, align 1, !tbaa !8
  %indvars.iv.next420 = add nuw nsw i64 %indvars.iv419, 1 ; 2 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %.0187, i64 %indvars.iv.next420
  %i.ix = load i8, ptr %i.iw, align 1, !tbaa !8
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.next420
  store i8 %i.ix, ptr %i.iy, align 1, !tbaa !8
  %indvars.iv.next420.1 = add nuw nsw i64 %indvars.iv419, 2 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %.0187, i64 %indvars.iv.next420.1
  %i.ja = load i8, ptr %i.iz, align 1, !tbaa !8
  %i.jb = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.next420.1
  store i8 %i.ja, ptr %i.jb, align 1, !tbaa !8
  %indvars.iv.next420.2 = add nuw nsw i64 %indvars.iv419, 3 ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.0187, i64 %indvars.iv.next420.2
  %i.jd = load i8, ptr %i.jc, align 1, !tbaa !8
  %i.je = getelementptr inbounds nuw i8, ptr %i.ib, i64 %indvars.iv.next420.2
  store i8 %i.jd, ptr %i.je, align 1, !tbaa !8
  %indvars.iv.next420.3 = add nuw nsw i64 %indvars.iv419, 4 ; 2 uses
  %exitcond422.not.3 = icmp eq i64 %indvars.iv.next420.3, %i.gz
  br i1 %exitcond422.not.3, label %._crit_edge355, label %vec.epilog.scalar.ph629, !llvm.loop !59

._crit_edge355:                                   ; preds = %vec.epilog.scalar.ph629.prol.loopexit, %vec.epilog.scalar.ph629, %middle.block625, %vec.epilog.middle.block639, %bb.ay
  %.lcssa299 = phi i64 [ 0, %bb.ay ], [ %i.gz, %middle.block625 ], [ %i.gz, %vec.epilog.middle.block639 ], [ %i.gz, %vec.epilog.scalar.ph629 ], [ %i.gz, %vec.epilog.scalar.ph629.prol.loopexit ]
  %i.jf = getelementptr inbounds nuw i8, ptr %i.hn, i64 64
  %i.jg = getelementptr inbounds nuw i8, ptr %i.jf, i64 %.lcssa299
  store i8 0, ptr %i.jg, align 1, !tbaa !8
  br label %.thread287

bb.az:                                            ; preds = %bb.as
  %i.jh = getelementptr inbounds nuw i8, ptr %.1194, i64 56
  %i.ji = load ptr, ptr %i.jh, align 8, !tbaa !8
  %i.jj = call ptr @CopyTokenList(ptr noundef %i.ji, ptr noundef nonnull @file_pos) #10 ; 8 uses
  %.not256 = icmp eq ptr %i.jj, null
  br i1 %.not256, label %.loopexit, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  store ptr %i.jj, ptr @zz_hold, align 8, !tbaa !35
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24 ; 2 uses
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !8  ; 5 uses
  %i.jm = icmp eq ptr %i.jl, %i.jj
  br i1 %i.jm, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  store ptr %i.jl, ptr @zz_res, align 8, !tbaa !35
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jj, i64 16 ; 2 uses
  %i.jo = load ptr, ptr %i.jn, align 8, !tbaa !8  ; 2 uses
  %i.jp = getelementptr inbounds nuw i8, ptr %i.jl, i64 16
  store ptr %i.jo, ptr %i.jp, align 8, !tbaa !8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jo, i64 24
  store ptr %i.jl, ptr %i.jq, align 8, !tbaa !8
  store ptr %i.jj, ptr %i.jk, align 8, !tbaa !8
  store ptr %i.jj, ptr %i.jn, align 8, !tbaa !8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %i.jr = phi ptr [ %i.jl, %bb.bb ], [ null, %bb.ba ]
  store ptr %i.jr, ptr @next_token, align 8, !tbaa !35
  br label %.thread287

bb.bd:                                            ; preds = %bb.ar
  %i.js = getelementptr inbounds nuw i8, ptr %.1194, i64 120 ; 2 uses
  %i.jt = load i16, ptr %i.js, align 8, !tbaa !8  ; 2 uses
  switch i16 %i.jt, label %bb.bt [
    i16 0, label %bb.be
    i16 112, label %bb.bf
    i16 113, label %bb.bf
    i16 105, label %bb.bs
  ]

bb.be:                                            ; preds = %bb.bd
  %i.ju = getelementptr inbounds nuw i8, ptr %.1194, i64 40
  %i.jv = load i8, ptr %i.ju, align 8, !tbaa !8
  %i.jw = call ptr @NewToken(i8 noundef zeroext 2, ptr noundef nonnull @file_pos, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %i.jv, ptr noundef nonnull %.1194) #10
  br label %.loopexit

bb.bf:                                            ; preds = %bb.bd, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store ptr %.5, ptr @chpt, align 8, !tbaa !23
  %i.jx = call ptr @LexGetToken()                 ; 4 uses
  store ptr %i.jx, ptr %i.a, align 8, !tbaa !35
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 32 ; 2 uses
  %i.jz = load i8, ptr %i.jy, align 8, !tbaa !8
  switch i8 %i.jz, label %.tail.thread [
    i8 11, label %sub_0
    i8 102, label %.thread281
  ]

sub_0:                                            ; preds = %bb.bf
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jx, i64 64
  %i.kb = load i8, ptr %i.ka, align 8
  %.not362 = icmp eq i8 %i.kb, 123
  br i1 %.not362, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jx, i64 65
  %i.kd = load i8, ptr %i.kc, align 1
  %i.ke = icmp eq i8 %i.kd, 0
  br i1 %i.ke, label %bb.bg, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %bb.bf, %.tail
  %i.kf = call ptr @SymName(ptr noundef nonnull %.1194) #10
  %i.kg = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 9, ptr noundef nonnull @.str.33, i32 noundef 2, ptr noundef nonnull %i.jy, ptr noundef nonnull @.str.32, ptr noundef %i.kf) #10 ; 0 uses
  %i.kh = load ptr, ptr %i.a, align 8, !tbaa !35  ; 4 uses
  store ptr %i.kh, ptr @zz_hold, align 8, !tbaa !35
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 32
  %i.kj = load i8, ptr %i.ki, align 8, !tbaa !8   ; 2 uses
  %.off = add i8 %i.kj, -11
  %switch = icmp ult i8 %.off, 2
  %i.kk = getelementptr inbounds nuw i8, ptr %i.kh, i64 33
  %i.kl = zext i8 %i.kj to i64
  %i.km = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.kl
  %.in.in = select i1 %switch, ptr %i.kk, ptr %i.km
  %.in = load i8, ptr %.in.in, align 1, !tbaa !8  ; 2 uses
  %i.kn = zext i8 %.in to i32
  store i32 %i.kn, ptr @zz_size, align 4, !tbaa !4
  %i.ko = zext i8 %.in to i64
  %i.kp = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ko
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !35
  store ptr %i.kq, ptr %i.kh, align 8, !tbaa !8
  %i.kr = load ptr, ptr @zz_hold, align 8, !tbaa !35
  %i.ks = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.kt = sext i32 %i.ks to i64
  %i.ku = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.kt
  store ptr %i.kr, ptr %i.ku, align 8, !tbaa !35
  br label %bb.br

bb.bg:                                            ; preds = %.tail
  call void @UnSuppressScope() #10
  %i.kv = load ptr, ptr %i.a, align 8, !tbaa !35  ; 4 uses
  store ptr %i.kv, ptr @zz_hold, align 8, !tbaa !35
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 32
  %i.kx = load i8, ptr %i.kw, align 8, !tbaa !8   ; 2 uses
  %.off267 = add i8 %i.kx, -11
  %switch268 = icmp ult i8 %.off267, 2
  %i.ky = getelementptr inbounds nuw i8, ptr %i.kv, i64 33
  %i.kz = zext i8 %i.kx to i64
  %i.la = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.kz
  %.in252.in = select i1 %switch268, ptr %i.ky, ptr %i.la
  %.in252 = load i8, ptr %.in252.in, align 1, !tbaa !8 ; 2 uses
  %i.lb = zext i8 %.in252 to i32
  store i32 %i.lb, ptr @zz_size, align 4, !tbaa !4
  %i.lc = zext i8 %.in252 to i64
  %i.ld = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.lc
  %i.le = load ptr, ptr %i.ld, align 8, !tbaa !35
  store ptr %i.le, ptr %i.kv, align 8, !tbaa !8
  %i.lf = load ptr, ptr @zz_hold, align 8, !tbaa !35
  %i.lg = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.lh = sext i32 %i.lg to i64
  %i.li = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.lh
  store ptr %i.lf, ptr %i.li, align 8, !tbaa !35
  %i.lj = load i8, ptr getelementptr inbounds nuw (i8, ptr @zz_lengths, i64 102), align 1, !tbaa !8 ; 2 uses
  %i.lk = zext i8 %i.lj to i32                    ; 2 uses
  store i32 %i.lk, ptr @zz_size, align 4, !tbaa !4
  %i.ll = zext i8 %i.lj to i64
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ll ; 2 uses
  %i.ln = load ptr, ptr %i.lm, align 8, !tbaa !35 ; 4 uses
  %i.lo = icmp eq ptr %i.ln, null
  br i1 %i.lo, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.lp = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %i.lq = call ptr @GetMemory(i32 noundef %i.lk, ptr noundef %i.lp) #10 ; 2 uses
  store ptr %i.lq, ptr @zz_hold, align 8, !tbaa !35
  br label %bb.bj

bb.bi:                                            ; preds = %bb.bg
  store ptr %i.ln, ptr @zz_hold, align 8, !tbaa !35
  %i.lr = load ptr, ptr %i.ln, align 8, !tbaa !8
  store ptr %i.lr, ptr %i.lm, align 8, !tbaa !35
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bh, %bb.bi
  %i.ls = phi ptr [ %i.lq, %bb.bh ], [ %i.ln, %bb.bi ] ; 10 uses
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 32
  store i8 102, ptr %i.lt, align 8, !tbaa !8
  %i.lu = getelementptr inbounds nuw i8, ptr %i.ls, i64 24
  store ptr %i.ls, ptr %i.lu, align 8, !tbaa !8
  %i.lv = getelementptr inbounds nuw i8, ptr %i.ls, i64 16
  store ptr %i.ls, ptr %i.lv, align 8, !tbaa !8
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  store ptr %i.ls, ptr %i.lw, align 8, !tbaa !8
  store ptr %i.ls, ptr %i.ls, align 8, !tbaa !8
  store ptr %i.ls, ptr %i.a, align 8, !tbaa !35
  br label %.thread281

.thread281:                                       ; preds = %bb.bf, %bb.bj
  %i.lx = phi i1 [ false, %bb.bf ], [ true, %bb.bj ]
  %i.ly = call ptr @Parse(ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 0, i32 noundef 0) #10
  %i.lz = call ptr @ReplaceWithTidy(ptr noundef %i.ly, i32 noundef 0) #10 ; 8 uses
  br i1 %i.lx, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.thread281
  call void @SuppressScope() #10
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.thread281
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 32 ; 5 uses
  %i.mb = load i8, ptr %i.ma, align 8, !tbaa !8
  %.off269 = add i8 %i.mb, -11
  %switch270 = icmp ult i8 %.off269, 2
  br i1 %switch270, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.mc = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 10, ptr noundef nonnull @.str.34, i32 noundef 2, ptr noundef nonnull %i.ma) #10 ; 0 uses
  store ptr %i.lz, ptr @zz_hold, align 8, !tbaa !35
  %i.md = load i8, ptr %i.ma, align 8, !tbaa !8   ; 2 uses
  %.off271 = add i8 %i.md, -11
  %switch272 = icmp ult i8 %.off271, 2
  %i.me = getelementptr inbounds nuw i8, ptr %i.lz, i64 33
  %i.mf = zext i8 %i.md to i64
  %i.mg = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.mf
  %.in253.in = select i1 %switch272, ptr %i.me, ptr %i.mg
  %.in253 = load i8, ptr %.in253.in, align 1, !tbaa !8 ; 2 uses
  %i.mh = zext i8 %.in253 to i32
  store i32 %i.mh, ptr @zz_size, align 4, !tbaa !4
  %i.mi = zext i8 %.in253 to i64
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.mi
  %i.mk = load ptr, ptr %i.mj, align 8, !tbaa !35
  store ptr %i.mk, ptr %i.lz, align 8, !tbaa !8
  %i.ml = load ptr, ptr @zz_hold, align 8, !tbaa !35
  %i.mm = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.mn = sext i32 %i.mm to i64
  %i.mo = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.mn
  store ptr %i.ml, ptr %i.mo, align 8, !tbaa !35
  br label %bb.br

bb.bn:                                            ; preds = %bb.bl
  %i.mp = getelementptr inbounds nuw i8, ptr %i.lz, i64 64 ; 3 uses
  %i.mq = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.mp) #12
  %i.mr = trunc i64 %i.mq to i32
  %i.ms = add i32 %i.mr, -3                       ; 2 uses
  %i.mt = icmp sgt i32 %i.ms, -1
  br i1 %i.mt, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.mu = zext nneg i32 %i.ms to i64
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mp, i64 %i.mu ; 2 uses
  %i.mw = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.mv, ptr noundef nonnull dereferenceable(4) @.str.35) #12
  %i.mx = icmp eq i32 %i.mw, 0
  br i1 %i.mx, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  store i8 0, ptr %i.mv, align 1
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %bb.bo, %bb.bn
  %i.my = load i16, ptr %i.js, align 8, !tbaa !8
  %i.mz = icmp eq i16 %i.my, 112
  %i.na = select i1 %i.mz, i32 1, i32 2
  %i.nb = call zeroext i16 @DefineFile(ptr noundef nonnull %i.mp, ptr noundef nonnull @.str.36, ptr noundef nonnull %i.ma, i32 noundef 1, i32 noundef %i.na) #10
  store ptr %i.lz, ptr @zz_hold, align 8, !tbaa !35
  %i.nc = load i8, ptr %i.ma, align 8, !tbaa !8   ; 2 uses
  %.off273 = add i8 %i.nc, -11
  %switch274 = icmp ult i8 %.off273, 2
  %i.nd = getelementptr inbounds nuw i8, ptr %i.lz, i64 33
  %i.ne = zext i8 %i.nc to i64
  %i.nf = getelementptr inbounds nuw i8, ptr @zz_lengths, i64 %i.ne
  %.in254.in = select i1 %switch274, ptr %i.nd, ptr %i.nf
  %.in254 = load i8, ptr %.in254.in, align 1, !tbaa !8 ; 2 uses
  %i.ng = zext i8 %.in254 to i32
  store i32 %i.ng, ptr @zz_size, align 4, !tbaa !4
  %i.nh = zext i8 %.in254 to i64
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.nh
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !35
  store ptr %i.nj, ptr %i.lz, align 8, !tbaa !8
  %i.nk = load ptr, ptr @zz_hold, align 8, !tbaa !35
  %i.nl = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.nm = sext i32 %i.nl to i64
  %i.nn = getelementptr inbounds [8 x i8], ptr @zz_free, i64 %i.nm
  store ptr %i.nk, ptr %i.nn, align 8, !tbaa !35
  call void @LexPush(i16 noundef zeroext %i.nb, i32 noundef 0, i32 noundef 1, i32 noundef 1, i32 noundef 0)
  %i.no = call ptr @LexGetToken()
  %i.np = add i8 %.0190, 1
  %i.nq = load ptr, ptr @chpt, align 8, !tbaa !23
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bm, %.tail.thread
  %.2195 = phi ptr [ %i.no, %bb.bq ], [ null, %bb.bm ], [ null, %.tail.thread ]
  %.1191 = phi i8 [ %i.np, %bb.bq ], [ %.0190, %bb.bm ], [ %.0190, %.tail.thread ]
  %.6 = phi ptr [ %i.nq, %bb.bq ], [ %.5, %bb.bm ], [ %.5, %.tail.thread ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %.loopexit

bb.bs:                                            ; preds = %bb.bd
  %i.nr = getelementptr inbounds nuw i8, ptr %.1194, i64 40
  %i.ns = load i8, ptr %i.nr, align 8, !tbaa !8
  %i.nt = call ptr @NewToken(i8 noundef zeroext 105, ptr noundef nonnull @file_pos, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %i.ns, ptr noundef null) #10
  br label %.loopexit

bb.bt:                                            ; preds = %bb.bd
  %i.nu = trunc i16 %i.jt to i8
  %i.nv = getelementptr inbounds nuw i8, ptr %.1194, i64 40
  %i.nw = load i8, ptr %i.nv, align 8, !tbaa !8
  %i.nx = call ptr @NewToken(i8 noundef zeroext %i.nu, ptr noundef nonnull @file_pos, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext %i.nw, ptr noundef nonnull %.1194) #10
  br label %.loopexit

bb.bu:                                            ; preds = %bb.f
  %.0187543.le780 = ptrtoint ptr %.0187 to i64    ; 3 uses
  %i.ny = load ptr, ptr @startline, align 8, !tbaa !23
  %i.nz = ptrtoint ptr %.0187 to i64
  %i.oa = ptrtoint ptr %i.ny to i64
  %i.ob = sub i64 %i.nz, %i.oa
  %i.oc = trunc i64 %i.ob to i32
  %i.od = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.oe = shl i32 %i.oc, 20
  %i.of = and i32 %i.od, 1048575
  %i.og = or disjoint i32 %i.oe, %i.of
  store i32 %i.og, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  br label %bb.bv

bb.bv:                                            ; preds = %.backedge, %bb.bu
  %.0205 = phi ptr [ %i.l, %bb.bu ], [ %.0205.be, %.backedge ] ; 8 uses
  %.7 = phi ptr [ %i.l, %bb.bu ], [ %.7.be, %.backedge ] ; 7 uses
  %i.oh = getelementptr inbounds nuw i8, ptr %.7, i64 1 ; 10 uses
  %i.oi = load i8, ptr %.7, align 1, !tbaa !8     ; 2 uses
  %i.oj = getelementptr inbounds nuw i8, ptr %.0205, i64 1 ; 9 uses
  store i8 %i.oi, ptr %.0205, align 1, !tbaa !8
  %i.ok = zext i8 %i.oi to i64
  %i.ol = getelementptr inbounds nuw i8, ptr @chtbl, i64 %i.ok
  %i.om = load i8, ptr %i.ol, align 1, !tbaa !8
  switch i8 %i.om, label %bb.ct [
    i8 0, label %.backedge
    i8 1, label %.backedge
    i8 4, label %.backedge
    i8 5, label %.backedge
    i8 6, label %.backedge
    i8 7, label %.backedge
    i8 8, label %bb.bw
    i8 9, label %bb.bw
    i8 2, label %bb.cc
    i8 3, label %bb.ci
  ]

bb.bw:                                            ; preds = %bb.bv, %bb.bv
  %i.on = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 11, ptr noundef nonnull @.str.37, i32 noundef 2, ptr noundef nonnull @file_pos) #10 ; 0 uses
  %i.oo = ptrtoint ptr %.0205 to i64
  %i.op = ptrtoint ptr %i.l to i64
  %i.oq = sub i64 %i.oo, %i.op                    ; 13 uses
  %i.or = shl i64 %i.oq, 32
  %sext251 = add i64 %i.or, 292057776128
  %i.os = ashr exact i64 %sext251, 32
  %i.ot = lshr i64 %i.os, 3
  %i.ou = trunc i64 %i.ot to i32
  %i.ov = add i32 %i.ou, 1                        ; 4 uses
  store i32 %i.ov, ptr @zz_size, align 4, !tbaa !4
  %i.ow = icmp ugt i32 %i.ov, 264
  br i1 %i.ow, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  %i.ox = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef nonnull @file_pos) #10 ; 0 uses
  %.pre433 = load ptr, ptr @zz_hold, align 8, !tbaa !35
  br label %bb.cb

bb.by:                                            ; preds = %bb.bw
  %i.oy = zext nneg i32 %i.ov to i64
  %i.oz = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.oy ; 2 uses
  %i.pa = load ptr, ptr %i.oz, align 8, !tbaa !35 ; 4 uses
  %i.pb = icmp eq ptr %i.pa, null
  br i1 %i.pb, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.pc = call ptr @GetMemory(i32 noundef %i.ov, ptr noundef nonnull @file_pos) #10 ; 2 uses
  store ptr %i.pc, ptr @zz_hold, align 8, !tbaa !35
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  store ptr %i.pa, ptr @zz_hold, align 8, !tbaa !35
  %i.pd = load ptr, ptr %i.pa, align 8, !tbaa !8
  store ptr %i.pd, ptr %i.oz, align 8, !tbaa !35
  br label %bb.cb

bb.cb:                                            ; preds = %bb.bz, %bb.ca, %bb.bx
  %i.pe = phi ptr [ %i.pc, %bb.bz ], [ %i.pa, %bb.ca ], [ %.pre433, %bb.bx ] ; 16 uses
  %i.pf = ptrtoaddr ptr %i.pe to i64
  %i.pg = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.ph = trunc i32 %i.pg to i8
  %i.pi = getelementptr inbounds nuw i8, ptr %i.pe, i64 33
  store i8 %i.ph, ptr %i.pi, align 1, !tbaa !8
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pe, i64 32
  store i8 12, ptr %i.pj, align 8, !tbaa !8
  %i.pk = getelementptr inbounds nuw i8, ptr %i.pe, i64 24
  store ptr %i.pe, ptr %i.pk, align 8, !tbaa !8
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pe, i64 16
  store ptr %i.pe, ptr %i.pl, align 8, !tbaa !8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  store ptr %i.pe, ptr %i.pm, align 8, !tbaa !8
  store ptr %i.pe, ptr %i.pe, align 8, !tbaa !8
  %i.pn = load i16, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 2), align 2, !tbaa !41
  %i.po = getelementptr inbounds nuw i8, ptr %i.pe, i64 34
  store i16 %i.pn, ptr %i.po, align 2, !tbaa !8
  %i.pp = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pe, i64 36
  store i32 %i.pp, ptr %i.pq, align 4
  %i.pr = icmp sgt i64 %i.oq, 0
  br i1 %i.pr, label %iter.check598, label %._crit_edge350

iter.check598:                                    ; preds = %bb.cb
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pe, i64 64 ; 3 uses
  %min.iters.check584 = icmp ult i64 %i.oq, 4
  br i1 %min.iters.check584, label %vec.epilog.scalar.ph599.preheader, label %vector.memcheck582

vector.memcheck582:                               ; preds = %iter.check598
  %i.pt = sub i64 %i.pf, %.0187543.le780
  %i.pu = add i64 %i.pt, 62
  %diff.check583 = icmp ult i64 %i.pu, 31
  br i1 %diff.check583, label %vec.epilog.scalar.ph599.preheader, label %vector.main.loop.iter.check585

vector.main.loop.iter.check585:                   ; preds = %vector.memcheck582
  %min.iters.check586 = icmp ult i64 %i.oq, 32
  br i1 %min.iters.check586, label %vec.epilog.ph602, label %vector.ph587

vector.ph587:                                     ; preds = %vector.main.loop.iter.check585
  %n.mod.vf588 = and i64 %i.oq, 28
  %n.vec589 = and i64 %i.oq, 9223372036854775776  ; 4 uses
  br label %vector.body590

vector.body590:                                   ; preds = %vector.body590, %vector.ph587
  %index591 = phi i64 [ 0, %vector.ph587 ], [ %index.next594, %vector.body590 ] ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.l, i64 %index591 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pv, i64 16
  %wide.load592 = load <16 x i8>, ptr %i.pv, align 1, !tbaa !8
  %wide.load593 = load <16 x i8>, ptr %i.pw, align 1, !tbaa !8
  %i.px = getelementptr inbounds nuw i8, ptr %i.ps, i64 %index591 ; 2 uses
  %i.py = getelementptr inbounds nuw i8, ptr %i.px, i64 16
  store <16 x i8> %wide.load592, ptr %i.px, align 1, !tbaa !8
  store <16 x i8> %wide.load593, ptr %i.py, align 1, !tbaa !8
  %index.next594 = add nuw i64 %index591, 32      ; 2 uses
  %i.pz = icmp eq i64 %index.next594, %n.vec589
  br i1 %i.pz, label %middle.block595, label %vector.body590, !llvm.loop !60

middle.block595:                                  ; preds = %vector.body590
  %cmp.n596 = icmp eq i64 %i.oq, %n.vec589
  br i1 %cmp.n596, label %._crit_edge350, label %vec.epilog.iter.check600

vec.epilog.iter.check600:                         ; preds = %middle.block595
  %min.epilog.iters.check601 = icmp eq i64 %n.mod.vf588, 0
  br i1 %min.epilog.iters.check601, label %vec.epilog.scalar.ph599.preheader, label %vec.epilog.ph602, !prof !51

vec.epilog.ph602:                                 ; preds = %vector.main.loop.iter.check585, %vec.epilog.iter.check600
  %vec.epilog.resume.val597 = phi i64 [ %n.vec589, %vec.epilog.iter.check600 ], [ 0, %vector.main.loop.iter.check585 ]
  %n.vec604 = and i64 %i.oq, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body605

vec.epilog.vector.body605:                        ; preds = %vec.epilog.vector.body605, %vec.epilog.ph602
  %index606 = phi i64 [ %vec.epilog.resume.val597, %vec.epilog.ph602 ], [ %index.next608, %vec.epilog.vector.body605 ] ; 3 uses
  %i.qa = getelementptr inbounds nuw i8, ptr %i.l, i64 %index606
  %wide.load607 = load <4 x i8>, ptr %i.qa, align 1, !tbaa !8
  %i.qb = getelementptr inbounds nuw i8, ptr %i.ps, i64 %index606
  store <4 x i8> %wide.load607, ptr %i.qb, align 1, !tbaa !8
  %index.next608 = add nuw i64 %index606, 4       ; 2 uses
  %i.qc = icmp eq i64 %index.next608, %n.vec604
  br i1 %i.qc, label %vec.epilog.middle.block609, label %vec.epilog.vector.body605, !llvm.loop !61

vec.epilog.middle.block609:                       ; preds = %vec.epilog.vector.body605
  %cmp.n610 = icmp eq i64 %i.oq, %n.vec604
  br i1 %cmp.n610, label %._crit_edge350, label %vec.epilog.scalar.ph599.preheader

vec.epilog.scalar.ph599.preheader:                ; preds = %vector.memcheck582, %iter.check598, %vec.epilog.iter.check600, %vec.epilog.middle.block609
  %indvars.iv410.ph = phi i64 [ 0, %iter.check598 ], [ 0, %vector.memcheck582 ], [ %n.vec589, %vec.epilog.iter.check600 ], [ %n.vec604, %vec.epilog.middle.block609 ]
  br label %vec.epilog.scalar.ph599

vec.epilog.scalar.ph599:                          ; preds = %vec.epilog.scalar.ph599.preheader, %vec.epilog.scalar.ph599
  %indvars.iv410 = phi i64 [ %indvars.iv.next411, %vec.epilog.scalar.ph599 ], [ %indvars.iv410.ph, %vec.epilog.scalar.ph599.preheader ] ; 3 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv410
  %i.qe = load i8, ptr %i.qd, align 1, !tbaa !8
  %i.qf = getelementptr inbounds nuw i8, ptr %i.ps, i64 %indvars.iv410
  store i8 %i.qe, ptr %i.qf, align 1, !tbaa !8
  %indvars.iv.next411 = add nuw nsw i64 %indvars.iv410, 1 ; 2 uses
  %exitcond413.not = icmp eq i64 %indvars.iv.next411, %i.oq
  br i1 %exitcond413.not, label %._crit_edge350, label %vec.epilog.scalar.ph599, !llvm.loop !62

._crit_edge350:                                   ; preds = %vec.epilog.scalar.ph599, %middle.block595, %vec.epilog.middle.block609, %bb.cb
  %.lcssa300 = phi i64 [ 0, %bb.cb ], [ %i.oq, %middle.block595 ], [ %i.oq, %vec.epilog.middle.block609 ], [ %i.oq, %vec.epilog.scalar.ph599 ]
  %i.qg = getelementptr inbounds nuw i8, ptr %i.pe, i64 64
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 %.lcssa300
  store i8 0, ptr %i.qh, align 1, !tbaa !8
  br label %.thread287

bb.cc:                                            ; preds = %bb.bv
  %i.qi = ptrtoint ptr %.0205 to i64
  %i.qj = ptrtoint ptr %i.l to i64
  %i.qk = sub i64 %i.qi, %i.qj                    ; 13 uses
  %i.ql = shl i64 %i.qk, 32
  %sext250 = add i64 %i.ql, 292057776128
  %i.qm = ashr exact i64 %sext250, 32
  %i.qn = lshr i64 %i.qm, 3
  %i.qo = trunc i64 %i.qn to i32
  %i.qp = add i32 %i.qo, 1                        ; 4 uses
  store i32 %i.qp, ptr @zz_size, align 4, !tbaa !4
  %i.qq = icmp ugt i32 %i.qp, 264
  br i1 %i.qq, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.qr = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef nonnull @file_pos) #10 ; 0 uses
  %.pre432 = load ptr, ptr @zz_hold, align 8, !tbaa !35
  br label %bb.ch

bb.ce:                                            ; preds = %bb.cc
  %i.qs = zext nneg i32 %i.qp to i64
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.qs ; 2 uses
  %i.qu = load ptr, ptr %i.qt, align 8, !tbaa !35 ; 4 uses
  %i.qv = icmp eq ptr %i.qu, null
  br i1 %i.qv, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce
  %i.qw = call ptr @GetMemory(i32 noundef %i.qp, ptr noundef nonnull @file_pos) #10 ; 2 uses
  store ptr %i.qw, ptr @zz_hold, align 8, !tbaa !35
  br label %bb.ch

bb.cg:                                            ; preds = %bb.ce
  store ptr %i.qu, ptr @zz_hold, align 8, !tbaa !35
  %i.qx = load ptr, ptr %i.qu, align 8, !tbaa !8
  store ptr %i.qx, ptr %i.qt, align 8, !tbaa !35
  br label %bb.ch

bb.ch:                                            ; preds = %bb.cf, %bb.cg, %bb.cd
  %i.qy = phi ptr [ %i.qw, %bb.cf ], [ %i.qu, %bb.cg ], [ %.pre432, %bb.cd ] ; 16 uses
  %i.qz = ptrtoaddr ptr %i.qy to i64
  %i.ra = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.rb = trunc i32 %i.ra to i8
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qy, i64 33
  store i8 %i.rb, ptr %i.rc, align 1, !tbaa !8
  %i.rd = getelementptr inbounds nuw i8, ptr %i.qy, i64 32
  store i8 12, ptr %i.rd, align 8, !tbaa !8
  %i.re = getelementptr inbounds nuw i8, ptr %i.qy, i64 24
  store ptr %i.qy, ptr %i.re, align 8, !tbaa !8
  %i.rf = getelementptr inbounds nuw i8, ptr %i.qy, i64 16
  store ptr %i.qy, ptr %i.rf, align 8, !tbaa !8
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qy, i64 8
  store ptr %i.qy, ptr %i.rg, align 8, !tbaa !8
  store ptr %i.qy, ptr %i.qy, align 8, !tbaa !8
  %i.rh = load i16, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 2), align 2, !tbaa !41
  %i.ri = getelementptr inbounds nuw i8, ptr %i.qy, i64 34
  store i16 %i.rh, ptr %i.ri, align 2, !tbaa !8
  %i.rj = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.rk = getelementptr inbounds nuw i8, ptr %i.qy, i64 36
  store i32 %i.rj, ptr %i.rk, align 4
  %i.rl = icmp sgt i64 %i.qk, 0
  br i1 %i.rl, label %iter.check568, label %._crit_edge345

iter.check568:                                    ; preds = %bb.ch
  %i.rm = getelementptr inbounds nuw i8, ptr %i.qy, i64 64 ; 3 uses
  %min.iters.check554 = icmp ult i64 %i.qk, 4
  br i1 %min.iters.check554, label %vec.epilog.scalar.ph569.preheader, label %vector.memcheck552

vector.memcheck552:                               ; preds = %iter.check568
  %i.rn = sub i64 %i.qz, %.0187543.le780
  %i.ro = add i64 %i.rn, 62
  %diff.check553 = icmp ult i64 %i.ro, 31
  br i1 %diff.check553, label %vec.epilog.scalar.ph569.preheader, label %vector.main.loop.iter.check555

vector.main.loop.iter.check555:                   ; preds = %vector.memcheck552
  %min.iters.check556 = icmp ult i64 %i.qk, 32
  br i1 %min.iters.check556, label %vec.epilog.ph572, label %vector.ph557

vector.ph557:                                     ; preds = %vector.main.loop.iter.check555
  %n.mod.vf558 = and i64 %i.qk, 28
  %n.vec559 = and i64 %i.qk, 9223372036854775776  ; 4 uses
  br label %vector.body560

vector.body560:                                   ; preds = %vector.body560, %vector.ph557
  %index561 = phi i64 [ 0, %vector.ph557 ], [ %index.next564, %vector.body560 ] ; 3 uses
  %i.rp = getelementptr inbounds nuw i8, ptr %i.l, i64 %index561 ; 2 uses
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rp, i64 16
  %wide.load562 = load <16 x i8>, ptr %i.rp, align 1, !tbaa !8
  %wide.load563 = load <16 x i8>, ptr %i.rq, align 1, !tbaa !8
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rm, i64 %index561 ; 2 uses
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 16
  store <16 x i8> %wide.load562, ptr %i.rr, align 1, !tbaa !8
  store <16 x i8> %wide.load563, ptr %i.rs, align 1, !tbaa !8
  %index.next564 = add nuw i64 %index561, 32      ; 2 uses
  %i.rt = icmp eq i64 %index.next564, %n.vec559
  br i1 %i.rt, label %middle.block565, label %vector.body560, !llvm.loop !63

middle.block565:                                  ; preds = %vector.body560
  %cmp.n566 = icmp eq i64 %i.qk, %n.vec559
  br i1 %cmp.n566, label %._crit_edge345, label %vec.epilog.iter.check570

vec.epilog.iter.check570:                         ; preds = %middle.block565
  %min.epilog.iters.check571 = icmp eq i64 %n.mod.vf558, 0
  br i1 %min.epilog.iters.check571, label %vec.epilog.scalar.ph569.preheader, label %vec.epilog.ph572, !prof !51

vec.epilog.ph572:                                 ; preds = %vector.main.loop.iter.check555, %vec.epilog.iter.check570
  %vec.epilog.resume.val567 = phi i64 [ %n.vec559, %vec.epilog.iter.check570 ], [ 0, %vector.main.loop.iter.check555 ]
  %n.vec574 = and i64 %i.qk, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body575

vec.epilog.vector.body575:                        ; preds = %vec.epilog.vector.body575, %vec.epilog.ph572
  %index576 = phi i64 [ %vec.epilog.resume.val567, %vec.epilog.ph572 ], [ %index.next578, %vec.epilog.vector.body575 ] ; 3 uses
  %i.ru = getelementptr inbounds nuw i8, ptr %i.l, i64 %index576
  %wide.load577 = load <4 x i8>, ptr %i.ru, align 1, !tbaa !8
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rm, i64 %index576
  store <4 x i8> %wide.load577, ptr %i.rv, align 1, !tbaa !8
  %index.next578 = add nuw i64 %index576, 4       ; 2 uses
  %i.rw = icmp eq i64 %index.next578, %n.vec574
  br i1 %i.rw, label %vec.epilog.middle.block579, label %vec.epilog.vector.body575, !llvm.loop !64

vec.epilog.middle.block579:                       ; preds = %vec.epilog.vector.body575
  %cmp.n580 = icmp eq i64 %i.qk, %n.vec574
  br i1 %cmp.n580, label %._crit_edge345, label %vec.epilog.scalar.ph569.preheader

vec.epilog.scalar.ph569.preheader:                ; preds = %vector.memcheck552, %iter.check568, %vec.epilog.iter.check570, %vec.epilog.middle.block579
  %indvars.iv406.ph = phi i64 [ 0, %iter.check568 ], [ 0, %vector.memcheck552 ], [ %n.vec559, %vec.epilog.iter.check570 ], [ %n.vec574, %vec.epilog.middle.block579 ]
  br label %vec.epilog.scalar.ph569

vec.epilog.scalar.ph569:                          ; preds = %vec.epilog.scalar.ph569.preheader, %vec.epilog.scalar.ph569
  %indvars.iv406 = phi i64 [ %indvars.iv.next407, %vec.epilog.scalar.ph569 ], [ %indvars.iv406.ph, %vec.epilog.scalar.ph569.preheader ] ; 3 uses
  %i.rx = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv406
  %i.ry = load i8, ptr %i.rx, align 1, !tbaa !8
  %i.rz = getelementptr inbounds nuw i8, ptr %i.rm, i64 %indvars.iv406
  store i8 %i.ry, ptr %i.rz, align 1, !tbaa !8
  %indvars.iv.next407 = add nuw nsw i64 %indvars.iv406, 1 ; 2 uses
  %exitcond409.not = icmp eq i64 %indvars.iv.next407, %i.qk
  br i1 %exitcond409.not, label %._crit_edge345, label %vec.epilog.scalar.ph569, !llvm.loop !65

._crit_edge345:                                   ; preds = %vec.epilog.scalar.ph569, %middle.block565, %vec.epilog.middle.block579, %bb.ch
  %.lcssa301 = phi i64 [ 0, %bb.ch ], [ %i.qk, %middle.block565 ], [ %i.qk, %vec.epilog.middle.block579 ], [ %i.qk, %vec.epilog.scalar.ph569 ]
  %i.sa = getelementptr inbounds nuw i8, ptr %i.qy, i64 64
  %i.sb = getelementptr inbounds nuw i8, ptr %i.sa, i64 %.lcssa301
  store i8 0, ptr %i.sb, align 1, !tbaa !8
  br label %.thread287

bb.ci:                                            ; preds = %bb.bv
  %i.sc = load i8, ptr %i.oh, align 1, !tbaa !8   ; 4 uses
  %i.sd = zext i8 %i.sc to i64
  %i.se = getelementptr inbounds nuw i8, ptr @chtbl, i64 %i.sd
  %i.sf = load i8, ptr %i.se, align 1, !tbaa !8
  %i.sg = and i8 %i.sf, -2
  %switch276 = icmp eq i8 %i.sg, 8
  br i1 %switch276, label %bb.cj, label %bb.cp

bb.cj:                                            ; preds = %bb.ci
  %i.sh = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 12, ptr noundef nonnull @.str.37, i32 noundef 2, ptr noundef nonnull @file_pos) #10 ; 0 uses
  %i.si = ptrtoint ptr %.0205 to i64
  %i.sj = ptrtoint ptr %i.l to i64
  %i.sk = sub i64 %i.si, %i.sj                    ; 13 uses
  %i.sl = shl i64 %i.sk, 32
  %sext = add i64 %i.sl, 292057776128
  %i.sm = ashr exact i64 %sext, 32
  %i.sn = lshr i64 %i.sm, 3
  %i.so = trunc i64 %i.sn to i32
  %i.sp = add i32 %i.so, 1                        ; 4 uses
  store i32 %i.sp, ptr @zz_size, align 4, !tbaa !4
  %i.sq = icmp ugt i32 %i.sp, 264
  br i1 %i.sq, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %bb.cj
  %i.sr = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 1, ptr noundef nonnull @.str.30, i32 noundef 1, ptr noundef nonnull @file_pos) #10 ; 0 uses
  %.pre = load ptr, ptr @zz_hold, align 8, !tbaa !35
  br label %bb.co

bb.cl:                                            ; preds = %bb.cj
  %i.ss = zext nneg i32 %i.sp to i64
  %i.st = getelementptr inbounds nuw [8 x i8], ptr @zz_free, i64 %i.ss ; 2 uses
  %i.su = load ptr, ptr %i.st, align 8, !tbaa !35 ; 4 uses
  %i.sv = icmp eq ptr %i.su, null
  br i1 %i.sv, label %bb.cm, label %bb.cn

bb.cm:                                            ; preds = %bb.cl
  %i.sw = call ptr @GetMemory(i32 noundef %i.sp, ptr noundef nonnull @file_pos) #10 ; 2 uses
  store ptr %i.sw, ptr @zz_hold, align 8, !tbaa !35
  br label %bb.co

bb.cn:                                            ; preds = %bb.cl
  store ptr %i.su, ptr @zz_hold, align 8, !tbaa !35
  %i.sx = load ptr, ptr %i.su, align 8, !tbaa !8
  store ptr %i.sx, ptr %i.st, align 8, !tbaa !35
  br label %bb.co

bb.co:                                            ; preds = %bb.cm, %bb.cn, %bb.ck
  %i.sy = phi ptr [ %i.sw, %bb.cm ], [ %i.su, %bb.cn ], [ %.pre, %bb.ck ] ; 16 uses
  %i.sz = ptrtoaddr ptr %i.sy to i64
  %i.ta = load i32, ptr @zz_size, align 4, !tbaa !4
  %i.tb = trunc i32 %i.ta to i8
  %i.tc = getelementptr inbounds nuw i8, ptr %i.sy, i64 33
  store i8 %i.tb, ptr %i.tc, align 1, !tbaa !8
  %i.td = getelementptr inbounds nuw i8, ptr %i.sy, i64 32
  store i8 12, ptr %i.td, align 8, !tbaa !8
  %i.te = getelementptr inbounds nuw i8, ptr %i.sy, i64 24
  store ptr %i.sy, ptr %i.te, align 8, !tbaa !8
  %i.tf = getelementptr inbounds nuw i8, ptr %i.sy, i64 16
  store ptr %i.sy, ptr %i.tf, align 8, !tbaa !8
  %i.tg = getelementptr inbounds nuw i8, ptr %i.sy, i64 8
  store ptr %i.sy, ptr %i.tg, align 8, !tbaa !8
  store ptr %i.sy, ptr %i.sy, align 8, !tbaa !8
  %i.th = load i16, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 2), align 2, !tbaa !41
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sy, i64 34
  store i16 %i.th, ptr %i.ti, align 2, !tbaa !8
  %i.tj = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.tk = getelementptr inbounds nuw i8, ptr %i.sy, i64 36
  store i32 %i.tj, ptr %i.tk, align 4
  %i.tl = icmp sgt i64 %i.sk, 0
  br i1 %i.tl, label %iter.check, label %._crit_edge

iter.check:                                       ; preds = %bb.co
  %i.tm = getelementptr inbounds nuw i8, ptr %i.sy, i64 64 ; 3 uses
  %min.iters.check = icmp ult i64 %i.sk, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.tn = sub i64 %i.sz, %.0187543.le780
  %i.to = add i64 %i.tn, 62
  %diff.check = icmp ult i64 %i.to, 31
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check544 = icmp ult i64 %i.sk, 32
  br i1 %min.iters.check544, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.sk, 28
  %n.vec = and i64 %i.sk, 9223372036854775776     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.tp = getelementptr inbounds nuw i8, ptr %i.l, i64 %index ; 2 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 16
  %wide.load = load <16 x i8>, ptr %i.tp, align 1, !tbaa !8
  %wide.load545 = load <16 x i8>, ptr %i.tq, align 1, !tbaa !8
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tm, i64 %index ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  store <16 x i8> %wide.load, ptr %i.tr, align 1, !tbaa !8
  store <16 x i8> %wide.load545, ptr %i.ts, align 1, !tbaa !8
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.tt = icmp eq i64 %index.next, %n.vec
  br i1 %i.tt, label %middle.block, label %vector.body, !llvm.loop !66

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.sk, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !51

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec547 = and i64 %i.sk, 9223372036854775804  ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index548 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next550, %vec.epilog.vector.body ] ; 3 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %i.l, i64 %index548
  %wide.load549 = load <4 x i8>, ptr %i.tu, align 1, !tbaa !8
  %i.tv = getelementptr inbounds nuw i8, ptr %i.tm, i64 %index548
  store <4 x i8> %wide.load549, ptr %i.tv, align 1, !tbaa !8
  %index.next550 = add nuw i64 %index548, 4       ; 2 uses
  %i.tw = icmp eq i64 %index.next550, %n.vec547
  br i1 %i.tw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !67

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n551 = icmp eq i64 %i.sk, %n.vec547
  br i1 %cmp.n551, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec547, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %vec.epilog.scalar.ph ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.l, i64 %indvars.iv
  %i.ty = load i8, ptr %i.tx, align 1, !tbaa !8
  %i.tz = getelementptr inbounds nuw i8, ptr %i.tm, i64 %indvars.iv
  store i8 %i.ty, ptr %i.tz, align 1, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.sk
  br i1 %exitcond.not, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !68

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %bb.co
  %.lcssa302 = phi i64 [ 0, %bb.co ], [ %i.sk, %middle.block ], [ %i.sk, %vec.epilog.middle.block ], [ %i.sk, %vec.epilog.scalar.ph ]
  %i.ua = getelementptr inbounds nuw i8, ptr %i.sy, i64 64
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ua, i64 %.lcssa302
  store i8 0, ptr %i.ub, align 1, !tbaa !8
  br label %.thread287

bb.cp:                                            ; preds = %bb.ci
  %i.uc = and i8 %i.sc, -8
  %or.cond266 = icmp eq i8 %i.uc, 48
  br i1 %or.cond266, label %.preheader, label %bb.cs

.preheader:                                       ; preds = %bb.cp
  %i.ud = getelementptr inbounds nuw i8, ptr %.7, i64 2 ; 2 uses
  %i.ue = zext nneg i8 %i.sc to i32
  %i.uf = add nsw i32 %i.ue, -48                  ; 2 uses
  %i.ug = load i8, ptr %i.ud, align 1, !tbaa !8   ; 3 uses
  %i.uh = icmp ugt i8 %i.ug, 47
  %i.ui = icmp ult i8 %i.ug, 56
  %or.cond = and i1 %i.uh, %i.ui
  br i1 %or.cond, label %.preheader.1, label %.critedge

.preheader.1:                                     ; preds = %.preheader
  %i.uj = shl nuw nsw i32 %i.uf, 3
  %i.uk = getelementptr inbounds nuw i8, ptr %.7, i64 3 ; 2 uses
  %i.ul = zext nneg i8 %i.ug to i32
  %i.um = add nsw i32 %i.uj, -48
  %i.un = add nsw i32 %i.um, %i.ul                ; 2 uses
  %i.uo = load i8, ptr %i.uk, align 1, !tbaa !8   ; 3 uses
  %i.up = icmp ugt i8 %i.uo, 47
  %i.uq = icmp ult i8 %i.uo, 56
  %or.cond762 = and i1 %i.up, %i.uq
  br i1 %or.cond762, label %.preheader.2, label %.critedge

.preheader.2:                                     ; preds = %.preheader.1
  %i.ur = shl nsw i32 %i.un, 3
  %i.us = getelementptr inbounds nuw i8, ptr %.7, i64 4
  %i.ut = zext nneg i8 %i.uo to i32
  %i.uu = add nsw i32 %i.ur, -48
  %i.uv = add i32 %i.uu, %i.ut
  br label %.critedge

.critedge:                                        ; preds = %.preheader.2, %.preheader.1, %.preheader
  %.lcssa673 = phi ptr [ %i.us, %.preheader.2 ], [ %i.ud, %.preheader ], [ %i.uk, %.preheader.1 ] ; 2 uses
  %.lcssa672 = phi i32 [ %i.uv, %.preheader.2 ], [ %i.uf, %.preheader ], [ %i.un, %.preheader.1 ] ; 2 uses
  %i.uw = icmp eq i32 %.lcssa672, 0
  br i1 %i.uw, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.critedge
  %i.ux = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 13, ptr noundef nonnull @.str.38, i32 noundef 2, ptr noundef nonnull @file_pos) #10 ; 0 uses
  br label %.backedge

.backedge:                                        ; preds = %bb.cq, %bb.cr, %bb.ct, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.bv, %bb.cs
  %.0205.be = phi ptr [ %i.oj, %bb.ct ], [ %i.oj, %bb.bv ], [ %i.oj, %bb.bv ], [ %i.oj, %bb.bv ], [ %i.oj, %bb.bv ], [ %i.oj, %bb.bv ], [ %i.oj, %bb.bv ], [ %i.oj, %bb.cs ], [ %.0205, %bb.cq ], [ %i.oj, %bb.cr ]
  %.7.be = phi ptr [ %i.oh, %bb.ct ], [ %i.oh, %bb.bv ], [ %i.oh, %bb.bv ], [ %i.oh, %bb.bv ], [ %i.oh, %bb.bv ], [ %i.oh, %bb.bv ], [ %i.oh, %bb.bv ], [ %i.uz, %bb.cs ], [ %.lcssa673, %bb.cq ], [ %.lcssa673, %bb.cr ]
  br label %bb.bv, !llvm.loop !69

bb.cr:                                            ; preds = %.critedge
  %i.uy = trunc i32 %.lcssa672 to i8
  store i8 %i.uy, ptr %.0205, align 1, !tbaa !8
  br label %.backedge

bb.cs:                                            ; preds = %bb.cp
  %i.uz = getelementptr inbounds nuw i8, ptr %.7, i64 2
  store i8 %i.sc, ptr %.0205, align 1, !tbaa !8
  br label %.backedge

bb.ct:                                            ; preds = %bb.bv
  %i.va = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 14, ptr noundef nonnull @.str.39, i32 noundef 0, ptr noundef nonnull @file_pos) #10 ; 0 uses
  br label %.backedge

bb.cu:                                            ; preds = %bb.f
  %i.vb = load ptr, ptr @no_fpos, align 8, !tbaa !12
  %i.vc = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 1, i32 noundef 2, ptr noundef nonnull @.str.24, i32 noundef 0, ptr noundef %i.vb, ptr noundef nonnull @.str.40) #10 ; 0 uses
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader296, %bb.az, %bb.br, %bb.m, %bb.n, %bb.o, %bb.cu, %bb.k, %bb.j, %bb.l, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.y, %bb.bt, %bb.bs, %bb.be
  %.5198 = phi ptr [ null, %bb.cu ], [ %i.y, %bb.j ], [ null, %bb.k ], [ null, %bb.l ], [ %.2195, %bb.br ], [ null, %bb.m ], [ null, %bb.n ], [ null, %bb.o ], [ null, %bb.y ], [ null, %bb.ad ], [ %i.cg, %bb.aa ], [ %i.cj, %bb.ab ], [ null, %bb.ac ], [ %i.nt, %bb.bs ], [ %i.nx, %bb.bt ], [ null, %bb.az ], [ %i.jw, %bb.be ], [ null, %.preheader296 ] ; 2 uses
  %.2192 = phi i8 [ %.0190, %bb.cu ], [ %.0190, %bb.j ], [ %.0190, %bb.k ], [ %.0190, %bb.l ], [ %.1191, %bb.br ], [ %.0190, %bb.m ], [ %.0190, %bb.n ], [ %i.ay, %bb.o ], [ %.0190, %bb.y ], [ %.0190, %bb.ad ], [ %.0190, %bb.aa ], [ %.0190, %bb.ab ], [ %.0190, %bb.ac ], [ %.0190, %bb.bs ], [ %.0190, %bb.bt ], [ %.0190, %bb.az ], [ %.0190, %bb.be ], [ %.0190, %.preheader296 ] ; 2 uses
  %.1189 = phi i8 [ %.0188, %bb.cu ], [ %.0188, %bb.j ], [ %.0188, %bb.k ], [ %.0188, %bb.l ], [ %.0188, %bb.br ], [ %i.at, %bb.m ], [ %i.au, %bb.n ], [ 0, %bb.o ], [ 0, %bb.y ], [ %.0188, %bb.ad ], [ %.0188, %bb.aa ], [ %.0188, %bb.ab ], [ 0, %bb.ac ], [ %.0188, %bb.bs ], [ %.0188, %bb.bt ], [ 0, %bb.az ], [ %.0188, %bb.be ], [ %.0188, %.preheader296 ] ; 2 uses
  %.10 = phi ptr [ %i.l, %bb.cu ], [ %i.z, %bb.j ], [ %i.l, %bb.k ], [ %i.ar, %bb.l ], [ %.6, %bb.br ], [ %i.l, %bb.m ], [ %i.l, %bb.n ], [ %i.az, %bb.o ], [ %i.cc, %bb.y ], [ %i.l, %bb.ad ], [ %.0187, %bb.aa ], [ %.0187, %bb.ab ], [ %i.ck, %bb.ac ], [ %.5, %bb.bs ], [ %.5, %bb.bt ], [ %.5, %bb.az ], [ %.5, %bb.be ], [ %.1, %.preheader296 ] ; 2 uses
  %i.vd = icmp eq ptr %.5198, null
  br i1 %i.vd, label %bb.f, label %.thread287, !llvm.loop !70

.thread287:                                       ; preds = %.loopexit, %._crit_edge, %._crit_edge345, %._crit_edge350, %bb.bc, %._crit_edge355, %._crit_edge360
  %.10295 = phi ptr [ %.7, %._crit_edge350 ], [ %.5, %bb.bc ], [ %.5, %._crit_edge355 ], [ %.5, %._crit_edge360 ], [ %i.oh, %._crit_edge ], [ %i.oh, %._crit_edge345 ], [ %.10, %.loopexit ] ; 2 uses
  %.1189294 = phi i8 [ %.0188, %._crit_edge350 ], [ %.0188, %bb.bc ], [ %.0188, %._crit_edge355 ], [ %.0188, %._crit_edge360 ], [ %.0188, %._crit_edge ], [ %.0188, %._crit_edge345 ], [ %.1189, %.loopexit ]
  %.2192293 = phi i8 [ %.0190, %._crit_edge350 ], [ %.0190, %bb.bc ], [ %.0190, %._crit_edge355 ], [ %.0190, %._crit_edge360 ], [ %.0190, %._crit_edge ], [ %.0190, %._crit_edge345 ], [ %.2192, %.loopexit ]
  %.5198292 = phi ptr [ %i.pe, %._crit_edge350 ], [ %i.jj, %bb.bc ], [ %i.hn, %._crit_edge355 ], [ %i.ew, %._crit_edge360 ], [ %i.sy, %._crit_edge ], [ %i.qy, %._crit_edge345 ], [ %.5198, %.loopexit ] ; 3 uses
  %i.ve = load ptr, ptr @startline, align 8, !tbaa !23
  %i.vf = ptrtoint ptr %.10295 to i64
  %i.vg = ptrtoint ptr %i.ve to i64
  %i.vh = sub i64 %i.vf, %i.vg
  %i.vi = icmp sgt i64 %i.vh, 2047
  br i1 %i.vi, label %bb.cv, label %bb.cw

bb.cv:                                            ; preds = %.thread287
  %i.vj = load i32, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.vk = and i32 %i.vj, 1048575
  %i.vl = or disjoint i32 %i.vk, 1048576
  store i32 %i.vl, ptr getelementptr inbounds nuw (i8, ptr @file_pos, i64 4), align 4
  %i.vm = call ptr (i32, i32, ptr, i32, ptr, ...) @Error(i32 noundef 2, i32 noundef 15, ptr noundef nonnull @.str.41, i32 noundef 1, ptr noundef nonnull @file_pos) #10 ; 0 uses
  br label %bb.cw

bb.cw:                                            ; preds = %bb.cv, %.thread287
  store ptr %.10295, ptr @chpt, align 8, !tbaa !23
  %i.vn = getelementptr inbounds nuw i8, ptr %.5198292, i64 42
  store i8 %.2192293, ptr %i.vn, align 2, !tbaa !8
  %i.vo = getelementptr inbounds nuw i8, ptr %.5198292, i64 41
  store i8 %.1189294, ptr %i.vo, align 1, !tbaa !8
  br label %bb.cx

bb.cx:                                            ; preds = %bb.cw, %bb.d
  %.0185 = phi ptr [ %i.b, %bb.d ], [ %.5198292, %bb.cw ]
  ret ptr %.0185
}

declare ptr @NewToken(i8 noundef zeroext, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @srcnext() unnamed_addr #3 {
bb.a:
  %i.a = load i32, ptr @blksize, align 4, !tbaa !4
  %.not = icmp ne i32 %i.a, 0
  %.pre = load ptr, ptr @chpt, align 8, !tbaa !23 ; 3 uses
  %.pre13 = load ptr, ptr @limit, align 8, !tbaa !23 ; 3 uses
  %i.b = icmp ult ptr %.pre, %.pre13
  %or.cond23 = select i1 %.not, i1 %i.b, i1 false
  br i1 %or.cond23, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @buf, align 8, !tbaa !23
end_hunk_0
