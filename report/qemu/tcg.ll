Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/tcg?download=true
inline.NumInlined: 1043
inline.NumDeleted: 195
loop-unroll.NumCompletelyUnrolled: 15
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 32
begin_hunk_0_@tcg_out_cmp_vec:bb.a
  tail call fastcc void @tcg_out_vex_modrm(ptr noundef %0, i32 noundef %i.ak, i32 noundef 21, i32 noundef 21, i32 noundef 21)
  %spec.select.i = select i1 %i.aj, i32 525807, i32 1519
  tail call fastcc void @tcg_out_vex_modrm(ptr noundef %0, i32 noundef %spec.select.i, i32 noundef %3, i32 noundef %3, i32 noundef 21)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %tcg_out_cmp_vec_k1.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @tcg_out_cmpsel_vec(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 256) %1, i32 noundef range(i32 0, 256) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, i32 noundef %8) unnamed_addr #0 {
bb.a:
  %i.a = icmp samesign ult i32 %2, 2
  %i.b = load i32, ptr @cpuinfo, align 4          ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = and i32 %i.b, 14336
  %or.cond42.not = icmp eq i32 %i.c, 14336
  br i1 %or.cond42.not, label %bb.d, label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 6144
  %or.cond43.not = icmp eq i32 %i.d, 6144
  br i1 %or.cond43.not, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c, %bb.b
  %.not.i = icmp eq i32 %6, 0                     ; 3 uses
  %i.e = zext i1 %.not.i to i32
  %spec.select18.i = xor i32 %8, %i.e             ; 2 uses
  switch i32 %spec.select18.i, label %bb.g [
    i32 13, label %bb.e
    i32 12, label %bb.f
  ]

bb.e:                                             ; preds = %bb.d
  %i.f = zext nneg i32 %2 to i64                  ; 2 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr @tcg_out_cmp_vec_k1.testm_insn, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4              ; 2 uses
  %i.i = icmp eq i32 %1, 5
  %i.j = or i32 %i.h, 524288
  %spec.select.i.i.i = select i1 %i.i, i32 %i.j, i32 %i.h
  tail call fastcc void @tcg_out_vex_modrm(ptr noundef %0, i32 noundef %spec.select.i.i.i, i32 noundef 1, i32 noundef %4, i32 noundef %5)
  br label %tcg_out_cmp_vec_k1.exit.i

bb.f:                                             ; preds = %bb.d
  %i.k = zext nneg i32 %2 to i64                  ; 2 uses
  %i.l = getelementptr inbounds nuw [4 x i8], ptr @tcg_out_cmp_vec_k1.testnm_insn, i64 %i.k
  %i.m = load i32, ptr %i.l, align 4              ; 2 uses
  %i.n = icmp eq i32 %1, 5
  %i.o = or i32 %i.m, 524288
  %spec.select.i18.i.i = select i1 %i.n, i32 %i.o, i32 %i.m
  tail call fastcc void @tcg_out_vex_modrm(ptr noundef %0, i32 noundef %spec.select.i18.i.i, i32 noundef 1, i32 noundef %4, i32 noundef %5)
  br label %tcg_out_cmp_vec_k1.exit.i

bb.g:                                             ; preds = %bb.d
  %i.p = and i32 %8, 10
  %i.q = icmp eq i32 %i.p, 10
  %i.r = zext i1 %i.q to i64
  %i.s = getelementptr inbounds nuw [16 x i8], ptr @tcg_out_cmp_vec_k1.cmpm_insn, i64 %i.r
  %i.t = zext nneg i32 %2 to i64                  ; 2 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.t
  %i.v = load i32, ptr %i.u, align 4              ; 2 uses
  %i.w = icmp eq i32 %1, 5
  %i.x = or i32 %i.v, 524288
  %spec.select.i19.i.i = select i1 %i.w, i32 %i.x, i32 %i.v
  tail call fastcc void @tcg_out_vex_modrm(ptr noundef %0, i32 noundef %spec.select.i19.i.i, i32 noundef 1, i32 noundef %4, i32 noundef %5)
  %i.y = zext i32 %spec.select18.i to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr @tcg_out_cmp_vec_k1.cond_ext, i64 %i.y
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = trunc i32 %i.aa to i8
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 1
  store ptr %i.ae, ptr %i.ac, align 8
  store i8 %i.ab, ptr %i.ad, align 1
  br label %tcg_out_cmp_vec_k1.exit.i

tcg_out_cmp_vec_k1.exit.i:                        ; preds = %bb.g, %bb.f, %bb.e
  %.pre-phi.i = phi i64 [ %i.f, %bb.e ], [ %i.k, %bb.f ], [ %i.t, %bb.g ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr @tcg_out_cmpsel_vec_k1.vpblendm_insn, i64 %.pre-phi.i
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = icmp eq i32 %1, 5
  %i.ai = or i32 %i.ag, 524288
  %spec.select.i.i = select i1 %i.ah, i32 %i.ai, i32 %i.ag ; 9 uses
  %i.aj = and i32 %spec.select.i.i, 65536
  %.not.i.i.i = icmp eq i32 %i.aj, 0
  br i1 %.not.i.i.i, label %bb.h, label %bb.k

bb.h:                                             ; preds = %tcg_out_cmp_vec_k1.exit.i
  %i.ak = and i32 %spec.select.i.i, 512
  %.not30.i.i.i = icmp eq i32 %i.ak, 0
  br i1 %.not30.i.i.i, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.al = and i32 %spec.select.i.i, 256
  %.not31.i.i.i = icmp eq i32 %i.al, 0
  br i1 %.not31.i.i.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 650, ptr noundef nonnull @__func__.tcg_out_evex_opc, ptr noundef null) #27
  unreachable

bb.k:                                             ; preds = %bb.i, %bb.h, %tcg_out_cmp_vec_k1.exit.i
  %.029.i.i.i = phi i32 [ 134484578, %bb.h ], [ 134484834, %tcg_out_cmp_vec_k1.exit.i ], [ 134484322, %bb.i ]
  %i.am = and i32 %spec.select.i.i, 1024
  %.not32.i.i.i = icmp eq i32 %i.am, 0
  br i1 %.not32.i.i.i, label %bb.l, label %tcg_out_cmpsel_vec_k1.exit

bb.l:                                             ; preds = %bb.k
  %i.an = and i32 %spec.select.i.i, 131072
  %.not33.i.i.i = icmp eq i32 %i.an, 0
  br i1 %.not33.i.i.i, label %bb.m, label %tcg_out_cmpsel_vec_k1.exit

bb.m:                                             ; preds = %bb.l
  %i.ao = and i32 %spec.select.i.i, 262144
  %.not34.i.i.i = icmp eq i32 %i.ao, 0
  %..i.i.i = select i1 %.not34.i.i.i, i32 0, i32 196608
  br label %tcg_out_cmpsel_vec_k1.exit

tcg_out_cmpsel_vec_k1.exit:                       ; preds = %bb.k, %bb.l, %bb.m
  %.0.i.i.i = phi i32 [ 131072, %bb.l ], [ 65536, %bb.k ], [ %..i.i.i, %bb.m ]
  %spec.select.i = select i1 %.not.i, i32 %7, i32 %6 ; 2 uses
  %i.ap = shl i32 %spec.select.i, 10
  %i.aq = and i32 %i.ap, 8192
  %i.ar = shl i32 %3, 12
  %i.as = and i32 %i.ar, 32768
  %i.at = shl i32 %7, 19
  %i.au = and i32 %i.at, 7864320
  %i.av = shl i32 %spec.select.i.i, 11
  %i.aw = and i32 %i.av, 8388608
  %i.ax = shl i32 %spec.select.i.i, 10
  %i.ay = and i32 %i.ax, 536870912
  %i.az = select i1 %.not.i, i32 -2147483648, i32 0
  %i.ba = or disjoint i32 %i.az, %i.as
  %i.bb = or disjoint i32 %i.ba, %i.au
  %.masked.i.i.i = or disjoint i32 %i.bb, %i.aq
  %i.bc = or disjoint i32 %.masked.i.i.i, %i.aw
  %i.bd = or disjoint i32 %i.bc, %i.ay
  %.masked.i.i = or i32 %i.bd, %.029.i.i.i
  %i.be = or i32 %.masked.i.i, %.0.i.i.i
  %i.bf = xor i32 %i.be, 24698880
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  %i.bh = load ptr, ptr %i.bg, align 8            ; 3 uses
  store i32 %i.bf, ptr %i.bh, align 1
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 4
  %i.bj = trunc i32 %spec.select.i.i to i8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 5
  store ptr %i.bk, ptr %i.bg, align 8
  store i8 %i.bj, ptr %i.bi, align 1
  %i.bl = shl i32 %3, 3
  %i.bm = and i32 %spec.select.i, 7
  %i.bn = or disjoint i32 %i.bm, %i.bl
  %i.bo = trunc i32 %i.bn to i8
  %i.bp = or i8 %i.bo, -64
  %i.bq = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  store ptr %i.br, ptr %i.bg, align 8
  store i8 %i.bp, ptr %i.bq, align 1
  br label %bb.s

bb.n:                                             ; preds = %bb.c, %bb.b
  %i.bs = tail call fastcc zeroext i1 @tcg_out_cmp_vec_noinv(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef 21, i32 noundef %4, i32 noundef %5, i32 noundef %8) ; 3 uses
  %.not41 = icmp eq i32 %6, 0
  br i1 %.not41, label %bb.o, label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.bt = icmp eq i32 %1, 5                       ; 2 uses
  br i1 %i.bs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %spec.select.i45 = select i1 %i.bt, i32 525787, i32 1499
  tail call fastcc void @tcg_out_vex_modrm(ptr noundef %0, i32 noundef %spec.select.i45, i32 noundef %3, i32 noundef 21, i32 noundef %7)
  br label %bb.s

bb.q:                                             ; preds = %bb.o
  %spec.select.i46 = select i1 %i.bt, i32 525791, i32 1503
  tail call fastcc void @tcg_out_vex_modrm(ptr noundef %0, i32 noundef %spec.select.i46, i32 noundef %3, i32 noundef 21, i32 noundef %7)
  br label %bb.s

bb.r:                                             ; preds = %bb.n
  %spec.select = select i1 %i.bs, i32 %6, i32 %7
  %spec.select44 = select i1 %i.bs, i32 %7, i32 %6
  %i.bu = icmp eq i32 %1, 5
  %spec.select.i47 = select i1 %i.bu, i32 590924, i32 66636
  tail call fastcc void @tcg_out_vex_modrm(ptr noundef %0, i32 noundef %spec.select.i47, i32 noundef %3, i32 noundef %spec.select, i32 noundef %spec.select44)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 8            ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 1
  store ptr %i.bx, ptr %i.bv, align 8
  store i8 80, ptr %i.bw, align 1
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %tcg_out_cmpsel_vec_k1.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc zeroext i1 @tcg_out_cmp_vec_noinv(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 256) %1, i32 noundef range(i32 0, 256) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %6 to i64                       ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr @tcg_out_cmp_vec_noinv.cond_fixup, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1
  %i.d = zext i8 %i.c to i32                      ; 4 uses
  %i.e = and i32 %i.d, 16
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.54, i32 noundef 3342, ptr noundef nonnull @__PRETTY_FUNCTION__.tcg_out_cmp_vec_noinv) #27
  unreachable

bb.c:                                             ; preds = %bb.a
  %7 = lshr i64 18056, %i.a                       ; 2 uses
  %i.f = and i32 %i.d, 2
  %.not35 = icmp eq i32 %i.f, 0                   ; 3 uses
  %.033 = select i1 %.not35, i32 %5, i32 %4       ; 3 uses
  %.0 = select i1 %.not35, i32 %4, i32 %5         ; 2 uses
  %i.g = and i32 %i.d, 12
  %.not36 = icmp eq i32 %i.g, 0
  br i1 %.not36, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = icmp samesign ult i32 %2, 3
  br i1 %i.h, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.54, i32 noundef 3359, ptr noundef nonnull @__PRETTY_FUNCTION__.tcg_out_cmp_vec_noinv) #27
  unreachable

.thread:                                          ; preds = %bb.d
  %i.i = and i32 %i.d, 4
  %.not37 = icmp eq i32 %i.i, 0
  %i.j = zext nneg i32 %2 to i64                  ; 2 uses
  %.in.v = select i1 %.not37, ptr @umax_insn, ptr @umin_insn
  %.in = getelementptr inbounds nuw [4 x i8], ptr %.in.v, i64 %i.j
  %i.k = load i32, ptr %.in, align 4              ; 2 uses
  %i.l = icmp eq i32 %1, 5
  %i.m = or i32 %i.k, 524288
  %spec.select.i = select i1 %i.l, i32 %i.m, i32 %i.k
  tail call fastcc void @tcg_out_vex_modrm(ptr noundef %0, i32 noundef %spec.select.i, i32 noundef 21, i32 noundef %.0, i32 noundef %.033)
  br label %bb.g

bb.f:                                             ; preds = %bb.c
  %8 = trunc nuw nsw i64 %7 to i32
  %9 = and i32 %8, 1
  %i.n = shl nuw i32 %6, 1
  %i.o = and i32 %i.n, 4
  %i.p = select i1 %.not35, i32 0, i32 %i.o
  %i.q = or disjoint i32 %i.p, %9
  %.1 = xor i32 %i.q, %6
  switch i32 %.1, label %bb.i [
    i32 8, label %._crit_edge
    i32 6, label %bb.h
  ]

._crit_edge:                                      ; preds = %bb.f
  %.pre = zext nneg i32 %2 to i64
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %.thread
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.j, %.thread ]
  %.13442 = phi i32 [ %.033, %._crit_edge ], [ 21, %.thread ]
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @tcg_out_cmp_vec_noinv.cmpeq_insn, i64 %.pre-phi
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.s = zext nneg i32 %2 to i64
  %i.t = getelementptr inbounds nuw [4 x i8], ptr @tcg_out_cmp_vec_noinv.cmpgt_insn, i64 %i.s
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.54, i32 noundef 3374, ptr noundef nonnull @__func__.tcg_out_cmp_vec_noinv, ptr noundef null) #27
  unreachable

bb.j:                                             ; preds = %bb.h, %bb.g
  %.sink46.in = phi ptr [ %i.t, %bb.h ], [ %i.r, %bb.g ]
  %.033.sink = phi i32 [ %.033, %bb.h ], [ %.13442, %bb.g ]
  %.sink46 = load i32, ptr %.sink46.in, align 4   ; 2 uses
  %i.u = icmp eq i32 %1, 5
  %i.v = or i32 %.sink46, 524288
  %spec.select.i39 = select i1 %i.u, i32 %i.v, i32 %.sink46
  tail call fastcc void @tcg_out_vex_modrm(ptr noundef %0, i32 noundef %spec.select.i39, i32 noundef %3, i32 noundef %.0, i32 noundef %.033.sink)
  %i.w = trunc i64 %7 to i1
  ret i1 %i.w
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @tcg_out_helper_load_slots(ptr nofree noundef captures(none) %0, i32 noundef range(i32 1, 5) %1, ptr nofree noundef nonnull captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = zext nneg i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.c
  %indvars.iv9 = phi i32 [ %1, %bb.a ], [ %indvars.iv.next10, %bb.c ] ; 3 uses
  %indvars.iv = phi i64 [ %i.a, %bb.a ], [ %i.b, %bb.c ] ; 2 uses
  %i.b = add nsw i64 %indvars.iv, -1              ; 3 uses
  %i.c = getelementptr inbounds nuw [20 x i8], ptr %2, i64 %i.b ; 3 uses
  %i.d = load i32, ptr %i.c, align 4              ; 3 uses
  %i.e = icmp ugt i32 %i.d, 5
  br i1 %i.e, label %bb.c, label %.critedge.preheader

.critedge.preheader:                              ; preds = %bb.b
  %umax = tail call i32 @llvm.umax.i32(i32 %indvars.iv9, i32 1)
  %wide.trip.count = zext i32 %umax to i64        ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %i.f = icmp ult i32 %indvars.iv9, 4
  br i1 %i.f, label %.critedge.epil.preheader, label %.critedge.preheader.new

.critedge.preheader.new:                          ; preds = %.critedge.preheader
  %unroll_iter = and i64 %wide.trip.count, 4294967292
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load i32, ptr %i.g, align 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.j = load i32, ptr %i.i, align 4
  %i.k = icmp slt i32 %i.d, 22
  tail call void @llvm.assume(i1 %i.k)
  %i.l = shl i32 %i.d, 3
  %i.m = add i32 %i.l, -48
  %i.n = zext nneg i32 %i.m to i64
  tail call void @tcg_out_st(ptr noundef %0, i32 noundef %i.h, i32 noundef %i.j, i32 noundef 4, i64 noundef %i.n)
  %.not.wide = icmp eq i64 %i.b, 0
  %indvars.iv.next10 = add nsw i32 %indvars.iv9, -1
  br i1 %.not.wide, label %tcg_out_movext3.exit, label %bb.b

.critedge:                                        ; preds = %.critedge, %.critedge.preheader.new
  %indvars.iv6 = phi i64 [ 0, %.critedge.preheader.new ], [ %indvars.iv.next7.3, %.critedge ] ; 5 uses
  %niter = phi i64 [ 0, %.critedge.preheader.new ], [ %niter.next.3, %.critedge ]
  %i.o = getelementptr inbounds nuw [20 x i8], ptr %2, i64 %indvars.iv6 ; 2 uses
  %i.p = load i32, ptr %i.o, align 4
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr @tcg_target_call_iarg_regs, i64 %i.q
  %i.s = load i32, ptr %i.r, align 4
  store i32 %i.s, ptr %i.o, align 4
  %i.t = getelementptr inbounds nuw [20 x i8], ptr %2, i64 %indvars.iv6
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 20 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4
  %i.w = zext i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [4 x i8], ptr @tcg_target_call_iarg_regs, i64 %i.w
  %i.y = load i32, ptr %i.x, align 4
  store i32 %i.y, ptr %i.u, align 4
  %i.z = getelementptr inbounds nuw [20 x i8], ptr %2, i64 %indvars.iv6
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = zext i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [4 x i8], ptr @tcg_target_call_iarg_regs, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 4
  store i32 %i.ae, ptr %i.aa, align 4
  %i.af = getelementptr inbounds nuw [20 x i8], ptr %2, i64 %indvars.iv6
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 60 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr @tcg_target_call_iarg_regs, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 4
  store i32 %i.ak, ptr %i.ag, align 4
  %indvars.iv.next7.3 = add nuw nsw i64 %indvars.iv6, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.unr-lcssa, label %.critedge, !llvm.loop !107

.unr-lcssa:                                       ; preds = %.critedge
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.epilog-lcssa, label %.critedge.epil.preheader

.critedge.epil.preheader:                         ; preds = %.unr-lcssa, %.critedge.preheader
  %indvars.iv6.epil.init = phi i64 [ 0, %.critedge.preheader ], [ %indvars.iv.next7.3, %.unr-lcssa ]
  %lcmp.mod24 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod24)
  br label %.critedge.epil

.critedge.epil:                                   ; preds = %.critedge.epil, %.critedge.epil.preheader
  %indvars.iv6.epil = phi i64 [ %indvars.iv6.epil.init, %.critedge.epil.preheader ], [ %indvars.iv.next7.epil, %.critedge.epil ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.critedge.epil.preheader ], [ %epil.iter.next, %.critedge.epil ]
  %i.al = getelementptr inbounds nuw [20 x i8], ptr %2, i64 %indvars.iv6.epil ; 2 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = zext i32 %i.am to i64
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr @tcg_target_call_iarg_regs, i64 %i.an
  %i.ap = load i32, ptr %i.ao, align 4
  store i32 %i.ap, ptr %i.al, align 4
  %indvars.iv.next7.epil = add nuw nsw i64 %indvars.iv6.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.epilog-lcssa, label %.critedge.epil, !llvm.loop !108

.epilog-lcssa:                                    ; preds = %.critedge.epil, %.unr-lcssa
  %i.aq = trunc nuw nsw i64 %indvars.iv to i32
  switch i32 %i.aq, label %bb.q [
    i32 1, label %bb.p
    i32 3, label %bb.d
    i32 2, label %bb.o
  ]

bb.d:                                             ; preds = %.epilog-lcssa
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 8 uses
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 20 ; 8 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.au = load i32, ptr %i.at, align 4            ; 5 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.aw = load i32, ptr %i.av, align 4            ; 7 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.ay = load i32, ptr %i.ax, align 4            ; 5 uses
  %i.az = load i32, ptr %2, align 4               ; 2 uses
  %.not.i = icmp eq i32 %i.az, %i.aw              ; 2 uses
  %.not133.i = icmp eq i32 %i.az, %i.ay           ; 2 uses
  %or.cond.i = select i1 %.not.i, i1 true, i1 %.not133.i
  br i1 %or.cond.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @tcg_out_movext1_new_src(ptr noundef %0, ptr noundef nonnull readonly %2, i32 noundef %i.au)
  tail call fastcc void @tcg_out_movext2(ptr noundef %0, ptr noundef nonnull readonly %i.as, ptr noundef nonnull readonly %i.ar)
  br label %tcg_out_movext3.exit

bb.f:                                             ; preds = %bb.d
  %i.ba = load i32, ptr %i.as, align 4            ; 2 uses
  %.not134.i = icmp eq i32 %i.ba, %i.au           ; 2 uses
  %.not135.i = icmp eq i32 %i.ba, %i.ay           ; 2 uses
  %or.cond138.i = select i1 %.not134.i, i1 true, i1 %.not135.i
  br i1 %or.cond138.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @tcg_out_movext1_new_src(ptr noundef %0, ptr noundef nonnull readonly %i.as, i32 noundef %i.aw)
  tail call fastcc void @tcg_out_movext2(ptr noundef %0, ptr noundef nonnull readonly %2, ptr noundef nonnull readonly %i.ar)
  br label %tcg_out_movext3.exit

bb.h:                                             ; preds = %bb.f
  %i.bb = load i32, ptr %i.ar, align 4            ; 2 uses
  %.not136.i = icmp eq i32 %i.bb, %i.au           ; 2 uses
  %.not137.i = icmp eq i32 %i.bb, %i.aw           ; 2 uses
  %or.cond139.i = or i1 %.not136.i, %.not137.i
  br i1 %or.cond139.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @tcg_out_movext1_new_src(ptr noundef %0, ptr noundef nonnull readonly %i.ar, i32 noundef %i.ay)
  tail call fastcc void @tcg_out_movext2(ptr noundef %0, ptr noundef nonnull readonly %2, ptr noundef nonnull readonly %i.as)
  br label %tcg_out_movext3.exit

bb.j:                                             ; preds = %bb.h
  %i.bc = select i1 %.not.i, i1 %.not135.i, i1 false
  %brmerge140.demorgan.i = and i1 %i.bc, %.not136.i
  br i1 %brmerge140.demorgan.i, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.be = load i32, ptr %i.bd, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4
  %i.bh = or i32 %i.bg, %i.be
  %i.bi = icmp eq i32 %i.bh, 0
  %i.bj = select i1 %i.bi, i32 135, i32 4231
  tail call fastcc void @tcg_out_modrm(ptr noundef %0, i32 noundef %i.bj, i32 noundef %i.au, i32 noundef %i.aw)
  %i.bk = load i32, ptr %i.bf, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.bm = load i32, ptr %i.bl, align 4
  %i.bn = or i32 %i.bm, %i.bk
  %i.bo = icmp eq i32 %i.bn, 0
  %i.bp = select i1 %i.bo, i32 135, i32 4231
  tail call fastcc void @tcg_out_modrm(ptr noundef %0, i32 noundef %i.bp, i32 noundef %i.aw, i32 noundef %i.ay)
  %i.bq = load i32, ptr %2, align 4
  tail call fastcc void @tcg_out_movext1_new_src(ptr noundef %0, ptr noundef nonnull readonly %2, i32 noundef %i.bq)
  %i.br = load i32, ptr %i.as, align 4
  tail call fastcc void @tcg_out_movext1_new_src(ptr noundef %0, ptr noundef nonnull readonly %i.as, i32 noundef %i.br)
  %i.bs = load i32, ptr %i.ar, align 4
  tail call fastcc void @tcg_out_movext1_new_src(ptr noundef %0, ptr noundef nonnull readonly %i.ar, i32 noundef %i.bs)
  br label %tcg_out_movext3.exit

bb.l:                                             ; preds = %bb.j
  %brmerge141.demorgan.i = and i1 %.not133.i, %.not134.i
  %brmerge142.demorgan.i = and i1 %brmerge141.demorgan.i, %.not137.i
  br i1 %brmerge142.demorgan.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.bw = load i32, ptr %i.bv, align 4
  %i.bx = or i32 %i.bw, %i.bu
  %i.by = icmp eq i32 %i.bx, 0
  %i.bz = select i1 %i.by, i32 135, i32 4231
  tail call fastcc void @tcg_out_modrm(ptr noundef %0, i32 noundef %i.bz, i32 noundef %i.aw, i32 noundef %i.ay)
  %i.ca = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.cb = load i32, ptr %i.ca, align 4
end_hunk_0
