Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/mem?download=true
inline.NumInlined: 36
inline.NumDeleted: 23
begin_hunk_0_@mshv_set_phys_mem:bb.a
  %i.bq = load i32, ptr @qemu_loglevel, align 4
  %i.br = and i32 %i.bq, 32768
  %.not4.i15.i.i = icmp eq i32 %i.br, 0
  br i1 %.not4.i15.i.i, label %trace_mshv_map_memory.exit.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.19, i64 noundef %i.au, i64 noundef %i.u, i64 noundef %.0.i) #10
  br label %trace_mshv_map_memory.exit.i.i

trace_mshv_map_memory.exit.i.i:                   ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.bs = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.bd, i64 noundef 1075886082, ptr noundef nonnull %3) #10
  %i.bt = icmp slt i32 %i.bs, 0
  br i1 %i.bt, label %set_memory.exit, label %set_memory.exit.thread

set_memory.exit.thread:                           ; preds = %trace_mshv_unmap_memory.exit.i.i, %trace_mshv_map_memory.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.x

set_memory.exit:                                  ; preds = %trace_mshv_unmap_memory.exit.i.i, %trace_mshv_map_memory.exit.i.i
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.18) #10
  %i.bu = tail call ptr @__errno_location() #12
  %i.bv = load i32, ptr %i.bu, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  %notsub = add i32 %i.bv, -1
  %i.bw = icmp sgt i32 %notsub, -1
  br i1 %i.bw, label %bb.w, label %bb.x

bb.w:                                             ; preds = %set_memory.exit
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.3) #10
  call void @abort() #11
  unreachable

bb.x:                                             ; preds = %set_memory.exit.thread, %set_memory.exit, %bb.j, %bb.h
  ret void
}

declare ptr @memory_region_get_ram_ptr(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @mshv_log_global_start(ptr nofree noundef readnone captures(none) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.hv_input_set_partition_property, align 1 ; 7 uses
  %3 = alloca %struct.mshv_root_hvcall, align 8   ; 8 uses
  %i.a = load ptr, ptr @mshv_state, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load i32, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %2, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 327685, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 1, ptr %i.e, align 1
  store i16 69, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  store i16 24, ptr %i.f, align 4
  %i.g = ptrtoint ptr %2 to i64
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.g, ptr %i.h, align 8
  %i.i = call i32 @mshv_hvcall(i32 noundef %i.c, ptr noundef nonnull %3) #10
  %i.j = icmp sgt i32 %i.i, -1                    ; 2 uses
  br i1 %i.j, label %enable_dirty_page_tracking.exit.thread, label %bb.b

enable_dirty_page_tracking.exit.thread:           ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = tail call ptr @__errno_location() #12
  %i.l = load i32, ptr %i.k, align 4
  %i.m = call ptr @strerror(i32 noundef %i.l) #10
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.20, ptr noundef %i.m) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef %1, ptr noundef nonnull @.str.4, i32 noundef 284, ptr noundef nonnull @__func__.mshv_log_global_start, i32 noundef 1, ptr noundef nonnull @.str.5) #10
  br label %bb.c

bb.c:                                             ; preds = %enable_dirty_page_tracking.exit.thread, %bb.b
  ret i1 %i.j
}

declare void @error_setg_errno_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @mshv_log_global_stop(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.hv_input_set_partition_property, align 1 ; 6 uses
  %2 = alloca %struct.mshv_root_hvcall, align 8   ; 7 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 0, ptr %i.a, align 4
  %i.b = load atomic ptr, ptr getelementptr inbounds nuw (i8, ptr @address_space_memory, i64 32) monotonic, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !srcloc !11
  call void @flatview_for_each_range(ptr noundef %i.b, ptr noundef nonnull @set_dirty_bits_cb, ptr noundef nonnull %i.a) #10
  %i.c = load i32, ptr %i.a, align 4
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.6) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr @mshv_state, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load i32, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %1, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %2, i8 0, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 327685, ptr %i.h, align 1
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 0, ptr %i.i, align 1
  store i16 69, ptr %2, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i16 24, ptr %i.j, align 4
  %i.k = ptrtoint ptr %1 to i64
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.k, ptr %i.l, align 8
  %i.m = call i32 @mshv_hvcall(i32 noundef %i.g, ptr noundef nonnull %2) #10
  %i.n = icmp slt i32 %i.m, 0
  br i1 %i.n, label %bb.d, label %disable_dirty_page_tracking.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call ptr @__errno_location() #12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = call ptr @strerror(i32 noundef %i.p) #10
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.22, ptr noundef %i.q) #10
  br label %disable_dirty_page_tracking.exit

disable_dirty_page_tracking.exit:                 ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret void
}

declare void @flatview_for_each_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define internal noundef zeroext i1 @set_dirty_bits_cb(i128 noundef %0, i128 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 %3, ptr nofree noundef writeonly captures(none) %4) #0 {
bb.a:
  %i.a = alloca [1024 x i64], align 16            ; 5 uses
  %5 = alloca %struct.mshv_gpap_access_bitmap, align 8 ; 10 uses
  %i.b = icmp ult i128 %0, 18446744073709551616
  br i1 %i.b, label %int128_get64.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 31, ptr noundef nonnull @__PRETTY_FUNCTION__.int128_get64) #11
  unreachable

int128_get64.exit:                                ; preds = %bb.a
  %i.c = icmp ult i128 %1, 18446744073709551616
  br i1 %i.c, label %int128_get64.exit15, label %bb.c

bb.c:                                             ; preds = %int128_get64.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 31, ptr noundef nonnull @__PRETTY_FUNCTION__.int128_get64) #11
  unreachable

int128_get64.exit15:                              ; preds = %int128_get64.exit
  %i.d = trunc nuw i128 %0 to i64
  %i.e = trunc nuw i128 %1 to i64
  %i.f = lshr i64 %i.e, 12                        ; 3 uses
  %i.g = lshr i64 %i.d, 12
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 41
  %i.i = load i8, ptr %i.h, align 1, !range !8, !noundef !9
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.i

bb.d:                                             ; preds = %int128_get64.exit15
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 43
  %i.l = load i8, ptr %i.k, align 1, !range !8, !noundef !9
  %i.m = trunc nuw i8 %i.l to i1
  %i.n = icmp eq i64 %i.f, 0
  %or.cond = select i1 %i.m, i1 true, i1 %i.n
  br i1 %or.cond, label %bb.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = load ptr, ptr @mshv_state, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.q = load i32, ptr %i.p, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(8192) %i.a, i8 0, i64 8192, i1 false), !annotation !13
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store i64 0, ptr %5, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 1
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.u = ptrtoint ptr %i.a to i64
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.02023.i = phi i64 [ 0, %bb.e ], [ %i.ab, %bb.g ] ; 3 uses
  %i.w = sub nuw nsw i64 %i.f, %.02023.i
  %i.x = call i64 @llvm.umin.i64(i64 %i.w, i64 65536) ; 3 uses
  store i8 1, ptr %5, align 8
  store i8 2, ptr %i.r, align 1
  store i64 %i.x, ptr %i.s, align 8
  %i.y = add nuw nsw i64 %.02023.i, %i.g          ; 2 uses
  store i64 %i.y, ptr %i.t, align 8
  store i64 %i.u, ptr %i.v, align 8
  %i.z = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.q, i64 noundef 3223369734, ptr noundef nonnull %5) #10
  %i.aa = icmp slt i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = add nuw nsw i64 %i.x, %.02023.i         ; 2 uses
  %i.ac = icmp samesign ult i64 %i.ab, %i.f
  br i1 %i.ac, label %bb.f, label %set_dirty_pages.exit, !llvm.loop !12

set_dirty_pages.exit:                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.ad = tail call ptr @__errno_location() #12
  %i.ae = load i32, ptr %i.ad, align 4
  %i.af = call ptr @strerror(i32 noundef %i.ae) #10
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.21, i64 noundef %i.y, i64 noundef %i.x, ptr noundef %i.af) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  store i32 -1, ptr %4, align 4
  br label %bb.i

bb.i:                                             ; preds = %set_dirty_pages.exit, %int128_get64.exit15, %bb.d, %bb.h
  %.0 = phi i1 [ false, %set_dirty_pages.exit ], [ false, %int128_get64.exit15 ], [ true, %bb.h ], [ false, %bb.d ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @mshv_log_sync(ptr nofree noundef readnone captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.mshv_gpap_access_bitmap, align 8 ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 16             ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 41
  %.val = load i8, ptr %i.c, align 1, !range !8, !noundef !9
  %i.d = trunc nuw i8 %.val to i1
  br i1 %i.d, label %memory_region_is_rom.exit, label %bb.g

memory_region_is_rom.exit:                        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 43
  %i.f = load i8, ptr %i.e, align 1, !range !8, !noundef !9
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.g, label %bb.b

bb.b:                                             ; preds = %memory_region_is_rom.exit
  %i.h = load i128, ptr %1, align 16              ; 2 uses
  %i.i = icmp ult i128 %i.h, 18446744073709551616
  br i1 %i.i, label %align_section.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @__assert_fail(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 31, ptr noundef nonnull @__PRETTY_FUNCTION__.int128_get64) #11
  unreachable

align_section.exit:                               ; preds = %bb.b
  %i.j = trunc nuw i128 %i.h to i64               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = tail call i32 @getpagesize() #12
  %i.n = sext i32 %i.m to i64                     ; 2 uses
  %i.o = add i64 %i.l, -1
  %i.p = add i64 %i.o, %i.n
  %i.q = sub nsw i64 0, %i.n                      ; 2 uses
  %i.r = and i64 %i.p, %i.q                       ; 3 uses
  %i.s = sub i64 %i.r, %i.l                       ; 2 uses
  %i.t = icmp ugt i64 %i.s, %i.j
  %i.u = sub nuw i64 %i.j, %i.s
  %i.v = and i64 %i.u, %i.q                       ; 2 uses
  %.not24 = icmp eq i64 %i.v, 0
  %.not = select i1 %i.t, i1 true, i1 %.not24
  br i1 %.not, label %bb.g, label %.preheader.i

.preheader.i:                                     ; preds = %align_section.exit
  %i.w = lshr i64 %i.v, 12                        ; 5 uses
  %i.x = lshr i64 %i.r, 12
  %i.y = add nuw nsw i64 %i.w, 63
  %i.z = lshr i64 %i.y, 3
  %i.aa = and i64 %i.z, 1125899906842616
  %i.ab = tail call noalias ptr @g_malloc0(i64 noundef %i.aa) #13 ; 3 uses
  %i.ac = load ptr, ptr @mshv_state, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  %i.ae = load i32, ptr %i.ad, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i64 0, ptr %2, align 8
  %.not28.i = icmp eq i64 %i.w, 0
  br i1 %.not28.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 24
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i
  %.02427.i = phi i64 [ 0, %.lr.ph.i ], [ %i.ar, %bb.e ] ; 4 uses
  %i.aj = sub nuw nsw i64 %i.w, %.02427.i
  %i.ak = call i64 @llvm.umin.i64(i64 %i.aj, i64 65536) ; 3 uses
  %i.al = lshr i64 %.02427.i, 6
  store i8 1, ptr %2, align 8
  store i8 1, ptr %i.af, align 1
  store i64 %i.ak, ptr %i.ag, align 8
  %i.am = add nuw nsw i64 %.02427.i, %i.x         ; 2 uses
  store i64 %i.am, ptr %i.ah, align 8
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %i.al
  %i.ao = ptrtoint ptr %i.an to i64
  store i64 %i.ao, ptr %i.ai, align 8
  %i.ap = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.ae, i64 noundef 3223369734, ptr noundef nonnull %2) #10
  %i.aq = icmp slt i32 %i.ap, 0
  br i1 %i.aq, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = add nuw nsw i64 %i.ak, %.02427.i        ; 2 uses
  %i.as = icmp samesign ult i64 %i.ar, %i.w
  br i1 %i.as, label %bb.d, label %.loopexit, !llvm.loop !14

bb.f:                                             ; preds = %bb.d
  %i.at = tail call ptr @__errno_location() #12
  %i.au = load i32, ptr %i.at, align 4
  %i.av = call ptr @strerror(i32 noundef %i.au) #10
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.24, i64 noundef %i.am, i64 noundef %i.ak, ptr noundef %i.av) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %.sink.split

.loopexit:                                        ; preds = %bb.e, %.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ax = load i64, ptr %i.aw, align 16
  %i.ay = add i64 %i.ax, %i.r
  %i.az = load i64, ptr %i.k, align 8
  %i.ba = sub i64 %i.ay, %i.az
  %i.bb = call i64 @memory_region_get_ram_addr(ptr noundef %i.b) #10
  %i.bc = add i64 %i.ba, %i.bb
  %i.bd = call i64 @physical_memory_set_dirty_lebitmap(ptr noundef %i.ab, i64 noundef %i.bc, i64 noundef %i.w) #10 ; 0 uses
  br label %.sink.split

.sink.split:                                      ; preds = %bb.f, %.loopexit
  call void @g_free(ptr noundef %i.ab) #10
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %align_section.exit, %bb.a, %memory_region_is_rom.exit
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #5

declare void @g_free(ptr noundef) local_unnamed_addr #3

declare i64 @memory_region_get_ram_addr(ptr noundef) local_unnamed_addr #3

declare i64 @physical_memory_set_dirty_lebitmap(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @getpagesize() local_unnamed_addr #7

; Function Attrs: nounwind
declare i32 @ioctl(i32 noundef, i64 noundef, ...) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #7

declare i32 @mshv_hvcall(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #9

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind willreturn memory(none) }
attributes #13 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{i64 2150848455}
!12 = distinct !{!12, !10}
end_hunk_0
