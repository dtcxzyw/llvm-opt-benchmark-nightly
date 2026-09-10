Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/bignum?download=true
inline.NumInlined: 999
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 154
loop-unroll.NumUnrolled: 182
begin_hunk_0_@rb_big_isqrt:bb.a
  %i.aw = tail call i64 @rb_int_lshift(i64 noundef %i.ar, i64 noundef %i.av) #23
  %i.ax = add nuw nsw i64 %i.u, 1
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.ay = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  %i.az = tail call fastcc i64 @bignew_1(i64 noundef %i.ay, i64 noundef 2, i32 noundef 1) ; 2 uses
  %i.ba = inttoptr i64 %i.az to ptr               ; 5 uses
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !48 ; 2 uses
  %i.bc = and i64 %i.bb, 16384
  %.not.i.i.i.i33 = icmp eq i64 %i.bc, 0
  br i1 %.not.i.i.i.i33, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bd = getelementptr i8, ptr %i.ba, i64 16
  store i64 %i.as, ptr %i.bd, align 8
  %i.be = and i64 %i.bb, -16744449
  %i.bf = or disjoint i64 %i.be, 65536
  store i64 %i.bf, ptr %i.ba, align 8, !tbaa !48
  br label %rb_ull2num_inline.exit35

bb.q:                                             ; preds = %bb.o
  %i.bg = getelementptr i8, ptr %i.ba, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !49
  store i64 %i.as, ptr %i.bh, align 4
  %i.bi = getelementptr i8, ptr %i.ba, i64 16
  store i64 2, ptr %i.bi, align 8, !tbaa !49
  br label %rb_ull2num_inline.exit35

rb_ull2num_inline.exit35:                         ; preds = %bb.p, %bb.q
  %i.bj = tail call i64 @rb_int_lshift(i64 noundef %i.ar, i64 noundef %i.az) #23 ; 3 uses
  %i.bk = add nsw i64 %i.u, 1                     ; 4 uses
  %i.bl = icmp ult i64 %i.bk, 4611686018427387904
  br i1 %i.bl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %rb_ull2num_inline.exit35.thread, %rb_ull2num_inline.exit35
  %i.bm = phi i64 [ %i.ax, %rb_ull2num_inline.exit35.thread ], [ %i.bk, %rb_ull2num_inline.exit35 ]
  %i.bn = phi i64 [ %i.aw, %rb_ull2num_inline.exit35.thread ], [ %i.bj, %rb_ull2num_inline.exit35 ]
  %i.bo = shl nuw nsw i64 %i.bm, 1
  %i.bp = or disjoint i64 %i.bo, 1
  br label %rb_ull2num_inline.exit38

bb.s:                                             ; preds = %rb_ull2num_inline.exit35
  %i.bq = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  %i.br = tail call fastcc i64 @bignew_1(i64 noundef %i.bq, i64 noundef 2, i32 noundef 1) ; 3 uses
  %i.bs = inttoptr i64 %i.br to ptr               ; 5 uses
  %i.bt = load i64, ptr %i.bs, align 8, !tbaa !48 ; 2 uses
  %i.bu = and i64 %i.bt, 16384
  %.not.i.i.i.i36 = icmp eq i64 %i.bu, 0
  br i1 %.not.i.i.i.i36, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr i8, ptr %i.bs, i64 16
  store i64 %i.bk, ptr %i.bv, align 8
  %i.bw = and i64 %i.bt, -16744449
  %i.bx = or disjoint i64 %i.bw, 65536
  store i64 %i.bx, ptr %i.bs, align 8, !tbaa !48
  br label %rb_ull2num_inline.exit38

bb.u:                                             ; preds = %bb.s
  %i.by = getelementptr i8, ptr %i.bs, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !49
  store i64 %i.bk, ptr %i.bz, align 4
  %i.ca = getelementptr i8, ptr %i.bs, i64 16
  store i64 2, ptr %i.ca, align 8, !tbaa !49
  br label %rb_ull2num_inline.exit38

rb_ull2num_inline.exit38:                         ; preds = %bb.r, %bb.t, %bb.u
  %i.cb = phi i64 [ %i.bn, %bb.r ], [ %i.bj, %bb.t ], [ %i.bj, %bb.u ]
  %.0.i37 = phi i64 [ %i.bp, %bb.r ], [ %i.br, %bb.t ], [ %i.br, %bb.u ]
  %i.cc = tail call i64 @rb_int_rshift(i64 noundef %0, i64 noundef %.0.i37) #23
  %i.cd = tail call i64 @rb_int_idiv(i64 noundef %i.cc, i64 noundef %i.ar) #23
  %i.ce = tail call i64 @rb_int_plus(i64 noundef %i.cb, i64 noundef %i.cd) #23 ; 4 uses
  %i.cf = tail call i64 @rb_int_mul(i64 noundef %i.ce, i64 noundef %i.ce) #23 ; 2 uses
  %i.cg = tail call i64 @rb_int_gt(i64 noundef %i.cf, i64 noundef %0) #23
  %.not43 = icmp eq i64 %i.cg, 0
  br i1 %.not43, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %rb_ull2num_inline.exit38, %.lr.ph
  %.045 = phi i64 [ %i.cj, %.lr.ph ], [ %i.cf, %rb_ull2num_inline.exit38 ]
  %.02644 = phi i64 [ %i.ck, %.lr.ph ], [ %i.ce, %rb_ull2num_inline.exit38 ] ; 3 uses
  %i.ch = tail call i64 @rb_int_plus(i64 noundef %.02644, i64 noundef %.02644) #23
  %i.ci = tail call i64 @rb_int_minus(i64 noundef %i.ch, i64 noundef 3) #23
  %i.cj = tail call i64 @rb_int_minus(i64 noundef %.045, i64 noundef %i.ci) #23 ; 2 uses
  %i.ck = tail call i64 @rb_int_minus(i64 noundef %.02644, i64 noundef 3) #23 ; 2 uses
  %i.cl = tail call i64 @rb_int_gt(i64 noundef %i.cj, i64 noundef %0) #23
  %.not = icmp eq i64 %i.cl, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !406

.loopexit:                                        ; preds = %.lr.ph, %rb_ull2num_inline.exit38, %bary2bdigitdbl.exit
  %.027 = phi i64 [ %i.r, %bary2bdigitdbl.exit ], [ %i.ce, %rb_ull2num_inline.exit38 ], [ %i.ck, %.lr.ph ]
  ret i64 %.027
}

declare i64 @rb_ulong_isqrt(i64 noundef) local_unnamed_addr #5

declare i64 @rb_int_idiv(i64 noundef, i64 noundef) local_unnamed_addr #5

declare i64 @rb_int_mul(i64 noundef, i64 noundef) local_unnamed_addr #5

declare i64 @rb_int_gt(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_int_powm(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %0, -3
  %or.cond.i = icmp ult i32 %i.a, -2
  br i1 %or.cond.i, label %bb.b, label %rb_check_arity.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %0, i32 noundef 1, i32 noundef 2) #25
  unreachable

rb_check_arity.exit:                              ; preds = %bb.a
  %i.b = icmp eq i32 %0, 1
  %i.c = load i64, ptr %1, align 8, !tbaa !46     ; 13 uses
  br i1 %i.b, label %bb.c, label %bb.d

bb.c:                                             ; preds = %rb_check_arity.exit
  %i.d = tail call i64 @rb_int_pow(i64 noundef %2, i64 noundef %i.c) #23
  br label %int_pow_tmp3.exit

bb.d:                                             ; preds = %rb_check_arity.exit
  %i.e = getelementptr i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !46   ; 7 uses
  %i.g = trunc i64 %i.c to i1                     ; 4 uses
  br i1 %i.g, label %rb_integer_type_p.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = icmp eq i64 %i.c, 0
  %i.i = and i64 %i.c, 6
  %i.j = icmp ne i64 %i.i, 0
  %i.k = or i1 %i.h, %i.j
  br i1 %i.k, label %rb_integer_type_p.exit.thread69, label %rb_integer_type_p.exit

rb_integer_type_p.exit:                           ; preds = %bb.e
  %i.l = inttoptr i64 %i.c to ptr
  %i.m = load i64, ptr %i.l, align 8, !tbaa !48
  %i.n = and i64 %i.m, 31
  %i.o = icmp eq i64 %i.n, 10
  br i1 %i.o, label %rb_integer_type_p.exit.thread, label %rb_integer_type_p.exit.thread69

rb_integer_type_p.exit.thread69:                  ; preds = %bb.e, %rb_integer_type_p.exit
  %i.p = load i64, ptr @rb_eTypeError, align 8, !tbaa !46
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.p, ptr noundef nonnull @.str.15) #25
  unreachable

rb_integer_type_p.exit.thread:                    ; preds = %bb.d, %rb_integer_type_p.exit
  %i.q = tail call i32 @rb_int_negative_p(i64 noundef %i.c) #23
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %rb_integer_type_p.exit.thread
  %i.r = load i64, ptr @rb_eRangeError, align 8, !tbaa !46
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.r, ptr noundef nonnull @.str.16) #25
  unreachable

bb.g:                                             ; preds = %rb_integer_type_p.exit.thread
  %i.s = trunc i64 %i.f to i1
  br i1 %i.s, label %rb_integer_type_p.exit45.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = icmp eq i64 %i.f, 0
  %i.u = and i64 %i.f, 6
  %i.v = icmp ne i64 %i.u, 0
  %i.w = or i1 %i.t, %i.v
  br i1 %i.w, label %rb_integer_type_p.exit45.thread72, label %rb_integer_type_p.exit45

rb_integer_type_p.exit45:                         ; preds = %bb.h
  %i.x = inttoptr i64 %i.f to ptr
  %i.y = load i64, ptr %i.x, align 8, !tbaa !48
  %i.z = and i64 %i.y, 31
  %i.aa = icmp eq i64 %i.z, 10
  br i1 %i.aa, label %rb_integer_type_p.exit45.thread, label %rb_integer_type_p.exit45.thread72

rb_integer_type_p.exit45.thread72:                ; preds = %bb.h, %rb_integer_type_p.exit45
  %i.ab = load i64, ptr @rb_eTypeError, align 8, !tbaa !46
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ab, ptr noundef nonnull @.str.17) #25
  unreachable

rb_integer_type_p.exit45.thread:                  ; preds = %bb.g, %rb_integer_type_p.exit45
  %i.ac = tail call i64 @rb_int_zero_p(i64 noundef %2) #23
  %.not39 = icmp eq i64 %i.ac, 0
  br i1 %.not39, label %bb.j, label %bb.i

bb.i:                                             ; preds = %rb_integer_type_p.exit45.thread
  %i.ad = tail call i64 @rb_int_zero_p(i64 noundef %i.c) #23
  %.not40 = icmp eq i64 %i.ad, 0
  br i1 %.not40, label %int_pow_tmp3.exit, label %bb.j

bb.j:                                             ; preds = %bb.i, %rb_integer_type_p.exit45.thread
  %i.ae = tail call i32 @rb_int_negative_p(i64 noundef %i.f) #23
  %.not41 = icmp ne i32 %i.ae, 0                  ; 4 uses
  br i1 %.not41, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.af = tail call i64 @rb_int_uminus(i64 noundef %i.f) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.036 = phi i64 [ %i.af, %bb.k ], [ %i.f, %bb.j ] ; 15 uses
  %i.ag = trunc i64 %.036 to i1
  br i1 %i.ag, label %bb.m, label %bb.z

bb.m:                                             ; preds = %bb.l
  %i.ah = ashr i64 %.036, 1                       ; 10 uses
  switch i64 %i.ah, label %bb.o [
    i64 0, label %bb.n
    i64 1, label %int_pow_tmp3.exit
  ]

bb.n:                                             ; preds = %bb.m
  tail call void @rb_num_zerodiv() #27
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ai = icmp slt i64 %i.ah, 2147483649
  %i.aj = tail call i64 @rb_int_modulo(i64 noundef %2, i64 noundef %.036) #23 ; 2 uses
  br i1 %i.ai, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.ak = ashr i64 %i.aj, 1                       ; 2 uses
  br i1 %i.g, label %.preheader.i, label %.lr.ph.i

.preheader.i:                                     ; preds = %bb.r, %bb.p
  %.029.lcssa.i = phi i64 [ %i.c, %bb.p ], [ %i.ar, %bb.r ] ; 2 uses
  %.027.lcssa.i = phi i64 [ %i.ak, %bb.p ], [ %i.aq, %bb.r ]
  %.026.lcssa.i = phi i64 [ 1, %bb.p ], [ %.1.i, %bb.r ] ; 2 uses
  %.037.i = ashr i64 %.029.lcssa.i, 1             ; 2 uses
  %.not38.i = icmp eq i64 %.037.i, 0
  br i1 %.not38.i, label %int_pow_tmp1.exit, label %.lr.ph43.i

.lr.ph.i:                                         ; preds = %bb.p, %bb.r
  %.02634.i = phi i64 [ %.1.i, %bb.r ], [ 1, %bb.p ] ; 2 uses
  %.02733.i = phi i64 [ %i.aq, %bb.r ], [ %i.ak, %bb.p ] ; 3 uses
  %.02932.i = phi i64 [ %i.ar, %bb.r ], [ %i.c, %bb.p ] ; 2 uses
  %i.al = tail call i64 @rb_int_odd_p(i64 noundef %.02932.i) #23
  %i.am = and i64 %i.al, -5
  %.not31.i = icmp eq i64 %i.am, 0
  br i1 %.not31.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.i
  %i.an = mul i64 %.02733.i, %.02634.i
  %i.ao = srem i64 %i.an, %i.ah
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.i
  %.1.i = phi i64 [ %i.ao, %bb.q ], [ %.02634.i, %.lr.ph.i ] ; 2 uses
  %i.ap = mul i64 %.02733.i, %.02733.i
  %i.aq = srem i64 %i.ap, %i.ah                   ; 2 uses
  %i.ar = tail call i64 @rb_big_rshift(i64 noundef %.02932.i, i64 noundef 3) ; 3 uses
  %i.as = trunc i64 %i.ar to i1
  br i1 %i.as, label %.preheader.i, label %.lr.ph.i, !llvm.loop !407

.lr.ph43.i:                                       ; preds = %.preheader.i, %bb.t
  %.042.i = phi i64 [ %.0.i46, %bb.t ], [ %.037.i, %.preheader.i ] ; 2 uses
  %.0.in41.i = phi i64 [ %.042.i, %bb.t ], [ %.029.lcssa.i, %.preheader.i ]
  %.240.i = phi i64 [ %.3.i, %bb.t ], [ %.026.lcssa.i, %.preheader.i ] ; 2 uses
  %.12839.i = phi i64 [ %i.ax, %bb.t ], [ %.027.lcssa.i, %.preheader.i ] ; 3 uses
  %i.at = and i64 %.0.in41.i, 2
  %.not30.i = icmp eq i64 %i.at, 0
  br i1 %.not30.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph43.i
  %i.au = mul i64 %.12839.i, %.240.i
  %i.av = srem i64 %i.au, %i.ah
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph43.i
  %.3.i = phi i64 [ %i.av, %bb.s ], [ %.240.i, %.lr.ph43.i ] ; 2 uses
  %i.aw = mul i64 %.12839.i, %.12839.i
  %i.ax = srem i64 %i.aw, %i.ah
  %.0.i46 = ashr i64 %.042.i, 1                   ; 2 uses
  %.not.i = icmp eq i64 %.0.i46, 0
  br i1 %.not.i, label %int_pow_tmp1.exit, label %.lr.ph43.i, !llvm.loop !408

int_pow_tmp1.exit:                                ; preds = %bb.t, %.preheader.i
  %.2.lcssa.i = phi i64 [ %.026.lcssa.i, %.preheader.i ], [ %.3.i, %bb.t ] ; 2 uses
  %i.ay = icmp ne i64 %.2.lcssa.i, 0
  %or.cond.i47 = select i1 %.not41, i1 %i.ay, i1 false
  %i.az = select i1 %or.cond.i47, i64 %i.ah, i64 0
  %spec.select.i = sub nsw i64 %.2.lcssa.i, %i.az
  %i.ba = shl i64 %spec.select.i, 1
  %i.bb = or disjoint i64 %i.ba, 1
  br label %int_pow_tmp3.exit

bb.u:                                             ; preds = %bb.o
  %i.bc = zext nneg i64 %i.ah to i128             ; 4 uses
  %i.bd = ashr i64 %i.aj, 1                       ; 2 uses
  br i1 %i.g, label %.preheader.i49, label %.lr.ph.i48

.preheader.i49:                                   ; preds = %bb.w, %bb.u
  %.033.lcssa.i = phi i64 [ %i.c, %bb.u ], [ %i.bo, %bb.w ] ; 2 uses
  %.029.lcssa.i50 = phi i64 [ 1, %bb.u ], [ %.130.i, %bb.w ] ; 2 uses
  %.0.lcssa.i = phi i64 [ %i.bd, %bb.u ], [ %i.bn, %bb.w ]
  %.03141.i = ashr i64 %.033.lcssa.i, 1           ; 2 uses
  %.not42.i = icmp eq i64 %.03141.i, 0
  br i1 %.not42.i, label %int_pow_tmp2.exit, label %.lr.ph47.i

.lr.ph.i48:                                       ; preds = %bb.u, %bb.w
  %.038.i = phi i64 [ %i.bn, %bb.w ], [ %i.bd, %bb.u ] ; 2 uses
  %.02937.i = phi i64 [ %.130.i, %bb.w ], [ 1, %bb.u ] ; 2 uses
  %.03336.i = phi i64 [ %i.bo, %bb.w ], [ %i.c, %bb.u ] ; 2 uses
  %i.be = tail call i64 @rb_int_odd_p(i64 noundef %.03336.i) #23
  %i.bf = and i64 %i.be, -5
  %.not35.i = icmp eq i64 %i.bf, 0
  br i1 %.not35.i, label %.lr.ph._crit_edge.i, label %bb.v

.lr.ph._crit_edge.i:                              ; preds = %.lr.ph.i48
  %.pre50.i = sext i64 %.038.i to i128
  br label %bb.w

bb.v:                                             ; preds = %.lr.ph.i48
  %i.bg = sext i64 %.02937.i to i128
  %i.bh = sext i64 %.038.i to i128                ; 2 uses
  %i.bi = mul nsw i128 %i.bg, %i.bh
  %i.bj = srem i128 %i.bi, %i.bc
  %i.bk = trunc nsw i128 %i.bj to i64
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph._crit_edge.i
  %.pre-phi51.i = phi i128 [ %.pre50.i, %.lr.ph._crit_edge.i ], [ %i.bh, %bb.v ] ; 2 uses
  %.130.i = phi i64 [ %.02937.i, %.lr.ph._crit_edge.i ], [ %i.bk, %bb.v ] ; 2 uses
  %i.bl = mul nsw i128 %.pre-phi51.i, %.pre-phi51.i
  %i.bm = urem i128 %i.bl, %i.bc
  %i.bn = trunc nuw nsw i128 %i.bm to i64         ; 2 uses
  %i.bo = tail call i64 @rb_big_rshift(i64 noundef %.03336.i, i64 noundef 3) ; 3 uses
  %i.bp = trunc i64 %i.bo to i1
  br i1 %i.bp, label %.preheader.i49, label %.lr.ph.i48, !llvm.loop !409

.lr.ph47.i:                                       ; preds = %.preheader.i49, %bb.y
  %.03146.i = phi i64 [ %.031.i, %bb.y ], [ %.03141.i, %.preheader.i49 ] ; 2 uses
  %.145.i = phi i64 [ %i.by, %bb.y ], [ %.0.lcssa.i, %.preheader.i49 ] ; 2 uses
  %.244.i = phi i64 [ %.3.i51, %bb.y ], [ %.029.lcssa.i50, %.preheader.i49 ] ; 2 uses
  %.031.in43.i = phi i64 [ %.03146.i, %bb.y ], [ %.033.lcssa.i, %.preheader.i49 ]
  %i.bq = and i64 %.031.in43.i, 2
  %.not34.i = icmp eq i64 %i.bq, 0
  br i1 %.not34.i, label %.lr.ph47._crit_edge.i, label %bb.x

.lr.ph47._crit_edge.i:                            ; preds = %.lr.ph47.i
  %.pre.i = sext i64 %.145.i to i128
  br label %bb.y

bb.x:                                             ; preds = %.lr.ph47.i
  %i.br = sext i64 %.244.i to i128
  %i.bs = sext i64 %.145.i to i128                ; 2 uses
  %i.bt = mul nsw i128 %i.br, %i.bs
  %i.bu = srem i128 %i.bt, %i.bc
  %i.bv = trunc nsw i128 %i.bu to i64
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %.lr.ph47._crit_edge.i
  %.pre-phi.i = phi i128 [ %.pre.i, %.lr.ph47._crit_edge.i ], [ %i.bs, %bb.x ] ; 2 uses
  %.3.i51 = phi i64 [ %.244.i, %.lr.ph47._crit_edge.i ], [ %i.bv, %bb.x ] ; 2 uses
  %i.bw = mul nsw i128 %.pre-phi.i, %.pre-phi.i
  %i.bx = urem i128 %i.bw, %i.bc
  %i.by = trunc nuw nsw i128 %i.bx to i64
  %.031.i = ashr i64 %.03146.i, 1                 ; 2 uses
  %.not.i52 = icmp eq i64 %.031.i, 0
  br i1 %.not.i52, label %int_pow_tmp2.exit, label %.lr.ph47.i, !llvm.loop !410

int_pow_tmp2.exit:                                ; preds = %bb.y, %.preheader.i49
  %.2.lcssa.i53 = phi i64 [ %.029.lcssa.i50, %.preheader.i49 ], [ %.3.i51, %bb.y ] ; 2 uses
  %i.bz = icmp ne i64 %.2.lcssa.i53, 0
  %or.cond.i54 = select i1 %.not41, i1 %i.bz, i1 false
  %i.ca = select i1 %or.cond.i54, i64 %i.ah, i64 0
  %spec.select.i55 = sub nsw i64 %.2.lcssa.i53, %i.ca
  %i.cb = shl i64 %spec.select.i55, 1
  %i.cc = or disjoint i64 %i.cb, 1
  br label %int_pow_tmp3.exit

bb.z:                                             ; preds = %bb.l
  %i.cd = inttoptr i64 %.036 to ptr               ; 7 uses
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !48 ; 6 uses
  %i.cf = and i64 %i.ce, 16384
  %.not.i.i = icmp eq i64 %i.cf, 0                ; 2 uses
  br i1 %.not.i.i, label %BIGNUM_LEN.exit.i, label %BIGNUM_LEN.exit.thread.i

BIGNUM_LEN.exit.i:                                ; preds = %bb.z
  %i.cg = getelementptr i8, ptr %i.cd, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !tbaa !49 ; 3 uses
  %i.ci = icmp eq i64 %i.ch, 0
  br i1 %i.ci, label %.loopexit, label %BIGNUM_DIGITS.exit.i

BIGNUM_LEN.exit.thread.i:                         ; preds = %bb.z
  %i.cj = and i64 %i.ce, 16744448                 ; 2 uses
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %.loopexit, label %BIGNUM_DIGITS.exit.thread.i

BIGNUM_DIGITS.exit.i:                             ; preds = %BIGNUM_LEN.exit.i
  %i.cl = getelementptr i8, ptr %i.cd, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !49 ; 2 uses
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !44
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %BIGNUM_LEN.exit8.i, label %rb_bigzero_p.exit

BIGNUM_DIGITS.exit.thread.i:                      ; preds = %BIGNUM_LEN.exit.thread.i
  %i.cp = getelementptr i8, ptr %i.cd, i64 16     ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8, !tbaa !44
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %BIGNUM_LEN.exit8.thread.i, label %rb_bigzero_p.exit

BIGNUM_LEN.exit8.i:                               ; preds = %BIGNUM_DIGITS.exit.i
  %i.cs = icmp eq i64 %i.ch, 1
  br i1 %i.cs, label %.loopexit, label %.preheader.i.i.preheader.i

BIGNUM_LEN.exit8.thread.i:                        ; preds = %BIGNUM_DIGITS.exit.thread.i
  %i.ct = icmp eq i64 %i.cj, 32768
  br i1 %i.ct, label %.loopexit, label %BIGNUM_LEN.exit.i.i

BIGNUM_LEN.exit.i.i:                              ; preds = %BIGNUM_LEN.exit8.thread.i
  %i.cu = lshr i64 %i.ce, 15
  %i.cv = and i64 %i.cu, 511                      ; 2 uses
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %.loopexit, label %.preheader.i.i.preheader.i

.preheader.i.i.preheader.i:                       ; preds = %BIGNUM_LEN.exit.i.i, %BIGNUM_LEN.exit8.i
  %.0.i3.i19.i = phi i64 [ %i.cv, %BIGNUM_LEN.exit.i.i ], [ %i.ch, %BIGNUM_LEN.exit8.i ]
  %.0.i7.i18.i = phi ptr [ %i.cp, %BIGNUM_LEN.exit.i.i ], [ %i.cm, %BIGNUM_LEN.exit8.i ]
  br label %.preheader.i.i.i

.preheader.i.i.i:                                 ; preds = %bb.aa, %.preheader.i.i.preheader.i
  %.0.i4.i.i = phi i64 [ %i.cx, %bb.aa ], [ %.0.i3.i19.i, %.preheader.i.i.preheader.i ]
  %i.cx = add i64 %.0.i4.i.i, -1                  ; 3 uses
  %i.cy = getelementptr [4 x i8], ptr %.0.i7.i18.i, i64 %i.cx
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !44
  %.not.i5.i.i = icmp eq i32 %i.cz, 0
  br i1 %.not.i5.i.i, label %bb.aa, label %rb_bigzero_p.exit

bb.aa:                                            ; preds = %.preheader.i.i.i
  %.not7.i.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not7.i.i.i, label %.loopexit, label %.preheader.i.i.i, !llvm.loop !14

.loopexit:                                        ; preds = %bb.aa, %BIGNUM_LEN.exit.i, %BIGNUM_LEN.exit8.i, %BIGNUM_LEN.exit8.thread.i, %BIGNUM_LEN.exit.thread.i, %BIGNUM_LEN.exit.i.i
  tail call void @rb_num_zerodiv() #27
  unreachable

rb_bigzero_p.exit:                                ; preds = %.preheader.i.i.i, %BIGNUM_DIGITS.exit.thread.i, %BIGNUM_DIGITS.exit.i
  %i.da = icmp ne i64 %.036, 0
  %i.db = and i64 %.036, 6
  %i.dc = icmp eq i64 %i.db, 0
  %.not80 = and i1 %i.da, %i.dc
  %i.dd = and i64 %i.ce, 31
  %i.de = icmp eq i64 %i.dd, 10
  %or.cond = and i1 %.not80, %i.de
  br i1 %or.cond, label %bb.ab, label %bignorm.exit

bb.ab:                                            ; preds = %rb_bigzero_p.exit
  br i1 %.not.i.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = lshr i64 %i.ce, 15
  %i.dg = and i64 %i.df, 511
  %i.dh = getelementptr i8, ptr %i.cd, i64 16
  br label %BIGNUM_DIGITS.exit.i.i

bb.ad:                                            ; preds = %bb.ab
  %i.di = getelementptr i8, ptr %i.cd, i64 16
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !49
  %i.dk = getelementptr i8, ptr %i.cd, i64 24
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !49
  br label %BIGNUM_DIGITS.exit.i.i

BIGNUM_DIGITS.exit.i.i:                           ; preds = %bb.ad, %bb.ac
  %.0.i28.i.i = phi i64 [ %i.dg, %bb.ac ], [ %i.dj, %bb.ad ] ; 3 uses
  %.0.i26.i.i = phi ptr [ %i.dh, %bb.ac ], [ %i.dl, %bb.ad ] ; 4 uses
  %cond31.i.i = icmp eq i64 %.0.i28.i.i, 0
  br i1 %cond31.i.i, label %bignorm.exit.thread, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %BIGNUM_DIGITS.exit.i.i, %bb.ae
  %indvar = phi i64 [ %indvar.next, %bb.ae ], [ 0, %BIGNUM_DIGITS.exit.i.i ] ; 2 uses
  %.02232.i.i = phi i64 [ %i.dq, %bb.ae ], [ %.0.i28.i.i, %BIGNUM_DIGITS.exit.i.i ] ; 7 uses
  %i.dm = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %.02232.i.i
  %i.dn = getelementptr i8, ptr %i.dm, i64 -4
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !44
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.ae, label %.critedge.i.i

bb.ae:                                            ; preds = %.lr.ph.i.i
  %i.dq = add i64 %.02232.i.i, -1                 ; 2 uses
  %cond.i.i = icmp eq i64 %i.dq, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %cond.i.i, label %bignorm.exit.thread, label %.lr.ph.i.i, !llvm.loop !15

.critedge.i.i:                                    ; preds = %.lr.ph.i.i
  %i.dr = icmp ugt i64 %.02232.i.i, 2
  br i1 %i.dr, label %bb.ai, label %.lr.ph36.i.i.preheader

.lr.ph36.i.i.preheader:                           ; preds = %.critedge.i.i
  %i.ds = sub i64 %indvar, %.0.i28.i.i
  %i.dt = icmp ugt i64 %i.ds, -4
  br i1 %i.dt, label %.lr.ph36.i.i.epil.preheader, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %.lr.ph36.i.i.preheader, %.lr.ph36.i.i
  %indvars.iv39.i.i = phi i64 [ %indvars.iv.next40.i.i.3, %.lr.ph36.i.i ], [ %.02232.i.i, %.lr.ph36.i.i.preheader ] ; 2 uses
  %niter = phi i64 [ %niter.next.3, %.lr.ph36.i.i ], [ 0, %.lr.ph36.i.i.preheader ]
  %indvars.iv.next40.i.i.3 = add nsw i64 %indvars.iv39.i.i, -4 ; 3 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, 0
  br i1 %niter.ncmp.3, label %._crit_edge.i.i.unr-lcssa, label %.lr.ph36.i.i, !llvm.loop !16

._crit_edge.i.i.unr-lcssa:                        ; preds = %.lr.ph36.i.i
  %i.du = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %indvars.iv39.i.i
  %i.dv = getelementptr i8, ptr %i.du, i64 -12
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !44
  %i.dx = zext i32 %i.dw to i64
  %i.dy = shl nuw i64 %i.dx, 32
  %i.dz = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %indvars.iv.next40.i.i.3
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !44
  %i.eb = zext i32 %i.ea to i64
  %i.ec = or disjoint i64 %i.dy, %i.eb
  br label %.lr.ph36.i.i.epil.preheader

.lr.ph36.i.i.epil.preheader:                      ; preds = %._crit_edge.i.i.unr-lcssa, %.lr.ph36.i.i.preheader
  %indvars.iv39.i.i.epil.init = phi i64 [ %.02232.i.i, %.lr.ph36.i.i.preheader ], [ %indvars.iv.next40.i.i.3, %._crit_edge.i.i.unr-lcssa ]
  %.02134.i.i.epil.init = phi i64 [ 0, %.lr.ph36.i.i.preheader ], [ %i.ec, %._crit_edge.i.i.unr-lcssa ]
  br label %.lr.ph36.i.i.epil

.lr.ph36.i.i.epil:                                ; preds = %.lr.ph36.i.i.epil, %.lr.ph36.i.i.epil.preheader
  %indvars.iv39.i.i.epil = phi i64 [ %indvars.iv.next40.i.i.epil, %.lr.ph36.i.i.epil ], [ %indvars.iv39.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %.02134.i.i.epil = phi i64 [ %i.eh, %.lr.ph36.i.i.epil ], [ %.02134.i.i.epil.init, %.lr.ph36.i.i.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph36.i.i.epil ], [ 0, %.lr.ph36.i.i.epil.preheader ]
  %indvars.iv.next40.i.i.epil = add nsw i64 %indvars.iv39.i.i.epil, -1 ; 2 uses
  %i.ed = shl i64 %.02134.i.i.epil, 32            ; 2 uses
  %i.ee = getelementptr [4 x i8], ptr %.0.i26.i.i, i64 %indvars.iv.next40.i.i.epil
  %i.ef = load i32, ptr %i.ee, align 4, !tbaa !44
  %i.eg = zext i32 %i.ef to i64
  %i.eh = or disjoint i64 %i.ed, %i.eg            ; 4 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %.02232.i.i
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.epilog-lcssa, label %.lr.ph36.i.i.epil, !llvm.loop !411

._crit_edge.i.i.epilog-lcssa:                     ; preds = %.lr.ph36.i.i.epil
  %i.ei = icmp ult i64 %i.ed, 4611686018427387904
  %i.ej = and i64 %i.ce, 8192
  %.not.i.i57 = icmp eq i64 %i.ej, 0
  br i1 %.not.i.i57, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %._crit_edge.i.i.epilog-lcssa
  br i1 %i.ei, label %bb.ag, label %bb.ai

bb.ag:                                            ; preds = %bb.af
  %3 = shl nuw nsw i64 %i.eh, 1
  %4 = or disjoint i64 %3, 1
  br label %bignorm.exit

bb.ah:                                            ; preds = %._crit_edge.i.i.epilog-lcssa
  %i.ek = icmp ult i64 %i.eh, 4611686018427387905
  br i1 %i.ek, label %5, label %bb.ai

5:                                                ; preds = %bb.ah
  %.neg.i.i = mul nsw i64 %i.eh, -2
  %6 = or disjoint i64 %.neg.i.i, 1
  br label %bignorm.exit

bb.ai:                                            ; preds = %bb.ah, %bb.af, %.critedge.i.i
  tail call void @rb_big_resize(i64 noundef %.036, i64 noundef %.02232.i.i)
  br label %bignorm.exit

bignorm.exit:                                     ; preds = %rb_bigzero_p.exit, %bb.ag, %5, %bb.ai
  %.0.i56 = phi i64 [ %.036, %rb_bigzero_p.exit ], [ %4, %bb.ag ], [ %6, %5 ], [ %.036, %bb.ai ]
  %7 = icmp eq i64 %.0.i56, 3
  br i1 %7, label %int_pow_tmp3.exit, label %bignorm.exit.thread

bignorm.exit.thread:                              ; preds = %bb.ae, %BIGNUM_DIGITS.exit.i.i, %bignorm.exit
  %i.el = tail call i64 @rb_int_modulo(i64 noundef %2, i64 noundef %.036) #23 ; 2 uses
  br i1 %i.g, label %.preheader.i60, label %.lr.ph.i58

.preheader.i60:                                   ; preds = %bb.ak, %bignorm.exit.thread
  %.032.lcssa.i = phi i64 [ %i.c, %bignorm.exit.thread ], [ %i.es, %bb.ak ] ; 2 uses
  %.030.lcssa.i = phi i64 [ %i.el, %bignorm.exit.thread ], [ %i.er, %bb.ak ]
  %.029.lcssa.i61 = phi i64 [ 3, %bignorm.exit.thread ], [ %.1.i59, %bb.ak ] ; 2 uses
  %.043.i = ashr i64 %.032.lcssa.i, 1             ; 2 uses
  %.not44.i = icmp eq i64 %.043.i, 0
  br i1 %.not44.i, label %._crit_edge.i, label %.lr.ph49.i

.lr.ph.i58:                                       ; preds = %bignorm.exit.thread, %bb.ak
  %.02940.i = phi i64 [ %.1.i59, %bb.ak ], [ 3, %bignorm.exit.thread ] ; 2 uses
  %.03039.i = phi i64 [ %i.er, %bb.ak ], [ %i.el, %bignorm.exit.thread ] ; 3 uses
  %.03238.i = phi i64 [ %i.es, %bb.ak ], [ %i.c, %bignorm.exit.thread ] ; 2 uses
  %i.em = tail call i64 @rb_int_odd_p(i64 noundef %.03238.i) #23
  %i.en = and i64 %i.em, -5
  %.not37.i = icmp eq i64 %i.en, 0
  br i1 %.not37.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.lr.ph.i58
  %i.eo = tail call i64 @rb_int_mul(i64 noundef %.02940.i, i64 noundef %.03039.i) #23
  %i.ep = tail call i64 @rb_int_modulo(i64 noundef %i.eo, i64 noundef %.036) #23
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.lr.ph.i58
  %.1.i59 = phi i64 [ %i.ep, %bb.aj ], [ %.02940.i, %.lr.ph.i58 ] ; 2 uses
  %i.eq = tail call i64 @rb_int_mul(i64 noundef %.03039.i, i64 noundef %.03039.i) #23
  %i.er = tail call i64 @rb_int_modulo(i64 noundef %i.eq, i64 noundef %.036) #23 ; 2 uses
  %i.es = tail call i64 @rb_big_rshift(i64 noundef %.03238.i, i64 noundef 3) ; 3 uses
  %i.et = trunc i64 %i.es to i1
  br i1 %i.et, label %.preheader.i60, label %.lr.ph.i58, !llvm.loop !412

.lr.ph49.i:                                       ; preds = %.preheader.i60, %bb.am
  %.048.i = phi i64 [ %.0.i63, %bb.am ], [ %.043.i, %.preheader.i60 ] ; 2 uses
  %.0.in47.i = phi i64 [ %.048.i, %bb.am ], [ %.032.lcssa.i, %.preheader.i60 ]
  %.246.i = phi i64 [ %.3.i62, %bb.am ], [ %.029.lcssa.i61, %.preheader.i60 ] ; 2 uses
  %.13145.i = phi i64 [ %i.ey, %bb.am ], [ %.030.lcssa.i, %.preheader.i60 ] ; 3 uses
  %i.eu = and i64 %.0.in47.i, 2
  %.not36.i = icmp eq i64 %i.eu, 0
  br i1 %.not36.i, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph49.i
  %i.ev = tail call i64 @rb_int_mul(i64 noundef %.246.i, i64 noundef %.13145.i) #23
  %i.ew = tail call i64 @rb_int_modulo(i64 noundef %i.ev, i64 noundef %.036) #23
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph49.i
  %.3.i62 = phi i64 [ %i.ew, %bb.al ], [ %.246.i, %.lr.ph49.i ] ; 2 uses
  %i.ex = tail call i64 @rb_int_mul(i64 noundef %.13145.i, i64 noundef %.13145.i) #23
  %i.ey = tail call i64 @rb_int_modulo(i64 noundef %i.ex, i64 noundef %.036) #23
  %.0.i63 = ashr i64 %.048.i, 1                   ; 2 uses
  %.not.i64 = icmp eq i64 %.0.i63, 0
  br i1 %.not.i64, label %._crit_edge.i, label %.lr.ph49.i, !llvm.loop !413

._crit_edge.i:                                    ; preds = %bb.am, %.preheader.i60
  %.2.lcssa.i65 = phi i64 [ %.029.lcssa.i61, %.preheader.i60 ], [ %.3.i62, %bb.am ] ; 6 uses
  br i1 %.not41, label %bb.an, label %int_pow_tmp3.exit

bb.an:                                            ; preds = %._crit_edge.i
  %i.ez = tail call i32 @rb_int_positive_p(i64 noundef %.2.lcssa.i65) #23
  %.not34.i66 = icmp eq i32 %i.ez, 0
  br i1 %.not34.i66, label %int_pow_tmp3.exit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.fa = tail call i64 @rb_int_zero_p(i64 noundef %.2.lcssa.i65) #23
  %.not35.i67 = icmp eq i64 %i.fa, 0
  br i1 %.not35.i67, label %bb.ap, label %int_pow_tmp3.exit

bb.ap:                                            ; preds = %bb.ao
  %i.fb = tail call i64 @rb_int_minus(i64 noundef %.2.lcssa.i65, i64 noundef %.036) #23
  br label %int_pow_tmp3.exit

int_pow_tmp3.exit:                                ; preds = %bb.ap, %bb.ao, %bb.an, %._crit_edge.i, %bb.i, %bb.m, %int_pow_tmp2.exit, %int_pow_tmp1.exit, %bignorm.exit, %bb.c
  %.2 = phi i64 [ %i.d, %bb.c ], [ 1, %bb.i ], [ %i.ah, %bb.m ], [ 1, %bignorm.exit ], [ %i.cc, %int_pow_tmp2.exit ], [ %i.bb, %int_pow_tmp1.exit ], [ %.2.lcssa.i65, %bb.ao ], [ %i.fb, %bb.ap ], [ %.2.lcssa.i65, %bb.an ], [ %.2.lcssa.i65, %._crit_edge.i ]
  ret i64 %.2
}

declare i64 @rb_int_pow(i64 noundef, i64 noundef) local_unnamed_addr #5

declare i32 @rb_int_negative_p(i64 noundef) local_unnamed_addr #5

declare i64 @rb_int_zero_p(i64 noundef) local_unnamed_addr #5

declare i64 @rb_int_uminus(i64 noundef) local_unnamed_addr #5

declare i64 @rb_int_modulo(i64 noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define hidden void @Init_Bignum() local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr @rb_cInteger, align 8, !tbaa !46
  tail call void @rb_define_method(i64 noundef %i.a, ptr noundef nonnull @.str.18, ptr noundef nonnull @rb_int_coerce, i32 noundef 1) #23
  ret void
}

declare extern_weak void @rb_define_method(i64 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_int_coerce(i64 noundef %0, i64 noundef %1) #0 {
bb.a:
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %rb_integer_type_p.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq i64 %1, 0
  %i.c = and i64 %1, 6
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %rb_integer_type_p.exit.thread9, label %rb_integer_type_p.exit

rb_integer_type_p.exit:                           ; preds = %bb.b
  %i.f = inttoptr i64 %1 to ptr
  %i.g = load i64, ptr %i.f, align 8, !tbaa !48
  %i.h = and i64 %i.g, 31
  %i.i = icmp eq i64 %i.h, 10
  br i1 %i.i, label %rb_integer_type_p.exit.thread, label %rb_integer_type_p.exit.thread9

rb_integer_type_p.exit.thread:                    ; preds = %bb.a, %rb_integer_type_p.exit
  %i.j = tail call i64 @rb_assoc_new(i64 noundef %1, i64 noundef %0) #23
  br label %bb.c

rb_integer_type_p.exit.thread9:                   ; preds = %bb.b, %rb_integer_type_p.exit
  %i.k = tail call i64 @rb_Float(i64 noundef %0) #23
  %i.l = tail call i64 @rb_Float(i64 noundef %1) #23
  %i.m = tail call i64 @rb_assoc_new(i64 noundef %i.l, i64 noundef %i.k) #23
  br label %bb.c

bb.c:                                             ; preds = %rb_integer_type_p.exit.thread9, %rb_integer_type_p.exit.thread
  %.0 = phi i64 [ %i.j, %rb_integer_type_p.exit.thread ], [ %i.m, %rb_integer_type_p.exit.thread9 ]
  ret i64 %.0
}

; Function Attrs: cold noreturn
declare void @rb_bug(ptr noundef, ...) local_unnamed_addr #4

declare void @rb_free_tmp_buffer(ptr noundef) local_unnamed_addr #5

; Function Attrs: allocsize(1,2)
declare noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #14

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define internal fastcc void @bary_2comp(ptr nofree noundef captures(none) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %.not27 = icmp eq i64 %1, 0
  br i1 %.not27, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.023 = phi i64 [ %i.c, %bb.b ], [ 0, %bb.a ]   ; 5 uses
  %i.a = getelementptr [4 x i8], ptr %0, i64 %.023
  %i.b = load i32, ptr %i.a, align 4, !tbaa !44   ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.c = add nuw i64 %.023, 1                     ; 2 uses
  %exitcond.not = icmp eq i64 %i.c, %1
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph, !llvm.loop !8

bb.c:                                             ; preds = %.lr.ph
  %i.d = getelementptr [4 x i8], ptr %0, i64 %.023
  %i.e = sub i32 0, %i.b
  store i32 %i.e, ptr %i.d, align 4, !tbaa !44
  %.124 = add i64 %.023, 1                        ; 4 uses
  %i.f = icmp ult i64 %.124, %1
  br i1 %i.f, label %.lr.ph26.preheader, label %.loopexit

.lr.ph26.preheader:                               ; preds = %bb.c
  %i.g = xor i64 %.023, -1
  %i.h = add i64 %1, %i.g                         ; 3 uses
  %min.iters.check = icmp ult i64 %i.h, 8
  br i1 %min.iters.check, label %.lr.ph26.preheader5, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph26.preheader
  %n.vec = and i64 %i.h, -8                       ; 3 uses
  %i.i = add i64 %.124, %n.vec
  %i.j = getelementptr [4 x i8], ptr %0, i64 %.124
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.k = getelementptr [4 x i8], ptr %i.j, i64 %index ; 3 uses
  %i.l = getelementptr i8, ptr %i.k, i64 16       ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.k, align 4, !tbaa !44
  %wide.load4 = load <4 x i32>, ptr %i.l, align 4, !tbaa !44
  %i.m = xor <4 x i32> %wide.load, splat (i32 -1)
  %i.n = xor <4 x i32> %wide.load4, splat (i32 -1)
  store <4 x i32> %i.m, ptr %i.k, align 4, !tbaa !44
  store <4 x i32> %i.n, ptr %i.l, align 4, !tbaa !44
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.o = icmp eq i64 %index.next, %n.vec
  br i1 %i.o, label %middle.block, label %vector.body, !llvm.loop !414

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.h, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph26.preheader5

.lr.ph26.preheader5:                              ; preds = %.lr.ph26.preheader, %middle.block
  %.125.ph = phi i64 [ %.124, %.lr.ph26.preheader ], [ %i.i, %middle.block ]
  br label %.lr.ph26

.lr.ph26:                                         ; preds = %.lr.ph26.preheader5, %.lr.ph26
  %.125 = phi i64 [ %.1, %.lr.ph26 ], [ %.125.ph, %.lr.ph26.preheader5 ] ; 2 uses
  %i.p = getelementptr [4 x i8], ptr %0, i64 %.125 ; 2 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !44
  %i.r = xor i32 %i.q, -1
  store i32 %i.r, ptr %i.p, align 4, !tbaa !44
  %.1 = add nuw i64 %.125, 1                      ; 2 uses
  %exitcond31.not = icmp eq i64 %.1, %1
  br i1 %exitcond31.not, label %.loopexit, label %.lr.ph26, !llvm.loop !415

.loopexit:                                        ; preds = %bb.b, %.lr.ph26, %middle.block, %bb.a, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @bary_mul_karatsuba_start(ptr noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, ptr noundef %6, i64 noundef %7) #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 3 uses
  %i.c = alloca ptr, align 8                      ; 3 uses
  %i.d = alloca i64, align 8                      ; 3 uses
  %i.e = alloca ptr, align 8                      ; 3 uses
  %i.f = alloca i64, align 8                      ; 3 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !59
  store i64 %1, ptr %i.b, align 8, !tbaa !46
  store ptr %2, ptr %i.c, align 8, !tbaa !59
  store i64 %3, ptr %i.d, align 8, !tbaa !46
  store ptr %4, ptr %i.e, align 8, !tbaa !59
  store i64 %5, ptr %i.f, align 8, !tbaa !46
  %i.g = call fastcc i32 @bary_mul_precheck(ptr noundef %i.a, ptr noundef %i.b, ptr noundef %i.c, ptr noundef %i.d, ptr noundef %i.e, ptr noundef %i.f)
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.a, align 8, !tbaa !59
  %i.i = load i64, ptr %i.b, align 8, !tbaa !46
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !59
  %i.k = load i64, ptr %i.d, align 8, !tbaa !46
  %i.l = load ptr, ptr %i.e, align 8, !tbaa !59
  %i.m = load i64, ptr %i.f, align 8, !tbaa !46
  tail call fastcc void @bary_mul_karatsuba_branch(ptr noundef %i.h, i64 noundef %i.i, ptr noundef %i.j, i64 noundef %i.k, ptr noundef %i.l, i64 noundef %i.m, ptr noundef %6, i64 noundef %7)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc range(i32 0, 2) i32 @bary_mul_precheck(ptr nofree noundef nonnull captures(none) %0, ptr nofree noundef nonnull captures(none) %1, ptr nofree noundef nonnull captures(none) %2, ptr nofree noundef nonnull captures(none) %3, ptr nofree noundef nonnull captures(none) %4, ptr nofree noundef nonnull captures(none) %5) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !59     ; 3 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.c = load ptr, ptr %2, align 8, !tbaa !59     ; 5 uses
  %i.d = load i64, ptr %3, align 8, !tbaa !46     ; 3 uses
  %i.e = load ptr, ptr %4, align 8, !tbaa !59     ; 5 uses
  %i.f = load i64, ptr %5, align 8, !tbaa !46     ; 4 uses
  %.not160 = icmp eq i64 %i.d, 0
  br i1 %.not160, label %.loopexit156, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.g = shl i64 %i.d, 2
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.g
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.b
  %indvars.iv = phi ptr [ %scevgep, %.lr.ph.preheader ], [ %scevgep192, %bb.b ] ; 2 uses
  %.0120161 = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.l, %bb.b ] ; 4 uses
  %i.h = getelementptr [4 x i8], ptr %i.c, i64 %.0120161
  %i.i = getelementptr i8, ptr %i.h, i64 -4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !44
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.b, label %.preheader155

bb.b:                                             ; preds = %.lr.ph
end_hunk_0
