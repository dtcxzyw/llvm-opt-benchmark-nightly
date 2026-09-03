Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/dtoa?download=true
inline.NumInlined: 95
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 16
begin_hunk_0_@js_dtoa:bb.a
bb.bf:                                            ; preds = %bb.be
  %i.ir = icmp slt i32 %.2220, -5
  %i.is = icmp sgt i32 %.2220, %.0211
  %or.cond243 = select i1 %i.ir, i1 true, i1 %i.is
  br i1 %or.cond243, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.be, %bb.bf
  %i.it = tail call fastcc i32 @output_digits(ptr noundef %.2, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %.3217, i32 noundef 1)
  %i.iu = sext i32 %i.it to i64
  %i.iv = getelementptr inbounds i8, ptr %.2, i64 %i.iu ; 3 uses
  %i.iw = add nsw i32 %.2220, -1                  ; 2 uses
  %i.ix = icmp eq i32 %2, 10
  br i1 %i.ix, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.iy = icmp eq i32 %i.f, 1
  %i.iz = icmp samesign ult i32 %i.e, 5
  %or.cond7 = select i1 %i.iy, i1 %i.iz, i1 false ; 2 uses
  %spec.select = select i1 %or.cond7, i8 112, i8 64
  %i.ja = select i1 %or.cond7, i32 %i.e, i32 1
  %spec.select312 = mul nsw i32 %i.iw, %i.ja
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  %.sink311 = phi i8 [ %spec.select, %bb.bh ], [ 101, %bb.bg ]
  %.3221 = phi i32 [ %spec.select312, %bb.bh ], [ %i.iw, %bb.bg ] ; 2 uses
  store i8 %.sink311, ptr %i.iv, align 1, !tbaa !15
  %.3 = getelementptr inbounds nuw i8, ptr %i.iv, i64 1
  %i.jb = icmp slt i32 %.3221, 0
  %.sink = select i1 %i.jb, i8 45, i8 43
  %.4222 = tail call i32 @llvm.abs.i32(i32 %.3221, i1 true)
  store i8 %.sink, ptr %.3, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.jc = getelementptr inbounds nuw i8, ptr %i.a, i64 10 ; 2 uses
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bj, %bb.bi
  %.08.i = phi i32 [ %.4222, %bb.bi ], [ %i.jh, %bb.bj ] ; 3 uses
  %.0.i255 = phi ptr [ %i.jc, %bb.bi ], [ %i.jg, %bb.bj ]
  %i.jd = urem i32 %.08.i, 10
  %i.je = trunc nuw nsw i32 %i.jd to i8
  %i.jf = or disjoint i8 %i.je, 48
  %i.jg = getelementptr inbounds i8, ptr %.0.i255, i64 -1 ; 4 uses
  store i8 %i.jf, ptr %i.jg, align 1, !tbaa !15
  %i.jh = udiv i32 %.08.i, 10
  %.not.i256 = icmp samesign ult i32 %.08.i, 10
  br i1 %.not.i256, label %u32toa.exit, label %bb.bj, !llvm.loop !0

u32toa.exit:                                      ; preds = %bb.bj
  %.4 = getelementptr inbounds nuw i8, ptr %i.iv, i64 2 ; 2 uses
  %i.ji = ptrtoint ptr %i.jc to i64
  %i.jj = ptrtoint ptr %i.jg to i64
  %i.jk = sub i64 %i.ji, %i.jj                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.4, ptr noundef nonnull align 1 dereferenceable(1) %i.jg, i64 %i.jk, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.jl = getelementptr inbounds nuw i8, ptr %.4, i64 %i.jk
  br label %.loopexit

bb.bk:                                            ; preds = %bb.bf, %bb.be
  %i.jm = icmp slt i32 %.2220, 1
  br i1 %i.jm, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.jn = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 48, ptr %.2, align 1, !tbaa !15
  %i.jo = getelementptr i8, ptr %.2, i64 2        ; 2 uses
  store i8 46, ptr %i.jn, align 1, !tbaa !15
  %i.jp = icmp slt i32 %.2220, 0
  br i1 %i.jp, label %.lr.ph279.preheader, label %._crit_edge280

.lr.ph279.preheader:                              ; preds = %bb.bl
  %i.jq = sub nsw i32 0, %.2220
  %i.jr = zext nneg i32 %i.jq to i64              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.jo, i8 48, i64 %i.jr, i1 false), !tbaa !15
  %i.js = getelementptr i8, ptr %.2, i64 %i.jr
  %scevgep292 = getelementptr i8, ptr %i.js, i64 2
  br label %._crit_edge280

._crit_edge280:                                   ; preds = %.lr.ph279.preheader, %bb.bl
  %.5.lcssa = phi ptr [ %i.jo, %bb.bl ], [ %scevgep292, %.lr.ph279.preheader ] ; 2 uses
  %i.jt = tail call fastcc i32 @output_digits(ptr noundef nonnull %.5.lcssa, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %.3217, i32 noundef %.3217)
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr inbounds i8, ptr %.5.lcssa, i64 %i.ju
  br label %.loopexit

bb.bm:                                            ; preds = %bb.bk
  %..i257 = tail call noundef i32 @llvm.smin.i32(i32 %.3217, i32 %.2220)
  %i.jw = tail call fastcc i32 @output_digits(ptr noundef %.2, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %.3217, i32 noundef %..i257)
  %i.jx = sext i32 %i.jw to i64                   ; 2 uses
  %i.jy = getelementptr i8, ptr %.2, i64 %i.jx    ; 2 uses
  %i.jz = sub nsw i32 %.2220, %.3217              ; 2 uses
  %i.ka = icmp sgt i32 %i.jz, 0
  br i1 %i.ka, label %.lr.ph274.preheader, label %.loopexit

.lr.ph274.preheader:                              ; preds = %bb.bm
  %i.kb = zext nneg i32 %i.jz to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.jy, i8 48, i64 %i.kb, i1 false), !tbaa !15
  %i.kc = xor i32 %.3217, -1
  %i.kd = add i32 %.2220, %i.kc
  %i.ke = zext i32 %i.kd to i64
  %i.kf = getelementptr i8, ptr %.2, i64 %i.jx
  %i.kg = getelementptr i8, ptr %i.kf, i64 %i.ke
  %scevgep = getelementptr i8, ptr %i.kg, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph274.preheader, %bb.bm, %bb.aw, %u32toa.exit, %._crit_edge280, %bb.e, %bb.f, %u64toa_radix.exit
  %.7 = phi ptr [ %i.n, %bb.e ], [ %i.o, %bb.f ], [ %i.jl, %u32toa.exit ], [ %i.jv, %._crit_edge280 ], [ %i.hl, %bb.aw ], [ %i.cn, %u64toa_radix.exit ], [ %i.jy, %bb.bm ], [ %scevgep, %.lr.ph274.preheader ] ; 2 uses
  store i8 0, ptr %.7, align 1, !tbaa !15
  %i.kh = ptrtoint ptr %.7 to i64
  %i.ki = ptrtoint ptr %0 to i64
  %i.kj = sub i64 %i.kh, %i.ki
  %i.kk = trunc i64 %i.kj to i32
  ret i32 %i.kk
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
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.n = getelementptr inbounds [4 x i8], ptr @radix_base_table, i64 %i.f ; 2 uses
  %i.o = icmp eq i32 %2, 10
  br i1 %i.o, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph, %limb_to_a.exit.us
  %.169.us = phi i32 [ %i.p, %limb_to_a.exit.us ], [ %3, %.lr.ph ] ; 2 uses
  %..i54.us = tail call noundef i32 @llvm.smin.i32(i32 %.169.us, i32 %i.i) ; 2 uses
  %i.p = sub nsw i32 %.169.us, %..i54.us          ; 3 uses
  %i.q = load i32, ptr %1, align 4, !tbaa !18     ; 3 uses
  %.013.i55.us = add i32 %i.q, -1                 ; 2 uses
  %i.r = icmp sgt i32 %.013.i55.us, -1
  br i1 %i.r, label %.lr.ph.i56.us, label %mpb_renorm.exit.us

.lr.ph.i56.us:                                    ; preds = %.lr.ph.split.us
  %i.s = load i32, ptr %i.n, align 4, !tbaa !18
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = zext nneg i32 %.013.i55.us to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i56.us
  %indvars.iv.i57.us.a = phi i64 [ %i.u, %.lr.ph.i56.us ], [ %indvars.iv.next.i58.us, %bb.b ] ; 3 uses
  %.01214.i.us = phi i64 [ 0, %.lr.ph.i56.us ], [ %i.ac, %bb.b ]
  %i.v = shl nuw i64 %.01214.i.us, 32
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i57.us.a ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !18
  %i.y = zext i32 %i.x to i64
  %i.z = or disjoint i64 %i.v, %i.y               ; 2 uses
  %i.aa = udiv i64 %i.z, %i.t
  %i.ab = trunc i64 %i.aa to i32
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !18
  %i.ac = urem i64 %i.z, %i.t                     ; 2 uses
  %indvars.iv.next.i58.us = add nsw i64 %indvars.iv.i57.us.a, -1
  %.not.i.us = icmp eq i64 %indvars.iv.i57.us.a, 0
  br i1 %.not.i.us, label %mp_div1.exit.us, label %bb.b, !llvm.loop !21

mp_div1.exit.us:                                  ; preds = %bb.b
  %i.ad = trunc nuw i64 %i.ac to i32              ; 3 uses
  %i.ae = icmp sgt i32 %i.q, 1
  br i1 %i.ae, label %.lr.ph.i59.us, label %mpb_renorm.exit.us

.lr.ph.i59.us:                                    ; preds = %mp_div1.exit.us, %bb.c
  %i.af = phi i32 [ %i.ak, %bb.c ], [ %i.q, %mp_div1.exit.us ] ; 3 uses
  %i.ag = zext nneg i32 %i.af to i64
  %i.ah = getelementptr [4 x i8], ptr %1, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !18
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.c, label %mpb_renorm.exit.us

bb.c:                                             ; preds = %.lr.ph.i59.us
  %i.ak = add nsw i32 %i.af, -1                   ; 2 uses
  store i32 %i.ak, ptr %1, align 4, !tbaa !18
  %i.al = icmp sgt i32 %i.af, 2
  br i1 %i.al, label %.lr.ph.i59.us, label %mpb_renorm.exit.us, !llvm.loop !4

mpb_renorm.exit.us:                               ; preds = %.lr.ph.i59.us, %bb.c, %mp_div1.exit.us, %.lr.ph.split.us
  %.012.lcssa.i64.us = phi i32 [ 0, %.lr.ph.split.us ], [ %i.ad, %mp_div1.exit.us ], [ %i.ad, %bb.c ], [ %i.ad, %.lr.ph.i59.us ]
  %i.am = zext nneg i32 %i.p to i64
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.am
  %.08.i.i.us = add i32 %..i54.us, -1             ; 2 uses
  %i.ao = icmp sgt i32 %.08.i.i.us, -1
  br i1 %i.ao, label %.lr.ph.preheader.i.i.us, label %limb_to_a.exit.us

.lr.ph.preheader.i.i.us:                          ; preds = %mpb_renorm.exit.us
  %i.ap = zext nneg i32 %.08.i.i.us to i64
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us, %.lr.ph.preheader.i.i.us
  %indvars.iv.i.i.us = phi i64 [ %i.ap, %.lr.ph.preheader.i.i.us ], [ %indvars.iv.next.i.i.us, %.lr.ph.i.i.us ] ; 3 uses
  %.079.i.i.us = phi i32 [ %.012.lcssa.i64.us, %.lr.ph.preheader.i.i.us ], [ %i.ar, %.lr.ph.i.i.us ] ; 2 uses
  %i.aq = urem i32 %.079.i.i.us, 10
  %i.ar = udiv i32 %.079.i.i.us, 10
  %i.as = trunc nuw nsw i32 %i.aq to i8
  %i.at = or disjoint i8 %i.as, 48
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %indvars.iv.i.i.us
  store i8 %i.at, ptr %i.au, align 1, !tbaa !15
  %indvars.iv.next.i.i.us = add nsw i64 %indvars.iv.i.i.us, -1
  %.not.i.i.us = icmp eq i64 %indvars.iv.i.i.us, 0
  br i1 %.not.i.i.us, label %limb_to_a.exit.us, label %.lr.ph.i.i.us, !llvm.loop !22

limb_to_a.exit.us:                                ; preds = %.lr.ph.i.i.us, %mpb_renorm.exit.us
  %.not52.us = icmp eq i32 %i.p, 0
  br i1 %.not52.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !23

bb.d:                                             ; preds = %.preheader66, %bb.f
  %.047 = phi i32 [ %i.av, %bb.f ], [ %3, %.preheader66 ] ; 2 uses
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %.047, i32 %i.i) ; 3 uses
  %i.av = sub nsw i32 %.047, %..i                 ; 3 uses
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 %i.aw
  %i.ay = icmp sgt i32 %..i, 0
  br i1 %i.ay, label %.lr.ph.i, label %u64toa_bin_len.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.az = load i32, ptr %i.k, align 4, !tbaa !18
  %i.ba = zext nneg i32 %..i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ba, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %.01416.i = phi i32 [ %i.az, %.lr.ph.i ], [ %i.bc, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.bb = and i32 %.01416.i, %i.j                 ; 3 uses
  %i.bc = lshr i32 %.01416.i, %i.d
  %i.bd = icmp samesign ult i32 %i.bb, 10
  %i.be = or disjoint i32 %i.bb, 48
  %i.bf = add nuw nsw i32 %i.bb, 87
  %.013.i = select i1 %i.bd, i32 %i.be, i32 %i.bf
  %i.bg = trunc i32 %.013.i to i8
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ax, i64 %indvars.iv.next.i
  store i8 %i.bg, ptr %i.bh, align 1, !tbaa !15
  %i.bi = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.bi, label %bb.e, label %u64toa_bin_len.exit, !llvm.loop !1

u64toa_bin_len.exit:                              ; preds = %bb.e, %bb.d
  %i.bj = icmp eq i32 %i.av, 0
  br i1 %i.bj, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %u64toa_bin_len.exit
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %1, i32 noundef %i.l, i32 noundef 2)
  br label %bb.d

.lr.ph.split:                                     ; preds = %.lr.ph, %limb_to_a.exit
  %.169 = phi i32 [ %i.bk, %limb_to_a.exit ], [ %3, %.lr.ph ] ; 2 uses
  %..i54 = tail call noundef i32 @llvm.smin.i32(i32 %.169, i32 %i.i) ; 3 uses
  %i.bk = sub nsw i32 %.169, %..i54               ; 3 uses
  %i.bl = load i32, ptr %1, align 4, !tbaa !18    ; 3 uses
  %.013.i55 = add i32 %i.bl, -1                   ; 2 uses
  %i.bm = icmp sgt i32 %.013.i55, -1
  br i1 %i.bm, label %.lr.ph.i56, label %mpb_renorm.exit

.lr.ph.i56:                                       ; preds = %.lr.ph.split
  %i.bn = load i32, ptr %i.n, align 4, !tbaa !18
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = zext nneg i32 %.013.i55 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i56
  %indvars.iv.i57.a = phi i64 [ %i.bp, %.lr.ph.i56 ], [ %indvars.iv.next.i58, %bb.g ] ; 3 uses
  %.01214.i = phi i64 [ 0, %.lr.ph.i56 ], [ %i.bx, %bb.g ]
  %i.bq = shl nuw i64 %.01214.i, 32
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i57.a ; 2 uses
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !18
  %i.bt = zext i32 %i.bs to i64
  %i.bu = or disjoint i64 %i.bq, %i.bt            ; 2 uses
  %i.bv = udiv i64 %i.bu, %i.bo
  %i.bw = trunc i64 %i.bv to i32
  store i32 %i.bw, ptr %i.br, align 4, !tbaa !18
  %i.bx = urem i64 %i.bu, %i.bo                   ; 2 uses
  %indvars.iv.next.i58 = add nsw i64 %indvars.iv.i57.a, -1
  %.not.i = icmp eq i64 %indvars.iv.i57.a, 0
  br i1 %.not.i, label %mp_div1.exit, label %bb.g, !llvm.loop !21

mp_div1.exit:                                     ; preds = %bb.g
  %i.by = trunc nuw i64 %i.bx to i32              ; 3 uses
  %i.bz = icmp sgt i32 %i.bl, 1
  br i1 %i.bz, label %.lr.ph.i59, label %mpb_renorm.exit

.lr.ph.i59:                                       ; preds = %mp_div1.exit, %bb.h
  %i.ca = phi i32 [ %i.cf, %bb.h ], [ %i.bl, %mp_div1.exit ] ; 3 uses
  %i.cb = zext nneg i32 %i.ca to i64
  %i.cc = getelementptr [4 x i8], ptr %1, i64 %i.cb
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !18
  %i.ce = icmp eq i32 %i.cd, 0
  br i1 %i.ce, label %bb.h, label %mpb_renorm.exit

bb.h:                                             ; preds = %.lr.ph.i59
  %i.cf = add nsw i32 %i.ca, -1                   ; 2 uses
  store i32 %i.cf, ptr %1, align 4, !tbaa !18
  %i.cg = icmp sgt i32 %i.ca, 2
  br i1 %i.cg, label %.lr.ph.i59, label %mpb_renorm.exit, !llvm.loop !4

mpb_renorm.exit:                                  ; preds = %.lr.ph.i59, %bb.h, %.lr.ph.split, %mp_div1.exit
  %.012.lcssa.i64 = phi i32 [ 0, %.lr.ph.split ], [ %i.by, %mp_div1.exit ], [ %i.by, %bb.h ], [ %i.by, %.lr.ph.i59 ]
  %i.ch = zext nneg i32 %i.bk to i64
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 %i.ch
  %i.cj = icmp sgt i32 %..i54, 0
  br i1 %i.cj, label %.lr.ph.preheader.i, label %limb_to_a.exit

.lr.ph.preheader.i:                               ; preds = %mpb_renorm.exit
  %i.ck = zext nneg i32 %..i54 to i64
  br label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.lr.ph.i60, %.lr.ph.preheader.i
  %indvars.iv.i61 = phi i64 [ %i.ck, %.lr.ph.preheader.i ], [ %indvars.iv.next.i62, %.lr.ph.i60 ] ; 2 uses
  %.01721.i = phi i32 [ %.012.lcssa.i64, %.lr.ph.preheader.i ], [ %i.cm, %.lr.ph.i60 ] ; 2 uses
  %indvars.iv.next.i62 = add nsw i64 %indvars.iv.i61, -1 ; 2 uses
  %i.cl = urem i32 %.01721.i, %2                  ; 2 uses
  %i.cm = udiv i32 %.01721.i, %2
  %i.cn = icmp slt i32 %i.cl, 10
  %.016.v.i = select i1 %i.cn, i32 48, i32 87
  %.016.i = add nsw i32 %.016.v.i, %i.cl
  %i.co = trunc i32 %.016.i to i8
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 %indvars.iv.next.i62
  store i8 %i.co, ptr %i.cp, align 1, !tbaa !15
  %i.cq = icmp samesign ugt i64 %indvars.iv.i61, 1
  br i1 %i.cq, label %.lr.ph.i60, label %limb_to_a.exit, !llvm.loop !24

limb_to_a.exit:                                   ; preds = %.lr.ph.i60, %mpb_renorm.exit
  %.not52 = icmp eq i32 %i.bk, 0
  br i1 %.not52, label %.loopexit, label %.lr.ph.split, !llvm.loop !23

.loopexit:                                        ; preds = %u64toa_bin_len.exit, %limb_to_a.exit, %limb_to_a.exit.us, %.preheader
  %.not53 = icmp eq i32 %4, %3
  br i1 %.not53, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.cr = sext i32 %4 to i64
  %i.cs = getelementptr inbounds i8, ptr %0, i64 %i.cr ; 3 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 1
  %i.cu = sub nsw i32 %3, %4
  %i.cv = sext i32 %i.cu to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.ct, ptr align 1 %i.cs, i64 %i.cv, i1 false)
  store i8 46, ptr %i.cs, align 1, !tbaa !15
  %i.cw = add nsw i32 %3, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %.0 = phi i32 [ %i.cw, %bb.i ], [ %3, %.loopexit ]
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
end_hunk_0
