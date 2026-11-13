Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/mps2-scc?download=true
inline.NumInlined: 57
inline.NumDeleted: 22
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@mps2_scc_write:bb.a
  %i.aw = lshr i32 %.val57, 4
  %i.ax = and i32 %i.aw, 4095
  switch i32 %i.ax, label %have_cfg2.exit [
    i32 1316, label %bb.i
    i32 1351, label %bb.i
    i32 1334, label %bb.i
  ]

bb.i:                                             ; preds = %bb.h, %bb.h, %bb.h
  %i.ay = trunc i64 %2 to i32
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 1160
  store i32 %i.ay, ptr %i.az, align 8
  br label %.loopexit

bb.j:                                             ; preds = %trace_mps2_scc_write.exit
  %i.ba = getelementptr i8, ptr %i.a, i64 1204
  %.val58 = load i32, ptr %i.ba, align 4
  %i.bb = lshr i32 %.val58, 4
  %i.bc = and i32 %i.bb, 4095
  switch i32 %i.bc, label %have_cfg2.exit [
    i32 1316, label %bb.k
    i32 1351, label %bb.k
    i32 1334, label %bb.k
  ]

bb.k:                                             ; preds = %bb.j, %bb.j, %bb.j
  %i.bd = trunc i64 %2 to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.a, i64 1168
  store i32 %i.bd, ptr %i.be, align 16
  br label %.loopexit

bb.l:                                             ; preds = %trace_mps2_scc_write.exit
  %i.bf = getelementptr i8, ptr %i.a, i64 1204
  %.val59 = load i32, ptr %i.bf, align 4
  %i.bg = lshr i32 %.val59, 4
  %i.bh = and i32 %i.bg, 4095
  switch i32 %i.bh, label %have_cfg2.exit [
    i32 1334, label %bb.m
    i32 1316, label %bb.m
  ]

bb.m:                                             ; preds = %bb.l, %bb.l
  %i.bi = trunc i64 %2 to i32
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 1172
  store i32 %i.bi, ptr %i.bj, align 4
  br label %.loopexit

bb.n:                                             ; preds = %trace_mps2_scc_write.exit
  %i.bk = getelementptr i8, ptr %i.a, i64 1204
  %.val = load i32, ptr %i.bk, align 4
  %i.bl = and i32 %.val, 65520
  %i.bm = icmp eq i32 %i.bl, 21344
  br i1 %i.bm, label %bb.o, label %have_cfg2.exit

bb.o:                                             ; preds = %bb.n
  %i.bn = trunc i64 %2 to i32
  %i.bo = getelementptr inbounds nuw i8, ptr %i.a, i64 1176
  store i32 %i.bn, ptr %i.bo, align 8
  br label %.loopexit

bb.p:                                             ; preds = %trace_mps2_scc_write.exit
  %i.bp = trunc i64 %2 to i32
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 1184
  store i32 %i.bp, ptr %i.bq, align 16
  br label %.loopexit

bb.q:                                             ; preds = %trace_mps2_scc_write.exit
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 1192 ; 6 uses
  store i32 0, ptr %i.br, align 8
  %i.bs = trunc i64 %2 to i32                     ; 4 uses
  %i.bt = and i32 %i.bs, 1139806207
  %i.bu = getelementptr inbounds nuw i8, ptr %i.a, i64 1188
  store i32 %i.bt, ptr %i.bu, align 4
  %i.bv = and i64 %2, 2147483648
  %.not = icmp eq i64 %i.bv, 0
  br i1 %.not, label %.loopexit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bw = and i32 %i.bs, 4095                     ; 6 uses
  %i.bx = lshr i32 %i.bs, 20
  %i.by = and i32 %i.bx, 63                       ; 5 uses
  store i32 1, ptr %i.br, align 8
  %i.bz = and i32 %i.bs, 1073741824
  %.not54 = icmp eq i32 %i.bz, 0
  br i1 %.not54, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 1184
  %i.cb = load i32, ptr %i.ca, align 16           ; 2 uses
  %i.cc = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i, label %trace_mps2_scc_cfg_write.exit.i, label %bb.t, !prof !7

bb.t:                                             ; preds = %bb.s
  %i.cd = load i16, ptr @_TRACE_MPS2_SCC_CFG_WRITE_DSTATE, align 2
  %.not3.i.i = icmp eq i16 %i.cd, 0
  br i1 %.not3.i.i, label %trace_mps2_scc_cfg_write.exit.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ce = load i32, ptr @qemu_loglevel, align 4
  %i.cf = and i32 %i.ce, 32768
  %.not4.i.i = icmp eq i32 %i.cf, 0
  br i1 %.not4.i.i, label %trace_mps2_scc_cfg_write.exit.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.14, i32 noundef range(i32 0, 4096) %i.by, i32 noundef range(i32 0, 4096) %i.bw, i32 noundef %i.cb) #4
  br label %trace_mps2_scc_cfg_write.exit.i

trace_mps2_scc_cfg_write.exit.i:                  ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %.not.i61 = icmp eq i32 %i.by, 1
  br i1 %.not.i61, label %bb.w, label %bb.x

bb.w:                                             ; preds = %trace_mps2_scc_cfg_write.exit.i
  %i.cg = getelementptr inbounds nuw i8, ptr %i.a, i64 1208
  %i.ch = load i32, ptr %i.cg, align 8
  %.not12.i = icmp ult i32 %i.bw, %i.ch
  br i1 %.not12.i, label %scc_cfg_write.exit, label %bb.x

bb.x:                                             ; preds = %bb.w, %trace_mps2_scc_cfg_write.exit.i
  %i.ci = load i32, ptr @qemu_loglevel, align 4
  %i.cj = and i32 %i.ci, 2048
  %.not13.i = icmp eq i32 %i.cj, 0
  br i1 %.not13.i, label %bb.z, label %bb.y, !prof !7

bb.y:                                             ; preds = %bb.x
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.13, i32 noundef range(i32 0, 4096) %i.by, i32 noundef range(i32 0, 4096) %i.bw) #4
  br label %bb.z

scc_cfg_write.exit:                               ; preds = %bb.w
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 1216
  %i.cl = load ptr, ptr %i.ck, align 16
  %i.cm = and i64 %2, 4095
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.cm
  store i32 %i.cb, ptr %i.cn, align 4
  br label %.loopexit

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.co = load i32, ptr %i.br, align 8
  %i.cp = or i32 %i.co, 2
  store i32 %i.cp, ptr %i.br, align 8
  br label %.loopexit

bb.aa:                                            ; preds = %bb.r
  %.not.i62 = icmp eq i32 %i.by, 1
  br i1 %.not.i62, label %bb.ab, label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 1208
  %i.cr = load i32, ptr %i.cq, align 8
  %.not13.i64 = icmp ult i32 %i.bw, %i.cr
  br i1 %.not13.i64, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %i.cs = load i32, ptr @qemu_loglevel, align 4
  %i.ct = and i32 %i.cs, 2048
  %.not14.i = icmp eq i32 %i.ct, 0
  br i1 %.not14.i, label %scc_cfg_read.exit, label %bb.ad, !prof !7

bb.ad:                                            ; preds = %bb.ac
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.15, i32 noundef range(i32 0, 4096) %i.by, i32 noundef range(i32 0, 4096) %i.bw) #4
  %.pre = load i32, ptr %i.br, align 8
  %i.cu = or i32 %.pre, 2
  br label %scc_cfg_read.exit

bb.ae:                                            ; preds = %bb.ab
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 1216
  %i.cw = load ptr, ptr %i.cv, align 16
  %i.cx = and i64 %2, 4095
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4            ; 2 uses
  %i.da = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i65 = icmp eq i32 %i.da, 0
  br i1 %.not.i.i65, label %bb.ai, label %bb.af, !prof !7

bb.af:                                            ; preds = %bb.ae
  %i.db = load i16, ptr @_TRACE_MPS2_SCC_CFG_READ_DSTATE, align 2
  %.not3.i.i66 = icmp eq i16 %i.db, 0
  br i1 %.not3.i.i66, label %bb.ai, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dc = load i32, ptr @qemu_loglevel, align 4
  %i.dd = and i32 %i.dc, 32768
  %.not4.i.i67 = icmp eq i32 %i.dd, 0
  br i1 %.not4.i.i67, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.16, i32 noundef 1, i32 noundef range(i32 0, 4096) %i.bw, i32 noundef %i.cz) #4
  br label %bb.ai

scc_cfg_read.exit:                                ; preds = %bb.ad, %bb.ac
  %i.de = phi i32 [ %i.cu, %bb.ad ], [ 3, %bb.ac ]
  store i32 %i.de, ptr %i.br, align 8
  br label %.loopexit

bb.ai:                                            ; preds = %bb.ae, %bb.af, %bb.ag, %bb.ah
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 1180
  store i32 %i.cz, ptr %i.df, align 4
  br label %.loopexit

bb.aj:                                            ; preds = %trace_mps2_scc_write.exit
  %4 = lshr i64 %2, 24
  %5 = trunc i64 %4 to i8
  %6 = getelementptr i8, ptr %i.a, i64 1199
  store i8 %5, ptr %6, align 1
  br label %.loopexit

have_cfg2.exit:                                   ; preds = %bb.l, %bb.j, %bb.h, %bb.n, %trace_mps2_scc_write.exit
  %i.dg = load i32, ptr @qemu_loglevel, align 4
  %i.dh = and i32 %i.dg, 2048
  %.not75 = icmp eq i32 %i.dh, 0
  br i1 %.not75, label %.loopexit, label %bb.ak, !prof !7

bb.ak:                                            ; preds = %have_cfg2.exit
  %i.di = trunc i64 %1 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.11, i32 noundef %i.di) #4
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader, %scc_cfg_read.exit, %bb.ai, %scc_cfg_write.exit, %bb.z, %have_cfg2.exit, %bb.ak, %bb.q, %bb.g, %bb.e, %bb.f, %bb.aj, %bb.p, %bb.o, %bb.m, %bb.k, %bb.i
  ret void
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @led_set_state(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @mps2_scc_realize(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 38, ptr noundef nonnull @__func__.MPS2_SCC) #4 ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.c = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.19, i64 noundef 0) #4 ; 2 uses
  %i.d = tail call ptr @led_create_simple(ptr noundef %0, i32 noundef 1, i32 noundef 3, ptr noundef %i.c) #4
  store ptr %i.d, ptr %i.b, align 8
  tail call void @g_free(ptr noundef %i.c) #4
  %i.e = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.19, i64 noundef 1) #4 ; 2 uses
  %i.f = tail call ptr @led_create_simple(ptr noundef %0, i32 noundef 1, i32 noundef 3, ptr noundef %i.e) #4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  store ptr %i.f, ptr %i.g, align 8
  tail call void @g_free(ptr noundef %i.e) #4
  %i.h = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.19, i64 noundef 2) #4 ; 2 uses
  %i.i = tail call ptr @led_create_simple(ptr noundef %0, i32 noundef 1, i32 noundef 3, ptr noundef %i.h) #4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  store ptr %i.i, ptr %i.j, align 8
  tail call void @g_free(ptr noundef %i.h) #4
  %i.k = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.19, i64 noundef 3) #4 ; 2 uses
  %i.l = tail call ptr @led_create_simple(ptr noundef %0, i32 noundef 1, i32 noundef 3, ptr noundef %i.k) #4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1112
  store ptr %i.l, ptr %i.m, align 8
  tail call void @g_free(ptr noundef %i.k) #4
  %i.n = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.19, i64 noundef 4) #4 ; 2 uses
  %i.o = tail call ptr @led_create_simple(ptr noundef %0, i32 noundef 1, i32 noundef 3, ptr noundef %i.n) #4
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1120
  store ptr %i.o, ptr %i.p, align 8
  tail call void @g_free(ptr noundef %i.n) #4
  %i.q = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.19, i64 noundef 5) #4 ; 2 uses
  %i.r = tail call ptr @led_create_simple(ptr noundef %0, i32 noundef 1, i32 noundef 3, ptr noundef %i.q) #4
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1128
  store ptr %i.r, ptr %i.s, align 8
  tail call void @g_free(ptr noundef %i.q) #4
  %i.t = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.19, i64 noundef 6) #4 ; 2 uses
  %i.u = tail call ptr @led_create_simple(ptr noundef %0, i32 noundef 1, i32 noundef 3, ptr noundef %i.t) #4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1136
  store ptr %i.u, ptr %i.v, align 8
  tail call void @g_free(ptr noundef %i.t) #4
  %i.w = tail call noalias ptr (ptr, ...) @g_strdup_printf(ptr noundef nonnull @.str.19, i64 noundef 7) #4 ; 2 uses
  %i.x = tail call ptr @led_create_simple(ptr noundef %0, i32 noundef 1, i32 noundef 3, ptr noundef %i.w) #4
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1144
  store ptr %i.x, ptr %i.y, align 8
  tail call void @g_free(ptr noundef %i.w) #4
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 1208
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = zext i32 %i.aa to i64
  %i.ac = tail call noalias ptr @g_malloc0_n(i64 noundef %i.ab, i64 noundef 4) #5
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 1216
  store ptr %i.ac, ptr %i.ad, align 16
  ret void
}

declare void @device_class_set_legacy_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @mps2_scc_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 38, ptr noundef nonnull @__func__.MPS2_SCC) #4 ; 19 uses
  %i.b = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %trace_mps2_scc_reset.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr @_TRACE_MPS2_SCC_RESET_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.c, 0
  br i1 %.not1.i, label %trace_mps2_scc_reset.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @qemu_loglevel, align 4
  %i.e = and i32 %i.d, 32768
  %.not2.i = icmp eq i32 %i.e, 0
  br i1 %.not2.i, label %trace_mps2_scc_reset.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.37) #4
  br label %trace_mps2_scc_reset.exit

trace_mps2_scc_reset.exit:                        ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1232
  %i.g = load i32, ptr %i.f, align 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1152
  store i32 %i.g, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1156
  store i32 0, ptr %i.i, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1160
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1168
  store i32 0, ptr %i.k, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1172
  store i32 0, ptr %i.l, align 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1180
  store <4 x i32> <i32 0, i32 0, i32 1048576, i32 0>, ptr %i.m, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1196
  store i32 -65535, ptr %i.n, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 1208 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.lr.ph:                                           ; preds = %trace_mps2_scc_reset.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 1224
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1216
  br label %bb.e

.preheader:                                       ; preds = %bb.e, %trace_mps2_scc_reset.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 1088
  %i.t = load ptr, ptr %i.s, align 16
  %i.u = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.t, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #4
  tail call void @device_cold_reset(ptr noundef %i.u) #4
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.w, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #4
  tail call void @device_cold_reset(ptr noundef %i.x) #4
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  %i.z = load ptr, ptr %i.y, align 16
  %i.aa = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.z, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #4
  tail call void @device_cold_reset(ptr noundef %i.aa) #4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 1112
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.ac, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #4
  tail call void @device_cold_reset(ptr noundef %i.ad) #4
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 1120
  %i.af = load ptr, ptr %i.ae, align 16
  %i.ag = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.af, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #4
  tail call void @device_cold_reset(ptr noundef %i.ag) #4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 1128
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.ai, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #4
  tail call void @device_cold_reset(ptr noundef %i.aj) #4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 1136
  %i.al = load ptr, ptr %i.ak, align 16
  %i.am = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.al, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #4
  tail call void @device_cold_reset(ptr noundef %i.am) #4
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 1144
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.ao, ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.18, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #4
  tail call void @device_cold_reset(ptr noundef %i.ap) #4
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %.023 = phi i32 [ 0, %.lr.ph ], [ %i.aw, %bb.e ] ; 2 uses
  %i.aq = load ptr, ptr %i.q, align 8
  %i.ar = sext i32 %.023 to i64                   ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %i.aq, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4
  %i.au = load ptr, ptr %i.r, align 16
  %i.av = getelementptr inbounds [4 x i8], ptr %i.au, i64 %i.ar
  store i32 %i.at, ptr %i.av, align 4
  %i.aw = add nuw i32 %.023, 1                    ; 2 uses
  %i.ax = load i32, ptr %i.o, align 8
  %i.ay = icmp ult i32 %i.aw, %i.ax
  br i1 %i.ay, label %bb.e, label %.preheader, !llvm.loop !8
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #1

declare ptr @led_create_simple(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @g_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc0_n(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal zeroext i1 @cfg7_needed(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 1204
  %.val = load i32, ptr %i.a, align 4
  %i.b = and i32 %.val, 65520
  %i.c = icmp eq i32 %i.b, 21344
  ret i1 %i.c
}
end_hunk_0
