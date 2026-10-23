Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/print?download=true
inline.NumInlined: 65
inline.NumDeleted: 24
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@write_psml_columns:bb.a
  %i.as = load ptr, ptr %i.al, align 8
  %i.at = tail call ptr @get_column_text(ptr noundef %i.as, i32 noundef %.018.us) ; 0 uses
  %i.au = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef null, i32 noundef 2, ptr noundef @.str.23) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %print_escaped_xml.exit.us, %.lr.ph.split.us
  %i.av = add nuw i32 %.018.us, 1                 ; 2 uses
  %i.aw = load ptr, ptr %i.al, align 8
  %i.ax = getelementptr i8, ptr %i.aw, i64 8
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = icmp ult i32 %i.av, %i.ay
  br i1 %i.az, label %.lr.ph.split.us, label %._crit_edge, !llvm.loop !51

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.h
  %.018 = phi i32 [ %i.bi, %bb.h ], [ 0, %.lr.ph ] ; 3 uses
  %i.ba = tail call zeroext i1 @get_column_visible(i32 noundef %.018)
  br i1 %i.ba, label %bb.f, label %bb.h

bb.f:                                             ; preds = %.lr.ph.split
  %i.bb = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %1, i32 noundef 2, ptr noundef @.str.22) ; 0 uses
  %i.bc = load ptr, ptr %i.al, align 8
  %i.bd = tail call ptr @get_column_text(ptr noundef %i.bc, i32 noundef %.018) ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %print_escaped_xml.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bf = tail call ptr @xml_escape(ptr noundef nonnull %i.bd) ; 2 uses
  %i.bg = tail call i32 @fputs(ptr noundef %i.bf, ptr noundef nonnull %1) ; 0 uses
  tail call void @g_free(ptr noundef %i.bf)
  br label %print_escaped_xml.exit

print_escaped_xml.exit:                           ; preds = %bb.f, %bb.g
  %i.bh = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef nonnull %1, i32 noundef 2, ptr noundef @.str.23) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph.split, %print_escaped_xml.exit
  %i.bi = add nuw i32 %.018, 1                    ; 2 uses
  %i.bj = load ptr, ptr %i.al, align 8
  %i.bk = getelementptr i8, ptr %i.bj, i64 8
  %i.bl = load i32, ptr %i.bk, align 8
  %i.bm = icmp ult i32 %i.bi, %i.bl
  br i1 %i.bm, label %.lr.ph.split, label %._crit_edge, !llvm.loop !51

._crit_edge:                                      ; preds = %bb.h, %bb.e, %bb.d
  %i.bn = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 2, ptr noundef @.str.12) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @get_column_text(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable
define void @write_psml_finale(ptr nofree noundef captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %fwrite = tail call i64 @fwrite(ptr @.str.25, i64 8, i64 1, ptr %0) ; 0 uses
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @write_csv_column_titles(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %.011 = phi i8 [ 0, %.lr.ph ], [ %.1, %bb.d ]   ; 2 uses
  %i.d = trunc nuw i64 %indvars.iv to i32
  %i.e = tail call zeroext i1 @get_column_visible(i32 noundef %i.d)
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.c, align 8
  %i.g = getelementptr [88 x i8], ptr %i.f, i64 %indvars.iv
  %i.h = getelementptr i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = trunc nuw i8 %.011 to i1
  tail call fastcc void @csv_write_str(ptr noundef %i.i, ptr noundef %1, i1 noundef zeroext %i.j)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.1 = phi i8 [ 1, %bb.c ], [ %.011, %bb.b ]     ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load i32, ptr %i.a, align 8
  %i.l = zext i32 %i.k to i64
  %i.m = icmp samesign ult i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %bb.b, label %._crit_edge, !llvm.loop !52

._crit_edge:                                      ; preds = %bb.d
  %i.n = trunc nuw i8 %.1 to i1
  br i1 %i.n, label %bb.e, label %._crit_edge.thread

bb.e:                                             ; preds = %._crit_edge
  %i.o = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 2, ptr noundef @.str.26) ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.e, %._crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @csv_write_str(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias ptr @g_strescape(ptr noundef %0, ptr noundef @.str.101) ; 5 uses
  %i.b = tail call ptr @strstr(ptr noundef %i.a, ptr noundef @.str.101) #24 ; 2 uses
  %.not1.i = icmp eq ptr %i.b, null
  br i1 %.not1.i, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %.lr.ph.i, %bb.a
  %i.c = tail call ptr @strstr(ptr noundef %i.a, ptr noundef @.str.104) #24 ; 2 uses
  %.not132.i = icmp eq ptr %i.c, null
  br i1 %.not132.i, label %csv_massage_str.exit, label %.lr.ph3.i

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i
  %i.d = phi ptr [ %i.g, %.lr.ph.i ], [ %i.b, %bb.a ] ; 4 uses
  store i8 32, ptr %i.d, align 1
  %i.e = getelementptr i8, ptr %i.d, i64 1
  store i8 62, ptr %i.e, align 1
  %i.f = getelementptr i8, ptr %i.d, i64 2
  store i8 32, ptr %i.f, align 1
  %i.g = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.d, ptr noundef @.str.101) #24 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %.preheader.i, label %.lr.ph.i, !llvm.loop !53

.lr.ph3.i:                                        ; preds = %.preheader.i, %.lr.ph3.i
  %i.h = phi ptr [ %i.i, %.lr.ph3.i ], [ %i.c, %.preheader.i ] ; 2 uses
  store i8 34, ptr %i.h, align 1
  %i.i = tail call ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.h, ptr noundef @.str.104) #24 ; 2 uses
  %.not13.i = icmp eq ptr %i.i, null
  br i1 %.not13.i, label %csv_massage_str.exit, label %.lr.ph3.i, !llvm.loop !54

csv_massage_str.exit:                             ; preds = %.lr.ph3.i, %.preheader.i
  br i1 %2, label %bb.b, label %bb.c

bb.b:                                             ; preds = %csv_massage_str.exit
  %i.j = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 2, ptr noundef @.str.102, i32 noundef 44, ptr noundef %i.a) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %csv_massage_str.exit
  %i.k = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 2, ptr noundef @.str.103, ptr noundef %i.a) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  tail call void @g_free(ptr noundef %i.a)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @write_csv_columns(ptr nofree noundef readonly captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.011 = phi i8 [ %.1, %bb.c ], [ 0, %bb.a ]     ; 2 uses
  %.0910 = phi i32 [ %i.i, %bb.c ], [ 0, %bb.a ]  ; 3 uses
  %i.e = tail call zeroext i1 @get_column_visible(i32 noundef %.0910)
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.f = load ptr, ptr %i.a, align 8
  %i.g = tail call ptr @get_column_text(ptr noundef %i.f, i32 noundef %.0910)
  %i.h = trunc nuw i8 %.011 to i1
  tail call fastcc void @csv_write_str(ptr noundef %i.g, ptr noundef %1, i1 noundef zeroext %i.h)
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %.1 = phi i8 [ 1, %bb.b ], [ %.011, %.lr.ph ]   ; 2 uses
  %i.i = add nuw i32 %.0910, 1                    ; 2 uses
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = load i32, ptr %i.k, align 8
  %i.m = icmp ult i32 %i.i, %i.l
  br i1 %i.m, label %.lr.ph, label %._crit_edge, !llvm.loop !55

._crit_edge:                                      ; preds = %bb.c
  %i.n = trunc nuw i8 %.1 to i1
  br i1 %i.n, label %bb.d, label %._crit_edge.thread

bb.d:                                             ; preds = %._crit_edge
  %i.o = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 2, ptr noundef @.str.26) ; 0 uses
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %bb.d, %._crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @write_carrays_hex_data(i32 noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [9 x i8], align 1                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr i8, ptr %2, i64 128
  %.04559 = load ptr, ptr %i.b, align 8           ; 2 uses
  %.not60 = icmp eq ptr %.04559, null
  br i1 %.not60, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = load ptr, ptr @g_ascii_table, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.loopexit56
  %.04562 = phi ptr [ %.04559, %.lr.ph ], [ %.045, %.loopexit56 ] ; 2 uses
  %.04661 = phi i32 [ 0, %.lr.ph ], [ %.1, %.loopexit56 ] ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.a, i8 noundef 0, i64 noundef 9, i1 noundef false) #23
  %i.d = load ptr, ptr %.04562, align 8           ; 2 uses
  %i.e = call ptr @get_data_source_tvb(ptr noundef %i.d) ; 2 uses
  %i.f = call i32 @tvb_captured_length(ptr noundef %i.e) ; 7 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %.loopexit56, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = call ptr @tvb_get_ptr(ptr noundef %i.e, i32 noundef 0, i32 noundef %i.f)
  %i.i = call ptr @get_data_source_description(ptr noundef %i.d) ; 3 uses
  %.not51 = icmp eq ptr %i.i, null
  br i1 %.not51, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 2, ptr noundef @.str.27, ptr noundef nonnull %i.i) ; 0 uses
  call void @wmem_free(ptr noundef null, ptr noundef nonnull %i.i)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not52 = icmp eq i32 %.04661, 0
  br i1 %.not52, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 2, ptr noundef @.str.28, i32 noundef %0, i32 noundef %.04661, i32 noundef %i.f) ; 0 uses
  br label %3

bb.g:                                             ; preds = %bb.e
  %i.l = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 2, ptr noundef @.str.29, i32 noundef %0, i32 noundef %i.f) ; 0 uses
  br label %3

3:                                                ; preds = %bb.g, %bb.f
  %4 = add i32 %.04661, 1                         ; 2 uses
  %5 = add i32 %i.f, -1
  %6 = zext i32 %5 to i64
  %wide.trip.count = zext i32 %i.f to i64
  br label %bb.h

bb.h:                                             ; preds = %3, %bb.n
  %indvars.iv = phi i64 [ 0, %3 ], [ %indvars.iv.next, %bb.n ] ; 4 uses
  %7 = getelementptr i8, ptr %i.h, i64 %indvars.iv ; 2 uses
  %i.m = load i8, ptr %7, align 1
  %i.n = zext i8 %i.m to i32
  %i.o = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 2, ptr noundef @.str.30, i32 noundef %i.n) ; 0 uses
  %i.p = load i8, ptr %7, align 1                 ; 2 uses
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr [2 x i8], ptr %i.c, i64 %i.q
  %i.s = load i16, ptr %i.r, align 2
  %i.t = and i16 %i.s, 64
  %.not53.a = icmp eq i16 %i.t, 0
  %spec.select.a = select i1 %.not53.a, i8 46, i8 %i.p
  %8 = and i64 %indvars.iv, 7
  %9 = getelementptr i8, ptr %i.a, i64 %8
  store i8 %spec.select.a, ptr %9, align 1
  %i.u = icmp eq i64 %indvars.iv, %6
  br i1 %i.u, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.v = and i32 %i.f, 7                          ; 2 uses
  %.not55 = icmp eq i32 %i.v, 0
  br i1 %.not55, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.i
  %i.w = sub nuw nsw i32 8, %i.v
  br label %bb.j

bb.j:                                             ; preds = %.preheader, %bb.j
  %.058 = phi i32 [ 0, %.preheader ], [ %i.y, %bb.j ]
  %i.x = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 2, ptr noundef @.str.31) ; 0 uses
  %i.y = add nuw nsw i32 %.058, 1                 ; 2 uses
  %exitcond64.not = icmp eq i32 %i.y, %i.w
  br i1 %exitcond64.not, label %.loopexit, label %bb.j, !llvm.loop !56

.loopexit:                                        ; preds = %bb.j, %bb.i
  %i.z = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 2, ptr noundef @.str.32, ptr noundef nonnull %i.a) ; 0 uses
  br label %.loopexit56

bb.k:                                             ; preds = %bb.h
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 3 uses
  %i.aa = and i64 %indvars.iv.next, 7
  %.not54 = icmp eq i64 %i.aa, 0
  br i1 %.not54, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ab = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 2, ptr noundef @.str.33, ptr noundef nonnull %i.a) ; 0 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.a, i8 noundef 0, i64 noundef 9, i1 noundef false) #23
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  %i.ac = call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %1, i32 noundef 2, ptr noundef @.str.34) ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit56, label %bb.h, !llvm.loop !57

.loopexit56:                                      ; preds = %bb.n, %.loopexit, %bb.b
  %.1 = phi i32 [ %.04661, %bb.b ], [ %4, %.loopexit ], [ %4, %bb.n ]
  %i.ad = getelementptr i8, ptr %.04562, i64 8
  %.045 = load ptr, ptr %i.ad, align 8            ; 2 uses
  %.not = icmp eq ptr %.045, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !58

._crit_edge:                                      ; preds = %.loopexit56, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @tvb_get_ptr(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @get_data_source_description(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @wmem_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define zeroext i1 @print_hex_data(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [31 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = and i32 %2, 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr i8, ptr %1, i64 104
  %i.e = load ptr, ptr %i.d, align 8
  call void @set_fd_time(ptr noundef %i.c, ptr noundef %i.e, ptr noundef nonnull %i.a)
  %i.f = call zeroext i1 @print_line(ptr noundef %0, i32 noundef 0, ptr noundef nonnull %i.a) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr i8, ptr %1, i64 128
  %i.h = load ptr, ptr %i.g, align 8              ; 5 uses
  %.not3136 = icmp eq ptr %i.h, null
  br i1 %.not3136, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %.fr = freeze ptr %i.j
  %.not30 = icmp ne ptr %.fr, null
  %i.k = and i32 %2, 4
  %i.l = icmp eq i32 %i.k, 0                      ; 2 uses
  %or.cond = and i1 %i.l, %.not30
  %i.m = getelementptr i8, ptr %1, i64 104        ; 3 uses
  %i.n = and i32 %2, 3                            ; 3 uses
  br i1 %or.cond, label %.lr.ph.split.us.split, label %.lr.ph.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph, %bb.e
  %.037.us = phi ptr [ %i.ad, %bb.e ], [ %i.h, %.lr.ph ] ; 2 uses
  %i.o = load ptr, ptr %.037.us, align 8          ; 2 uses
  %i.p = call ptr @get_data_source_tvb(ptr noundef %i.o) ; 2 uses
  %i.q = call ptr @get_data_source_description(ptr noundef %i.o) ; 2 uses
  %i.r = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef @.str.35, ptr noundef %i.q) ; 2 uses
  call void @wmem_free(ptr noundef null, ptr noundef %i.q)
  %i.s = call zeroext i1 @print_line(ptr noundef %0, i32 noundef 0, ptr noundef %i.r) ; 0 uses
  call void @g_free(ptr noundef %i.r)
  %i.t = call i32 @tvb_captured_length(ptr noundef %i.p) ; 3 uses
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.lr.ph.split.us.split
  %i.v = call ptr @tvb_get_ptr(ptr noundef %i.p, i32 noundef 0, i32 noundef %i.t)
  %i.w = load ptr, ptr %i.m, align 8
  %i.x = getelementptr i8, ptr %i.w, i64 53
  %i.y = load i16, ptr %i.x, align 1
  %i.z = lshr i16 %i.y, 2
  %.lobit.us = and i16 %i.z, 1
  %i.aa = zext nneg i16 %.lobit.us to i32
  %i.ab = call zeroext i1 @hex_dump_buffer(ptr noundef @print_hex_data_line, ptr noundef %0, ptr noundef %i.v, i32 noundef %i.t, i32 noundef %i.aa, i32 noundef range(i32 0, 4) %i.n)
  br i1 %i.ab, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr i8, ptr %.037.us, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not31.us = icmp eq ptr %i.ad, null
  br i1 %.not31.us, label %._crit_edge, label %.lr.ph.split.us.split, !llvm.loop !59

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.l, label %.lr.ph.split.split, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split
  %i.ae = load ptr, ptr %i.h, align 8
  %i.af = call ptr @get_data_source_tvb(ptr noundef %i.ae) ; 2 uses
  %i.ag = call i32 @tvb_captured_length(ptr noundef %i.af) ; 3 uses
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %._crit_edge, label %._crit_edge.split.split.us

._crit_edge.split.split.us:                       ; preds = %.lr.ph.split.split.us
  %i.ai = call ptr @tvb_get_ptr(ptr noundef %i.af, i32 noundef 0, i32 noundef %i.ag)
  %i.aj = load ptr, ptr %i.m, align 8
  %i.ak = getelementptr i8, ptr %i.aj, i64 53
  %i.al = load i16, ptr %i.ak, align 1
  %i.am = lshr i16 %i.al, 2
  %.lobit.us45 = and i16 %i.am, 1
  %i.an = zext nneg i16 %.lobit.us45 to i32
  %i.ao = call zeroext i1 @hex_dump_buffer(ptr noundef @print_hex_data_line, ptr noundef %0, ptr noundef %i.ai, i32 noundef %i.ag, i32 noundef %i.an, i32 noundef range(i32 0, 4) %i.n)
  br label %._crit_edge

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %bb.g
  %.037 = phi ptr [ %i.bb, %bb.g ], [ %i.h, %.lr.ph.split ] ; 2 uses
  %i.ap = load ptr, ptr %.037, align 8
  %i.aq = call ptr @get_data_source_tvb(ptr noundef %i.ap) ; 2 uses
  %i.ar = call i32 @tvb_captured_length(ptr noundef %i.aq) ; 3 uses
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %._crit_edge, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.split
  %i.at = call ptr @tvb_get_ptr(ptr noundef %i.aq, i32 noundef 0, i32 noundef %i.ar)
  %i.au = load ptr, ptr %i.m, align 8
  %i.av = getelementptr i8, ptr %i.au, i64 53
  %i.aw = load i16, ptr %i.av, align 1
  %i.ax = lshr i16 %i.aw, 2
  %.lobit = and i16 %i.ax, 1
  %i.ay = zext nneg i16 %.lobit to i32
  %i.az = call zeroext i1 @hex_dump_buffer(ptr noundef @print_hex_data_line, ptr noundef %0, ptr noundef %i.at, i32 noundef %i.ar, i32 noundef %i.ay, i32 noundef range(i32 0, 4) %i.n)
  br i1 %i.az, label %bb.g, label %._crit_edge

bb.g:                                             ; preds = %bb.f
  %i.ba = getelementptr i8, ptr %.037, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not31 = icmp eq ptr %i.bb, null
  br i1 %.not31, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !59

._crit_edge:                                      ; preds = %.lr.ph.split.split, %bb.g, %bb.f, %.lr.ph.split.us.split, %bb.e, %bb.d, %.lr.ph.split.split.us, %._crit_edge.split.split.us, %bb.c
  %.028 = phi i1 [ true, %.lr.ph.split.split.us ], [ true, %bb.c ], [ %i.ao, %._crit_edge.split.split.us ], [ false, %bb.d ], [ true, %bb.e ], [ true, %.lr.ph.split.us.split ], [ false, %bb.f ], [ true, %bb.g ], [ true, %.lr.ph.split.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %.028
}

; Function Attrs: null_pointer_is_valid
declare void @set_fd_time(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @print_line(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define range(i64 0, 4294967296) i64 @output_fields_num_fields(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %i.b, i64 8
  %i.e = load i32, ptr %i.d, align 8
  %i.f = zext i32 %i.e to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.f, %bb.b ], [ 0, %bb.a ]
  ret i64 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @output_fields_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not17 = icmp eq ptr %i.d, null
  br i1 %.not17, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @g_hash_table_destroy(ptr noundef nonnull %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not18 = icmp eq ptr %i.f, null
  br i1 %.not18, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @g_ptr_array_unref(ptr noundef nonnull %i.f)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.g = getelementptr i8, ptr %0, i64 32
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not19 = icmp eq ptr %i.h, null
  br i1 %.not19, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @g_free(ptr noundef nonnull %i.h)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.i = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %i.k = load i32, ptr %i.j, align 8
  %.not21 = icmp eq i32 %i.k, 0
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %.lr.ph
  %i.l = phi ptr [ %i.q, %.lr.ph ], [ %i.i, %bb.h ]
  %.020 = phi i64 [ %i.p, %.lr.ph ], [ 0, %bb.h ] ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr [8 x i8], ptr %i.m, i64 %.020
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @g_free(ptr noundef %i.o)
  %i.p = add nuw nsw i64 %.020, 1                 ; 2 uses
  %i.q = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.r = getelementptr i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 8
  %i.t = zext i32 %i.s to i64
  %i.u = icmp samesign ult i64 %i.p, %i.t
  br i1 %i.u, label %.lr.ph, label %._crit_edge, !llvm.loop !60

._crit_edge:                                      ; preds = %.lr.ph, %bb.h
  %.lcssa = phi ptr [ %i.i, %bb.h ], [ %i.q, %.lr.ph ]
  %i.v = tail call ptr @g_ptr_array_free(ptr noundef %.lcssa, i32 noundef 1) ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %._crit_edge, %bb.a
  tail call void @g_free(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @g_ptr_array_unref(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @g_ptr_array_free(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @output_fields_add(ptr nofree noundef captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %g_strdup_inline.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @g_ptr_array_new()
  store ptr %i.d, ptr %i.a, align 8
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.b, %bb.a
  %i.e = tail call noalias ptr @g_strdup(ptr noundef %1)
  %i.f = load ptr, ptr %i.a, align 8
  tail call void @g_ptr_array_add(ptr noundef %i.f, ptr noundef %i.e)
  %i.g = tail call i32 @strncmp(ptr noundef %1, ptr noundef dereferenceable(9) @.str.36, i64 noundef 8) #24
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %g_strdup_inline.exit
  %i.h = getelementptr i8, ptr %0, i64 50
  store i8 1, ptr %i.h, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %g_strdup_inline.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @g_ptr_array_new() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @g_ptr_array_add(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define zeroext i1 @output_fields_add_protocolfilter(ptr nofree noundef captures(none) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = getelementptr i8, ptr %0, i64 40         ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @wmem_epan_scope()
  %i.e = tail call ptr @wmem_map_new(ptr noundef %i.d, ptr noundef @wmem_str_hash, ptr noundef @g_str_equal) ; 2 uses
  store ptr %i.e, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = phi ptr [ %i.e, %bb.b ], [ %i.c, %bb.a ]
  %i.g = call zeroext i1 @wmem_map_lookup_extended(ptr noundef %i.f, ptr noundef %1, ptr noundef null, ptr noundef nonnull %i.a)
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = load ptr, ptr %i.b, align 8
  %i.j = zext i32 %2 to i64
  %i.k = inttoptr i64 %i.j to ptr
  %i.l = call ptr @wmem_map_insert(ptr noundef %i.i, ptr noundef %1, ptr noundef %i.k) ; 0 uses
  %i.m = call i32 @strncmp(ptr noundef %1, ptr noundef dereferenceable(9) @.str.36, i64 noundef 8) #24
  %.not11 = icmp eq i32 %i.m, 0
  br i1 %.not11, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %0, i64 50
  store i8 1, ptr %i.n, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not12 = xor i1 %i.g, true
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = trunc i64 %i.o to i32
  %.not10 = icmp eq i32 %2, %i.p
  %or.cond = select i1 %.not12, i1 true, i1 %.not10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret i1 %or.cond
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_new(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_epan_scope() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @wmem_str_hash(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare i32 @g_str_equal(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wmem_map_lookup_extended(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_map_insert(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @output_fields_valid(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @g_ptr_array_foreach(ptr noundef nonnull %i.c, ptr noundef @output_field_check, ptr noundef nonnull %i.a)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr i8, ptr %0, i64 40
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not5 = icmp eq ptr %i.e, null
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @wmem_map_foreach(ptr noundef nonnull %i.e, ptr noundef @output_field_check_protocolfilter, ptr noundef nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = load ptr, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret ptr %i.f
}

; Function Attrs: null_pointer_is_valid
declare void @g_ptr_array_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @output_field_check(ptr noundef %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = call zeroext i1 @dfilter_compile_full(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 6, ptr noundef @__func__.output_field_check)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8
  call void @dfilter_free(ptr noundef %i.c)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8
  %i.e = call ptr @g_slist_prepend(ptr noundef %i.d, ptr noundef %0)
  store ptr %i.e, ptr %1, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @wmem_map_foreach(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @output_field_check_protocolfilter(ptr noundef %0, ptr nofree readnone captures(none) %1, ptr nofree noundef captures(none) %2) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.b = call zeroext i1 @dfilter_compile_full(ptr noundef %0, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 6, ptr noundef @__func__.output_field_check)
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.a, align 8
  call void @dfilter_free(ptr noundef %i.c)
  br label %output_field_check.exit

bb.c:                                             ; preds = %bb.a
  %i.d = load ptr, ptr %2, align 8
  %i.e = call ptr @g_slist_prepend(ptr noundef %i.d, ptr noundef %0)
  store ptr %i.e, ptr %2, align 8
  br label %output_field_check.exit

output_field_check.exit:                          ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void
end_hunk_0
begin_hunk_1_@output_fields_set_option:bb.a
  br i1 %i.t, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  switch i8 %i.g, label %bb.al [
    i8 102, label %bb.q
    i8 108, label %bb.q
    i8 97, label %bb.q
  ]

bb.q:                                             ; preds = %bb.p, %bb.p, %bb.p
  %i.u = getelementptr i8, ptr %0, i64 3
  store i8 %i.g, ptr %i.u, align 1
  br label %bb.al

bb.r:                                             ; preds = %bb.o
  %i.v = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef dereferenceable(11) @.str.41) #24
  %i.w = icmp eq i32 %i.v, 0
  br i1 %i.w, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %cond = icmp eq i8 %i.g, 47
  br i1 %cond, label %bb.t, label %bb.w

bb.t:                                             ; preds = %bb.s
  %i.x = getelementptr i8, ptr %i.e, i64 2
  %i.y = load i8, ptr %i.x, align 1
  %cond1 = icmp eq i8 %i.y, 115
  %i.z = getelementptr i8, ptr %0, i64 4          ; 2 uses
  br i1 %cond1, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store i8 32, ptr %i.z, align 4
  br label %bb.al

bb.v:                                             ; preds = %bb.t
  store i8 92, ptr %i.z, align 4
  br label %bb.al

bb.w:                                             ; preds = %bb.s
  %i.aa = getelementptr i8, ptr %0, i64 4
  store i8 %i.g, ptr %i.aa, align 4
  br label %bb.al

bb.x:                                             ; preds = %bb.r
  %i.ab = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef dereferenceable(6) @.str.42) #24
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.y, label %bb.ad

bb.y:                                             ; preds = %bb.x
  %i.ad = getelementptr i8, ptr %0, i64 48        ; 4 uses
  switch i8 %i.g, label %bb.ac [
    i8 100, label %bb.z
    i8 115, label %bb.aa
    i8 110, label %bb.ab
  ]

bb.z:                                             ; preds = %bb.y
  store i8 34, ptr %i.ad, align 8
  br label %bb.al

bb.aa:                                            ; preds = %bb.y
  store i8 39, ptr %i.ad, align 8
  br label %bb.al

bb.ab:                                            ; preds = %bb.y
  store i8 0, ptr %i.ad, align 8
  br label %bb.al

bb.ac:                                            ; preds = %bb.y
  store i8 0, ptr %i.ad, align 8
  br label %bb.al

bb.ad:                                            ; preds = %bb.x
  %i.ae = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef dereferenceable(4) @.str.43) #24
  %i.af = icmp eq i32 %i.ae, 0
  br i1 %i.af, label %bb.ae, label %bb.ah

bb.ae:                                            ; preds = %bb.ad
  switch i8 %i.g, label %bb.al [
    i8 110, label %bb.ag
    i8 121, label %bb.af
  ]

bb.af:                                            ; preds = %bb.ae
  br label %bb.ag

bb.ag:                                            ; preds = %bb.ae, %bb.af
  %storemerge = phi i8 [ 1, %bb.af ], [ 0, %bb.ae ]
  store i8 %storemerge, ptr %0, align 8
  br label %bb.al

bb.ah:                                            ; preds = %bb.ad
  %i.ag = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.c, ptr noundef dereferenceable(7) @.str.44) #24
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  switch i8 %i.g, label %bb.al [
    i8 110, label %bb.aj
    i8 121, label %bb.ak
  ]

bb.aj:                                            ; preds = %bb.ai
  %i.ai = getelementptr i8, ptr %0, i64 49
  store i8 0, ptr %i.ai, align 1
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %i.aj = getelementptr i8, ptr %0, i64 49
  store i8 1, ptr %i.aj, align 1
  br label %bb.al

bb.al:                                            ; preds = %bb.ah, %bb.aj, %bb.ak, %bb.ai, %bb.ae, %bb.z, %bb.aa, %bb.ab, %bb.w, %bb.v, %bb.u, %bb.p, %bb.n, %bb.m, %bb.l, %bb.k, %bb.f, %bb.g, %bb.e, %bb.c, %bb.b, %bb.a, %bb.ag, %bb.ac, %bb.q
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ], [ false, %bb.e ], [ true, %bb.f ], [ true, %bb.n ], [ true, %bb.q ], [ false, %bb.p ], [ false, %bb.ac ], [ true, %bb.w ], [ true, %bb.z ], [ true, %bb.ag ], [ false, %bb.ae ], [ false, %bb.ai ], [ true, %bb.aj ], [ true, %bb.g ], [ true, %bb.k ], [ true, %bb.l ], [ true, %bb.m ], [ true, %bb.u ], [ true, %bb.v ], [ true, %bb.ab ], [ true, %bb.aa ], [ true, %bb.ak ], [ false, %bb.ah ]
  ret i1 %.0
}

; Function Attrs: mustprogress nocallback nofree nounwind null_pointer_is_valid willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #11

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare i32 @strcmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @output_fields_list_options(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %0, i32 noundef 2, ptr noundef @.str.45) ; 0 uses
  %fwrite = tail call i64 @fwrite(ptr @.str.46, i64 58, i64 1, ptr %0) ; 0 uses
  %fwrite7 = tail call i64 @fwrite(ptr @.str.47, i64 77, i64 1, ptr %0) ; 0 uses
  %fwrite8 = tail call i64 @fwrite(ptr @.str.48, i64 101, i64 1, ptr %0) ; 0 uses
  %fwrite9 = tail call i64 @fwrite(ptr @.str.49, i64 113, i64 1, ptr %0) ; 0 uses
  %fwrite10 = tail call i64 @fwrite(ptr @.str.50, i64 104, i64 1, ptr %0) ; 0 uses
  %fwrite11 = tail call i64 @fwrite(ptr @.str.51, i64 119, i64 1, ptr %0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable
define zeroext i1 @output_fields_has_cols(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #12 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 50
  %i.b = load i8, ptr %i.a, align 2, !range !7, !noundef !8
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define void @output_fields_prime_edt(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %1, i64 8          ; 4 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @g_ptr_array_foreach(ptr noundef nonnull %i.c, ptr noundef @output_field_prime_edt, ptr noundef %0)
  %i.d = getelementptr i8, ptr %1, i64 16         ; 4 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %i.j = tail call ptr @g_ptr_array_new_full(i32 noundef %i.i, ptr noundef @dfilter_free_cb) ; 2 uses
  store ptr %i.j, ptr %i.d, align 8
  %i.k = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.l = getelementptr i8, ptr %i.k, i64 8
  %i.m = load i32, ptr %i.l, align 8
  %.not18 = icmp eq i32 %i.m, 0
  br i1 %.not18, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %i.n = phi ptr [ %i.w, %bb.e ], [ %i.k, %bb.c ]
  %.017 = phi i64 [ %i.v, %bb.e ], [ 0, %bb.c ]   ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr [8 x i8], ptr %i.o, i64 %.017
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store ptr null, ptr %i.a, align 8
  %i.r = call ptr @proto_registrar_get_byname(ptr noundef %i.q)
  %.not16 = icmp eq ptr %i.r, null
  br i1 %.not16, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  %i.s = call zeroext i1 @dfilter_compile_full(ptr noundef %i.q, ptr noundef nonnull %i.a, ptr noundef null, i32 noundef 38, ptr noundef @__func__.output_fields_prime_edt) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.t = load ptr, ptr %i.d, align 8
  %i.u = load ptr, ptr %i.a, align 8
  call void @g_ptr_array_add(ptr noundef %i.t, ptr noundef %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.v = add nuw nsw i64 %.017, 1                 ; 2 uses
  %i.w = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 8
  %i.y = load i32, ptr %i.x, align 8
  %i.z = zext i32 %i.y to i64
  %i.aa = icmp samesign ult i64 %i.v, %i.z
  br i1 %i.aa, label %.lr.ph, label %.loopexit.loopexit, !llvm.loop !61

.loopexit.loopexit:                               ; preds = %bb.e
  %.pre = load ptr, ptr %i.d, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.c, %bb.b
  %i.ab = phi ptr [ %.pre, %.loopexit.loopexit ], [ %i.j, %bb.c ], [ %i.e, %bb.b ]
  call void @g_ptr_array_foreach(ptr noundef %i.ab, ptr noundef @output_field_dfilter_prime_edt, ptr noundef %0)
  br label %bb.f

bb.f:                                             ; preds = %.loopexit, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @output_field_prime_edt(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @proto_registrar_get_byname(ptr noundef %0) ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.loopexit, label %.preheader14

.preheader14:                                     ; preds = %bb.a
  %i.b = getelementptr i8, ptr %i.a, i64 60
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %.not1215 = icmp eq i32 %i.c, -1
  br i1 %.not1215, label %.lr.ph18, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %.not1316 = icmp eq ptr %i.f, null
  br i1 %.not1316, label %.loopexit, label %.lr.ph18

.lr.ph18:                                         ; preds = %.preheader14, %.preheader
  %.0.lcssa22 = phi ptr [ %i.f, %.preheader ], [ %i.a, %.preheader14 ]
  %i.d = getelementptr i8, ptr %1, i64 16
  br label %bb.b

.lr.ph:                                           ; preds = %.preheader14, %.lr.ph
  %i.e = phi i32 [ %i.h, %.lr.ph ], [ %i.c, %.preheader14 ]
  %i.f = tail call ptr @proto_registrar_get_nth(i32 noundef %i.e) ; 3 uses
  %i.g = getelementptr i8, ptr %i.f, i64 60
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %.not12 = icmp eq i32 %i.h, -1
  br i1 %.not12, label %.preheader, label %.lr.ph, !llvm.loop !62

bb.b:                                             ; preds = %.lr.ph18, %bb.b
  %.117 = phi ptr [ %.0.lcssa22, %.lr.ph18 ], [ %i.m, %bb.b ] ; 2 uses
  %i.i = load ptr, ptr %i.d, align 8
  %i.j = getelementptr i8, ptr %.117, i64 48
  %i.k = load i32, ptr %i.j, align 8
  tail call void @proto_tree_prime_with_hfid_print(ptr noundef %i.i, i32 noundef %i.k)
  %i.l = getelementptr i8, ptr %.117, i64 64
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not13 = icmp eq ptr %i.m, null
  br i1 %.not13, label %.loopexit, label %bb.b, !llvm.loop !63

.loopexit:                                        ; preds = %bb.b, %.preheader, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @g_ptr_array_new_full(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @dfilter_free_cb(ptr noundef %0) #0 {
bb.a:
  tail call void @dfilter_free(ptr noundef %0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_registrar_get_byname(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @dfilter_compile_full(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @output_field_dfilter_prime_edt(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @epan_dissect_prime_with_dfilter(ptr noundef %1, ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid sspstrong uwtable
define void @write_fields_preamble(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #7 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !7, !noundef !8
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %fwrite = tail call i64 @fwrite(ptr @.str.52, i64 3, i64 1, ptr %1) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !range !7, !noundef !8
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.c
  %i.f = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.h = getelementptr i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8
  %.not14 = icmp eq i32 %i.i, 0
  br i1 %.not14, label %._crit_edge, label %bb.d

bb.d:                                             ; preds = %.preheader
  %i.j = getelementptr i8, ptr %0, i64 2
  %i.k = load ptr, ptr %i.g, align 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i32 @fputs(ptr noundef %i.l, ptr noundef %1) ; 0 uses
  %i.n = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.o = getelementptr i8, ptr %i.n, i64 8
  %i.p = load i32, ptr %i.o, align 8
  %i.q = icmp ugt i32 %i.p, 1
  br i1 %i.q, label %.peel.next, label %._crit_edge

.peel.next:                                       ; preds = %bb.d, %.peel.next
  %i.r = phi ptr [ %i.aa, %.peel.next ], [ %i.n, %bb.d ]
  %.013 = phi i64 [ %i.z, %.peel.next ], [ 1, %bb.d ] ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr [8 x i8], ptr %i.s, i64 %.013
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load i8, ptr %i.j, align 2
  %i.w = sext i8 %i.v to i32
  %i.x = tail call i32 @fputc(i32 noundef %i.w, ptr noundef %1) ; 0 uses
  %i.y = tail call i32 @fputs(ptr noundef %i.u, ptr noundef %1) ; 0 uses
  %i.z = add nuw nsw i64 %.013, 1                 ; 2 uses
  %i.aa = load ptr, ptr %i.f, align 8             ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = zext i32 %i.ac to i64
  %i.ae = icmp samesign ult i64 %i.z, %i.ad
  br i1 %i.ae, label %.peel.next, label %._crit_edge, !llvm.loop !64

._crit_edge:                                      ; preds = %.peel.next, %bb.d, %.preheader
  %i.af = tail call i32 @fputc(i32 noundef 10, ptr noundef %1) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %._crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare noundef i32 @fputc(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable
define void @write_fields_finale(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readnone captures(none) %1) local_unnamed_addr #13 {
bb.a:
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define ptr @get_node_field_value(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr i8, ptr %i.a, i64 48
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = load i32, ptr @hf_text_only, align 4
  %i.e = icmp eq i32 %i.c, %i.d
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 32
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not55 = icmp eq ptr %i.g, null
  br i1 %.not55, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.g)
  br label %g_strdup_inline.exit81

bb.d:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %1, i64 128
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call fastcc ptr @get_field_hex_value(ptr noundef %i.j, ptr noundef %0)
  br label %g_strdup_inline.exit81

bb.e:                                             ; preds = %bb.a
  %i.l = load i32, ptr @proto_data, align 4
  %i.m = icmp eq i32 %i.c, %i.l
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr i8, ptr %1, i64 128
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call fastcc ptr @get_field_hex_value(ptr noundef %i.o, ptr noundef %0)
  br label %g_strdup_inline.exit81

bb.g:                                             ; preds = %bb.e
  %i.q = getelementptr i8, ptr %i.a, i64 16
  %i.r = load i32, ptr %i.q, align 8
  switch i32 %i.r, label %bb.v [
    i32 1, label %bb.h
    i32 0, label %bb.k
    i32 31, label %bb.l
    i32 30, label %bb.l
  ]

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not53 = icmp eq ptr %i.t, null
  br i1 %.not53, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.u = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.t)
  br label %g_strdup_inline.exit81

bb.j:                                             ; preds = %bb.h
  %i.v = getelementptr i8, ptr %i.a, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noalias ptr @g_strdup(ptr noundef %i.w)
  br label %g_strdup_inline.exit81

bb.k:                                             ; preds = %bb.g
  %i.y = tail call noalias dereferenceable_or_null(2) ptr @g_malloc(i64 noundef 2) #27 ; 2 uses
  store i16 49, ptr %i.y, align 1
  br label %g_strdup_inline.exit81

bb.l:                                             ; preds = %bb.g, %bb.g
  %i.z = getelementptr i8, ptr %0, i64 48         ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = tail call ptr @fvalue_get_bytes_data(ptr noundef %i.aa) ; 6 uses
  %.not = icmp eq ptr %i.ab, null
  br i1 %.not, label %bb.s, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = load ptr, ptr %i.z, align 8
  %i.ad = tail call i64 @fvalue_length2(ptr noundef %i.ac)
  %i.ae = mul i64 %i.ad, 3
  %i.af = tail call noalias ptr @wmem_alloc(ptr noundef null, i64 noundef %i.ae) #28 ; 7 uses
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = getelementptr i8, ptr %i.ag, i64 20
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = load ptr, ptr %i.z, align 8
  %i.ak = tail call i64 @fvalue_length2(ptr noundef %i.aj) ; 5 uses
  switch i32 %i.ai, label %bb.r [
    i32 8, label %bb.n
    i32 9, label %bb.o
    i32 10, label %bb.p
    i32 11, label %bb.q
  ]

bb.n:                                             ; preds = %bb.m
  %i.al = tail call ptr @bytes_to_hexstr_punct(ptr noundef %i.af, ptr noundef nonnull %i.ab, i64 noundef %i.ak, i8 noundef signext 46)
  br label %g_strdup_inline.exit64

bb.o:                                             ; preds = %bb.m
  %i.am = tail call ptr @bytes_to_hexstr_punct(ptr noundef %i.af, ptr noundef nonnull %i.ab, i64 noundef %i.ak, i8 noundef signext 45)
  br label %g_strdup_inline.exit64

bb.p:                                             ; preds = %bb.m
  %i.an = tail call ptr @bytes_to_hexstr_punct(ptr noundef %i.af, ptr noundef nonnull %i.ab, i64 noundef %i.ak, i8 noundef signext 58)
  br label %g_strdup_inline.exit64

bb.q:                                             ; preds = %bb.m
  %i.ao = tail call ptr @bytes_to_hexstr_punct(ptr noundef %i.af, ptr noundef nonnull %i.ab, i64 noundef %i.ak, i8 noundef signext 32)
  br label %g_strdup_inline.exit64

bb.r:                                             ; preds = %bb.m
  %i.ap = tail call ptr @bytes_to_hexstr(ptr noundef %i.af, ptr noundef nonnull %i.ab, i64 noundef %i.ak)
  br label %g_strdup_inline.exit64

g_strdup_inline.exit64:                           ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  %.045 = phi ptr [ %i.ap, %bb.r ], [ %i.al, %bb.n ], [ %i.am, %bb.o ], [ %i.an, %bb.p ], [ %i.ao, %bb.q ]
  store i8 0, ptr %.045, align 1
  %i.aq = tail call noalias ptr @g_strdup(ptr noundef %i.af)
  tail call void @wmem_free(ptr noundef null, ptr noundef %i.af)
  br label %g_strdup_inline.exit81

bb.s:                                             ; preds = %bb.l
  %i.ar = load ptr, ptr %0, align 8
  %i.as = getelementptr i8, ptr %i.ar, i64 20
  %i.at = load i32, ptr %i.as, align 4
  %i.au = and i32 %i.at, 2048
  %.not52 = icmp eq i32 %i.au, 0
  br i1 %.not52, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.av = tail call noalias dereferenceable_or_null(7) ptr @g_malloc(i64 noundef 7) #27 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(7) %i.av, ptr noundef align 1 dereferenceable(7) @.str.54, i64 noundef 7, i1 noundef false) #23
  br label %g_strdup_inline.exit81

bb.u:                                             ; preds = %bb.s
  %i.aw = tail call noalias dereferenceable_or_null(10) ptr @g_malloc(i64 noundef 10) #27 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(10) %i.aw, ptr noundef align 1 dereferenceable(10) @.str.55, i64 noundef 10, i1 noundef false) #23
  br label %g_strdup_inline.exit81

bb.v:                                             ; preds = %bb.g
  %i.ax = getelementptr i8, ptr %0, i64 48
  %i.ay = load ptr, ptr %i.ax, align 8
  %i.az = getelementptr i8, ptr %i.a, i64 20
  %i.ba = load i32, ptr %i.az, align 4
  %i.bb = tail call ptr @fvalue_to_string_repr(ptr noundef null, ptr noundef %i.ay, i32 noundef 0, i32 noundef %i.ba) ; 3 uses
  %.not54 = icmp eq ptr %i.bb, null
  br i1 %.not54, label %bb.w, label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.v
  %i.bc = tail call noalias ptr @g_strdup(ptr noundef nonnull %i.bb)
  tail call void @wmem_free(ptr noundef null, ptr noundef nonnull %i.bb)
  br label %g_strdup_inline.exit81

bb.w:                                             ; preds = %bb.v
  %i.bd = getelementptr i8, ptr %1, i64 128
  %i.be = load ptr, ptr %i.bd, align 8
  %i.bf = tail call fastcc ptr @get_field_hex_value(ptr noundef %i.be, ptr noundef %0)
  br label %g_strdup_inline.exit81

g_strdup_inline.exit81:                           ; preds = %bb.u, %bb.t, %bb.k, %bb.j, %bb.i, %bb.c, %g_strdup_inline.exit, %bb.w, %g_strdup_inline.exit64, %bb.f, %bb.d
  %.1 = phi ptr [ %i.aw, %bb.u ], [ %i.k, %bb.d ], [ %i.p, %bb.f ], [ %i.bc, %g_strdup_inline.exit ], [ %i.bf, %bb.w ], [ %i.h, %bb.c ], [ %i.u, %bb.i ], [ %i.y, %bb.k ], [ %i.aq, %g_strdup_inline.exit64 ], [ %i.av, %bb.t ], [ %i.x, %bb.j ]
  ret ptr %.1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc ptr @get_field_hex_value(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %g_strdup_inline.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 12         ; 5 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = tail call i32 @tvb_captured_length_remaining(ptr noundef nonnull %i.b, i32 noundef %i.f)
  %i.h = icmp ugt i32 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noalias dereferenceable_or_null(22) ptr @g_malloc(i64 noundef 22) #27 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(22) %i.i, ptr noundef align 1 dereferenceable(22) @.str.80, i64 noundef 22, i1 noundef false) #23
  br label %g_strdup_inline.exit

bb.d:                                             ; preds = %bb.b
  %.not16.i.i = icmp eq ptr %0, null
  br i1 %.not16.i.i, label %g_strdup_inline.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.01117.i.i = phi ptr [ %i.o, %bb.e ], [ %0, %bb.d ] ; 2 uses
  %i.j = load ptr, ptr %.01117.i.i, align 8       ; 3 uses
  %i.k = load ptr, ptr %i.a, align 8
  %i.l = tail call ptr @get_data_source_tvb(ptr noundef %i.j)
  %i.m = icmp eq ptr %i.k, %i.l
  br i1 %i.m, label %get_field_data_source.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.n = getelementptr i8, ptr %.01117.i.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i, label %g_strdup_inline.exit, label %.lr.ph.i.i, !llvm.loop !0

get_field_data_source.exit.i:                     ; preds = %.lr.ph.i.i
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %g_strdup_inline.exit, label %bb.f

bb.f:                                             ; preds = %get_field_data_source.exit.i
  %i.p = tail call ptr @get_data_source_tvb(ptr noundef nonnull %i.j) ; 2 uses
  %i.q = load i32, ptr %i.e, align 8
  %i.r = tail call i32 @tvb_captured_length_remaining(ptr noundef %i.p, i32 noundef %i.q) ; 2 uses
  %i.s = icmp slt i32 %i.r, 0
  br i1 %i.s, label %g_strdup_inline.exit, label %get_field_data.exit

get_field_data.exit:                              ; preds = %bb.f
  %i.t = load i32, ptr %i.c, align 4
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.t, i32 %i.r)
  %i.u = load i32, ptr %i.e, align 8
  %i.v = tail call ptr @tvb_get_ptr(ptr noundef %i.p, i32 noundef %i.u, i32 noundef %spec.select.i) ; 2 uses
  %.not25 = icmp eq ptr %i.v, null
  br i1 %.not25, label %g_strdup_inline.exit, label %bb.g

bb.g:                                             ; preds = %get_field_data.exit
  %i.w = load i32, ptr %i.c, align 4
  %i.x = shl i32 %i.w, 1                          ; 2 uses
  %i.y = or disjoint i32 %i.x, 1
  %i.z = zext i32 %i.y to i64                     ; 2 uses
  %i.aa = tail call noalias ptr @g_malloc(i64 noundef %i.z) #27 ; 4 uses
  %i.ab = zext i32 %i.x to i64
  %i.ac = getelementptr i8, ptr %i.aa, i64 %i.ab
  store i8 0, ptr %i.ac, align 1
  %i.ad = load i32, ptr %i.c, align 4
  %.not32 = icmp eq i32 %i.ad, 0
  br i1 %.not32, label %g_strdup_inline.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.g ] ; 2 uses
  %.031 = phi ptr [ %i.al, %.lr.ph ], [ %i.aa, %bb.g ] ; 2 uses
  %i.ae = phi i64 [ %i.ak, %.lr.ph ], [ 0, %bb.g ] ; 2 uses
  %i.af = tail call i64 @llvm.usub.sat.i64(i64 %i.z, i64 %i.ae)
  %i.ag = getelementptr i8, ptr %i.v, i64 %indvars.iv
  %i.ah = load i8, ptr %i.ag, align 1
  %i.ai = zext i8 %i.ah to i32
  %i.aj = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %.031, i64 noundef 3, i32 noundef 2, i64 noundef %i.af, ptr noundef @.str.109, i32 noundef %i.ai) ; 0 uses
  %i.ak = add nuw nsw i64 %i.ae, 2
  %i.al = getelementptr i8, ptr %.031, i64 2
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.am = load i32, ptr %i.c, align 4
  %i.an = zext i32 %i.am to i64
  %i.ao = icmp samesign ult i64 %indvars.iv.next, %i.an
  br i1 %i.ao, label %.lr.ph, label %g_strdup_inline.exit, !llvm.loop !66

g_strdup_inline.exit:                             ; preds = %bb.e, %.lr.ph, %bb.g, %bb.d, %get_field_data_source.exit.i, %bb.f, %bb.c, %get_field_data.exit, %bb.a
  %.022 = phi ptr [ null, %get_field_data.exit ], [ null, %bb.a ], [ null, %bb.d ], [ %i.i, %bb.c ], [ %i.aa, %bb.g ], [ null, %bb.f ], [ null, %get_field_data_source.exit.i ], [ %i.aa, %.lr.ph ], [ null, %bb.e ]
  ret ptr %.022
}

; Function Attrs: null_pointer_is_valid
declare ptr @fvalue_get_bytes_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(1)
declare noalias ptr @wmem_alloc(ptr noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: null_pointer_is_valid
declare i64 @fvalue_length2(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @bytes_to_hexstr_punct(ptr noundef, ptr noundef, i64 noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @bytes_to_hexstr(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @fvalue_to_string_repr(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define noalias noundef ptr @output_fields_new() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(56) ptr @g_malloc(i64 noundef 56) #27 ; 6 uses
  store <4 x i8> <i8 0, i8 0, i8 9, i8 97>, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %i.a, i64 4
  store i8 44, ptr %i.b, align 4
  %i.c = getelementptr i8, ptr %i.a, i64 8
  %i.d = getelementptr i8, ptr %i.a, i64 49
  tail call void @llvm.memset.p0.i64(ptr noundef align 8 dereferenceable(41) %i.c, i8 0, i64 41, i1 false)
  store i8 1, ptr %i.d, align 1
  %i.e = getelementptr i8, ptr %i.a, i64 50
  store i8 0, ptr %i.e, align 2
  ret ptr %i.a
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: null_pointer_is_valid
declare void @proto_item_fill_label(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strconcat(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tree_expanded(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @tvb_captured_length_remaining(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @pdml_write_field_hex_value(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %1, i64 40         ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %get_field_data.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %1, i64 12         ; 5 uses
  %i.d = load i32, ptr %i.c, align 4
  %i.e = getelementptr i8, ptr %1, i64 8          ; 3 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = tail call i32 @tvb_captured_length_remaining(ptr noundef nonnull %i.b, i32 noundef %i.f)
  %i.h = icmp ugt i32 %i.d, %i.g
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %0, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.j, i32 noundef 2, ptr noundef @.str.80) ; 0 uses
  br label %get_field_data.exit.thread

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not16.i.i = icmp eq ptr %i.m, null
  br i1 %.not16.i.i, label %get_field_data.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.01117.i.i = phi ptr [ %i.s, %bb.e ], [ %i.m, %bb.d ] ; 2 uses
  %i.n = load ptr, ptr %.01117.i.i, align 8       ; 3 uses
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = tail call ptr @get_data_source_tvb(ptr noundef %i.n)
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %get_field_data_source.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.r = getelementptr i8, ptr %.01117.i.i, i64 8
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i, label %get_field_data.exit.thread, label %.lr.ph.i.i, !llvm.loop !0

get_field_data_source.exit.i:                     ; preds = %.lr.ph.i.i
  %.not.i = icmp eq ptr %i.n, null
  br i1 %.not.i, label %get_field_data.exit.thread, label %bb.f

bb.f:                                             ; preds = %get_field_data_source.exit.i
  %i.t = tail call ptr @get_data_source_tvb(ptr noundef nonnull %i.n) ; 2 uses
  %i.u = load i32, ptr %i.e, align 8
  %i.v = tail call i32 @tvb_captured_length_remaining(ptr noundef %i.t, i32 noundef %i.u) ; 2 uses
  %i.w = icmp slt i32 %i.v, 0
  br i1 %i.w, label %get_field_data.exit.thread, label %get_field_data.exit

get_field_data.exit:                              ; preds = %bb.f
  %i.x = load i32, ptr %i.c, align 4
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.x, i32 %i.v)
  %i.y = load i32, ptr %i.e, align 8
  %i.z = tail call ptr @tvb_get_ptr(ptr noundef %i.t, i32 noundef %i.y, i32 noundef %spec.select.i) ; 2 uses
  %.not32 = icmp eq ptr %i.z, null
  br i1 %.not32, label %get_field_data.exit.thread, label %bb.g

bb.g:                                             ; preds = %get_field_data.exit
  %i.aa = load i32, ptr %i.c, align 4             ; 3 uses
  %i.ab = icmp ugt i32 %i.aa, 256
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ac = shl i32 %i.aa, 1
  %i.ad = or disjoint i32 %i.ac, 1
  %i.ae = zext i32 %i.ad to i64
  %i.af = tail call noalias ptr @g_malloc(i64 noundef %i.ae) #27 ; 2 uses
  %.pre = load i32, ptr %i.c, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ag = phi i32 [ %.pre, %bb.h ], [ %i.aa, %bb.g ]
  %.026 = phi ptr [ %i.af, %bb.h ], [ @pdml_write_field_hex_value.str_static, %bb.g ] ; 4 uses
  %.0 = phi ptr [ %i.af, %bb.h ], [ null, %bb.g ]
  %.not38 = icmp eq i32 %i.ag, 0
  br i1 %.not38, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.i, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.i ] ; 3 uses
  %i.ah = getelementptr i8, ptr %i.z, i64 %indvars.iv ; 2 uses
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = lshr i8 %i.ai, 4
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.ak
  %i.am = load i8, ptr %i.al, align 1
  %i.an = trunc nuw i64 %indvars.iv to i32
  %i.ao = shl i32 %i.an, 1                        ; 2 uses
  %i.ap = zext i32 %i.ao to i64
  %i.aq = getelementptr i8, ptr %.026, i64 %i.ap
  store i8 %i.am, ptr %i.aq, align 1
  %i.ar = load i8, ptr %i.ah, align 1
  %i.as = and i8 %i.ar, 15
  %i.at = zext nneg i8 %i.as to i64
  %i.au = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = or disjoint i32 %i.ao, 1
  %i.ax = zext i32 %i.aw to i64
  %i.ay = getelementptr i8, ptr %.026, i64 %i.ax
  store i8 %i.av, ptr %i.ay, align 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.az = load i32, ptr %i.c, align 4             ; 2 uses
  %i.ba = zext i32 %i.az to i64
  %i.bb = icmp samesign ult i64 %indvars.iv.next, %i.ba
  br i1 %i.bb, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !67

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %i.bc = shl i32 %i.az, 1
  %i.bd = zext i32 %i.bc to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.i
  %.lcssa = phi i64 [ 0, %bb.i ], [ %i.bd, %._crit_edge.loopexit ]
  %i.be = getelementptr i8, ptr %.026, i64 %.lcssa
  store i8 0, ptr %i.be, align 1
  %i.bf = getelementptr i8, ptr %0, i64 8
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = tail call i32 @fputs(ptr noundef %.026, ptr noundef %i.bg) ; 0 uses
  tail call void @g_free(ptr noundef %.0)
  br label %get_field_data.exit.thread

get_field_data.exit.thread:                       ; preds = %bb.e, %bb.d, %get_field_data_source.exit.i, %bb.f, %get_field_data.exit, %._crit_edge, %bb.a, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid
declare i32 @fvalue_type_ftenum(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @fvalue_get_sinteger(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @fvalue_get_uinteger(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i64 @fvalue_get_sinteger64(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i64 @fvalue_get_uinteger64(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn null_pointer_is_valid
declare void @ws_log_fatal_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #16

; Function Attrs: nounwind null_pointer_is_valid
declare i64 @strftime(ptr noundef, i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare i64 @g_strlcpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @json_dumper_value_string_noesc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_remove_all(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @g_hash_table_contains(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @g_slist_free_full(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @g_slist_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @write_json_proto_node_hex_dump(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 7 uses
  %i.c = getelementptr i8, ptr %1, i64 32         ; 8 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @json_dumper_begin_array(ptr noundef %i.d)
  tail call fastcc void @json_write_field_hex_value(ptr noundef %1, ptr noundef %i.b)
  %i.e = load ptr, ptr %i.c, align 8
  %i.f = getelementptr i8, ptr %i.b, i64 8
  %i.g = load i32, ptr %i.f, align 8
  %i.h = zext i32 %i.g to i64
  tail call void @json_dumper_value_int(ptr noundef %i.e, i64 noundef %i.h)
  %i.i = load ptr, ptr %i.c, align 8
  %i.j = getelementptr i8, ptr %i.b, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = zext i32 %i.k to i64
  tail call void @json_dumper_value_int(ptr noundef %i.i, i64 noundef %i.l)
  %i.m = load ptr, ptr %i.c, align 8
  %i.n = load ptr, ptr %i.b, align 8
  %i.o = getelementptr i8, ptr %i.n, i64 32
  %i.p = load i64, ptr %i.o, align 8
  tail call void @json_dumper_value_uint(ptr noundef %i.m, i64 noundef %i.p)
  %i.q = load ptr, ptr %i.c, align 8
  %i.r = getelementptr i8, ptr %i.b, i64 48
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call i32 @fvalue_type_ftenum(ptr noundef %i.s)
  %i.u = sext i32 %i.t to i64
  tail call void @json_dumper_value_int(ptr noundef %i.q, i64 noundef %i.u)
  %i.v = load ptr, ptr %1, align 8                ; 2 uses
  %i.w = getelementptr i8, ptr %1, i64 48         ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr i8, ptr %i.b, i64 40
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr i8, ptr %1, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ad = getelementptr i8, ptr %1, i64 56
  %i.ae = load i32, ptr %i.ad, align 8
  br label %get_field_data_source_cached.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %.not16.i.i = icmp eq ptr %i.v, null
  br i1 %.not16.i.i, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.af = getelementptr i8, ptr %i.b, i64 40      ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.018.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.ak, %bb.f ] ; 3 uses
  %.01117.i.i = phi ptr [ %i.v, %.lr.ph.i.i ], [ %i.am, %bb.f ] ; 2 uses
  %i.ag = load ptr, ptr %.01117.i.i, align 8      ; 3 uses
  %i.ah = load ptr, ptr %i.af, align 8
  %i.ai = tail call ptr @get_data_source_tvb(ptr noundef %i.ag)
  %i.aj = icmp eq ptr %i.ah, %i.ai
  br i1 %i.aj, label %get_field_data_source.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ak = add i32 %.018.i.i, 1
  %i.al = getelementptr i8, ptr %.01117.i.i, i64 8
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.am, null
  br i1 %.not.i.i, label %.loopexit, label %bb.e, !llvm.loop !0

get_field_data_source.exit.i:                     ; preds = %bb.e
  %.not21.i = icmp eq ptr %i.ag, null
  br i1 %.not21.i, label %.loopexit, label %bb.g

bb.g:                                             ; preds = %get_field_data_source.exit.i
  %i.an = load ptr, ptr %i.af, align 8
  %i.ao = getelementptr i8, ptr %1, i64 40
  store ptr %i.an, ptr %i.ao, align 8
  store ptr %i.ag, ptr %i.w, align 8
  %i.ap = getelementptr i8, ptr %1, i64 56
  store i32 %.018.i.i, ptr %i.ap, align 8
  br label %get_field_data_source_cached.exit

get_field_data_source_cached.exit:                ; preds = %bb.g, %bb.c
  %.0 = phi i32 [ %.018.i.i, %bb.g ], [ %i.ae, %bb.c ]
  %i.aq = load ptr, ptr %i.c, align 8
  %i.ar = zext i32 %.0 to i64
  tail call void @json_dumper_value_uint(ptr noundef %i.aq, i64 noundef %i.ar)
  br label %bb.h

.loopexit:                                        ; preds = %bb.f, %get_field_data_source.exit.i, %bb.d
  %i.as = load ptr, ptr %i.c, align 8
  tail call void @json_dumper_value_literal(ptr noundef %i.as, ptr noundef @.str.87, i64 noundef 4)
  br label %bb.h

bb.h:                                             ; preds = %.loopexit, %get_field_data_source_cached.exit
  %i.at = load ptr, ptr %i.c, align 8
  tail call void @json_dumper_end_array(ptr noundef %i.at)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @json_dumper_set_member_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @write_json_proto_node_value(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = load ptr, ptr %i.b, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 20
  %i.g = load i32, ptr %i.f, align 4
  %i.h = tail call ptr @fvalue_to_string_repr(ptr noundef null, ptr noundef %i.d, i32 noundef 2, i32 noundef %i.g) ; 2 uses
  %i.i = getelementptr i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  tail call void @json_dumper_value_string(ptr noundef %i.j, ptr noundef %i.h)
  tail call void @wmem_free(ptr noundef null, ptr noundef %i.h)
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @write_json_proto_node_filtered(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = load ptr, ptr %.val, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %i.d = load i32, ptr %i.c, align 8
  %i.e = load i32, ptr @hf_text_only, align 4
  %.not.i = icmp eq i32 %i.d, %i.e
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  br label %proto_node_to_json_key.exit
end_hunk_1
begin_hunk_2_@json_write_field_hex_value:bb.a
    i32 4, label %bb.d
    i32 5, label %bb.d
    i32 6, label %bb.d
    i32 7, label %bb.d
    i32 16, label %bb.e
    i32 17, label %bb.e
    i32 18, label %bb.e
    i32 19, label %bb.e
    i32 8, label %bb.f
    i32 9, label %bb.f
    i32 10, label %bb.f
    i32 11, label %bb.f
    i32 2, label %bb.f
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.h = getelementptr i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = load ptr, ptr %i.e, align 8
  %i.k = tail call i32 @fvalue_get_sinteger(ptr noundef %i.j)
  tail call void (ptr, ptr, ...) @json_dumper_value_anyf(ptr noundef %i.i, ptr noundef @.str.88, i32 noundef %i.k)
  br label %bb.u

bb.d:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.l = getelementptr i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = load ptr, ptr %i.e, align 8
  %i.o = tail call i32 @fvalue_get_uinteger(ptr noundef %i.n)
  tail call void (ptr, ptr, ...) @json_dumper_value_anyf(ptr noundef %i.m, ptr noundef @.str.88, i32 noundef %i.o)
  br label %bb.u

bb.e:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = load ptr, ptr %i.e, align 8
  %i.s = tail call i64 @fvalue_get_sinteger64(ptr noundef %i.r)
  tail call void (ptr, ptr, ...) @json_dumper_value_anyf(ptr noundef %i.q, ptr noundef @.str.89, i64 noundef %i.s)
  br label %bb.u

bb.f:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.t = getelementptr i8, ptr %0, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = load ptr, ptr %i.e, align 8
  %i.w = tail call i64 @fvalue_get_uinteger64(ptr noundef %i.v)
  tail call void (ptr, ptr, ...) @json_dumper_value_anyf(ptr noundef %i.u, ptr noundef @.str.89, i64 noundef %i.w)
  br label %bb.u

bb.g:                                             ; preds = %bb.b
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef @.str.58, i32 noundef 7, ptr noundef @.str.73, i64 noundef 2076, ptr noundef @__func__.json_write_field_hex_value, ptr noundef @.str.74) #25
  unreachable

bb.h:                                             ; preds = %bb.a
  %i.x = getelementptr i8, ptr %1, i64 40         ; 4 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not52 = icmp eq ptr %i.y, null
  br i1 %.not52, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %0, i64 32
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void @json_dumper_value_string_noesc(ptr noundef %i.aa, ptr noundef @.str.58, i64 noundef 0)
  br label %bb.u

bb.j:                                             ; preds = %bb.h
  %i.ab = getelementptr i8, ptr %1, i64 12        ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = getelementptr i8, ptr %1, i64 8         ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = tail call i32 @tvb_captured_length_remaining(ptr noundef nonnull %i.y, i32 noundef %i.ae)
  %i.ag = icmp ugt i32 %i.ac, %i.af
  br i1 %i.ag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ah = getelementptr i8, ptr %0, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8
  tail call void @json_dumper_value_string_noesc(ptr noundef %i.ai, ptr noundef @.str.80, i64 noundef 21)
  br label %bb.u

bb.l:                                             ; preds = %bb.j
  %i.aj = load ptr, ptr %0, align 8               ; 2 uses
  %i.ak = getelementptr i8, ptr %0, i64 48        ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load ptr, ptr %i.x, align 8
  %i.an = getelementptr i8, ptr %0, i64 40
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = icmp eq ptr %i.am, %i.ao
  br i1 %i.ap, label %get_field_data_source_cached.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %.not16.i.i.i = icmp eq ptr %i.aj, null
  br i1 %.not16.i.i.i, label %get_field_data_cached.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.n, %bb.o
  %.018.i.i.i = phi i32 [ %i.au, %bb.o ], [ 0, %bb.n ] ; 2 uses
  %.01117.i.i.i = phi ptr [ %i.aw, %bb.o ], [ %i.aj, %bb.n ] ; 2 uses
  %i.aq = load ptr, ptr %.01117.i.i.i, align 8    ; 4 uses
  %i.ar = load ptr, ptr %i.x, align 8
  %i.as = tail call ptr @get_data_source_tvb(ptr noundef %i.aq)
  %i.at = icmp eq ptr %i.ar, %i.as
  br i1 %i.at, label %get_field_data_source.exit.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph.i.i.i
  %i.au = add i32 %.018.i.i.i, 1
  %i.av = getelementptr i8, ptr %.01117.i.i.i, i64 8
  %i.aw = load ptr, ptr %i.av, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.aw, null
  br i1 %.not.i.i.i, label %get_field_data_cached.exit.thread, label %.lr.ph.i.i.i, !llvm.loop !0

get_field_data_source.exit.i.i:                   ; preds = %.lr.ph.i.i.i
  %.not21.i.i = icmp eq ptr %i.aq, null
  br i1 %.not21.i.i, label %get_field_data_cached.exit.thread, label %bb.p

bb.p:                                             ; preds = %get_field_data_source.exit.i.i
  %i.ax = load ptr, ptr %i.x, align 8
  %i.ay = getelementptr i8, ptr %0, i64 40
  store ptr %i.ax, ptr %i.ay, align 8
  store ptr %i.aq, ptr %i.ak, align 8
  %i.az = getelementptr i8, ptr %0, i64 56
  store i32 %.018.i.i.i, ptr %i.az, align 8
  br label %get_field_data_source_cached.exit.i

get_field_data_source_cached.exit.i:              ; preds = %bb.p, %bb.m
  %.0.i.i = phi ptr [ %i.aq, %bb.p ], [ %i.al, %bb.m ]
  %i.ba = tail call ptr @get_data_source_tvb(ptr noundef nonnull %.0.i.i) ; 2 uses
  %i.bb = load i32, ptr %i.ad, align 8
  %i.bc = tail call i32 @tvb_captured_length_remaining(ptr noundef %i.ba, i32 noundef %i.bb) ; 2 uses
  %i.bd = icmp slt i32 %i.bc, 0
  br i1 %i.bd, label %get_field_data_cached.exit.thread, label %get_field_data_cached.exit

get_field_data_cached.exit:                       ; preds = %get_field_data_source_cached.exit.i
  %i.be = load i32, ptr %i.ab, align 4
  %spec.select.i = tail call i32 @llvm.smin.i32(i32 %i.be, i32 %i.bc)
  %i.bf = load i32, ptr %i.ad, align 8
  %i.bg = tail call ptr @tvb_get_ptr(ptr noundef %i.ba, i32 noundef %i.bf, i32 noundef %spec.select.i) ; 7 uses
  %.not53 = icmp eq ptr %i.bg, null
  br i1 %.not53, label %get_field_data_cached.exit.thread, label %bb.q

bb.q:                                             ; preds = %get_field_data_cached.exit
  %i.bh = load i32, ptr %i.ab, align 4            ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.bi = icmp ult i32 %i.bh, 256
  br i1 %i.bi, label %.preheader, label %.new

.preheader:                                       ; preds = %bb.q
  %.not60 = icmp eq i32 %i.bh, 0
  br i1 %.not60, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count67 = zext nneg i32 %i.bh to i64 ; 2 uses
  %xtraiter83 = and i64 %wide.trip.count67, 1
  %i.bj = icmp eq i32 %i.bh, 1
  br i1 %i.bj, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter86 = and i64 %wide.trip.count67, 254
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv64 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next65.1, %.lr.ph ] ; 4 uses
  %niter87 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter87.next.1, %.lr.ph ]
  %i.bk = getelementptr i8, ptr %i.bg, i64 %indvars.iv64
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = zext i8 %i.bl to i32                    ; 2 uses
  %i.bn = lshr i32 %i.bm, 4
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = shl nuw nsw i64 %indvars.iv64, 1
  %i.bs = getelementptr i8, ptr %i.a, i64 %i.br   ; 2 uses
  store i8 %i.bq, ptr %i.bs, align 4
  %i.bt = and i32 %i.bm, 15
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.bu
  %i.bw = load i8, ptr %i.bv, align 1
  %i.bx = getelementptr i8, ptr %i.bs, i64 1
  store i8 %i.bw, ptr %i.bx, align 1
  %indvars.iv.next65 = or disjoint i64 %indvars.iv64, 1 ; 2 uses
  %i.by = getelementptr i8, ptr %i.bg, i64 %indvars.iv.next65
  %i.bz = load i8, ptr %i.by, align 1
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %i.cb = lshr i32 %i.ca, 4
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.cc
  %i.ce = load i8, ptr %i.cd, align 1
  %i.cf = shl nuw nsw i64 %indvars.iv.next65, 1
  %i.cg = getelementptr i8, ptr %i.a, i64 %i.cf   ; 2 uses
  store i8 %i.ce, ptr %i.cg, align 2
  %i.ch = and i32 %i.ca, 15
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.ci
  %i.ck = load i8, ptr %i.cj, align 1
  %i.cl = getelementptr i8, ptr %i.cg, i64 1
  store i8 %i.ck, ptr %i.cl, align 1
  %indvars.iv.next65.1 = add nuw nsw i64 %indvars.iv64, 2 ; 2 uses
  %niter87.next.1 = add i64 %niter87, 2           ; 2 uses
  %niter87.ncmp.1 = icmp eq i64 %niter87.next.1, %unroll_iter86
  br i1 %niter87.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !68

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod84.not = icmp eq i64 %xtraiter83, 0
  br i1 %lcmp.mod84.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv64.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next65.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod85 = trunc i32 %i.bh to i1
  tail call void @llvm.assume(i1 %lcmp.mod85)
  %i.cm = getelementptr i8, ptr %i.bg, i64 %indvars.iv64.epil.init
  %i.cn = load i8, ptr %i.cm, align 1
  %i.co = zext i8 %i.cn to i32                    ; 2 uses
  %i.cp = lshr i32 %i.co, 4
  %i.cq = zext nneg i32 %i.cp to i64
  %i.cr = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1
  %i.ct = shl nuw nsw i64 %indvars.iv64.epil.init, 1
  %i.cu = getelementptr i8, ptr %i.a, i64 %i.ct   ; 2 uses
  store i8 %i.cs, ptr %i.cu, align 2
  %i.cv = and i32 %i.co, 15
  %i.cw = zext nneg i32 %i.cv to i64
  %i.cx = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.cw
  %i.cy = load i8, ptr %i.cx, align 1
  %i.cz = getelementptr i8, ptr %i.cu, i64 1
  store i8 %i.cy, ptr %i.cz, align 1
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %i.da = getelementptr i8, ptr %0, i64 32
  %i.db = load ptr, ptr %i.da, align 8
  %i.dc = shl nuw nsw i32 %i.bh, 1
  %i.dd = zext nneg i32 %i.dc to i64
  call void @json_dumper_value_string_noesc(ptr noundef %i.db, ptr noundef nonnull %i.a, i64 noundef %i.dd)
  br label %bb.t

.new:                                             ; preds = %bb.q
  %i.de = shl i32 %i.bh, 1
  %i.df = zext i32 %i.de to i64                   ; 2 uses
  %i.dg = tail call noalias ptr @g_malloc(i64 noundef %i.df) #27 ; 8 uses
  %wide.trip.count = zext i32 %i.bh to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %unroll_iter = and i64 %wide.trip.count, 4294967294
  br label %bb.r

bb.r:                                             ; preds = %bb.r, %.new
  %indvars.iv = phi i64 [ 0, %.new ], [ %indvars.iv.next.1, %bb.r ] ; 4 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.1, %bb.r ]
  %i.dh = getelementptr i8, ptr %i.bg, i64 %indvars.iv
  %i.di = load i8, ptr %i.dh, align 1
  %i.dj = zext i8 %i.di to i32                    ; 2 uses
  %i.dk = lshr i32 %i.dj, 4
  %i.dl = zext nneg i32 %i.dk to i64
  %i.dm = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.dl
  %i.dn = load i8, ptr %i.dm, align 1
  %i.do = trunc nuw i64 %indvars.iv to i32
  %i.dp = shl i32 %i.do, 1                        ; 2 uses
  %i.dq = zext i32 %i.dp to i64
  %i.dr = getelementptr i8, ptr %i.dg, i64 %i.dq
  store i8 %i.dn, ptr %i.dr, align 1
  %i.ds = and i32 %i.dj, 15
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1
  %i.dw = or disjoint i32 %i.dp, 1
  %i.dx = zext i32 %i.dw to i64
  %i.dy = getelementptr i8, ptr %i.dg, i64 %i.dx
  store i8 %i.dv, ptr %i.dy, align 1
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.dz = getelementptr i8, ptr %i.bg, i64 %indvars.iv.next
  %i.ea = load i8, ptr %i.dz, align 1
  %i.eb = zext i8 %i.ea to i32                    ; 2 uses
  %i.ec = lshr i32 %i.eb, 4
  %i.ed = zext nneg i32 %i.ec to i64
  %i.ee = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1
  %i.eg = trunc nuw i64 %indvars.iv.next to i32
  %i.eh = shl i32 %i.eg, 1                        ; 2 uses
  %i.ei = zext i32 %i.eh to i64
  %i.ej = getelementptr i8, ptr %i.dg, i64 %i.ei
  store i8 %i.ef, ptr %i.ej, align 1
  %i.ek = and i32 %i.eb, 15
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1
  %i.eo = or disjoint i32 %i.eh, 1
  %i.ep = zext i32 %i.eo to i64
  %i.eq = getelementptr i8, ptr %i.dg, i64 %i.ep
  store i8 %i.en, ptr %i.eq, align 1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.unr-lcssa, label %bb.r, !llvm.loop !69

.unr-lcssa:                                       ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %bb.s, label %.epil.preheader

.epil.preheader:                                  ; preds = %.unr-lcssa
  %lcmp.mod82 = trunc i32 %i.bh to i1
  tail call void @llvm.assume(i1 %lcmp.mod82)
  %i.er = getelementptr i8, ptr %i.bg, i64 %indvars.iv.next.1
  %i.es = load i8, ptr %i.er, align 1
  %i.et = zext i8 %i.es to i32                    ; 2 uses
  %i.eu = lshr i32 %i.et, 4
  %i.ev = zext nneg i32 %i.eu to i64
  %i.ew = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.ev
  %i.ex = load i8, ptr %i.ew, align 1
  %i.ey = trunc nuw i64 %indvars.iv.next.1 to i32
  %i.ez = shl i32 %i.ey, 1                        ; 2 uses
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr i8, ptr %i.dg, i64 %i.fa
  store i8 %i.ex, ptr %i.fb, align 1
  %i.fc = and i32 %i.et, 15
  %i.fd = zext nneg i32 %i.fc to i64
  %i.fe = getelementptr i8, ptr @json_write_field_hex_value.hex, i64 %i.fd
  %i.ff = load i8, ptr %i.fe, align 1
  %i.fg = or disjoint i32 %i.ez, 1
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr i8, ptr %i.dg, i64 %i.fh
  store i8 %i.ff, ptr %i.fi, align 1
  br label %bb.s

bb.s:                                             ; preds = %.unr-lcssa, %.epil.preheader
  %i.fj = getelementptr i8, ptr %0, i64 32
  %i.fk = load ptr, ptr %i.fj, align 8
  tail call void @json_dumper_value_string_noesc(ptr noundef %i.fk, ptr noundef %i.dg, i64 noundef %i.df)
  tail call void @g_free(ptr noundef %i.dg)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.u

get_field_data_cached.exit.thread:                ; preds = %bb.o, %get_field_data_source.exit.i.i, %bb.n, %get_field_data_source_cached.exit.i, %get_field_data_cached.exit
  %i.fl = getelementptr i8, ptr %0, i64 32
  %i.fm = load ptr, ptr %i.fl, align 8
  tail call void @json_dumper_value_string_noesc(ptr noundef %i.fm, ptr noundef @.str.58, i64 noundef 0)
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %get_field_data_cached.exit.thread, %bb.k, %bb.i, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @json_dumper_value_int(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @json_dumper_value_uint(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @json_dumper_value_literal(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @write_json_proto_node(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 40
  %.val = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.d = load ptr, ptr %.val, align 8             ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 48
  %i.f = load i32, ptr %i.e, align 8
  %i.g = load i32, ptr @hf_text_only, align 4
  %.not.i = icmp eq i32 %i.f, %i.g
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %i.d, i64 8
  %i.i = load ptr, ptr %i.h, align 8
  br label %proto_node_to_json_key.exit

bb.c:                                             ; preds = %bb.a
  %i.j = getelementptr i8, ptr %.val, i64 32
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not6.i = icmp eq ptr %i.k, null
  %.str.58..i = select i1 %.not6.i, ptr @.str.58, ptr %i.k
  br label %proto_node_to_json_key.exit

proto_node_to_json_key.exit:                      ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.i, %bb.b ], [ %.str.58..i, %bb.c ] ; 3 uses
  %i.l = load i8, ptr %1, align 1
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %proto_node_to_json_key.exit
  %i.n = getelementptr i8, ptr %3, i64 32
  %i.o = load ptr, ptr %i.n, align 8
  tail call void @json_dumper_set_member_name(ptr noundef %i.o, ptr noundef %.0.i)
  br label %bb.j

bb.e:                                             ; preds = %proto_node_to_json_key.exit
  %i.p = tail call i64 @strlen(ptr noundef %.0.i) #24 ; 4 uses
  %i.q = tail call i64 @strlen(ptr noundef %1) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.r = add i64 %i.q, 1                          ; 2 uses
  %i.s = add i64 %i.r, %i.p                       ; 3 uses
  %i.t = icmp ult i64 %i.s, 257
  br i1 %i.t, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = tail call noalias ptr @g_malloc(i64 noundef %i.s) #27
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.v = phi i64 [ %i.s, %bb.f ], [ 256, %bb.e ]  ; 3 uses
  %i.w = phi ptr [ %i.u, %bb.f ], [ %i.a, %bb.e ] ; 5 uses
  %i.x = icmp ne i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.x)
  %i.y = call ptr @__memcpy_chk(ptr noundef %i.w, ptr noundef %.0.i, i64 noundef %i.p, i64 noundef %i.v) #23, !alias.scope !78 ; 0 uses
  %i.z = getelementptr i8, ptr %i.w, i64 %i.p
  %i.aa = call i64 @llvm.usub.sat.i64(i64 %i.v, i64 %i.p) ; 2 uses
  %i.ab = icmp ne i64 %i.aa, -1
  call void @llvm.assume(i1 %i.ab)
  %i.ac = call ptr @__memcpy_chk(ptr noundef %i.z, ptr noundef %1, i64 noundef %i.r, i64 noundef %i.aa) #23, !alias.scope !79 ; 0 uses
  %i.ad = getelementptr i8, ptr %3, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8
  call void @json_dumper_set_member_name(ptr noundef %i.ae, ptr noundef %i.w)
  %.not = icmp eq ptr %i.w, %i.a
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @g_free(ptr noundef %i.w)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  %i.af = getelementptr i8, ptr %0, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ai = load ptr, ptr %0, align 8
  call void %2(ptr noundef %i.ai, ptr noundef %3), !inline_history !76
  br label %write_json_proto_node_value_list.exit

bb.l:                                             ; preds = %bb.j
  %i.aj = getelementptr i8, ptr %3, i64 32        ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  call void @json_dumper_begin_array(ptr noundef %i.ak)
  %.not12.i = icmp eq ptr %0, null
  br i1 %.not12.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.l, %.lr.ph.i
  %.013.i = phi ptr [ %i.an, %.lr.ph.i ], [ %0, %bb.l ] ; 2 uses
  %i.al = load ptr, ptr %.013.i, align 8
  call void %2(ptr noundef %i.al, ptr noundef %3), !inline_history !76
  %i.am = getelementptr i8, ptr %.013.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %.not.i25 = icmp eq ptr %i.an, null
  br i1 %.not.i25, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !77

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.l
  %i.ao = load ptr, ptr %i.aj, align 8
  call void @json_dumper_end_array(ptr noundef %i.ao)
  br label %write_json_proto_node_value_list.exit

write_json_proto_node_value_list.exit:            ; preds = %bb.k, %._crit_edge.i
  ret void
}

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_ascii_strdown(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @g_slist_length(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc zeroext i1 @ek_check_protocolfilter(ptr noundef %0, ptr noundef %1, ptr nofree noundef writeonly captures(address_is_null) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  %i.c = icmp eq ptr %0, null
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.not.i26 = icmp eq ptr %2, null
  br i1 %.not.i26, label %check_protocolfilter.exit.thread, label %.sink.split.i

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq ptr %1, null
  br i1 %i.d, label %.thread, label %bb.d

.thread:                                          ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %.thread42

bb.d:                                             ; preds = %bb.c
  %i.e = call zeroext i1 @wmem_map_lookup_extended(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef null, ptr noundef nonnull %i.b) ; 2 uses
  %i.f = icmp ne ptr %2, null                     ; 2 uses
  %or.cond.i24 = and i1 %i.f, %i.e
  br i1 %or.cond.i24, label %bb.e, label %check_protocolfilter.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr %i.b, align 8
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = trunc i64 %i.h to i32
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.e, %bb.b
  %.sink.i = phi i32 [ %i.i, %bb.e ], [ 0, %bb.b ]
  store i32 %.sink.i, ptr %2, align 4
  br label %check_protocolfilter.exit.thread

check_protocolfilter.exit.thread:                 ; preds = %bb.b, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br label %bb.l

check_protocolfilter.exit:                        ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  br i1 %i.e, label %bb.l, label %bb.f

bb.f:                                             ; preds = %check_protocolfilter.exit
  %char0 = load i8, ptr %1, align 1
  %.not22 = icmp eq i8 %char0, 0
  br i1 %.not22, label %.thread42, label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %bb.f
  %i.j = call noalias ptr @g_strdup(ptr noundef nonnull %1) ; 5 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %g_strdup_inline.exit
  %.0 = phi i32 [ 0, %g_strdup_inline.exit ], [ %i.n, %bb.i ] ; 2 uses
  %i.k = sext i32 %.0 to i64
  %i.l = getelementptr i8, ptr %i.j, i64 %i.k     ; 2 uses
  %i.m = load i8, ptr %i.l, align 1
  switch i8 %i.m, label %bb.i [
    i8 0, label %bb.j
    i8 46, label %bb.h
  ]

bb.h:                                             ; preds = %bb.g
  store i8 95, ptr %i.l, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.n = add i32 %.0, 1
  br label %bb.g, !llvm.loop !80

.thread42:                                        ; preds = %bb.f, %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  br label %check_protocolfilter.exit32

bb.j:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.o = icmp eq ptr %i.j, null
  br i1 %i.o, label %check_protocolfilter.exit32, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = call zeroext i1 @wmem_map_lookup_extended(ptr noundef nonnull %0, ptr noundef nonnull %i.j, ptr noundef null, ptr noundef nonnull %i.a) ; 2 uses
  %or.cond.i27 = and i1 %i.f, %i.p
  br i1 %or.cond.i27, label %.sink.split.i29, label %check_protocolfilter.exit32

.sink.split.i29:                                  ; preds = %bb.k
  %i.q = load ptr, ptr %i.a, align 8
  %i.r = ptrtoint ptr %i.q to i64
  %i.s = trunc i64 %i.r to i32
  store i32 %i.s, ptr %2, align 4
  br label %check_protocolfilter.exit32

check_protocolfilter.exit32:                      ; preds = %.thread42, %bb.j, %bb.k, %.sink.split.i29
  %.01840 = phi ptr [ null, %bb.j ], [ null, %.thread42 ], [ %i.j, %bb.k ], [ %i.j, %.sink.split.i29 ]
  %.0.i28 = phi i1 [ false, %bb.j ], [ false, %.thread42 ], [ %i.p, %bb.k ], [ true, %.sink.split.i29 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  call void @g_free(ptr noundef %.01840)
  br label %bb.l

bb.l:                                             ; preds = %check_protocolfilter.exit.thread, %check_protocolfilter.exit, %check_protocolfilter.exit32
  %.019 = phi i1 [ %.0.i28, %check_protocolfilter.exit32 ], [ true, %check_protocolfilter.exit ], [ true, %check_protocolfilter.exit.thread ]
  ret i1 %.019
}

; Function Attrs: null_pointer_is_valid
declare ptr @proto_registrar_get_nth(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @g_hash_table_new_full(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @g_str_hash(ptr noundef) #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @ek_fill_attr(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %.02633 = load ptr, ptr %0, align 8             ; 2 uses
  %.not34 = icmp eq ptr %.02633, null
  br i1 %.not34, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr i8, ptr %2, i64 8          ; 4 uses
  br label %g_strdup_inline.exit

g_strdup_inline.exit:                             ; preds = %.lr.ph, %bb.i
  %.02635 = phi ptr [ %.02633, %.lr.ph ], [ %.026, %bb.i ] ; 7 uses
  %i.c = getelementptr i8, ptr %.02635, i64 40
  %i.d = load ptr, ptr %i.c, align 8              ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call ptr @g_hash_table_lookup(ptr noundef %1, ptr noundef %i.g)
  %i.i = call ptr @g_slist_append(ptr noundef %i.h, ptr noundef nonnull %.02635)
  %i.j = load ptr, ptr %i.d, align 8
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = call noalias ptr @g_strdup(ptr noundef %i.l)
  %i.n = call i32 @g_hash_table_insert(ptr noundef %1, ptr noundef %i.m, ptr noundef %i.i) ; 0 uses
  %i.o = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16
  %i.q = load i32, ptr %i.p, align 8
  %.not27 = icmp eq i32 %i.q, 1
  br i1 %.not27, label %bb.i, label %bb.b

bb.b:                                             ; preds = %g_strdup_inline.exit
  %i.r = load ptr, ptr %.02635, align 8
  %.not28 = icmp eq ptr %i.r, null
  br i1 %.not28, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not29 = icmp eq ptr %i.s, null
  br i1 %.not29, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4
  %i.t = getelementptr i8, ptr %i.o, i64 8
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = call fastcc zeroext i1 @ek_check_protocolfilter(ptr noundef nonnull %i.s, ptr noundef %i.u, ptr noundef nonnull %i.a)
  br i1 %i.v, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.w = load i32, ptr %i.a, align 4
  %i.x = and i32 %i.w, 1
  %.not30 = icmp eq i32 %i.x, 0
  br i1 %.not30, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.e
  call fastcc void @ek_fill_attr(ptr noundef nonnull %.02635, ptr noundef %1, ptr noundef %2)
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.y = load ptr, ptr %i.b, align 8
  store ptr null, ptr %i.b, align 8
  call fastcc void @ek_fill_attr(ptr noundef nonnull %.02635, ptr noundef %1, ptr noundef %2)
  store ptr %i.y, ptr %i.b, align 8
  br label %bb.g

bb.g:                                             ; preds = %.thread, %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  call fastcc void @ek_fill_attr(ptr noundef nonnull %.02635, ptr noundef %1, ptr noundef %2)
  br label %bb.i

bb.i:                                             ; preds = %g_strdup_inline.exit, %bb.b, %bb.g, %bb.h
  %i.z = getelementptr i8, ptr %.02635, i64 16
  %.026 = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not = icmp eq ptr %.026, null
  br i1 %.not, label %._crit_edge, label %g_strdup_inline.exit, !llvm.loop !81

._crit_edge:                                      ; preds = %bb.i, %bb.a
  ret void
}

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_iter_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare i32 @g_hash_table_iter_next(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @g_hash_table_iter_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @proto_find_first_finfo(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @abs_time_to_str_ex(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strescape(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare ptr @strstr(ptr noundef, ptr noundef captures(none)) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare ptr @xml_escape(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @hex_dump_buffer(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal zeroext i1 @print_hex_data_line(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = tail call zeroext i1 @print_line(ptr noundef %0, i32 noundef 0, ptr noundef %1)
  ret i1 %i.a
}

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @dfilter_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @proto_tree_prime_with_hfid_print(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @epan_dissect_prime_with_dfilter(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0,1)
declare noalias ptr @g_malloc0_n(i64 noundef, i64 noundef) local_unnamed_addr #18

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @dfilter_apply_full(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @format_field_values(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = ptrtoint ptr %1 to i64
  %i.c = add i64 %i.b, 4294967295
  %i.d = getelementptr i8, ptr %0, i64 32         ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = and i64 %i.c, 4294967295                 ; 3 uses
  %i.g = getelementptr [8 x i8], ptr %i.e, i64 %i.f
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = tail call ptr @g_ptr_array_new_with_free_func(ptr noundef @g_free)
  %i.k = load ptr, ptr %i.d, align 8
  %i.l = getelementptr [8 x i8], ptr %i.k, i64 %i.f
  store ptr %i.j, ptr %i.l, align 8
  %.pre = load ptr, ptr %i.d, align 8
  %.phi.trans.insert = getelementptr [8 x i8], ptr %.pre, i64 %i.f
  %.pre22 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.m = phi ptr [ %.pre22, %bb.c ], [ %i.h, %bb.b ] ; 6 uses
  %i.n = getelementptr i8, ptr %0, i64 3
  %i.o = load i8, ptr %i.n, align 1
  switch i8 %i.o, label %bb.k [
    i8 102, label %bb.e
    i8 108, label %bb.h
    i8 97, label %.critedge
  ]

bb.e:                                             ; preds = %bb.d
  %.not18 = icmp eq ptr %i.m, null
  br i1 %.not18, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = getelementptr i8, ptr %i.m, i64 8
  %i.q = load i32, ptr %i.p, align 8
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @g_free(ptr noundef nonnull %2)
  br label %bb.l

bb.h:                                             ; preds = %bb.d
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %.critedge, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr i8, ptr %i.m, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %.critedge, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @g_ptr_array_set_size(ptr noundef nonnull %i.m, i32 noundef 0)
  br label %.critedge

bb.k:                                             ; preds = %bb.d
  tail call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_fatal_full(ptr noundef @.str.58, i32 noundef 7, ptr noundef @.str.73, i64 noundef 2606, ptr noundef @__func__.format_field_values, ptr noundef @.str.74) #25
  unreachable

.critedge:                                        ; preds = %bb.h, %bb.e, %bb.i, %bb.j, %bb.f, %bb.d
  tail call void @g_ptr_array_add(ptr noundef %i.m, ptr noundef nonnull %2)
  br label %bb.l

bb.l:                                             ; preds = %bb.a, %.critedge, %bb.g
  ret void
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal void @proto_tree_get_node_field_values(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %1, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = load ptr, ptr %i.b, align 8
  %i.g = getelementptr i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call ptr @g_hash_table_lookup(ptr noundef %i.e, ptr noundef %i.h) ; 2 uses
  %.not14 = icmp eq ptr %i.i, null
  br i1 %.not14, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %1, align 8
  %i.k = getelementptr i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call ptr @get_node_field_value(ptr noundef nonnull %i.b, ptr noundef %i.l)
  tail call fastcc void @format_field_values(ptr noundef %i.j, ptr noundef nonnull %i.i, ptr noundef %i.m)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %i.n = load ptr, ptr %0, align 8
  %.not15 = icmp eq ptr %i.n, null
  br i1 %.not15, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @proto_tree_children_foreach(ptr noundef %0, ptr noundef @proto_tree_get_node_field_values, ptr noundef %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_new(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append_c(ptr noundef, i8 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_append(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @wmem_strbuf_get_str(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @wmem_strbuf_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @g_ptr_array_new_with_free_func(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare void @g_ptr_array_set_size(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare ptr @ws_escape_csv(ptr noundef, ptr noundef, i1 noundef zeroext, i8 noundef signext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nofree null_pointer_is_valid
declare i32 @__snprintf_chk(ptr noundef, i64 noundef, i32 noundef, i64 noundef, ptr noundef, ...) local_unnamed_addr #19

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr noundef readonly captures(none), i64 noundef, i64 noundef, ptr noundef captures(none)) local_unnamed_addr #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.usub.sat.i64(i64, i64) #22

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #22

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind null_pointer_is_valid willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sspstrong willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nocallback nofree nounwind null_pointer_is_valid willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind null_pointer_is_valid memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { null_pointer_is_valid allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #22 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #23 = { nounwind }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { noreturn }
attributes #26 = { allocsize(0,1) }
attributes #27 = { allocsize(0) }
attributes #28 = { allocsize(1) }

!llvm.module.flags = !{!1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = distinct !{!0, !9}
!1 = !{i32 8, !"cf-protection-return", i32 1}
!2 = !{i32 8, !"cf-protection-branch", i32 1}
!3 = !{i32 4, !"probe-stack", !"inline-asm"}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!7 = !{i8 0, i8 2}
!8 = !{}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
!14 = distinct !{!14, !9}
!15 = distinct !{!15, !9}
!16 = distinct !{!16, !9}
!17 = distinct !{!17, !9}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
!21 = distinct !{!21, !9}
!22 = distinct !{!22, !9}
!23 = !{ptr @process_ek_attrs}
!24 = distinct !{null}
!25 = distinct !{!25, i1 true, !"memcpy.inline"}
!26 = distinct !{!26, !25, !"memcpy.inline: argument 1"}
!27 = distinct !{!27, !25, !"memcpy.inline: argument 0"}
!28 = distinct !{!28, i1 true, !"memcpy.inline"}
!29 = distinct !{!29, !28, !"memcpy.inline: argument 1"}
!30 = distinct !{!30, !28, !"memcpy.inline: argument 0"}
!31 = distinct !{!31, i1 true, !"memcpy.inline"}
!32 = distinct !{!32, !31, !"memcpy.inline: argument 1"}
!33 = distinct !{!33, !31, !"memcpy.inline: argument 0"}
!34 = distinct !{!34, i1 true, !"memcpy.inline"}
!35 = distinct !{!35, !34, !"memcpy.inline: argument 1"}
!36 = distinct !{!36, !34, !"memcpy.inline: argument 0"}
!37 = distinct !{ptr @write_json_proto_node_dynamic, null}
!38 = distinct !{!38, !9}
!39 = distinct !{null}
!40 = distinct !{!40, !9}
!41 = distinct !{!41, !9}
!42 = !{!27, !26}
!43 = !{!30, !29}
!44 = !{!33, !32}
!45 = !{!36, !35}
!46 = distinct !{!46, !9}
!47 = distinct !{!47, !9}
!48 = distinct !{!48, !9}
!49 = distinct !{!49, !9}
!50 = distinct !{!50, !9}
!51 = distinct !{!51, !9}
!52 = distinct !{!52, !9}
!53 = distinct !{!53, !9}
!54 = distinct !{!54, !9}
!55 = distinct !{!55, !9}
!56 = distinct !{!56, !9}
!57 = distinct !{!57, !9}
!58 = distinct !{!58, !9}
!59 = distinct !{!59, !9}
!60 = distinct !{!60, !9}
!61 = distinct !{!61, !9}
!62 = distinct !{!62, !9}
!63 = distinct !{!63, !9}
!64 = distinct !{!64, !9, !65}
!65 = !{!"llvm.loop.peeled.count", i32 1}
!66 = distinct !{!66, !9}
!67 = distinct !{!67, !9}
!68 = distinct !{!68, !9}
!69 = distinct !{!69, !9}
!70 = distinct !{!70, i1 true, !"memcpy.inline"}
!71 = distinct !{!71, !70, !"memcpy.inline: argument 1"}
!72 = distinct !{!72, !70, !"memcpy.inline: argument 0"}
!73 = distinct !{!73, i1 true, !"memcpy.inline"}
!74 = distinct !{!74, !73, !"memcpy.inline: argument 1"}
!75 = distinct !{!75, !73, !"memcpy.inline: argument 0"}
!76 = distinct !{null}
!77 = distinct !{!77, !9}
!78 = !{!72, !71}
!79 = !{!75, !74}
!80 = distinct !{!80, !9}
!81 = distinct !{!81, !9}
end_hunk_2
