Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/m25p80?download=true
inline.NumInlined: 133
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@decode_fast_read_cmd:bb.a
  %i.x = shl nuw nsw i8 %.0.i17, 2
  br label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.y = shl nuw nsw i8 %.0.i17, 1
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 222
  %i.aa = load i8, ptr %i.z, align 2
  switch i8 %i.aa, label %bb.m [
    i8 -21, label %bb.k
    i8 -20, label %bb.k
    i8 -69, label %bb.l
    i8 -68, label %bb.l
  ]

bb.k:                                             ; preds = %bb.j, %bb.j
  %i.ab = shl nuw nsw i8 %.0.i17, 2
  br label %bb.m

bb.l:                                             ; preds = %bb.j, %bb.j
  %i.ac = shl nuw nsw i8 %.0.i17, 1
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  %.1.i = phi i8 [ %i.x, %bb.h ], [ %i.y, %bb.i ], [ %.0.i17, %bb.j ], [ %i.ab, %bb.k ], [ %i.ac, %bb.l ] ; 2 uses
  %i.ad = and i8 %.1.i, 7
  %i.ae = icmp eq i8 %i.ad, 0
  br i1 %i.ae, label %numonyx_extract_cfg_dummy_bytes.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @__assert_fail(ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.145, i32 noundef 1021, ptr noundef nonnull @__PRETTY_FUNCTION__.numonyx_extract_cfg_dummy_bytes) #14
  unreachable

numonyx_extract_cfg_dummy_bytes.exit:             ; preds = %bb.m
  %i.af = lshr exact i8 %.1.i, 3
  %i.ag = add nuw nsw i8 %i.af, %.0.i
  br label %get_man.exit.thread.sink.split

bb.o:                                             ; preds = %get_addr_length.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 222
  %i.ai = load i8, ptr %i.ah, align 2
  switch i8 %i.ai, label %bb.r [
    i8 -69, label %bb.p
    i8 -68, label %bb.p
    i8 -21, label %bb.q
    i8 -20, label %bb.q
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  br label %bb.r

bb.q:                                             ; preds = %bb.o, %bb.o
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o
  %.0.i18 = phi ptr [ @macronix_extract_cfg_dummy_bytes.dummy_cycles_fast, %bb.o ], [ @macronix_extract_cfg_dummy_bytes.dummy_cycles_dio, %bb.p ], [ @macronix_extract_cfg_dummy_bytes.dummy_cycles_qio, %bb.q ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.ak = load i32, ptr %i.aj, align 8
  %i.al = lshr i32 %i.ak, 6
  %i.am = and i32 %i.al, 3
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr %.0.i18, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1             ; 2 uses
  %i.aq = and i8 %i.ap, 7
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %macronix_extract_cfg_dummy_bytes.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @__assert_fail(ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.145, i32 noundef 1055, ptr noundef nonnull @__PRETTY_FUNCTION__.macronix_extract_cfg_dummy_bytes) #14
  unreachable

macronix_extract_cfg_dummy_bytes.exit:            ; preds = %bb.r
  %i.as = lshr exact i8 %i.ap, 3
  %i.at = add nuw nsw i8 %i.as, %.0.i
  br label %get_man.exit.thread.sink.split

bb.t:                                             ; preds = %get_addr_length.exit
  %i.au = getelementptr i8, ptr %0, i64 245
  %.val15 = load i8, ptr %i.au, align 1           ; 2 uses
  %i.av = and i8 %.val15, 7
  %i.aw = icmp eq i8 %i.av, 0
  br i1 %i.aw, label %spansion_extract_cfg_dummy_bytes.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void @__assert_fail(ptr noundef nonnull @.str.181, ptr noundef nonnull @.str.145, i32 noundef 1072, ptr noundef nonnull @__PRETTY_FUNCTION__.spansion_extract_cfg_dummy_bytes) #14
  unreachable

spansion_extract_cfg_dummy_bytes.exit:            ; preds = %bb.t
  %i.ax = lshr exact i8 %.val15, 3
  %i.ay = and i8 %i.ax, 1
  %i.az = add nuw nsw i8 %i.ay, %.0.i
  br label %get_man.exit.thread.sink.split

get_man.exit:                                     ; preds = %get_addr_length.exit
  %i.ba = add nuw nsw i8 %.0.i, 1
  br label %get_man.exit.thread.sink.split

get_man.exit.thread.sink.split:                   ; preds = %bb.e, %bb.f, %numonyx_extract_cfg_dummy_bytes.exit, %macronix_extract_cfg_dummy_bytes.exit, %spansion_extract_cfg_dummy_bytes.exit, %get_man.exit
  %.sink = phi i8 [ %i.ba, %get_man.exit ], [ %i.az, %spansion_extract_cfg_dummy_bytes.exit ], [ %i.at, %macronix_extract_cfg_dummy_bytes.exit ], [ %i.ag, %numonyx_extract_cfg_dummy_bytes.exit ], [ %i.n, %bb.f ], [ %i.m, %bb.e ]
  store i8 %.sink, ptr %i.k, align 1
  br label %get_man.exit.thread

get_man.exit.thread:                              ; preds = %get_man.exit.thread.sink.split, %get_addr_length.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 0, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 0, ptr %i.bc, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 3, ptr %i.bd, align 8
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_m25p80_populated_jedec(ptr noundef %0) unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_M25P80_POPULATED_JEDEC_DSTATE, align 2
  %.not1 = icmp eq i16 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.182, ptr noundef %0) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc void @trace_m25p80_chip_erase(ptr noundef %0) unnamed_addr #9 {
bb.a:
  %i.a = load i32, ptr @trace_events_enabled_count, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr @_TRACE_M25P80_CHIP_ERASE_DSTATE, align 2
  %.not1 = icmp eq i16 %i.b, 0
  br i1 %.not1, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load i32, ptr @qemu_loglevel, align 4
  %i.d = and i32 %i.c, 32768
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.183, ptr noundef %0) #12
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @reset_memory(ptr noundef initializes((192, 193), (212, 220), (221, 223), (224, 228), (249, 254), (260, 261)) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 222
  store i8 0, ptr %i.a, align 2
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i32 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 260 ; 2 uses
  store i8 0, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 250 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 221
  store i8 0, ptr %i.f, align 1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i8 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 249
  %i.j = getelementptr i8, ptr %0, i64 272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.i, i8 0, i64 5, i1 false)
  %.val = load ptr, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %.val, i64 8
  %.val.val = load i8, ptr %i.k, align 8
  switch i8 %.val.val, label %get_man.exit.thread [
    i8 32, label %bb.b
    i8 -62, label %bb.f
    i8 1, label %get_man.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.n = load i32, ptr %i.m, align 4              ; 5 uses
  %i.o = insertelement <2 x i32> poison, i32 %i.n, i64 0
  %i.p = shufflevector <2 x i32> %i.o, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.q = and <2 x i32> %i.p, <i32 3584, i32 4>
  %i.r = icmp eq <2 x i32> %i.q, <i32 3584, i32 0>
  %i.s = select <2 x i1> %i.r, <2 x i32> <i32 11, i32 31>, <2 x i32> <i32 3, i32 95>
  %i.t = shl i32 %i.n, 4
  %1 = lshr i32 %i.n, 8
  %i.u = insertelement <2 x i32> poison, i32 %1, i64 0
  %i.v = insertelement <2 x i32> %i.u, i32 %i.t, i64 1
  %i.w = and <2 x i32> %i.v, <i32 240, i32 128>
  %i.x = or disjoint <2 x i32> %i.s, %i.w
  store <2 x i32> %i.x, ptr %i.l, align 8
  %i.y = and i32 %i.n, 1
  %.not49 = icmp eq i32 %i.y, 0
  br i1 %.not49, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.d, align 2
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = and i32 %i.n, 2
  %.not50 = icmp eq i32 %i.z, 0
  br i1 %.not50, label %bb.e, label %get_man.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ab = load i32, ptr %i.aa, align 8
  %i.ac = lshr i32 %i.ab, 24
  %i.ad = trunc nuw i32 %i.ac to i8
  %i.ae = add i8 %i.ad, -1
  store i8 %i.ae, ptr %i.c, align 4
  br label %get_man.exit.thread

bb.f:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 7, ptr %i.af, align 8
  br label %get_man.exit.thread

get_man.exit:                                     ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.aj = load <4 x i8>, ptr %i.ah, align 8       ; 3 uses
  store <4 x i8> %i.aj, ptr %i.ai, align 4
  %i.ak = extractelement <4 x i8> %i.aj, i64 0
  %i.al = and i8 %i.ak, 1
  store i8 %i.al, ptr %i.ag, align 4
  %i.am = extractelement <4 x i8> %i.aj, i64 1
  %.lobit = lshr i8 %i.am, 7
  store i8 %.lobit, ptr %i.d, align 2
  br label %get_man.exit.thread

get_man.exit.thread:                              ; preds = %bb.a, %bb.d, %bb.e, %get_man.exit, %bb.f
  %i.an = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.an, 0
  br i1 %.not.i, label %trace_m25p80_reset_done.exit, label %bb.g, !prof !8

bb.g:                                             ; preds = %get_man.exit.thread
  %i.ao = load i16, ptr @_TRACE_M25P80_RESET_DONE_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.ao, 0
  br i1 %.not1.i, label %trace_m25p80_reset_done.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load i32, ptr @qemu_loglevel, align 4
  %i.aq = and i32 %i.ap, 32768
  %.not2.i = icmp eq i32 %i.aq, 0
  br i1 %.not2.i, label %trace_m25p80_reset_done.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.184, ptr noundef nonnull %0) #12
  br label %trace_m25p80_reset_done.exit

trace_m25p80_reset_done.exit:                     ; preds = %get_man.exit.thread, %bb.g, %bb.h, %bb.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal noundef i32 @m25p80_pre_load(ptr nofree noundef writeonly captures(none) initializes((220, 221)) %0) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 220
  store i8 0, ptr %i.a, align 4
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @m25p80_pre_save(ptr nofree noundef captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp slt i64 %i.b, 0
  br i1 %i.c, label %flash_sync_dirty.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = trunc i64 %i.b to i32                    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i, label %flash_sync_page.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call zeroext i1 @blk_is_writable(ptr noundef nonnull %i.f) #12
  br i1 %i.g, label %bb.d, label %flash_sync_page.exit.i

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noalias dereferenceable_or_null(40) ptr @g_malloc(i64 noundef 40) #13 ; 4 uses
  tail call void @qemu_iovec_init(ptr noundef %i.h, i32 noundef 1) #12
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load i32, ptr %i.m, align 8              ; 2 uses
  %i.o = mul i32 %i.n, %i.d
  %i.p = zext i32 %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.p
  %i.r = zext i32 %i.n to i64
  tail call void @qemu_iovec_add(ptr noundef %i.h, ptr noundef %i.q, i64 noundef %i.r) #12
  %i.s = load ptr, ptr %i.e, align 8
  %i.t = load ptr, ptr %i.k, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load i32, ptr %i.u, align 8
  %i.w = mul i32 %i.v, %i.d
  %i.x = zext i32 %i.w to i64
  %i.y = tail call ptr @blk_aio_pwritev(ptr noundef %i.s, i64 noundef %i.x, ptr noundef %i.h, i32 noundef 0, ptr noundef nonnull @blk_sync_complete, ptr noundef %i.h) #12 ; 0 uses
  br label %flash_sync_page.exit.i

flash_sync_page.exit.i:                           ; preds = %bb.d, %bb.c, %bb.b
  store i64 -1, ptr %i.a, align 8
  br label %flash_sync_dirty.exit

flash_sync_dirty.exit:                            ; preds = %bb.a, %flash_sync_page.exit.i
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal zeroext i1 @m25p80_data_read_loop_needed(ptr nofree noundef readonly captures(none) %0) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.b = load i8, ptr %i.a, align 4, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal zeroext i1 @m25p80_aai_enable_needed(ptr nofree noundef readonly captures(none) %0) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 253
  %i.b = load i8, ptr %i.a, align 1, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal zeroext i1 @m25p80_wp_level_srwd_needed(ptr nofree noundef readonly captures(none) %0) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load i8, ptr %i.a, align 8, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 259
  %i.e = load i8, ptr %i.d, align 1, !range !9, !noundef !10
  %i.f = trunc nuw i8 %i.e to i1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = phi i1 [ true, %bb.a ], [ %i.f, %bb.b ]
  ret i1 %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal zeroext i1 @m25p80_block_protect_needed(ptr nofree noundef readonly captures(none) %0) #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 254
  %i.b = load i8, ptr %i.a, align 2, !range !9, !noundef !10
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 255
  %i.e = load i8, ptr %i.d, align 1, !range !9, !noundef !10
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.h = load i8, ptr %i.g, align 8, !range !9, !noundef !10
  %i.i = trunc nuw i8 %i.h to i1
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 257
  %i.k = load i8, ptr %i.j, align 1, !range !9, !noundef !10
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 258
  %i.n = load i8, ptr %i.m, align 2, !range !9, !noundef !10
  %i.o = trunc nuw i8 %i.n to i1
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.p = phi i1 [ true, %bb.d ], [ true, %bb.c ], [ true, %bb.b ], [ true, %bb.a ], [ %i.o, %bb.e ]
  ret i1 %i.p
end_hunk_0
