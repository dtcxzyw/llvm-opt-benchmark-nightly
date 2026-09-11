Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vec_helper?download=true
inline.NumInlined: 1641
inline.NumDeleted: 146
loop-unroll.NumCompletelyUnrolled: 40
loop-unroll.NumRuntimeUnrolled: 113
loop-unroll.NumUnrolled: 184
begin_hunk_0_@helper_gvec_fcadds:bb.a
  %i.bq = load i32, ptr %i.bp, align 4            ; 3 uses
  %i.br = and i32 %i.bq, 2147483647
  %i.bs = icmp samesign ugt i32 %i.br, 2139095040
  %i.bt = xor i32 %i.bq, -2147483648
  %spec.select42 = select i1 %i.bs, i32 %i.bq, i32 %i.bt
  %i.bu = tail call i32 @float32_add(i32 noundef %i.bj, i32 noundef %i.bm, ptr noundef %3) #18
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.03537
  store i32 %i.bu, ptr %i.bv, align 4
  %i.bw = tail call i32 @float32_add(i32 noundef %i.bo, i32 noundef %spec.select42, ptr noundef %3) #18
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bk
  store i32 %i.bw, ptr %i.bx, align 4
  %i.by = add nuw nsw i64 %.03537, 2              ; 2 uses
  %i.bz = icmp samesign ult i64 %i.by, %i.j
  br i1 %i.bz, label %.split.split, label %.split39.us, !llvm.loop !205

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

declare i32 @float32_add(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fcaddd(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = and i32 %4, 1024
  %.not = icmp eq i32 %i.h, 0
  %i.i = and i32 %4, 2048
  %.not43 = icmp eq i32 %i.i, 0                   ; 2 uses
  %i.j = lshr exact i64 %i.g, 3                   ; 4 uses
  br i1 %.not, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a
  br i1 %.not43, label %.split.us.split.us, label %.split.us.split

.split.us.split.us:                               ; preds = %.split.us, %.split.us.split.us
  %.03537.us.us = phi i64 [ %i.y, %.split.us.split.us ], [ 0, %.split.us ] ; 5 uses
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03537.us.us
  %i.l = load i64, ptr %i.k, align 8
  %i.m = or disjoint i64 %.03537.us.us, 1         ; 3 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.m
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.m
  %i.q = load i64, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.03537.us.us
  %i.s = load i64, ptr %i.r, align 8
  %i.t = xor i64 %i.o, -9223372036854775808
  %i.u = tail call i64 @float64_add(i64 noundef %i.l, i64 noundef %i.t, ptr noundef %3) #18
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.03537.us.us
  store i64 %i.u, ptr %i.v, align 8
  %i.w = tail call i64 @float64_add(i64 noundef %i.q, i64 noundef %i.s, ptr noundef %3) #18
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.m
  store i64 %i.w, ptr %i.x, align 8
  %i.y = add nuw nsw i64 %.03537.us.us, 2         ; 2 uses
  %i.z = icmp samesign ult i64 %i.y, %i.j
  br i1 %i.z, label %.split.us.split.us, label %.split39.us, !llvm.loop !206

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
  br i1 %i.ar, label %.split.us.split, label %.split39.us, !llvm.loop !206

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
  br i1 %i.bh, label %.split.split.us, label %.split39.us, !llvm.loop !206

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
  br i1 %i.bz, label %.split.split, label %.split39.us, !llvm.loop !206

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
  %6 = select i1 %.not, i32 0, i32 2
  %i.t = and i32 %i.l, %i.m
  %.not52 = icmp eq i32 %i.t, 0
  %7 = select i1 %.not52, i32 0, i32 2
  %i.u = lshr exact i64 %i.g, 1
  %.tr = trunc nuw nsw i32 %i.q to i16
  %i.v = shl nuw i16 %.tr, 15
  %.tr53 = trunc i32 %i.r to i16
  %i.w = shl i16 %.tr53, 15
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.054 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.b ]  ; 5 uses
  %i.x = or disjoint i64 %.054, %i.j              ; 2 uses
  %i.y = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.x
  %i.z = load i16, ptr %i.y, align 2              ; 2 uses
  %i.aa = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.x
  %i.ab = load i16, ptr %i.aa, align 2
  %i.ac = xor i16 %i.ab, %i.v
  %i.ad = or disjoint i64 %.054, 1                ; 3 uses
  %i.ae = sub nuw nsw i64 %i.ad, %i.j
  %i.af = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.ae
  %i.ag = load i16, ptr %i.af, align 2
  %i.ah = xor i16 %i.ag, %i.w
  %i.ai = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.054
  %i.aj = load i16, ptr %i.ai, align 2
  %i.ak = tail call zeroext i16 @float16_muladd(i16 noundef zeroext %i.z, i16 noundef zeroext %i.ac, i16 noundef zeroext %i.aj, i32 noundef %6, ptr noundef %4) #18
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.054
  store i16 %i.ak, ptr %i.al, align 2
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ad
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = tail call zeroext i16 @float16_muladd(i16 noundef zeroext %i.z, i16 noundef zeroext %i.ah, i16 noundef zeroext %i.an, i32 noundef %7, ptr noundef %4) #18
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ad
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = add nuw nsw i64 %.054, 2                ; 2 uses
  %i.ar = icmp samesign ult i64 %i.aq, %i.u
  br i1 %i.ar, label %bb.b, label %bb.c, !llvm.loop !207

bb.c:                                             ; preds = %bb.b
  %i.as = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.as, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.at = add nuw nsw i32 %i.e, 8
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr i8, ptr %0, i64 %i.g
  %i.aw = xor i64 %i.g, -1
  %i.ax = add nsw i64 %i.aw, %i.au
  %i.ay = and i64 %i.ax, -8
  %i.az = add nsw i64 %i.ay, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.av, i8 0, i64 %i.az, i1 false)
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
  %i.l = and i32 %i.k, 1                          ; 2 uses
  %i.m = lshr i32 %5, 14                          ; 2 uses
  %i.n = and i32 %i.m, 1                          ; 2 uses
  %i.o = xor i32 %i.i, %i.l                       ; 2 uses
  %i.p = lshr exact i64 %i.g, 1                   ; 3 uses
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.p, i64 8) ; 2 uses
  %i.r = xor i32 %i.n, -1                         ; 2 uses
  %i.s = and i32 %i.o, %i.r
  %i.t = and i32 %i.l, %i.r
  %i.u = and i32 %i.o, %i.m
  %.not = icmp eq i32 %i.u, 0
  %6 = select i1 %.not, i32 0, i32 2              ; 2 uses
  %i.v = and i32 %i.n, %i.k
  %.not74 = icmp eq i32 %i.v, 0
  %7 = select i1 %.not74, i32 0, i32 2            ; 2 uses
  %i.w = and i32 %i.k, 6
  %i.x = zext nneg i32 %i.w to i64
  %invariant.gep77 = getelementptr inbounds nuw [2 x i8], ptr %2, i64 %i.x ; 2 uses
  %.not75 = icmp eq i32 %i.i, 0
  %invariant.gep = getelementptr [2 x i8], ptr %1, i64 %i.j ; 2 uses
  %.tr = trunc nuw nsw i32 %i.s to i16
  %i.y = shl nuw i16 %.tr, 15                     ; 2 uses
  %.tr86 = trunc nuw nsw i32 %i.t to i16
  %i.z = shl nuw i16 %.tr86, 15                   ; 2 uses
  br i1 %.not75, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %.loopexit.us
  %.07179.us = phi i64 [ %i.af, %.loopexit.us ], [ 0, %bb.a ] ; 3 uses
  %gep78.us = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep77, i64 %.07179.us ; 2 uses
  %i.aa = load i16, ptr %gep78.us, align 2
  %i.ab = getelementptr inbounds nuw i8, ptr %gep78.us, i64 2
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = xor i16 %i.aa, %i.y
  %i.ae = xor i16 %i.ac, %i.z
  %i.af = add nuw nsw i64 %.07179.us, %i.q        ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.split.us, %bb.b
  %.076.us = phi i64 [ %.07179.us, %.split.us ], [ %i.aq, %bb.b ] ; 5 uses
  %gep.us = getelementptr [2 x i8], ptr %invariant.gep, i64 %.076.us
  %i.ag = load i16, ptr %gep.us, align 2          ; 2 uses
  %i.ah = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.076.us
  %i.ai = load i16, ptr %i.ah, align 2
  %i.aj = tail call zeroext i16 @float16_muladd(i16 noundef zeroext %i.ag, i16 noundef zeroext %i.ad, i16 noundef zeroext %i.ai, i32 noundef %6, ptr noundef %4) #18
  %i.ak = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.076.us
  store i16 %i.aj, ptr %i.ak, align 2
  %i.al = add nuw nsw i64 %.076.us, 1             ; 2 uses
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.al
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = tail call zeroext i16 @float16_muladd(i16 noundef zeroext %i.ag, i16 noundef zeroext %i.ae, i16 noundef zeroext %i.an, i32 noundef %7, ptr noundef %4) #18
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.al
  store i16 %i.ao, ptr %i.ap, align 2
  %i.aq = add nuw nsw i64 %.076.us, 2             ; 2 uses
  %i.ar = icmp samesign ult i64 %i.aq, %i.af
  br i1 %i.ar, label %bb.b, label %.loopexit.us, !llvm.loop !208

.loopexit.us:                                     ; preds = %bb.b
  %i.as = icmp samesign ult i64 %i.af, %i.p
  br i1 %i.as, label %.split.us, label %.split81.us, !llvm.loop !209

.loopexit:                                        ; preds = %bb.c
  %i.at = icmp samesign ult i64 %i.az, %i.p
  br i1 %i.at, label %.split, label %.split81.us, !llvm.loop !209

.split:                                           ; preds = %bb.a, %.loopexit
  %.07179 = phi i64 [ %i.az, %.loopexit ], [ 0, %bb.a ] ; 3 uses
  %gep78 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep77, i64 %.07179 ; 2 uses
  %i.au = load i16, ptr %gep78, align 2
  %i.av = getelementptr inbounds nuw i8, ptr %gep78, i64 2
  %i.aw = load i16, ptr %i.av, align 2
  %i.ax = xor i16 %i.aw, %i.y
  %i.ay = xor i16 %i.au, %i.z
  %i.az = add nuw nsw i64 %.07179, %i.q           ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.split, %bb.c
  %.076 = phi i64 [ %.07179, %.split ], [ %i.bk, %bb.c ] ; 5 uses
  %gep = getelementptr [2 x i8], ptr %invariant.gep, i64 %.076
  %i.ba = load i16, ptr %gep, align 2             ; 2 uses
  %i.bb = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.076
  %i.bc = load i16, ptr %i.bb, align 2
  %i.bd = tail call zeroext i16 @float16_muladd(i16 noundef zeroext %i.ba, i16 noundef zeroext %i.ax, i16 noundef zeroext %i.bc, i32 noundef %6, ptr noundef %4) #18
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.076
  store i16 %i.bd, ptr %i.be, align 2
  %i.bf = add nuw nsw i64 %.076, 1                ; 2 uses
  %i.bg = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bf
  %i.bh = load i16, ptr %i.bg, align 2
  %i.bi = tail call zeroext i16 @float16_muladd(i16 noundef zeroext %i.ba, i16 noundef zeroext %i.ay, i16 noundef zeroext %i.bh, i32 noundef %7, ptr noundef %4) #18
  %i.bj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bf
  store i16 %i.bi, ptr %i.bj, align 2
  %i.bk = add nuw nsw i64 %.076, 2                ; 2 uses
  %i.bl = icmp samesign ult i64 %i.bk, %i.az
  br i1 %i.bl, label %bb.c, label %.loopexit, !llvm.loop !208

.split81.us:                                      ; preds = %.loopexit, %.loopexit.us
  %i.bm = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bm, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split81.us
  %i.bn = add nuw nsw i32 %i.e, 8
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr i8, ptr %0, i64 %i.g
  %i.bq = xor i64 %i.g, -1
  %i.br = add nsw i64 %i.bq, %i.bo
  %i.bs = and i64 %i.br, -8
  %i.bt = add nsw i64 %i.bs, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bp, i8 0, i64 %i.bt, i1 false)
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
  %6 = select i1 %.not, i32 0, i32 2
  %i.v = and i32 %i.l, %i.m
  %.not51 = icmp eq i32 %i.v, 0
  %7 = select i1 %.not51, i32 0, i32 2
  %i.w = lshr exact i64 %i.g, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.052 = phi i64 [ 0, %bb.a ], [ %i.aq, %bb.b ]  ; 5 uses
  %i.x = or disjoint i64 %.052, %i.j              ; 2 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.x
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.x
  %i.ab = load i32, ptr %i.aa, align 4
  %i.ac = xor i32 %i.ab, %i.r
  %i.ad = or disjoint i64 %.052, 1                ; 3 uses
  %i.ae = sub nuw nsw i64 %i.ad, %i.j
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.ae
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = xor i32 %i.ag, %i.t
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.052
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = tail call i32 @float32_muladd(i32 noundef %i.z, i32 noundef %i.ac, i32 noundef %i.aj, i32 noundef %6, ptr noundef %4) #18
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.052
  store i32 %i.ak, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ad
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = tail call i32 @float32_muladd(i32 noundef %i.z, i32 noundef %i.ah, i32 noundef %i.an, i32 noundef %7, ptr noundef %4) #18
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ad
  store i32 %i.ao, ptr %i.ap, align 4
  %i.aq = add nuw nsw i64 %.052, 2                ; 2 uses
  %i.ar = icmp samesign ult i64 %i.aq, %i.w
  br i1 %i.ar, label %bb.b, label %bb.c, !llvm.loop !210

bb.c:                                             ; preds = %bb.b
  %i.as = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.as, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.at = add nuw nsw i32 %i.e, 8
  %i.au = zext nneg i32 %i.at to i64
  %i.av = getelementptr i8, ptr %0, i64 %i.g
  %i.aw = xor i64 %i.g, -1
  %i.ax = add nsw i64 %i.aw, %i.au
  %i.ay = and i64 %i.ax, -8
  %i.az = add nsw i64 %i.ay, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.av, i8 0, i64 %i.az, i1 false)
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
  %6 = select i1 %.not, i32 0, i32 2              ; 2 uses
  %i.x = and i32 %i.n, %i.k
  %.not73 = icmp eq i32 %i.x, 0
  %7 = select i1 %.not73, i32 0, i32 2            ; 2 uses
  %i.y = and i32 %i.k, 6
  %i.z = zext nneg i32 %i.y to i64
  %invariant.gep76 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.z ; 2 uses
  %.not74 = icmp eq i32 %i.i, 0
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.j ; 2 uses
  br i1 %.not74, label %.split.us, label %.split

.split.us:                                        ; preds = %bb.a, %.loopexit.us
  %.07178.us = phi i64 [ %i.af, %.loopexit.us ], [ 0, %bb.a ] ; 3 uses
  %gep77.us = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep76, i64 %.07178.us ; 2 uses
  %i.aa = load i32, ptr %gep77.us, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %gep77.us, i64 4
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = xor i32 %i.aa, %i.t
  %i.ae = xor i32 %i.ac, %i.v
  %i.af = add nuw nsw i64 %.07178.us, %i.q        ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %.split.us, %bb.b
  %.075.us = phi i64 [ %.07178.us, %.split.us ], [ %i.aq, %bb.b ] ; 5 uses
  %gep.us = getelementptr [4 x i8], ptr %invariant.gep, i64 %.075.us
  %i.ag = load i32, ptr %gep.us, align 4          ; 2 uses
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.075.us
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = tail call i32 @float32_muladd(i32 noundef %i.ag, i32 noundef %i.ad, i32 noundef %i.ai, i32 noundef %6, ptr noundef %4) #18
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.075.us
  store i32 %i.aj, ptr %i.ak, align 4
  %i.al = add nuw nsw i64 %.075.us, 1             ; 2 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = tail call i32 @float32_muladd(i32 noundef %i.ag, i32 noundef %i.ae, i32 noundef %i.an, i32 noundef %7, ptr noundef %4) #18
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.al
  store i32 %i.ao, ptr %i.ap, align 4
  %i.aq = add nuw nsw i64 %.075.us, 2             ; 2 uses
  %i.ar = icmp samesign ult i64 %i.aq, %i.af
  br i1 %i.ar, label %bb.b, label %.loopexit.us, !llvm.loop !211

.loopexit.us:                                     ; preds = %bb.b
  %i.as = icmp samesign ult i64 %i.af, %i.p
  br i1 %i.as, label %.split.us, label %.split80.us, !llvm.loop !212

.loopexit:                                        ; preds = %bb.c
  %i.at = icmp samesign ult i64 %i.az, %i.p
  br i1 %i.at, label %.split, label %.split80.us, !llvm.loop !212

.split:                                           ; preds = %bb.a, %.loopexit
  %.07178 = phi i64 [ %i.az, %.loopexit ], [ 0, %bb.a ] ; 3 uses
  %gep77 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep76, i64 %.07178 ; 2 uses
  %i.au = load i32, ptr %gep77, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %gep77, i64 4
  %i.aw = load i32, ptr %i.av, align 4
  %i.ax = xor i32 %i.aw, %i.t
  %i.ay = xor i32 %i.au, %i.v
  %i.az = add nuw nsw i64 %.07178, %i.q           ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %.split, %bb.c
  %.075 = phi i64 [ %.07178, %.split ], [ %i.bk, %bb.c ] ; 5 uses
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %.075
  %i.ba = load i32, ptr %gep, align 4             ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.075
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = tail call i32 @float32_muladd(i32 noundef %i.ba, i32 noundef %i.ax, i32 noundef %i.bc, i32 noundef %6, ptr noundef %4) #18
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.075
  store i32 %i.bd, ptr %i.be, align 4
  %i.bf = add nuw nsw i64 %.075, 1                ; 2 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.bf
  %i.bh = load i32, ptr %i.bg, align 4
  %i.bi = tail call i32 @float32_muladd(i32 noundef %i.ba, i32 noundef %i.ay, i32 noundef %i.bh, i32 noundef %7, ptr noundef %4) #18
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bf
  store i32 %i.bi, ptr %i.bj, align 4
  %i.bk = add nuw nsw i64 %.075, 2                ; 2 uses
  %i.bl = icmp samesign ult i64 %i.bk, %i.az
  br i1 %i.bl, label %bb.c, label %.loopexit, !llvm.loop !211

.split80.us:                                      ; preds = %.loopexit, %.loopexit.us
  %i.bm = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.bm, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %.split80.us
  %i.bn = add nuw nsw i32 %i.e, 8
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr i8, ptr %0, i64 %i.g
  %i.bq = xor i64 %i.g, -1
  %i.br = add nsw i64 %i.bq, %i.bo
  %i.bs = and i64 %i.br, -8
  %i.bt = add nsw i64 %i.bs, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.bp, i8 0, i64 %i.bt, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %.split80.us, %.lr.ph.preheader.i
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fcmlad(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr noundef %4, i32 noundef %5) local_unnamed_addr #5 {
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
  %i.r = zext nneg i32 %i.q to i64
  %i.s = shl nuw i64 %i.r, 63
  %i.t = and i32 %i.n, %i.p
  %i.u = zext nneg i32 %i.t to i64
  %i.v = shl nuw i64 %i.u, 63
  %i.w = and i32 %i.o, %i.k
  %.not = icmp eq i32 %i.w, 0
  %6 = select i1 %.not, i32 0, i32 2
  %i.x = and i32 %i.l, %i.m
  %.not51 = icmp eq i32 %i.x, 0
  %7 = select i1 %.not51, i32 0, i32 2
  %i.y = lshr exact i64 %i.g, 3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.052 = phi i64 [ 0, %bb.a ], [ %i.as, %bb.b ]  ; 5 uses
  %i.z = or disjoint i64 %.052, %i.j              ; 2 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %i.z
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.z
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = xor i64 %i.ad, %i.s
  %i.af = or disjoint i64 %.052, 1                ; 3 uses
  %i.ag = sub nuw nsw i64 %i.af, %i.j
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.ag
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = xor i64 %i.ai, %i.v
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.052
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = tail call i64 @float64_muladd(i64 noundef %i.ab, i64 noundef %i.ae, i64 noundef %i.al, i32 noundef %6, ptr noundef %4) #18
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %.052
  store i64 %i.am, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.af
  %i.ap = load i64, ptr %i.ao, align 8
  %i.aq = tail call i64 @float64_muladd(i64 noundef %i.ab, i64 noundef %i.aj, i64 noundef %i.ap, i32 noundef %7, ptr noundef %4) #18
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.af
  store i64 %i.aq, ptr %i.ar, align 8
  %i.as = add nuw nsw i64 %.052, 2                ; 2 uses
  %i.at = icmp samesign ult i64 %i.as, %i.y
  br i1 %i.at, label %bb.b, label %bb.c, !llvm.loop !213

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

declare i64 @float64_muladd(i64 noundef, i64 noundef, i64 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_frecpe_h(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.013 = phi i64 [ 0, %bb.a ], [ %i.o, %bb.b ]   ; 3 uses
  %i.i = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %.013
  %i.j = load i16, ptr %i.i, align 2
  %i.k = zext i16 %i.j to i32
  %i.l = tail call i32 @helper_recpe_f16(i32 noundef %i.k, ptr noundef %2) #18
  %i.m = trunc i32 %i.l to i16
  %i.n = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.013
  store i16 %i.m, ptr %i.n, align 2
  %i.o = add nuw nsw i64 %.013, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !214

bb.c:                                             ; preds = %bb.b
  %i.p = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.p, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.q = add nuw nsw i32 %i.e, 8
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr i8, ptr %0, i64 %i.g
  %i.t = xor i64 %i.g, -1
  %i.u = add nsw i64 %i.t, %i.r
  %i.v = and i64 %i.u, -8
  %i.w = add nsw i64 %i.v, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.s, i8 0, i64 %i.w, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @helper_recpe_f16(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_frecpe_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.013 = phi i64 [ 0, %bb.a ], [ %i.m, %bb.b ]   ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.013
  %i.j = load i32, ptr %i.i, align 4
  %i.k = tail call i32 @helper_recpe_f32(i32 noundef %i.j, ptr noundef %2) #18
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013
  store i32 %i.k, ptr %i.l, align 4
  %i.m = add nuw nsw i64 %.013, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !215

bb.c:                                             ; preds = %bb.b
  %i.n = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.n, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.o = add nuw nsw i32 %i.e, 8
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr i8, ptr %0, i64 %i.g
  %i.r = xor i64 %i.g, -1
  %i.s = add nsw i64 %i.r, %i.p
  %i.t = and i64 %i.s, -8
  %i.u = add nsw i64 %i.t, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %i.u, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @helper_recpe_f32(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_frecpe_rpres_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %3, 3
  %i.e = and i32 %i.d, 2040                       ; 3 uses
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = zext nneg i32 %.v.i to i64               ; 3 uses
  %i.h = lshr exact i64 %i.g, 2
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.013 = phi i64 [ 0, %bb.a ], [ %i.m, %bb.b ]   ; 3 uses
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.013
  %i.j = load i32, ptr %i.i, align 4
  %i.k = tail call i32 @helper_recpe_rpres_f32(i32 noundef %i.j, ptr noundef %2) #18
  %i.l = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.013
  store i32 %i.k, ptr %i.l, align 4
  %i.m = add nuw nsw i64 %.013, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, %i.h
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !216

bb.c:                                             ; preds = %bb.b
  %i.n = icmp samesign ult i32 %.v.v.i, %i.e
  br i1 %i.n, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.c
  %i.o = add nuw nsw i32 %i.e, 8
  %i.p = zext nneg i32 %i.o to i64
  %i.q = getelementptr i8, ptr %0, i64 %i.g
  %i.r = xor i64 %i.g, -1
  %i.s = add nsw i64 %i.r, %i.p
  %i.t = and i64 %i.s, -8
  %i.u = add nsw i64 %i.t, 8
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.q, i8 0, i64 %i.u, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.c, %.lr.ph.preheader.i
  ret void
}

declare i32 @helper_recpe_rpres_f32(i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_frecpe_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #5 {
bb.a:
  %i.a = lshr i32 %3, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
end_hunk_0
