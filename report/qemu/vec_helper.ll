Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vec_helper?download=true
inline.NumInlined: 1641
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 113
loop-unroll.NumUnrolled: 184
begin_hunk_0_@helper_gvec_fcaddd:bb.a
  store i64 %i.u, ptr %i.v, align 8
  %i.w = tail call i64 @float64_add(i64 noundef %i.q, i64 noundef %i.s, ptr noundef %3) #18
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  store i64 %i.w, ptr %i.x, align 8
  %i.y = add nuw nsw i64 %.03537.us.us, 2         ; 2 uses
  %i.z = icmp samesign ult i64 %i.y, %i.j
  br i1 %i.z, label %.split.us.split.us, label %.split39.us, !llvm.loop !193

.split.us.split:                                  ; preds = %.split.us, %.split.us.split
  %.03537.us = phi i64 [ %i.aq, %.split.us.split ], [ 0, %.split.us ] ; 5 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03537.us
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = or disjoint i64 %.03537.us, 1           ; 3 uses
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8            ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.ac
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.03537.us
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = and i64 %i.ae, 9223372036854775807
  %i.ak = icmp samesign ugt i64 %i.aj, 9218868437227405312
  %i.al = xor i64 %i.ae, -9223372036854775808
  %spec.select = select i1 %i.ak, i64 %i.ae, i64 %i.al
  %i.am = tail call i64 @float64_add(i64 noundef %i.ab, i64 noundef %spec.select, ptr noundef %3) #18
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03537.us
  store i64 %i.am, ptr %i.an, align 8
  %i.ao = tail call i64 @float64_add(i64 noundef %i.ag, i64 noundef %i.ai, ptr noundef %3) #18
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.ac
  store i64 %i.ao, ptr %i.ap, align 8
  %i.aq = add nuw nsw i64 %.03537.us, 2           ; 2 uses
  %i.ar = icmp samesign ult i64 %i.aq, %i.j
  br i1 %i.ar, label %.split.us.split, label %.split39.us, !llvm.loop !193

.split:                                           ; preds = %bb.a
  br i1 %.not43, label %.split.split.us, label %.split.split

.split.split.us:                                  ; preds = %.split, %.split.split.us
  %.03537.us40 = phi i64 [ %i.bg, %.split.split.us ], [ 0, %.split ] ; 5 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03537.us40
  %i.at = load i64, ptr %i.as, align 8
  %i.au = or disjoint i64 %.03537.us40, 1         ; 3 uses
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.au
  %i.aw = load i64, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.au
  %i.ay = load i64, ptr %i.ax, align 8
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.03537.us40
  %i.ba = load i64, ptr %i.az, align 8
  %i.bb = xor i64 %i.ba, -9223372036854775808
  %i.bc = tail call i64 @float64_add(i64 noundef %i.at, i64 noundef %i.aw, ptr noundef %3) #18
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03537.us40
  store i64 %i.bc, ptr %i.bd, align 8
  %i.be = tail call i64 @float64_add(i64 noundef %i.ay, i64 noundef %i.bb, ptr noundef %3) #18
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.au
  store i64 %i.be, ptr %i.bf, align 8
  %i.bg = add nuw nsw i64 %.03537.us40, 2         ; 2 uses
  %i.bh = icmp samesign ult i64 %i.bg, %i.j
  br i1 %i.bh, label %.split.split.us, label %.split39.us, !llvm.loop !193

.split.split:                                     ; preds = %.split, %.split.split
  %.03537 = phi i64 [ %i.by, %.split.split ], [ 0, %.split ] ; 5 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03537
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = or disjoint i64 %.03537, 1              ; 3 uses
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.bk
  %i.bm = load i64, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.bk
  %i.bo = load i64, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.03537
  %i.bq = load i64, ptr %i.bp, align 8            ; 3 uses
  %i.br = and i64 %i.bq, 9223372036854775807
  %i.bs = icmp samesign ugt i64 %i.br, 9218868437227405312
  %i.bt = xor i64 %i.bq, -9223372036854775808
  %spec.select42 = select i1 %i.bs, i64 %i.bq, i64 %i.bt
  %i.bu = tail call i64 @float64_add(i64 noundef %i.bj, i64 noundef %i.bm, ptr noundef %3) #18
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03537
  store i64 %i.bu, ptr %i.bv, align 8
  %i.bw = tail call i64 @float64_add(i64 noundef %i.bo, i64 noundef %spec.select42, ptr noundef %3) #18
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.bk
  store i64 %i.bw, ptr %i.bx, align 8
  %i.by = add nuw nsw i64 %.03537, 2              ; 2 uses
  %i.bz = icmp samesign ult i64 %i.by, %i.j
  br i1 %i.bz, label %.split.split, label %.split39.us, !llvm.loop !193

.split39.us:                                      ; preds = %.split.split, %.split.split.us, %.split.us.split, %.split.us.split.us
  %i.ca = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.ca, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split39.us
  %i.cb = add nuw nsw i32 %i.e, 8
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr i8, ptr %0, i64 %i.g
  %i.ce = xor i64 %i.g, -1
  %i.cf = add nsw i64 %i.ce, %i.cc
  %i.cg = and i64 %i.cf, -8
  %i.ch = add nsw i64 %i.cg, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.cd, i8 0, i64 %i.ch, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split39.us, %.lr.ph.preheader.i
  ret void
}

declare i64 @float64_add(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fcmlah(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %5, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %5, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr i32 %5, 10                          ; 2 uses
  %i.i = and i32 %i.h, 1
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = lshr i32 %5, 12                          ; 2 uses
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %i.m = lshr i32 %5, 11                          ; 3 uses
  %i.n = xor i32 %i.h, %i.m
  %i.o = and i32 %i.n, 1                          ; 2 uses
  %i.p = xor i32 %i.l, -1                         ; 2 uses
  %i.q = and i32 %i.o, %i.p
  %i.r = and i32 %i.m, %i.p
  %i.s = and i32 %i.o, %i.k
  %.not = icmp eq i32 %i.s, 0
  %i.t = select i1 %.not, i32 0, i32 2
  %i.u = and i32 %i.l, %i.m
  %.not52 = icmp eq i32 %i.u, 0
  %i.v = select i1 %.not52, i32 0, i32 2
  %i.w = lshr exact i64 %i.g, 1
  %.tr = trunc nuw nsw i32 %i.q to i16
  %i.x = shl nuw i16 %.tr, 15
  %.tr53 = trunc i32 %i.r to i16
  %i.y = shl i16 %.tr53, 15
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.054 = phi i64 [ 0, %bb.a ], [ %i.as, %bb.b ]  ; 5 uses
  %i.z = or disjoint i64 %.054, %i.j              ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.z
  %i.ab = load i16, ptr %i.aa, align 2            ; 2 uses
  %i.ac = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.z
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = xor i16 %i.ad, %i.x
  %i.af = or disjoint i64 %.054, 1                ; 3 uses
  %i.ag = sub nuw nsw i64 %i.af, %i.j
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ag
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = xor i16 %i.ai, %i.y
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.054
  %i.al = load i16, ptr %i.ak, align 2
  %i.am = tail call zeroext i16 @float16_muladd(i16 noundef zeroext %i.ab, i16 noundef zeroext %i.ae, i16 noundef zeroext %i.al, i32 noundef %i.t, ptr noundef %4) #18
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.054
  store i16 %i.am, ptr %i.an, align 2
  %i.ao = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.af
  %i.ap = load i16, ptr %i.ao, align 2
  %i.aq = tail call zeroext i16 @float16_muladd(i16 noundef zeroext %i.ab, i16 noundef zeroext %i.aj, i16 noundef zeroext %i.ap, i32 noundef %i.v, ptr noundef %4) #18
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.af
  store i16 %i.aq, ptr %i.ar, align 2
  %i.as = add nuw nsw i64 %.054, 2                ; 2 uses
  %i.at = icmp samesign ult i64 %i.as, %i.w
  br i1 %i.at, label %bb.b, label %bb.c, !llvm.loop !194

bb.c:                                             ; preds = %bb.b
  %i.au = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.au, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.av = add nuw nsw i32 %i.e, 8
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr i8, ptr %0, i64 %i.g
  %i.ay = xor i64 %i.g, -1
  %i.az = add nsw i64 %i.ay, %i.aw
  %i.ba = and i64 %i.az, -8
  %i.bb = add nsw i64 %i.ba, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ax, i8 0, i64 %i.bb, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare zeroext i16 @float16_muladd(i16 noundef zeroext, i16 noundef zeroext, i16 noundef zeroext, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fcmlah_idx(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %5, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %5, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr i32 %5, 10
  %i.i = and i32 %i.h, 1                          ; 3 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = lshr i32 %5, 11                          ; 3 uses
  %6 = and i32 %i.k, 1                            ; 2 uses
  %i.l = lshr i32 %5, 14                          ; 2 uses
  %i.m = and i32 %i.l, 1                          ; 2 uses
  %i.n = xor i32 %i.i, %6                         ; 2 uses
  %i.o = lshr exact i64 %i.g, 1                   ; 3 uses
  %i.p = tail call i64 @llvm.umin.i64(i64 %i.o, i64 8) ; 2 uses
  %i.q = xor i32 %i.m, -1                         ; 2 uses
  %i.r = and i32 %i.n, %i.q
  %i.s = and i32 %6, %i.q
  %i.t = and i32 %i.n, %i.l
  %.not = icmp eq i32 %i.t, 0
  %i.u = select i1 %.not, i32 0, i32 2            ; 2 uses
  %i.v = and i32 %i.m, %i.k
  %.not74 = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not74, i32 0, i32 2          ; 2 uses
  %i.x = and i32 %i.k, 6
  %i.y = zext nneg i32 %i.x to i64
  %invariant.gep77 = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.y ; 2 uses
  %.not75 = icmp eq i32 %i.i, 0
  %invariant.gep = getelementptr [2 x i8], ptr %1, i64 %i.j ; 2 uses
  %.tr = trunc nuw nsw i32 %i.r to i16
  %i.z = shl nuw i16 %.tr, 15                     ; 2 uses
  %.tr86 = trunc nuw nsw i32 %i.s to i16
  %i.aa = shl nuw i16 %.tr86, 15                  ; 2 uses
  br i1 %.not75, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %.loopexit.us
  %.07179.us = phi i64 [ %i.ag, %.loopexit.us ], [ 0, %bb.a ] ; 3 uses
  %gep78.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep77, i64 %.07179.us ; 2 uses
  %i.ab = load i16, ptr %gep78.us, align 2
  %i.ac = getelementptr inbounds nuw i8, ptr %gep78.us, i64 2
  %i.ad = load i16, ptr %i.ac, align 2
  %i.ae = xor i16 %i.ab, %i.z
  %i.af = xor i16 %i.ad, %i.aa
  %i.ag = add nuw nsw i64 %.07179.us, %i.p        ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.split.us, %bb.b
  %.076.us = phi i64 [ %.07179.us, %.split.us ], [ %i.ar, %bb.b ] ; 5 uses
  %gep.us = getelementptr [2 x i8], ptr %invariant.gep, i64 %.076.us
  %i.ah = load i16, ptr %gep.us, align 2          ; 2 uses
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.076.us
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = tail call zeroext i16 @float16_muladd(i16 noundef zeroext %i.ah, i16 noundef zeroext %i.ae, i16 noundef zeroext %i.aj, i32 noundef %i.u, ptr noundef %4) #18
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.076.us
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = add nuw nsw i64 %.076.us, 1             ; 2 uses
  %i.an = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.am
  %i.ao = load i16, ptr %i.an, align 2
  %i.ap = tail call zeroext i16 @float16_muladd(i16 noundef zeroext %i.ah, i16 noundef zeroext %i.af, i16 noundef zeroext %i.ao, i32 noundef %i.w, ptr noundef %4) #18
  %i.aq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.am
  store i16 %i.ap, ptr %i.aq, align 2
  %i.ar = add nuw nsw i64 %.076.us, 2             ; 2 uses
  %i.as = icmp samesign ult i64 %i.ar, %i.ag
  br i1 %i.as, label %bb.b, label %.loopexit.us, !llvm.loop !195

.loopexit.us:                                     ; preds = %bb.b
  %i.at = icmp samesign ult i64 %i.ag, %i.o
  br i1 %i.at, label %.split.us, label %.split81.us, !llvm.loop !196

.loopexit:                                        ; preds = %bb.c
  %i.au = icmp samesign ult i64 %i.ba, %i.o
  br i1 %i.au, label %.split, label %.split81.us, !llvm.loop !196

.split:                                           ; preds = %bb.a, %.loopexit
  %.07179 = phi i64 [ %i.ba, %.loopexit ], [ 0, %bb.a ] ; 3 uses
  %gep78 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep77, i64 %.07179 ; 2 uses
  %i.av = load i16, ptr %gep78, align 2
  %i.aw = getelementptr inbounds nuw i8, ptr %gep78, i64 2
  %i.ax = load i16, ptr %i.aw, align 2
  %i.ay = xor i16 %i.ax, %i.z
  %i.az = xor i16 %i.av, %i.aa
  %i.ba = add nuw nsw i64 %.07179, %i.p           ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.split, %bb.c
  %.076 = phi i64 [ %.07179, %.split ], [ %i.bl, %bb.c ] ; 5 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %.076
  %i.bb = load i16, ptr %gep, align 2             ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.076
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = tail call zeroext i16 @float16_muladd(i16 noundef zeroext %i.bb, i16 noundef zeroext %i.ay, i16 noundef zeroext %i.bd, i32 noundef %i.u, ptr noundef %4) #18
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.076
  store i16 %i.be, ptr %i.bf, align 2
  %i.bg = add nuw nsw i64 %.076, 1                ; 2 uses
  %i.bh = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bg
  %i.bi = load i16, ptr %i.bh, align 2
  %i.bj = tail call zeroext i16 @float16_muladd(i16 noundef zeroext %i.bb, i16 noundef zeroext %i.az, i16 noundef zeroext %i.bi, i32 noundef %i.w, ptr noundef %4) #18
  %i.bk = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bg
  store i16 %i.bj, ptr %i.bk, align 2
  %i.bl = add nuw nsw i64 %.076, 2                ; 2 uses
  %i.bm = icmp samesign ult i64 %i.bl, %i.ba
  br i1 %i.bm, label %bb.c, label %.loopexit, !llvm.loop !195

.split81.us:                                      ; preds = %.loopexit, %.loopexit.us
  %i.bn = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bn, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split81.us
  %i.bo = add nuw nsw i32 %i.e, 8
  %i.bp = zext nneg i32 %i.bo to i64
  %i.bq = getelementptr i8, ptr %0, i64 %i.g
  %i.br = xor i64 %i.g, -1
  %i.bs = add nsw i64 %i.br, %i.bp
  %i.bt = and i64 %i.bs, -8
  %i.bu = add nsw i64 %i.bt, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bq, i8 0, i64 %i.bu, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split81.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fcmlas(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %5, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %5, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr i32 %5, 10
  %i.i = and i32 %i.h, 1                          ; 2 uses
  %i.j = zext nneg i32 %i.i to i64                ; 2 uses
  %i.k = lshr i32 %5, 12                          ; 2 uses
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %i.m = lshr i32 %5, 11                          ; 2 uses
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %i.o = xor i32 %i.i, %i.n                       ; 2 uses
  %i.p = xor i32 %i.l, -1                         ; 2 uses
  %i.q = and i32 %i.o, %i.p
  %i.r = shl nuw i32 %i.q, 31
  %i.s = and i32 %i.n, %i.p
  %i.t = shl nuw i32 %i.s, 31
  %i.u = and i32 %i.o, %i.k
  %.not = icmp eq i32 %i.u, 0
  %i.v = select i1 %.not, i32 0, i32 2
  %i.w = and i32 %i.l, %i.m
  %.not51 = icmp eq i32 %i.w, 0
  %i.x = select i1 %.not51, i32 0, i32 2
  %i.y = lshr exact i64 %i.g, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.052 = phi i64 [ 0, %bb.a ], [ %i.as, %bb.b ]  ; 5 uses
  %i.z = or disjoint i64 %.052, %i.j              ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.z
  %i.ab = load i32, ptr %i.aa, align 4            ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.z
  %i.ad = load i32, ptr %i.ac, align 4
  %i.ae = xor i32 %i.ad, %i.r
  %i.af = or disjoint i64 %.052, 1                ; 3 uses
  %i.ag = sub nuw nsw i64 %i.af, %i.j
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = xor i32 %i.ai, %i.t
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.052
  %i.al = load i32, ptr %i.ak, align 4
  %i.am = tail call i32 @float32_muladd(i32 noundef %i.ab, i32 noundef %i.ae, i32 noundef %i.al, i32 noundef %i.v, ptr noundef %4) #18
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.052
  store i32 %i.am, ptr %i.an, align 4
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.af
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = tail call i32 @float32_muladd(i32 noundef %i.ab, i32 noundef %i.aj, i32 noundef %i.ap, i32 noundef %i.x, ptr noundef %4) #18
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.af
  store i32 %i.aq, ptr %i.ar, align 4
  %i.as = add nuw nsw i64 %.052, 2                ; 2 uses
  %i.at = icmp samesign ult i64 %i.as, %i.y
  br i1 %i.at, label %bb.b, label %bb.c, !llvm.loop !197

bb.c:                                             ; preds = %bb.b
  %i.au = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.au, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.av = add nuw nsw i32 %i.e, 8
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr i8, ptr %0, i64 %i.g
  %i.ay = xor i64 %i.g, -1
  %i.az = add nsw i64 %i.ay, %i.aw
  %i.ba = and i64 %i.az, -8
  %i.bb = add nsw i64 %i.ba, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ax, i8 0, i64 %i.bb, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @float32_muladd(i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fcmlas_idx(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %5, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %5, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr i32 %5, 10
  %i.i = and i32 %i.h, 1                          ; 3 uses
  %i.j = zext nneg i32 %i.i to i64
  %i.k = lshr i32 %5, 11                          ; 3 uses
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %i.m = lshr i32 %5, 14                          ; 2 uses
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %i.o = xor i32 %i.i, %i.l                       ; 2 uses
  %i.p = lshr exact i64 %i.g, 2                   ; 3 uses
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.p, i64 4) ; 2 uses
  %i.r = xor i32 %i.n, -1                         ; 2 uses
  %i.s = and i32 %i.o, %i.r
  %i.t = shl nuw i32 %i.s, 31                     ; 2 uses
  %i.u = and i32 %i.l, %i.r
  %i.v = shl nuw i32 %i.u, 31                     ; 2 uses
  %i.w = and i32 %i.o, %i.m
  %.not = icmp eq i32 %i.w, 0
end_hunk_0
