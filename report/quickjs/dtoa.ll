Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quickjs/original/dtoa?download=true
inline.NumInlined: 95
inline.NumDeleted: 32
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 12
begin_hunk_0_@js_dtoa:bb.a
  %i.il = urem i32 %.08.i, 10
  %i.im = trunc nuw nsw i32 %i.il to i8
  %i.in = or disjoint i8 %i.im, 48
  %i.io = getelementptr inbounds i8, ptr %.0.i255, i64 -1 ; 4 uses
  store i8 %i.in, ptr %i.io, align 1, !tbaa !8
  %i.ip = udiv i32 %.08.i, 10
  %.not.i256 = icmp samesign ult i32 %.08.i, 10
  br i1 %.not.i256, label %u32toa.exit, label %bb.bk, !llvm.loop !9

u32toa.exit:                                      ; preds = %bb.bk
  %.4 = getelementptr inbounds nuw i8, ptr %i.id, i64 2 ; 2 uses
  %i.iq = ptrtoint ptr %i.ik to i64
  %i.ir = ptrtoint ptr %i.io to i64
  %i.is = sub i64 %i.iq, %i.ir                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %.4, ptr noundef nonnull align 1 dereferenceable(1) %i.io, i64 %i.is, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  %i.it = getelementptr inbounds nuw i8, ptr %.4, i64 %i.is
  br label %.loopexit

bb.bl:                                            ; preds = %bb.bg, %bb.bf
  %i.iu = icmp slt i32 %.2220, 1
  br i1 %i.iu, label %bb.bm, label %bb.bn

bb.bm:                                            ; preds = %bb.bl
  %i.iv = getelementptr inbounds nuw i8, ptr %.2, i64 1
  store i8 48, ptr %.2, align 1, !tbaa !8
  %i.iw = getelementptr i8, ptr %.2, i64 2        ; 2 uses
  store i8 46, ptr %i.iv, align 1, !tbaa !8
  %i.ix = icmp slt i32 %.2220, 0
  br i1 %i.ix, label %.lr.ph279.preheader, label %._crit_edge280

.lr.ph279.preheader:                              ; preds = %bb.bm
  %i.iy = sub nsw i32 0, %.2220
  %i.iz = zext nneg i32 %i.iy to i64              ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.iw, i8 48, i64 %i.iz, i1 false), !tbaa !8
  %i.ja = getelementptr i8, ptr %.2, i64 %i.iz
  %scevgep292 = getelementptr i8, ptr %i.ja, i64 2
  br label %._crit_edge280

._crit_edge280:                                   ; preds = %.lr.ph279.preheader, %bb.bm
  %.5.lcssa = phi ptr [ %i.iw, %bb.bm ], [ %scevgep292, %.lr.ph279.preheader ] ; 2 uses
  %i.jb = tail call fastcc i32 @output_digits(ptr noundef nonnull %.5.lcssa, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %.3217, i32 noundef %.3217)
  %i.jc = sext i32 %i.jb to i64
  %i.jd = getelementptr inbounds i8, ptr %.5.lcssa, i64 %i.jc
  br label %.loopexit

bb.bn:                                            ; preds = %bb.bl
  %..i257 = tail call noundef i32 @llvm.smin.i32(i32 %.3217, i32 %.2220)
  %i.je = tail call fastcc i32 @output_digits(ptr noundef %.2, ptr noundef nonnull %5, i32 noundef %2, i32 noundef %.3217, i32 noundef %..i257)
  %i.jf = sext i32 %i.je to i64                   ; 2 uses
  %i.jg = getelementptr i8, ptr %.2, i64 %i.jf    ; 2 uses
  %i.jh = sub nsw i32 %.2220, %.3217              ; 2 uses
  %i.ji = icmp sgt i32 %i.jh, 0
  br i1 %i.ji, label %.lr.ph274.preheader, label %.loopexit

.lr.ph274.preheader:                              ; preds = %bb.bn
  %i.jj = zext nneg i32 %i.jh to i64
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.jg, i8 48, i64 %i.jj, i1 false), !tbaa !8
  %i.jk = xor i32 %.3217, -1
  %i.jl = add i32 %.2220, %i.jk
  %i.jm = zext i32 %i.jl to i64
  %i.jn = getelementptr i8, ptr %.2, i64 %i.jf
  %i.jo = getelementptr i8, ptr %i.jn, i64 %i.jm
  %scevgep = getelementptr i8, ptr %i.jo, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph274.preheader, %bb.bn, %bb.ax, %u32toa.exit, %._crit_edge280, %bb.e, %bb.f, %u64toa_radix.exit
  %.7 = phi ptr [ %i.n, %bb.e ], [ %i.o, %bb.f ], [ %i.it, %u32toa.exit ], [ %i.jd, %._crit_edge280 ], [ %i.gt, %bb.ax ], [ %i.bv, %u64toa_radix.exit ], [ %i.jg, %bb.bn ], [ %scevgep, %.lr.ph274.preheader ] ; 2 uses
  store i8 0, ptr %.7, align 1, !tbaa !8
  %i.jp = ptrtoint ptr %.7 to i64
  %i.jq = ptrtoint ptr %0 to i64
  %i.jr = sub i64 %i.jp, %i.jq
  %i.js = trunc i64 %i.jr to i32
  ret i32 %i.js
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc range(i64 0, -9223372036854775808) i64 @mul_pow_round_to_d(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef range(i32 0, 32) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = tail call fastcc i32 @mul_pow(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i1 noundef zeroext false, i32 noundef 55)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !14
  %i.d = icmp eq i32 %i.c, 0
  %.pre.i = load i32, ptr %1, align 4, !tbaa !14  ; 3 uses
  %i.e = icmp eq i32 %.pre.i, 1
  %or.cond.i = select i1 %i.d, i1 %i.e, i1 false
  br i1 %or.cond.i, label %round_to_d.exit, label %mpb_floor_log2.exit.i

mpb_floor_log2.exit.i:                            ; preds = %bb.a
  %i.f = sext i32 %.pre.i to i64
  %i.g = getelementptr [4 x i8], ptr %1, i64 %i.f
  %i.h = load i32, ptr %i.g, align 4, !tbaa !14   ; 2 uses
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
  %i.p = load i32, ptr %1, align 4, !tbaa !14
  %i.q = icmp eq i32 %i.p, 1
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %mpb_floor_log2.exit.i
  %i.r = load i32, ptr %i.b, align 4, !tbaa !14
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
  store i32 %.125.i, ptr %0, align 4, !tbaa !14
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
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8
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
  %i.q = load i32, ptr %1, align 4, !tbaa !14     ; 3 uses
  %.013.i55.us = add i32 %i.q, -1                 ; 2 uses
  %i.r = icmp sgt i32 %.013.i55.us, -1
  br i1 %i.r, label %.lr.ph.i56.us, label %mpb_renorm.exit.us

.lr.ph.i56.us:                                    ; preds = %.lr.ph.split.us
  %i.s = load i32, ptr %i.n, align 4, !tbaa !14
  %i.t = zext i32 %i.s to i64                     ; 2 uses
  %i.u = zext nneg i32 %.013.i55.us to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph.i56.us
  %indvars.iv.i57.us = phi i64 [ %i.u, %.lr.ph.i56.us ], [ %indvars.iv.next.i58.us, %bb.b ] ; 3 uses
  %.01214.i.us = phi i64 [ 0, %.lr.ph.i56.us ], [ %i.ac, %bb.b ]
  %i.v = shl nuw i64 %.01214.i.us, 32
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i57.us ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !14
  %i.y = zext i32 %i.x to i64
  %i.z = or disjoint i64 %i.v, %i.y               ; 2 uses
  %i.aa = udiv i64 %i.z, %i.t
  %i.ab = trunc i64 %i.aa to i32
  store i32 %i.ab, ptr %i.w, align 4, !tbaa !14
  %i.ac = urem i64 %i.z, %i.t                     ; 2 uses
  %indvars.iv.next.i58.us = add nsw i64 %indvars.iv.i57.us, -1
  %.not.i.us = icmp eq i64 %indvars.iv.i57.us, 0
  br i1 %.not.i.us, label %mp_div1.exit.us, label %bb.b, !llvm.loop !18

mp_div1.exit.us:                                  ; preds = %bb.b
  %i.ad = trunc nuw i64 %i.ac to i32              ; 3 uses
  %i.ae = icmp sgt i32 %i.q, 1
  br i1 %i.ae, label %.lr.ph.i59.us, label %mpb_renorm.exit.us

.lr.ph.i59.us:                                    ; preds = %mp_div1.exit.us, %bb.c
  %5 = phi i32 [ %7, %bb.c ], [ %i.q, %mp_div1.exit.us ] ; 3 uses
  %6 = zext nneg i32 %5 to i64
  %i.af = getelementptr [4 x i8], ptr %1, i64 %6
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !14
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.c, label %mpb_renorm.exit.us

bb.c:                                             ; preds = %.lr.ph.i59.us
  %7 = add nsw i32 %5, -1                         ; 2 uses
  store i32 %7, ptr %1, align 4, !tbaa !14
  %i.ai = icmp sgt i32 %5, 2
  br i1 %i.ai, label %.lr.ph.i59.us, label %mpb_renorm.exit.us, !llvm.loop !19

mpb_renorm.exit.us:                               ; preds = %.lr.ph.i59.us, %bb.c, %mp_div1.exit.us, %.lr.ph.split.us
  %.012.lcssa.i64.us = phi i32 [ 0, %.lr.ph.split.us ], [ %i.ad, %mp_div1.exit.us ], [ %i.ad, %bb.c ], [ %i.ad, %.lr.ph.i59.us ]
  %i.aj = zext nneg i32 %i.p to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 %i.aj
  %.08.i.i.us = add i32 %..i54.us, -1             ; 2 uses
  %i.al = icmp sgt i32 %.08.i.i.us, -1
  br i1 %i.al, label %.lr.ph.preheader.i.i.us, label %limb_to_a.exit.us

.lr.ph.preheader.i.i.us:                          ; preds = %mpb_renorm.exit.us
  %i.am = zext nneg i32 %.08.i.i.us to i64
  br label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.i.i.us, %.lr.ph.preheader.i.i.us
  %indvars.iv.i.i.us = phi i64 [ %i.am, %.lr.ph.preheader.i.i.us ], [ %indvars.iv.next.i.i.us, %.lr.ph.i.i.us ] ; 3 uses
  %.079.i.i.us = phi i32 [ %.012.lcssa.i64.us, %.lr.ph.preheader.i.i.us ], [ %i.ao, %.lr.ph.i.i.us ] ; 2 uses
  %i.an = urem i32 %.079.i.i.us, 10
  %i.ao = udiv i32 %.079.i.i.us, 10
  %i.ap = trunc nuw nsw i32 %i.an to i8
  %i.aq = or disjoint i8 %i.ap, 48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ak, i64 %indvars.iv.i.i.us
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !8
  %indvars.iv.next.i.i.us = add nsw i64 %indvars.iv.i.i.us, -1
  %.not.i.i.us = icmp eq i64 %indvars.iv.i.i.us, 0
  br i1 %.not.i.i.us, label %limb_to_a.exit.us, label %.lr.ph.i.i.us, !llvm.loop !20

limb_to_a.exit.us:                                ; preds = %.lr.ph.i.i.us, %mpb_renorm.exit.us
  %.not52.us = icmp eq i32 %i.p, 0
  br i1 %.not52.us, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !21

bb.d:                                             ; preds = %.preheader66, %bb.f
  %.047 = phi i32 [ %i.as, %bb.f ], [ %3, %.preheader66 ] ; 2 uses
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %.047, i32 %i.i) ; 3 uses
  %i.as = sub nsw i32 %.047, %..i                 ; 3 uses
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 %i.at
  %i.av = icmp sgt i32 %..i, 0
  br i1 %i.av, label %.lr.ph.i, label %u64toa_bin_len.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.aw = load i32, ptr %i.k, align 4, !tbaa !14
  %i.ax = zext nneg i32 %..i to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.ax, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.e ] ; 2 uses
  %.01416.i = phi i32 [ %i.aw, %.lr.ph.i ], [ %i.az, %bb.e ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.ay = and i32 %.01416.i, %i.j                 ; 3 uses
  %i.az = lshr i32 %.01416.i, %i.d
  %i.ba = icmp samesign ult i32 %i.ay, 10
  %i.bb = or disjoint i32 %i.ay, 48
  %i.bc = add nuw nsw i32 %i.ay, 87
  %.013.i = select i1 %i.ba, i32 %i.bb, i32 %i.bc
  %i.bd = trunc i32 %.013.i to i8
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 %indvars.iv.next.i
  store i8 %i.bd, ptr %i.be, align 1, !tbaa !8
  %i.bf = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.bf, label %bb.e, label %u64toa_bin_len.exit, !llvm.loop !12

u64toa_bin_len.exit:                              ; preds = %bb.e, %bb.d
  %i.bg = icmp eq i32 %i.as, 0
  br i1 %i.bg, label %.loopexit, label %bb.f

bb.f:                                             ; preds = %u64toa_bin_len.exit
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %1, i32 noundef %i.l, i32 noundef 2)
  br label %bb.d

.lr.ph.split:                                     ; preds = %.lr.ph, %limb_to_a.exit
  %.169 = phi i32 [ %i.bh, %limb_to_a.exit ], [ %3, %.lr.ph ] ; 2 uses
  %..i54 = tail call noundef i32 @llvm.smin.i32(i32 %.169, i32 %i.i) ; 3 uses
  %i.bh = sub nsw i32 %.169, %..i54               ; 3 uses
  %i.bi = load i32, ptr %1, align 4, !tbaa !14    ; 3 uses
  %.013.i55 = add i32 %i.bi, -1                   ; 2 uses
  %i.bj = icmp sgt i32 %.013.i55, -1
  br i1 %i.bj, label %.lr.ph.i56, label %mpb_renorm.exit

.lr.ph.i56:                                       ; preds = %.lr.ph.split
  %i.bk = load i32, ptr %i.n, align 4, !tbaa !14
  %i.bl = zext i32 %i.bk to i64                   ; 2 uses
  %i.bm = zext nneg i32 %.013.i55 to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i56
  %indvars.iv.i57 = phi i64 [ %i.bm, %.lr.ph.i56 ], [ %indvars.iv.next.i58, %bb.g ] ; 3 uses
  %.01214.i = phi i64 [ 0, %.lr.ph.i56 ], [ %i.bu, %bb.g ]
  %i.bn = shl nuw i64 %.01214.i, 32
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i57 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !14
  %i.bq = zext i32 %i.bp to i64
  %i.br = or disjoint i64 %i.bn, %i.bq            ; 2 uses
  %i.bs = udiv i64 %i.br, %i.bl
  %i.bt = trunc i64 %i.bs to i32
  store i32 %i.bt, ptr %i.bo, align 4, !tbaa !14
  %i.bu = urem i64 %i.br, %i.bl                   ; 2 uses
  %indvars.iv.next.i58 = add nsw i64 %indvars.iv.i57, -1
  %.not.i = icmp eq i64 %indvars.iv.i57, 0
  br i1 %.not.i, label %mp_div1.exit, label %bb.g, !llvm.loop !18

mp_div1.exit:                                     ; preds = %bb.g
  %i.bv = trunc nuw i64 %i.bu to i32              ; 3 uses
  %i.bw = icmp sgt i32 %i.bi, 1
  br i1 %i.bw, label %.lr.ph.i59, label %mpb_renorm.exit

.lr.ph.i59:                                       ; preds = %mp_div1.exit, %bb.h
  %8 = phi i32 [ %10, %bb.h ], [ %i.bi, %mp_div1.exit ] ; 3 uses
  %9 = zext nneg i32 %8 to i64
  %i.bx = getelementptr [4 x i8], ptr %1, i64 %9
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !14
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %bb.h, label %mpb_renorm.exit

bb.h:                                             ; preds = %.lr.ph.i59
  %10 = add nsw i32 %8, -1                        ; 2 uses
  store i32 %10, ptr %1, align 4, !tbaa !14
  %i.ca = icmp sgt i32 %8, 2
  br i1 %i.ca, label %.lr.ph.i59, label %mpb_renorm.exit, !llvm.loop !19

mpb_renorm.exit:                                  ; preds = %.lr.ph.i59, %bb.h, %.lr.ph.split, %mp_div1.exit
  %.012.lcssa.i64 = phi i32 [ 0, %.lr.ph.split ], [ %i.bv, %mp_div1.exit ], [ %i.bv, %bb.h ], [ %i.bv, %.lr.ph.i59 ]
  %i.cb = zext nneg i32 %i.bh to i64
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 %i.cb
  %i.cd = icmp sgt i32 %..i54, 0
  br i1 %i.cd, label %.lr.ph.preheader.i.a, label %limb_to_a.exit

.lr.ph.preheader.i.a:                             ; preds = %mpb_renorm.exit
  %i.ce = zext nneg i32 %..i54 to i64
  br label %.lr.ph.i60

.lr.ph.i60:                                       ; preds = %.lr.ph.i60, %.lr.ph.preheader.i.a
  %indvars.iv.i61 = phi i64 [ %i.ce, %.lr.ph.preheader.i.a ], [ %indvars.iv.next.i62, %.lr.ph.i60 ] ; 2 uses
  %.01721.i = phi i32 [ %.012.lcssa.i64, %.lr.ph.preheader.i.a ], [ %i.cg, %.lr.ph.i60 ] ; 2 uses
  %indvars.iv.next.i62 = add nsw i64 %indvars.iv.i61, -1 ; 2 uses
  %i.cf = urem i32 %.01721.i, %2                  ; 2 uses
  %i.cg = udiv i32 %.01721.i, %2
  %i.ch = icmp slt i32 %i.cf, 10
  %.016.v.i = select i1 %i.ch, i32 48, i32 87
  %.016.i = add nsw i32 %.016.v.i, %i.cf
  %i.ci = trunc i32 %.016.i to i8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cc, i64 %indvars.iv.next.i62
  store i8 %i.ci, ptr %i.cj, align 1, !tbaa !8
  %i.ck = icmp samesign ugt i64 %indvars.iv.i61, 1
  br i1 %i.ck, label %.lr.ph.i60, label %limb_to_a.exit, !llvm.loop !22

limb_to_a.exit:                                   ; preds = %.lr.ph.i60, %mpb_renorm.exit
  %.not52 = icmp eq i32 %i.bh, 0
  br i1 %.not52, label %.loopexit, label %.lr.ph.split, !llvm.loop !21

.loopexit:                                        ; preds = %u64toa_bin_len.exit, %limb_to_a.exit, %limb_to_a.exit.us, %.preheader
  %.not53 = icmp eq i32 %4, %3
  br i1 %.not53, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.cl = sext i32 %4 to i64
  %i.cm = getelementptr inbounds i8, ptr %0, i64 %i.cl ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 1
  %i.co = sub nsw i32 %3, %4
  %i.cp = sext i32 %i.co to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.cn, ptr align 1 %i.cm, i64 %i.cp, i1 false)
  store i8 46, ptr %i.cm, align 1, !tbaa !8
  %i.cq = add nsw i32 %3, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %.0 = phi i32 [ %i.cq, %bb.i ], [ %3, %.loopexit ]
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
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8
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
  %i.r = load i32, ptr %i.q, align 4, !tbaa !14
  %i.s = zext i32 %i.r to i64                     ; 2 uses
  %i.t = icmp samesign ugt i32 %..i, 13
  br i1 %i.t, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr @pow5h_table, i64 %i.o
  %i.v = getelementptr i8, ptr %i.u, i64 -14
  %i.w = load i8, ptr %i.v, align 1, !tbaa !8
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
  br i1 %.not36.i.1, label %pow_ui.exit, label %.new114, !llvm.loop !15

pow_ui.exit:                                      ; preds = %.prol.loopexit113, %.new114, %bb.d, %bb.e, %bb.i
  %.031.i = phi i64 [ 1, %bb.d ], [ %i.i, %bb.e ], [ %.1.i, %bb.i ], [ %spec.select.i.lcssa.unr, %.prol.loopexit113 ], [ %spec.select.i.1, %.new114 ]
  %i.at = trunc i64 %.031.i to i32
  br label %bb.k

bb.k:                                             ; preds = %pow_ui.exit, %bb.c
  %.163 = phi i32 [ %..i, %pow_ui.exit ], [ %.062100, %bb.c ]
  %.161 = phi i32 [ %i.at, %pow_ui.exit ], [ %.060101, %bb.c ] ; 2 uses
  %i.au = load i32, ptr %0, align 4, !tbaa !14    ; 6 uses
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
end_hunk_0
begin_hunk_1_@mul_pow:bb.a

mp_mul1.exit:                                     ; preds = %mp_mul1.exit.unr-lcssa, %.epil.preheader
  %.lcssa = phi i64 [ %i.bl, %mp_mul1.exit.unr-lcssa ], [ %i.bs, %.epil.preheader ] ; 2 uses
  %.not76 = icmp eq i64 %.lcssa, 0
  br i1 %.not76, label %mp_mul1.exit.thread, label %bb.m

bb.m:                                             ; preds = %mp_mul1.exit
  %i.bt = trunc nuw i64 %.lcssa to i32
  %i.bu = add nsw i32 %i.au, 1
  store i32 %i.bu, ptr %0, align 4, !tbaa !14
  %i.bv = sext i32 %i.au to i64
  %i.bw = getelementptr inbounds [4 x i8], ptr %i.l, i64 %i.bv
  store i32 %i.bt, ptr %i.bw, align 4, !tbaa !14
  br label %mp_mul1.exit.thread

mp_mul1.exit.thread:                              ; preds = %bb.k, %bb.m, %mp_mul1.exit
  %i.bx = sub nsw i32 %.06599, %..i               ; 2 uses
  %.not74 = icmp eq i32 %i.bx, 0
  br i1 %.not74, label %.loopexit, label %bb.c, !llvm.loop !24

bb.n:                                             ; preds = %bb.b
  %i.by = xor i32 %3, -1
  %i.bz = add nuw i32 %i.g, %i.by
  %i.ca = sdiv i32 %i.bz, %i.g
  %i.cb = shl nsw i32 %i.ca, 5                    ; 2 uses
  %i.cc = add nsw i32 %i.cb, %i.b                 ; 2 uses
  br i1 %4, label %bb.q, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = load i32, ptr %0, align 4, !tbaa !14    ; 2 uses
  %i.ce = sext i32 %i.cd to i64
  %i.cf = getelementptr [4 x i8], ptr %0, i64 %i.ce
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !14 ; 2 uses
  %i.ch = icmp eq i32 %i.cg, 0
  br i1 %i.ch, label %mpb_floor_log2.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ci = shl nsw i32 %i.cd, 5
  %i.cj = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.cg, i1 true)
  %i.ck = xor i32 %i.cj, -1
  %i.cl = add i32 %i.ci, %i.ck
  br label %mpb_floor_log2.exit

mpb_floor_log2.exit:                              ; preds = %bb.o, %bb.p
  %.0.i78 = phi i32 [ %i.cl, %bb.p ], [ -1, %bb.o ]
  %i.cm = sub nsw i32 %5, %.0.i78
  br label %bb.r

bb.q:                                             ; preds = %bb.n
  %i.cn = add nsw i32 %5, 2
  %i.co = sub i32 %i.cn, %i.cc
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %mpb_floor_log2.exit
  %.sink = phi i32 [ %i.co, %bb.q ], [ %i.cm, %mpb_floor_log2.exit ]
  %..i80 = tail call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %.sink, i32 0) ; 2 uses
  %i.cp = add nsw i32 %i.cb, %..i80
  %i.cq = sub nsw i32 0, %i.cp
  tail call fastcc void @mpb_shr_round(ptr noundef %0, i32 noundef %i.cq, i32 noundef 2)
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.cs = icmp eq i32 %1, 5                       ; 2 uses
  %i.ct = zext i32 %1 to i64                      ; 7 uses
  %i.cu = icmp eq i32 %1, 10                      ; 2 uses
  %or.cond.i.i = or i1 %i.cs, %i.cu
  %i.cv = mul nuw i64 %i.ct, %i.ct
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %mpb_renorm.exit
  %.097 = phi i32 [ 0, %bb.r ], [ %.1, %mpb_renorm.exit ]
  %.05896 = phi i32 [ 0, %bb.r ], [ %i.ex, %mpb_renorm.exit ]
  %.295 = phi i32 [ 0, %bb.r ], [ %.3, %mpb_renorm.exit ] ; 2 uses
  %.16694 = phi i32 [ %i.a, %bb.r ], [ %i.fd, %mpb_renorm.exit ] ; 2 uses
  %.08693 = phi i32 [ 0, %bb.r ], [ %.187, %mpb_renorm.exit ]
  %.08892 = phi i32 [ 0, %bb.r ], [ %.189.a, %mpb_renorm.exit ]
  %..i81 = tail call noundef i32 @llvm.smin.i32(i32 %.16694, i32 %i.g) ; 15 uses
  %.not73 = icmp eq i32 %..i81, %.295
  br i1 %.not73, label %pow_ui_inv.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = icmp ult i32 %..i81, 14
  %or.cond3.i82 = and i1 %i.cs, %i.cw
  br i1 %or.cond3.i82, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cx = add nsw i32 %..i81, -1
  %i.cy = zext nneg i32 %i.cx to i64              ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr @pow5_table, i64 %i.cy
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !14 ; 2 uses
  %i.db = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.da, i1 true) ; 2 uses
  %i.dc = shl i32 %i.da, %i.db
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr @pow5_inv_table, i64 %i.cy
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !14
  br label %pow_ui_inv.exit

bb.v:                                             ; preds = %bb.t
  switch i32 %..i81, label %bb.x [
    i32 0, label %pow_ui.exit.i
    i32 1, label %bb.w
  ]

bb.w:                                             ; preds = %bb.v
  br label %pow_ui.exit.i

bb.x:                                             ; preds = %bb.v
  %i.df = icmp ult i32 %..i81, 18
  %or.cond3.i.i = and i1 %or.cond.i.i, %i.df
  br i1 %or.cond3.i.i, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  %i.dg = zext nneg i32 %..i81 to i64             ; 2 uses
  %i.dh = getelementptr [4 x i8], ptr @pow5_table, i64 %i.dg
  %i.di = getelementptr i8, ptr %i.dh, i64 -4
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !14
  %i.dk = zext i32 %i.dj to i64                   ; 2 uses
  %i.dl = icmp samesign ugt i32 %..i81, 13
  br i1 %i.dl, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.dm = getelementptr i8, ptr @pow5h_table, i64 %i.dg
  %i.dn = getelementptr i8, ptr %i.dm, i64 -14
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !8
  %i.dp = zext i8 %i.do to i64
  %i.dq = shl nuw nsw i64 %i.dp, 32
  %i.dr = or disjoint i64 %i.dq, %i.dk
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %.0.i.i = phi i64 [ %i.dr, %bb.z ], [ %i.dk, %bb.y ]
  %narrow.i.i = select i1 %i.cu, i32 %..i81, i32 0
  %i.ds = zext nneg i32 %narrow.i.i to i64
  %.1.i.i = shl nuw nsw i64 %.0.i.i, %i.ds
  br label %pow_ui.exit.i

bb.ab:                                            ; preds = %bb.x
  %i.dt = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %..i81, i1 true) ; 4 uses
  %i.du = sub nsw i32 30, %i.dt                   ; 2 uses
  %i.dv = and i32 %i.dt, 1
  %lcmp.mod.not.not = icmp eq i32 %i.dv, 0
  br i1 %lcmp.mod.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %bb.ab
  %i.dw = shl nuw nsw i32 1, %i.du
  %i.dx = and i32 %i.dw, %..i81
  %.not.i.i.prol = icmp eq i32 %i.dx, 0
  %i.dy = select i1 %.not.i.i.prol, i64 1, i64 %i.ct
  %spec.select.i.i.prol = mul i64 %i.cv, %i.dy    ; 2 uses
  %i.dz = sub nsw i32 29, %i.dt
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.ab
  %spec.select.i.i.lcssa.unr = phi i64 [ poison, %bb.ab ], [ %spec.select.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.234.i.i.unr = phi i64 [ %i.ct, %bb.ab ], [ %spec.select.i.i.prol, %.prol.loopexit.unr-lcssa ]
  %.03033.i.i.unr = phi i32 [ %i.du, %bb.ab ], [ %i.dz, %.prol.loopexit.unr-lcssa ]
  %i.ea = icmp eq i32 %i.dt, 30
  br i1 %i.ea, label %pow_ui.exit.i, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.234.i.i = phi i64 [ %spec.select.i.i.1, %.new ], [ %.234.i.i.unr, %.prol.loopexit ] ; 2 uses
  %.03033.i.i = phi i32 [ %i.ek, %.new ], [ %.03033.i.i.unr, %.prol.loopexit ] ; 3 uses
  %i.eb = mul i64 %.234.i.i, %.234.i.i
  %i.ec = shl nuw i32 1, %.03033.i.i
  %i.ed = and i32 %i.ec, %..i81
  %.not.i.i = icmp eq i32 %i.ed, 0
  %i.ee = select i1 %.not.i.i, i64 1, i64 %i.ct
  %spec.select.i.i = mul i64 %i.eb, %i.ee         ; 2 uses
  %i.ef = add nsw i32 %.03033.i.i, -1             ; 2 uses
  %i.eg = mul i64 %spec.select.i.i, %spec.select.i.i
  %i.eh = shl nuw i32 1, %i.ef
  %i.ei = and i32 %i.eh, %..i81
  %.not.i.i.1 = icmp eq i32 %i.ei, 0
  %i.ej = select i1 %.not.i.i.1, i64 1, i64 %i.ct
  %spec.select.i.i.1 = mul i64 %i.eg, %i.ej       ; 2 uses
  %i.ek = add nsw i32 %.03033.i.i, -2
  %.not36.i.i.1 = icmp eq i32 %i.ef, 0
  br i1 %.not36.i.i.1, label %pow_ui.exit.i, label %.new, !llvm.loop !15

pow_ui.exit.i:                                    ; preds = %.prol.loopexit, %.new, %bb.aa, %bb.w, %bb.v
  %.031.i.i = phi i64 [ 1, %bb.v ], [ %i.ct, %bb.w ], [ %.1.i.i, %bb.aa ], [ %spec.select.i.i.lcssa.unr, %.prol.loopexit ], [ %spec.select.i.i.1, %.new ]
  %i.el = trunc i64 %.031.i.i to i32              ; 2 uses
  %i.em = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.el, i1 true) ; 2 uses
  %i.en = shl i32 %i.el, %i.em                    ; 3 uses
  %i.eo = xor i32 %i.en, -1
  %i.ep = zext i32 %i.eo to i64
  %i.eq = shl nuw i64 %i.ep, 32
  %i.er = or disjoint i64 %i.eq, 4294967295
  %i.es = zext i32 %i.en to i64
  %i.et = udiv i64 %i.er, %i.es
  %i.eu = trunc i64 %i.et to i32
  br label %pow_ui_inv.exit

pow_ui_inv.exit:                                  ; preds = %pow_ui.exit.i, %bb.u, %bb.s
  %.189.a = phi i32 [ %.08892, %bb.s ], [ %i.db, %bb.u ], [ %i.em, %pow_ui.exit.i ] ; 2 uses
  %.187 = phi i32 [ %.08693, %bb.s ], [ %i.de, %bb.u ], [ %i.eu, %pow_ui.exit.i ] ; 2 uses
  %.3 = phi i32 [ %.295, %bb.s ], [ %..i81, %bb.u ], [ %..i81, %pow_ui.exit.i ]
  %.1 = phi i32 [ %.097, %bb.s ], [ %i.dc, %bb.u ], [ %i.en, %pow_ui.exit.i ] ; 2 uses
  %i.ev = load i32, ptr %0, align 4, !tbaa !14
  %i.ew = tail call fastcc i32 @mp_div1norm(ptr noundef nonnull %i.cr, ptr noundef nonnull %i.cr, i32 noundef %i.ev, i32 noundef %.1, i32 noundef %.187, i32 noundef %.189.a)
  %i.ex = or i32 %i.ew, %.05896                   ; 2 uses
  %.pr.i = load i32, ptr %0, align 4, !tbaa !14   ; 2 uses
  %i.ey = icmp sgt i32 %.pr.i, 1
  br i1 %i.ey, label %.lr.ph.i84, label %mpb_renorm.exit

.lr.ph.i84:                                       ; preds = %pow_ui_inv.exit, %bb.ac
  %6 = phi i32 [ %8, %bb.ac ], [ %.pr.i, %pow_ui_inv.exit ] ; 3 uses
  %7 = zext nneg i32 %6 to i64
  %i.ez = getelementptr [4 x i8], ptr %0, i64 %7
  %i.fa = load i32, ptr %i.ez, align 4, !tbaa !14
  %i.fb = icmp eq i32 %i.fa, 0
  br i1 %i.fb, label %bb.ac, label %mpb_renorm.exit

bb.ac:                                            ; preds = %.lr.ph.i84
  %8 = add nsw i32 %6, -1                         ; 2 uses
  store i32 %8, ptr %0, align 4, !tbaa !14
  %i.fc = icmp sgt i32 %6, 2
  br i1 %i.fc, label %.lr.ph.i84, label %mpb_renorm.exit, !llvm.loop !19

mpb_renorm.exit:                                  ; preds = %.lr.ph.i84, %bb.ac, %pow_ui_inv.exit
  %i.fd = sub nsw i32 %.16694, %..i81             ; 2 uses
  %.not72 = icmp eq i32 %i.fd, 0
  br i1 %.not72, label %bb.ad, label %bb.s, !llvm.loop !25

bb.ad:                                            ; preds = %mpb_renorm.exit
  %i.fe = add nsw i32 %..i80, %i.cc
  %i.ff = icmp ne i32 %i.ex, 0
  %i.fg = zext i1 %i.ff to i32
  %i.fh = load i32, ptr %i.cr, align 4, !tbaa !14
  %i.fi = or i32 %i.fh, %i.fg
  store i32 %i.fi, ptr %i.cr, align 4, !tbaa !14
  br label %.loopexit

.loopexit:                                        ; preds = %mp_mul1.exit.thread, %.preheader, %bb.ad, %bb.a
  %.064 = phi i32 [ %i.b, %bb.a ], [ %i.fe, %bb.ad ], [ 0, %.preheader ], [ %i.b, %mp_mul1.exit.thread ]
  ret i32 %.064
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @mpb_shr_round(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, 3) %2) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.c = sub nsw i32 0, %1                        ; 3 uses
  %i.d = lshr i32 %i.c, 5                         ; 3 uses
  %i.e = and i32 %i.c, 31                         ; 5 uses
  %.not102 = icmp eq i32 %i.e, 0
  br i1 %.not102, label %mpb_renorm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !14     ; 5 uses
  %i.h = sext i32 %i.g to i64                     ; 2 uses
  %i.i = icmp sgt i32 %i.g, 0
  br i1 %i.i, label %.lr.ph.i, label %mp_shl.exit

.lr.ph.i:                                         ; preds = %bb.d
  %i.j = sub nuw nsw i32 32, %i.e                 ; 3 uses
  %i.k = icmp eq i32 %i.g, 1
  br i1 %i.k, label %.epil.preheader, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter = and i64 %i.h, 2147483646
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.lr.ph.i.new
  %.015.i = phi i32 [ 0, %.lr.ph.i.new ], [ %i.v, %bb.e ]
  %.01314.i = phi i64 [ 0, %.lr.ph.i.new ], [ %i.w, %bb.e ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.new ], [ %niter.next.1, %bb.e ]
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01314.i ; 2 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !14   ; 2 uses
  %i.n = shl i32 %i.m, %i.e
  %i.o = or i32 %i.n, %.015.i
  store i32 %i.o, ptr %i.l, align 4, !tbaa !14
  %i.p = lshr i32 %i.m, %i.j
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01314.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 4 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !14   ; 2 uses
  %i.t = shl i32 %i.s, %i.e
  %i.u = or disjoint i32 %i.t, %i.p
  store i32 %i.u, ptr %i.r, align 4, !tbaa !14
  %i.v = lshr i32 %i.s, %i.j                      ; 3 uses
  %i.w = add nuw nsw i64 %.01314.i, 2             ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %mp_shl.exit.loopexit.unr-lcssa, label %bb.e, !llvm.loop !26

mp_shl.exit.loopexit.unr-lcssa:                   ; preds = %bb.e
  %i.x = and i32 %i.g, 1
  %lcmp.mod.not = icmp eq i32 %i.x, 0
  br i1 %lcmp.mod.not, label %mp_shl.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %mp_shl.exit.loopexit.unr-lcssa, %.lr.ph.i
  %.015.i.epil.init = phi i32 [ 0, %.lr.ph.i ], [ %i.v, %mp_shl.exit.loopexit.unr-lcssa ]
  %.01314.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %i.w, %mp_shl.exit.loopexit.unr-lcssa ]
  %lcmp.mod203 = trunc i32 %i.g to i1
  tail call void @llvm.assume(i1 %lcmp.mod203)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %.01314.i.epil.init ; 2 uses
  %i.z = load i32, ptr %i.y, align 4, !tbaa !14   ; 2 uses
  %i.aa = shl i32 %i.z, %i.e
  %i.ab = or i32 %i.aa, %.015.i.epil.init
  store i32 %i.ab, ptr %i.y, align 4, !tbaa !14
  %i.ac = lshr i32 %i.z, %i.j
  br label %mp_shl.exit

mp_shl.exit:                                      ; preds = %.epil.preheader, %mp_shl.exit.loopexit.unr-lcssa, %bb.d
  %.0.lcssa.i = phi i32 [ 0, %bb.d ], [ %i.v, %mp_shl.exit.loopexit.unr-lcssa ], [ %i.ac, %.epil.preheader ]
  %i.ad = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.h
  store i32 %.0.lcssa.i, ptr %i.ad, align 4, !tbaa !14
  %i.ae = load i32, ptr %0, align 4, !tbaa !14    ; 2 uses
  %i.af = add nsw i32 %i.ae, 1                    ; 2 uses
  store i32 %i.af, ptr %0, align 4, !tbaa !14
  %i.ag = icmp sgt i32 %i.ae, 0
  br i1 %i.ag, label %.lr.ph.i104, label %mpb_renorm.exit

.lr.ph.i104:                                      ; preds = %mp_shl.exit, %bb.f
  %3 = phi i32 [ %5, %bb.f ], [ %i.af, %mp_shl.exit ] ; 3 uses
  %4 = zext nneg i32 %3 to i64
  %i.ah = getelementptr [4 x i8], ptr %0, i64 %4
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !14
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %mpb_renorm.exit

bb.f:                                             ; preds = %.lr.ph.i104
  %5 = add nsw i32 %3, -1                         ; 2 uses
  store i32 %5, ptr %0, align 4, !tbaa !14
  %i.ak = icmp sgt i32 %3, 2
  br i1 %i.ak, label %.lr.ph.i104, label %mpb_renorm.exit, !llvm.loop !19

mpb_renorm.exit:                                  ; preds = %bb.f, %.lr.ph.i104, %mp_shl.exit, %bb.c
  %.not103 = icmp eq i32 %i.d, 0
  br i1 %.not103, label %bb.s, label %bb.g

bb.g:                                             ; preds = %mpb_renorm.exit
  %i.al = load i32, ptr %0, align 4, !tbaa !14    ; 4 uses
  %i.am = icmp sgt i32 %i.al, 0
  br i1 %i.am, label %.lr.ph134.a, label %.preheader

.lr.ph134.a:                                      ; preds = %bb.g
  %i.an = zext nneg i32 %i.al to i64              ; 5 uses
  %i.ao = zext nneg i32 %i.d to i64
  %invariant.gep166 = getelementptr [4 x i8], ptr %0, i64 %i.ao ; 2 uses
  %min.iters.check186 = icmp ult i32 %i.al, 8
  br i1 %min.iters.check186, label %scalar.ph185.preheader, label %vector.ph187

vector.ph187:                                     ; preds = %.lr.ph134.a
  %n.vec188 = and i64 %i.an, 2147483640           ; 2 uses
  %i.ap = and i64 %i.an, 7
  br label %vector.body189

vector.body189:                                   ; preds = %vector.body189, %vector.ph187
  %index190 = phi i64 [ 0, %vector.ph187 ], [ %index.next193, %vector.body189 ] ; 2 uses
  %i.aq = sub i64 %i.an, %index190                ; 2 uses
  %i.ar = getelementptr [4 x i8], ptr %0, i64 %i.aq ; 2 uses
  %i.as = getelementptr i8, ptr %i.ar, i64 -12
  %i.at = getelementptr i8, ptr %i.ar, i64 -28
  %wide.load191 = load <4 x i32>, ptr %i.as, align 4, !tbaa !14
  %wide.load192 = load <4 x i32>, ptr %i.at, align 4, !tbaa !14
  %i.au = getelementptr [4 x i8], ptr %invariant.gep166, i64 %i.aq ; 2 uses
  %i.av = getelementptr i8, ptr %i.au, i64 -12
  %i.aw = getelementptr i8, ptr %i.au, i64 -28
  store <4 x i32> %wide.load191, ptr %i.av, align 4, !tbaa !14
  store <4 x i32> %wide.load192, ptr %i.aw, align 4, !tbaa !14
  %index.next193 = add nuw i64 %index190, 8       ; 2 uses
  %i.ax = icmp eq i64 %index.next193, %n.vec188
  br i1 %i.ax, label %middle.block194, label %vector.body189, !llvm.loop !27

middle.block194:                                  ; preds = %vector.body189
  %cmp.n195 = icmp eq i64 %n.vec188, %i.an
  br i1 %cmp.n195, label %.preheader, label %scalar.ph185.preheader

scalar.ph185.preheader:                           ; preds = %.lr.ph134.a, %middle.block194
  %indvars.iv145.ph = phi i64 [ %i.an, %.lr.ph134.a ], [ %i.ap, %middle.block194 ]
  br label %scalar.ph185

.preheader:                                       ; preds = %scalar.ph185, %middle.block194, %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.az = lshr i32 %i.c, 5
  %i.ba = tail call i32 @llvm.umax.i32(i32 %i.az, i32 1)
  %i.bb = shl nuw nsw i32 %i.ba, 2
  %i.bc = zext nneg i32 %i.bb to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ay, i8 0, i64 %i.bc, i1 false), !tbaa !14
  %i.bd = add nsw i32 %i.al, %i.d
  store i32 %i.bd, ptr %0, align 4, !tbaa !14
  br label %bb.s

scalar.ph185:                                     ; preds = %scalar.ph185.preheader, %scalar.ph185
  %indvars.iv145 = phi i64 [ %indvars.iv.next146, %scalar.ph185 ], [ %indvars.iv145.ph, %scalar.ph185.preheader ] ; 4 uses
  %indvars.iv.next146 = add nsw i64 %indvars.iv145, -1
  %i.be = getelementptr [4 x i8], ptr %0, i64 %indvars.iv145
  %i.bf = load i32, ptr %i.be, align 4, !tbaa !14
  %gep167 = getelementptr [4 x i8], ptr %invariant.gep166, i64 %indvars.iv145
  store i32 %i.bf, ptr %gep167, align 4, !tbaa !14
  %i.bg = icmp samesign ugt i64 %indvars.iv145, 1
  br i1 %i.bg, label %scalar.ph185, label %.preheader, !llvm.loop !30

bb.h:                                             ; preds = %bb.b
  %switch = icmp samesign ult i32 %2, 2
  %.pre = load i32, ptr %0, align 4, !tbaa !14    ; 5 uses
  br i1 %switch, label %bb.i, label %mpb_get_bit.exit107

bb.i:                                             ; preds = %bb.h
  %i.bh = add nsw i32 %1, -1                      ; 2 uses
  %i.bi = lshr i32 %i.bh, 5                       ; 3 uses
  %.not.i = icmp slt i32 %i.bi, %.pre
  br i1 %.not.i, label %mpb_get_bit.exit, label %mpb_get_bit.exit107

mpb_get_bit.exit:                                 ; preds = %bb.i
  %i.bj = and i32 %i.bh, 31                       ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.bl = zext nneg i32 %i.bi to i64              ; 4 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !14 ; 2 uses
  %i.bo = shl nuw i32 1, %i.bj
  %i.bp = and i32 %i.bn, %i.bo
  %.not = icmp eq i32 %i.bp, 0
  br i1 %.not, label %mpb_get_bit.exit107, label %bb.j

bb.j:                                             ; preds = %mpb_get_bit.exit
  %i.bq = icmp eq i32 %2, 1
  br i1 %i.bq, label %mpb_get_bit.exit107, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not125 = icmp eq i32 %1, 1
  br i1 %.not125, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not136 = icmp eq i32 %i.bi, 0
  br i1 %.not136, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.l
  %min.iters.check = icmp ult i32 %1, 257
  br i1 %min.iters.check, label %.lr.ph.preheader198, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %n.vec = and i64 %i.bl, 134217720               ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bt, %vector.body ]
  %vec.phi171 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.bu, %vector.body ]
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %index ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %wide.load = load <4 x i32>, ptr %i.br, align 4, !tbaa !14
  %wide.load172 = load <4 x i32>, ptr %i.bs, align 4, !tbaa !14
  %i.bt = or <4 x i32> %wide.load, %vec.phi       ; 2 uses
  %i.bu = or <4 x i32> %wide.load172, %vec.phi171 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bv = icmp eq i64 %index.next, %n.vec
  br i1 %i.bv, label %middle.block, label %vector.body, !llvm.loop !31

middle.block:                                     ; preds = %vector.body
  %bin.rdx = or <4 x i32> %i.bu, %i.bt
  %i.bw = tail call i32 @llvm.vector.reduce.or.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %n.vec, %i.bl
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph.preheader198

.lr.ph.preheader198:                              ; preds = %.lr.ph.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph.preheader ], [ %n.vec, %middle.block ]
  %.085128.ph = phi i32 [ 0, %.lr.ph.preheader ], [ %i.bw, %middle.block ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader198, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ %indvars.iv.ph, %.lr.ph.preheader198 ] ; 2 uses
  %.085128 = phi i32 [ %i.bz, %.lr.ph ], [ %.085128.ph, %.lr.ph.preheader198 ]
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %indvars.iv
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !14
  %i.bz = or i32 %i.by, %.085128                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.bl
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !32

._crit_edge:                                      ; preds = %.lr.ph, %middle.block, %bb.l
  %.085.lcssa = phi i32 [ 0, %bb.l ], [ %i.bw, %middle.block ], [ %i.bz, %.lr.ph ]
  %notmask = shl nsw i32 -1, %i.bj
  %i.ca = xor i32 %notmask, -1
  %i.cb = and i32 %i.bn, %i.ca
  %i.cc = or i32 %i.cb, %.085.lcssa
  %i.cd = icmp eq i32 %i.cc, 0
  br i1 %i.cd, label %.thread, label %mpb_get_bit.exit107

.thread:                                          ; preds = %bb.k, %._crit_edge
  %i.ce = lshr i32 %1, 5                          ; 2 uses
  %.not.i105 = icmp samesign ult i32 %i.ce, %.pre
  br i1 %.not.i105, label %bb.m, label %mpb_get_bit.exit107

bb.m:                                             ; preds = %.thread
  %i.cf = and i32 %1, 31
  %i.cg = zext nneg i32 %i.ce to i64
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.bk, i64 %i.cg
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !14
  %i.cj = lshr i32 %i.ci, %i.cf
  %i.ck = and i32 %i.cj, 1
  br label %mpb_get_bit.exit107

mpb_get_bit.exit107:                              ; preds = %bb.j, %bb.i, %bb.m, %.thread, %mpb_get_bit.exit, %._crit_edge, %bb.h
  %.0 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %mpb_get_bit.exit ], [ 0, %.thread ], [ %i.ck, %bb.m ], [ 1, %bb.j ] ; 2 uses
  %i.cl = lshr i32 %1, 5                          ; 4 uses
  %i.cm = and i32 %1, 31
  %.not97 = icmp slt i32 %i.cl, %.pre
  br i1 %.not97, label %bb.o, label %bb.n

bb.n:                                             ; preds = %mpb_get_bit.exit107
  store i32 1, ptr %0, align 4, !tbaa !14
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.0, ptr %i.cn, align 4, !tbaa !14
  br label %bb.s

bb.o:                                             ; preds = %mpb_get_bit.exit107
  %.not98 = icmp eq i32 %i.cl, 0
  br i1 %.not98, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.co = sub nuw nsw i32 %.pre, %i.cl            ; 6 uses
  store i32 %i.co, ptr %0, align 4, !tbaa !14
  %.not168 = icmp eq i32 %i.co, 0
  br i1 %.not168, label %mpb_renorm.exit112, label %.lr.ph131

.lr.ph131:                                        ; preds = %bb.p
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.cq = zext nneg i32 %i.cl to i64
  %wide.trip.count143 = zext nneg i32 %i.co to i64 ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %i.cq ; 2 uses
  %min.iters.check174 = icmp ult i32 %i.co, 8
  br i1 %min.iters.check174, label %scalar.ph173.preheader, label %vector.ph175

vector.ph175:                                     ; preds = %.lr.ph131
  %n.vec176 = and i64 %wide.trip.count143, 2147483640 ; 3 uses
  br label %vector.body177

vector.body177:                                   ; preds = %vector.body177, %vector.ph175
  %index178 = phi i64 [ 0, %vector.ph175 ], [ %index.next181, %vector.body177 ] ; 3 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %index178 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %wide.load179 = load <4 x i32>, ptr %i.cr, align 4, !tbaa !14
  %wide.load180 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !14
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %index178 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  store <4 x i32> %wide.load179, ptr %i.ct, align 4, !tbaa !14
  store <4 x i32> %wide.load180, ptr %i.cu, align 4, !tbaa !14
  %index.next181 = add nuw i64 %index178, 8       ; 2 uses
  %i.cv = icmp eq i64 %index.next181, %n.vec176
  br i1 %i.cv, label %middle.block182, label %vector.body177, !llvm.loop !33

middle.block182:                                  ; preds = %vector.body177
  %cmp.n183 = icmp eq i64 %n.vec176, %wide.trip.count143
  br i1 %cmp.n183, label %.loopexit, label %scalar.ph173.preheader

scalar.ph173.preheader:                           ; preds = %.lr.ph131, %middle.block182
  %indvars.iv140.ph = phi i64 [ 0, %.lr.ph131 ], [ %n.vec176, %middle.block182 ]
  br label %scalar.ph173

scalar.ph173:                                     ; preds = %scalar.ph173.preheader, %scalar.ph173
  %indvars.iv140 = phi i64 [ %indvars.iv.next141, %scalar.ph173 ], [ %indvars.iv140.ph, %scalar.ph173.preheader ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv140
  %i.cw = load i32, ptr %gep, align 4, !tbaa !14
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv140
  store i32 %i.cw, ptr %i.cx, align 4, !tbaa !14
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1 ; 2 uses
  %exitcond144.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count143
  br i1 %exitcond144.not, label %.loopexit, label %scalar.ph173, !llvm.loop !34

.loopexit:                                        ; preds = %scalar.ph173, %middle.block182, %bb.o
  %i.cy = phi i32 [ %.pre, %bb.o ], [ %i.co, %middle.block182 ], [ %i.co, %scalar.ph173 ] ; 2 uses
  %.not99 = icmp eq i32 %i.cm, 0
  br i1 %.not99, label %mpb_renorm.exit112, label %.lr.ph.i109.preheader

.lr.ph.i109.preheader:                            ; preds = %.loopexit
  %i.cz = zext nneg i32 %i.cy to i64
  br label %.lr.ph.i109

.lr.ph.i109:                                      ; preds = %.lr.ph.i109.preheader, %.lr.ph.i109
  %.016.i = phi i32 [ %i.db, %.lr.ph.i109 ], [ 0, %.lr.ph.i109.preheader ]
  %.014.in15.i = phi i64 [ %.014.i, %.lr.ph.i109 ], [ %i.cz, %.lr.ph.i109.preheader ] ; 3 uses
  %.014.i = add nsw i64 %.014.in15.i, -1
  %i.da = getelementptr [4 x i8], ptr %0, i64 %.014.in15.i ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !14 ; 2 uses
  %i.dc = tail call i32 @llvm.fshr.i32(i32 %.016.i, i32 %i.db, i32 range(i32 1, 32) %1)
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !14
  %i.dd = icmp samesign ugt i64 %.014.in15.i, 1
  br i1 %i.dd, label %.lr.ph.i109, label %mp_shr.exit, !llvm.loop !35

mp_shr.exit:                                      ; preds = %.lr.ph.i109
  %.pr.i110.pr = load i32, ptr %0, align 4, !tbaa !14 ; 3 uses
  %i.de = icmp sgt i32 %.pr.i110.pr, 1
  br i1 %i.de, label %.lr.ph.i111, label %mpb_renorm.exit112

.lr.ph.i111:                                      ; preds = %mp_shr.exit, %bb.q
  %6 = phi i32 [ %7, %bb.q ], [ %.pr.i110.pr, %mp_shr.exit ] ; 4 uses
  %i.df = zext nneg i32 %6 to i64
  %i.dg = getelementptr [4 x i8], ptr %0, i64 %i.df
  %i.dh = load i32, ptr %i.dg, align 4, !tbaa !14
  %i.di = icmp eq i32 %i.dh, 0
  br i1 %i.di, label %bb.q, label %mpb_renorm.exit112

bb.q:                                             ; preds = %.lr.ph.i111
  %7 = add nsw i32 %6, -1                         ; 3 uses
  store i32 %7, ptr %0, align 4, !tbaa !14
  %i.dj = icmp sgt i32 %6, 2
  br i1 %i.dj, label %.lr.ph.i111, label %mpb_renorm.exit112, !llvm.loop !19

mpb_renorm.exit112:                               ; preds = %bb.q, %.lr.ph.i111, %bb.p, %mp_shr.exit, %.loopexit
  %8 = phi i32 [ 0, %bb.p ], [ %.pr.i110.pr, %mp_shr.exit ], [ %i.cy, %.loopexit ], [ %7, %bb.q ], [ %6, %.lr.ph.i111 ] ; 3 uses
  %.not100 = icmp eq i32 %.0, 0
  br i1 %.not100, label %bb.s, label %bb.r

bb.r:                                             ; preds = %mpb_renorm.exit112
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.dl = sext i32 %8 to i64                      ; 2 uses
  %i.dm = icmp eq i32 %8, 0
  br i1 %i.dm, label %mp_add_ui.exit.thread, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.r, %.lr.ph.i113
  %.01415.i = phi i64 [ %i.dr, %.lr.ph.i113 ], [ 0, %bb.r ] ; 2 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %.01415.i ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !14
  %i.dp = add i32 %i.do, 1                        ; 2 uses
  %i.dq = icmp eq i32 %i.dp, 0                    ; 2 uses
  store i32 %i.dp, ptr %i.dn, align 4, !tbaa !14
  %i.dr = add nuw i64 %.01415.i, 1                ; 2 uses
  %i.ds = icmp ult i64 %i.dr, %i.dl
  %or.cond.not.i = select i1 %i.ds, i1 %i.dq, i1 false
  br i1 %or.cond.not.i, label %.lr.ph.i113, label %mp_add_ui.exit, !llvm.loop !36

mp_add_ui.exit:                                   ; preds = %.lr.ph.i113
  br i1 %i.dq, label %mp_add_ui.exit.thread, label %bb.s

mp_add_ui.exit.thread:                            ; preds = %bb.r, %mp_add_ui.exit
  %i.dt = add nsw i32 %8, 1
  store i32 %i.dt, ptr %0, align 4, !tbaa !14
  %i.du = getelementptr inbounds [4 x i8], ptr %i.dk, i64 %i.dl
  store i32 1, ptr %i.du, align 4, !tbaa !14
  br label %bb.s

bb.s:                                             ; preds = %.preheader, %mpb_renorm.exit, %mp_add_ui.exit, %mp_add_ui.exit.thread, %mpb_renorm.exit112, %bb.n, %bb.a
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden double @js_atod(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  %i.b = and i32 %3, 8
  %.not232 = icmp eq i32 %i.b, 0
  %i.c = select i1 %.not232, i32 256, i32 95      ; 10 uses
  %i.d = load i8, ptr %0, align 1, !tbaa !8       ; 2 uses
  switch i8 %i.d, label %bb.c [
    i8 43, label %thread-pre-split
    i8 45, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.a, %bb.b
  %.0194.ph = phi i64 [ -9223372036854775808, %bb.b ], [ 0, %bb.a ]
  %.0356.ph = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 2 uses
  %.pr = load i8, ptr %.0356.ph, align 1, !tbaa !8
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.a
  %i.e = phi i8 [ %.pr, %thread-pre-split ], [ %i.d, %bb.a ] ; 2 uses
  %.0356 = phi ptr [ %.0356.ph, %thread-pre-split ], [ %0, %bb.a ] ; 27 uses
  %.0194 = phi i64 [ %.0194.ph, %thread-pre-split ], [ 0, %bb.a ]
  %i.f = icmp eq i8 %i.e, 48
  br i1 %i.f, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0356, i64 1 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !8     ; 6 uses
  switch i8 %i.h, label %bb.h [
    i8 120, label %bb.e
    i8 88, label %bb.e
    i8 111, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.i = and i32 %2, -17
  %or.cond = icmp eq i32 %i.i, 0
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %.0356, i64 2
  br label %.thread370

bb.g:                                             ; preds = %bb.e
  %i.k = icmp eq i8 %i.h, 111
  br i1 %i.k, label %.thread386, label %.thread

bb.h:                                             ; preds = %bb.d
  %i.l = icmp eq i8 %i.h, 79
  %i.m = icmp eq i32 %2, 0                        ; 2 uses
  %or.cond3 = and i1 %i.m, %i.l
  br i1 %or.cond3, label %bb.j, label %.thread

bb.i:                                             ; preds = %bb.d
  %.old2 = icmp eq i32 %2, 0
  br i1 %.old2, label %bb.j, label %.thread386

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.n = and i32 %3, 2
  %.not235 = icmp eq i32 %i.n, 0
  br i1 %.not235, label %.thread386, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.o = getelementptr inbounds nuw i8, ptr %.0356, i64 2
  br label %.thread370

.thread:                                          ; preds = %bb.g, %bb.h
  %i.p = phi i1 [ %i.m, %bb.h ], [ false, %bb.g ] ; 3 uses
  %i.q = icmp eq i8 %i.h, 98
  br i1 %i.q, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.r = icmp eq i8 %i.h, 66
  %or.cond6 = and i1 %i.p, %i.r
  br i1 %or.cond6, label %.thread365, label %bb.o

bb.m:                                             ; preds = %.thread
  br i1 %i.p, label %.thread365, label %.thread386

.thread365:                                       ; preds = %bb.l, %bb.m
  %.old464 = and i32 %3, 2
  %.not236.old = icmp eq i32 %.old464, 0
  br i1 %.not236.old, label %.thread386, label %bb.n

bb.n:                                             ; preds = %.thread365
  %i.s = getelementptr inbounds nuw i8, ptr %.0356, i64 2
  br label %.thread370

bb.o:                                             ; preds = %bb.l
  %i.t = add i8 %i.h, -48
  %i.u = icmp ult i8 %i.t, 10
  %or.cond548 = and i1 %i.p, %i.u
  br i1 %or.cond548, label %bb.p, label %.thread368

bb.p:                                             ; preds = %bb.o
  %i.v = and i32 %3, 4
  %.not237 = icmp eq i32 %i.v, 0
  br i1 %.not237, label %.thread386, label %.preheader477

.preheader477:                                    ; preds = %bb.p, %.preheader477
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader477 ], [ 1, %bb.p ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.0356, i64 %indvars.iv
  %i.x = load i8, ptr %i.w, align 1, !tbaa !8     ; 2 uses
  %i.y = and i8 %i.x, -8
  %or.cond248 = icmp eq i8 %i.y, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %or.cond248, label %.preheader477, label %.critedge, !llvm.loop !37

.critedge:                                        ; preds = %.preheader477
  %i.z = and i8 %i.x, -2
  %switch = icmp eq i8 %i.z, 56
  br i1 %switch, label %.thread386, label %.thread370

.thread370:                                       ; preds = %.critedge, %bb.k, %bb.n, %bb.f
  %.2358 = phi ptr [ %i.j, %bb.f ], [ %i.s, %bb.n ], [ %i.o, %bb.k ], [ %i.g, %.critedge ] ; 3 uses
  %.1205 = phi i32 [ 16, %bb.f ], [ 2, %bb.n ], [ 8, %bb.k ], [ 8, %.critedge ] ; 2 uses
  %.0185 = phi i32 [ %i.c, %bb.f ], [ %i.c, %bb.n ], [ %i.c, %bb.k ], [ 256, %.critedge ]
  %i.aa = load i8, ptr %.2358, align 1, !tbaa !8  ; 3 uses
  %i.ab = zext i8 %i.aa to i32                    ; 3 uses
  %i.ac = add nsw i32 %i.ab, -48                  ; 2 uses
  %or.cond.i = icmp ult i32 %i.ac, 10
  br i1 %or.cond.i, label %to_digit.exit, label %bb.q

bb.q:                                             ; preds = %.thread370
  %i.ad = add i8 %i.aa, -65
  %or.cond3.i = icmp ult i8 %i.ad, 26
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ae = add nsw i32 %i.ab, -55
  br label %to_digit.exit

bb.s:                                             ; preds = %bb.q
  %i.af = add i8 %i.aa, -97
  %or.cond5.i = icmp ult i8 %i.af, 26
  %i.ag = add nsw i32 %i.ab, -87
  %spec.select.i = select i1 %or.cond5.i, i32 %i.ag, i32 36
  br label %to_digit.exit

to_digit.exit:                                    ; preds = %.thread370, %bb.r, %bb.s
  %.0.i = phi i32 [ %spec.select.i, %bb.s ], [ %i.ae, %bb.r ], [ %i.ac, %.thread370 ]
  %.not238 = icmp slt i32 %.0.i, %.1205
  br i1 %.not238, label %.thread386, label %.thread415

bb.t:                                             ; preds = %bb.c
  %i.ah = and i32 %3, 1
  %.not233 = icmp eq i32 %i.ah, 0
  br i1 %.not233, label %bb.u, label %.thread368

bb.u:                                             ; preds = %bb.t
  %scevgep.i = getelementptr i8, ptr %.0356, i64 8
  %.not14.i = icmp eq i8 %i.e, 73
  br i1 %.not14.i, label %bb.v, label %.thread368

bb.v:                                             ; preds = %bb.u
  %i.ai = getelementptr inbounds nuw i8, ptr %.0356, i64 1
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !8
  %.not14.1.i = icmp eq i8 %i.aj, 110
  br i1 %.not14.1.i, label %bb.w, label %.thread368

bb.w:                                             ; preds = %bb.v
  %i.ak = getelementptr inbounds nuw i8, ptr %.0356, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !8
  %.not14.2.i = icmp eq i8 %i.al, 102
  br i1 %.not14.2.i, label %bb.x, label %.thread368

bb.x:                                             ; preds = %bb.w
  %i.am = getelementptr inbounds nuw i8, ptr %.0356, i64 3
  %i.an = load i8, ptr %i.am, align 1, !tbaa !8
  %.not14.3.i = icmp eq i8 %i.an, 105
  br i1 %.not14.3.i, label %bb.y, label %.thread368

bb.y:                                             ; preds = %bb.x
  %i.ao = getelementptr inbounds nuw i8, ptr %.0356, i64 4
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !8
  %.not14.4.i = icmp eq i8 %i.ap, 110
  br i1 %.not14.4.i, label %bb.z, label %.thread368

bb.z:                                             ; preds = %bb.y
  %i.aq = getelementptr inbounds nuw i8, ptr %.0356, i64 5
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !8
  %.not14.5.i = icmp eq i8 %i.ar, 105
  br i1 %.not14.5.i, label %bb.aa, label %.thread368

bb.aa:                                            ; preds = %bb.z
  %i.as = getelementptr inbounds nuw i8, ptr %.0356, i64 6
end_hunk_1
begin_hunk_2_@js_atod:bb.a
bb.av:                                            ; preds = %bb.au, %to_digit.exit275
  %i.db = icmp sgt i32 %.3, -1
  br i1 %i.db, label %bb.bs, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.dc = getelementptr inbounds nuw i8, ptr %.8, i64 1 ; 2 uses
  %.pre502 = load i8, ptr %i.dc, align 1, !tbaa !8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.au, %to_digit.exit275, %bb.ao
  %i.dd = phi i8 [ %.pre502, %bb.aw ], [ 46, %bb.au ], [ 46, %to_digit.exit275 ], [ %i.cp, %bb.ao ] ; 2 uses
  %.9 = phi ptr [ %i.dc, %bb.aw ], [ %.8, %bb.au ], [ %.8, %to_digit.exit275 ], [ %.8, %bb.ao ] ; 4 uses
  %.4 = phi i32 [ %.1172, %bb.aw ], [ %.3, %bb.au ], [ %.3, %to_digit.exit275 ], [ %.3, %bb.ao ] ; 2 uses
  %i.de = zext i8 %i.dd to i32                    ; 2 uses
  %i.df = icmp eq i32 %.1186384, %i.de
  %i.dg = icmp ugt ptr %.9, %.0356
  %or.cond255 = and i1 %i.dg, %i.df
  br i1 %or.cond255, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.dh = getelementptr inbounds nuw i8, ptr %.9, i64 1 ; 2 uses
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !8   ; 3 uses
  %i.dj = zext i8 %i.di to i32                    ; 3 uses
  %i.dk = add nsw i32 %i.dj, -48                  ; 2 uses
  %or.cond.i276 = icmp ult i32 %i.dk, 10
  br i1 %or.cond.i276, label %to_digit.exit281, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.dl = add i8 %i.di, -65
  %or.cond3.i277 = icmp ult i8 %i.dl, 26
  br i1 %or.cond3.i277, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.dm = add nsw i32 %i.dj, -55
  br label %to_digit.exit281

bb.bb:                                            ; preds = %bb.az
  %i.dn = add i8 %i.di, -97
  %or.cond5.i278 = icmp ult i8 %i.dn, 26
  %i.do = add nsw i32 %i.dj, -87
  %spec.select.i279 = select i1 %or.cond5.i278, i32 %i.do, i32 36
  br label %to_digit.exit281

to_digit.exit281:                                 ; preds = %bb.ay, %bb.ba, %bb.bb
  %.0.i280 = phi i32 [ %spec.select.i279, %bb.bb ], [ %i.dm, %bb.ba ], [ %i.dk, %bb.ay ]
  %i.dp = icmp slt i32 %.0.i280, %i.ax
  %spec.select467 = select i1 %i.dp, ptr %i.dh, ptr %.9 ; 2 uses
  %.pre503 = load i8, ptr %spec.select467, align 1, !tbaa !8 ; 2 uses
  %.pre512 = zext i8 %.pre503 to i32
  br label %bb.bc

bb.bc:                                            ; preds = %to_digit.exit281, %bb.ax
  %.pre-phi513 = phi i32 [ %.pre512, %to_digit.exit281 ], [ %i.de, %bb.ax ] ; 3 uses
  %i.dq = phi i8 [ %.pre503, %to_digit.exit281 ], [ %i.dd, %bb.ax ] ; 2 uses
  %.10 = phi ptr [ %spec.select467, %to_digit.exit281 ], [ %.9, %bb.ax ] ; 2 uses
  %i.dr = add nsw i32 %.pre-phi513, -48           ; 2 uses
  %or.cond.i282 = icmp ult i32 %i.dr, 10
  br i1 %or.cond.i282, label %to_digit.exit287, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ds = add i8 %i.dq, -65
  %or.cond3.i283 = icmp ult i8 %i.ds, 26
  br i1 %or.cond3.i283, label %bb.be, label %bb.bf

bb.be:                                            ; preds = %bb.bd
  %i.dt = add nsw i32 %.pre-phi513, -55
  br label %to_digit.exit287

bb.bf:                                            ; preds = %bb.bd
  %i.du = add i8 %i.dq, -97
  %or.cond5.i284 = icmp ult i8 %i.du, 26
  %i.dv = add nsw i32 %.pre-phi513, -87
  %spec.select.i285 = select i1 %or.cond5.i284, i32 %i.dv, i32 36
  br label %to_digit.exit287

to_digit.exit287:                                 ; preds = %bb.bc, %bb.be, %bb.bf
  %.0.i286 = phi i32 [ %spec.select.i285, %bb.bf ], [ %i.dt, %bb.be ], [ %i.dr, %bb.bc ] ; 3 uses
  %.not242 = icmp ult i32 %.0.i286, %i.ax
  br i1 %.not242, label %bb.bg, label %bb.bs

bb.bg:                                            ; preds = %to_digit.exit287
  %i.dw = getelementptr inbounds nuw i8, ptr %.10, i64 1 ; 2 uses
  %i.dx = add nuw nsw i32 %.1172, 1
  %i.dy = icmp slt i32 %.0191, %i.bc
  br i1 %i.dy, label %bb.bh, label %bb.bq

bb.bh:                                            ; preds = %bb.bg
  %i.dz = mul i32 %.0198, %i.ax
  %i.ea = add i32 %.0.i286, %i.dz                 ; 5 uses
  %i.eb = add nsw i32 %.0187, 1                   ; 2 uses
  %i.ec = icmp eq i32 %i.eb, %i.bf
  br i1 %i.ec, label %bb.bi, label %mpb_mul1_base.exit

bb.bi:                                            ; preds = %bb.bh
  %i.ed = load i32, ptr %i.bl, align 4, !tbaa !14
  %i.ee = icmp eq i32 %i.ed, 0
  br i1 %i.ee, label %bb.bj, label %thread-pre-split396

bb.bj:                                            ; preds = %bb.bi
  %i.ef = icmp eq i32 %i.co, 1
  br i1 %i.ef, label %bb.bk, label %thread-pre-split396

bb.bk:                                            ; preds = %bb.bj
  store i32 %i.ea, ptr %i.bl, align 4, !tbaa !14
  br label %mpb_mul1_base.exit

thread-pre-split396:                              ; preds = %bb.bi, %bb.bj
  %i.eg = phi i32 [ %i.co, %bb.bj ], [ %.pr397, %bb.bi ] ; 8 uses
  br i1 %.not474, label %bb.bm, label %bb.bl

bb.bl:                                            ; preds = %thread-pre-split396
  %i.eh = icmp sgt i32 %i.eg, -1
  br i1 %i.eh, label %.lr.ph.preheader.i, label %._crit_edge.i

.lr.ph.preheader.i:                               ; preds = %bb.bl
  %i.ei = add nuw i32 %i.eg, 1
  %i.ej = zext i32 %i.ei to i64
  %i.ek = shl nuw nsw i64 %i.ej, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i288, ptr noundef nonnull align 4 dereferenceable(1) %i.bl, i64 %i.ek, i1 false), !tbaa !14
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.preheader.i, %bb.bl
  store i32 %i.ea, ptr %i.bl, align 4, !tbaa !14
  br label %bb.bo

bb.bm:                                            ; preds = %thread-pre-split396
  %.not.i.i = icmp eq i32 %i.eg, 0
  br i1 %.not.i.i, label %mp_mul1.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bm
  %i.el = zext i32 %i.ea to i64                   ; 2 uses
  %wide.trip.count.i.i = zext i32 %i.eg to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.em = icmp eq i32 %i.eg, 1
  br i1 %i.em, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 4294967294
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bn, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.bn ] ; 3 uses
  %.01112.i.i = phi i64 [ %i.el, %.lr.ph.i.i.new ], [ %i.fb, %bb.bn ]
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.bn ]
  %i.en = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i ; 2 uses
  %i.eo = load i32, ptr %i.en, align 4, !tbaa !14
  %i.ep = zext i32 %i.eo to i64
  %i.eq = mul nuw i64 %i.ep, %i.cm
  %i.er = add nuw i64 %i.eq, %.01112.i.i          ; 2 uses
  %i.es = trunc i64 %i.er to i32
  store i32 %i.es, ptr %i.en, align 4, !tbaa !14
  %i.et = lshr i64 %i.er, 32
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 4 ; 2 uses
  %i.ew = load i32, ptr %i.ev, align 4, !tbaa !14
  %i.ex = zext i32 %i.ew to i64
  %i.ey = mul nuw i64 %i.ex, %i.cm
  %i.ez = add nuw i64 %i.ey, %i.et                ; 2 uses
  %i.fa = trunc i64 %i.ez to i32
  store i32 %i.fa, ptr %i.ev, align 4, !tbaa !14
  %i.fb = lshr i64 %i.ez, 32                      ; 3 uses
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.i.i.unr-lcssa, label %bb.bn, !llvm.loop !23

._crit_edge.loopexit.i.i.unr-lcssa:               ; preds = %bb.bn
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.loopexit.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %.01112.i.i.epil.init = phi i64 [ %i.el, %.lr.ph.i.i ], [ %i.fb, %._crit_edge.loopexit.i.i.unr-lcssa ]
  %lcmp.mod558 = trunc i32 %i.eg to i1
  tail call void @llvm.assume(i1 %lcmp.mod558)
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i.epil.init ; 2 uses
  %i.fd = load i32, ptr %i.fc, align 4, !tbaa !14
  %i.fe = zext i32 %i.fd to i64
  %i.ff = mul nuw i64 %i.fe, %i.cm
  %i.fg = add nuw i64 %i.ff, %.01112.i.i.epil.init ; 2 uses
  %i.fh = trunc i64 %i.fg to i32
  store i32 %i.fh, ptr %i.fc, align 4, !tbaa !14
  %i.fi = lshr i64 %i.fg, 32
  br label %._crit_edge.loopexit.i.i

._crit_edge.loopexit.i.i:                         ; preds = %._crit_edge.loopexit.i.i.unr-lcssa, %.epil.preheader
  %.lcssa554 = phi i64 [ %i.fb, %._crit_edge.loopexit.i.i.unr-lcssa ], [ %i.fi, %.epil.preheader ]
  %i.fj = trunc nuw i64 %.lcssa554 to i32
  br label %mp_mul1.exit.i

mp_mul1.exit.i:                                   ; preds = %._crit_edge.loopexit.i.i, %bb.bm
  %.011.lcssa.i.i = phi i32 [ %i.ea, %bb.bm ], [ %i.fj, %._crit_edge.loopexit.i.i ]
  %i.fk = sext i32 %i.eg to i64
  %i.fl = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.fk
  store i32 %.011.lcssa.i.i, ptr %i.fl, align 4, !tbaa !14
  %.pre.i = load i32, ptr %4, align 4, !tbaa !14
  br label %bb.bo

bb.bo:                                            ; preds = %mp_mul1.exit.i, %._crit_edge.i
  %i.fm = phi i32 [ %.pre.i, %mp_mul1.exit.i ], [ %i.eg, %._crit_edge.i ] ; 2 uses
  %i.fn = add nsw i32 %i.fm, 1                    ; 5 uses
  store i32 %i.fn, ptr %4, align 4, !tbaa !14
  %i.fo = icmp sgt i32 %i.fm, 0
  br i1 %i.fo, label %.lr.ph.i23.i.a, label %mpb_mul1_base.exit

.lr.ph.i23.i.a:                                   ; preds = %bb.bo, %bb.bp
  %5 = phi i32 [ %6, %bb.bp ], [ %i.fn, %bb.bo ]  ; 6 uses
  %i.fp = zext nneg i32 %5 to i64
  %i.fq = getelementptr [4 x i8], ptr %4, i64 %i.fp
  %i.fr = load i32, ptr %i.fq, align 4, !tbaa !14
  %i.fs = icmp eq i32 %i.fr, 0
  br i1 %i.fs, label %bb.bp, label %mpb_mul1_base.exit

bb.bp:                                            ; preds = %.lr.ph.i23.i.a
  %6 = add nsw i32 %5, -1                         ; 5 uses
  store i32 %6, ptr %4, align 4, !tbaa !14
  %i.ft = icmp sgt i32 %5, 2
  br i1 %i.ft, label %.lr.ph.i23.i.a, label %mpb_mul1_base.exit, !llvm.loop !19

mpb_mul1_base.exit:                               ; preds = %bb.bp, %.lr.ph.i23.i.a, %bb.bo, %bb.bk, %bb.bh
  %.pr425510 = phi i32 [ %i.cn, %bb.bh ], [ %i.cn, %bb.bk ], [ %i.fn, %bb.bo ], [ %6, %bb.bp ], [ %5, %.lr.ph.i23.i.a ]
  %7 = phi i32 [ %i.co, %bb.bh ], [ 1, %bb.bk ], [ %i.fn, %bb.bo ], [ %6, %bb.bp ], [ %5, %.lr.ph.i23.i.a ]
  %.pr397506 = phi i32 [ %.pr397, %bb.bh ], [ 1, %bb.bk ], [ %i.fn, %bb.bo ], [ %6, %bb.bp ], [ %5, %.lr.ph.i23.i.a ]
  %.1199 = phi i32 [ %i.ea, %bb.bh ], [ 0, %bb.bk ], [ 0, %bb.bo ], [ 0, %.lr.ph.i23.i.a ], [ 0, %bb.bp ]
  %.1188 = phi i32 [ %i.eb, %bb.bh ], [ 0, %bb.bk ], [ 0, %bb.bo ], [ 0, %.lr.ph.i23.i.a ], [ 0, %bb.bp ]
  %i.fu = add nsw i32 %.0191, 1
  br label %bb.br

bb.bq:                                            ; preds = %bb.bg
  %i.fv = or i32 %.0.i286, %.0195
  br label %bb.br

bb.br:                                            ; preds = %mpb_mul1_base.exit, %bb.bq
  %.pr425509 = phi i32 [ %.pr425510, %mpb_mul1_base.exit ], [ %i.cn, %bb.bq ]
  %i.fw = phi i32 [ %7, %mpb_mul1_base.exit ], [ %i.co, %bb.bq ]
  %.pr397505 = phi i32 [ %.pr397506, %mpb_mul1_base.exit ], [ %.pr397, %bb.bq ]
  %.3201 = phi i32 [ %.1199, %mpb_mul1_base.exit ], [ %.0198, %bb.bq ]
  %.2197 = phi i32 [ %.0195, %mpb_mul1_base.exit ], [ %i.fv, %bb.bq ]
  %.2193 = phi i32 [ %i.fu, %mpb_mul1_base.exit ], [ %.0191, %bb.bq ]
  %.3190 = phi i32 [ %.1188, %mpb_mul1_base.exit ], [ %.0187, %bb.bq ]
  %.pre501 = load i8, ptr %i.dw, align 1, !tbaa !8
  br label %bb.ao

bb.bs:                                            ; preds = %bb.av, %to_digit.exit287
  %.11.ph = phi ptr [ %.10, %to_digit.exit287 ], [ %.8, %bb.av ] ; 10 uses
  %.5.ph = phi i32 [ %.4, %to_digit.exit287 ], [ %.3, %bb.av ] ; 2 uses
  switch i32 %.0187, label %bb.bu [
    i32 0, label %mpb_mul1_base.exit308
    i32 1, label %bb.bt
  ]

bb.bt:                                            ; preds = %bb.bs
  %i.fx = zext i32 %i.ax to i64
  br label %pow_ui.exit

bb.bu:                                            ; preds = %bb.bs
  %i.fy = icmp eq i32 %i.ax, 5
  %i.fz = icmp eq i32 %i.ax, 10                   ; 2 uses
  %or.cond.i289 = or i1 %i.fy, %i.fz
  %i.ga = icmp ult i32 %.0187, 18
  %or.cond3.i290 = and i1 %or.cond.i289, %i.ga
  br i1 %or.cond3.i290, label %bb.bv, label %bb.by

bb.bv:                                            ; preds = %bb.bu
  %i.gb = zext nneg i32 %.0187 to i64             ; 2 uses
  %i.gc = getelementptr [4 x i8], ptr @pow5_table, i64 %i.gb
  %i.gd = getelementptr i8, ptr %i.gc, i64 -4
  %i.ge = load i32, ptr %i.gd, align 4, !tbaa !14
  %i.gf = zext i32 %i.ge to i64                   ; 2 uses
  %i.gg = icmp samesign ugt i32 %.0187, 13
  br i1 %i.gg, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.gh = getelementptr i8, ptr @pow5h_table, i64 %i.gb
  %i.gi = getelementptr i8, ptr %i.gh, i64 -14
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !8
  %i.gk = zext i8 %i.gj to i64
  %i.gl = shl nuw nsw i64 %i.gk, 32
  %i.gm = or disjoint i64 %i.gl, %i.gf
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.0.i292 = phi i64 [ %i.gm, %bb.bw ], [ %i.gf, %bb.bv ]
  %narrow.i = select i1 %i.fz, i32 %.0187, i32 0
  %i.gn = zext nneg i32 %narrow.i to i64
  %.1.i = shl nuw nsw i64 %.0.i292, %i.gn
  br label %pow_ui.exit

bb.by:                                            ; preds = %bb.bu
  %i.go = zext i32 %i.ax to i64                   ; 6 uses
  %i.gp = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %.0187, i1 true) ; 4 uses
  %i.gq = sub nsw i32 30, %i.gp                   ; 2 uses
  %i.gr = and i32 %i.gp, 1
  %lcmp.mod560.not.not = icmp eq i32 %i.gr, 0
  br i1 %lcmp.mod560.not.not, label %.prol.loopexit.unr-lcssa, label %.prol.loopexit

.prol.loopexit.unr-lcssa:                         ; preds = %bb.by
  %i.gs = mul nuw i64 %i.go, %i.go
  %i.gt = shl nuw nsw i32 1, %i.gq
  %i.gu = and i32 %i.gt, %.0187
  %.not.i.prol = icmp eq i32 %i.gu, 0
  %i.gv = select i1 %.not.i.prol, i64 1, i64 %i.go
  %spec.select.i291.prol = mul i64 %i.gs, %i.gv   ; 2 uses
  %i.gw = sub nsw i32 29, %i.gp
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %bb.by
  %spec.select.i291.lcssa.unr = phi i64 [ poison, %bb.by ], [ %spec.select.i291.prol, %.prol.loopexit.unr-lcssa ]
  %.234.i.unr = phi i64 [ %i.go, %bb.by ], [ %spec.select.i291.prol, %.prol.loopexit.unr-lcssa ]
  %.03033.i.unr = phi i32 [ %i.gq, %bb.by ], [ %i.gw, %.prol.loopexit.unr-lcssa ]
  %i.gx = icmp eq i32 %i.gp, 30
  br i1 %i.gx, label %pow_ui.exit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.234.i = phi i64 [ %spec.select.i291.1, %.new ], [ %.234.i.unr, %.prol.loopexit ] ; 2 uses
  %.03033.i = phi i32 [ %i.hh, %.new ], [ %.03033.i.unr, %.prol.loopexit ] ; 3 uses
  %i.gy = mul i64 %.234.i, %.234.i
  %i.gz = shl nuw i32 1, %.03033.i
  %i.ha = and i32 %i.gz, %.0187
  %.not.i = icmp eq i32 %i.ha, 0
  %i.hb = select i1 %.not.i, i64 1, i64 %i.go
  %spec.select.i291 = mul i64 %i.gy, %i.hb        ; 2 uses
  %i.hc = add nsw i32 %.03033.i, -1               ; 2 uses
  %i.hd = mul i64 %spec.select.i291, %spec.select.i291
  %i.he = shl nuw i32 1, %i.hc
  %i.hf = and i32 %i.he, %.0187
  %.not.i.1 = icmp eq i32 %i.hf, 0
  %i.hg = select i1 %.not.i.1, i64 1, i64 %i.go
  %spec.select.i291.1 = mul i64 %i.hd, %i.hg      ; 2 uses
  %i.hh = add nsw i32 %.03033.i, -2
  %.not36.i.1 = icmp eq i32 %i.hc, 0
  br i1 %.not36.i.1, label %pow_ui.exit, label %.new, !llvm.loop !15

pow_ui.exit:                                      ; preds = %.prol.loopexit, %.new, %bb.bt, %bb.bx
  %.031.i = phi i64 [ %.1.i, %bb.bx ], [ %i.fx, %bb.bt ], [ %spec.select.i291.lcssa.unr, %.prol.loopexit ], [ %spec.select.i291.1, %.new ]
  %i.hi = load i32, ptr %i.bl, align 4, !tbaa !14
  %i.hj = icmp eq i32 %i.hi, 0
  %i.hk = icmp eq i32 %i.cn, 1
  %or.cond549 = select i1 %i.hj, i1 %i.hk, i1 false
  br i1 %or.cond549, label %bb.bz, label %thread-pre-split424

bb.bz:                                            ; preds = %pow_ui.exit
  store i32 %.0198, ptr %i.bl, align 4, !tbaa !14
  br label %mpb_mul1_base.exit308

thread-pre-split424:                              ; preds = %pow_ui.exit
  %i.hl = and i64 %.031.i, 4294967295             ; 4 uses
  %i.hm = icmp eq i64 %i.hl, 0
  br i1 %i.hm, label %bb.ca, label %bb.cb

bb.ca:                                            ; preds = %thread-pre-split424
  %i.hn = icmp sgt i32 %i.cn, -1
  br i1 %i.hn, label %.lr.ph.preheader.i306, label %._crit_edge.i305

.lr.ph.preheader.i306:                            ; preds = %bb.ca
  %i.ho = add nuw i32 %i.cn, 1
  %i.hp = zext i32 %i.ho to i64
  %i.hq = shl nuw nsw i64 %i.hp, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i288, ptr noundef nonnull align 4 dereferenceable(1) %i.bl, i64 %i.hq, i1 false), !tbaa !14
  br label %._crit_edge.i305

._crit_edge.i305:                                 ; preds = %.lr.ph.preheader.i306, %bb.ca
  store i32 %.0198, ptr %i.bl, align 4, !tbaa !14
  br label %bb.cd

bb.cb:                                            ; preds = %thread-pre-split424
  %.not.i.i293 = icmp eq i32 %i.cn, 0
  br i1 %.not.i.i293, label %mp_mul1.exit.i301, label %.lr.ph.i.i294

.lr.ph.i.i294:                                    ; preds = %bb.cb
  %i.hr = zext i32 %.0198 to i64                  ; 2 uses
  %wide.trip.count.i.i295 = zext i32 %i.cn to i64 ; 2 uses
  %xtraiter562 = and i64 %wide.trip.count.i.i295, 1
  %i.hs = icmp eq i32 %i.cn, 1
  br i1 %i.hs, label %.epil.preheader561, label %.lr.ph.i.i294.new

.lr.ph.i.i294.new:                                ; preds = %.lr.ph.i.i294
  %unroll_iter566 = and i64 %wide.trip.count.i.i295, 4294967294
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cc, %.lr.ph.i.i294.new
  %indvars.iv.i.i296 = phi i64 [ 0, %.lr.ph.i.i294.new ], [ %indvars.iv.next.i.i298.1, %bb.cc ] ; 3 uses
  %.01112.i.i297 = phi i64 [ %i.hr, %.lr.ph.i.i294.new ], [ %i.ih, %bb.cc ]
  %niter567 = phi i64 [ 0, %.lr.ph.i.i294.new ], [ %niter567.next.1, %bb.cc ]
  %i.ht = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i296 ; 2 uses
  %i.hu = load i32, ptr %i.ht, align 4, !tbaa !14
  %i.hv = zext i32 %i.hu to i64
  %i.hw = mul nuw i64 %i.hl, %i.hv
  %i.hx = add nuw i64 %i.hw, %.01112.i.i297       ; 2 uses
  %i.hy = trunc i64 %i.hx to i32
  store i32 %i.hy, ptr %i.ht, align 4, !tbaa !14
  %i.hz = lshr i64 %i.hx, 32
  %i.ia = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i296
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 4 ; 2 uses
  %i.ic = load i32, ptr %i.ib, align 4, !tbaa !14
  %i.id = zext i32 %i.ic to i64
  %i.ie = mul nuw i64 %i.hl, %i.id
  %i.if = add nuw i64 %i.ie, %i.hz                ; 2 uses
  %i.ig = trunc i64 %i.if to i32
  store i32 %i.ig, ptr %i.ib, align 4, !tbaa !14
  %i.ih = lshr i64 %i.if, 32                      ; 3 uses
  %indvars.iv.next.i.i298.1 = add nuw nsw i64 %indvars.iv.i.i296, 2 ; 2 uses
  %niter567.next.1 = add i64 %niter567, 2         ; 2 uses
  %niter567.ncmp.1 = icmp eq i64 %niter567.next.1, %unroll_iter566
  br i1 %niter567.ncmp.1, label %._crit_edge.loopexit.i.i300.unr-lcssa, label %bb.cc, !llvm.loop !23

._crit_edge.loopexit.i.i300.unr-lcssa:            ; preds = %bb.cc
  %lcmp.mod563.not = icmp eq i64 %xtraiter562, 0
  br i1 %lcmp.mod563.not, label %._crit_edge.loopexit.i.i300, label %.epil.preheader561

.epil.preheader561:                               ; preds = %._crit_edge.loopexit.i.i300.unr-lcssa, %.lr.ph.i.i294
  %indvars.iv.i.i296.epil.init = phi i64 [ 0, %.lr.ph.i.i294 ], [ %indvars.iv.next.i.i298.1, %._crit_edge.loopexit.i.i300.unr-lcssa ]
  %.01112.i.i297.epil.init = phi i64 [ %i.hr, %.lr.ph.i.i294 ], [ %i.ih, %._crit_edge.loopexit.i.i300.unr-lcssa ]
  %lcmp.mod565 = trunc i32 %i.cn to i1
  tail call void @llvm.assume(i1 %lcmp.mod565)
  %i.ii = getelementptr inbounds nuw [4 x i8], ptr %i.bl, i64 %indvars.iv.i.i296.epil.init ; 2 uses
  %i.ij = load i32, ptr %i.ii, align 4, !tbaa !14
  %i.ik = zext i32 %i.ij to i64
  %i.il = mul nuw i64 %i.hl, %i.ik
  %i.im = add nuw i64 %i.il, %.01112.i.i297.epil.init ; 2 uses
  %i.in = trunc i64 %i.im to i32
  store i32 %i.in, ptr %i.ii, align 4, !tbaa !14
  %i.io = lshr i64 %i.im, 32
  br label %._crit_edge.loopexit.i.i300

._crit_edge.loopexit.i.i300:                      ; preds = %._crit_edge.loopexit.i.i300.unr-lcssa, %.epil.preheader561
  %.lcssa = phi i64 [ %i.ih, %._crit_edge.loopexit.i.i300.unr-lcssa ], [ %i.io, %.epil.preheader561 ]
  %i.ip = trunc nuw i64 %.lcssa to i32
  br label %mp_mul1.exit.i301

mp_mul1.exit.i301:                                ; preds = %._crit_edge.loopexit.i.i300, %bb.cb
  %.011.lcssa.i.i302 = phi i32 [ %.0198, %bb.cb ], [ %i.ip, %._crit_edge.loopexit.i.i300 ]
  %i.iq = sext i32 %i.cn to i64
  %i.ir = getelementptr inbounds [4 x i8], ptr %i.bl, i64 %i.iq
  store i32 %.011.lcssa.i.i302, ptr %i.ir, align 4, !tbaa !14
  %.pre.i303 = load i32, ptr %4, align 4, !tbaa !14
  br label %bb.cd

bb.cd:                                            ; preds = %mp_mul1.exit.i301, %._crit_edge.i305
  %i.is = phi i32 [ %.pre.i303, %mp_mul1.exit.i301 ], [ %i.cn, %._crit_edge.i305 ] ; 2 uses
  %i.it = add nsw i32 %i.is, 1                    ; 2 uses
  store i32 %i.it, ptr %4, align 4, !tbaa !14
  %i.iu = icmp sgt i32 %i.is, 0
  br i1 %i.iu, label %.lr.ph.i23.i304, label %mpb_mul1_base.exit308

.lr.ph.i23.i304:                                  ; preds = %bb.cd, %bb.ce
  %8 = phi i32 [ %10, %bb.ce ], [ %i.it, %bb.cd ] ; 3 uses
  %9 = zext nneg i32 %8 to i64
  %i.iv = getelementptr [4 x i8], ptr %4, i64 %9
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !14
  %i.ix = icmp eq i32 %i.iw, 0
  br i1 %i.ix, label %bb.ce, label %mpb_mul1_base.exit308

bb.ce:                                            ; preds = %.lr.ph.i23.i304
  %10 = add nsw i32 %8, -1                        ; 2 uses
  store i32 %10, ptr %4, align 4, !tbaa !14
  %i.iy = icmp sgt i32 %8, 2
  br i1 %i.iy, label %.lr.ph.i23.i304, label %mpb_mul1_base.exit308, !llvm.loop !19

mpb_mul1_base.exit308:                            ; preds = %bb.ce, %.lr.ph.i23.i304, %bb.bs, %bb.cd, %bb.bz
  %i.iz = icmp ne i32 %.0191, 0                   ; 2 uses
  %i.ja = icmp slt i32 %.5.ph, 0
  %spec.select = select i1 %i.ja, i32 %.1172, i32 %.5.ph
  %i.jb = add nsw i32 %.0191, %.0171
  %i.jc = sub i32 %i.jb, %spec.select             ; 2 uses
  %i.jd = icmp ne i32 %., 0                       ; 2 uses
  %i.je = icmp ne i32 %.0195, 0
  %or.cond12 = select i1 %i.jd, i1 %i.je, i1 false
  br i1 %or.cond12, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %mpb_mul1_base.exit308
  %i.jf = load i32, ptr %i.bl, align 4, !tbaa !14
  %i.jg = or i32 %i.jf, 1
  store i32 %i.jg, ptr %i.bl, align 4, !tbaa !14
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %mpb_mul1_base.exit308
  br i1 %.not239, label %bb.ch, label %.thread443

bb.ch:                                            ; preds = %bb.cg
  %cond = icmp eq i32 %i.ax, 10
  %i.jh = load i8, ptr %.11.ph, align 1, !tbaa !8 ; 7 uses
  br i1 %cond, label %bb.ci, label %bb.cj

bb.ci:                                            ; preds = %bb.ch
  switch i8 %i.jh, label %.thread443 [
    i8 101, label %bb.cm
    i8 69, label %bb.cm
  ]

bb.cj:                                            ; preds = %bb.ch
  %i.ji = icmp eq i8 %i.jh, 64
  br i1 %i.ji, label %bb.cm, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  %i.jj = add nsw i32 %., -1
  %or.cond15 = icmp ult i32 %i.jj, 4
  br i1 %or.cond15, label %bb.cl, label %.thread443

bb.cl:                                            ; preds = %bb.ck
  switch i8 %i.jh, label %.thread443 [
    i8 112, label %bb.cm
    i8 80, label %bb.cm
  ]

bb.cm:                                            ; preds = %bb.cl, %bb.cl, %bb.ci, %bb.ci, %bb.cj
  %i.jk = phi i8 [ %i.jh, %bb.cl ], [ %i.jh, %bb.cl ], [ %i.jh, %bb.ci ], [ %i.jh, %bb.ci ], [ 64, %bb.cj ]
  %i.jl = icmp ugt ptr %.11.ph, %.0356
  br i1 %i.jl, label %bb.cn, label %.thread443

bb.cn:                                            ; preds = %bb.cm
  %i.jm = and i8 %i.jk, -33
  %spec.select257 = icmp eq i8 %i.jm, 80
  %i.jn = getelementptr inbounds nuw i8, ptr %.11.ph, i64 1 ; 2 uses
  %i.jo = load i8, ptr %i.jn, align 1, !tbaa !8
  switch i8 %i.jo, label %bb.cq [
    i8 43, label %bb.co
    i8 45, label %bb.cp
  ]

bb.co:                                            ; preds = %bb.cn
  %i.jp = getelementptr inbounds nuw i8, ptr %.11.ph, i64 2
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.jq = getelementptr inbounds nuw i8, ptr %.11.ph, i64 2
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cn, %bb.cp, %bb.co
  %.12 = phi ptr [ %i.jn, %bb.cn ], [ %i.jp, %bb.co ], [ %i.jq, %bb.cp ] ; 3 uses
  %.0 = phi i1 [ false, %bb.cn ], [ false, %bb.co ], [ true, %bb.cp ] ; 2 uses
  %i.jr = load i8, ptr %.12, align 1, !tbaa !8
  %i.js = zext i8 %i.jr to i32
  %i.jt = add nsw i32 %i.js, -48                  ; 2 uses
  %or.cond.i309 = icmp ult i32 %i.jt, 10
  br i1 %or.cond.i309, label %.preheader, label %.thread415

.preheader:                                       ; preds = %bb.cq, %to_digit.exit326.thread433
  %.13 = phi ptr [ %.14, %to_digit.exit326.thread433 ], [ %.12, %bb.cq ] ; 2 uses
  %.0178 = phi i32 [ %.1179, %to_digit.exit326.thread433 ], [ %i.jt, %bb.cq ] ; 5 uses
  %.0166 = phi i1 [ %or.cond473, %to_digit.exit326.thread433 ], [ false, %bb.cq ] ; 2 uses
  %storemerge = getelementptr inbounds nuw i8, ptr %.13, i64 1 ; 3 uses
  %i.ju = load i8, ptr %storemerge, align 1, !tbaa !8 ; 2 uses
  %i.jv = zext i8 %i.ju to i32                    ; 2 uses
  %i.jw = icmp eq i32 %.1186384, %i.jv
  br i1 %i.jw, label %bb.cr, label %to_digit.exit320.thread

bb.cr:                                            ; preds = %.preheader
  %i.jx = getelementptr inbounds nuw i8, ptr %.13, i64 2 ; 2 uses
  %i.jy = load i8, ptr %i.jx, align 1, !tbaa !8   ; 2 uses
  %i.jz = add i8 %i.jy, -48
  %or.cond.i315 = icmp ult i8 %i.jz, 10           ; 2 uses
  %spec.select475 = select i1 %or.cond.i315, ptr %i.jx, ptr %storemerge
  %i.ka = select i1 %or.cond.i315, i8 %i.jy, i8 %i.ju
  %.pre511 = zext i8 %i.ka to i32
  br label %to_digit.exit320.thread

to_digit.exit320.thread:                          ; preds = %bb.cr, %.preheader
  %.pre-phi = phi i32 [ %.pre511, %bb.cr ], [ %i.jv, %.preheader ]
  %.14 = phi ptr [ %spec.select475, %bb.cr ], [ %storemerge, %.preheader ] ; 3 uses
  %i.kb = add nsw i32 %.pre-phi, -48              ; 2 uses
  %or.cond.i321 = icmp ult i32 %i.kb, 10
  br i1 %or.cond.i321, label %to_digit.exit326.thread433, label %to_digit.exit326.thread

to_digit.exit326.thread:                          ; preds = %to_digit.exit320.thread
  %i.kc = sub nsw i32 0, %.0178
  %spec.select258 = select i1 %.0, i32 %i.kc, i32 %.0178
  %or.cond18 = select i1 %i.iz, i1 %.0166, i1 false
  %.259 = select i1 %.0, i64 0, i64 9218868437227405312
  br i1 %or.cond18, label %js__strstart.exit, label %.thread443

to_digit.exit326.thread433:                       ; preds = %to_digit.exit320.thread
  %i.kd = icmp sgt i32 %.0178, 214748363
  %or.cond473 = select i1 %.0166, i1 true, i1 %i.kd, !prof !38 ; 2 uses
  %i.ke = mul nsw i32 %.0178, 10
  %i.kf = add nsw i32 %i.kb, %i.ke
  %.1179 = select i1 %or.cond473, i32 %.0178, i32 %i.kf, !prof !38
  br label %.preheader

.thread443:                                       ; preds = %to_digit.exit326.thread, %bb.ci, %bb.cl, %bb.cm, %bb.ck, %bb.cg
  %.16 = phi ptr [ %.11.ph, %bb.cg ], [ %.11.ph, %bb.ci ], [ %.11.ph, %bb.cm ], [ %.11.ph, %bb.cl ], [ %.11.ph, %bb.ck ], [ %.14, %to_digit.exit326.thread ] ; 12 uses
  %.4182 = phi i32 [ 0, %bb.cg ], [ 0, %bb.ci ], [ 0, %bb.cm ], [ 0, %bb.cl ], [ 0, %bb.ck ], [ %spec.select258, %to_digit.exit326.thread ] ; 2 uses
  %.0169 = phi i1 [ false, %bb.cg ], [ false, %bb.ci ], [ false, %bb.cm ], [ false, %bb.cl ], [ false, %bb.ck ], [ %spec.select257, %to_digit.exit326.thread ]
  %i.kg = icmp eq ptr %.16, %.0356
  br i1 %i.kg, label %.thread415, label %bb.cs

bb.cs:                                            ; preds = %.thread443
  br i1 %i.iz, label %bb.ct, label %js__strstart.exit

bb.ct:                                            ; preds = %bb.cs
  br i1 %i.jd, label %bb.cu, label %bb.cx

bb.cu:                                            ; preds = %bb.ct
  %i.kh = select i1 %.0169, i32 1, i32 %.
  %spec.select261 = mul nsw i32 %i.kh, %.4182
  %i.ki = mul nsw i32 %i.jc, %.
  %i.kj = sub nsw i32 %spec.select261, %i.ki      ; 2 uses
  %i.kk = mul nsw i32 %.0191, %.
  %i.kl = add nsw i32 %i.kj, %i.kk                ; 2 uses
  %i.km = or disjoint i32 %., 1024
  %.not246 = icmp slt i32 %i.kl, %i.km
  br i1 %.not246, label %bb.cv, label %js__strstart.exit

bb.cv:                                            ; preds = %bb.cu
  %i.kn = icmp slt i32 %i.kl, -1074
  br i1 %i.kn, label %js__strstart.exit, label %bb.cw

bb.cw:                                            ; preds = %bb.cv
  %i.ko = sub nsw i32 0, %i.kj
  %i.kp = call fastcc i64 @round_to_d(ptr noundef %i.a, ptr noundef nonnull %4, i32 noundef %i.ko)
  br label %bb.da

bb.cx:                                            ; preds = %bb.ct
  %i.kq = sub nsw i32 %.4182, %i.jc               ; 2 uses
  %i.kr = add nsw i32 %i.kq, %.0191               ; 2 uses
  %i.ks = getelementptr inbounds [2 x i8], ptr @max_exponent, i64 %i.az
  %i.kt = load i16, ptr %i.ks, align 2, !tbaa !39
  %i.ku = sext i16 %i.kt to i32
  %.not.not = icmp sgt i32 %i.kr, %i.ku
  br i1 %.not.not, label %js__strstart.exit, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.kv = getelementptr inbounds [2 x i8], ptr @min_exponent, i64 %i.az
  %i.kw = load i16, ptr %i.kv, align 2, !tbaa !39
  %i.kx = sext i16 %i.kw to i32
  %.not = icmp sgt i32 %i.kr, %i.kx
  br i1 %.not, label %bb.cz, label %js__strstart.exit

bb.cz:                                            ; preds = %bb.cy
  %i.ky = call fastcc i64 @mul_pow_round_to_d(ptr noundef %i.a, ptr noundef nonnull %4, i32 noundef %i.bj, i32 noundef %i.bi, i32 noundef %i.kq)
  br label %bb.da

bb.da:                                            ; preds = %bb.cz, %bb.cw
  %.0165 = phi i64 [ %i.kp, %bb.cw ], [ %i.ky, %bb.cz ] ; 3 uses
  %i.kz = icmp eq i64 %.0165, 0
  br i1 %i.kz, label %js__strstart.exit, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.la = load i32, ptr %i.a, align 4, !tbaa !14  ; 5 uses
  %i.lb = icmp sgt i32 %i.la, 1024
  br i1 %i.lb, label %js__strstart.exit, label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.lc = icmp slt i32 %i.la, -1073
  br i1 %i.lc, label %js__strstart.exit, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ld = icmp slt i32 %i.la, -1021
  br i1 %i.ld, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  %i.le = sub nuw nsw i32 -1021, %i.la
  %i.lf = zext nneg i32 %i.le to i64
  %i.lg = lshr i64 %.0165, %i.lf
  br label %js__strstart.exit

bb.df:                                            ; preds = %bb.dd
end_hunk_2
