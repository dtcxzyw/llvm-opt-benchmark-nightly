Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/ftype-time?download=true
inline.NumInlined: 17
inline.NumDeleted: 7
begin_hunk_0_@time_add:bb.a
  call void @__longjmp_chk(ptr noundef nonnull %4, i32 noundef 1) #18
  unreachable

.preheader.i:                                     ; preds = %bb.e, %.critedge.i.i
  %.pre26.i.i = phi i64 [ %i.y, %.critedge.i.i ], [ %i.n, %bb.e ] ; 3 uses
  %.lcssa.promoted.i.i = phi i32 [ %i.v, %.critedge.i.i ], [ %i.r, %bb.e ] ; 4 uses
  %i.s = icmp sgt i32 %.lcssa.promoted.i.i, 999999999
  br i1 %i.s, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.t = icmp sgt i32 %.lcssa.promoted.i.i, 0
  %i.u = icmp slt i64 %.pre26.i.i, 0
  %or.cond.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond.i, label %.critedge.i.i, label %.critedge2.i.i

.critedge.i.i:                                    ; preds = %bb.g, %.preheader.i
  %i.v = add nsw i32 %.lcssa.promoted.i.i, -1000000000 ; 2 uses
  store i32 %i.v, ptr %i.o, align 8
  %i.w = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.pre26.i.i, i64 1) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %i.y = extractvalue { i64, i1 } %i.w, 0         ; 2 uses
  store i64 %i.y, ptr %i.c, align 8
  br i1 %i.x, label %bb.h, label %.preheader.i, !llvm.loop !2

bb.h:                                             ; preds = %.critedge.i.i
  call void @__longjmp_chk(ptr noundef nonnull %4, i32 noundef 1) #18
  unreachable

.critedge2.i.i:                                   ; preds = %bb.g, %.critedge4.i.i
  %.pre.i.i = phi i64 [ %i.ag, %.critedge4.i.i ], [ %.pre26.i.i, %bb.g ] ; 2 uses
  %i.z = phi i32 [ %i.ad, %.critedge4.i.i ], [ %.lcssa.promoted.i.i, %bb.g ] ; 3 uses
  %i.aa = icmp slt i32 %i.z, -999999999
  br i1 %i.aa, label %.critedge4.i.i, label %bb.i

bb.i:                                             ; preds = %.critedge2.i.i
  %i.ab = icmp slt i32 %i.z, 0
  %i.ac = icmp sgt i64 %.pre.i.i, 0
  %or.cond12.i = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond12.i, label %.critedge4.i.i, label %_nstime_add.exit

.critedge4.i.i:                                   ; preds = %bb.i, %.critedge2.i.i
  %i.ad = add nsw i32 %i.z, 1000000000            ; 2 uses
  store i32 %i.ad, ptr %i.o, align 8
  %i.ae = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.pre.i.i, i64 -1) ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  %i.ag = extractvalue { i64, i1 } %i.ae, 0       ; 2 uses
  store i64 %i.ag, ptr %i.c, align 8
  br i1 %i.af, label %bb.j, label %.critedge2.i.i, !llvm.loop !3

bb.j:                                             ; preds = %.critedge4.i.i
  call void @__longjmp_chk(ptr noundef nonnull %4, i32 noundef 1) #18
  unreachable

_nstime_add.exit:                                 ; preds = %bb.i, %bb.b
  %.0 = phi i32 [ 4, %bb.b ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 5) i32 @time_subtract(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %4 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.a = call i32 @_setjmp(ptr noundef nonnull %4) #17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.19)
  store ptr %i.b, ptr %3, align 8
  br label %_nstime_sub.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.d = getelementptr i8, ptr %1, i64 8
  %i.e = getelementptr i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.d, align 8
  %i.g = getelementptr i8, ptr %1, i64 16
  %i.h = load i32, ptr %i.g, align 8
  %i.i = load i64, ptr %i.e, align 8
  %i.j = getelementptr i8, ptr %2, i64 16
  %i.k = load i32, ptr %i.j, align 8
  %i.l = call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.f, i64 %i.i) ; 2 uses
  %i.m = extractvalue { i64, i1 } %i.l, 1
  %i.n = extractvalue { i64, i1 } %i.l, 0         ; 2 uses
  store i64 %i.n, ptr %i.c, align 8
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @__longjmp_chk(ptr noundef nonnull %4, i32 noundef 1) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr i8, ptr %0, i64 16         ; 3 uses
  %i.p = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.h, i32 %i.k) ; 2 uses
  %i.q = extractvalue { i32, i1 } %i.p, 1
  %i.r = extractvalue { i32, i1 } %i.p, 0         ; 2 uses
  store i32 %i.r, ptr %i.o, align 8
  br i1 %i.q, label %bb.f, label %.preheader.i

bb.f:                                             ; preds = %bb.e
  call void @__longjmp_chk(ptr noundef nonnull %4, i32 noundef 1) #18
  unreachable

.preheader.i:                                     ; preds = %bb.e, %.critedge.i.i
  %.pre26.i.i = phi i64 [ %i.y, %.critedge.i.i ], [ %i.n, %bb.e ] ; 3 uses
  %.lcssa.promoted.i.i = phi i32 [ %i.v, %.critedge.i.i ], [ %i.r, %bb.e ] ; 4 uses
  %i.s = icmp sgt i32 %.lcssa.promoted.i.i, 999999999
  br i1 %i.s, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %.preheader.i
  %i.t = icmp sgt i32 %.lcssa.promoted.i.i, 0
  %i.u = icmp slt i64 %.pre26.i.i, 0
  %or.cond.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %or.cond.i, label %.critedge.i.i, label %.critedge2.i.i

.critedge.i.i:                                    ; preds = %bb.g, %.preheader.i
  %i.v = add nsw i32 %.lcssa.promoted.i.i, -1000000000 ; 2 uses
  store i32 %i.v, ptr %i.o, align 8
  %i.w = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.pre26.i.i, i64 1) ; 2 uses
  %i.x = extractvalue { i64, i1 } %i.w, 1
  %i.y = extractvalue { i64, i1 } %i.w, 0         ; 2 uses
  store i64 %i.y, ptr %i.c, align 8
  br i1 %i.x, label %bb.h, label %.preheader.i, !llvm.loop !2

bb.h:                                             ; preds = %.critedge.i.i
  call void @__longjmp_chk(ptr noundef nonnull %4, i32 noundef 1) #18
  unreachable

.critedge2.i.i:                                   ; preds = %bb.g, %.critedge4.i.i
  %.pre.i.i = phi i64 [ %i.ag, %.critedge4.i.i ], [ %.pre26.i.i, %bb.g ] ; 2 uses
  %i.z = phi i32 [ %i.ad, %.critedge4.i.i ], [ %.lcssa.promoted.i.i, %bb.g ] ; 3 uses
  %i.aa = icmp slt i32 %i.z, -999999999
  br i1 %i.aa, label %.critedge4.i.i, label %bb.i

bb.i:                                             ; preds = %.critedge2.i.i
  %i.ab = icmp slt i32 %i.z, 0
  %i.ac = icmp sgt i64 %.pre.i.i, 0
  %or.cond12.i = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond12.i, label %.critedge4.i.i, label %_nstime_sub.exit

.critedge4.i.i:                                   ; preds = %bb.i, %.critedge2.i.i
  %i.ad = add nsw i32 %i.z, 1000000000            ; 2 uses
  store i32 %i.ad, ptr %i.o, align 8
  %i.ae = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.pre.i.i, i64 -1) ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  %i.ag = extractvalue { i64, i1 } %i.ae, 0       ; 2 uses
  store i64 %i.ag, ptr %i.c, align 8
  br i1 %i.af, label %bb.j, label %.critedge2.i.i, !llvm.loop !3

bb.j:                                             ; preds = %.critedge4.i.i
  call void @__longjmp_chk(ptr noundef nonnull %4, i32 noundef 1) #18
  unreachable

_nstime_sub.exit:                                 ; preds = %bb.i, %bb.b
  %.0 = phi i32 [ 4, %bb.b ], [ 0, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i32 %.0
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 5) i32 @time_multiply(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %4 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.a = call i32 @_setjmp(ptr noundef nonnull %4) #17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.20)
  store ptr %i.b, ptr %3, align 8
  br label %_nstime_mul_int.exit

bb.c:                                             ; preds = %bb.a
  %i.c = call i32 @fvalue_type_ftenum(ptr noundef %2) ; 2 uses
  switch i32 %i.c, label %bb.q [
    i32 19, label %bb.d
    i32 23, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = call i64 @fvalue_get_sinteger64(ptr noundef %2) ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.f = getelementptr i8, ptr %1, i64 16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = sext i32 %i.g to i64
  %i.i = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.h, i64 %i.d) ; 2 uses
  %i.j = extractvalue { i64, i1 } %i.i, 1
  %i.k = extractvalue { i64, i1 } %i.i, 0         ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void @__longjmp_chk(ptr noundef nonnull %4, i32 noundef 1) #18
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 8
  %i.m = load i64, ptr %i.l, align 8
  %i.n = srem i64 %i.k, 1000000000                ; 2 uses
  %i.o = sdiv i64 %i.k, 1000000000
  %i.p = trunc nsw i64 %i.n to i32                ; 3 uses
  %i.q = getelementptr i8, ptr %0, i64 16         ; 3 uses
  store i32 %i.p, ptr %i.q, align 8
  %i.r = call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %i.m, i64 %i.d) ; 2 uses
  %i.s = extractvalue { i64, i1 } %i.r, 1
  %i.t = extractvalue { i64, i1 } %i.r, 0         ; 2 uses
  store i64 %i.t, ptr %i.e, align 8
  br i1 %i.s, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call void @__longjmp_chk(ptr noundef nonnull %4, i32 noundef 1) #18
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.u = add i64 %i.t, %i.o                       ; 3 uses
  %i.v = icmp sgt i64 %i.n, 0
  %i.w = icmp slt i64 %i.u, 0
  %or.cond.i24 = select i1 %i.v, i1 %i.w, i1 false
  br i1 %or.cond.i24, label %.critedge.i.i.preheader, label %.critedge2.i.i.preheader

.critedge.i.i.preheader:                          ; preds = %bb.h
  %i.x = add nsw i32 %i.p, -1000000000            ; 2 uses
  %i.y = add nsw i64 %i.u, 1
  store i32 %i.x, ptr %i.q, align 8
  br label %.critedge2.i.i.preheader

.critedge2.i.i.preheader:                         ; preds = %.critedge.i.i.preheader, %bb.h
  %.sink.i.lcssa23 = phi i64 [ %i.y, %.critedge.i.i.preheader ], [ %i.u, %bb.h ] ; 2 uses
  %.lcssa.promoted.i.i.lcssa = phi i32 [ %i.x, %.critedge.i.i.preheader ], [ %i.p, %bb.h ]
  store i64 %.sink.i.lcssa23, ptr %i.e, align 8
  br label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %.critedge2.i.i.preheader, %.critedge4.i.i
  %.pre.i.i = phi i64 [ %i.ag, %.critedge4.i.i ], [ %.sink.i.lcssa23, %.critedge2.i.i.preheader ] ; 2 uses
  %i.z = phi i32 [ %i.ad, %.critedge4.i.i ], [ %.lcssa.promoted.i.i.lcssa, %.critedge2.i.i.preheader ] ; 3 uses
  %i.aa = icmp slt i32 %i.z, -999999999
  br i1 %i.aa, label %.critedge4.i.i, label %bb.i

bb.i:                                             ; preds = %.critedge2.i.i
  %i.ab = icmp slt i32 %i.z, 0
  %i.ac = icmp sgt i64 %.pre.i.i, 0
  %or.cond12.i = select i1 %i.ab, i1 %i.ac, i1 false
  br i1 %or.cond12.i, label %.critedge4.i.i, label %_nstime_mul_int.exit

.critedge4.i.i:                                   ; preds = %bb.i, %.critedge2.i.i
  %i.ad = add nsw i32 %i.z, 1000000000            ; 2 uses
  store i32 %i.ad, ptr %i.q, align 8
  %i.ae = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.pre.i.i, i64 -1) ; 2 uses
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  %i.ag = extractvalue { i64, i1 } %i.ae, 0       ; 2 uses
  store i64 %i.ag, ptr %i.e, align 8
  br i1 %i.af, label %bb.j, label %.critedge2.i.i, !llvm.loop !3

bb.j:                                             ; preds = %.critedge4.i.i
  call void @__longjmp_chk(ptr noundef nonnull %4, i32 noundef 1) #18
  unreachable

bb.k:                                             ; preds = %bb.c
  %i.ah = call double @fvalue_get_floating(ptr noundef %2)
  %i.ai = getelementptr i8, ptr %0, i64 8         ; 3 uses
  %i.aj = getelementptr i8, ptr %1, i64 8
  %i.ak = load i64, ptr %i.aj, align 8
  %i.al = getelementptr i8, ptr %1, i64 16
  %i.am = load i32, ptr %i.al, align 8
  %i.an = sitofp i64 %i.ak to double
  %i.ao = sitofp i32 %i.am to double
  %i.ap = fdiv nnan double %i.ao, 1.000000e+09
  %i.aq = fadd nnan double %i.ap, %i.an
  %i.ar = fmul double %i.ah, %i.aq
  %i.as = call { double, double } @llvm.modf.f64(double %i.ar) ; 2 uses
  %i.at = extractvalue { double, double } %i.as, 0
  %i.au = extractvalue { double, double } %i.as, 1
  %i.av = fptosi double %i.au to i64              ; 2 uses
  store i64 %i.av, ptr %i.ai, align 8
  %i.aw = fmul double %i.at, 1.000000e+09
  %i.ax = call double @llvm.round.f64(double %i.aw)
  %i.ay = fptosi double %i.ax to i32              ; 2 uses
  %i.az = getelementptr i8, ptr %0, i64 16        ; 3 uses
  store i32 %i.ay, ptr %i.az, align 8
  br label %bb.l

bb.l:                                             ; preds = %.critedge.i.i19, %bb.k
  %.pre26.i.i = phi i64 [ %i.bg, %.critedge.i.i19 ], [ %i.av, %bb.k ] ; 3 uses
  %.lcssa.promoted.i.i14 = phi i32 [ %i.bd, %.critedge.i.i19 ], [ %i.ay, %bb.k ] ; 4 uses
  %i.ba = icmp sgt i32 %.lcssa.promoted.i.i14, 999999999
  br i1 %i.ba, label %.critedge.i.i19, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = icmp sgt i32 %.lcssa.promoted.i.i14, 0
  %i.bc = icmp slt i64 %.pre26.i.i, 0
  %or.cond.i15 = select i1 %i.bb, i1 %i.bc, i1 false
  br i1 %or.cond.i15, label %.critedge.i.i19, label %.critedge2.i.i16

.critedge.i.i19:                                  ; preds = %bb.m, %bb.l
  %i.bd = add nsw i32 %.lcssa.promoted.i.i14, -1000000000 ; 2 uses
  store i32 %i.bd, ptr %i.az, align 8
  %i.be = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.pre26.i.i, i64 1) ; 2 uses
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  %i.bg = extractvalue { i64, i1 } %i.be, 0       ; 2 uses
  store i64 %i.bg, ptr %i.ai, align 8
  br i1 %i.bf, label %bb.n, label %bb.l, !llvm.loop !2

bb.n:                                             ; preds = %.critedge.i.i19
  call void @__longjmp_chk(ptr noundef nonnull %4, i32 noundef 1) #18
  unreachable

.critedge2.i.i16:                                 ; preds = %bb.m, %.critedge4.i.i18
  %.pre.i.i17 = phi i64 [ %i.bo, %.critedge4.i.i18 ], [ %.pre26.i.i, %bb.m ] ; 2 uses
  %i.bh = phi i32 [ %i.bl, %.critedge4.i.i18 ], [ %.lcssa.promoted.i.i14, %bb.m ] ; 3 uses
  %i.bi = icmp slt i32 %i.bh, -999999999
  br i1 %i.bi, label %.critedge4.i.i18, label %bb.o

bb.o:                                             ; preds = %.critedge2.i.i16
  %i.bj = icmp slt i32 %i.bh, 0
  %i.bk = icmp sgt i64 %.pre.i.i17, 0
  %or.cond13.i = select i1 %i.bj, i1 %i.bk, i1 false
  br i1 %or.cond13.i, label %.critedge4.i.i18, label %_nstime_mul_int.exit

.critedge4.i.i18:                                 ; preds = %bb.o, %.critedge2.i.i16
  %i.bl = add nsw i32 %i.bh, 1000000000           ; 2 uses
  store i32 %i.bl, ptr %i.az, align 8
  %i.bm = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.pre.i.i17, i64 -1) ; 2 uses
  %i.bn = extractvalue { i64, i1 } %i.bm, 1
  %i.bo = extractvalue { i64, i1 } %i.bm, 0       ; 2 uses
  store i64 %i.bo, ptr %i.ai, align 8
  br i1 %i.bn, label %bb.p, label %.critedge2.i.i16, !llvm.loop !3

bb.p:                                             ; preds = %.critedge4.i.i18
  call void @__longjmp_chk(ptr noundef nonnull %4, i32 noundef 1) #18
  unreachable

bb.q:                                             ; preds = %bb.c
  %i.bp = call ptr @ftype_pretty_name(i32 noundef %i.c)
  call void (ptr, i32, ptr, i64, ptr, ptr, ...) @ws_log_full(ptr noundef nonnull @.str.15, i32 noundef 6, ptr noundef nonnull @.str.16, i64 noundef 653, ptr noundef nonnull @__func__.time_multiply, ptr noundef nonnull @.str.21, ptr noundef %i.bp)
  br label %_nstime_mul_int.exit

_nstime_mul_int.exit:                             ; preds = %bb.o, %bb.i, %bb.q, %bb.b
  %.1 = phi i32 [ 4, %bb.b ], [ 3, %bb.q ], [ 0, %bb.i ], [ 0, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  ret i32 %.1
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal range(i32 0, 5) i32 @time_divide(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, ptr nofree noundef writeonly captures(none) %3) #0 {
bb.a:
  %4 = alloca [1 x %struct.__jmp_buf_tag], align 16 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.a = call i32 @_setjmp(ptr noundef nonnull %4) #17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.22)
  store ptr %i.b, ptr %3, align 8
  br label %_nstime_mul_float.exit

bb.c:                                             ; preds = %bb.a
  %i.c = call i32 @fvalue_type_ftenum(ptr noundef %2) ; 2 uses
  switch i32 %i.c, label %bb.r [
    i32 19, label %bb.d
    i32 23, label %bb.k
  ]

bb.d:                                             ; preds = %bb.c
  %i.d = call i64 @fvalue_get_sinteger64(ptr noundef %2) ; 2 uses
  %.not25 = icmp eq i64 %i.d, 0
  br i1 %.not25, label %_nstime_mul_float.exit.thread, label %bb.e

_nstime_mul_float.exit.thread:                    ; preds = %bb.d
  %i.e = call noalias ptr (ptr, ptr, ...) @wmem_strdup_printf(ptr noundef null, ptr noundef nonnull @.str.23)
  store ptr %i.e, ptr %3, align 8
  br label %_nstime_mul_float.exit

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr i8, ptr %0, i64 8          ; 3 uses
  %i.g = getelementptr i8, ptr %1, i64 8
  %i.h = sitofp i64 %i.d to double
  %i.i = fdiv nnan double 1.000000e+00, %i.h
  %i.j = load i64, ptr %i.g, align 8
  %i.k = getelementptr i8, ptr %1, i64 16
  %i.l = load i32, ptr %i.k, align 8
  %i.m = sitofp i64 %i.j to double
  %i.n = sitofp i32 %i.l to double
  %i.o = fdiv nnan double %i.n, 1.000000e+09
  %i.p = fadd nnan double %i.o, %i.m
  %i.q = fmul double %i.i, %i.p
  %i.r = call { double, double } @llvm.modf.f64(double %i.q) ; 2 uses
  %i.s = extractvalue { double, double } %i.r, 0
  %i.t = extractvalue { double, double } %i.r, 1
  %i.u = fptosi double %i.t to i64                ; 2 uses
  store i64 %i.u, ptr %i.f, align 8
  %i.v = fmul double %i.s, 1.000000e+09
  %i.w = call double @llvm.round.f64(double %i.v)
  %i.x = fptosi double %i.w to i32                ; 2 uses
  %i.y = getelementptr i8, ptr %0, i64 16         ; 3 uses
  store i32 %i.x, ptr %i.y, align 8
  br label %bb.f

bb.f:                                             ; preds = %.critedge.i.i, %bb.e
  %.pre26.i.i = phi i64 [ %i.af, %.critedge.i.i ], [ %i.u, %bb.e ] ; 3 uses
  %.lcssa.promoted.i.i = phi i32 [ %i.ac, %.critedge.i.i ], [ %i.x, %bb.e ] ; 4 uses
  %i.z = icmp sgt i32 %.lcssa.promoted.i.i, 999999999
  br i1 %i.z, label %.critedge.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = icmp sgt i32 %.lcssa.promoted.i.i, 0
  %i.ab = icmp slt i64 %.pre26.i.i, 0
  %or.cond.i = select i1 %i.aa, i1 %i.ab, i1 false
  br i1 %or.cond.i, label %.critedge.i.i, label %.critedge2.i.i

.critedge.i.i:                                    ; preds = %bb.g, %bb.f
  %i.ac = add nsw i32 %.lcssa.promoted.i.i, -1000000000 ; 2 uses
  store i32 %i.ac, ptr %i.y, align 8
  %i.ad = call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %.pre26.i.i, i64 1) ; 2 uses
  %i.ae = extractvalue { i64, i1 } %i.ad, 1
  %i.af = extractvalue { i64, i1 } %i.ad, 0       ; 2 uses
  store i64 %i.af, ptr %i.f, align 8
  br i1 %i.ae, label %bb.h, label %bb.f, !llvm.loop !2

bb.h:                                             ; preds = %.critedge.i.i
  call void @__longjmp_chk(ptr noundef nonnull %4, i32 noundef 1) #18
  unreachable

.critedge2.i.i:                                   ; preds = %bb.g, %.critedge4.i.i
  %.pre.i.i = phi i64 [ %i.an, %.critedge4.i.i ], [ %.pre26.i.i, %bb.g ] ; 2 uses
  %i.ag = phi i32 [ %i.ak, %.critedge4.i.i ], [ %.lcssa.promoted.i.i, %bb.g ] ; 3 uses
  %i.ah = icmp slt i32 %i.ag, -999999999
  br i1 %i.ah, label %.critedge4.i.i, label %bb.i

end_hunk_0
begin_hunk_1_@val_from_unix_time:bb.a
  br label %.lr.ph59.i

.lr.ph59.i:                                       ; preds = %bb.j, %.lr.ph59.preheader.i
  %.02656.i = phi i32 [ %.1.i, %bb.j ], [ 0, %.lr.ph59.preheader.i ] ; 2 uses
  %.12855.i = phi ptr [ %i.ac, %bb.j ], [ %i.v, %.lr.ph59.preheader.i ]
  %.02953.i = phi i32 [ %i.at, %bb.j ], [ %i.ab, %.lr.ph59.preheader.i ] ; 7 uses
  %i.ac = getelementptr i8, ptr %.12855.i, i64 -1 ; 3 uses
  %i.ad = load i8, ptr %i.ac, align 1             ; 2 uses
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr [2 x i8], ptr %i.p, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = and i16 %i.ag, 8
  %.not37.i = icmp eq i16 %i.ah, 0
  br i1 %.not37.i, label %get_nsecs.exit.thread, label %bb.h

bb.h:                                             ; preds = %.lr.ph59.i
  %i.ai = sext i8 %i.ad to i32
  %i.aj = add nsw i32 %i.ai, -48                  ; 4 uses
  %.not38.i = icmp eq i32 %i.aj, 0
  br i1 %.not38.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp slt i32 %.02953.i, 0
  br i1 %i.ak, label %get_nsecs.exit.thread, label %.preheader.i

.preheader.i:                                     ; preds = %bb.i
  %.not63.i = icmp eq i32 %.02953.i, 0
  br i1 %.not63.i, label %._crit_edge50.i, label %.lr.ph49.i.preheader

.lr.ph49.i.preheader:                             ; preds = %.preheader.i
  %min.iters.check = icmp ult i32 %.02953.i, 8
  br i1 %min.iters.check, label %.lr.ph49.i.preheader44, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph49.i.preheader
  %n.vec = and i32 %.02953.i, 2147483640          ; 3 uses
  %i.al = insertelement <4 x i32> <i32 poison, i32 1, i32 1, i32 1>, i32 %i.aj, i64 0
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <4 x i32> [ %i.al, %vector.ph ], [ %i.am, %vector.body ]
  %vec.phi43 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.an, %vector.body ]
  %i.am = mul <4 x i32> %vec.phi, splat (i32 10)  ; 2 uses
  %i.an = mul <4 x i32> %vec.phi43, splat (i32 10) ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %i.ao = icmp eq i32 %index.next, %n.vec
  br i1 %i.ao, label %middle.block, label %vector.body, !llvm.loop !16

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.an, %i.am
  %i.ap = call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %.02953.i, %n.vec
  br i1 %cmp.n, label %._crit_edge50.i, label %.lr.ph49.i.preheader44

.lr.ph49.i.preheader44:                           ; preds = %.lr.ph49.i.preheader, %middle.block
  %.048.i.ph = phi i32 [ 0, %.lr.ph49.i.preheader ], [ %n.vec, %middle.block ]
  %.02547.i.ph = phi i32 [ %i.aj, %.lr.ph49.i.preheader ], [ %i.ap, %middle.block ]
  br label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %.lr.ph49.i.preheader44, %.lr.ph49.i
  %.048.i = phi i32 [ %i.ar, %.lr.ph49.i ], [ %.048.i.ph, %.lr.ph49.i.preheader44 ]
  %.02547.i = phi i32 [ %i.aq, %.lr.ph49.i ], [ %.02547.i.ph, %.lr.ph49.i.preheader44 ]
  %i.aq = mul i32 %.02547.i, 10                   ; 2 uses
  %i.ar = add nuw nsw i32 %.048.i, 1              ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.ar, %.02953.i
  br i1 %exitcond.not.i, label %._crit_edge50.i, label %.lr.ph49.i, !llvm.loop !17

._crit_edge50.i:                                  ; preds = %.lr.ph49.i, %middle.block, %.preheader.i
  %.025.lcssa.i = phi i32 [ %i.aj, %.preheader.i ], [ %i.ap, %middle.block ], [ %i.aq, %.lr.ph49.i ]
  %i.as = add i32 %.025.lcssa.i, %.02656.i
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge50.i, %bb.h
  %.1.i = phi i32 [ %i.as, %._crit_edge50.i ], [ %.02656.i, %bb.h ] ; 2 uses
  %i.at = add i32 %.02953.i, 1
  %.not35.i = icmp eq ptr %i.ac, %.1
  br i1 %.not35.i, label %get_nsecs.exit, label %.lr.ph59.i, !llvm.loop !1

get_nsecs.exit:                                   ; preds = %bb.j, %bb.g, %._crit_edge.i
  %.026.lcssa.i = phi i32 [ 0, %._crit_edge.i ], [ 0, %bb.g ], [ %.1.i, %bb.j ] ; 2 uses
  store i32 %.026.lcssa.i, ptr %i.o, align 4
  br i1 %i.c, label %bb.l, label %get_nsecs.exit.thread

bb.k:                                             ; preds = %bb.f
  store i32 0, ptr %i.o, align 8
  br i1 %i.c, label %bb.l, label %get_nsecs.exit.thread

bb.l:                                             ; preds = %get_nsecs.exit, %bb.k
  %i.au = phi i32 [ %.026.lcssa.i, %get_nsecs.exit ], [ 0, %bb.k ]
  %i.av = getelementptr i8, ptr %0, i64 8
  %i.aw = sub i64 0, %i.m
  store i64 %i.aw, ptr %i.av, align 8
  %i.ax = getelementptr i8, ptr %0, i64 16
  %i.ay = sub i32 0, %i.au
  store i32 %i.ay, ptr %i.ax, align 8
  br label %get_nsecs.exit.thread

get_nsecs.exit.thread:                            ; preds = %.lr.ph59.i, %bb.i, %get_nsecs.exit, %bb.k, %bb.l, %bb.b, %bb.c
  %.021 = phi i1 [ false, %bb.b ], [ true, %get_nsecs.exit ], [ false, %bb.c ], [ true, %bb.l ], [ true, %bb.k ], [ false, %bb.i ], [ false, %.lr.ph59.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i1 %.021
}

; Function Attrs: null_pointer_is_valid
declare ptr @iso8601_to_nstime(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @nstime_is_unset(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @ws_strptime(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare noalias ptr @wmem_strdup(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i64 @mktime_utc(ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid willreturn
declare noundef i64 @mktime(ptr noundef captures(none)) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare void @g_free(ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nounwind null_pointer_is_valid
declare i64 @__isoc23_strtoul(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: noreturn null_pointer_is_valid
declare void @ws_log_fatal_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare ptr @abs_time_to_str_ex(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare i32 @nstime_cmp(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i32 @nstime_hash(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @nstime_is_zero(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare zeroext i1 @nstime_is_negative(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid returns_twice
declare i32 @_setjmp(ptr noundef) local_unnamed_addr #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.sadd.with.overflow.i64(i64, i64) #12

; Function Attrs: noreturn nounwind null_pointer_is_valid
declare void @__longjmp_chk(ptr noundef, i32 noundef) local_unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.sadd.with.overflow.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i32, i1 } @llvm.ssub.with.overflow.i32(i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.ssub.with.overflow.i64(i64, i64) #12

; Function Attrs: null_pointer_is_valid
declare i32 @fvalue_type_ftenum(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare i64 @fvalue_get_sinteger64(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare double @fvalue_get_floating(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare void @ws_log_full(ptr noundef, i32 noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare ptr @ftype_pretty_name(i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { double, double } @llvm.modf.f64(double) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.round.f64(double) #12

; Function Attrs: null_pointer_is_valid
declare ptr @rel_time_to_secs_str(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.mul.v4i32(<4 x i32>) #12

attributes #0 = { null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind null_pointer_is_valid sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "probe-stack"="inline-asm" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { mustprogress nofree nounwind null_pointer_is_valid willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind null_pointer_is_valid returns_twice "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noreturn nounwind null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { nounwind }
attributes #16 = { noreturn }
attributes #17 = { nounwind returns_twice }
attributes #18 = { noreturn nounwind }

!llvm.module.flags = !{!4, !5, !6, !7, !8}
!llvm.ident = !{!9}

!0 = distinct !{!0, !10}
!1 = distinct !{!1, !10}
!2 = distinct !{!2, !10}
!3 = distinct !{!3, !10}
!4 = !{i32 8, !"cf-protection-return", i32 1}
!5 = !{i32 8, !"cf-protection-branch", i32 1}
!6 = !{i32 4, !"probe-stack", !"inline-asm"}
!7 = !{i32 8, !"PIC Level", i32 2}
!8 = !{i32 7, !"uwtable", i32 2}
!9 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!10 = !{!"llvm.loop.mustprogress"}
!11 = !{!"llvm.loop.isvectorized", i32 1}
!12 = !{!"llvm.loop.unroll.runtime.disable"}
!13 = distinct !{!13, !10, !11, !12}
!14 = distinct !{!14, !10, !12, !11}
!15 = distinct !{!15, !10}
!16 = distinct !{!16, !10, !11, !12}
!17 = distinct !{!17, !10, !12, !11}
end_hunk_1
