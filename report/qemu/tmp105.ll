Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tmp105?download=true
inline.NumInlined: 38
inline.NumDeleted: 16
begin_hunk_0_@tmp105_event:bb.a
    i8 0, label %bb.e
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
  ]

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 178 ; 2 uses
  %i.r = load i16, ptr %i.q, align 2
  %i.s = lshr i16 %i.r, 8
  %i.t = trunc nuw i16 %i.s to i8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 161
  %i.v = load i8, ptr %i.c, align 8               ; 3 uses
  %i.w = add i8 %i.v, 1
  %i.x = zext i8 %i.v to i64
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.x
  store i8 %i.t, ptr %i.y, align 1
  %i.z = load i16, ptr %i.q, align 2
  %i.aa = trunc i16 %i.z to i8
  %i.ab = load i8, ptr %i.d, align 1
  %i.ac = xor i8 %i.ab, -1
  %i.ad = lshr i8 %i.ac, 5
  %i.ae = and i8 %i.ad, 3
  %i.af = shl nsw i8 -16, %i.ae
  %i.ag = and i8 %i.af, %i.aa
  %i.ah = add i8 %i.v, 2
  br label %bb.i

bb.f:                                             ; preds = %bb.d
  %i.ai = load i8, ptr %i.d, align 1
  %i.aj = load i8, ptr %i.c, align 8              ; 2 uses
  %i.ak = add i8 %i.aj, 1
  br label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 180 ; 2 uses
  %i.am = load i16, ptr %i.al, align 4
  %i.an = lshr i16 %i.am, 8
  %i.ao = trunc nuw i16 %i.an to i8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 161
  %i.aq = load i8, ptr %i.c, align 8              ; 3 uses
  %i.ar = add i8 %i.aq, 1
  %i.as = zext i8 %i.aq to i64
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.as
  store i8 %i.ao, ptr %i.at, align 1
  %i.au = load i16, ptr %i.al, align 4
  %i.av = trunc i16 %i.au to i8
  %i.aw = add i8 %i.aq, 2
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 182 ; 2 uses
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = lshr i16 %i.ay, 8
  %i.ba = trunc nuw i16 %i.az to i8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 161
  %i.bc = load i8, ptr %i.c, align 8              ; 3 uses
  %i.bd = add i8 %i.bc, 1
  %i.be = zext i8 %i.bc to i64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.be
  store i8 %i.ba, ptr %i.bf, align 1
  %i.bg = load i16, ptr %i.ax, align 2
  %i.bh = trunc i16 %i.bg to i8
  %i.bi = add i8 %i.bc, 2
  br label %bb.i

default.unreachable:                              ; preds = %bb.d
  unreachable

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %.sink34.i = phi i8 [ %i.bi, %bb.h ], [ %i.aw, %bb.g ], [ %i.ak, %bb.f ], [ %i.ah, %bb.e ]
  %.sink33.i = phi i8 [ %i.bd, %bb.h ], [ %i.ar, %bb.g ], [ %i.aj, %bb.f ], [ %i.w, %bb.e ]
  %.sink.i = phi i8 [ %i.bh, %bb.h ], [ %i.av, %bb.g ], [ %i.ai, %bb.f ], [ %i.ag, %bb.e ]
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 161
  store i8 %.sink34.i, ptr %i.c, align 8
  %i.bk = zext i8 %.sink33.i to i64
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bk
  store i8 %.sink.i, ptr %i.bl, align 1
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %i.bn = load i8, ptr %i.bm, align 8
  %i.bo = load i8, ptr %i.n, align 8
  %i.bp = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.bp, 0
  br i1 %.not.i.i, label %tmp105_read.exit, label %bb.j, !prof !9

bb.j:                                             ; preds = %bb.i
  %i.bq = load i16, ptr @_TRACE_TMP105_READ_DSTATE, align 2
  %.not2.i.i = icmp eq i16 %i.bq, 0
  br i1 %.not2.i.i, label %tmp105_read.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.br = load i32, ptr @qemu_loglevel, align 4
  %i.bs = and i32 %i.br, 32768
  %.not3.i.i = icmp eq i32 %i.bs, 0
  br i1 %.not3.i.i, label %tmp105_read.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bt = zext i8 %i.bn to i32
  %i.bu = zext i8 %i.bo to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.14, i32 noundef %i.bt, i32 noundef %i.bu) #4
  br label %tmp105_read.exit

tmp105_read.exit:                                 ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store i8 0, ptr %i.bv, align 8
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define internal zeroext i8 @tmp105_rx(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 22, ptr noundef nonnull @__func__.TMP105) #4 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 2 uses
  %i.c = load i8, ptr %i.b, align 8               ; 3 uses
  %i.d = icmp ult i8 %i.c, 2
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 161
  %i.f = add nuw nsw i8 %i.c, 1
  store i8 %i.f, ptr %i.b, align 8
  %i.g = zext nneg i8 %i.c to i64
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i8 [ %i.i, %bb.b ], [ -1, %bb.a ]
  ret i8 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @tmp105_tx(ptr noundef %0, i8 noundef zeroext %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 22, ptr noundef nonnull @__func__.TMP105) #4 ; 27 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160 ; 5 uses
  %i.c = load i8, ptr %i.b, align 8               ; 4 uses
  %i.d = zext nneg i8 %i.c to i64
  %i.e = icmp eq i8 %i.c, 0
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store i8 %1, ptr %i.f, align 8
  store i8 1, ptr %i.b, align 8
  br label %tmp105_write.exit

bb.c:                                             ; preds = %bb.a
  %i.g = icmp ult i8 %i.c, 3
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr i8, ptr %i.b, i64 %i.d
  store i8 %1, ptr %i.h, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = add i8 %i.c, 1
  store i8 %i.i, ptr %i.b, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 152 ; 2 uses
  %i.k = load i8, ptr %i.j, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 176 ; 2 uses
  %i.m = load i8, ptr %i.l, align 8               ; 4 uses
  %i.n = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i, label %trace_tmp105_write.exit.i, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  %i.o = load i16, ptr @_TRACE_TMP105_WRITE_DSTATE, align 2
  %.not2.i.i = icmp eq i16 %i.o, 0
  br i1 %.not2.i.i, label %trace_tmp105_write.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load i32, ptr @qemu_loglevel, align 4
  %i.q = and i32 %i.p, 32768
  %.not3.i.i = icmp eq i32 %i.q, 0
  br i1 %.not3.i.i, label %trace_tmp105_write.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = zext i8 %i.k to i32
  %i.s = zext i8 %i.m to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.15, i32 noundef %i.r, i32 noundef %i.s) #4
  %.pre.i = load i8, ptr %i.l, align 8
  br label %trace_tmp105_write.exit.i

trace_tmp105_write.exit.i:                        ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  %i.t = phi i8 [ %i.m, %bb.e ], [ %i.m, %bb.f ], [ %i.m, %bb.g ], [ %.pre.i, %bb.h ] ; 2 uses
  %i.u = and i8 %i.t, 3
  switch i8 %i.u, label %default.unreachable [
    i8 3, label %bb.u
    i8 1, label %bb.i
    i8 2, label %bb.u
    i8 0, label %tmp105_write.exit
  ]

bb.i:                                             ; preds = %trace_tmp105_write.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 161 ; 2 uses
  %i.w = load i8, ptr %i.v, align 1               ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 177 ; 2 uses
  %i.y = load i8, ptr %i.x, align 1
  %2 = xor i8 %i.y, -1
  %i.z = and i8 %i.w, 1
  %3 = and i8 %i.z, %2
  %.not.i = icmp eq i8 %3, 0
  br i1 %.not.i, label %trace_tmp105_write_shutdown.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aa = load i8, ptr %i.j, align 8
  %i.ab = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i19.i = icmp eq i32 %i.ab, 0
  br i1 %.not.i19.i, label %trace_tmp105_write_shutdown.exit.i, label %bb.k, !prof !9

bb.k:                                             ; preds = %bb.j
  %i.ac = load i16, ptr @_TRACE_TMP105_WRITE_SHUTDOWN_DSTATE, align 2
  %.not1.i.i = icmp eq i16 %i.ac, 0
  br i1 %.not1.i.i, label %trace_tmp105_write_shutdown.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ad = load i32, ptr @qemu_loglevel, align 4
  %i.ae = and i32 %i.ad, 32768
  %.not2.i20.i = icmp eq i32 %i.ae, 0
  br i1 %.not2.i20.i, label %trace_tmp105_write_shutdown.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.af = zext i8 %i.aa to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.16, i32 noundef %i.af) #4
  %.pre30.i = load i8, ptr %i.v, align 1
  br label %trace_tmp105_write_shutdown.exit.i

trace_tmp105_write_shutdown.exit.i:               ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.ag = phi i8 [ %.pre30.i, %bb.m ], [ %i.w, %bb.l ], [ %i.w, %bb.k ], [ %i.w, %bb.j ], [ %i.w, %bb.i ] ; 9 uses
  %i.ah = and i8 %i.ag, 127
  store i8 %i.ah, ptr %i.x, align 1
  %i.ai = lshr i8 %i.ag, 3
  %i.aj = and i8 %i.ai, 3
  %i.ak = zext nneg i8 %i.aj to i64
  %i.al = getelementptr inbounds nuw [4 x i8], ptr @tmp105_faultq, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store i32 %i.am, ptr %i.an, align 8
  %i.ao = and i8 %i.ag, -127
  %or.cond.i.not.i = icmp eq i8 %i.ao, 1
  br i1 %or.cond.i.not.i, label %tmp105_write.exit, label %bb.n

bb.n:                                             ; preds = %trace_tmp105_write_shutdown.exit.i
  %i.ap = and i8 %i.ag, 2
  %.not.i21.i = icmp eq i8 %i.ap, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %i.a, i64 189 ; 2 uses
  %i.ar = load i8, ptr %i.aq, align 1, !range !7, !noundef !8
  %i.as = trunc nuw i8 %i.ar to i1                ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 178
  %i.au = load i16, ptr %i.at, align 2            ; 4 uses
  br i1 %.not.i21.i, label %bb.r, label %bb.o

bb.o:                                             ; preds = %bb.n
  br i1 %i.as, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  %i.aw = load i16, ptr %i.av, align 4
  %i.ax = icmp slt i16 %i.au, %i.aw
  br i1 %i.ax, label %.sink.split.i.i, label %tmp105_alarm_update.exit.sink.split.i

bb.q:                                             ; preds = %bb.o
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 182
  %i.az = load i16, ptr %i.ay, align 2
  %.not23.i.i = icmp slt i16 %i.au, %i.az
  br i1 %.not23.i.i, label %tmp105_alarm_update.exit.sink.split.i, label %.sink.split.i.i

bb.r:                                             ; preds = %bb.n
  br i1 %i.as, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  %i.bb = load i16, ptr %i.ba, align 4
  %i.bc = icmp slt i16 %i.au, %i.bb
  br i1 %i.bc, label %.sink.split.i.i, label %tmp105_alarm_update.exit.sink.split.i

bb.t:                                             ; preds = %bb.r
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 182
  %i.be = load i16, ptr %i.bd, align 2
  %.not22.i.i = icmp slt i16 %i.au, %i.be
  br i1 %.not22.i.i, label %tmp105_alarm_update.exit.sink.split.i, label %.sink.split.i.i

.sink.split.i.i:                                  ; preds = %bb.t, %bb.s, %bb.q, %bb.p
  %.sink24.i.i = phi i8 [ 1, %bb.q ], [ 0, %bb.s ], [ 1, %bb.p ], [ 1, %bb.t ]
  %.sink.i.i = phi i8 [ 1, %bb.q ], [ 0, %bb.s ], [ 0, %bb.p ], [ 1, %bb.t ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i8 %.sink24.i.i, ptr %i.bf, align 4
  store i8 %.sink.i.i, ptr %i.aq, align 1
  br label %tmp105_alarm_update.exit.sink.split.i

bb.u:                                             ; preds = %trace_tmp105_write.exit.i, %trace_tmp105_write.exit.i
  %i.bg = load i8, ptr %i.b, align 8
  %i.bh = icmp ugt i8 %i.bg, 2
  br i1 %i.bh, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 161
  %i.bj = load i8, ptr %i.bi, align 1
  %i.bk = zext i8 %i.bj to i16
  %i.bl = shl nuw i16 %i.bk, 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.a, i64 162
  %i.bn = load i8, ptr %i.bm, align 2
  %i.bo = and i8 %i.bn, -16
  %i.bp = zext i8 %i.bo to i16
  %i.bq = or disjoint i16 %i.bl, %i.bp
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  %i.bs = and i8 %i.t, 1
  %i.bt = zext nneg i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [2 x i8], ptr %i.br, i64 %i.bt
  store i16 %i.bq, ptr %i.bu, align 2
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.bv = getelementptr inbounds nuw i8, ptr %i.a, i64 177
  %i.bw = load i8, ptr %i.bv, align 1             ; 7 uses
  %i.bx = and i8 %i.bw, 1
  %i.by = icmp eq i8 %i.bx, 0
  br i1 %i.by, label %bb.x, label %tmp105_write.exit

bb.x:                                             ; preds = %bb.w
  %i.bz = and i8 %i.bw, 2
  %.not.i23.i = icmp eq i8 %i.bz, 0
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 189 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 1, !range !7, !noundef !8
  %i.cc = trunc nuw i8 %i.cb to i1                ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.a, i64 178
  %i.ce = load i16, ptr %i.cd, align 2            ; 4 uses
  br i1 %.not.i23.i, label %bb.ab, label %bb.y

bb.y:                                             ; preds = %bb.x
  br i1 %i.cc, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cf = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  %i.cg = load i16, ptr %i.cf, align 4
  %i.ch = icmp slt i16 %i.ce, %i.cg
  br i1 %i.ch, label %.sink.split.i25.i, label %tmp105_alarm_update.exit.sink.split.i

bb.aa:                                            ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %i.a, i64 182
  %i.cj = load i16, ptr %i.ci, align 2
  %.not23.i24.i = icmp slt i16 %i.ce, %i.cj
  br i1 %.not23.i24.i, label %tmp105_alarm_update.exit.sink.split.i, label %.sink.split.i25.i

bb.ab:                                            ; preds = %bb.x
  br i1 %i.cc, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 180
  %i.cl = load i16, ptr %i.ck, align 4
  %i.cm = icmp slt i16 %i.ce, %i.cl
  br i1 %i.cm, label %.sink.split.i25.i, label %tmp105_alarm_update.exit.sink.split.i

bb.ad:                                            ; preds = %bb.ab
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 182
  %i.co = load i16, ptr %i.cn, align 2
  %.not22.i28.i = icmp slt i16 %i.ce, %i.co
  br i1 %.not22.i28.i, label %tmp105_alarm_update.exit.sink.split.i, label %.sink.split.i25.i

.sink.split.i25.i:                                ; preds = %bb.ad, %bb.ac, %bb.aa, %bb.z
  %.sink24.i26.i = phi i8 [ 1, %bb.aa ], [ 0, %bb.ac ], [ 1, %bb.z ], [ 1, %bb.ad ]
  %.sink.i27.i = phi i8 [ 1, %bb.aa ], [ 0, %bb.ac ], [ 0, %bb.z ], [ 1, %bb.ad ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  store i8 %.sink24.i26.i, ptr %i.cp, align 4
  store i8 %.sink.i27.i, ptr %i.ca, align 1
  br label %tmp105_alarm_update.exit.sink.split.i

default.unreachable:                              ; preds = %trace_tmp105_write.exit.i
  unreachable

tmp105_alarm_update.exit.sink.split.i:            ; preds = %.sink.split.i25.i, %bb.ad, %bb.ac, %bb.aa, %bb.z, %.sink.split.i.i, %bb.t, %bb.s, %bb.q, %bb.p
  %.sink38.i = phi i8 [ %i.ag, %bb.p ], [ %i.ag, %.sink.split.i.i ], [ %i.ag, %bb.t ], [ %i.ag, %bb.s ], [ %i.ag, %bb.q ], [ %i.bw, %.sink.split.i25.i ], [ %i.bw, %bb.ad ], [ %i.bw, %bb.ac ], [ %i.bw, %bb.aa ], [ %i.bw, %bb.z ]
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %i.a, i64 188
  %i.ct = load i8, ptr %i.cs, align 4
  %i.cu = xor i8 %.sink38.i, -1
  %i.cv = lshr i8 %i.cu, 2
  %i.cw = and i8 %i.cv, 1
  %i.cx = xor i8 %i.ct, %i.cw
  %i.cy = zext i8 %i.cx to i32
  tail call void @qemu_set_irq(ptr noundef %i.cr, i32 noundef %i.cy) #4
  br label %tmp105_write.exit

tmp105_write.exit:                                ; preds = %tmp105_alarm_update.exit.sink.split.i, %bb.w, %trace_tmp105_write_shutdown.exit.i, %trace_tmp105_write.exit.i, %bb.b
  ret i32 0
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @qdev_init_gpio_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @tmp105_post_load(ptr nofree noundef captures(none) initializes((184, 188)) %0, i32 %1) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 177
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = lshr i8 %i.b, 3
  %i.d = and i8 %i.c, 3
  %i.e = zext nneg i8 %i.d to i64
end_hunk_0
