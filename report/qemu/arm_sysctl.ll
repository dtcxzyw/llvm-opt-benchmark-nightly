Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/arm_sysctl?download=true
inline.NumInlined: 31
inline.NumDeleted: 9
begin_hunk_0_@arm_sysctl_write:bb.a

bb.q:                                             ; preds = %bb.p
  %i.aq = trunc i64 %2 to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1124
  store i32 %i.aq, ptr %i.ar, align 4
  %i.as = and i64 %2, 4
  %.not80 = icmp eq i64 %i.as, 0
  br i1 %.not80, label %bb.am, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @qemu_system_reset_request(i32 noundef 7) #5
  br label %bb.am

bb.s:                                             ; preds = %bb.a
  %i.at = getelementptr i8, ptr %0, i64 1096
  %.val84 = load i32, ptr %i.at, align 8
  %i.au = lshr i32 %.val84, 16
  %i.av = and i32 %i.au, 4095
  switch i32 %i.av, label %bb.am [
    i32 256, label %bb.t
    i32 320, label %bb.u
    i32 376, label %bb.v
    i32 386, label %bb.v
  ]

bb.t:                                             ; preds = %bb.s
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1148 ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 4
  %i.ay = and i32 %i.ax, 16128
  %i.az = trunc i64 %2 to i32                     ; 2 uses
  %i.ba = and i32 %i.az, -16129
  %i.bb = or disjoint i32 %i.ay, %i.ba
  store i32 %i.bb, ptr %i.aw, align 4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.bd = load ptr, ptr %i.bc, align 16
  %i.be = and i32 %i.az, 3
  tail call void @qemu_set_irq(ptr noundef %i.bd, i32 noundef %i.be) #5
  br label %bb.am

bb.u:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1148 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = and i32 %i.bg, 16128
  %i.bi = trunc i64 %2 to i32
  %i.bj = and i32 %i.bi, -16129
  %i.bk = or disjoint i32 %i.bh, %i.bj
  store i32 %i.bk, ptr %i.bf, align 4
  br label %bb.am

bb.v:                                             ; preds = %bb.s, %bb.s
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1148 ; 2 uses
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = and i32 %i.bm, 128
  %i.bo = trunc i64 %2 to i32
  %i.bp = and i32 %i.bo, -129
  %i.bq = or disjoint i32 %i.bn, %i.bp
  store i32 %i.bq, ptr %i.bl, align 4
  br label %bb.am

bb.w:                                             ; preds = %bb.a
  %i.br = getelementptr i8, ptr %0, i64 1096
  %.val83 = load i32, ptr %i.br, align 8
  %i.bs = and i32 %.val83, 268369920
  %.not79 = icmp eq i32 %i.bs, 26214400
  br i1 %.not79, label %bb.x, label %bb.ak

bb.x:                                             ; preds = %bb.w
  %i.bt = trunc i64 %2 to i32
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store i32 %i.bt, ptr %i.bu, align 16
  br label %bb.am

bb.y:                                             ; preds = %bb.a
  %i.bv = getelementptr i8, ptr %0, i64 1096
  %.val82 = load i32, ptr %i.bv, align 8
  %i.bw = and i32 %.val82, 268369920
  %.not76 = icmp eq i32 %i.bw, 26214400
  br i1 %.not76, label %bb.z, label %bb.ak

bb.z:                                             ; preds = %bb.y
  %i.bx = trunc i64 %2 to i32                     ; 7 uses
  %i.by = and i32 %i.bx, 2146697215
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1140 ; 3 uses
  store i32 %i.by, ptr %i.bz, align 4
  %i.ca = and i64 %2, 2147483648
  %.not77 = icmp eq i64 %i.ca, 0
  br i1 %.not77, label %bb.ah, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.cb = lshr i32 %i.bx, 26
  %i.cc = and i32 %i.cb, 15                       ; 2 uses
  %i.cd = lshr i32 %i.bx, 20
  %i.ce = and i32 %i.cd, 63                       ; 2 uses
  %i.cf = lshr i32 %i.bx, 16
  %i.cg = and i32 %i.cf, 3                        ; 2 uses
  %i.ch = lshr i32 %i.bx, 12
  %i.ci = and i32 %i.ch, 15                       ; 2 uses
  %i.cj = and i32 %i.bx, 4095                     ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 5 uses
  store i32 1, ptr %i.ck, align 8
  %i.cl = and i32 %i.bx, 1073741824
  %.not78 = icmp eq i32 %i.cl, 0
  br i1 %.not78, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.cn = load i32, ptr %i.cm, align 16
  %i.co = tail call fastcc zeroext i1 @vexpress_cfgctrl_write(ptr noundef nonnull %0, i32 noundef %i.cc, i32 noundef %i.ce, i32 noundef %i.cg, i32 noundef %i.ci, i32 noundef %i.cj, i32 noundef %i.cn)
  br i1 %i.co, label %bb.ah, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.cp = load i32, ptr %i.ck, align 8
  %i.cq = or i32 %i.cp, 2
  store i32 %i.cq, ptr %i.ck, align 8
  br label %bb.ah

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  store i32 0, ptr %i.a, align 4, !annotation !8
  %i.cr = call fastcc zeroext i1 @vexpress_cfgctrl_read(ptr noundef nonnull %0, i32 noundef %i.cc, i32 noundef %i.ce, i32 noundef %i.cg, i32 noundef %i.ci, i32 noundef %i.cj, ptr noundef %i.a)
  br i1 %i.cr, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.cs = load i32, ptr %i.ck, align 8
  %i.ct = or i32 %i.cs, 2
  store i32 %i.ct, ptr %i.ck, align 8
  br label %bb.ag

bb.af:                                            ; preds = %bb.ad
  %i.cu = load i32, ptr %i.a, align 4
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store i32 %i.cu, ptr %i.cv, align 16
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.ac, %bb.ab, %bb.z
  %i.cw = load i32, ptr %i.bz, align 4
  %i.cx = and i32 %i.cw, 2147483647
  store i32 %i.cx, ptr %i.bz, align 4
  br label %bb.am

bb.ai:                                            ; preds = %bb.a
  %i.cy = getelementptr i8, ptr %0, i64 1096
  %.val = load i32, ptr %i.cy, align 8
  %i.cz = and i32 %.val, 268369920
  %.not = icmp eq i32 %i.cz, 26214400
  br i1 %.not, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.da = trunc i64 %2 to i32
  %i.db = and i32 %i.da, 3
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store i32 %i.db, ptr %i.dc, align 8
  br label %bb.am

bb.ak:                                            ; preds = %bb.w, %bb.y, %bb.ai, %bb.a
  %i.dd = load i32, ptr @qemu_loglevel, align 4
  %i.de = and i32 %i.dd, 2048
  %.not86 = icmp eq i32 %i.de, 0
  br i1 %.not86, label %bb.am, label %bb.al, !prof !7

bb.al:                                            ; preds = %bb.ak
  %i.df = trunc i64 %1 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.10, i32 noundef %i.df) #5
  br label %bb.am

bb.am:                                            ; preds = %bb.a, %bb.a, %bb.b, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.e, %bb.d, %bb.l, %bb.p, %bb.r, %bb.q, %bb.m, %bb.o, %bb.n, %bb.s, %bb.v, %bb.u, %bb.t, %bb.ak, %bb.al, %bb.aj, %bb.ah, %bb.x
  ret void
}

declare i64 @qemu_clock_get_ns(i32 noundef) local_unnamed_addr #1

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

declare void @qemu_system_reset_request(i32 noundef) local_unnamed_addr #1

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @vexpress_cfgctrl_write(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 4096) %1, i32 noundef range(i32 0, 4096) %2, i32 noundef range(i32 0, 4096) %3, i32 noundef range(i32 0, 4096) %4, i32 noundef range(i32 0, 4096) %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = or i32 %4, %1
  %or.cond.not = icmp ne i32 %i.a, 0
  %or.cond3 = icmp samesign ugt i32 %3, 1
  %or.cond = select i1 %or.cond.not, i1 true, i1 %or.cond3
  br i1 %or.cond, label %bb.p, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %bb.p [
    i32 1, label %bb.c
    i32 7, label %bb.h
    i32 8, label %bb.k
    i32 9, label %bb.m
    i32 11, label %bb.o
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i32 %3, 0                        ; 2 uses
  %i.c = zext nneg i32 %5 to i64                  ; 2 uses
  %i.d = icmp samesign ult i32 %5, 6
  %or.cond6 = select i1 %i.b, i1 %i.d, i1 false
  br i1 %or.cond6, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.e, i64 %i.c
  store i32 %6, ptr %i.f, align 4
  br label %bb.r

bb.e:                                             ; preds = %bb.c
  br i1 %i.b, label %bb.p, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.h = load i32, ptr %i.g, align 16
  %i.i = icmp ult i32 %5, %i.h
  br i1 %i.i, label %bb.g, label %bb.p

bb.g:                                             ; preds = %bb.f
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %i.c
  store i32 %6, ptr %i.l, align 4
  br label %bb.r

bb.h:                                             ; preds = %bb.b
  %i.m = or i32 %5, %3
  %or.cond8 = icmp eq i32 %i.m, 0
  br i1 %or.cond8, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  %i.n = load i32, ptr @qemu_loglevel, align 4
  %i.o = and i32 %i.n, 1024
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %bb.r, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.14) #5
  br label %bb.r

bb.k:                                             ; preds = %bb.b
  %i.p = or i32 %5, %3
  %or.cond10 = icmp eq i32 %i.p, 0
  br i1 %or.cond10, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  tail call void @qemu_system_shutdown_request(i32 noundef 6) #5
  br label %bb.r

bb.m:                                             ; preds = %bb.b
  %i.q = or i32 %5, %3
  %or.cond12 = icmp eq i32 %i.q, 0
  br i1 %or.cond12, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  tail call void @qemu_system_reset_request(i32 noundef 7) #5
  br label %bb.r

bb.o:                                             ; preds = %bb.b
  %i.r = or i32 %5, %3
  %or.cond14 = icmp eq i32 %i.r, 0
  br i1 %or.cond14, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.a, %bb.b, %bb.o, %bb.m, %bb.k, %bb.h, %bb.e, %bb.f
  %i.s = load i32, ptr @qemu_loglevel, align 4
  %i.t = and i32 %i.s, 1024
  %.not44 = icmp eq i32 %i.t, 0
  br i1 %.not44, label %bb.r, label %bb.q, !prof !7

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.15, i32 noundef %2, i32 noundef %1, i32 noundef %3, i32 noundef %4, i32 noundef %5) #5
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p, %bb.o, %bb.j, %bb.i, %bb.n, %bb.l, %bb.g, %bb.d
  %.0 = phi i1 [ true, %bb.o ], [ true, %bb.d ], [ true, %bb.g ], [ true, %bb.j ], [ true, %bb.l ], [ true, %bb.n ], [ true, %bb.i ], [ false, %bb.p ], [ false, %bb.q ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @vexpress_cfgctrl_read(ptr nofree noundef readonly captures(none) %0, i32 noundef range(i32 0, 4096) %1, i32 noundef range(i32 0, 4096) %2, i32 noundef range(i32 0, 4096) %3, i32 noundef range(i32 0, 4096) %4, i32 noundef range(i32 0, 4096) %5, ptr nofree noundef nonnull writeonly captures(none) %6) unnamed_addr #0 {
bb.a:
  %i.a = or i32 %4, %1
  %or.cond.not = icmp ne i32 %i.a, 0
  %or.cond3 = icmp samesign ugt i32 %3, 1
  %or.cond = select i1 %or.cond.not, i1 true, i1 %or.cond3
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %2, label %bb.m [
    i32 2, label %bb.c
    i32 1, label %bb.h
  ]

bb.c:                                             ; preds = %bb.b
  %i.b = icmp eq i32 %3, 0
  br i1 %i.b, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1184
  %i.d = load i32, ptr %i.c, align 16
  %i.e = icmp ult i32 %5, %i.d
  br i1 %i.e, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1192
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = zext nneg i32 %5 to i64
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.h
  %i.j = load i32, ptr %i.i, align 4
  store i32 %i.j, ptr %6, align 4
  br label %bb.o

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.k = or i32 %5, %3
  %or.cond5 = icmp eq i32 %i.k, 0
  br i1 %or.cond5, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  store i32 3300000, ptr %6, align 4
  br label %bb.o

bb.h:                                             ; preds = %bb.b
  %i.l = icmp eq i32 %3, 0                        ; 2 uses
  %i.m = zext nneg i32 %5 to i64                  ; 2 uses
  %i.n = icmp samesign ult i32 %5, 6
  %or.cond8 = select i1 %i.l, i1 %i.n, i1 false
  br i1 %or.cond8, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.o, i64 %i.m
  %i.q = load i32, ptr %i.p, align 4
  store i32 %i.q, ptr %6, align 4
  br label %bb.o

bb.j:                                             ; preds = %bb.h
  br i1 %i.l, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.s = load i32, ptr %i.r, align 16
  %i.t = icmp ult i32 %5, %i.s
  br i1 %i.t, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %i.m
  %i.x = load i32, ptr %i.w, align 4
  store i32 %i.x, ptr %6, align 4
  br label %bb.o

bb.m:                                             ; preds = %bb.a, %bb.b, %bb.j, %bb.k, %bb.f
  %i.y = load i32, ptr @qemu_loglevel, align 4
  %i.z = and i32 %i.y, 1024
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %bb.o, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.16, i32 noundef %2, i32 noundef %1, i32 noundef %3, i32 noundef %4, i32 noundef %5) #5
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l, %bb.i, %bb.g, %bb.e
  %.0 = phi i1 [ true, %bb.l ], [ true, %bb.e ], [ true, %bb.g ], [ true, %bb.i ], [ false, %bb.m ], [ false, %bb.n ]
  ret i1 %.0
}

declare void @qemu_system_shutdown_request(i32 noundef) local_unnamed_addr #1

declare void @g_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @arm_sysctl_realize(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 26, ptr noundef nonnull @__func__.ARM_SYSCTL) #5 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1200
  %i.c = load i32, ptr %i.b, align 16
  %i.d = zext i32 %i.c to i64
  %i.e = tail call noalias ptr @g_malloc0_n(i64 noundef %i.d, i64 noundef 4) #6
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1176
  store ptr %i.e, ptr %i.f, align 8
  ret void
}

declare void @device_class_set_legacy_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @arm_sysctl_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef 26, ptr noundef nonnull @__func__.ARM_SYSCTL) #5 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1100
  store i32 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1104
  store i16 0, ptr %i.c, align 16
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1108
  store i32 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1112
  store i32 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1116
  store i32 0, ptr %i.f, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1124
  store i32 0, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1152
  store <4 x i32> <i32 50000000, i32 23750000, i32 24000000, i32 24000000>, ptr %i.h, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1168
  store i32 24000000, ptr %i.i, align 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1172
  store i32 24000000, ptr %i.j, align 4
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1200 ; 2 uses
  %i.l = load i32, ptr %i.k, align 16
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 1208
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 1176
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.022 = phi i32 [ 0, %.lr.ph ], [ %i.u, %bb.b ] ; 2 uses
  %i.o = load ptr, ptr %i.m, align 8
  %i.p = sext i32 %.022 to i64                    ; 2 uses
  %i.q = getelementptr inbounds [4 x i8], ptr %i.o, i64 %i.p
  %i.r = load i32, ptr %i.q, align 4
  %i.s = load ptr, ptr %i.n, align 8
  %i.t = getelementptr inbounds [4 x i8], ptr %i.s, i64 %i.p
  store i32 %i.r, ptr %i.t, align 4
  %i.u = add nuw i32 %.022, 1                     ; 2 uses
  %i.v = load i32, ptr %i.k, align 16
  %i.w = icmp ult i32 %i.u, %i.v
  br i1 %i.w, label %bb.b, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.x = getelementptr i8, ptr %i.a, i64 1096
  %.val = load i32, ptr %i.x, align 8
  %i.y = and i32 %.val, 268369920
  %i.z = icmp eq i32 %i.y, 26214400
  %spec.select = select i1 %i.z, i32 0, i32 7936
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 1148
  store i32 %spec.select, ptr %i.aa, align 4
  ret void
}

declare void @device_class_set_props_n(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc0_n(i64 noundef, i64 noundef) local_unnamed_addr #4

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0,1) }

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
!8 = !{!"auto-init"}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
end_hunk_0
