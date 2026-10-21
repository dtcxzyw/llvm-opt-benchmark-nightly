Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/drm_dp_helper?download=true
inline.NumInlined: 307
inline.NumDeleted: 69
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumUnrolled: 13
begin_hunk_0_@drm_dp_aux_register:bb.a
  %i.i = getelementptr i8, ptr %0, i64 1128       ; 3 uses
  store volatile ptr %i.i, ptr %i.i, align 8
  %i.j = getelementptr i8, ptr %0, i64 1136
  store volatile ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %0, i64 1144
  store ptr @drm_dp_aux_crc_work, ptr %i.k, align 8
  store ptr @drm_dp_i2c_algo, ptr %i.d, align 8
  %i.l = getelementptr i8, ptr %0, i64 32
  store ptr %0, ptr %i.l, align 8
  %i.m = getelementptr i8, ptr %0, i64 116
  store i32 3, ptr %i.m, align 4
  %i.n = getelementptr i8, ptr %0, i64 40
  store ptr @drm_dp_i2c_lock_ops, ptr %i.n, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store ptr null, ptr %i.c, align 8
  %i.o = getelementptr i8, ptr %0, i64 1072
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr i8, ptr %0, i64 184
  store ptr %i.p, ptr %i.q, align 8
  %i.r = load ptr, ptr %0, align 8                ; 2 uses
  %.not24 = icmp eq ptr %i.r, null
  br i1 %.not24, label %bb.f, label %dev_name.exit

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr i8, ptr %i.p, i64 80
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %bb.g, label %dev_name.exit

bb.g:                                             ; preds = %bb.f
  %.val.i = load ptr, ptr %i.p, align 8
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %bb.g, %bb.f, %bb.e
  %i.u = phi ptr [ %i.r, %bb.e ], [ %.val.i, %bb.g ], [ %i.t, %bb.f ]
  %i.v = getelementptr i8, ptr %0, i64 892
  %i.w = tail call i64 @sized_strscpy(ptr noundef %i.v, ptr noundef %i.u, i64 noundef 48) #19 ; 0 uses
  %i.x = tail call i32 @i2c_add_adapter(ptr noundef %i.c) #19
  ret i32 %i.x
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @sized_strscpy(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @i2c_add_adapter(ptr noundef) local_unnamed_addr #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local void @drm_dp_aux_unregister(ptr noundef %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  tail call void @i2c_del_adapter(ptr noundef %i.a) #19
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @i2c_del_adapter(ptr noundef) local_unnamed_addr #6

; Function Attrs: fn_ret_thunk_extern mustprogress nofree norecurse noredzone nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: read)
define dso_local range(i32 -22, 65536) i32 @drm_dp_psr_setup_time(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1
  %i.b = load i8, ptr %i.a, align 1
  %i.c = lshr i8 %i.b, 1
  %i.d = and i8 %i.c, 7                           ; 2 uses
  %i.e = icmp eq i8 %i.d, 7
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext nneg i8 %i.d to i64
  %i.g = getelementptr [2 x i8], ptr @drm_dp_psr_setup_time.psr_setup_time_us, i64 %i.f
  %i.h = load i16, ptr %i.g, align 2
  %i.i = zext i16 %i.h to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ %i.i, %bb.b ], [ -22, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @drm_dp_start_crc(ptr noundef %0, ptr noundef %1) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i8 0, ptr %i.b, align 1, !annotation !14
  %i.c = call i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 624, ptr noundef nonnull %i.b, i64 noundef 1) #17 ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %drm_dp_dpcd_read_byte.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %drm_dp_dpcd_read_byte.exit.thread, label %drm_dp_dpcd_read_byte.exit.thread14

drm_dp_dpcd_read_byte.exit:                       ; preds = %bb.a
  %i.f = call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 624, ptr noundef nonnull %i.b, i64 noundef 1) #17 ; 2 uses
  %spec.select.i = trunc nsw i64 %i.f to i32
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %drm_dp_dpcd_read_byte.exit.thread, label %drm_dp_dpcd_read_byte.exit.thread14

drm_dp_dpcd_read_byte.exit.thread14:              ; preds = %bb.b, %drm_dp_dpcd_read_byte.exit
  %i.h = load i8, ptr %i.b, align 1
  %i.i = or i8 %i.h, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.i, ptr %i.a, align 1
  %i.j = call i64 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef range(i32 -2147483381, 12677) 624, ptr noundef nonnull %i.a, i64 noundef 1) #17 ; 3 uses
  %i.k = icmp slt i64 %i.j, 0
  %i.l = trunc nsw i64 %i.j to i32
  %i.m = and i64 %i.j, 4294967295
  %i.n = icmp eq i64 %i.m, 0
  %..i.i12 = select i1 %i.n, i32 -71, i32 0
  %.0.i.i = select i1 %i.k, i32 %i.l, i32 %..i.i12 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = icmp slt i32 %.0.i.i, 0
  br i1 %i.o, label %drm_dp_dpcd_read_byte.exit.thread, label %bb.c

bb.c:                                             ; preds = %drm_dp_dpcd_read_byte.exit.thread14
  %i.p = getelementptr i8, ptr %0, i64 1152
  store i8 0, ptr %i.p, align 8
  %i.q = getelementptr i8, ptr %0, i64 1088
  store ptr %1, ptr %i.q, align 8
  %i.r = getelementptr i8, ptr %0, i64 1120
  %i.s = load ptr, ptr @system_percpu_wq, align 8
  %i.t = call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.s, ptr noundef %i.r) #19 ; 0 uses
  br label %drm_dp_dpcd_read_byte.exit.thread

drm_dp_dpcd_read_byte.exit.thread:                ; preds = %bb.b, %drm_dp_dpcd_read_byte.exit.thread14, %drm_dp_dpcd_read_byte.exit, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %spec.select.i, %drm_dp_dpcd_read_byte.exit ], [ %.0.i.i, %drm_dp_dpcd_read_byte.exit.thread14 ], [ -71, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @drm_dp_stop_crc(ptr noundef %0) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #18
  store i8 0, ptr %i.b, align 1, !annotation !14
  %i.c = call i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 624, ptr noundef nonnull %i.b, i64 noundef 1) #17 ; 2 uses
  %i.d = icmp sgt i64 %i.c, -1
  br i1 %i.d, label %bb.b, label %drm_dp_dpcd_read_byte.exit

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %drm_dp_dpcd_read_byte.exit.thread, label %drm_dp_dpcd_read_byte.exit.thread12

drm_dp_dpcd_read_byte.exit:                       ; preds = %bb.a
  %i.f = call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef 624, ptr noundef nonnull %i.b, i64 noundef 1) #17 ; 2 uses
  %spec.select.i = trunc nsw i64 %i.f to i32
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %drm_dp_dpcd_read_byte.exit.thread, label %drm_dp_dpcd_read_byte.exit.thread12

drm_dp_dpcd_read_byte.exit.thread12:              ; preds = %bb.b, %drm_dp_dpcd_read_byte.exit
  %i.h = load i8, ptr %i.b, align 1
  %i.i = and i8 %i.h, -2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 %i.i, ptr %i.a, align 1
  %i.j = call i64 @drm_dp_dpcd_write(ptr noundef %0, i32 noundef range(i32 -2147483381, 12677) 624, ptr noundef nonnull %i.a, i64 noundef 1) #17 ; 3 uses
  %i.k = icmp slt i64 %i.j, 0
  %i.l = trunc nsw i64 %i.j to i32
  %i.m = and i64 %i.j, 4294967295
  %i.n = icmp eq i64 %i.m, 0
  %..i.i10 = select i1 %i.n, i32 -71, i32 0
  %.0.i.i = select i1 %i.k, i32 %i.l, i32 %..i.i10 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.o = icmp slt i32 %.0.i.i, 0
  br i1 %i.o, label %drm_dp_dpcd_read_byte.exit.thread, label %bb.c

bb.c:                                             ; preds = %drm_dp_dpcd_read_byte.exit.thread12
  %i.p = getelementptr i8, ptr %0, i64 1120
  %i.q = call zeroext i1 @flush_work(ptr noundef %i.p) #19 ; 0 uses
  %i.r = getelementptr i8, ptr %0, i64 1088
  store ptr null, ptr %i.r, align 8
  br label %drm_dp_dpcd_read_byte.exit.thread

drm_dp_dpcd_read_byte.exit.thread:                ; preds = %bb.b, %drm_dp_dpcd_read_byte.exit.thread12, %drm_dp_dpcd_read_byte.exit, %bb.c
  %.0 = phi i32 [ 0, %bb.c ], [ %spec.select.i, %drm_dp_dpcd_read_byte.exit ], [ %.0.i.i, %drm_dp_dpcd_read_byte.exit.thread12 ], [ -71, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #18
  ret i32 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -2147483648, 1) i32 @drm_dp_read_desc(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) #3 align 16 prefalign(16) {
bb.a:
  %i.a = alloca [6 x i8], align 1                 ; 5 uses
  %i.b = select i1 %2, i32 1280, i32 1024
  %i.c = tail call fastcc i32 @drm_dp_read_ident(ptr noundef %0, i32 noundef %i.b, ptr noundef %1) #17, !srcloc !45 ; 2 uses
  %i.d = icmp slt i32 %i.c, 0
  br i1 %i.d, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %i.a, i8 0, i64 6, i1 false)
  %3 = zext i1 %2 to i8
  %i.e = getelementptr i8, ptr %1, i64 3          ; 4 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %bb.b
  %indvars.iv.i = phi i64 [ 0, %bb.b ], [ %indvars.iv.next.i, %bb.h ] ; 2 uses
  %.01219.i = phi i32 [ 0, %bb.b ], [ %.1.i, %bb.h ] ; 4 uses
  %i.f = getelementptr [16 x i8], ptr @dpcd_quirk_list, i64 %indvars.iv.i ; 5 uses
  %4 = getelementptr i8, ptr %i.f, i64 9
  %5 = load i8, ptr %4, align 1, !range !17, !noundef !18
  %.not.i = icmp eq i8 %5, %3
  br i1 %.not.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.g = load i16, ptr %i.f, align 1
  %i.h = load i16, ptr %1, align 1
  %i.i = xor i16 %i.g, %i.h
  %i.j = getelementptr i8, ptr %i.f, i64 2
  %i.k = getelementptr i8, ptr %1, i64 2
  %i.l = load i8, ptr %i.j, align 1
  %i.m = load i8, ptr %i.k, align 1
  %i.n = zext i8 %i.l to i16
  %i.o = zext i8 %i.m to i16
  %i.p = xor i16 %i.n, %i.o
  %i.q = or i16 %i.i, %i.p
  %i.r = icmp ne i16 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %.not14.i = icmp eq i32 %i.s, 0
  br i1 %.not14.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr i8, ptr %i.f, i64 3        ; 4 uses
  %i.u = load i32, ptr %i.t, align 1
  %i.v = load i32, ptr %i.a, align 1
  %i.w = xor i32 %i.u, %i.v
  %i.x = getelementptr i8, ptr %i.t, i64 4
  %i.y = getelementptr i8, ptr %i.a, i64 4
  %i.z = load i16, ptr %i.x, align 1
  %i.aa = load i16, ptr %i.y, align 1
  %i.ab = zext i16 %i.z to i32
  %i.ac = zext i16 %i.aa to i32
  %i.ad = xor i32 %i.ab, %i.ac
  %i.ae = or i32 %i.w, %i.ad
  %i.af = icmp ne i32 %i.ae, 0
  %i.ag = zext i1 %i.af to i32
  %.not16.i = icmp eq i32 %i.ag, 0
  br i1 %.not16.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load i32, ptr %i.t, align 1
  %i.ai = load i32, ptr %i.e, align 1
  %i.aj = xor i32 %i.ah, %i.ai
  %i.ak = getelementptr i8, ptr %i.t, i64 4
  %i.al = getelementptr i8, ptr %i.e, i64 4
  %i.am = load i16, ptr %i.ak, align 1
  %i.an = load i16, ptr %i.al, align 1
  %i.ao = zext i16 %i.am to i32
  %i.ap = zext i16 %i.an to i32
  %i.aq = xor i32 %i.ao, %i.ap
  %i.ar = or i32 %i.aj, %i.aq
  %i.as = icmp ne i32 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %.not18.i = icmp eq i32 %i.at, 0
  br i1 %.not18.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.au = getelementptr i8, ptr %i.f, i64 12
  %i.av = load i32, ptr %i.au, align 4
  %i.aw = or i32 %i.av, %.01219.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.d, %bb.c
  %.1.i = phi i32 [ %.01219.i, %bb.c ], [ %.01219.i, %bb.d ], [ %.01219.i, %bb.f ], [ %i.aw, %bb.g ] ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 12
  br i1 %exitcond.not.i, label %drm_dp_get_quirks.exit, label %bb.c, !llvm.loop !44

drm_dp_get_quirks.exit:                           ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #18
  %i.ax = getelementptr i8, ptr %1, i64 12
  store i32 %.1.i, ptr %i.ax, align 4
  %i.ay = select i1 %2, ptr @.str.45, ptr @.str.46
  %i.az = getelementptr i8, ptr %0, i64 1080
  %i.ba = load ptr, ptr %i.az, align 8            ; 2 uses
  %.not.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i, label %drm_dp_dump_desc.exit, label %bb.i

bb.i:                                             ; preds = %drm_dp_get_quirks.exit
  %i.bb = getelementptr i8, ptr %i.ba, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8
  br label %drm_dp_dump_desc.exit

drm_dp_dump_desc.exit:                            ; preds = %drm_dp_get_quirks.exit, %bb.i
  %i.bd = phi ptr [ %i.bc, %bb.i ], [ null, %drm_dp_get_quirks.exit ]
  %i.be = load ptr, ptr %0, align 8
  %i.bf = tail call i64 @strnlen(ptr noundef %i.e, i64 noundef 6) #17
  %i.bg = trunc i64 %i.bf to i32
  %i.bh = getelementptr i8, ptr %1, i64 9
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i32                    ; 2 uses
  %i.bk = lshr i32 %i.bj, 4
  %i.bl = and i32 %i.bj, 15
  %i.bm = getelementptr i8, ptr %1, i64 10
  %i.bn = load i8, ptr %i.bm, align 2
  %i.bo = zext i8 %i.bn to i32
  %i.bp = getelementptr i8, ptr %1, i64 11
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = zext i8 %i.bq to i32
  tail call void (ptr, ptr, i32, ptr, ...) @__drm_dev_dbg(ptr noundef null, ptr noundef %i.bd, i32 noundef 2, ptr noundef @.str.117, ptr noundef %i.be, ptr noundef nonnull %i.ay, i32 noundef 3, ptr noundef %1, i32 noundef %i.bg, ptr noundef %i.e, i32 noundef %i.bk, i32 noundef %i.bl, i32 noundef %i.bo, i32 noundef %i.br, i32 noundef %.1.i) #19
  br label %bb.j

bb.j:                                             ; preds = %bb.a, %drm_dp_dump_desc.exit
  %.0 = phi i32 [ 0, %drm_dp_dump_desc.exit ], [ %i.c, %bb.a ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i32 -2147483648, 1) i32 @drm_dp_read_ident(ptr noundef %0, i32 noundef range(i32 1024, 983662) %1, ptr noundef %2) unnamed_addr #3 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef 12) #17 ; 2 uses
  %i.b = icmp sgt i64 %i.a, -1
  br i1 %i.b, label %bb.b, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.c = tail call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %1, ptr noundef %2, i64 noundef 1) #17 ; 2 uses
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %bb.c, label %.lr.ph.i.1

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i64 %i.a, 12
  %..i = select i1 %i.e, i32 -71, i32 0
  br label %drm_dp_dpcd_read_data.exit

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.preheader
  %i.f = add nuw nsw i32 %1, 1
  %i.g = getelementptr i8, ptr %2, i64 1
  %i.h = tail call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %i.f, ptr noundef %i.g, i64 noundef 1) #17 ; 2 uses
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.c, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.1
  %i.j = add nuw nsw i32 %1, 2
  %i.k = getelementptr i8, ptr %2, i64 2
  %i.l = tail call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %i.j, ptr noundef %i.k, i64 noundef 1) #17 ; 2 uses
  %i.m = icmp slt i64 %i.l, 0
  br i1 %i.m, label %bb.c, label %.lr.ph.i.3

.lr.ph.i.3:                                       ; preds = %.lr.ph.i.2
  %i.n = add nuw nsw i32 %1, 3
  %i.o = getelementptr i8, ptr %2, i64 3
  %i.p = tail call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %i.n, ptr noundef %i.o, i64 noundef 1) #17 ; 2 uses
  %i.q = icmp slt i64 %i.p, 0
  br i1 %i.q, label %bb.c, label %.lr.ph.i.4

.lr.ph.i.4:                                       ; preds = %.lr.ph.i.3
  %i.r = add nuw nsw i32 %1, 4
  %i.s = getelementptr i8, ptr %2, i64 4
  %i.t = tail call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %i.r, ptr noundef %i.s, i64 noundef 1) #17 ; 2 uses
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.c, label %.lr.ph.i.5

.lr.ph.i.5:                                       ; preds = %.lr.ph.i.4
  %i.v = add nuw nsw i32 %1, 5
  %i.w = getelementptr i8, ptr %2, i64 5
  %i.x = tail call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %i.v, ptr noundef %i.w, i64 noundef 1) #17 ; 2 uses
  %i.y = icmp slt i64 %i.x, 0
  br i1 %i.y, label %bb.c, label %.lr.ph.i.6

.lr.ph.i.6:                                       ; preds = %.lr.ph.i.5
  %i.z = add nuw nsw i32 %1, 6
  %i.aa = getelementptr i8, ptr %2, i64 6
  %i.ab = tail call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %i.z, ptr noundef %i.aa, i64 noundef 1) #17 ; 2 uses
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.c, label %.lr.ph.i.7

.lr.ph.i.7:                                       ; preds = %.lr.ph.i.6
  %i.ad = add nuw nsw i32 %1, 7
  %i.ae = getelementptr i8, ptr %2, i64 7
  %i.af = tail call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %i.ad, ptr noundef %i.ae, i64 noundef 1) #17 ; 2 uses
  %i.ag = icmp slt i64 %i.af, 0
  br i1 %i.ag, label %bb.c, label %.lr.ph.i.8

.lr.ph.i.8:                                       ; preds = %.lr.ph.i.7
  %i.ah = add nuw nsw i32 %1, 8
  %i.ai = getelementptr i8, ptr %2, i64 8
  %i.aj = tail call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %i.ah, ptr noundef %i.ai, i64 noundef 1) #17 ; 2 uses
  %i.ak = icmp slt i64 %i.aj, 0
  br i1 %i.ak, label %bb.c, label %.lr.ph.i.9

.lr.ph.i.9:                                       ; preds = %.lr.ph.i.8
  %i.al = add nuw nsw i32 %1, 9
  %i.am = getelementptr i8, ptr %2, i64 9
  %i.an = tail call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %i.al, ptr noundef %i.am, i64 noundef 1) #17 ; 2 uses
  %i.ao = icmp slt i64 %i.an, 0
  br i1 %i.ao, label %bb.c, label %.lr.ph.i.10

.lr.ph.i.10:                                      ; preds = %.lr.ph.i.9
  %i.ap = add nuw nsw i32 %1, 10
  %i.aq = getelementptr i8, ptr %2, i64 10
  %i.ar = tail call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %i.ap, ptr noundef %i.aq, i64 noundef 1) #17 ; 2 uses
  %i.as = icmp slt i64 %i.ar, 0
  br i1 %i.as, label %bb.c, label %.lr.ph.i.11

.lr.ph.i.11:                                      ; preds = %.lr.ph.i.10
  %i.at = add nuw nsw i32 %1, 11
  %i.au = getelementptr i8, ptr %2, i64 11
  %i.av = tail call range(i64 -2147483648, 2147483648) i64 @drm_dp_dpcd_read(ptr noundef %0, i32 noundef %i.at, ptr noundef %i.au, i64 noundef 1) #17 ; 2 uses
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.c, label %drm_dp_dpcd_read_data.exit

bb.c:                                             ; preds = %.lr.ph.i.11, %.lr.ph.i.10, %.lr.ph.i.9, %.lr.ph.i.8, %.lr.ph.i.7, %.lr.ph.i.6, %.lr.ph.i.5, %.lr.ph.i.4, %.lr.ph.i.3, %.lr.ph.i.2, %.lr.ph.i.1, %.lr.ph.i.preheader
  %.lcssa = phi i64 [ %i.c, %.lr.ph.i.preheader ], [ %i.h, %.lr.ph.i.1 ], [ %i.l, %.lr.ph.i.2 ], [ %i.p, %.lr.ph.i.3 ], [ %i.t, %.lr.ph.i.4 ], [ %i.x, %.lr.ph.i.5 ], [ %i.ab, %.lr.ph.i.6 ], [ %i.af, %.lr.ph.i.7 ], [ %i.aj, %.lr.ph.i.8 ], [ %i.an, %.lr.ph.i.9 ], [ %i.ar, %.lr.ph.i.10 ], [ %i.av, %.lr.ph.i.11 ]
end_hunk_0
