inline.NumInlined: 235
inline.NumDeleted: 31
begin_hunk_0_@__mi_stat_decrease:bb.a
  %i.h = icmp slt i64 %1, 0
  br i1 %i.h, label %bb.e, label %mi_stat_update.exit

bb.e:                                             ; preds = %bb.d
  %i.i = load i64, ptr %0, align 8, !tbaa !15
  %i.j = sub nsw i64 %i.i, %1
  store i64 %i.j, ptr %0, align 8, !tbaa !15
  br label %mi_stat_update.exit

mi_stat_update.exit:                              ; preds = %bb.a, %bb.d, %bb.e
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @__mi_stat_adjust_increase_mt(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %mi_stat_adjust_mt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = atomicrmw add ptr %i.b, i64 %1 monotonic, align 8 ; 0 uses
  %i.d = atomicrmw add ptr %0, i64 %1 monotonic, align 8 ; 0 uses
  br label %mi_stat_adjust_mt.exit

mi_stat_adjust_mt.exit:                           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @__mi_stat_adjust_increase(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %mi_stat_adjust.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12
  %i.d = add nsw i64 %i.c, %1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !12
  %i.e = load i64, ptr %0, align 8, !tbaa !15
  %i.f = add nsw i64 %i.e, %1
  store i64 %i.f, ptr %0, align 8, !tbaa !15
  br label %mi_stat_adjust.exit

mi_stat_adjust.exit:                              ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @__mi_stat_adjust_decrease_mt(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %mi_stat_adjust_mt.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = atomicrmw sub ptr %i.b, i64 %1 monotonic, align 8 ; 0 uses
  %i.d = atomicrmw sub ptr %0, i64 %1 monotonic, align 8 ; 0 uses
  br label %mi_stat_adjust_mt.exit

mi_stat_adjust_mt.exit:                           ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @__mi_stat_adjust_decrease(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %mi_stat_adjust.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !12
  %i.d = sub nsw i64 %i.c, %1
  store i64 %i.d, ptr %i.b, align 8, !tbaa !12
  %i.e = load i64, ptr %0, align 8, !tbaa !15
  %i.f = sub nsw i64 %i.e, %1
  store i64 %i.f, ptr %0, align 8, !tbaa !15
  br label %mi_stat_adjust.exit

mi_stat_adjust.exit:                              ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @_mi_stats_print(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %3 = alloca %struct.mi_process_info_s, align 8  ; 12 uses
  %i.a = alloca [256 x i8], align 16              ; 4 uses
  %4 = alloca %struct.buffered_s, align 8         ; 67 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %i.a, i8 0, i64 256, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  store ptr %1, ptr %4, align 8, !tbaa !16
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %2, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 24
  store i64 0, ptr %i.e, align 8
  store i64 255, ptr %i.d, align 8, !tbaa !21
  store ptr %i.a, ptr %i.c, align 8, !tbaa !22
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, ptr noundef nonnull @.str.80, ptr noundef nonnull @.str.81, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.84) #11
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  call fastcc void @mi_stat_print_ex(ptr noundef nonnull %i.f, ptr noundef nonnull @.str, i64 noundef 1, ptr noundef %4, ptr noundef nonnull @.str.1)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  call fastcc void @mi_stat_print_ex(ptr noundef nonnull %i.g, ptr noundef nonnull @.str.2, i64 noundef 1, ptr noundef %4, ptr noundef nonnull @.str.1)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.3) #11
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load i64, ptr %i.h, align 8, !tbaa !14
  call fastcc void @mi_printf_amount(i64 noundef %i.i, i64 noundef 1, ptr noundef nonnull %4, ptr noundef null)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.31) #11
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.4) #11
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load i64, ptr %i.j, align 8, !tbaa !14
  call fastcc void @mi_printf_amount(i64 noundef %i.k, i64 noundef 1, ptr noundef nonnull %4, ptr noundef null)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.31) #11
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 128
  call fastcc void @mi_stat_print_ex(ptr noundef nonnull %i.l, ptr noundef nonnull @.str.5, i64 noundef 1, ptr noundef %4, ptr noundef nonnull @.str.1)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call fastcc void @mi_stat_print_ex(ptr noundef nonnull readonly %i.m, ptr noundef nonnull @.str.6, i64 noundef -1, ptr noundef nonnull %4, ptr noundef null)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  call fastcc void @mi_stat_print_ex(ptr noundef nonnull readonly %i.n, ptr noundef nonnull @.str.7, i64 noundef -1, ptr noundef nonnull %4, ptr noundef null)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 472
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.8) #11
  %i.p = load i64, ptr %i.o, align 8, !tbaa !7
  call fastcc void @mi_printf_amount(i64 noundef %i.p, i64 noundef -1, ptr noundef nonnull %4, ptr noundef null)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.31) #11
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 480
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.9) #11
  %i.r = load i64, ptr %i.q, align 8, !tbaa !7
  call fastcc void @mi_printf_amount(i64 noundef %i.r, i64 noundef -1, ptr noundef nonnull %4, ptr noundef null)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.31) #11
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 488
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.10) #11
  %i.t = load i64, ptr %i.s, align 8, !tbaa !7
  call fastcc void @mi_printf_amount(i64 noundef %i.t, i64 noundef -1, ptr noundef nonnull %4, ptr noundef null)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.31) #11
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 496
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.11) #11
  %i.v = load i64, ptr %i.u, align 8, !tbaa !7
  call fastcc void @mi_printf_amount(i64 noundef %i.v, i64 noundef -1, ptr noundef nonnull %4, ptr noundef null)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.31) #11
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 352
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.12) #11
  %i.x = load i64, ptr %i.w, align 8, !tbaa !7
  call fastcc void @mi_printf_amount(i64 noundef %i.x, i64 noundef -1, ptr noundef nonnull %4, ptr noundef null)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.31) #11
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 360
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.13) #11
  %i.z = load i64, ptr %i.y, align 8, !tbaa !7
  call fastcc void @mi_printf_amount(i64 noundef %i.z, i64 noundef -1, ptr noundef nonnull %4, ptr noundef null)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.31) #11
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 304
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.14) #11
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !7
  call fastcc void @mi_printf_amount(i64 noundef %i.ab, i64 noundef -1, ptr noundef nonnull %4, ptr noundef null)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.31) #11
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 336
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.15) #11
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !7
  call fastcc void @mi_printf_amount(i64 noundef %i.ad, i64 noundef -1, ptr noundef nonnull %4, ptr noundef null)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.31) #11
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 272
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.16) #11
  %i.af = load i64, ptr %i.ae, align 8, !tbaa !7
  call fastcc void @mi_printf_amount(i64 noundef %i.af, i64 noundef -1, ptr noundef nonnull %4, ptr noundef null)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.31) #11
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.17) #11
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !7
  call fastcc void @mi_printf_amount(i64 noundef %i.ah, i64 noundef -1, ptr noundef nonnull %4, ptr noundef null)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.31) #11
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 288
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.18) #11
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !7
  call fastcc void @mi_printf_amount(i64 noundef %i.aj, i64 noundef -1, ptr noundef nonnull %4, ptr noundef null)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.31) #11
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 296
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.19) #11
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !7
  call fastcc void @mi_printf_amount(i64 noundef %i.al, i64 noundef -1, ptr noundef nonnull %4, ptr noundef null)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.31) #11
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 328
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.20) #11
  %i.an = load i64, ptr %i.am, align 8, !tbaa !7
  call fastcc void @mi_printf_amount(i64 noundef %i.an, i64 noundef -1, ptr noundef nonnull %4, ptr noundef null)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.31) #11
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 176
  call fastcc void @mi_stat_print_ex(ptr noundef nonnull readonly %i.ao, ptr noundef nonnull @.str.21, i64 noundef -1, ptr noundef nonnull %4, ptr noundef null)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.val = load i64, ptr %i.ap, align 8, !tbaa !7
  %i.aq = icmp ne i64 %.val, 0
  %spec.select.i = zext i1 %i.aq to i64
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.22, i64 noundef %spec.select.i, i64 noundef 0) #11
  %i.ar = call i32 @_mi_os_numa_node_count() #11
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.24, i32 noundef %i.ar) #11
  %i.as = call ptr @_mi_subproc() #11             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %5, i8 0, i64 56, i1 false)
  %i.at = load i64, ptr @mi_process_start, align 8, !tbaa !23
  %i.au = call i64 @_mi_prim_clock_now() #11
  %i.av = load i64, ptr @mi_clock_diff, align 8, !tbaa !23
  %i.aw = add i64 %i.at, %i.av
  %i.ax = sub i64 %i.au, %i.aw
  store i64 %i.ax, ptr %3, align 8, !tbaa !24
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 2080
  %i.az = load atomic i64, ptr %i.ay monotonic, align 8 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 40
  store i64 %i.az, ptr %i.ba, align 8, !tbaa !26
  %i.bb = getelementptr inbounds nuw i8, ptr %i.as, i64 2072
  %i.bc = load atomic i64, ptr %i.bb monotonic, align 8 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  store i64 %i.bc, ptr %i.bd, align 8, !tbaa !27
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24
  store i64 %i.az, ptr %i.be, align 8, !tbaa !28
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store i64 %i.bc, ptr %i.bf, align 8, !tbaa !29
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  store i64 0, ptr %i.bh, align 8, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %5, i8 0, i64 16, i1 false)
  call void @_mi_prim_process_info(ptr noundef nonnull %3) #11
  %i.bi = load i64, ptr %3, align 8, !tbaa !24
  %i.bj = call i64 @llvm.smax.i64(i64 %i.bi, i64 0) ; 2 uses
  %i.bk = load i64, ptr %5, align 8, !tbaa !31
  %i.bl = call i64 @llvm.smax.i64(i64 %i.bk, i64 0) ; 2 uses
  %i.bm = load i64, ptr %i.bg, align 8, !tbaa !32
  %i.bn = call i64 @llvm.smax.i64(i64 %i.bm, i64 0) ; 2 uses
  %i.bo = load i64, ptr %i.bf, align 8, !tbaa !29
  %i.bp = load i64, ptr %i.bd, align 8, !tbaa !27 ; 2 uses
  %i.bq = load i64, ptr %i.bh, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  %i.br = udiv i64 %i.bj, 1000
  %i.bs = urem i64 %i.bj, 1000
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.26, i64 noundef %i.br, i64 noundef %i.bs) #11
  %i.bt = udiv i64 %i.bl, 1000
  %i.bu = urem i64 %i.bl, 1000
  %i.bv = udiv i64 %i.bn, 1000
  %i.bw = urem i64 %i.bn, 1000
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.28, i64 noundef %i.bt, i64 noundef %i.bu, i64 noundef %i.bv, i64 noundef %i.bw, i64 noundef %i.bq) #11
  call fastcc void @mi_printf_amount(i64 noundef %i.bo, i64 noundef 1, ptr noundef %4, ptr noundef nonnull @.str.29)
  %.not = icmp eq i64 %i.bp, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.30) #11
  call fastcc void @mi_printf_amount(i64 noundef %i.bp, i64 noundef 1, ptr noundef %4, ptr noundef nonnull @.str.29)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %4, ptr noundef nonnull @.str.31) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind uwtable
define internal void @mi_buffered_out(ptr nofree noundef readonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1) #3 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.c = load i8, ptr %0, align 1, !tbaa !33      ; 2 uses
  %.not19 = icmp eq i8 %i.c, 0
  br i1 %.not19, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.h = phi i8 [ %i.c, %.lr.ph ], [ %i.ab, %bb.f ] ; 2 uses
  %.020 = phi ptr [ %0, %.lr.ph ], [ %i.aa, %bb.f ]
  %i.i = load i64, ptr %i.d, align 8, !tbaa !34   ; 3 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !21
  %.not18 = icmp ult i64 %i.i, %i.j
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.i
  store i8 0, ptr %i.l, align 1, !tbaa !33
  %i.m = load ptr, ptr %1, align 8, !tbaa !16
  %i.n = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.o = load ptr, ptr %i.f, align 8, !tbaa !22
  tail call void @_mi_fputs(ptr noundef %i.m, ptr noundef %i.n, ptr noundef null, ptr noundef %i.o) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.p = phi i64 [ 0, %bb.c ], [ %i.i, %bb.b ]    ; 2 uses
  %i.q = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.r = add nuw i64 %i.p, 1
  store i64 %i.r, ptr %i.d, align 8, !tbaa !34
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 %i.h, ptr %i.s, align 1, !tbaa !33
  %i.t = icmp eq i8 %i.h, 10
  br i1 %i.t, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.v = load i64, ptr %i.d, align 8, !tbaa !34
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.v
  store i8 0, ptr %i.w, align 1, !tbaa !33
  %i.x = load ptr, ptr %1, align 8, !tbaa !16
  %i.y = load ptr, ptr %i.g, align 8, !tbaa !20
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !22
  tail call void @_mi_fputs(ptr noundef %i.x, ptr noundef %i.y, ptr noundef null, ptr noundef %i.z) #11
  store i64 0, ptr %i.d, align 8, !tbaa !34
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %.020, i64 1 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !33  ; 2 uses
  %.not = icmp eq i8 %i.ab, 0
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !35

.loopexit:                                        ; preds = %bb.f, %.preheader, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_stat_print_ex(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, i64 noundef range(i64 -1, 2) %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 5 uses
  %i.b = alloca [32 x i8], align 16               ; 5 uses
  %i.c = alloca [32 x i8], align 16               ; 4 uses
  tail call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %3, ptr noundef nonnull @.str.85, ptr noundef %1) #11
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp sgt i64 %2, 0
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @mi_printf_amount(i64 noundef %i.f, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  %i.h = load i64, ptr %0, align 8, !tbaa !15
  tail call fastcc void @mi_printf_amount(i64 noundef %i.h, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  %i.i = load i64, ptr %i.g, align 8, !tbaa !12
  tail call fastcc void @mi_printf_amount(i64 noundef %i.i, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %3, ptr noundef nonnull @.str.92, ptr noundef nonnull %i.c) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #11
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %3, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.91) #11
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  tail call fastcc void @mi_printf_amount(i64 noundef %i.f, i64 noundef -1, ptr noundef nonnull %3, ptr noundef null)
  %i.j = load i64, ptr %0, align 8, !tbaa !15
  tail call fastcc void @mi_printf_amount(i64 noundef %i.j, i64 noundef -1, ptr noundef nonnull %3, ptr noundef null)
  %i.k = load i64, ptr %i.g, align 8, !tbaa !12
  tail call fastcc void @mi_printf_amount(i64 noundef %i.k, i64 noundef -1, ptr noundef nonnull %3, ptr noundef null)
  %i.l = icmp eq i64 %2, -1
  br i1 %i.l, label %bb.e, label %mi_printf_amount.exit

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %3, ptr noundef nonnull @.str.86, ptr noundef nonnull @.str.1) #11
  br label %bb.f

mi_printf_amount.exit:                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  %i.m = call i32 (ptr, i64, ptr, ...) @_mi_snprintf(ptr noundef nonnull %i.b, i64 noundef 32, ptr noundef nonnull @.str.95, i64 noundef 0, ptr noundef nonnull @.str.1) #11 ; 0 uses
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %3, ptr noundef nonnull @.str.92, ptr noundef nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.n = call i32 (ptr, i64, ptr, ...) @_mi_snprintf(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.95, i64 noundef poison, ptr noundef nonnull poison) #11 ; 0 uses
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %3, ptr noundef nonnull @.str.92, ptr noundef nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %mi_printf_amount.exit, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !tbaa !12
  %.not66 = icmp eq i64 %i.p, 0
  br i1 %.not66, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %3, ptr noundef nonnull @.str.87) #11
  %i.q = icmp eq ptr %4, null
  %i.r = select i1 %i.q, ptr @.str.88, ptr %4
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %3, ptr noundef nonnull %i.r) #11
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %3, ptr noundef nonnull @.str.31) #11
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %3, ptr noundef nonnull @.str.89) #11
  br label %bb.j

bb.i:                                             ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !14
  tail call fastcc void @mi_printf_amount(i64 noundef %i.t, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  %i.u = load i64, ptr %0, align 8, !tbaa !15
  tail call fastcc void @mi_printf_amount(i64 noundef %i.u, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  tail call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %3, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.91) #11
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i64, ptr %i.v, align 8, !tbaa !12
  tail call fastcc void @mi_printf_amount(i64 noundef %i.w, i64 noundef 1, ptr noundef nonnull %3, ptr noundef null)
  tail call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %3, ptr noundef nonnull @.str.31) #11
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.h, %bb.i
  ret void
}

declare void @_mi_fprintf(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #6

declare i32 @_mi_os_numa_node_count() local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define hidden void @mi_process_info(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef writeonly captures(address_is_null) %1, ptr nofree noundef writeonly captures(address_is_null) %2, ptr nofree noundef writeonly captures(address_is_null) %3, ptr nofree noundef writeonly captures(address_is_null) %4, ptr nofree noundef writeonly captures(address_is_null) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7) local_unnamed_addr #3 {
bb.a:
  %8 = alloca %struct.mi_process_info_s, align 8  ; 13 uses
  %i.a = tail call ptr @_mi_subproc() #11         ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #11
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %9, i8 0, i64 56, i1 false)
  %i.b = load i64, ptr @mi_process_start, align 8, !tbaa !23
  %i.c = tail call i64 @_mi_prim_clock_now() #11
  %i.d = load i64, ptr @mi_clock_diff, align 8, !tbaa !23
  %i.e = add i64 %i.b, %i.d
  %i.f = sub i64 %i.c, %i.e
  store i64 %i.f, ptr %8, align 8, !tbaa !24
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 2080
  %i.h = load atomic i64, ptr %i.g monotonic, align 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  store i64 %i.h, ptr %i.i, align 8, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2072
  %i.k = load atomic i64, ptr %i.j monotonic, align 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  store i64 %i.k, ptr %i.l, align 8, !tbaa !27
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  store i64 %i.h, ptr %i.m, align 8, !tbaa !28
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  store i64 %i.k, ptr %i.n, align 8, !tbaa !29
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  store i64 0, ptr %i.q, align 8, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  call void @_mi_prim_process_info(ptr noundef nonnull %8) #11
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = load i64, ptr %8, align 8, !tbaa !24
  %i.s = call i64 @llvm.smax.i64(i64 %i.r, i64 0)
  store i64 %i.s, ptr %0, align 8, !tbaa !23
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not26 = icmp eq ptr %1, null
  br i1 %.not26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = load i64, ptr %i.o, align 8, !tbaa !31
  %i.u = call i64 @llvm.smax.i64(i64 %i.t, i64 0)
  store i64 %i.u, ptr %1, align 8, !tbaa !23
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not27 = icmp eq ptr %2, null
  br i1 %.not27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.p, align 8, !tbaa !32
  %i.w = call i64 @llvm.smax.i64(i64 %i.v, i64 0)
  store i64 %i.w, ptr %2, align 8, !tbaa !23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not28 = icmp eq ptr %3, null
  br i1 %.not28, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = load i64, ptr %i.m, align 8, !tbaa !28
  store i64 %i.x, ptr %3, align 8, !tbaa !23
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not29 = icmp eq ptr %4, null
  br i1 %.not29, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.y = load i64, ptr %i.n, align 8, !tbaa !29
  store i64 %i.y, ptr %4, align 8, !tbaa !23
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.not30 = icmp eq ptr %5, null
  br i1 %.not30, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = load i64, ptr %i.i, align 8, !tbaa !26
  store i64 %i.z, ptr %5, align 8, !tbaa !23
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.not31 = icmp eq ptr %6, null
  br i1 %.not31, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = load i64, ptr %i.l, align 8, !tbaa !27
  store i64 %i.aa, ptr %6, align 8, !tbaa !23
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.not32 = icmp eq ptr %7, null
  br i1 %.not32, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = load i64, ptr %i.q, align 8, !tbaa !30
  store i64 %i.ab, ptr %7, align 8, !tbaa !23
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #11
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @mi_printf_amount(i64 noundef %0, i64 noundef range(i64 -1, 2) %1, ptr noundef nonnull %2, ptr noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca [32 x i8], align 16               ; 6 uses
  %i.b = alloca [8 x i8], align 1                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %i.c = icmp slt i64 %1, 1
  %i.d = select i1 %i.c, ptr @.str.91, ptr @.str.94 ; 3 uses
  %.not51 = icmp eq i64 %1, 0                     ; 3 uses
  %i.e = select i1 %.not51, i64 1000, i64 1024    ; 3 uses
  %i.f = tail call i64 @llvm.abs.i64(i64 %0, i1 true) ; 3 uses
  %i.g = icmp samesign ult i64 %i.f, %i.e
  br i1 %i.g, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.not52 = icmp eq i64 %0, 1
  %i.h = load i8, ptr %i.d, align 1
  %.not53 = icmp eq i8 %i.h, 66
  %or.cond = select i1 %.not52, i1 %.not53, i1 false
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %0, 0
  %i.j = select i1 %i.i, ptr @.str.1, ptr %i.d
  %i.k = call i32 (ptr, i64, ptr, ...) @_mi_snprintf(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.95, i64 noundef %0, ptr noundef nonnull %i.j) #11 ; 0 uses
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.l = select i1 %.not51, i64 1000000, i64 1048576 ; 2 uses
  %.not = icmp samesign ult i64 %i.f, %i.l        ; 2 uses
  %spec.select = select i1 %.not, ptr @.str.96, ptr @.str.97
  %spec.select54 = select i1 %.not, i64 %i.e, i64 %i.l ; 2 uses
  %i.m = mul nuw nsw i64 %spec.select54, %i.e     ; 2 uses
  %.not50 = icmp samesign ult i64 %i.f, %i.m      ; 2 uses
  %.144 = select i1 %.not50, ptr %spec.select, ptr @.str.98
  %.1 = select i1 %.not50, i64 %spec.select54, i64 %i.m
  %.lhs.trunc = trunc nuw nsw i64 %.1 to i32
  %i.n = udiv i32 %.lhs.trunc, 10
  %.zext = zext nneg i32 %i.n to i64
  %i.o = sdiv i64 %0, %.zext                      ; 2 uses
  %i.p = sdiv i64 %i.o, 10
  %i.q = srem i64 %i.o, 10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.r = select i1 %.not51, ptr @.str.1, ptr @.str.100
  %i.s = call i32 (ptr, i64, ptr, ...) @_mi_snprintf(ptr noundef nonnull %i.b, i64 noundef 8, ptr noundef nonnull @.str.99, ptr noundef nonnull %.144, ptr noundef nonnull %i.r, ptr noundef nonnull %i.d) #11 ; 0 uses
  %i.t = call i64 @llvm.abs.i64(i64 %i.q, i1 true)
  %i.u = call i32 (ptr, i64, ptr, ...) @_mi_snprintf(ptr noundef nonnull %i.a, i64 noundef 32, ptr noundef nonnull @.str.101, i64 noundef %i.p, i64 noundef %i.t, ptr noundef nonnull %i.b) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.c, %bb.d
  %i.v = icmp eq ptr %3, null
  %i.w = select i1 %i.v, ptr @.str.92, ptr %3
  call void (ptr, ptr, ptr, ...) @_mi_fprintf(ptr noundef nonnull @mi_buffered_out, ptr noundef nonnull %2, ptr noundef nonnull %i.w, ptr noundef nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nounwind uwtable
define hidden void @_mi_stats_init() local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr @mi_process_start, align 8, !tbaa !23
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr @mi_clock_diff, align 8, !tbaa !23
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %_mi_clock_start.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call i64 @_mi_prim_clock_now() #11
  %i.f = tail call i64 @_mi_prim_clock_now() #11
  %i.g = sub nsw i64 %i.f, %i.e
  store i64 %i.g, ptr @mi_clock_diff, align 8, !tbaa !23
  br label %_mi_clock_start.exit

_mi_clock_start.exit:                             ; preds = %bb.b, %bb.c
  %i.h = tail call i64 @_mi_prim_clock_now() #11
  store i64 %i.h, ptr @mi_process_start, align 8, !tbaa !23
  br label %bb.d

bb.d:                                             ; preds = %_mi_clock_start.exit, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define hidden i64 @_mi_clock_start() local_unnamed_addr #3 {
bb.a:
  %i.a = load i64, ptr @mi_clock_diff, align 8, !tbaa !23
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

end_hunk_0
begin_hunk_1_@mi_stats_get_json:bb.a
  %i.cj = getelementptr i8, ptr %i.ci, i64 -1
  store i8 0, ptr %i.cj, align 1, !tbaa !33
  %i.ck = icmp sgt i64 %.sroa.288.34, -1
  %or.cond2283 = and i1 %or.cond.not, %i.ck
  br i1 %or.cond2283, label %bb.k, label %mi_heap_buf_print.exit280

.thread.i279:                                     ; preds = %bb.j
  br i1 %or.cond.not, label %.thread38.i278, label %mi_heap_buf_print.exit280

.thread38.i278:                                   ; preds = %.thread.i279
  %i.cl = call i64 @mi_good_size(i64 noundef 12288) #11
  br label %bb.l

bb.k:                                             ; preds = %thread-pre-split.i268
  %i.cm = shl nuw i64 %.sroa.288.34, 1
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread38.i278
  %i.cn = phi i64 [ %i.cl, %.thread38.i278 ], [ %i.cm, %bb.k ] ; 2 uses
  %i.co = call ptr @mi_rezalloc(ptr noundef %.sroa.0.35, i64 noundef %i.cn) #11 ; 2 uses
  %.not22.i.i269 = icmp eq ptr %i.co, null
  br i1 %.not22.i.i269, label %mi_heap_buf_print.exit280, label %.critedge.i273

.critedge.i273:                                   ; preds = %bb.l, %.lr.ph.i
  %.sroa.0.36 = phi ptr [ %.sroa.0.35, %.lr.ph.i ], [ %i.co, %bb.l ] ; 3 uses
  %.sroa.288.35 = phi i64 [ %.sroa.288.34, %.lr.ph.i ], [ %i.cn, %bb.l ] ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.0.36, i64 %.sroa.572.22
  store i8 %i.cg, ptr %i.cp, align 1, !tbaa !33
  %i.cq = getelementptr inbounds nuw i8, ptr %.027.i262, i64 1 ; 2 uses
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !33  ; 2 uses
  %.not22.i275 = icmp eq i8 %i.cr, 0
  br i1 %.not22.i275, label %._crit_edge.i.loopexit, label %.lr.ph.i, !llvm.loop !46

._crit_edge.i.loopexit:                           ; preds = %.critedge.i273
  %.pre3048 = add i64 %.sroa.572.22, 2
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.i.loopexit, %bb.i
  %.pre.pre-phi = phi i64 [ %.pre3048, %._crit_edge.i.loopexit ], [ %i.ce, %bb.i ]
  %.sroa.0.37 = phi ptr [ %.sroa.0.36, %._crit_edge.i.loopexit ], [ %.sroa.0.7, %bb.i ] ; 2 uses
  %.sroa.288.36 = phi i64 [ %.sroa.288.35, %._crit_edge.i.loopexit ], [ %.sroa.288.7, %bb.i ]
  %.sroa.572.23 = phi i64 [ %i.ch, %._crit_edge.i.loopexit ], [ %.sroa.572.4, %bb.i ] ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.sroa.0.37, i64 %.sroa.572.23
  store i8 0, ptr %i.cs, align 1, !tbaa !33
  br label %mi_heap_buf_print.exit280

mi_heap_buf_print.exit280:                        ; preds = %thread-pre-split.i268, %.thread.i279, %bb.l, %mi_heap_buf_print.exit, %._crit_edge.i
  %.pre-phi = phi i64 [ %.pre.pre-phi, %._crit_edge.i ], [ %i.ce, %mi_heap_buf_print.exit ], [ %i.ch, %bb.l ], [ %i.ch, %.thread.i279 ], [ %i.ch, %thread-pre-split.i268 ] ; 3 uses
  %.sroa.0.38 = phi ptr [ %.sroa.0.37, %._crit_edge.i ], [ %.sroa.0.7, %mi_heap_buf_print.exit ], [ %.sroa.0.35, %bb.l ], [ %.sroa.0.35, %.thread.i279 ], [ %.sroa.0.35, %thread-pre-split.i268 ] ; 3 uses
  %.sroa.288.37 = phi i64 [ %.sroa.288.36, %._crit_edge.i ], [ %.sroa.288.7, %mi_heap_buf_print.exit ], [ %.sroa.288.34, %thread-pre-split.i268 ], [ 0, %.thread.i279 ], [ %.sroa.288.34, %bb.l ] ; 4 uses
  %.sroa.572.24 = phi i64 [ %.sroa.572.23, %._crit_edge.i ], [ %.sroa.572.4, %mi_heap_buf_print.exit ], [ %.sroa.572.22, %bb.l ], [ %.sroa.572.22, %.thread.i279 ], [ %.sroa.572.22, %thread-pre-split.i268 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg) #11
  %i.ct = call i32 (ptr, i64, ptr, ...) @_mi_snprintf(ptr noundef nonnull %i.bg, i64 noundef 128, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.34, i64 noundef 315) #11 ; 0 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bg, i64 127
  store i8 0, ptr %i.cu, align 1, !tbaa !33
  %.not.i281 = icmp ult i64 %.pre-phi, %.sroa.288.37
  %or.cond2284 = or i1 %or.cond.not, %.not.i281
  br i1 %or.cond2284, label %bb.m, label %mi_heap_buf_print.exit303

bb.m:                                             ; preds = %mi_heap_buf_print.exit280
  %i.cv = load i8, ptr %i.bg, align 16, !tbaa !33 ; 2 uses
  %.not2226.i282 = icmp eq i8 %i.cv, 0
  br i1 %.not2226.i282, label %._crit_edge.i300, label %.lr.ph.i283

.lr.ph.i283:                                      ; preds = %bb.m, %.critedge.i295
  %.sroa.0.39 = phi ptr [ %.sroa.0.40, %.critedge.i295 ], [ %.sroa.0.38, %bb.m ] ; 6 uses
  %.sroa.288.38 = phi i64 [ %.sroa.288.39, %.critedge.i295 ], [ %.sroa.288.37, %bb.m ] ; 8 uses
  %.sroa.572.25 = phi i64 [ %i.cx, %.critedge.i295 ], [ %.sroa.572.24, %bb.m ] ; 6 uses
  %i.cw = phi i8 [ %i.dh, %.critedge.i295 ], [ %i.cv, %bb.m ]
  %.027.i284 = phi ptr [ %i.dg, %.critedge.i295 ], [ %i.bg, %bb.m ]
  %i.cx = add i64 %.sroa.572.25, 1                ; 6 uses
  %.not23.i285 = icmp ult i64 %i.cx, %.sroa.288.38
  br i1 %.not23.i285, label %.critedge.i295, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i283
  %.not21.i.i288 = icmp eq i64 %.sroa.288.38, 0
  br i1 %.not21.i.i288, label %.thread.i302, label %thread-pre-split.i290

thread-pre-split.i290:                            ; preds = %bb.n
  %i.cy = getelementptr i8, ptr %.sroa.0.39, i64 %.sroa.288.38
  %i.cz = getelementptr i8, ptr %i.cy, i64 -1
  store i8 0, ptr %i.cz, align 1, !tbaa !33
  %i.da = icmp sgt i64 %.sroa.288.38, -1
  %or.cond2285 = and i1 %or.cond.not, %i.da
  br i1 %or.cond2285, label %bb.o, label %mi_heap_buf_print.exit303

.thread.i302:                                     ; preds = %bb.n
  br i1 %or.cond.not, label %.thread38.i301, label %mi_heap_buf_print.exit303

.thread38.i301:                                   ; preds = %.thread.i302
  %i.db = call i64 @mi_good_size(i64 noundef 12288) #11
  br label %bb.p

bb.o:                                             ; preds = %thread-pre-split.i290
  %i.dc = shl nuw i64 %.sroa.288.38, 1
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %.thread38.i301
  %i.dd = phi i64 [ %i.db, %.thread38.i301 ], [ %i.dc, %bb.o ] ; 2 uses
  %i.de = call ptr @mi_rezalloc(ptr noundef %.sroa.0.39, i64 noundef %i.dd) #11 ; 2 uses
  %.not22.i.i291 = icmp eq ptr %i.de, null
  br i1 %.not22.i.i291, label %mi_heap_buf_print.exit303, label %.critedge.i295

.critedge.i295:                                   ; preds = %bb.p, %.lr.ph.i283
  %.sroa.0.40 = phi ptr [ %.sroa.0.39, %.lr.ph.i283 ], [ %i.de, %bb.p ] ; 3 uses
  %.sroa.288.39 = phi i64 [ %.sroa.288.38, %.lr.ph.i283 ], [ %i.dd, %bb.p ] ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.40, i64 %.sroa.572.25
  store i8 %i.cw, ptr %i.df, align 1, !tbaa !33
  %i.dg = getelementptr inbounds nuw i8, ptr %.027.i284, i64 1 ; 2 uses
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !33  ; 2 uses
  %.not22.i297 = icmp eq i8 %i.dh, 0
  br i1 %.not22.i297, label %._crit_edge.i300.loopexit, label %.lr.ph.i283, !llvm.loop !46

._crit_edge.i300.loopexit:                        ; preds = %.critedge.i295
  %.pre = add i64 %.sroa.572.25, 2
  br label %._crit_edge.i300

._crit_edge.i300:                                 ; preds = %._crit_edge.i300.loopexit, %bb.m
  %.pre2934.pre-phi = phi i64 [ %.pre, %._crit_edge.i300.loopexit ], [ %.pre-phi, %bb.m ]
  %.sroa.0.41 = phi ptr [ %.sroa.0.40, %._crit_edge.i300.loopexit ], [ %.sroa.0.38, %bb.m ] ; 2 uses
  %.sroa.288.40 = phi i64 [ %.sroa.288.39, %._crit_edge.i300.loopexit ], [ %.sroa.288.37, %bb.m ]
  %.sroa.572.26 = phi i64 [ %i.cx, %._crit_edge.i300.loopexit ], [ %.sroa.572.24, %bb.m ] ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.sroa.0.41, i64 %.sroa.572.26
  store i8 0, ptr %i.di, align 1, !tbaa !33
  br label %mi_heap_buf_print.exit303

mi_heap_buf_print.exit303:                        ; preds = %thread-pre-split.i290, %.thread.i302, %bb.p, %mi_heap_buf_print.exit280, %._crit_edge.i300
  %.pre-phi2935 = phi i64 [ %.pre2934.pre-phi, %._crit_edge.i300 ], [ %.pre-phi, %mi_heap_buf_print.exit280 ], [ %i.cx, %bb.p ], [ %i.cx, %.thread.i302 ], [ %i.cx, %thread-pre-split.i290 ] ; 2 uses
  %.sroa.0.42 = phi ptr [ %.sroa.0.41, %._crit_edge.i300 ], [ %.sroa.0.38, %mi_heap_buf_print.exit280 ], [ %.sroa.0.39, %bb.p ], [ %.sroa.0.39, %.thread.i302 ], [ %.sroa.0.39, %thread-pre-split.i290 ] ; 2 uses
  %.sroa.288.41 = phi i64 [ %.sroa.288.40, %._crit_edge.i300 ], [ %.sroa.288.37, %mi_heap_buf_print.exit280 ], [ %.sroa.288.38, %thread-pre-split.i290 ], [ 0, %.thread.i302 ], [ %.sroa.288.38, %bb.p ] ; 3 uses
  %.sroa.572.27 = phi i64 [ %.sroa.572.26, %._crit_edge.i300 ], [ %.sroa.572.24, %mi_heap_buf_print.exit280 ], [ %.sroa.572.25, %bb.p ], [ %.sroa.572.25, %.thread.i302 ], [ %.sroa.572.25, %thread-pre-split.i290 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg) #11
  %.not.i80 = icmp ult i64 %.pre-phi2935, %.sroa.288.41
  %or.cond2286 = or i1 %or.cond.not, %.not.i80
  br i1 %or.cond2286, label %.preheader2432, label %mi_heap_buf_print.exit99

.preheader2432:                                   ; preds = %mi_heap_buf_print.exit303, %.critedge.i92
  %.sroa.0.8 = phi ptr [ %.sroa.0.9, %.critedge.i92 ], [ %.sroa.0.42, %mi_heap_buf_print.exit303 ] ; 6 uses
  %.sroa.288.8 = phi i64 [ %.sroa.288.9, %.critedge.i92 ], [ %.sroa.288.41, %mi_heap_buf_print.exit303 ] ; 8 uses
  %.sroa.572.5 = phi i64 [ %i.dk, %.critedge.i92 ], [ %.sroa.572.27, %mi_heap_buf_print.exit303 ] ; 6 uses
  %i.dj = phi i8 [ %i.dt, %.critedge.i92 ], [ 32, %mi_heap_buf_print.exit303 ]
  %.027.i81.idx = phi i64 [ %.027.i81.add, %.critedge.i92 ], [ 0, %mi_heap_buf_print.exit303 ]
  %i.dk = add i64 %.sroa.572.5, 1                 ; 7 uses
  %.not23.i82 = icmp ult i64 %i.dk, %.sroa.288.8
  br i1 %.not23.i82, label %.critedge.i92, label %bb.q

bb.q:                                             ; preds = %.preheader2432
  %.not21.i.i85 = icmp eq i64 %.sroa.288.8, 0
  br i1 %.not21.i.i85, label %.thread.i98, label %thread-pre-split.i87

thread-pre-split.i87:                             ; preds = %bb.q
  %i.dl = getelementptr i8, ptr %.sroa.0.8, i64 %.sroa.288.8
  %i.dm = getelementptr i8, ptr %i.dl, i64 -1
  store i8 0, ptr %i.dm, align 1, !tbaa !33
  %i.dn = icmp sgt i64 %.sroa.288.8, -1
  %or.cond2287 = and i1 %or.cond.not, %i.dn
  br i1 %or.cond2287, label %bb.r, label %mi_heap_buf_print.exit99

.thread.i98:                                      ; preds = %bb.q
  br i1 %or.cond.not, label %.thread38.i97, label %mi_heap_buf_print.exit99

.thread38.i97:                                    ; preds = %.thread.i98
  %i.do = call i64 @mi_good_size(i64 noundef 12288) #11
  br label %bb.s

bb.r:                                             ; preds = %thread-pre-split.i87
  %i.dp = shl nuw i64 %.sroa.288.8, 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.thread38.i97
  %i.dq = phi i64 [ %i.do, %.thread38.i97 ], [ %i.dp, %bb.r ] ; 2 uses
  %i.dr = call ptr @mi_rezalloc(ptr noundef %.sroa.0.8, i64 noundef %i.dq) #11 ; 2 uses
  %.not22.i.i88 = icmp eq ptr %i.dr, null
  br i1 %.not22.i.i88, label %mi_heap_buf_print.exit99, label %.critedge.i92

.critedge.i92:                                    ; preds = %bb.s, %.preheader2432
  %.sroa.0.9 = phi ptr [ %.sroa.0.8, %.preheader2432 ], [ %i.dr, %bb.s ] ; 4 uses
  %.sroa.288.9 = phi i64 [ %.sroa.288.8, %.preheader2432 ], [ %i.dq, %bb.s ] ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0.9, i64 %.sroa.572.5
  store i8 %i.dj, ptr %i.ds, align 1, !tbaa !33
  %.027.i81.add = add nuw nsw i64 %.027.i81.idx, 1 ; 3 uses
  %.ptr = getelementptr inbounds nuw i8, ptr @.str.35, i64 %.027.i81.add
  %i.dt = load i8, ptr %.ptr, align 1, !tbaa !33
  %exitcond = icmp eq i64 %.027.i81.add, 15
  br i1 %exitcond, label %._crit_edge.loopexit.i95, label %.preheader2432, !llvm.loop !46

._crit_edge.loopexit.i95:                         ; preds = %.critedge.i92
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.9, i64 %i.dk
  store i8 0, ptr %i.du, align 1, !tbaa !33
  %.pre2936 = add i64 %.sroa.572.5, 2
  br label %mi_heap_buf_print.exit99

mi_heap_buf_print.exit99:                         ; preds = %thread-pre-split.i87, %.thread.i98, %bb.s, %mi_heap_buf_print.exit303, %._crit_edge.loopexit.i95
  %.pre-phi2937 = phi i64 [ %.pre2936, %._crit_edge.loopexit.i95 ], [ %.pre-phi2935, %mi_heap_buf_print.exit303 ], [ %i.dk, %bb.s ], [ %i.dk, %.thread.i98 ], [ %i.dk, %thread-pre-split.i87 ] ; 3 uses
  %.sroa.0.10 = phi ptr [ %.sroa.0.9, %._crit_edge.loopexit.i95 ], [ %.sroa.0.42, %mi_heap_buf_print.exit303 ], [ %.sroa.0.8, %bb.s ], [ %.sroa.0.8, %.thread.i98 ], [ %.sroa.0.8, %thread-pre-split.i87 ] ; 3 uses
  %.sroa.288.10 = phi i64 [ %.sroa.288.9, %._crit_edge.loopexit.i95 ], [ %.sroa.288.41, %mi_heap_buf_print.exit303 ], [ %.sroa.288.8, %thread-pre-split.i87 ], [ 0, %.thread.i98 ], [ %.sroa.288.8, %bb.s ] ; 4 uses
  %.sroa.572.6 = phi i64 [ %i.dk, %._crit_edge.loopexit.i95 ], [ %.sroa.572.27, %mi_heap_buf_print.exit303 ], [ %.sroa.572.5, %bb.s ], [ %.sroa.572.5, %.thread.i98 ], [ %.sroa.572.5, %thread-pre-split.i87 ] ; 3 uses
  %i.dv = call ptr @_mi_subproc() #11             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #11
  %3 = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.dw = load i64, ptr @mi_process_start, align 8, !tbaa !23
  %i.dx = call i64 @_mi_prim_clock_now() #11
  %i.dy = load i64, ptr @mi_clock_diff, align 8, !tbaa !23
  %i.dz = add i64 %i.dw, %i.dy
  %i.ea = sub i64 %i.dx, %i.dz
  store i64 %i.ea, ptr %2, align 8, !tbaa !24
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dv, i64 2080
  %i.ec = load atomic i64, ptr %i.eb monotonic, align 8 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store i64 %i.ec, ptr %i.ed, align 8, !tbaa !26
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dv, i64 2072
  %i.ef = load atomic i64, ptr %i.ee monotonic, align 8 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  store i64 %i.ef, ptr %i.eg, align 8, !tbaa !27
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i64 %i.ec, ptr %i.eh, align 8, !tbaa !28
  %i.ei = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  store i64 %i.ef, ptr %i.ei, align 8, !tbaa !29
  %i.ej = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ek = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  store i64 0, ptr %i.ek, align 8, !tbaa !30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  call void @_mi_prim_process_info(ptr noundef nonnull %2) #11
  %i.el = load i64, ptr %2, align 8, !tbaa !24
  %i.em = call i64 @llvm.smax.i64(i64 %i.el, i64 0)
  %i.en = load i64, ptr %3, align 8, !tbaa !31
  %i.eo = call i64 @llvm.smax.i64(i64 %i.en, i64 0)
  %i.ep = load i64, ptr %i.ej, align 8, !tbaa !32
  %i.eq = call i64 @llvm.smax.i64(i64 %i.ep, i64 0)
  %i.er = load i64, ptr %i.eh, align 8, !tbaa !28
  %i.es = load i64, ptr %i.ei, align 8, !tbaa !29
  %i.et = load i64, ptr %i.ed, align 8, !tbaa !26
  %i.eu = load i64, ptr %i.eg, align 8, !tbaa !27
  %i.ev = load i64, ptr %i.ek, align 8, !tbaa !30
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf) #11
  %i.ew = call i32 (ptr, i64, ptr, ...) @_mi_snprintf(ptr noundef nonnull %i.bf, i64 noundef 128, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.36, i64 noundef %i.em, ptr noundef nonnull @.str.104) #11 ; 0 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.bf, i64 127
  store i8 0, ptr %i.ex, align 1, !tbaa !33
  %.not.i304 = icmp ult i64 %.pre-phi2937, %.sroa.288.10
  %or.cond2288 = or i1 %or.cond.not, %.not.i304
  br i1 %or.cond2288, label %bb.t, label %mi_heap_buf_print.exit326

bb.t:                                             ; preds = %mi_heap_buf_print.exit99
  %i.ey = load i8, ptr %i.bf, align 16, !tbaa !33 ; 2 uses
  %.not2226.i305 = icmp eq i8 %i.ey, 0
  br i1 %.not2226.i305, label %._crit_edge.i323, label %.lr.ph.i306

.lr.ph.i306:                                      ; preds = %bb.t, %.critedge.i318
  %.sroa.0.43 = phi ptr [ %.sroa.0.44, %.critedge.i318 ], [ %.sroa.0.10, %bb.t ] ; 6 uses
  %.sroa.288.42 = phi i64 [ %.sroa.288.43, %.critedge.i318 ], [ %.sroa.288.10, %bb.t ] ; 8 uses
  %.sroa.572.28 = phi i64 [ %i.fa, %.critedge.i318 ], [ %.sroa.572.6, %bb.t ] ; 6 uses
  %i.ez = phi i8 [ %i.fk, %.critedge.i318 ], [ %i.ey, %bb.t ]
  %.027.i307 = phi ptr [ %i.fj, %.critedge.i318 ], [ %i.bf, %bb.t ]
  %i.fa = add i64 %.sroa.572.28, 1                ; 6 uses
  %.not23.i308 = icmp ult i64 %i.fa, %.sroa.288.42
  br i1 %.not23.i308, label %.critedge.i318, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i306
  %.not21.i.i311 = icmp eq i64 %.sroa.288.42, 0
  br i1 %.not21.i.i311, label %.thread.i325, label %thread-pre-split.i313

thread-pre-split.i313:                            ; preds = %bb.u
  %i.fb = getelementptr i8, ptr %.sroa.0.43, i64 %.sroa.288.42
  %i.fc = getelementptr i8, ptr %i.fb, i64 -1
  store i8 0, ptr %i.fc, align 1, !tbaa !33
  %i.fd = icmp sgt i64 %.sroa.288.42, -1
  %or.cond2289 = and i1 %or.cond.not, %i.fd
  br i1 %or.cond2289, label %bb.v, label %mi_heap_buf_print.exit326

.thread.i325:                                     ; preds = %bb.u
  br i1 %or.cond.not, label %.thread38.i324, label %mi_heap_buf_print.exit326

.thread38.i324:                                   ; preds = %.thread.i325
  %i.fe = call i64 @mi_good_size(i64 noundef 12288) #11
  br label %bb.w

bb.v:                                             ; preds = %thread-pre-split.i313
  %i.ff = shl nuw i64 %.sroa.288.42, 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.thread38.i324
  %i.fg = phi i64 [ %i.fe, %.thread38.i324 ], [ %i.ff, %bb.v ] ; 2 uses
  %i.fh = call ptr @mi_rezalloc(ptr noundef %.sroa.0.43, i64 noundef %i.fg) #11 ; 2 uses
  %.not22.i.i314 = icmp eq ptr %i.fh, null
  br i1 %.not22.i.i314, label %mi_heap_buf_print.exit326, label %.critedge.i318

.critedge.i318:                                   ; preds = %bb.w, %.lr.ph.i306
  %.sroa.0.44 = phi ptr [ %.sroa.0.43, %.lr.ph.i306 ], [ %i.fh, %bb.w ] ; 3 uses
  %.sroa.288.43 = phi i64 [ %.sroa.288.42, %.lr.ph.i306 ], [ %i.fg, %bb.w ] ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.sroa.0.44, i64 %.sroa.572.28
  store i8 %i.ez, ptr %i.fi, align 1, !tbaa !33
  %i.fj = getelementptr inbounds nuw i8, ptr %.027.i307, i64 1 ; 2 uses
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !33  ; 2 uses
  %.not22.i320 = icmp eq i8 %i.fk, 0
  br i1 %.not22.i320, label %._crit_edge.i323.loopexit, label %.lr.ph.i306, !llvm.loop !46

._crit_edge.i323.loopexit:                        ; preds = %.critedge.i318
  %.pre3049 = add i64 %.sroa.572.28, 2
  br label %._crit_edge.i323

._crit_edge.i323:                                 ; preds = %._crit_edge.i323.loopexit, %bb.t
  %.pre2938.pre-phi = phi i64 [ %.pre3049, %._crit_edge.i323.loopexit ], [ %.pre-phi2937, %bb.t ]
  %.sroa.0.45 = phi ptr [ %.sroa.0.44, %._crit_edge.i323.loopexit ], [ %.sroa.0.10, %bb.t ] ; 2 uses
  %.sroa.288.44 = phi i64 [ %.sroa.288.43, %._crit_edge.i323.loopexit ], [ %.sroa.288.10, %bb.t ]
  %.sroa.572.29 = phi i64 [ %i.fa, %._crit_edge.i323.loopexit ], [ %.sroa.572.6, %bb.t ] ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %.sroa.0.45, i64 %.sroa.572.29
  store i8 0, ptr %i.fl, align 1, !tbaa !33
  br label %mi_heap_buf_print.exit326

mi_heap_buf_print.exit326:                        ; preds = %thread-pre-split.i313, %.thread.i325, %bb.w, %mi_heap_buf_print.exit99, %._crit_edge.i323
  %.pre-phi2939 = phi i64 [ %.pre2938.pre-phi, %._crit_edge.i323 ], [ %.pre-phi2937, %mi_heap_buf_print.exit99 ], [ %i.fa, %bb.w ], [ %i.fa, %.thread.i325 ], [ %i.fa, %thread-pre-split.i313 ] ; 3 uses
  %.sroa.0.46 = phi ptr [ %.sroa.0.45, %._crit_edge.i323 ], [ %.sroa.0.10, %mi_heap_buf_print.exit99 ], [ %.sroa.0.43, %bb.w ], [ %.sroa.0.43, %.thread.i325 ], [ %.sroa.0.43, %thread-pre-split.i313 ] ; 3 uses
  %.sroa.288.45 = phi i64 [ %.sroa.288.44, %._crit_edge.i323 ], [ %.sroa.288.10, %mi_heap_buf_print.exit99 ], [ %.sroa.288.42, %thread-pre-split.i313 ], [ 0, %.thread.i325 ], [ %.sroa.288.42, %bb.w ] ; 4 uses
  %.sroa.572.30 = phi i64 [ %.sroa.572.29, %._crit_edge.i323 ], [ %.sroa.572.6, %mi_heap_buf_print.exit99 ], [ %.sroa.572.28, %bb.w ], [ %.sroa.572.28, %.thread.i325 ], [ %.sroa.572.28, %thread-pre-split.i313 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be) #11
  %i.fm = call i32 (ptr, i64, ptr, ...) @_mi_snprintf(ptr noundef nonnull %i.be, i64 noundef 128, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.37, i64 noundef %i.eo, ptr noundef nonnull @.str.104) #11 ; 0 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.be, i64 127
  store i8 0, ptr %i.fn, align 1, !tbaa !33
  %.not.i327 = icmp ult i64 %.pre-phi2939, %.sroa.288.45
  %or.cond2290 = or i1 %or.cond.not, %.not.i327
  br i1 %or.cond2290, label %bb.x, label %mi_heap_buf_print.exit349

bb.x:                                             ; preds = %mi_heap_buf_print.exit326
  %i.fo = load i8, ptr %i.be, align 16, !tbaa !33 ; 2 uses
  %.not2226.i328 = icmp eq i8 %i.fo, 0
  br i1 %.not2226.i328, label %._crit_edge.i346, label %.lr.ph.i329

.lr.ph.i329:                                      ; preds = %bb.x, %.critedge.i341
  %.sroa.0.47 = phi ptr [ %.sroa.0.48, %.critedge.i341 ], [ %.sroa.0.46, %bb.x ] ; 6 uses
  %.sroa.288.46 = phi i64 [ %.sroa.288.47, %.critedge.i341 ], [ %.sroa.288.45, %bb.x ] ; 8 uses
  %.sroa.572.31 = phi i64 [ %i.fq, %.critedge.i341 ], [ %.sroa.572.30, %bb.x ] ; 6 uses
  %i.fp = phi i8 [ %i.ga, %.critedge.i341 ], [ %i.fo, %bb.x ]
  %.027.i330 = phi ptr [ %i.fz, %.critedge.i341 ], [ %i.be, %bb.x ]
  %i.fq = add i64 %.sroa.572.31, 1                ; 6 uses
  %.not23.i331 = icmp ult i64 %i.fq, %.sroa.288.46
  br i1 %.not23.i331, label %.critedge.i341, label %bb.y

bb.y:                                             ; preds = %.lr.ph.i329
  %.not21.i.i334 = icmp eq i64 %.sroa.288.46, 0
  br i1 %.not21.i.i334, label %.thread.i348, label %thread-pre-split.i336

thread-pre-split.i336:                            ; preds = %bb.y
  %i.fr = getelementptr i8, ptr %.sroa.0.47, i64 %.sroa.288.46
  %i.fs = getelementptr i8, ptr %i.fr, i64 -1
  store i8 0, ptr %i.fs, align 1, !tbaa !33
  %i.ft = icmp sgt i64 %.sroa.288.46, -1
  %or.cond2291 = and i1 %or.cond.not, %i.ft
  br i1 %or.cond2291, label %bb.z, label %mi_heap_buf_print.exit349

.thread.i348:                                     ; preds = %bb.y
  br i1 %or.cond.not, label %.thread38.i347, label %mi_heap_buf_print.exit349

.thread38.i347:                                   ; preds = %.thread.i348
  %i.fu = call i64 @mi_good_size(i64 noundef 12288) #11
  br label %bb.aa

bb.z:                                             ; preds = %thread-pre-split.i336
  %i.fv = shl nuw i64 %.sroa.288.46, 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.thread38.i347
  %i.fw = phi i64 [ %i.fu, %.thread38.i347 ], [ %i.fv, %bb.z ] ; 2 uses
  %i.fx = call ptr @mi_rezalloc(ptr noundef %.sroa.0.47, i64 noundef %i.fw) #11 ; 2 uses
  %.not22.i.i337 = icmp eq ptr %i.fx, null
  br i1 %.not22.i.i337, label %mi_heap_buf_print.exit349, label %.critedge.i341

.critedge.i341:                                   ; preds = %bb.aa, %.lr.ph.i329
  %.sroa.0.48 = phi ptr [ %.sroa.0.47, %.lr.ph.i329 ], [ %i.fx, %bb.aa ] ; 3 uses
  %.sroa.288.47 = phi i64 [ %.sroa.288.46, %.lr.ph.i329 ], [ %i.fw, %bb.aa ] ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.0.48, i64 %.sroa.572.31
  store i8 %i.fp, ptr %i.fy, align 1, !tbaa !33
  %i.fz = getelementptr inbounds nuw i8, ptr %.027.i330, i64 1 ; 2 uses
  %i.ga = load i8, ptr %i.fz, align 1, !tbaa !33  ; 2 uses
  %.not22.i343 = icmp eq i8 %i.ga, 0
  br i1 %.not22.i343, label %._crit_edge.i346.loopexit, label %.lr.ph.i329, !llvm.loop !46

._crit_edge.i346.loopexit:                        ; preds = %.critedge.i341
  %.pre3050 = add i64 %.sroa.572.31, 2
  br label %._crit_edge.i346

._crit_edge.i346:                                 ; preds = %._crit_edge.i346.loopexit, %bb.x
  %.pre2940.pre-phi = phi i64 [ %.pre3050, %._crit_edge.i346.loopexit ], [ %.pre-phi2939, %bb.x ]
  %.sroa.0.49 = phi ptr [ %.sroa.0.48, %._crit_edge.i346.loopexit ], [ %.sroa.0.46, %bb.x ] ; 2 uses
  %.sroa.288.48 = phi i64 [ %.sroa.288.47, %._crit_edge.i346.loopexit ], [ %.sroa.288.45, %bb.x ]
  %.sroa.572.32 = phi i64 [ %i.fq, %._crit_edge.i346.loopexit ], [ %.sroa.572.30, %bb.x ] ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %.sroa.0.49, i64 %.sroa.572.32
  store i8 0, ptr %i.gb, align 1, !tbaa !33
  br label %mi_heap_buf_print.exit349

mi_heap_buf_print.exit349:                        ; preds = %thread-pre-split.i336, %.thread.i348, %bb.aa, %mi_heap_buf_print.exit326, %._crit_edge.i346
  %.pre-phi2941 = phi i64 [ %.pre2940.pre-phi, %._crit_edge.i346 ], [ %.pre-phi2939, %mi_heap_buf_print.exit326 ], [ %i.fq, %bb.aa ], [ %i.fq, %.thread.i348 ], [ %i.fq, %thread-pre-split.i336 ] ; 3 uses
  %.sroa.0.50 = phi ptr [ %.sroa.0.49, %._crit_edge.i346 ], [ %.sroa.0.46, %mi_heap_buf_print.exit326 ], [ %.sroa.0.47, %bb.aa ], [ %.sroa.0.47, %.thread.i348 ], [ %.sroa.0.47, %thread-pre-split.i336 ] ; 3 uses
  %.sroa.288.49 = phi i64 [ %.sroa.288.48, %._crit_edge.i346 ], [ %.sroa.288.45, %mi_heap_buf_print.exit326 ], [ %.sroa.288.46, %thread-pre-split.i336 ], [ 0, %.thread.i348 ], [ %.sroa.288.46, %bb.aa ] ; 4 uses
  %.sroa.572.33 = phi i64 [ %.sroa.572.32, %._crit_edge.i346 ], [ %.sroa.572.30, %mi_heap_buf_print.exit326 ], [ %.sroa.572.31, %bb.aa ], [ %.sroa.572.31, %.thread.i348 ], [ %.sroa.572.31, %thread-pre-split.i336 ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd) #11
  %i.gc = call i32 (ptr, i64, ptr, ...) @_mi_snprintf(ptr noundef nonnull %i.bd, i64 noundef 128, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.38, i64 noundef %i.eq, ptr noundef nonnull @.str.104) #11 ; 0 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bd, i64 127
  store i8 0, ptr %i.gd, align 1, !tbaa !33
  %.not.i350 = icmp ult i64 %.pre-phi2941, %.sroa.288.49
  %or.cond2292 = or i1 %or.cond.not, %.not.i350
  br i1 %or.cond2292, label %bb.ab, label %mi_heap_buf_print.exit372

bb.ab:                                            ; preds = %mi_heap_buf_print.exit349
  %i.ge = load i8, ptr %i.bd, align 16, !tbaa !33 ; 2 uses
  %.not2226.i351 = icmp eq i8 %i.ge, 0
  br i1 %.not2226.i351, label %._crit_edge.i369, label %.lr.ph.i352

.lr.ph.i352:                                      ; preds = %bb.ab, %.critedge.i364
  %.sroa.0.51 = phi ptr [ %.sroa.0.52, %.critedge.i364 ], [ %.sroa.0.50, %bb.ab ] ; 6 uses
  %.sroa.288.50 = phi i64 [ %.sroa.288.51, %.critedge.i364 ], [ %.sroa.288.49, %bb.ab ] ; 8 uses
  %.sroa.572.34 = phi i64 [ %i.gg, %.critedge.i364 ], [ %.sroa.572.33, %bb.ab ] ; 6 uses
  %i.gf = phi i8 [ %i.gq, %.critedge.i364 ], [ %i.ge, %bb.ab ]
  %.027.i353 = phi ptr [ %i.gp, %.critedge.i364 ], [ %i.bd, %bb.ab ]
  %i.gg = add i64 %.sroa.572.34, 1                ; 6 uses
  %.not23.i354 = icmp ult i64 %i.gg, %.sroa.288.50
end_hunk_1
