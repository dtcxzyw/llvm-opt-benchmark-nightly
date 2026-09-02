Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/pl061?download=true
inline.NumInlined: 40
inline.NumDeleted: 16
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@pl061_read:bb.a
  br label %bb.ak

bb.r:                                             ; preds = %bb.a
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.ax = load ptr, ptr %i.aw, align 16
  %.not48 = icmp eq ptr %i.ax, @pl061_id_luminary
  br i1 %.not48, label %bb.s, label %bb.ai

bb.s:                                             ; preds = %bb.r
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1144
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = zext i32 %i.az to i64
  br label %bb.ak

bb.t:                                             ; preds = %bb.a
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.bc = load ptr, ptr %i.bb, align 16
  %.not47 = icmp eq ptr %i.bc, @pl061_id_luminary
  br i1 %.not47, label %bb.u, label %bb.ai

bb.u:                                             ; preds = %bb.t
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1148
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = zext i32 %i.be to i64
  br label %bb.ak

bb.v:                                             ; preds = %bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.bh = load ptr, ptr %i.bg, align 16
  %.not46 = icmp eq ptr %i.bh, @pl061_id_luminary
  br i1 %.not46, label %bb.w, label %bb.ai

bb.w:                                             ; preds = %bb.v
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.bj = load i32, ptr %i.bi, align 16
  %i.bk = zext i32 %i.bj to i64
  br label %bb.ak

bb.x:                                             ; preds = %bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.bm = load ptr, ptr %i.bl, align 16
  %.not45 = icmp eq ptr %i.bm, @pl061_id_luminary
  br i1 %.not45, label %bb.y, label %bb.ai

bb.y:                                             ; preds = %bb.x
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1156
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = zext i32 %i.bo to i64
  br label %bb.ak

bb.z:                                             ; preds = %bb.a
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.br = load ptr, ptr %i.bq, align 16
  %.not44 = icmp eq ptr %i.br, @pl061_id_luminary
  br i1 %.not44, label %bb.aa, label %bb.ai

bb.aa:                                            ; preds = %bb.z
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 1160
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = zext i32 %i.bt to i64
  br label %bb.ak

bb.ab:                                            ; preds = %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.bw = load ptr, ptr %i.bv, align 16
  %.not43 = icmp eq ptr %i.bw, @pl061_id_luminary
  br i1 %.not43, label %bb.ac, label %bb.ai

bb.ac:                                            ; preds = %bb.ab
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.by = load i32, ptr %i.bx, align 16
  %i.bz = zext i32 %i.by to i64
  br label %bb.ak

bb.ad:                                            ; preds = %bb.a
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.cb = load ptr, ptr %i.ca, align 16
  %.not42 = icmp eq ptr %i.cb, @pl061_id_luminary
  br i1 %.not42, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 1164
  %i.cd = load i32, ptr %i.cc, align 4
  %i.ce = zext i32 %i.cd to i64
  br label %bb.ak

bb.af:                                            ; preds = %bb.a
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.cg = load ptr, ptr %i.cf, align 16
  %.not = icmp eq ptr %i.cg, @pl061_id_luminary
  br i1 %.not, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 1168
  %i.ci = load i32, ptr %i.ch, align 16
  %i.cj = zext i32 %i.ci to i64
  br label %bb.ak

bb.ah:                                            ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.cl = load ptr, ptr %i.ck, align 16
  %i.cm = add nsw i64 %1, -4048
  %i.cn = lshr i64 %i.cm, 2
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 %i.cn
  %i.cp = load i8, ptr %i.co, align 1
  %i.cq = zext i8 %i.cp to i64
  br label %bb.ak

bb.ai:                                            ; preds = %bb.l, %bb.n, %bb.p, %bb.r, %bb.t, %bb.v, %bb.x, %bb.z, %bb.ab, %bb.ad, %bb.af, %bb.c
  %i.cr = load i32, ptr @qemu_loglevel, align 4
  %i.cs = and i32 %i.cr, 2048
  %.not52 = icmp eq i32 %i.cs, 0
  br i1 %.not52, label %bb.ak, label %bb.aj, !prof !7

bb.aj:                                            ; preds = %bb.ai
  %i.ct = trunc i64 %1 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.8, i32 noundef %i.ct) #4
  br label %bb.ak

bb.ak:                                            ; preds = %bb.ai, %bb.aj, %bb.ah, %bb.ag, %bb.ae, %bb.ac, %bb.aa, %bb.y, %bb.w, %bb.u, %bb.s, %bb.q, %bb.o, %bb.m, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b
  %.0 = phi i64 [ %i.e, %bb.b ], [ 0, %bb.aj ], [ 0, %bb.ai ], [ %i.i, %bb.d ], [ %i.l, %bb.e ], [ %i.o, %bb.f ], [ %i.r, %bb.g ], [ %i.u, %bb.h ], [ %i.x, %bb.i ], [ %i.ad, %bb.j ], [ %i.ag, %bb.k ], [ %i.al, %bb.m ], [ %i.aq, %bb.o ], [ %i.av, %bb.q ], [ %i.ba, %bb.s ], [ %i.bf, %bb.u ], [ %i.bk, %bb.w ], [ %i.bp, %bb.y ], [ %i.bu, %bb.aa ], [ %i.bz, %bb.ac ], [ %i.ce, %bb.ae ], [ %i.cj, %bb.ag ], [ %i.cq, %bb.ah ] ; 2 uses
  %i.cu = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #4
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8
  %i.cx = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.cx, 0
  br i1 %.not.i, label %trace_pl061_read.exit, label %bb.al, !prof !7

bb.al:                                            ; preds = %bb.ak
  %i.cy = load i16, ptr @_TRACE_PL061_READ_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.cy, 0
  br i1 %.not2.i, label %trace_pl061_read.exit, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cz = load i32, ptr @qemu_loglevel, align 4
  %i.da = and i32 %i.cz, 32768
  %.not3.i = icmp eq i32 %i.da, 0
  br i1 %.not3.i, label %trace_pl061_read.exit, label %bb.an

bb.an:                                            ; preds = %bb.am
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, ptr noundef %i.cw, i64 noundef %1, i64 noundef range(i64 0, 4294967296) %.0) #4
  br label %trace_pl061_read.exit

trace_pl061_read.exit:                            ; preds = %bb.ak, %bb.al, %bb.am, %bb.an
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @pl061_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #4
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %trace_pl061_write.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr @_TRACE_PL061_WRITE_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.e, 0
  br i1 %.not2.i, label %trace_pl061_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 32768
  %.not3.i = icmp eq i32 %i.g, 0
  br i1 %.not3.i, label %trace_pl061_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.11, ptr noundef %i.c, i64 noundef %1, i64 noundef %2) #4
  br label %trace_pl061_write.exit

trace_pl061_write.exit:                           ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.h = add i64 %1, -1024                        ; 2 uses
  %i.i = tail call i64 @llvm.fshl.i64(i64 %i.h, i64 %i.h, i64 62)
  switch i64 %i.i, label %bb.f [
    i64 0, label %bb.g
    i64 1, label %bb.h
    i64 2, label %bb.i
    i64 3, label %bb.j
    i64 4, label %bb.k
    i64 7, label %bb.l
    i64 8, label %bb.m
    i64 64, label %bb.n
    i64 65, label %bb.p
    i64 66, label %bb.r
    i64 67, label %bb.t
    i64 68, label %bb.v
    i64 69, label %bb.x
    i64 70, label %bb.z
    i64 71, label %bb.ab
    i64 72, label %bb.ad
    i64 73, label %bb.af
    i64 74, label %bb.ai
  ]

bb.e:                                             ; preds = %bb.f
  %i.j = lshr i64 %1, 2
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.l = load i32, ptr %i.k, align 16
  %4 = trunc nuw nsw i64 %i.j to i32
  %5 = and i32 %i.l, %4                           ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 1092 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = xor i32 %5, -1
  %i.p = and i32 %i.n, %i.o
  %6 = trunc i64 %2 to i32
  %7 = and i32 %5, %6
  %i.q = or i32 %7, %i.p
  store i32 %i.q, ptr %i.m, align 4
  tail call fastcc void @pl061_update(ptr noundef %0)
  br label %bb.an

bb.f:                                             ; preds = %trace_pl061_write.exit
  %i.r = icmp ult i64 %1, 1024
  br i1 %i.r, label %bb.e, label %bb.ak

bb.g:                                             ; preds = %trace_pl061_write.exit
  %i.s = trunc i64 %2 to i32
  %i.t = and i32 %i.s, 255
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store i32 %i.t, ptr %i.u, align 16
  br label %bb.am

bb.h:                                             ; preds = %trace_pl061_write.exit
  %i.v = trunc i64 %2 to i32
  %i.w = and i32 %i.v, 255
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1108
  store i32 %i.w, ptr %i.x, align 4
  br label %bb.am

bb.i:                                             ; preds = %trace_pl061_write.exit
  %i.y = trunc i64 %2 to i32
  %i.z = and i32 %i.y, 255
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1112
  store i32 %i.z, ptr %i.aa, align 8
  br label %bb.am

bb.j:                                             ; preds = %trace_pl061_write.exit
  %i.ab = trunc i64 %2 to i32
  %i.ac = and i32 %i.ab, 255
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1116
  store i32 %i.ac, ptr %i.ad, align 4
  br label %bb.am

bb.k:                                             ; preds = %trace_pl061_write.exit
  %i.ae = trunc i64 %2 to i32
  %i.af = and i32 %i.ae, 255
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1120
  store i32 %i.af, ptr %i.ag, align 16
  br label %bb.am

bb.l:                                             ; preds = %trace_pl061_write.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 1124 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = trunc i64 %2 to i32
  %i.ak = xor i32 %i.aj, -1
  %i.al = and i32 %i.ai, %i.ak
  store i32 %i.al, ptr %i.ah, align 4
  br label %bb.am

bb.m:                                             ; preds = %trace_pl061_write.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1164
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = and i32 %i.an, 255                      ; 2 uses
  %i.ar = xor i32 %i.aq, -1
  %i.as = and i32 %i.ap, %i.ar
  %i.at = trunc i64 %2 to i32
  %i.au = and i32 %i.aq, %i.at
  %i.av = or i32 %i.au, %i.as
  store i32 %i.av, ptr %i.ao, align 8
  br label %bb.am

bb.n:                                             ; preds = %trace_pl061_write.exit
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.ax = load ptr, ptr %i.aw, align 16
  %.not76 = icmp eq ptr %i.ax, @pl061_id_luminary
  br i1 %.not76, label %bb.o, label %bb.ak

bb.o:                                             ; preds = %bb.n
  %i.ay = trunc i64 %2 to i32
  %i.az = and i32 %i.ay, 255
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1132
  store i32 %i.az, ptr %i.ba, align 4
  br label %bb.am

bb.p:                                             ; preds = %trace_pl061_write.exit
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.bc = load ptr, ptr %i.bb, align 16
  %.not75 = icmp eq ptr %i.bc, @pl061_id_luminary
  br i1 %.not75, label %bb.q, label %bb.ak

bb.q:                                             ; preds = %bb.p
  %i.bd = trunc i64 %2 to i32
  %i.be = and i32 %i.bd, 255
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store i32 %i.be, ptr %i.bf, align 16
  br label %bb.am

bb.r:                                             ; preds = %trace_pl061_write.exit
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.bh = load ptr, ptr %i.bg, align 16
  %.not74 = icmp eq ptr %i.bh, @pl061_id_luminary
  br i1 %.not74, label %bb.s, label %bb.ak

bb.s:                                             ; preds = %bb.r
  %i.bi = trunc i64 %2 to i32
  %i.bj = and i32 %i.bi, 255
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1140
  store i32 %i.bj, ptr %i.bk, align 4
  br label %bb.am

bb.t:                                             ; preds = %trace_pl061_write.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.bm = load ptr, ptr %i.bl, align 16
  %.not73 = icmp eq ptr %i.bm, @pl061_id_luminary
  br i1 %.not73, label %bb.u, label %bb.ak

bb.u:                                             ; preds = %bb.t
  %i.bn = trunc i64 %2 to i32
  %i.bo = and i32 %i.bn, 255
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store i32 %i.bo, ptr %i.bp, align 8
  br label %bb.am

bb.v:                                             ; preds = %trace_pl061_write.exit
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.br = load ptr, ptr %i.bq, align 16
  %.not72 = icmp eq ptr %i.br, @pl061_id_luminary
  br i1 %.not72, label %bb.w, label %bb.ak

bb.w:                                             ; preds = %bb.v
  %i.bs = trunc i64 %2 to i32
  %i.bt = and i32 %i.bs, 255
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 1148
  store i32 %i.bt, ptr %i.bu, align 4
  br label %bb.am

bb.x:                                             ; preds = %trace_pl061_write.exit
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.bw = load ptr, ptr %i.bv, align 16
  %.not71 = icmp eq ptr %i.bw, @pl061_id_luminary
  br i1 %.not71, label %bb.y, label %bb.ak

bb.y:                                             ; preds = %bb.x
  %i.bx = trunc i64 %2 to i32
  %i.by = and i32 %i.bx, 255
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 1152
  store i32 %i.by, ptr %i.bz, align 16
  br label %bb.am

bb.z:                                             ; preds = %trace_pl061_write.exit
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.cb = load ptr, ptr %i.ca, align 16
  %.not70 = icmp eq ptr %i.cb, @pl061_id_luminary
  br i1 %.not70, label %bb.aa, label %bb.ak

bb.aa:                                            ; preds = %bb.z
  %i.cc = trunc i64 %2 to i32
  %i.cd = and i32 %i.cc, 255
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 1156
  store i32 %i.cd, ptr %i.ce, align 4
  br label %bb.am

bb.ab:                                            ; preds = %trace_pl061_write.exit
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.cg = load ptr, ptr %i.cf, align 16
  %.not69 = icmp eq ptr %i.cg, @pl061_id_luminary
  br i1 %.not69, label %bb.ac, label %bb.ak

bb.ac:                                            ; preds = %bb.ab
  %i.ch = trunc i64 %2 to i32
  %i.ci = and i32 %i.ch, 255
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1160
  store i32 %i.ci, ptr %i.cj, align 8
  br label %bb.am

bb.ad:                                            ; preds = %trace_pl061_write.exit
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.cl = load ptr, ptr %i.ck, align 16
  %.not68 = icmp eq ptr %i.cl, @pl061_id_luminary
  br i1 %.not68, label %bb.ae, label %bb.ak

bb.ae:                                            ; preds = %bb.ad
  %i.cm = icmp ne i64 %2, 181200209
  %i.cn = zext i1 %i.cm to i32
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1088
  store i32 %i.cn, ptr %i.co, align 16
  br label %bb.am

bb.af:                                            ; preds = %trace_pl061_write.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.cq = load ptr, ptr %i.cp, align 16
  %.not66 = icmp eq ptr %i.cq, @pl061_id_luminary
  br i1 %.not66, label %bb.ag, label %bb.ak

bb.ag:                                            ; preds = %bb.af
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.cs = load i32, ptr %i.cr, align 16
  %.not67 = icmp eq i32 %i.cs, 0
  br i1 %.not67, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.ct = trunc i64 %2 to i32
  %i.cu = and i32 %i.ct, 255
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 1164
  store i32 %i.cu, ptr %i.cv, align 4
end_hunk_0
