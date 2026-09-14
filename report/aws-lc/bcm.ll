Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/aws-lc/original/bcm?download=true
inline.NumInlined: 6923
inline.NumDeleted: 1212
loop-unroll.NumCompletelyUnrolled: 331
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 549
begin_hunk_0_@ec_GFp_simple_cmp_x_coordinate:bb.a
bb.a:
  %3 = alloca %struct.EC_SCALAR, align 8          ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.c = load i32, ptr %i.b, align 8, !tbaa !277  ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.preheader.i.i, label %ec_GFp_simple_is_at_infinity.exit.thread

.lr.ph.preheader.i.i:                             ; preds = %bb.a
  %wide.trip.count.i.i = zext nneg i32 %i.c to i64 ; 3 uses
  %min.iters.check = icmp ult i32 %i.c, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader.i.i
  %n.vec = and i64 %wide.trip.count.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.g, %vector.body ]
  %vec.phi17 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.h, %vector.body ]
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %wide.load = load <2 x i64>, ptr %i.e, align 8, !tbaa !80
  %wide.load18 = load <2 x i64>, ptr %i.f, align 8, !tbaa !80
  %i.g = or <2 x i64> %wide.load, %vec.phi        ; 2 uses
  %i.h = or <2 x i64> %wide.load18, %vec.phi17    ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !1984

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <2 x i64> %i.h, %i.g
  %i.j = tail call i64 @llvm.vector.reduce.or.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i
  br i1 %cmp.n, label %ec_GFp_simple_is_at_infinity.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.preheader.i.i, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %n.vec, %middle.block ]
  %.067.i.i.ph = phi i64 [ 0, %.lr.ph.preheader.i.i ], [ %i.j, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.i.i ], [ %indvars.iv.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.067.i.i = phi i64 [ %i.m, %.lr.ph.i.i ], [ %.067.i.i.ph, %.lr.ph.i.i.preheader ]
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv.i.i
  %i.l = load i64, ptr %i.k, align 8, !tbaa !80
  %i.m = or i64 %i.l, %.067.i.i                   ; 2 uses
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %ec_GFp_simple_is_at_infinity.exit, label %.lr.ph.i.i, !llvm.loop !1985

ec_GFp_simple_is_at_infinity.exit:                ; preds = %.lr.ph.i.i, %middle.block
  %.lcssa16 = phi i64 [ %i.j, %middle.block ], [ %i.m, %.lr.ph.i.i ]
  %.not.i.not = icmp eq i64 %.lcssa16, 0
  br i1 %.not.i.not, label %ec_GFp_simple_is_at_infinity.exit.thread, label %bb.b

bb.b:                                             ; preds = %ec_GFp_simple_is_at_infinity.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #46
  %i.n = call i32 @ec_get_x_coordinate_as_scalar(ptr noundef nonnull %0, ptr noundef nonnull %3, ptr noundef nonnull %1)
  %.not6 = icmp eq i32 %i.n, 0
  br i1 %.not6, label %ec_scalar_equal_vartime.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.p = load i32, ptr %i.o, align 8, !tbaa !296  ; 2 uses
  %.not16.i.i = icmp eq i32 %i.p, 0
  br i1 %.not16.i.i, label %ec_scalar_equal_vartime.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.c
  %i.q = sext i32 %i.p to i64
  %i.r = shl nsw i64 %i.q, 3
  br label %.lr.ph.i.i7

._crit_edge.loopexit.i.i8:                        ; preds = %.lr.ph.i.i7
  %i.s = and i64 %i.aj, 4294967295
  %i.t = icmp eq i64 %i.s, 0
  %i.u = zext i1 %i.t to i32
  br label %ec_scalar_equal_vartime.exit

.lr.ph.i.i7:                                      ; preds = %.lr.ph.i.i7, %.lr.ph.i.preheader.i
  %.018.i.i = phi i64 [ %i.aj, %.lr.ph.i.i7 ], [ 0, %.lr.ph.i.preheader.i ]
  %.01517.i.i = phi i64 [ %i.v, %.lr.ph.i.i7 ], [ %i.r, %.lr.ph.i.preheader.i ]
  %i.v = add i64 %.01517.i.i, -1                  ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !tbaa !76    ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 %i.v
  %i.z = load i8, ptr %i.y, align 1, !tbaa !76    ; 2 uses
  %i.aa = zext i8 %i.x to i64
  %i.ab = zext i8 %i.z to i64
  %i.ac = icmp eq i8 %i.x, %i.z
  %.neg.i.i.i.i = sext i1 %i.ac to i64            ; 2 uses
  %i.ad = xor i64 %.neg.i.i.i.i, -1
  %i.ae = sub nsw i64 %i.aa, %i.ab
  %i.af = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %i.ad) #47, !srcloc !81
  %i.ag = and i64 %i.ae, %i.af
  %i.ah = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i.i.i) #47, !srcloc !81
  %i.ai = and i64 %i.ah, %.018.i.i
  %i.aj = or i64 %i.ai, %i.ag                     ; 2 uses
  %.not.i.i = icmp eq i64 %i.v, 0
  br i1 %.not.i.i, label %._crit_edge.loopexit.i.i8, label %.lr.ph.i.i7, !llvm.loop !20

ec_scalar_equal_vartime.exit:                     ; preds = %._crit_edge.loopexit.i.i8, %bb.c, %bb.b
  %i.ak = phi i32 [ 0, %bb.b ], [ 1, %bb.c ], [ %i.u, %._crit_edge.loopexit.i.i8 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #46
  br label %ec_GFp_simple_is_at_infinity.exit.thread

ec_GFp_simple_is_at_infinity.exit.thread:         ; preds = %bb.a, %ec_GFp_simple_is_at_infinity.exit, %ec_scalar_equal_vartime.exit
  %.0 = phi i32 [ %i.ak, %ec_scalar_equal_vartime.exit ], [ 0, %ec_GFp_simple_is_at_infinity.exit ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define hidden void @ec_GFp_mont_mul(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) #0 {
bb.a:
  %4 = alloca [32 x %struct.EC_JACOBIAN], align 16 ; 9 uses
  %5 = alloca %struct.EC_JACOBIAN, align 8        ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) %4, i8 0, i64 216, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 216 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(72) %2, i64 72, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 288
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(72) %i.c, i64 72, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 360
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(72) %i.e, i64 72, i1 false)
  br label %bb.e

bb.b:                                             ; preds = %bb.h
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8, !tbaa !93   ; 4 uses
  %i.i = icmp sgt i32 %i.h, 0
  br i1 %i.i, label %.lr.ph.i.i.i, label %bn_minimal_width.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.j = load ptr, ptr %i.f, align 8, !tbaa !92   ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.05.i.i.i = phi i32 [ %i.h, %.lr.ph.i.i.i ], [ %i.p, %bb.d ] ; 4 uses
  %i.k = zext nneg i32 %.05.i.i.i to i64
  %i.l = getelementptr [8 x i8], ptr %i.j, i64 %i.k
  %i.m = getelementptr i8, ptr %i.l, i64 -8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !80
  %i.o = icmp eq i64 %i.n, 0
  br i1 %i.o, label %bb.d, label %EC_GROUP_order_bits.exit

bb.d:                                             ; preds = %bb.c
  %i.p = add nsw i32 %.05.i.i.i, -1
  %i.q = icmp sgt i32 %.05.i.i.i, 1
  br i1 %i.q, label %bb.c, label %._crit_edge.thread, !llvm.loop !10

bn_minimal_width.exit.i.i:                        ; preds = %bb.b
  %i.r = icmp eq i32 %i.h, 0
  br i1 %i.r, label %._crit_edge.thread, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i: ; preds = %bn_minimal_width.exit.i.i
  %.pre.i.i = load ptr, ptr %i.f, align 8, !tbaa !92
  br label %EC_GROUP_order_bits.exit

EC_GROUP_order_bits.exit:                         ; preds = %bb.c, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i
  %i.s = phi ptr [ %.pre.i.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i ], [ %i.j, %bb.c ]
  %.0.lcssa.i9.i.i = phi i32 [ %i.h, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i ], [ %.05.i.i.i, %bb.c ]
  %i.t = add nsw i32 %.0.lcssa.i9.i.i, -1         ; 2 uses
  %i.u = shl nsw i32 %i.t, 6
  %i.v = sext i32 %i.t to i64
  %i.w = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !80   ; 3 uses
  %i.y = icmp ne i64 %i.x, 0
  %i.z = lshr i64 %i.x, 32                        ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.z, 0               ; 2 uses
  %i.aa = select i1 %.not.i.i.i, i32 0, i32 32
  %i.ab = zext i1 %i.y to i32
  %i.ac = select i1 %.not.i.i.i, i64 %i.x, i64 %i.z ; 2 uses
  %i.ad = lshr i64 %i.ac, 16                      ; 2 uses
  %.not52.i.i.i = icmp eq i64 %i.ad, 0            ; 2 uses
  %i.ae = select i1 %.not52.i.i.i, i32 0, i32 16
  %i.af = select i1 %.not52.i.i.i, i64 %i.ac, i64 %i.ad ; 2 uses
  %i.ag = lshr i64 %i.af, 8                       ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.ag, 0            ; 2 uses
  %i.ah = select i1 %.not53.i.i.i, i32 0, i32 8
  %i.ai = select i1 %.not53.i.i.i, i64 %i.af, i64 %i.ag ; 2 uses
  %i.aj = lshr i64 %i.ai, 4                       ; 2 uses
  %.not54.i.i.i = icmp eq i64 %i.aj, 0            ; 2 uses
  %i.ak = select i1 %.not54.i.i.i, i32 0, i32 4
  %i.al = select i1 %.not54.i.i.i, i64 %i.ai, i64 %i.aj ; 2 uses
  %i.am = lshr i64 %i.al, 2                       ; 2 uses
  %.not55.i.i.i = icmp eq i64 %i.am, 0            ; 2 uses
  %i.an = select i1 %.not55.i.i.i, i32 0, i32 2
  %i.ao = select i1 %.not55.i.i.i, i64 %i.al, i64 %i.am
  %i.ap = icmp samesign ugt i64 %i.ao, 1
  %.neg.i.i.i = zext i1 %i.ap to i32
  %i.aq = or disjoint i32 %i.u, %i.ab
  %i.ar = or disjoint i32 %i.aq, %i.aa
  %i.as = or disjoint i32 %i.ar, %i.ae
  %i.at = or disjoint i32 %i.as, %i.ah
  %i.au = or disjoint i32 %i.at, %i.ak
  %i.av = or disjoint i32 %i.au, %i.an
  %i.aw = add i32 %i.av, %.neg.i.i.i              ; 5 uses
  %.not82 = icmp eq i32 %i.aw, 0
  br i1 %.not82, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %EC_GROUP_order_bits.exit
  %.05678 = add i32 %i.aw, -1
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 328
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 72 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 144 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 144
  br label %.outer

.outer:                                           ; preds = %.thread, %.lr.ph
  %.05681.ph = phi i32 [ %.05697, %.thread ], [ %.05678, %.lr.ph ]
  %.056.in80.ph = phi i32 [ %.05681, %.thread ], [ %i.aw, %.lr.ph ]
  %.not58 = phi i1 [ true, %.thread ], [ false, %.lr.ph ] ; 3 uses
  br label %bb.i

bb.e:                                             ; preds = %bb.a, %bb.h
  %.076 = phi i64 [ 2, %bb.a ], [ %i.bh, %bb.h ]  ; 4 uses
  %i.bc = and i64 %.076, 1
  %.not59 = icmp eq i64 %i.bc, 0
  %i.bd = getelementptr inbounds nuw [216 x i8], ptr %4, i64 %.076 ; 3 uses
  br i1 %.not59, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.be = getelementptr i8, ptr %i.bd, i64 -216
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.a, ptr noundef %i.be)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.bf = lshr exact i64 %.076, 1
  %i.bg = getelementptr inbounds nuw [216 x i8], ptr %4, i64 %i.bf
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef nonnull %i.bd, ptr noundef nonnull %i.bg)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bh = add nuw nsw i64 %.076, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bh, 32
  br i1 %exitcond.not, label %bb.b, label %bb.e, !llvm.loop !1986

._crit_edge:                                      ; preds = %bb.t
  br i1 %.not58, label %._crit_edge.thread99, label %._crit_edge.thread

bb.i:                                             ; preds = %.outer, %bb.t
  %.05681 = phi i32 [ %.056, %bb.t ], [ %.05681.ph, %.outer ] ; 6 uses
  %.056.in80 = phi i32 [ %.05681, %bb.t ], [ %.056.in80.ph, %.outer ] ; 4 uses
  br i1 %.not58, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef %1, ptr noundef %1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bi = urem i32 %.05681, 5
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.l, label %bb.t

bb.l:                                             ; preds = %bb.k
  %i.bk = load i32, ptr %i.g, align 8, !tbaa !296
  %i.bl = sext i32 %i.bk to i64                   ; 5 uses
  %i.bm = add i32 %.056.in80, 3
  %i.bn = zext i32 %i.bm to i64                   ; 2 uses
  %i.bo = lshr i64 %i.bn, 6                       ; 2 uses
  %.not.i = icmp ult i64 %i.bo, %i.bl
  br i1 %.not.i, label %bb.m, label %bn_is_bit_set_words.exit

bb.m:                                             ; preds = %bb.l
  %i.bp = and i64 %i.bn, 63
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.bo
  %i.br = load i64, ptr %i.bq, align 8, !tbaa !80
  %i.bs = lshr i64 %i.br, %i.bp
  %i.bt = trunc i64 %i.bs to i32
  %i.bu = shl i32 %i.bt, 4
  %i.bv = and i32 %i.bu, 16
  br label %bn_is_bit_set_words.exit

bn_is_bit_set_words.exit:                         ; preds = %bb.l, %bb.m
  %.0.i = phi i32 [ %i.bv, %bb.m ], [ 0, %bb.l ]  ; 2 uses
  %i.bw = add i32 %.056.in80, 2
  %i.bx = zext i32 %i.bw to i64                   ; 2 uses
  %i.by = lshr i64 %i.bx, 6                       ; 2 uses
  %.not.i60 = icmp ult i64 %i.by, %i.bl
  br i1 %.not.i60, label %bb.n, label %bn_is_bit_set_words.exit62

bb.n:                                             ; preds = %bn_is_bit_set_words.exit
  %i.bz = and i64 %i.bx, 63
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.by
  %i.cb = load i64, ptr %i.ca, align 8, !tbaa !80
  %i.cc = lshr i64 %i.cb, %i.bz
  %i.cd = trunc i64 %i.cc to i32
  %i.ce = shl i32 %i.cd, 3
  %i.cf = and i32 %i.ce, 8
  %i.cg = or disjoint i32 %i.cf, %.0.i
  br label %bn_is_bit_set_words.exit62

bn_is_bit_set_words.exit62:                       ; preds = %bn_is_bit_set_words.exit, %bb.n
  %.0.i61 = phi i32 [ %i.cg, %bb.n ], [ %.0.i, %bn_is_bit_set_words.exit ] ; 2 uses
  %i.ch = add i32 %.056.in80, 1
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = lshr i64 %i.ci, 6                       ; 2 uses
  %.not.i63 = icmp ult i64 %i.cj, %i.bl
  br i1 %.not.i63, label %bb.o, label %bn_is_bit_set_words.exit65

bb.o:                                             ; preds = %bn_is_bit_set_words.exit62
  %i.ck = and i64 %i.ci, 63
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cj
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !80
  %i.cn = lshr i64 %i.cm, %i.ck
  %i.co = trunc i64 %i.cn to i32
  %i.cp = shl i32 %i.co, 2
  %i.cq = and i32 %i.cp, 4
  %i.cr = or disjoint i32 %i.cq, %.0.i61
  br label %bn_is_bit_set_words.exit65

bn_is_bit_set_words.exit65:                       ; preds = %bn_is_bit_set_words.exit62, %bb.o
  %.0.i64 = phi i32 [ %i.cr, %bb.o ], [ %.0.i61, %bn_is_bit_set_words.exit62 ] ; 2 uses
  %i.cs = zext i32 %.056.in80 to i64              ; 2 uses
  %i.ct = lshr i64 %i.cs, 6                       ; 2 uses
  %.not.i66 = icmp ult i64 %i.ct, %i.bl
  br i1 %.not.i66, label %bb.p, label %bn_is_bit_set_words.exit68

bb.p:                                             ; preds = %bn_is_bit_set_words.exit65
  %i.cu = and i64 %i.cs, 63
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ct
  %i.cw = load i64, ptr %i.cv, align 8, !tbaa !80
  %i.cx = lshr i64 %i.cw, %i.cu
  %i.cy = trunc i64 %i.cx to i32
  %i.cz = shl i32 %i.cy, 1
  %i.da = and i32 %i.cz, 2
  %i.db = or disjoint i32 %i.da, %.0.i64
  br label %bn_is_bit_set_words.exit68

bn_is_bit_set_words.exit68:                       ; preds = %bn_is_bit_set_words.exit65, %bb.p
  %.0.i67 = phi i32 [ %i.db, %bb.p ], [ %.0.i64, %bn_is_bit_set_words.exit65 ] ; 2 uses
  %i.dc = zext i32 %.05681 to i64                 ; 2 uses
  %i.dd = lshr i64 %i.dc, 6                       ; 2 uses
  %.not.i69 = icmp ult i64 %i.dd, %i.bl
  br i1 %.not.i69, label %bb.q, label %bn_is_bit_set_words.exit71

bb.q:                                             ; preds = %bn_is_bit_set_words.exit68
  %i.de = and i64 %i.dc, 63
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dd
  %i.dg = load i64, ptr %i.df, align 8, !tbaa !80
  %i.dh = lshr i64 %i.dg, %i.de
  %i.di = trunc i64 %i.dh to i32
  %i.dj = and i32 %i.di, 1
  %i.dk = or disjoint i32 %i.dj, %.0.i67
  br label %bn_is_bit_set_words.exit71

bn_is_bit_set_words.exit71:                       ; preds = %bn_is_bit_set_words.exit68, %bb.q
  %.0.i70 = phi i32 [ %i.dk, %bb.q ], [ %.0.i67, %bn_is_bit_set_words.exit68 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #46
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %5, i8 0, i64 216, i1 false)
  %i.dl = load i32, ptr %i.ax, align 8, !tbaa !277 ; 5 uses
  %i.dm = sext i32 %i.dl to i64                   ; 9 uses
  %.not.i.i.i73 = icmp eq i32 %i.dl, 0
  %i.dn = zext nneg i32 %.0.i70 to i64
  br i1 %.not.i.i.i73, label %.split, label %.lr.ph.i.i.i74.preheader

.lr.ph.i.i.i74.preheader:                         ; preds = %bn_is_bit_set_words.exit71
  %min.iters.check134 = icmp ult i32 %i.dl, 4
  %n.vec136 = and i64 %i.dm, -4                   ; 3 uses
  %cmp.n149 = icmp eq i64 %n.vec136, %i.dm
  %min.iters.check116 = icmp ult i32 %i.dl, 4
  %n.vec118 = and i64 %i.dm, -4                   ; 3 uses
  %cmp.n131 = icmp eq i64 %n.vec118, %i.dm
  %min.iters.check = icmp ult i32 %i.dl, 4
  %n.vec = and i64 %i.dm, -4                      ; 3 uses
  %cmp.n = icmp eq i64 %n.vec, %i.dm
  br label %.lr.ph.i.i.i74

.split:                                           ; preds = %ec_point_select.exit.loopexit, %bn_is_bit_set_words.exit71
  br i1 %.not58, label %bb.s, label %bb.r

.lr.ph.i.i.i74:                                   ; preds = %.lr.ph.i.i.i74.preheader, %ec_point_select.exit.loopexit
  %.05577 = phi i64 [ %i.ga, %ec_point_select.exit.loopexit ], [ 0, %.lr.ph.i.i.i74.preheader ] ; 3 uses
  %i.do = getelementptr inbounds nuw [216 x i8], ptr %4, i64 %.05577 ; 4 uses
  %i.dp = icmp eq i64 %.05577, %i.dn
  %.neg.i.i.i72 = sext i1 %i.dp to i64            ; 2 uses
  %i.dq = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %.neg.i.i.i72) #47 ; 6 uses
  %i.dr = xor i64 %.neg.i.i.i72, -1
  %i.ds = call i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 %i.dr) #47 ; 6 uses
  br i1 %min.iters.check134, label %scalar.ph133.preheader, label %vector.ph135

vector.ph135:                                     ; preds = %.lr.ph.i.i.i74
  %broadcast.splatinsert137 = insertelement <2 x i64> poison, i64 %i.dq, i64 0
  %broadcast.splat138 = shufflevector <2 x i64> %broadcast.splatinsert137, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert139 = insertelement <2 x i64> poison, i64 %i.ds, i64 0
  %broadcast.splat140 = shufflevector <2 x i64> %broadcast.splatinsert139, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body141

vector.body141:                                   ; preds = %vector.body141, %vector.ph135
  %index142 = phi i64 [ 0, %vector.ph135 ], [ %index.next147, %vector.body141 ] ; 3 uses
  %i.dt = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %index142 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  %wide.load143 = load <2 x i64>, ptr %i.dt, align 8, !tbaa !80
  %wide.load144 = load <2 x i64>, ptr %i.du, align 8, !tbaa !80
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %index142 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 16 ; 2 uses
  %wide.load145 = load <2 x i64>, ptr %i.dv, align 8, !tbaa !80
  %wide.load146 = load <2 x i64>, ptr %i.dw, align 8, !tbaa !80
  %i.dx = and <2 x i64> %wide.load143, %broadcast.splat138
  %i.dy = and <2 x i64> %wide.load144, %broadcast.splat138
  %i.dz = and <2 x i64> %wide.load145, %broadcast.splat140
  %i.ea = and <2 x i64> %wide.load146, %broadcast.splat140
  %i.eb = or <2 x i64> %i.dz, %i.dx
  %i.ec = or <2 x i64> %i.ea, %i.dy
  store <2 x i64> %i.eb, ptr %i.dv, align 8, !tbaa !80
  store <2 x i64> %i.ec, ptr %i.dw, align 8, !tbaa !80
  %index.next147 = add nuw i64 %index142, 4       ; 2 uses
  %i.ed = icmp eq i64 %index.next147, %n.vec136
  br i1 %i.ed, label %middle.block148, label %vector.body141, !llvm.loop !1987

middle.block148:                                  ; preds = %vector.body141
  br i1 %cmp.n149, label %.lr.ph.i.i15.i, label %scalar.ph133.preheader

scalar.ph133.preheader:                           ; preds = %.lr.ph.i.i.i74, %middle.block148
  %.09.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i74 ], [ %n.vec136, %middle.block148 ]
  br label %scalar.ph133

scalar.ph133:                                     ; preds = %scalar.ph133.preheader, %scalar.ph133
  %.09.i.i.i = phi i64 [ %i.el, %scalar.ph133 ], [ %.09.i.i.i.ph, %scalar.ph133.preheader ] ; 3 uses
  %i.ee = getelementptr inbounds nuw [8 x i8], ptr %i.do, i64 %.09.i.i.i
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !80
  %i.eg = getelementptr inbounds nuw [8 x i8], ptr %5, i64 %.09.i.i.i ; 2 uses
  %i.eh = load i64, ptr %i.eg, align 8, !tbaa !80
  %i.ei = and i64 %i.ef, %i.dq
  %i.ej = and i64 %i.eh, %i.ds
  %i.ek = or i64 %i.ej, %i.ei
  store i64 %i.ek, ptr %i.eg, align 8, !tbaa !80
  %i.el = add nuw nsw i64 %.09.i.i.i, 1           ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.el, %i.dm
  br i1 %exitcond.not.i.i.i, label %.lr.ph.i.i15.i, label %scalar.ph133, !llvm.loop !1988

.lr.ph.i.i15.i:                                   ; preds = %scalar.ph133, %middle.block148
  %i.em = getelementptr inbounds nuw i8, ptr %i.do, i64 72 ; 2 uses
  br i1 %min.iters.check116, label %scalar.ph115.preheader, label %vector.ph117

vector.ph117:                                     ; preds = %.lr.ph.i.i15.i
  %broadcast.splatinsert119 = insertelement <2 x i64> poison, i64 %i.dq, i64 0
  %broadcast.splat120 = shufflevector <2 x i64> %broadcast.splatinsert119, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert121 = insertelement <2 x i64> poison, i64 %i.ds, i64 0
  %broadcast.splat122 = shufflevector <2 x i64> %broadcast.splatinsert121, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body123

vector.body123:                                   ; preds = %vector.body123, %vector.ph117
  %index124 = phi i64 [ 0, %vector.ph117 ], [ %index.next129, %vector.body123 ] ; 3 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %index124 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  %wide.load125 = load <2 x i64>, ptr %i.en, align 8, !tbaa !80
  %wide.load126 = load <2 x i64>, ptr %i.eo, align 8, !tbaa !80
  %i.ep = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index124 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16 ; 2 uses
  %wide.load127 = load <2 x i64>, ptr %i.ep, align 8, !tbaa !80
  %wide.load128 = load <2 x i64>, ptr %i.eq, align 8, !tbaa !80
  %i.er = and <2 x i64> %wide.load125, %broadcast.splat120
  %i.es = and <2 x i64> %wide.load126, %broadcast.splat120
  %i.et = and <2 x i64> %wide.load127, %broadcast.splat122
  %i.eu = and <2 x i64> %wide.load128, %broadcast.splat122
  %i.ev = or <2 x i64> %i.et, %i.er
  %i.ew = or <2 x i64> %i.eu, %i.es
  store <2 x i64> %i.ev, ptr %i.ep, align 8, !tbaa !80
  store <2 x i64> %i.ew, ptr %i.eq, align 8, !tbaa !80
  %index.next129 = add nuw i64 %index124, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next129, %n.vec118
  br i1 %i.ex, label %middle.block130, label %vector.body123, !llvm.loop !1989

middle.block130:                                  ; preds = %vector.body123
  br i1 %cmp.n131, label %.lr.ph.i.i20.i, label %scalar.ph115.preheader

scalar.ph115.preheader:                           ; preds = %.lr.ph.i.i15.i, %middle.block130
  %.09.i.i16.i.ph = phi i64 [ 0, %.lr.ph.i.i15.i ], [ %n.vec118, %middle.block130 ]
  br label %scalar.ph115

scalar.ph115:                                     ; preds = %scalar.ph115.preheader, %scalar.ph115
  %.09.i.i16.i = phi i64 [ %i.ff, %scalar.ph115 ], [ %.09.i.i16.i.ph, %scalar.ph115.preheader ] ; 3 uses
  %i.ey = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.09.i.i16.i
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !80
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.09.i.i16.i ; 2 uses
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !80
  %i.fc = and i64 %i.ez, %i.dq
  %i.fd = and i64 %i.fb, %i.ds
  %i.fe = or i64 %i.fd, %i.fc
  store i64 %i.fe, ptr %i.fa, align 8, !tbaa !80
  %i.ff = add nuw nsw i64 %.09.i.i16.i, 1         ; 2 uses
  %exitcond.not.i.i17.i = icmp eq i64 %i.ff, %i.dm
  br i1 %exitcond.not.i.i17.i, label %.lr.ph.i.i20.i, label %scalar.ph115, !llvm.loop !1990

.lr.ph.i.i20.i:                                   ; preds = %scalar.ph115, %middle.block130
  %i.fg = getelementptr inbounds nuw i8, ptr %i.do, i64 144 ; 2 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i20.i
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.dq, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert110 = insertelement <2 x i64> poison, i64 %i.ds, i64 0
  %broadcast.splat111 = shufflevector <2 x i64> %broadcast.splatinsert110, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %index ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 16
  %wide.load = load <2 x i64>, ptr %i.fh, align 8, !tbaa !80
  %wide.load112 = load <2 x i64>, ptr %i.fi, align 8, !tbaa !80
  %i.fj = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %index ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 16 ; 2 uses
  %wide.load113 = load <2 x i64>, ptr %i.fj, align 8, !tbaa !80
  %wide.load114 = load <2 x i64>, ptr %i.fk, align 8, !tbaa !80
  %i.fl = and <2 x i64> %wide.load, %broadcast.splat
  %i.fm = and <2 x i64> %wide.load112, %broadcast.splat
  %i.fn = and <2 x i64> %wide.load113, %broadcast.splat111
  %i.fo = and <2 x i64> %wide.load114, %broadcast.splat111
  %i.fp = or <2 x i64> %i.fn, %i.fl
  %i.fq = or <2 x i64> %i.fo, %i.fm
  store <2 x i64> %i.fp, ptr %i.fj, align 8, !tbaa !80
  store <2 x i64> %i.fq, ptr %i.fk, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fr = icmp eq i64 %index.next, %n.vec
  br i1 %i.fr, label %middle.block, label %vector.body, !llvm.loop !1991

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %ec_point_select.exit.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i20.i, %middle.block
  %.09.i.i21.i.ph = phi i64 [ 0, %.lr.ph.i.i20.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %.09.i.i21.i = phi i64 [ %i.fz, %scalar.ph ], [ %.09.i.i21.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.fs = getelementptr inbounds nuw [8 x i8], ptr %i.fg, i64 %.09.i.i21.i
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !80
  %i.fu = getelementptr inbounds nuw [8 x i8], ptr %i.az, i64 %.09.i.i21.i ; 2 uses
  %i.fv = load i64, ptr %i.fu, align 8, !tbaa !80
  %i.fw = and i64 %i.ft, %i.dq
  %i.fx = and i64 %i.fv, %i.ds
  %i.fy = or i64 %i.fx, %i.fw
  store i64 %i.fy, ptr %i.fu, align 8, !tbaa !80
  %i.fz = add nuw nsw i64 %.09.i.i21.i, 1         ; 2 uses
  %exitcond.not.i.i22.i = icmp eq i64 %i.fz, %i.dm
  br i1 %exitcond.not.i.i22.i, label %ec_point_select.exit.loopexit, label %scalar.ph, !llvm.loop !1992

ec_point_select.exit.loopexit:                    ; preds = %scalar.ph, %middle.block
  %i.ga = add nuw nsw i64 %.05577, 1              ; 2 uses
  %exitcond84.not = icmp eq i64 %i.ga, 32
  br i1 %exitcond84.not, label %.split, label %.lr.ph.i.i.i74, !llvm.loop !1993

bb.r:                                             ; preds = %.split
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %1, ptr noundef nonnull readonly align 8 dereferenceable(72) %5, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.ba, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ay, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.bb, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.az, i64 72, i1 false)
  br label %.thread

bb.s:                                             ; preds = %.split
  call void @ec_GFp_mont_add(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %1, ptr noundef nonnull %5)
  br label %.thread

bb.t:                                             ; preds = %bb.k
  %.056 = add i32 %.05681, -1                     ; 2 uses
  %i.gb = icmp ult i32 %.056, %i.aw
  br i1 %i.gb, label %bb.i, label %._crit_edge, !llvm.loop !1994

.thread:                                          ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #46
  %.05697 = add i32 %.05681, -1                   ; 2 uses
  %i.gc = icmp ult i32 %.05697, %i.aw
  br i1 %i.gc, label %.outer, label %._crit_edge.thread99, !llvm.loop !1994

._crit_edge.thread:                               ; preds = %bb.d, %bn_minimal_width.exit.i.i, %EC_GROUP_order_bits.exit, %._crit_edge
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(216) %1, i8 0, i64 216, i1 false)
  br label %._crit_edge.thread99

._crit_edge.thread99:                             ; preds = %.thread, %._crit_edge.thread, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #46
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @ec_GFp_mont_mul_base(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @ec_GFp_mont_mul(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %i.a, ptr noundef %2)
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @ec_GFp_mont_mul_batch(ptr noundef %0, ptr noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, ptr nofree noundef readonly captures(address_is_null) %6, ptr nofree noundef readonly captures(none) %7) #0 {
bb.a:
  %8 = alloca [3 x [17 x %struct.EC_JACOBIAN]], align 16 ; 8 uses
  %9 = alloca %struct.EC_JACOBIAN, align 8        ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #46
  call fastcc void @ec_GFp_mont_batch_precomp(ptr noundef %0, ptr noundef %8, ptr noundef %2)
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 3672 ; 2 uses
  call fastcc void @ec_GFp_mont_batch_precomp(ptr noundef %0, ptr noundef %i.a, ptr noundef %4)
  %.not = icmp eq ptr %6, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 7344
  call fastcc void @ec_GFp_mont_batch_precomp(ptr noundef %0, ptr noundef %i.b, ptr noundef nonnull %6)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.e = load i32, ptr %i.d, align 8, !tbaa !93   ; 4 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph.i.i.i, label %bn_minimal_width.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !92   ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %.05.i.i.i = phi i32 [ %i.e, %.lr.ph.i.i.i ], [ %i.m, %bb.e ] ; 4 uses
  %i.h = zext nneg i32 %.05.i.i.i to i64
  %i.i = getelementptr [8 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr i8, ptr %i.i, i64 -8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !80
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.e, label %bn_minimal_width.exit.thread7.i.i

bb.e:                                             ; preds = %bb.d
  %i.m = add nsw i32 %.05.i.i.i, -1
  %i.n = icmp sgt i32 %.05.i.i.i, 1
  br i1 %i.n, label %bb.d, label %EC_GROUP_order_bits.exit, !llvm.loop !10

bn_minimal_width.exit.i.i:                        ; preds = %bb.c
  %i.o = icmp eq i32 %i.e, 0
  br i1 %i.o, label %EC_GROUP_order_bits.exit, label %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i

bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i: ; preds = %bn_minimal_width.exit.i.i
  %.pre.i.i = load ptr, ptr %i.c, align 8, !tbaa !92
  br label %bn_minimal_width.exit.thread7.i.i

bn_minimal_width.exit.thread7.i.i:                ; preds = %bb.d, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i
  %i.p = phi ptr [ %.pre.i.i, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i ], [ %i.g, %bb.d ]
  %.0.lcssa.i9.i.i = phi i32 [ %i.e, %bn_minimal_width.exit.bn_minimal_width.exit.thread7_crit_edge.i.i ], [ %.05.i.i.i, %bb.d ]
  %i.q = add nsw i32 %.0.lcssa.i9.i.i, -1         ; 2 uses
  %i.r = shl nsw i32 %i.q, 6
  %i.s = sext i32 %i.q to i64
  %i.t = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.s
  %i.u = load i64, ptr %i.t, align 8, !tbaa !80   ; 3 uses
  %i.v = icmp ne i64 %i.u, 0
  %i.w = lshr i64 %i.u, 32                        ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.w, 0               ; 2 uses
  %i.x = select i1 %.not.i.i.i, i32 0, i32 32
  %i.y = zext i1 %i.v to i32
  %i.z = select i1 %.not.i.i.i, i64 %i.u, i64 %i.w ; 2 uses
  %i.aa = lshr i64 %i.z, 16                       ; 2 uses
  %.not52.i.i.i = icmp eq i64 %i.aa, 0            ; 2 uses
  %i.ab = select i1 %.not52.i.i.i, i32 0, i32 16
  %i.ac = select i1 %.not52.i.i.i, i64 %i.z, i64 %i.aa ; 2 uses
  %i.ad = lshr i64 %i.ac, 8                       ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.ad, 0            ; 2 uses
  %i.ae = select i1 %.not53.i.i.i, i32 0, i32 8
  %i.af = select i1 %.not53.i.i.i, i64 %i.ac, i64 %i.ad ; 2 uses
  %i.ag = lshr i64 %i.af, 4                       ; 2 uses
  %.not54.i.i.i = icmp eq i64 %i.ag, 0            ; 2 uses
  %i.ah = select i1 %.not54.i.i.i, i32 0, i32 4
  %i.ai = select i1 %.not54.i.i.i, i64 %i.af, i64 %i.ag ; 2 uses
  %i.aj = lshr i64 %i.ai, 2                       ; 2 uses
  %.not55.i.i.i = icmp eq i64 %i.aj, 0            ; 2 uses
  %i.ak = select i1 %.not55.i.i.i, i32 0, i32 2
  %i.al = select i1 %.not55.i.i.i, i64 %i.ai, i64 %i.aj
  %i.am = icmp samesign ugt i64 %i.al, 1
  %.neg.i.i.i = zext i1 %i.am to i32
  %i.an = or disjoint i32 %i.r, %i.y
  %i.ao = or disjoint i32 %i.an, %i.x
  %i.ap = or disjoint i32 %i.ao, %i.ab
  %i.aq = or disjoint i32 %i.ap, %i.ae
  %i.ar = or disjoint i32 %i.aq, %i.ah
  %i.as = or disjoint i32 %i.ar, %i.ak
  %i.at = add i32 %i.as, %.neg.i.i.i
  br label %EC_GROUP_order_bits.exit

EC_GROUP_order_bits.exit:                         ; preds = %bb.e, %bn_minimal_width.exit.i.i, %bn_minimal_width.exit.thread7.i.i
  %.0.i.i = phi i32 [ %i.at, %bn_minimal_width.exit.thread7.i.i ], [ 0, %bn_minimal_width.exit.i.i ], [ 0, %bb.e ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.av = getelementptr inbounds nuw i8, ptr %9, i64 72
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ax = getelementptr inbounds nuw i8, ptr %9, i64 144
  %i.ay = getelementptr inbounds nuw i8, ptr %8, i64 7344
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %EC_GROUP_order_bits.exit
  %.048 = phi i32 [ %.0.i.i, %EC_GROUP_order_bits.exit ], [ %.048.be, %.backedge.backedge ] ; 8 uses
  %.not44 = phi i1 [ false, %EC_GROUP_order_bits.exit ], [ %.not44.be, %.backedge.backedge ]
  br i1 %.not44, label %bb.f, label %.thread

bb.f:                                             ; preds = %.backedge
  call void @ec_GFp_mont_dbl(ptr noundef %0, ptr noundef %1, ptr noundef %1)
  %i.az = urem i32 %.048, 5
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.h, label %bb.l

.thread:                                          ; preds = %.backedge
  %i.bb = urem i32 %.048, 5
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %.thread53

bb.g:                                             ; preds = %.thread
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  call fastcc void @ec_GFp_mont_batch_get_window(ptr noundef %0, ptr noundef %9, ptr noundef %8, ptr noundef %3, i32 noundef %.048)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %1, ptr noundef nonnull readonly align 8 dereferenceable(72) %9, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.au, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.av, i64 72, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.ax, i64 72, i1 false)
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #46
  call fastcc void @ec_GFp_mont_batch_get_window(ptr noundef %0, ptr noundef %9, ptr noundef %8, ptr noundef %3, i32 noundef %.048)
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef nonnull %9)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call fastcc void @ec_GFp_mont_batch_get_window(ptr noundef %0, ptr noundef %9, ptr noundef %i.a, ptr noundef %5, i32 noundef %.048)
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef nonnull %9)
  br i1 %.not, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call fastcc void @ec_GFp_mont_batch_get_window(ptr noundef %0, ptr noundef %9, ptr noundef %i.ay, ptr noundef %7, i32 noundef %.048)
  call void @ec_GFp_mont_add(ptr noundef %0, ptr noundef %1, ptr noundef %1, ptr noundef nonnull %9)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #46
  br label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.k
  %i.bd = add i32 %.048, -1                       ; 2 uses
  %.not42 = icmp ugt i32 %i.bd, %.0.i.i
  br i1 %.not42, label %.loopexit, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.l, %.thread53
  %.048.be = phi i32 [ %i.bd, %bb.l ], [ %i.be, %.thread53 ]
  %.not44.be = phi i1 [ true, %bb.l ], [ false, %.thread53 ]
  br label %.backedge, !llvm.loop !1995

.thread53:                                        ; preds = %.thread
  %i.be = add i32 %.048, -1                       ; 2 uses
  %.not4256 = icmp ugt i32 %i.be, %.0.i.i
  br i1 %.not4256, label %.thread58, label %.backedge.backedge

.thread58:                                        ; preds = %.thread53
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(216) %1, i8 0, i64 216, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.l, %.thread58
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #46
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @ec_GFp_mont_batch_precomp(ptr noundef %0, ptr noundef nonnull initializes((0, 432)) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(216) %1, i8 0, i64 216, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 216 ; 9 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.a, ptr noundef nonnull readonly align 1 dereferenceable(72) %2, i64 72, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(72) %i.c, i64 72, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 144
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(72) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(72) %i.e, i64 72, i1 false)
end_hunk_0
