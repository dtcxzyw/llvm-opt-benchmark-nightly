inline.NumInlined: 297
inline.NumDeleted: 61
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@tvb_new_chain:bb.a
bb.c:                                             ; preds = %bb.a
  %.not11.i = icmp eq ptr %i.a, null
  br i1 %.not11.i, label %bb.d, label %.preheader.preheader.i

.preheader.preheader.i:                           ; preds = %bb.c
  %.pre.i = load ptr, ptr %0, align 8
  br label %.preheader.i

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 146, ptr noundef nonnull @.str.4) #18
  unreachable

.preheader.i:                                     ; preds = %.preheader.i, %.preheader.preheader.i
  %i.b = phi ptr [ %.013.i, %.preheader.i ], [ %.pre.i, %.preheader.preheader.i ]
  %.013.i = phi ptr [ %i.c, %.preheader.i ], [ %i.a, %.preheader.preheader.i ] ; 4 uses
  %i.c = load ptr, ptr %.013.i, align 8           ; 2 uses
  store ptr %i.b, ptr %.013.i, align 8
  store ptr %.013.i, ptr %0, align 8
  %.not12.i = icmp eq ptr %i.c, null
  br i1 %.not12.i, label %tvb_add_to_chain.exit, label %.preheader.i, !llvm.loop !10

tvb_add_to_chain.exit:                            ; preds = %.preheader.i
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_proxy(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @tvb_add_to_chain(ptr nofree noundef captures(address_is_null) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 145, ptr noundef nonnull @.str.3) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not11 = icmp eq ptr %1, null
  br i1 %.not11, label %bb.d, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.c
  %.pre = load ptr, ptr %0, align 8
  br label %.preheader

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 146, ptr noundef nonnull @.str.4) #18
  unreachable

.preheader:                                       ; preds = %.preheader.preheader, %.preheader
  %i.a = phi ptr [ %.013, %.preheader ], [ %.pre, %.preheader.preheader ]
  %.013 = phi ptr [ %i.b, %.preheader ], [ %1, %.preheader.preheader ] ; 4 uses
  %i.b = load ptr, ptr %.013, align 8             ; 2 uses
  store ptr %i.a, ptr %.013, align 8
  store ptr %.013, ptr %0, align 8
  %.not12 = icmp eq ptr %i.b, null
  br i1 %.not12, label %bb.e, label %.preheader, !llvm.loop !10

bb.e:                                             ; preds = %.preheader
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @tvb_validate_offset_length(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not.i.i.i = icmp ugt i32 %1, %i.b
  br i1 %.not.i.i.i, label %bb.b, label %validate_offset.exit.i.i, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8
  %.not12.i.i.i = icmp ugt i32 %1, %i.d
  br i1 %.not12.i.i.i, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 1
  %.not13.i.i.i = icmp eq i32 %i.g, 0
  br i1 %.not13.i.i.i, label %validate_offset.exit15.sink.split.i.i, label %bb.g

validate_offset.exit.i.i:                         ; preds = %bb.a
  %i.h = tail call { i32, i1 } @llvm.uadd.with.overflow.i32(i32 %1, i32 %2) ; 2 uses
  %i.i = extractvalue { i32, i1 } %i.h, 1
  br i1 %i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %validate_offset.exit.i.i
  %i.j = extractvalue { i32, i1 } %i.h, 0         ; 3 uses
  %.not.i9.i.i = icmp ugt i32 %i.j, %i.b
  br i1 %.not.i9.i.i, label %bb.e, label %validate_offset_length.exit, !prof !11

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %0, i64 48
  %i.l = load i32, ptr %i.k, align 8
  %.not12.i11.i.i = icmp ugt i32 %i.j, %i.l
  br i1 %.not12.i11.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr i8, ptr %0, i64 20
  %i.n = load i32, ptr %i.m, align 4
  %i.o = and i32 %i.n, 1
  %.not13.i12.i.i = icmp eq i32 %i.o, 0
  br i1 %.not13.i12.i.i, label %validate_offset.exit15.sink.split.i.i, label %bb.g

validate_offset.exit15.sink.split.i.i:            ; preds = %bb.f, %bb.c
  %.sink.i.i = phi i32 [ %1, %bb.c ], [ %i.j, %bb.f ]
  %i.p = getelementptr i8, ptr %0, i64 44
  %i.q = load i32, ptr %i.p, align 4
  %.not14.i.i.i = icmp ugt i32 %.sink.i.i, %i.q
  %..i.i.i = select i1 %.not14.i.i.i, i64 3, i64 2
  br label %bb.g

bb.g:                                             ; preds = %validate_offset.exit15.sink.split.i.i, %bb.f, %bb.e, %validate_offset.exit.i.i, %bb.c, %bb.b
  %.0.i.ph.i = phi i64 [ %..i.i.i, %validate_offset.exit15.sink.split.i.i ], [ 4, %bb.c ], [ 1, %bb.e ], [ 4, %bb.f ], [ 1, %bb.b ], [ 1, %validate_offset.exit.i.i ]
  tail call void @except_throw(i64 noundef 1, i64 noundef %.0.i.ph.i, ptr noundef null) #18
  unreachable

validate_offset_length.exit:                      ; preds = %bb.d
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @tvb_validate_offset_and_remaining(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not.i.i = icmp ugt i32 %1, %i.b
  br i1 %.not.i.i, label %bb.b, label %bb.f, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 48
  %i.d = load i32, ptr %i.c, align 8
  %.not12.i.i = icmp ugt i32 %1, %i.d
  br i1 %.not12.i.i, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 20
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, 1
  %.not13.i.i = icmp eq i32 %i.g, 0
  br i1 %.not13.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %0, i64 44
  %i.i = load i32, ptr %i.h, align 4
  %.not14.i.i = icmp ugt i32 %1, %i.i
  %..i.i = select i1 %.not14.i.i, i64 3, i64 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b, %bb.c
  %.0.i8.i.ph = phi i64 [ 4, %bb.c ], [ 1, %bb.b ], [ %..i.i, %bb.d ]
  tail call void @except_throw(i64 noundef 1, i64 noundef %.0.i8.i.ph, ptr noundef null) #18
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.j = sub nuw i32 %i.b, %1
  store i32 %i.j, ptr %2, align 4
  ret void
}

; Function Attrs: noreturn null_pointer_is_valid
declare void @except_throw(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @tvb_check_offset_length(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @check_offset_length_no_exception(ptr noundef readonly %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %check_offset_length.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext nneg i32 %i.a to i64
  tail call void @except_throw(i64 noundef 1, i64 noundef %i.b, ptr noundef null) #18
  unreachable

check_offset_length.exit:                         ; preds = %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @tvb_new_octet_aligned(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 476, ptr noundef nonnull @.str.5) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = lshr i32 %1, 3                           ; 14 uses
  %i.e = and i32 %1, 7                            ; 9 uses
  %i.f = trunc nuw nsw i32 %i.e to i8
  %i.g = sub nuw nsw i8 8, %i.f                   ; 2 uses
  %i.h = lshr i32 %2, 3
  %i.i = trunc i32 %2 to i8
  %i.j = and i8 %i.i, 7                           ; 2 uses
  %.not72 = icmp ne i8 %i.j, 0
  %i.k = zext i1 %.not72 to i32
  %spec.select = add nuw nsw i32 %i.h, %i.k       ; 13 uses
  %i.l = or i32 %2, %1
  %i.m = and i32 %i.l, 7
  %or.cond = icmp eq i32 %i.m, 0
  %i.n = icmp eq i32 %spec.select, 0
  %or.cond4 = select i1 %or.cond, i1 true, i1 %i.n
  br i1 %or.cond4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.o = tail call ptr @tvb_new_subset_length_caplen(ptr noundef nonnull %0, i32 noundef %i.d, i32 noundef %spec.select, i32 noundef %spec.select)
  br label %bb.ac

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr i8, ptr %0, i64 40
  %i.q = load i32, ptr %i.p, align 8              ; 5 uses
  %i.r = tail call i32 @llvm.usub.sat.i32(i32 %i.q, i32 %i.d)
  %i.s = icmp ugt i32 %i.r, %spec.select
  br i1 %i.s, label %bb.g, label %bb.r

bb.g:                                             ; preds = %bb.f
  %i.t = add nuw nsw i32 %spec.select, 1          ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.d, %i.q
  br i1 %.not.i.i.i.i, label %bb.h, label %validate_offset.exit.i.i.i, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr %0, i64 48
  %i.v = load i32, ptr %i.u, align 8
  %.not12.i.i.i.i = icmp ugt i32 %i.d, %i.v
  br i1 %.not12.i.i.i.i, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %0, i64 20
  %i.x = load i32, ptr %i.w, align 4
  %i.y = and i32 %i.x, 1
  %.not13.i.i.i.i = icmp eq i32 %i.y, 0
  br i1 %.not13.i.i.i.i, label %validate_offset.exit15.sink.split.i.i.i, label %bb.q

validate_offset.exit.i.i.i:                       ; preds = %bb.g
  %i.z = add nuw nsw i32 %i.t, %i.d               ; 3 uses
  %.not.i9.i.i.i = icmp ugt i32 %i.z, %i.q
  br i1 %.not.i9.i.i.i, label %bb.j, label %validate_offset_length_no_exception.exit.i.i, !prof !11

bb.j:                                             ; preds = %validate_offset.exit.i.i.i
  %i.aa = getelementptr i8, ptr %0, i64 48
  %i.ab = load i32, ptr %i.aa, align 8
  %.not12.i11.i.i.i = icmp ugt i32 %i.z, %i.ab
  br i1 %.not12.i11.i.i.i, label %bb.k, label %bb.q

bb.k:                                             ; preds = %bb.j
  %i.ac = getelementptr i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = and i32 %i.ad, 1
  %.not13.i12.i.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not13.i12.i.i.i, label %validate_offset.exit15.sink.split.i.i.i, label %bb.q

validate_offset.exit15.sink.split.i.i.i:          ; preds = %bb.k, %bb.i
  %.sink.i.i.i = phi i32 [ %i.d, %bb.i ], [ %i.z, %bb.k ]
  %i.af = getelementptr i8, ptr %0, i64 44
  %i.ag = load i32, ptr %i.af, align 4
  %.not14.i.i.i.i = icmp ugt i32 %.sink.i.i.i, %i.ag
  %..i.i.i.i = select i1 %.not14.i.i.i.i, i64 3, i64 2
  br label %bb.q

validate_offset_length_no_exception.exit.i.i:     ; preds = %validate_offset.exit.i.i.i
  %i.ah = getelementptr i8, ptr %0, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not21.i.i = icmp eq ptr %i.ai, null
  br i1 %.not21.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %validate_offset_length_no_exception.exit.i.i
  %i.aj = zext nneg i32 %i.d to i64
  %i.ak = getelementptr i8, ptr %i.ai, i64 %i.aj
  br label %ensure_contiguous_unsigned_no_exception.exit.i

bb.m:                                             ; preds = %validate_offset_length_no_exception.exit.i.i
  %i.al = getelementptr i8, ptr %0, i64 8
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr i8, ptr %i.am, i64 24
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not22.i.i = icmp eq ptr %i.ao, null
  br i1 %.not22.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = tail call ptr %i.ao(ptr noundef nonnull %0, i32 noundef %i.d, i32 noundef %i.t), !inline_history !14
  br label %ensure_contiguous_unsigned_no_exception.exit.i

bb.o:                                             ; preds = %bb.m
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 926) #18
  unreachable

ensure_contiguous_unsigned_no_exception.exit.i:   ; preds = %bb.n, %bb.l
  %.0.i.i = phi ptr [ %i.ak, %bb.l ], [ %i.ap, %bb.n ] ; 5 uses
  %.0.i.i143 = ptrtoaddr ptr %.0.i.i to i64
  %i.aq = icmp eq ptr %.0.i.i, null
  br i1 %i.aq, label %bb.p, label %.lr.ph99

bb.p:                                             ; preds = %ensure_contiguous_unsigned_no_exception.exit.i
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 938, ptr noundef nonnull @.str.41) #18
  unreachable

bb.q:                                             ; preds = %bb.h, %bb.k, %bb.j, %bb.i, %validate_offset.exit15.sink.split.i.i.i
  %.0.i.ph = phi i64 [ 1, %bb.h ], [ 4, %bb.k ], [ 1, %bb.j ], [ 4, %bb.i ], [ %..i.i.i.i, %validate_offset.exit15.sink.split.i.i.i ]
  tail call void @except_throw(i64 noundef 1, i64 noundef %.0.i.ph, ptr noundef null) #18
  unreachable

.lr.ph99:                                         ; preds = %ensure_contiguous_unsigned_no_exception.exit.i
  %i.ar = zext nneg i32 %spec.select to i64       ; 6 uses
  %i.as = tail call noalias ptr @g_malloc(i64 noundef %i.ar) #17 ; 5 uses
  %i.at = zext nneg i8 %i.g to i32                ; 2 uses
  %.pre = load i8, ptr %.0.i.i, align 1           ; 3 uses
  %min.iters.check144 = icmp samesign ult i32 %spec.select, 16
  br i1 %min.iters.check144, label %scalar.ph.preheader, label %vector.memcheck142

vector.memcheck142:                               ; preds = %.lr.ph99
  %i.au = ptrtoaddr ptr %i.as to i64
  %i.av = sub i64 %i.au, %.0.i.i143
  %i.aw = add i64 %i.av, -2
  %diff.check = icmp ult i64 %i.aw, 15
  br i1 %diff.check, label %scalar.ph.preheader, label %vector.ph145

vector.ph145:                                     ; preds = %vector.memcheck142
  %n.vec146 = and i64 %i.ar, 1073741808           ; 3 uses
  %broadcast.splatinsert147 = insertelement <16 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat148 = shufflevector <16 x i32> %broadcast.splatinsert147, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert149 = insertelement <16 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat150 = shufflevector <16 x i32> %broadcast.splatinsert149, <16 x i32> poison, <16 x i32> zeroinitializer
  %vector.recur.init = insertelement <16 x i8> poison, i8 %.pre, i64 15
  br label %vector.body151

vector.body151:                                   ; preds = %vector.body151, %vector.ph145
  %index152 = phi i64 [ 0, %vector.ph145 ], [ %index.next154, %vector.body151 ] ; 3 uses
  %vector.recur = phi <16 x i8> [ %vector.recur.init, %vector.ph145 ], [ %wide.load153, %vector.body151 ]
  %i.ax = getelementptr i8, ptr %.0.i.i, i64 %index152
  %i.ay = getelementptr i8, ptr %i.ax, i64 1
  %wide.load153 = load <16 x i8>, ptr %i.ay, align 1 ; 4 uses
  %i.az = shufflevector <16 x i8> %vector.recur, <16 x i8> %wide.load153, <16 x i32> <i32 15, i32 16, i32 17, i32 18, i32 19, i32 20, i32 21, i32 22, i32 23, i32 24, i32 25, i32 26, i32 27, i32 28, i32 29, i32 30>
  %i.ba = zext <16 x i8> %i.az to <16 x i32>
  %i.bb = shl nuw nsw <16 x i32> %i.ba, %broadcast.splat150
  %i.bc = zext <16 x i8> %wide.load153 to <16 x i32>
  %i.bd = lshr <16 x i32> %i.bc, %broadcast.splat148
  %i.be = or <16 x i32> %i.bd, %i.bb
  %i.bf = trunc <16 x i32> %i.be to <16 x i8>
  %i.bg = getelementptr i8, ptr %i.as, i64 %index152
  store <16 x i8> %i.bf, ptr %i.bg, align 1
  %index.next154 = add nuw i64 %index152, 16      ; 2 uses
  %i.bh = icmp eq i64 %index.next154, %n.vec146
  br i1 %i.bh, label %middle.block155, label %vector.body151, !llvm.loop !15

middle.block155:                                  ; preds = %vector.body151
  %vector.recur.extract = extractelement <16 x i8> %wide.load153, i64 15
  %cmp.n156 = icmp eq i64 %n.vec146, %i.ar
  br i1 %cmp.n156, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck142, %.lr.ph99, %middle.block155
  %.ph = phi i8 [ %.pre, %vector.memcheck142 ], [ %.pre, %.lr.ph99 ], [ %vector.recur.extract, %middle.block155 ]
  %indvars.iv103.ph = phi i64 [ 0, %vector.memcheck142 ], [ 0, %.lr.ph99 ], [ %n.vec146, %middle.block155 ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %i.bi = phi i8 [ %i.bm, %scalar.ph ], [ %.ph, %scalar.ph.preheader ]
  %indvars.iv103 = phi i64 [ %indvars.iv.next104.1, %scalar.ph ], [ %indvars.iv103.ph, %scalar.ph.preheader ] ; 2 uses
  %i.bj = zext i8 %i.bi to i32
  %i.bk = shl nuw nsw i32 %i.bj, %i.e
  %indvars.iv.next104.1 = add nuw nsw i64 %indvars.iv103, 1 ; 3 uses
  %i.bl = getelementptr i8, ptr %.0.i.i, i64 %indvars.iv.next104.1
  %i.bm = load i8, ptr %i.bl, align 1             ; 2 uses
  %i.bn = zext i8 %i.bm to i32
  %i.bo = lshr i32 %i.bn, %i.at
  %i.bp = or i32 %i.bo, %i.bk
  %i.bq = trunc i32 %i.bp to i8
  %i.br = getelementptr i8, ptr %i.as, i64 %indvars.iv103
  store i8 %i.bq, ptr %i.br, align 1
  %exitcond107.not.1 = icmp eq i64 %indvars.iv.next104.1, %i.ar
  br i1 %exitcond107.not.1, label %.loopexit, label %scalar.ph, !llvm.loop !18

bb.r:                                             ; preds = %bb.f
  %.not.i.i.i.i73 = icmp ugt i32 %i.d, %i.q
  br i1 %.not.i.i.i.i73, label %bb.s, label %validate_offset.exit.i.i.i74, !prof !11

bb.s:                                             ; preds = %bb.r
  %i.bs = getelementptr i8, ptr %0, i64 48
  %i.bt = load i32, ptr %i.bs, align 8
  %.not12.i.i.i.i89 = icmp ugt i32 %i.d, %i.bt
  br i1 %.not12.i.i.i.i89, label %bb.t, label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.bu = getelementptr i8, ptr %0, i64 20
  %i.bv = load i32, ptr %i.bu, align 4
  %i.bw = and i32 %i.bv, 1
  %.not13.i.i.i.i90 = icmp eq i32 %i.bw, 0
  br i1 %.not13.i.i.i.i90, label %validate_offset.exit15.sink.split.i.i.i85, label %bb.ab

validate_offset.exit.i.i.i74:                     ; preds = %bb.r
  %i.bx = add nuw nsw i32 %spec.select, %i.d      ; 3 uses
  %.not.i9.i.i.i75 = icmp ugt i32 %i.bx, %i.q
  br i1 %.not.i9.i.i.i75, label %bb.u, label %validate_offset_length_no_exception.exit.i.i76, !prof !11

bb.u:                                             ; preds = %validate_offset.exit.i.i.i74
  %i.by = getelementptr i8, ptr %0, i64 48
  %i.bz = load i32, ptr %i.by, align 8
  %.not12.i11.i.i.i83 = icmp ugt i32 %i.bx, %i.bz
  br i1 %.not12.i11.i.i.i83, label %bb.v, label %bb.ab

bb.v:                                             ; preds = %bb.u
  %i.ca = getelementptr i8, ptr %0, i64 20
  %i.cb = load i32, ptr %i.ca, align 4
  %i.cc = and i32 %i.cb, 1
  %.not13.i12.i.i.i84 = icmp eq i32 %i.cc, 0
  br i1 %.not13.i12.i.i.i84, label %validate_offset.exit15.sink.split.i.i.i85, label %bb.ab

validate_offset.exit15.sink.split.i.i.i85:        ; preds = %bb.v, %bb.t
  %.sink.i.i.i86 = phi i32 [ %i.d, %bb.t ], [ %i.bx, %bb.v ]
  %i.cd = getelementptr i8, ptr %0, i64 44
  %i.ce = load i32, ptr %i.cd, align 4
  %.not14.i.i.i.i87 = icmp ugt i32 %.sink.i.i.i86, %i.ce
  %..i.i.i.i88 = select i1 %.not14.i.i.i.i87, i64 3, i64 2
  br label %bb.ab

validate_offset_length_no_exception.exit.i.i76:   ; preds = %validate_offset.exit.i.i.i74
  %i.cf = getelementptr i8, ptr %0, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not21.i.i77 = icmp eq ptr %i.cg, null
  br i1 %.not21.i.i77, label %bb.x, label %bb.w

bb.w:                                             ; preds = %validate_offset_length_no_exception.exit.i.i76
  %i.ch = zext nneg i32 %i.d to i64
  %i.ci = getelementptr i8, ptr %i.cg, i64 %i.ch
  br label %ensure_contiguous_unsigned_no_exception.exit.i78

bb.x:                                             ; preds = %validate_offset_length_no_exception.exit.i.i76
  %i.cj = getelementptr i8, ptr %0, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = getelementptr i8, ptr %i.ck, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8            ; 2 uses
  %.not22.i.i82 = icmp eq ptr %i.cm, null
  br i1 %.not22.i.i82, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = tail call ptr %i.cm(ptr noundef nonnull %0, i32 noundef %i.d, i32 noundef %spec.select), !inline_history !14
  br label %ensure_contiguous_unsigned_no_exception.exit.i78

bb.z:                                             ; preds = %bb.x
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 926) #18
  unreachable

ensure_contiguous_unsigned_no_exception.exit.i78: ; preds = %bb.y, %bb.w
  %.0.i.i80 = phi ptr [ %i.ci, %bb.w ], [ %i.cn, %bb.y ] ; 14 uses
  %i.co = icmp eq ptr %.0.i.i80, null
  br i1 %i.co, label %bb.aa, label %ensure_contiguous_unsigned.exit91

bb.aa:                                            ; preds = %ensure_contiguous_unsigned_no_exception.exit.i78
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 938, ptr noundef nonnull @.str.41) #18
  unreachable

bb.ab:                                            ; preds = %bb.v, %bb.u, %bb.t, %validate_offset.exit15.sink.split.i.i.i85, %bb.s
  %.0.i79.ph = phi i64 [ 4, %bb.v ], [ 1, %bb.u ], [ 4, %bb.t ], [ %..i.i.i.i88, %validate_offset.exit15.sink.split.i.i.i85 ], [ 1, %bb.s ]
  tail call void @except_throw(i64 noundef 1, i64 noundef %.0.i79.ph, ptr noundef null) #18
  unreachable

ensure_contiguous_unsigned.exit91:                ; preds = %ensure_contiguous_unsigned_no_exception.exit.i78
  %i.cp = zext nneg i32 %spec.select to i64       ; 2 uses
  %i.cq = tail call noalias ptr @g_malloc(i64 noundef %i.cp) #17 ; 9 uses
  %i.cr = add nsw i32 %spec.select, -1            ; 4 uses
  %.not100 = icmp eq i32 %i.cr, 0
  br i1 %.not100, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %ensure_contiguous_unsigned.exit91
  %i.cs = zext nneg i8 %i.g to i32                ; 5 uses
  %wide.trip.count = zext i32 %i.cr to i64        ; 14 uses
  %min.iters.check = icmp ult i32 %i.cr, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.cq, i64 %wide.trip.count
  %i.ct = getelementptr i8, ptr %.0.i.i80, i64 %wide.trip.count
  %scevgep127 = getelementptr i8, ptr %i.ct, i64 1
  %bound0 = icmp ult ptr %i.cq, %scevgep127
  %bound1 = icmp ult ptr %.0.i.i80, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check128 = icmp ult i32 %i.cr, 16
  br i1 %min.iters.check128, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.cu = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 2147483632   ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.cs, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %broadcast.splatinsert129 = insertelement <16 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat130 = shufflevector <16 x i32> %broadcast.splatinsert129, <16 x i32> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.cv = getelementptr i8, ptr %.0.i.i80, i64 %index
  %wide.load = load <16 x i8>, ptr %i.cv, align 1, !alias.scope !19
  %i.cw = zext <16 x i8> %wide.load to <16 x i32>
  %i.cx = shl nuw nsw <16 x i32> %i.cw, %broadcast.splat130
  %i.cy = getelementptr i8, ptr %.0.i.i80, i64 %index
  %i.cz = getelementptr i8, ptr %i.cy, i64 1
  %wide.load131 = load <16 x i8>, ptr %i.cz, align 1, !alias.scope !19
  %i.da = zext <16 x i8> %wide.load131 to <16 x i32>
  %i.db = lshr <16 x i32> %i.da, %broadcast.splat
  %i.dc = or <16 x i32> %i.db, %i.cx
  %i.dd = trunc <16 x i32> %i.dc to <16 x i8>
  %i.de = getelementptr i8, ptr %i.cq, i64 %index
  store <16 x i8> %i.dd, ptr %i.de, align 1, !alias.scope !22, !noalias !19
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %i.df = icmp eq i64 %index.next, %n.vec
  br i1 %i.df, label %middle.block, label %vector.body, !llvm.loop !24

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.cu, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !25

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec132 = and i64 %wide.trip.count, 2147483644 ; 3 uses
  %broadcast.splatinsert133 = insertelement <4 x i32> poison, i32 %i.cs, i64 0
  %broadcast.splat134 = shufflevector <4 x i32> %broadcast.splatinsert133, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert135 = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat136 = shufflevector <4 x i32> %broadcast.splatinsert135, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index137 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next140, %vec.epilog.vector.body ] ; 4 uses
  %i.dg = getelementptr i8, ptr %.0.i.i80, i64 %index137
  %wide.load138 = load <4 x i8>, ptr %i.dg, align 1, !alias.scope !19
  %i.dh = zext <4 x i8> %wide.load138 to <4 x i32>
  %i.di = shl nuw nsw <4 x i32> %i.dh, %broadcast.splat136
  %i.dj = getelementptr i8, ptr %.0.i.i80, i64 %index137
  %i.dk = getelementptr i8, ptr %i.dj, i64 1
  %wide.load139 = load <4 x i8>, ptr %i.dk, align 1, !alias.scope !19
  %i.dl = zext <4 x i8> %wide.load139 to <4 x i32>
  %i.dm = lshr <4 x i32> %i.dl, %broadcast.splat134
  %i.dn = or <4 x i32> %i.dm, %i.di
  %i.do = trunc <4 x i32> %i.dn to <4 x i8>
  %i.dp = getelementptr i8, ptr %i.cq, i64 %index137
  store <4 x i8> %i.do, ptr %i.dp, align 1, !alias.scope !22, !noalias !19
  %index.next140 = add nuw i64 %index137, 4       ; 2 uses
  %i.dq = icmp eq i64 %index.next140, %n.vec132
  br i1 %i.dq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !26

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n141 = icmp eq i64 %n.vec132, %wide.trip.count
  br i1 %cmp.n141, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec132, %vec.epilog.middle.block ] ; 5 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader
  %i.dr = getelementptr i8, ptr %.0.i.i80, i64 %indvars.iv.ph
  %i.ds = load i8, ptr %i.dr, align 1
  %i.dt = zext i8 %i.ds to i32
  %i.du = shl nuw nsw i32 %i.dt, %i.e
  %indvars.iv.next.prol = or disjoint i64 %indvars.iv.ph, 1 ; 2 uses
  %i.dv = getelementptr i8, ptr %.0.i.i80, i64 %indvars.iv.next.prol
  %i.dw = load i8, ptr %i.dv, align 1
  %i.dx = zext i8 %i.dw to i32
  %i.dy = lshr i32 %i.dx, %i.cs
  %i.dz = or i32 %i.dy, %i.du
  %i.ea = trunc i32 %i.dz to i8
  %i.eb = getelementptr i8, ptr %i.cq, i64 %indvars.iv.ph
  store i8 %i.ea, ptr %i.eb, align 1
  br label %vec.epilog.scalar.ph.prol.loopexit

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ec = add nsw i64 %wide.trip.count, -1
  %i.ed = icmp eq i64 %indvars.iv.ph, %i.ec
  br i1 %i.ed, label %._crit_edge, label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 4 uses
  %i.ee = getelementptr i8, ptr %.0.i.i80, i64 %indvars.iv
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = zext i8 %i.ef to i32
  %i.eh = shl nuw nsw i32 %i.eg, %i.e
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.ei = getelementptr i8, ptr %.0.i.i80, i64 %indvars.iv.next
  %i.ej = load i8, ptr %i.ei, align 1
  %i.ek = zext i8 %i.ej to i32
  %i.el = lshr i32 %i.ek, %i.cs
  %i.em = or i32 %i.el, %i.eh
  %i.en = trunc i32 %i.em to i8
  %i.eo = getelementptr i8, ptr %i.cq, i64 %indvars.iv
  store i8 %i.en, ptr %i.eo, align 1
  %i.ep = getelementptr i8, ptr %.0.i.i80, i64 %indvars.iv.next
  %i.eq = load i8, ptr %i.ep, align 1
  %i.er = zext i8 %i.eq to i32
  %i.es = shl nuw nsw i32 %i.er, %i.e
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.et = getelementptr i8, ptr %.0.i.i80, i64 %indvars.iv.next.1
  %i.eu = load i8, ptr %i.et, align 1
  %i.ev = zext i8 %i.eu to i32
  %i.ew = lshr i32 %i.ev, %i.cs
  %i.ex = or i32 %i.ew, %i.es
  %i.ey = trunc i32 %i.ex to i8
  %i.ez = getelementptr i8, ptr %i.cq, i64 %indvars.iv.next
  store i8 %i.ey, ptr %i.ez, align 1
  %exitcond.not.1 = icmp eq i64 %indvars.iv.next.1, %wide.trip.count
  br i1 %exitcond.not.1, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !27

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %ensure_contiguous_unsigned.exit91
  %.pre-phi109 = phi i64 [ 0, %ensure_contiguous_unsigned.exit91 ], [ %wide.trip.count, %middle.block ], [ %wide.trip.count, %vec.epilog.middle.block ], [ %wide.trip.count, %vec.epilog.scalar.ph ], [ %wide.trip.count, %vec.epilog.scalar.ph.prol.loopexit ] ; 2 uses
  %i.fa = getelementptr i8, ptr %.0.i.i80, i64 %.pre-phi109
  %i.fb = load i8, ptr %i.fa, align 1
  %i.fc = zext i8 %i.fb to i32
  %i.fd = shl nuw nsw i32 %i.fc, %i.e
  %i.fe = trunc i32 %i.fd to i8
  %i.ff = getelementptr i8, ptr %i.cq, i64 %.pre-phi109
  store i8 %i.fe, ptr %i.ff, align 1
  br label %.loopexit

.loopexit:                                        ; preds = %scalar.ph, %middle.block155, %._crit_edge
  %.pre-phi = phi i64 [ %i.cp, %._crit_edge ], [ %i.ar, %middle.block155 ], [ %i.ar, %scalar.ph ]
  %.0 = phi ptr [ %i.cq, %._crit_edge ], [ %i.as, %middle.block155 ], [ %i.as, %scalar.ph ] ; 2 uses
  %i.fg = zext nneg i8 %i.j to i64
  %i.fh = getelementptr i8, ptr @left_aligned_bitmask, i64 %i.fg
  %i.fi = load i8, ptr %i.fh, align 1
  %i.fj = getelementptr i8, ptr %.0, i64 %.pre-phi
  %i.fk = getelementptr i8, ptr %i.fj, i64 -1     ; 2 uses
  %i.fl = load i8, ptr %i.fk, align 1
  %i.fm = and i8 %i.fl, %i.fi
  store i8 %i.fm, ptr %i.fk, align 1
  %i.fn = tail call ptr @tvb_new_child_real_data(ptr noundef nonnull %0, ptr noundef %.0, i32 noundef %spec.select, i32 noundef %spec.select) ; 2 uses
  tail call void @tvb_set_free_cb(ptr noundef %i.fn, ptr noundef nonnull @g_free)
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %bb.e
  %.069 = phi ptr [ %i.o, %bb.e ], [ %i.fn, %.loopexit ]
  ret ptr %.069
}

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_subset_length_caplen(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_new_child_real_data(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @tvb_set_free_cb(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @tvb_new_octet_right_aligned(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !range !12, !noundef !13
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 535, ptr noundef nonnull @.str.5) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.d = lshr i32 %1, 3                           ; 8 uses
  %i.e = and i32 %1, 7                            ; 7 uses
  %i.f = trunc nuw nsw i32 %i.e to i8
  %i.g = sub nuw nsw i8 8, %i.f                   ; 2 uses
  %i.h = lshr i32 %2, 3
  %i.i = and i32 %2, 7                            ; 2 uses
  %.not66 = icmp ne i32 %i.i, 0                   ; 2 uses
  %i.j = zext i1 %.not66 to i32
  %spec.select = add nuw nsw i32 %i.h, %i.j       ; 8 uses
  %i.k = or i32 %2, %1
  %i.l = and i32 %i.k, 7
  %or.cond = icmp eq i32 %i.l, 0
  %i.m = icmp eq i32 %2, 0
  %or.cond4 = or i1 %i.m, %or.cond
  br i1 %or.cond4, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = tail call ptr @tvb_new_subset_length_caplen(ptr noundef nonnull %0, i32 noundef %i.d, i32 noundef %spec.select, i32 noundef %spec.select)
  br label %bb.u

bb.f:                                             ; preds = %bb.d
  %i.o = getelementptr i8, ptr %0, i64 40
  %i.p = load i32, ptr %i.o, align 8              ; 3 uses
  %i.q = tail call i32 @llvm.usub.sat.i32(i32 %i.p, i32 %i.d)
  %i.r = icmp ugt i32 %i.q, %spec.select          ; 2 uses
  %i.s = zext i1 %i.r to i32
  %.063 = add nuw nsw i32 %spec.select, %i.s      ; 2 uses
  %.not.i.i.i.i = icmp ugt i32 %i.d, %i.p
  br i1 %.not.i.i.i.i, label %bb.g, label %validate_offset.exit.i.i.i, !prof !11

bb.g:                                             ; preds = %bb.f
  %i.t = getelementptr i8, ptr %0, i64 48
  %i.u = load i32, ptr %i.t, align 8
  %.not12.i.i.i.i = icmp ugt i32 %i.d, %i.u
  br i1 %.not12.i.i.i.i, label %bb.h, label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr i8, ptr %0, i64 20
  %i.w = load i32, ptr %i.v, align 4
  %i.x = and i32 %i.w, 1
  %.not13.i.i.i.i = icmp eq i32 %i.x, 0
  br i1 %.not13.i.i.i.i, label %validate_offset.exit15.sink.split.i.i.i, label %bb.p

validate_offset.exit.i.i.i:                       ; preds = %bb.f
  %i.y = add nuw nsw i32 %.063, %i.d              ; 3 uses
  %.not.i9.i.i.i = icmp ugt i32 %i.y, %i.p
  br i1 %.not.i9.i.i.i, label %bb.i, label %validate_offset_length_no_exception.exit.i.i, !prof !11

bb.i:                                             ; preds = %validate_offset.exit.i.i.i
  %i.z = getelementptr i8, ptr %0, i64 48
  %i.aa = load i32, ptr %i.z, align 8
  %.not12.i11.i.i.i = icmp ugt i32 %i.y, %i.aa
  br i1 %.not12.i11.i.i.i, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr i8, ptr %0, i64 20
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = and i32 %i.ac, 1
  %.not13.i12.i.i.i = icmp eq i32 %i.ad, 0
  br i1 %.not13.i12.i.i.i, label %validate_offset.exit15.sink.split.i.i.i, label %bb.p

validate_offset.exit15.sink.split.i.i.i:          ; preds = %bb.j, %bb.h
  %.sink.i.i.i = phi i32 [ %i.d, %bb.h ], [ %i.y, %bb.j ]
  %i.ae = getelementptr i8, ptr %0, i64 44
  %i.af = load i32, ptr %i.ae, align 4
  %.not14.i.i.i.i = icmp ugt i32 %.sink.i.i.i, %i.af
  %..i.i.i.i = select i1 %.not14.i.i.i.i, i64 3, i64 2
  br label %bb.p

validate_offset_length_no_exception.exit.i.i:     ; preds = %validate_offset.exit.i.i.i
  %i.ag = getelementptr i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8            ; 2 uses
  %.not21.i.i = icmp eq ptr %i.ah, null
  br i1 %.not21.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %validate_offset_length_no_exception.exit.i.i
  %i.ai = zext nneg i32 %i.d to i64
  %i.aj = getelementptr i8, ptr %i.ah, i64 %i.ai
  br label %ensure_contiguous_unsigned_no_exception.exit.i

bb.l:                                             ; preds = %validate_offset_length_no_exception.exit.i.i
  %i.ak = getelementptr i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not22.i.i = icmp eq ptr %i.an, null
  br i1 %.not22.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = tail call ptr %i.an(ptr noundef nonnull %0, i32 noundef %i.d, i32 noundef %.063), !inline_history !14
  br label %ensure_contiguous_unsigned_no_exception.exit.i

bb.n:                                             ; preds = %bb.l
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 926) #18
  unreachable

ensure_contiguous_unsigned_no_exception.exit.i:   ; preds = %bb.m, %bb.k
  %.0.i.i = phi ptr [ %i.aj, %bb.k ], [ %i.ao, %bb.m ] ; 15 uses
  %i.ap = icmp eq ptr %.0.i.i, null
  br i1 %i.ap, label %bb.o, label %ensure_contiguous_unsigned.exit

bb.o:                                             ; preds = %ensure_contiguous_unsigned_no_exception.exit.i
  tail call void (ptr, ...) @proto_report_dissector_bug(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i32 noundef 938, ptr noundef nonnull @.str.41) #18
  unreachable

bb.p:                                             ; preds = %bb.j, %bb.i, %bb.h, %validate_offset.exit15.sink.split.i.i.i, %bb.g
  %.0.i.ph = phi i64 [ 4, %bb.j ], [ 1, %bb.i ], [ 4, %bb.h ], [ %..i.i.i.i, %validate_offset.exit15.sink.split.i.i.i ], [ 1, %bb.g ]
  tail call void @except_throw(i64 noundef 1, i64 noundef %.0.i.ph, ptr noundef null) #18
  unreachable

ensure_contiguous_unsigned.exit:                  ; preds = %ensure_contiguous_unsigned_no_exception.exit.i
  %i.aq = zext nneg i32 %spec.select to i64
  %i.ar = tail call noalias ptr @g_malloc(i64 noundef %i.aq) #17 ; 9 uses
  %i.as = add nsw i32 %spec.select, -1            ; 6 uses
  %.not68 = icmp eq i32 %i.as, 0
  br i1 %.not68, label %._crit_edge, label %iter.check

iter.check:                                       ; preds = %ensure_contiguous_unsigned.exit
  %i.at = zext nneg i8 %i.g to i32                ; 5 uses
  %wide.trip.count = zext i32 %i.as to i64        ; 10 uses
  %min.iters.check = icmp ult i32 %i.as, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %scevgep = getelementptr i8, ptr %i.ar, i64 %wide.trip.count
  %i.au = getelementptr i8, ptr %.0.i.i, i64 %wide.trip.count
  %scevgep82 = getelementptr i8, ptr %i.au, i64 1
  %bound0 = icmp ult ptr %i.ar, %scevgep82
  %bound1 = icmp ult ptr %.0.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check83 = icmp ult i32 %i.as, 16
  br i1 %min.iters.check83, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.av = and i64 %wide.trip.count, 12
  %n.vec = and i64 %wide.trip.count, 4294967280   ; 4 uses
  %broadcast.splatinsert = insertelement <16 x i32> poison, i32 %i.at, i64 0
  %broadcast.splat = shufflevector <16 x i32> %broadcast.splatinsert, <16 x i32> poison, <16 x i32> zeroinitializer
  %i.aw = trunc nuw nsw i32 %i.e to i8
  %i.ax = insertelement <16 x i8> poison, i8 %i.aw, i64 0
  %i.ay = shufflevector <16 x i8> %i.ax, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 4 uses
  %i.az = getelementptr i8, ptr %.0.i.i, i64 %index
  %wide.load = load <16 x i8>, ptr %i.az, align 1, !alias.scope !28
  %i.ba = lshr <16 x i8> %wide.load, %i.ay
end_hunk_0
