inline.NumInlined: 297
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 4
begin_hunk_0_@tvb_strsize:bb.a

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 40         ; 2 uses
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %.not.i = icmp ugt i32 %1, %i.f
  br i1 %.not.i, label %bb.e, label %tvb_find_uint8_remaining.exit, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8
  %.not12.i.i.i = icmp ugt i32 %1, %i.h
  br i1 %.not12.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, 1
  %.not13.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not13.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %0, i64 44
  %i.m = load i32, ptr %i.l, align 4
  %.not14.i.i.i = icmp ugt i32 %1, %i.m
  %..i.i.i = select i1 %.not14.i.i.i, i64 3, i64 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.0.i8.i.ph.i = phi i64 [ 4, %bb.f ], [ 1, %bb.e ], [ %..i.i.i, %bb.g ]
  tail call void @except_throw(i64 noundef 1, i64 noundef %.0.i8.i.ph.i, ptr noundef null) #18
  unreachable

tvb_find_uint8_remaining.exit:                    ; preds = %bb.d
  %i.n = sub nuw i32 %i.f, %1
  %i.o = call fastcc zeroext i1 @_tvb_find_uint8_length(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %i.n, i8 noundef zeroext 0, ptr noundef nonnull %i.a)
  br i1 %i.o, label %bb.p, label %bb.i

bb.i:                                             ; preds = %tvb_find_uint8_remaining.exit
  %i.p = load i32, ptr %i.e, align 8              ; 2 uses
  %i.q = getelementptr i8, ptr %0, i64 48
  %i.r = load i32, ptr %i.q, align 8
  %i.s = icmp ult i32 %i.p, %i.r
  br i1 %i.s, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @except_throw(i64 noundef 1, i64 noundef 1, ptr noundef null) #18
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.t = getelementptr i8, ptr %0, i64 20
  %i.u = load i32, ptr %i.t, align 4
  %i.v = and i32 %i.u, 1
  %.not12 = icmp eq i32 %i.v, 0
  br i1 %.not12, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @except_throw(i64 noundef 1, i64 noundef 4, ptr noundef null) #18
  unreachable

bb.m:                                             ; preds = %bb.k
  %i.w = getelementptr i8, ptr %0, i64 44
  %i.x = load i32, ptr %i.w, align 4
  %i.y = icmp ult i32 %i.p, %i.x
  br i1 %i.y, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  call void @except_throw(i64 noundef 1, i64 noundef 2, ptr noundef null) #18
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #18
  unreachable

bb.p:                                             ; preds = %tvb_find_uint8_remaining.exit
  %i.z = load i32, ptr %i.a, align 4
  %reass.sub = sub i32 %i.z, %1
  %i.aa = add i32 %reass.sub, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %i.aa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @tvb_unicode_strsize(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 3166, ptr noundef nonnull @.str.5) #18
  unreachable

.preheader:                                       ; preds = %bb.b, %bb.e
  %.0 = phi i32 [ %i.i, %bb.e ], [ %1, %bb.b ]    ; 2 uses
  %i.d = tail call fastcc ptr @fast_ensure_contiguous(ptr noundef nonnull %0, i32 noundef %.0, i32 noundef 2) ; 2 uses
  %i.e = zext i32 %.0 to i33
  %i.f = tail call { i33, i1 } @llvm.sadd.with.overflow.i33(i33 %i.e, i33 2) ; 2 uses
  %i.g = extractvalue { i33, i1 } %i.f, 1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.preheader
  tail call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #18
  unreachable

bb.e:                                             ; preds = %.preheader
  %i.h = extractvalue { i33, i1 } %i.f, 0
  %i.i = trunc nuw i33 %i.h to i32                ; 2 uses
  %.val.i = load i8, ptr %i.d, align 1
  %i.j = getelementptr i8, ptr %i.d, i64 1
  %.val2.i = load i8, ptr %i.j, align 1
  %i.k = or i8 %.val2.i, %.val.i
  %i.l = icmp eq i8 %i.k, 0
  br i1 %i.l, label %bb.f, label %.preheader, !llvm.loop !47

bb.f:                                             ; preds = %bb.e
  %i.m = sub i32 %i.i, %1
  ret i32 %i.m
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @tvb_strsize_enc(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i32 %2 to i16
  %trunc = and i16 %i.a, -2
  switch i16 %trunc, label %bb.p [
    i16 4, label %bb.b
    i16 6, label %bb.b
    i16 8, label %bb.g
    i16 44, label %bb.l
    i16 76, label %bb.l
    i16 78, label %bb.l
    i16 52, label %bb.m
    i16 84, label %bb.n
    i16 68, label %bb.o
    i16 70, label %bb.o
    i16 72, label %bb.o
    i16 88, label %bb.o
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !12, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %.preheader.i, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 3166, ptr noundef nonnull @.str.5) #18
  unreachable

.preheader.i:                                     ; preds = %bb.c, %bb.f
  %.0.i = phi i32 [ %i.j, %bb.f ], [ %1, %bb.c ]  ; 2 uses
  %i.e = tail call fastcc ptr @fast_ensure_contiguous(ptr noundef nonnull %0, i32 noundef %.0.i, i32 noundef 2) ; 2 uses
  %i.f = zext i32 %.0.i to i33
  %i.g = tail call { i33, i1 } @llvm.sadd.with.overflow.i33(i33 %i.f, i33 2) ; 2 uses
  %i.h = extractvalue { i33, i1 } %i.g, 1
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader.i
  tail call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #18
  unreachable

bb.f:                                             ; preds = %.preheader.i
  %i.i = extractvalue { i33, i1 } %i.g, 0
  %i.j = trunc nuw i33 %i.i to i32                ; 2 uses
  %.val.i.i = load i8, ptr %i.e, align 1
  %i.k = getelementptr i8, ptr %i.e, i64 1
  %.val2.i.i = load i8, ptr %i.k, align 1
  %i.l = or i8 %.val2.i.i, %.val.i.i
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %tvb_unicode_strsize.exit, label %.preheader.i, !llvm.loop !47

tvb_unicode_strsize.exit:                         ; preds = %bb.f
  %i.n = sub i32 %i.j, %1
  br label %bb.q

bb.g:                                             ; preds = %bb.a
  %.not.i7 = icmp eq ptr %0, null
  br i1 %.not.i7, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr i8, ptr %0, i64 16
  %i.p = load i8, ptr %i.o, align 8, !range !12, !noundef !13
  %i.q = trunc nuw i8 %i.p to i1
  br i1 %i.q, label %.preheader.i8, label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 3190, ptr noundef nonnull @.str.5) #18
  unreachable

.preheader.i8:                                    ; preds = %bb.h, %bb.k
  %.0.i9 = phi i32 [ %i.w, %bb.k ], [ %1, %bb.h ] ; 2 uses
  %i.r = tail call fastcc ptr @fast_ensure_contiguous(ptr noundef nonnull %0, i32 noundef %.0.i9, i32 noundef 4) ; 4 uses
  %i.s = zext i32 %.0.i9 to i33
  %i.t = tail call { i33, i1 } @llvm.sadd.with.overflow.i33(i33 %i.s, i33 4) ; 2 uses
  %i.u = extractvalue { i33, i1 } %i.t, 1
  br i1 %i.u, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.preheader.i8
  tail call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #18
  unreachable

bb.k:                                             ; preds = %.preheader.i8
  %i.v = extractvalue { i33, i1 } %i.t, 0
  %i.w = trunc nuw i33 %i.v to i32                ; 2 uses
  %3 = getelementptr i8, ptr %i.r, i64 1
  %4 = load i8, ptr %3, align 1
  %5 = load i8, ptr %i.r, align 1
  %6 = getelementptr i8, ptr %i.r, i64 2
  %7 = load i8, ptr %6, align 1
  %8 = getelementptr i8, ptr %i.r, i64 3
  %9 = load i8, ptr %8, align 1
  %10 = or i8 %5, %4
  %11 = or i8 %10, %7
  %12 = or i8 %11, %9
  %i.x = icmp eq i8 %12, 0
  br i1 %i.x, label %tvb_ucs_4_strsize.exit, label %.preheader.i8, !llvm.loop !48

tvb_ucs_4_strsize.exit:                           ; preds = %bb.k
  %i.y = sub i32 %i.w, %1
  br label %bb.q

bb.l:                                             ; preds = %bb.a, %bb.a, %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.26) #18
  unreachable

bb.m:                                             ; preds = %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.27) #18
  unreachable

bb.n:                                             ; preds = %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.28) #18
  unreachable

bb.o:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.29) #18
  unreachable

bb.p:                                             ; preds = %bb.a
  %i.z = tail call i32 @tvb_strsize(ptr noundef %0, i32 noundef %1)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %tvb_ucs_4_strsize.exit, %tvb_unicode_strsize.exit
  %.0 = phi i32 [ %i.z, %bb.p ], [ %i.n, %tvb_unicode_strsize.exit ], [ %i.y, %tvb_ucs_4_strsize.exit ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @tvb_strnlen(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %0, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !12, !noundef !13
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 3283, ptr noundef nonnull @.str.5) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 40
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  %.not.i.i.i = icmp ugt i32 %1, %i.f
  br i1 %.not.i.i.i, label %bb.e, label %tvb_find_uint8_length.exit, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.g = getelementptr i8, ptr %0, i64 48
  %i.h = load i32, ptr %i.g, align 8
  %.not12.i.i.i = icmp ugt i32 %1, %i.h
  br i1 %.not12.i.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %0, i64 20
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, 1
  %.not13.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not13.i.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %0, i64 44
  %i.m = load i32, ptr %i.l, align 4
  %.not14.i.i.i = icmp ugt i32 %1, %i.m
  %..i.i.i = select i1 %.not14.i.i.i, i64 3, i64 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.0.i8.i.ph.i = phi i64 [ 4, %bb.f ], [ 1, %bb.e ], [ %..i.i.i, %bb.g ]
  tail call void @except_throw(i64 noundef 1, i64 noundef %.0.i8.i.ph.i, ptr noundef null) #18
  unreachable

tvb_find_uint8_length.exit:                       ; preds = %bb.d
  %i.n = sub nuw i32 %i.f, %1
  %spec.select.i = tail call i32 @llvm.umin.i32(i32 %i.n, i32 %2)
  %i.o = call fastcc zeroext i1 @_tvb_find_uint8_length(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %spec.select.i, i8 noundef zeroext 0, ptr noundef nonnull %i.a)
  %i.p = load i32, ptr %i.a, align 4
  %i.q = sub i32 %i.p, %1
  %.0 = select i1 %i.o, i32 %i.q, i32 -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define range(i32 -1, 1) i32 @tvb_strneql(ptr noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 40
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %.not.i.i.i = icmp ugt i32 %1, %i.c
  br i1 %.not.i.i.i, label %ensure_contiguous_unsigned_no_exception.exit.thread, label %validate_offset.exit.i.i, !prof !11

validate_offset.exit.i.i:                         ; preds = %bb.a
  %i.d = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 %i.a) ; 2 uses
  %i.e = extractvalue { i32, i1 } %i.d, 1
  br i1 %i.e, label %ensure_contiguous_unsigned_no_exception.exit.thread, label %bb.b

bb.b:                                             ; preds = %validate_offset.exit.i.i
  %i.f = extractvalue { i32, i1 } %i.d, 0
  %.not.i9.i.i = icmp ugt i32 %i.f, %i.c
  %i.g = icmp eq i32 %i.a, 0
  %or.cond = or i1 %i.g, %.not.i9.i.i
  br i1 %or.cond, label %ensure_contiguous_unsigned_no_exception.exit.thread, label %bb.c, !prof !49

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not21.i = icmp eq ptr %i.i, null
  br i1 %.not21.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext i32 %1 to i64
  %i.k = getelementptr i8, ptr %i.i, i64 %i.j
  br label %ensure_contiguous_unsigned_no_exception.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not22.i = icmp eq ptr %i.o, null
  br i1 %.not22.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr %i.o(ptr noundef %0, i32 noundef %1, i32 noundef %i.a), !inline_history !50
  br label %ensure_contiguous_unsigned_no_exception.exit

bb.g:                                             ; preds = %bb.e
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 926) #18
  unreachable

ensure_contiguous_unsigned_no_exception.exit:     ; preds = %bb.d, %bb.f
  %.0.i = phi ptr [ %i.p, %bb.f ], [ %i.k, %bb.d ] ; 2 uses
  %.not = icmp eq ptr %.0.i, null
  br i1 %.not, label %ensure_contiguous_unsigned_no_exception.exit.thread, label %bb.h

bb.h:                                             ; preds = %ensure_contiguous_unsigned_no_exception.exit
  %i.q = tail call i32 @strncmp(ptr noundef nonnull %.0.i, ptr noundef %2, i64 noundef %3) #22
  %i.r = icmp ne i32 %i.q, 0
  %i.s = sext i1 %i.r to i32
  br label %ensure_contiguous_unsigned_no_exception.exit.thread

ensure_contiguous_unsigned_no_exception.exit.thread: ; preds = %bb.b, %bb.a, %validate_offset.exit.i.i, %ensure_contiguous_unsigned_no_exception.exit, %bb.h
  %.0 = phi i32 [ %i.s, %bb.h ], [ -1, %ensure_contiguous_unsigned_no_exception.exit ], [ -1, %bb.b ], [ -1, %bb.a ], [ -1, %validate_offset.exit.i.i ]
  ret i32 %.0
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define range(i32 -1, 1) i32 @tvb_strncaseeql(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = trunc i64 %3 to i32                      ; 3 uses
  %i.b = getelementptr i8, ptr %0, i64 40
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %.not.i.i.i = icmp ugt i32 %1, %i.c
  br i1 %.not.i.i.i, label %ensure_contiguous_unsigned_no_exception.exit.thread, label %validate_offset.exit.i.i, !prof !11

validate_offset.exit.i.i:                         ; preds = %bb.a
  %i.d = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 %i.a) ; 2 uses
  %i.e = extractvalue { i32, i1 } %i.d, 1
  br i1 %i.e, label %ensure_contiguous_unsigned_no_exception.exit.thread, label %bb.b

bb.b:                                             ; preds = %validate_offset.exit.i.i
  %i.f = extractvalue { i32, i1 } %i.d, 0
  %.not.i9.i.i = icmp ugt i32 %i.f, %i.c
  %i.g = icmp eq i32 %i.a, 0
  %or.cond = or i1 %i.g, %.not.i9.i.i
  br i1 %or.cond, label %ensure_contiguous_unsigned_no_exception.exit.thread, label %bb.c, !prof !49

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %.not21.i = icmp eq ptr %i.i, null
  br i1 %.not21.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = zext i32 %1 to i64
  %i.k = getelementptr i8, ptr %i.i, i64 %i.j
  br label %ensure_contiguous_unsigned_no_exception.exit

bb.e:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not22.i = icmp eq ptr %i.o, null
  br i1 %.not22.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = tail call ptr %i.o(ptr noundef %0, i32 noundef %1, i32 noundef %i.a), !inline_history !50
end_hunk_0
begin_hunk_1_@tvb_get_stringz_enc:bb.a
bb.as:                                            ; preds = %bb.aq
  %i.cz = getelementptr i8, ptr %1, i64 8
  %i.da = load ptr, ptr %i.cz, align 8
  %i.db = getelementptr i8, ptr %i.da, i64 24
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %.not22.i.i.i182 = icmp eq ptr %i.dc, null
  br i1 %.not22.i.i.i182, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.dd = tail call ptr %i.dc(ptr noundef nonnull %1, i32 noundef %2, i32 noundef %i.cc), !inline_history !71
  br label %ensure_contiguous_unsigned_no_exception.exit.i.i175

bb.au:                                            ; preds = %bb.as
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 926) #18
  unreachable

ensure_contiguous_unsigned_no_exception.exit.i.i175: ; preds = %bb.at, %bb.ar, %validate_offset.exit15.sink.split.i.i.i.i185, %bb.ap, %bb.ao, %validate_offset.exit.i.i.i.i171, %bb.am, %bb.al
  %.0.i11.i = phi i32 [ 0, %bb.ar ], [ 1, %validate_offset.exit.i.i.i.i171 ], [ 0, %bb.at ], [ %..i.i.i.i.i188, %validate_offset.exit15.sink.split.i.i.i.i185 ], [ 4, %bb.am ], [ 1, %bb.ao ], [ 4, %bb.ap ], [ 1, %bb.al ] ; 2 uses
  %.0.i.i.i176 = phi ptr [ %i.cy, %bb.ar ], [ null, %validate_offset.exit.i.i.i.i171 ], [ %i.dd, %bb.at ], [ null, %validate_offset.exit15.sink.split.i.i.i.i185 ], [ null, %bb.am ], [ null, %bb.ao ], [ null, %bb.ap ], [ null, %bb.al ] ; 2 uses
  %i.de = icmp eq ptr %.0.i.i.i176, null
  %i.df = icmp ne i32 %2, %i.by
  %or.cond.i.i177 = and i1 %i.df, %i.de
  br i1 %or.cond.i.i177, label %bb.av, label %ensure_contiguous_unsigned.exit.i178

bb.av:                                            ; preds = %ensure_contiguous_unsigned_no_exception.exit.i.i175
  %.not.i.i181 = icmp eq i32 %.0.i11.i, 0
  br i1 %.not.i.i181, label %bb.aw, label %bb.ax

bb.aw:                                            ; preds = %bb.av
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 938, ptr noundef nonnull @.str.41) #18
  unreachable

bb.ax:                                            ; preds = %bb.av
  %i.dg = zext nneg i32 %.0.i11.i to i64
  tail call void @except_throw(i64 noundef 1, i64 noundef %i.dg, ptr noundef null) #18
  unreachable

ensure_contiguous_unsigned.exit.i178:             ; preds = %ensure_contiguous_unsigned_no_exception.exit.i.i175, %validate_offset_length_no_exception.exit.i.i.i173
  %.0.i9.i.i179 = phi ptr [ %.0.i.i.i176, %ensure_contiguous_unsigned_no_exception.exit.i.i175 ], [ null, %validate_offset_length_no_exception.exit.i.i.i173 ]
  %.not.i180 = icmp eq ptr %3, null
  br i1 %.not.i180, label %tvb_get_utf_16_stringz.exit, label %bb.ay

bb.ay:                                            ; preds = %ensure_contiguous_unsigned.exit.i178
  store i32 %i.cc, ptr %3, align 4
  br label %tvb_get_utf_16_stringz.exit

tvb_get_utf_16_stringz.exit:                      ; preds = %ensure_contiguous_unsigned.exit.i178, %bb.ay
  %i.dh = zext i32 %i.cc to i64
  %i.di = tail call ptr @get_utf_16_string(ptr noundef %0, ptr noundef %.0.i9.i.i179, i64 noundef %i.dh, i32 noundef range(i32 0, -1610612735) %i.bs)
  br label %bb.gv

bb.az:                                            ; preds = %bb.d
  %i.dj = and i32 %4, -1610612736
  br label %.preheader.i.i191

.preheader.i.i191:                                ; preds = %bb.az, %bb.bb
  %.0.i.i192 = phi i32 [ %i.dp, %bb.bb ], [ %2, %bb.az ] ; 2 uses
  %i.dk = tail call fastcc ptr @fast_ensure_contiguous(ptr noundef nonnull %1, i32 noundef %.0.i.i192, i32 noundef 2) ; 2 uses
  %i.dl = zext i32 %.0.i.i192 to i33
  %i.dm = tail call { i33, i1 } @llvm.sadd.with.overflow.i33(i33 %i.dl, i33 2) ; 2 uses
  %i.dn = extractvalue { i33, i1 } %i.dm, 1
  br i1 %i.dn, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %.preheader.i.i191
  tail call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #18
  unreachable

bb.bb:                                            ; preds = %.preheader.i.i191
  %i.do = extractvalue { i33, i1 } %i.dm, 0
  %i.dp = trunc nuw i33 %i.do to i32              ; 4 uses
  %.val.i.i.i193 = load i8, ptr %i.dk, align 1
  %i.dq = getelementptr i8, ptr %i.dk, i64 1
  %.val2.i.i.i194 = load i8, ptr %i.dq, align 1
  %i.dr = or i8 %.val2.i.i.i194, %.val.i.i.i193
  %i.ds = icmp eq i8 %i.dr, 0
  br i1 %i.ds, label %tvb_unicode_strsize.exit.i195, label %.preheader.i.i191, !llvm.loop !47

tvb_unicode_strsize.exit.i195:                    ; preds = %bb.bb
  %i.dt = sub i32 %i.dp, %2                       ; 4 uses
  %i.du = getelementptr i8, ptr %1, i64 40
  %i.dv = load i32, ptr %i.du, align 8            ; 2 uses
  %.not.i.i.i.i.i196 = icmp ugt i32 %2, %i.dv
  br i1 %.not.i.i.i.i.i196, label %bb.bc, label %validate_offset.exit.i.i.i.i197, !prof !11

bb.bc:                                            ; preds = %tvb_unicode_strsize.exit.i195
  %i.dw = getelementptr i8, ptr %1, i64 48
  %i.dx = load i32, ptr %i.dw, align 8
  %.not12.i.i.i.i.i216 = icmp ugt i32 %2, %i.dx
  br i1 %.not12.i.i.i.i.i216, label %bb.bd, label %ensure_contiguous_unsigned_no_exception.exit.i.i201

bb.bd:                                            ; preds = %bb.bc
  %i.dy = getelementptr i8, ptr %1, i64 20
  %i.dz = load i32, ptr %i.dy, align 4
  %i.ea = and i32 %i.dz, 1
  %.not13.i.i.i.i.i217 = icmp eq i32 %i.ea, 0
  br i1 %.not13.i.i.i.i.i217, label %validate_offset.exit15.sink.split.i.i.i.i212, label %ensure_contiguous_unsigned_no_exception.exit.i.i201

validate_offset.exit.i.i.i.i197:                  ; preds = %tvb_unicode_strsize.exit.i195
  %i.eb = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2, i32 %i.dt) ; 2 uses
  %i.ec = extractvalue { i32, i1 } %i.eb, 1
  br i1 %i.ec, label %ensure_contiguous_unsigned_no_exception.exit.i.i201, label %bb.be

bb.be:                                            ; preds = %validate_offset.exit.i.i.i.i197
  %i.ed = extractvalue { i32, i1 } %i.eb, 0       ; 3 uses
  %.not.i9.i.i.i.i198 = icmp ugt i32 %i.ed, %i.dv
  br i1 %.not.i9.i.i.i.i198, label %bb.bf, label %validate_offset_length_no_exception.exit.i.i.i199, !prof !11

bb.bf:                                            ; preds = %bb.be
  %i.ee = getelementptr i8, ptr %1, i64 48
  %i.ef = load i32, ptr %i.ee, align 8
  %.not12.i11.i.i.i.i210 = icmp ugt i32 %i.ed, %i.ef
  br i1 %.not12.i11.i.i.i.i210, label %bb.bg, label %ensure_contiguous_unsigned_no_exception.exit.i.i201

bb.bg:                                            ; preds = %bb.bf
  %i.eg = getelementptr i8, ptr %1, i64 20
  %i.eh = load i32, ptr %i.eg, align 4
  %i.ei = and i32 %i.eh, 1
  %.not13.i12.i.i.i.i211 = icmp eq i32 %i.ei, 0
  br i1 %.not13.i12.i.i.i.i211, label %validate_offset.exit15.sink.split.i.i.i.i212, label %ensure_contiguous_unsigned_no_exception.exit.i.i201

validate_offset.exit15.sink.split.i.i.i.i212:     ; preds = %bb.bg, %bb.bd
  %.sink.i.i.i.i213 = phi i32 [ %2, %bb.bd ], [ %i.ed, %bb.bg ]
  %i.ej = getelementptr i8, ptr %1, i64 44
  %i.ek = load i32, ptr %i.ej, align 4
  %.not14.i.i.i.i.i214 = icmp ugt i32 %.sink.i.i.i.i213, %i.ek
  %..i.i.i.i.i215 = select i1 %.not14.i.i.i.i.i214, i32 3, i32 2
  br label %ensure_contiguous_unsigned_no_exception.exit.i.i201

validate_offset_length_no_exception.exit.i.i.i199: ; preds = %bb.be
  %i.el = icmp eq i32 %2, %i.dp
  br i1 %i.el, label %ensure_contiguous_unsigned.exit.i205, label %bb.bh

bb.bh:                                            ; preds = %validate_offset_length_no_exception.exit.i.i.i199
  %i.em = getelementptr i8, ptr %1, i64 32
  %i.en = load ptr, ptr %i.em, align 8            ; 2 uses
  %.not21.i.i.i200 = icmp eq ptr %i.en, null
  br i1 %.not21.i.i.i200, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.eo = zext i32 %2 to i64
  %i.ep = getelementptr i8, ptr %i.en, i64 %i.eo
  br label %ensure_contiguous_unsigned_no_exception.exit.i.i201

bb.bj:                                            ; preds = %bb.bh
  %i.eq = getelementptr i8, ptr %1, i64 8
  %i.er = load ptr, ptr %i.eq, align 8
  %i.es = getelementptr i8, ptr %i.er, i64 24
  %i.et = load ptr, ptr %i.es, align 8            ; 2 uses
  %.not22.i.i.i209 = icmp eq ptr %i.et, null
  br i1 %.not22.i.i.i209, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.eu = tail call ptr %i.et(ptr noundef nonnull %1, i32 noundef %2, i32 noundef %i.dt), !inline_history !72
  br label %ensure_contiguous_unsigned_no_exception.exit.i.i201

bb.bl:                                            ; preds = %bb.bj
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 926) #18
  unreachable

ensure_contiguous_unsigned_no_exception.exit.i.i201: ; preds = %bb.bk, %bb.bi, %validate_offset.exit15.sink.split.i.i.i.i212, %bb.bg, %bb.bf, %validate_offset.exit.i.i.i.i197, %bb.bd, %bb.bc
  %.0.i11.i202 = phi i32 [ 0, %bb.bi ], [ 1, %validate_offset.exit.i.i.i.i197 ], [ 0, %bb.bk ], [ %..i.i.i.i.i215, %validate_offset.exit15.sink.split.i.i.i.i212 ], [ 4, %bb.bd ], [ 1, %bb.bf ], [ 4, %bb.bg ], [ 1, %bb.bc ] ; 2 uses
  %.0.i.i.i203 = phi ptr [ %i.ep, %bb.bi ], [ null, %validate_offset.exit.i.i.i.i197 ], [ %i.eu, %bb.bk ], [ null, %validate_offset.exit15.sink.split.i.i.i.i212 ], [ null, %bb.bd ], [ null, %bb.bf ], [ null, %bb.bg ], [ null, %bb.bc ] ; 2 uses
  %i.ev = icmp eq ptr %.0.i.i.i203, null
  %i.ew = icmp ne i32 %2, %i.dp
  %or.cond.i.i204 = and i1 %i.ew, %i.ev
  br i1 %or.cond.i.i204, label %bb.bm, label %ensure_contiguous_unsigned.exit.i205

bb.bm:                                            ; preds = %ensure_contiguous_unsigned_no_exception.exit.i.i201
  %.not.i.i208 = icmp eq i32 %.0.i11.i202, 0
  br i1 %.not.i.i208, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 938, ptr noundef nonnull @.str.41) #18
  unreachable

bb.bo:                                            ; preds = %bb.bm
  %i.ex = zext nneg i32 %.0.i11.i202 to i64
  tail call void @except_throw(i64 noundef 1, i64 noundef %i.ex, ptr noundef null) #18
  unreachable

ensure_contiguous_unsigned.exit.i205:             ; preds = %ensure_contiguous_unsigned_no_exception.exit.i.i201, %validate_offset_length_no_exception.exit.i.i.i199
  %.0.i9.i.i206 = phi ptr [ %.0.i.i.i203, %ensure_contiguous_unsigned_no_exception.exit.i.i201 ], [ null, %validate_offset_length_no_exception.exit.i.i.i199 ]
  %.not.i207 = icmp eq ptr %3, null
  br i1 %.not.i207, label %tvb_get_ucs_2_stringz.exit, label %bb.bp

bb.bp:                                            ; preds = %ensure_contiguous_unsigned.exit.i205
  store i32 %i.dt, ptr %3, align 4
  br label %tvb_get_ucs_2_stringz.exit

tvb_get_ucs_2_stringz.exit:                       ; preds = %ensure_contiguous_unsigned.exit.i205, %bb.bp
  %i.ey = zext i32 %i.dt to i64
  %i.ez = tail call ptr @get_ucs_2_string(ptr noundef %0, ptr noundef %.0.i9.i.i206, i64 noundef %i.ey, i32 noundef range(i32 0, -1610612735) %i.dj)
  br label %bb.gv

bb.bq:                                            ; preds = %bb.d
  %i.fa = and i32 %4, -1610612736
  br label %.preheader.i.i218

.preheader.i.i218:                                ; preds = %bb.bq, %bb.bs
  %.0.i.i219 = phi i32 [ %i.fg, %bb.bs ], [ %2, %bb.bq ] ; 2 uses
  %i.fb = tail call fastcc ptr @fast_ensure_contiguous(ptr noundef nonnull %1, i32 noundef %.0.i.i219, i32 noundef 4) ; 4 uses
  %i.fc = zext i32 %.0.i.i219 to i33
  %i.fd = tail call { i33, i1 } @llvm.sadd.with.overflow.i33(i33 %i.fc, i33 4) ; 2 uses
  %i.fe = extractvalue { i33, i1 } %i.fd, 1
  br i1 %i.fe, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %.preheader.i.i218
  tail call void @except_throw(i64 noundef 1, i64 noundef 3, ptr noundef null) #18
  unreachable

bb.bs:                                            ; preds = %.preheader.i.i218
  %i.ff = extractvalue { i33, i1 } %i.fd, 0
  %i.fg = trunc nuw i33 %i.ff to i32              ; 4 uses
  %5 = getelementptr i8, ptr %i.fb, i64 1
  %6 = load i8, ptr %5, align 1
  %7 = load i8, ptr %i.fb, align 1
  %8 = getelementptr i8, ptr %i.fb, i64 2
  %9 = load i8, ptr %8, align 1
  %10 = getelementptr i8, ptr %i.fb, i64 3
  %11 = load i8, ptr %10, align 1
  %12 = or i8 %7, %6
  %13 = or i8 %12, %9
  %14 = or i8 %13, %11
  %i.fh = icmp eq i8 %14, 0
  br i1 %i.fh, label %tvb_ucs_4_strsize.exit.i, label %.preheader.i.i218, !llvm.loop !48

tvb_ucs_4_strsize.exit.i:                         ; preds = %bb.bs
  %i.fi = sub i32 %i.fg, %2                       ; 4 uses
  %i.fj = getelementptr i8, ptr %1, i64 40
  %i.fk = load i32, ptr %i.fj, align 8            ; 2 uses
  %.not.i.i.i.i.i220 = icmp ugt i32 %2, %i.fk
  br i1 %.not.i.i.i.i.i220, label %bb.bt, label %validate_offset.exit.i.i.i.i221, !prof !11

bb.bt:                                            ; preds = %tvb_ucs_4_strsize.exit.i
  %i.fl = getelementptr i8, ptr %1, i64 48
  %i.fm = load i32, ptr %i.fl, align 8
  %.not12.i.i.i.i.i240 = icmp ugt i32 %2, %i.fm
  br i1 %.not12.i.i.i.i.i240, label %bb.bu, label %ensure_contiguous_unsigned_no_exception.exit.i.i225

bb.bu:                                            ; preds = %bb.bt
  %i.fn = getelementptr i8, ptr %1, i64 20
  %i.fo = load i32, ptr %i.fn, align 4
  %i.fp = and i32 %i.fo, 1
  %.not13.i.i.i.i.i241 = icmp eq i32 %i.fp, 0
  br i1 %.not13.i.i.i.i.i241, label %validate_offset.exit15.sink.split.i.i.i.i236, label %ensure_contiguous_unsigned_no_exception.exit.i.i225

validate_offset.exit.i.i.i.i221:                  ; preds = %tvb_ucs_4_strsize.exit.i
  %i.fq = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2, i32 %i.fi) ; 2 uses
  %i.fr = extractvalue { i32, i1 } %i.fq, 1
  br i1 %i.fr, label %ensure_contiguous_unsigned_no_exception.exit.i.i225, label %bb.bv

bb.bv:                                            ; preds = %validate_offset.exit.i.i.i.i221
  %i.fs = extractvalue { i32, i1 } %i.fq, 0       ; 3 uses
  %.not.i9.i.i.i.i222 = icmp ugt i32 %i.fs, %i.fk
  br i1 %.not.i9.i.i.i.i222, label %bb.bw, label %validate_offset_length_no_exception.exit.i.i.i223, !prof !11

bb.bw:                                            ; preds = %bb.bv
  %i.ft = getelementptr i8, ptr %1, i64 48
  %i.fu = load i32, ptr %i.ft, align 8
  %.not12.i11.i.i.i.i234 = icmp ugt i32 %i.fs, %i.fu
  br i1 %.not12.i11.i.i.i.i234, label %bb.bx, label %ensure_contiguous_unsigned_no_exception.exit.i.i225

bb.bx:                                            ; preds = %bb.bw
  %i.fv = getelementptr i8, ptr %1, i64 20
  %i.fw = load i32, ptr %i.fv, align 4
  %i.fx = and i32 %i.fw, 1
  %.not13.i12.i.i.i.i235 = icmp eq i32 %i.fx, 0
  br i1 %.not13.i12.i.i.i.i235, label %validate_offset.exit15.sink.split.i.i.i.i236, label %ensure_contiguous_unsigned_no_exception.exit.i.i225

validate_offset.exit15.sink.split.i.i.i.i236:     ; preds = %bb.bx, %bb.bu
  %.sink.i.i.i.i237 = phi i32 [ %2, %bb.bu ], [ %i.fs, %bb.bx ]
  %i.fy = getelementptr i8, ptr %1, i64 44
  %i.fz = load i32, ptr %i.fy, align 4
  %.not14.i.i.i.i.i238 = icmp ugt i32 %.sink.i.i.i.i237, %i.fz
  %..i.i.i.i.i239 = select i1 %.not14.i.i.i.i.i238, i32 3, i32 2
  br label %ensure_contiguous_unsigned_no_exception.exit.i.i225

validate_offset_length_no_exception.exit.i.i.i223: ; preds = %bb.bv
  %i.ga = icmp eq i32 %2, %i.fg
  br i1 %i.ga, label %ensure_contiguous_unsigned.exit.i229, label %bb.by

bb.by:                                            ; preds = %validate_offset_length_no_exception.exit.i.i.i223
  %i.gb = getelementptr i8, ptr %1, i64 32
  %i.gc = load ptr, ptr %i.gb, align 8            ; 2 uses
  %.not21.i.i.i224 = icmp eq ptr %i.gc, null
  br i1 %.not21.i.i.i224, label %bb.ca, label %bb.bz

bb.bz:                                            ; preds = %bb.by
  %i.gd = zext i32 %2 to i64
  %i.ge = getelementptr i8, ptr %i.gc, i64 %i.gd
  br label %ensure_contiguous_unsigned_no_exception.exit.i.i225

bb.ca:                                            ; preds = %bb.by
  %i.gf = getelementptr i8, ptr %1, i64 8
  %i.gg = load ptr, ptr %i.gf, align 8
  %i.gh = getelementptr i8, ptr %i.gg, i64 24
  %i.gi = load ptr, ptr %i.gh, align 8            ; 2 uses
  %.not22.i.i.i233 = icmp eq ptr %i.gi, null
  br i1 %.not22.i.i.i233, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.gj = tail call ptr %i.gi(ptr noundef nonnull %1, i32 noundef %2, i32 noundef %i.fi), !inline_history !73
  br label %ensure_contiguous_unsigned_no_exception.exit.i.i225

bb.cc:                                            ; preds = %bb.ca
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 926) #18
  unreachable

ensure_contiguous_unsigned_no_exception.exit.i.i225: ; preds = %bb.cb, %bb.bz, %validate_offset.exit15.sink.split.i.i.i.i236, %bb.bx, %bb.bw, %validate_offset.exit.i.i.i.i221, %bb.bu, %bb.bt
  %.0.i11.i226 = phi i32 [ 0, %bb.bz ], [ 1, %validate_offset.exit.i.i.i.i221 ], [ 0, %bb.cb ], [ %..i.i.i.i.i239, %validate_offset.exit15.sink.split.i.i.i.i236 ], [ 4, %bb.bu ], [ 1, %bb.bw ], [ 4, %bb.bx ], [ 1, %bb.bt ] ; 2 uses
  %.0.i.i.i227 = phi ptr [ %i.ge, %bb.bz ], [ null, %validate_offset.exit.i.i.i.i221 ], [ %i.gj, %bb.cb ], [ null, %validate_offset.exit15.sink.split.i.i.i.i236 ], [ null, %bb.bu ], [ null, %bb.bw ], [ null, %bb.bx ], [ null, %bb.bt ] ; 2 uses
  %i.gk = icmp eq ptr %.0.i.i.i227, null
  %i.gl = icmp ne i32 %2, %i.fg
  %or.cond.i.i228 = and i1 %i.gl, %i.gk
  br i1 %or.cond.i.i228, label %bb.cd, label %ensure_contiguous_unsigned.exit.i229

bb.cd:                                            ; preds = %ensure_contiguous_unsigned_no_exception.exit.i.i225
  %.not.i.i232 = icmp eq i32 %.0.i11.i226, 0
  br i1 %.not.i.i232, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 938, ptr noundef nonnull @.str.41) #18
  unreachable

bb.cf:                                            ; preds = %bb.cd
  %i.gm = zext nneg i32 %.0.i11.i226 to i64
  tail call void @except_throw(i64 noundef 1, i64 noundef %i.gm, ptr noundef null) #18
  unreachable

ensure_contiguous_unsigned.exit.i229:             ; preds = %ensure_contiguous_unsigned_no_exception.exit.i.i225, %validate_offset_length_no_exception.exit.i.i.i223
  %.0.i9.i.i230 = phi ptr [ %.0.i.i.i227, %ensure_contiguous_unsigned_no_exception.exit.i.i225 ], [ null, %validate_offset_length_no_exception.exit.i.i.i223 ]
  %.not.i231 = icmp eq ptr %3, null
  br i1 %.not.i231, label %tvb_get_ucs_4_stringz.exit, label %bb.cg

bb.cg:                                            ; preds = %ensure_contiguous_unsigned.exit.i229
  store i32 %i.fi, ptr %3, align 4
  br label %tvb_get_ucs_4_stringz.exit

tvb_get_ucs_4_stringz.exit:                       ; preds = %ensure_contiguous_unsigned.exit.i229, %bb.cg
  %i.gn = zext i32 %i.fi to i64
  %i.go = tail call ptr @get_ucs_4_string(ptr noundef %0, ptr noundef %.0.i9.i.i230, i64 noundef %i.gn, i32 noundef range(i32 0, -1610612735) %i.fa)
  br label %bb.gv

bb.ch:                                            ; preds = %bb.d
  %i.gp = tail call i32 @tvb_strsize(ptr noundef nonnull %1, i32 noundef %2) ; 6 uses
  %i.gq = getelementptr i8, ptr %1, i64 40
  %i.gr = load i32, ptr %i.gq, align 8            ; 2 uses
  %.not.i.i.i.i.i242 = icmp ugt i32 %2, %i.gr
  br i1 %.not.i.i.i.i.i242, label %bb.ci, label %validate_offset.exit.i.i.i.i243, !prof !11

bb.ci:                                            ; preds = %bb.ch
  %i.gs = getelementptr i8, ptr %1, i64 48
  %i.gt = load i32, ptr %i.gs, align 8
  %.not12.i.i.i.i.i262 = icmp ugt i32 %2, %i.gt
  br i1 %.not12.i.i.i.i.i262, label %bb.cj, label %ensure_contiguous_unsigned_no_exception.exit.i.i247

bb.cj:                                            ; preds = %bb.ci
  %i.gu = getelementptr i8, ptr %1, i64 20
  %i.gv = load i32, ptr %i.gu, align 4
  %i.gw = and i32 %i.gv, 1
  %.not13.i.i.i.i.i263 = icmp eq i32 %i.gw, 0
  br i1 %.not13.i.i.i.i.i263, label %validate_offset.exit15.sink.split.i.i.i.i258, label %ensure_contiguous_unsigned_no_exception.exit.i.i247

validate_offset.exit.i.i.i.i243:                  ; preds = %bb.ch
  %i.gx = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2, i32 %i.gp) ; 2 uses
  %i.gy = extractvalue { i32, i1 } %i.gx, 1
  br i1 %i.gy, label %ensure_contiguous_unsigned_no_exception.exit.i.i247, label %bb.ck

bb.ck:                                            ; preds = %validate_offset.exit.i.i.i.i243
  %i.gz = extractvalue { i32, i1 } %i.gx, 0       ; 3 uses
  %.not.i9.i.i.i.i244 = icmp ugt i32 %i.gz, %i.gr
  br i1 %.not.i9.i.i.i.i244, label %bb.cl, label %validate_offset_length_no_exception.exit.i.i.i245, !prof !11

bb.cl:                                            ; preds = %bb.ck
  %i.ha = getelementptr i8, ptr %1, i64 48
  %i.hb = load i32, ptr %i.ha, align 8
  %.not12.i11.i.i.i.i256 = icmp ugt i32 %i.gz, %i.hb
  br i1 %.not12.i11.i.i.i.i256, label %bb.cm, label %ensure_contiguous_unsigned_no_exception.exit.i.i247

bb.cm:                                            ; preds = %bb.cl
  %i.hc = getelementptr i8, ptr %1, i64 20
  %i.hd = load i32, ptr %i.hc, align 4
  %i.he = and i32 %i.hd, 1
  %.not13.i12.i.i.i.i257 = icmp eq i32 %i.he, 0
  br i1 %.not13.i12.i.i.i.i257, label %validate_offset.exit15.sink.split.i.i.i.i258, label %ensure_contiguous_unsigned_no_exception.exit.i.i247

validate_offset.exit15.sink.split.i.i.i.i258:     ; preds = %bb.cm, %bb.cj
  %.sink.i.i.i.i259 = phi i32 [ %2, %bb.cj ], [ %i.gz, %bb.cm ]
  %i.hf = getelementptr i8, ptr %1, i64 44
  %i.hg = load i32, ptr %i.hf, align 4
  %.not14.i.i.i.i.i260 = icmp ugt i32 %.sink.i.i.i.i259, %i.hg
  %..i.i.i.i.i261 = select i1 %.not14.i.i.i.i.i260, i32 3, i32 2
  br label %ensure_contiguous_unsigned_no_exception.exit.i.i247

validate_offset_length_no_exception.exit.i.i.i245: ; preds = %bb.ck
  %i.hh = icmp eq i32 %i.gp, 0
  br i1 %i.hh, label %ensure_contiguous_unsigned.exit.i251, label %bb.cn

bb.cn:                                            ; preds = %validate_offset_length_no_exception.exit.i.i.i245
  %i.hi = getelementptr i8, ptr %1, i64 32
  %i.hj = load ptr, ptr %i.hi, align 8            ; 2 uses
  %.not21.i.i.i246 = icmp eq ptr %i.hj, null
  br i1 %.not21.i.i.i246, label %bb.cp, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.hk = zext i32 %2 to i64
  %i.hl = getelementptr i8, ptr %i.hj, i64 %i.hk
  br label %ensure_contiguous_unsigned_no_exception.exit.i.i247

bb.cp:                                            ; preds = %bb.cn
  %i.hm = getelementptr i8, ptr %1, i64 8
  %i.hn = load ptr, ptr %i.hm, align 8
  %i.ho = getelementptr i8, ptr %i.hn, i64 24
  %i.hp = load ptr, ptr %i.ho, align 8            ; 2 uses
  %.not22.i.i.i255 = icmp eq ptr %i.hp, null
  br i1 %.not22.i.i.i255, label %bb.cr, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.hq = tail call ptr %i.hp(ptr noundef nonnull %1, i32 noundef %2, i32 noundef %i.gp), !inline_history !74
  br label %ensure_contiguous_unsigned_no_exception.exit.i.i247

bb.cr:                                            ; preds = %bb.cp
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 926) #18
  unreachable
end_hunk_1
