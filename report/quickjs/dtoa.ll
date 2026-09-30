Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/dtoa?download=true
inline.NumInlined: 95
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 18
begin_hunk_0_@js_dtoa:bb.a
  %.2 = phi ptr [ %i.t, %bb.l ], [ %.1210, %bb.ar ], [ %0, %bb.k ], [ %.1210, %bb.ay ], [ %.1210, %bb.bc ] ; 9 uses
  %i.ii = icmp eq i32 %i.c, 1
  br i1 %i.ii, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %mpb_cmp.exit
  %i.ij = sext i32 %2 to i64
  %i.ik = getelementptr i8, ptr @dtoa_max_digits_table, i64 %i.ij
  %i.il = getelementptr i8, ptr %i.ik, i64 -2
  %i.im = load i8, ptr %i.il, align 1, !tbaa !15
  %i.in = zext i8 %i.im to i32
  %i.io = add nuw nsw i32 %i.in, 4
  br label %bb.be

bb.be:                                            ; preds = %mpb_cmp.exit, %bb.bd
  %.0211 = phi i32 [ %i.io, %bb.bd ], [ %3, %mpb_cmp.exit ]
  %i.ip = and i32 %4, 12
  switch i32 %i.ip, label %bb.bk [
    i32 4, label %bb.bg
    i32 0, label %bb.bf
  ]

bb.bf:                                            ; preds = %bb.be
  %i.iq = icmp slt i32 %.2220, -5
  %i.ir = icmp sgt i32 %.2220, %.0211
  %or.cond243 = select i1 %i.iq, i1 true, i1 %i.ir
  br i1 %or.cond243, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.is = tail call fastcc i32 @output_digits(ptr noundef %.2, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %.3217, i32 noundef 1)
  %i.it = sext i32 %i.is to i64
  %i.iu = getelementptr inbounds i8, ptr %.2, i64 %i.it ; 3 uses
  %i.iv = add nsw i32 %.2220, -1                  ; 2 uses
  %i.iw = icmp eq i32 %2, 10
  br i1 %i.iw, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.ix = icmp eq i32 %i.f, 1
  %i.iy = icmp samesign ult i32 %i.e, 5
  %or.cond7 = select i1 %i.ix, i1 %i.iy, i1 false ; 2 uses
  %spec.select = select i1 %or.cond7, i8 112, i8 64
  %i.iz = select i1 %or.cond7, i32 %i.e, i32 1
  %spec.select312 = mul nsw i32 %i.iv, %i.iz
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sink311 = phi i8 [ %spec.select, %bb.bh ], [ 101, %bb.bg ]
  %.3221 = phi i32 [ %spec.select312, %bb.bh ], [ %i.iv, %bb.bg ] ; 2 uses
  store i8 %.sink311, ptr %i.iu, align 1, !tbaa !15
  %.3 = getelementptr inbounds nuw i8, ptr %i.iu, i64 1
  %i.ja = icmp slt i32 %.3221, 0
  %.sink = select i1 %i.ja, i8 45, i8 43
  %.4222 = tail call i32 @llvm.abs.i32(i32 %.3221, i1 true)
  store i8 %.sink, ptr %.3, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.jb = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %bb.bi
  %.08.i = phi i32 [ %.4222, %bb.bi ], [ %i.jg, %bb.bj ] ; 3 uses
  %.0.i255 = phi ptr [ %i.jb, %bb.bi ], [ %i.jf, %bb.bj ]
  %i.jc = urem i32 %.08.i, 10
  %i.jd = trunc nuw nsw i32 %i.jc to i8
  %i.je = or disjoint i8 %i.jd, 48
  %i.jf = getelementptr inbounds i8, ptr %.0.i255, i64 -1 ; 4 uses
  store i8 %i.je, ptr %i.jf, align 1, !tbaa !15
  %i.jg = udiv i32 %.08.i, 10
  %.not.i256 = icmp samesign ult i32 %.08.i, 10
  br i1 %.not.i256, label %u32toa.exit, label %bb.bj, !llvm.loop !0

u32toa.exit:                                      ; preds = %bb.bj
  %.4 = getelementptr inbounds nuw i8, ptr %i.iu, i64 2 ; 2 uses
  %i.jh = ptrtoint ptr %i.jb to i64
  %i.ji = ptrtoint ptr %i.jf to i64
  %i.jj = sub i64 %i.jh, %i.ji                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.4, ptr noundef nonnull align 1 dereferenceable(1) %i.jf, i64 %i.jj, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.jk = getelementptr inbounds nuw i8, ptr %.4, i64 %i.jj
  br label %.loopexit

bb.bk:                                            ; preds = %bb.bf, %bb.be
  %i.jl = icmp slt i32 %.2220, 1
  br i1 %i.jl, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.jm = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 48, ptr %.2, align 1, !tbaa !15
  %i.jn = getelementptr i8, ptr %.2, i64 2        ; 2 uses
  store i8 46, ptr %i.jm, align 1, !tbaa !15
  %i.jo = icmp slt i32 %.2220, 0
  br i1 %i.jo, label %.lr.ph279.preheader, label %._crit_edge280

.lr.ph279.preheader:                              ; preds = %bb.bl
  %i.jp = sub nsw i32 0, %.2220
  %i.jq = zext nneg i32 %i.jp to i64              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.jn, i8 48, i64 %i.jq, i1 false), !tbaa !15
  %i.jr = getelementptr i8, ptr %.2, i64 %i.jq
  %scevgep292 = getelementptr i8, ptr %i.jr, i64 2
  br label %._crit_edge280

._crit_edge280:                                   ; preds = %.lr.ph279.preheader, %bb.bl
  %.5.lcssa = phi ptr [ %i.jn, %bb.bl ], [ %scevgep292, %.lr.ph279.preheader ] ; 2 uses
  %i.js = tail call fastcc i32 @output_digits(ptr noundef nonnull %.5.lcssa, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %.3217, i32 noundef %.3217)
  %i.jt = sext i32 %i.js to i64
  %i.ju = getelementptr inbounds i8, ptr %.5.lcssa, i64 %i.jt
  br label %.loopexit

bb.bm:                                            ; preds = %bb.bk
  %..i257 = tail call noundef i32 @llvm.smin.i32(i32 %.3217, i32 %.2220)
  %i.jv = tail call fastcc i32 @output_digits(ptr noundef %.2, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %.3217, i32 noundef %..i257)
  %i.jw = sext i32 %i.jv to i64                   ; 2 uses
  %i.jx = getelementptr i8, ptr %.2, i64 %i.jw    ; 2 uses
  %i.jy = sub nsw i32 %.2220, %.3217              ; 2 uses
  %i.jz = icmp sgt i32 %i.jy, 0
  br i1 %i.jz, label %.lr.ph274.preheader, label %.loopexit

.lr.ph274.preheader:                              ; preds = %bb.bm
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
  %i.d = xor i32 %i.c, 31                         ; 2 uses
  %i.e = add nsw i32 %2, -2
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds i8, ptr @digits_per_limb_table, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !15
  %i.i = zext i8 %i.h to i32                      ; 4 uses
  %.not70 = icmp eq i32 %i.c, 31
  %.not = select i1 %i.b, i1 true, i1 %.not70
  br i1 %.not, label %.preheader, label %.preheader66

.preheader66:                                     ; preds = %bb.a
  %i.j = lshr i32 2147483647, %i.c
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
  br i1 %i.w, label %.epil.preheader94, label %.lr.ph.i56.us.new

.lr.ph.i56.us.new:                                ; preds = %.lr.ph.i56.us
  %unroll_iter99 = and i64 %i.v, 4294967294
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i56.us.new
  %indvars.iv.i57.us = phi i64 [ %i.u, %.lr.ph.i56.us.new ], [ %indvars.iv.next.i58.us.1, %bb.b ] ; 3 uses
  %.01214.i.us = phi i64 [ 0, %.lr.ph.i56.us.new ], [ %i.am, %bb.b ]
  %niter100 = phi i64 [ 0, %.lr.ph.i56.us.new ], [ %niter100.next.1, %bb.b ]
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
  %niter100.next.1 = add i64 %niter100, 2         ; 2 uses
  %niter100.ncmp.1 = icmp eq i64 %niter100.next.1, %unroll_iter99
  br i1 %niter100.ncmp.1, label %mp_div1.exit.us.unr-lcssa, label %bb.b, !llvm.loop !21

mp_div1.exit.us.unr-lcssa:                        ; preds = %bb.b
  %i.an = and i64 %i.u, 1
  %lcmp.mod96.not.not = icmp eq i64 %i.an, 0
  br i1 %lcmp.mod96.not.not, label %.epil.preheader94, label %mp_div1.exit.us

.epil.preheader94:                                ; preds = %mp_div1.exit.us.unr-lcssa, %.lr.ph.i56.us
  %indvars.iv.i57.us.epil.init = phi i64 [ %i.u, %.lr.ph.i56.us ], [ %indvars.iv.next.i58.us.1, %mp_div1.exit.us.unr-lcssa ]
  %.01214.i.us.epil.init = phi i64 [ 0, %.lr.ph.i56.us ], [ %i.am, %mp_div1.exit.us.unr-lcssa ]
  %lcmp.mod98 = trunc i64 %i.v to i1
  tail call void @llvm.assume(i1 %lcmp.mod98)
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

mp_div1.exit.us:                                  ; preds = %mp_div1.exit.us.unr-lcssa, %.epil.preheader94
  %.lcssa = phi i64 [ %i.am, %mp_div1.exit.us.unr-lcssa ], [ %i.av, %.epil.preheader94 ]
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
  %.012.lcssa.i64.us = phi i32 [ 0, %.lr.ph.split.us ], [ %i.aw, %mp_div1.exit.us ], [ %i.aw, %bb.c ], [ %i.aw, %.lr.ph.i59.us ]
  %i.bf = zext nneg i32 %i.p to i64
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 %i.bf
  %.08.i.i.us = add i32 %..i54.us, -1             ; 2 uses
  %i.bh = icmp sgt i32 %.08.i.i.us, -1
  br i1 %i.bh, label %.lr.ph.preheader.i.i.us, label %limb_to_a.exit.us

.lr.ph.preheader.i.i.us:                          ; preds = %mpb_renorm.exit.us
  %i.bi = zext nneg i32 %.08.i.i.us to i64
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us, %.lr.ph.preheader.i.i.us
  %indvars.iv.i.i.us = phi i64 [ %i.bi, %.lr.ph.preheader.i.i.us ], [ %indvars.iv.next.i.i.us, %.lr.ph.i.i.us ] ; 3 uses
  %.079.i.i.us = phi i32 [ %.012.lcssa.i64.us, %.lr.ph.preheader.i.i.us ], [ %i.bk, %.lr.ph.i.i.us ] ; 2 uses
  %i.bj = urem i32 %.079.i.i.us, 10
  %i.bk = udiv i32 %.079.i.i.us, 10
  %i.bl = trunc nuw nsw i32 %i.bj to i8
  %i.bm = or disjoint i8 %i.bl, 48
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bg, i64 %indvars.iv.i.i.us
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !15
  %indvars.iv.next.i.i.us = add nsw i64 %indvars.iv.i.i.us, -1
  %.not.i.i.us = icmp eq i64 %indvars.iv.i.i.us, 0
  br i1 %.not.i.i.us, label %limb_to_a.exit.us, label %.lr.ph.i.i.us, !llvm.loop !22

limb_to_a.exit.us:                                ; preds = %.lr.ph.i.i.us, %mpb_renorm.exit.us
  %.not52.us = icmp eq i32 %i.p, 0
  br i1 %.not52.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !23

bb.d:                                             ; preds = %.preheader66, %bb.f
  %.047 = phi i32 [ %i.bo, %bb.f ], [ %3, %.preheader66 ] ; 2 uses
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %.047, i32 %i.i) ; 3 uses
  %i.bo = sub nsw i32 %.047, %..i                 ; 3 uses
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %i.bp
  %i.br = icmp sgt i32 %..i, 0
  br i1 %i.br, label %.lr.ph.i, label %u64toa_bin_len.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.bs = load i32, ptr %i.k, align 4, !tbaa !18
  %i.bt = zext nneg i32 %..i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.bt, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %.01416.i = phi i32 [ %i.bs, %.lr.ph.i ], [ %i.bv, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.bu = and i32 %.01416.i, %i.j                 ; 3 uses
  %i.bv = lshr i32 %.01416.i, %i.d
  %i.bw = icmp samesign ult i32 %i.bu, 10
  %i.bx = or disjoint i32 %i.bu, 48
  %i.by = add nuw nsw i32 %i.bu, 87
  %.013.i.a = select i1 %i.bw, i32 %i.bx, i32 %i.by
  %i.bz = trunc i32 %.013.i.a to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 %indvars.iv.next.i
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !15
  %5 = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %5, label %bb.e, label %u64toa_bin_len.exit, !llvm.loop !1

u64toa_bin_len.exit:                              ; preds = %bb.e, %bb.d
  %i.cb = icmp eq i32 %i.bo, 0
  br i1 %i.cb, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %u64toa_bin_len.exit
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %1, i32 noundef %i.l, i32 noundef 2)
  br label %bb.d

.lr.ph.split:                                     ; preds = %.lr.ph, %limb_to_a.exit
  %.169 = phi i32 [ %i.cc, %limb_to_a.exit ], [ %3, %.lr.ph ] ; 2 uses
  %..i54 = tail call noundef i32 @llvm.smin.i32(i32 %.169, i32 %i.i) ; 3 uses
  %i.cc = sub nsw i32 %.169, %..i54               ; 3 uses
  %i.cd = load i32, ptr %1, align 4, !tbaa !18    ; 3 uses
  %.013.i55 = add i32 %i.cd, -1                   ; 3 uses
  %i.ce = icmp sgt i32 %.013.i55, -1
  br i1 %i.ce, label %.lr.ph.i56, label %mpb_renorm.exit

.lr.ph.i56:                                       ; preds = %.lr.ph.split
  %i.cf = load i32, ptr %i.n, align 4, !tbaa !18
  %i.cg = zext i32 %i.cf to i64                   ; 6 uses
  %i.ch = zext nneg i32 %.013.i55 to i64          ; 4 uses
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %i.cj = icmp eq i32 %.013.i55, 0
  br i1 %i.cj, label %.epil.preheader, label %.lr.ph.i56.new

.lr.ph.i56.new:                                   ; preds = %.lr.ph.i56
  %unroll_iter = and i64 %i.ci, 4294967294
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i56.new
  %indvars.iv.i57 = phi i64 [ %i.ch, %.lr.ph.i56.new ], [ %indvars.iv.next.i58.1, %bb.g ] ; 3 uses
  %.01214.i = phi i64 [ 0, %.lr.ph.i56.new ], [ %i.cz, %bb.g ]
  %niter = phi i64 [ 0, %.lr.ph.i56.new ], [ %niter.next.1, %bb.g ]
  %i.ck = shl nuw i64 %.01214.i, 32
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i57 ; 2 uses
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !18
  %i.cn = zext i32 %i.cm to i64
  %i.co = or disjoint i64 %i.ck, %i.cn            ; 2 uses
  %i.cp = udiv i64 %i.co, %i.cg
  %i.cq = trunc i64 %i.cp to i32
  store i32 %i.cq, ptr %i.cl, align 4, !tbaa !18
  %i.cr = urem i64 %i.co, %i.cg
  %i.cs = shl nuw i64 %i.cr, 32
  %i.ct = getelementptr [4 x i8], ptr %1, i64 %indvars.iv.i57 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !18
  %i.cv = zext i32 %i.cu to i64
  %i.cw = or disjoint i64 %i.cs, %i.cv            ; 2 uses
  %i.cx = udiv i64 %i.cw, %i.cg
  %i.cy = trunc i64 %i.cx to i32
  store i32 %i.cy, ptr %i.ct, align 4, !tbaa !18
  %i.cz = urem i64 %i.cw, %i.cg                   ; 3 uses
  %indvars.iv.next.i58.1 = add nsw i64 %indvars.iv.i57, -2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mp_div1.exit.unr-lcssa, label %bb.g, !llvm.loop !21

mp_div1.exit.unr-lcssa:                           ; preds = %bb.g
  %i.da = and i64 %i.ch, 1
  %lcmp.mod.not.not = icmp eq i64 %i.da, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %mp_div1.exit

.epil.preheader:                                  ; preds = %mp_div1.exit.unr-lcssa, %.lr.ph.i56
  %indvars.iv.i57.epil.init = phi i64 [ %i.ch, %.lr.ph.i56 ], [ %indvars.iv.next.i58.1, %mp_div1.exit.unr-lcssa ]
  %.01214.i.epil.init = phi i64 [ 0, %.lr.ph.i56 ], [ %i.cz, %mp_div1.exit.unr-lcssa ]
  %lcmp.mod93 = trunc i64 %i.ci to i1
  tail call void @llvm.assume(i1 %lcmp.mod93)
  %i.db = shl nuw i64 %.01214.i.epil.init, 32
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i57.epil.init ; 2 uses
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !18
  %i.de = zext i32 %i.dd to i64
  %i.df = or disjoint i64 %i.db, %i.de            ; 2 uses
  %i.dg = udiv i64 %i.df, %i.cg
  %i.dh = trunc i64 %i.dg to i32
  store i32 %i.dh, ptr %i.dc, align 4, !tbaa !18
  %i.di = urem i64 %i.df, %i.cg
  br label %mp_div1.exit

mp_div1.exit:                                     ; preds = %mp_div1.exit.unr-lcssa, %.epil.preheader
  %.lcssa90 = phi i64 [ %i.cz, %mp_div1.exit.unr-lcssa ], [ %i.di, %.epil.preheader ]
  %i.dj = trunc nuw i64 %.lcssa90 to i32          ; 3 uses
  %i.dk = icmp sgt i32 %i.cd, 1
  br i1 %i.dk, label %.lr.ph.i59, label %mpb_renorm.exit

.lr.ph.i59:                                       ; preds = %mp_div1.exit, %bb.h
  %i.dl = phi i32 [ %i.dq, %bb.h ], [ %i.cd, %mp_div1.exit ] ; 3 uses
  %i.dm = zext nneg i32 %i.dl to i64
  %i.dn = getelementptr [4 x i8], ptr %1, i64 %i.dm
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !18
  %i.dp = icmp eq i32 %i.do, 0
  br i1 %i.dp, label %bb.h, label %mpb_renorm.exit

bb.h:                                             ; preds = %.lr.ph.i59
  %i.dq = add nsw i32 %i.dl, -1                   ; 2 uses
  store i32 %i.dq, ptr %1, align 4, !tbaa !18
  %i.dr = icmp sgt i32 %i.dl, 2
  br i1 %i.dr, label %.lr.ph.i59, label %mpb_renorm.exit, !llvm.loop !4

mpb_renorm.exit:                                  ; preds = %.lr.ph.i59, %bb.h, %.lr.ph.split, %mp_div1.exit
  %.012.lcssa.i64 = phi i32 [ 0, %.lr.ph.split ], [ %i.dj, %mp_div1.exit ], [ %i.dj, %bb.h ], [ %i.dj, %.lr.ph.i59 ]
  %i.ds = zext nneg i32 %i.cc to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 %i.ds
  %i.du = icmp sgt i32 %..i54, 0
  br i1 %i.du, label %.lr.ph.preheader.i.a, label %limb_to_a.exit

.lr.ph.preheader.i.a:                             ; preds = %mpb_renorm.exit
  %6 = zext nneg i32 %..i54 to i64
  br label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.lr.ph.i60, %.lr.ph.preheader.i.a
  %indvars.iv.i61 = phi i64 [ %6, %.lr.ph.preheader.i.a ], [ %indvars.iv.next.i62, %.lr.ph.i60 ] ; 2 uses
  %.01721.i = phi i32 [ %.012.lcssa.i64, %.lr.ph.preheader.i.a ], [ %i.dw, %.lr.ph.i60 ] ; 2 uses
  %indvars.iv.next.i62 = add nsw i64 %indvars.iv.i61, -1 ; 2 uses
  %i.dv = urem i32 %.01721.i, %2                  ; 2 uses
  %i.dw = udiv i32 %.01721.i, %2
  %i.dx = icmp slt i32 %i.dv, 10
  %.016.v.i.a = select i1 %i.dx, i32 48, i32 87
  %.016.i.a = add nsw i32 %.016.v.i.a, %i.dv
  %i.dy = trunc i32 %.016.i.a to i8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dt, i64 %indvars.iv.next.i62
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !15
  %7 = icmp samesign ugt i64 %indvars.iv.i61, 1
  br i1 %7, label %.lr.ph.i60, label %limb_to_a.exit, !llvm.loop !24

limb_to_a.exit:                                   ; preds = %.lr.ph.i60, %mpb_renorm.exit
  %.not52 = icmp eq i32 %i.cc, 0
  br i1 %.not52, label %.loopexit, label %.lr.ph.split, !llvm.loop !23

.loopexit:                                        ; preds = %u64toa_bin_len.exit, %limb_to_a.exit, %limb_to_a.exit.us, %.preheader
  %.not53 = icmp eq i32 %4, %3
  br i1 %.not53, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.ea = sext i32 %4 to i64
  %i.eb = getelementptr inbounds i8, ptr %0, i64 %i.ea ; 3 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 1
  %i.ed = sub nsw i32 %3, %4
  %i.ee = sext i32 %i.ed to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ec, ptr align 1 %i.eb, i64 %i.ee, i1 false)
  store i8 46, ptr %i.eb, align 1, !tbaa !15
  %i.ef = add nsw i32 %3, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %.0 = phi i32 [ %i.ef, %bb.i ], [ %3, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc i32 @mul_pow(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, 32) %2, i32 noundef %3, i1 noundef zeroext %4, i32 noundef range(i32 -2147483648, 2147482573) %5) unnamed_addr #0 {
bb.a:
  %i.a = sub nsw i32 0, %3                        ; 2 uses
  %i.b = mul nsw i32 %2, %i.a                     ; 3 uses
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr i8, ptr @digits_per_limb_table, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !15
  %i.g = zext i8 %i.f to i32                      ; 4 uses
  %i.h = icmp sgt i32 %3, -1
  br i1 %i.h, label %.preheader, label %bb.n

.preheader:                                       ; preds = %bb.b
  %.not7498 = icmp eq i32 %3, 0
  br i1 %.not7498, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = zext i32 %1 to i64                       ; 7 uses
  %i.j = icmp eq i32 %1, 5
  %i.k = icmp eq i32 %1, 10                       ; 2 uses
  %or.cond.i = or i1 %i.j, %i.k
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.m = mul nuw i64 %i.i, %i.i
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %mp_mul1.exit.thread
  %.060101 = phi i32 [ 0, %.lr.ph ], [ %.161, %mp_mul1.exit.thread ]
  %.062100 = phi i32 [ 0, %.lr.ph ], [ %.163, %mp_mul1.exit.thread ] ; 2 uses
  %.06599 = phi i32 [ %3, %.lr.ph ], [ %i.bx, %mp_mul1.exit.thread ] ; 2 uses
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %.06599, i32 %i.g) ; 12 uses
  %.not75 = icmp eq i32 %..i, %.062100
  br i1 %.not75, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %trunc = trunc nuw i32 %..i to i8
  switch i8 %trunc, label %bb.f [
    i8 0, label %pow_ui.exit
    i8 1, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d
  br label %pow_ui.exit

bb.f:                                             ; preds = %bb.d
  %i.n = icmp samesign ult i32 %..i, 18
  %or.cond3.i = and i1 %or.cond.i, %i.n
  br i1 %or.cond3.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.o = zext nneg i32 %..i to i64                ; 2 uses
  %i.p = getelementptr [4 x i8], ptr @pow5_table, i64 %i.o
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !18
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = icmp samesign ugt i32 %..i, 13
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr @pow5h_table, i64 %i.o
  %i.v = getelementptr i8, ptr %i.u, i64 -14
  %i.w = load i8, ptr %i.v, align 1, !tbaa !15
  %i.x = zext i8 %i.w to i64
  %i.y = shl nuw nsw i64 %i.x, 32
  %i.z = or disjoint i64 %i.y, %i.s
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.0.i = phi i64 [ %i.z, %bb.h ], [ %i.s, %bb.g ]
  %narrow.i = select i1 %i.k, i32 %..i, i32 0
  %i.aa = zext nneg i32 %narrow.i to i64
  %.1.i = shl nuw nsw i64 %.0.i, %i.aa
  br label %pow_ui.exit

bb.j:                                             ; preds = %bb.f
  %i.ab = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %..i, i1 true) ; 4 uses
  %i.ac = sub nsw i32 30, %i.ab                   ; 2 uses
  %i.ad = and i32 %i.ab, 1
  %lcmp.mod116.not.not = icmp eq i32 %i.ad, 0
  br i1 %lcmp.mod116.not.not, label %.prol.loopexit113.unr-lcssa, label %.prol.loopexit113

.prol.loopexit113.unr-lcssa:                      ; preds = %bb.j
  %i.ae = shl nuw nsw i32 1, %i.ac
  %i.af = and i32 %i.ae, %..i
  %.not.i.prol = icmp eq i32 %i.af, 0
  %i.ag = select i1 %.not.i.prol, i64 1, i64 %i.i
  %spec.select.i.prol = mul i64 %i.m, %i.ag       ; 2 uses
  %i.ah = sub nsw i32 29, %i.ab
  br label %.prol.loopexit113

.prol.loopexit113:                                ; preds = %.prol.loopexit113.unr-lcssa, %bb.j
  %spec.select.i.lcssa.unr = phi i64 [ poison, %bb.j ], [ %spec.select.i.prol, %.prol.loopexit113.unr-lcssa ]
  %.234.i.unr = phi i64 [ %i.i, %bb.j ], [ %spec.select.i.prol, %.prol.loopexit113.unr-lcssa ]
  %.03033.i.unr = phi i32 [ %i.ac, %bb.j ], [ %i.ah, %.prol.loopexit113.unr-lcssa ]
  %i.ai = icmp eq i32 %i.ab, 30
  br i1 %i.ai, label %pow_ui.exit, label %.new114

.new114:                                          ; preds = %.prol.loopexit113, %.new114
  %.234.i = phi i64 [ %spec.select.i.1, %.new114 ], [ %.234.i.unr, %.prol.loopexit113 ] ; 2 uses
  %.03033.i = phi i32 [ %i.as, %.new114 ], [ %.03033.i.unr, %.prol.loopexit113 ] ; 3 uses
  %i.aj = mul i64 %.234.i, %.234.i
  %i.ak = shl nuw i32 1, %.03033.i
  %i.al = and i32 %i.ak, %..i
  %.not.i = icmp eq i32 %i.al, 0
  %i.am = select i1 %.not.i, i64 1, i64 %i.i
  %spec.select.i = mul i64 %i.aj, %i.am           ; 2 uses
  %i.an = add nsw i32 %.03033.i, -1               ; 2 uses
  %i.ao = mul i64 %spec.select.i, %spec.select.i
  %i.ap = shl nuw i32 1, %i.an
  %i.aq = and i32 %i.ap, %..i
  %.not.i.1 = icmp eq i32 %i.aq, 0
  %i.ar = select i1 %.not.i.1, i64 1, i64 %i.i
  %spec.select.i.1 = mul i64 %i.ao, %i.ar         ; 2 uses
  %i.as = add nsw i32 %.03033.i, -2
  %.not36.i.1 = icmp eq i32 %i.an, 0
  br i1 %.not36.i.1, label %pow_ui.exit, label %.new114, !llvm.loop !3

pow_ui.exit:                                      ; preds = %.prol.loopexit113, %.new114, %bb.d, %bb.e, %bb.i
  %.031.i = phi i64 [ 1, %bb.d ], [ %i.i, %bb.e ], [ %.1.i, %bb.i ], [ %spec.select.i.lcssa.unr, %.prol.loopexit113 ], [ %spec.select.i.1, %.new114 ]
  %i.at = trunc i64 %.031.i to i32
  br label %bb.k

bb.k:                                             ; preds = %pow_ui.exit, %bb.c
  %.163 = phi i32 [ %..i, %pow_ui.exit ], [ %.062100, %bb.c ]
  %.161 = phi i32 [ %i.at, %pow_ui.exit ], [ %.060101, %bb.c ] ; 2 uses
  %i.au = load i32, ptr %0, align 4, !tbaa !18    ; 6 uses
  %.not.i77 = icmp eq i32 %i.au, 0
  br i1 %.not.i77, label %mp_mul1.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.k
  %i.av = zext i32 %.161 to i64                   ; 3 uses
  %wide.trip.count.i = zext i32 %i.au to i64      ; 2 uses
  %xtraiter117 = and i64 %wide.trip.count.i, 1
  %i.aw = icmp eq i32 %i.au, 1
  br i1 %i.aw, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %wide.trip.count.i, 4294967294
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.1, %bb.l ] ; 3 uses
  %.01112.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.bl, %bb.l ]
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.l ]
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !18
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul nuw i64 %i.az, %i.av
  %i.bb = add nuw i64 %i.ba, %.01112.i            ; 2 uses
  %i.bc = trunc i64 %i.bb to i32
  store i32 %i.bc, ptr %i.ax, align 4, !tbaa !18
  %i.bd = lshr i64 %i.bb, 32
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %indvars.iv.i
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 4 ; 2 uses
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !18
  %i.bh = zext i32 %i.bg to i64
  %i.bi = mul nuw i64 %i.bh, %i.av
  %i.bj = add nuw i64 %i.bi, %i.bd                ; 2 uses
  %i.bk = trunc i64 %i.bj to i32
  store i32 %i.bk, ptr %i.bf, align 4, !tbaa !18
  %i.bl = lshr i64 %i.bj, 32                      ; 3 uses
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mp_mul1.exit.unr-lcssa, label %bb.l, !llvm.loop !5

mp_mul1.exit.unr-lcssa:                           ; preds = %bb.l
  %lcmp.mod118.not = icmp eq i64 %xtraiter117, 0
  br i1 %lcmp.mod118.not, label %mp_mul1.exit, label %.epil.preheader

end_hunk_0
