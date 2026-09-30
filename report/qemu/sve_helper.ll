Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/sve_helper?download=true
inline.NumInlined: 10042
inline.NumDeleted: 332
loop-unroll.NumCompletelyUnrolled: 1193
loop-unroll.NumRuntimeUnrolled: 419
loop-unroll.NumUnrolled: 1634
begin_hunk_0_@helper_sve2_sqrdcmlah_idx_h:bb.a
  %i.v = zext nneg i32 %i.n to i64
  %invariant.gep = getelementptr inbounds nuw [2 x i8], ptr %1, i64 %i.u ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.052 = phi i64 [ 0, %bb.a ], [ %i.br, %bb.b ]  ; 12 uses
  %gep51 = getelementptr [2 x i8], ptr %invariant.gep50, i64 %.052 ; 2 uses
  %i.w = getelementptr [2 x i8], ptr %gep51, i64 %i.u
  %i.x = load i16, ptr %i.w, align 2              ; 4 uses
  %i.y = getelementptr [2 x i8], ptr %gep51, i64 %i.v
  %i.z = load i16, ptr %i.y, align 2              ; 4 uses
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %.052
  %i.aa = load i16, ptr %gep, align 2             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !annotation !84
  %i.ab = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %.052
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = call signext i16 @do_sqrdmlah_h(i16 noundef signext %i.aa, i16 noundef signext %i.x, i16 noundef signext %i.ac, i1 noundef zeroext %i.p, i1 noundef zeroext true, ptr noundef nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ae = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.052
  store i16 %i.ad, ptr %i.ae, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4, !annotation !84
  %i.af = or disjoint i64 %.052, 1                ; 2 uses
  %i.ag = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.af
  %i.ah = load i16, ptr %i.ag, align 2
  %i.ai = call signext i16 @do_sqrdmlah_h(i16 noundef signext %i.aa, i16 noundef signext %i.z, i16 noundef signext %i.ah, i1 noundef zeroext %i.q, i1 noundef zeroext true, ptr noundef nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.af
  store i16 %i.ai, ptr %i.aj, align 2
  %i.ak = or disjoint i64 %.052, 2                ; 3 uses
  %gep.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %i.ak
  %i.al = load i16, ptr %gep.1, align 2           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !annotation !84
  %i.am = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.ak
  %i.an = load i16, ptr %i.am, align 2
  %i.ao = call signext i16 @do_sqrdmlah_h(i16 noundef signext %i.al, i16 noundef signext %i.x, i16 noundef signext %i.an, i1 noundef zeroext %i.p, i1 noundef zeroext true, ptr noundef nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ap = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.ak
  store i16 %i.ao, ptr %i.ap, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4, !annotation !84
  %i.aq = or disjoint i64 %.052, 3                ; 2 uses
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.aq
  %i.as = load i16, ptr %i.ar, align 2
  %i.at = call signext i16 @do_sqrdmlah_h(i16 noundef signext %i.al, i16 noundef signext %i.z, i16 noundef signext %i.as, i1 noundef zeroext %i.q, i1 noundef zeroext true, ptr noundef nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.au = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.aq
  store i16 %i.at, ptr %i.au, align 2
  %i.av = or disjoint i64 %.052, 4                ; 3 uses
  %gep.2 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %i.av
  %i.aw = load i16, ptr %gep.2, align 2           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !annotation !84
  %i.ax = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.av
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = call signext i16 @do_sqrdmlah_h(i16 noundef signext %i.aw, i16 noundef signext %i.x, i16 noundef signext %i.ay, i1 noundef zeroext %i.p, i1 noundef zeroext true, ptr noundef nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ba = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.av
  store i16 %i.az, ptr %i.ba, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4, !annotation !84
  %i.bb = or disjoint i64 %.052, 5                ; 2 uses
  %i.bc = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bb
  %i.bd = load i16, ptr %i.bc, align 2
  %i.be = call signext i16 @do_sqrdmlah_h(i16 noundef signext %i.aw, i16 noundef signext %i.z, i16 noundef signext %i.bd, i1 noundef zeroext %i.q, i1 noundef zeroext true, ptr noundef nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bb
  store i16 %i.be, ptr %i.bf, align 2
  %i.bg = or disjoint i64 %.052, 6                ; 3 uses
  %gep.3 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %i.bg
  %i.bh = load i16, ptr %gep.3, align 2           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !annotation !84
  %i.bi = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bg
  %i.bj = load i16, ptr %i.bi, align 2
  %i.bk = call signext i16 @do_sqrdmlah_h(i16 noundef signext %i.bh, i16 noundef signext %i.x, i16 noundef signext %i.bj, i1 noundef zeroext %i.p, i1 noundef zeroext true, ptr noundef nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.bl = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bg
  store i16 %i.bk, ptr %i.bl, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4, !annotation !84
  %i.bm = or disjoint i64 %.052, 7                ; 2 uses
  %i.bn = getelementptr inbounds nuw [2 x i8], ptr %3, i64 %i.bm
  %i.bo = load i16, ptr %i.bn, align 2
  %i.bp = call signext i16 @do_sqrdmlah_h(i16 noundef signext %i.bh, i16 noundef signext %i.z, i16 noundef signext %i.bo, i1 noundef zeroext %i.q, i1 noundef zeroext true, ptr noundef nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.bq = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %i.bm
  store i16 %i.bp, ptr %i.bq, align 2
  %i.br = add nuw nsw i64 %.052, 8                ; 2 uses
  %i.bs = icmp samesign ult i64 %i.br, %i.s
  br i1 %i.bs, label %bb.b, label %bb.c, !llvm.loop !2916

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_sve2_sqrdcmlah_idx_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #6 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = lshr i32 %4, 8
  %i.d = and i32 %i.c, 3                          ; 2 uses
  %i.e = shl nuw nsw i32 %i.d, 3
  %i.f = shl i32 %4, 3
  %i.g = and i32 %i.f, 2040
  %i.h = icmp eq i32 %i.d, 2
  %.v.v.i = select i1 %i.h, i32 %i.g, i32 %i.e
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.i = lshr i32 %4, 10                          ; 2 uses
  %i.j = and i32 %i.i, 3                          ; 2 uses
  %i.k = lshr i32 %4, 11
  %i.l = and i32 %i.k, 6
  %i.m = and i32 %i.i, 1                          ; 2 uses
  %i.n = xor i32 %i.m, 1
  %i.o = add nsw i32 %i.j, -1
  %i.p = icmp ult i32 %i.o, 2                     ; 2 uses
  %i.q = icmp samesign ugt i32 %i.j, 1            ; 2 uses
  %i.r = lshr exact i32 %.v.i, 2
  %i.s = zext nneg i32 %i.r to i64
  %i.t = zext nneg i32 %i.l to i64
  %i.u = zext nneg i32 %i.m to i64                ; 2 uses
  %invariant.gep50 = getelementptr [4 x i8], ptr %2, i64 %i.t
  %i.v = zext nneg i32 %i.n to i64
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.u ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %.052 = phi i64 [ 0, %bb.a ], [ %i.av, %bb.b ]  ; 8 uses
  %gep51 = getelementptr [4 x i8], ptr %invariant.gep50, i64 %.052 ; 2 uses
  %i.w = getelementptr [4 x i8], ptr %gep51, i64 %i.u
  %i.x = load i32, ptr %i.w, align 4              ; 2 uses
  %i.y = getelementptr [4 x i8], ptr %gep51, i64 %i.v
  %i.z = load i32, ptr %i.y, align 4              ; 2 uses
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %.052
  %i.aa = load i32, ptr %gep, align 4             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !annotation !84
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.052
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = call i32 @do_sqrdmlah_s(i32 noundef %i.aa, i32 noundef %i.x, i32 noundef %i.ac, i1 noundef zeroext %i.p, i1 noundef zeroext true, ptr noundef nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.052
  store i32 %i.ad, ptr %i.ae, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4, !annotation !84
  %i.af = or disjoint i64 %.052, 1                ; 2 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = call i32 @do_sqrdmlah_s(i32 noundef %i.aa, i32 noundef %i.z, i32 noundef %i.ah, i1 noundef zeroext %i.q, i1 noundef zeroext true, ptr noundef nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.af
  store i32 %i.ai, ptr %i.aj, align 4
  %i.ak = or disjoint i64 %.052, 2                ; 3 uses
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.ak
  %i.al = load i32, ptr %gep.1, align 4           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #26
  store i32 0, ptr %i.a, align 4, !annotation !84
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ak
  %i.an = load i32, ptr %i.am, align 4
  %i.ao = call i32 @do_sqrdmlah_s(i32 noundef %i.al, i32 noundef %i.x, i32 noundef %i.an, i1 noundef zeroext %i.p, i1 noundef zeroext true, ptr noundef nonnull %i.a) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #26
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.ak
  store i32 %i.ao, ptr %i.ap, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #26
  store i32 0, ptr %i.b, align 4, !annotation !84
  %i.aq = or disjoint i64 %.052, 3                ; 2 uses
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aq
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = call i32 @do_sqrdmlah_s(i32 noundef %i.al, i32 noundef %i.z, i32 noundef %i.as, i1 noundef zeroext %i.q, i1 noundef zeroext true, ptr noundef nonnull %i.b) #26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #26
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.aq
  store i32 %i.at, ptr %i.au, align 4
  %i.av = add nuw nsw i64 %.052, 4                ; 2 uses
  %i.aw = icmp samesign ult i64 %i.av, %i.s
  br i1 %i.aw, label %bb.b, label %bb.c, !llvm.loop !2917

bb.c:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_cdot_zzzz_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = ashr i32 %4, 10                          ; 3 uses
  %i.h = icmp eq i32 %i.g, 0
  %i.i = icmp eq i32 %i.g, 3
  %i.j = or i1 %i.h, %i.i                         ; 2 uses
  %i.k = lshr exact i32 %.v.i, 2
  %i.l = shl nsw i32 %i.g, 3
  %i.m = and i32 %i.l, 8                          ; 5 uses
  %i.n = xor i32 %i.m, 8                          ; 2 uses
  %i.o = or disjoint i32 %i.m, 16                 ; 2 uses
  %5 = xor i32 %i.m, 24                           ; 2 uses
  %wide.trip.count = zext nneg i32 %i.k to i64    ; 3 uses
  %min.iters.check = icmp eq i32 %.v.v.i, 0
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %bb.a
  %i.p = ptrtoaddr ptr %0 to i64                  ; 3 uses
  %i.q = ptrtoaddr ptr %1 to i64
  %i.r = ptrtoaddr ptr %2 to i64
  %i.s = ptrtoaddr ptr %3 to i64
  %i.t = sub i64 %i.q, %i.p
  %diff.check = icmp ugt i64 %i.t, -16
  %i.u = sub i64 %i.r, %i.p
  %diff.check25 = icmp ugt i64 %i.u, -16
  %conflict.rdx = or i1 %diff.check, %diff.check25
  %i.v = sub i64 %i.s, %i.p
  %diff.check26 = icmp ugt i64 %i.v, -16
  %conflict.rdx27 = or i1 %conflict.rdx, %diff.check26
  br i1 %conflict.rdx27, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 536870908    ; 3 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.m, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert28 = insertelement <4 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat29 = shufflevector <4 x i32> %broadcast.splatinsert28, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert30 = insertelement <4 x i32> poison, i32 %i.o, i64 0
  %broadcast.splat31 = shufflevector <4 x i32> %broadcast.splatinsert30, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert32 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat33 = shufflevector <4 x i32> %broadcast.splatinsert32, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 5 uses
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %index
  %wide.load = load <4 x i32>, ptr %i.w, align 4  ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %index
  %wide.load34 = load <4 x i32>, ptr %i.x, align 4 ; 4 uses
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %index
  %wide.load35 = load <4 x i32>, ptr %i.y, align 4
  %i.z = shl <4 x i32> %wide.load, splat (i32 24)
  %i.aa = ashr exact <4 x i32> %i.z, splat (i32 24)
  %i.ab = shl <4 x i32> %wide.load, splat (i32 16)
  %i.ac = ashr <4 x i32> %i.ab, splat (i32 24)
  %i.ad = lshr <4 x i32> %wide.load34, %broadcast.splat
  %i.ae = shl <4 x i32> %i.ad, splat (i32 24)
  %i.af = ashr exact <4 x i32> %i.ae, splat (i32 24)
  %i.ag = lshr <4 x i32> %wide.load34, %broadcast.splat29
  %i.ah = shl <4 x i32> %i.ag, splat (i32 24)
  %i.ai = ashr exact <4 x i32> %i.ah, splat (i32 24)
  %i.aj = mul nsw <4 x i32> %i.af, %i.aa
  %i.ak = mul nsw <4 x i32> %i.ai, %i.ac
  %i.al = shl <4 x i32> %wide.load, splat (i32 8)
  %i.am = ashr <4 x i32> %i.al, splat (i32 24)
  %i.an = ashr <4 x i32> %wide.load, splat (i32 24)
  %i.ao = lshr <4 x i32> %wide.load34, %broadcast.splat31
  %i.ap = shl <4 x i32> %i.ao, splat (i32 24)
  %i.aq = ashr exact <4 x i32> %i.ap, splat (i32 24)
  %i.ar = lshr <4 x i32> %wide.load34, %broadcast.splat33
  %i.as = shl <4 x i32> %i.ar, splat (i32 24)
  %i.at = ashr exact <4 x i32> %i.as, splat (i32 24)
  %i.au = mul nsw <4 x i32> %i.aq, %i.am
  %i.av = mul nsw <4 x i32> %i.at, %i.an
  %i.aw = add nsw <4 x i32> %i.av, %i.ak          ; 2 uses
  %i.ax = sub nsw <4 x i32> zeroinitializer, %i.aw
  %i.ay = select i1 %i.j, <4 x i32> %i.ax, <4 x i32> %i.aw
  %i.az = add <4 x i32> %i.aj, %wide.load35
  %i.ba = add <4 x i32> %i.az, %i.au
  %i.bb = add <4 x i32> %i.ba, %i.ay
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %index
  store <4 x i32> %i.bb, ptr %i.bc, align 4
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bd = icmp eq i64 %index.next, %n.vec
  br i1 %i.bd, label %middle.block, label %vector.body, !llvm.loop !2918

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %bb.a, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %n.vec, %middle.block ]
  br label %scalar.ph

.loopexit:                                        ; preds = %scalar.ph, %middle.block
  ret void

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 5 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv
  %i.bf = load i32, ptr %i.be, align 4            ; 4 uses
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv
  %i.bh = load i32, ptr %i.bg, align 4            ; 4 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.bj = load i32, ptr %i.bi, align 4
  %sext.i = shl i32 %i.bf, 24
  %i.bk = ashr exact i32 %sext.i, 24
  %i.bl = shl i32 %i.bf, 16
  %i.bm = ashr i32 %i.bl, 24
  %i.bn = lshr i32 %i.bh, %i.m
  %sext21.i = shl i32 %i.bn, 24
  %i.bo = ashr exact i32 %sext21.i, 24
  %i.bp = lshr i32 %i.bh, %i.n
  %sext22.i = shl i32 %i.bp, 24
  %i.bq = ashr exact i32 %sext22.i, 24
  %i.br = mul nsw i32 %i.bo, %i.bk
  %i.bs = mul nsw i32 %i.bq, %i.bm
  %i.bt = shl i32 %i.bf, 8
  %i.bu = ashr i32 %i.bt, 24
  %i.bv = ashr i32 %i.bf, 24
  %i.bw = lshr i32 %i.bh, %i.o
  %sext21.1.i = shl i32 %i.bw, 24
  %i.bx = ashr exact i32 %sext21.1.i, 24
  %i.by = lshr i32 %i.bh, %5
  %sext22.1.i = shl i32 %i.by, 24
  %i.bz = ashr exact i32 %sext22.1.i, 24
  %i.ca = mul nsw i32 %i.bx, %i.bu
  %i.cb = mul nsw i32 %i.bz, %i.bv
  %reass.add = add nsw i32 %i.cb, %i.bs           ; 2 uses
  %i.cc = sub nsw i32 0, %reass.add
  %reass.mul = select i1 %i.j, i32 %i.cc, i32 %reass.add
  %i.cd = add i32 %i.br, %i.bj
  %i.ce = add i32 %i.cd, %i.ca
  %i.cf = add i32 %i.ce, %reass.mul
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %i.cf, ptr %i.cg, align 4
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph, !llvm.loop !2919
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_cdot_zzzz_d(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = and i32 %4, 255
  %i.d = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.d, i32 %i.c, i32 %i.b
  %i.e = ashr i32 %4, 10                          ; 3 uses
  %i.f = icmp eq i32 %i.e, 0
  %i.g = icmp eq i32 %i.e, 3
  %i.h = or i1 %i.f, %i.g
  %i.i = shl nsw i32 %i.e, 4
  %i.j = and i32 %i.i, 16                         ; 2 uses
  %i.k = xor i32 %i.j, 16
  %i.l = zext nneg i32 %i.j to i64                ; 2 uses
  %i.m = zext nneg i32 %i.k to i64                ; 2 uses
  %i.n = or disjoint i64 %i.l, 32
  %i.o = or disjoint i64 %i.m, 32
  %i.p = add nuw nsw i32 %.v.v.i, 1
  %wide.trip.count = zext nneg i32 %i.p to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.c ] ; 5 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.r = load i64, ptr %i.q, align 8              ; 4 uses
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.t = load i64, ptr %i.s, align 8              ; 4 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv
  %i.v = load i64, ptr %i.u, align 8
  %sext.i = shl i64 %i.r, 48
  %i.w = ashr exact i64 %sext.i, 48
  %i.x = shl i64 %i.r, 32
  %i.y = ashr i64 %i.x, 48
  %i.z = lshr i64 %i.t, %i.l
  %sext21.i = shl i64 %i.z, 48
  %i.aa = ashr exact i64 %sext21.i, 48
  %i.ab = lshr i64 %i.t, %i.m
  %sext22.i = shl i64 %i.ab, 48
  %i.ac = ashr exact i64 %sext22.i, 48
  %i.ad = mul nsw i64 %i.aa, %i.w
  %i.ae = mul nsw i64 %i.ac, %i.y
  %i.af = shl i64 %i.r, 16
  %i.ag = ashr i64 %i.af, 48
  %i.ah = ashr i64 %i.r, 48
  %i.ai = lshr i64 %i.t, %i.n
  %sext21.1.i = shl i64 %i.ai, 48
  %i.aj = ashr exact i64 %sext21.1.i, 48
  %i.ak = lshr i64 %i.t, %i.o
  %sext22.1.i = shl i64 %i.ak, 48
  %i.al = ashr exact i64 %sext22.1.i, 48
  %i.am = mul nsw i64 %i.aj, %i.ag
  %i.an = mul nsw i64 %i.al, %i.ah
  %reass.add = add nsw i64 %i.an, %i.ae           ; 2 uses
  %i.ao = sub nsw i64 0, %reass.add
  %reass.mul = select i1 %i.h, i64 %i.ao, i64 %reass.add
  %i.ap = add i64 %i.ad, %i.v
  %i.aq = add i64 %i.ap, %i.am
  %i.ar = add i64 %i.aq, %reass.mul
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv
  store i64 %i.ar, ptr %i.as, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !2920
}

; Function Attrs: nofree noinline norecurse nosync nounwind sspstrong memory(argmem: readwrite) uwtable
define dso_local void @helper_sve2_cdot_idx_s(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #2 {
bb.a:
  %i.a = lshr i32 %4, 8
  %i.b = and i32 %i.a, 3                          ; 2 uses
  %i.c = shl nuw nsw i32 %i.b, 3
  %i.d = shl i32 %4, 3
  %i.e = and i32 %i.d, 2040
  %i.f = icmp eq i32 %i.b, 2
  %.v.v.i = select i1 %i.f, i32 %i.e, i32 %i.c    ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.g = lshr i32 %4, 10                          ; 2 uses
  %i.h = and i32 %i.g, 3                          ; 2 uses
  %i.i = lshr i32 %4, 12
  %i.j = and i32 %i.i, 3
  %i.k = icmp eq i32 %i.h, 0
  %i.l = icmp eq i32 %i.h, 3
  %i.m = or i1 %i.k, %i.l
  %i.n = select i1 %i.m, i32 -1, i32 1            ; 3 uses
  %i.o = lshr exact i32 %.v.i, 2
  %i.p = shl nuw nsw i32 %i.g, 3
  %i.q = and i32 %i.p, 8                          ; 5 uses
  %i.r = xor i32 %i.q, 8                          ; 2 uses
  %i.s = or disjoint i32 %i.q, 16                 ; 2 uses
  %5 = xor i32 %i.q, 24                           ; 2 uses
  %i.t = zext nneg i32 %i.j to i64                ; 2 uses
  %i.u = zext nneg i32 %i.o to i64                ; 2 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %i.t ; 6 uses
  %i.v = add nsw i64 %i.u, -1                     ; 2 uses
  %i.w = lshr i64 %i.v, 2
  %i.x = add nuw nsw i64 %i.w, 1                  ; 2 uses
  %min.iters.check = icmp samesign ult i32 %.v.v.i, 60
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

scalar.ph.preheader:                              ; preds = %vector.body, %vector.memcheck, %bb.a
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %bb.a ], [ %i.al, %vector.body ]
  br label %scalar.ph

vector.memcheck:                                  ; preds = %bb.a
  %i.y = shl nuw nsw i64 %i.v, 2
  %i.z = and i64 %i.y, 9223372036854775792        ; 2 uses
  %i.aa = add nuw nsw i64 %i.z, 16                ; 3 uses
  %i.ab = getelementptr i8, ptr %0, i64 %i.aa     ; 3 uses
  %i.ac = shl nuw nsw i64 %i.t, 2
  %i.ad = getelementptr i8, ptr %2, i64 %i.z
  %i.ae = getelementptr i8, ptr %i.ad, i64 %i.ac
  %i.af = getelementptr i8, ptr %i.ae, i64 4
  %i.ag = getelementptr i8, ptr %1, i64 %i.aa
  %i.ah = getelementptr i8, ptr %3, i64 %i.aa
  %bound0 = icmp ult ptr %0, %i.af
  %bound1 = icmp ult ptr %invariant.gep, %i.ab
  %found.conflict = and i1 %bound0, %bound1
  %bound048 = icmp ult ptr %0, %i.ag
  %bound149 = icmp ult ptr %1, %i.ab
  %found.conflict50 = and i1 %bound048, %bound149
  %conflict.rdx = or i1 %found.conflict, %found.conflict50
  %bound051 = icmp ult ptr %0, %i.ah
  %bound152 = icmp ult ptr %3, %i.ab
  %found.conflict53 = and i1 %bound051, %bound152
  %conflict.rdx54 = or i1 %conflict.rdx, %found.conflict53
  br i1 %conflict.rdx54, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ai = and i64 %i.x, 3                         ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0
  %i.ak = select i1 %i.aj, i64 4, i64 %i.ai
  %n.vec = sub nsw i64 %i.x, %i.ak                ; 2 uses
  %i.al = shl i64 %n.vec, 2
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.n, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert55 = insertelement <4 x i32> poison, i32 %i.q, i64 0
  %broadcast.splat56 = shufflevector <4 x i32> %broadcast.splatinsert55, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert57 = insertelement <4 x i32> poison, i32 %i.r, i64 0
  %broadcast.splat58 = shufflevector <4 x i32> %broadcast.splatinsert57, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert59 = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat60 = shufflevector <4 x i32> %broadcast.splatinsert59, <4 x i32> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert61 = insertelement <4 x i32> poison, i32 %5, i64 0
  %broadcast.splat62 = shufflevector <4 x i32> %broadcast.splatinsert61, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.am = shl nuw i64 %index, 2                   ; 19 uses
  %i.an = or disjoint i64 %i.am, 4                ; 3 uses
  %i.ao = or disjoint i64 %i.am, 8                ; 3 uses
  %i.ap = or disjoint i64 %i.am, 12               ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.am
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.an
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.ao
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.ap
  %i.au = load i32, ptr %i.aq, align 4, !alias.scope !2928
  %i.av = load i32, ptr %i.ar, align 4, !alias.scope !2928
  %i.aw = load i32, ptr %i.as, align 4, !alias.scope !2928
  %i.ax = load i32, ptr %i.at, align 4, !alias.scope !2928
  %i.ay = insertelement <4 x i32> poison, i32 %i.au, i64 0
  %i.az = insertelement <4 x i32> %i.ay, i32 %i.av, i64 1
  %i.ba = insertelement <4 x i32> %i.az, i32 %i.aw, i64 2
  %i.bb = insertelement <4 x i32> %i.ba, i32 %i.ax, i64 3 ; 4 uses
  %i.bc = lshr <4 x i32> %i.bb, %broadcast.splat56
  %i.bd = shl <4 x i32> %i.bc, splat (i32 24)
  %i.be = ashr exact <4 x i32> %i.bd, splat (i32 24) ; 4 uses
  %i.bf = lshr <4 x i32> %i.bb, %broadcast.splat58
  %i.bg = shl <4 x i32> %i.bf, splat (i32 24)
  %i.bh = ashr exact <4 x i32> %i.bg, splat (i32 24)
  %i.bi = lshr <4 x i32> %i.bb, %broadcast.splat60
  %i.bj = shl <4 x i32> %i.bi, splat (i32 24)
  %i.bk = ashr exact <4 x i32> %i.bj, splat (i32 24) ; 4 uses
  %i.bl = lshr <4 x i32> %i.bb, %broadcast.splat62
  %i.bm = shl <4 x i32> %i.bl, splat (i32 24)
  %i.bn = ashr exact <4 x i32> %i.bm, splat (i32 24)
  %i.bo = mul nsw <4 x i32> %i.bn, %broadcast.splat ; 4 uses
  %i.bp = mul nsw <4 x i32> %i.bh, %broadcast.splat ; 4 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.am
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.an
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ao
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ap
  %i.bu = load i32, ptr %i.bq, align 4, !alias.scope !2929
  %i.bv = load i32, ptr %i.br, align 4, !alias.scope !2929
  %i.bw = load i32, ptr %i.bs, align 4, !alias.scope !2929
  %i.bx = load i32, ptr %i.bt, align 4, !alias.scope !2929
  %i.by = insertelement <4 x i32> poison, i32 %i.bu, i64 0
  %i.bz = insertelement <4 x i32> %i.by, i32 %i.bv, i64 1
  %i.ca = insertelement <4 x i32> %i.bz, i32 %i.bw, i64 2
  %i.cb = insertelement <4 x i32> %i.ca, i32 %i.bx, i64 3 ; 4 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.am
  %i.cd = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.an
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ao
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ap
  %i.cg = load i32, ptr %i.cc, align 4, !alias.scope !2930
  %i.ch = load i32, ptr %i.cd, align 4, !alias.scope !2930
  %i.ci = load i32, ptr %i.ce, align 4, !alias.scope !2930
  %i.cj = load i32, ptr %i.cf, align 4, !alias.scope !2930
  %i.ck = insertelement <4 x i32> poison, i32 %i.cg, i64 0
  %i.cl = insertelement <4 x i32> %i.ck, i32 %i.ch, i64 1
  %i.cm = insertelement <4 x i32> %i.cl, i32 %i.ci, i64 2
  %i.cn = insertelement <4 x i32> %i.cm, i32 %i.cj, i64 3
  %i.co = shl <4 x i32> %i.cb, splat (i32 24)
  %i.cp = ashr exact <4 x i32> %i.co, splat (i32 24)
  %i.cq = shl <4 x i32> %i.cb, splat (i32 16)
  %i.cr = ashr <4 x i32> %i.cq, splat (i32 24)
  %i.cs = mul nsw <4 x i32> %i.cp, %i.be
  %i.ct = mul nsw <4 x i32> %i.cr, %i.bp
  %i.cu = shl <4 x i32> %i.cb, splat (i32 8)
  %i.cv = ashr <4 x i32> %i.cu, splat (i32 24)
  %i.cw = ashr <4 x i32> %i.cb, splat (i32 24)
  %i.cx = mul nsw <4 x i32> %i.cv, %i.bk
  %i.cy = mul nsw <4 x i32> %i.cw, %i.bo
  %i.cz = add nsw <4 x i32> %i.ct, %i.cy
  %i.da = add <4 x i32> %i.cs, %i.cn
  %i.db = add <4 x i32> %i.da, %i.cx
  %i.dc = add <4 x i32> %i.db, %i.cz
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.am
  %i.de = or disjoint i64 %i.am, 1                ; 2 uses
  %i.df = or disjoint i64 %i.am, 5                ; 2 uses
  %i.dg = or disjoint i64 %i.am, 9                ; 2 uses
  %i.dh = or disjoint i64 %i.am, 13               ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.de
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.df
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dg
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.dh
  %i.dm = load i32, ptr %i.di, align 4, !alias.scope !2929
  %i.dn = load i32, ptr %i.dj, align 4, !alias.scope !2929
  %i.do = load i32, ptr %i.dk, align 4, !alias.scope !2929
  %i.dp = load i32, ptr %i.dl, align 4, !alias.scope !2929
  %i.dq = insertelement <4 x i32> poison, i32 %i.dm, i64 0
  %i.dr = insertelement <4 x i32> %i.dq, i32 %i.dn, i64 1
  %i.ds = insertelement <4 x i32> %i.dr, i32 %i.do, i64 2
  %i.dt = insertelement <4 x i32> %i.ds, i32 %i.dp, i64 3 ; 4 uses
  %i.du = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.de
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.df
  %i.dw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dg
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.dh
  %i.dy = load i32, ptr %i.du, align 4, !alias.scope !2930
  %i.dz = load i32, ptr %i.dv, align 4, !alias.scope !2930
  %i.ea = load i32, ptr %i.dw, align 4, !alias.scope !2930
  %i.eb = load i32, ptr %i.dx, align 4, !alias.scope !2930
  %i.ec = insertelement <4 x i32> poison, i32 %i.dy, i64 0
  %i.ed = insertelement <4 x i32> %i.ec, i32 %i.dz, i64 1
  %i.ee = insertelement <4 x i32> %i.ed, i32 %i.ea, i64 2
  %i.ef = insertelement <4 x i32> %i.ee, i32 %i.eb, i64 3
  %i.eg = shl <4 x i32> %i.dt, splat (i32 24)
  %i.eh = ashr exact <4 x i32> %i.eg, splat (i32 24)
  %i.ei = shl <4 x i32> %i.dt, splat (i32 16)
  %i.ej = ashr <4 x i32> %i.ei, splat (i32 24)
  %i.ek = mul nsw <4 x i32> %i.eh, %i.be
  %i.el = mul nsw <4 x i32> %i.ej, %i.bp
  %i.em = shl <4 x i32> %i.dt, splat (i32 8)
  %i.en = ashr <4 x i32> %i.em, splat (i32 24)
  %i.eo = ashr <4 x i32> %i.dt, splat (i32 24)
  %i.ep = mul nsw <4 x i32> %i.en, %i.bk
  %i.eq = mul nsw <4 x i32> %i.eo, %i.bo
  %i.er = add nsw <4 x i32> %i.el, %i.eq
  %i.es = add <4 x i32> %i.ek, %i.ef
  %i.et = add <4 x i32> %i.es, %i.ep
  %i.eu = add <4 x i32> %i.et, %i.er
  %i.ev = or disjoint i64 %i.am, 2                ; 2 uses
  %i.ew = or disjoint i64 %i.am, 6                ; 2 uses
  %i.ex = or disjoint i64 %i.am, 10               ; 2 uses
  %i.ey = or disjoint i64 %i.am, 14               ; 2 uses
  %i.ez = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ev
  %i.fa = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ew
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ex
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %i.ey
  %i.fd = load i32, ptr %i.ez, align 4, !alias.scope !2929
  %i.fe = load i32, ptr %i.fa, align 4, !alias.scope !2929
  %i.ff = load i32, ptr %i.fb, align 4, !alias.scope !2929
  %i.fg = load i32, ptr %i.fc, align 4, !alias.scope !2929
  %i.fh = insertelement <4 x i32> poison, i32 %i.fd, i64 0
  %i.fi = insertelement <4 x i32> %i.fh, i32 %i.fe, i64 1
  %i.fj = insertelement <4 x i32> %i.fi, i32 %i.ff, i64 2
  %i.fk = insertelement <4 x i32> %i.fj, i32 %i.fg, i64 3 ; 4 uses
  %i.fl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ev
  %i.fm = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ew
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ex
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.ey
  %i.fp = load i32, ptr %i.fl, align 4, !alias.scope !2930
  %i.fq = load i32, ptr %i.fm, align 4, !alias.scope !2930
  %i.fr = load i32, ptr %i.fn, align 4, !alias.scope !2930
  %i.fs = load i32, ptr %i.fo, align 4, !alias.scope !2930
  %i.ft = insertelement <4 x i32> poison, i32 %i.fp, i64 0
  %i.fu = insertelement <4 x i32> %i.ft, i32 %i.fq, i64 1
  %i.fv = insertelement <4 x i32> %i.fu, i32 %i.fr, i64 2
  %i.fw = insertelement <4 x i32> %i.fv, i32 %i.fs, i64 3
  %i.fx = shl <4 x i32> %i.fk, splat (i32 24)
  %i.fy = ashr exact <4 x i32> %i.fx, splat (i32 24)
end_hunk_0
