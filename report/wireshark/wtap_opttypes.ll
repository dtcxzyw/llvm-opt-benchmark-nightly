Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/wtap_opttypes?download=true
inline.NumInlined: 139
inline.NumDeleted: 17
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@wtap_block_get_nth_custom_binary_option_value:bb.a

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.r = load ptr, ptr %i.o, align 8              ; 4 uses
  %wide.trip.count65.i.i = zext i32 %i.q to i64   ; 4 uses
  switch i32 %1, label %.lr.ph.split.split.i.i [
    i32 2989, label %.lr.ph.split.us.i.i
    i32 2988, label %.lr.ph.split.split.us.i.i.preheader
    i32 19372, label %.lr.ph.split.split.us.i.i.preheader
    i32 19373, label %.lr.ph.split.split.us28.i.i
  ]

.lr.ph.split.split.us.i.i.preheader:              ; preds = %.lr.ph.i.i, %.lr.ph.i.i
  br label %.lr.ph.split.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %.lr.ph.i.i, %custom_option_matches_with_pen.exit.thread.us.i.i
  %indvars.iv57.i.i = phi i64 [ %indvars.iv.next58.i.i, %custom_option_matches_with_pen.exit.thread.us.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %.018.us.i.i = phi i32 [ %.1.us.i.i, %custom_option_matches_with_pen.exit.thread.us.i.i ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.s = getelementptr [32 x i8], ptr %i.r, i64 %indvars.iv57.i.i ; 3 uses
  %i.t = load i32, ptr %i.s, align 8
  %.not.i.us.i.i = icmp eq i32 %i.t, 2989
  br i1 %.not.i.us.i.i, label %bb.f, label %custom_option_matches_with_pen.exit.thread.us.i.i

bb.f:                                             ; preds = %.lr.ph.split.us.i.i
  %i.u = getelementptr i8, ptr %i.s, i64 8
  %i.v = load i32, ptr %i.u, align 8
  %.not13.i.us.i.i = icmp eq i32 %i.v, %2
  br i1 %.not13.i.us.i.i, label %custom_option_matches_with_pen.exit.us.i.i, label %custom_option_matches_with_pen.exit.thread.us.i.i

custom_option_matches_with_pen.exit.us.i.i:       ; preds = %bb.f
  %i.w = icmp eq i32 %.018.us.i.i, %3
  br i1 %i.w, label %wtap_block_get_nth_custom_option_with_pen.exit.i, label %bb.g

bb.g:                                             ; preds = %custom_option_matches_with_pen.exit.us.i.i
  %i.x = add i32 %.018.us.i.i, 1
  br label %custom_option_matches_with_pen.exit.thread.us.i.i

custom_option_matches_with_pen.exit.thread.us.i.i: ; preds = %bb.g, %bb.f, %.lr.ph.split.us.i.i
  %.1.us.i.i = phi i32 [ %i.x, %bb.g ], [ %.018.us.i.i, %.lr.ph.split.us.i.i ], [ %.018.us.i.i, %bb.f ]
  %indvars.iv.next58.i.i = add nuw nsw i64 %indvars.iv57.i.i, 1 ; 2 uses
  %exitcond61.not.i.i = icmp eq i64 %indvars.iv.next58.i.i, %wide.trip.count65.i.i
  br i1 %exitcond61.not.i.i, label %wtap_block_get_nth_custom_option_with_pen_common.exit.thread, label %.lr.ph.split.us.i.i, !llvm.loop !23

.lr.ph.split.split.us.i.i:                        ; preds = %.lr.ph.split.split.us.i.i.preheader, %custom_option_matches_with_pen.exit.thread.us24.i.i
  %indvars.iv52.i.i = phi i64 [ %indvars.iv.next53.i.i, %custom_option_matches_with_pen.exit.thread.us24.i.i ], [ 0, %.lr.ph.split.split.us.i.i.preheader ] ; 2 uses
  %.018.us19.i.i = phi i32 [ %.1.us25.i.i, %custom_option_matches_with_pen.exit.thread.us24.i.i ], [ 0, %.lr.ph.split.split.us.i.i.preheader ] ; 4 uses
  %i.y = getelementptr [32 x i8], ptr %i.r, i64 %indvars.iv52.i.i ; 3 uses
  %i.z = load i32, ptr %i.y, align 8
  %.not.i.us21.i.i = icmp eq i32 %i.z, %1
  br i1 %.not.i.us21.i.i, label %bb.h, label %custom_option_matches_with_pen.exit.thread.us24.i.i

bb.h:                                             ; preds = %.lr.ph.split.split.us.i.i
  %i.aa = getelementptr i8, ptr %i.y, i64 8
  %i.ab = load i32, ptr %i.aa, align 8
  %.not12.i.us22.i.i = icmp eq i32 %i.ab, %2
  br i1 %.not12.i.us22.i.i, label %custom_option_matches_with_pen.exit.us23.i.i, label %custom_option_matches_with_pen.exit.thread.us24.i.i

custom_option_matches_with_pen.exit.us23.i.i:     ; preds = %bb.h
  %i.ac = icmp eq i32 %.018.us19.i.i, %3
  br i1 %i.ac, label %wtap_block_get_nth_custom_option_with_pen.exit.i, label %bb.i

bb.i:                                             ; preds = %custom_option_matches_with_pen.exit.us23.i.i
  %i.ad = add i32 %.018.us19.i.i, 1
  br label %custom_option_matches_with_pen.exit.thread.us24.i.i

custom_option_matches_with_pen.exit.thread.us24.i.i: ; preds = %bb.i, %bb.h, %.lr.ph.split.split.us.i.i
  %.1.us25.i.i = phi i32 [ %i.ad, %bb.i ], [ %.018.us19.i.i, %.lr.ph.split.split.us.i.i ], [ %.018.us19.i.i, %bb.h ]
  %indvars.iv.next53.i.i = add nuw nsw i64 %indvars.iv52.i.i, 1 ; 2 uses
  %exitcond56.not.i.i = icmp eq i64 %indvars.iv.next53.i.i, %wide.trip.count65.i.i
  br i1 %exitcond56.not.i.i, label %wtap_block_get_nth_custom_option_with_pen_common.exit.thread, label %.lr.ph.split.split.us.i.i, !llvm.loop !23

.lr.ph.split.split.us28.i.i:                      ; preds = %.lr.ph.i.i, %custom_option_matches_with_pen.exit.thread.us34.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %custom_option_matches_with_pen.exit.thread.us34.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %.018.us29.i.i = phi i32 [ %.1.us35.i.i, %custom_option_matches_with_pen.exit.thread.us34.i.i ], [ 0, %.lr.ph.i.i ] ; 4 uses
  %i.ae = getelementptr [32 x i8], ptr %i.r, i64 %indvars.iv.i.i ; 3 uses
  %i.af = load i32, ptr %i.ae, align 8
  %.not.i.us31.i.i = icmp eq i32 %i.af, 19373
  br i1 %.not.i.us31.i.i, label %bb.j, label %custom_option_matches_with_pen.exit.thread.us34.i.i

bb.j:                                             ; preds = %.lr.ph.split.split.us28.i.i
  %i.ag = getelementptr i8, ptr %i.ae, i64 8
  %i.ah = load i32, ptr %i.ag, align 8
  %.not13.i.us32.i.i = icmp eq i32 %i.ah, %2
  br i1 %.not13.i.us32.i.i, label %custom_option_matches_with_pen.exit.us33.i.i, label %custom_option_matches_with_pen.exit.thread.us34.i.i

custom_option_matches_with_pen.exit.us33.i.i:     ; preds = %bb.j
  %i.ai = icmp eq i32 %.018.us29.i.i, %3
  br i1 %i.ai, label %wtap_block_get_nth_custom_option_with_pen.exit.i, label %bb.k

bb.k:                                             ; preds = %custom_option_matches_with_pen.exit.us33.i.i
  %i.aj = add i32 %.018.us29.i.i, 1
  br label %custom_option_matches_with_pen.exit.thread.us34.i.i

custom_option_matches_with_pen.exit.thread.us34.i.i: ; preds = %bb.k, %bb.j, %.lr.ph.split.split.us28.i.i
  %.1.us35.i.i = phi i32 [ %i.aj, %bb.k ], [ %.018.us29.i.i, %.lr.ph.split.split.us28.i.i ], [ %.018.us29.i.i, %bb.j ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count65.i.i
  br i1 %exitcond.not.i.i, label %wtap_block_get_nth_custom_option_with_pen_common.exit.thread, label %.lr.ph.split.split.us28.i.i, !llvm.loop !23

.lr.ph.split.split.i.i:                           ; preds = %.lr.ph.i.i, %custom_option_matches_with_pen.exit.thread.i.i
  %indvars.iv62.i.i = phi i64 [ %indvars.iv.next63.i.i, %custom_option_matches_with_pen.exit.thread.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %.018.i.i = phi i32 [ %.1.i.i, %custom_option_matches_with_pen.exit.thread.i.i ], [ 0, %.lr.ph.i.i ] ; 3 uses
  %i.ak = getelementptr [32 x i8], ptr %i.r, i64 %indvars.iv62.i.i ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8
  %.not.i.i.i = icmp eq i32 %i.al, %1
  br i1 %.not.i.i.i, label %custom_option_matches_with_pen.exit.i.i, label %custom_option_matches_with_pen.exit.thread.i.i

custom_option_matches_with_pen.exit.i.i:          ; preds = %.lr.ph.split.split.i.i
  %i.am = icmp eq i32 %.018.i.i, %3
  br i1 %i.am, label %wtap_block_get_nth_custom_option_with_pen.exit.i, label %bb.l

bb.l:                                             ; preds = %custom_option_matches_with_pen.exit.i.i
  %i.an = add i32 %.018.i.i, 1
  br label %custom_option_matches_with_pen.exit.thread.i.i

custom_option_matches_with_pen.exit.thread.i.i:   ; preds = %bb.l, %.lr.ph.split.split.i.i
  %.1.i.i = phi i32 [ %i.an, %bb.l ], [ %.018.i.i, %.lr.ph.split.split.i.i ]
  %indvars.iv.next63.i.i = add nuw nsw i64 %indvars.iv62.i.i, 1 ; 2 uses
  %exitcond66.not.i.i = icmp eq i64 %indvars.iv.next63.i.i, %wide.trip.count65.i.i
  br i1 %exitcond66.not.i.i, label %wtap_block_get_nth_custom_option_with_pen_common.exit.thread, label %.lr.ph.split.split.i.i, !llvm.loop !23

wtap_block_get_nth_custom_option_with_pen.exit.i: ; preds = %custom_option_matches_with_pen.exit.us33.i.i, %custom_option_matches_with_pen.exit.us23.i.i, %custom_option_matches_with_pen.exit.us.i.i, %custom_option_matches_with_pen.exit.i.i
  %.us-phi.i.i = phi ptr [ %i.y, %custom_option_matches_with_pen.exit.us23.i.i ], [ %i.ak, %custom_option_matches_with_pen.exit.i.i ], [ %i.s, %custom_option_matches_with_pen.exit.us.i.i ], [ %i.ae, %custom_option_matches_with_pen.exit.us33.i.i ] ; 2 uses
  %i.ao = getelementptr i8, ptr %.us-phi.i.i, i64 8
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %wtap_block_get_nth_custom_option_with_pen_common.exit.thread, label %wtap_block_get_nth_custom_option_with_pen_common.exit

wtap_block_get_nth_custom_option_with_pen_common.exit: ; preds = %wtap_block_get_nth_custom_option_with_pen.exit.i
  %i.aq = getelementptr i8, ptr %.us-phi.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(16) %4, ptr noundef align 8 dereferenceable(16) %i.aq, i64 16, i1 false)
  br label %wtap_block_get_nth_custom_option_with_pen_common.exit.thread

wtap_block_get_nth_custom_option_with_pen_common.exit.thread: ; preds = %custom_option_matches_with_pen.exit.thread.us34.i.i, %custom_option_matches_with_pen.exit.thread.us24.i.i, %custom_option_matches_with_pen.exit.thread.us.i.i, %custom_option_matches_with_pen.exit.thread.i.i, %bb.e, %wtap_block_get_nth_custom_option_with_pen.exit.i, %bb.d, %bb.b, %bb.a, %bb.c, %wtap_block_get_nth_custom_option_with_pen_common.exit
  %.0 = phi i32 [ 0, %wtap_block_get_nth_custom_option_with_pen_common.exit ], [ -2, %custom_option_matches_with_pen.exit.thread.us24.i.i ], [ -2, %custom_option_matches_with_pen.exit.thread.i.i ], [ -2, %bb.e ], [ -2, %custom_option_matches_with_pen.exit.thread.us.i.i ], [ -3, %bb.c ], [ -2, %wtap_block_get_nth_custom_option_with_pen.exit.i ], [ -4, %bb.d ], [ -1, %bb.b ], [ -6, %bb.a ], [ -2, %custom_option_matches_with_pen.exit.thread.us34.i.i ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define range(i32 -6, 1) i32 @wtap_block_set_if_filter_option_value(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %.sroa.523 = alloca i64, align 8                ; 6 uses
  %.sroa.9 = alloca ptr, align 8                  ; 5 uses
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %if_filter_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = zext i32 %1 to i64
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call ptr @g_hash_table_lookup(ptr noundef %i.d, ptr noundef %i.f) ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %if_filter_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.g, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %.not.i = icmp eq i32 %i.j, 9
  br i1 %.not.i, label %bb.d, label %if_filter_free.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.g, i64 20
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 1
  %.not15.i = icmp eq i32 %i.m, 0
  br i1 %.not15.i, label %bb.e, label %if_filter_free.exit

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %if_filter_free.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.r = load ptr, ptr %i.o, align 8
  %wide.trip.count.i.i = zext i32 %i.q to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %if_filter_free.exit, label %bb.g, !llvm.loop !11

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 2 uses
  %i.s = getelementptr [32 x i8], ptr %i.r, i64 %indvars.iv.i.i ; 7 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp eq i32 %i.t, %1
  br i1 %i.u, label %wtap_block_get_option.exit.i, label %bb.f

wtap_block_get_option.exit.i:                     ; preds = %bb.g
  %i.v = getelementptr i8, ptr %i.s, i64 8        ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %if_filter_free.exit, label %wtap_block_get_option_common.exit

wtap_block_get_option_common.exit:                ; preds = %wtap_block_get_option.exit.i
  %.sroa.0.0.copyload = load i32, ptr %i.v, align 8
  %.sroa.413.0..sroa_idx = getelementptr i8, ptr %i.s, i64 16
  %.sroa.413.0.copyload = load ptr, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr i8, ptr %i.s, i64 24
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.523)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !24)
  store i64 0, ptr %.sroa.523, align 8
  store ptr null, ptr %.sroa.9, align 8
  %i.x = load i32, ptr %2, align 8, !noalias !24  ; 2 uses
  switch i32 %i.x, label %if_filter_dup.exit [
    i32 0, label %bb.h
    i32 1, label %bb.i
  ]

bb.h:                                             ; preds = %wtap_block_get_option_common.exit
  %i.y = getelementptr i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !noalias !24
  %i.aa = tail call noalias ptr @g_strdup(ptr noundef %i.z)
  br label %.sink.split.i

bb.i:                                             ; preds = %wtap_block_get_option_common.exit
  %i.ab = getelementptr i8, ptr %2, i64 8
  %i.ac = load i32, ptr %i.ab, align 8, !noalias !24 ; 2 uses
  store i32 %i.ac, ptr %.sroa.523, align 8, !alias.scope !24
  %i.ad = getelementptr i8, ptr %2, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !24
  %i.af = zext i32 %i.ac to i64
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = tail call ptr @g_memdup2(ptr noundef %i.ae, i64 noundef %i.ag) #18
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.i, %bb.h
  %.sink7.i.sroa.phi = phi ptr [ %.sroa.9, %bb.i ], [ %.sroa.523, %bb.h ]
  %.sink.i = phi ptr [ %i.ah, %bb.i ], [ %i.aa, %bb.h ]
  store ptr %.sink.i, ptr %.sink7.i.sroa.phi, align 8, !alias.scope !24
  %.sroa.523.0..sroa.523.0..sroa.523.0.copyload.pre = load i64, ptr %.sroa.523, align 8
  %.sroa.9.0..sroa.9.0..sroa.9.0.copyload.pre = load ptr, ptr %.sroa.9, align 8
  br label %if_filter_dup.exit

if_filter_dup.exit:                               ; preds = %wtap_block_get_option_common.exit, %.sink.split.i
  %.sroa.9.0..sroa.9.0.copyload = phi ptr [ null, %wtap_block_get_option_common.exit ], [ %.sroa.9.0..sroa.9.0..sroa.9.0.copyload.pre, %.sink.split.i ]
  %.sroa.523.0..sroa.523.0.copyload = phi i64 [ 0, %wtap_block_get_option_common.exit ], [ %.sroa.523.0..sroa.523.0..sroa.523.0.copyload.pre, %.sink.split.i ]
  store i32 %i.x, ptr %i.v, align 8
  %.sroa.5.0..sroa_idx21 = getelementptr i8, ptr %i.s, i64 12
  store i32 0, ptr %.sroa.5.0..sroa_idx21, align 4
  %.sroa.523.0..sroa_idx = getelementptr i8, ptr %i.s, i64 16
  store i64 %.sroa.523.0..sroa.523.0.copyload, ptr %.sroa.523.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr i8, ptr %i.s, i64 24
  store ptr %.sroa.9.0..sroa.9.0.copyload, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.523)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  switch i32 %.sroa.0.0.copyload, label %if_filter_free.exit [
    i32 0, label %.sink.split.i7
    i32 1, label %bb.j
  ]

bb.j:                                             ; preds = %if_filter_dup.exit
  br label %.sink.split.i7

.sink.split.i7:                                   ; preds = %bb.j, %if_filter_dup.exit
  %.sink.i8.sroa.phi.sroa.speculated = phi ptr [ %.sroa.5.0.copyload, %bb.j ], [ %.sroa.413.0.copyload, %if_filter_dup.exit ]
  tail call void @g_free(ptr noundef %.sink.i8.sroa.phi.sroa.speculated)
  br label %if_filter_free.exit

if_filter_free.exit:                              ; preds = %bb.f, %bb.e, %wtap_block_get_option.exit.i, %bb.d, %bb.c, %bb.b, %bb.a, %.sink.split.i7, %if_filter_dup.exit
  %.0 = phi i32 [ 0, %.sink.split.i7 ], [ 0, %if_filter_dup.exit ], [ -6, %bb.a ], [ -2, %bb.e ], [ -2, %wtap_block_get_option.exit.i ], [ -4, %bb.d ], [ -3, %bb.c ], [ -1, %bb.b ], [ -2, %bb.f ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define range(i32 -6, 1) i32 @wtap_block_get_if_filter_option_value(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, ptr nofree noundef writeonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %wtap_block_get_option_common.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = zext i32 %1 to i64
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call ptr @g_hash_table_lookup(ptr noundef %i.d, ptr noundef %i.f) ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %wtap_block_get_option_common.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.g, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %.not.i = icmp eq i32 %i.j, 9
  br i1 %.not.i, label %bb.d, label %wtap_block_get_option_common.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.g, i64 20
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 1
  %.not15.i = icmp eq i32 %i.m, 0
  br i1 %.not15.i, label %bb.e, label %wtap_block_get_option_common.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %wtap_block_get_option_common.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.r = load ptr, ptr %i.o, align 8
  %wide.trip.count.i.i = zext i32 %i.q to i64
  br label %bb.g

bb.f:                                             ; preds = %bb.g
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %wtap_block_get_option_common.exit.thread, label %bb.g, !llvm.loop !11

bb.g:                                             ; preds = %bb.f, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.f ] ; 2 uses
  %i.s = getelementptr [32 x i8], ptr %i.r, i64 %indvars.iv.i.i ; 2 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp eq i32 %i.t, %1
  br i1 %i.u, label %wtap_block_get_option.exit.i, label %bb.f

wtap_block_get_option.exit.i:                     ; preds = %bb.g
  %i.v = getelementptr i8, ptr %i.s, i64 8        ; 2 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %wtap_block_get_option_common.exit.thread, label %wtap_block_get_option_common.exit

wtap_block_get_option_common.exit:                ; preds = %wtap_block_get_option.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false)
  br label %wtap_block_get_option_common.exit.thread

wtap_block_get_option_common.exit.thread:         ; preds = %bb.f, %bb.e, %wtap_block_get_option.exit.i, %bb.d, %bb.c, %bb.b, %bb.a, %wtap_block_get_option_common.exit
  %.0 = phi i32 [ 0, %wtap_block_get_option_common.exit ], [ -6, %bb.a ], [ -2, %bb.e ], [ -2, %wtap_block_get_option.exit.i ], [ -4, %bb.d ], [ -3, %bb.c ], [ -1, %bb.b ], [ -2, %bb.f ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define range(i32 -6, 1) i32 @wtap_block_set_nth_packet_verdict_option_value(ptr nofree noundef readonly captures(address_is_null) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  br i1 %i.a, label %wtap_packet_verdict_free.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = zext i32 %1 to i64
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call ptr @g_hash_table_lookup(ptr noundef %i.d, ptr noundef %i.f) ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %wtap_packet_verdict_free.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr i8, ptr %i.g, i64 16
  %i.j = load i32, ptr %i.i, align 8
  %.not.i = icmp eq i32 %i.j, 10
  br i1 %.not.i, label %bb.d, label %wtap_packet_verdict_free.exit

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %i.g, i64 20
  %i.l = load i32, ptr %i.k, align 4
  %i.m = and i32 %i.l, 1
  %.not16.i = icmp eq i32 %i.m, 0
  br i1 %.not16.i, label %wtap_packet_verdict_free.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8              ; 2 uses
  %.not.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i, label %wtap_packet_verdict_free.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.e
  %i.r = load ptr, ptr %i.o, align 8
  %wide.trip.count.i.i = zext i32 %i.q to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.i, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.i ] ; 2 uses
  %.016.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i, %bb.i ] ; 3 uses
  %i.s = getelementptr [32 x i8], ptr %i.r, i64 %indvars.iv.i.i ; 3 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp eq i32 %i.t, %1
  br i1 %i.u, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.v = icmp eq i32 %.016.i.i, %2
  br i1 %i.v, label %wtap_block_get_nth_option.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = add i32 %.016.i.i, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f
  %.1.i.i = phi i32 [ %i.w, %bb.h ], [ %.016.i.i, %bb.f ]
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %wtap_packet_verdict_free.exit, label %bb.f, !llvm.loop !22

wtap_block_get_nth_option.exit.i:                 ; preds = %bb.g
  %i.x = getelementptr i8, ptr %i.s, i64 8        ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %wtap_packet_verdict_free.exit, label %wtap_block_get_nth_option_common.exit

wtap_block_get_nth_option_common.exit:            ; preds = %wtap_block_get_nth_option.exit.i
  %.sroa.0.0.copyload = load i32, ptr %i.x, align 8
  %.sroa.48.0..sroa_idx = getelementptr i8, ptr %i.s, i64 16 ; 2 uses
  %.sroa.48.0.copyload = load ptr, ptr %.sroa.48.0..sroa_idx, align 8
  %i.z = load i32, ptr %3, align 8                ; 2 uses
  switch i32 %i.z, label %packet_verdict_dup.exit [
    i32 0, label %bb.j
    i32 1, label %bb.k
    i32 2, label %bb.l
  ]

bb.j:                                             ; preds = %wtap_block_get_nth_option_common.exit
  %i.aa = getelementptr i8, ptr %3, i64 8         ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = getelementptr i8, ptr %i.ab, i64 8
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = zext i32 %i.ae to i64
  %i.ag = tail call ptr @g_memdup2(ptr noundef %i.ac, i64 noundef %i.af) #18
  %i.ah = load ptr, ptr %i.aa, align 8
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = zext i32 %i.aj to i64
  %i.al = tail call ptr @g_byte_array_new_take(ptr noundef %i.ag, i64 noundef %i.ak)
  br label %packet_verdict_dup.exit

bb.k:                                             ; preds = %wtap_block_get_nth_option_common.exit
  %i.am = getelementptr i8, ptr %3, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = inttoptr i64 %i.an to ptr
  br label %packet_verdict_dup.exit

bb.l:                                             ; preds = %wtap_block_get_nth_option_common.exit
  %i.ap = getelementptr i8, ptr %3, i64 8
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = inttoptr i64 %i.aq to ptr
  br label %packet_verdict_dup.exit

packet_verdict_dup.exit:                          ; preds = %wtap_block_get_nth_option_common.exit, %bb.j, %bb.k, %bb.l
  %.sroa.37.0.i = phi ptr [ null, %wtap_block_get_nth_option_common.exit ], [ %i.al, %bb.j ], [ %i.ao, %bb.k ], [ %i.ar, %bb.l ]
  store i32 %i.z, ptr %i.x, align 8
  store ptr %.sroa.37.0.i, ptr %.sroa.48.0..sroa_idx, align 8
  %cond.i = icmp eq i32 %.sroa.0.0.copyload, 0
  br i1 %cond.i, label %bb.m, label %wtap_packet_verdict_free.exit

bb.m:                                             ; preds = %packet_verdict_dup.exit
  %i.as = tail call ptr @g_byte_array_free(ptr noundef %.sroa.48.0.copyload, i32 noundef 1) ; 0 uses
  br label %wtap_packet_verdict_free.exit

wtap_packet_verdict_free.exit:                    ; preds = %bb.i, %bb.e, %wtap_block_get_nth_option.exit.i, %bb.d, %bb.b, %bb.a, %bb.c, %bb.m, %packet_verdict_dup.exit
  %.0 = phi i32 [ 0, %bb.m ], [ 0, %packet_verdict_dup.exit ], [ -3, %bb.c ], [ -2, %bb.e ], [ -2, %wtap_block_get_nth_option.exit.i ], [ -4, %bb.d ], [ -1, %bb.b ], [ -6, %bb.a ], [ -2, %bb.i ]
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
end_hunk_0
