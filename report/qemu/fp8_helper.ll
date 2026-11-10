Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/fp8_helper?download=true
inline.NumInlined: 416
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@helper_gvec_fmla_hb:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.d = and i64 %.val, 7
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @fp8_input_fmt, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !noalias !160
  store ptr %i.f, ptr %i.c, align 8, !alias.scope !160
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.h = lshr i64 %.val, 3
  %i.i = and i64 %i.h, 7
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @fp8_input_fmt, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !noalias !160
  store ptr %i.k, ptr %i.g, align 8, !alias.scope !160
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.m = trunc i64 %.val to i32
  %i.n = lshr i32 %i.m, 16
  %i.o = and i32 %i.n, 15
  %i.p = sub nsw i32 0, %i.o
  store i32 %i.p, ptr %i.l, align 8, !alias.scope !160
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i32 0, ptr %i.q, align 4, !alias.scope !160
  %i.r = and i64 %.val24, -15138817
  %i.s = and i64 %.val, 16384
  %.not.i = icmp eq i64 %i.s, 0
  %i.t = select i1 %.not.i, i64 0, i64 458752
  %i.u = or disjoint i64 %i.r, %i.t
  %i.v = or disjoint i64 %i.u, 8388608
  store i64 %i.v, ptr %10, align 8, !alias.scope !160
  %i.w = lshr i32 %4, 8
  %i.x = and i32 %i.w, 3                          ; 2 uses
  %i.y = shl nuw nsw i32 %i.x, 3
  %i.z = shl i32 %4, 3
  %i.aa = and i32 %i.z, 2040                      ; 3 uses
  %i.ab = icmp eq i32 %i.x, 2
  %.v.v.i = select i1 %i.ab, i32 %i.aa, i32 %i.y  ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.ac = zext nneg i32 %.v.i to i64              ; 3 uses
  %i.ad = lshr exact i64 %i.ac, 1
  %i.ae = lshr i32 %4, 10
  %.lobit = and i32 %i.ae, 1
  %i.af = zext nneg i32 %.lobit to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.al = icmp samesign ult i32 %.v.v.i, %i.aa
  br i1 %i.al, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.am = add nuw nsw i32 %i.aa, 8
  %i.an = zext nneg i32 %i.am to i64
  %i.ao = getelementptr i8, ptr %0, i64 %i.ac
  %i.ap = xor i64 %i.ac, -1
  %i.aq = add nsw i64 %i.ap, %i.an
  %i.ar = and i64 %i.aq, -8
  %i.as = add nsw i64 %i.ar, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ao, i8 0, i64 range(i64 0, 2041) %i.as, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.b, %.lr.ph.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %.025 = phi i64 [ 0, %bb.a ], [ %i.bx, %bb.c ]  ; 3 uses
  %i.at = shl nuw nsw i64 %.025, 1
  %i.au = or disjoint i64 %i.at, %i.af            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1
  %i.ax = getelementptr inbounds nuw i8, ptr %2, i64 %i.au
  %i.ay = load i8, ptr %i.ax, align 1
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.025 ; 2 uses
  %i.ba = load i16, ptr %i.az, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.bb = load ptr, ptr %i.c, align 8
  %i.bc = call { i64, i64 } %i.bb(i8 noundef zeroext %i.aw, ptr noundef nonnull %10) #9, !inline_history !15 ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0
  store i64 %i.bd, ptr %5, align 8
  %i.be = extractvalue { i64, i64 } %i.bc, 1
  store i64 %i.be, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.bf = load ptr, ptr %i.g, align 8
  %i.bg = call { i64, i64 } %i.bf(i8 noundef zeroext %i.ay, ptr noundef nonnull %10) #9, !inline_history !15 ; 2 uses
  %i.bh = extractvalue { i64, i64 } %i.bg, 0
  store i64 %i.bh, ptr %6, align 8
  %i.bi = extractvalue { i64, i64 } %i.bg, 1
  store i64 %i.bi, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.bj = call { i64, i64 } @parts64_mul(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %10) #9 ; 2 uses
  %i.bk = extractvalue { i64, i64 } %i.bj, 0
  store i64 %i.bk, ptr %7, align 8
  %i.bl = extractvalue { i64, i64 } %i.bj, 1
  store i64 %i.bl, ptr %i.ai, align 8
  %i.bm = load i32, ptr %i.l, align 8
  %i.bn = call { i64, i64 } @parts64_scalbn(ptr noundef nonnull %7, i32 noundef %i.bm, ptr noundef nonnull %10) #9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.bo = extractvalue { i64, i64 } %i.bn, 0
  store i64 %i.bo, ptr %8, align 8
  %i.bp = extractvalue { i64, i64 } %i.bn, 1
  store i64 %i.bp, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.bq = call { i64, i64 } @float16_unpack_canonical(i16 noundef zeroext %i.ba, ptr noundef nonnull %10) #9 ; 2 uses
  %i.br = extractvalue { i64, i64 } %i.bq, 0
  store i64 %i.br, ptr %9, align 8
  %i.bs = extractvalue { i64, i64 } %i.bq, 1
  store i64 %i.bs, ptr %i.ak, align 8
  %i.bt = call { i64, i64 } @parts64_addsub(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, i1 noundef zeroext false) #9 ; 2 uses
  %i.bu = extractvalue { i64, i64 } %i.bt, 0
  %i.bv = extractvalue { i64, i64 } %i.bt, 1
  store i64 %i.bu, ptr %8, align 8
  store i64 %i.bv, ptr %i.aj, align 8
  %i.bw = call zeroext i16 @float16_round_pack_canonical(ptr noundef nonnull %8, ptr noundef nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  store i16 %i.bw, ptr %i.az, align 2
  %i.bx = add nuw nsw i64 %.025, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bx, %i.ad
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !159
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fmla_idx_hb(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %5 = alloca %struct.FloatParts64, align 8       ; 5 uses
  %6 = alloca %struct.FloatParts64, align 8       ; 5 uses
  %7 = alloca %struct.FloatParts64, align 8       ; 5 uses
  %8 = alloca %struct.FloatParts64, align 8       ; 7 uses
  %9 = alloca %struct.FloatParts64, align 8       ; 5 uses
  %10 = alloca %struct.FP8MulContext, align 8     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.a = getelementptr i8, ptr %3, i64 12696
  %.val = load i64, ptr %i.a, align 8             ; 4 uses
  %i.b = getelementptr i8, ptr %3, i64 12776
  %.val26 = load i64, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !165)
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.d = and i64 %.val, 7
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @fp8_input_fmt, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !noalias !165
  store ptr %i.f, ptr %i.c, align 8, !alias.scope !165
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.h = lshr i64 %.val, 3
  %i.i = and i64 %i.h, 7
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @fp8_input_fmt, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !noalias !165
  store ptr %i.k, ptr %i.g, align 8, !alias.scope !165
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.m = trunc i64 %.val to i32
  %i.n = lshr i32 %i.m, 16
  %i.o = and i32 %i.n, 15
  %i.p = sub nsw i32 0, %i.o
  store i32 %i.p, ptr %i.l, align 8, !alias.scope !165
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i32 0, ptr %i.q, align 4, !alias.scope !165
  %i.r = and i64 %.val26, -15138817
  %i.s = and i64 %.val, 16384
  %.not.i = icmp eq i64 %i.s, 0
  %i.t = select i1 %.not.i, i64 0, i64 458752
  %i.u = or disjoint i64 %i.r, %i.t
  %i.v = or disjoint i64 %i.u, 8388608
  store i64 %i.v, ptr %10, align 8, !alias.scope !165
  %i.w = lshr i32 %4, 12
  %i.x = and i32 %i.w, 15
  %i.y = zext nneg i32 %i.x to i64
  %i.z = lshr i32 %4, 8
  %i.aa = and i32 %i.z, 3                         ; 2 uses
  %i.ab = shl nuw nsw i32 %i.aa, 3
  %i.ac = shl i32 %4, 3
  %i.ad = and i32 %i.ac, 2040                     ; 3 uses
  %i.ae = icmp eq i32 %i.aa, 2
  %.v.v.i = select i1 %i.ae, i32 %i.ad, i32 %i.ab ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.af = zext nneg i32 %.v.i to i64              ; 3 uses
  %i.ag = lshr exact i64 %i.af, 1
  %invariant.gep27 = getelementptr inbounds nuw i8, ptr %2, i64 %i.y
  %i.ah = lshr i32 %4, 10
  %.lobit = and i32 %i.ah, 1
  %i.ai = zext nneg i32 %.lobit to i64
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.bq, %bb.d ]    ; 2 uses
  %i.ao = shl nuw nsw i64 %.0, 1
  %gep28 = getelementptr inbounds nuw i8, ptr %invariant.gep27, i64 %i.ao
  %i.ap = load i8, ptr %gep28, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i64 [ %.0, %bb.b ], [ %i.bq, %bb.c ]  ; 3 uses
  %i.aq = shl nuw i64 %.1, 1
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.aq
  %i.ar = load i8, ptr %gep, align 1
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %0, i64 %.1 ; 2 uses
  %i.at = load i16, ptr %i.as, align 2
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.au = load ptr, ptr %i.c, align 8
  %i.av = call { i64, i64 } %i.au(i8 noundef zeroext %i.ar, ptr noundef nonnull %10) #9, !inline_history !15 ; 2 uses
  %i.aw = extractvalue { i64, i64 } %i.av, 0
  store i64 %i.aw, ptr %5, align 8
  %i.ax = extractvalue { i64, i64 } %i.av, 1
  store i64 %i.ax, ptr %i.aj, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.ay = load ptr, ptr %i.g, align 8
  %i.az = call { i64, i64 } %i.ay(i8 noundef zeroext %i.ap, ptr noundef nonnull %10) #9, !inline_history !15 ; 2 uses
  %i.ba = extractvalue { i64, i64 } %i.az, 0
  store i64 %i.ba, ptr %6, align 8
  %i.bb = extractvalue { i64, i64 } %i.az, 1
  store i64 %i.bb, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.bc = call { i64, i64 } @parts64_mul(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %10) #9 ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0
  store i64 %i.bd, ptr %7, align 8
  %i.be = extractvalue { i64, i64 } %i.bc, 1
  store i64 %i.be, ptr %i.al, align 8
  %i.bf = load i32, ptr %i.l, align 8
  %i.bg = call { i64, i64 } @parts64_scalbn(ptr noundef nonnull %7, i32 noundef %i.bf, ptr noundef nonnull %10) #9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.bh = extractvalue { i64, i64 } %i.bg, 0
  store i64 %i.bh, ptr %8, align 8
  %i.bi = extractvalue { i64, i64 } %i.bg, 1
  store i64 %i.bi, ptr %i.am, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.bj = call { i64, i64 } @float16_unpack_canonical(i16 noundef zeroext %i.at, ptr noundef nonnull %10) #9 ; 2 uses
  %i.bk = extractvalue { i64, i64 } %i.bj, 0
  store i64 %i.bk, ptr %9, align 8
  %i.bl = extractvalue { i64, i64 } %i.bj, 1
  store i64 %i.bl, ptr %i.an, align 8
  %i.bm = call { i64, i64 } @parts64_addsub(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, i1 noundef zeroext false) #9 ; 2 uses
  %i.bn = extractvalue { i64, i64 } %i.bm, 0
  %i.bo = extractvalue { i64, i64 } %i.bm, 1
  store i64 %i.bn, ptr %8, align 8
  store i64 %i.bo, ptr %i.am, align 8
  %i.bp = call zeroext i16 @float16_round_pack_canonical(ptr noundef nonnull %8, ptr noundef nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  store i16 %i.bp, ptr %i.as, align 2
  %i.bq = add nuw i64 %.1, 1                      ; 4 uses
  %i.br = and i64 %i.bq, 7
  %exitcond = icmp eq i64 %i.br, 0
  br i1 %exitcond, label %bb.d, label %bb.c, !llvm.loop !163

bb.d:                                             ; preds = %bb.c
  %i.bs = icmp ult i64 %i.bq, %i.ag
  br i1 %i.bs, label %bb.b, label %bb.e, !llvm.loop !164

bb.e:                                             ; preds = %bb.d
  %i.bt = icmp samesign ult i32 %.v.v.i, %i.ad
  br i1 %i.bt, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.bu = add nuw nsw i32 %i.ad, 8
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = getelementptr i8, ptr %0, i64 %i.af
  %i.bx = xor i64 %i.af, -1
  %i.by = add nsw i64 %i.bx, %i.bv
  %i.bz = and i64 %i.by, -8
  %i.ca = add nsw i64 %i.bz, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.bw, i8 0, i64 range(i64 0, 2041) %i.ca, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.e, %.lr.ph.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fmla_sb(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %5 = alloca %struct.FloatParts64, align 8       ; 5 uses
  %6 = alloca %struct.FloatParts64, align 8       ; 5 uses
  %7 = alloca %struct.FloatParts64, align 8       ; 5 uses
  %8 = alloca %struct.FloatParts64, align 8       ; 7 uses
  %9 = alloca %struct.FloatParts64, align 8       ; 5 uses
  %10 = alloca %struct.FP8MulContext, align 8     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.a = getelementptr i8, ptr %3, i64 12696
  %.val = load i64, ptr %i.a, align 8             ; 4 uses
  %i.b = getelementptr i8, ptr %3, i64 12776
  %.val24 = load i64, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.d = and i64 %.val, 7
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @fp8_input_fmt, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !noalias !169
  store ptr %i.f, ptr %i.c, align 8, !alias.scope !169
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.h = lshr i64 %.val, 3
  %i.i = and i64 %i.h, 7
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @fp8_input_fmt, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !noalias !169
  store ptr %i.k, ptr %i.g, align 8, !alias.scope !169
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.m = trunc i64 %.val to i32
  %i.n = lshr i32 %i.m, 16
  %i.o = and i32 %i.n, 127
  %i.p = sub nsw i32 0, %i.o
  store i32 %i.p, ptr %i.l, align 8, !alias.scope !169
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i32 0, ptr %i.q, align 4, !alias.scope !169
  %i.r = and i64 %.val24, -15138817
  %i.s = and i64 %.val, 16384
  %.not.i = icmp eq i64 %i.s, 0
  %i.t = select i1 %.not.i, i64 0, i64 458752
  %i.u = or disjoint i64 %i.r, %i.t
  %i.v = or disjoint i64 %i.u, 8388608
  store i64 %i.v, ptr %10, align 8, !alias.scope !169
  %i.w = lshr i32 %4, 10
  %i.x = and i32 %i.w, 3
  %i.y = zext nneg i32 %i.x to i64
  %i.z = lshr i32 %4, 8
  %i.aa = and i32 %i.z, 3                         ; 2 uses
  %i.ab = shl nuw nsw i32 %i.aa, 3
  %i.ac = shl i32 %4, 3
  %i.ad = and i32 %i.ac, 2040                     ; 3 uses
  %i.ae = icmp eq i32 %i.aa, 2
  %.v.v.i = select i1 %i.ae, i32 %i.ad, i32 %i.ab ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.af = zext nneg i32 %.v.i to i64              ; 3 uses
  %i.ag = lshr exact i64 %i.af, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.am = icmp samesign ult i32 %.v.v.i, %i.ad
  br i1 %i.am, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.an = add nuw nsw i32 %i.ad, 8
  %i.ao = zext nneg i32 %i.an to i64
  %i.ap = getelementptr i8, ptr %0, i64 %i.af
  %i.aq = xor i64 %i.af, -1
  %i.ar = add nsw i64 %i.aq, %i.ao
  %i.as = and i64 %i.ar, -8
  %i.at = add nsw i64 %i.as, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.ap, i8 0, i64 range(i64 0, 2041) %i.at, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.b, %.lr.ph.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %.025 = phi i64 [ 0, %bb.a ], [ %i.by, %bb.c ]  ; 3 uses
  %i.au = shl nuw nsw i64 %.025, 2
  %i.av = or disjoint i64 %i.au, %i.y             ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 %i.av
  %i.az = load i8, ptr %i.ay, align 1
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.025 ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.bc = load ptr, ptr %i.c, align 8
  %i.bd = call { i64, i64 } %i.bc(i8 noundef zeroext %i.ax, ptr noundef nonnull %10) #9, !inline_history !15 ; 2 uses
  %i.be = extractvalue { i64, i64 } %i.bd, 0
  store i64 %i.be, ptr %5, align 8
  %i.bf = extractvalue { i64, i64 } %i.bd, 1
  store i64 %i.bf, ptr %i.ah, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.bg = load ptr, ptr %i.g, align 8
  %i.bh = call { i64, i64 } %i.bg(i8 noundef zeroext %i.az, ptr noundef nonnull %10) #9, !inline_history !15 ; 2 uses
  %i.bi = extractvalue { i64, i64 } %i.bh, 0
  store i64 %i.bi, ptr %6, align 8
  %i.bj = extractvalue { i64, i64 } %i.bh, 1
  store i64 %i.bj, ptr %i.ai, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.bk = call { i64, i64 } @parts64_mul(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %10) #9 ; 2 uses
  %i.bl = extractvalue { i64, i64 } %i.bk, 0
  store i64 %i.bl, ptr %7, align 8
  %i.bm = extractvalue { i64, i64 } %i.bk, 1
  store i64 %i.bm, ptr %i.aj, align 8
  %i.bn = load i32, ptr %i.l, align 8
  %i.bo = call { i64, i64 } @parts64_scalbn(ptr noundef nonnull %7, i32 noundef %i.bn, ptr noundef nonnull %10) #9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.bp = extractvalue { i64, i64 } %i.bo, 0
  store i64 %i.bp, ptr %8, align 8
  %i.bq = extractvalue { i64, i64 } %i.bo, 1
  store i64 %i.bq, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.br = call { i64, i64 } @float32_unpack_canonical(i32 noundef %i.bb, ptr noundef nonnull %10) #9 ; 2 uses
  %i.bs = extractvalue { i64, i64 } %i.br, 0
  store i64 %i.bs, ptr %9, align 8
  %i.bt = extractvalue { i64, i64 } %i.br, 1
  store i64 %i.bt, ptr %i.al, align 8
  %i.bu = call { i64, i64 } @parts64_addsub(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, i1 noundef zeroext false) #9 ; 2 uses
  %i.bv = extractvalue { i64, i64 } %i.bu, 0
  %i.bw = extractvalue { i64, i64 } %i.bu, 1
  store i64 %i.bv, ptr %8, align 8
  store i64 %i.bw, ptr %i.ak, align 8
  %i.bx = call i32 @float32_round_pack_canonical(ptr noundef nonnull %8, ptr noundef nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  store i32 %i.bx, ptr %i.ba, align 4
  %i.by = add nuw nsw i64 %.025, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.by, %i.ag
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !168
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fmla_idx_sb(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %5 = alloca %struct.FloatParts64, align 8       ; 5 uses
  %6 = alloca %struct.FloatParts64, align 8       ; 5 uses
  %7 = alloca %struct.FloatParts64, align 8       ; 5 uses
  %8 = alloca %struct.FloatParts64, align 8       ; 7 uses
  %9 = alloca %struct.FloatParts64, align 8       ; 5 uses
  %10 = alloca %struct.FP8MulContext, align 8     ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.a = getelementptr i8, ptr %3, i64 12696
  %.val = load i64, ptr %i.a, align 8             ; 4 uses
  %i.b = getelementptr i8, ptr %3, i64 12776
  %.val26 = load i64, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %i.c = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.d = and i64 %.val, 7
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @fp8_input_fmt, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !noalias !174
  store ptr %i.f, ptr %i.c, align 8, !alias.scope !174
  %i.g = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.h = lshr i64 %.val, 3
  %i.i = and i64 %i.h, 7
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @fp8_input_fmt, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !noalias !174
  store ptr %i.k, ptr %i.g, align 8, !alias.scope !174
  %i.l = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 2 uses
  %i.m = trunc i64 %.val to i32
  %i.n = lshr i32 %i.m, 16
  %i.o = and i32 %i.n, 127
  %i.p = sub nsw i32 0, %i.o
  store i32 %i.p, ptr %i.l, align 8, !alias.scope !174
  %i.q = getelementptr inbounds nuw i8, ptr %10, i64 28
  store i32 0, ptr %i.q, align 4, !alias.scope !174
  %i.r = and i64 %.val26, -15138817
  %i.s = and i64 %.val, 16384
  %.not.i = icmp eq i64 %i.s, 0
  %i.t = select i1 %.not.i, i64 0, i64 458752
  %i.u = or disjoint i64 %i.r, %i.t
  %i.v = or disjoint i64 %i.u, 8388608
  store i64 %i.v, ptr %10, align 8, !alias.scope !174
  %i.w = lshr i32 %4, 10
  %i.x = and i32 %i.w, 3
  %i.y = zext nneg i32 %i.x to i64
  %i.z = lshr i32 %4, 12
  %i.aa = and i32 %i.z, 15
  %i.ab = zext nneg i32 %i.aa to i64
  %i.ac = lshr i32 %4, 8
  %i.ad = and i32 %i.ac, 3                        ; 2 uses
  %i.ae = shl nuw nsw i32 %i.ad, 3
  %i.af = shl i32 %4, 3
  %i.ag = and i32 %i.af, 2040                     ; 3 uses
  %i.ah = icmp eq i32 %i.ad, 2
  %.v.v.i = select i1 %i.ah, i32 %i.ag, i32 %i.ae ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.ai = zext nneg i32 %.v.i to i64              ; 3 uses
  %i.aj = lshr exact i64 %i.ai, 2
  %invariant.gep27 = getelementptr inbounds nuw i8, ptr %2, i64 %i.ab
  %invariant.gep = getelementptr i8, ptr %1, i64 %i.y
  %i.ak = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.br, %bb.d ]    ; 2 uses
  %i.ap = shl nuw nsw i64 %.0, 2
  %gep28 = getelementptr inbounds nuw i8, ptr %invariant.gep27, i64 %i.ap
  %i.aq = load i8, ptr %gep28, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.1 = phi i64 [ %.0, %bb.b ], [ %i.br, %bb.c ]  ; 3 uses
  %i.ar = shl nuw i64 %.1, 2
  %gep = getelementptr i8, ptr %invariant.gep, i64 %i.ar
  %i.as = load i8, ptr %gep, align 1
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.1 ; 2 uses
  %i.au = load i32, ptr %i.at, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.av = load ptr, ptr %i.c, align 8
  %i.aw = call { i64, i64 } %i.av(i8 noundef zeroext %i.as, ptr noundef nonnull %10) #9, !inline_history !15 ; 2 uses
  %i.ax = extractvalue { i64, i64 } %i.aw, 0
  store i64 %i.ax, ptr %5, align 8
  %i.ay = extractvalue { i64, i64 } %i.aw, 1
  store i64 %i.ay, ptr %i.ak, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.az = load ptr, ptr %i.g, align 8
  %i.ba = call { i64, i64 } %i.az(i8 noundef zeroext %i.aq, ptr noundef nonnull %10) #9, !inline_history !15 ; 2 uses
  %i.bb = extractvalue { i64, i64 } %i.ba, 0
  store i64 %i.bb, ptr %6, align 8
  %i.bc = extractvalue { i64, i64 } %i.ba, 1
  store i64 %i.bc, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.bd = call { i64, i64 } @parts64_mul(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %10) #9 ; 2 uses
  %i.be = extractvalue { i64, i64 } %i.bd, 0
  store i64 %i.be, ptr %7, align 8
  %i.bf = extractvalue { i64, i64 } %i.bd, 1
  store i64 %i.bf, ptr %i.am, align 8
  %i.bg = load i32, ptr %i.l, align 8
  %i.bh = call { i64, i64 } @parts64_scalbn(ptr noundef nonnull %7, i32 noundef %i.bg, ptr noundef nonnull %10) #9 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.bi = extractvalue { i64, i64 } %i.bh, 0
  store i64 %i.bi, ptr %8, align 8
  %i.bj = extractvalue { i64, i64 } %i.bh, 1
  store i64 %i.bj, ptr %i.an, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #9
  %i.bk = call { i64, i64 } @float32_unpack_canonical(i32 noundef %i.au, ptr noundef nonnull %10) #9 ; 2 uses
  %i.bl = extractvalue { i64, i64 } %i.bk, 0
  store i64 %i.bl, ptr %9, align 8
  %i.bm = extractvalue { i64, i64 } %i.bk, 1
  store i64 %i.bm, ptr %i.ao, align 8
  %i.bn = call { i64, i64 } @parts64_addsub(ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10, i1 noundef zeroext false) #9 ; 2 uses
  %i.bo = extractvalue { i64, i64 } %i.bn, 0
  %i.bp = extractvalue { i64, i64 } %i.bn, 1
  store i64 %i.bo, ptr %8, align 8
  store i64 %i.bp, ptr %i.an, align 8
  %i.bq = call i32 @float32_round_pack_canonical(ptr noundef nonnull %8, ptr noundef nonnull %10) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  store i32 %i.bq, ptr %i.at, align 4
  %i.br = add nuw nsw i64 %.1, 1                  ; 4 uses
  %i.bs = and i64 %i.br, 3
  %exitcond = icmp eq i64 %i.bs, 0
  br i1 %exitcond, label %bb.d, label %bb.c, !llvm.loop !172

bb.d:                                             ; preds = %bb.c
  %i.bt = icmp samesign ult i64 %i.br, %i.aj
  br i1 %i.bt, label %bb.b, label %bb.e, !llvm.loop !173

bb.e:                                             ; preds = %bb.d
  %i.bu = icmp samesign ult i32 %.v.v.i, %i.ag
  br i1 %i.bu, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.e
  %i.bv = add nuw nsw i32 %i.ag, 8
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr i8, ptr %0, i64 %i.ai
  %i.by = xor i64 %i.ai, -1
  %i.bz = add nsw i64 %i.by, %i.bw
  %i.ca = and i64 %i.bz, -8
  %i.cb = add nsw i64 %i.ca, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.bx, i8 0, i64 range(i64 0, 2041) %i.cb, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.e, %.lr.ph.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #9
  ret void
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fdot_sb(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %5 = alloca %struct.FloatParts64, align 8       ; 7 uses
  %6 = alloca %struct.FloatParts64, align 8       ; 5 uses
  %7 = alloca %struct.FP8MulContext, align 8      ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.a = getelementptr i8, ptr %3, i64 12696
  %.val = load i64, ptr %i.a, align 8             ; 4 uses
  %i.b = getelementptr i8, ptr %3, i64 12776
  %.val19 = load i64, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = and i64 %.val, 7
  %i.e = getelementptr inbounds nuw [8 x i8], ptr @fp8_input_fmt, i64 %i.d
  %i.f = load ptr, ptr %i.e, align 8, !noalias !178
  store ptr %i.f, ptr %i.c, align 8, !alias.scope !178
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.h = lshr i64 %.val, 3
  %i.i = and i64 %i.h, 7
  %i.j = getelementptr inbounds nuw [8 x i8], ptr @fp8_input_fmt, i64 %i.i
  %i.k = load ptr, ptr %i.j, align 8, !noalias !178
  store ptr %i.k, ptr %i.g, align 8, !alias.scope !178
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.m = trunc i64 %.val to i32
  %i.n = lshr i32 %i.m, 16
  %i.o = and i32 %i.n, 127
  %i.p = sub nsw i32 0, %i.o
  store i32 %i.p, ptr %i.l, align 8, !alias.scope !178
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 28
  store i32 0, ptr %i.q, align 4, !alias.scope !178
  %i.r = and i64 %.val19, -15138817
  %i.s = and i64 %.val, 16384
  %.not.i = icmp eq i64 %i.s, 0
  %i.t = select i1 %.not.i, i64 0, i64 458752
  %i.u = or disjoint i64 %i.r, %i.t
  %i.v = or disjoint i64 %i.u, 8388608
  store i64 %i.v, ptr %7, align 8, !alias.scope !178
  %i.w = lshr i32 %4, 8
  %i.x = and i32 %i.w, 3                          ; 2 uses
  %i.y = shl nuw nsw i32 %i.x, 3
  %i.z = shl i32 %4, 3
  %i.aa = and i32 %i.z, 2040                      ; 3 uses
  %i.ab = icmp eq i32 %i.x, 2
  %.v.v.i = select i1 %i.ab, i32 %i.aa, i32 %i.y  ; 2 uses
  %.v.i = add nuw nsw i32 %.v.v.i, 8
  %i.ac = zext nneg i32 %.v.i to i64              ; 3 uses
  %i.ad = lshr exact i64 %i.ac, 2
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.ag = icmp samesign ult i32 %.v.v.i, %i.aa
  br i1 %i.ag, label %.lr.ph.preheader.i, label %clear_tail.exit

.lr.ph.preheader.i:                               ; preds = %bb.b
  %i.ah = add nuw nsw i32 %i.aa, 8
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr i8, ptr %0, i64 %i.ac
  %i.ak = xor i64 %i.ac, -1
  %i.al = add nsw i64 %i.ak, %i.ai
  %i.am = and i64 %i.al, -8
  %i.an = add nsw i64 %i.am, 8
  call void @llvm.memset.p0.i64(ptr align 8 %i.aj, i8 0, i64 range(i64 0, 2041) %i.an, i1 false)
  br label %clear_tail.exit

clear_tail.exit:                                  ; preds = %bb.b, %.lr.ph.preheader.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  ret void

bb.c:                                             ; preds = %bb.a, %bb.c
  %.020 = phi i64 [ 0, %bb.a ], [ %i.bg, %bb.c ]  ; 4 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.020
  %i.ap = load i32, ptr %i.ao, align 4
  %i.aq = zext i32 %i.ap to i64
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %.020
  %i.as = load i32, ptr %i.ar, align 4
  %i.at = zext i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.020 ; 2 uses
  %i.av = load i32, ptr %i.au, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  %i.aw = call fastcc { i64, i64 } @f8dot(i64 noundef %i.aq, i64 noundef %i.at, i32 noundef 4, ptr noundef nonnull %7) ; 2 uses
  %i.ax = extractvalue { i64, i64 } %i.aw, 0
  store i64 %i.ax, ptr %5, align 8
  %i.ay = extractvalue { i64, i64 } %i.aw, 1
  store i64 %i.ay, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.az = call { i64, i64 } @float32_unpack_canonical(i32 noundef %i.av, ptr noundef nonnull %7) #9 ; 2 uses
  %i.ba = extractvalue { i64, i64 } %i.az, 0
  store i64 %i.ba, ptr %6, align 8
  %i.bb = extractvalue { i64, i64 } %i.az, 1
  store i64 %i.bb, ptr %i.af, align 8
  %i.bc = call { i64, i64 } @parts64_addsub(ptr noundef nonnull %5, ptr noundef nonnull %6, ptr noundef nonnull %7, i1 noundef zeroext false) #9 ; 2 uses
  %i.bd = extractvalue { i64, i64 } %i.bc, 0
  %i.be = extractvalue { i64, i64 } %i.bc, 1
  store i64 %i.bd, ptr %5, align 8
  store i64 %i.be, ptr %i.ae, align 8
  %i.bf = call i32 @float32_round_pack_canonical(ptr noundef nonnull %5, ptr noundef nonnull %7) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  store i32 %i.bf, ptr %i.au, align 4
  %i.bg = add nuw nsw i64 %.020, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.bg, %i.ad
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !177
}

; Function Attrs: noinline nounwind sspstrong uwtable
define dso_local void @helper_gvec_fdot_idx_sb(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) #0 {
bb.a:
  %5 = alloca %struct.FloatParts64, align 8       ; 11 uses
  %6 = alloca %struct.FloatParts64, align 8       ; 11 uses
  %7 = alloca %struct.FloatParts64, align 8       ; 11 uses
  %8 = alloca %struct.FloatParts64, align 8       ; 7 uses
  %9 = alloca %struct.FloatParts64, align 8       ; 5 uses
  %10 = alloca %struct.FP8MulContext, align 8     ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #9
  %i.a = getelementptr i8, ptr %3, i64 12696
  %.val = load i64, ptr %i.a, align 8             ; 4 uses
  %i.b = getelementptr i8, ptr %3, i64 12776
  %.val23 = load i64, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !183)
end_hunk_0
