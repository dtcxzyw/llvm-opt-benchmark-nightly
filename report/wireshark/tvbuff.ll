Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/tvbuff?download=true
inline.NumInlined: 297
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@tvb_get_raw_bytes_as_string:bb.a
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.d = add nsw i64 %3, -1
  %i.e = icmp ult i64 %3, 4294967296
  br i1 %i.e, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 4643, ptr noundef @.str.33) #18
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.f = getelementptr i8, ptr %0, i64 40
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %.not24 = icmp ugt i32 %i.g, %1
  br i1 %.not24, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  store i8 0, ptr %2, align 1
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.h = sub nuw i32 %i.g, %1
  %i.i = zext i32 %i.h to i64
  %spec.select25 = tail call i64 @llvm.umin.i64(i64 %i.d, i64 %i.i) ; 3 uses
  %spec.select = trunc nuw i64 %spec.select25 to i32
  %i.j = tail call ptr @tvb_memcpy(ptr noundef nonnull %0, ptr noundef %2, i32 noundef %1, i64 noundef %spec.select25) ; 0 uses
  %i.k = getelementptr i8, ptr %2, i64 %spec.select25
  store i8 0, ptr %i.k, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.018 = phi i32 [ 0, %bb.i ], [ %spec.select, %bb.j ]
  ret i32 %.018
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @tvb_ascii_isprint(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 4662, ptr noundef @.str.5) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %1, %i.e
  br i1 %.not.i.i.i.i, label %bb.e, label %validate_offset.exit.i.i.i, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8
  %.not12.i.i.i.i = icmp ugt i32 %1, %i.g
  br i1 %.not12.i.i.i.i, label %bb.f, label %ensure_contiguous_unsigned_no_exception.exit.i

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 1
  %.not13.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not13.i.i.i.i, label %validate_offset.exit15.sink.split.i.i.i, label %ensure_contiguous_unsigned_no_exception.exit.i

validate_offset.exit.i.i.i:                       ; preds = %bb.d
  %i.k = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 %2) ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %ensure_contiguous_unsigned_no_exception.exit.i, label %bb.g

bb.g:                                             ; preds = %validate_offset.exit.i.i.i
  %i.m = extractvalue { i32, i1 } %i.k, 0         ; 3 uses
  %.not.i9.i.i.i = icmp ugt i32 %i.m, %i.e
  br i1 %.not.i9.i.i.i, label %bb.h, label %validate_offset_length_no_exception.exit.i.i, !prof !14

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %0, i64 48
  %i.o = load i32, ptr %i.n, align 8
  %.not12.i11.i.i.i = icmp ugt i32 %i.m, %i.o
  br i1 %.not12.i11.i.i.i, label %bb.i, label %ensure_contiguous_unsigned_no_exception.exit.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 1
  %.not13.i12.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not13.i12.i.i.i, label %validate_offset.exit15.sink.split.i.i.i, label %ensure_contiguous_unsigned_no_exception.exit.i

validate_offset.exit15.sink.split.i.i.i:          ; preds = %bb.i, %bb.f
  %.sink.i.i.i = phi i32 [ %1, %bb.f ], [ %i.m, %bb.i ]
  %i.s = getelementptr i8, ptr %0, i64 44
  %i.t = load i32, ptr %i.s, align 4
  %.not14.i.i.i.i = icmp ugt i32 %.sink.i.i.i, %i.t
  %..i.i.i.i = select i1 %.not14.i.i.i.i, i32 3, i32 2
  br label %ensure_contiguous_unsigned_no_exception.exit.i

validate_offset_length_no_exception.exit.i.i:     ; preds = %bb.g
  %i.u = icmp eq i32 %2, 0
  br i1 %i.u, label %.critedge, label %bb.j

bb.j:                                             ; preds = %validate_offset_length_no_exception.exit.i.i
  %i.v = getelementptr i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not21.i.i = icmp eq ptr %i.w, null
  br i1 %.not21.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = zext i32 %1 to i64
  %i.y = getelementptr i8, ptr %i.w, i64 %i.x
  br label %ensure_contiguous_unsigned_no_exception.exit.i

bb.l:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not22.i.i = icmp eq ptr %i.ac, null
  br i1 %.not22.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = tail call ptr %i.ac(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2), !inline_history !2
  br label %ensure_contiguous_unsigned_no_exception.exit.i

bb.n:                                             ; preds = %bb.l
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 926) #18
  unreachable

ensure_contiguous_unsigned_no_exception.exit.i:   ; preds = %bb.m, %bb.k, %validate_offset.exit15.sink.split.i.i.i, %bb.i, %bb.h, %validate_offset.exit.i.i.i, %bb.f, %bb.e
  %.0.i = phi i32 [ 0, %bb.k ], [ 1, %validate_offset.exit.i.i.i ], [ 0, %bb.m ], [ %..i.i.i.i, %validate_offset.exit15.sink.split.i.i.i ], [ 4, %bb.f ], [ 1, %bb.h ], [ 4, %bb.i ], [ 1, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.y, %bb.k ], [ null, %validate_offset.exit.i.i.i ], [ %i.ad, %bb.m ], [ null, %validate_offset.exit15.sink.split.i.i.i ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.e ] ; 2 uses
  %i.ae = icmp eq ptr %.0.i.i, null
  %i.af = icmp ne i32 %2, 0
  %or.cond.i = and i1 %i.af, %i.ae
  br i1 %or.cond.i, label %bb.o, label %ensure_contiguous_unsigned.exit

bb.o:                                             ; preds = %ensure_contiguous_unsigned_no_exception.exit.i
  %.not.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 938, ptr noundef @.str.41) #18
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ag = zext nneg i32 %.0.i to i64
  tail call void @except_throw(i64 noundef 1, i64 noundef %i.ag, ptr noundef null) #18
  unreachable

ensure_contiguous_unsigned.exit:                  ; preds = %ensure_contiguous_unsigned_no_exception.exit.i
  %.not1617 = icmp eq i32 %2, 0
  br i1 %.not1617, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %ensure_contiguous_unsigned.exit
  %i.ah = load ptr, ptr @g_ascii_table, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph
  %.01119 = phi i32 [ 0, %.lr.ph ], [ %i.an, %bb.r ]
  %.01218 = phi ptr [ %.0.i.i, %.lr.ph ], [ %i.ao, %bb.r ] ; 2 uses
  %i.ai = load i8, ptr %.01218, align 1
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr [2 x i8], ptr %i.ah, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = and i16 %i.al, 64
  %.not15.not = icmp ne i16 %i.am, 0              ; 2 uses
  %i.an = add nuw i32 %.01119, 1                  ; 2 uses
  %i.ao = getelementptr i8, ptr %.01218, i64 1
  %exitcond.not = icmp ne i32 %i.an, %2
  %or.cond.not = select i1 %.not15.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.r, label %.critedge, !llvm.loop !70

.critedge:                                        ; preds = %bb.r, %validate_offset_length_no_exception.exit.i.i, %ensure_contiguous_unsigned.exit
  %.not16.lcssa = phi i1 [ true, %ensure_contiguous_unsigned.exit ], [ true, %validate_offset_length_no_exception.exit.i.i ], [ %.not15.not, %bb.r ]
  ret i1 %.not16.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @tvb_ascii_isprint_remaining(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 4681, ptr noundef @.str.5) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8              ; 6 uses
  %.not.i.i = icmp ugt i32 %1, %i.e
  br i1 %.not.i.i, label %bb.e, label %validate_offset.exit.i.i.i, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8
  %.not12.i.i = icmp ugt i32 %1, %i.g
  br i1 %.not12.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 1
  %.not13.i.i = icmp eq i32 %i.j, 0
  br i1 %.not13.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4
  %.not14.i.i = icmp ugt i32 %1, %i.l
  %..i.i = select i1 %.not14.i.i, i64 3, i64 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.f
  %.0.i8.i.ph = phi i64 [ 4, %bb.f ], [ 1, %bb.e ], [ %..i.i, %bb.g ]
  tail call void @except_throw(i64 noundef 1, i64 noundef %.0.i8.i.ph, ptr noundef null) #18
  unreachable

validate_offset.exit.i.i.i:                       ; preds = %bb.d
  %2 = sub nuw i32 %i.e, %1                       ; 3 uses
  %3 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 %2) ; 2 uses
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %ensure_contiguous_unsigned_no_exception.exit.i, label %5

5:                                                ; preds = %validate_offset.exit.i.i.i
  %6 = extractvalue { i32, i1 } %3, 0             ; 3 uses
  %.not.i9.i.i.i = icmp ugt i32 %6, %i.e
  br i1 %.not.i9.i.i.i, label %7, label %validate_offset_length_no_exception.exit.i.i, !prof !14

7:                                                ; preds = %5
  %8 = getelementptr i8, ptr %0, i64 48
  %9 = load i32, ptr %8, align 8
  %.not12.i11.i.i.i = icmp ugt i32 %6, %9
  br i1 %.not12.i11.i.i.i, label %bb.i, label %ensure_contiguous_unsigned_no_exception.exit.i

bb.i:                                             ; preds = %7
  %10 = getelementptr i8, ptr %0, i64 20
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %.not13.i12.i.i.i = icmp eq i32 %12, 0
  br i1 %.not13.i12.i.i.i, label %validate_offset.exit15.sink.split.i.i.i, label %ensure_contiguous_unsigned_no_exception.exit.i

validate_offset.exit15.sink.split.i.i.i:          ; preds = %bb.i
  %13 = getelementptr i8, ptr %0, i64 44
  %14 = load i32, ptr %13, align 4
  %.not14.i.i.i.i = icmp ugt i32 %6, %14
  %..i.i.i.i = select i1 %.not14.i.i.i.i, i32 3, i32 2
  br label %ensure_contiguous_unsigned_no_exception.exit.i

validate_offset_length_no_exception.exit.i.i:     ; preds = %5
  %15 = icmp eq i32 %i.e, %1
  br i1 %15, label %.critedge, label %bb.j

bb.j:                                             ; preds = %validate_offset_length_no_exception.exit.i.i
  %i.m = getelementptr i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not21.i.i = icmp eq ptr %i.n, null
  br i1 %.not21.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = zext i32 %1 to i64
  %i.p = getelementptr i8, ptr %i.n, i64 %i.o
  br label %ensure_contiguous_unsigned_no_exception.exit.i

bb.l:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not22.i.i = icmp eq ptr %i.t, null
  br i1 %.not22.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = tail call ptr %i.t(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2), !inline_history !2
  br label %ensure_contiguous_unsigned_no_exception.exit.i

bb.n:                                             ; preds = %bb.l
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 926) #18
  unreachable

ensure_contiguous_unsigned_no_exception.exit.i:   ; preds = %bb.m, %bb.k, %validate_offset.exit15.sink.split.i.i.i, %bb.i, %7, %validate_offset.exit.i.i.i
  %.0.i = phi i32 [ 0, %bb.k ], [ 1, %validate_offset.exit.i.i.i ], [ 0, %bb.m ], [ %..i.i.i.i, %validate_offset.exit15.sink.split.i.i.i ], [ 4, %bb.i ], [ 1, %7 ] ; 2 uses
  %.0.i.i = phi ptr [ %i.p, %bb.k ], [ null, %validate_offset.exit.i.i.i ], [ %i.u, %bb.m ], [ null, %validate_offset.exit15.sink.split.i.i.i ], [ null, %bb.i ], [ null, %7 ] ; 2 uses
  %i.v = icmp eq ptr %.0.i.i, null
  %16 = icmp ne i32 %i.e, %1
  %or.cond.i = and i1 %16, %i.v
  br i1 %or.cond.i, label %bb.o, label %ensure_contiguous_unsigned.exit

bb.o:                                             ; preds = %ensure_contiguous_unsigned_no_exception.exit.i
  %.not.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 938, ptr noundef @.str.41) #18
  unreachable

bb.q:                                             ; preds = %bb.o
  %17 = zext nneg i32 %.0.i to i64
  tail call void @except_throw(i64 noundef 1, i64 noundef %17, ptr noundef null) #18
  unreachable

ensure_contiguous_unsigned.exit:                  ; preds = %ensure_contiguous_unsigned_no_exception.exit.i
  %.not2028 = icmp eq i32 %i.e, %1
  br i1 %.not2028, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %ensure_contiguous_unsigned.exit
  %i.w = load ptr, ptr @g_ascii_table, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph
  %.01330 = phi i32 [ 0, %.lr.ph ], [ %i.ac, %bb.r ]
  %.01429 = phi ptr [ %.0.i.i, %.lr.ph ], [ %i.ad, %bb.r ] ; 2 uses
  %i.x = load i8, ptr %.01429, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr [2 x i8], ptr %i.w, i64 %i.y
  %i.aa = load i16, ptr %i.z, align 2
  %i.ab = and i16 %i.aa, 64
  %.not19.not = icmp ne i16 %i.ab, 0              ; 2 uses
  %i.ac = add nuw i32 %.01330, 1                  ; 2 uses
  %i.ad = getelementptr i8, ptr %.01429, i64 1
  %exitcond.not = icmp ne i32 %i.ac, %2
  %or.cond.not = select i1 %.not19.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.r, label %.critedge, !llvm.loop !71

.critedge:                                        ; preds = %bb.r, %validate_offset_length_no_exception.exit.i.i, %ensure_contiguous_unsigned.exit
  %.not20.lcssa = phi i1 [ true, %ensure_contiguous_unsigned.exit ], [ true, %validate_offset_length_no_exception.exit.i.i ], [ %.not19.not, %bb.r ]
  ret i1 %.not20.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define zeroext i1 @tvb_utf_8_isprint(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 4699, ptr noundef @.str.5) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %1, %i.e
  br i1 %.not.i.i.i.i, label %bb.e, label %validate_offset.exit.i.i.i, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8
  %.not12.i.i.i.i = icmp ugt i32 %1, %i.g
  br i1 %.not12.i.i.i.i, label %bb.f, label %ensure_contiguous_unsigned_no_exception.exit.i

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 1
  %.not13.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not13.i.i.i.i, label %validate_offset.exit15.sink.split.i.i.i, label %ensure_contiguous_unsigned_no_exception.exit.i

validate_offset.exit.i.i.i:                       ; preds = %bb.d
  %i.k = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 %2) ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %ensure_contiguous_unsigned_no_exception.exit.i, label %bb.g

bb.g:                                             ; preds = %validate_offset.exit.i.i.i
  %i.m = extractvalue { i32, i1 } %i.k, 0         ; 3 uses
  %.not.i9.i.i.i = icmp ugt i32 %i.m, %i.e
  br i1 %.not.i9.i.i.i, label %bb.h, label %validate_offset_length_no_exception.exit.i.i, !prof !14

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %0, i64 48
  %i.o = load i32, ptr %i.n, align 8
  %.not12.i11.i.i.i = icmp ugt i32 %i.m, %i.o
  br i1 %.not12.i11.i.i.i, label %bb.i, label %ensure_contiguous_unsigned_no_exception.exit.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 1
  %.not13.i12.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not13.i12.i.i.i, label %validate_offset.exit15.sink.split.i.i.i, label %ensure_contiguous_unsigned_no_exception.exit.i

validate_offset.exit15.sink.split.i.i.i:          ; preds = %bb.i, %bb.f
  %.sink.i.i.i = phi i32 [ %1, %bb.f ], [ %i.m, %bb.i ]
  %i.s = getelementptr i8, ptr %0, i64 44
  %i.t = load i32, ptr %i.s, align 4
  %.not14.i.i.i.i = icmp ugt i32 %.sink.i.i.i, %i.t
  %..i.i.i.i = select i1 %.not14.i.i.i.i, i32 3, i32 2
  br label %ensure_contiguous_unsigned_no_exception.exit.i

validate_offset_length_no_exception.exit.i.i:     ; preds = %bb.g
  %i.u = icmp eq i32 %2, 0
  br i1 %i.u, label %ensure_contiguous_unsigned.exit, label %bb.j

bb.j:                                             ; preds = %validate_offset_length_no_exception.exit.i.i
  %i.v = getelementptr i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not21.i.i = icmp eq ptr %i.w, null
  br i1 %.not21.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = zext i32 %1 to i64
  %i.y = getelementptr i8, ptr %i.w, i64 %i.x
  br label %ensure_contiguous_unsigned_no_exception.exit.i

bb.l:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not22.i.i = icmp eq ptr %i.ac, null
  br i1 %.not22.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = tail call ptr %i.ac(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2), !inline_history !2
  br label %ensure_contiguous_unsigned_no_exception.exit.i

bb.n:                                             ; preds = %bb.l
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 926) #18
  unreachable

ensure_contiguous_unsigned_no_exception.exit.i:   ; preds = %bb.m, %bb.k, %validate_offset.exit15.sink.split.i.i.i, %bb.i, %bb.h, %validate_offset.exit.i.i.i, %bb.f, %bb.e
  %.0.i = phi i32 [ 0, %bb.k ], [ 1, %validate_offset.exit.i.i.i ], [ 0, %bb.m ], [ %..i.i.i.i, %validate_offset.exit15.sink.split.i.i.i ], [ 4, %bb.f ], [ 1, %bb.h ], [ 4, %bb.i ], [ 1, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.y, %bb.k ], [ null, %validate_offset.exit.i.i.i ], [ %i.ad, %bb.m ], [ null, %validate_offset.exit15.sink.split.i.i.i ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.e ] ; 2 uses
  %i.ae = icmp eq ptr %.0.i.i, null
  %i.af = icmp ne i32 %2, 0
  %or.cond.i = and i1 %i.af, %i.ae
  br i1 %or.cond.i, label %bb.o, label %ensure_contiguous_unsigned.exit

bb.o:                                             ; preds = %ensure_contiguous_unsigned_no_exception.exit.i
  %.not.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 938, ptr noundef @.str.41) #18
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ag = zext nneg i32 %.0.i to i64
  tail call void @except_throw(i64 noundef 1, i64 noundef %i.ag, ptr noundef null) #18
  unreachable

ensure_contiguous_unsigned.exit:                  ; preds = %validate_offset_length_no_exception.exit.i.i, %ensure_contiguous_unsigned_no_exception.exit.i
  %.0.i9.i = phi ptr [ %.0.i.i, %ensure_contiguous_unsigned_no_exception.exit.i ], [ null, %validate_offset_length_no_exception.exit.i.i ]
  %i.ah = tail call zeroext i1 @isprint_utf8_string(ptr noundef %.0.i9.i, i32 noundef %2)
  ret i1 %i.ah
}

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @isprint_utf8_string(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define zeroext i1 @tvb_utf_8_isprint_remaining(ptr noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 4714, ptr noundef @.str.5) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8              ; 3 uses
  %.not.i.i = icmp ugt i32 %1, %i.e
  br i1 %.not.i.i, label %bb.e, label %validate_offset.exit.i.i.i, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8
  %.not12.i.i = icmp ugt i32 %1, %i.g
  br i1 %.not12.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 1
  %.not13.i.i = icmp eq i32 %i.j, 0
  br i1 %.not13.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4
  %.not14.i.i = icmp ugt i32 %1, %i.l
  %..i.i = select i1 %.not14.i.i, i64 3, i64 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.f
  %.0.i8.i.ph = phi i64 [ 4, %bb.f ], [ 1, %bb.e ], [ %..i.i, %bb.g ]
  tail call void @except_throw(i64 noundef 1, i64 noundef %.0.i8.i.ph, ptr noundef null) #18
  unreachable

validate_offset.exit.i.i.i:                       ; preds = %bb.d
  %2 = sub nuw i32 %i.e, %1                       ; 5 uses
  %3 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 %2) ; 2 uses
  %4 = extractvalue { i32, i1 } %3, 1
  br i1 %4, label %ensure_contiguous_unsigned_no_exception.exit.i, label %5

5:                                                ; preds = %validate_offset.exit.i.i.i
  %6 = extractvalue { i32, i1 } %3, 0             ; 3 uses
  %.not.i9.i.i.i = icmp ugt i32 %6, %i.e
  br i1 %.not.i9.i.i.i, label %7, label %validate_offset_length_no_exception.exit.i.i, !prof !14

7:                                                ; preds = %5
  %8 = getelementptr i8, ptr %0, i64 48
  %9 = load i32, ptr %8, align 8
  %.not12.i11.i.i.i = icmp ugt i32 %6, %9
  br i1 %.not12.i11.i.i.i, label %bb.i, label %ensure_contiguous_unsigned_no_exception.exit.i

bb.i:                                             ; preds = %7
  %10 = getelementptr i8, ptr %0, i64 20
  %11 = load i32, ptr %10, align 4
  %12 = and i32 %11, 1
  %.not13.i12.i.i.i = icmp eq i32 %12, 0
  br i1 %.not13.i12.i.i.i, label %validate_offset.exit15.sink.split.i.i.i, label %ensure_contiguous_unsigned_no_exception.exit.i

validate_offset.exit15.sink.split.i.i.i:          ; preds = %bb.i
  %13 = getelementptr i8, ptr %0, i64 44
  %14 = load i32, ptr %13, align 4
  %.not14.i.i.i.i = icmp ugt i32 %6, %14
  %..i.i.i.i = select i1 %.not14.i.i.i.i, i32 3, i32 2
  br label %ensure_contiguous_unsigned_no_exception.exit.i

validate_offset_length_no_exception.exit.i.i:     ; preds = %5
  %15 = icmp eq i32 %2, 0
  br i1 %15, label %ensure_contiguous_unsigned.exit, label %bb.j

bb.j:                                             ; preds = %validate_offset_length_no_exception.exit.i.i
  %i.m = getelementptr i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not21.i.i = icmp eq ptr %i.n, null
  br i1 %.not21.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = zext i32 %1 to i64
  %i.p = getelementptr i8, ptr %i.n, i64 %i.o
  br label %ensure_contiguous_unsigned_no_exception.exit.i

bb.l:                                             ; preds = %bb.j
  %i.q = getelementptr i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = getelementptr i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not22.i.i = icmp eq ptr %i.t, null
  br i1 %.not22.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = tail call ptr %i.t(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2), !inline_history !2
  br label %ensure_contiguous_unsigned_no_exception.exit.i

bb.n:                                             ; preds = %bb.l
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 926) #18
  unreachable

ensure_contiguous_unsigned_no_exception.exit.i:   ; preds = %bb.m, %bb.k, %validate_offset.exit15.sink.split.i.i.i, %bb.i, %7, %validate_offset.exit.i.i.i
  %.0.i = phi i32 [ 0, %bb.k ], [ 1, %validate_offset.exit.i.i.i ], [ 0, %bb.m ], [ %..i.i.i.i, %validate_offset.exit15.sink.split.i.i.i ], [ 4, %bb.i ], [ 1, %7 ] ; 2 uses
  %.0.i.i = phi ptr [ %i.p, %bb.k ], [ null, %validate_offset.exit.i.i.i ], [ %i.u, %bb.m ], [ null, %validate_offset.exit15.sink.split.i.i.i ], [ null, %bb.i ], [ null, %7 ] ; 2 uses
  %i.v = icmp eq ptr %.0.i.i, null
  %16 = icmp ne i32 %2, 0
  %or.cond.i = and i1 %16, %i.v
  br i1 %or.cond.i, label %bb.o, label %ensure_contiguous_unsigned.exit

bb.o:                                             ; preds = %ensure_contiguous_unsigned_no_exception.exit.i
  %.not.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 938, ptr noundef @.str.41) #18
  unreachable

bb.q:                                             ; preds = %bb.o
  %17 = zext nneg i32 %.0.i to i64
  tail call void @except_throw(i64 noundef 1, i64 noundef %17, ptr noundef null) #18
  unreachable

ensure_contiguous_unsigned.exit:                  ; preds = %validate_offset_length_no_exception.exit.i.i, %ensure_contiguous_unsigned_no_exception.exit.i
  %.015 = phi i32 [ %2, %ensure_contiguous_unsigned_no_exception.exit.i ], [ 0, %validate_offset_length_no_exception.exit.i.i ]
  %.0.i9.i = phi ptr [ %.0.i.i, %ensure_contiguous_unsigned_no_exception.exit.i ], [ null, %validate_offset_length_no_exception.exit.i.i ]
  %i.w = tail call zeroext i1 @isprint_utf8_string(ptr noundef %.0.i9.i, i32 noundef %.015)
  ret i1 %i.w
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @tvb_ascii_isdigit(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 4728, ptr noundef @.str.5) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %1, %i.e
  br i1 %.not.i.i.i.i, label %bb.e, label %validate_offset.exit.i.i.i, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8
  %.not12.i.i.i.i = icmp ugt i32 %1, %i.g
  br i1 %.not12.i.i.i.i, label %bb.f, label %ensure_contiguous_unsigned_no_exception.exit.i

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 1
  %.not13.i.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not13.i.i.i.i, label %validate_offset.exit15.sink.split.i.i.i, label %ensure_contiguous_unsigned_no_exception.exit.i

validate_offset.exit.i.i.i:                       ; preds = %bb.d
  %i.k = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 %2) ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %ensure_contiguous_unsigned_no_exception.exit.i, label %bb.g

bb.g:                                             ; preds = %validate_offset.exit.i.i.i
  %i.m = extractvalue { i32, i1 } %i.k, 0         ; 3 uses
  %.not.i9.i.i.i = icmp ugt i32 %i.m, %i.e
  br i1 %.not.i9.i.i.i, label %bb.h, label %validate_offset_length_no_exception.exit.i.i, !prof !14

bb.h:                                             ; preds = %bb.g
  %i.n = getelementptr i8, ptr %0, i64 48
  %i.o = load i32, ptr %i.n, align 8
  %.not12.i11.i.i.i = icmp ugt i32 %i.m, %i.o
  br i1 %.not12.i11.i.i.i, label %bb.i, label %ensure_contiguous_unsigned_no_exception.exit.i

bb.i:                                             ; preds = %bb.h
  %i.p = getelementptr i8, ptr %0, i64 20
  %i.q = load i32, ptr %i.p, align 4
  %i.r = and i32 %i.q, 1
  %.not13.i12.i.i.i = icmp eq i32 %i.r, 0
  br i1 %.not13.i12.i.i.i, label %validate_offset.exit15.sink.split.i.i.i, label %ensure_contiguous_unsigned_no_exception.exit.i

validate_offset.exit15.sink.split.i.i.i:          ; preds = %bb.i, %bb.f
  %.sink.i.i.i = phi i32 [ %1, %bb.f ], [ %i.m, %bb.i ]
  %i.s = getelementptr i8, ptr %0, i64 44
  %i.t = load i32, ptr %i.s, align 4
  %.not14.i.i.i.i = icmp ugt i32 %.sink.i.i.i, %i.t
  %..i.i.i.i = select i1 %.not14.i.i.i.i, i32 3, i32 2
  br label %ensure_contiguous_unsigned_no_exception.exit.i

validate_offset_length_no_exception.exit.i.i:     ; preds = %bb.g
  %i.u = icmp eq i32 %2, 0
  br i1 %i.u, label %.critedge, label %bb.j

bb.j:                                             ; preds = %validate_offset_length_no_exception.exit.i.i
  %i.v = getelementptr i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not21.i.i = icmp eq ptr %i.w, null
  br i1 %.not21.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = zext i32 %1 to i64
  %i.y = getelementptr i8, ptr %i.w, i64 %i.x
  br label %ensure_contiguous_unsigned_no_exception.exit.i

bb.l:                                             ; preds = %bb.j
  %i.z = getelementptr i8, ptr %0, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not22.i.i = icmp eq ptr %i.ac, null
  br i1 %.not22.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = tail call ptr %i.ac(ptr noundef nonnull %0, i32 noundef %1, i32 noundef %2), !inline_history !2
  br label %ensure_contiguous_unsigned_no_exception.exit.i

bb.n:                                             ; preds = %bb.l
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 926) #18
  unreachable

ensure_contiguous_unsigned_no_exception.exit.i:   ; preds = %bb.m, %bb.k, %validate_offset.exit15.sink.split.i.i.i, %bb.i, %bb.h, %validate_offset.exit.i.i.i, %bb.f, %bb.e
  %.0.i = phi i32 [ 0, %bb.k ], [ 1, %validate_offset.exit.i.i.i ], [ 0, %bb.m ], [ %..i.i.i.i, %validate_offset.exit15.sink.split.i.i.i ], [ 4, %bb.f ], [ 1, %bb.h ], [ 4, %bb.i ], [ 1, %bb.e ] ; 2 uses
  %.0.i.i = phi ptr [ %i.y, %bb.k ], [ null, %validate_offset.exit.i.i.i ], [ %i.ad, %bb.m ], [ null, %validate_offset.exit15.sink.split.i.i.i ], [ null, %bb.f ], [ null, %bb.h ], [ null, %bb.i ], [ null, %bb.e ] ; 2 uses
  %i.ae = icmp eq ptr %.0.i.i, null
  %i.af = icmp ne i32 %2, 0
  %or.cond.i = and i1 %i.af, %i.ae
  br i1 %or.cond.i, label %bb.o, label %ensure_contiguous_unsigned.exit

bb.o:                                             ; preds = %ensure_contiguous_unsigned_no_exception.exit.i
  %.not.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 938, ptr noundef @.str.41) #18
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ag = zext nneg i32 %.0.i to i64
  tail call void @except_throw(i64 noundef 1, i64 noundef %i.ag, ptr noundef null) #18
  unreachable

ensure_contiguous_unsigned.exit:                  ; preds = %ensure_contiguous_unsigned_no_exception.exit.i
  %.not1617 = icmp eq i32 %2, 0
  br i1 %.not1617, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %ensure_contiguous_unsigned.exit
  %i.ah = load ptr, ptr @g_ascii_table, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.lr.ph
  %.01119 = phi i32 [ 0, %.lr.ph ], [ %i.an, %bb.r ]
  %.01218 = phi ptr [ %.0.i.i, %.lr.ph ], [ %i.ao, %bb.r ] ; 2 uses
  %i.ai = load i8, ptr %.01218, align 1
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr [2 x i8], ptr %i.ah, i64 %i.aj
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = and i16 %i.al, 8
  %.not15.not = icmp ne i16 %i.am, 0              ; 2 uses
  %i.an = add nuw i32 %.01119, 1                  ; 2 uses
  %i.ao = getelementptr i8, ptr %.01218, i64 1
  %exitcond.not = icmp ne i32 %i.an, %2
  %or.cond.not = select i1 %.not15.not, i1 %exitcond.not, i1 false
  br i1 %or.cond.not, label %bb.r, label %.critedge, !llvm.loop !72

.critedge:                                        ; preds = %bb.r, %validate_offset_length_no_exception.exit.i.i, %ensure_contiguous_unsigned.exit
  %.not16.lcssa = phi i1 [ true, %ensure_contiguous_unsigned.exit ], [ true, %validate_offset_length_no_exception.exit.i.i ], [ %.not15.not, %bb.r ]
  ret i1 %.not16.lcssa
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @tvb_find_line_end_remaining(ptr noundef %0, i32 noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !15, !noundef !16
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 4844, ptr noundef @.str.5) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.not.i.i = icmp ugt i32 %1, %i.e
  br i1 %.not.i.i, label %bb.e, label %bb.i, !prof !14

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %0, i64 48
  %i.g = load i32, ptr %i.f, align 8
  %.not12.i.i = icmp ugt i32 %1, %i.g
  br i1 %.not12.i.i, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr i8, ptr %0, i64 20
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 1
  %.not13.i.i = icmp eq i32 %i.j, 0
  br i1 %.not13.i.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr i8, ptr %0, i64 44
  %i.l = load i32, ptr %i.k, align 4
  %.not14.i.i = icmp ugt i32 %1, %i.l
  %..i.i = select i1 %.not14.i.i, i64 3, i64 2
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.e, %bb.f
  %.0.i8.i.ph = phi i64 [ 4, %bb.f ], [ 1, %bb.e ], [ %..i.i, %bb.g ]
  tail call void @except_throw(i64 noundef 1, i64 noundef %.0.i8.i.ph, ptr noundef null) #18
  unreachable

bb.i:                                             ; preds = %bb.d
  %i.m = sub nuw i32 %i.e, %1
  %i.n = tail call fastcc zeroext i1 @_tvb_find_line_end_length(ptr noundef %0, i32 noundef %1, i32 noundef %i.m, ptr noundef %2, ptr noundef %3)
end_hunk_0
begin_hunk_1_@tvb_find_tvb:bb.a
  %i.f = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp eq i32 %i.b, 0
  %or.cond = select i1 %i.h, i1 true, i1 %i.i
  br i1 %or.cond, label %bb.w, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr i8, ptr %0, i64 32
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not17.i.i = icmp eq ptr %i.k, null
  br i1 %.not17.i.i, label %bb.f, label %ensure_contiguous.exit

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr i8, ptr %i.m, i64 24
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not18.i.i = icmp eq ptr %i.o, null
  br i1 %.not18.i.i, label %bb.g, label %ensure_contiguous_no_exception.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 975) #18
  unreachable

ensure_contiguous_no_exception.exit.i:            ; preds = %bb.f
  %i.p = tail call ptr %i.o(ptr noundef nonnull %0, i32 noundef 0, i32 noundef %i.g), !inline_history !75 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %bb.h, label %ensure_contiguous_no_exception.exit.i.ensure_contiguous.exit_crit_edge

ensure_contiguous_no_exception.exit.i.ensure_contiguous.exit_crit_edge: ; preds = %ensure_contiguous_no_exception.exit.i
  %.pre = load i32, ptr %i.a, align 8
  br label %ensure_contiguous.exit

bb.h:                                             ; preds = %ensure_contiguous_no_exception.exit.i
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 987, ptr noundef @.str.41) #18
  unreachable

ensure_contiguous.exit:                           ; preds = %ensure_contiguous_no_exception.exit.i.ensure_contiguous.exit_crit_edge, %bb.e
  %i.r = phi i32 [ %.pre, %ensure_contiguous_no_exception.exit.i.ensure_contiguous.exit_crit_edge ], [ %i.b, %bb.e ]
  %.0.i7.i = phi ptr [ %i.p, %ensure_contiguous_no_exception.exit.i.ensure_contiguous.exit_crit_edge ], [ %i.k, %bb.e ] ; 2 uses
  %i.s = getelementptr i8, ptr %1, i64 32
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not17.i.i19 = icmp eq ptr %i.t, null
  br i1 %.not17.i.i19, label %bb.i, label %ensure_contiguous.exit23

bb.i:                                             ; preds = %ensure_contiguous.exit
  %i.u = getelementptr i8, ptr %1, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not18.i.i21 = icmp eq ptr %i.x, null
  br i1 %.not18.i.i21, label %bb.j, label %ensure_contiguous_no_exception.exit.i22

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 975) #18
  unreachable

ensure_contiguous_no_exception.exit.i22:          ; preds = %bb.i
  %i.y = tail call ptr %i.x(ptr noundef %1, i32 noundef 0, i32 noundef %i.r), !inline_history !75 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.k, label %ensure_contiguous.exit23

bb.k:                                             ; preds = %ensure_contiguous_no_exception.exit.i22
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 987, ptr noundef @.str.41) #18
  unreachable

ensure_contiguous.exit23:                         ; preds = %ensure_contiguous.exit, %ensure_contiguous_no_exception.exit.i22
  %.0.i7.i20 = phi ptr [ %i.y, %ensure_contiguous_no_exception.exit.i22 ], [ %i.t, %ensure_contiguous.exit ]
  %i.aa = icmp sgt i32 %2, -1
  br i1 %i.aa, label %bb.l, label %bb.p

bb.l:                                             ; preds = %ensure_contiguous.exit23
  %i.ab = load i32, ptr %i.f, align 8             ; 2 uses
  %.not35.i.i = icmp ugt i32 %2, %i.ab
  br i1 %.not35.i.i, label %bb.m, label %compute_offset.exit.i, !prof !14

bb.m:                                             ; preds = %bb.l
  %i.ac = getelementptr i8, ptr %0, i64 48
  %i.ad = load i32, ptr %i.ac, align 8
  %.not37.i.i = icmp ugt i32 %2, %i.ad
  br i1 %.not37.i.i, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.ae = getelementptr i8, ptr %0, i64 20
  %i.af = load i32, ptr %i.ae, align 4
  %i.ag = and i32 %i.af, 1
  %.not38.i.i = icmp eq i32 %i.ag, 0
  br i1 %.not38.i.i, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.ah = getelementptr i8, ptr %0, i64 44
  %i.ai = load i32, ptr %i.ah, align 4
  %.not39.i.i = icmp ugt i32 %2, %i.ai
  br label %.sink.split

bb.p:                                             ; preds = %ensure_contiguous.exit23
  %i.aj = sub i32 0, %2                           ; 3 uses
  %i.ak = load i32, ptr %i.f, align 8             ; 3 uses
  %.not.i.i = icmp ult i32 %i.ak, %i.aj
  br i1 %.not.i.i, label %bb.q, label %bb.t, !prof !14

bb.q:                                             ; preds = %bb.p
  %i.al = getelementptr i8, ptr %0, i64 48
  %i.am = load i32, ptr %i.al, align 8
  %.not32.i.i = icmp ult i32 %i.am, %i.aj
  br i1 %.not32.i.i, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  %i.an = getelementptr i8, ptr %0, i64 20
  %i.ao = load i32, ptr %i.an, align 4
  %i.ap = and i32 %i.ao, 1
  %.not33.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not33.i.i, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r
  %i.aq = getelementptr i8, ptr %0, i64 44
  %i.ar = load i32, ptr %i.aq, align 4
  %.not34.i.i = icmp ult i32 %i.ar, %i.aj
  br label %.sink.split

bb.t:                                             ; preds = %bb.p
  %i.as = add i32 %i.ak, %2
  br label %compute_offset.exit.i

compute_offset.exit.i:                            ; preds = %bb.t, %bb.l
  %i.at = phi i32 [ %i.ak, %bb.t ], [ %i.ab, %bb.l ] ; 2 uses
  %i.au = phi i32 [ %i.as, %bb.t ], [ %2, %bb.l ] ; 3 uses
  %i.av = icmp ult i32 %i.at, %i.au
  br i1 %i.av, label %bb.u, label %check_offset_length.exit

.sink.split:                                      ; preds = %bb.o, %bb.s
  %.not34.i.i.sink = phi i1 [ %.not34.i.i, %bb.s ], [ %.not39.i.i, %bb.o ]
  %.40.i.i = select i1 %.not34.i.i.sink, i64 3, i64 2
  br label %bb.u

bb.u:                                             ; preds = %.sink.split, %compute_offset.exit.i, %bb.n, %bb.m, %bb.r, %bb.q
  %.0.i.ph = phi i64 [ 1, %bb.q ], [ 4, %bb.r ], [ 1, %bb.m ], [ 1, %compute_offset.exit.i ], [ 4, %bb.n ], [ %.40.i.i, %.sink.split ]
  tail call void @except_throw(i64 noundef 1, i64 noundef %.0.i.ph, ptr noundef null) #18
  unreachable

check_offset_length.exit:                         ; preds = %compute_offset.exit.i
  %i.aw = sub nuw i32 %i.at, %i.au
  %i.ax = zext i32 %i.au to i64
  %i.ay = getelementptr i8, ptr %.0.i7.i, i64 %i.ax
  %i.az = zext i32 %i.aw to i64
  %i.ba = zext i32 %i.b to i64
  %i.bb = tail call ptr @ws_memmem(ptr noundef %i.ay, i64 noundef %i.az, ptr noundef nonnull %.0.i7.i20, i64 noundef %i.ba) ; 2 uses
  %.not18 = icmp eq ptr %i.bb, null
  br i1 %.not18, label %bb.w, label %bb.v

bb.v:                                             ; preds = %check_offset_length.exit
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = ptrtoint ptr %.0.i7.i to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = trunc i64 %i.be to i32
  br label %bb.w

bb.w:                                             ; preds = %check_offset_length.exit, %bb.d, %bb.v
  %.0 = phi i32 [ -1, %bb.d ], [ %i.bf, %bb.v ], [ -1, %check_offset_length.exit ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @ws_memmem(ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noundef zeroext i1 @tvb_find_tvb_remaining(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nofree noundef writeonly captures(address_is_null) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !15, !noundef !16
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 5486, ptr noundef @.str.34) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %.not29 = icmp eq ptr %1, null
  br i1 %.not29, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %1, i64 16
  %i.g = load i8, ptr %i.f, align 8, !range !15, !noundef !16
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 5487, ptr noundef @.str.35) #18
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.i = getelementptr i8, ptr %0, i64 40
  %i.j = load i32, ptr %i.i, align 8              ; 6 uses
  %i.k = icmp eq i32 %i.j, 0
  %i.l = icmp eq i32 %i.b, 0
  %or.cond = select i1 %i.k, i1 true, i1 %i.l
  br i1 %or.cond, label %bb.ad, label %bb.h

bb.h:                                             ; preds = %bb.g
  %.not.i.i = icmp ugt i32 %2, %i.j
  br i1 %.not.i.i, label %bb.i, label %validate_offset.exit.i.i.i, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr i8, ptr %0, i64 48
  %i.n = load i32, ptr %i.m, align 8
  %.not12.i.i = icmp ugt i32 %2, %i.n
  br i1 %.not12.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr i8, ptr %0, i64 20
  %i.p = load i32, ptr %i.o, align 4
  %i.q = and i32 %i.p, 1
  %.not13.i.i = icmp eq i32 %i.q, 0
  br i1 %.not13.i.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr i8, ptr %0, i64 44
  %i.s = load i32, ptr %i.r, align 4
  %.not14.i.i = icmp ugt i32 %2, %i.s
  %..i.i = select i1 %.not14.i.i, i64 3, i64 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i, %bb.j
  %.0.i8.i.ph = phi i64 [ 4, %bb.j ], [ 1, %bb.i ], [ %..i.i, %bb.k ]
  tail call void @except_throw(i64 noundef 1, i64 noundef %.0.i8.i.ph, ptr noundef null) #18
  unreachable

validate_offset.exit.i.i.i:                       ; preds = %bb.h
  %4 = sub nuw i32 %i.j, %2                       ; 3 uses
  %5 = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %2, i32 %4) ; 2 uses
  %6 = extractvalue { i32, i1 } %5, 1
  br i1 %6, label %ensure_contiguous_unsigned_no_exception.exit.i, label %7

7:                                                ; preds = %validate_offset.exit.i.i.i
  %8 = extractvalue { i32, i1 } %5, 0             ; 3 uses
  %.not.i9.i.i.i = icmp ugt i32 %8, %i.j
  br i1 %.not.i9.i.i.i, label %9, label %validate_offset_length_no_exception.exit.i.i, !prof !14

9:                                                ; preds = %7
  %10 = getelementptr i8, ptr %0, i64 48
  %11 = load i32, ptr %10, align 8
  %.not12.i11.i.i.i = icmp ugt i32 %8, %11
  br i1 %.not12.i11.i.i.i, label %bb.m, label %ensure_contiguous_unsigned_no_exception.exit.i

bb.m:                                             ; preds = %9
  %12 = getelementptr i8, ptr %0, i64 20
  %13 = load i32, ptr %12, align 4
  %14 = and i32 %13, 1
  %.not13.i12.i.i.i = icmp eq i32 %14, 0
  br i1 %.not13.i12.i.i.i, label %validate_offset.exit15.sink.split.i.i.i, label %ensure_contiguous_unsigned_no_exception.exit.i

validate_offset.exit15.sink.split.i.i.i:          ; preds = %bb.m
  %15 = getelementptr i8, ptr %0, i64 44
  %16 = load i32, ptr %15, align 4
  %.not14.i.i.i.i = icmp ugt i32 %8, %16
  %..i.i.i.i = select i1 %.not14.i.i.i.i, i32 3, i32 2
  br label %ensure_contiguous_unsigned_no_exception.exit.i

validate_offset_length_no_exception.exit.i.i:     ; preds = %7
  %17 = icmp eq i32 %i.j, %2
  br i1 %17, label %validate_offset_length_no_exception.exit.i.i36, label %bb.n

bb.n:                                             ; preds = %validate_offset_length_no_exception.exit.i.i
  %i.t = getelementptr i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %.not21.i.i = icmp eq ptr %i.u, null
  br i1 %.not21.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.v = zext i32 %2 to i64
  %i.w = getelementptr i8, ptr %i.u, i64 %i.v
  br label %ensure_contiguous_unsigned_no_exception.exit.i

bb.p:                                             ; preds = %bb.n
  %i.x = getelementptr i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = getelementptr i8, ptr %i.y, i64 24
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not22.i.i = icmp eq ptr %i.aa, null
  br i1 %.not22.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = tail call ptr %i.aa(ptr noundef nonnull %0, i32 noundef %2, i32 noundef %4), !inline_history !2
  br label %ensure_contiguous_unsigned_no_exception.exit.i

bb.r:                                             ; preds = %bb.p
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 926) #18
  unreachable

ensure_contiguous_unsigned_no_exception.exit.i:   ; preds = %bb.q, %bb.o, %validate_offset.exit15.sink.split.i.i.i, %bb.m, %9, %validate_offset.exit.i.i.i
  %.0.i = phi i32 [ 0, %bb.o ], [ 1, %validate_offset.exit.i.i.i ], [ 0, %bb.q ], [ %..i.i.i.i, %validate_offset.exit15.sink.split.i.i.i ], [ 4, %bb.m ], [ 1, %9 ] ; 2 uses
  %.0.i.i = phi ptr [ %i.w, %bb.o ], [ null, %validate_offset.exit.i.i.i ], [ %i.ab, %bb.q ], [ null, %validate_offset.exit15.sink.split.i.i.i ], [ null, %bb.m ], [ null, %9 ] ; 2 uses
  %i.ac = icmp eq ptr %.0.i.i, null
  %18 = icmp ne i32 %i.j, %2
  %or.cond.i = and i1 %18, %i.ac
  br i1 %or.cond.i, label %bb.s, label %ensure_contiguous_unsigned.exit

bb.s:                                             ; preds = %ensure_contiguous_unsigned_no_exception.exit.i
  %.not.i = icmp eq i32 %.0.i, 0
  br i1 %.not.i, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 938, ptr noundef @.str.41) #18
  unreachable

bb.u:                                             ; preds = %bb.s
  %19 = zext nneg i32 %.0.i to i64
  tail call void @except_throw(i64 noundef 1, i64 noundef %19, ptr noundef null) #18
  unreachable

ensure_contiguous_unsigned.exit:                  ; preds = %ensure_contiguous_unsigned_no_exception.exit.i
  %.pre = load i32, ptr %i.a, align 8
  %i.ad = icmp ugt i32 %i.b, %.pre
  %i.ae = zext i32 %4 to i64
  br i1 %i.ad, label %bb.v, label %validate_offset_length_no_exception.exit.i.i36, !prof !76

bb.v:                                             ; preds = %ensure_contiguous_unsigned.exit
  %i.af = getelementptr i8, ptr %1, i64 48
  %i.ag = load i32, ptr %i.af, align 8
  %.not12.i11.i.i.i45 = icmp ugt i32 %i.b, %i.ag
  br i1 %.not12.i11.i.i.i45, label %bb.w, label %bb.aa

bb.w:                                             ; preds = %bb.v
  %i.ah = getelementptr i8, ptr %1, i64 20
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = and i32 %i.ai, 1
  %.not13.i12.i.i.i46 = icmp eq i32 %i.aj, 0
  br i1 %.not13.i12.i.i.i46, label %validate_offset.exit15.sink.split.i.i.i47, label %bb.aa

validate_offset.exit15.sink.split.i.i.i47:        ; preds = %bb.w
  %i.ak = getelementptr i8, ptr %1, i64 44
  %i.al = load i32, ptr %i.ak, align 4
  %.not14.i.i.i.i49 = icmp ugt i32 %i.b, %i.al
  %..i.i.i.i50 = select i1 %.not14.i.i.i.i49, i64 3, i64 2
  br label %bb.aa

validate_offset_length_no_exception.exit.i.i36:   ; preds = %validate_offset_length_no_exception.exit.i.i, %ensure_contiguous_unsigned.exit
  %.0.i9.i89 = phi ptr [ %.0.i.i, %ensure_contiguous_unsigned.exit ], [ null, %validate_offset_length_no_exception.exit.i.i ] ; 2 uses
  %.0556088 = phi i64 [ %i.ae, %ensure_contiguous_unsigned.exit ], [ 0, %validate_offset_length_no_exception.exit.i.i ]
  %i.am = getelementptr i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not21.i.i37 = icmp eq ptr %i.an, null
  br i1 %.not21.i.i37, label %bb.x, label %ensure_contiguous_unsigned.exit53

bb.x:                                             ; preds = %validate_offset_length_no_exception.exit.i.i36
  %i.ao = getelementptr i8, ptr %1, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr i8, ptr %i.ap, i64 24
  %i.ar = load ptr, ptr %i.aq, align 8            ; 2 uses
  %.not22.i.i44 = icmp eq ptr %i.ar, null
  br i1 %.not22.i.i44, label %bb.y, label %ensure_contiguous_unsigned_no_exception.exit.i38

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 926) #18
  unreachable

ensure_contiguous_unsigned_no_exception.exit.i38: ; preds = %bb.x
  %i.as = tail call ptr %i.ar(ptr noundef nonnull %1, i32 noundef 0, i32 noundef %i.b), !inline_history !2 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.z, label %ensure_contiguous_unsigned.exit53

bb.z:                                             ; preds = %ensure_contiguous_unsigned_no_exception.exit.i38
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str, ptr noundef @.str.1, i32 noundef 938, ptr noundef @.str.41) #18
  unreachable

bb.aa:                                            ; preds = %bb.w, %validate_offset.exit15.sink.split.i.i.i47, %bb.v
  %.0.i39.ph = phi i64 [ 4, %bb.w ], [ %..i.i.i.i50, %validate_offset.exit15.sink.split.i.i.i47 ], [ 1, %bb.v ]
  tail call void @except_throw(i64 noundef 1, i64 noundef %.0.i39.ph, ptr noundef null) #18
  unreachable

ensure_contiguous_unsigned.exit53:                ; preds = %validate_offset_length_no_exception.exit.i.i36, %ensure_contiguous_unsigned_no_exception.exit.i38
  %.0.i.i4068 = phi ptr [ %i.as, %ensure_contiguous_unsigned_no_exception.exit.i38 ], [ %i.an, %validate_offset_length_no_exception.exit.i.i36 ]
  %i.au = zext i32 %i.b to i64
  %i.av = tail call ptr @ws_memmem(ptr noundef %.0.i9.i89, i64 noundef %.0556088, ptr noundef nonnull %.0.i.i4068, i64 noundef %i.au) ; 2 uses
  %.not31 = icmp eq ptr %i.av, null
  br i1 %.not31, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %ensure_contiguous_unsigned.exit53
  %.not32 = icmp eq ptr %3, null
  br i1 %.not32, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.aw = ptrtoint ptr %i.av to i64
  %i.ax = ptrtoint ptr %.0.i9.i89 to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = trunc i64 %i.ay to i32
  %i.ba = add i32 %2, %i.az
  store i32 %i.ba, ptr %3, align 4
  br label %bb.ad

bb.ad:                                            ; preds = %ensure_contiguous_unsigned.exit53, %bb.ab, %bb.ac, %bb.g
  %.0 = phi i1 [ true, %bb.ab ], [ false, %bb.g ], [ false, %ensure_contiguous_unsigned.exit53 ], [ true, %bb.ac ]
  ret i1 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define i32 @tvb_raw_offset(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20         ; 3 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = and i32 %i.b, 2
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr i8, ptr %0, i64 52
  %.pre = load i32, ptr %.phi.trans.insert, align 4
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i, label %bb.c, label %tvb_offset_from_real_beginning.exit

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef @.str.7, ptr noundef @.str.1, i32 noundef 886) #18
  unreachable

tvb_offset_from_real_beginning.exit:              ; preds = %bb.b
  %i.h = tail call i32 %i.g(ptr noundef %0, i32 noundef 0), !inline_history !77 ; 2 uses
  %i.i = getelementptr i8, ptr %0, i64 52
  store i32 %i.h, ptr %i.i, align 4
  %i.j = load i32, ptr %i.a, align 4
  %i.k = or i32 %i.j, 2
  store i32 %i.k, ptr %i.a, align 4
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge, %tvb_offset_from_real_beginning.exit
  %i.l = phi i32 [ %.pre, %._crit_edge ], [ %i.h, %tvb_offset_from_real_beginning.exit ]
  ret i32 %i.l
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable
define void @tvb_set_fragment(ptr nofree noundef captures(none) %0) local_unnamed_addr #11 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 20         ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = or i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define ptr @tvb_get_ds_tvb(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #14 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define range(i32 0, 11) i32 @tvb_get_varint(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(none) initializes((0, 8)) %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  store i64 0, ptr %3, align 8
  %i.a = and i32 %4, 30                           ; 2 uses
  %i.b = tail call range(i32 0, 5) i32 @llvm.ctpop.i32(i32 %i.a)
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %.split, label %bb.k

.split:                                           ; preds = %bb.a
  %i.d = tail call range(i32 1, 33) i32 @llvm.cttz.i32(i32 %i.a, i1 true)
  switch i32 %i.d, label %default.unreachable74 [
    i32 1, label %.preheader
    i32 3, label %.preheader85
    i32 4, label %.preheader87
    i32 2, label %bb.f
  ]

.preheader87:                                     ; preds = %.split
  %invariant.umin = tail call i32 @llvm.umin.i32(i32 %2, i32 10)
  %.not = icmp eq i32 %2, 0
  br i1 %.not, label %.thread71, label %.lr.ph

.preheader85:                                     ; preds = %.split
  %.not103 = icmp eq i32 %2, 0
  br i1 %.not103, label %.thread71, label %.lr.ph98.preheader

.lr.ph98.preheader:                               ; preds = %.preheader85
  %invariant.umin95 = tail call i32 @llvm.umin.i32(i32 %2, i32 10)
  %wide.trip.count = zext nneg i32 %invariant.umin95 to i64
  br label %.lr.ph98

.preheader:                                       ; preds = %.split
  %.not104 = icmp eq i32 %2, 0
  br i1 %.not104, label %.thread71, label %.lr.ph102.preheader

.lr.ph102.preheader:                              ; preds = %.preheader
  %invariant.umin99 = tail call i32 @llvm.umin.i32(i32 %2, i32 10)
  %wide.trip.count116 = zext nneg i32 %invariant.umin99 to i64
  br label %.lr.ph102

.lr.ph102:                                        ; preds = %.lr.ph102.preheader, %bb.b
  %indvars.iv113 = phi i64 [ 0, %.lr.ph102.preheader ], [ %indvars.iv.next114, %bb.b ] ; 3 uses
  %.063100 = phi i32 [ %1, %.lr.ph102.preheader ], [ %i.p, %bb.b ] ; 2 uses
  %i.e = tail call fastcc ptr @fast_ensure_contiguous(ptr noundef %0, i32 noundef %.063100, i32 noundef 1)
  %i.f = load i8, ptr %i.e, align 1               ; 2 uses
  %i.g = and i8 %i.f, 127
  %i.h = zext nneg i8 %i.g to i64
  %i.i = mul nuw nsw i64 %indvars.iv113, 7
  %i.j = shl i64 %i.h, %i.i
  %i.k = load i64, ptr %3, align 8
  %i.l = or i64 %i.j, %i.k
  store i64 %i.l, ptr %3, align 8
  %i.m = icmp sgt i8 %i.f, -1
  br i1 %i.m, label %.thread, label %bb.b

.thread:                                          ; preds = %.lr.ph102
  %i.n = trunc nuw nsw i64 %indvars.iv113 to i32
  %i.o = add nuw nsw i32 %i.n, 1
  br label %.thread71

bb.b:                                             ; preds = %.lr.ph102
  %i.p = add i32 %.063100, 1
  %indvars.iv.next114 = add nuw nsw i64 %indvars.iv113, 1 ; 2 uses
  %exitcond117.not = icmp eq i64 %indvars.iv.next114, %wide.trip.count116
  br i1 %exitcond117.not, label %.thread71, label %.lr.ph102, !llvm.loop !78

.lr.ph98:                                         ; preds = %.lr.ph98.preheader, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph98.preheader ], [ %indvars.iv.next, %bb.c ] ; 3 uses
  %.16496 = phi i32 [ %1, %.lr.ph98.preheader ], [ %i.af, %bb.c ] ; 2 uses
  %i.q = tail call fastcc ptr @fast_ensure_contiguous(ptr noundef %0, i32 noundef %.16496, i32 noundef 1)
  %i.r = load i8, ptr %i.q, align 1               ; 2 uses
  %i.s = and i8 %i.r, 127
  %i.t = zext nneg i8 %i.s to i64
  %i.u = mul nuw nsw i64 %indvars.iv, 7
  %i.v = shl i64 %i.t, %i.u
  %i.w = load i64, ptr %3, align 8
  %i.x = or i64 %i.v, %i.w                        ; 3 uses
  store i64 %i.x, ptr %3, align 8
  %i.y = icmp sgt i8 %i.r, -1
  br i1 %i.y, label %.thread68, label %bb.c

.thread68:                                        ; preds = %.lr.ph98
  %i.z = trunc nuw nsw i64 %indvars.iv to i32
  %i.aa = lshr i64 %i.x, 1
end_hunk_1
begin_hunk_2_@check_offset_length_no_exception:bb.a
  %.0 = phi i32 [ 1, %bb.q ], [ %..i28, %bb.u ], [ 1, %compute_offset.exit ], [ 4, %bb.t ], [ 0, %bb.r ], [ 1, %bb.s ], [ 4, %bb.l ], [ 1, %bb.k ], [ %.40.i, %bb.m ], [ %..i, %bb.i ], [ 1, %bb.g ], [ 4, %bb.h ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_real_data(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: null_pointer_is_valid
declare ptr @ws_mempbrk_exec(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @get_ascii_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @get_utf_8_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @get_utf_16_string(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @get_ucs_2_string(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @get_ucs_4_string(ptr noundef, ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @get_8859_1_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @get_unichar2_string(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @get_iso_646_string(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @get_nonascii_unichar2_string(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @get_t61_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @get_gb18030_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @get_euc_kr_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_new_sized(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append_c(ptr noundef, i8 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append_unichar(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_finalize(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @get_dect_standard_8bits_string(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @ws_mempbrk_compile(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.usub.sat.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #6

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #17 = { allocsize(0) }
attributes #18 = { noreturn }
attributes #19 = { nounwind }
attributes #20 = { allocsize(1) }
attributes #21 = { nounwind willreturn memory(none) }
attributes #22 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = distinct !{!0, !13}
!1 = distinct !{!1, !13}
!2 = distinct !{null, null}
!3 = distinct !{!3, !13}
!4 = distinct !{!4, !13}
!5 = distinct !{!5, !13}
!6 = distinct !{null}
!7 = !{i32 8, !"cf-protection-return", i32 1}
!8 = !{i32 8, !"cf-protection-branch", i32 1}
!9 = !{i32 4, !"probe-stack", !"inline-asm"}
!10 = !{i32 8, !"PIC Level", i32 2}
!11 = !{i32 7, !"uwtable", i32 2}
!12 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!15 = !{i8 0, i8 2}
!16 = !{}
!17 = !{!"llvm.loop.isvectorized", i32 1}
!18 = !{!"llvm.loop.unroll.runtime.disable"}
!19 = !{!"branch_weights", i32 4, i32 12}
!20 = !{!"branch_weights", i32 2002, i32 2000}
!21 = distinct !{ptr @tvb_free_chain, null}
!22 = distinct !{null}
!23 = distinct !{!23, !13, !17, !18}
!24 = distinct !{!24, !13, !18, !17}
!25 = distinct !{!25, !13, !17, !18}
!26 = distinct !{!26, !13, !17, !18}
!27 = distinct !{!27, !13, !18, !17}
!28 = distinct !{!28, !13, !17, !18}
!29 = distinct !{!29, !13, !17, !18}
!30 = distinct !{!30, !13, !18, !17}
!31 = !{ptr @tvb_offset_from_real_beginning_counter}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = distinct !{!37, !13}
!38 = distinct !{!38, !13}
!39 = distinct !{null, null, null}
!40 = distinct !{null, null, null}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{null, null, null}
!44 = distinct !{null, null, null}
!45 = distinct !{null, null, null}
!46 = distinct !{null, null, null}
!47 = distinct !{null, null, null}
!48 = distinct !{null, null, null}
!49 = distinct !{null, null, null}
!50 = distinct !{null, null, null}
!51 = distinct !{null, null, null}
!52 = distinct !{null, null, null}
!53 = distinct !{null, null, null}
!54 = distinct !{!54, !13}
!55 = distinct !{null, null, null}
!56 = distinct !{!56, !13, !58}
!57 = distinct !{!57, !13, !58}
!58 = !{!"llvm.loop.peeled.count", i32 1}
!59 = distinct !{null, null, null}
!60 = distinct !{null, null, null}
!61 = distinct !{null, null, null}
!62 = distinct !{null, null, null}
!63 = distinct !{null, null, null}
!64 = distinct !{null, null, null}
!65 = distinct !{null, null, null}
!66 = distinct !{null, null, null}
!67 = distinct !{null, null, null}
!68 = distinct !{null, null, null}
!69 = distinct !{null, null, null}
!70 = distinct !{!70, !13}
!71 = distinct !{!71, !13}
!72 = distinct !{!72, !13}
!73 = distinct !{!73, !13}
!74 = distinct !{!74, !13}
!75 = distinct !{null, null}
!76 = !{!"branch_weights", !"expected", i32 1320715, i32 2146162933}
!77 = !{ptr @tvb_offset_from_real_beginning, ptr @tvb_offset_from_real_beginning_counter}
!78 = distinct !{!78, !13}
!79 = distinct !{!79, !13}
!80 = distinct !{!80, !13}
end_hunk_2
