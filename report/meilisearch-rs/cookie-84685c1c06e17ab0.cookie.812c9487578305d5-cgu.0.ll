Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/cookie-84685c1c06e17ab0.cookie.812c9487578305d5-cgu.0?download=true
inline.NumInlined: 677
inline.NumDeleted: 320
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN4core4hash11BuildHasher8hash_one17h72b89cf391d96e10E:bb.a
  store i64 %i.c, ptr %i.b, align 8, !alias.scope !175
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.e, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !175
  %.sroa.59.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 %i.d, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !175
  %.sroa.610.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store i64 %i.f, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !175
  %.sroa.711.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %.0.val, ptr %.sroa.711.0..sroa_idx.i, align 8, !alias.scope !175
  %.sroa.812.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %.8.val, ptr %.sroa.812.0..sroa_idx.i, align 8, !alias.scope !175
  %.sroa.913.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.913.0..sroa_idx.i, i8 0, i64 24, i1 false), !alias.scope !175
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h82890d9d82872bf2E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !178
  store i8 -1, ptr %i.a, align 1, !noalias !178
  call fastcc void @"_ZN71_$LT$core..hash..sip..Hasher$LT$S$GT$$u20$as$u20$core..hash..Hasher$GT$5write17h82890d9d82872bf2E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 1), !noalias !190
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !178
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !alias.scope !191
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.48.0..sroa_idx.i, align 8, !alias.scope !191
  %.sroa.17.0.copyload.i.i = load i64, ptr %.sroa.59.0..sroa_idx.i, align 8, !alias.scope !191 ; 3 uses
  %.sroa.22.0.copyload.i.i = load i64, ptr %.sroa.610.0..sroa_idx.i, align 8, !alias.scope !191
  %i.g = load i64, ptr %.sroa.913.0..sroa_idx.i, align 8, !alias.scope !191, !noundef !3
  %i.h = shl i64 %i.g, 56
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !191, !noundef !3
  %i.k = or i64 %i.h, %i.j                        ; 2 uses
  %i.l = xor i64 %i.k, %.sroa.22.0.copyload.i.i   ; 3 uses
  %i.m = add i64 %.sroa.17.0.copyload.i.i, %.sroa.0.0.copyload.i.i ; 3 uses
  %i.n = add i64 %i.l, %.sroa.10.0.copyload.i.i   ; 2 uses
  %i.o = tail call i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i, i64 %.sroa.17.0.copyload.i.i, i64 13)
  %i.p = xor i64 %i.o, %i.m                       ; 3 uses
  %i.q = tail call i64 @llvm.fshl.i64(i64 %i.l, i64 %i.l, i64 16)
  %i.r = xor i64 %i.q, %i.n                       ; 3 uses
  %i.s = tail call i64 @llvm.fshl.i64(i64 %i.m, i64 %i.m, i64 32)
  %i.t = add i64 %i.n, %i.p                       ; 3 uses
  %i.u = add i64 %i.r, %i.s                       ; 2 uses
  %i.v = tail call i64 @llvm.fshl.i64(i64 %i.p, i64 %i.p, i64 17)
  %i.w = xor i64 %i.t, %i.v                       ; 3 uses
  %i.x = tail call i64 @llvm.fshl.i64(i64 %i.r, i64 %i.r, i64 21)
  %i.y = xor i64 %i.x, %i.u                       ; 3 uses
  %i.z = tail call i64 @llvm.fshl.i64(i64 %i.t, i64 %i.t, i64 32)
  %i.aa = xor i64 %i.u, %i.k
  %i.ab = xor i64 %i.z, 255
  %i.ac = add i64 %i.aa, %i.w                     ; 3 uses
  %i.ad = add i64 %i.y, %i.ab                     ; 2 uses
  %i.ae = tail call i64 @llvm.fshl.i64(i64 %i.w, i64 %i.w, i64 13)
  %i.af = xor i64 %i.ac, %i.ae                    ; 3 uses
  %i.ag = tail call i64 @llvm.fshl.i64(i64 %i.y, i64 %i.y, i64 16)
  %i.ah = xor i64 %i.ag, %i.ad                    ; 3 uses
  %i.ai = tail call i64 @llvm.fshl.i64(i64 %i.ac, i64 %i.ac, i64 32)
  %i.aj = add i64 %i.af, %i.ad                    ; 3 uses
  %i.ak = add i64 %i.ah, %i.ai                    ; 2 uses
  %i.al = tail call i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 17)
  %i.am = xor i64 %i.aj, %i.al                    ; 3 uses
  %i.an = tail call i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 21)
  %i.ao = xor i64 %i.an, %i.ak                    ; 3 uses
  %i.ap = tail call i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 32)
  %i.aq = add i64 %i.am, %i.ak                    ; 3 uses
  %i.ar = add i64 %i.ao, %i.ap                    ; 2 uses
  %i.as = tail call i64 @llvm.fshl.i64(i64 %i.am, i64 %i.am, i64 13)
  %i.at = xor i64 %i.as, %i.aq                    ; 3 uses
  %i.au = tail call i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 16)
  %i.av = xor i64 %i.au, %i.ar                    ; 3 uses
  %i.aw = tail call i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 32)
  %i.ax = add i64 %i.at, %i.ar                    ; 3 uses
  %i.ay = add i64 %i.av, %i.aw                    ; 2 uses
  %i.az = tail call i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 17)
  %i.ba = xor i64 %i.az, %i.ax                    ; 3 uses
  %i.bb = tail call i64 @llvm.fshl.i64(i64 %i.av, i64 %i.av, i64 21)
  %i.bc = xor i64 %i.bb, %i.ay                    ; 3 uses
  %i.bd = tail call i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 32)
  %i.be = add i64 %i.ba, %i.ay
  %i.bf = add i64 %i.bc, %i.bd                    ; 2 uses
  %i.bg = tail call i64 @llvm.fshl.i64(i64 %i.ba, i64 %i.ba, i64 13)
  %i.bh = xor i64 %i.bg, %i.be                    ; 3 uses
  %i.bi = tail call i64 @llvm.fshl.i64(i64 %i.bc, i64 %i.bc, i64 16)
  %i.bj = xor i64 %i.bi, %i.bf                    ; 2 uses
  %i.bk = add i64 %i.bh, %i.bf                    ; 3 uses
  %i.bl = tail call i64 @llvm.fshl.i64(i64 %i.bh, i64 %i.bh, i64 17)
  %i.bm = tail call i64 @llvm.fshl.i64(i64 %i.bj, i64 %i.bj, i64 21)
  %i.bn = tail call i64 @llvm.fshl.i64(i64 %i.bk, i64 %i.bk, i64 32)
  %i.bo = xor i64 %i.bm, %i.bl
  %i.bp = xor i64 %i.bo, %i.bn
  %i.bq = xor i64 %i.bp, %i.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %i.bq
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define internal fastcc noundef zeroext i1 @"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(none) %2, i64 noundef %3) unnamed_addr #8 {
bb.a:
  %.not = icmp eq i64 %1, %3
  br i1 %.not, label %.preheader.preheader, label %.loopexit

.preheader.preheader:                             ; preds = %bb.a
  %i.a = icmp eq i64 %1, 0
  br i1 %i.a, label %.loopexit, label %.lr.ph

.preheader:                                       ; preds = %.lr.ph
  %i.b = getelementptr inbounds nuw i8, ptr %.sroa.01.014, i64 1
  %i.c = add i64 %.sroa.6.013, -1                 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.02.012, i64 1
  %i.e = add i64 %.sroa.63.011, -1                ; 2 uses
  %i.f = icmp eq i64 %i.c, 0
  %i.g = icmp eq i64 %i.e, 0
  %or.cond.not = or i1 %i.g, %i.f
  br i1 %or.cond.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.preheader, %.preheader
  %.sroa.01.014 = phi ptr [ %i.b, %.preheader ], [ %0, %.preheader.preheader ] ; 2 uses
  %.sroa.6.013 = phi i64 [ %i.c, %.preheader ], [ %1, %.preheader.preheader ]
  %.sroa.02.012 = phi ptr [ %i.d, %.preheader ], [ %2, %.preheader.preheader ] ; 2 uses
  %.sroa.63.011 = phi i64 [ %i.e, %.preheader ], [ %1, %.preheader.preheader ]
  %i.h = load i8, ptr %.sroa.01.014, align 1, !noundef !3 ; 2 uses
  %i.i = add i8 %i.h, -65
  %i.j = icmp ult i8 %i.i, 26
  %i.k = select i1 %i.j, i8 32, i8 0
  %.sroa.04.0 = or i8 %i.k, %i.h
  %i.l = load i8, ptr %.sroa.02.012, align 1, !noundef !3 ; 2 uses
  %i.m = add i8 %i.l, -65
  %i.n = icmp ult i8 %i.m, 26
  %i.o = select i1 %i.n, i8 32, i8 0
  %.sroa.05.0 = or i8 %i.o, %i.l
  %i.p = icmp eq i8 %.sroa.04.0, %.sroa.05.0      ; 3 uses
  br i1 %i.p, label %.preheader, label %.loopexit

.loopexit:                                        ; preds = %.preheader, %.lr.ph, %.preheader.preheader, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %.preheader.preheader ], [ %i.p, %.lr.ph ], [ %i.p, %.preheader ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef nonnull align 4 dereferenceable(8) %4) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 1                ; 4 uses
  %i.c = alloca [40 x i8], align 1                ; 4 uses
  %i.d = alloca [40 x i8], align 1                ; 4 uses
  %i.e = alloca [40 x i8], align 1                ; 4 uses
  %i.f = alloca [40 x i8], align 1                ; 4 uses
  %i.g = alloca [40 x i8], align 1                ; 4 uses
  %i.h = alloca [40 x i8], align 1                ; 4 uses
  %i.i = alloca [40 x i8], align 1                ; 4 uses
  %i.j = alloca [40 x i8], align 1                ; 4 uses
  %i.k = alloca [40 x i8], align 1                ; 4 uses
  %i.l = alloca [40 x i8], align 1                ; 4 uses
  %i.m = alloca [40 x i8], align 1                ; 4 uses
  %i.n = alloca [40 x i8], align 1                ; 4 uses
  %i.o = alloca [40 x i8], align 1                ; 4 uses
  %i.p = alloca [40 x i8], align 1                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 7 uses
  %i.s = load i16, ptr %1, align 8, !range !196, !noundef !3
  switch i16 %i.s, label %default.unreachable194 [
    i16 0, label %bb.b
    i16 1, label %bb.d
    i16 2, label %bb.eu
    i16 3, label %bb.ex
    i16 4, label %bb.ey
  ]

default.unreachable194:                           ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !3, !align !4, !noundef !3
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.w = load i64, ptr %i.v, align 8, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !206)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !209, !noalias !212, !noundef !3 ; 3 uses
  %i.z = load i64, ptr %2, align 8, !range !106, !alias.scope !209, !noalias !212, !noundef !3
  %i.aa = sub i64 %i.z, %i.y
  %i.ab = icmp ugt i64 %i.w, %i.aa
  br i1 %i.ab, label %bb.c, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit", !prof !155

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hdc6b4a90a0f81af9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.y, i64 noundef %i.w)
  %.pre.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !215, !noalias !212
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit": ; preds = %bb.b, %bb.c
  %i.ac = phi i64 [ %i.y, %bb.b ], [ %.pre.i.i.i.i, %bb.c ] ; 3 uses
  %i.ad = icmp sgt i64 %i.ac, -1
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !215, !noalias !212, !nonnull !3, !noundef !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ac
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ag, ptr nonnull readonly align 1 %i.u, i64 %i.w, i1 false), !noalias !215
  %i.ah = add i64 %i.ac, %i.w
  store i64 %i.ah, ptr %i.x, align 8, !alias.scope !215, !noalias !212
  br label %.loopexit

bb.d:                                             ; preds = %bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 2
  %.sroa.086.0.copyload = load i48, ptr %i.ai, align 2 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !216)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %.sroa.024.1.extract.shift.i = lshr i48 %.sroa.086.0.copyload, 8 ; 5 uses
  %.sroa.024.1.extract.trunc.i = trunc i48 %.sroa.024.1.extract.shift.i to i8 ; 10 uses
  %.sroa.024.2.extract.shift.i = lshr i48 %.sroa.086.0.copyload, 16 ; 2 uses
  %.sroa.024.2.extract.trunc.i = trunc i48 %.sroa.024.2.extract.shift.i to i8 ; 5 uses
  %.sroa.024.3.extract.shift.i = lshr i48 %.sroa.086.0.copyload, 24 ; 2 uses
  %trunc.i = trunc i48 %.sroa.086.0.copyload to i8
  switch i8 %trunc.i, label %bb.e [
    i8 0, label %bb.f
    i8 1, label %bb.h
    i8 2, label %bb.t
    i8 3, label %switch.lookup
    i8 4, label %bb.ac
    i8 5, label %bb.ad
    i8 6, label %bb.ae
    i8 7, label %bb.am
    i8 8, label %bb.an
    i8 9, label %bb.ap
    i8 10, label %bb.aq
    i8 11, label %bb.cd
    i8 12, label %bb.cn
    i8 13, label %bb.cs
    i8 14, label %.loopexit
    i8 15, label %bb.cx
    i8 16, label %.loopexit
  ]

bb.e:                                             ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$15iso_week_number17h0f1afbd6a8c06207E.exit.i", %bb.cx, %bb.ap, %bb.am, %bb.ac, %bb.t, %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i", %bb.d
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 4, !alias.scope !223, !noalias !226, !noundef !3 ; 2 uses
  %.not.i.i = icmp eq i8 %i.ak, 0
  br i1 %.not.i.i, label %bb.g, label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i"

bb.g:                                             ; preds = %bb.f
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val.i = load i32, ptr %i.al, align 4, !alias.scope !219, !noalias !228 ; 2 uses
  %i.am = and i32 %.val.i, 511                    ; 2 uses
  %i.an = lshr i32 %.val.i, 9
  %.lobit.i.i.i = and i32 %i.an, 1
  %i.ao = add nuw nsw i32 %.lobit.i.i.i, 59       ; 2 uses
  %.not.i.i.i = icmp samesign ugt i32 %i.am, %i.ao ; 2 uses
  %..i.i.i = select i1 %.not.i.i.i, i32 2, i32 0
  %.7.i.i.i = select i1 %.not.i.i.i, i32 %i.ao, i32 0
  %i.ap = sub nsw i32 %i.am, %.7.i.i.i            ; 2 uses
  %i.aq = mul nsw i32 %i.ap, 268
  %i.ar = add nsw i32 %i.aq, 8028
  %i.as = lshr i32 %i.ar, 13                      ; 2 uses
  %i.at = add nuw nsw i32 %i.as, %..i.i.i         ; 2 uses
  %i.au = and i32 %i.at, 255
  %i.av = icmp ne i32 %i.au, 0
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = mul nuw nsw i32 %i.as, 3917
  %i.ax = add nuw nsw i32 %i.aw, 28902
  %i.ay = lshr i32 %i.ax, 7
  %i.az = sub nsw i32 %i.ap, %i.ay                ; 2 uses
  %i.ba = and i32 %i.az, 255
  %.sroa.43.0.extract.trunc.i.i = trunc i32 %i.at to i8 ; 2 uses
  %.sroa.54.0.extract.trunc.i.i = trunc i32 %i.az to i8 ; 2 uses
  %i.bb = add i8 %.sroa.43.0.extract.trunc.i.i, -1
  %i.bc = icmp ult i8 %i.bb, 12
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw i8, ptr %4, i64 6
  store i8 %.sroa.43.0.extract.trunc.i.i, ptr %i.bd, align 2, !alias.scope !223, !noalias !226
  %i.be = icmp ne i32 %i.ba, 0
  tail call void @llvm.assume(i1 %i.be)
  store i8 %.sroa.54.0.extract.trunc.i.i, ptr %i.aj, align 4, !alias.scope !223, !noalias !226
  br label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i"

"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i": ; preds = %bb.g, %bb.f
  %.sroa.0.0.i.i = phi i8 [ %.sroa.54.0.extract.trunc.i.i, %bb.g ], [ %i.ak, %bb.f ] ; 3 uses
  switch i8 %.sroa.024.1.extract.trunc.i, label %bb.e [
    i8 0, label %bb.cy
    i8 1, label %bb.cz
    i8 2, label %bb.da
  ]

bb.h:                                             ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %4, i64 6 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 2, !range !229, !alias.scope !230, !noalias !226, !noundef !3 ; 2 uses
  %.not.i.i181.i = icmp eq i8 %i.bg, 0
  br i1 %.not.i.i181.i, label %bb.i, label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i"

bb.i:                                             ; preds = %bb.h
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val162.i = load i32, ptr %i.bh, align 4, !range !235, !alias.scope !219, !noalias !228, !noundef !3 ; 2 uses
  %i.bi = and i32 %.val162.i, 511                 ; 2 uses
  %i.bj = lshr i32 %.val162.i, 9
  %.lobit.i.i.i.i.i = and i32 %i.bj, 1
  %i.bk = add nuw nsw i32 %.lobit.i.i.i.i.i, 59   ; 2 uses
  %.not.i.i.i.i.i = icmp samesign ugt i32 %i.bi, %i.bk ; 2 uses
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 2, i32 0
  %.6.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i32 %i.bk, i32 0
  %i.bl = sub nsw i32 %i.bi, %.6.i.i.i.i.i
  %i.bm = mul nsw i32 %i.bl, 268
  %i.bn = add nsw i32 %i.bm, 8028
  %i.bo = lshr i32 %i.bn, 13
  %i.bp = add nuw nsw i32 %i.bo, %..i.i.i.i.i
  %i.bq = trunc i32 %i.bp to i8                   ; 3 uses
  %i.br = icmp ne i8 %i.bq, 0
  tail call void @llvm.assume(i1 %i.br)
  store i8 %i.bq, ptr %i.bf, align 2, !alias.scope !230, !noalias !226
  br label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i"

"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i": ; preds = %bb.i, %bb.h
  %i.bs = phi i8 [ %i.bg, %bb.h ], [ %i.bq, %bb.i ] ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
  %trunc.i.i = trunc i48 %.sroa.024.3.extract.shift.i to i8
  switch i8 %trunc.i.i, label %bb.j [
    i8 0, label %bb.k
    i8 1, label %bb.p
    i8 2, label %bb.r
  ]

bb.j:                                             ; preds = %bb.k, %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i"
  unreachable

bb.k:                                             ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i"
  switch i8 %.sroa.024.2.extract.trunc.i, label %bb.j [
    i8 0, label %bb.l
    i8 1, label %bb.m
    i8 2, label %bb.n
  ]

bb.l:                                             ; preds = %bb.k
  %i.bt = tail call fastcc { i64, ptr } @_ZN4time10formatting23format_number_pad_space17h5edf2860fb600ac8E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef range(i8 1, 13) %i.bs), !noalias !239
  %i.bu = extractvalue { i64, ptr } %i.bt, 1
  %i.bv = ptrtoint ptr %i.bu to i64
  br label %.loopexit

bb.m:                                             ; preds = %bb.k
  %i.bw = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_zero17hf88278ac11d9f454E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef range(i8 1, 13) %i.bs), !noalias !239
  %i.bx = extractvalue { i64, ptr } %i.bw, 1
  %i.by = ptrtoint ptr %i.bx to i64
  br label %.loopexit

bb.n:                                             ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !240)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !243
  %i.bz = call noundef i64 @"_ZN37_$LT$u8$u20$as$u20$itoa..Unsigned$GT$3fmt17h5d4a1b4e596d5c2dE"(i8 noundef range(i8 1, 13) %i.bs, ptr noalias noundef nonnull align 1 dereferenceable(3) %i.p), !noalias !244 ; 2 uses
  %i.ca = sub nuw i64 3, %i.bz                    ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !245)
  call void @llvm.experimental.noalias.scope.decl(metadata !248)
  call void @llvm.experimental.noalias.scope.decl(metadata !251)
  call void @llvm.experimental.noalias.scope.decl(metadata !254)
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !257, !noalias !260, !noundef !3 ; 3 uses
  %i.cd = load i64, ptr %2, align 8, !range !106, !alias.scope !257, !noalias !260, !noundef !3
  %i.ce = sub i64 %i.cd, %i.cc
  %i.cf = icmp ugt i64 %i.ca, %i.ce
  br i1 %i.cf, label %bb.o, label %_ZN4time10formatting22format_number_pad_none17h44f35468234e376aE.exit.i.i, !prof !155

bb.o:                                             ; preds = %bb.n
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hdc6b4a90a0f81af9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.cc, i64 noundef %i.ca)
  %.pre.i.i.i.i.i.i.i = load i64, ptr %i.cb, align 8, !alias.scope !263, !noalias !260
  br label %_ZN4time10formatting22format_number_pad_none17h44f35468234e376aE.exit.i.i

_ZN4time10formatting22format_number_pad_none17h44f35468234e376aE.exit.i.i: ; preds = %bb.o, %bb.n
  %i.cg = phi i64 [ %i.cc, %bb.n ], [ %.pre.i.i.i.i.i.i.i, %bb.o ] ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.bz
  %i.ci = icmp sgt i64 %i.cg, -1
  call void @llvm.assume(i1 %i.ci)
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !263, !noalias !260, !nonnull !3, !noundef !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.cg
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.cl, ptr nonnull readonly align 1 %i.ch, i64 %i.ca, i1 false), !noalias !264
  %i.cm = add nuw i64 %i.cg, %i.ca
  store i64 %i.cm, ptr %i.cb, align 8, !alias.scope !263, !noalias !260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !243
  br label %.loopexit

bb.p:                                             ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$5month17h171b6bbd4478e58eE.exit.i"
  %i.cn = zext nneg i8 %i.bs to i64
  %i.co = getelementptr [16 x i8], ptr @26, i64 %i.cn ; 2 uses
  %i.cp = getelementptr i8, ptr %i.co, i64 -16
  %i.cq = load ptr, ptr %i.cp, align 8, !noalias !265, !nonnull !3, !align !4, !noundef !3
  %i.cr = getelementptr i8, ptr %i.co, i64 -8
  %i.cs = load i64, ptr %i.cr, align 8, !noalias !265, !noundef !3 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.ct = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.cu = load i64, ptr %i.ct, align 8, !alias.scope !278, !noalias !281, !noundef !3 ; 3 uses
  %i.cv = load i64, ptr %2, align 8, !range !106, !alias.scope !278, !noalias !281, !noundef !3
  %i.cw = sub i64 %i.cv, %i.cu
  %i.cx = icmp ugt i64 %i.cs, %i.cw
  br i1 %i.cx, label %bb.q, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit.i.i", !prof !155

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hdc6b4a90a0f81af9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.cu, i64 noundef %i.cs)
  %.pre.i.i.i.i.i.i = load i64, ptr %i.ct, align 8, !alias.scope !284, !noalias !281
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit.i.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit.i.i": ; preds = %bb.q, %bb.p
  %i.cy = phi i64 [ %i.cu, %bb.p ], [ %.pre.i.i.i.i.i.i, %bb.q ] ; 3 uses
  %i.cz = icmp sgt i64 %i.cy, -1
  tail call void @llvm.assume(i1 %i.cz)
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !284, !noalias !281, !nonnull !3, !noundef !3
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.cy
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dc, ptr nonnull readonly align 1 %i.cq, i64 %i.cs, i1 false), !noalias !285
  %i.dd = add i64 %i.cy, %i.cs
  store i64 %i.dd, ptr %i.ct, align 8, !alias.scope !284, !noalias !281
end_hunk_0
begin_hunk_1_@"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E":bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !890)
  %.sroa.01.0.i201.i = tail call i8 @llvm.abs.i8(i8 %.val173.i, i1 true) ; 3 uses
  switch i8 %.sroa.024.1.extract.trunc.i, label %default.unreachable2.i206.i [
    i8 0, label %bb.ct
    i8 1, label %bb.cu
    i8 2, label %bb.cv
  ]

default.unreachable2.i206.i:                      ; preds = %bb.cs
  unreachable

bb.ct:                                            ; preds = %bb.cs
  %i.xi = tail call fastcc { i64, ptr } @_ZN4time10formatting23format_number_pad_space17h5edf2860fb600ac8E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.sroa.01.0.i201.i), !noalias !239
  br label %_ZN4time10formatting17fmt_offset_second17hadbe79a0d0695ab2E.exit.i

bb.cu:                                            ; preds = %bb.cs
  %i.xj = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_zero17hf88278ac11d9f454E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.sroa.01.0.i201.i), !noalias !239
  br label %_ZN4time10formatting17fmt_offset_second17hadbe79a0d0695ab2E.exit.i

bb.cv:                                            ; preds = %bb.cs
  tail call void @llvm.experimental.noalias.scope.decl(metadata !893)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !896
  %i.xk = call noundef i64 @"_ZN37_$LT$u8$u20$as$u20$itoa..Unsigned$GT$3fmt17h5d4a1b4e596d5c2dE"(i8 noundef %.sroa.01.0.i201.i, ptr noalias noundef nonnull align 1 dereferenceable(3) %i.b), !noalias !897 ; 2 uses
  %i.xl = sub nuw i64 3, %i.xk                    ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !898)
  call void @llvm.experimental.noalias.scope.decl(metadata !901)
  call void @llvm.experimental.noalias.scope.decl(metadata !904)
  call void @llvm.experimental.noalias.scope.decl(metadata !907)
  %i.xm = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.xn = load i64, ptr %i.xm, align 8, !alias.scope !910, !noalias !913, !noundef !3 ; 3 uses
  %i.xo = load i64, ptr %2, align 8, !range !106, !alias.scope !910, !noalias !913, !noundef !3
  %i.xp = sub i64 %i.xo, %i.xn
  %i.xq = icmp ugt i64 %i.xl, %i.xp
  br i1 %i.xq, label %bb.cw, label %_ZN4time10formatting22format_number_pad_none17h44f35468234e376aE.exit.i202.i, !prof !155

bb.cw:                                            ; preds = %bb.cv
  call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hdc6b4a90a0f81af9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.xn, i64 noundef %i.xl)
  %.pre.i.i.i.i.i.i205.i = load i64, ptr %i.xm, align 8, !alias.scope !916, !noalias !913
  br label %_ZN4time10formatting22format_number_pad_none17h44f35468234e376aE.exit.i202.i

_ZN4time10formatting22format_number_pad_none17h44f35468234e376aE.exit.i202.i: ; preds = %bb.cw, %bb.cv
  %i.xr = phi i64 [ %i.xn, %bb.cv ], [ %.pre.i.i.i.i.i.i205.i, %bb.cw ] ; 3 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.xk
  %i.xt = icmp sgt i64 %i.xr, -1
  call void @llvm.assume(i1 %i.xt)
  %i.xu = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.xv = load ptr, ptr %i.xu, align 8, !alias.scope !916, !noalias !913, !nonnull !3, !noundef !3
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xv, i64 %i.xr
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.xw, ptr nonnull readonly align 1 %i.xs, i64 %i.xl, i1 false), !noalias !917
  %i.xx = add nuw i64 %i.xr, %i.xl
  store i64 %i.xx, ptr %i.xm, align 8, !alias.scope !916, !noalias !913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !896
  %i.xy = inttoptr i64 %i.xl to ptr
  %i.xz = insertvalue { i64, ptr } { i64 0, ptr undef }, ptr %i.xy, 1
  br label %_ZN4time10formatting17fmt_offset_second17hadbe79a0d0695ab2E.exit.i

_ZN4time10formatting17fmt_offset_second17hadbe79a0d0695ab2E.exit.i: ; preds = %_ZN4time10formatting22format_number_pad_none17h44f35468234e376aE.exit.i202.i, %bb.cu, %bb.ct
  %.pn.i203.i = phi { i64, ptr } [ %i.xi, %bb.ct ], [ %i.xj, %bb.cu ], [ %i.xz, %_ZN4time10formatting22format_number_pad_none17h44f35468234e376aE.exit.i202.i ]
  %.sroa.4.0.i204.i = extractvalue { i64, ptr } %.pn.i203.i, 1
  %i.ya = ptrtoint ptr %.sroa.4.0.i204.i to i64
  br label %.loopexit

bb.cx:                                            ; preds = %bb.d
  %i.yb = trunc i48 %.sroa.024.1.extract.shift.i to i1 ; 4 uses
  switch i8 %.sroa.024.2.extract.trunc.i, label %bb.e [
    i8 0, label %bb.eq
    i8 1, label %bb.er
    i8 2, label %bb.es
    i8 3, label %bb.et
  ]

bb.cy:                                            ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i"
  %i.yc = tail call fastcc { i64, ptr } @_ZN4time10formatting23format_number_pad_space17h5edf2860fb600ac8E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.sroa.0.0.i.i), !noalias !239
  br label %bb.db

bb.cz:                                            ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i"
  %i.yd = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_zero17hf88278ac11d9f454E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.sroa.0.0.i.i), !noalias !239
  br label %bb.db

bb.da:                                            ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$3day17hdb75ba523aa4715aE.exit.i"
  %i.ye = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_none17h44f35468234e376aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.sroa.0.0.i.i), !noalias !239
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %bb.cz, %bb.cy
  %.pn160.i = phi { i64, ptr } [ %i.yc, %bb.cy ], [ %i.yd, %bb.cz ], [ %i.ye, %bb.da ]
  %.sroa.729.0.in.i = extractvalue { i64, ptr } %.pn160.i, 1
  %.sroa.729.0.i = ptrtoint ptr %.sroa.729.0.in.i to i64
  br label %.loopexit

bb.dc:                                            ; preds = %bb.t
  %i.yf = tail call fastcc { i64, ptr } @_ZN4time10formatting23format_number_pad_space17hbaf0f0aff536e59bE(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i16 noundef %i.dv), !noalias !239
  br label %bb.df

bb.dd:                                            ; preds = %bb.t
  %i.yg = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_zero17hd4805d7ace9baa4cE(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i16 noundef %i.dv), !noalias !239
  br label %bb.df

bb.de:                                            ; preds = %bb.t
  %i.yh = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_none17h42b06b4e713ecc17E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i16 noundef %i.dv), !noalias !239
  br label %bb.df

bb.df:                                            ; preds = %bb.de, %bb.dd, %bb.dc
  %.pn158.i = phi { i64, ptr } [ %i.yf, %bb.dc ], [ %i.yg, %bb.dd ], [ %i.yh, %bb.de ]
  %.sroa.741.0.in.i = extractvalue { i64, ptr } %.pn158.i, 1
  %.sroa.741.0.i = ptrtoint ptr %.sroa.741.0.in.i to i64
  br label %.loopexit

bb.dg:                                            ; preds = %bb.ac
  %i.yi = getelementptr inbounds nuw i8, ptr %4, i64 5 ; 2 uses
  %i.yj = load i8, ptr %i.yi, align 1, !alias.scope !918, !noalias !226, !noundef !3 ; 2 uses
  %.not.i207.i = icmp eq i8 %i.yj, 0
  br i1 %.not.i207.i, label %bb.dh, label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$15iso_week_number17h0f1afbd6a8c06207E.exit.i"

bb.dh:                                            ; preds = %bb.dg
  %i.yk = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val174.i = load i32, ptr %i.yk, align 4, !alias.scope !219, !noalias !228
  %i.yl = tail call fastcc { i32, i8 } @_ZN4time4date4Date13iso_year_week17hc476b8733af73f1cE(i32 noundef %.val174.i) ; 2 uses
  %i.ym = extractvalue { i32, i8 } %i.yl, 0
  %i.yn = extractvalue { i32, i8 } %i.yl, 1       ; 3 uses
  store i32 %i.ym, ptr %4, align 4, !alias.scope !918, !noalias !226
  %i.yo = getelementptr inbounds nuw i8, ptr %4, i64 7
  store i8 1, ptr %i.yo, align 1, !alias.scope !918, !noalias !226
  %i.yp = icmp ne i8 %i.yn, 0
  tail call void @llvm.assume(i1 %i.yp)
  store i8 %i.yn, ptr %i.yi, align 1, !alias.scope !918, !noalias !226
  br label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$15iso_week_number17h0f1afbd6a8c06207E.exit.i"

bb.di:                                            ; preds = %bb.ac
  %i.yq = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val175.i = load i32, ptr %i.yq, align 4, !range !235, !alias.scope !219, !noalias !228, !noundef !3
  %i.yr = tail call fastcc noundef i8 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17sunday_based_week17h797fbeeb879d1c7fE"(i32 %.val175.i)
  br label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$15iso_week_number17h0f1afbd6a8c06207E.exit.i"

bb.dj:                                            ; preds = %bb.ac
  %i.ys = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val176.i = load i32, ptr %i.ys, align 4, !range !235, !alias.scope !219, !noalias !228, !noundef !3
  %i.yt = tail call fastcc noundef i8 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$17monday_based_week17h094b5de7c2f2099cE"(i32 %.val176.i)
  br label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$15iso_week_number17h0f1afbd6a8c06207E.exit.i"

"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$15iso_week_number17h0f1afbd6a8c06207E.exit.i": ; preds = %bb.dj, %bb.di, %bb.dh, %bb.dg
  %.sroa.058.0.i = phi i8 [ %i.yt, %bb.dj ], [ %i.yr, %bb.di ], [ %i.yn, %bb.dh ], [ %i.yj, %bb.dg ] ; 3 uses
  switch i8 %.sroa.024.1.extract.trunc.i, label %bb.e [
    i8 0, label %bb.dk
    i8 1, label %bb.dl
    i8 2, label %bb.dm
  ]

bb.dk:                                            ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$15iso_week_number17h0f1afbd6a8c06207E.exit.i"
  %i.yu = tail call fastcc { i64, ptr } @_ZN4time10formatting23format_number_pad_space17h5edf2860fb600ac8E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.sroa.058.0.i), !noalias !239
  br label %bb.dn

bb.dl:                                            ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$15iso_week_number17h0f1afbd6a8c06207E.exit.i"
  %i.yv = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_zero17hf88278ac11d9f454E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.sroa.058.0.i), !noalias !239
  br label %bb.dn

bb.dm:                                            ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$15iso_week_number17h0f1afbd6a8c06207E.exit.i"
  %i.yw = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_none17h44f35468234e376aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.sroa.058.0.i), !noalias !239
  br label %bb.dn

bb.dn:                                            ; preds = %bb.dm, %bb.dl, %bb.dk
  %.pn156.i = phi { i64, ptr } [ %i.yu, %bb.dk ], [ %i.yv, %bb.dl ], [ %i.yw, %bb.dm ]
  %.sroa.756.0.in.i = extractvalue { i64, ptr } %.pn156.i, 1
  %.sroa.756.0.i = ptrtoint ptr %.sroa.756.0.in.i to i64
  br label %.loopexit

bb.do:                                            ; preds = %bb.ad
  %i.yx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val177.i = load i32, ptr %i.yx, align 4, !range !235, !alias.scope !219, !noalias !228, !noundef !3
  %i.yy = ashr i32 %.val177.i, 10
  br label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$8iso_year17h57fc8a8108d781a0E.exit.i"

bb.dp:                                            ; preds = %bb.ad
  %i.yz = getelementptr inbounds nuw i8, ptr %4, i64 7 ; 2 uses
  %i.za = load i8, ptr %i.yz, align 1, !range !921, !alias.scope !922, !noalias !226, !noundef !3
  %i.zb = trunc nuw i8 %i.za to i1
  br i1 %i.zb, label %bb.dr, label %bb.dq

bb.dq:                                            ; preds = %bb.dp
  %i.zc = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val178.i = load i32, ptr %i.zc, align 4, !alias.scope !219, !noalias !228
  %i.zd = tail call fastcc { i32, i8 } @_ZN4time4date4Date13iso_year_week17hc476b8733af73f1cE(i32 noundef %.val178.i) ; 2 uses
  %i.ze = extractvalue { i32, i8 } %i.zd, 0       ; 2 uses
  %i.zf = extractvalue { i32, i8 } %i.zd, 1       ; 2 uses
  store i32 %i.ze, ptr %4, align 4, !alias.scope !922, !noalias !226
  store i8 1, ptr %i.yz, align 1, !alias.scope !922, !noalias !226
  %i.zg = icmp ne i8 %i.zf, 0
  tail call void @llvm.assume(i1 %i.zg)
  %i.zh = getelementptr inbounds nuw i8, ptr %4, i64 5
  store i8 %i.zf, ptr %i.zh, align 1, !alias.scope !922, !noalias !226
  br label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$8iso_year17h57fc8a8108d781a0E.exit.i"

bb.dr:                                            ; preds = %bb.dp
  %i.zi = load i32, ptr %4, align 4, !alias.scope !922, !noalias !226
  br label %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$8iso_year17h57fc8a8108d781a0E.exit.i"

"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$8iso_year17h57fc8a8108d781a0E.exit.i": ; preds = %bb.dr, %bb.dq, %bb.do
  %.sroa.067.0.i = phi i32 [ %i.yy, %bb.do ], [ %i.zi, %bb.dr ], [ %i.ze, %bb.dq ] ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !925)
  %.sroa.02.3.extract.shift.i226.i = lshr i48 %.sroa.086.0.copyload, 32
  %.sroa.02.3.extract.trunc.i.i = trunc i48 %.sroa.02.3.extract.shift.i226.i to i8
  %5 = and i48 %.sroa.086.0.copyload, 16777216
  %.not.i210.i = icmp eq i48 %5, 0
  %.sroa.02.4.extract.shift.i227.i = lshr i48 %.sroa.086.0.copyload, 40
  %trunc.i211.i = trunc nuw i48 %.sroa.02.4.extract.shift.i227.i to i8
  switch i8 %trunc.i211.i, label %bb.ds [
    i8 0, label %bb.dv
    i8 1, label %bb.dt
    i8 2, label %bb.du
  ]

bb.ds:                                            ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$8iso_year17h57fc8a8108d781a0E.exit.i"
  unreachable

bb.dt:                                            ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$8iso_year17h57fc8a8108d781a0E.exit.i"
  %i.zj = sdiv i32 %.sroa.067.0.i, 100            ; 2 uses
  %i.zk = icmp slt i32 %.sroa.067.0.i, 0
  br i1 %i.zk, label %bb.eb, label %bb.ea

bb.du:                                            ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$8iso_year17h57fc8a8108d781a0E.exit.i"
  %i.zl = srem i32 %.sroa.067.0.i, 100
  %.sroa.03.2.i.i = tail call i32 @llvm.abs.i32(i32 %i.zl, i1 true)
  br label %bb.eg

bb.dv:                                            ; preds = %"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$8iso_year17h57fc8a8108d781a0E.exit.i"
  %i.zm = icmp slt i32 %.sroa.067.0.i, 0
  br i1 %i.zm, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  %i.zn = icmp samesign ugt i32 %.sroa.067.0.i, 9999
  br i1 %i.zn, label %bb.dy, label %.thread.i.i

bb.dx:                                            ; preds = %bb.dv
  %notsub52.i.i = add i32 %.sroa.067.0.i, -1
  %i.zo = icmp slt i32 %notsub52.i.i, -10000
  br i1 %i.zo, label %bb.dy, label %bb.ec

bb.dy:                                            ; preds = %bb.eb, %bb.ea, %bb.dx, %bb.dw
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !928
  %i.zp = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #30, !noalias !928 ; 5 uses
  %i.zq = icmp eq ptr %i.zp, null
  br i1 %i.zq, label %bb.dz, label %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i, !prof !155

bb.dz:                                            ; preds = %bb.dy
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #31, !noalias !928
  unreachable

_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i: ; preds = %bb.dy
  store ptr @13, ptr %i.zp, align 8, !noalias !932
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.zp, i64 8
  store i64 4, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !932
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.zp, i64 16
  store i8 1, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !932
  br label %bb.ez

bb.ea:                                            ; preds = %bb.dt
  %i.zr = icmp samesign ugt i32 %.sroa.067.0.i, 9999
  br i1 %i.zr, label %bb.dy, label %.thread.i.i

bb.eb:                                            ; preds = %bb.dt
  %notsub.i.i = add i32 %.sroa.067.0.i, -1
  %i.zs = icmp slt i32 %notsub.i.i, -10000
  br i1 %i.zs, label %bb.dy, label %bb.ec

.thread.i.i:                                      ; preds = %bb.ea, %bb.dw
  %.sroa.04.0.i212.i = phi ptr [ @_ZN4time10formatting13format_number17h1ecb697c3cc399e9E, %bb.ea ], [ @_ZN4time10formatting13format_number17h0030835da6947410E, %bb.dw ] ; 2 uses
  %.sroa.03.7.i.i = phi i32 [ %i.zj, %bb.ea ], [ %.sroa.067.0.i, %bb.dw ] ; 2 uses
  br i1 %.not.i210.i, label %bb.eg, label %bb.ee

bb.ec:                                            ; preds = %bb.eb, %bb.dx
  %.sroa.04.0.ph.i.i = phi ptr [ @_ZN4time10formatting13format_number17h1ecb697c3cc399e9E, %bb.eb ], [ @_ZN4time10formatting13format_number17h0030835da6947410E, %bb.dx ]
  %.sroa.03.7.ph.i.i = phi i32 [ %i.zj, %bb.eb ], [ %.sroa.067.0.i, %bb.dx ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !933)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !939)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !942)
  %i.zt = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.zu = load i64, ptr %i.zt, align 8, !alias.scope !945, !noalias !948, !noundef !3 ; 3 uses
  %i.zv = load i64, ptr %2, align 8, !range !106, !alias.scope !945, !noalias !948, !noundef !3
  %i.zw = icmp eq i64 %i.zv, %i.zu
  br i1 %i.zw, label %bb.ed, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit.i213.i", !prof !155

bb.ed:                                            ; preds = %bb.ec
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hdc6b4a90a0f81af9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.zu, i64 noundef 1)
  %.pre.i.i.i.i.i214.i = load i64, ptr %i.zt, align 8, !alias.scope !951, !noalias !948
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit.i213.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit.i213.i": ; preds = %bb.ed, %bb.ec
  %i.zx = phi i64 [ %i.zu, %bb.ec ], [ %.pre.i.i.i.i.i214.i, %bb.ed ] ; 3 uses
  %i.zy = icmp sgt i64 %i.zx, -1
  tail call void @llvm.assume(i1 %i.zy)
  %i.zz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aaa = load ptr, ptr %i.zz, align 8, !alias.scope !951, !noalias !948, !nonnull !3, !noundef !3
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 %i.zx
  store i8 45, ptr %i.aab, align 1, !noalias !952
  %i.aac = add nuw i64 %i.zx, 1
  store i64 %i.aac, ptr %i.zt, align 8, !alias.scope !951, !noalias !948
  br label %bb.eg

bb.ee:                                            ; preds = %.thread.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !953)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !956)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !959)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !962)
  %i.aad = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.aae = load i64, ptr %i.aad, align 8, !alias.scope !965, !noalias !968, !noundef !3 ; 3 uses
  %i.aaf = load i64, ptr %2, align 8, !range !106, !alias.scope !965, !noalias !968, !noundef !3
  %i.aag = icmp eq i64 %i.aaf, %i.aae
  br i1 %i.aag, label %bb.ef, label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit55.i.i", !prof !155

bb.ef:                                            ; preds = %bb.ee
  tail call fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hdc6b4a90a0f81af9E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.aae, i64 noundef 1)
  %.pre.i.i.i.i54.i.i = load i64, ptr %i.aad, align 8, !alias.scope !971, !noalias !968
  br label %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit55.i.i"

"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit55.i.i": ; preds = %bb.ef, %bb.ee
  %i.aah = phi i64 [ %i.aae, %bb.ee ], [ %.pre.i.i.i.i54.i.i, %bb.ef ] ; 3 uses
  %i.aai = icmp sgt i64 %i.aah, -1
  tail call void @llvm.assume(i1 %i.aai)
  %i.aaj = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.aak = load ptr, ptr %i.aaj, align 8, !alias.scope !971, !noalias !968, !nonnull !3, !noundef !3
  %i.aal = getelementptr inbounds nuw i8, ptr %i.aak, i64 %i.aah
  store i8 43, ptr %i.aal, align 1, !noalias !972
  %i.aam = add nuw i64 %i.aah, 1
  store i64 %i.aam, ptr %i.aad, align 8, !alias.scope !971, !noalias !968
  br label %bb.eg

bb.eg:                                            ; preds = %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit55.i.i", %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit.i213.i", %.thread.i.i, %bb.du
  %.sroa.015.1.i.i = phi i64 [ 1, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit.i213.i" ], [ 1, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit55.i.i" ], [ 0, %.thread.i.i ], [ 0, %bb.du ]
  %.sroa.04.1.i.i = phi ptr [ %.sroa.04.0.ph.i.i, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit.i213.i" ], [ %.sroa.04.0.i212.i, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit55.i.i" ], [ %.sroa.04.0.i212.i, %.thread.i.i ], [ @_ZN4time10formatting13format_number17h1ecb697c3cc399e9E, %bb.du ]
  %.sroa.03.8.i.i = phi i32 [ %.sroa.03.7.ph.i.i, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit.i213.i" ], [ %.sroa.03.7.i.i, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit55.i.i" ], [ %.sroa.03.7.i.i, %.thread.i.i ], [ %.sroa.03.2.i.i, %bb.du ]
  %.sroa.045.0.i.i = tail call i32 @llvm.abs.i32(i32 %.sroa.03.8.i.i, i1 false)
  %i.aan = tail call { i64, ptr } %.sroa.04.1.i.i(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i32 noundef %.sroa.045.0.i.i, i8 noundef %.sroa.02.3.extract.trunc.i.i), !noalias !973, !callees !974, !inline_history !975 ; 2 uses
  %i.aao = extractvalue { i64, ptr } %i.aan, 0
  %i.aap = extractvalue { i64, ptr } %i.aan, 1    ; 2 uses
  %i.aaq = trunc nuw i64 %i.aao to i1
  br i1 %i.aaq, label %bb.ez, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.aar = ptrtoint ptr %i.aap to i64
  %i.aas = add i64 %.sroa.015.1.i.i, %i.aar
  br label %.loopexit

bb.ei:                                            ; preds = %bb.am
  %i.aat = tail call fastcc { i64, ptr } @_ZN4time10formatting23format_number_pad_space17h5edf2860fb600ac8E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.val166.i), !noalias !239
  br label %bb.el

bb.ej:                                            ; preds = %bb.am
  %i.aau = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_zero17hf88278ac11d9f454E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.val166.i), !noalias !239
  br label %bb.el

bb.ek:                                            ; preds = %bb.am
  %i.aav = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_none17h44f35468234e376aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.val166.i), !noalias !239
  br label %bb.el

bb.el:                                            ; preds = %bb.ek, %bb.ej, %bb.ei
  %.pn153.i = phi { i64, ptr } [ %i.aat, %bb.ei ], [ %i.aau, %bb.ej ], [ %i.aav, %bb.ek ]
  %.sroa.775.0.in.i = extractvalue { i64, ptr } %.pn153.i, 1
  %.sroa.775.0.i = ptrtoint ptr %.sroa.775.0.in.i to i64
  br label %.loopexit

bb.em:                                            ; preds = %bb.ap
  %i.aaw = tail call fastcc { i64, ptr } @_ZN4time10formatting23format_number_pad_space17h5edf2860fb600ac8E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.val168.i), !noalias !239
  br label %bb.ep

bb.en:                                            ; preds = %bb.ap
  %i.aax = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_zero17hf88278ac11d9f454E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.val168.i), !noalias !239
  br label %bb.ep

bb.eo:                                            ; preds = %bb.ap
  %i.aay = tail call fastcc { i64, ptr } @_ZN4time10formatting22format_number_pad_none17h44f35468234e376aE(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i8 noundef %.val168.i), !noalias !239
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eo, %bb.en, %bb.em
  %.pn.i = phi { i64, ptr } [ %i.aaw, %bb.em ], [ %i.aax, %bb.en ], [ %i.aay, %bb.eo ]
  %.sroa.786.0.in.i = extractvalue { i64, ptr } %.pn.i, 1
  %.sroa.786.0.i = ptrtoint ptr %.sroa.786.0.in.i to i64
  br label %.loopexit

bb.eq:                                            ; preds = %bb.cx
  %i.aaz = tail call fastcc noundef i64 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$22unix_timestamp_seconds17h8568d98cf1aa9827E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %3), !noalias !976
  %i.aba = tail call fastcc ptr @_ZN4time10formatting26fmt_unix_timestamp_seconds17h17a44c6039e9776cE(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.aaz, i1 noundef zeroext %i.yb)
  %i.abb = ptrtoint ptr %i.aba to i64
  br label %.loopexit

bb.er:                                            ; preds = %bb.cx
  %i.abc = tail call fastcc noundef i64 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$27unix_timestamp_milliseconds17h4fac17dc882169cdE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %3), !noalias !976
  %i.abd = tail call fastcc ptr @_ZN4time10formatting31fmt_unix_timestamp_milliseconds17h1174f9b5c958f046E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %i.abc, i1 noundef zeroext %i.yb)
  %i.abe = ptrtoint ptr %i.abd to i64
  br label %.loopexit

bb.es:                                            ; preds = %bb.cx
  %i.abf = tail call fastcc noundef i128 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$27unix_timestamp_microseconds17h2028fbd112cadd72E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %3), !noalias !976
  %i.abg = tail call fastcc ptr @_ZN4time10formatting31fmt_unix_timestamp_microseconds17hec4c27e1cd4941ffE(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i128 noundef %i.abf, i1 noundef zeroext %i.yb)
  %i.abh = ptrtoint ptr %i.abg to i64
  br label %.loopexit

bb.et:                                            ; preds = %bb.cx
  %i.abi = tail call fastcc noundef i128 @"_ZN114_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$time..formatting..component_provider..ComponentProvider$GT$26unix_timestamp_nanoseconds17h69dbc1d2695dba51E"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %3), !noalias !976
  %i.abj = tail call fastcc ptr @_ZN4time10formatting30fmt_unix_timestamp_nanoseconds17h4c33435ea0ce6c78E(ptr noalias noundef nonnull align 8 dereferenceable(24) %2, i128 noundef %i.abi, i1 noundef zeroext %i.yb)
  %i.abk = ptrtoint ptr %i.abj to i64
  br label %.loopexit

bb.eu:                                            ; preds = %bb.a
  %i.abl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.abm = load ptr, ptr %i.abl, align 8, !nonnull !3, !align !105, !noundef !3 ; 2 uses
  %i.abn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.abo = load i64, ptr %i.abn, align 8, !noundef !3 ; 2 uses
  %.idx = mul nuw nsw i64 %i.abo, 24
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abm, i64 %.idx
  %i.abq = icmp eq i64 %i.abo, 0
  br i1 %i.abq, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.eu
  %i.abr = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.ev

bb.ev:                                            ; preds = %.lr.ph, %bb.ew
  %.sroa.0.0.i119 = phi i64 [ 0, %.lr.ph ], [ %i.abv, %bb.ew ]
  %.sroa.017.0.i118 = phi ptr [ %i.abm, %.lr.ph ], [ %i.abt, %bb.ew ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !977
  call fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.017.0.i118, ptr noalias noundef nonnull align 8 dereferenceable(24) %2, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef nonnull align 4 dereferenceable(8) %4), !noalias !984, !inline_history !985
  %i.abs = load i64, ptr %i.a, align 8, !range !986, !noalias !977, !noundef !3 ; 2 uses
  %.not.i = icmp eq i64 %i.abs, 4
  br i1 %.not.i, label %bb.ew, label %bb.fa

bb.ew:                                            ; preds = %bb.ev
  %i.abt = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i118, i64 24 ; 2 uses
  %i.abu = load i64, ptr %i.abr, align 8, !noalias !977, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !977
  %i.abv = add i64 %i.abu, %.sroa.0.0.i119        ; 2 uses
  %i.abw = icmp eq ptr %i.abt, %i.abp
  br i1 %i.abw, label %.loopexit, label %bb.ev

bb.ex:                                            ; preds = %bb.a
  %i.abx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aby = load ptr, ptr %i.abx, align 8, !nonnull !3, !align !105, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call fastcc void @"_ZN4time10formatting11formattable142_$LT$impl$u20$time..formatting..formattable..sealed..Sealed$u20$for$u20$time..format_description..borrowed_format_item..BorrowedFormatItem$GT$11format_into17h72ca6fa2cee571f2E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aby, ptr noalias noundef align 8 dereferenceable(24) %2, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %3, ptr noalias noundef align 4 dereferenceable(8) %4)
  %i.abz = load i64, ptr %i.r, align 8, !range !986, !noundef !3 ; 2 uses
  %.not87 = icmp eq i64 %i.abz, 4
  %i.aca = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.acb = load i64, ptr %i.aca, align 8          ; 2 uses
  br i1 %.not87, label %bb.fc, label %bb.fb

bb.ey:                                            ; preds = %bb.a
  %i.acc = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.acd = load i64, ptr %i.acc, align 8, !noundef !3
  %i.ace = icmp eq i64 %i.acd, 0
  br i1 %i.ace, label %.loopexit, label %bb.fd

.loopexit:                                        ; preds = %bb.ew, %bb.eu, %bb.d, %bb.d, %bb.l, %bb.m, %_ZN4time10formatting22format_number_pad_none17h44f35468234e376aE.exit.i.i, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit.i.i", %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit11.i.i", %_ZN4time10formatting22format_number_pad_none17h44f35468234e376aE.exit.i183.i, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit.i185.i", %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit10.i.i", %_ZN4time10formatting22format_number_pad_none17h44f35468234e376aE.exit12.i.i, %_ZN4time10formatting8fmt_hour17h6aaee85b156f2887E.exit.i, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit.i", %_ZN4time10formatting22format_number_pad_zero17h0f27bb7e8e8d27b7E.exit.i.i, %_ZN4time10formatting22format_number_pad_zero17h066bc4f8b2638894E.exit.i.i, %_ZN4time10formatting22format_number_pad_zero17h905a6287f37d9abcE.exit.i.i, %_ZN4time10formatting22format_number_pad_zero17h65b1e17898f52a74E.exit.i.i, %_ZN4time10formatting22format_number_pad_zero17h9a6714dd857c65a9E.exit.i.i, %bb.bq, %_ZN4time10formatting22format_number_pad_zero17h0ab6533b3970be0aE.exit.i.i, %_ZN4time10formatting22format_number_pad_zero17ha2bb80e3056f71faE.exit.i.i, %_ZN4time10formatting22format_number_pad_zero17h0940646e5b9601beE.exit.i.i, %_ZN4time10formatting15fmt_offset_hour17h3660ce6420187387E.exit.i, %_ZN4time10formatting17fmt_offset_minute17h8444b1e9c85c981aE.exit.i, %_ZN4time10formatting17fmt_offset_second17hadbe79a0d0695ab2E.exit.i, %bb.db, %bb.df, %bb.dn, %bb.eh, %bb.el, %bb.ep, %bb.eq, %bb.er, %bb.es, %bb.et, %bb.ey, %bb.ff, %bb.fc, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit"
  %.sroa.0.0 = phi i64 [ %i.w, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit" ], [ 0, %bb.ey ], [ %.sroa.729.0.i, %bb.db ], [ %i.acb, %bb.fc ], [ %i.acl, %bb.ff ], [ %i.ts, %_ZN4time10formatting22format_number_pad_zero17ha2bb80e3056f71faE.exit.i.i ], [ %i.sl, %_ZN4time10formatting22format_number_pad_zero17h0ab6533b3970be0aE.exit.i.i ], [ %i.qy, %bb.bq ], [ %i.qt, %_ZN4time10formatting22format_number_pad_zero17h9a6714dd857c65a9E.exit.i.i ], [ %i.pe, %_ZN4time10formatting22format_number_pad_zero17h65b1e17898f52a74E.exit.i.i ], [ %i.nm, %_ZN4time10formatting22format_number_pad_zero17h905a6287f37d9abcE.exit.i.i ], [ %i.lv, %_ZN4time10formatting22format_number_pad_zero17h066bc4f8b2638894E.exit.i.i ], [ %i.kd, %_ZN4time10formatting22format_number_pad_zero17h0f27bb7e8e8d27b7E.exit.i.i ], [ %i.ty, %_ZN4time10formatting22format_number_pad_zero17h0940646e5b9601beE.exit.i.i ], [ %i.fu, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit10.i.i" ], [ 3, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit.i185.i" ], [ %i.ep, %_ZN4time10formatting22format_number_pad_none17h44f35468234e376aE.exit.i183.i ], [ %i.cs, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit.i.i" ], [ %i.ca, %_ZN4time10formatting22format_number_pad_none17h44f35468234e376aE.exit.i.i ], [ %i.by, %bb.m ], [ %i.bv, %bb.l ], [ %i.abk, %bb.et ], [ %i.abh, %bb.es ], [ %i.abe, %bb.er ], [ %i.abb, %bb.eq ], [ 0, %bb.d ], [ %i.ya, %_ZN4time10formatting17fmt_offset_second17hadbe79a0d0695ab2E.exit.i ], [ %i.xe, %_ZN4time10formatting17fmt_offset_minute17h8444b1e9c85c981aE.exit.i ], [ %i.wi, %_ZN4time10formatting15fmt_offset_hour17h3660ce6420187387E.exit.i ], [ %i.gi, %_ZN4time10formatting22format_number_pad_none17h44f35468234e376aE.exit12.i.i ], [ %.sroa.786.0.i, %bb.ep ], [ 2, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit.i" ], [ %.sroa.775.0.i, %bb.el ], [ %i.ht, %_ZN4time10formatting8fmt_hour17h6aaee85b156f2887E.exit.i ], [ %i.aas, %bb.eh ], [ %.sroa.756.0.i, %bb.dn ], [ 3, %"_ZN3std2io5impls74_$LT$impl$u20$std..io..Write$u20$for$u20$alloc..vec..Vec$LT$u8$C$A$GT$$GT$9write_all17h5b5c591014bcc51cE.exit11.i.i" ], [ %.sroa.741.0.i, %bb.df ], [ 0, %bb.d ], [ 0, %bb.eu ], [ %i.abv, %bb.ew ]
  %i.acf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0, ptr %i.acf, align 8
  store i64 4, ptr %0, align 8
  br label %bb.fg

bb.ez:                                            ; preds = %bb.eg, %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i
  %.sroa.8.0.ph.in.i = phi ptr [ %i.zp, %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i ], [ %i.aap, %bb.eg ]
  %.sroa.0.0.ph.i = phi i64 [ 2, %_ZN5alloc5alloc15exchange_malloc17hd05661b5acd38f93E.exit.i.i ], [ 3, %bb.eg ]
  %.sroa.8.0.ph.i = ptrtoint ptr %.sroa.8.0.ph.in.i to i64
  store i64 %.sroa.0.0.ph.i, ptr %0, align 8
  %.sroa.255.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8.0.ph.i, ptr %.sroa.255.0..sroa_idx, align 8
  br label %bb.fg

bb.fa:                                            ; preds = %bb.ev
end_hunk_1
begin_hunk_2_@"_ZN55_$LT$cookie..Cookie$u20$as$u20$core..cmp..PartialEq$GT$2eq17h7fd85437127b9fccE":bb.a
  %i.az = icmp eq i64 %i.ar, %.sroa.56.0.i122
  br i1 %i.az, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i128", label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i120, i64 %i.ar
  %i.bb = load i8, ptr %i.ba, align 1, !alias.scope !1759, !noalias !1758, !noundef !3
  %i.bc = icmp sgt i8 %i.bb, -65
  br i1 %i.bc, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i128", label %bb.ai

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i128": ; preds = %bb.ah, %.split7.i.i127, %bb.ae
  %i.bd = sub nuw i64 %i.ar, %i.as
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i120, i64 %i.as
  br label %_ZN6cookie9CookieStr6to_str17h04007c0ce59c2c79E.exit129

bb.ai:                                            ; preds = %bb.ah, %.split7.i.i127, %bb.af, %.split.i.i125, %bb.ab
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.05.0.i120, i64 noundef %.sroa.56.0.i122, i64 noundef %i.as, i64 noundef %i.ar, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #31, !noalias !1758
  unreachable

bb.aj:                                            ; preds = %bb.y
  %.sroa.03.0.i114 = load ptr, ptr %i.ap, align 8, !alias.scope !1753, !noalias !1756, !nonnull !3, !noundef !3
  br label %_ZN6cookie9CookieStr6to_str17h04007c0ce59c2c79E.exit129

_ZN6cookie9CookieStr6to_str17h04007c0ce59c2c79E.exit129: ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i128", %bb.aj
  %.sroa.03.0.pn.i115 = phi ptr [ %.sroa.03.0.i114, %bb.aj ], [ %i.be, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i128" ]
  %.sroa.54.0.pn.i116 = phi i64 [ %i.ar, %bb.aj ], [ %i.bd, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i128" ] ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1765)
  %i.bg = load i64, ptr %i.bf, align 8, !range !97, !alias.scope !1762, !noalias !1765, !noundef !3
  %cond.i130 = icmp eq i64 %i.bg, -9223372036854775807
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bj = load i64, ptr %i.bi, align 8, !alias.scope !1762, !noalias !1765, !noundef !3 ; 8 uses
  br i1 %cond.i130, label %bb.ak, label %bb.au

bb.ak:                                            ; preds = %_ZN6cookie9CookieStr6to_str17h04007c0ce59c2c79E.exit129
  %i.bk = load i64, ptr %i.bh, align 8, !alias.scope !1762, !noalias !1765, !noundef !3 ; 8 uses
  br i1 %.not63, label %bb.al, label %bb.am, !prof !155

bb.al:                                            ; preds = %bb.ak
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @86, i64 noundef 95, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #31, !noalias !1767
  unreachable

bb.am:                                            ; preds = %bb.ak
  %.sroa.05.0.in.i136 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.05.0.i137 = load ptr, ptr %.sroa.05.0.in.i136, align 8, !alias.scope !1765, !noalias !1762, !nonnull !3, !noundef !3 ; 4 uses
  %.sroa.56.0.in.i138 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.56.0.i139 = load i64, ptr %.sroa.56.0.in.i138, align 8, !alias.scope !1765, !noalias !1762, !noundef !3 ; 5 uses
  %.not.i.i140 = icmp ugt i64 %i.bk, %i.bj
  br i1 %.not.i.i140, label %bb.at, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bl = icmp eq i64 %i.bk, 0
  br i1 %i.bl, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.not5.i.i141 = icmp ult i64 %i.bk, %.sroa.56.0.i139
  br i1 %.not5.i.i141, label %bb.aq, label %.split.i.i142

bb.ap:                                            ; preds = %bb.aq, %.split.i.i142, %bb.an
  %i.bm = icmp eq i64 %i.bj, 0
  br i1 %i.bm, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i145", label %bb.ar

.split.i.i142:                                    ; preds = %bb.ao
  %i.bn = icmp eq i64 %i.bk, %.sroa.56.0.i139
  br i1 %i.bn, label %bb.ap, label %bb.at

bb.aq:                                            ; preds = %bb.ao
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i137, i64 %i.bk
  %i.bp = load i8, ptr %i.bo, align 1, !alias.scope !1768, !noalias !1767, !noundef !3
  %i.bq = icmp sgt i8 %i.bp, -65
  br i1 %i.bq, label %bb.ap, label %bb.at

bb.ar:                                            ; preds = %bb.ap
  %.not6.i.i143 = icmp ult i64 %i.bj, %.sroa.56.0.i139
  br i1 %.not6.i.i143, label %bb.as, label %.split7.i.i144

.split7.i.i144:                                   ; preds = %bb.ar
  %i.br = icmp eq i64 %i.bj, %.sroa.56.0.i139
  br i1 %i.br, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i145", label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i137, i64 %i.bj
  %i.bt = load i8, ptr %i.bs, align 1, !alias.scope !1768, !noalias !1767, !noundef !3
  %i.bu = icmp sgt i8 %i.bt, -65
  br i1 %i.bu, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i145", label %bb.at

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i145": ; preds = %bb.as, %.split7.i.i144, %bb.ap
  %i.bv = sub nuw i64 %i.bj, %i.bk
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i137, i64 %i.bk
  br label %_ZN6cookie9CookieStr6to_str17h04007c0ce59c2c79E.exit146

bb.at:                                            ; preds = %bb.as, %.split7.i.i144, %bb.aq, %.split.i.i142, %bb.am
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.05.0.i137, i64 noundef %.sroa.56.0.i139, i64 noundef %i.bk, i64 noundef %i.bj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #31, !noalias !1767
  unreachable

bb.au:                                            ; preds = %_ZN6cookie9CookieStr6to_str17h04007c0ce59c2c79E.exit129
  %.sroa.03.0.i131 = load ptr, ptr %i.bh, align 8, !alias.scope !1762, !noalias !1765, !nonnull !3, !noundef !3
  br label %_ZN6cookie9CookieStr6to_str17h04007c0ce59c2c79E.exit146

_ZN6cookie9CookieStr6to_str17h04007c0ce59c2c79E.exit146: ; preds = %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i145", %bb.au
  %.sroa.03.0.pn.i132 = phi ptr [ %.sroa.03.0.i131, %bb.au ], [ %i.bw, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i145" ]
  %.sroa.54.0.pn.i133 = phi i64 [ %i.bj, %bb.au ], [ %i.bv, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i145" ]
  %.not67 = icmp eq i64 %.sroa.54.0.pn.i116, %.sroa.54.0.pn.i133
  br i1 %.not67, label %bb.av, label %.thread156

bb.av:                                            ; preds = %_ZN6cookie9CookieStr6to_str17h04007c0ce59c2c79E.exit146
  %bcmp68 = tail call i32 @bcmp(ptr nonnull %.sroa.03.0.pn.i115, ptr nonnull %.sroa.03.0.pn.i132, i64 %.sroa.54.0.pn.i116)
  %i.bx = icmp eq i32 %bcmp68, 0
  br i1 %i.bx, label %bb.aw, label %.thread156

bb.aw:                                            ; preds = %bb.av
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.bz = load i8, ptr %i.by, align 1, !range !1771, !noundef !3 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 153
  %i.cb = load i8, ptr %i.ca, align 1, !range !1771, !noundef !3 ; 2 uses
  %.not69 = icmp eq i8 %i.bz, 2
  br i1 %.not69, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.cc = icmp eq i8 %i.bz, %i.cb
  br i1 %i.cc, label %bb.az, label %.thread156

bb.ay:                                            ; preds = %bb.aw
  %i.cd = icmp eq i8 %i.cb, 2
  br i1 %i.cd, label %bb.az, label %.thread156

bb.az:                                            ; preds = %bb.ax, %bb.ay
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.cf = load i8, ptr %i.ce, align 8, !range !1771, !noundef !3 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ch = load i8, ptr %i.cg, align 8, !range !1771, !noundef !3 ; 2 uses
  %.not71 = icmp eq i8 %i.cf, 2
  br i1 %.not71, label %bb.bb, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ci = icmp eq i8 %i.cf, %i.ch
  br i1 %i.ci, label %bb.bc, label %.thread156

bb.bb:                                            ; preds = %bb.az
  %i.cj = icmp eq i8 %i.ch, 2
  br i1 %i.cj, label %bb.bc, label %.thread156

bb.bc:                                            ; preds = %bb.ba, %bb.bb
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 4
  %.sroa.517.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.517.0.copyload = load i32, ptr %.sroa.517.0..sroa_idx, align 8 ; 3 uses
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 132
  %.sroa.618.0.copyload = load i32, ptr %.sroa.618.0..sroa_idx, align 4 ; 2 uses
  %.not73 = icmp eq i32 %.sroa.6.0.copyload, 1
  br i1 %.not73, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.016.0.copyload = load i64, ptr %i.ck, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.sroa.015.0.copyload = load i64, ptr %i.cl, align 8
  %.not74 = icmp ne i32 %.sroa.618.0.copyload, 1
  %i.cm = icmp eq i64 %.sroa.015.0.copyload, %.sroa.016.0.copyload
  %or.cond = select i1 %.not74, i1 %i.cm, i1 false
  br i1 %or.cond, label %.split148, label %.thread156

bb.be:                                            ; preds = %bb.bc
  %i.cn = icmp eq i32 %.sroa.618.0.copyload, 1
  br i1 %i.cn, label %bb.bf, label %.thread156

.split148:                                        ; preds = %bb.bd
  %i.co = icmp sgt i32 %.sroa.5.0.copyload, -1000000000
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = icmp slt i32 %.sroa.5.0.copyload, 1000000000
  tail call void @llvm.assume(i1 %i.cp)
  %i.cq = icmp sgt i32 %.sroa.517.0.copyload, -1000000000
  tail call void @llvm.assume(i1 %i.cq)
  %i.cr = icmp slt i32 %.sroa.517.0.copyload, 1000000000
  tail call void @llvm.assume(i1 %i.cr)
  %i.cs = icmp eq i32 %.sroa.5.0.copyload, %.sroa.517.0.copyload
  br i1 %i.cs, label %bb.bf, label %.thread156

bb.bf:                                            ; preds = %.split148, %bb.be
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.6.0..sroa_idx223 = getelementptr inbounds nuw i8, ptr %0, i64 143
  %.sroa.6.0.copyload224 = load i8, ptr %.sroa.6.0..sroa_idx223, align 1 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.6226.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 143
  %.sroa.6226.0.copyload = load i8, ptr %.sroa.6226.0..sroa_idx, align 1 ; 2 uses
  %.not75 = icmp eq i8 %.sroa.6.0.copyload224, 2
  br i1 %.not75, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.cv = icmp eq i8 %.sroa.6.0.copyload224, %.sroa.6226.0.copyload
  br i1 %i.cv, label %bb.bi, label %.thread156

bb.bh:                                            ; preds = %bb.bf
  %.not222 = icmp eq i8 %.sroa.6226.0.copyload, 2
  br i1 %.not222, label %bb.bj, label %.thread156

bb.bi:                                            ; preds = %bb.bg
  %or.cond.not = icmp eq i8 %.sroa.6.0.copyload224, 0
  br i1 %or.cond.not, label %.split149, label %bb.bj

.split149:                                        ; preds = %bb.bi
  %i.cw = tail call fastcc noundef zeroext i1 @"_ZN79_$LT$time..offset_date_time..OffsetDateTime$u20$as$u20$core..cmp..PartialEq$GT$2eq17hdd792d43ee76dda3E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.ct, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.cu)
  br i1 %i.cw, label %bb.bj, label %.thread156

bb.bj:                                            ; preds = %bb.bi, %.split149, %bb.bh
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.cy = load i64, ptr %i.cx, align 8, !range !98, !noundef !3
  %.not77 = icmp eq i64 %i.cy, -9223372036854775806
  br i1 %.not77, label %.thread177, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.cz = tail call { ptr, i64 } @_ZN6cookie9CookieStr6to_str17h04007c0ce59c2c79E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cx, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.) ; 2 uses
  %i.da = extractvalue { ptr, i64 } %i.cz, 0      ; 3 uses
  %i.db = extractvalue { ptr, i64 } %i.cz, 1
  %i.dc = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.dd = load i64, ptr %i.dc, align 8, !range !98, !noundef !3
  %.not79 = icmp eq i64 %i.dd, -9223372036854775806
  br i1 %.not79, label %.thread, label %bb.bl

.thread177:                                       ; preds = %bb.bj
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.df = load i64, ptr %i.de, align 8, !range !98, !noundef !3
  %.not79180 = icmp eq i64 %i.df, -9223372036854775806
  br i1 %.not79180, label %.thread160, label %.thread195

.thread195:                                       ; preds = %.thread177
  %i.dg = tail call { ptr, i64 } @_ZN6cookie9CookieStr6to_str17h04007c0ce59c2c79E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.de, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.sroa.047.0)
  %i.dh = extractvalue { ptr, i64 } %i.dg, 0
  br label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  %i.di = tail call { ptr, i64 } @_ZN6cookie9CookieStr6to_str17h04007c0ce59c2c79E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.sroa.047.0) ; 2 uses
  %i.dj = extractvalue { ptr, i64 } %i.di, 0      ; 3 uses
  %i.dk = extractvalue { ptr, i64 } %i.di, 1
  %.not81 = icmp eq ptr %i.da, null
  br i1 %.not81, label %bb.bn, label %bb.bm

.thread:                                          ; preds = %bb.bk
  %.not81152 = icmp eq ptr %i.da, null
  br i1 %.not81152, label %.thread160, label %.thread156

bb.bm:                                            ; preds = %bb.bl
  %.not83 = icmp eq ptr %i.dj, null
  br i1 %.not83, label %.thread156, label %bb.bo

bb.bn:                                            ; preds = %.thread195, %bb.bl
  %.sroa.030.0155 = phi ptr [ %i.dj, %bb.bl ], [ %i.dh, %.thread195 ]
  %.not82 = icmp eq ptr %.sroa.030.0155, null
  br i1 %.not82, label %.thread160, label %.thread156

.thread160:                                       ; preds = %.thread177, %.thread, %bb.bo, %bb.bn
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 8, !range !98, !noundef !3
  %.not84 = icmp eq i64 %i.dm, -9223372036854775806
  br i1 %.not84, label %.thread186, label %bb.bp

bb.bo:                                            ; preds = %bb.bm
  %i.dn = tail call fastcc noundef zeroext i1 @"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.da, i64 noundef %i.db, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dj, i64 noundef %i.dk)
  br i1 %i.dn, label %.thread160, label %.thread156

bb.bp:                                            ; preds = %.thread160
  %i.do = tail call { ptr, i64 } @_ZN6cookie9CookieStr6to_str17h04007c0ce59c2c79E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dl, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.) ; 2 uses
  %i.dp = extractvalue { ptr, i64 } %i.do, 0      ; 3 uses
  %i.dq = extractvalue { ptr, i64 } %i.do, 1
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.ds = load i64, ptr %i.dr, align 8, !range !98, !noundef !3
  %.not86 = icmp eq i64 %i.ds, -9223372036854775806
  br i1 %.not86, label %.thread163, label %bb.bq

.thread186:                                       ; preds = %.thread160
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !range !98, !noundef !3
  %.not86189 = icmp eq i64 %i.du, -9223372036854775806
  br i1 %.not86189, label %.thread174, label %.thread199

.thread199:                                       ; preds = %.thread186
  %i.dv = tail call { ptr, i64 } @_ZN6cookie9CookieStr6to_str17h04007c0ce59c2c79E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.sroa.047.0)
  %i.dw = extractvalue { ptr, i64 } %i.dv, 0
  br label %bb.bs

bb.bq:                                            ; preds = %bb.bp
  %i.dx = tail call { ptr, i64 } @_ZN6cookie9CookieStr6to_str17h04007c0ce59c2c79E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dr, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.sroa.047.0) ; 2 uses
  %i.dy = extractvalue { ptr, i64 } %i.dx, 0      ; 3 uses
  %i.dz = extractvalue { ptr, i64 } %i.dx, 1
  %.not88 = icmp eq ptr %i.dp, null
  br i1 %.not88, label %bb.bs, label %bb.br

.thread163:                                       ; preds = %bb.bp
  %.not88166 = icmp eq ptr %i.dp, null
  br i1 %.not88166, label %.thread174, label %.thread156

bb.br:                                            ; preds = %bb.bq
  %.not90 = icmp eq ptr %i.dy, null
  br i1 %.not90, label %.thread156, label %bb.bt

bb.bs:                                            ; preds = %.thread199, %bb.bq
  %.sroa.044.0169 = phi ptr [ %i.dy, %bb.bq ], [ %i.dw, %.thread199 ]
  %.not89 = icmp eq ptr %.sroa.044.0169, null
  br i1 %.not89, label %.thread174, label %.thread156

bb.bt:                                            ; preds = %bb.br
  %i.ea = tail call fastcc noundef zeroext i1 @"_ZN4core5slice5ascii30_$LT$impl$u20$$u5b$u8$u5d$$GT$20eq_ignore_ascii_case17h445ed52236d98af3E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dp, i64 noundef %i.dq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dy, i64 noundef %i.dz)
  br i1 %i.ea, label %.thread174, label %.thread156

.thread174:                                       ; preds = %.thread186, %.thread163, %bb.bs, %bb.bt, %.thread156
  %.sroa.0.0 = phi i1 [ false, %.thread156 ], [ true, %bb.bt ], [ true, %bb.bs ], [ true, %.thread163 ], [ true, %.thread186 ]
  ret i1 %.sroa.0.0

.thread156:                                       ; preds = %bb.bg, %.thread163, %.thread, %.split149, %.split148, %bb.br, %bb.bs, %bb.bt, %bb.bm, %bb.bn, %bb.bo, %bb.bh, %_ZN6cookie9CookieStr6to_str17h04007c0ce59c2c79E.exit146, %_ZN6cookie9CookieStr6to_str17h04007c0ce59c2c79E.exit112, %bb.av, %bb.x, %bb.ax, %bb.ay, %bb.ba, %bb.bb, %bb.bd, %bb.be
  br label %.thread174
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc void @_ZN5alloc7raw_vec11finish_grow17hd973175c7504148fE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #11 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.b = load i64, ptr %i.a, align 8, !range !1772, !noundef !3 ; 2 uses
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3 ; 3 uses
  %i.e = icmp eq i64 %i.b, %1
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.g = icmp eq i64 %2, 0
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = inttoptr i64 %1 to ptr
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30
  %i.i = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %1) #30
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

bb.f:                                             ; preds = %bb.b
  %i.j = load ptr, ptr %3, align 8, !nonnull !3, !noundef !3
  %i.k = icmp uge i64 %2, %i.d
  tail call void @llvm.assume(i1 %i.k)
  %i.l = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.j, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %1, i64 noundef %2) #30
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

bb.g:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %2, 0
  br i1 %i.m, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.n = inttoptr i64 %1 to ptr
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

bb.i:                                             ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30
  %i.o = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, -9223372036854775807) %1) #30
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit": ; preds = %bb.i, %bb.f, %bb.e
  %.sroa.012.0.i.i.pn = phi ptr [ %i.l, %bb.f ], [ %i.o, %bb.i ], [ %i.i, %bb.e ] ; 2 uses
  %i.p = icmp eq ptr %.sroa.012.0.i.i.pn, null    ; 2 uses
  %i.q = inttoptr i64 %1 to ptr
  %spec.select = select i1 %i.p, ptr %i.q, ptr %.sroa.012.0.i.i.pn
  %spec.select8 = zext i1 %i.p to i64
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit.thread": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit", %bb.h, %bb.d
  %.sroa.012.0.i.i.pn.sink = phi ptr [ %i.h, %bb.d ], [ %spec.select, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit" ], [ %i.n, %bb.h ]
  %storemerge = phi i64 [ 0, %bb.d ], [ %spec.select8, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$4grow17h9855f185bb879799E.exit" ], [ 0, %bb.h ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.012.0.i.i.pn.sink, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %i.s, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17hdc6b4a90a0f81af9E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef %2) unnamed_addr #12 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1773)
  %i.c = add i64 %2, %1                           ; 2 uses
  %i.d = icmp ult i64 %i.c, %1
  br i1 %i.d, label %bb.e, label %bb.b, !prof !155

bb.b:                                             ; preds = %bb.a
  %i.e = load i64, ptr %0, align 8, !range !106, !alias.scope !1773, !noundef !3 ; 3 uses
  %i.f = shl nuw i64 %i.e, 1
  %.sroa.0.0.i.i = tail call noundef i64 @llvm.umax.i64(i64 %i.c, i64 %i.f)
  %.sroa.0.0.i32.i = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i, i64 8) ; 3 uses
  %i.g = icmp slt i64 %.sroa.0.0.i32.i, 0
  br i1 %i.g, label %bb.e, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i, !prof !1776

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i: ; preds = %bb.b
end_hunk_2
begin_hunk_3_@_ZN6cookie6Cookie10into_owned17h891310bdf2d377d7E:bb.a
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val51 = load ptr, ptr %i.bl, align 8
  tail call fastcc void @"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E"(i64 %.val50, ptr %.val51) #32
  br label %bb.ab
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_ZN6cookie6Cookie10unset_path17hee879956ac52906fE(ptr noalias nofree noundef align 8 captures(none) dereferenceable(160) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !range !98, !noundef !3 ; 2 uses
  %switch = icmp sgt i64 %.val, 0
  br i1 %switch, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i", label %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i": ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val4 = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #30
  br label %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit"

"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit": ; preds = %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i"
  store i64 -9223372036854775806, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN6cookie6Cookie12make_removal17h331ba5ad5fc108a8E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(160) initializes((64, 72), (120, 136)) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 4                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2240)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.val.i = load i64, ptr %i.d, align 8, !range !97, !alias.scope !2240, !noundef !3 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %switch.i = icmp sgt i64 %.val.i, 0
  br i1 %switch.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i", label %_ZN4time4time4Time13adjusting_sub17hc2331bae4c799719E.exit.i.i

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i": ; preds = %bb.a
  %.val1.i = load ptr, ptr %i.e, align 8, !alias.scope !2240, !nonnull !3, !noundef !3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2240
  br label %_ZN4time4time4Time13adjusting_sub17hc2331bae4c799719E.exit.i.i

_ZN4time4time4Time13adjusting_sub17hc2331bae4c799719E.exit.i.i: ; preds = %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i"
  store i64 -9223372036854775808, ptr %i.d, align 8, !alias.scope !2240
  store ptr inttoptr (i64 1 to ptr), ptr %i.e, align 8, !alias.scope !2240
  %.sroa.6.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 0, ptr %.sroa.6.0..sroa_idx6.i, align 8, !alias.scope !2240
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_ZN4time16offset_date_time14OffsetDateTime7now_utc17h9389a0b5e004fd02E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2243)
  %.sroa.09.0.copyload.i = load i64, ptr %i.c, align 8, !alias.scope !2243, !noalias !2246 ; 2 uses
  %.sroa.01.0.extract.trunc.i.i.i = trunc i64 %.sroa.09.0.copyload.i to i32
  %i.g = icmp ult i32 %.sroa.01.0.extract.trunc.i.i.i, 1000000000
  tail call void @llvm.assume(i1 %i.g)
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.2.0.copyload.i = load i32, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !2243, !noalias !2246 ; 2 uses
  %i.h = and i32 %.sroa.2.0.copyload.i, 511
  %i.i = add nuw nsw i32 %i.h, -363521075
  %i.j = ashr i32 %.sroa.2.0.copyload.i, 10
  %i.k = add nsw i32 %i.j, 999999                 ; 3 uses
  %.neg.i.i.i = sdiv i32 %i.k, -100
  %i.l = add nsw i32 %i.i, %.neg.i.i.i
  %i.m = sdiv i32 %i.k, 400
  %i.n = add nsw i32 %i.l, %i.m
  %i.o = sext i32 %i.k to i64
  %i.p = mul nsw i64 %i.o, 1461
  %i.q = sdiv i64 %i.p, 4
  %i.r = trunc nsw i64 %i.q to i32
  %i.s = add nsw i32 %i.n, %i.r                   ; 2 uses
  %i.t = add nsw i32 %i.s, -5373850
  %or.cond.i.i.i.i = icmp ult i32 %i.t, -7304484
  br i1 %or.cond.i.i.i.i, label %_ZN4time19primitive_date_time17PrimitiveDateTime11checked_sub17h4803e67e338f0548E.exit.thread.i, label %_ZN6cookie10expiration10Expiration3map17h03d683e9edbcb503E.exit, !prof !1639

_ZN4time19primitive_date_time17PrimitiveDateTime11checked_sub17h4803e67e338f0548E.exit.thread.i: ; preds = %_ZN4time4time4Time13adjusting_sub17hc2331bae4c799719E.exit.i.i
  tail call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 31, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @69) #31, !noalias !2248
  unreachable

_ZN6cookie10expiration10Expiration3map17h03d683e9edbcb503E.exit: ; preds = %_ZN4time4time4Time13adjusting_sub17hc2331bae4c799719E.exit.i.i
  %i.u = add nsw i32 %i.s, 867409628              ; 2 uses
  %i.v = zext nneg i32 %i.u to i64
  %i.w = mul nuw nsw i64 %i.v, 3853261555         ; 2 uses
  %i.x = lshr i64 %i.w, 15
  %i.y = lshr i64 %i.w, 47
  %i.z = trunc nuw nsw i64 %i.y to i32            ; 3 uses
  %i.aa = trunc i64 %i.x to i32
  %i.ab = icmp ugt i32 %i.aa, 42920275
  %i.ac = and i32 %i.z, 3
  %i.ad = icmp eq i32 %i.ac, 0
  %.sroa.0.0.i.i.i.i.i = or i1 %i.ab, %i.ad       ; 2 uses
  %i.ae = lshr i32 %i.z, 2
  %i.af = add nuw nsw i32 %i.u, %i.z
  %i.ag = sub nuw nsw i32 %i.af, %i.ae
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = mul nuw nsw i64 %i.ah, 3010298776       ; 2 uses
  %i.aj = lshr i64 %i.ai, 8
  %i.ak = lshr i64 %i.ai, 40
  %i.al = trunc nuw nsw i64 %i.ak to i32          ; 2 uses
  %i.am = and i64 %i.aj, 4294967295
  %i.an = mul nuw nsw i64 %i.am, 1461
  %i.ao = lshr i64 %i.an, 34
  %i.ap = trunc nuw nsw i64 %i.ao to i32
  %i.aq = zext i1 %.sroa.0.0.i.i.i.i.i to i32
  %i.ar = add nuw nsw i32 %i.ap, %i.aq
  %i.as = and i32 %i.al, 3
  %i.at = icmp eq i32 %i.as, 0
  %i.au = and i1 %.sroa.0.0.i.i.i.i.i, %i.at
  %i.av = shl nuw i32 %i.al, 10
  %i.aw = add nsw i32 %i.av, 1858256896
  %i.ax = select i1 %i.au, i32 512, i32 0
  %i.ay = or disjoint i32 %i.ax, %i.aw
  %i.az = or i32 %i.ay, %i.ar                     ; 2 uses
  %i.ba = icmp ne i32 %i.az, 0
  tail call void @llvm.assume(i1 %i.ba)
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(3) %.sroa.522.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(3) %i.bb, i64 3, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.sroa.0.0.insert.insert.i.i.i.i = and i64 %.sroa.09.0.copyload.i, 8795265167261695
  store i64 %.sroa.0.0.insert.insert.i.i.i.i, ptr %i.b, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i32 %i.az, ptr %.sroa.421.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2249
  call fastcc void @_ZN4time16offset_date_time14OffsetDateTime13to_offset_raw17h28295743bf0bcc34E(ptr noalias noundef align 4 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.b, i24 0), !noalias !2269
  %i.bc = load i32, ptr %i.a, align 4, !noalias !2249, !noundef !3
  %i.bd = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.be = load i16, ptr %i.bd, align 4, !noalias !2249, !noundef !3
  %i.bf = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.0.0.copyload.i.i.i.i.i.i = load i64, ptr %i.bf, align 4, !noalias !2249
  %i.bg = sext i32 %i.bc to i128
  %i.bh = shl nsw i128 %i.bg, 74
  %i.bi = zext i16 %i.be to i128
  %i.bj = shl nuw nsw i128 %i.bi, 64
  %i.bk = or i128 %i.bj, %i.bh
  %i.bl = zext i64 %.sroa.0.0.copyload.i.i.i.i.i.i to i128
  %i.bm = or disjoint i128 %i.bk, %i.bl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2249
  %i.bn = icmp sgt i128 %i.bm, 188882502916980284006778392 ; 2 uses
  %..i.i.i = select i1 %i.bn, ptr @_ZN6cookie6Cookie11set_expires12MAX_DATETIME17he34828a6b79e6fddE, ptr %i.b
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 136
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %i.bo, ptr noundef nonnull align 4 dereferenceable(7) %..i.i.i, i64 7, i1 false)
  %.sroa.gep15.val = load i64, ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.510.0.copyload11 = select i1 %i.bn, i64 10239341, i64 %.sroa.gep15.val
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 143
  store i8 0, ptr %.sroa.413.0..sroa_idx, align 1
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %.sroa.510.0.copyload11, ptr %.sroa.514.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_ZN6cookie6Cookie12unset_domain17ha0dfd51427966d13E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(160) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val = load i64, ptr %i.a, align 8, !range !98, !noundef !3 ; 2 uses
  %switch = icmp sgt i64 %.val, 0
  br i1 %switch, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i", label %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i": ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val4 = load ptr, ptr %i.b, align 8, !nonnull !3, !noundef !3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #30
  br label %"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit"

"_ZN4core3ptr66drop_in_place$LT$core..option..Option$LT$cookie..CookieStr$GT$$GT$17h0c34484091a99ee5E.exit": ; preds = %bb.a, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i.i.i"
  store i64 -9223372036854775806, ptr %i.a, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_ZN6cookie6Cookie14fmt_parameters17h24eab9239ce66182E(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(160) %0, ptr %.0.val, ptr captures(address, read_provenance) %.8.val) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 58 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 23 uses
  %i.e = alloca [16 x i8], align 4                ; 6 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [48 x i8], align 8                ; 8 uses
  %i.j = alloca [8 x i8], align 4                 ; 18 uses
  %i.k = alloca [16 x i8], align 8                ; 23 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [16 x i8], align 8                ; 6 uses
  %i.n = alloca [16 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 4 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [1 x i8], align 1                 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 153
  %i.x = load i8, ptr %i.w, align 1, !range !1771, !noundef !3
  %1 = and i8 %i.x, 1
  %or.cond.not = icmp eq i8 %1, 0
  br i1 %or.cond.not, label %bb.b, label %.split

bb.b:                                             ; preds = %.split, %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 154
  %i.z = load i8, ptr %i.y, align 2, !range !1795, !noundef !3 ; 2 uses
  %.not = icmp eq i8 %i.z, 3
  br i1 %.not, label %._crit_edge, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit124

._crit_edge:                                      ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.pre = load i8, ptr %.phi.trans.insert, align 8, !range !1771
  br label %bb.c

.split:                                           ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !3, !noalias !2270, !nonnull !3
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull align 1 %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @70, i64 noundef 10), !noalias !2270, !inline_history !1788
  br i1 %i.ac, label %.thread91, label %bb.b

.thread91:                                        ; preds = %bb.af, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit180", %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit166, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit161, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit139, %.split80, %.split, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit177", %bb.f
  %.sroa.0.0 = phi i1 [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit166 ], [ true, %bb.f ], [ true, %.split80 ], [ true, %.split ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit139 ], [ true, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit161 ], [ true, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit177" ], [ false, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17he6d9772c32407876E.exit180" ], [ false, %bb.af ]
  ret i1 %.sroa.0.0

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit124: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  store i8 %i.z, ptr %i.v, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr %i.v, ptr %i.u, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store ptr @"_ZN62_$LT$cookie..draft..SameSite$u20$as$u20$core..fmt..Display$GT$3fmt17h18f8b4ac0f90541bE", ptr %.sroa.445.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2273
  store ptr @72, ptr %i.i, align 8
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %.sroa.52.0..sroa_idx, align 8
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.u, ptr %.sroa.73.0..sroa_idx, align 8
  %.sroa.84.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 1, ptr %.sroa.84.0..sroa_idx, align 8
  %.sroa.105.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %.sroa.105.0..sroa_idx, align 8
  %i.ad = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.i), !noalias !2273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br i1 %i.ad, label %bb.f, label %bb.d

bb.c:                                             ; preds = %._crit_edge, %bb.e
  %i.ae = phi i8 [ %.pre, %._crit_edge ], [ %i.ai, %bb.e ]
  %2 = and i8 %i.ae, 1
  %or.cond3.not = icmp eq i8 %2, 0
  br i1 %or.cond3.not, label %bb.g, label %.split80

bb.d:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit124
  %i.af = load i8, ptr %i.v, align 1, !range !1771, !noundef !3
  %i.ag = icmp eq i8 %i.af, 2
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ai = load i8, ptr %i.ah, align 8, !range !1771 ; 2 uses
  %.not86 = icmp eq i8 %i.ai, 2
  %or.cond = select i1 %i.ag, i1 %.not86, i1 false
  br i1 %or.cond, label %.split79, label %bb.e

bb.e:                                             ; preds = %.split79, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %bb.c

.split79:                                         ; preds = %bb.d
  %i.aj = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !invariant.load !3, !noalias !2276, !nonnull !3
  %i.al = call noundef zeroext i1 %i.ak(ptr noundef nonnull align 1 %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @73, i64 noundef 8), !noalias !2276, !inline_history !1788
  br i1 %i.al, label %bb.f, label %bb.e

bb.f:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit124, %.split79
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %.thread91

bb.g:                                             ; preds = %.split80, %bb.c
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.an = load i64, ptr %i.am, align 8, !range !98, !noundef !3 ; 2 uses
  %.not87 = icmp eq i64 %i.an, -9223372036854775806
  br i1 %.not87, label %.thread, label %bb.h

.split80:                                         ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.ao = getelementptr inbounds nuw i8, ptr %.8.val, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !invariant.load !3, !noalias !2279, !nonnull !3
  %i.aq = call noundef zeroext i1 %i.ap(ptr noundef nonnull align 1 %.0.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @73, i64 noundef 8), !noalias !2279, !inline_history !1788
  br i1 %i.aq, label %.thread91, label %bb.g

bb.h:                                             ; preds = %bb.g
  %i.ar = load i64, ptr %0, align 8, !range !97, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !2282)
  call void @llvm.experimental.noalias.scope.decl(metadata !2285)
  %cond.i = icmp eq i64 %i.an, -9223372036854775807
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !2282, !noalias !2285, !noundef !3 ; 8 uses
  br i1 %cond.i, label %bb.i, label %bb.s

bb.i:                                             ; preds = %bb.h
  %.not88 = icmp eq i64 %i.ar, -9223372036854775807
  %i.av = load i64, ptr %i.as, align 8, !alias.scope !2282, !noalias !2285, !noundef !3 ; 8 uses
  br i1 %.not88, label %bb.j, label %bb.k, !prof !155

bb.j:                                             ; preds = %bb.i
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @86, i64 noundef 95, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #31, !noalias !2287
  unreachable

bb.k:                                             ; preds = %bb.i
  %.sroa.05.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.05.0.i = load ptr, ptr %.sroa.05.0.in.i, align 8, !alias.scope !2285, !noalias !2282, !nonnull !3, !noundef !3 ; 4 uses
  %.sroa.56.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.56.0.i = load i64, ptr %.sroa.56.0.in.i, align 8, !alias.scope !2285, !noalias !2282, !noundef !3 ; 5 uses
  %.not.i.i = icmp ugt i64 %i.av, %i.au
  br i1 %.not.i.i, label %bb.r, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = icmp eq i64 %i.av, 0
  br i1 %i.aw, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %.not5.i.i = icmp ult i64 %i.av, %.sroa.56.0.i
  br i1 %.not5.i.i, label %bb.o, label %.split.i.i

bb.n:                                             ; preds = %bb.o, %.split.i.i, %bb.l
  %i.ax = icmp eq i64 %i.au, 0
  br i1 %i.ax, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i", label %bb.p

.split.i.i:                                       ; preds = %bb.m
  %i.ay = icmp eq i64 %i.av, %.sroa.56.0.i
  br i1 %i.ay, label %bb.n, label %bb.r

bb.o:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 %i.av
  %i.ba = load i8, ptr %i.az, align 1, !alias.scope !2288, !noalias !2287, !noundef !3
  %i.bb = icmp sgt i8 %i.ba, -65
  br i1 %i.bb, label %bb.n, label %bb.r

bb.p:                                             ; preds = %bb.n
  %.not6.i.i = icmp ult i64 %i.au, %.sroa.56.0.i
  br i1 %.not6.i.i, label %bb.q, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.p
  %i.bc = icmp eq i64 %i.au, %.sroa.56.0.i
  br i1 %i.bc, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i", label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 %i.au
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !2288, !noalias !2287, !noundef !3
  %i.bf = icmp sgt i8 %i.be, -65
  br i1 %i.bf, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i", label %bb.r

"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i": ; preds = %bb.q, %.split7.i.i, %bb.n
  %i.bg = sub nuw i64 %i.au, %i.av
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i, i64 %i.av
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit139

bb.r:                                             ; preds = %bb.q, %.split7.i.i, %bb.o, %.split.i.i, %bb.k
  call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.05.0.i, i64 noundef %.sroa.56.0.i, i64 noundef %i.av, i64 noundef %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @88) #31, !noalias !2287
  unreachable

bb.s:                                             ; preds = %bb.h
  %.sroa.03.0.i = load ptr, ptr %i.as, align 8, !alias.scope !2282, !noalias !2285, !nonnull !3, !noundef !3
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit139

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit139: ; preds = %bb.s, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i"
  %.sroa.03.0.pn.i = phi ptr [ %.sroa.03.0.i, %bb.s ], [ %i.bh, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i" ]
  %.sroa.54.0.pn.i = phi i64 [ %i.au, %bb.s ], [ %i.bg, %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i" ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %.sroa.03.0.pn.i, ptr %i.t, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.sroa.54.0.pn.i, ptr %i.bi, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.t, ptr %i.s, align 8
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h2e192596122bb916E", ptr %.sroa.450.0..sroa_idx, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2291
  store ptr @75, ptr %i.h, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %.sroa.520.0..sroa_idx, align 8
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.s, ptr %.sroa.721.0..sroa_idx, align 8
  %.sroa.822.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 1, ptr %.sroa.822.0..sroa_idx, align 8
  %.sroa.1023.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %.sroa.1023.0..sroa_idx, align 8
  %i.bj = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.0.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.8.val, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.h), !noalias !2291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br i1 %i.bj, label %.thread91, label %.thread

.thread:                                          ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit139, %bb.g
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bl = load i64, ptr %i.bk, align 8, !range !98, !noundef !3 ; 2 uses
  %.not90 = icmp eq i64 %i.bl, -9223372036854775806
  br i1 %.not90, label %.thread85, label %bb.t

bb.t:                                             ; preds = %.thread
  %i.bm = load i64, ptr %0, align 8, !range !97, !noundef !3
  call void @llvm.experimental.noalias.scope.decl(metadata !2294)
  call void @llvm.experimental.noalias.scope.decl(metadata !2297)
  %cond.i140 = icmp eq i64 %i.bl, -9223372036854775807
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !2294, !noalias !2297, !noundef !3 ; 8 uses
  br i1 %cond.i140, label %bb.u, label %bb.ae

bb.u:                                             ; preds = %bb.t
  %.not91 = icmp eq i64 %i.bm, -9223372036854775807
  %i.bq = load i64, ptr %i.bn, align 8, !alias.scope !2294, !noalias !2297, !noundef !3 ; 8 uses
  br i1 %.not91, label %bb.v, label %bb.w, !prof !155

bb.v:                                             ; preds = %bb.u
  call void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @86, i64 noundef 95, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @87) #31, !noalias !2299
  unreachable

bb.w:                                             ; preds = %bb.u
  %.sroa.05.0.in.i146 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.05.0.i147 = load ptr, ptr %.sroa.05.0.in.i146, align 8, !alias.scope !2297, !noalias !2294, !nonnull !3, !noundef !3 ; 4 uses
  %.sroa.56.0.in.i148 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.56.0.i149 = load i64, ptr %.sroa.56.0.in.i148, align 8, !alias.scope !2297, !noalias !2294, !noundef !3 ; 5 uses
  %.not.i.i150 = icmp ugt i64 %i.bq, %i.bp
  br i1 %.not.i.i150, label %bb.ad, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not5.i.i151 = icmp ult i64 %i.bq, %.sroa.56.0.i149
  br i1 %.not5.i.i151, label %bb.aa, label %.split.i.i152

bb.z:                                             ; preds = %bb.aa, %.split.i.i152, %bb.x
  %i.bs = icmp eq i64 %i.bp, 0
  br i1 %i.bs, label %"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE.exit.i155", label %bb.ab

.split.i.i152:                                    ; preds = %bb.y
  %i.bt = icmp eq i64 %i.bq, %.sroa.56.0.i149
  br i1 %i.bt, label %bb.z, label %bb.ad

bb.aa:                                            ; preds = %bb.y
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.05.0.i147, i64 %i.bq
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !2300, !noalias !2299, !noundef !3
  %i.bw = icmp sgt i8 %i.bv, -65
  br i1 %i.bw, label %bb.z, label %bb.ad

bb.ab:                                            ; preds = %bb.z
  %.not6.i.i153 = icmp ult i64 %i.bp, %.sroa.56.0.i149
end_hunk_3
begin_hunk_4_@"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h9db674edefb3619dE":bb.a
  %i.au = icmp eq i64 %i.at, 0
  %i.av = ptrtoint ptr %i.as to i64
  br i1 %i.au, label %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit.._crit_edge66_crit_edge, label %.preheader.lr.ph

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit.._crit_edge66_crit_edge: ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit
  %.sroa.0.0.copyload.i.i.i.i.i.pre = load i64, ptr %0, align 8, !alias.scope !2519, !noalias !2522
  %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr = inttoptr i64 %.sroa.0.0.copyload.i.i.i.i.i.pre to ptr
  br label %._crit_edge66

.preheader.lr.ph:                                 ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !2517, !noalias !2518, !nonnull !3, !noundef !3 ; 3 uses
  %.val449 = load <16 x i8>, ptr %i.aw, align 16
  %i.ax = icmp sgt <16 x i8> %.val449, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  %.val.i.i10 = load i64, ptr %2, align 8, !noalias !2524, !noundef !3
  %i.az = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i11 = load i64, ptr %i.az, align 8, !noalias !2524, !noundef !3
  br label %.preheader

_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit.thread: ; preds = %bb.j, %bb.k, %bb.l
  %.pn.i.pn = phi { i64, i64 } [ %i.an, %bb.l ], [ %i.al, %bb.j ], [ %i.am, %bb.k ] ; 2 uses
  %.sroa.12.045 = extractvalue { i64, i64 } %.pn.i.pn, 1
  %.sroa.7.046 = extractvalue { i64, i64 } %.pn.i.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2509
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17hcc6572b4143a0350E.exit.i

bb.m:                                             ; preds = %._crit_edge
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3ced511459e862c2E"(ptr noalias noundef align 8 dereferenceable(56) %i.b) #32
  br label %common.resume

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.p
  %i.bb = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %i.di, %bb.p ]
  %.sroa.031.065 = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %.sroa.031.1.lcssa, %bb.p ] ; 2 uses
  %.sroa.5.064 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %bb.p ] ; 2 uses
  %.sroa.9.063 = phi i64 [ %i.at, %.preheader.lr.ph ], [ %i.cb, %bb.p ]
  %.sroa.13.062 = phi i16 [ %i.ay, %.preheader.lr.ph ], [ %i.bz, %bb.p ] ; 2 uses
  %.not.i257 = icmp eq i16 %.sroa.13.062, 0
  br i1 %.not.i257, label %.noexc3, label %._crit_edge

.noexc3:                                          ; preds = %.preheader, %.noexc3
  %.sroa.031.159 = phi ptr [ %i.bc, %.noexc3 ], [ %.sroa.031.065, %.preheader ] ; 2 uses
  %.sroa.5.158 = phi i64 [ %i.bf, %.noexc3 ], [ %.sroa.5.064, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.031.159) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.031.159, i64 16 ; 3 uses
  %.val50 = load <16 x i8>, ptr %i.bc, align 16
  %i.bd = icmp sgt <16 x i8> %.val50, splat (i8 -1)
  %i.be = bitcast <16 x i1> %i.bd to i16          ; 2 uses
  %i.bf = add i64 %.sroa.5.158, 16                ; 2 uses
  %.not.i2 = icmp eq i16 %i.be, 0
  br i1 %.not.i2, label %.noexc3, label %._crit_edge

._crit_edge66.loopexit:                           ; preds = %bb.p
  %.pre77 = load i64, ptr %i.d, align 8, !alias.scope !2517, !noalias !2518
  br label %._crit_edge66

._crit_edge66:                                    ; preds = %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit.._crit_edge66_crit_edge, %._crit_edge66.loopexit
  %.sroa.0.0.copyload.i.i.i.i.i.ptr = phi ptr [ %i.di, %._crit_edge66.loopexit ], [ %.sroa.0.0.copyload.i.i.i.i.i.pre.ptr, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit.._crit_edge66_crit_edge ] ; 2 uses
  %i.bg = phi i64 [ %.pre77, %._crit_edge66.loopexit ], [ 0, %_ZN9hashbrown3raw13RawTableInner22fallible_with_capacity17hd1a3f4090df56665E.exit.._crit_edge66_crit_edge ]
  %i.bh = sub i64 %.sroa.02.0.i.i, %i.bg
  store i64 %i.av, ptr %0, align 8, !alias.scope !2519, !noalias !2522
  %.sroa.0.0.copyload.i.i.i.1.i.i = load i64, ptr %i.h, align 8, !alias.scope !2530, !noalias !2532 ; 3 uses
  store i64 %i.ap, ptr %i.h, align 8, !alias.scope !2530, !noalias !2532
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bh, ptr %i.bi, align 8, !alias.scope !2534, !noalias !2536
  %i.bj = icmp eq i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 0
  br i1 %i.bj, label %"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3ced511459e862c2E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i: ; preds = %._crit_edge66
  %i.bk = mul i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 168 ; 2 uses
  %i.bl = add i64 %i.bk, 168
  %i.bm = add i64 %i.bk, 183                      ; 2 uses
  %i.bn = icmp uge i64 %i.bm, %i.bl
  tail call void @llvm.assume(i1 %i.bn)
  %i.bo = and i64 %i.bm, -16                      ; 3 uses
  %i.bp = add i64 %.sroa.0.0.copyload.i.i.i.1.i.i, 17
  %i.bq = add i64 %i.bp, %i.bo                    ; 4 uses
  %i.br = icmp uge i64 %i.bq, %i.bo
  %i.bs = icmp ult i64 %i.bq, 9223372036854775793
  tail call void @llvm.assume(i1 %i.br)
  tail call void @llvm.assume(i1 %i.bs)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr) ]
  %i.bt = icmp eq i64 %i.bq, 0
  br i1 %i.bt, label %"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3ced511459e862c2E.exit", label %bb.n

bb.n:                                             ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i
  %i.bu = sub nsw i64 0, %i.bo
  %i.bv = getelementptr inbounds i8, ptr %.sroa.0.0.copyload.i.i.i.i.i.ptr, i64 %i.bu
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) 16) #30, !noalias !2538
  br label %"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3ced511459e862c2E.exit"

"_ZN4core3ptr196drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..prepare_resize$LT$alloc..alloc..Global$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h3ced511459e862c2E.exit": ; preds = %._crit_edge66, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2509
  br label %_ZN9hashbrown3raw13RawTableInner12resize_inner17hcc6572b4143a0350E.exit.i

._crit_edge:                                      ; preds = %.noexc3, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.062, %.preheader ], [ %i.be, %.noexc3 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.064, %.preheader ], [ %i.bf, %.noexc3 ] ; 2 uses
  %.sroa.031.1.lcssa = phi ptr [ %.sroa.031.065, %.preheader ], [ %i.bc, %.noexc3 ]
  %i.bw = add i16 %.sroa.13.1.lcssa, -1
  %i.bx = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = and i16 %i.bw, %.sroa.13.1.lcssa
  %i.ca = add i64 %.sroa.5.1.lcssa, %i.by         ; 2 uses
  %i.cb = add i64 %.sroa.9.063, -1                ; 2 uses
  %i.cc = sub nsw i64 0, %i.ca
  %i.cd = getelementptr inbounds [168 x i8], ptr %i.bb, i64 %i.cc
  %i.ce = getelementptr inbounds i8, ptr %i.cd, i64 -168
  %i.cf = invoke fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h60662d48bfc71a04E(i64 %.val.i.i10, i64 %.val1.i.i11, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.ce)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit" unwind label %bb.m ; 2 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit": ; preds = %._crit_edge
  %.sroa.0.04.i.i = and i64 %i.cf, %i.ap          ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.0.04.i.i
  %.sroa.0.0.copyload.i35.i.i = load <16 x i8>, ptr %i.cg, align 1, !noalias !2543
  %i.ch = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i, zeroinitializer
  %i.ci = bitcast <16 x i1> %i.ch to i16          ; 2 uses
  %.not.not.i.not6.i.i = icmp eq i16 %i.ci, 0
  br i1 %.not.not.i.not6.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !2546

.lr.ph.i.i:                                       ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit", %.lr.ph.i.i
  %.sroa.0.07.i.i = phi i64 [ %.sroa.0.0.i.i13, %.lr.ph.i.i ], [ %.sroa.0.04.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit" ]
  %i.cj = phi i64 [ %i.ck, %.lr.ph.i.i ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit" ]
  %i.ck = add i64 %i.cj, 16                       ; 2 uses
  %i.cl = add i64 %i.ck, %.sroa.0.07.i.i
  %.sroa.0.0.i.i13 = and i64 %i.cl, %i.ap         ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.0.0.i.i13
  %.sroa.0.0.copyload.i3.i.i = load <16 x i8>, ptr %i.cm, align 1, !noalias !2543
  %i.cn = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i, zeroinitializer
  %i.co = bitcast <16 x i1> %i.cn to i16          ; 2 uses
  %.not.not.i.not.i.i = icmp eq i16 %i.co, 0
  br i1 %.not.not.i.not.i.i, label %.lr.ph.i.i, label %._crit_edge.i.i, !prof !2547

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit"
  %.sroa.0.0.lcssa.i.i = phi i64 [ %.sroa.0.04.i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit" ], [ %.sroa.0.0.i.i13, %.lr.ph.i.i ]
  %.lcssa.i.i = phi i16 [ %i.ci, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit" ], [ %i.co, %.lr.ph.i.i ]
  %i.cp = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.cq = zext nneg i16 %i.cp to i64
  %i.cr = add nuw nsw i64 %.sroa.0.0.lcssa.i.i, %i.cq
  %i.cs = and i64 %i.cr, %i.ap                    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.as, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !noundef !3
  %i.cv = icmp sgt i8 %i.cu, -1
  br i1 %i.cv, label %bb.o, label %bb.p, !prof !155

bb.o:                                             ; preds = %._crit_edge.i.i
  %.val2.i.i.i = load <16 x i8>, ptr %i.as, align 16
  %i.cw = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.cx = bitcast <16 x i1> %i.cw to i16          ; 2 uses
  %i.cy = icmp ne i16 %i.cx, 0
  tail call void @llvm.assume(i1 %i.cy)
  %i.cz = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cx, i1 true)
  %i.da = zext nneg i16 %i.cz to i64
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i
  %.sroa.0.0.i5.i.i = phi i64 [ %i.da, %bb.o ], [ %i.cs, %._crit_edge.i.i ] ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.as, i64 %.sroa.0.0.i5.i.i
  %i.dc = lshr i64 %i.cf, 57
  %i.dd = trunc nuw nsw i64 %i.dc to i8           ; 2 uses
  %i.de = add nsw i64 %.sroa.0.0.i5.i.i, -16
  %i.df = and i64 %i.de, %i.ap
  store i8 %i.dd, ptr %i.db, align 1
  %i.dg = getelementptr i8, ptr %i.as, i64 %i.df
  %i.dh = getelementptr i8, ptr %i.dg, i64 16
  store i8 %i.dd, ptr %i.dh, align 1
  %i.di = load ptr, ptr %0, align 8, !alias.scope !2517, !noalias !2518, !nonnull !3, !noundef !3 ; 3 uses
  %.neg.i.i = mul i64 %i.ca, -168
  %i.dj = getelementptr i8, ptr %i.di, i64 %.neg.i.i
  %i.dk = getelementptr i8, ptr %i.dj, i64 -168
  %.neg62.i.i = mul i64 %.sroa.0.0.i5.i.i, -168
  %i.dl = getelementptr i8, ptr %i.as, i64 %.neg62.i.i
  %i.dm = getelementptr i8, ptr %i.dl, i64 -168
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(168) %i.dm, ptr noundef nonnull align 1 dereferenceable(168) %i.dk, i64 168, i1 false)
  %i.dn = icmp eq i64 %i.cb, 0
  br i1 %i.dn, label %._crit_edge66.loopexit, label %.preheader

common.resume:                                    ; preds = %bb.u, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.ba, %bb.m ], [ %i.er, %bb.u ]
  resume { ptr, i32 } %common.resume.op

bb.q:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2548)
  %.val11.i = load ptr, ptr %0, align 8, !alias.scope !2548 ; 7 uses
  %.not6.i.i = icmp eq i64 %i.k, 0
  br i1 %.not6.i.i, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread, label %.lr.ph.i.i14

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit.thread: ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2548
  br label %bb.ac

.lr.ph.i.i14:                                     ; preds = %bb.q
  %i.do = lshr i64 %i.k, 4
  %i.dp = and i64 %i.k, 15
  %.not9.i.i.i.i = icmp ne i64 %i.dp, 0
  %i.dq = zext i1 %.not9.i.i.i.i to i64
  %.sroa.05.0.i.i.i.i = add nuw nsw i64 %i.do, %i.dq ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val11.i) ]
  %xtraiter = and i64 %.sroa.05.0.i.i.i.i, 1
  %i.dr = icmp eq i64 %.sroa.05.0.i.i.i.i, 1
  br i1 %i.dr, label %.epil.preheader, label %.lr.ph.i.i14.new

.lr.ph.i.i14.new:                                 ; preds = %.lr.ph.i.i14
  %unroll_iter = and i64 %.sroa.05.0.i.i.i.i, 2305843009213693950
  br label %bb.r

._crit_edge.i.i15.unr-lcssa:                      ; preds = %bb.r
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i15, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i15.unr-lcssa, %.lr.ph.i.i14
  %.sroa.0.08.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i14 ], [ %i.ec, %._crit_edge.i.i15.unr-lcssa ]
  %lcmp.mod122 = trunc i64 %.sroa.05.0.i.i.i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod122)
  %i.ds = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %.sroa.0.08.i.i.epil.init ; 2 uses
  %.val5.i.i.epil = load <16 x i8>, ptr %i.ds, align 16, !noalias !2548
  %.lobit.i.i.i.epil = ashr <16 x i8> %.val5.i.i.epil, splat (i8 7)
  %i.dt = bitcast <16 x i8> %.lobit.i.i.i.epil to <2 x i64>
  %i.du = or <2 x i64> %i.dt, splat (i64 -9187201950435737472)
  store <2 x i64> %i.du, ptr %i.ds, align 16, !noalias !2548
  br label %._crit_edge.i.i15

._crit_edge.i.i15:                                ; preds = %._crit_edge.i.i15.unr-lcssa, %.epil.preheader
  %i.dv = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dw = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %..i = tail call i64 @llvm.umax.i64(i64 %i.k, i64 16)
  %.30.i = tail call i64 @llvm.umin.i64(i64 %i.k, i64 16)
  %i.dx = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %..i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %i.dx, ptr nonnull align 1 %.val11.i, i64 %.30.i, i1 false), !noalias !2548
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2548
  store ptr @_ZN4core3ops8function6FnOnce9call_once17h45a7d2d8415832f2E, ptr %i.dv, align 8, !noalias !2548
  store i64 168, ptr %i.dw, align 8, !noalias !2548
  store ptr %0, ptr %i.a, align 8, !noalias !2548
  %.val.i.i.i = load i64, ptr %2, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1.i.i.i = load i64, ptr %i.dy, align 8
  br label %.lr.ph.i

bb.r:                                             ; preds = %bb.r, %.lr.ph.i.i14.new
  %.sroa.0.08.i.i = phi i64 [ 0, %.lr.ph.i.i14.new ], [ %i.ec, %bb.r ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i14.new ], [ %niter.next.1, %bb.r ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %.sroa.0.08.i.i ; 2 uses
  %.val5.i.i = load <16 x i8>, ptr %i.dz, align 16, !noalias !2548
  %.lobit.i.i.i = ashr <16 x i8> %.val5.i.i, splat (i8 7)
  %i.ea = bitcast <16 x i8> %.lobit.i.i.i to <2 x i64>
  %i.eb = or <2 x i64> %i.ea, splat (i64 -9187201950435737472)
  store <2 x i64> %i.eb, ptr %i.dz, align 16, !noalias !2548
  %i.ec = add i64 %.sroa.0.08.i.i, 32             ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.val11.i, i64 %.sroa.0.08.i.i
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %.val5.i.i.1 = load <16 x i8>, ptr %i.ee, align 16, !noalias !2548
  %.lobit.i.i.i.1 = ashr <16 x i8> %.val5.i.i.1, splat (i8 7)
  %i.ef = bitcast <16 x i8> %.lobit.i.i.i.1 to <2 x i64>
  %i.eg = or <2 x i64> %i.ef, splat (i64 -9187201950435737472)
  store <2 x i64> %i.eg, ptr %i.ee, align 16, !noalias !2548
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.i.i15.unr-lcssa, label %bb.r

.lr.ph.i:                                         ; preds = %bb.aa, %._crit_edge.i.i15
  %.sroa.0.17.i = phi i64 [ %.sroa.0.1.i, %bb.aa ], [ 1, %._crit_edge.i.i15 ] ; 3 uses
  %.sroa.0.06.i = phi i64 [ %.sroa.0.17.i, %bb.aa ], [ 0, %._crit_edge.i.i15 ] ; 8 uses
  %i.eh = load ptr, ptr %0, align 8, !alias.scope !2548, !nonnull !3, !noundef !3 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.sroa.0.06.i
  %i.ej = load i8, ptr %i.ei, align 1, !noundef !3
  %.not.i16 = icmp eq i8 %i.ej, -128
  br i1 %.not.i16, label %bb.s, label %bb.aa

bb.s:                                             ; preds = %.lr.ph.i
  %.neg.i = mul i64 %.sroa.0.06.i, -168
  %i.ek = getelementptr i8, ptr %i.eh, i64 %.neg.i
  %i.el = getelementptr i8, ptr %i.ek, i64 -168   ; 2 uses
  %i.em = sub nsw i64 0, %.sroa.0.06.i
  br label %bb.t

bb.t:                                             ; preds = %bb.z, %bb.s
  %i.en = phi ptr [ %.pre.i25, %bb.z ], [ %i.eh, %bb.s ]
  %i.eo = getelementptr inbounds [168 x i8], ptr %i.en, i64 %i.em
  %i.ep = getelementptr inbounds i8, ptr %i.eo, i64 -168
  %i.eq = invoke fastcc noundef i64 @_ZN4core4hash11BuildHasher8hash_one17h60662d48bfc71a04E(i64 %.val.i.i.i, i64 %.val1.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.ep)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i" unwind label %bb.u ; 3 uses

bb.u:                                             ; preds = %bb.t
  %i.er = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr181drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$RF$mut$u20$hashbrown..raw..RawTableInner$C$hashbrown..raw..RawTableInner..rehash_in_place..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h868f3c06738f8e98E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #32
          to label %common.resume unwind label %bb.ab

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i": ; preds = %bb.t
  %.val.i18 = load ptr, ptr %0, align 8, !alias.scope !2548, !nonnull !3, !noundef !3 ; 7 uses
  %.val10.i = load i64, ptr %i.h, align 8, !alias.scope !2548, !noundef !3 ; 6 uses
  %.sroa.0.04.i.i19 = and i64 %.val10.i, %i.eq    ; 5 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.val.i18, i64 %.sroa.0.04.i.i19
  %.sroa.0.0.copyload.i35.i.i20 = load <16 x i8>, ptr %i.es, align 1, !noalias !2551
  %i.et = icmp slt <16 x i8> %.sroa.0.0.copyload.i35.i.i20, zeroinitializer
  %i.eu = bitcast <16 x i1> %i.et to i16          ; 2 uses
  %.not.not.i.not6.i.i21 = icmp eq i16 %i.eu, 0
  br i1 %.not.not.i.not6.i.i21, label %.lr.ph.i14.i, label %._crit_edge.i13.i, !prof !2546

.lr.ph.i14.i:                                     ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i", %.lr.ph.i14.i
  %.sroa.0.07.i.i27 = phi i64 [ %.sroa.0.0.i.i28, %.lr.ph.i14.i ], [ %.sroa.0.04.i.i19, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i" ]
  %i.ev = phi i64 [ %i.ew, %.lr.ph.i14.i ], [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i" ]
  %i.ew = add i64 %i.ev, 16                       ; 2 uses
  %i.ex = add i64 %i.ew, %.sroa.0.07.i.i27
  %.sroa.0.0.i.i28 = and i64 %i.ex, %.val10.i     ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %.val.i18, i64 %.sroa.0.0.i.i28
  %.sroa.0.0.copyload.i3.i.i29 = load <16 x i8>, ptr %i.ey, align 1, !noalias !2551
  %i.ez = icmp slt <16 x i8> %.sroa.0.0.copyload.i3.i.i29, zeroinitializer
  %i.fa = bitcast <16 x i1> %i.ez to i16          ; 2 uses
  %.not.not.i.not.i.i30 = icmp eq i16 %i.fa, 0
  br i1 %.not.not.i.not.i.i30, label %.lr.ph.i14.i, label %._crit_edge.i13.i, !prof !2547

._crit_edge.i13.i:                                ; preds = %.lr.ph.i14.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i"
  %.sroa.0.0.lcssa.i.i22 = phi i64 [ %.sroa.0.04.i.i19, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i" ], [ %.sroa.0.0.i.i28, %.lr.ph.i14.i ]
  %.lcssa.i.i23 = phi i16 [ %i.eu, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash28_$u7b$$u7b$closure$u7d$$u7d$17hc280d0065ce340bdE.exit.i" ], [ %i.fa, %.lr.ph.i14.i ]
  %i.fb = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i23, i1 true)
  %i.fc = zext nneg i16 %i.fb to i64
  %i.fd = add i64 %.sroa.0.0.lcssa.i.i22, %i.fc
  %i.fe = and i64 %i.fd, %.val10.i                ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.val.i18, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !noundef !3
  %i.fh = icmp sgt i8 %i.fg, -1
  br i1 %i.fh, label %bb.v, label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i, !prof !155

bb.v:                                             ; preds = %._crit_edge.i13.i
  %.val2.i.i.i26 = load <16 x i8>, ptr %.val.i18, align 16
  %i.fi = icmp slt <16 x i8> %.val2.i.i.i26, zeroinitializer
  %i.fj = bitcast <16 x i1> %i.fi to i16          ; 2 uses
  %i.fk = icmp ne i16 %i.fj, 0
  tail call void @llvm.assume(i1 %i.fk)
  %i.fl = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.fj, i1 true)
  %i.fm = zext nneg i16 %i.fl to i64
  br label %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i

_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i: ; preds = %bb.v, %._crit_edge.i13.i
  %.sroa.0.0.i5.i.i24 = phi i64 [ %i.fm, %bb.v ], [ %i.fe, %._crit_edge.i13.i ] ; 4 uses
  %i.fn = sub i64 %.sroa.0.06.i, %.sroa.0.04.i.i19
  %i.fo = sub i64 %.sroa.0.0.i5.i.i24, %.sroa.0.04.i.i19
  %i.fp = xor i64 %i.fo, %i.fn
  %.unshifted.i = and i64 %i.fp, %.val10.i
  %i.fq = icmp ult i64 %.unshifted.i, 16
  br i1 %i.fq, label %bb.x, label %bb.w, !prof !1634

bb.w:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i
  %.neg9.i = mul i64 %.sroa.0.0.i5.i.i24, -168
  %i.fr = getelementptr i8, ptr %.val.i18, i64 %.neg9.i
  %i.fs = getelementptr i8, ptr %i.fr, i64 -168   ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.val.i18, i64 %.sroa.0.0.i5.i.i24 ; 2 uses
  %i.fu = load i8, ptr %i.ft, align 1, !noundef !3
  %i.fv = lshr i64 %i.eq, 57
  %i.fw = trunc nuw nsw i64 %i.fv to i8           ; 2 uses
  %i.fx = add i64 %.sroa.0.0.i5.i.i24, -16
  %i.fy = and i64 %i.fx, %.val10.i
  store i8 %i.fw, ptr %i.ft, align 1
  %i.fz = load ptr, ptr %0, align 8, !alias.scope !2548, !nonnull !3, !noundef !3
  %i.ga = getelementptr i8, ptr %i.fz, i64 %i.fy
  %i.gb = getelementptr i8, ptr %i.ga, i64 16
  store i8 %i.fw, ptr %i.gb, align 1
  %i.gc = icmp eq i8 %i.fu, -1
  br i1 %i.gc, label %bb.y, label %bb.z

bb.x:                                             ; preds = %_ZN9hashbrown3raw13RawTableInner16find_insert_slot17h8e144e2bab241514E.exit.i
  %i.gd = lshr i64 %i.eq, 57
  %i.ge = trunc nuw nsw i64 %i.gd to i8           ; 2 uses
  %i.gf = add i64 %.sroa.0.06.i, -16
  %i.gg = and i64 %.val10.i, %i.gf
  %i.gh = getelementptr inbounds nuw i8, ptr %.val.i18, i64 %.sroa.0.06.i
  store i8 %i.ge, ptr %i.gh, align 1
  %i.gi = load ptr, ptr %0, align 8, !alias.scope !2548, !nonnull !3, !noundef !3
  %i.gj = getelementptr i8, ptr %i.gi, i64 %i.gg
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  store i8 %i.ge, ptr %i.gk, align 1
  br label %bb.aa

bb.y:                                             ; preds = %bb.w
  %i.gl = add i64 %.sroa.0.06.i, -16
  %i.gm = load i64, ptr %i.h, align 8, !alias.scope !2548, !noundef !3
  %i.gn = and i64 %i.gm, %i.gl
  %i.go = load ptr, ptr %0, align 8, !alias.scope !2548, !nonnull !3, !noundef !3
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 %.sroa.0.06.i
  store i8 -1, ptr %i.gp, align 1
  %i.gq = load ptr, ptr %0, align 8, !alias.scope !2548, !nonnull !3, !noundef !3
  %i.gr = getelementptr i8, ptr %i.gq, i64 %i.gn
  %i.gs = getelementptr i8, ptr %i.gr, i64 16
  store i8 -1, ptr %i.gs, align 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(168) %i.fs, ptr noundef nonnull align 1 dereferenceable(168) %i.el, i64 168, i1 false)
  br label %bb.aa

bb.z:                                             ; preds = %bb.w
  tail call fastcc void @_ZN4core3ptr19swap_nonoverlapping17h6a7dbe84a978c788E(ptr noundef %i.el, ptr noundef %i.fs)
  %.pre.i25 = load ptr, ptr %0, align 8, !alias.scope !2554, !noalias !2557
  br label %bb.t

bb.aa:                                            ; preds = %bb.y, %bb.x, %.lr.ph.i
  %i.gt = icmp ult i64 %.sroa.0.17.i, %i.k        ; 2 uses
  %i.gu = zext i1 %i.gt to i64
  %.sroa.0.1.i = add nuw i64 %.sroa.0.17.i, %i.gu
  br i1 %i.gt, label %.lr.ph.i, label %_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit

bb.ab:                                            ; preds = %bb.u
  %i.gv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #33
  unreachable

_ZN9hashbrown3raw13RawTableInner15rehash_in_place17h6243273e76fbd181E.exit: ; preds = %bb.aa
  %.pre13.i = load i64, ptr %i.h, align 8, !alias.scope !2548
  %.pre13.i.fr = freeze i64 %.pre13.i             ; 3 uses
  %.pre14.i = add i64 %.pre13.i.fr, 1
end_hunk_4
