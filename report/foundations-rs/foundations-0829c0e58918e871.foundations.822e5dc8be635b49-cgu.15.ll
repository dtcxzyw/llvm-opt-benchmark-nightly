Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.15?download=true
inline.NumInlined: 757
inline.NumDeleted: 452
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvXsg_NtNtCs7BKkw3QFn1J_4time10formatting11formattableNtNtNtNtBa_18format_description10well_known7rfc33397Rfc3339NtNtB6_6sealed6Sealed11format_intoNtNtBa_16offset_date_time14OffsetDateTimeINtNtCs1xwejQucwHj_5alloc3vec3VechEECsbaWXNhtWAp9_11foundations:bb.a
  %i.cm = udiv i32 %.val180, 10000, !dbg !3579
  %i.cn = urem i32 %i.cm, 10000, !dbg !3580       ; 2 uses
  %i.co = mul nuw nsw i32 %i.cn, 5243, !dbg !3581
  %i.cp = lshr i32 %i.co, 19, !dbg !3581          ; 2 uses
  %.neg.i.i.i.i = mul nuw nsw i32 %i.cp, 156, !dbg !3582
  %i.cq = add nuw nsw i32 %.neg.i.i.i.i, %i.cn, !dbg !3583 ; 2 uses
  %i.cr = trunc i32 %i.cq to i8, !dbg !3584
  %i.cs = icmp ult i8 %i.cr, 100, !dbg !3585
  %.sroa.0.0.insert.ext.i.i.i.i = trunc nuw nsw i32 %i.cp to i16, !dbg !3586 ; 2 uses
  tail call void @llvm.assume(i1 %i.cs), !dbg !3587
  %i.ct = trunc nuw nsw i32 %i.cq to i16, !dbg !3588
  %.sroa.2.0.insert.ext.i.i.i.i = shl i16 %i.ct, 8, !dbg !3588 ; 2 uses
  %.sroa.0.0.insert.insert.i.i.i.i = or disjoint i16 %.sroa.2.0.insert.ext.i.i.i.i, %.sroa.0.0.insert.ext.i.i.i.i, !dbg !3588
  %i.cu = icmp samesign ult i16 %.sroa.2.0.insert.ext.i.i.i.i, 25600, !dbg !3589
  %.sroa.44.0.extract.shift.i.i.i = lshr i16 %.sroa.0.0.insert.insert.i.i.i.i, 7, !dbg !3590
  %.sroa.03.0.extract.trunc.mask.i.i.i = shl nuw nsw i16 %.sroa.0.0.insert.ext.i.i.i.i, 1, !dbg !3591
  %i.cv = and i16 %.sroa.03.0.extract.trunc.mask.i.i.i, 254, !dbg !3591
  %i.cw = zext nneg i16 %i.cv to i64, !dbg !3591
  %i.cx = getelementptr inbounds nuw i8, ptr @_RNvNtCs7BKkw3QFn1J_4time7num_fmt17ZERO_PADDED_PAIRS, i64 %i.cw, !dbg !3592
  tail call void @llvm.assume(i1 %i.cu), !dbg !3593
  %i.cy = zext nneg i16 %.sroa.44.0.extract.shift.i.i.i to i64, !dbg !3594
  %i.cz = getelementptr inbounds nuw i8, ptr @_RNvNtCs7BKkw3QFn1J_4time7num_fmt17ZERO_PADDED_PAIRS, i64 %i.cy, !dbg !3595 ; 2 uses
  %i.da = urem i32 %.val180, 10000, !dbg !3596    ; 2 uses
  %i.db = udiv i32 %.val180, 100000000, !dbg !3597
  %i.dc = zext nneg i32 %i.db to i64, !dbg !3598
  %i.dd = getelementptr inbounds nuw i8, ptr @_RNvNtCs7BKkw3QFn1J_4time7num_fmt13SINGLE_DIGITS, i64 %i.dc, !dbg !3599
  %i.de = mul nuw nsw i32 %i.da, 5243, !dbg !3600
  %i.df = lshr i32 %i.de, 19, !dbg !3600          ; 2 uses
  %.neg.i.i5.i.i = mul nuw nsw i32 %i.df, 156, !dbg !3601
  %i.dg = add nuw nsw i32 %.neg.i.i5.i.i, %i.da, !dbg !3602 ; 2 uses
  %i.dh = trunc i32 %i.dg to i8, !dbg !3603
  %i.di = icmp ult i8 %i.dh, 100, !dbg !3604
  %.sroa.0.0.insert.ext.i.i6.i.i = trunc nuw nsw i32 %i.df to i16, !dbg !3605 ; 2 uses
  tail call void @llvm.assume(i1 %i.di), !dbg !3606
  %i.dj = trunc nuw nsw i32 %i.dg to i16, !dbg !3607
  %.sroa.2.0.insert.ext.i.i7.i.i = shl i16 %i.dj, 8, !dbg !3607 ; 2 uses
  %.sroa.0.0.insert.insert.i.i8.i.i = or disjoint i16 %.sroa.2.0.insert.ext.i.i7.i.i, %.sroa.0.0.insert.ext.i.i6.i.i, !dbg !3607
  %i.dk = icmp samesign ult i16 %.sroa.2.0.insert.ext.i.i7.i.i, 25600, !dbg !3608
  %.sroa.44.0.extract.shift.i9.i.i = lshr i16 %.sroa.0.0.insert.insert.i.i8.i.i, 7, !dbg !3609
  %.sroa.03.0.extract.trunc.mask.i10.i.i = shl nuw nsw i16 %.sroa.0.0.insert.ext.i.i6.i.i, 1, !dbg !3610
  %i.dl = and i16 %.sroa.03.0.extract.trunc.mask.i10.i.i, 254, !dbg !3610
  %i.dm = zext nneg i16 %i.dl to i64, !dbg !3610
  %i.dn = getelementptr inbounds nuw i8, ptr @_RNvNtCs7BKkw3QFn1J_4time7num_fmt17ZERO_PADDED_PAIRS, i64 %i.dm, !dbg !3611 ; 2 uses
  tail call void @llvm.assume(i1 %i.dk), !dbg !3612
  %i.do = zext nneg i16 %.sroa.44.0.extract.shift.i9.i.i to i64, !dbg !3613
  %i.dp = getelementptr inbounds nuw i8, ptr @_RNvNtCs7BKkw3QFn1J_4time7num_fmt17ZERO_PADDED_PAIRS, i64 %i.do, !dbg !3614
  %i.dq = load i8, ptr %i.dd, align 1, !dbg !3615, !noalias !3432, !noundef !263
  %i.dr = load i16, ptr %i.cx, align 1, !dbg !3616, !noalias !3432
  %i.ds = zext i16 %i.dr to i64, !dbg !3616
  %i.dt = load i8, ptr %i.cz, align 1, !dbg !3617, !noalias !3432, !noundef !263
  %i.du = getelementptr inbounds nuw i8, ptr %i.cz, i64 1, !dbg !3618
  %i.dv = load i8, ptr %i.du, align 1, !dbg !3618, !noalias !3432, !noundef !263
  %i.dw = load i8, ptr %i.dn, align 1, !dbg !3619, !noalias !3432, !noundef !263
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 1, !dbg !3620
  %i.dy = load i8, ptr %i.dx, align 1, !dbg !3620, !noalias !3432, !noundef !263
  %i.dz = load i16, ptr %i.dp, align 1, !dbg !3621, !noalias !3432
  %i.ea = zext i16 %i.dz to i64, !dbg !3621
  %i.eb = shl nuw i64 %i.ea, 48, !dbg !3621
  %.sroa.8.0.insert.ext.i = zext i8 %i.dy to i64, !dbg !3622
  %.sroa.8.0.insert.shift.i = shl nuw nsw i64 %.sroa.8.0.insert.ext.i, 40, !dbg !3622
  %.sroa.7.0.insert.ext.i = zext i8 %i.dw to i64, !dbg !3622
  %.sroa.7.0.insert.shift.i = shl nuw nsw i64 %.sroa.7.0.insert.ext.i, 32, !dbg !3622
  %.sroa.6.0.insert.ext.i = zext i8 %i.dv to i64, !dbg !3622
  %.sroa.6.0.insert.shift.i = shl nuw nsw i64 %.sroa.6.0.insert.ext.i, 24, !dbg !3622
  %.sroa.5.0.insert.ext.i = zext i8 %i.dt to i64, !dbg !3622
  %.sroa.5.0.insert.shift.i = shl nuw nsw i64 %.sroa.5.0.insert.ext.i, 16, !dbg !3622
  %.sroa.7.0.insert.insert.i = or disjoint i64 %.sroa.5.0.insert.shift.i, %i.ds, !dbg !3622
  %.sroa.6.0.insert.insert.i = or disjoint i64 %.sroa.7.0.insert.insert.i, %.sroa.6.0.insert.shift.i, !dbg !3622
  %.sroa.43.0.insert.mask.i = or disjoint i64 %.sroa.6.0.insert.insert.i, %.sroa.7.0.insert.shift.i, !dbg !3622
  %.sroa.02.0.insert.mask.i = or disjoint i64 %.sroa.43.0.insert.mask.i, %.sroa.8.0.insert.shift.i, !dbg !3622
  %.sroa.02.0.insert.insert.i = or i64 %.sroa.02.0.insert.mask.i, %i.eb, !dbg !3622 ; 2 uses
  %i.ec = xor i64 %.sroa.02.0.insert.insert.i, 3472328296227680304, !dbg !3623
  %i.ed = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.ec, i1 false), !dbg !3624
  %i.ee = lshr i64 %i.ed, 3, !dbg !3625
  %i.ef = sub nuw nsw i64 9, %i.ee, !dbg !3626    ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3627 ; 2 uses
  store i8 %i.dq, ptr %i.eg, align 8, !dbg !3627, !alias.scope !3432
  %.sroa.47.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 9, !dbg !3627
  store i64 %.sroa.02.0.insert.insert.i, ptr %.sroa.47.0..sroa_idx.i, align 1, !dbg !3627, !alias.scope !3432
  store i64 %i.ef, ptr %i.a, align 8, !dbg !3627, !alias.scope !3432
  call void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.eg, i64 noundef range(i64 0, -9223372036854775808) %i.ef), !dbg !3628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3629
  br label %bb.k, !dbg !3630

bb.m:                                             ; preds = %bb.k
  %i.eh = or i8 %.sroa.01.1.extract.trunc.i.i, %.sroa.01.0.extract.trunc.i.i, !dbg !3631
  %i.ei = or i8 %i.eh, %.sroa.01.2.extract.trunc.i.i, !dbg !3631
  %i.ej = icmp slt i8 %i.ei, 0, !dbg !3632
  %. = select i1 %i.ej, ptr @13, ptr @17, !dbg !3633
  call void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %., i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !3634
  %i.ek = shl nuw nsw i8 %.sroa.0138.0, 1, !dbg !3635
  %i.el = zext nneg i8 %i.ek to i64, !dbg !3635
  %i.em = getelementptr inbounds nuw i8, ptr @_RNvNtCs7BKkw3QFn1J_4time7num_fmt17ZERO_PADDED_PAIRS, i64 %i.el, !dbg !3636
  call void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.em, i64 noundef range(i64 0, -9223372036854775808) 2), !dbg !3637
  call void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !3638
  %.sroa.0159.0 = call i8 @llvm.abs.i8(i8 %.sroa.01.1.extract.trunc.i.i, i1 true), !dbg !3639
  %i.en = shl nuw nsw i8 %.sroa.0159.0, 1, !dbg !3640
  %i.eo = zext nneg i8 %i.en to i64, !dbg !3640
  %i.ep = getelementptr inbounds nuw i8, ptr @_RNvNtCs7BKkw3QFn1J_4time7num_fmt17ZERO_PADDED_PAIRS, i64 %i.eo, !dbg !3641
  call void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ep, i64 noundef range(i64 0, -9223372036854775808) 2), !dbg !3642
  %i.eq = add nuw nsw i64 %.sroa.0.0, 5, !dbg !3643
  %i.er = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3644
  store i64 %i.eq, ptr %i.er, align 8, !dbg !3644
  store i64 -1, ptr %0, align 8, !dbg !3644
  br label %bb.o, !dbg !3645

bb.n:                                             ; preds = %bb.k
  call void @_RNvMs1_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechE17extend_from_sliceCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @18, i64 noundef range(i64 0, -9223372036854775808) 1), !dbg !3646
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !3647
  store i64 %.sroa.0.0, ptr %i.es, align 8, !dbg !3647
  store i64 -1, ptr %0, align 8, !dbg !3647
  br label %bb.o, !dbg !3648

bb.o:                                             ; preds = %bb.n, %bb.b, %bb.e, %bb.j, %bb.m
  ret void, !dbg !3645
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef i64 @_RINvYINtNtCs3oUPovFnLWP_4core4hash18BuildHasherDefaultNtNtCs74LoFwSioHw_4http10extensions8IdHasherENtB6_11BuildHasher8hash_oneRNtNtB8_3any6TypeIdECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #5 personality ptr @rust_eh_personality !dbg !3649 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3661
  %.val.i = load i64, ptr %i.a, align 8, !dbg !3661, !noalias !3660
  ret i64 %.val.i, !dbg !3662
}

; Function Attrs: nonlazybind uwtable
define hidden noundef double @_RINvYNtNtNtCs3ZeXDd4Wx7Y_4rand4rngs6thread9ThreadRngNtNtB9_3rng6RngExt12random_rangedINtNtNtCs3oUPovFnLWP_4core3ops5range5RangedEECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, double noundef %1, double noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3663 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 3 uses
  %i.b = fcmp uge double %1, %2, !dbg !3808
  br i1 %i.b, label %bb.h, label %bb.b, !dbg !3809, !prof !331

bb.b:                                             ; preds = %bb.a
  %.val2 = load ptr, ptr %0, align 8, !dbg !3810  ; 6 uses
  %i.c = fsub double %2, %1, !dbg !3811           ; 2 uses
  %i.d = tail call double @llvm.fabs.f64(double %i.c), !dbg !3812
  %i.e = fcmp ueq double %i.d, +inf, !dbg !3813
  br i1 %i.e, label %bb.g, label %bb.c, !dbg !3814

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  %i.f = getelementptr inbounds nuw i8, ptr %.val2, i64 16, !dbg !3815 ; 5 uses
  %i.g = load i32, ptr %i.f, align 4, !dbg !3816, !alias.scope !3781, !noalias !3782, !noundef !263 ; 3 uses
  %i.h = icmp ult i32 %i.g, 63, !dbg !3817
  br i1 %i.h, label %bb.f, label %bb.d, !dbg !3817

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %.val2, i64 268, !dbg !3818
  %i.j = load i32, ptr %i.i, align 4, !dbg !3818, !alias.scope !3781, !noalias !3782, !noundef !263
  %i.k = getelementptr inbounds nuw i8, ptr %.val2, i64 272, !dbg !3819 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.val2, i64 320, !dbg !3820
  %i.m = load i64, ptr %i.l, align 4, !dbg !3821, !alias.scope !3792, !noalias !3782
  %i.n = icmp ugt i64 %i.m, 1023, !dbg !3822
  br i1 %i.n, label %bb.e, label %_RNvXNtNtCs3ZeXDd4Wx7Y_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsiDrDGaT3qEB_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i, !dbg !3822, !prof !331

bb.e:                                             ; preds = %bb.d
  tail call void @_RNvMs_NtNtCs3ZeXDd4Wx7Y_4rand4rngs6threadNtB4_13ReseedingCore13try_to_reseed(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.k) #29, !dbg !3823, !noalias !3796
  br label %_RNvXNtNtCs3ZeXDd4Wx7Y_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsiDrDGaT3qEB_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i, !dbg !3823

_RNvXNtNtCs3ZeXDd4Wx7Y_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsiDrDGaT3qEB_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i: ; preds = %bb.e, %bb.d
  tail call void @_RNvXs_NtCs2zhaXXqUmnG_8chacha203rngINtB6_10ChaChaCoreNtB6_3R12NtNtB6_8variants6LegacyENtNtCsiDrDGaT3qEB_9rand_core5block9Generator8generateCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 4 dereferenceable(64) %i.k, ptr noalias nofree noundef nonnull align 4 dereferenceable(320) %i.f), !dbg !3824, !noalias !3782
  %i.o = load i32, ptr %i.f, align 4, !dbg !3825, !alias.scope !3781, !noalias !3782, !noundef !263 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i32 %i.g, 63, !dbg !3826 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val2, i64 20, !dbg !3826
  %i.q = load i32, ptr %i.p, align 4, !dbg !3826, !alias.scope !3781, !noalias !3782
  %.sroa.03.0.ph.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i32 %i.o, i32 %i.q, !dbg !3826
  %.sroa.02.0.ph.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i32 %i.j, i32 %i.o, !dbg !3826
  %.sroa.0.0.ph.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i64 4294967808, i64 8589935104, !dbg !3826
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs3ZeXDd4Wx7Y_4rand5distr7uniform5ErrorE6unwrapCsbaWXNhtWAp9_11foundations.exit, !dbg !3827

bb.f:                                             ; preds = %bb.c
  %i.r = zext nneg i32 %i.g to i64, !dbg !3828    ; 2 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.r, !dbg !3829 ; 2 uses
  %i.t = load i32, ptr %i.s, align 4, !dbg !3829, !alias.scope !3781, !noalias !3782, !noundef !263
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 4, !dbg !3830
  %i.v = load i32, ptr %i.u, align 4, !dbg !3830, !alias.scope !3781, !noalias !3782, !noundef !263
  %i.w = shl nuw nsw i64 %i.r, 32, !dbg !3831
  %i.x = add nuw nsw i64 %i.w, 8589935104, !dbg !3831
  br label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs3ZeXDd4Wx7Y_4rand5distr7uniform5ErrorE6unwrapCsbaWXNhtWAp9_11foundations.exit, !dbg !3827

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3832, !noalias !3802
  store i8 1, ptr %i.a, align 1, !dbg !3832, !noalias !3802
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #31, !dbg !3833, !noalias !3803
  unreachable, !dbg !3833

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultdNtNtNtCs3ZeXDd4Wx7Y_4rand5distr7uniform5ErrorE6unwrapCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.f, %_RNvXNtNtCs3ZeXDd4Wx7Y_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsiDrDGaT3qEB_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i
  %.sroa.0.018.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.ph.i.i.i.i.i.i.i, %_RNvXNtNtCs3ZeXDd4Wx7Y_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsiDrDGaT3qEB_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i ], [ %i.x, %bb.f ]
  %.sroa.02.017.i.i.i.i.i.i.i = phi i32 [ %.sroa.02.0.ph.i.i.i.i.i.i.i, %_RNvXNtNtCs3ZeXDd4Wx7Y_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsiDrDGaT3qEB_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i ], [ %i.t, %bb.f ]
  %.sroa.03.016.i.i.i.i.i.i.i = phi i32 [ %.sroa.03.0.ph.i.i.i.i.i.i.i, %_RNvXNtNtCs3ZeXDd4Wx7Y_4rand4rngs6threadNtB2_13ReseedingCoreNtNtCsiDrDGaT3qEB_9rand_core5block9Generator8generate.exit.i.i.i.i.i.i.i ], [ %i.v, %bb.f ]
  %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i = lshr i64 %.sroa.0.018.i.i.i.i.i.i.i, 32
  %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i = trunc nuw nsw i64 %.sroa.6.0.extract.shift.i.i.i.i.i.i.i.i to i32
  store i32 %.sroa.6.0.extract.trunc.i.i.i.i.i.i.i.i, ptr %i.f, align 4, !dbg !3834, !alias.scope !3781, !noalias !3782
  %i.y = zext i32 %.sroa.03.016.i.i.i.i.i.i.i to i64, !dbg !3835
  %i.z = shl nuw i64 %i.y, 32, !dbg !3836
  %i.aa = zext i32 %.sroa.02.017.i.i.i.i.i.i.i to i64, !dbg !3837
  %i.ab = or disjoint i64 %i.z, %i.aa, !dbg !3836
  %i.ac = lshr i64 %i.ab, 12, !dbg !3838
  %i.ad = or disjoint i64 %i.ac, 4607182418800017408, !dbg !3839
  %i.ae = bitcast i64 %i.ad to double, !dbg !3840
  %i.af = fadd nnan ninf double %i.ae, -1.000000e+00, !dbg !3841
  %i.ag = fmul nnan double %i.c, %i.af, !dbg !3842
  %i.ah = fadd double %1, %i.ag, !dbg !3842
  ret double %i.ah, !dbg !3843

bb.h:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @21, ptr noundef nonnull inttoptr (i64 51 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #31, !dbg !3844
  unreachable, !dbg !3844
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracingNtB2_9SpanScope12into_context(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3845 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [56 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !3901
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3890), !dbg !3902
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !3903, !noalias !3890
  %i.f = invoke noundef nonnull ptr @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal11current_log()
          to label %.noexc unwind label %bb.h, !dbg !3903 ; 3 uses

.noexc:                                           ; preds = %bb.a
  store ptr %i.f, ptr %i.c, align 8, !dbg !3903, !noalias !3890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !3904, !noalias !3890
  invoke void @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal12current_span(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.e unwind label %bb.d, !dbg !3904, !noalias !3890

bb.b:                                             ; preds = %bb.f, %bb.d
  %.pn.i = phi { ptr, i32 } [ %i.j, %bb.f ], [ %i.i, %bb.d ] ; 2 uses
  %i.g = atomicrmw add ptr %i.f, i64 -1 release, align 8, !dbg !3905, !noalias !3891
  %i.h = icmp eq i64 %i.g, 1, !dbg !3906
  br i1 %i.h, label %bb.c, label %.thread, !dbg !3906

bb.c:                                             ; preds = %bb.b
  fence acquire, !dbg !3907
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry3log8internal27LoggerWithKvNestingTrackingEE9drop_slowB2k_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #29
          to label %.thread unwind label %bb.g, !dbg !3908, !noalias !3890

bb.d:                                             ; preds = %.noexc
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3909, !noalias !3890
  invoke void @_RNvNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing7testing19current_test_tracer(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.f, !dbg !3909, !noalias !3890

bb.f:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEB15_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #28
          to label %bb.b unwind label %bb.g, !dbg !3910, !noalias !3890

bb.g:                                             ; preds = %bb.f, %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !3911, !noalias !3890
  unreachable, !dbg !3911

bb.h:                                             ; preds = %bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.i:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !3912
  store ptr %i.f, ptr %i.m, align 8, !dbg !3912, !alias.scope !3890
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !3912
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !3912
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !3912
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3910, !noalias !3890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !3910, !noalias !3890
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !3910, !noalias !3890
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !3913
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !3914
  call void @llvm.experimental.noalias.scope.decl(metadata !3892), !dbg !3915
  %i.o = load i64, ptr %i.e, align 8, !dbg !3916, !range !357, !alias.scope !3892, !noundef !263 ; 2 uses
  %i.p = icmp eq i64 %i.o, -1, !dbg !3916
  br i1 %i.p, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEB15_.exit, label %bb.j, !dbg !3916

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3893), !dbg !3916
  call void @llvm.experimental.noalias.scope.decl(metadata !3894), !dbg !3917
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !3918 ; 4 uses
  switch i64 %i.o, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEB15_.exit [
    i64 0, label %bb.k
    i64 1, label %bb.m
  ], !dbg !3918

bb.k:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !3895), !dbg !3918
  call void @llvm.experimental.noalias.scope.decl(metadata !3896), !dbg !3919
  %i.r = load ptr, ptr %i.q, align 8, !dbg !3920, !alias.scope !3897, !nonnull !263, !noundef !263
  %i.s = atomicrmw add ptr %i.r, i64 -1 release, align 8, !dbg !3921, !noalias !3897
  %i.t = icmp eq i64 %i.s, 1, !dbg !3922
  br i1 %i.t, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEB15_.exit, !dbg !3922

bb.l:                                             ; preds = %bb.k
  fence acquire, !dbg !3923
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing4live18live_reference_set19LiveReferenceHandleIBx_INtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockINtNtCs26L2cHvO7VQ_13cf_rustracing4span4SpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEEEE9drop_slowBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEB15_.exit unwind label %bb.o, !dbg !3924

bb.m:                                             ; preds = %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !3898), !dbg !3918
  call void @llvm.experimental.noalias.scope.decl(metadata !3899), !dbg !3925
  %i.u = load ptr, ptr %i.q, align 8, !dbg !3926, !alias.scope !3900, !nonnull !263, !noundef !263
  %i.v = atomicrmw add ptr %i.u, i64 -1 release, align 8, !dbg !3927, !noalias !3900
  %i.w = icmp eq i64 %i.v, 1, !dbg !3928
  br i1 %i.w, label %bb.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEB15_.exit, !dbg !3928

bb.n:                                             ; preds = %bb.m
  fence acquire, !dbg !3929
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs7hp7eIiX3bT_8lock_api6rwlock6RwLockNtNtCsix9GtmFTcQ_11parking_lot10raw_rwlock9RawRwLockINtNtCs26L2cHvO7VQ_13cf_rustracing4span4SpanNtNtCs7qAQKZbgfvS_20cf_rustracing_jaeger4span16SpanContextStateEEE9drop_slowCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.q) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEB15_.exit unwind label %bb.o, !dbg !3930

bb.o:                                             ; preds = %bb.n, %bb.l
  %i.x = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !3915
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsbaWXNhtWAp9_11foundations9telemetry17telemetry_context16TelemetryContextEBH_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.e) #28
          to label %bb.q unwind label %bb.p, !dbg !3931

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEEB15_.exit: ; preds = %bb.m, %bb.k, %bb.j, %bb.i, %bb.l, %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !3915
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !3932
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr noundef nonnull align 8 dereferenceable(56) %i.e, i64 56, i1 false), !dbg !3933
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !3931
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !3931
  %.val3 = load ptr, ptr %i.y, align 8, !dbg !3931, !nonnull !263, !align !265, !noundef !263
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbaWXNhtWAp9_11foundations9telemetry5scope5ScopeNtNtNtBG_7tracing8internal10SharedSpanEEBI_(ptr %.val3), !dbg !3931
  ret void, !dbg !3934

bb.p:                                             ; preds = %bb.q, %.thread, %bb.o
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #30, !dbg !3935
  unreachable, !dbg !3935

bb.q:                                             ; preds = %bb.o, %.thread
  %.pn8 = phi { ptr, i32 } [ %eh.lpad-body, %.thread ], [ %i.x, %bb.o ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !3931
  %.val = load ptr, ptr %i.aa, align 8, !dbg !3931, !nonnull !263, !align !265, !noundef !263
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbaWXNhtWAp9_11foundations9telemetry5scope5ScopeNtNtNtBG_7tracing8internal10SharedSpanEEBI_(ptr %.val) #28
          to label %bb.r unwind label %bb.p, !dbg !3931

.thread:                                          ; preds = %bb.b, %bb.c, %bb.h
  %eh.lpad-body = phi { ptr, i32 } [ %i.l, %bb.h ], [ %.pn.i, %bb.c ], [ %.pn.i, %bb.b ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsbaWXNhtWAp9_11foundations9telemetry7tracing8internal10SharedSpanEBJ_(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #28
          to label %bb.q unwind label %bb.p, !dbg !3931

bb.r:                                             ; preds = %bb.q
  resume { ptr, i32 } %.pn8, !dbg !3935
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtCshtG1HG2JiYb_12tracing_core10dispatcher5StateE16get_or_init_slowCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0) unnamed_addr #4 !dbg !3936 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !3948 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !dbg !3949, !range !489, !noundef !263
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.d
    i8 1, label %bb.b
    i8 2, label %bb.c
  ], !dbg !3950

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eager7destroyNtNtCshtG1HG2JiYb_12tracing_core10dispatcher5StateECsbaWXNhtWAp9_11foundations), !dbg !3951
  store i8 0, ptr %i.a, align 8, !dbg !3952
  br label %bb.d, !dbg !3953

bb.c:                                             ; preds = %bb.a
  br label %bb.d, !dbg !3954

bb.d:                                             ; preds = %bb.a, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.c ], [ %0, %bb.b ], [ %0, %bb.a ], !dbg !3955
  ret ptr %.sroa.0.0, !dbg !3953
}

; Function Attrs: cold nonlazybind uwtable
define hidden noundef ptr @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCs3zuhHmEJ01l_5tokio7runtime7context7ContextE16get_or_init_slowCsbaWXNhtWAp9_11foundations(ptr noundef nonnull align 8 %0) unnamed_addr #4 !dbg !3956 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !3968 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !dbg !3969, !range !489, !noundef !263
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.d
    i8 1, label %bb.b
    i8 2, label %bb.c
  ], !dbg !3970

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull %0, ptr noundef nonnull @_RINvNtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native5eager7destroyNtNtNtCs3zuhHmEJ01l_5tokio7runtime7context7ContextECsbaWXNhtWAp9_11foundations), !dbg !3971
  store i8 0, ptr %i.a, align 8, !dbg !3972
end_hunk_0
