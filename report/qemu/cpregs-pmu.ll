Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cpregs-pmu?download=true
inline.NumInlined: 166
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@pmu_counter_enabled:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 3016
  br label %bb.j

.critedge94:                                      ; preds = %.critedge.thread, %.critedge
  %i.an = phi i1 [ %i.aa, %.critedge.thread ], [ %i.al, %.critedge ]
  %.not105 = phi i1 [ false, %.critedge.thread ], [ %.not, %.critedge ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.ap = zext nneg i8 %1 to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ao, i64 %i.ap
  br label %bb.j

bb.j:                                             ; preds = %.critedge94, %isar_feature_any_pmuv3p5.exit
  %i.ar = phi i1 [ %i.al, %isar_feature_any_pmuv3p5.exit ], [ %i.an, %.critedge94 ]
  %.not104 = phi i1 [ %.not, %isar_feature_any_pmuv3p5.exit ], [ %.not105, %.critedge94 ]
  %.077.in = phi ptr [ %i.am, %isar_feature_any_pmuv3p5.exit ], [ %i.aq, %.critedge94 ]
  %.077 = load i64, ptr %.077.in, align 8         ; 8 uses
  %i.as = and i64 %.077, 2147483648
  %i.at = icmp ne i64 %i.as, 0                    ; 2 uses
  %i.au = trunc i64 %.val.i to i32
  %i.av = lshr i32 %i.au, 29                      ; 2 uses
  %i.aw = and i32 %i.av, 1                        ; 3 uses
  %i.ax = trunc i32 %i.av to i1                   ; 2 uses
  %i.ay = and i64 %.077, 536870912
  %i.az = icmp ne i64 %i.ay, 0
  %i.ba = select i1 %i.ax, i1 %i.az, i1 false
  %i.bb = and i64 %.077, 268435456
  %i.bc = icmp ne i64 %i.bb, 0
  %i.bd = select i1 %i.ax, i1 %i.bc, i1 false
  %i.be = and i64 %.077, 134217728
  %i.bf = icmp eq i64 %i.be, 0
  %.not88 = select i1 %.not84, i1 true, i1 %i.bf
  %i.bg = and i64 %.val.i, 570425344
  switch i64 %i.bg, label %arm_el_is_aa64.exit.thread107 [
    i64 570425344, label %bb.k
    i64 33554432, label %arm_el_is_aa64.exit.thread
  ]

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.bi = load i64, ptr %i.bh, align 8            ; 3 uses
  %i.bj = and i64 %i.bi, 1024
  %.not.i.i = icmp eq i64 %i.bj, 0
  br i1 %.not.i.i, label %bb.l, label %arm_el_is_aa64.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.bk = and i64 %i.bi, 1
  %.not8.i.i = icmp eq i64 %i.bk, 0
  br i1 %.not8.i.i, label %.split, label %bb.m

bb.m:                                             ; preds = %bb.l
  br i1 %.not84, label %arm_el_is_aa64.exit.thread107, label %.split109

.split109:                                        ; preds = %bb.m
  %i.bl = getelementptr i8, ptr %0, i64 79736
  %.val10.i.i = load i64, ptr %i.bl, align 8
  %i.bm = and i64 %.val10.i.i, 3584
  %.not11.i.i = icmp ne i64 %i.bm, 0
  %.not85 = icmp eq i32 %i.aw, 0
  %or.cond111 = or i1 %.not85, %.not11.i.i
  br i1 %or.cond111, label %arm_el_is_aa64.exit.thread107, label %bb.n

.split:                                           ; preds = %bb.l
  %i.bn = and i64 %i.bi, 262144
  %i.bo = icmp eq i64 %i.bn, 0
  %.not85.old = icmp eq i32 %i.aw, 0
  %or.cond112 = or i1 %.not85.old, %i.bo
  br i1 %or.cond112, label %arm_el_is_aa64.exit.thread107, label %bb.n

arm_el_is_aa64.exit.thread:                       ; preds = %bb.j, %bb.k
  %.not85.old.old = icmp eq i32 %i.aw, 0
  br i1 %.not85.old.old, label %arm_el_is_aa64.exit.thread107, label %bb.n

bb.n:                                             ; preds = %.split, %.split109, %arm_el_is_aa64.exit.thread
  %i.bp = trunc i64 %.077 to i32
  %i.bq = lshr i32 %i.bp, 26
  %i.br = and i32 %i.bq, 1
  br label %arm_el_is_aa64.exit.thread107

arm_el_is_aa64.exit.thread107:                    ; preds = %bb.j, %bb.m, %.split109, %.split, %bb.n, %arm_el_is_aa64.exit.thread
  %i.bs = phi i32 [ 0, %arm_el_is_aa64.exit.thread ], [ 0, %bb.j ], [ %i.br, %bb.n ], [ 0, %.split109 ], [ 0, %.split ], [ 0, %bb.m ]
  switch i32 %.0.i, label %bb.q [
    i32 0, label %bb.o
    i32 1, label %bb.p
  ]

bb.o:                                             ; preds = %arm_el_is_aa64.exit.thread107
  %i.bt = and i64 %.077, 1073741824
  %i.bu = icmp ne i64 %i.bt, 0
  %i.bv = xor i1 %i.bu, %i.bd
  br label %bb.s

bb.p:                                             ; preds = %arm_el_is_aa64.exit.thread107
  %i.bw = xor i1 %i.at, %i.ba
  br label %bb.s

bb.q:                                             ; preds = %arm_el_is_aa64.exit.thread107
  br i1 %i.ar, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bx = zext i1 %i.at to i32
  %i.by = icmp ne i32 %i.bs, %i.bx
  br label %bb.s

bb.s:                                             ; preds = %bb.q, %bb.p, %bb.r, %bb.o
  %.079.in = phi i1 [ %i.bv, %bb.o ], [ %i.bw, %bb.p ], [ %i.by, %bb.r ], [ %.not88, %bb.q ]
  br i1 %i.z, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bz = trunc i64 %.077 to i16
  %i.ca = icmp ugt i16 %i.bz, 60
  br i1 %i.ca, label %event_supported.exit.thread, label %event_supported.exit

event_supported.exit:                             ; preds = %bb.t
  %i.cb = and i64 %.077, 63
  %i.cc = getelementptr inbounds nuw [2 x i8], ptr @supported_event_map, i64 %i.cb
  %i.cd = load i16, ptr %i.cc, align 2
  %.not113 = icmp eq i16 %i.cd, -1
  br i1 %.not113, label %event_supported.exit.thread, label %bb.u

bb.u:                                             ; preds = %event_supported.exit, %bb.s
  %i.ce = xor i1 %.079.in, true
  %i.cf = select i1 %.not104, i1 %i.ce, i1 false
  br label %event_supported.exit.thread

event_supported.exit.thread:                      ; preds = %bb.t, %arm_current_el.exit, %event_supported.exit, %bb.u
  %.1 = phi i1 [ %i.cf, %bb.u ], [ false, %event_supported.exit ], [ false, %arm_current_el.exit ], [ false, %bb.t ]
  ret i1 %.1
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @pmcntenset_write(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !9 ; 2 uses
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = extractvalue { i32, i32 } %i.a, 1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw i64 %i.d, 32
  %i.f = zext i32 %i.b to i64
  %i.g = or disjoint i64 %i.e, %i.f               ; 3 uses
  %i.h = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef %0, i8 noundef zeroext 31)
  br i1 %i.h, label %bb.b, label %pmccntr_op_start.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 1240
  %.val.i.i = load i64, ptr %i.i, align 8         ; 2 uses
  %i.j = and i64 %.val.i.i, 72
  %i.k = icmp eq i64 %i.j, 8
  %i.l = lshr i64 %i.g, 6
  %spec.select.i.i = select i1 %i.k, i64 %i.l, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.n = load i64, ptr %i.m, align 8
  %i.o = sub i64 %spec.select.i.i, %i.n           ; 2 uses
  %i.p = and i64 %.val.i.i, 64
  %.not.i.i = icmp eq i64 %i.p, 0
  %i.q = select i1 %.not.i.i, i64 2147483648, i64 -9223372036854775808
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = xor i64 %i.o, -1
  %i.u = and i64 %i.q, %i.s
  %i.v = and i64 %i.u, %i.t
  %.not16.i.i = icmp eq i64 %i.v, 0
  br i1 %.not16.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = or i64 %i.x, 2147483648
  store i64 %i.y, ptr %i.w, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.o, ptr %i.r, align 8
  br label %pmccntr_op_start.exit.i

pmccntr_op_start.exit.i:                          ; preds = %bb.d, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 3 uses
  store i64 %i.g, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %0, i64 79728     ; 2 uses
  %.val5.i = load i64, ptr %i.aa, align 8         ; 2 uses
  %i.ab = and i64 %.val5.i, 63488
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %pmu_op_start.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %pmccntr_op_start.exit.i, %.lr.ph.i
  %.06.i = phi i32 [ %i.ad, %.lr.ph.i ], [ 0, %pmccntr_op_start.exit.i ] ; 2 uses
  %i.ac = trunc nuw nsw i32 %.06.i to i8
  tail call fastcc void @pmevcntr_op_start(ptr noundef nonnull %0, i8 noundef zeroext %i.ac)
  %i.ad = add nuw nsw i32 %.06.i, 1               ; 2 uses
  %.val.i = load i64, ptr %i.aa, align 8          ; 2 uses
  %i.ae = trunc i64 %.val.i to i32
  %i.af = lshr i32 %i.ae, 11
  %i.ag = and i32 %i.af, 31
  %i.ah = icmp samesign ult i32 %i.ad, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %pmu_op_start.exit, !llvm.loop !0

pmu_op_start.exit:                                ; preds = %.lr.ph.i, %pmccntr_op_start.exit.i
  %.val = phi i64 [ %.val5.i, %pmccntr_op_start.exit.i ], [ %.val.i, %.lr.ph.i ] ; 2 uses
  %i.ai = lshr i64 %.val, 11
  %i.aj = and i64 %i.ai, 31
  %notmask.i = shl nsw i64 -1, %i.aj
  %i.ak = xor i64 %notmask.i, -1
  %3 = or disjoint i64 %i.ak, 2147483648
  %i.al = and i64 %3, %2
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = or i64 %i.al, %i.an
  store i64 %i.ao, ptr %i.am, align 8
  %i.ap = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext 31)
  br i1 %i.ap, label %bb.e, label %pmccntr_op_finish.exit.i

bb.e:                                             ; preds = %pmu_op_start.exit
  %i.aq = load i64, ptr %i.z, align 8             ; 2 uses
  %i.ar = getelementptr i8, ptr %0, i64 1240
  %.val.i.i8 = load i64, ptr %i.ar, align 8
  %i.as = and i64 %.val.i.i8, 72
  %i.at = icmp eq i64 %i.as, 8
  %i.au = lshr i64 %i.aq, 6
  %spec.select.i.i9 = select i1 %i.at, i64 %i.au, i64 %i.aq
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = sub i64 %spec.select.i.i9, %i.aw
  store i64 %i.ax, ptr %i.z, align 8
  br label %pmccntr_op_finish.exit.i

pmccntr_op_finish.exit.i:                         ; preds = %bb.e, %pmu_op_start.exit
  %i.ay = trunc i64 %.val to i32
  %i.az = lshr i32 %i.ay, 11
  %i.ba = and i32 %i.az, 31                       ; 2 uses
  %.not.i6 = icmp eq i32 %i.ba, 0
  br i1 %.not.i6, label %pmu_op_finish.exit, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %pmccntr_op_finish.exit.i
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %wide.trip.count.i = zext nneg i32 %i.ba to i64
  br label %bb.f

bb.f:                                             ; preds = %pmevcntr_op_finish.exit.i, %.lr.ph.i7
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i7 ], [ %indvars.iv.next.i, %pmevcntr_op_finish.exit.i ] ; 4 uses
  %i.bd = trunc i64 %indvars.iv.i to i8
  %i.be = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext range(i8 0, 32) %i.bd)
  br i1 %i.be, label %bb.g, label %pmevcntr_op_finish.exit.i

bb.g:                                             ; preds = %bb.f
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %indvars.iv.i
  %i.bg = load i64, ptr %i.bf, align 8
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8
  %i.bj = sub i64 %i.bi, %i.bg
  store i64 %i.bj, ptr %i.bh, align 8
  br label %pmevcntr_op_finish.exit.i

pmevcntr_op_finish.exit.i:                        ; preds = %bb.g, %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %pmu_op_finish.exit, label %bb.f, !llvm.loop !1

pmu_op_finish.exit:                               ; preds = %pmevcntr_op_finish.exit.i, %pmccntr_op_finish.exit.i
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @pmcntenclr_write(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !9 ; 2 uses
  %i.b = extractvalue { i32, i32 } %i.a, 0
  %i.c = extractvalue { i32, i32 } %i.a, 1
  %i.d = zext i32 %i.c to i64
  %i.e = shl nuw i64 %i.d, 32
  %i.f = zext i32 %i.b to i64
  %i.g = or disjoint i64 %i.e, %i.f               ; 3 uses
  %i.h = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef %0, i8 noundef zeroext 31)
  br i1 %i.h, label %bb.b, label %pmccntr_op_start.exit.i

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr i8, ptr %0, i64 1240
  %.val.i.i = load i64, ptr %i.i, align 8         ; 2 uses
  %i.j = and i64 %.val.i.i, 72
  %i.k = icmp eq i64 %i.j, 8
  %i.l = lshr i64 %i.g, 6
  %spec.select.i.i = select i1 %i.k, i64 %i.l, i64 %i.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.n = load i64, ptr %i.m, align 8
  %i.o = sub i64 %spec.select.i.i, %i.n           ; 2 uses
  %i.p = and i64 %.val.i.i, 64
  %.not.i.i = icmp eq i64 %i.p, 0
  %i.q = select i1 %.not.i.i, i64 2147483648, i64 -9223372036854775808
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8
  %i.t = xor i64 %i.o, -1
  %i.u = and i64 %i.q, %i.s
  %i.v = and i64 %i.u, %i.t
  %.not16.i.i = icmp eq i64 %i.v, 0
  br i1 %.not16.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8
  %i.y = or i64 %i.x, 2147483648
  store i64 %i.y, ptr %i.w, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  store i64 %i.o, ptr %i.r, align 8
  br label %pmccntr_op_start.exit.i

pmccntr_op_start.exit.i:                          ; preds = %bb.d, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 3 uses
  store i64 %i.g, ptr %i.z, align 8
  %i.aa = getelementptr i8, ptr %0, i64 79728     ; 2 uses
  %.val5.i = load i64, ptr %i.aa, align 8         ; 2 uses
  %i.ab = and i64 %.val5.i, 63488
  %.not.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i, label %pmu_op_start.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %pmccntr_op_start.exit.i, %.lr.ph.i
  %.06.i = phi i32 [ %i.ad, %.lr.ph.i ], [ 0, %pmccntr_op_start.exit.i ] ; 2 uses
  %i.ac = trunc nuw nsw i32 %.06.i to i8
  tail call fastcc void @pmevcntr_op_start(ptr noundef nonnull %0, i8 noundef zeroext %i.ac)
  %i.ad = add nuw nsw i32 %.06.i, 1               ; 2 uses
  %.val.i = load i64, ptr %i.aa, align 8          ; 2 uses
  %i.ae = trunc i64 %.val.i to i32
  %i.af = lshr i32 %i.ae, 11
  %i.ag = and i32 %i.af, 31
  %i.ah = icmp samesign ult i32 %i.ad, %i.ag
  br i1 %i.ah, label %.lr.ph.i, label %pmu_op_start.exit, !llvm.loop !0

pmu_op_start.exit:                                ; preds = %.lr.ph.i, %pmccntr_op_start.exit.i
  %.val = phi i64 [ %.val5.i, %pmccntr_op_start.exit.i ], [ %.val.i, %.lr.ph.i ] ; 2 uses
  %i.ai = lshr i64 %.val, 11
  %i.aj = and i64 %i.ai, 31
  %notmask.i = shl nsw i64 -1, %i.aj
  %i.ak = xor i64 %notmask.i, -1
  %3 = or disjoint i64 %i.ak, 2147483648
  %i.al = and i64 %3, %2
  %i.am = xor i64 %i.al, -1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = and i64 %i.ao, %i.am
  store i64 %i.ap, ptr %i.an, align 8
  %i.aq = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext 31)
  br i1 %i.aq, label %bb.e, label %pmccntr_op_finish.exit.i

bb.e:                                             ; preds = %pmu_op_start.exit
  %i.ar = load i64, ptr %i.z, align 8             ; 2 uses
  %i.as = getelementptr i8, ptr %0, i64 1240
  %.val.i.i8 = load i64, ptr %i.as, align 8
  %i.at = and i64 %.val.i.i8, 72
  %i.au = icmp eq i64 %i.at, 8
  %i.av = lshr i64 %i.ar, 6
  %spec.select.i.i9 = select i1 %i.au, i64 %i.av, i64 %i.ar
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = sub i64 %spec.select.i.i9, %i.ax
  store i64 %i.ay, ptr %i.z, align 8
  br label %pmccntr_op_finish.exit.i

pmccntr_op_finish.exit.i:                         ; preds = %bb.e, %pmu_op_start.exit
  %i.az = trunc i64 %.val to i32
  %i.ba = lshr i32 %i.az, 11
  %i.bb = and i32 %i.ba, 31                       ; 2 uses
  %.not.i6 = icmp eq i32 %i.bb, 0
  br i1 %.not.i6, label %pmu_op_finish.exit, label %.lr.ph.i7

.lr.ph.i7:                                        ; preds = %pmccntr_op_finish.exit.i
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %wide.trip.count.i = zext nneg i32 %i.bb to i64
  br label %bb.f

bb.f:                                             ; preds = %pmevcntr_op_finish.exit.i, %.lr.ph.i7
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i7 ], [ %indvars.iv.next.i, %pmevcntr_op_finish.exit.i ] ; 4 uses
  %i.be = trunc i64 %indvars.iv.i to i8
  %i.bf = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext range(i8 0, 32) %i.be)
  br i1 %i.bf, label %bb.g, label %pmevcntr_op_finish.exit.i

bb.g:                                             ; preds = %bb.f
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %indvars.iv.i
  %i.bh = load i64, ptr %i.bg, align 8
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %indvars.iv.i ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = sub i64 %i.bj, %i.bh
  store i64 %i.bk, ptr %i.bi, align 8
  br label %pmevcntr_op_finish.exit.i

pmevcntr_op_finish.exit.i:                        ; preds = %bb.g, %bb.f
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %pmu_op_finish.exit, label %bb.f, !llvm.loop !1

pmu_op_finish.exit:                               ; preds = %pmevcntr_op_finish.exit.i, %pmccntr_op_finish.exit.i
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @pmovsr_write(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 79728
  %.val = load i64, ptr %i.a, align 8
  %i.b = lshr i64 %.val, 11
  %i.c = and i64 %i.b, 31
  %notmask.i = shl nsw i64 -1, %i.c
  %i.d = xor i64 %notmask.i, -1
  %3 = or disjoint i64 %i.d, 2147483648
  %i.e = and i64 %3, %2
  %i.f = xor i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, %i.f
  store i64 %i.i, ptr %i.g, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 8) i32 @pmreg_access_swinc(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i1 noundef zeroext %2) #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 78928
  %.val = load i64, ptr %i.a, align 16            ; 2 uses
  %i.b = and i64 %.val, 16777216
  %.not = icmp eq i64 %i.b, 0
  %.pre = and i64 %.val, 128                      ; 2 uses
  br i1 %.not, label %arm_current_el.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i64 %.pre, 0
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr i8, ptr %0, i64 3728
  %.val10.i = load i32, ptr %i.c, align 16
  %.not12.i = icmp eq i32 %.val10.i, 0
  br i1 %.not12.i, label %bb.d, label %arm_current_el.exit.thread.thread14

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3668
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3752
  %i.f = load i32, ptr %i.e, align 8
  %i.g = zext i32 %i.f to i64
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %i.g
  %i.i = load i32, ptr %i.h, align 4
  %i.j = and i32 %i.i, 1
  %i.k = xor i32 %i.j, 1
  br label %arm_current_el.exit

bb.e:                                             ; preds = %bb.b
  %i.l = getelementptr i8, ptr %0, i64 336
  %.val11.i = load i8, ptr %i.l, align 16, !range !11, !noundef !12
  %i.m = trunc nuw i8 %.val11.i to i1
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.o = load i64, ptr %i.n, align 8
  %i.p = trunc i64 %i.o to i32
  %i.q = lshr i32 %i.p, 2
  %i.r = and i32 %i.q, 3
  br label %arm_current_el.exit

bb.g:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.t = load i32, ptr %i.s, align 8
  %i.u = and i32 %i.t, 31
  %cond = icmp eq i32 %i.u, 16
  br i1 %cond, label %arm_current_el.exit.thread9, label %arm_current_el.exit.thread.thread

arm_current_el.exit:                              ; preds = %bb.d, %bb.f
  %.0.i = phi i32 [ %i.k, %bb.d ], [ %i.r, %bb.f ]
  %i.v = icmp eq i32 %.0.i, 0
  br i1 %i.v, label %arm_current_el.exit.thread9, label %arm_current_el.exit.thread

arm_current_el.exit.thread9:                      ; preds = %bb.g, %arm_current_el.exit
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.x = load i64, ptr %i.w, align 16
  %i.y = and i64 %i.x, 2
  %i.z = icmp eq i64 %i.y, 0
  %or.cond = or i1 %2, %i.z
  br i1 %or.cond, label %arm_current_el.exit.thread, label %pmreg_access.exit

arm_current_el.exit.thread:                       ; preds = %bb.a, %arm_current_el.exit.thread9, %arm_current_el.exit
  %.not.i.i.i = icmp eq i64 %.pre, 0
  br i1 %.not.i.i.i, label %arm_current_el.exit.thread.thread, label %arm_current_el.exit.thread.thread14

arm_current_el.exit.thread.thread14:              ; preds = %bb.c, %arm_current_el.exit.thread
  %i.aa = getelementptr i8, ptr %0, i64 3728
  %.val10.i.i.i = load i32, ptr %i.aa, align 16
  %.not12.i.i.i = icmp eq i32 %.val10.i.i.i, 0
  br i1 %.not12.i.i.i, label %bb.h, label %.thread21.i.i

bb.h:                                             ; preds = %arm_current_el.exit.thread.thread14
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3668
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3752
  %i.ad = load i32, ptr %i.ac, align 8
  %i.ae = zext i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = and i32 %i.ag, 1
  %i.ai = xor i32 %i.ah, 1
  br label %arm_current_el.exit.i.i

arm_current_el.exit.thread.thread:                ; preds = %bb.g, %arm_current_el.exit.thread
  %i.aj = getelementptr i8, ptr %0, i64 336
  %.val11.i.i.i = load i8, ptr %i.aj, align 16, !range !11, !noundef !12
  %i.ak = trunc nuw i8 %.val11.i.i.i to i1
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %arm_current_el.exit.thread.thread
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.am = load i64, ptr %i.al, align 8
  %i.an = trunc i64 %i.am to i32
  %i.ao = lshr i32 %i.an, 2
  %i.ap = and i32 %i.ao, 3
  br label %arm_current_el.exit.i.i

bb.j:                                             ; preds = %arm_current_el.exit.thread.thread
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.ar = load i32, ptr %i.aq, align 8
  %i.as = and i32 %i.ar, 31
  switch i32 %i.as, label %.thread21.i.i [
    i32 16, label %arm_current_el.exit.thread15.i.i
    i32 22, label %arm_current_el.exit.thread.thread.thread25.i.i
  ]

arm_current_el.exit.i.i:                          ; preds = %bb.i, %bb.h
  %.0.i.i.i = phi i32 [ %i.ai, %bb.h ], [ %i.ap, %bb.i ] ; 2 uses
  %i.at = icmp eq i32 %.0.i.i.i, 0
  br i1 %i.at, label %arm_current_el.exit.thread15.i.i, label %arm_current_el.exit.thread.thread.i.i

arm_current_el.exit.thread15.i.i:                 ; preds = %arm_current_el.exit.i.i, %bb.j
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1264
  %i.av = load i64, ptr %i.au, align 16
  %i.aw = and i64 %i.av, 1
  %.not.i.i = icmp eq i64 %i.aw, 0
  br i1 %.not.i.i, label %pmreg_access.exit, label %.thread21.i.i

arm_current_el.exit.thread.thread.i.i:            ; preds = %arm_current_el.exit.i.i
  %i.ax = icmp samesign ult i32 %.0.i.i.i, 3
  br i1 %i.ax, label %.thread21.i.i, label %arm_current_el.exit.thread.thread.thread25.i.i

.thread21.i.i:                                    ; preds = %arm_current_el.exit.thread.thread.i.i, %arm_current_el.exit.thread15.i.i, %bb.j, %arm_current_el.exit.thread.thread14
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = and i64 %i.az, 64
  %.not12.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not12.i.i, label %arm_current_el.exit.thread.thread.thread25.i.i, label %pmreg_access.exit

arm_current_el.exit.thread.thread.thread25.i.i:   ; preds = %.thread21.i.i, %arm_current_el.exit.thread.thread.i.i, %bb.j
  br label %pmreg_access.exit

pmreg_access.exit:                                ; preds = %arm_current_el.exit.thread.thread.thread25.i.i, %.thread21.i.i, %arm_current_el.exit.thread15.i.i, %arm_current_el.exit.thread9
  %.0 = phi i32 [ 0, %arm_current_el.exit.thread9 ], [ 5, %arm_current_el.exit.thread15.i.i ], [ 0, %arm_current_el.exit.thread.thread.thread25.i.i ], [ 7, %.thread21.i.i ]
  ret i32 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @pmswinc_write(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 79728      ; 2 uses
  %.val34 = load i64, ptr %i.a, align 8
  %i.b = and i64 %.val34, 63488
  %.not36 = icmp eq i64 %i.b, 0
  br i1 %.not36, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.e = getelementptr i8, ptr %0, i64 79776
  %i.f = getelementptr i8, ptr %0, i64 79896
  %i.g = getelementptr i8, ptr %0, i64 78928
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 2240
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1240
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2520
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %pmevcntr_op_finish.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %pmevcntr_op_finish.exit ] ; 7 uses
  %i.l = trunc nuw nsw i64 %indvars.iv to i32
  %i.m = shl nuw nsw i32 1, %i.l
  %i.n = zext nneg i32 %i.m to i64                ; 2 uses
  %i.o = and i64 %2, %i.n
  %.not = icmp eq i64 %i.o, 0
  br i1 %.not, label %pmevcntr_op_finish.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = trunc nuw nsw i64 %indvars.iv to i8      ; 3 uses
  %i.q = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext %i.p)
  br i1 %i.q, label %bb.d, label %pmevcntr_op_finish.exit

bb.d:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  %i.s = load i64, ptr %i.r, align 8
  %i.t = and i64 %i.s, 65535
  %i.u = icmp eq i64 %i.t, 0
  br i1 %i.u, label %bb.e, label %pmevcntr_op_finish.exit

bb.e:                                             ; preds = %bb.d
  tail call fastcc void @pmevcntr_op_start(ptr noundef nonnull %0, i8 noundef zeroext %i.p)
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.w = load i64, ptr %i.v, align 8              ; 3 uses
  %i.x = add i64 %i.w, 1                          ; 2 uses
  %.val.i.i = load i64, ptr %i.e, align 8
  %i.y = lshr i64 %.val.i.i, 8
  %i.z = and i64 %i.y, 15
  %.off.i.i = add nsw i64 %i.z, -6
  %switch.i.i = icmp ult i64 %.off.i.i, 9
end_hunk_0
begin_hunk_1_@pmxevtyper_write:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.b = load i64, ptr %i.a, align 8
  %i.c = trunc i64 %i.b to i8
  %i.d = and i8 %i.c, 31
  tail call fastcc void @pmevtyper_write(ptr noundef %0, i64 noundef %2, i8 noundef zeroext %i.d)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @pmxevcntr_read(ptr noundef %0, ptr nofree readnone captures(none) %1) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = trunc i64 %i.b to i8
  %i.d = and i8 %i.c, 31                          ; 3 uses
  %i.e = zext nneg i8 %i.d to i32
  %i.f = getelementptr i8, ptr %0, i64 79728
  %.val.i = load i64, ptr %i.f, align 8
  %i.g = trunc i64 %.val.i to i32
  %i.h = lshr i32 %i.g, 11
  %i.i = and i32 %i.h, 31
  %i.j = icmp samesign ugt i32 %i.i, %i.e
  br i1 %i.j, label %bb.b, label %pmevcntr_read.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @pmevcntr_op_start(ptr noundef nonnull %0, i8 noundef zeroext range(i8 0, 32) %i.d)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.l = and i64 %i.b, 31                         ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.l
  %i.n = load i64, ptr %i.m, align 8              ; 3 uses
  %i.o = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext range(i8 0, 32) %i.d)
  br i1 %i.o, label %bb.c, label %pmevcntr_op_finish.exit.i

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.l ; 2 uses
  %i.r = load i64, ptr %i.q, align 8
  %i.s = sub i64 %i.r, %i.n
  store i64 %i.s, ptr %i.q, align 8
  br label %pmevcntr_op_finish.exit.i

pmevcntr_op_finish.exit.i:                        ; preds = %bb.c, %bb.b
  %i.t = getelementptr i8, ptr %0, i64 79776
  %.val.i.i = load i64, ptr %i.t, align 8
  %i.u = lshr i64 %.val.i.i, 8
  %i.v = and i64 %i.u, 15
  %.off.i.i = add nsw i64 %i.v, -6
  %switch.i.i = icmp ult i64 %.off.i.i, 9
  br i1 %switch.i.i, label %isar_feature_any_pmuv3p5.exit.thread.i, label %isar_feature_any_pmuv3p5.exit.i

isar_feature_any_pmuv3p5.exit.i:                  ; preds = %pmevcntr_op_finish.exit.i
  %i.w = getelementptr i8, ptr %0, i64 79896
  %.val2.i.i = load i64, ptr %i.w, align 8
  %i.x = trunc i64 %.val2.i.i to i32
  %i.y = lshr i32 %i.x, 24
  %i.z = and i32 %i.y, 15                         ; 2 uses
  %i.aa = icmp samesign ugt i32 %i.z, 5
  %i.ab = icmp ne i32 %i.z, 15
  %spec.select.i3.i.i = and i1 %i.aa, %i.ab
  %i.ac = and i64 %i.n, 4294967295
  %cond.fr.i = freeze i1 %spec.select.i3.i.i
  br i1 %cond.fr.i, label %isar_feature_any_pmuv3p5.exit.thread.i, label %pmevcntr_read.exit

isar_feature_any_pmuv3p5.exit.thread.i:           ; preds = %isar_feature_any_pmuv3p5.exit.i, %pmevcntr_op_finish.exit.i
  br label %pmevcntr_read.exit

pmevcntr_read.exit:                               ; preds = %bb.a, %isar_feature_any_pmuv3p5.exit.i, %isar_feature_any_pmuv3p5.exit.thread.i
  %.0.i = phi i64 [ 0, %bb.a ], [ %i.n, %isar_feature_any_pmuv3p5.exit.thread.i ], [ %i.ac, %isar_feature_any_pmuv3p5.exit.i ]
  ret i64 %.0.i
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @pmxevcntr_write(ptr noundef %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = trunc i64 %i.b to i8
  %i.d = and i8 %i.c, 31                          ; 3 uses
  %i.e = getelementptr i8, ptr %0, i64 79776
  %.val.i.i = load i64, ptr %i.e, align 8
  %i.f = lshr i64 %.val.i.i, 8
  %i.g = and i64 %i.f, 15
  %.off.i.i = add nsw i64 %i.g, -6
  %switch.i.i = icmp ult i64 %.off.i.i, 9
  br i1 %switch.i.i, label %isar_feature_any_pmuv3p5.exit.thread.i, label %isar_feature_any_pmuv3p5.exit.i

isar_feature_any_pmuv3p5.exit.i:                  ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 79896
  %.val2.i.i = load i64, ptr %i.h, align 8
  %i.i = trunc i64 %.val2.i.i to i32
  %i.j = lshr i32 %i.i, 24
  %i.k = and i32 %i.j, 15                         ; 2 uses
  %i.l = icmp samesign ugt i32 %i.k, 5
  %i.m = icmp ne i32 %i.k, 15
  %spec.select.i3.i.i = and i1 %i.l, %i.m
  %i.n = and i64 %2, 4294967295
  %cond.fr.i = freeze i1 %spec.select.i3.i.i
  br i1 %cond.fr.i, label %isar_feature_any_pmuv3p5.exit.thread.i, label %bb.b

isar_feature_any_pmuv3p5.exit.thread.i:           ; preds = %isar_feature_any_pmuv3p5.exit.i, %bb.a
  br label %bb.b

bb.b:                                             ; preds = %isar_feature_any_pmuv3p5.exit.thread.i, %isar_feature_any_pmuv3p5.exit.i
  %i.o = phi i64 [ %2, %isar_feature_any_pmuv3p5.exit.thread.i ], [ %i.n, %isar_feature_any_pmuv3p5.exit.i ] ; 2 uses
  %i.p = zext nneg i8 %i.d to i32
  %i.q = getelementptr i8, ptr %0, i64 79728
  %.val.i = load i64, ptr %i.q, align 8
  %i.r = trunc i64 %.val.i to i32
  %i.s = lshr i32 %i.r, 11
  %i.t = and i32 %i.s, 31
  %i.u = icmp samesign ugt i32 %i.t, %i.p
  br i1 %i.u, label %bb.c, label %pmevcntr_write.exit

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @pmevcntr_op_start(ptr noundef nonnull %0, i8 noundef zeroext range(i8 0, 32) %i.d)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.w = and i64 %i.b, 31                         ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %i.w
  store i64 %i.o, ptr %i.x, align 8
  %i.y = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext range(i8 0, 32) %i.d)
  br i1 %i.y, label %bb.d, label %pmevcntr_write.exit

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.w ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = sub i64 %i.ab, %i.o
  store i64 %i.ac, ptr %i.aa, align 8
  br label %pmevcntr_write.exit

pmevcntr_write.exit:                              ; preds = %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable
define internal range(i32 0, 8) i32 @access_tpm(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i1 zeroext %2) #5 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 78928
  %.val.i = load i64, ptr %i.a, align 16
  %i.b = and i64 %.val.i, 128
  %.not.i = icmp eq i64 %i.b, 0
  br i1 %.not.i, label %bb.b, label %arm_current_el.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 336
  %.val11.i = load i8, ptr %i.c, align 16, !range !11, !noundef !12
  %i.d = trunc nuw i8 %.val11.i to i1
  br i1 %i.d, label %arm_current_el.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.f = load i32, ptr %i.e, align 8
  %i.g = and i32 %i.f, 31
  %cond = icmp eq i32 %i.g, 22
  br i1 %cond, label %arm_current_el.exit.thread7, label %arm_current_el.exit.thread

arm_current_el.exit:                              ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.i = load i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 12
  %.not9 = icmp eq i64 %i.j, 12
  br i1 %.not9, label %arm_current_el.exit.thread7, label %arm_current_el.exit.thread

arm_current_el.exit.thread:                       ; preds = %bb.a, %bb.c, %arm_current_el.exit
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 2248
  %i.l = load i64, ptr %i.k, align 8
  %i.m = and i64 %i.l, 64
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %arm_current_el.exit.thread7, label %bb.d

arm_current_el.exit.thread7:                      ; preds = %bb.c, %arm_current_el.exit.thread, %arm_current_el.exit
  br label %bb.d

bb.d:                                             ; preds = %arm_current_el.exit.thread, %arm_current_el.exit.thread7
  %.0 = phi i32 [ 0, %arm_current_el.exit.thread7 ], [ 7, %arm_current_el.exit.thread ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @pmuserenr_write(ptr nofree noundef captures(none) initializes((1264, 1272)) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 78928
  %.val = load i64, ptr %i.a, align 16
  %i.b = and i64 %.val, 16777216
  %.not = icmp eq i64 %i.b, 0
  %. = select i1 %.not, i64 1, i64 15
  %i.c = and i64 %2, %.
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1264
  store i64 %i.c, ptr %i.d, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @pmintenset_write(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 79728
  %.val = load i64, ptr %i.a, align 8
  %i.b = lshr i64 %.val, 11
  %i.c = and i64 %i.b, 31
  %notmask.i = shl nsw i64 -1, %i.c
  %i.d = xor i64 %notmask.i, -1
  %3 = or disjoint i64 %i.d, 2147483648
  %i.e = and i64 %3, %2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = or i64 %i.e, %i.g
  store i64 %i.h, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @pmintenclr_write(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 79728
  %.val = load i64, ptr %i.a, align 8
  %i.b = lshr i64 %.val, 11
  %i.c = and i64 %i.b, 31
  %notmask.i = shl nsw i64 -1, %i.c
  %i.d = xor i64 %notmask.i, -1
  %3 = or disjoint i64 %i.d, 2147483648
  %i.e = and i64 %3, %2
  %i.f = xor i64 %i.e, -1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1280 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, %i.f
  store i64 %i.i, ptr %i.g, align 8
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @pmevtyper_write(ptr noundef %0, i64 noundef %1, i8 noundef zeroext range(i8 0, 32) %2) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq i8 %2, 31
  br i1 %i.a, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { i32, i32 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #12, !srcloc !9 ; 2 uses
  %i.c = extractvalue { i32, i32 } %i.b, 0
  %i.d = extractvalue { i32, i32 } %i.b, 1
  %i.e = zext i32 %i.d to i64
  %i.f = shl nuw i64 %i.e, 32
  %i.g = zext i32 %i.c to i64
  %i.h = or disjoint i64 %i.f, %i.g               ; 5 uses
  %i.i = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef %0, i8 noundef zeroext 31)
  br i1 %i.i, label %bb.c, label %pmccntr_op_start.exit.i

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr i8, ptr %0, i64 1240
  %.val.i.i = load i64, ptr %i.j, align 8         ; 2 uses
  %i.k = and i64 %.val.i.i, 72
  %i.l = icmp eq i64 %i.k, 8
  %i.m = lshr i64 %i.h, 6
  %spec.select.i.i = select i1 %i.l, i64 %i.m, i64 %i.h
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 2264
  %i.o = load i64, ptr %i.n, align 8
  %i.p = sub i64 %spec.select.i.i, %i.o           ; 2 uses
  %i.q = and i64 %.val.i.i, 64
  %.not.i.i = icmp eq i64 %i.q, 0
  %i.r = select i1 %.not.i.i, i64 2147483648, i64 -9223372036854775808
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 2256 ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = xor i64 %i.p, -1
  %i.v = and i64 %i.r, %i.t
  %i.w = and i64 %i.v, %i.u
  %.not16.i.i = icmp eq i64 %i.w, 0
  br i1 %.not16.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8
  %i.z = or i64 %i.y, 2147483648
  store i64 %i.z, ptr %i.x, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i64 %i.p, ptr %i.s, align 8
  br label %pmccntr_op_start.exit.i

pmccntr_op_start.exit.i:                          ; preds = %bb.e, %bb.b
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 2264 ; 2 uses
  store i64 %i.h, ptr %i.aa, align 8
  %i.ab = and i64 %1, 4227858432
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 3016
  store i64 %i.ab, ptr %i.ac, align 8
  %i.ad = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef %0, i8 noundef zeroext 31)
  br i1 %i.ad, label %bb.f, label %pmccfiltr_write.exit

bb.f:                                             ; preds = %pmccntr_op_start.exit.i
  %i.ae = getelementptr i8, ptr %0, i64 1240
  %.val.i3.i = load i64, ptr %i.ae, align 8
  %i.af = and i64 %.val.i3.i, 72
  %i.ag = icmp eq i64 %i.af, 8
  %i.ah = lshr i64 %i.h, 6
  %spec.select.i4.i = select i1 %i.ag, i64 %i.ah, i64 %i.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 2256
  %i.aj = load i64, ptr %i.ai, align 8
  %i.ak = sub i64 %spec.select.i4.i, %i.aj
  store i64 %i.ak, ptr %i.aa, align 8
  br label %pmccfiltr_write.exit

bb.g:                                             ; preds = %bb.a
  %i.al = zext nneg i8 %2 to i32
  %i.am = getelementptr i8, ptr %0, i64 79728
  %.val = load i64, ptr %i.am, align 8
  %i.an = trunc i64 %.val to i32
  %i.ao = lshr i32 %i.an, 11
  %i.ap = and i32 %i.ao, 31
  %i.aq = icmp samesign ugt i32 %i.ap, %i.al
  br i1 %i.aq, label %bb.h, label %pmccfiltr_write.exit

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @pmevcntr_op_start(ptr noundef nonnull %0, i8 noundef zeroext %2)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 2768
  %i.as = zext nneg i8 %2 to i64                  ; 4 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.as ; 2 uses
  %i.au = load i64, ptr %i.at, align 8
  %i.av = xor i64 %i.au, %1
  %i.aw = and i64 %i.av, 65535
  %.not = icmp eq i64 %i.aw, 0
  br i1 %.not, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = trunc i64 %1 to i16
  %i.ay = icmp ugt i16 %i.ax, 60
  br i1 %i.ay, label %event_supported.exit.thread, label %event_supported.exit

event_supported.exit:                             ; preds = %bb.i
  %i.az = and i64 %1, 63
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr @supported_event_map, i64 %i.az
  %i.bb = load i16, ptr %i.ba, align 2            ; 2 uses
  %.not2 = icmp eq i16 %i.bb, -1
  br i1 %.not2, label %event_supported.exit.thread, label %bb.j

bb.j:                                             ; preds = %event_supported.exit
  %i.bc = zext i16 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [32 x i8], ptr @pm_events, i64 %i.bc
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = load ptr, ptr %i.be, align 16
  %i.bg = tail call i64 %i.bf(ptr noundef nonnull %0) #12
  br label %event_supported.exit.thread

event_supported.exit.thread:                      ; preds = %bb.i, %bb.j, %event_supported.exit
  %.0 = phi i64 [ %i.bg, %bb.j ], [ 0, %event_supported.exit ], [ 0, %bb.i ]
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.as
  store i64 %.0, ptr %i.bi, align 8
  br label %bb.k

bb.k:                                             ; preds = %event_supported.exit.thread, %bb.h
  %i.bj = and i64 %1, 4261478399
  store i64 %i.bj, ptr %i.at, align 8
  %i.bk = tail call fastcc zeroext i1 @pmu_counter_enabled(ptr noundef nonnull %0, i8 noundef zeroext range(i8 0, 32) %2)
  br i1 %i.bk, label %bb.l, label %pmccfiltr_write.exit

bb.l:                                             ; preds = %bb.k
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 2272
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bl, i64 %i.as
  %i.bn = load i64, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 2520
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.as ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 8
  %i.br = sub i64 %i.bq, %i.bn
  store i64 %i.br, ptr %i.bp, align 8
  br label %pmccfiltr_write.exit

pmccfiltr_write.exit:                             ; preds = %bb.l, %bb.k, %bb.f, %pmccntr_op_start.exit.i, %bb.g
  ret void
}

declare void @g_free(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @pmovsset_write(ptr nofree noundef captures(none) %0, ptr nofree readnone captures(none) %1, i64 noundef %2) #10 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 79728
  %.val = load i64, ptr %i.a, align 8
  %i.b = lshr i64 %.val, 11
  %i.c = and i64 %i.b, 31
  %notmask.i = shl nsw i64 -1, %i.c
  %i.d = xor i64 %notmask.i, -1
  %3 = or disjoint i64 %i.d, 2147483648
  %i.e = and i64 %3, %2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8
  %i.h = or i64 %i.e, %i.g
  store i64 %i.h, ptr %i.f, align 8
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }

!llvm.module.flags = !{!2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = distinct !{!0, !10}
!1 = distinct !{!1, !10}
!2 = !{i32 7, !"Dwarf Version", i32 5}
!3 = !{i32 2, !"Debug Info Version", i32 3}
!4 = !{i32 8, !"PIC Level", i32 2}
!5 = !{i32 7, !"PIE Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!9 = !{i64 2710016}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{i8 0, i8 2}
!12 = !{}
!13 = distinct !{!13, !10}
!14 = !{!"auto-init"}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10}
end_hunk_1
