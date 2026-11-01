Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mquickjs/original/dtoa?download=true
inline.NumInlined: 82
inline.NumDeleted: 28
begin_hunk_0_@js_dtoa:bb.a
  %i.fz = zext i32 %i.fy to i64
  %i.ga = getelementptr i8, ptr %.2, i64 %i.fs
  %i.gb = getelementptr i8, ptr %i.ga, i64 %i.fz
  %scevgep = getelementptr i8, ptr %i.gb, i64 1
  br label %.loopexit

.loopexit:                                        ; preds = %.lr.ph281.preheader, %bb.bc, %bb.ak, %u32toa.exit, %._crit_edge287, %bb.e, %bb.f, %bb.s
  %.7 = phi ptr [ %i.n, %bb.e ], [ %i.o, %bb.f ], [ %i.fg, %u32toa.exit ], [ %i.fq, %._crit_edge287 ], [ %i.df, %bb.ak ], [ %i.am, %bb.s ], [ %i.ft, %bb.bc ], [ %scevgep, %.lr.ph281.preheader ] ; 2 uses
  store i8 0, ptr %.7, align 1, !tbaa !17
  %i.gc = ptrtoaddr ptr %.7 to i64
  %i.gd = ptrtoaddr ptr %0 to i64
  %i.ge = sub i64 %i.gc, %i.gd
  %i.gf = trunc i64 %i.ge to i32
  ret i32 %i.gf
}

; Function Attrs: noreturn nounwind optsize
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define internal fastcc i64 @pow_ui(i32 noundef %0, i32 noundef %1) unnamed_addr #6 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 0, label %.loopexit
    i32 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %0 to i64
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.b = icmp eq i32 %0, 5
  %i.c = icmp eq i32 %0, 10                       ; 2 uses
  %or.cond = or i1 %i.b, %i.c
  %i.d = icmp ult i32 %1, 18
  %or.cond3 = and i1 %or.cond, %i.d
  br i1 %or.cond3, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.e = zext nneg i32 %1 to i64                  ; 2 uses
  %i.f = getelementptr [4 x i8], ptr @pow5_table, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -4
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19
  %i.i = zext i32 %i.h to i64                     ; 2 uses
  %i.j = icmp samesign ugt i32 %1, 13
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr @pow5h_table, i64 %i.e
  %i.l = getelementptr i8, ptr %i.k, i64 -14
  %i.m = load i8, ptr %i.l, align 1, !tbaa !17
  %i.n = zext i8 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 32
  %i.p = or disjoint i64 %i.o, %i.i
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.0 = phi i64 [ %i.p, %bb.e ], [ %i.i, %bb.d ]
  %narrow = select i1 %i.c, i32 %1, i32 0
  %i.q = zext nneg i32 %narrow to i64
  %.1 = shl nuw nsw i64 %.0, %i.q
  br label %.loopexit

bb.g:                                             ; preds = %bb.c
  %i.r = zext i32 %0 to i64                       ; 2 uses
  %i.s = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %1, i1 true)
  %i.t = sub nuw nsw i32 30, %i.s
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.h
  %.234 = phi i64 [ %i.r, %bb.g ], [ %spec.select, %bb.h ] ; 2 uses
  %.03033 = phi i32 [ %i.t, %bb.g ], [ %i.y, %bb.h ] ; 3 uses
  %i.u = mul i64 %.234, %.234
  %i.v = shl nuw i32 1, %.03033
  %i.w = and i32 %i.v, %1
  %.not = icmp eq i32 %i.w, 0
  %i.x = select i1 %.not, i64 1, i64 %i.r
  %spec.select = mul i64 %i.u, %i.x               ; 2 uses
  %i.y = add nsw i32 %.03033, -1
  %.not36 = icmp eq i32 %.03033, 0
  br i1 %.not36, label %.loopexit, label %bb.h, !llvm.loop !24

.loopexit:                                        ; preds = %bb.h, %bb.a, %bb.f, %bb.b
  %.031 = phi i64 [ 1, %bb.a ], [ %i.a, %bb.b ], [ %.1, %bb.f ], [ %spec.select, %bb.h ]
  ret i64 %.031
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc range(i64 0, -9223372036854775808) i64 @mul_pow_round_to_d(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef range(i32 0, 32) %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = tail call fastcc i32 @mul_pow(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef 0, i32 noundef 55) #12
  %i.b = tail call fastcc i64 @round_to_d(ptr noundef %0, ptr noundef %1, i32 noundef %i.a) #12
  ret i64 %i.b
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @output_digits(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #4 {
bb.a:
  %i.a = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %2)
  %i.b = icmp samesign ugt i32 %i.a, 1
  %i.c = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %2, i1 true) ; 3 uses
  %i.d = xor i32 %i.c, 31                         ; 2 uses
  %i.e = add nsw i32 %2, -2
  %i.f = sext i32 %i.e to i64                     ; 2 uses
  %i.g = getelementptr inbounds i8, ptr @digits_per_limb_table, i64 %i.f
  %i.h = load i8, ptr %i.g, align 1, !tbaa !17
  %i.i = zext i8 %i.h to i32                      ; 3 uses
  %.not70 = icmp eq i32 %i.c, 31
  %.not = select i1 %i.b, i1 true, i1 %.not70
  br i1 %.not, label %.preheader, label %.preheader66

.preheader66:                                     ; preds = %bb.a
  %i.j = lshr i32 2147483647, %i.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.l = mul nuw nsw i32 %i.d, %i.i
  br label %bb.b

.preheader:                                       ; preds = %bb.a
  %.not5268 = icmp eq i32 %3, 0
  br i1 %.not5268, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = getelementptr inbounds [4 x i8], ptr @radix_base_table, i64 %i.f
  %i.o = icmp eq i32 %2, 10
  br label %bb.e

bb.b:                                             ; preds = %.preheader66, %bb.d
  %.047 = phi i32 [ %i.p, %bb.d ], [ %3, %.preheader66 ] ; 2 uses
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %.047, i32 %i.i) ; 3 uses
  %i.p = sub nsw i32 %.047, %..i                  ; 3 uses
  %i.q = zext nneg i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 %i.q
  %i.s = icmp sgt i32 %..i, 0
  br i1 %i.s, label %.lr.ph.i, label %u64toa_bin_len.exit

.lr.ph.i:                                         ; preds = %bb.b
  %i.t = load i32, ptr %i.k, align 4, !tbaa !19
  %i.u = zext nneg i32 %..i to i64
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.u, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %.01416.i = phi i32 [ %i.t, %.lr.ph.i ], [ %i.w, %bb.c ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 2 uses
  %i.v = and i32 %.01416.i, %i.j                  ; 3 uses
  %i.w = lshr i32 %.01416.i, %i.d
  %i.x = icmp samesign ult i32 %i.v, 10
  %i.y = or disjoint i32 %i.v, 48
  %i.z = add nuw nsw i32 %i.v, 87
  %.013.i = select i1 %i.x, i32 %i.y, i32 %i.z
  %i.aa = trunc i32 %.013.i to i8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 %indvars.iv.next.i
  store i8 %i.aa, ptr %i.ab, align 1, !tbaa !17
  %i.ac = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.ac, label %bb.c, label %u64toa_bin_len.exit, !llvm.loop !2

u64toa_bin_len.exit:                              ; preds = %bb.c, %bb.b
  %i.ad = icmp eq i32 %i.p, 0
  br i1 %i.ad, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %u64toa_bin_len.exit
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %1, i32 noundef %i.l, i32 noundef 2) #12
  br label %bb.b

bb.e:                                             ; preds = %.lr.ph, %limb_to_a.exit
  %.169 = phi i32 [ %3, %.lr.ph ], [ %i.ae, %limb_to_a.exit ] ; 2 uses
  %..i54 = tail call noundef i32 @llvm.smin.i32(i32 %.169, i32 %i.i) ; 4 uses
  %i.ae = sub nsw i32 %.169, %..i54               ; 3 uses
  %i.af = load i32, ptr %1, align 4, !tbaa !19    ; 3 uses
  %.013.i55 = add i32 %i.af, -1                   ; 2 uses
  %i.ag = icmp sgt i32 %.013.i55, -1
  br i1 %i.ag, label %.lr.ph.i56, label %mpb_renorm.exit

.lr.ph.i56:                                       ; preds = %bb.e
  %i.ah = load i32, ptr %i.n, align 4, !tbaa !19
  %i.ai = zext i32 %i.ah to i64                   ; 2 uses
  %i.aj = zext nneg i32 %.013.i55 to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i56
  %indvars.iv.i57 = phi i64 [ %i.aj, %.lr.ph.i56 ], [ %indvars.iv.next.i58, %bb.f ] ; 3 uses
  %.01214.i = phi i64 [ 0, %.lr.ph.i56 ], [ %i.ar, %bb.f ]
  %i.ak = shl nuw i64 %.01214.i, 32
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i57 ; 2 uses
  %i.am = load i32, ptr %i.al, align 4, !tbaa !19
  %i.an = zext i32 %i.am to i64
  %i.ao = or disjoint i64 %i.ak, %i.an            ; 2 uses
  %i.ap = udiv i64 %i.ao, %i.ai
  %i.aq = trunc i64 %i.ap to i32
  store i32 %i.aq, ptr %i.al, align 4, !tbaa !19
  %i.ar = urem i64 %i.ao, %i.ai                   ; 2 uses
  %indvars.iv.next.i58 = add nsw i64 %indvars.iv.i57, -1
  %.not.i = icmp eq i64 %indvars.iv.i57, 0
  br i1 %.not.i, label %mp_div1.exit, label %bb.f, !llvm.loop !25

mp_div1.exit:                                     ; preds = %bb.f
  %i.as = trunc nuw i64 %i.ar to i32              ; 3 uses
  %i.at = icmp sgt i32 %i.af, 1
  br i1 %i.at, label %.lr.ph.i59, label %mpb_renorm.exit

.lr.ph.i59:                                       ; preds = %mp_div1.exit, %bb.g
  %5 = phi i32 [ %7, %bb.g ], [ %i.af, %mp_div1.exit ] ; 3 uses
  %6 = zext nneg i32 %5 to i64
  %i.au = getelementptr [4 x i8], ptr %1, i64 %6
  %i.av = load i32, ptr %i.au, align 4, !tbaa !19
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %bb.g, label %mpb_renorm.exit

bb.g:                                             ; preds = %.lr.ph.i59
  %7 = add nsw i32 %5, -1                         ; 2 uses
  store i32 %7, ptr %1, align 4, !tbaa !19
  %i.ax = icmp sgt i32 %5, 2
  br i1 %i.ax, label %.lr.ph.i59, label %mpb_renorm.exit, !llvm.loop !3

mpb_renorm.exit:                                  ; preds = %.lr.ph.i59, %bb.g, %bb.e, %mp_div1.exit
  %.012.lcssa.i64 = phi i32 [ 0, %bb.e ], [ %i.as, %mp_div1.exit ], [ %i.as, %bb.g ], [ %i.as, %.lr.ph.i59 ] ; 2 uses
  %i.ay = zext nneg i32 %i.ae to i64
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 %i.ay ; 2 uses
  br i1 %i.o, label %bb.h, label %.preheader.i

.preheader.i:                                     ; preds = %mpb_renorm.exit
  %i.ba = icmp sgt i32 %..i54, 0
  br i1 %i.ba, label %.lr.ph.preheader.i.a, label %limb_to_a.exit

.lr.ph.preheader.i.a:                             ; preds = %.preheader.i
  %i.bb = zext nneg i32 %..i54 to i64
  br label %.lr.ph.i60

bb.h:                                             ; preds = %mpb_renorm.exit
  %.08.i.i = add i32 %..i54, -1                   ; 2 uses
  %i.bc = icmp sgt i32 %.08.i.i, -1
  br i1 %i.bc, label %.lr.ph.preheader.i.i, label %limb_to_a.exit

.lr.ph.preheader.i.i:                             ; preds = %bb.h
  %i.bd = zext nneg i32 %.08.i.i to i64
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.preheader.i.i
  %indvars.iv.i.i = phi i64 [ %i.bd, %.lr.ph.preheader.i.i ], [ %indvars.iv.next.i.i, %.lr.ph.i.i ] ; 3 uses
  %.079.i.i = phi i32 [ %.012.lcssa.i64, %.lr.ph.preheader.i.i ], [ %i.bf, %.lr.ph.i.i ] ; 2 uses
  %i.be = urem i32 %.079.i.i, 10
  %i.bf = udiv i32 %.079.i.i, 10
  %i.bg = trunc nuw nsw i32 %i.be to i8
  %i.bh = or disjoint i8 %i.bg, 48
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.i.i
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !17
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i.i, -1
  %.not.i.i = icmp eq i64 %indvars.iv.i.i, 0
  br i1 %.not.i.i, label %limb_to_a.exit, label %.lr.ph.i.i, !llvm.loop !1

.lr.ph.i60:                                       ; preds = %.lr.ph.i60, %.lr.ph.preheader.i.a
  %indvars.iv.i61 = phi i64 [ %i.bb, %.lr.ph.preheader.i.a ], [ %indvars.iv.next.i62, %.lr.ph.i60 ] ; 2 uses
  %.01721.i = phi i32 [ %.012.lcssa.i64, %.lr.ph.preheader.i.a ], [ %i.bk, %.lr.ph.i60 ] ; 2 uses
  %indvars.iv.next.i62 = add nsw i64 %indvars.iv.i61, -1 ; 2 uses
  %i.bj = urem i32 %.01721.i, %2                  ; 2 uses
  %i.bk = udiv i32 %.01721.i, %2
  %i.bl = icmp slt i32 %i.bj, 10
  %.016.v.i = select i1 %i.bl, i32 48, i32 87
  %.016.i = add nsw i32 %.016.v.i, %i.bj
  %i.bm = trunc i32 %.016.i to i8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 %indvars.iv.next.i62
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !17
  %i.bo = icmp samesign ugt i64 %indvars.iv.i61, 1
  br i1 %i.bo, label %.lr.ph.i60, label %limb_to_a.exit, !llvm.loop !26

limb_to_a.exit:                                   ; preds = %.lr.ph.i60, %.lr.ph.i.i, %.preheader.i, %bb.h
  %.not52 = icmp eq i32 %i.ae, 0
  br i1 %.not52, label %.loopexit, label %bb.e, !llvm.loop !27

.loopexit:                                        ; preds = %u64toa_bin_len.exit, %limb_to_a.exit, %.preheader
  %.not53 = icmp eq i32 %4, %3
  br i1 %.not53, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.bp = sext i32 %4 to i64
  %i.bq = getelementptr inbounds i8, ptr %0, i64 %i.bp ; 3 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 1
  %i.bs = sub nsw i32 %3, %4
  %i.bt = sext i32 %i.bs to i64
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.br, ptr align 1 %i.bq, i64 %i.bt, i1 false)
  store i8 46, ptr %i.bq, align 1, !tbaa !17
  %i.bu = add nsw i32 %3, 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %.loopexit
  %.0 = phi i32 [ %i.bu, %bb.i ], [ %3, %.loopexit ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @mul_pow(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, 32) %2, i32 noundef %3, i32 noundef range(i32 0, 2) %4, i32 noundef range(i32 -2147483648, 2147482573) %5) unnamed_addr #4 {
bb.a:
  %i.a = sub nsw i32 0, %3                        ; 2 uses
  %i.b = mul nsw i32 %2, %i.a                     ; 3 uses
  %.not = icmp eq i32 %1, 1
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = sext i32 %1 to i64
  %i.d = getelementptr i8, ptr @digits_per_limb_table, i64 %i.c
  %i.e = getelementptr i8, ptr %i.d, i64 -2
  %i.f = load i8, ptr %i.e, align 1, !tbaa !17
  %i.g = zext i8 %i.f to i32                      ; 4 uses
  %i.h = icmp sgt i32 %3, -1
  br i1 %i.h, label %.preheader, label %bb.h

.preheader:                                       ; preds = %bb.b
  %.not7596 = icmp eq i32 %3, 0
  br i1 %.not7596, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %mp_mul1.exit.thread
  %.06099 = phi i32 [ 0, %.lr.ph ], [ %.161, %mp_mul1.exit.thread ]
  %.06298 = phi i32 [ 0, %.lr.ph ], [ %.163, %mp_mul1.exit.thread ] ; 2 uses
  %.06597 = phi i32 [ %3, %.lr.ph ], [ %i.y, %mp_mul1.exit.thread ] ; 2 uses
  %..i = tail call noundef i32 @llvm.smin.i32(i32 %.06597, i32 %i.g) ; 4 uses
  %.not76 = icmp eq i32 %..i, %.06298
  br i1 %.not76, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = tail call fastcc i64 @pow_ui(i32 noundef %1, i32 noundef %..i) #12
  %i.k = trunc i64 %i.j to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.163 = phi i32 [ %..i, %bb.d ], [ %.06298, %bb.c ]
  %.161 = phi i32 [ %i.k, %bb.d ], [ %.06099, %bb.c ] ; 2 uses
  %i.l = load i32, ptr %0, align 4, !tbaa !19     ; 4 uses
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %mp_mul1.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.e
  %i.m = zext i32 %.161 to i64
  %wide.trip.count.i = zext i32 %i.l to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.f ] ; 2 uses
  %.01112.i = phi i64 [ 0, %.lr.ph.i ], [ %i.t, %bb.f ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.i ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !19
  %i.p = zext i32 %i.o to i64
  %i.q = mul nuw i64 %i.p, %i.m
  %i.r = add nuw i64 %i.q, %.01112.i              ; 2 uses
  %i.s = trunc i64 %i.r to i32
  store i32 %i.s, ptr %i.n, align 4, !tbaa !19
  %i.t = lshr i64 %i.r, 32                        ; 3 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %mp_mul1.exit, label %bb.f, !llvm.loop !4

mp_mul1.exit:                                     ; preds = %bb.f
  %.not77 = icmp eq i64 %i.t, 0
  br i1 %.not77, label %mp_mul1.exit.thread, label %bb.g

bb.g:                                             ; preds = %mp_mul1.exit
  %i.u = trunc nuw i64 %i.t to i32
  %i.v = add nsw i32 %i.l, 1
  store i32 %i.v, ptr %0, align 4, !tbaa !19
  %i.w = sext i32 %i.l to i64
  %i.x = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.w
  store i32 %i.u, ptr %i.x, align 4, !tbaa !19
  br label %mp_mul1.exit.thread

mp_mul1.exit.thread:                              ; preds = %bb.e, %bb.g, %mp_mul1.exit
  %i.y = sub nuw nsw i32 %.06597, %..i            ; 2 uses
  %.not75 = icmp eq i32 %i.y, 0
  br i1 %.not75, label %.loopexit, label %bb.c, !llvm.loop !28

bb.h:                                             ; preds = %bb.b
  %i.z = xor i32 %3, -1
  %i.aa = add nuw i32 %i.g, %i.z
  %i.ab = sdiv i32 %i.aa, %i.g
  %i.ac = shl nsw i32 %i.ab, 5                    ; 2 uses
  %i.ad = add nsw i32 %i.ac, %i.b                 ; 2 uses
  %.not72 = icmp eq i32 %4, 0
  br i1 %.not72, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.ae = load i32, ptr %0, align 4, !tbaa !19    ; 2 uses
  %i.af = sext i32 %i.ae to i64
  %i.ag = getelementptr [4 x i8], ptr %0, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !19 ; 2 uses
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %mpb_floor_log2.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = shl nsw i32 %i.ae, 5
  %i.ak = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ah, i1 true)
  %i.al = xor i32 %i.ak, -1
  %i.am = add i32 %i.aj, %i.al
  br label %mpb_floor_log2.exit

mpb_floor_log2.exit:                              ; preds = %bb.i, %bb.j
  %.0.i = phi i32 [ %i.am, %bb.j ], [ -1, %bb.i ]
  %i.an = sub nsw i32 %5, %.0.i
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  %i.ao = add nsw i32 %5, 2
  %i.ap = sub i32 %i.ao, %i.ad
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %mpb_floor_log2.exit
  %.sink = phi i32 [ %i.ap, %bb.k ], [ %i.an, %mpb_floor_log2.exit ]
  %..i79 = tail call range(i32 0, -2147483648) i32 @llvm.smax.i32(i32 %.sink, i32 0) ; 2 uses
  %i.aq = add nsw i32 %i.ac, %..i79
  %i.ar = sub nsw i32 0, %i.aq
  tail call fastcc void @mpb_shr_round(ptr noundef %0, i32 noundef %i.ar, i32 noundef 2) #12
  %i.as = icmp eq i32 %1, 5
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %mpb_renorm.exit
  %.095 = phi i32 [ 0, %bb.l ], [ %.1, %mpb_renorm.exit ]
  %.05894 = phi i32 [ 0, %bb.l ], [ %i.bq, %mpb_renorm.exit ]
  %.293 = phi i32 [ 0, %bb.l ], [ %.3, %mpb_renorm.exit ] ; 2 uses
  %.16692 = phi i32 [ %i.a, %bb.l ], [ %i.bw, %mpb_renorm.exit ] ; 2 uses
  %.08491 = phi i32 [ 0, %bb.l ], [ %.185, %mpb_renorm.exit ]
  %.08690 = phi i32 [ 0, %bb.l ], [ %.187.a, %mpb_renorm.exit ]
  %..i80 = tail call noundef i32 @llvm.smin.i32(i32 %.16692, i32 %i.g) ; 7 uses
  %.not74 = icmp eq i32 %..i80, %.293
  br i1 %.not74, label %pow_ui_inv.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.au = icmp ult i32 %..i80, 14
  %or.cond3.i = and i1 %i.as, %i.au
  br i1 %or.cond3.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.av = add nsw i32 %..i80, -1
  %i.aw = zext nneg i32 %i.av to i64              ; 2 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr @pow5_table, i64 %i.aw
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !19 ; 2 uses
  %i.az = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.ay, i1 true) ; 2 uses
  %i.ba = shl i32 %i.ay, %i.az
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr @pow5_inv_table, i64 %i.aw
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !19
  br label %pow_ui_inv.exit

bb.p:                                             ; preds = %bb.n
  %i.bd = tail call fastcc i64 @pow_ui(i32 noundef range(i32 2, 1) %1, i32 noundef %..i80) #12
  %i.be = trunc i64 %i.bd to i32                  ; 2 uses
  %i.bf = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.be, i1 true) ; 2 uses
  %i.bg = shl i32 %i.be, %i.bf                    ; 3 uses
  %i.bh = xor i32 %i.bg, -1
  %i.bi = zext i32 %i.bh to i64
  %i.bj = shl nuw i64 %i.bi, 32
  %i.bk = or disjoint i64 %i.bj, 4294967295
  %i.bl = zext i32 %i.bg to i64
  %i.bm = udiv i64 %i.bk, %i.bl
  %i.bn = trunc i64 %i.bm to i32
  br label %pow_ui_inv.exit

pow_ui_inv.exit:                                  ; preds = %bb.p, %bb.o, %bb.m
  %.187.a = phi i32 [ %.08690, %bb.m ], [ %i.az, %bb.o ], [ %i.bf, %bb.p ] ; 2 uses
  %.185 = phi i32 [ %.08491, %bb.m ], [ %i.bc, %bb.o ], [ %i.bn, %bb.p ] ; 2 uses
  %.3 = phi i32 [ %.293, %bb.m ], [ %..i80, %bb.o ], [ %..i80, %bb.p ]
  %.1 = phi i32 [ %.095, %bb.m ], [ %i.ba, %bb.o ], [ %i.bg, %bb.p ] ; 2 uses
  %i.bo = load i32, ptr %0, align 4, !tbaa !19
  %i.bp = tail call fastcc i32 @mp_div1norm(ptr noundef nonnull %i.at, ptr noundef nonnull %i.at, i32 noundef %i.bo, i32 noundef %.1, i32 noundef %.185, i32 noundef %.187.a) #12
  %i.bq = or i32 %i.bp, %.05894                   ; 2 uses
  %.pr.i = load i32, ptr %0, align 4, !tbaa !19   ; 2 uses
  %i.br = icmp sgt i32 %.pr.i, 1
  br i1 %i.br, label %.lr.ph.i82, label %mpb_renorm.exit

.lr.ph.i82:                                       ; preds = %pow_ui_inv.exit, %bb.q
  %6 = phi i32 [ %8, %bb.q ], [ %.pr.i, %pow_ui_inv.exit ] ; 3 uses
  %7 = zext nneg i32 %6 to i64
  %i.bs = getelementptr [4 x i8], ptr %0, i64 %7
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !19
  %i.bu = icmp eq i32 %i.bt, 0
  br i1 %i.bu, label %bb.q, label %mpb_renorm.exit

bb.q:                                             ; preds = %.lr.ph.i82
  %8 = add nsw i32 %6, -1                         ; 2 uses
  store i32 %8, ptr %0, align 4, !tbaa !19
  %i.bv = icmp sgt i32 %6, 2
  br i1 %i.bv, label %.lr.ph.i82, label %mpb_renorm.exit, !llvm.loop !3

mpb_renorm.exit:                                  ; preds = %.lr.ph.i82, %bb.q, %pow_ui_inv.exit
  %i.bw = sub nsw i32 %.16692, %..i80             ; 2 uses
  %.not73 = icmp eq i32 %i.bw, 0
  br i1 %.not73, label %bb.r, label %bb.m, !llvm.loop !29

bb.r:                                             ; preds = %mpb_renorm.exit
  %i.bx = add nsw i32 %..i79, %i.ad
  %i.by = icmp ne i32 %i.bq, 0
  %i.bz = zext i1 %i.by to i32
  %i.ca = load i32, ptr %i.at, align 4, !tbaa !19
  %i.cb = or i32 %i.ca, %i.bz
  store i32 %i.cb, ptr %i.at, align 4, !tbaa !19
  br label %.loopexit

.loopexit:                                        ; preds = %mp_mul1.exit.thread, %.preheader, %bb.r, %bb.a
  %.064 = phi i32 [ %i.b, %bb.a ], [ %i.bx, %bb.r ], [ 0, %.preheader ], [ %i.b, %mp_mul1.exit.thread ]
  ret i32 %.064
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @mpb_shr_round(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef range(i32 0, 3) %2) unnamed_addr #4 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.t, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.c = sub nsw i32 0, %1                        ; 3 uses
  %i.d = lshr i32 %i.c, 5                         ; 3 uses
  %i.e = and i32 %i.c, 31                         ; 2 uses
  %.not102 = icmp eq i32 %i.e, 0
  br i1 %.not102, label %mpb_renorm.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.g = load i32, ptr %0, align 4, !tbaa !19
  %i.h = sext i32 %i.g to i64
  %i.i = tail call fastcc i32 @mp_shl(ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, i64 noundef %i.h, i32 noundef %i.e) #12
  %i.j = load i32, ptr %0, align 4, !tbaa !19
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [4 x i8], ptr %i.f, i64 %i.k
  store i32 %i.i, ptr %i.l, align 4, !tbaa !19
  %i.m = load i32, ptr %0, align 4, !tbaa !19     ; 2 uses
  %i.n = add nsw i32 %i.m, 1                      ; 2 uses
  store i32 %i.n, ptr %0, align 4, !tbaa !19
  %i.o = icmp sgt i32 %i.m, 0
  br i1 %i.o, label %.lr.ph.i, label %mpb_renorm.exit

.lr.ph.i:                                         ; preds = %bb.d, %bb.e
  %3 = phi i32 [ %5, %bb.e ], [ %i.n, %bb.d ]     ; 3 uses
  %4 = zext nneg i32 %3 to i64
  %i.p = getelementptr [4 x i8], ptr %0, i64 %4
  %i.q = load i32, ptr %i.p, align 4, !tbaa !19
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %mpb_renorm.exit

bb.e:                                             ; preds = %.lr.ph.i
  %5 = add nsw i32 %3, -1                         ; 2 uses
  store i32 %5, ptr %0, align 4, !tbaa !19
  %i.s = icmp sgt i32 %3, 2
  br i1 %i.s, label %.lr.ph.i, label %mpb_renorm.exit, !llvm.loop !3

mpb_renorm.exit:                                  ; preds = %bb.e, %.lr.ph.i, %bb.d, %bb.c
  %.not103 = icmp eq i32 %i.d, 0
  br i1 %.not103, label %bb.t, label %bb.f

bb.f:                                             ; preds = %mpb_renorm.exit
  %i.t = load i32, ptr %0, align 4, !tbaa !19     ; 3 uses
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph131.a, label %.preheader

.lr.ph131.a:                                      ; preds = %bb.f
  %i.v = zext nneg i32 %i.t to i64
  %i.w = zext nneg i32 %i.d to i64
  %invariant.gep161 = getelementptr [4 x i8], ptr %0, i64 %i.w
  br label %bb.g

.preheader:                                       ; preds = %bb.g, %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = lshr i32 %i.c, 5
  %i.z = tail call i32 @llvm.umax.i32(i32 %i.y, i32 1)
  %i.aa = shl nuw nsw i32 %i.z, 2
  %i.ab = zext nneg i32 %i.aa to i64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.x, i8 0, i64 %i.ab, i1 false), !tbaa !19
  %i.ac = add nsw i32 %i.t, %i.d
  store i32 %i.ac, ptr %0, align 4, !tbaa !19
  br label %bb.t

bb.g:                                             ; preds = %.lr.ph131.a, %bb.g
  %indvars.iv141 = phi i64 [ %i.v, %.lr.ph131.a ], [ %indvars.iv.next142, %bb.g ] ; 4 uses
  %indvars.iv.next142 = add nsw i64 %indvars.iv141, -1
  %i.ad = getelementptr [4 x i8], ptr %0, i64 %indvars.iv141
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !19
  %gep162 = getelementptr [4 x i8], ptr %invariant.gep161, i64 %indvars.iv141
  store i32 %i.ae, ptr %gep162, align 4, !tbaa !19
  %i.af = icmp samesign ugt i64 %indvars.iv141, 1
  br i1 %i.af, label %bb.g, label %.preheader, !llvm.loop !30

bb.h:                                             ; preds = %bb.b
  %switch = icmp samesign ult i32 %2, 2
  %.pre = load i32, ptr %0, align 4, !tbaa !19    ; 5 uses
  br i1 %switch, label %bb.i, label %mpb_get_bit.exit106

bb.i:                                             ; preds = %bb.h
  %i.ag = add nsw i32 %1, -1                      ; 2 uses
  %i.ah = lshr i32 %i.ag, 5                       ; 3 uses
  %.not.i = icmp slt i32 %i.ah, %.pre
  br i1 %.not.i, label %mpb_get_bit.exit, label %mpb_get_bit.exit106

mpb_get_bit.exit:                                 ; preds = %bb.i
  %i.ai = and i32 %i.ag, 31                       ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 3 uses
  %i.ak = zext nneg i32 %i.ah to i64              ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !19 ; 2 uses
  %i.an = shl nuw i32 1, %i.ai
  %i.ao = and i32 %i.am, %i.an
  %.not = icmp eq i32 %i.ao, 0
  br i1 %.not, label %mpb_get_bit.exit106, label %bb.j

bb.j:                                             ; preds = %mpb_get_bit.exit
  %i.ap = icmp eq i32 %2, 1
  br i1 %i.ap, label %mpb_get_bit.exit106, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not123 = icmp eq i32 %1, 1
  br i1 %.not123, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.not133 = icmp eq i32 %i.ah, 0
  br i1 %.not133, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l, %.lr.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph ], [ 0, %bb.l ] ; 2 uses
  %.085125 = phi i32 [ %i.as, %.lr.ph ], [ 0, %bb.l ]
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !19
  %i.as = or i32 %i.ar, %.085125                  ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.ak
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !31

._crit_edge:                                      ; preds = %.lr.ph, %bb.l
  %.085.lcssa = phi i32 [ 0, %bb.l ], [ %i.as, %.lr.ph ]
  %notmask = shl nsw i32 -1, %i.ai
  %i.at = xor i32 %notmask, -1
  %i.au = and i32 %i.am, %i.at
  %i.av = or i32 %i.au, %.085.lcssa
  %i.aw = icmp eq i32 %i.av, 0
  br i1 %i.aw, label %.thread, label %mpb_get_bit.exit106

.thread:                                          ; preds = %bb.k, %._crit_edge
  %i.ax = lshr i32 %1, 5                          ; 2 uses
  %.not.i104 = icmp samesign ult i32 %i.ax, %.pre
  br i1 %.not.i104, label %bb.m, label %mpb_get_bit.exit106

bb.m:                                             ; preds = %.thread
  %i.ay = and i32 %1, 31
  %i.az = zext nneg i32 %i.ax to i64
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.az
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !19
  %i.bc = lshr i32 %i.bb, %i.ay
  %i.bd = and i32 %i.bc, 1
  br label %mpb_get_bit.exit106

mpb_get_bit.exit106:                              ; preds = %bb.j, %bb.i, %bb.m, %.thread, %mpb_get_bit.exit, %._crit_edge, %bb.h
  %.0 = phi i32 [ 1, %._crit_edge ], [ 0, %bb.h ], [ 0, %bb.i ], [ 0, %mpb_get_bit.exit ], [ 0, %.thread ], [ %i.bd, %bb.m ], [ 1, %bb.j ] ; 2 uses
  %i.be = lshr i32 %1, 5                          ; 4 uses
  %i.bf = and i32 %1, 31
  %.not97 = icmp slt i32 %i.be, %.pre
  br i1 %.not97, label %bb.o, label %bb.n

bb.n:                                             ; preds = %mpb_get_bit.exit106
  store i32 1, ptr %0, align 4, !tbaa !19
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.0, ptr %i.bg, align 4, !tbaa !19
  br label %bb.t

bb.o:                                             ; preds = %mpb_get_bit.exit106
  %.not98 = icmp eq i32 %i.be, 0
  br i1 %.not98, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bh = sub nuw nsw i32 %.pre, %i.be            ; 4 uses
  store i32 %i.bh, ptr %0, align 4, !tbaa !19
  %.not163 = icmp eq i32 %i.bh, 0
  br i1 %.not163, label %mpb_renorm.exit110, label %.lr.ph128

.lr.ph128:                                        ; preds = %bb.p
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bj = zext nneg i32 %i.be to i64
  %wide.trip.count139 = zext nneg i32 %i.bh to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %i.bj
  br label %bb.q

bb.q:                                             ; preds = %.lr.ph128, %bb.q
  %indvars.iv136 = phi i64 [ 0, %.lr.ph128 ], [ %indvars.iv.next137, %bb.q ] ; 3 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %indvars.iv136
  %i.bk = load i32, ptr %gep, align 4, !tbaa !19
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.bi, i64 %indvars.iv136
  store i32 %i.bk, ptr %i.bl, align 4, !tbaa !19
  %indvars.iv.next137 = add nuw nsw i64 %indvars.iv136, 1 ; 2 uses
  %exitcond140.not = icmp eq i64 %indvars.iv.next137, %wide.trip.count139
  br i1 %exitcond140.not, label %.loopexit, label %bb.q, !llvm.loop !32

.loopexit:                                        ; preds = %bb.q, %bb.o
  %i.bm = phi i32 [ %.pre, %bb.o ], [ %i.bh, %bb.q ] ; 2 uses
  %.not99 = icmp eq i32 %i.bf, 0
  br i1 %.not99, label %mpb_renorm.exit110, label %.lr.ph.i107.preheader

.lr.ph.i107.preheader:                            ; preds = %.loopexit
  %i.bn = zext nneg i32 %i.bm to i64
  br label %.lr.ph.i107

.lr.ph.i107:                                      ; preds = %.lr.ph.i107.preheader, %.lr.ph.i107
  %.020.i = phi i32 [ %i.bp, %.lr.ph.i107 ], [ 0, %.lr.ph.i107.preheader ]
  %.017.in19.i = phi i64 [ %.017.i, %.lr.ph.i107 ], [ %i.bn, %.lr.ph.i107.preheader ] ; 3 uses
  %.017.i = add nsw i64 %.017.in19.i, -1
  %i.bo = getelementptr [4 x i8], ptr %0, i64 %.017.in19.i ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !19 ; 2 uses
  %i.bq = tail call i32 @llvm.fshr.i32(i32 %.020.i, i32 %i.bp, i32 range(i32 1, 32) %1)
  store i32 %i.bq, ptr %i.bo, align 4, !tbaa !19
  %i.br = icmp samesign ugt i64 %.017.in19.i, 1
  br i1 %i.br, label %.lr.ph.i107, label %mp_shr.exit, !llvm.loop !33

mp_shr.exit:                                      ; preds = %.lr.ph.i107
  %.pr.i108.pr = load i32, ptr %0, align 4, !tbaa !19 ; 3 uses
  %i.bs = icmp sgt i32 %.pr.i108.pr, 1
  br i1 %i.bs, label %.lr.ph.i109, label %mpb_renorm.exit110

.lr.ph.i109:                                      ; preds = %mp_shr.exit, %bb.r
  %6 = phi i32 [ %7, %bb.r ], [ %.pr.i108.pr, %mp_shr.exit ] ; 4 uses
  %i.bt = zext nneg i32 %6 to i64
  %i.bu = getelementptr [4 x i8], ptr %0, i64 %i.bt
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !19
  %i.bw = icmp eq i32 %i.bv, 0
  br i1 %i.bw, label %bb.r, label %mpb_renorm.exit110

bb.r:                                             ; preds = %.lr.ph.i109
  %7 = add nsw i32 %6, -1                         ; 3 uses
  store i32 %7, ptr %0, align 4, !tbaa !19
  %i.bx = icmp sgt i32 %6, 2
  br i1 %i.bx, label %.lr.ph.i109, label %mpb_renorm.exit110, !llvm.loop !3

mpb_renorm.exit110:                               ; preds = %bb.r, %.lr.ph.i109, %bb.p, %mp_shr.exit, %.loopexit
  %8 = phi i32 [ 0, %bb.p ], [ %.pr.i108.pr, %mp_shr.exit ], [ %i.bm, %.loopexit ], [ %7, %bb.r ], [ %6, %.lr.ph.i109 ] ; 3 uses
  %.not100 = icmp eq i32 %.0, 0
  br i1 %.not100, label %bb.t, label %bb.s

bb.s:                                             ; preds = %mpb_renorm.exit110
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.bz = sext i32 %8 to i64                      ; 2 uses
  %i.ca = icmp eq i32 %8, 0
  br i1 %i.ca, label %mp_add_ui.exit.thread, label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %bb.s, %.lr.ph.i111
  %.01415.i = phi i64 [ %i.cf, %.lr.ph.i111 ], [ 0, %bb.s ] ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.by, i64 %.01415.i ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !19
  %i.cd = add i32 %i.cc, 1                        ; 2 uses
  %i.ce = icmp eq i32 %i.cd, 0                    ; 2 uses
  store i32 %i.cd, ptr %i.cb, align 4, !tbaa !19
  %i.cf = add nuw i64 %.01415.i, 1                ; 2 uses
  %i.cg = icmp ult i64 %i.cf, %i.bz
  %or.cond.not.i = select i1 %i.cg, i1 %i.ce, i1 false
  br i1 %or.cond.not.i, label %.lr.ph.i111, label %mp_add_ui.exit, !llvm.loop !34

mp_add_ui.exit:                                   ; preds = %.lr.ph.i111
  br i1 %i.ce, label %mp_add_ui.exit.thread, label %bb.t

mp_add_ui.exit.thread:                            ; preds = %bb.s, %mp_add_ui.exit
  %i.ch = add nsw i32 %8, 1
  store i32 %i.ch, ptr %0, align 4, !tbaa !19
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.by, i64 %i.bz
  store i32 1, ptr %i.ci, align 4, !tbaa !19
  br label %bb.t

bb.t:                                             ; preds = %.preheader, %mpb_renorm.exit, %mp_add_ui.exit, %mp_add_ui.exit.thread, %mpb_renorm.exit110, %bb.n, %bb.a
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local double @js_atod(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #4 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 18 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #11
  %i.c = and i32 %3, 8
  %.not = icmp eq i32 %i.c, 0
  %i.d = select i1 %.not, i32 256, i32 95         ; 10 uses
  store ptr %0, ptr %i.a, align 8, !tbaa !38
  %i.e = load i8, ptr %0, align 1, !tbaa !17      ; 2 uses
  switch i8 %i.e, label %bb.c [
    i8 43, label %thread-pre-split
    i8 45, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.a, %bb.b
  %.0195.ph = phi i64 [ -9223372036854775808, %bb.b ], [ 0, %bb.a ]
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  store ptr %i.f, ptr %i.a, align 8, !tbaa !38
  %.pr = load i8, ptr %i.f, align 1, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %thread-pre-split, %bb.a
  %i.g = phi i8 [ %.pr, %thread-pre-split ], [ %i.e, %bb.a ]
  %i.h = phi ptr [ %i.f, %thread-pre-split ], [ %0, %bb.a ] ; 21 uses
  %.0195 = phi i64 [ %.0195.ph, %thread-pre-split ], [ 0, %bb.a ]
  %i.i = icmp eq i8 %i.g, 48
  br i1 %i.i, label %bb.d, label %bb.t

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 1 ; 2 uses
  %i.k = load i8, ptr %i.j, align 1, !tbaa !17    ; 7 uses
  switch i8 %i.k, label %bb.h [
    i8 120, label %bb.e
    i8 88, label %bb.e
    i8 111, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.l = and i32 %2, -17
  %or.cond = icmp eq i32 %i.l, 0
  br i1 %or.cond, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  br label %.thread322

bb.g:                                             ; preds = %bb.e
  %i.n = icmp eq i8 %i.k, 111
  br i1 %i.n, label %.thread331, label %.thread

bb.h:                                             ; preds = %bb.d
  %i.o = icmp eq i8 %i.k, 79
  %i.p = icmp eq i32 %2, 0                        ; 2 uses
  %or.cond3 = and i1 %i.p, %i.o
  br i1 %or.cond3, label %bb.j, label %.thread

bb.i:                                             ; preds = %bb.d
  %.old2 = icmp eq i32 %2, 0
  br i1 %.old2, label %bb.j, label %.thread331

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.q = and i32 %3, 2
  %.not235 = icmp eq i32 %i.q, 0
  br i1 %.not235, label %.thread331, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  br label %.thread322

.thread:                                          ; preds = %bb.g, %bb.h
  %i.s = phi i1 [ %i.p, %bb.h ], [ false, %bb.g ] ; 3 uses
  %i.t = icmp eq i8 %i.k, 98
  br i1 %i.t, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.thread
  %i.u = icmp eq i8 %i.k, 66
  %or.cond6 = and i1 %i.s, %i.u
  br i1 %or.cond6, label %.thread317, label %bb.o

bb.m:                                             ; preds = %.thread
  br i1 %i.s, label %.thread317, label %.thread331

.thread317:                                       ; preds = %bb.l, %bb.m
  %.old389 = and i32 %3, 2
  %.not236.old = icmp eq i32 %.old389, 0
  br i1 %.not236.old, label %.thread331, label %bb.n

bb.n:                                             ; preds = %.thread317
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 2
  br label %.thread322

bb.o:                                             ; preds = %bb.l
  %i.w = icmp sgt i8 %i.k, 47
  %i.x = icmp samesign ult i8 %i.k, 58
  %or.cond9 = and i1 %i.s, %i.x
  %or.cond461 = select i1 %i.w, i1 %or.cond9, i1 false
  br i1 %or.cond461, label %bb.p, label %.thread320

bb.p:                                             ; preds = %bb.o
  %i.y = and i32 %3, 4
  %.not237 = icmp eq i32 %i.y, 0
  br i1 %.not237, label %.thread331, label %.preheader397

.preheader397:                                    ; preds = %bb.p, %.preheader397
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader397 ], [ 1, %bb.p ] ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !17   ; 2 uses
  %i.ab = and i8 %i.aa, -8
  %or.cond254 = icmp eq i8 %i.ab, 48
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  br i1 %or.cond254, label %.preheader397, label %.critedge, !llvm.loop !35

.critedge:                                        ; preds = %.preheader397
  %i.ac = and i8 %i.aa, -2
  %switch = icmp eq i8 %i.ac, 56
  br i1 %switch, label %.thread331, label %.thread322

.thread322:                                       ; preds = %.critedge, %bb.k, %bb.n, %bb.f
  %.sink = phi ptr [ %i.m, %bb.f ], [ %i.r, %bb.k ], [ %i.v, %bb.n ], [ %i.j, %.critedge ] ; 3 uses
  %.1206 = phi i32 [ 16, %bb.f ], [ 8, %bb.k ], [ 2, %bb.n ], [ 8, %.critedge ] ; 2 uses
  %.0186 = phi i32 [ %i.d, %bb.f ], [ %i.d, %bb.k ], [ %i.d, %bb.n ], [ 256, %.critedge ]
  store ptr %.sink, ptr %i.a, align 8, !tbaa !38
  %i.ad = load i8, ptr %.sink, align 1, !tbaa !17 ; 3 uses
  %i.ae = zext i8 %i.ad to i32                    ; 3 uses
  %i.af = add nsw i32 %i.ae, -48                  ; 2 uses
  %or.cond.i = icmp ult i32 %i.af, 10
  br i1 %or.cond.i, label %to_digit.exit, label %bb.q

bb.q:                                             ; preds = %.thread322
  %i.ag = add i8 %i.ad, -65
  %or.cond3.i = icmp ult i8 %i.ag, 26
  br i1 %or.cond3.i, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ah = add nsw i32 %i.ae, -55
  br label %to_digit.exit

bb.s:                                             ; preds = %bb.q
  %i.ai = add i8 %i.ad, -97
  %or.cond5.i = icmp ult i8 %i.ai, 26
  %i.aj = add nsw i32 %i.ae, -87
  %spec.select.i = select i1 %or.cond5.i, i32 %i.aj, i32 36
  br label %to_digit.exit

to_digit.exit:                                    ; preds = %.thread322, %bb.r, %bb.s
  %.0.i = phi i32 [ %spec.select.i, %bb.s ], [ %i.ah, %bb.r ], [ %i.af, %.thread322 ]
  %.not238 = icmp slt i32 %.0.i, %.1206
  br i1 %.not238, label %.thread331, label %.thread349

bb.t:                                             ; preds = %bb.c
  %i.ak = and i32 %3, 1
  %.not233 = icmp eq i32 %i.ak, 0
  br i1 %.not233, label %bb.u, label %.thread320

bb.u:                                             ; preds = %bb.t
  %i.al = call i32 @strstart(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a) #14
  %.not234 = icmp eq i32 %i.al, 0
  br i1 %.not234, label %..thread320_crit_edge, label %bb.cr

..thread320_crit_edge:                            ; preds = %bb.u
  %.promoted.pre.pre = load ptr, ptr %i.a, align 8, !tbaa !38
  br label %.thread320

.thread320:                                       ; preds = %..thread320_crit_edge, %bb.t, %bb.o
  %.promoted.pre = phi ptr [ %.promoted.pre.pre, %..thread320_crit_edge ], [ %i.h, %bb.t ], [ %i.h, %bb.o ]
  %i.am = icmp eq i32 %2, 0
  %spec.select391 = select i1 %i.am, i32 10, i32 %2
  br label %.thread331

.thread331:                                       ; preds = %bb.g, %bb.j, %.thread320, %bb.m, %bb.i, %.thread317, %.critedge, %bb.p, %to_digit.exit
  %.promoted = phi ptr [ %i.h, %bb.i ], [ %.promoted.pre, %.thread320 ], [ %.sink, %to_digit.exit ], [ %i.h, %.critedge ], [ %i.h, %bb.p ], [ %i.h, %bb.m ], [ %i.h, %.thread317 ], [ %i.h, %bb.j ], [ %i.h, %bb.g ]
  %.1187329 = phi i32 [ %i.d, %bb.i ], [ %i.d, %.thread320 ], [ %.0186, %to_digit.exit ], [ 256, %.critedge ], [ %i.d, %bb.p ], [ %i.d, %bb.m ], [ %i.d, %.thread317 ], [ %i.d, %bb.j ], [ %i.d, %bb.g ] ; 3 uses
  %i.an = phi i32 [ %2, %bb.i ], [ %spec.select391, %.thread320 ], [ %.1206, %to_digit.exit ], [ 10, %.critedge ], [ 10, %bb.p ], [ %2, %bb.m ], [ 10, %.thread317 ], [ 10, %bb.j ], [ %2, %bb.g ] ; 10 uses
  %i.ao = add nsw i32 %i.an, -2
  %i.ap = sext i32 %i.ao to i64                   ; 5 uses
  %i.aq = getelementptr inbounds i8, ptr @atod_max_digits_table, i64 %i.ap
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !17
  %i.as = zext i8 %i.ar to i32
  %i.at = getelementptr inbounds i8, ptr @digits_per_limb_table, i64 %i.ap
  %i.au = load i8, ptr %i.at, align 1, !tbaa !17
  %i.av = zext i8 %i.au to i32
  %i.aw = getelementptr inbounds [4 x i8], ptr @radix_base_table, i64 %i.ap
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !19
  %i.ay = call range(i32 0, 32) i32 @llvm.cttz.i32(i32 %i.an, i1 true) ; 3 uses
  %i.az = ashr exact i32 %i.an, %i.ay             ; 2 uses
end_hunk_0
begin_hunk_1_@js_atod:bb.a
  %.1180 = select i1 %or.cond268, i32 %.0179, i32 %i.fp, !prof !39
  br label %.preheader

to_digit.exit312.thread:                          ; preds = %bb.cb, %bb.cc
  %i.fq = sub nsw i32 0, %.0179
  %spec.select263 = select i1 %.not247, i32 %.0179, i32 %i.fq
  %or.cond18 = and i1 %i.dz, %.0167
  %.264 = select i1 %.not247, i64 9218868437227405312, i64 0
  br i1 %or.cond18, label %bb.cr, label %.thread373

.thread373:                                       ; preds = %to_digit.exit312.thread, %bb.bo, %bb.br, %bb.bs, %bb.bq, %bb.bm
  %i.fr = phi ptr [ %i.dw, %bb.bm ], [ %i.dw, %bb.bo ], [ %i.dw, %bb.bs ], [ %i.dw, %bb.br ], [ %i.dw, %bb.bq ], [ %.pn406, %to_digit.exit312.thread ]
  %.4183 = phi i32 [ 0, %bb.bm ], [ 0, %bb.bo ], [ 0, %bb.bs ], [ 0, %bb.br ], [ 0, %bb.bq ], [ %spec.select263, %to_digit.exit312.thread ] ; 2 uses
  %.0170 = phi i1 [ true, %bb.bm ], [ true, %bb.bo ], [ true, %bb.bs ], [ true, %bb.br ], [ true, %bb.bq ], [ %narrow, %to_digit.exit312.thread ]
  %i.fs = icmp eq ptr %i.fr, %i.h
  br i1 %i.fs, label %.thread349, label %bb.cd

bb.cd:                                            ; preds = %.thread373
  br i1 %i.dz, label %bb.ce, label %bb.cr

bb.ce:                                            ; preds = %bb.cd
  br i1 %i.ed, label %bb.cf, label %bb.ci

bb.cf:                                            ; preds = %bb.ce
  %i.ft = select i1 %.0170, i32 %., i32 1
  %spec.select266 = mul nsw i32 %i.ft, %.4183
  %i.fu = mul nsw i32 %i.ec, %.
  %i.fv = sub nsw i32 %spec.select266, %i.fu      ; 2 uses
  %i.fw = mul nsw i32 %.0192, %.
  %i.fx = add nsw i32 %i.fv, %i.fw                ; 2 uses
  %i.fy = or disjoint i32 %., 1024
  %.not252 = icmp slt i32 %i.fx, %i.fy
  br i1 %.not252, label %bb.cg, label %bb.cr

bb.cg:                                            ; preds = %bb.cf
  %i.fz = icmp slt i32 %i.fx, -1074
  br i1 %i.fz, label %bb.cr, label %bb.ch

bb.ch:                                            ; preds = %bb.cg
  %i.ga = sub nsw i32 0, %i.fv
  %i.gb = call fastcc i64 @round_to_d(ptr noundef %i.b, ptr noundef nonnull %4, i32 noundef %i.ga) #12
  br label %bb.cl

bb.ci:                                            ; preds = %bb.ce
  %i.gc = sub nsw i32 %.4183, %i.ec               ; 2 uses
  %i.gd = add nsw i32 %i.gc, %.0192               ; 2 uses
  %i.ge = getelementptr inbounds [2 x i8], ptr @max_exponent, i64 %i.ap
  %i.gf = load i16, ptr %i.ge, align 2, !tbaa !41
  %i.gg = sext i16 %i.gf to i32
  %.not249.not = icmp sgt i32 %i.gd, %i.gg
  br i1 %.not249.not, label %bb.cr, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.gh = getelementptr inbounds [2 x i8], ptr @min_exponent, i64 %i.ap
  %i.gi = load i16, ptr %i.gh, align 2, !tbaa !41
  %i.gj = sext i16 %i.gi to i32
  %.not250 = icmp sgt i32 %i.gd, %i.gj
  br i1 %.not250, label %bb.ck, label %bb.cr

bb.ck:                                            ; preds = %bb.cj
  %i.gk = call fastcc i64 @mul_pow_round_to_d(ptr noundef %i.b, ptr noundef nonnull %4, i32 noundef %i.az, i32 noundef %i.ay, i32 noundef %i.gc) #12
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.ch
  %.0166 = phi i64 [ %i.gb, %bb.ch ], [ %i.gk, %bb.ck ] ; 3 uses
  %i.gl = icmp eq i64 %.0166, 0
  br i1 %i.gl, label %bb.cr, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.gm = load i32, ptr %i.b, align 4, !tbaa !19  ; 5 uses
  %i.gn = icmp sgt i32 %i.gm, 1024
  br i1 %i.gn, label %bb.cr, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.go = icmp slt i32 %i.gm, -1073
  br i1 %i.go, label %bb.cr, label %bb.co

bb.co:                                            ; preds = %bb.cn
  %i.gp = icmp slt i32 %i.gm, -1021
  br i1 %i.gp, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  %i.gq = sub nuw nsw i32 -1021, %i.gm
  %i.gr = zext nneg i32 %i.gq to i64
  %i.gs = lshr i64 %.0166, %i.gr
  br label %bb.cr

bb.cq:                                            ; preds = %bb.co
  %i.gt = add nsw i32 %i.gm, 1022
  %i.gu = zext nneg i32 %i.gt to i64
  %i.gv = shl nuw nsw i64 %i.gu, 52
  %i.gw = and i64 %.0166, 4503599627370495
  %i.gx = or disjoint i64 %i.gv, %i.gw
  br label %bb.cr

bb.cr:                                            ; preds = %to_digit.exit312.thread, %bb.cn, %bb.u, %bb.cf, %bb.ci, %bb.cm, %bb.cg, %bb.cj, %bb.cl, %bb.cd, %bb.cp, %bb.cq
  %.2165 = phi i64 [ 0, %bb.cn ], [ 0, %bb.cg ], [ 0, %bb.cd ], [ 9218868437227405312, %bb.u ], [ %i.gs, %bb.cp ], [ %i.gx, %bb.cq ], [ 0, %bb.cl ], [ 0, %bb.cj ], [ 9218868437227405312, %bb.cm ], [ 9218868437227405312, %bb.ci ], [ 9218868437227405312, %bb.cf ], [ %.264, %to_digit.exit312.thread ]
  %i.gy = or i64 %.2165, %.0195
  %i.gz = bitcast i64 %i.gy to double
  br label %.thread349

.thread349:                                       ; preds = %bb.bw, %bb.bx, %to_digit.exit, %.thread373, %bb.cr
  %.0171 = phi double [ %i.gz, %bb.cr ], [ +qnan, %.thread373 ], [ +qnan, %bb.bx ], [ +qnan, %to_digit.exit ], [ +qnan, %bb.bw ]
  %.not253 = icmp eq ptr %1, null
  br i1 %.not253, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %.thread349
  %i.ha = load ptr, ptr %i.a, align 8, !tbaa !38
  store ptr %i.ha, ptr %1, align 8, !tbaa !38
  br label %bb.ct

bb.ct:                                            ; preds = %bb.cs, %.thread349
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  ret double %.0171
}

; Function Attrs: optsize
declare i32 @strstart(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal fastcc void @mpb_mul1_base(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 4, !tbaa !19
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %2, ptr %i.a, align 4, !tbaa !19
  br label %mpb_renorm.exit

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.f = icmp eq i32 %1, 0
  %i.g = load i32, ptr %0, align 4, !tbaa !19     ; 6 uses
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = icmp sgt i32 %i.g, -1
  br i1 %i.h, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.e
  %scevgep = getelementptr i8, ptr %0, i64 8
  %i.i = add nuw i32 %i.g, 1
  %i.j = zext i32 %i.i to i64
  %i.k = shl nuw nsw i64 %i.j, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %i.a, i64 %i.k, i1 false), !tbaa !19
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.preheader, %bb.e
  store i32 %2, ptr %i.a, align 4, !tbaa !19
  br label %bb.h

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp eq i32 %i.g, 0
  br i1 %.not.i, label %mp_mul1.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.f
  %i.l = zext i32 %1 to i64
  %i.m = zext i32 %2 to i64
  %wide.trip.count.i = zext i32 %i.g to i64
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.g ] ; 2 uses
  %.01112.i = phi i64 [ %i.m, %.lr.ph.i ], [ %i.t, %bb.g ]
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.i ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !19
  %i.p = zext i32 %i.o to i64
  %i.q = mul nuw i64 %i.p, %i.l
  %i.r = add nuw i64 %i.q, %.01112.i              ; 2 uses
  %i.s = trunc i64 %i.r to i32
  store i32 %i.s, ptr %i.n, align 4, !tbaa !19
  %i.t = lshr i64 %i.r, 32                        ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %bb.g, !llvm.loop !4

._crit_edge.loopexit.i:                           ; preds = %bb.g
  %i.u = trunc nuw i64 %i.t to i32
  br label %mp_mul1.exit

mp_mul1.exit:                                     ; preds = %bb.f, %._crit_edge.loopexit.i
  %.011.lcssa.i = phi i32 [ %2, %bb.f ], [ %i.u, %._crit_edge.loopexit.i ]
  %i.v = sext i32 %i.g to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %i.a, i64 %i.v
  store i32 %.011.lcssa.i, ptr %i.w, align 4, !tbaa !19
  %.pre = load i32, ptr %0, align 4, !tbaa !19
  br label %bb.h

bb.h:                                             ; preds = %mp_mul1.exit, %._crit_edge
  %i.x = phi i32 [ %.pre, %mp_mul1.exit ], [ %i.g, %._crit_edge ] ; 2 uses
  %i.y = add nsw i32 %i.x, 1                      ; 2 uses
  store i32 %i.y, ptr %0, align 4, !tbaa !19
  %i.z = icmp sgt i32 %i.x, 0
  br i1 %i.z, label %.lr.ph.i23, label %mpb_renorm.exit

.lr.ph.i23:                                       ; preds = %bb.h, %bb.i
  %3 = phi i32 [ %5, %bb.i ], [ %i.y, %bb.h ]     ; 3 uses
  %4 = zext nneg i32 %3 to i64
  %i.aa = getelementptr [4 x i8], ptr %0, i64 %4
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !19
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.i, label %mpb_renorm.exit

bb.i:                                             ; preds = %.lr.ph.i23
  %5 = add nsw i32 %3, -1                         ; 2 uses
  store i32 %5, ptr %0, align 4, !tbaa !19
  %i.ad = icmp sgt i32 %3, 2
  br i1 %i.ad, label %.lr.ph.i23, label %mpb_renorm.exit, !llvm.loop !3

mpb_renorm.exit:                                  ; preds = %bb.i, %.lr.ph.i23, %bb.h, %bb.c
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc range(i64 0, -9223372036854775808) i64 @round_to_d(ptr nofree noundef nonnull writeonly captures(none) initializes((0, 4)) %0, ptr nofree noundef captures(none) %1, i32 noundef %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19
  %i.c = icmp eq i32 %i.b, 0
  %.pre = load i32, ptr %1, align 4, !tbaa !19    ; 3 uses
  %i.d = icmp eq i32 %.pre, 1
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond, label %bb.d, label %mpb_floor_log2.exit

mpb_floor_log2.exit:                              ; preds = %bb.a
  %i.e = sext i32 %.pre to i64
  %i.f = getelementptr [4 x i8], ptr %1, i64 %i.e
  %i.g = load i32, ptr %i.f, align 4, !tbaa !19   ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = shl nsw i32 %.pre, 5
  %i.j = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.g, i1 true)
  %i.k = sub i32 %i.i, %i.j
  %.0.i = select i1 %i.h, i32 0, i32 %i.k         ; 2 uses
  %i.l = sub nsw i32 %.0.i, %2                    ; 2 uses
  %i.m = tail call i32 @llvm.smin.i32(i32 %i.l, i32 -1021) ; 2 uses
  %.0.neg = add i32 %.0.i, -1074
  %i.n = sub i32 %.0.neg, %i.m
  tail call fastcc void @mpb_shr_round(ptr noundef nonnull %1, i32 noundef %i.n, i32 noundef 0) #12
  %i.o = load i32, ptr %1, align 4, !tbaa !19
  %i.p = icmp eq i32 %i.o, 1
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %mpb_floor_log2.exit
  %i.q = load i32, ptr %i.a, align 4, !tbaa !19
  %i.r = zext i32 %i.q to i64
  br label %mpb_get_u64.exit

bb.c:                                             ; preds = %mpb_floor_log2.exit
  %i.s = load i64, ptr %i.a, align 4
  br label %mpb_get_u64.exit

mpb_get_u64.exit:                                 ; preds = %bb.b, %bb.c
  %.0.i29 = phi i64 [ %i.r, %bb.b ], [ %i.s, %bb.c ]
  %i.t = sub nuw nsw i32 -1021, %i.m
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl i64 %.0.i29, %i.u                    ; 2 uses
  %i.w = icmp ugt i64 %i.v, 9007199254740991      ; 2 uses
  %i.x = zext i1 %i.w to i32
  %.024 = add nsw i32 %i.l, %i.x
  %i.y = zext i1 %i.w to i64
  %.023 = lshr i64 %i.v, %i.y
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %mpb_get_u64.exit
  %.125 = phi i32 [ %.024, %mpb_get_u64.exit ], [ 0, %bb.a ]
  %.1 = phi i64 [ %.023, %mpb_get_u64.exit ], [ 0, %bb.a ]
  store i32 %.125, ptr %0, align 4, !tbaa !19
  ret i64 %.1
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #3

; Function Attrs: noinline nounwind optsize uwtable
define internal fastcc i32 @mp_div1norm(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #8 {
bb.a:
  %.not = icmp eq i32 %5, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = zext i32 %2 to i64
  %i.b = tail call fastcc i32 @mp_shl(ptr noundef %0, ptr noundef %1, i64 noundef %i.a, i32 noundef %5) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.017 = phi i32 [ 0, %bb.a ], [ %i.b, %bb.b ]   ; 2 uses
  %.018 = add i32 %2, -1                          ; 2 uses
  %i.c = icmp sgt i32 %.018, -1
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.d = zext i32 %4 to i64
  %i.e = zext i32 %3 to i64
  %i.f = zext nneg i32 %.018 to i64
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ %i.f, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.119 = phi i32 [ %.017, %.lr.ph ], [ %i.af, %bb.d ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.h = load i32, ptr %i.g, align 4, !tbaa !19   ; 3 uses
  %i.i = ashr i32 %i.h, 31                        ; 2 uses
  %i.j = and i32 %i.i, %3
  %i.k = add i32 %i.j, %i.h
  %i.l = sub i32 %.119, %i.i
  %i.m = zext i32 %i.l to i64
  %i.n = mul nuw i64 %i.m, %i.d
  %i.o = zext i32 %i.k to i64
  %i.p = add nuw i64 %i.n, %i.o
  %i.q = lshr i64 %i.p, 32
  %i.r = zext i32 %.119 to i64
  %i.s = trunc nuw i64 %i.q to i32
  %i.t = add i32 %.119, %i.s                      ; 2 uses
  %i.u = shl nuw i64 %i.r, 32
  %i.v = zext i32 %i.h to i64
  %i.w = or disjoint i64 %i.u, %i.v
  %i.x = zext i32 %i.t to i64
  %.neg.i = xor i64 %i.x, -1
  %.neg24.i = mul i64 %.neg.i, %i.e
  %i.y = add i64 %i.w, %.neg24.i                  ; 2 uses
  %i.z = lshr i64 %i.y, 32
  %i.aa = trunc nuw i64 %i.z to i32               ; 2 uses
  %i.ab = add i32 %i.t, 1
  %i.ac = add i32 %i.ab, %i.aa
  %i.ad = trunc i64 %i.y to i32
  %i.ae = and i32 %3, %i.aa
  %i.af = add i32 %i.ae, %i.ad                    ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.ac, ptr %i.ag, align 4, !tbaa !19
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %.not22 = icmp eq i64 %indvars.iv, 0
  br i1 %.not22, label %._crit_edge, label %bb.d, !llvm.loop !42

._crit_edge:                                      ; preds = %bb.d, %bb.c
  %.1.lcssa = phi i32 [ %.017, %bb.c ], [ %i.af, %bb.d ]
  %i.ah = lshr i32 %.1.lcssa, %5
  ret i32 %i.ah
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc range(i32 0, -2147483648) i32 @mp_shl(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef range(i64 -2147483648, 4294967296) %2, i32 noundef range(i32 1, 0) %3) unnamed_addr #4 {
bb.a:
  %or.cond = icmp ult i32 %3, 32
  br i1 %or.cond, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.a = icmp sgt i64 %2, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.b = sub nuw nsw i32 32, %3
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.1, i32 noundef 174, ptr noundef nonnull @__PRETTY_FUNCTION__.mp_shl) #13
  unreachable

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.019 = phi i32 [ 0, %.lr.ph ], [ %i.h, %bb.c ]
  %.01618 = phi i64 [ 0, %.lr.ph ], [ %i.i, %bb.c ] ; 3 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.01618
  %i.d = load i32, ptr %i.c, align 4, !tbaa !19   ; 2 uses
  %i.e = shl i32 %i.d, %3
  %i.f = or i32 %i.e, %.019
  %i.g = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.01618
  store i32 %i.f, ptr %i.g, align 4, !tbaa !19
  %i.h = lshr i32 %i.d, %i.b                      ; 2 uses
  %i.i = add nuw nsw i64 %.01618, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.i, %2
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !43

._crit_edge:                                      ; preds = %bb.c, %.preheader
  %.0.lcssa = phi i32 [ 0, %.preheader ], [ %i.h, %bb.c ]
  ret i32 %.0.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshr.i32(i32, i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #9

attributes #0 = { nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_1
