Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/file?download=true
inline.NumInlined: 76
inline.NumDeleted: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@cf_read:bb.a
  br i1 %1, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  br i1 %.not8.i127, label %cf_callback_invoke.exit132, label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %bb.at, %.lr.ph.i128
  %.09.i129 = phi ptr [ %.0.i130, %.lr.ph.i128 ], [ %.07.i126, %bb.at ] ; 2 uses
  %i.ed = load ptr, ptr %.09.i129, align 8        ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8
  %i.ef = getelementptr i8, ptr %i.ed, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8
  call void %i.ee(i32 noundef 6, ptr noundef %0, ptr noundef %i.eg), !inline_history !8
  %i.eh = getelementptr i8, ptr %.09.i129, i64 8
  %.0.i130 = load ptr, ptr %i.eh, align 8         ; 2 uses
  %.not.i131 = icmp eq ptr %.0.i130, null
  br i1 %.not.i131, label %cf_callback_invoke.exit132, label %.lr.ph.i128, !llvm.loop !9

bb.au:                                            ; preds = %bb.as
  br i1 %.not8.i127, label %cf_callback_invoke.exit132, label %.lr.ph.i135

.lr.ph.i135:                                      ; preds = %bb.au, %.lr.ph.i135
  %.09.i136 = phi ptr [ %.0.i137, %.lr.ph.i135 ], [ %.07.i126, %bb.au ] ; 2 uses
  %i.ei = load ptr, ptr %.09.i136, align 8        ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = getelementptr i8, ptr %i.ei, i64 8
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.ej(i32 noundef 4, ptr noundef %0, ptr noundef %i.el), !inline_history !8
  %i.em = getelementptr i8, ptr %.09.i136, i64 8
  %.0.i137 = load ptr, ptr %i.em, align 8         ; 2 uses
  %.not.i138 = icmp eq ptr %.0.i137, null
  br i1 %.not.i138, label %cf_callback_invoke.exit132, label %.lr.ph.i135, !llvm.loop !9

cf_callback_invoke.exit132:                       ; preds = %.lr.ph.i135, %.lr.ph.i128, %bb.au, %bb.at
  %i.en = load i32, ptr %i.dz, align 8
  %.not113 = icmp eq i32 %i.en, 0
  br i1 %.not113, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %cf_callback_invoke.exit132
  %i.eo = call zeroext i1 @packet_list_select_row_from_data(ptr noundef null) ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %cf_callback_invoke.exit132
  %.0..0..0..0.21 = load volatile i8, ptr %i.g, align 1, !range !10, !noundef !11
  %i.ep = trunc nuw i8 %.0..0..0..0.21 to i1
  br i1 %i.ep, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  call void @cf_close(ptr noundef %0)
  store i32 0, ptr %i.t, align 4
  br label %bb.bg

bb.ay:                                            ; preds = %bb.aw
  %i.eq = load i32, ptr %i.t, align 4             ; 2 uses
  %.not114 = icmp eq i32 %i.eq, 0
  br i1 %.not114, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.er = icmp eq i32 %i.eq, 2
  call fastcc void @rescan_packets(ptr noundef %0, ptr noundef null, ptr noundef null, i1 noundef zeroext %i.er)
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.es = load i8, ptr %i.at, align 2, !range !10, !noundef !11
  %i.et = trunc nuw i8 %i.es to i1
  br i1 %i.et, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  call void (i32, ptr, ptr, ptr, ...) @simple_message_box(i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7)
  br label %bb.bg

bb.bc:                                            ; preds = %bb.ba
  %i.eu = load i32, ptr %i.a, align 4             ; 2 uses
  %.not115 = icmp eq i32 %i.eu, 0
  br i1 %.not115, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ev = load ptr, ptr %i.b, align 8
  call void @report_cfile_read_failure(ptr noundef null, i32 noundef %i.eu, ptr noundef %i.ev)
  br label %bb.bg

bb.be:                                            ; preds = %bb.bc
  %.0..0..0..0.42 = load volatile i8, ptr %i.c, align 1, !range !10, !noundef !11
  %i.ew = trunc nuw i8 %.0..0..0..0.42 to i1
  br i1 %i.ew, label %bb.bf, label %bb.bg

bb.bf:                                            ; preds = %bb.be
  %i.ex = load i32, ptr @max_records, align 4
  call void (i32, ptr, ptr, ptr, ...) @simple_message_box(i32 noundef 1, ptr noundef null, ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.9, i32 noundef %i.ex)
  br label %bb.bg

bb.bg:                                            ; preds = %bb.be, %bb.bf, %bb.bd, %bb.bb, %bb.ax
  %.0 = phi i32 [ 2, %bb.ax ], [ 1, %bb.bb ], [ 1, %bb.bd ], [ 1, %bb.bf ], [ 0, %bb.be ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.b
  %.1 = phi i32 [ 1, %bb.b ], [ %.0, %bb.bg ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret i32 %.1
}

; Function Attrs: null_pointer_is_valid
declare ptr @g_timer_new() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @ws_log_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @dfilter_compile_full(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @tap_load_main_filter(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @union_of_tap_listener_flags() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @have_filtering_tap_listeners() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @postdissectors_want_hfids() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare noalias ptr @g_filename_display_basename(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i64 @g_get_monotonic_time() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @epan_dissect_init(ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @tap_listeners_require_columns() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @dfilter_requires_columns(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i64 @wtap_file_size(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @fifo_string_cache_init(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @g_checksum_new(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @wtap_file_get_num_dsbs(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @g_timer_start(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @except_setup_try(ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @wtap_read(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i64 @wtap_read_so_far(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc float @calc_progbar_val(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #1 {
bb.a:
  %i.a = sitofp i64 %2 to float                   ; 2 uses
  %i.b = sitofp i64 %1 to float
  %i.c = fdiv float %i.a, %i.b                    ; 4 uses
  %i.d = fcmp ogt float %i.c, 1.000000e+00
  br i1 %i.d, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 232
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call i64 @wtap_file_size(ptr noundef %i.f, ptr noundef null) ; 4 uses
  %i.h = icmp sgt i64 %i.g, -1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = uitofp nneg i64 %i.g to float
  %i.j = fdiv float %i.a, %i.i
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.018 = phi float [ %i.j, %bb.d ], [ %i.c, %bb.c ], [ %i.c, %bb.b ] ; 2 uses
  %.0 = phi i64 [ %i.g, %bb.d ], [ %i.g, %bb.c ], [ %1, %bb.b ]
  %i.k = fcmp ogt float %.018, 1.000000e+00
  %spec.store.select = select i1 %i.k, float 1.000000e+00, float %.018
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %.119 = phi float [ %spec.store.select, %bb.e ], [ %i.c, %bb.a ]
  %.1 = phi i64 [ %.0, %bb.e ], [ %1, %bb.a ]
  %i.l = tail call ptr @format_size_wmem(ptr noundef null, i64 noundef %2, i32 noundef 1, i16 noundef zeroext 2) ; 2 uses
  %i.m = tail call ptr @format_size_wmem(ptr noundef null, i64 noundef %.1, i32 noundef 1, i16 noundef zeroext 2) ; 2 uses
  %i.n = tail call i32 (ptr, i64, i32, i64, ptr, ...) @__snprintf_chk(ptr noundef %3, i64 noundef 100, i32 noundef 2, i64 noundef -1, ptr noundef nonnull @.str.53, ptr noundef %i.l, ptr noundef %i.m) ; 0 uses
  tail call void @g_free(ptr noundef %i.l)
  tail call void @g_free(ptr noundef %i.m)
  ret float %.119
}

; Function Attrs: null_pointer_is_valid
declare ptr @delayed_create_progress_dlg(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, float noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare double @g_timer_elapsed(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @update_progress_dlg(ptr noundef, float noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @packets_bar_update() local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @add_new_record_to_record_list(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #1 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %8 = alloca %struct._frame_data, align 8        ; 6 uses
  %9 = alloca %struct.epan_dissect, align 8       ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.c = load i32, ptr %1, align 8
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %1, i64 56
  %i.f = load i32, ptr %i.e, align 8              ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 %i.f, ptr %i.a, align 4
  %i.g = getelementptr i8, ptr %0, i64 64
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %.not.i54 = icmp eq i32 %i.j, 0
  br i1 %.not.i54, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.k = load ptr, ptr %i.h, align 8
  %wide.trip.count.i = zext i32 %i.j to i64
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.d, !llvm.loop !13

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.l = getelementptr [4 x i8], ptr %i.k, i64 %indvars.iv.i
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, %i.f
  br i1 %i.n, label %cf_add_encapsulation_type.exit, label %bb.c

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.o = call ptr @g_array_append_vals(ptr noundef %i.h, ptr noundef nonnull %i.a, i32 noundef 1) ; 0 uses
  br label %cf_add_encapsulation_type.exit

cf_add_encapsulation_type.exit:                   ; preds = %bb.d, %._crit_edge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.e:                                             ; preds = %cf_add_encapsulation_type.exit, %bb.a
  %i.p = getelementptr i8, ptr %0, i64 72         ; 3 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = add i32 %i.q, 1
  %i.s = getelementptr i8, ptr %0, i64 728
  %i.t = load i32, ptr %i.s, align 8
  call void @frame_data_init(ptr noundef nonnull %8, i32 noundef %i.r, ptr noundef %1, i64 noundef %5, i32 noundef %i.t)
  %i.u = getelementptr i8, ptr %0, i64 144        ; 4 uses
  %i.v = load ptr, ptr %i.u, align 8
  %.not = icmp eq ptr %i.v, null
  br i1 %.not, label %.critedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #22
  %i.w = load ptr, ptr %0, align 8
  call void @epan_dissect_init(ptr noundef nonnull %9, ptr noundef %i.w, i1 noundef zeroext true, i1 noundef zeroext false)
  %i.x = load ptr, ptr %i.u, align 8
  call void @epan_dissect_prime_with_dfilter(ptr noundef nonnull %9, ptr noundef %i.x)
  %i.y = load ptr, ptr %i.u, align 8
  %i.z = call zeroext i1 @dfilter_requires_columns(ptr noundef %i.y)
  %i.aa = getelementptr i8, ptr %0, i64 288
  %spec.select = select i1 %i.z, ptr %i.aa, ptr null
  %i.ab = getelementptr i8, ptr %0, i64 48
  %i.ac = load i16, ptr %i.ab, align 8
  %i.ad = zext i16 %i.ac to i32
  call void @epan_dissect_run(ptr noundef nonnull %9, i32 noundef %i.ad, ptr noundef %1, ptr noundef nonnull %8, ptr noundef %spec.select)
  %i.ae = load ptr, ptr %i.u, align 8
  %i.af = call zeroext i1 @dfilter_apply_edt(ptr noundef %i.ae, ptr noundef nonnull %9)
  call void @epan_dissect_cleanup(ptr noundef nonnull %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %i.af, label %.critedge, label %bb.p

.critedge:                                        ; preds = %bb.e, %bb.f
  %i.ag = getelementptr i8, ptr %0, i64 264
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = call ptr @frame_data_sequence_add(ptr noundef %i.ah, ptr noundef nonnull %8) ; 2 uses
  %i.aj = load i32, ptr %i.p, align 8
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.p, align 8
  %i.al = getelementptr i8, ptr %1, i64 216       ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8            ; 2 uses
  %.not49 = icmp eq ptr %i.am, null
  br i1 %.not49, label %bb.j, label %bb.g

bb.g:                                             ; preds = %.critedge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store i64 0, ptr %i.b, align 8
  %i.an = call i32 @wtap_block_count_option(ptr noundef nonnull %i.am, i32 noundef 1)
  %i.ao = zext i32 %i.an to i64
  %i.ap = getelementptr i8, ptr %0, i64 80        ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8
  %i.ar = add i64 %i.aq, %i.ao
  store i64 %i.ar, ptr %i.ap, align 8
  %i.as = load ptr, ptr %i.al, align 8
  %i.at = call i32 @wtap_block_get_uint64_option_value(ptr noundef %i.as, i32 noundef 4, ptr noundef nonnull %i.b)
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.av = getelementptr i8, ptr %0, i64 108
  store i8 1, ptr %i.av, align 4
  %i.aw = load i64, ptr %i.b, align 8
  %i.ax = trunc i64 %i.aw to i32
  %i.ay = getelementptr i8, ptr %0, i64 112       ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = add i32 %i.az, %i.ax
  store i32 %i.ba, ptr %i.ay, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.critedge
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 12
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = zext i32 %i.bc to i64
  %i.be = add i64 %5, %i.bd
  %i.bf = getelementptr i8, ptr %0, i64 40
  store i64 %i.be, ptr %i.bf, align 8
  %.not50 = icmp eq ptr %7, null
  br i1 %.not50, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bg = load i32, ptr %1, align 8
  %i.bh = icmp eq i32 %i.bg, 0
  br i1 %i.bh, label %g_strdup_inline.exit, label %bb.m

g_strdup_inline.exit:                             ; preds = %bb.k
  call void @g_checksum_reset(ptr noundef nonnull %7)
  %i.bi = getelementptr i8, ptr %1, i64 264
  %.val = load ptr, ptr %i.bi, align 8
  %i.bj = getelementptr i8, ptr %1, i64 280
  %.val51 = load i64, ptr %i.bj, align 8          ; 2 uses
  %i.bk = getelementptr i8, ptr %.val, i64 %.val51
  %i.bl = getelementptr i8, ptr %1, i64 288
  %.val53 = load i64, ptr %i.bl, align 8
  %i.bm = sub i64 %.val53, %.val51
  call void @g_checksum_update(ptr noundef nonnull %7, ptr noundef %i.bk, i64 noundef %i.bm)
  %i.bn = call ptr @g_checksum_get_string(ptr noundef nonnull %7)
  %i.bo = call noalias ptr @g_strdup(ptr noundef %i.bn) ; 2 uses
  %i.bp = call zeroext i1 @fifo_string_cache_insert(ptr noundef %6, ptr noundef %i.bo)
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %g_strdup_inline.exit
  call void @g_free(ptr noundef %i.bo)
  %i.bq = getelementptr i8, ptr %i.ai, i64 53     ; 2 uses
  %i.br = load i16, ptr %i.bq, align 1
  %i.bs = or i16 %i.br, 64
  store i16 %i.bs, ptr %i.bq, align 1
  %i.bt = getelementptr i8, ptr %0, i64 100       ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4
  br label %bb.m

bb.m:                                             ; preds = %g_strdup_inline.exit, %bb.l, %bb.k, %bb.j
  %i.bw = getelementptr i8, ptr %0, i64 168
  %i.bx = load i8, ptr %i.bw, align 8, !range !10, !noundef !11
  %i.by = trunc nuw i8 %i.bx to i1
  br i1 %i.by, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr i8, ptr %0, i64 172
  %i.ca = load i32, ptr %i.bz, align 4
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  call fastcc void @add_packet_to_packet_list(ptr noundef %i.ai, ptr noundef %0, ptr noundef %3, ptr noundef %2, ptr noundef %4, ptr noundef %1, i1 noundef zeroext true)
  br label %bb.p
end_hunk_0
