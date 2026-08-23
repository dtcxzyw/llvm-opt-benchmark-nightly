Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/intel_dmc?download=true
inline.NumInlined: 236
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@pipedmc_clock_gating_wa:bb.a
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 288084) #12
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 288088) #12
  %.val.i.3.i = load ptr, ptr %0, align 8
  %i.ax = tail call ptr @to_intel_uncore(ptr noundef %.val.i.3.i) #12 ; 4 uses
  %i.ay = getelementptr i8, ptr %i.ax, i64 144
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call i32 %i.az(ptr noundef %i.ax, i32 288088, i1 noundef zeroext true) #12, !inline_history !61
  %i.bb = or i32 %i.ba, 4096
  %i.bc = getelementptr i8, ptr %i.ax, i64 176
  %i.bd = load ptr, ptr %i.bc, align 8
  tail call void %i.bd(ptr noundef %i.ax, i32 288088, i32 noundef %i.bb, i1 noundef zeroext true) #12, !inline_history !62
  br label %.sink.split

.sink.split:                                      ; preds = %.preheader.preheader.i, %.preheader10.preheader.i, %bb.b
  %.sink = phi i32 [ 288048, %bb.b ], [ 288088, %.preheader10.preheader.i ], [ 288088, %.preheader.preheader.i ]
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %.sink) #12
  br label %bb.e

bb.e:                                             ; preds = %.sink.split, %bb.c
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_dmc_disable_program(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 792
  %.val.i = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not.i.i = icmp eq ptr %.val.i, null
  br i1 %.not.i.i, label %intel_dmc_has_payload.exit.thread, label %intel_dmc_has_payload.exit

intel_dmc_has_payload.exit:                       ; preds = %bb.a
  %i.b = getelementptr i8, ptr %.val.i, i64 240
  %i.c = load ptr, ptr %i.b, align 8
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %intel_dmc_has_payload.exit.thread, label %bb.b

bb.b:                                             ; preds = %intel_dmc_has_payload.exit
  tail call fastcc void @pipedmc_clock_gating_wa(ptr noundef %0, i1 noundef zeroext true) #11, !srcloc !63
  tail call fastcc void @disable_all_event_handlers(ptr noundef %0, i32 noundef 0) #11, !srcloc !64
  tail call fastcc void @disable_all_event_handlers(ptr noundef %0, i32 noundef 1) #11, !srcloc !64
  tail call fastcc void @disable_all_event_handlers(ptr noundef %0, i32 noundef 2) #11, !srcloc !64
  tail call fastcc void @disable_all_event_handlers(ptr noundef %0, i32 noundef 3) #11, !srcloc !64
  tail call fastcc void @disable_all_event_handlers(ptr noundef %0, i32 noundef 4) #11, !srcloc !64
  tail call fastcc void @pipedmc_clock_gating_wa(ptr noundef %0, i1 noundef zeroext false) #11, !srcloc !65
  br label %intel_dmc_has_payload.exit.thread

intel_dmc_has_payload.exit.thread:                ; preds = %bb.a, %intel_dmc_has_payload.exit, %bb.b
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @disable_all_event_handlers(ptr noundef %0, i32 noundef %1) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1168       ; 2 uses
  %i.b = load i16, ptr %i.a, align 8
  %i.c = icmp ult i16 %i.b, 12
  br i1 %i.c, label %has_dmc_id_fw.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 792
  %.val = load ptr, ptr %i.d, align 8             ; 2 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %has_dmc_id_fw.exit.thread, label %has_dmc_id_fw.exit

has_dmc_id_fw.exit:                               ; preds = %bb.b
  %i.e = zext i32 %1 to i64
  %i.f = getelementptr [192 x i8], ptr %.val, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 240
  %i.h = load ptr, ptr %i.g, align 8
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %has_dmc_id_fw.exit.thread, label %.preheader

.preheader:                                       ; preds = %has_dmc_id_fw.exit
  %i.i = icmp eq i32 %1, 0
  %i.j = shl i32 %1, 10                           ; 2 uses
  %i.k = add i32 %i.j, -972
  %i.l = add i32 %i.j, -1020
  br i1 %i.i, label %.thread.us.preheader, label %.preheader.split

.thread.us.preheader:                             ; preds = %.preheader
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 585780) #12
  %.val.i.i.us = load ptr, ptr %0, align 8
  %i.m = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i.us) #12 ; 2 uses
  %i.n = getelementptr i8, ptr %i.m, i64 176
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef %i.m, i32 585780, i32 noundef 196864, i1 noundef zeroext true) #12, !inline_history !66
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 585780) #12
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 585732) #12
  %.val.i3.i.us = load ptr, ptr %0, align 8
  %i.p = tail call ptr @to_intel_uncore(ptr noundef %.val.i3.i.us) #12 ; 2 uses
  %i.q = getelementptr i8, ptr %i.p, i64 176
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef %i.p, i32 585732, i32 noundef 0, i1 noundef zeroext true) #12, !inline_history !66
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 585732) #12
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 585784) #12
  %.val.i.i.us.1 = load ptr, ptr %0, align 8
  %i.s = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i.us.1) #12 ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 176
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef %i.s, i32 585784, i32 noundef 196864, i1 noundef zeroext true) #12, !inline_history !66
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 585784) #12
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 585736) #12
  %.val.i3.i.us.1 = load ptr, ptr %0, align 8
  %i.v = tail call ptr @to_intel_uncore(ptr noundef %.val.i3.i.us.1) #12 ; 2 uses
  %i.w = getelementptr i8, ptr %i.v, i64 176
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef %i.v, i32 585736, i32 noundef 0, i1 noundef zeroext true) #12, !inline_history !66
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 585736) #12
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 585788) #12
  %.val.i.i.us.2 = load ptr, ptr %0, align 8
  %i.y = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i.us.2) #12 ; 2 uses
  %i.z = getelementptr i8, ptr %i.y, i64 176
  %i.aa = load ptr, ptr %i.z, align 8
  tail call void %i.aa(ptr noundef %i.y, i32 585788, i32 noundef 196864, i1 noundef zeroext true) #12, !inline_history !66
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 585788) #12
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 585740) #12
  %.val.i3.i.us.2 = load ptr, ptr %0, align 8
  %i.ab = tail call ptr @to_intel_uncore(ptr noundef %.val.i3.i.us.2) #12 ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 176
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef %i.ab, i32 585740, i32 noundef 0, i1 noundef zeroext true) #12, !inline_history !66
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 585740) #12
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 585792) #12
  %.val.i.i.us.3 = load ptr, ptr %0, align 8
  %i.ae = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i.us.3) #12 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 176
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef %i.ae, i32 585792, i32 noundef 196864, i1 noundef zeroext true) #12, !inline_history !66
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 585792) #12
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 585744) #12
  %.val.i3.i.us.3 = load ptr, ptr %0, align 8
  %i.ah = tail call ptr @to_intel_uncore(ptr noundef %.val.i3.i.us.3) #12 ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 176
  %i.aj = load ptr, ptr %i.ai, align 8
  tail call void %i.aj(ptr noundef %i.ah, i32 585744, i32 noundef 0, i1 noundef zeroext true) #12, !inline_history !66
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 585744) #12
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 585796) #12
  %.val.i.i.us.4 = load ptr, ptr %0, align 8
  %i.ak = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i.us.4) #12 ; 2 uses
  %i.al = getelementptr i8, ptr %i.ak, i64 176
  %i.am = load ptr, ptr %i.al, align 8
  tail call void %i.am(ptr noundef %i.ak, i32 585796, i32 noundef 196864, i1 noundef zeroext true) #12, !inline_history !66
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 585796) #12
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 585748) #12
  %.val.i3.i.us.4 = load ptr, ptr %0, align 8
  %i.an = tail call ptr @to_intel_uncore(ptr noundef %.val.i3.i.us.4) #12 ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 176
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void %i.ap(ptr noundef %i.an, i32 585748, i32 noundef 0, i1 noundef zeroext true) #12, !inline_history !66
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 585748) #12
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 585800) #12
  %.val.i.i.us.5 = load ptr, ptr %0, align 8
  %i.aq = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i.us.5) #12 ; 2 uses
  %i.ar = getelementptr i8, ptr %i.aq, i64 176
  %i.as = load ptr, ptr %i.ar, align 8
  tail call void %i.as(ptr noundef %i.aq, i32 585800, i32 noundef 196864, i1 noundef zeroext true) #12, !inline_history !66
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 585800) #12
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 585752) #12
  %.val.i3.i.us.5 = load ptr, ptr %0, align 8
  %i.at = tail call ptr @to_intel_uncore(ptr noundef %.val.i3.i.us.5) #12 ; 2 uses
  %i.au = getelementptr i8, ptr %i.at, i64 176
  %i.av = load ptr, ptr %i.au, align 8
  tail call void %i.av(ptr noundef %i.at, i32 585752, i32 noundef 0, i1 noundef zeroext true) #12, !inline_history !66
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 585752) #12
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 585804) #12
  %.val.i.i.us.6 = load ptr, ptr %0, align 8
  %i.aw = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i.us.6) #12 ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 176
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef %i.aw, i32 585804, i32 noundef 196864, i1 noundef zeroext true) #12, !inline_history !66
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 585804) #12
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 585756) #12
  %.val.i3.i.us.6 = load ptr, ptr %0, align 8
  %i.az = tail call ptr @to_intel_uncore(ptr noundef %.val.i3.i.us.6) #12 ; 2 uses
  %i.ba = getelementptr i8, ptr %i.az, i64 176
  %i.bb = load ptr, ptr %i.ba, align 8
  tail call void %i.bb(ptr noundef %i.az, i32 585756, i32 noundef 0, i1 noundef zeroext true) #12, !inline_history !66
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 585756) #12
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 585808) #12
  %.val.i.i.us.7 = load ptr, ptr %0, align 8
  %i.bc = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i.us.7) #12 ; 2 uses
  %i.bd = getelementptr i8, ptr %i.bc, i64 176
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void %i.be(ptr noundef %i.bc, i32 585808, i32 noundef 196864, i1 noundef zeroext true) #12, !inline_history !66
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 585808) #12
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 585760) #12
  %.val.i3.i.us.7 = load ptr, ptr %0, align 8
  %i.bf = tail call ptr @to_intel_uncore(ptr noundef %.val.i3.i.us.7) #12 ; 2 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 176
  %i.bh = load ptr, ptr %i.bg, align 8
  tail call void %i.bh(ptr noundef %i.bf, i32 585760, i32 noundef 0, i1 noundef zeroext true) #12, !inline_history !66
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 585760) #12
  br label %has_dmc_id_fw.exit.thread

.preheader.split:                                 ; preds = %.preheader, %.preheader.split
  %.015 = phi i32 [ %i.bw, %.preheader.split ], [ 0, %.preheader ] ; 2 uses
  %i.bi = load i16, ptr %i.a, align 8
  %i.bj = icmp ugt i16 %i.bi, 12
  %i.bk = select i1 %i.bj, i32 389120, i32 598016 ; 2 uses
  %i.bl = shl nuw nsw i32 %.015, 2                ; 2 uses
  %i.bm = add nuw i32 %i.k, %i.bl
  %i.bn = add i32 %i.bm, %i.bk                    ; 3 uses
  %i.bo = add i32 %i.l, %i.bk
  %i.bp = add i32 %i.bo, %i.bl                    ; 3 uses
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.bn) #12
  %.val.i.i = load ptr, ptr %0, align 8
  %i.bq = tail call ptr @to_intel_uncore(ptr noundef %.val.i.i) #12 ; 2 uses
  %i.br = getelementptr i8, ptr %i.bq, i64 176
  %i.bs = load ptr, ptr %i.br, align 8
  tail call void %i.bs(ptr noundef %i.bq, i32 %i.bn, i32 noundef 196864, i1 noundef zeroext true) #12, !inline_history !66
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.bn) #12
  tail call void @intel_dmc_wl_get(ptr noundef %0, i32 %i.bp) #12
  %.val.i3.i = load ptr, ptr %0, align 8
  %i.bt = tail call ptr @to_intel_uncore(ptr noundef %.val.i3.i) #12 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.bt, i64 176
  %i.bv = load ptr, ptr %i.bu, align 8
  tail call void %i.bv(ptr noundef %i.bt, i32 %i.bp, i32 noundef 0, i1 noundef zeroext true) #12, !inline_history !66
  tail call void @intel_dmc_wl_put(ptr noundef %0, i32 %i.bp) #12
  %i.bw = add nuw nsw i32 %.015, 1                ; 2 uses
  %exitcond.not = icmp eq i32 %i.bw, 8
  br i1 %exitcond.not, label %has_dmc_id_fw.exit.thread, label %.preheader.split, !llvm.loop !67

has_dmc_id_fw.exit.thread:                        ; preds = %.preheader.split, %.thread.us.preheader, %bb.b, %has_dmc_id_fw.exit, %bb.a
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @intel_dmc_init(ptr noundef %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1202
  %i.b = load i8, ptr %i.a, align 2, !range !20, !noundef !21
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.ab

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @intel_dmc_runtime_pm_get(ptr noundef %0) #11, !srcloc !68
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 80), align 16
  %i.e = tail call noalias align 8 dereferenceable_or_null(1024) ptr @__kmalloc_cache_noprof(ptr noundef %i.d, i32 noundef range(i32 2304, 3584) 3520, i64 noundef range(i64 0, 4294967296) 1024) #14 ; 10 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %0, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 8        ; 2 uses
  store i64 4503599625273344, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %i.e, i64 16       ; 3 uses
  store volatile ptr %i.g, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %i.e, i64 24
  store volatile ptr %i.g, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %i.e, i64 32
  store ptr @dmc_load_work_fn, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %i.e, i64 48
  %i.k = getelementptr i8, ptr %0, i64 1168
  %i.l = load i16, ptr %i.k, align 8              ; 2 uses
  %i.m = zext i16 %i.l to i32
  %i.n = mul nuw nsw i32 %i.m, 100
  %i.o = getelementptr i8, ptr %0, i64 1170
  %i.p = load i16, ptr %i.o, align 2
  %i.q = zext i16 %i.p to i32
  %i.r = add nuw nsw i32 %i.n, %i.q
  switch i32 %i.r, label %bb.i [
    i32 3500, label %dmc_firmware_default.exit
    i32 3002, label %bb.d
    i32 3000, label %bb.e
    i32 2000, label %bb.f
    i32 1401, label %bb.g
    i32 1400, label %bb.h
  ]

bb.d:                                             ; preds = %bb.c
  br label %dmc_firmware_default.exit

bb.e:                                             ; preds = %bb.c
  br label %dmc_firmware_default.exit

bb.f:                                             ; preds = %bb.c
  br label %dmc_firmware_default.exit

bb.g:                                             ; preds = %bb.c
  br label %dmc_firmware_default.exit

bb.h:                                             ; preds = %bb.c
  br label %dmc_firmware_default.exit

bb.i:                                             ; preds = %bb.c
  %i.s = getelementptr i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8              ; 10 uses
  %i.u = and i64 %i.t, 72057594037927936
  %.not.i = icmp eq i64 %i.u, 0
  br i1 %.not.i, label %bb.j, label %dmc_firmware_default.exit

bb.j:                                             ; preds = %bb.i
  %i.v = and i64 %i.t, 4503599627370496
  %.not29.i = icmp eq i64 %i.v, 0
  br i1 %.not29.i, label %bb.k, label %dmc_firmware_default.exit

bb.k:                                             ; preds = %bb.j
  %i.w = and i64 %i.t, 1125899906842624
  %.not30.i = icmp eq i64 %i.w, 0
  br i1 %.not30.i, label %bb.l, label %dmc_firmware_default.exit

bb.l:                                             ; preds = %bb.k
  %i.x = and i64 %i.t, 562949953421312
  %.not31.i = icmp eq i64 %i.x, 0
  br i1 %.not31.i, label %bb.m, label %dmc_firmware_default.exit

bb.m:                                             ; preds = %bb.l
  %i.y = and i64 %i.t, 281474976710656
  %.not32.i = icmp eq i64 %i.y, 0
  br i1 %.not32.i, label %bb.n, label %dmc_firmware_default.exit

bb.n:                                             ; preds = %bb.m
  %i.z = and i64 %i.t, 70368744177664
  %.not33.i = icmp eq i64 %i.z, 0
  br i1 %.not33.i, label %bb.o, label %dmc_firmware_default.exit

bb.o:                                             ; preds = %bb.n
  %i.aa = icmp eq i16 %i.l, 11
  br i1 %i.aa, label %dmc_firmware_default.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ab = and i64 %i.t, 34359738368
  %.not34.i = icmp eq i64 %i.ab, 0
  br i1 %.not34.i, label %bb.q, label %dmc_firmware_default.exit

bb.q:                                             ; preds = %bb.p
  %i.ac = and i64 %i.t, 622770257920
  %or.cond40.i = icmp eq i64 %i.ac, 0
  br i1 %or.cond40.i, label %bb.r, label %dmc_firmware_default.exit

bb.r:                                             ; preds = %bb.q
  %i.ad = and i64 %i.t, 268435456
  %.not38.i = icmp eq i64 %i.ad, 0
  br i1 %.not38.i, label %bb.s, label %dmc_firmware_default.exit

bb.s:                                             ; preds = %bb.r
  %i.ae = and i64 %i.t, 2147483648
  %.not39.i = icmp eq i64 %i.ae, 0                ; 2 uses
  %spec.select.i = select i1 %.not39.i, ptr null, ptr @.str.63
  %spec.select41.i = select i1 %.not39.i, i32 0, i32 12288
  br label %dmc_firmware_default.exit

dmc_firmware_default.exit:                        ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s
  %.pr = phi ptr [ %spec.select.i, %bb.s ], [ @.str.48, %bb.d ], [ @.str.49, %bb.e ], [ @.str.50, %bb.f ], [ @.str.51, %bb.g ], [ @.str.52, %bb.h ], [ @.str.47, %bb.c ], [ @.str.53, %bb.i ], [ @.str.54, %bb.j ], [ @.str.55, %bb.k ], [ @.str.56, %bb.l ], [ @.str.57, %bb.m ], [ @.str.58, %bb.n ], [ @.str.59, %bb.o ], [ @.str.60, %bb.p ], [ @.str.61, %bb.q ], [ @.str.62, %bb.r ] ; 3 uses
  %.0.i = phi i32 [ %spec.select41.i, %bb.s ], [ 32768, %bb.d ], [ 32768, %bb.e ], [ 32768, %bb.f ], [ 28672, %bb.g ], [ 28672, %bb.h ], [ 32768, %bb.c ], [ 131072, %bb.i ], [ 131072, %bb.j ], [ 24576, %bb.k ], [ 24576, %bb.l ], [ 24576, %bb.m ], [ 24576, %bb.n ], [ 24576, %bb.o ], [ 16384, %bb.p ], [ 12288, %bb.q ], [ 12288, %bb.r ]
  store i32 %.0.i, ptr %i.j, align 8
  %i.af = getelementptr i8, ptr %i.e, i64 40      ; 2 uses
  store ptr %.pr, ptr %i.af, align 8
  %i.ag = getelementptr i8, ptr %0, i64 5128
  %.val34 = load ptr, ptr %i.ag, align 8          ; 5 uses
  %.not.i.i = icmp eq ptr %.val34, null
  br i1 %.not.i.i, label %dmc_firmware_param.exit.thread, label %bb.t

bb.t:                                             ; preds = %dmc_firmware_default.exit
  %i.ah = load i8, ptr %.val34, align 1
  %.not4.i.i = icmp eq i8 %i.ah, 0
  br i1 %.not4.i.i, label %dmc_firmware_param.exit.thread, label %dmc_firmware_param_disabled.exit

dmc_firmware_param_disabled.exit:                 ; preds = %bb.t
  %i.ai = tail call i32 @strcmp(ptr noundef nonnull readonly dereferenceable(1) %.val34, ptr noundef nonnull dereferenceable(10) @.str.64) #12
  %.not3.i = icmp eq i32 %i.ai, 0
  br i1 %.not3.i, label %bb.u, label %dmc_firmware_param.exit.thread.thread

bb.u:                                             ; preds = %dmc_firmware_param_disabled.exit
  %i.aj = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i35 = icmp eq ptr %i.aj, null
  br i1 %.not.i35, label %__drm_to_dev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ak = getelementptr i8, ptr %i.aj, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  br label %__drm_to_dev.exit

__drm_to_dev.exit:                                ; preds = %bb.u, %bb.v
  %i.am = phi ptr [ %i.al, %bb.v ], [ null, %bb.u ]
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %i.am, ptr noundef nonnull @.str) #15
  br label %bb.aa

dmc_firmware_param.exit.thread.thread:            ; preds = %dmc_firmware_param_disabled.exit
  store ptr %.val34, ptr %i.af, align 8
  br label %bb.y

dmc_firmware_param.exit.thread:                   ; preds = %bb.t, %dmc_firmware_default.exit
  %.not32 = icmp eq ptr %.pr, null
  br i1 %.not32, label %bb.w, label %bb.y

bb.w:                                             ; preds = %dmc_firmware_param.exit.thread
  %i.an = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i42 = icmp eq ptr %i.an, null
  br i1 %.not.i42, label %__drm_to_dev.exit43, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.ao = getelementptr i8, ptr %i.an, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8
  br label %__drm_to_dev.exit43

__drm_to_dev.exit43:                              ; preds = %bb.w, %bb.x
  %i.aq = phi ptr [ %i.ap, %bb.x ], [ null, %bb.w ]
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.aq, i32 noundef 2, ptr noundef nonnull @.str.1) #12
  br label %bb.aa

end_hunk_0
