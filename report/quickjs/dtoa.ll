Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/dtoa?download=true
inline.NumInlined: 95
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 21
begin_hunk_0_@js_dtoa:bb.a
  %i.ka = zext nneg i32 %i.jy to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.jx, i8 48, i64 %i.ka, i1 false), !tbaa !15
  %i.kb = xor i32 %.3217, -1
  %i.kc = add i32 %.2220, %i.kb
  %i.kd = zext i32 %i.kc to i64
  %i.ke = getelementptr i8, ptr %.2, i64 %i.jw
  %i.kf = getelementptr i8, ptr %i.ke, i64 %i.kd
  %scevgep = getelementptr i8, ptr %i.kf, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph274.preheader, %bb.bm, %bb.aw, %u32toa.exit, %._crit_edge280, %bb.e, %bb.f, %u64toa_radix.exit
  %.7 = phi ptr [ %i.n, %bb.e ], [ %i.o, %bb.f ], [ %i.jk, %u32toa.exit ], [ %i.ju, %._crit_edge280 ], [ %i.hk, %bb.aw ], [ %i.cm, %u64toa_radix.exit ], [ %i.jx, %bb.bm ], [ %scevgep, %.lr.ph274.preheader ] ; 2 uses
  store i8 0, ptr %.7, align 1, !tbaa !15
  %i.kg = ptrtoint ptr %.7 to i64
  %i.kh = ptrtoint ptr %0 to i64
  %i.ki = sub i64 %i.kg, %i.kh
  %i.kj = trunc i64 %i.ki to i32
  ret i32 %i.kj
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i64 0, -9223372036854775808) i64 @mul_pow_round_to_d(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef range(i32 0, 32) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @mul_pow(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext false, i32 noundef 55)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18
  %i.d = icmp eq i32 %i.c, 0
  %.pre.i = load i32, ptr %1, align 4, !tbaa !18  ; 3 uses
  %i.e = icmp eq i32 %.pre.i, 1
  %or.cond.i = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond.i, label %round_to_d.exit, label %mpb_floor_log2.exit.i

mpb_floor_log2.exit.i:                            ; preds = %bb.a
  %i.f = sext i32 %.pre.i to i64
  %i.g = getelementptr [4 x i8], ptr %1, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !18   ; 2 uses
  %i.i = icmp eq i32 %i.h, 0
  %i.j = shl nsw i32 %.pre.i, 5
  %i.k = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.h, i1 true)
  %i.l = sub i32 %i.j, %i.k
  %.0.i.i = select i1 %i.i, i32 0, i32 %i.l       ; 2 uses
  %i.m = sub nsw i32 %.0.i.i, %i.a                ; 2 uses
  %i.n = tail call i32 @llvm.smin.i32(i32 %i.m, i32 -1021) ; 2 uses
  %.0.neg.i = add i32 %.0.i.i, -1074
  %i.o = sub i32 %.0.neg.i, %i.n
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %1, i32 noundef %i.o, i32 noundef 0)
  %i.p = load i32, ptr %1, align 4, !tbaa !18
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %mpb_floor_log2.exit.i
  %i.r = load i32, ptr %i.b, align 4, !tbaa !18
  %i.s = zext i32 %i.r to i64
  br label %mpb_get_u64.exit.i

bb.c:                                             ; preds = %mpb_floor_log2.exit.i
  %i.t = load i64, ptr %i.b, align 4
  br label %mpb_get_u64.exit.i

mpb_get_u64.exit.i:                               ; preds = %bb.c, %bb.b
  %.0.i29.i = phi i64 [ %i.s, %bb.b ], [ %i.t, %bb.c ]
  %i.u = sub nuw nsw i32 -1021, %i.n
  %i.v = zext nneg i32 %i.u to i64
  %i.w = shl i64 %.0.i29.i, %i.v                  ; 2 uses
  %i.x = icmp ugt i64 %i.w, 9007199254740991      ; 2 uses
  %i.y = zext i1 %i.x to i32
  %.024.i = add nsw i32 %i.m, %i.y
  %i.z = zext i1 %i.x to i64
  %.023.i = lshr i64 %i.w, %i.z
  br label %round_to_d.exit

round_to_d.exit:                                  ; preds = %bb.a, %mpb_get_u64.exit.i
  %.125.i = phi i32 [ %.024.i, %mpb_get_u64.exit.i ], [ 0, %bb.a ]
  %.1.i = phi i64 [ %.023.i, %mpb_get_u64.exit.i ], [ 0, %bb.a ]
  store i32 %.125.i, ptr %0, align 4, !tbaa !18
  ret i64 %.1.i
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @output_digits(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.b = icmp samesign ugt i32 %i.a, 1
  %i.c = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true) ; 3 uses
  %i.d = xor i32 %i.c, 31                         ; 4 uses
  %i.e = add nsw i32 %2, -2
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds i8, ptr @digits_per_limb_table, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15
  %i.i = zext i8 %i.h to i32                      ; 4 uses
  %.not70 = icmp eq i32 %i.c, 31
  %.not = select i1 %i.b, i1 true, i1 %.not70
  br i1 %.not, label %.preheader, label %.preheader66

.preheader66:                                     ; preds = %bb.a
  %i.j = lshr i32 2147483647, %i.c                ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = mul nuw nsw i32 %i.d, %i.i
  br label %bb.d

.preheader:                                       ; preds = %bb.a
  %.not5268 = icmp eq i32 %3, 0
  br i1 %.not5268, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.n = getelementptr inbounds [4 x i8], ptr @radix_base_table, i64 %i.f ; 2 uses
  %i.o = icmp eq i32 %2, 10
  br i1 %i.o, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %limb_to_a.exit.us
  %.169.us = phi i32 [ %i.p, %limb_to_a.exit.us ], [ %3, %.lr.ph ] ; 2 uses
  %..i54.us = tail call noundef i32 @llvm.smin.i32(i32 %.169.us, i32 %i.i) ; 2 uses
  %i.p = sub nsw i32 %.169.us, %..i54.us          ; 3 uses
  %i.q = load i32, ptr %1, align 4, !tbaa !18     ; 3 uses
  %.013.i55.us = add i32 %i.q, -1                 ; 3 uses
  %i.r = icmp sgt i32 %.013.i55.us, -1
  br i1 %i.r, label %.lr.ph.i56.us, label %mpb_renorm.exit.us

.lr.ph.i56.us:                                    ; preds = %.lr.ph.split.us
  %i.s = load i32, ptr %i.n, align 4, !tbaa !18
  %i.t = zext i32 %i.s to i64                     ; 6 uses
  %i.u = zext nneg i32 %.013.i55.us to i64        ; 4 uses
  %i.v = add nuw nsw i64 %i.u, 1                  ; 2 uses
  %i.w = icmp eq i32 %.013.i55.us, 0
  br i1 %i.w, label %.epil.preheader98, label %.lr.ph.i56.us.new

.lr.ph.i56.us.new:                                ; preds = %.lr.ph.i56.us
  %unroll_iter103 = and i64 %i.v, 4294967294
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i56.us.new
  %indvars.iv.i57.us = phi i64 [ %i.u, %.lr.ph.i56.us.new ], [ %indvars.iv.next.i58.us.1, %bb.b ] ; 3 uses
  %.01214.i.us = phi i64 [ 0, %.lr.ph.i56.us.new ], [ %i.am, %bb.b ]
  %niter104 = phi i64 [ 0, %.lr.ph.i56.us.new ], [ %niter104.next.1, %bb.b ]
  %i.x = shl nuw i64 %.01214.i.us, 32
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i57.us ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !18
  %i.aa = zext i32 %i.z to i64
  %i.ab = or disjoint i64 %i.x, %i.aa             ; 2 uses
  %i.ac = udiv i64 %i.ab, %i.t
  %i.ad = trunc i64 %i.ac to i32
  store i32 %i.ad, ptr %i.y, align 4, !tbaa !18
  %i.ae = urem i64 %i.ab, %i.t
  %i.af = shl nuw i64 %i.ae, 32
  %i.ag = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.i57.us ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !18
  %i.ai = zext i32 %i.ah to i64
  %i.aj = or disjoint i64 %i.af, %i.ai            ; 2 uses
  %i.ak = udiv i64 %i.aj, %i.t
  %i.al = trunc i64 %i.ak to i32
  store i32 %i.al, ptr %i.ag, align 4, !tbaa !18
  %i.am = urem i64 %i.aj, %i.t                    ; 3 uses
  %indvars.iv.next.i58.us.1 = add nsw i64 %indvars.iv.i57.us, -2 ; 2 uses
  %niter104.next.1 = add i64 %niter104, 2         ; 2 uses
  %niter104.ncmp.1 = icmp eq i64 %niter104.next.1, %unroll_iter103
  br i1 %niter104.ncmp.1, label %mp_div1.exit.us.unr-lcssa, label %bb.b, !llvm.loop !21

mp_div1.exit.us.unr-lcssa:                        ; preds = %bb.b
  %i.an = and i64 %i.u, 1
  %lcmp.mod100.not.not = icmp eq i64 %i.an, 0
  br i1 %lcmp.mod100.not.not, label %.epil.preheader98, label %mp_div1.exit.us

.epil.preheader98:                                ; preds = %mp_div1.exit.us.unr-lcssa, %.lr.ph.i56.us
  %indvars.iv.i57.us.epil.init = phi i64 [ %i.u, %.lr.ph.i56.us ], [ %indvars.iv.next.i58.us.1, %mp_div1.exit.us.unr-lcssa ]
  %.01214.i.us.epil.init = phi i64 [ 0, %.lr.ph.i56.us ], [ %i.am, %mp_div1.exit.us.unr-lcssa ]
  %lcmp.mod102 = trunc i64 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod102)
  %i.ao = shl nuw i64 %.01214.i.us.epil.init, 32
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i57.us.epil.init ; 2 uses
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !18
  %i.ar = zext i32 %i.aq to i64
  %i.as = or disjoint i64 %i.ao, %i.ar            ; 2 uses
  %i.at = udiv i64 %i.as, %i.t
  %i.au = trunc i64 %i.at to i32
  store i32 %i.au, ptr %i.ap, align 4, !tbaa !18
  %i.av = urem i64 %i.as, %i.t
  br label %mp_div1.exit.us

mp_div1.exit.us:                                  ; preds = %mp_div1.exit.us.unr-lcssa, %.epil.preheader98
  %.lcssa = phi i64 [ %i.am, %mp_div1.exit.us.unr-lcssa ], [ %i.av, %.epil.preheader98 ]
  %i.aw = trunc nuw i64 %.lcssa to i32            ; 3 uses
  %i.ax = icmp sgt i32 %i.q, 1
  br i1 %i.ax, label %.lr.ph.i59.us, label %mpb_renorm.exit.us

.lr.ph.i59.us:                                    ; preds = %mp_div1.exit.us, %bb.c
  %i.ay = phi i32 [ %i.bd, %bb.c ], [ %i.q, %mp_div1.exit.us ] ; 3 uses
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr [4 x i8], ptr %1, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !18
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.c, label %mpb_renorm.exit.us

bb.c:                                             ; preds = %.lr.ph.i59.us
  %i.bd = add nsw i32 %i.ay, -1                   ; 2 uses
  store i32 %i.bd, ptr %1, align 4, !tbaa !18
  %i.be = icmp sgt i32 %i.ay, 2
  br i1 %i.be, label %.lr.ph.i59.us, label %mpb_renorm.exit.us, !llvm.loop !4

mpb_renorm.exit.us:                               ; preds = %.lr.ph.i59.us, %bb.c, %mp_div1.exit.us, %.lr.ph.split.us
  %.012.lcssa.i64.us = phi i32 [ 0, %.lr.ph.split.us ], [ %i.aw, %mp_div1.exit.us ], [ %i.aw, %bb.c ], [ %i.aw, %.lr.ph.i59.us ] ; 3 uses
  %i.bf = zext nneg i32 %i.p to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf ; 3 uses
  %.08.i.i.us = add i32 %..i54.us, -1             ; 3 uses
  %i.bh = icmp sgt i32 %.08.i.i.us, -1
  br i1 %i.bh, label %.lr.ph.preheader.i.i.us, label %limb_to_a.exit.us

.lr.ph.preheader.i.i.us:                          ; preds = %mpb_renorm.exit.us
  %5 = zext nneg i32 %.08.i.i.us to i64           ; 4 uses
  %6 = and i64 %5, 1
  %lcmp.mod106.not.not = icmp eq i64 %6, 0
  br i1 %lcmp.mod106.not.not, label %.lr.ph.preheader.i.i.us.a, label %.lr.ph.i.i.us.prol.loopexit

.lr.ph.preheader.i.i.us.a:                        ; preds = %.lr.ph.preheader.i.i.us
  %7 = urem i32 %.012.lcssa.i64.us, 10
  %8 = udiv i32 %.012.lcssa.i64.us, 10
  %9 = trunc nuw nsw i32 %7 to i8
  %10 = or disjoint i8 %9, 48
  %11 = getelementptr inbounds nuw i8, ptr %i.bg, i64 %5
  store i8 %10, ptr %11, align 1, !tbaa !15
  %indvars.iv.next.i.i.us.prol = add nsw i64 %5, -1
  br label %.lr.ph.i.i.us.prol.loopexit

.lr.ph.i.i.us.prol.loopexit:                      ; preds = %.lr.ph.preheader.i.i.us.a, %.lr.ph.preheader.i.i.us
  %indvars.iv.i.i.us.unr = phi i64 [ %5, %.lr.ph.preheader.i.i.us ], [ %indvars.iv.next.i.i.us.prol, %.lr.ph.preheader.i.i.us.a ]
  %.079.i.i.us.unr = phi i32 [ %.012.lcssa.i64.us, %.lr.ph.preheader.i.i.us ], [ %8, %.lr.ph.preheader.i.i.us.a ]
  %12 = icmp eq i32 %.08.i.i.us, 0
  br i1 %12, label %limb_to_a.exit.us, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us.prol.loopexit, %.lr.ph.i.i.us
  %indvars.iv.i.i.us = phi i64 [ %indvars.iv.next.i.i.us.a, %.lr.ph.i.i.us ], [ %indvars.iv.i.i.us.unr, %.lr.ph.i.i.us.prol.loopexit ] ; 3 uses
  %.079.i.i.us = phi i32 [ %i.bj, %.lr.ph.i.i.us ], [ %.079.i.i.us.unr, %.lr.ph.i.i.us.prol.loopexit ] ; 3 uses
  %13 = urem i32 %.079.i.i.us, 10
  %14 = udiv i32 %.079.i.i.us, 10
  %15 = trunc nuw nsw i32 %13 to i8
  %16 = or disjoint i8 %15, 48
  %17 = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.i.i.us
  store i8 %16, ptr %17, align 1, !tbaa !15
  %indvars.iv.next.i.i.us = add nsw i64 %indvars.iv.i.i.us, -1 ; 2 uses
  %i.bi = urem i32 %14, 10
  %i.bj = udiv i32 %.079.i.i.us, 100
  %i.bk = trunc nuw nsw i32 %i.bi to i8
  %i.bl = or disjoint i8 %i.bk, 48
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.next.i.i.us
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !15
  %indvars.iv.next.i.i.us.a = add nsw i64 %indvars.iv.i.i.us, -2
  %.not.i.i.us = icmp eq i64 %indvars.iv.next.i.i.us, 0
  br i1 %.not.i.i.us, label %limb_to_a.exit.us, label %.lr.ph.i.i.us, !llvm.loop !22

limb_to_a.exit.us:                                ; preds = %.lr.ph.i.i.us.prol.loopexit, %.lr.ph.i.i.us, %mpb_renorm.exit.us
  %.not52.us = icmp eq i32 %i.p, 0
  br i1 %.not52.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !23

bb.d:                                             ; preds = %.preheader66, %bb.e
  %.047 = phi i32 [ %i.bn, %bb.e ], [ %3, %.preheader66 ] ; 2 uses
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %.047, i32 %i.i) ; 4 uses
  %i.bn = sub nsw i32 %.047, %..i                 ; 3 uses
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 %i.bo ; 3 uses
  %i.bq = icmp sgt i32 %..i, 0
  br i1 %i.bq, label %.lr.ph.i, label %u64toa_bin_len.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.br = load i32, ptr %i.k, align 4, !tbaa !18  ; 3 uses
  %i.bs = zext nneg i32 %..i to i64               ; 3 uses
  %xtraiter = and i64 %i.bs, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph.i
  %indvars.iv.next.i.prol = add nsw i64 %i.bs, -1 ; 2 uses
  %i.bt = and i32 %i.br, %i.j                     ; 3 uses
  %i.bu = lshr i32 %i.br, %i.d
  %i.bv = icmp samesign ult i32 %i.bt, 10
  %i.bw = or disjoint i32 %i.bt, 48
  %i.bx = add nuw nsw i32 %i.bt, 87
  %.013.i.prol = select i1 %i.bv, i32 %i.bw, i32 %i.bx
  %i.by = trunc i32 %.013.i.prol to i8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv.next.i.prol
  store i8 %i.by, ptr %i.bz, align 1, !tbaa !15
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.unr = phi i64 [ %i.bs, %.lr.ph.i ], [ %indvars.iv.next.i.prol, %.prol.loopexit.unr-lcssa ]
  %.01416.i.unr = phi i32 [ %i.br, %.lr.ph.i ], [ %i.bu, %.prol.loopexit.unr-lcssa ]
  %i.ca = icmp eq i32 %..i, 1
  br i1 %i.ca, label %u64toa_bin_len.exit, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.prol.loopexit, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.1, %.lr.ph.i.new ], [ %indvars.iv.i.unr, %.prol.loopexit ] ; 3 uses
  %.01416.i = phi i32 [ %i.ck, %.lr.ph.i.new ], [ %.01416.i.unr, %.prol.loopexit ] ; 2 uses
  %i.cb = and i32 %.01416.i, %i.j                 ; 3 uses
  %i.cc = lshr i32 %.01416.i, %i.d                ; 2 uses
  %i.cd = icmp samesign ult i32 %i.cb, 10
  %i.ce = or disjoint i32 %i.cb, 48
  %i.cf = add nuw nsw i32 %i.cb, 87
  %.013.i = select i1 %i.cd, i32 %i.ce, i32 %i.cf
  %i.cg = trunc i32 %.013.i to i8
  %i.ch = getelementptr i8, ptr %i.bp, i64 %indvars.iv.i
  %i.ci = getelementptr i8, ptr %i.ch, i64 -1
  store i8 %i.cg, ptr %i.ci, align 1, !tbaa !15
  %indvars.iv.next.i.1 = add nsw i64 %indvars.iv.i, -2 ; 2 uses
  %i.cj = and i32 %i.cc, %i.j                     ; 3 uses
  %i.ck = lshr i32 %i.cc, %i.d
  %i.cl = icmp samesign ult i32 %i.cj, 10
  %i.cm = or disjoint i32 %i.cj, 48
  %i.cn = add nuw nsw i32 %i.cj, 87
  %.013.i.1 = select i1 %i.cl, i32 %i.cm, i32 %i.cn
  %i.co = trunc i32 %.013.i.1 to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bp, i64 %indvars.iv.next.i.1
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !15
  %i.cq = icmp sgt i64 %indvars.iv.i, 2
  br i1 %i.cq, label %.lr.ph.i.new, label %u64toa_bin_len.exit, !llvm.loop !1

u64toa_bin_len.exit:                              ; preds = %.prol.loopexit, %.lr.ph.i.new, %bb.d
  %i.cr = icmp eq i32 %i.bn, 0
  br i1 %i.cr, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %u64toa_bin_len.exit
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %1, i32 noundef %i.l, i32 noundef 2)
  br label %bb.d

.lr.ph.split:                                     ; preds = %.lr.ph, %limb_to_a.exit
  %.169 = phi i32 [ %i.cs, %limb_to_a.exit ], [ %3, %.lr.ph ] ; 2 uses
  %..i54 = tail call noundef i32 @llvm.smin.i32(i32 %.169, i32 %i.i) ; 4 uses
  %i.cs = sub nsw i32 %.169, %..i54               ; 3 uses
  %i.ct = load i32, ptr %1, align 4, !tbaa !18    ; 3 uses
  %.013.i55 = add i32 %i.ct, -1                   ; 3 uses
  %i.cu = icmp sgt i32 %.013.i55, -1
  br i1 %i.cu, label %.lr.ph.i56, label %mpb_renorm.exit

.lr.ph.i56:                                       ; preds = %.lr.ph.split
  %i.cv = load i32, ptr %i.n, align 4, !tbaa !18
  %i.cw = zext i32 %i.cv to i64                   ; 6 uses
  %i.cx = zext nneg i32 %.013.i55 to i64          ; 4 uses
  %i.cy = add nuw nsw i64 %i.cx, 1                ; 2 uses
  %i.cz = icmp eq i32 %.013.i55, 0
  br i1 %i.cz, label %.epil.preheader, label %.lr.ph.i56.new

.lr.ph.i56.new:                                   ; preds = %.lr.ph.i56
  %unroll_iter = and i64 %i.cy, 4294967294
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i56.new
  %indvars.iv.i57 = phi i64 [ %i.cx, %.lr.ph.i56.new ], [ %indvars.iv.next.i58.1, %bb.f ] ; 3 uses
  %.01214.i = phi i64 [ 0, %.lr.ph.i56.new ], [ %i.dp, %bb.f ]
  %niter = phi i64 [ 0, %.lr.ph.i56.new ], [ %niter.next.1, %bb.f ]
  %i.da = shl nuw i64 %.01214.i, 32
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i57 ; 2 uses
  %i.dc = load i32, ptr %i.db, align 4, !tbaa !18
  %i.dd = zext i32 %i.dc to i64
  %i.de = or disjoint i64 %i.da, %i.dd            ; 2 uses
  %i.df = udiv i64 %i.de, %i.cw
  %i.dg = trunc i64 %i.df to i32
  store i32 %i.dg, ptr %i.db, align 4, !tbaa !18
  %i.dh = urem i64 %i.de, %i.cw
  %i.di = shl nuw i64 %i.dh, 32
  %i.dj = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.i57 ; 2 uses
  %i.dk = load i32, ptr %i.dj, align 4, !tbaa !18
  %i.dl = zext i32 %i.dk to i64
  %i.dm = or disjoint i64 %i.di, %i.dl            ; 2 uses
  %i.dn = udiv i64 %i.dm, %i.cw
  %i.do = trunc i64 %i.dn to i32
  store i32 %i.do, ptr %i.dj, align 4, !tbaa !18
  %i.dp = urem i64 %i.dm, %i.cw                   ; 3 uses
  %indvars.iv.next.i58.1 = add nsw i64 %indvars.iv.i57, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mp_div1.exit.unr-lcssa, label %bb.f, !llvm.loop !21

mp_div1.exit.unr-lcssa:                           ; preds = %bb.f
  %i.dq = and i64 %i.cx, 1
  %lcmp.mod93.not.not = icmp eq i64 %i.dq, 0
  br i1 %lcmp.mod93.not.not, label %.epil.preheader, label %mp_div1.exit

.epil.preheader:                                  ; preds = %mp_div1.exit.unr-lcssa, %.lr.ph.i56
  %indvars.iv.i57.epil.init = phi i64 [ %i.cx, %.lr.ph.i56 ], [ %indvars.iv.next.i58.1, %mp_div1.exit.unr-lcssa ]
  %.01214.i.epil.init = phi i64 [ 0, %.lr.ph.i56 ], [ %i.dp, %mp_div1.exit.unr-lcssa ]
  %lcmp.mod95 = trunc i64 %i.cy to i1
  tail call void @llvm.assume(i1 %lcmp.mod95)
  %i.dr = shl nuw i64 %.01214.i.epil.init, 32
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i57.epil.init ; 2 uses
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !18
  %i.du = zext i32 %i.dt to i64
  %i.dv = or disjoint i64 %i.dr, %i.du            ; 2 uses
  %i.dw = udiv i64 %i.dv, %i.cw
  %i.dx = trunc i64 %i.dw to i32
  store i32 %i.dx, ptr %i.ds, align 4, !tbaa !18
  %i.dy = urem i64 %i.dv, %i.cw
  br label %mp_div1.exit

mp_div1.exit:                                     ; preds = %mp_div1.exit.unr-lcssa, %.epil.preheader
  %.lcssa90 = phi i64 [ %i.dp, %mp_div1.exit.unr-lcssa ], [ %i.dy, %.epil.preheader ]
  %i.dz = trunc nuw i64 %.lcssa90 to i32          ; 3 uses
  %i.ea = icmp sgt i32 %i.ct, 1
  br i1 %i.ea, label %.lr.ph.i59, label %mpb_renorm.exit

.lr.ph.i59:                                       ; preds = %mp_div1.exit, %bb.g
  %i.eb = phi i32 [ %i.eg, %bb.g ], [ %i.ct, %mp_div1.exit ] ; 3 uses
  %i.ec = zext nneg i32 %i.eb to i64
  %i.ed = getelementptr [4 x i8], ptr %1, i64 %i.ec
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !18
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %bb.g, label %mpb_renorm.exit

bb.g:                                             ; preds = %.lr.ph.i59
  %i.eg = add nsw i32 %i.eb, -1                   ; 2 uses
  store i32 %i.eg, ptr %1, align 4, !tbaa !18
  %i.eh = icmp sgt i32 %i.eb, 2
  br i1 %i.eh, label %.lr.ph.i59, label %mpb_renorm.exit, !llvm.loop !4

mpb_renorm.exit:                                  ; preds = %.lr.ph.i59, %bb.g, %.lr.ph.split, %mp_div1.exit
  %.012.lcssa.i64 = phi i32 [ 0, %.lr.ph.split ], [ %i.dz, %mp_div1.exit ], [ %i.dz, %bb.g ], [ %i.dz, %.lr.ph.i59 ] ; 3 uses
  %i.ei = zext nneg i32 %i.cs to i64
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 %i.ei ; 3 uses
  %i.ek = icmp sgt i32 %..i54, 0
  br i1 %i.ek, label %.lr.ph.preheader.i, label %limb_to_a.exit

.lr.ph.preheader.i:                               ; preds = %mpb_renorm.exit
  %i.el = zext nneg i32 %..i54 to i64             ; 3 uses
  %xtraiter96 = and i64 %i.el, 1
  %lcmp.mod97.not = icmp eq i64 %xtraiter96, 0
  br i1 %lcmp.mod97.not, label %.lr.ph.i60.prol.loopexit, label %.lr.ph.i60.prol

.lr.ph.i60.prol:                                  ; preds = %.lr.ph.preheader.i
  %indvars.iv.next.i62.prol = add nsw i64 %i.el, -1 ; 2 uses
  %i.em = urem i32 %.012.lcssa.i64, %2            ; 2 uses
  %i.en = udiv i32 %.012.lcssa.i64, %2
  %i.eo = icmp slt i32 %i.em, 10
  %.016.v.i.prol = select i1 %i.eo, i32 48, i32 87
  %.016.i.prol = add nsw i32 %.016.v.i.prol, %i.em
  %i.ep = trunc i32 %.016.i.prol to i8
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 %indvars.iv.next.i62.prol
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !15
  br label %.lr.ph.i60.prol.loopexit

.lr.ph.i60.prol.loopexit:                         ; preds = %.lr.ph.i60.prol, %.lr.ph.preheader.i
  %indvars.iv.i61.unr = phi i64 [ %i.el, %.lr.ph.preheader.i ], [ %indvars.iv.next.i62.prol, %.lr.ph.i60.prol ]
  %.01721.i.unr = phi i32 [ %.012.lcssa.i64, %.lr.ph.preheader.i ], [ %i.en, %.lr.ph.i60.prol ]
  %i.er = icmp eq i32 %..i54, 1
  br i1 %i.er, label %limb_to_a.exit, label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.lr.ph.i60.prol.loopexit, %.lr.ph.i60
  %indvars.iv.i61 = phi i64 [ %indvars.iv.next.i62.1, %.lr.ph.i60 ], [ %indvars.iv.i61.unr, %.lr.ph.i60.prol.loopexit ] ; 3 uses
  %.01721.i = phi i32 [ %i.ez, %.lr.ph.i60 ], [ %.01721.i.unr, %.lr.ph.i60.prol.loopexit ] ; 2 uses
  %i.es = urem i32 %.01721.i, %2                  ; 2 uses
  %i.et = udiv i32 %.01721.i, %2                  ; 2 uses
  %i.eu = icmp slt i32 %i.es, 10
  %.016.v.i = select i1 %i.eu, i32 48, i32 87
  %.016.i = add nsw i32 %.016.v.i, %i.es
end_hunk_0
