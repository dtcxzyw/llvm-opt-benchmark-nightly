Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/nrf51_gpio?download=true
inline.NumInlined: 40
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@nrf51_gpio_write:bb.a

bb.j:                                             ; preds = %trace_nrf51_gpio_write.exit
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1108 ; 2 uses
  %i.x = load i32, ptr %i.w, align 4
  %i.y = trunc i64 %2 to i32
  %i.z = xor i32 %i.y, -1
  %i.aa = and i32 %i.x, %i.z
  store i32 %i.aa, ptr %i.w, align 4
  tail call fastcc void @reflect_dir_bit_in_cnf(ptr noundef %i.a)
  br label %bb.o

bb.k:                                             ; preds = %bb.l
  %i.ab = lshr i64 %i.ap, 2                       ; 3 uses
  %i.ac = trunc i64 %2 to i32
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 1112
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ab
  store i32 %i.ac, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 1108 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = zext i32 %i.ag to i64
  %i.ai = shl nuw nsw i64 1, %i.ab
  %i.aj = xor i64 %i.ai, -1
  %i.ak = and i64 %i.ah, %i.aj
  %i.al = and i64 %2, 1
  %i.am = shl nuw nsw i64 %i.al, %i.ab
  %i.an = or i64 %i.ak, %i.am
  %i.ao = trunc nuw i64 %i.an to i32
  store i32 %i.ao, ptr %i.af, align 4
  br label %bb.o

bb.l:                                             ; preds = %trace_nrf51_gpio_write.exit
  %i.ap = add i64 %1, -1792                       ; 2 uses
  %i.aq = icmp ult i64 %i.ap, 125
  br i1 %i.aq, label %bb.k, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = load i32, ptr @qemu_loglevel, align 4
  %i.as = and i32 %i.ar, 2048
  %.not = icmp eq i32 %i.as, 0
  br i1 %.not, label %bb.o, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.nrf51_gpio_write, i64 noundef %1) #5
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e
  tail call fastcc void @update_state(ptr noundef %i.a)
  ret void
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @reflect_dir_bit_in_cnf(ptr nofree noundef captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1108
  %i.b = load i32, ptr %i.a, align 4              ; 32 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1112 ; 2 uses
  %i.d = lshr i32 %i.b, 1
  %i.e = lshr i32 %i.b, 2
  %i.f = load <4 x i32>, ptr %i.c, align 4
  %i.g = and <4 x i32> %i.f, splat (i32 -2)
  %i.h = lshr i32 %i.b, 3
  %i.i = insertelement <4 x i32> poison, i32 %i.b, i64 0
  %i.j = insertelement <4 x i32> %i.i, i32 %i.d, i64 1
  %i.k = insertelement <4 x i32> %i.j, i32 %i.e, i64 2
  %i.l = insertelement <4 x i32> %i.k, i32 %i.h, i64 3
  %i.m = and <4 x i32> %i.l, splat (i32 1)
  %i.n = or disjoint <4 x i32> %i.g, %i.m
  store <4 x i32> %i.n, ptr %i.c, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1128 ; 2 uses
  %i.p = lshr i32 %i.b, 4
  %i.q = lshr i32 %i.b, 5
  %i.r = lshr i32 %i.b, 6
  %i.s = load <4 x i32>, ptr %i.o, align 4
  %i.t = and <4 x i32> %i.s, splat (i32 -2)
  %i.u = lshr i32 %i.b, 7
  %i.v = insertelement <4 x i32> poison, i32 %i.p, i64 0
  %i.w = insertelement <4 x i32> %i.v, i32 %i.q, i64 1
  %i.x = insertelement <4 x i32> %i.w, i32 %i.r, i64 2
  %i.y = insertelement <4 x i32> %i.x, i32 %i.u, i64 3
  %i.z = and <4 x i32> %i.y, splat (i32 1)
  %i.aa = or disjoint <4 x i32> %i.t, %i.z
  store <4 x i32> %i.aa, ptr %i.o, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 1144 ; 2 uses
  %i.ac = lshr i32 %i.b, 8
  %i.ad = lshr i32 %i.b, 9
  %i.ae = lshr i32 %i.b, 10
  %i.af = load <4 x i32>, ptr %i.ab, align 4
  %i.ag = and <4 x i32> %i.af, splat (i32 -2)
  %i.ah = lshr i32 %i.b, 11
  %i.ai = insertelement <4 x i32> poison, i32 %i.ac, i64 0
  %i.aj = insertelement <4 x i32> %i.ai, i32 %i.ad, i64 1
  %i.ak = insertelement <4 x i32> %i.aj, i32 %i.ae, i64 2
  %i.al = insertelement <4 x i32> %i.ak, i32 %i.ah, i64 3
  %i.am = and <4 x i32> %i.al, splat (i32 1)
  %i.an = or disjoint <4 x i32> %i.ag, %i.am
  store <4 x i32> %i.an, ptr %i.ab, align 4
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 1160 ; 2 uses
  %i.ap = lshr i32 %i.b, 12
  %i.aq = lshr i32 %i.b, 13
  %i.ar = lshr i32 %i.b, 14
  %i.as = load <4 x i32>, ptr %i.ao, align 4
  %i.at = and <4 x i32> %i.as, splat (i32 -2)
  %i.au = lshr i32 %i.b, 15
  %i.av = insertelement <4 x i32> poison, i32 %i.ap, i64 0
  %i.aw = insertelement <4 x i32> %i.av, i32 %i.aq, i64 1
  %i.ax = insertelement <4 x i32> %i.aw, i32 %i.ar, i64 2
  %i.ay = insertelement <4 x i32> %i.ax, i32 %i.au, i64 3
  %i.az = and <4 x i32> %i.ay, splat (i32 1)
  %i.ba = or disjoint <4 x i32> %i.at, %i.az
  store <4 x i32> %i.ba, ptr %i.ao, align 4
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1176 ; 2 uses
  %i.bc = lshr i32 %i.b, 16
  %i.bd = lshr i32 %i.b, 17
  %i.be = lshr i32 %i.b, 18
  %i.bf = load <4 x i32>, ptr %i.bb, align 4
  %i.bg = and <4 x i32> %i.bf, splat (i32 -2)
  %i.bh = lshr i32 %i.b, 19
  %i.bi = insertelement <4 x i32> poison, i32 %i.bc, i64 0
  %i.bj = insertelement <4 x i32> %i.bi, i32 %i.bd, i64 1
  %i.bk = insertelement <4 x i32> %i.bj, i32 %i.be, i64 2
  %i.bl = insertelement <4 x i32> %i.bk, i32 %i.bh, i64 3
  %i.bm = and <4 x i32> %i.bl, splat (i32 1)
  %i.bn = or disjoint <4 x i32> %i.bg, %i.bm
  store <4 x i32> %i.bn, ptr %i.bb, align 4
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1192 ; 2 uses
  %i.bp = lshr i32 %i.b, 20
  %i.bq = lshr i32 %i.b, 21
  %i.br = lshr i32 %i.b, 22
  %i.bs = load <4 x i32>, ptr %i.bo, align 4
  %i.bt = and <4 x i32> %i.bs, splat (i32 -2)
  %i.bu = lshr i32 %i.b, 23
  %i.bv = insertelement <4 x i32> poison, i32 %i.bp, i64 0
  %i.bw = insertelement <4 x i32> %i.bv, i32 %i.bq, i64 1
  %i.bx = insertelement <4 x i32> %i.bw, i32 %i.br, i64 2
  %i.by = insertelement <4 x i32> %i.bx, i32 %i.bu, i64 3
  %i.bz = and <4 x i32> %i.by, splat (i32 1)
  %i.ca = or disjoint <4 x i32> %i.bt, %i.bz
  store <4 x i32> %i.ca, ptr %i.bo, align 4
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 1208 ; 2 uses
  %i.cc = lshr i32 %i.b, 24
  %i.cd = lshr i32 %i.b, 25
  %i.ce = lshr i32 %i.b, 26
  %i.cf = load <4 x i32>, ptr %i.cb, align 4
  %i.cg = and <4 x i32> %i.cf, splat (i32 -2)
  %i.ch = lshr i32 %i.b, 27
  %i.ci = insertelement <4 x i32> poison, i32 %i.cc, i64 0
  %i.cj = insertelement <4 x i32> %i.ci, i32 %i.cd, i64 1
  %i.ck = insertelement <4 x i32> %i.cj, i32 %i.ce, i64 2
  %i.cl = insertelement <4 x i32> %i.ck, i32 %i.ch, i64 3
  %i.cm = and <4 x i32> %i.cl, splat (i32 1)
  %i.cn = or disjoint <4 x i32> %i.cg, %i.cm
  store <4 x i32> %i.cn, ptr %i.cb, align 4
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 2 uses
  %i.cp = lshr i32 %i.b, 28
  %i.cq = lshr i32 %i.b, 29
  %i.cr = lshr i32 %i.b, 30
  %i.cs = load <4 x i32>, ptr %i.co, align 4
  %i.ct = and <4 x i32> %i.cs, splat (i32 -2)
  %i.cu = lshr i32 %i.b, 31
  %i.cv = insertelement <4 x i32> poison, i32 %i.cp, i64 0
  %i.cw = insertelement <4 x i32> %i.cv, i32 %i.cq, i64 1
  %i.cx = insertelement <4 x i32> %i.cw, i32 %i.cr, i64 2
  %i.cy = insertelement <4 x i32> %i.cx, i32 %i.cu, i64 3
  %i.cz = and <4 x i32> %i.cy, <i32 1, i32 1, i32 1, i32 -1>
  %i.da = or disjoint <4 x i32> %i.ct, %i.cz
  store <4 x i32> %i.da, ptr %i.co, align 4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @update_state(ptr nofree noundef captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1096
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1100 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1244 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1248
  br label %extract32.exit66

extract32.exit66:                                 ; preds = %bb.a, %update_output_irq.exit
  %.073 = phi i8 [ 0, %bb.a ], [ %.381, %update_output_irq.exit ] ; 7 uses
  %.05672 = phi i64 [ 0, %bb.a ], [ %i.ci, %update_output_irq.exit ] ; 6 uses
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %.05672 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4              ; 6 uses
  %i.j = lshr i32 %i.i, 2
  %i.k = and i32 %i.j, 3                          ; 3 uses
  %switch.selectcmp.i = icmp eq i32 %i.k, 3
  %switch.select.i = select i1 %switch.selectcmp.i, i32 1, i32 -1
  %switch.selectcmp5.i = icmp ne i32 %i.k, 1      ; 2 uses
  %switch.select6.i = select i1 %switch.selectcmp5.i, i32 %switch.select.i, i32 0 ; 2 uses
  %i.l = trunc i32 %i.i to i1
  %i.m = load i32, ptr %i.b, align 16
  %i.n = trunc nuw nsw i64 %.05672 to i32         ; 10 uses
  %i.o = lshr i32 %i.m, %i.n
  %i.p = trunc i32 %i.o to i1                     ; 2 uses
  %i.q = load i32, ptr %i.c, align 8
  %i.r = lshr i32 %i.q, %i.n                      ; 8 uses
  %i.s = trunc i32 %i.r to i1                     ; 3 uses
  %i.t = trunc i32 %i.r to i8
  %i.u = and i8 %i.t, 1
  %i.v = load i32, ptr %i.d, align 4              ; 3 uses
  %i.w = lshr i32 %i.v, %i.n
  %i.x = trunc i32 %i.w to i1                     ; 3 uses
  %i.y = and i32 %i.i, 2
  %.not = icmp eq i32 %i.y, 0
  %i.z = lshr i32 %i.i, 8
  %i.aa = and i32 %i.z, 7
  switch i32 %i.aa, label %default.unreachable [
    i32 0, label %is_connected.exit
    i32 1, label %is_connected.exit
    i32 2, label %is_connected.exit
    i32 3, label %is_connected.exit
    i32 4, label %bb.b
    i32 5, label %bb.b
    i32 6, label %bb.c
    i32 7, label %bb.c
  ]

bb.b:                                             ; preds = %extract32.exit66, %extract32.exit66
  br label %is_connected.exit

bb.c:                                             ; preds = %extract32.exit66, %extract32.exit66
  %i.ab = xor i1 %i.s, true
  br label %is_connected.exit

default.unreachable:                              ; preds = %extract32.exit66
  unreachable

is_connected.exit:                                ; preds = %extract32.exit66, %extract32.exit66, %extract32.exit66, %extract32.exit66, %bb.b, %bb.c
  %.0.i = phi i1 [ %i.ab, %bb.c ], [ %i.s, %bb.b ], [ true, %extract32.exit66 ], [ true, %extract32.exit66 ], [ true, %extract32.exit66 ], [ true, %extract32.exit66 ]
  %i.ac = and i1 %.0.i, %i.l
  %cond.fr89 = freeze i1 %i.ac                    ; 6 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %is_connected.exit
  switch i32 %i.k, label %bb.j [
    i32 3, label %.split.a
    i32 1, label %.split.a
  ]

.split.a:                                         ; preds = %bb.d, %bb.d
  %i.ad = shl nuw i32 1, %i.n
  %i.ae = xor i32 %i.ad, -1
  %i.af = and i32 %i.v, %i.ae
  %i.ag = shl nuw i32 %switch.select6.i, %i.n
  %i.ah = or i32 %i.ag, %i.af
  store i32 %i.ah, ptr %i.d, align 4
  %1 = trunc i32 %i.r to i1                       ; 2 uses
  %i.ai = and i32 %i.r, 1                         ; 2 uses
  br i1 %cond.fr89, label %bb.k, label %bb.l

bb.e:                                             ; preds = %is_connected.exit
  %or.cond = select i1 %cond.fr89, i1 %i.p, i1 false
  %i.aj = xor i1 %i.s, %i.x
  %or.cond60 = select i1 %or.cond, i1 %i.aj, i1 false
  br i1 %or.cond60, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ak = load i32, ptr @qemu_loglevel, align 4
  %i.al = and i32 %i.ak, 2048
  %.not68 = icmp eq i32 %i.al, 0
  br i1 %.not68, label %.thread, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.10, i64 noundef %.05672) #5
  %.pre = load i32, ptr %i.h, align 4
  br label %.thread

bb.h:                                             ; preds = %bb.e
  br i1 %i.p, label %.thread, label %bb.i

.thread:                                          ; preds = %bb.g, %bb.f, %bb.h
  %i.am = phi i32 [ %.pre, %bb.g ], [ %i.i, %bb.f ], [ %i.i, %bb.h ]
  %i.an = lshr i32 %i.am, 16
  %i.ao = and i32 %i.an, 3                        ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 2
  %i.aq = select i1 %i.ap, i1 %i.x, i1 false
  %i.ar = icmp ne i32 %i.ao, 3
  %.not70 = select i1 %i.ar, i1 true, i1 %i.x
  %i.as = xor i1 %i.aq, true
  %i.at = select i1 %.not70, i1 %i.as, i1 false
  %spec.select62 = select i1 %i.at, i8 %.073, i8 1 ; 2 uses
  %2 = trunc i32 %i.r to i1                       ; 2 uses
  %i.au = and i32 %i.r, 1                         ; 2 uses
  br i1 %cond.fr89, label %bb.k, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.av = icmp slt i32 %switch.select6.i, 0       ; 2 uses
  %or.cond3 = or i1 %i.av, %cond.fr89
  %3 = zext i1 %switch.selectcmp5.i to i8
  %.052 = select i1 %or.cond3, i8 %i.u, i8 %3     ; 5 uses
  %4 = xor i1 %i.av, true
  %i.aw = or i1 %cond.fr89, %4
  br i1 %i.aw, label %.thread74, label %.thread83

.thread83:                                        ; preds = %bb.i
  %5 = trunc nuw i8 %.052 to i1
  %6 = zext nneg i8 %.052 to i32
  br label %bb.l

.thread74:                                        ; preds = %bb.i
  %i.ax = zext nneg i8 %.052 to i32
  %i.ay = shl nuw i32 1, %i.n
  %i.az = xor i32 %i.ay, -1
  %i.ba = and i32 %i.v, %i.az
  %i.bb = shl nuw i32 %i.ax, %i.n
  %i.bc = or i32 %i.ba, %i.bb
  store i32 %i.bc, ptr %i.d, align 4
  %i.bd = trunc nuw i8 %.052 to i1
  %7 = zext nneg i8 %.052 to i32
  br label %bb.k

bb.j:                                             ; preds = %bb.d
  %8 = trunc i32 %i.r to i1                       ; 2 uses
  %i.be = and i32 %i.r, 1                         ; 2 uses
  br i1 %cond.fr89, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.split.a, %.thread, %.thread74, %bb.j
  %i.bf = phi i32 [ %7, %.thread74 ], [ %i.be, %bb.j ], [ %i.au, %.thread ], [ %i.ai, %.split.a ] ; 2 uses
  %i.bg = phi i1 [ %i.bd, %.thread74 ], [ %8, %bb.j ], [ %2, %.thread ], [ %1, %.split.a ]
  %.382 = phi i8 [ %.073, %.thread74 ], [ %.073, %bb.j ], [ %spec.select62, %.thread ], [ %.073, %.split.a ]
  br label %bb.l

bb.l:                                             ; preds = %.split.a, %.thread, %.thread83, %bb.j, %bb.k
  %i.bh = phi i32 [ %i.bf, %bb.k ], [ %i.be, %bb.j ], [ %6, %.thread83 ], [ %i.au, %.thread ], [ %i.ai, %.split.a ]
  %i.bi = phi i1 [ %i.bg, %bb.k ], [ %8, %bb.j ], [ %5, %.thread83 ], [ %2, %.thread ], [ %1, %.split.a ]
  %.381 = phi i8 [ %.382, %bb.k ], [ %.073, %bb.j ], [ %.073, %.thread83 ], [ %spec.select62, %.thread ], [ %.073, %.split.a ] ; 2 uses
  %.155.shrunk79 = phi i1 [ true, %bb.k ], [ false, %bb.j ], [ false, %.thread83 ], [ false, %.thread ], [ false, %.split.a ] ; 2 uses
  %i.bj = phi i32 [ %i.bf, %bb.k ], [ -1, %bb.j ], [ -1, %.thread83 ], [ -1, %.thread ], [ -1, %.split.a ] ; 2 uses
  %i.bk = sext i32 %i.bj to i64
  %i.bl = load i32, ptr %i.e, align 4
  %i.bm = load i32, ptr %i.f, align 8
  %i.bn = shl nuw i32 1, %i.n                     ; 3 uses
  %i.bo = and i32 %i.bl, %i.bn
  %i.bp = icmp eq i32 %i.bo, 0
  %.not.i67 = xor i1 %.155.shrunk79, %i.bp
  %i.bq = and i32 %i.bm, %i.bn
  %i.br = icmp eq i32 %i.bq, 0
  %.not22.i = xor i1 %i.br, %i.bi
  %or.cond.i = select i1 %.not.i67, i1 %.not22.i, i1 false
  br i1 %or.cond.i, label %update_output_irq.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %.05672
  %i.bt = load ptr, ptr %i.bs, align 8
  tail call void @qemu_set_irq(ptr noundef %i.bt, i32 noundef %i.bj) #5
  %i.bu = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not.i.i, label %update_output_irq.exit, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  %i.bv = load i16, ptr @_TRACE_NRF51_GPIO_UPDATE_OUTPUT_IRQ_DSTATE, align 2
  %.not2.i.i = icmp eq i16 %i.bv, 0
  br i1 %.not2.i.i, label %update_output_irq.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bw = load i32, ptr @qemu_loglevel, align 4
  %i.bx = and i32 %i.bw, 32768
  %.not3.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not3.i.i, label %update_output_irq.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.14, i64 noundef range(i64 0, 32) %.05672, i64 noundef range(i64 -1, 2) %i.bk) #5
  br label %update_output_irq.exit

update_output_irq.exit:                           ; preds = %bb.l, %bb.m, %bb.n, %bb.o, %bb.p
  %i.by = zext i1 %.155.shrunk79 to i32
  %i.bz = load i32, ptr %i.f, align 8
  %i.ca = xor i32 %i.bn, -1                       ; 2 uses
  %i.cb = and i32 %i.bz, %i.ca
  %i.cc = shl nuw i32 %i.bh, %i.n
  %i.cd = or i32 %i.cb, %i.cc
  store i32 %i.cd, ptr %i.f, align 8
  %i.ce = load i32, ptr %i.e, align 4
  %i.cf = and i32 %i.ce, %i.ca
  %i.cg = shl nuw i32 %i.by, %i.n
  %i.ch = or i32 %i.cf, %i.cg
  store i32 %i.ch, ptr %i.e, align 4
  %i.ci = add nuw nsw i64 %.05672, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.ci, 32
  br i1 %exitcond.not, label %bb.q, label %extract32.exit66, !llvm.loop !8

bb.q:                                             ; preds = %update_output_irq.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 1504
  %i.ck = load ptr, ptr %i.cj, align 16
  %i.cl = zext nneg i8 %.381 to i32
  tail call void @qemu_set_irq(ptr noundef %i.ck, i32 noundef %i.cl) #5
  ret void
}

declare void @qemu_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @device_class_set_legacy_reset(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @nrf51_gpio_reset(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 32, ptr noundef nonnull @__func__.NRF51_GPIO) #5 ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1240
  store i32 0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1244
  store i32 0, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 1112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store <4 x i32> splat (i32 2), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1128
  store <4 x i32> splat (i32 2), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 1144
  store <4 x i32> splat (i32 2), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 1160
  store <4 x i32> splat (i32 2), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1176
  store <4 x i32> splat (i32 2), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 1192
  store <4 x i32> splat (i32 2), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 1208
  store <4 x i32> splat (i32 2), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1224
  store <4 x i32> splat (i32 2), ptr %i.l, align 8
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_0
