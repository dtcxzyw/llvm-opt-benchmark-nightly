Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_svg-9252d00a33f6f6d4.typst_svg.f56e30c74974af6c-cgu.0?download=true
inline.NumInlined: 2859
inline.NumDeleted: 1255
loop-unroll.NumCompletelyUnrolled: 21
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_RNvMNtCsl4q486LaARA_9typst_svg5paintNtB4_11SVGRenderer13push_gradient:bb.a
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 232 ; 4 uses
  %i.lj = load i64, ptr %i.li, align 8, !alias.scope !3643, !noalias !3644, !noundef !10 ; 2 uses
  %i.lk = icmp eq i64 %i.lj, 0
  %i.ll = trunc i8 %i.lh to i1
  %or.cond.i.i.i.i28 = and i1 %i.lk, %i.ll
  br i1 %or.cond.i.i.i.i28, label %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE0EB1S_.exit.i.i.i.i, label %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE0EB1R_.exit.i.i.i, !prof !3121

_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE0EB1S_.exit.i.i.i.i: ; preds = %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i26
  %i.lm = call { i64, i64 } @_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE0EB20_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ji, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) %i.jf, i64 noundef %i.jh, i1 noundef zeroext true) #35, !noalias !3633 ; 0 uses
  %.val.i.i.i1.i = load ptr, ptr %i.ji, align 8, !alias.scope !3643, !noalias !3644 ; 3 uses
  %.val5.i.i.i.i35 = load i64, ptr %i.jl, align 8, !alias.scope !3643, !noalias !3644, !noundef !10 ; 2 uses
  %i.ln = call fastcc noundef i64 @_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index(ptr %.val.i.i.i1.i, i64 %.val5.i.i.i.i35, i64 noundef %i.jd) #34, !noalias !3633 ; 2 uses
  %.phi.trans.insert8.i.i.i.i36 = getelementptr inbounds nuw i8, ptr %.val.i.i.i1.i, i64 %i.ln
  %.pre9.i.i.i.i37 = load i8, ptr %.phi.trans.insert8.i.i.i.i36, align 1, !noalias !3645
  %.pre10.i.i.i.i38 = load i64, ptr %i.li, align 8, !alias.scope !3648, !noalias !3644
  %.pre.i.i.i39 = load i64, ptr %i.kl, align 8, !alias.scope !3648, !noalias !3644
  br label %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE0EB1R_.exit.i.i.i

_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE0EB1R_.exit.i.i.i: ; preds = %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE0EB1S_.exit.i.i.i.i, %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i26
  %i.lo = phi i64 [ %.pre.i.i.i39, %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE0EB1S_.exit.i.i.i.i ], [ %i.km, %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i26 ]
  %i.lp = phi i64 [ %.val5.i.i.i.i35, %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE0EB1S_.exit.i.i.i.i ], [ %i.jm, %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i26 ]
  %i.lq = phi i64 [ %.pre10.i.i.i.i38, %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE0EB1S_.exit.i.i.i.i ], [ %i.lj, %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i26 ]
  %i.lr = phi i8 [ %.pre9.i.i.i.i37, %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE0EB1S_.exit.i.i.i.i ], [ %i.lh, %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i26 ]
  %i.ls = phi ptr [ %.val.i.i.i1.i, %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE0EB1S_.exit.i.i.i.i ], [ %i.jn, %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i26 ] ; 3 uses
  %.sroa.0.0.i.i.i.i29 = phi i64 [ %i.ln, %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE0EB1S_.exit.i.i.i.i ], [ %.sroa.0.0.i5.i.i.i.i.i27, %_RNvMsa_NtCs2qDE43xvXom_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit.i.i.i.i26 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3649)
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 %.sroa.0.0.i.i.i.i29
  %i.lu = and i8 %i.lr, 1
  %i.lv = zext nneg i8 %i.lu to i64
  %i.lw = sub i64 %i.lq, %i.lv
  store i64 %i.lw, ptr %i.li, align 8, !alias.scope !3648, !noalias !3644
  %i.lx = add i64 %.sroa.0.0.i.i.i.i29, -16
  %i.ly = and i64 %i.lx, %i.lp
  store i8 %i.jk, ptr %i.lt, align 1, !noalias !3645
  %i.lz = getelementptr i8, ptr %i.ls, i64 %i.ly
  %i.ma = getelementptr i8, ptr %i.lz, i64 16
  store i8 %i.jk, ptr %i.ma, align 1, !noalias !3645
  %i.mb = add i64 %i.lo, 1
  store i64 %i.mb, ptr %i.kl, align 8, !alias.scope !3648, !noalias !3644
  %i.mc = sub nsw i64 0, %.sroa.0.0.i.i.i.i29
  %i.md = getelementptr inbounds [8 x i8], ptr %i.ls, i64 %i.mc
  %i.me = getelementptr inbounds i8, ptr %i.md, i64 -8
  store i64 %i.km, ptr %i.me, align 8, !noalias !3645
  call void @llvm.experimental.noalias.scope.decl(metadata !3650)
  %i.mf = load i64, ptr %i.jg, align 8, !alias.scope !3653, !noalias !3654, !noundef !10 ; 11 uses
  %i.mg = icmp ult i64 %i.mf, 72057594037927936
  call void @llvm.assume(i1 %i.mg)
  %i.mh = load i64, ptr %i.is, align 8, !range !366, !alias.scope !3653, !noalias !3654, !noundef !10
  %i.mi = icmp eq i64 %i.mf, %i.mh
  br i1 %i.mi, label %bb.az, label %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE10push_entryB13_.exit.i.i.i

bb.az:                                            ; preds = %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE0EB1R_.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3656)
  %i.mj = load i64, ptr %i.kl, align 8, !alias.scope !3659, !noalias !3654, !noundef !10
  %i.mk = load i64, ptr %i.li, align 8, !alias.scope !3659, !noalias !3654, !noundef !10
  %i.ml = add i64 %i.mk, %i.mj                    ; 2 uses
  %..i.i.i.i.i.i32 = call noundef i64 @llvm.umin.i64(i64 %i.ml, i64 72057594037927935) ; 4 uses
  %i.mm = sub nsw i64 %..i.i.i.i.i.i32, %i.mf
  %i.mn = icmp ugt i64 %i.mm, 1
  br i1 %i.mn, label %bb.bc, label %bb.ba

bb.ba:                                            ; preds = %bb.be, %bb.bc, %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !3660)
  call void @llvm.experimental.noalias.scope.decl(metadata !3663)
  call void @llvm.experimental.noalias.scope.decl(metadata !3666)
  %i.mo = add nuw nsw i64 %i.mf, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3669
  %.val12.i.i.i.i.i.i.i.i33 = load ptr, ptr %i.je, align 8, !alias.scope !3670, !noalias !3654
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, i64 %i.mf, ptr %.val12.i.i.i.i.i.i.i.i33, i64 noundef %i.mo, i64 noundef range(i64 1, 17) 16, i64 noundef range(i64 1, 193) 128), !noalias !3671
  %i.mp = load i64, ptr %i.b, align 8, !range !2221, !noalias !3669, !noundef !10
  %i.mq = trunc nuw i64 %i.mp to i1
  %i.mr = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.mq, label %bb.bb, label %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE15reserve_entriesB13_.exit.thread4.i.i.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.ms = load i64, ptr %i.mr, align 8, !range !2222, !noalias !3669, !noundef !10
  %i.mt = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.mu = load i64, ptr %i.mt, align 8, !noalias !3669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3669
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.ms, i64 %i.mu) #36, !noalias !3672
  unreachable

_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE15reserve_entriesB13_.exit.thread4.i.i.i.i: ; preds = %bb.ba
  %i.mv = load ptr, ptr %i.mr, align 8, !noalias !3669, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3669
  store ptr %i.mv, ptr %i.je, align 8, !alias.scope !3670, !noalias !3654
  store i64 %i.mo, ptr %i.is, align 8, !alias.scope !3659, !noalias !3654
  br label %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE10push_entryB13_.exit.i.i.i

bb.bc:                                            ; preds = %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !3673)
  call void @llvm.experimental.noalias.scope.decl(metadata !3676)
  %i.mw = icmp ult i64 %i.ml, %i.mf
  br i1 %i.mw, label %bb.ba, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3679
  %.val12.i.i.i.i.i.i.i34 = load ptr, ptr %i.je, align 8, !alias.scope !3680, !noalias !3654
  call fastcc void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.mf, ptr %.val12.i.i.i.i.i.i.i34, i64 noundef %..i.i.i.i.i.i32, i64 noundef range(i64 1, 17) 16, i64 noundef range(i64 1, 193) 128), !noalias !3681
  %i.mx = load i64, ptr %i.a, align 8, !range !2221, !noalias !3679, !noundef !10
  %i.my = trunc nuw i64 %i.mx to i1
  br i1 %i.my, label %bb.be, label %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE15reserve_entriesB13_.exit.i.i.i.i

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3679
  br label %bb.ba

_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE15reserve_entriesB13_.exit.i.i.i.i: ; preds = %bb.bd
  %i.mz = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.na = load ptr, ptr %i.mz, align 8, !noalias !3679, !nonnull !10, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3679
  store ptr %i.na, ptr %i.je, align 8, !alias.scope !3680, !noalias !3654
  store i64 %..i.i.i.i.i.i32, ptr %i.is, align 8, !alias.scope !3659, !noalias !3654
  %i.nb = icmp eq i64 %i.mf, %..i.i.i.i.i.i32
  call void @llvm.experimental.noalias.scope.decl(metadata !3682)
  br i1 %i.nb, label %bb.bf, label %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE10push_entryB13_.exit.i.i.i

bb.bf:                                            ; preds = %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE15reserve_entriesB13_.exit.i.i.i.i
  call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtCsjFU9swAW47b_8indexmap6BucketoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefEE8grow_oneB1o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.is) #35, !noalias !3685
  br label %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE10push_entryB13_.exit.i.i.i

_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE10push_entryB13_.exit.i.i.i: ; preds = %bb.bf, %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE15reserve_entriesB13_.exit.i.i.i.i, %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE15reserve_entriesB13_.exit.thread4.i.i.i.i, %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE6insertNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE0EB1R_.exit.i.i.i
  %i.nc = load ptr, ptr %i.je, align 8, !alias.scope !3687, !noalias !3685, !nonnull !10, !noundef !10
  %i.nd = getelementptr inbounds nuw [128 x i8], ptr %i.nc, i64 %i.mf ; 7 uses
  store i128 %i.dw, ptr %i.nd, align 16, !noalias !3688
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  store i32 %i.iq, ptr %.sroa.4.0..sroa_idx.i.i, align 16, !noalias !3688
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nd, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.5.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.5.i.i, i64 60, i1 false), !noalias !3688
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.nd, i64 80
  store i8 %switch.idx.cast.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i, align 16, !noalias !3688
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nd, i64 96
  store i64 %i.iu, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 16, !noalias !3689
  %.sroa.4.0..sroa_idx.i.i.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.nd, i64 104
  store i64 %i.iv, ptr %.sroa.4.0..sroa_idx.i.i.i.sroa_idx.i, align 8, !noalias !3689
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.nd, i64 112
  store i64 %i.jd, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 16, !noalias !3689
  %i.ne = add nuw nsw i64 %i.mf, 1                ; 2 uses
  store i64 %i.ne, ptr %i.jg, align 8, !alias.scope !3687, !noalias !3685
  %.not.i.i.i30 = icmp ugt i64 %i.km, %i.mf
  br i1 %.not.i.i.i30, label %bb.bg, label %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE13insert_uniqueB13_.exit.i.i

bb.bg:                                            ; preds = %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE10push_entryB13_.exit.i.i.i
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.km, i64 noundef %i.ne, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #33, !noalias !3633
  unreachable

_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE13insert_uniqueB13_.exit.i.i: ; preds = %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE10push_entryB13_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i)
  br label %_RINvMs0_Csl4q486LaARA_9typst_svgINtB6_12DeduplicatorNtNtB6_5paint11GradientRefE15insert_with_valRTNtB6_7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library6layout9transform9TransformENCNvMBQ_NtB6_11SVGRenderer13push_gradients_0EB6_.exit

_RINvMs0_Csl4q486LaARA_9typst_svgINtB6_12DeduplicatorNtNtB6_5paint11GradientRefE15insert_with_valRTNtB6_7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library6layout9transform9TransformENCNvMBQ_NtB6_11SVGRenderer13push_gradients_0EB6_.exit: ; preds = %_RNCINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtNtCsjFU9swAW47b_8indexmap3map4core10equivalentoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefoE0E0B1U_.exit.i.i.i.i, %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsl4q486LaARA_9typst_svg5paint11GradientRefE13insert_uniqueB13_.exit.i.i
  %i.nf = getelementptr inbounds nuw i8, ptr %1, i64 248
  %i.ng = load i32, ptr %i.nf, align 8, !range !554, !alias.scope !3551, !noalias !3690, !noundef !10
  br label %bb.bh

bb.bh:                                            ; preds = %_RINvMs0_Csl4q486LaARA_9typst_svgINtB6_12DeduplicatorTNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient8GradientNtNtNtBV_6layout5ratio5RatioEE15insert_with_valTRBP_B1Q_ENCNvMNtB6_5paintNtB6_11SVGRenderer13push_gradient0EB6_.exit, %_RINvMs0_Csl4q486LaARA_9typst_svgINtB6_12DeduplicatorNtNtB6_5paint11GradientRefE15insert_with_valRTNtB6_7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library6layout9transform9TransformENCNvMBQ_NtB6_11SVGRenderer13push_gradients_0EB6_.exit
  %.sink100 = phi i128 [ %i.iz, %_RINvMs0_Csl4q486LaARA_9typst_svgINtB6_12DeduplicatorNtNtB6_5paint11GradientRefE15insert_with_valRTNtB6_7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library6layout9transform9TransformENCNvMBQ_NtB6_11SVGRenderer13push_gradients_0EB6_.exit ], [ %i.dw, %_RINvMs0_Csl4q486LaARA_9typst_svgINtB6_12DeduplicatorTNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient8GradientNtNtNtBV_6layout5ratio5RatioEE15insert_with_valTRBP_B1Q_ENCNvMNtB6_5paintNtB6_11SVGRenderer13push_gradient0EB6_.exit ]
  %.sink = phi i32 [ %i.ng, %_RINvMs0_Csl4q486LaARA_9typst_svgINtB6_12DeduplicatorNtNtB6_5paint11GradientRefE15insert_with_valRTNtB6_7DedupIdNtNtNtCsdaEETE4DqmE_13typst_library6layout9transform9TransformENCNvMBQ_NtB6_11SVGRenderer13push_gradients_0EB6_.exit ], [ %i.iq, %_RINvMs0_Csl4q486LaARA_9typst_svgINtB6_12DeduplicatorTNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient8GradientNtNtNtBV_6layout5ratio5RatioEE15insert_with_valTRBP_B1Q_ENCNvMNtB6_5paintNtB6_11SVGRenderer13push_gradient0EB6_.exit ]
  store i128 %.sink100, ptr %0, align 16
  %i.nh = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink, ptr %i.nh, align 16
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsl4q486LaARA_9typst_svg5paintNtB4_11SVGRenderer15write_gradients(ptr noalias nofree noundef nonnull align 8 dereferenceable(480) %0, ptr %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 4 uses
  %i.c = alloca [4 x i8], align 4                 ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [16 x i8], align 4                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [4 x i8], align 4                 ; 4 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [4 x i8], align 4                 ; 4 uses
  %i.j = alloca [4 x i8], align 4                 ; 4 uses
  %i.k = alloca [16 x i8], align 4                ; 7 uses
  %i.l = alloca [8 x i8], align 8                 ; 4 uses
  %i.m = alloca [40 x i8], align 1                ; 9 uses
  %i.n = alloca [24 x i8], align 1                ; 4 uses
  %i.o = alloca [40 x i8], align 1                ; 9 uses
  %i.p = alloca [24 x i8], align 1                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [16 x i8], align 8                ; 5 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [32 x i8], align 16               ; 5 uses
  %i.u = alloca [24 x i8], align 8                ; 6 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [24 x i8], align 8                ; 7 uses
  %i.x = alloca [112 x i8], align 16              ; 10 uses
  %i.y = alloca [80 x i8], align 8                ; 4 uses
  %i.z = alloca [80 x i8], align 8                ; 4 uses
  %i.aa = alloca [8 x i8], align 8                ; 4 uses
  %i.ab = alloca [8 x i8], align 8                ; 4 uses
  %i.ac = alloca [8 x i8], align 8                ; 4 uses
  %i.ad = alloca [8 x i8], align 8                ; 4 uses
  %i.ae = alloca [72 x i8], align 8               ; 30 uses
  %i.af = alloca [80 x i8], align 8               ; 9 uses
  %i.ag = alloca [16 x i8], align 8               ; 6 uses
  %i.ah = alloca [16 x i8], align 16              ; 5 uses
  %i.ai = alloca [16 x i8], align 8               ; 5 uses
  %i.aj = alloca [16 x i8], align 16              ; 5 uses
  %i.ak = alloca [16 x i8], align 8               ; 5 uses
  %i.al = alloca [16 x i8], align 8               ; 5 uses
  %i.am = alloca [16 x i8], align 8               ; 5 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [16 x i8], align 8               ; 5 uses
  %i.ap = alloca [16 x i8], align 8               ; 5 uses
  %i.aq = alloca [16 x i8], align 8               ; 5 uses
  %i.ar = alloca [32 x i8], align 16              ; 5 uses
  %i.as = alloca [24 x i8], align 8               ; 6 uses
  %i.at = alloca [24 x i8], align 8               ; 6 uses
  %i.au = alloca [24 x i8], align 8               ; 6 uses
  %i.av = alloca [16 x i8], align 8               ; 5 uses
  %i.aw = alloca [16 x i8], align 8               ; 7 uses
  %i.ax = alloca [16 x i8], align 8               ; 7 uses
  %i.ay = alloca [48 x i8], align 8               ; 8 uses
  %i.az = alloca [24 x i8], align 8               ; 7 uses
  %i.ba = alloca [24 x i8], align 8               ; 7 uses
  %i.bb = alloca [8 x i8], align 8                ; 4 uses
  %i.bc = alloca [24 x i8], align 8               ; 8 uses
  %.sroa.0206.i.i.i.i = alloca ptr, align 8       ; 4 uses
  %i.bd = alloca [16 x i8], align 8               ; 7 uses
  %i.be = alloca [16 x i8], align 8               ; 4 uses
  %i.bf = alloca [24 x i8], align 8               ; 8 uses
  %i.bg = alloca [24 x i8], align 8               ; 10 uses
  %i.bh = alloca [16 x i8], align 8               ; 6 uses
  %i.bi = alloca [24 x i8], align 8               ; 10 uses
  %i.bj = alloca [80 x i8], align 8               ; 10 uses
  %i.bk = alloca [80 x i8], align 8               ; 14 uses
  %i.bl = alloca [48 x i8], align 8               ; 6 uses
  %i.bm = alloca [16 x i8], align 8               ; 5 uses
  %i.bn = alloca [24 x i8], align 8               ; 5 uses
  %i.bo = alloca [16 x i8], align 4               ; 7 uses
  %i.bp = alloca [16 x i8], align 4               ; 7 uses
  %i.bq = alloca [64 x i8], align 8               ; 15 uses
  %i.br = alloca [24 x i8], align 8               ; 9 uses
  %i.bs = alloca [24 x i8], align 8               ; 7 uses
  %i.bt = alloca [32 x i8], align 8               ; 14 uses
  %i.bu = alloca [24 x i8], align 8               ; 6 uses
  %i.bv = alloca [24 x i8], align 8               ; 6 uses
  %i.bw = alloca [24 x i8], align 8               ; 6 uses
  %i.bx = alloca [24 x i8], align 8               ; 6 uses
  %i.by = alloca [24 x i8], align 8               ; 6 uses
  %i.bz = alloca [24 x i8], align 8               ; 6 uses
  %i.ca = alloca [24 x i8], align 8               ; 6 uses
  %i.cb = alloca [8 x i8], align 8                ; 4 uses
  %i.cc = alloca [8 x i8], align 8                ; 4 uses
  %i.cd = alloca [8 x i8], align 8                ; 4 uses
  %i.ce = alloca [8 x i8], align 8                ; 4 uses
  %i.cf = alloca [8 x i8], align 8                ; 4 uses
  %i.cg = alloca [8 x i8], align 8                ; 4 uses
  %i.ch = alloca [16 x i8], align 8               ; 5 uses
  %i.ci = alloca [16 x i8], align 8               ; 5 uses
  %i.cj = alloca [32 x i8], align 16              ; 5 uses
  %i.ck = alloca [8 x i8], align 8                ; 4 uses
  %i.cl = alloca [8 x i8], align 8                ; 4 uses
  %i.cm = alloca [8 x i8], align 8                ; 4 uses
  %i.cn = alloca [8 x i8], align 8                ; 4 uses
  %i.co = alloca [16 x i8], align 8               ; 5 uses
  %i.cp = alloca [16 x i8], align 8               ; 5 uses
  %i.cq = alloca [32 x i8], align 16              ; 5 uses
  %i.cr = alloca [16 x i8], align 8               ; 5 uses
  %i.cs = alloca [16 x i8], align 8               ; 5 uses
  %i.ct = alloca [16 x i8], align 8               ; 5 uses
  %i.cu = alloca [48 x i8], align 8               ; 8 uses
  %i.cv = alloca [24 x i8], align 8               ; 7 uses
  %i.cw = alloca [24 x i8], align 8               ; 7 uses
  %i.cx = alloca [16 x i8], align 8               ; 7 uses
  %i.cy = alloca [16 x i8], align 8               ; 7 uses
  %i.cz = alloca [96 x i8], align 8               ; 22 uses
  %i.da = alloca [40 x i8], align 8               ; 9 uses
  %i.db = alloca [40 x i8], align 8               ; 9 uses
  %i.dc = alloca [24 x i8], align 8               ; 7 uses
  %i.dd = alloca [24 x i8], align 8               ; 7 uses
  %i.de = alloca [16 x i8], align 8               ; 7 uses
  %i.df = alloca [16 x i8], align 8               ; 7 uses
  %i.dg = alloca [48 x i8], align 8               ; 8 uses
  %i.dh = alloca [80 x i8], align 8               ; 20 uses
  %i.di = alloca [80 x i8], align 8               ; 16 uses
  %i.dj = alloca [24 x i8], align 8               ; 7 uses
  %i.dk = alloca [24 x i8], align 8               ; 9 uses
  %i.dl = alloca [56 x i8], align 8               ; 33 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.dn = load i64, ptr %i.dm, align 8, !noundef !10
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  tail call void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter13start_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @137, i64 noundef range(i64 1, 15) 4) #35
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.dq = load ptr, ptr %i.dp, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ds = load i64, ptr %i.dr, align 8, !noundef !10 ; 2 uses
  %.idx = mul nuw nsw i64 %i.ds, 48
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 %.idx
  %i.du = icmp eq i64 %i.ds, 0
  br i1 %i.du, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit241._crit_edge, label %.lr.ph1191

.lr.ph1191:                                       ; preds = %bb.b
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.dy = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ec = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.488.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dl, i64 15
  %i.ee = getelementptr inbounds nuw i8, ptr %i.dl, i64 48 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dl, i64 16 ; 3 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.dl, i64 32 ; 5 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.dl, i64 40 ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.el = getelementptr inbounds nuw i8, ptr %i.di, i64 48
  %i.em = getelementptr inbounds nuw i8, ptr %i.di, i64 64
  %i.en = getelementptr inbounds nuw i8, ptr %i.di, i64 72
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 4 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.di, i64 24 ; 4 uses
  %.sroa.52.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 28 ; 3 uses
  %.sroa.63.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 32 ; 6 uses
  %.sroa.74.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.di, i64 40 ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  %.sroa.512.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 16 ; 2 uses
  %.sroa.613.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 24 ; 2 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.eq = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.er = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.es = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.et = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.eu = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ev = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  %i.ey = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 6 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 3 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.af, i64 24 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.af, i64 32 ; 4 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 4 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 4 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.x, i64 96 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.x, i64 80 ; 2 uses
  %.sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.x, i64 88 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ct, i64 15
  %i.fn = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.fo = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.fp = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.fq = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.fr = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.fs = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ch, i64 8
  %i.fv = getelementptr inbounds nuw i8, ptr %i.cq, i64 16
  %i.fw = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.fy = getelementptr inbounds nuw i8, ptr %i.df, i64 15
  %i.fz = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.ga = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.gb = getelementptr inbounds nuw i8, ptr %i.de, i64 15
  %i.gc = getelementptr inbounds nuw i8, ptr %i.bu, i64 16
  %i.gd = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.dd, i64 8 ; 4 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.db, i64 16 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 20
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 24 ; 5 uses
  %.sroa.733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.db, i64 32
  %i.gg = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.gh = getelementptr inbounds nuw i8, ptr %i.da, i64 16 ; 3 uses
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 20
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 24 ; 5 uses
  %.sroa.737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.da, i64 32
  %i.gi = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.gj = getelementptr inbounds nuw i8, ptr %i.cz, i64 56 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.cz, i64 64 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.cz, i64 72 ; 5 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.cz, i64 80 ; 4 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %i.cz, i64 48 ; 2 uses
  %i.go = getelementptr inbounds nuw i8, ptr %i.cz, i64 24 ; 10 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %i.cz, i64 4 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 8 ; 10 uses
  %.sroa.7.0.in.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 16 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.cz, i64 28 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i.i.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 32 ; 16 uses
  %.sroa.7.0.in.i.i.i.1.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 40 ; 3 uses
  %.sroa.485.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 4
  %.sroa.586.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %.sroa.687.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %.sroa.788.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  %.sroa.889.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 36
  %.sroa.1090.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  %.sroa.1191.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  %.sroa.12.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bq, i64 56
  %.sroa.4.0..sroa_idx352.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
  %.sroa.5.0..sroa_idx353.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx353.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 20
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx353.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 2 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx353.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 32
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx353.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 40
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx353.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 48 ; 3 uses
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx353.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 52
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx353.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 56 ; 5 uses
  %.sroa.5.sroa.11.0..sroa.5.0..sroa_idx353.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 64
  %.sroa.5.sroa.12.0..sroa.5.0..sroa_idx353.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bk, i64 72
  %.sroa.5.0..sroa_idx45.i.i.i = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %i.gr = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 4 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.bj, i64 16 ; 7 uses
  %.sroa.8370.0..sroa_idx371.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 4
  %.sroa.4179.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 4
  %.sroa.5180.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 2 uses
  %.sroa.6181.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %.sroa.451.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %.sroa.552.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 8 ; 5 uses
  %.sroa.653.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.gt = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.gu = getelementptr inbounds nuw i8, ptr %i.bi, i64 8 ; 6 uses
  %.sroa.10.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 4
  %.sroa.11.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 8 ; 5 uses
  %.sroa.18.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %.sroa.493.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 4
  %.sroa.594.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.gv = getelementptr inbounds nuw i8, ptr %i.bp, i64 12
  %.sroa.496.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %.sroa.597.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.gw = getelementptr inbounds nuw i8, ptr %i.bo, i64 12
  %i.gx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8 ; 4 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.cz, i64 88 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.bt, i64 8 ; 8 uses
  %.sroa.01.sroa.5.0..sroa_idx69.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 4 ; 3 uses
  %.sroa.01.sroa.7.0..sroa_idx73.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 24 ; 3 uses
  %.sroa.437.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 4
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ay, i64 8 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ay, i64 23 ; 2 uses
  %i.hc = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.hd = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.he = getelementptr inbounds nuw i8, ptr %i.ax, i64 15
  %i.hf = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  %i.hg = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.hh = getelementptr inbounds nuw i8, ptr %i.aw, i64 15
  %i.hi = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.hj = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %i.ba, i64 8 ; 4 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 4 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.cy, i64 15
  %i.hn = getelementptr inbounds nuw i8, ptr %i.by, i64 16
  %i.ho = getelementptr inbounds nuw i8, ptr %i.by, i64 8
  %i.hp = getelementptr inbounds nuw i8, ptr %i.cx, i64 15
  %i.hq = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %i.hr = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.hs = getelementptr inbounds nuw i8, ptr %i.cw, i64 8 ; 4 uses
  %i.ht = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.hu = getelementptr inbounds nuw i8, ptr %i.cu, i64 23
  %i.hv = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  %i.hw = getelementptr inbounds nuw i8, ptr %i.bw, i64 8
  %i.hx = getelementptr inbounds nuw i8, ptr %i.dg, i64 8 ; 2 uses
  %i.hy = getelementptr inbounds nuw i8, ptr %i.dg, i64 23 ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.bz, i64 16
  %i.ia = getelementptr inbounds nuw i8, ptr %i.bz, i64 8
  %.sroa.5.0..sroa_idx1298 = getelementptr inbounds nuw i8, ptr %i.dk, i64 4
  %.sroa.6.0..sroa_idx1300 = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %.sroa.8.0..sroa_idx1302 = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %.sroa.11.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 4
  %.sroa.12.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.sroa.14.24..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %.sroa.5.0..sroa_idx1297 = getelementptr inbounds nuw i8, ptr %i.dh, i64 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 24
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 28
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 40
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 48
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 64
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 72
  br label %bb.d

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit163: ; preds = %.thread76, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECsl4q486LaARA_9typst_svg.exit, %bb.y, %bb.i, %bb.c
  %.pn130.pn.pn = phi { ptr, i32 } [ %i.jg, %bb.y ], [ %i.ib, %bb.c ], [ %.pn130.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECsl4q486LaARA_9typst_svg.exit ], [ %i.ii, %bb.i ], [ %.pn.pn.pn, %.thread76 ]
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit unwind label %bb.x

bb.c:                                             ; preds = %.invoke, %bb.h, %bb.g, %bb.f
  %i.ib = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit163

bb.d:                                             ; preds = %.lr.ph1191, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit241.backedge
  %.sroa.01.01189 = phi ptr [ %i.dq, %.lr.ph1191 ], [ %i.ic, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit241.backedge ] ; 6 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %.sroa.01.01189, i64 48 ; 2 uses
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.01.01189, i64 16 ; 8 uses
  %i.ie = load i32, ptr %i.dv, align 8, !range !554, !noundef !10 ; 3 uses
  %i.if = load i128, ptr %.sroa.01.01189, align 16, !noundef !10 ; 3 uses
  %i.ig = load i64, ptr %i.id, align 16, !range !1179, !noundef !10
  %i.ih = getelementptr i8, ptr %.sroa.01.01189, i64 24 ; 14 uses
  switch i64 %i.ig, label %.unreachabledefault [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.h
  ]

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit241._crit_edge: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit241.backedge, %bb.b
  call void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #35, !noalias !3691
  br label %bb.e
end_hunk_0
begin_hunk_1_@_RNvMNtCsl4q486LaARA_9typst_svg5paintNtB4_11SVGRenderer15write_gradients:bb.a
bb.jl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECsl4q486LaARA_9typst_svg.exit.i.i11.i
  call void @llvm.experimental.noalias.scope.decl(metadata !4754)
  call void @llvm.experimental.noalias.scope.decl(metadata !4757)
  call void @llvm.experimental.noalias.scope.decl(metadata !4760)
  %i.adq = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.1.i.i.i.i.i.i, align 8, !alias.scope !4763, !noalias !4723, !nonnull !10, !noundef !10
  %i.adr = atomicrmw sub ptr %i.adq, i64 1 release, align 8, !noalias !4764
  %i.ads = icmp eq i64 %i.adr, 1
  br i1 %i.ads, label %bb.jm, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources7from_fn6FromFnNCNvMNtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB12_8Gradient49generate_intermediate_stops_for_rgb_interpolation0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Y_8for_each4callTNtNtB14_5color5ColorNtNtNtB16_6layout5ratio5RatioENCNvMNtCsl4q486LaARA_9typst_svg5paintNtB4X_11SVGRenderer15write_gradientss_0E0EB4X_.exit

bb.jm:                                            ; preds = %bb.jl
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.1.i.i.i.i.i.i) #35
          to label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources7from_fn6FromFnNCNvMNtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB12_8Gradient49generate_intermediate_stops_for_rgb_interpolation0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Y_8for_each4callTNtNtB14_5color5ColorNtNtNtB16_6layout5ratio5RatioENCNvMNtCsl4q486LaARA_9typst_svg5paintNtB4X_11SVGRenderer15write_gradientss_0E0EB4X_.exit unwind label %bb.dc

bb.jn:                                            ; preds = %bb.jk
  %i.adt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !3990
  unreachable

bb.jo:                                            ; preds = %bb.jd, %bb.jc, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECsl4q486LaARA_9typst_svg.exit34.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !4575
  br label %bb.dg

bb.jp:                                            ; preds = %bb.hq
  %i.adu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body398

.body398:                                         ; preds = %bb.hm, %bb.hn, %bb.ho, %bb.jp
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !3990
  unreachable

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources7from_fn6FromFnNCNvMNtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB12_8Gradient49generate_intermediate_stops_for_rgb_interpolation0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Y_8for_each4callTNtNtB14_5color5ColorNtNtNtB16_6layout5ratio5RatioENCNvMNtCsl4q486LaARA_9typst_svg5paintNtB4X_11SVGRenderer15write_gradientss_0E0EB4X_.exit: ; preds = %bb.jl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color5ColorECsl4q486LaARA_9typst_svg.exit.i.i11.i, %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cz)
  call void @llvm.experimental.noalias.scope.decl(metadata !4765)
  call void @llvm.experimental.noalias.scope.decl(metadata !4768)
  %i.adv = load i32, ptr %i.gh, align 8, !range !1133, !alias.scope !4771, !noundef !10
  %i.adw = icmp eq i32 %i.adv, 0
  br i1 %i.adw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit297, label %bb.jq

bb.jq:                                            ; preds = %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources7from_fn6FromFnNCNvMNtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB12_8Gradient49generate_intermediate_stops_for_rgb_interpolation0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Y_8for_each4callTNtNtB14_5color5ColorNtNtNtB16_6layout5ratio5RatioENCNvMNtCsl4q486LaARA_9typst_svg5paintNtB4X_11SVGRenderer15write_gradientss_0E0EB4X_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !4772)
  call void @llvm.experimental.noalias.scope.decl(metadata !4775)
  call void @llvm.experimental.noalias.scope.decl(metadata !4778)
  %i.adx = load ptr, ptr %.sroa.636.0..sroa_idx, align 8, !alias.scope !4781, !nonnull !10, !noundef !10
  %i.ady = atomicrmw sub ptr %i.adx, i64 1 release, align 8, !noalias !4781
  %i.adz = icmp eq i64 %i.ady, 1
  br i1 %i.adz, label %bb.jr, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit297

bb.jr:                                            ; preds = %bb.jq
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.636.0..sroa_idx) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit297 unwind label %bb.ju

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit: ; preds = %bb.dd, %.body294, %bb.de, %bb.ju
  %.pn128 = phi { ptr, i32 } [ %i.aef, %bb.ju ], [ %eh.lpad-body295, %bb.de ], [ %eh.lpad-body295, %.body294 ], [ %eh.lpad-body295, %bb.dd ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4782)
  call void @llvm.experimental.noalias.scope.decl(metadata !4785)
  %i.aea = load i32, ptr %i.gf, align 8, !range !1133, !alias.scope !4788, !noundef !10
  %i.aeb = icmp eq i32 %i.aea, 0
  br i1 %i.aeb, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit202, label %bb.js

bb.js:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !4789)
  call void @llvm.experimental.noalias.scope.decl(metadata !4792)
  call void @llvm.experimental.noalias.scope.decl(metadata !4795)
  %i.aec = load ptr, ptr %.sroa.632.0..sroa_idx, align 8, !alias.scope !4798, !nonnull !10, !noundef !10
  %i.aed = atomicrmw sub ptr %i.aec, i64 1 release, align 8, !noalias !4798
  %i.aee = icmp eq i64 %i.aed, 1
  br i1 %i.aee, label %bb.jt, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit202

bb.jt:                                            ; preds = %bb.js
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.632.0..sroa_idx) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit202 unwind label %bb.x

bb.ju:                                            ; preds = %bb.jr
  %i.aef = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit297: ; preds = %bb.jq, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources7from_fn6FromFnNCNvMNtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB12_8Gradient49generate_intermediate_stops_for_rgb_interpolation0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2Y_8for_each4callTNtNtB14_5color5ColorNtNtNtB16_6layout5ratio5RatioENCNvMNtCsl4q486LaARA_9typst_svg5paintNtB4X_11SVGRenderer15write_gradientss_0E0EB4X_.exit, %bb.jr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.da)
  call void @llvm.experimental.noalias.scope.decl(metadata !4799)
  call void @llvm.experimental.noalias.scope.decl(metadata !4802)
  %i.aeg = load i32, ptr %i.gf, align 8, !range !1133, !alias.scope !4805, !noundef !10
  %i.aeh = icmp eq i32 %i.aeg, 0
  br i1 %i.aeh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit301, label %bb.jv

bb.jv:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit297
  call void @llvm.experimental.noalias.scope.decl(metadata !4806)
  call void @llvm.experimental.noalias.scope.decl(metadata !4809)
  call void @llvm.experimental.noalias.scope.decl(metadata !4812)
  %i.aei = load ptr, ptr %.sroa.632.0..sroa_idx, align 8, !alias.scope !4815, !nonnull !10, !noundef !10
  %i.aej = atomicrmw sub ptr %i.aei, i64 1 release, align 8, !noalias !4815
  %i.aek = icmp eq i64 %i.aej, 1
  br i1 %i.aek, label %bb.jw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit301

bb.jw:                                            ; preds = %bb.jv
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %.sroa.632.0..sroa_idx) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit301 unwind label %.loopexit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit301: ; preds = %bb.jv, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize8gradient12GradientStopECsl4q486LaARA_9typst_svg.exit297, %bb.jw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.db)
  br label %bb.cs

_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit162: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store i128 %i.if, ptr %i.ar, align 16, !noalias !4816
  store i32 %i.ie, ptr %i.dw, align 16, !noalias !4816
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrNtB1b_7DedupIdE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @66, i64 noundef 2, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.ar) #35
          to label %bb.jx unwind label %.loopexit.split-lp107

.thread76:                                        ; preds = %.loopexit106, %.loopexit.split-lp107, %.body371, %bb.kh, %.thread68
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn71, %.thread68 ], [ %lpad.thr_comm.split-lp, %bb.kh ], [ %eh.lpad-body372, %.body371 ], [ %lpad.loopexit108, %.loopexit106 ], [ %lpad.loopexit.split-lp109, %.loopexit.split-lp107 ]
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit163 unwind label %bb.x

.loopexit106:                                     ; preds = %bb.kf, %bb.kg
  %lpad.loopexit108 = landingpad { ptr, i32 }
          cleanup
  br label %.thread76

.loopexit.split-lp107:                            ; preds = %_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit162, %bb.jx, %bb.jy, %bb.jz, %bb.ka, %bb.kb, %bb.kc, %bb.kd
  %lpad.loopexit.split-lp109 = landingpad { ptr, i32 }
          cleanup
  br label %.thread76

bb.jx:                                            ; preds = %_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit162
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  store ptr @180, ptr %i.aq, align 8, !noalias !4819
  store i64 7, ptr %i.dx, align 8, !noalias !4819
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 7, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aq) #35
          to label %bb.jy unwind label %.loopexit.split-lp107

bb.jy:                                            ; preds = %bb.jx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  store ptr @153, ptr %i.ap, align 8, !noalias !4824
  store i64 4, ptr %i.dy, align 8, !noalias !4824
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @152, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ap) #35
          to label %bb.jz unwind label %.loopexit.split-lp107

bb.jz:                                            ; preds = %bb.jy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  store ptr @162, ptr %i.ao, align 8, !noalias !4829
  store i64 14, ptr %i.dz, align 8, !noalias !4829
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @161, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ao) #35
          to label %bb.ka unwind label %.loopexit.split-lp107

bb.ka:                                            ; preds = %bb.jz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr @181, ptr %i.an, align 8, !noalias !4834
  store i64 1, ptr %i.ea, align 8, !noalias !4834
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @2, i64 noundef 5, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.an) #35
          to label %bb.kb unwind label %.loopexit.split-lp107

bb.kb:                                            ; preds = %bb.ka
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store ptr @181, ptr %i.am, align 8, !noalias !4839
  store i64 1, ptr %i.eb, align 8, !noalias !4839
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.am) #35
          to label %bb.kc unwind label %.loopexit.split-lp107

bb.kc:                                            ; preds = %bb.kb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store ptr @182, ptr %i.al, align 8, !noalias !4844
  store i64 4, ptr %i.ec, align 8, !noalias !4844
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @147, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.al) #35
          to label %bb.kd unwind label %.loopexit.split-lp107

bb.kd:                                            ; preds = %bb.kc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store ptr @182, ptr %i.ak, align 8, !noalias !4849
  store i64 4, ptr %i.ed, align 8, !noalias !4849
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @148, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ak) #35
          to label %bb.ke unwind label %.loopexit.split-lp107

bb.ke:                                            ; preds = %bb.kd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak)
  %i.ael = load ptr, ptr %i.ih, align 8, !nonnull !10, !noundef !10
  %i.aem = getelementptr inbounds nuw i8, ptr %i.ael, i64 96
  %i.aen = load <2 x double>, ptr %i.aem, align 8 ; 3 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %.sroa.01.01189, i64 32
  %i.aep = load double, ptr %i.aeo, align 16, !noundef !10
  %i.aeq = fdiv double 1.000000e+00, %i.aep       ; 2 uses
  %.inv = fcmp ord double %i.aeq, 0.000000e+00
  %.sroa.054.0 = select i1 %.inv, double %i.aeq, double 0.000000e+00 ; 2 uses
  %i.aer = fadd <2 x double> %i.aen, splat (double 5.000000e-01)
  %i.aes = fmul <2 x double> %i.aer, splat (double 1.270000e+02) ; 2 uses
  %i.aet = fcmp ord <2 x double> %i.aes, zeroinitializer
  %i.aeu = fmul <2 x double> %i.aes, splat (double 5.000000e-01)
  %i.aev = select <2 x i1> %i.aet, <2 x double> %i.aeu, <2 x double> zeroinitializer ; 3 uses
  %i.aew = fcmp ord <2 x double> %i.aev, zeroinitializer
  %i.aex = select <2 x i1> %i.aew, <2 x double> %i.aev, <2 x double> zeroinitializer ; 2 uses
  %i.aey = fdiv <2 x double> %i.aex, splat (double 1.270000e+02)
  %i.aez = fmul <2 x double> %i.aey, splat (double 1.000000e+09)
  %i.afa = call <2 x double> @llvm.round.v2f64(<2 x double> %i.aez)
  %i.afb = fdiv <2 x double> %i.afa, splat (double 1.000000e+09) ; 3 uses
  %i.afc = extractelement <2 x double> %i.afb, i64 0 ; 4 uses
  %i.afd = call i64 @llvm.fptosi.sat.i64.f64(double %i.afc) ; 3 uses
  %i.afe = extractelement <2 x double> %i.afb, i64 1 ; 4 uses
  %i.aff = call i64 @llvm.fptosi.sat.i64.f64(double %i.afe) ; 3 uses
  %i.afg = sitofp i64 %i.afd to double
  %i.afh = sitofp i64 %i.aff to double
  %i.afi = call double @llvm.fabs.f64(double %i.afc)
  %i.afj = fcmp ueq double %i.afi, +inf
  %i.afk = bitcast double %i.afc to i64           ; 3 uses
  %i.afl = and i64 %i.afk, 4503599627370495
  %i.afm = icmp eq i64 %i.afl, 0
  %i.afn = icmp slt i64 %i.afk, 0
  %.1.i.i.i410 = select i1 %i.afn, ptr @254, ptr @253
  %i.afo = and i64 %i.afk, -9218868437227405313
  %i.afp = icmp eq i64 %i.afo, -9223372036854775808
  %.sroa.4.0.i.i.i411 = select i1 %i.afp, i64 4, i64 3
  %.sroa.0.0.i.i.i412 = select i1 %i.afm, ptr %.1.i.i.i410, ptr @255
  %i.afq = icmp sgt i64 %i.afd, -1
  %.sroa.0.0.i.i1.i413 = call i64 @llvm.abs.i64(i64 %i.afd, i1 false) ; 3 uses
  %i.afr = icmp ugt i64 %.sroa.0.0.i.i1.i413, 9999
  %i.afs = insertelement <2 x double> poison, double %i.afg, i64 0
  %i.aft = insertelement <2 x double> %i.afs, double %i.afh, i64 1
  %i.afu = fcmp oeq <2 x double> %i.afb, %i.aft   ; 2 uses
  %i.afv = call double @llvm.fabs.f64(double %i.afe)
  %i.afw = fcmp ueq double %i.afv, +inf
  %i.afx = bitcast double %i.afe to i64           ; 3 uses
  %i.afy = and i64 %i.afx, 4503599627370495
  %i.afz = icmp eq i64 %i.afy, 0
  %i.aga = icmp slt i64 %i.afx, 0
  %.1.i.i.i = select i1 %i.aga, ptr @254, ptr @253
  %i.agb = and i64 %i.afx, -9218868437227405313
  %i.agc = icmp eq i64 %i.agb, -9223372036854775808
  %.sroa.4.0.i.i.i = select i1 %i.agc, i64 4, i64 3
  %.sroa.0.0.i.i.i402 = select i1 %i.afz, ptr %.1.i.i.i, ptr @255
  %i.agd = icmp sgt i64 %i.aff, -1
  %.sroa.0.0.i.i1.i = call i64 @llvm.abs.i64(i64 %i.aff, i1 false) ; 3 uses
  %i.age = icmp ugt i64 %.sroa.0.0.i.i1.i, 9999
  %i.agf = extractelement <2 x i1> %i.afu, i64 0
  %i.agg = extractelement <2 x i1> %i.afu, i64 1
  br label %bb.kf

.invoke:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit382, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color10ColorSpaceECsl4q486LaARA_9typst_svg.exit200
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.0.val) #35
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit241.backedge unwind label %bb.c

bb.kf:                                            ; preds = %bb.ke, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit382
  %.sroa.061.01186 = phi i64 [ 0, %bb.ke ], [ %i.agh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write7SvgElemEBF_.exit382 ] ; 2 uses
  %i.agh = add nuw nsw i64 %.sroa.061.01186, 1    ; 3 uses
  %i.agi = load ptr, ptr %i.ih, align 8, !nonnull !10, !noundef !10
  %i.agj = getelementptr inbounds nuw i8, ptr %i.agi, i64 88
  %i.agk = load double, ptr %i.agj, align 8, !noundef !10
  %i.agl = uitofp nneg i64 %.sroa.061.01186 to double ; 2 uses
  %i.agm = fmul nnan double %i.agl, f0x3F91DF46A2529D39
  %i.agn = fadd double %i.agm, %i.agk             ; 2 uses
  %.inv83 = fcmp ord double %i.agn, 0.000000e+00
  %.sroa.066.0 = select i1 %.inv83, double %i.agn, double 0.000000e+00
  %i.ago = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB2_8Gradient20correct_aspect_ratio(double noundef %.sroa.066.0, double noundef %.sroa.054.0)
          to label %bb.kg unwind label %.loopexit106 ; 2 uses

bb.kg:                                            ; preds = %bb.kf
  %i.agp = fneg double %i.ago
  %i.agq = fcmp uno double %i.ago, 0.000000e+00
  %.sroa.069.0 = select i1 %i.agq, double 0.000000e+00, double %i.agp ; 5 uses
  %i.agr = load ptr, ptr %i.ih, align 8, !nonnull !10, !noundef !10
  %i.ags = getelementptr inbounds nuw i8, ptr %i.agr, i64 88
  %i.agt = load double, ptr %i.ags, align 8, !noundef !10
  %i.agu = uitofp nneg i64 %i.agh to double       ; 2 uses
  %i.agv = fmul nnan double %i.agu, f0x3F91DF46A2529D39
  %i.agw = fadd double %i.agv, %i.agt             ; 2 uses
  %.inv84 = fcmp ord double %i.agw, 0.000000e+00
  %.sroa.075.0 = select i1 %.inv84, double %i.agw, double 0.000000e+00
  %i.agx = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB2_8Gradient20correct_aspect_ratio(double noundef %.sroa.075.0, double noundef %.sroa.054.0)
          to label %bb.kj unwind label %.loopexit106 ; 2 uses

.thread80:                                        ; preds = %_RINvMs0_Csl4q486LaARA_9typst_svgINtB6_12DeduplicatorNtNtB6_5paint14SVGSubGradientE15insert_with_valBO_NCNvMBQ_NtB6_11SVGRenderer15write_gradients0EB6_.exit, %bb.ns
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread68

bb.kh:                                            ; preds = %bb.od
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread76

bb.ki:                                            ; preds = %bb.lq, %bb.lr, %bb.ln, %bb.lm, %bb.ll, %bb.lk, %bb.lj
  %i.agy = landingpad { ptr, i32 }
          cleanup
  br label %.thread68

bb.kj:                                            ; preds = %bb.kg
  %i.agz = fneg double %i.agx
  %i.aha = fcmp uno double %i.agx, 0.000000e+00
  %.sroa.078.0 = select i1 %i.aha, double 0.000000e+00, double %i.agz ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dl)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.dl, i8 0, i64 15, i1 false)
  store i8 -128, ptr %.sroa.488.0..sroa_idx, align 1
  store double 1.000000e+00, ptr %i.ee, align 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ef, i8 0, i64 32, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !4854)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store <2 x double> %i.aev, ptr %i.aj, align 16, !noalias !4854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !4854
  store ptr %i.dl, ptr %i.ai, align 8, !noalias !4854
  store ptr %i.aj, ptr %i.ei, align 8, !noalias !4854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !4854
  store <2 x double> %i.aex, ptr %i.ah, align 16, !noalias !4854
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !4854
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, i8 0, i64 16, i1 false), !noalias !4854
  %i.ahb = invoke noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ag)
          to label %bb.kl unwind label %bb.kk

bb.kk:                                            ; preds = %_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_intB7_.exit.i420, %_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatdECsl4q486LaARA_9typst_svg.exit.i407, %bb.kr, %_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_intB7_.exit.i, %_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatdECsl4q486LaARA_9typst_svg.exit.i, %bb.la, %.noexc.i, %bb.kn, %bb.km, %bb.kj
  %i.ahc = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNvCs6xpQEr8gLsQ_11typst_utils5defer11DeferHandleNtNtCsl4q486LaARA_9typst_svg4path14SvgPathBuilderNCNvMB1s_B1q_7move_to0EEB1u_(ptr noalias nofree noundef align 8 dereferenceable(16) %i.ai) #32
          to label %.thread68 unwind label %bb.li

bb.kl:                                            ; preds = %bb.kj
  br i1 %i.ahb, label %bb.km, label %bb.kn

bb.km:                                            ; preds = %bb.kl
  %i.ahd = invoke noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ej, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ek)
          to label %bb.ko unwind label %bb.kk

bb.kn:                                            ; preds = %bb.ko, %bb.kl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !4854
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @132, i64 noundef 2)
          to label %_RNvXs4_NtCsl4q486LaARA_9typst_svg5writeINtB5_12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_str.exit.i unwind label %bb.kk

bb.ko:                                            ; preds = %bb.km
  br i1 %i.ahd, label %bb.kp, label %bb.kn

bb.kp:                                            ; preds = %bb.ko
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !4854
  br label %bb.lj

_RNvXs4_NtCsl4q486LaARA_9typst_svg5writeINtB5_12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_str.exit.i: ; preds = %bb.kn
  br i1 %i.agf, label %bb.ks, label %bb.kq

bb.kq:                                            ; preds = %_RNvXs4_NtCsl4q486LaARA_9typst_svg5writeINtB5_12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_str.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  br i1 %i.afj, label %_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatdECsl4q486LaARA_9typst_svg.exit.i407, label %bb.kr

bb.kr:                                            ; preds = %bb.kq
  %i.ahe = invoke noundef i64 @_RNvNtCseqBJZIMdYtm_3ryu6pretty8format64(double noundef %i.afc, ptr noundef nonnull dereferenceable(24) %i.n)
          to label %_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatdECsl4q486LaARA_9typst_svg.exit.i407 unwind label %bb.kk

_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatdECsl4q486LaARA_9typst_svg.exit.i407: ; preds = %bb.kq, %bb.kr
  %.sroa.0.0.i.i408 = phi ptr [ %i.n, %bb.kr ], [ %.sroa.0.0.i.i.i412, %bb.kq ] ; 2 uses
  %.sroa.4.0.i.pn.i.i409 = phi i64 [ %i.ahe, %bb.kr ], [ %.sroa.4.0.i.i.i411, %bb.kq ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i408) ]
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i408, i64 noundef %.sroa.4.0.i.pn.i.i409)
          to label %.noexc429 unwind label %bb.kk

.noexc429:                                        ; preds = %_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatdECsl4q486LaARA_9typst_svg.exit.i407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %.noexc.i

bb.ks:                                            ; preds = %_RNvXs4_NtCsl4q486LaARA_9typst_svg5writeINtB5_12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_str.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.experimental.noalias.scope.decl(metadata !4857)
  br i1 %i.afr, label %.lr.ph.i.i.i424, label %._crit_edge.i.i.i414

._crit_edge.i.i.i414:                             ; preds = %.lr.ph.i.i.i424, %bb.ks
  %.sroa.09.0.lcssa.i.i.i415 = phi i64 [ 20, %bb.ks ], [ %i.aho, %.lr.ph.i.i.i424 ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i416 = phi i64 [ %.sroa.0.0.i.i1.i413, %bb.ks ], [ %i.ahh, %.lr.ph.i.i.i424 ] ; 3 uses
  %i.ahf = icmp samesign ugt i64 %.sroa.0.1.lcssa.i.i.i416, 99
  br i1 %i.ahf, label %bb.kt, label %bb.ku

.lr.ph.i.i.i424:                                  ; preds = %bb.ks, %.lr.ph.i.i.i424
  %.sroa.0.129.i.i.i425 = phi i64 [ %i.ahh, %.lr.ph.i.i.i424 ], [ %.sroa.0.0.i.i1.i413, %bb.ks ] ; 3 uses
  %.sroa.09.028.i.i.i426 = phi i64 [ %i.aho, %.lr.ph.i.i.i424 ], [ 20, %bb.ks ] ; 2 uses
  %i.ahg = urem i64 %.sroa.0.129.i.i.i425, 10000
  %i.ahh = udiv i64 %.sroa.0.129.i.i.i425, 10000  ; 2 uses
  %.lhs.trunc.i.i.i427 = trunc nuw nsw i64 %i.ahg to i16 ; 2 uses
  %i.ahi = udiv i16 %.lhs.trunc.i.i.i427, 100
  %i.ahj = shl nuw nsw i16 %i.ahi, 1
  %i.ahk = zext nneg i16 %i.ahj to i64
  %i.ahl = urem i16 %.lhs.trunc.i.i.i427, 100
  %i.ahm = shl nuw nsw i16 %i.ahl, 1
  %i.ahn = zext nneg i16 %i.ahm to i64
  %i.aho = add i64 %.sroa.09.028.i.i.i426, -4     ; 3 uses
  %i.ahp = getelementptr inbounds nuw i8, ptr @367, i64 %i.ahk
  %i.ahq = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.aho
  %i.ahr = load i16, ptr %i.ahp, align 1, !noalias !4857
  store i16 %i.ahr, ptr %i.ahq, align 1, !alias.scope !4857
  %i.ahs = getelementptr inbounds nuw i8, ptr @367, i64 %i.ahn
  %i.aht = getelementptr i8, ptr %i.m, i64 %.sroa.09.028.i.i.i426
  %i.ahu = getelementptr i8, ptr %i.aht, i64 -2
  %i.ahv = load i16, ptr %i.ahs, align 1, !noalias !4857
  store i16 %i.ahv, ptr %i.ahu, align 1, !alias.scope !4857
  %i.ahw = icmp ugt i64 %.sroa.0.129.i.i.i425, 99999999
  br i1 %i.ahw, label %.lr.ph.i.i.i424, label %._crit_edge.i.i.i414

bb.kt:                                            ; preds = %._crit_edge.i.i.i414
  %.lhs.trunc24.i.i.i422 = trunc nuw i64 %.sroa.0.1.lcssa.i.i.i416 to i16 ; 2 uses
  %i.ahx = urem i16 %.lhs.trunc24.i.i.i422, 100
  %i.ahy = shl nuw nsw i16 %i.ahx, 1
  %i.ahz = zext nneg i16 %i.ahy to i64
  %i.aia = udiv i16 %.lhs.trunc24.i.i.i422, 100
  %.zext27.i.i.i423 = zext nneg i16 %i.aia to i64
  %i.aib = add i64 %.sroa.09.0.lcssa.i.i.i415, -2 ; 2 uses
  %i.aic = getelementptr inbounds nuw i8, ptr @367, i64 %i.ahz
  %i.aid = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.aib
  %i.aie = load i16, ptr %i.aic, align 1, !noalias !4857
  store i16 %i.aie, ptr %i.aid, align 1, !alias.scope !4857
  br label %bb.ku

bb.ku:                                            ; preds = %bb.kt, %._crit_edge.i.i.i414
  %.sroa.09.1.i.i.i417 = phi i64 [ %i.aib, %bb.kt ], [ %.sroa.09.0.lcssa.i.i.i415, %._crit_edge.i.i.i414 ] ; 2 uses
  %.sroa.0.2.i.i.i418 = phi i64 [ %.zext27.i.i.i423, %bb.kt ], [ %.sroa.0.1.lcssa.i.i.i416, %._crit_edge.i.i.i414 ] ; 3 uses
  %i.aif = icmp samesign ult i64 %.sroa.0.2.i.i.i418, 10
  br i1 %i.aif, label %bb.kw, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  %i.aig = shl nuw nsw i64 %.sroa.0.2.i.i.i418, 1
  %i.aih = add i64 %.sroa.09.1.i.i.i417, -2       ; 2 uses
  %i.aii = getelementptr inbounds nuw i8, ptr @367, i64 %i.aig
  %i.aij = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.aih
  %i.aik = load i16, ptr %i.aii, align 1, !noalias !4857
  store i16 %i.aik, ptr %i.aij, align 1, !alias.scope !4857
  br label %bb.kx

bb.kw:                                            ; preds = %bb.ku
  %i.ail = add i64 %.sroa.09.1.i.i.i417, -1       ; 2 uses
  %i.aim = trunc nuw nsw i64 %.sroa.0.2.i.i.i418 to i8
  %i.ain = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.ail
  %i.aio = or disjoint i8 %i.aim, 48
  store i8 %i.aio, ptr %i.ain, align 1, !alias.scope !4857
  br label %bb.kx

bb.kx:                                            ; preds = %bb.kw, %bb.kv
  %.sroa.09.2.i.i.i419 = phi i64 [ %i.ail, %bb.kw ], [ %i.aih, %bb.kv ] ; 2 uses
  br i1 %i.afq, label %_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_intB7_.exit.i420, label %bb.ky

bb.ky:                                            ; preds = %bb.kx
  %i.aip = add i64 %.sroa.09.2.i.i.i419, -1       ; 2 uses
  %i.aiq = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.aip
  store i8 45, ptr %i.aiq, align 1, !alias.scope !4857
  br label %_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_intB7_.exit.i420

_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_intB7_.exit.i420: ; preds = %bb.ky, %bb.kx
  %.sroa.09.3.i.i.i421 = phi i64 [ %.sroa.09.2.i.i.i419, %bb.kx ], [ %i.aip, %bb.ky ] ; 2 uses
  %i.air = sub i64 20, %.sroa.09.3.i.i.i421       ; 2 uses
  %i.ais = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.09.3.i.i.i421
  %i.ait = icmp ult i64 %i.air, 21
  call void @llvm.assume(i1 %i.ait)
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ais, i64 noundef %i.air)
          to label %.noexc430 unwind label %bb.kk

.noexc430:                                        ; preds = %_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_intB7_.exit.i420
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %.noexc.i

.noexc.i:                                         ; preds = %.noexc430, %.noexc429
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 1)
          to label %.noexc1.i unwind label %bb.kk

.noexc1.i:                                        ; preds = %.noexc.i
  br i1 %i.agg, label %bb.lb, label %bb.kz

bb.kz:                                            ; preds = %.noexc1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  br i1 %i.afw, label %_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatdECsl4q486LaARA_9typst_svg.exit.i, label %bb.la

bb.la:                                            ; preds = %bb.kz
  %i.aiu = invoke noundef i64 @_RNvNtCseqBJZIMdYtm_3ryu6pretty8format64(double noundef %i.afe, ptr noundef nonnull dereferenceable(24) %i.p)
          to label %_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatdECsl4q486LaARA_9typst_svg.exit.i unwind label %bb.kk

_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatdECsl4q486LaARA_9typst_svg.exit.i: ; preds = %bb.kz, %bb.la
  %.sroa.0.0.i.i401 = phi ptr [ %i.p, %bb.la ], [ %.sroa.0.0.i.i.i402, %bb.kz ] ; 2 uses
  %.sroa.4.0.i.pn.i.i = phi i64 [ %i.aiu, %bb.la ], [ %.sroa.4.0.i.i.i, %bb.kz ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i401) ]
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i401, i64 noundef %.sroa.4.0.i.pn.i.i)
          to label %.noexc405 unwind label %bb.kk

.noexc405:                                        ; preds = %_RINvMNtCseqBJZIMdYtm_3ryu6bufferNtB3_6Buffer6formatdECsl4q486LaARA_9typst_svg.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.lj

bb.lb:                                            ; preds = %.noexc1.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !4860)
  br i1 %i.age, label %.lr.ph.i.i.i403, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i403, %bb.lb
  %.sroa.09.0.lcssa.i.i.i = phi i64 [ 20, %bb.lb ], [ %i.aje, %.lr.ph.i.i.i403 ] ; 2 uses
  %.sroa.0.1.lcssa.i.i.i = phi i64 [ %.sroa.0.0.i.i1.i, %bb.lb ], [ %i.aix, %.lr.ph.i.i.i403 ] ; 3 uses
  %i.aiv = icmp samesign ugt i64 %.sroa.0.1.lcssa.i.i.i, 99
  br i1 %i.aiv, label %bb.lc, label %bb.ld

.lr.ph.i.i.i403:                                  ; preds = %bb.lb, %.lr.ph.i.i.i403
  %.sroa.0.129.i.i.i = phi i64 [ %i.aix, %.lr.ph.i.i.i403 ], [ %.sroa.0.0.i.i1.i, %bb.lb ] ; 3 uses
  %.sroa.09.028.i.i.i = phi i64 [ %i.aje, %.lr.ph.i.i.i403 ], [ 20, %bb.lb ] ; 2 uses
  %i.aiw = urem i64 %.sroa.0.129.i.i.i, 10000
  %i.aix = udiv i64 %.sroa.0.129.i.i.i, 10000     ; 2 uses
  %.lhs.trunc.i.i.i = trunc nuw nsw i64 %i.aiw to i16 ; 2 uses
  %i.aiy = udiv i16 %.lhs.trunc.i.i.i, 100
  %i.aiz = shl nuw nsw i16 %i.aiy, 1
  %i.aja = zext nneg i16 %i.aiz to i64
  %i.ajb = urem i16 %.lhs.trunc.i.i.i, 100
  %i.ajc = shl nuw nsw i16 %i.ajb, 1
  %i.ajd = zext nneg i16 %i.ajc to i64
  %i.aje = add i64 %.sroa.09.028.i.i.i, -4        ; 3 uses
  %i.ajf = getelementptr inbounds nuw i8, ptr @367, i64 %i.aja
  %i.ajg = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.aje
  %i.ajh = load i16, ptr %i.ajf, align 1, !noalias !4860
  store i16 %i.ajh, ptr %i.ajg, align 1, !alias.scope !4860
  %i.aji = getelementptr inbounds nuw i8, ptr @367, i64 %i.ajd
  %i.ajj = getelementptr i8, ptr %i.o, i64 %.sroa.09.028.i.i.i
  %i.ajk = getelementptr i8, ptr %i.ajj, i64 -2
  %i.ajl = load i16, ptr %i.aji, align 1, !noalias !4860
  store i16 %i.ajl, ptr %i.ajk, align 1, !alias.scope !4860
  %i.ajm = icmp ugt i64 %.sroa.0.129.i.i.i, 99999999
  br i1 %i.ajm, label %.lr.ph.i.i.i403, label %._crit_edge.i.i.i

bb.lc:                                            ; preds = %._crit_edge.i.i.i
  %.lhs.trunc24.i.i.i = trunc nuw i64 %.sroa.0.1.lcssa.i.i.i to i16 ; 2 uses
  %i.ajn = urem i16 %.lhs.trunc24.i.i.i, 100
  %i.ajo = shl nuw nsw i16 %i.ajn, 1
  %i.ajp = zext nneg i16 %i.ajo to i64
  %i.ajq = udiv i16 %.lhs.trunc24.i.i.i, 100
  %.zext27.i.i.i = zext nneg i16 %i.ajq to i64
  %i.ajr = add i64 %.sroa.09.0.lcssa.i.i.i, -2    ; 2 uses
  %i.ajs = getelementptr inbounds nuw i8, ptr @367, i64 %i.ajp
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ajr
  %i.aju = load i16, ptr %i.ajs, align 1, !noalias !4860
  store i16 %i.aju, ptr %i.ajt, align 1, !alias.scope !4860
  br label %bb.ld

bb.ld:                                            ; preds = %bb.lc, %._crit_edge.i.i.i
  %.sroa.09.1.i.i.i = phi i64 [ %i.ajr, %bb.lc ], [ %.sroa.09.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 2 uses
  %.sroa.0.2.i.i.i = phi i64 [ %.zext27.i.i.i, %bb.lc ], [ %.sroa.0.1.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.ajv = icmp samesign ult i64 %.sroa.0.2.i.i.i, 10
  br i1 %i.ajv, label %bb.lf, label %bb.le

bb.le:                                            ; preds = %bb.ld
  %i.ajw = shl nuw nsw i64 %.sroa.0.2.i.i.i, 1
  %i.ajx = add i64 %.sroa.09.1.i.i.i, -2          ; 2 uses
  %i.ajy = getelementptr inbounds nuw i8, ptr @367, i64 %i.ajw
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.ajx
  %i.aka = load i16, ptr %i.ajy, align 1, !noalias !4860
  store i16 %i.aka, ptr %i.ajz, align 1, !alias.scope !4860
  br label %bb.lg

bb.lf:                                            ; preds = %bb.ld
  %i.akb = add i64 %.sroa.09.1.i.i.i, -1          ; 2 uses
  %i.akc = trunc nuw nsw i64 %.sroa.0.2.i.i.i to i8
  %i.akd = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.akb
  %i.ake = or disjoint i8 %i.akc, 48
  store i8 %i.ake, ptr %i.akd, align 1, !alias.scope !4860
  br label %bb.lg

bb.lg:                                            ; preds = %bb.lf, %bb.le
  %.sroa.09.2.i.i.i = phi i64 [ %i.akb, %bb.lf ], [ %i.ajx, %bb.le ] ; 2 uses
  br i1 %i.agd, label %_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_intB7_.exit.i, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.akf = add i64 %.sroa.09.2.i.i.i, -1          ; 2 uses
  %i.akg = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.akf
  store i8 45, ptr %i.akg, align 1, !alias.scope !4860
  br label %_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_intB7_.exit.i

_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_intB7_.exit.i: ; preds = %bb.lh, %bb.lg
  %.sroa.09.3.i.i.i = phi i64 [ %.sroa.09.2.i.i.i, %bb.lg ], [ %i.akf, %bb.lh ] ; 2 uses
  %i.akh = sub i64 20, %.sroa.09.3.i.i.i          ; 2 uses
  %i.aki = getelementptr inbounds nuw i8, ptr %i.o, i64 %.sroa.09.3.i.i.i
  %i.akj = icmp ult i64 %i.akh, 21
  call void @llvm.assume(i1 %i.akj)
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aki, i64 noundef %i.akh)
          to label %.noexc406 unwind label %bb.kk

.noexc406:                                        ; preds = %_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_intB7_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.lj

bb.li:                                            ; preds = %bb.kk
  %i.akk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37
  unreachable

bb.lj:                                            ; preds = %bb.kp, %.noexc405, %.noexc406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !4854
  %i.akl = load <2 x double>, ptr %i.aj, align 16, !noalias !4863 ; 2 uses
  store <2 x double> %i.akl, ptr %i.eg, align 8, !alias.scope !4868, !noalias !4871
  store <2 x double> %i.akl, ptr %i.ef, align 8, !alias.scope !4868, !noalias !4871
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !4854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  %i.akm = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5angleNtB2_5Angle3cos(double noundef %.sroa.069.0)
          to label %bb.lk unwind label %bb.ki

bb.lk:                                            ; preds = %bb.lj
  %i.akn = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5angleNtB2_5Angle3sin(double noundef %.sroa.069.0)
          to label %bb.ll unwind label %bb.ki

bb.ll:                                            ; preds = %bb.lk
  %i.ako = insertelement <2 x double> poison, double %i.akm, i64 0
  %i.akp = insertelement <2 x double> %i.ako, double %i.akn, i64 1
  %i.akq = fmul <2 x double> %i.akp, <double -2.000000e+00, double 2.000000e+00> ; 2 uses
  %i.akr = fcmp ord <2 x double> %i.akq, zeroinitializer
  %i.aks = select <2 x i1> %i.akr, <2 x double> %i.akq, <2 x double> zeroinitializer
  %i.akt = fadd <2 x double> %i.aen, %i.aks       ; 2 uses
  %i.aku = fcmp ord <2 x double> %i.akt, zeroinitializer
  %i.akv = fadd <2 x double> %i.akt, splat (double 5.000000e-01)
  %i.akw = fmul <2 x double> %i.akv, splat (double 1.270000e+02)
  %i.akx = select <2 x i1> %i.aku, <2 x double> %i.akw, <2 x double> splat (double 6.350000e+01) ; 2 uses
  %i.aky = fcmp ord <2 x double> %i.akx, zeroinitializer
  %1 = fmul <2 x double> %i.akx, splat (double 5.000000e-01)
  %i.akz = select <2 x i1> %i.aky, <2 x double> %1, <2 x double> zeroinitializer ; 2 uses
  %i.ala = extractelement <2 x double> %i.akz, i64 0
  %i.alb = extractelement <2 x double> %i.akz, i64 1
  invoke fastcc void @_RNvMNtCsl4q486LaARA_9typst_svg4pathNtB2_14SvgPathBuilder7line_to(ptr noalias nofree noundef align 8 dereferenceable(56) %i.dl, double noundef %i.ala, double noundef %i.alb)
          to label %bb.lm unwind label %bb.ki

bb.lm:                                            ; preds = %bb.ll
  %i.alc = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5angleNtB2_5Angle3cos(double noundef %.sroa.078.0)
          to label %bb.ln unwind label %bb.ki

bb.ln:                                            ; preds = %bb.lm
  %i.ald = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5angleNtB2_5Angle3sin(double noundef %.sroa.078.0)
          to label %bb.lo unwind label %bb.ki

bb.lo:                                            ; preds = %bb.ln
  %i.ale = insertelement <2 x double> poison, double %i.alc, i64 0
  %i.alf = insertelement <2 x double> %i.ale, double %i.ald, i64 1
  %i.alg = fmul <2 x double> %i.alf, <double -2.000000e+00, double 2.000000e+00> ; 2 uses
  %i.alh = fcmp ord <2 x double> %i.alg, zeroinitializer
  %i.ali = select <2 x i1> %i.alh, <2 x double> %i.alg, <2 x double> zeroinitializer
  %i.alj = fadd <2 x double> %i.aen, %i.ali       ; 2 uses
  %i.alk = fcmp ord <2 x double> %i.alj, zeroinitializer
  %i.all = fadd <2 x double> %i.alj, splat (double 5.000000e-01)
  %i.alm = fmul <2 x double> %i.all, splat (double 1.270000e+02)
  %i.aln = select <2 x i1> %i.alk, <2 x double> %i.alm, <2 x double> splat (double 6.350000e+01) ; 2 uses
  %i.alo = fcmp ord <2 x double> %i.aln, zeroinitializer
  %i.alp = fmul <2 x double> %i.aln, splat (double 5.000000e-01)
  %i.alq = select <2 x i1> %i.alo, <2 x double> %i.alp, <2 x double> zeroinitializer ; 5 uses
  %i.alr = load double, ptr %i.ee, align 8, !alias.scope !4872, !noundef !10
  %i.als = load <2 x double>, ptr %i.eg, align 8, !alias.scope !4872 ; 2 uses
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @127, i64 noundef 2)
          to label %_RNvXs4_NtCsl4q486LaARA_9typst_svg5writeINtB5_12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_str.exit.i328 unwind label %bb.lp

_RNvXs4_NtCsl4q486LaARA_9typst_svg5writeINtB5_12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_str.exit.i328: ; preds = %bb.lo
  %i.alt = shufflevector <2 x double> %i.als, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.alu = fcmp uno <4 x double> %i.alt, zeroinitializer
  %i.alv = fneg <2 x double> %i.als
  %i.alw = shufflevector <2 x double> %i.alv, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.alx = select <4 x i1> %i.alu, <4 x double> zeroinitializer, <4 x double> %i.alw
  %i.aly = shufflevector <2 x double> %i.alq, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.alz = shufflevector <4 x double> <double 1.270000e+02, double 1.270000e+02, double poison, double poison>, <4 x double> %i.aly, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.ama = fadd <4 x double> %i.alz, %i.alx       ; 2 uses
  %i.amb = fcmp ord <4 x double> %i.ama, zeroinitializer
  %i.amc = select <4 x i1> %i.amb, <4 x double> %i.ama, <4 x double> zeroinitializer
  %i.amd = insertelement <4 x double> poison, double %i.alr, i64 0
  %i.ame = shufflevector <4 x double> %i.amd, <4 x double> poison, <4 x i32> zeroinitializer
  %i.amf = fmul <4 x double> %i.ame, %i.amc       ; 3 uses
  %i.amg = fcmp ord <4 x double> %i.amf, zeroinitializer ; 2 uses
  %i.amh = shufflevector <4 x double> %i.amf, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.ami = fdiv <2 x double> %i.amh, splat (double 1.270000e+02)
  %i.amj = shufflevector <4 x i1> %i.amg, <4 x i1> poison, <2 x i32> <i32 0, i32 1>
  %i.amk = select <2 x i1> %i.amj, <2 x double> %i.ami, <2 x double> zeroinitializer ; 2 uses
  %i.aml = shufflevector <4 x double> %i.amf, <4 x double> poison, <2 x i32> <i32 2, i32 3>
  %i.amm = fdiv <2 x double> %i.aml, splat (double 1.270000e+02)
  %i.amn = shufflevector <4 x i1> %i.amg, <4 x i1> poison, <2 x i32> <i32 2, i32 3>
  %i.amo = select <2 x i1> %i.amn, <2 x double> %i.amm, <2 x double> zeroinitializer ; 2 uses
  %i.amp = extractelement <2 x double> %i.amk, i64 0
  invoke fastcc void @_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_numB7_(ptr nonnull align 8 dereferenceable(56) %i.dl, double noundef %i.amp)
          to label %.noexc12.i unwind label %bb.lp

.noexc12.i:                                       ; preds = %_RNvXs4_NtCsl4q486LaARA_9typst_svg5writeINtB5_12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_str.exit.i328
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 1)
          to label %.noexc13.i unwind label %bb.lp

.noexc13.i:                                       ; preds = %.noexc12.i
  %i.amq = extractelement <2 x double> %i.amk, i64 1
  invoke fastcc void @_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_numB7_(ptr nonnull align 8 dereferenceable(56) %i.dl, double noundef %i.amq)
          to label %.noexc14.i unwind label %bb.lp

.noexc14.i:                                       ; preds = %.noexc13.i
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 1)
          to label %.noexc15.i unwind label %bb.lp

.noexc15.i:                                       ; preds = %.noexc14.i
  invoke fastcc void @_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_numB7_(ptr nonnull align 8 dereferenceable(56) %i.dl, double noundef 0.000000e+00)
          to label %.noexc16.i unwind label %bb.lp

.noexc16.i:                                       ; preds = %.noexc15.i
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 1)
          to label %.noexc17.i unwind label %bb.lp

.noexc17.i:                                       ; preds = %.noexc16.i
  invoke fastcc void @_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_numB7_(ptr nonnull align 8 dereferenceable(56) %i.dl, double noundef 0.000000e+00)
          to label %.noexc18.i unwind label %bb.lp

.noexc18.i:                                       ; preds = %.noexc17.i
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 1)
          to label %.noexc19.i unwind label %bb.lp

.noexc19.i:                                       ; preds = %.noexc18.i
  invoke fastcc void @_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_numB7_(ptr nonnull align 8 dereferenceable(56) %i.dl, double noundef 1.000000e+00)
          to label %.noexc20.i unwind label %bb.lp

.noexc20.i:                                       ; preds = %.noexc19.i
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 1)
          to label %.noexc21.i unwind label %bb.lp

.noexc21.i:                                       ; preds = %.noexc20.i
  %i.amr = extractelement <2 x double> %i.amo, i64 0
  invoke fastcc void @_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_numB7_(ptr nonnull align 8 dereferenceable(56) %i.dl, double noundef %i.amr)
          to label %.noexc22.i unwind label %bb.lp

.noexc22.i:                                       ; preds = %.noexc21.i
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 1)
          to label %.noexc23.i unwind label %bb.lp

.noexc23.i:                                       ; preds = %.noexc22.i
  %i.ams = extractelement <2 x double> %i.amo, i64 1
  invoke fastcc void @_RNvYINtNtCsl4q486LaARA_9typst_svg5write12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_numB7_(ptr nonnull align 8 dereferenceable(56) %i.dl, double noundef %i.ams)
          to label %bb.lq unwind label %bb.lp

bb.lp:                                            ; preds = %.noexc23.i, %.noexc22.i, %.noexc21.i, %.noexc20.i, %.noexc19.i, %.noexc18.i, %.noexc17.i, %.noexc16.i, %.noexc15.i, %.noexc14.i, %.noexc13.i, %.noexc12.i, %_RNvXs4_NtCsl4q486LaARA_9typst_svg5writeINtB5_12SvgFormatterNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtB5_8SvgWrite8push_str.exit.i328, %bb.lo
  %i.amt = landingpad { ptr, i32 }
          cleanup
  %i.amu = extractelement <2 x double> %i.alq, i64 0
  store double %i.amu, ptr %i.eg, align 8, !alias.scope !4877, !noalias !4880
  %i.amv = extractelement <2 x double> %i.alq, i64 1
  store double %i.amv, ptr %i.eh, align 8, !alias.scope !4877, !noalias !4880
  br label %.thread68

bb.lq:                                            ; preds = %.noexc23.i
  %i.amw = extractelement <2 x double> %i.alq, i64 0
  store double %i.amw, ptr %i.eg, align 8, !alias.scope !4885, !noalias !4888
  %i.amx = extractelement <2 x double> %i.alq, i64 1
  store double %i.amx, ptr %i.eh, align 8, !alias.scope !4885, !noalias !4888
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.dl, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @128, i64 noundef 2)
          to label %bb.lr unwind label %bb.ki

bb.lr:                                            ; preds = %bb.lq
  %i.amy = load <2 x double>, ptr %i.ef, align 8, !alias.scope !4893
  store <2 x double> %i.amy, ptr %i.eg, align 8, !alias.scope !4893
  %i.amz = fdiv double %i.agl, 3.600000e+02
  %i.ana = load ptr, ptr %i.ih, align 8, !nonnull !10, !noundef !10
  %i.anb = getelementptr inbounds nuw i8, ptr %i.ana, i64 96
  %i.anc = load <2 x double>, ptr %i.anb, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dk)
  invoke void @_RNvMsc_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8Gradient6sample(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dk, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.id, i64 noundef 0, double noundef %i.amz)
          to label %bb.ls unwind label %bb.ki

bb.ls:                                            ; preds = %bb.lr
  %i.and = fdiv double %i.agu, 3.600000e+02
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj)
  invoke void @_RNvMsc_NtNtCsdaEETE4DqmE_13typst_library9visualize8gradientNtB5_8Gradient6sample(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.dj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.id, i64 noundef 0, double noundef %i.and)
          to label %bb.lw unwind label %bb.lt

bb.lt:                                            ; preds = %bb.ls
  %i.ane = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4896)
  %i.anf = load i32, ptr %i.dk, align 8, !range !1133, !alias.scope !4896, !noundef !10
  %i.ang = icmp eq i32 %i.anf, 0
  br i1 %i.ang, label %.thread68, label %bb.lu

bb.lu:                                            ; preds = %bb.lt
  %i.anh = getelementptr inbounds nuw i8, ptr %i.dk, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4899)
  call void @llvm.experimental.noalias.scope.decl(metadata !4902)
  call void @llvm.experimental.noalias.scope.decl(metadata !4905)
  %i.ani = load ptr, ptr %i.anh, align 8, !alias.scope !4908, !nonnull !10, !noundef !10
  %i.anj = atomicrmw sub ptr %i.ani, i64 1 release, align 8, !noalias !4908
  %i.ank = icmp eq i64 %i.anj, 1
  br i1 %i.ank, label %bb.lv, label %.thread68

bb.lv:                                            ; preds = %bb.lu
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library9visualize5color12SpotColorantE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.anh) #35
          to label %.thread68 unwind label %bb.x

bb.lw:                                            ; preds = %bb.ls
  %.sroa.0.0.copyload1296 = load i32, ptr %i.dk, align 8 ; 2 uses
  %.sroa.5.0.copyload1299 = load i32, ptr %.sroa.5.0..sroa_idx1298, align 4 ; 2 uses
  %.sroa.6.0.copyload1301 = load ptr, ptr %.sroa.6.0..sroa_idx1300, align 8 ; 4 uses
  %.sroa.8.0.copyload1303 = load double, ptr %.sroa.8.0..sroa_idx1302, align 8 ; 2 uses
  %.sroa.9.24.copyload = load i32, ptr %i.dj, align 8 ; 2 uses
  %.sroa.11.24.copyload = load i32, ptr %.sroa.11.24..sroa_idx, align 4 ; 2 uses
  %.sroa.12.24.copyload = load ptr, ptr %.sroa.12.24..sroa_idx, align 8 ; 4 uses
  %.sroa.14.24.copyload = load double, ptr %.sroa.14.24..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dk)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di)
  call void @llvm.experimental.noalias.scope.decl(metadata !4909)
  %i.anl = trunc nuw i32 %.sroa.0.0.copyload1296 to i1
  br i1 %i.anl, label %bb.lx, label %bb.ly

bb.lx:                                            ; preds = %bb.lw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload1301) ]
  %i.anm = atomicrmw add ptr %.sroa.6.0.copyload1301, i64 1 monotonic, align 8, !noalias !4912
  %i.ann = icmp slt i64 %i.anm, 0
  br i1 %i.ann, label %bb.lz, label %bb.ly

bb.ly:                                            ; preds = %bb.lw, %bb.lx
  %.sroa.5.0.i = phi i32 [ undef, %bb.lx ], [ %.sroa.5.0.copyload1299, %bb.lw ]
  %.sroa.0.0.i342 = phi i32 [ 1, %bb.lx ], [ 0, %bb.lw ]
  %i.ano = trunc nuw i32 %.sroa.9.24.copyload to i1
  br i1 %i.ano, label %bb.ma, label %bb.mc

bb.lz:                                            ; preds = %bb.lx
  call void @llvm.trap()
  unreachable

bb.ma:                                            ; preds = %bb.ly
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12.24.copyload) ]
  %i.anp = atomicrmw add ptr %.sroa.12.24.copyload, i64 1 monotonic, align 8, !noalias !4912
  %i.anq = icmp slt i64 %i.anp, 0
  br i1 %i.anq, label %bb.mb, label %bb.mc

bb.mb:                                            ; preds = %bb.ma
  call void @llvm.trap()
  unreachable

bb.mc:                                            ; preds = %bb.ly, %bb.ma
  %.sroa.52.0.i = phi i32 [ undef, %bb.ma ], [ %.sroa.11.24.copyload, %bb.ly ]
  %.sroa.01.0.i = phi i32 [ 1, %bb.ma ], [ 0, %bb.ly ]
  store <2 x double> %i.anc, ptr %i.el, align 8, !alias.scope !4909, !noalias !4914
  store double %.sroa.069.0, ptr %i.em, align 8, !alias.scope !4909, !noalias !4914
  store double %.sroa.078.0, ptr %i.en, align 8, !alias.scope !4909, !noalias !4914
  store i32 %.sroa.0.0.i342, ptr %i.di, align 8, !alias.scope !4909, !noalias !4914
  store i32 %.sroa.5.0.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !alias.scope !4909, !noalias !4914
  store ptr %.sroa.6.0.copyload1301, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !4909, !noalias !4914
  store double %.sroa.8.0.copyload1303, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !4909, !noalias !4914
  store i32 %.sroa.01.0.i, ptr %i.eo, align 8, !alias.scope !4909, !noalias !4914
  store i32 %.sroa.52.0.i, ptr %.sroa.52.0..sroa_idx.i, align 4, !alias.scope !4909, !noalias !4914
  store ptr %.sroa.12.24.copyload, ptr %.sroa.63.0..sroa_idx.i, align 8, !alias.scope !4909, !noalias !4914
  store double %.sroa.14.24.copyload, ptr %.sroa.74.0..sroa_idx.i, align 8, !alias.scope !4909, !noalias !4914
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dh)
  store i32 %.sroa.0.0.copyload1296, ptr %i.dh, align 8
  store i32 %.sroa.5.0.copyload1299, ptr %.sroa.5.0..sroa_idx1297, align 4
  store ptr %.sroa.6.0.copyload1301, ptr %.sroa.6.0..sroa_idx, align 8
end_hunk_1
begin_hunk_2_@_RNvMNtCsl4q486LaARA_9typst_svg5shapeNtB4_11SVGRenderer12write_stroke:bb.a
  store i128 %i.s, ptr %i.g, align 16, !noalias !5458
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i32 %i.u, ptr %i.v, align 16, !noalias !5458
  %i.w = load ptr, ptr %1, align 8, !alias.scope !5455, !noalias !5460, !nonnull !10, !align !602, !noundef !10 ; 2 uses
  call void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrINtB19_6SvgUrlNtB1b_7DedupIdEE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.w, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @183, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.g) #35, !noalias !5455
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %switch.lookup

bb.e:                                             ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call fastcc void @_RNvMNtCsl4q486LaARA_9typst_svg5paintNtB4_11SVGRenderer11push_tiling(ptr noalias nofree noundef align 16 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef align 8 dereferenceable(480) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.x, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %4)
  %i.y = load i128, ptr %i.i, align 16, !noundef !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.aa = load i32, ptr %i.z, align 16, !range !554, !noundef !10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5461)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i128 %i.y, ptr %i.f, align 16, !noalias !5464
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %i.aa, ptr %i.ab, align 16, !noalias !5464
  %i.ac = load ptr, ptr %1, align 8, !alias.scope !5461, !noalias !5466, !nonnull !10, !align !602, !noundef !10 ; 2 uses
  call void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrINtB19_6SvgUrlNtB1b_7DedupIdEE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @183, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.f) #35, !noalias !5461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %switch.lookup

switch.lookup:                                    ; preds = %bb.e, %bb.d, %bb.c
  %i.ad = phi ptr [ %i.ac, %bb.e ], [ %i.w, %bb.d ], [ %i.q, %bb.c ] ; 6 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.af = load double, ptr %i.ae, align 8, !noundef !10
  %i.ag = fdiv double %i.af, 1.270000e+02
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store double %i.ag, ptr %i.e, align 8, !noalias !5467
  call void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrdE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @190, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.e) #35, !noalias !5471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.ai = load i8, ptr %i.ah, align 8, !range !357, !noundef !10 ; 2 uses
  %i.aj = or disjoint i8 %i.ai, 4
  %switch.offset = zext nneg i8 %i.aj to i64
  %i.ak = zext nneg i8 %i.ai to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMNtCsl4q486LaARA_9typst_svg5shapeNtB4_11SVGRenderer12write_stroke, i64 %i.ak
  %switch.load = load ptr, ptr %switch.gep, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %switch.load, ptr %i.d, align 8, !noalias !5472
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %switch.offset, ptr %i.al, align 8, !noalias !5472
  call void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @194, i64 noundef 14, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d) #35, !noalias !5477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 73
  %i.an = load i8, ptr %i.am, align 1, !range !357, !noundef !10
  %i.ao = zext nneg i8 %i.an to i64
  %switch.gep5 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvMNtCsl4q486LaARA_9typst_svg5shapeNtB4_11SVGRenderer12write_stroke.559, i64 %i.ao
  %switch.load6 = load ptr, ptr %switch.gep5, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %switch.load6, ptr %i.c, align 8, !noalias !5478
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 5, ptr %i.ap, align 8, !noalias !5478
  call void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @197, i64 noundef 15, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c) #35, !noalias !5483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aq = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ar = load double, ptr %i.aq, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double %i.ar, ptr %i.b, align 8, !noalias !5484
  call void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrdE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @198, i64 noundef 17, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b) #35, !noalias !5488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.as = load i64, ptr %2, align 8, !range !1515, !noundef !10
  %.not = icmp eq i64 %i.as, -1
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %switch.lookup
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.au = load double, ptr %i.at, align 8, !noundef !10
  %i.av = fdiv double %i.au, 1.270000e+02
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double %i.av, ptr %i.a, align 8, !noalias !5489
  call void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrdE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @199, i64 noundef 17, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) #35, !noalias !5493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCNvMNtB1b_5shapeNtB1b_11SVGRenderer12write_stroke0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.ad, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @200, i64 noundef 16, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2) #35
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %switch.lookup
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { double, double } @_RNvMNtCsl4q486LaARA_9typst_svg5shapeNtB4_11SVGRenderer15shape_fill_size(double %.48.val, double %.56.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5shapeNtB2_5Shape4bbox(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %1, i1 noundef zeroext true)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load <2 x double>, ptr %i.f, align 16, !alias.scope !5494
  %i.h = load <2 x double>, ptr %i.e, align 16, !alias.scope !5494 ; 2 uses
  %i.i = fneg <2 x double> %i.h
  %i.j = fcmp uno <2 x double> %i.h, zeroinitializer
  %i.k = select <2 x i1> %i.j, <2 x double> zeroinitializer, <2 x double> %i.i
  %i.l = fadd <2 x double> %i.g, %i.k             ; 2 uses
  %i.m = fcmp ord <2 x double> %i.l, zeroinitializer
  %i.n = select <2 x i1> %i.m, <2 x double> %i.l, <2 x double> zeroinitializer ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.o = extractelement <2 x double> %i.n, i64 0
  store double %i.o, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double 0.000000e+00, ptr %i.b, align 8
  %i.p = call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.q = extractelement <2 x double> %i.n, i64 1
  store double %i.q, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double 0.000000e+00, ptr %i.a, align 8
  %i.r = call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.s = insertelement <2 x i1> poison, i1 %i.p, i64 0
  %i.t = insertelement <2 x i1> %i.s, i1 %i.r, i64 1
  %i.u = select <2 x i1> %i.t, <2 x double> splat (double 1.270000e+02), <2 x double> %i.n ; 2 uses
  %i.v = load i32, ptr %0, align 8, !range !2026, !noundef !10
  %i.w = icmp eq i32 %i.v, 2
  br i1 %i.w, label %switch.lookup, label %bb.c

switch.lookup:                                    ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !1179, !noundef !10
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !10, !noundef !10
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMNtCsl4q486LaARA_9typst_svg5shapeNtB4_11SVGRenderer21shape_paint_transform, i64 %i.y
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %switch.ext
  %.sroa.09.0 = load i8, ptr %i.ab, align 1, !range !357, !noundef !10
  %i.ac = icmp eq i8 %.sroa.09.0, 1
  br i1 %i.ac, label %bb.b, label %bb.c

bb.b:                                             ; preds = %switch.lookup
  %i.ad = insertelement <2 x double> poison, double %.48.val, i64 0
  %i.ae = insertelement <2 x double> %i.ad, double %.56.val, i64 1
  br label %bb.c

bb.c:                                             ; preds = %switch.lookup, %bb.b, %bb.a
  %i.af = phi <2 x double> [ %i.ae, %bb.b ], [ %i.u, %switch.lookup ], [ %i.u, %bb.a ] ; 2 uses
  %i.ag = extractelement <2 x double> %i.af, i64 0
  %i.ah = insertvalue { double, double } poison, double %i.ag, 0
  %i.ai = extractelement <2 x double> %i.af, i64 1
  %i.aj = insertvalue { double, double } %i.ah, double %i.ai, 1
  ret { double, double } %i.aj
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsl4q486LaARA_9typst_svg5shapeNtB4_11SVGRenderer21shape_paint_transform(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %3, i1 noundef zeroext %4) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = alloca [56 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 8 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [32 x i8], align 16               ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library9visualize5shapeNtB2_5Shape4bbox(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(136) %3, i1 noundef zeroext %4)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = load <2 x double>, ptr %i.k, align 16    ; 5 uses
  %i.n = load <2 x double>, ptr %i.l, align 16, !alias.scope !5497
  %i.o = fneg <2 x double> %i.m
  %i.p = fcmp uno <2 x double> %i.m, zeroinitializer
  %i.q = select <2 x i1> %i.p, <2 x double> zeroinitializer, <2 x double> %i.o
  %i.r = fadd <2 x double> %i.n, %i.q             ; 2 uses
  %i.s = fcmp ord <2 x double> %i.r, zeroinitializer
  %i.t = select <2 x i1> %i.s, <2 x double> %i.r, <2 x double> zeroinitializer ; 5 uses
  %i.u = extractelement <2 x double> %i.t, i64 1  ; 4 uses
  %i.v = extractelement <2 x double> %i.t, i64 0  ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.w = load i64, ptr %3, align 8, !range !2074, !noundef !10
  %i.x = icmp eq i64 %i.w, -9223372036854775807
  %i.y = extractelement <2 x double> %i.m, i64 0  ; 2 uses
  %i.z = extractelement <2 x double> %i.m, i64 1  ; 3 uses
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ab = load double, ptr %i.aa, align 8, !noundef !10 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = load double, ptr %i.ac, align 8, !noundef !10 ; 2 uses
  %i.ae = fcmp ord double %i.ab, 0.000000e+00
  %i.af = call double @llvm.copysign.f64(double 1.000000e+00, double %i.ab)
  %i.ag = fcmp olt double %i.af, 1.000000e+00
  %.sroa.0.0 = and i1 %i.ae, %i.ag
  br i1 %.sroa.0.0, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.e, %bb.f, %bb.a
  %.sroa.030.0 = phi double [ %.sroa.032.0, %bb.f ], [ %i.z, %bb.a ], [ %i.z, %bb.e ]
  %.sroa.022.0 = phi double [ %.sroa.022.1, %bb.f ], [ %i.y, %bb.a ], [ %.sroa.022.1, %bb.e ]
  %.sroa.06.0 = phi double [ %i.aw, %bb.f ], [ %i.u, %bb.a ], [ %i.u, %bb.e ]
  %.sroa.02.0 = phi double [ %.sroa.02.1, %bb.f ], [ %i.v, %bb.a ], [ %.sroa.02.1, %bb.e ]
  %i.ah = phi <2 x double> [ %i.ax, %bb.f ], [ %i.t, %bb.a ], [ %i.au, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store double %.sroa.02.0, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double 0.000000e+00, ptr %i.b, align 8
  %i.ai = call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store double %.sroa.06.0, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store double 0.000000e+00, ptr %i.a, align 8
  %i.aj = call noundef zeroext i1 @_RNvXs3_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ak = load i32, ptr %2, align 8, !range !2026, !noundef !10 ; 2 uses
  %i.al = icmp samesign ugt i32 %i.ak, 1
  %i.am = zext nneg i32 %i.ak to i64
  %i.an = add nsw i64 %i.am, -1
  %i.ao = select i1 %i.al, i64 %i.an, i64 0
  switch i64 %i.ao, label %bb.m [
    i64 1, label %switch.lookup
    i64 2, label %bb.l
  ]

bb.d:                                             ; preds = %bb.b
  %foldExtExtBinop = fadd <2 x double> %i.m, %i.t
  %i.ap = extractelement <2 x double> %foldExtExtBinop, i64 0 ; 2 uses
  %.inv = fcmp ord double %i.ap, 0.000000e+00
  %.sroa.024.0 = select i1 %.inv, double %i.ap, double 0.000000e+00
  %i.aq = fneg double %i.v
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.sroa.022.1 = phi double [ %.sroa.024.0, %bb.d ], [ %i.y, %bb.b ] ; 2 uses
  %.sroa.02.1 = phi double [ %i.aq, %bb.d ], [ %i.v, %bb.b ] ; 3 uses
  %i.ar = fcmp ord double %i.ad, 0.000000e+00
  %i.as = call double @llvm.copysign.f64(double 1.000000e+00, double %i.ad)
  %i.at = fcmp olt double %i.as, 1.000000e+00
  %.sroa.01.0 = and i1 %i.ar, %i.at
  %i.au = insertelement <2 x double> %i.t, double %.sroa.02.1, i64 0 ; 2 uses
  br i1 %.sroa.01.0, label %bb.f, label %bb.c

bb.f:                                             ; preds = %bb.e
  %i.av = fadd double %i.z, %i.u                  ; 2 uses
  %.inv1 = fcmp ord double %i.av, 0.000000e+00
  %.sroa.032.0 = select i1 %.inv1, double %i.av, double 0.000000e+00
  %i.aw = fneg double %i.u                        ; 2 uses
  %i.ax = insertelement <2 x double> %i.au, double %i.aw, i64 1
  br label %bb.c

switch.lookup:                                    ; preds = %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.az = load i64, ptr %i.ay, align 8, !range !1179, !noundef !10
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !10, !noundef !10
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvMNtCsl4q486LaARA_9typst_svg5shapeNtB4_11SVGRenderer21shape_paint_transform, i64 %i.az
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %switch.ext
  %.sroa.044.0 = load i8, ptr %i.bc, align 1, !range !357, !noundef !10
  %i.bd = icmp eq i8 %.sroa.044.0, 1
  br i1 %i.bd, label %bb.h, label %bb.g

bb.g:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.be = fdiv <2 x double> %i.ah, splat (double 1.270000e+02)
  %i.bf = insertelement <2 x i1> poison, i1 %i.ai, i64 0
  %i.bg = insertelement <2 x i1> %i.bf, i1 %i.aj, i64 1
  %i.bh = select <2 x i1> %i.bg, <2 x double> splat (double 1.000000e+00), <2 x double> %i.be ; 2 uses
  %i.bi = fcmp ord <2 x double> %i.bh, zeroinitializer
  %i.bj = select <2 x i1> %i.bi, <2 x double> %i.bh, <2 x double> zeroinitializer ; 2 uses
  %i.bk = extractelement <2 x double> %i.bj, i64 0
  store double %i.bk, ptr %i.h, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bl, i8 0, i64 16, i1 false)
  %i.bn = extractelement <2 x double> %i.bj, i64 1
  store double %i.bn, ptr %i.bm, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bo, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store double 1.000000e+00, ptr %i.g, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store double %.sroa.022.0, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store double %.sroa.030.0, ptr %i.bs, align 8
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout9transformNtB2_9Transform11post_concat(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.k

bb.h:                                             ; preds = %switch.lookup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bu = load <2 x double>, ptr %i.bt, align 8
  %i.bv = fdiv <2 x double> %i.bu, splat (double 1.270000e+02) ; 2 uses
  %i.bw = fcmp ord <2 x double> %i.bv, zeroinitializer
  %i.bx = select <2 x i1> %i.bw, <2 x double> %i.bv, <2 x double> zeroinitializer ; 2 uses
  %i.by = extractelement <2 x double> %i.bx, i64 0
  store double %i.by, ptr %i.f, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, i8 0, i64 16, i1 false)
  %i.cb = extractelement <2 x double> %i.bx, i64 1
  store double %i.cb, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cc, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout9transformNtB2_9Transform6invert(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1)
  %i.cd = load i64, ptr %i.d, align 8, !range !2221, !noundef !10
  %i.ce = trunc nuw i64 %i.cd to i1
  br i1 %i.ce, label %bb.i, label %bb.j, !prof !359

bb.i:                                             ; preds = %bb.h
  %i.cf = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.cf, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout9transformNtB2_9Transform11post_concat(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #33
  unreachable

bb.k:                                             ; preds = %bb.n, %bb.p, %bb.g, %bb.i, %bb.m
  ret void

bb.l:                                             ; preds = %bb.c
  %i.cg = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !10, !noundef !10
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 128
  %i.cj = load i8, ptr %i.ci, align 16, !range !357, !noundef !10
  %i.ck = icmp eq i8 %i.cj, 1
  br i1 %i.ck, label %bb.o, label %bb.n

bb.m:                                             ; preds = %bb.c
  store double 1.000000e+00, ptr %0, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.cm, align 8
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cn, i8 0, i64 16, i1 false)
  br label %bb.k

bb.n:                                             ; preds = %bb.l
  store double 1.000000e+00, ptr %0, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.co, i8 0, i64 16, i1 false)
  store double 1.000000e+00, ptr %i.cp, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, i8 0, i64 16, i1 false)
  br label %bb.k

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout9transformNtB2_9Transform6invert(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1)
  %i.cr = load i64, ptr %i.c, align 8, !range !2221, !noundef !10
  %i.cs = trunc nuw i64 %i.cr to i1
  br i1 %i.cs, label %bb.p, label %bb.q, !prof !359

bb.p:                                             ; preds = %bb.o
  %i.ct = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.ct, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.k

bb.q:                                             ; preds = %bb.o
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #33
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMNtCsloFShupyl5J_6comemo7memoizeINtB2_5CacheINtNvNtB4_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringE5evictCsl4q486LaARA_9typst_svg(ptr noundef nonnull align 8 %0, i64 noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.8.i.i.sroa.0.i.i = alloca [32 x i8], align 8 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.e = load atomic i32, ptr %i.d acquire, align 8
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE5force0ECsl4q486LaARA_9typst_svg.exit, label %bb.b, !prof !359

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @_RNvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys4sync4once5futexNtB5_4Once4call(ptr noundef nonnull align 4 %i.d, i1 noundef zeroext true, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) @15, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE5force0ECsl4q486LaARA_9typst_svg.exit

_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE5force0ECsl4q486LaARA_9typst_svg.exit: ; preds = %bb.a, %bb.b
  %i.g = cmpxchg weak ptr %0, i64 0, i64 8 acquire monotonic, align 8
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.d, label %bb.c, !prof !359

bb.c:                                             ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE5force0ECsl4q486LaARA_9typst_svg.exit
  %i.i = call noundef zeroext i1 @_RNvMs8_NtCsg5ZWEykmiUC_11parking_lot10raw_rwlockNtB5_9RawRwLock19lock_exclusive_slow(ptr noundef nonnull align 8 %0, i64 undef, i32 noundef -1) ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %_RINvMs0_NtNtCsaL1QbXo9JQH_3std4sync4onceNtB6_4Once15call_once_forceNCNvMNtB8_9lazy_lockINtB18_8LazyLockINtNtCsbQmEUdn7Qi6_8lock_api6rwlock6RwLockNtNtCsg5ZWEykmiUC_11parking_lot10raw_rwlock9RawRwLockINtNtCsloFShupyl5J_6comemo7memoize9CacheDataINtNvNtB3f_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE5force0ECsl4q486LaARA_9typst_svg.exit, %bb.c
  call void @llvm.experimental.noalias.scope.decl(metadata !5500)
  call void @llvm.experimental.noalias.scope.decl(metadata !5503)
  call void @llvm.experimental.noalias.scope.decl(metadata !5506)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !5508, !noalias !5509, !noundef !10 ; 5 uses
  %i.l = icmp ult i64 %i.k, 144115188075855872
  call void @llvm.assume(i1 %i.l)
  %.not47.i.i = icmp eq i64 %i.k, 0
  br i1 %.not47.i.i, label %_RINvMs3_CsaixNeEcpA3e_4slabINtB6_4SlabINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBF_7memoize10CacheEntryINtNvNtBF_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEE6retainNCINvMs0_BD_INtBD_8CallTreeB1G_B1e_E6retainNCNvMs_B1h_INtB1h_9CacheDataB1G_B2d_E5evict0E0ECsl4q486LaARA_9typst_svg.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !5508, !noalias !5509, !nonnull !10, !noundef !10
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.val2.i.i.i = load i64, ptr %i.o, align 8, !alias.scope !5512, !noalias !5513
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !5512, !noalias !5513, !nonnull !10
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.promoted27.i.i = load i64, ptr %i.q, align 8, !alias.scope !5512, !noalias !5513
  %.promoted.i.i = load i64, ptr %i.r, align 8, !alias.scope !5512, !noalias !5513
  %.promoted36.i.i = load i64, ptr %i.s, align 8, !alias.scope !5508, !noalias !5509
  %.promoted39.i.i = load i64, ptr %i.t, align 8, !alias.scope !5508, !noalias !5509
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit.i.i, %.lr.ph.i.i
  %i.w = phi i64 [ %.promoted39.i.i, %.lr.ph.i.i ], [ %i.ax, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit.i.i ] ; 3 uses
  %.sroa.02.02638.i.i = phi i64 [ %.promoted36.i.i, %.lr.ph.i.i ], [ %.sroa.02.02637.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit.i.i ] ; 3 uses
  %.promoted2535.i.i = phi i64 [ %.promoted.i.i, %.lr.ph.i.i ], [ %.promoted2534.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit.i.i ] ; 3 uses
  %.promoted31.i.i = phi i64 [ %.promoted27.i.i, %.lr.ph.i.i ], [ %.promoted30.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit.i.i ] ; 3 uses
  %.sroa.02.026.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.x, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit.i.i ] ; 7 uses
  %i.x = add nuw nsw i64 %.sroa.02.026.i.i, 1     ; 2 uses
  %i.y = getelementptr inbounds nuw [64 x i8], ptr %i.n, i64 %.sroa.02.026.i.i ; 8 uses
  %i.z = load i64, ptr %i.y, align 8, !range !1179, !noalias !5514, !noundef !10 ; 2 uses
  %.not.i.i = icmp eq i64 %i.z, 2
  br i1 %.not.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCsloFShupyl5J_6comemo4tree8LeafNodeINtNtBG_7memoize10CacheEntryINtNvNtBG_5inputs_1__9MultiCalluENtNtCsakL8LGkl72C_4ecow6string9EcoStringEEECsl4q486LaARA_9typst_svg.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !5515)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 56 ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !5518, !noalias !5514, !noundef !10
  %i.ac = add i64 %i.ab, 1                        ; 2 uses
  store i64 %i.ac, ptr %i.aa, align 8, !alias.scope !5518, !noalias !5514
  %.not17.i.i = icmp ugt i64 %i.ac, %1            ; 2 uses
  %i.ad = trunc nuw i64 %i.z to i1
  %or.cond.i.i.i = select i1 %.not17.i.i, i1 %i.ad, i1 false
  br i1 %or.cond.i.i.i, label %.lr.ph.i.i.i, label %_RNCINvMs0_NtCsloFShupyl5J_6comemo4treeINtB8_8CallTreeINtNvNtBa_5inputs_1__9MultiCalluEINtNtBa_7memoize10CacheEntryBP_NtNtCsakL8LGkl72C_4ecow6string9EcoStringEE6retainNCNvMs_B1p_INtB1p_9CacheDataBP_B1R_E5evict0E0Csl4q486LaARA_9typst_svg.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !5515, !noalias !5514
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs_1__9MultiCalluEEE6removeCsl4q486LaARA_9typst_svg.exit.i.i.i, %.lr.ph.i.i.i
  %.promoted2533.i.i = phi i64 [ %.promoted2535.i.i, %.lr.ph.i.i.i ], [ %i.ao, %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs_1__9MultiCalluEEE6removeCsl4q486LaARA_9typst_svg.exit.i.i.i ] ; 2 uses
  %.promoted29.i.i = phi i64 [ %.promoted31.i.i, %.lr.ph.i.i.i ], [ %.sroa.3.03.i.i.i, %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs_1__9MultiCalluEEE6removeCsl4q486LaARA_9typst_svg.exit.i.i.i ] ; 2 uses
  %.sroa.3.03.i.i.i = phi i64 [ %i.af, %.lr.ph.i.i.i ], [ %i.an, %_RNvMs3_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs_1__9MultiCalluEEE6removeCsl4q486LaARA_9typst_svg.exit.i.i.i ] ; 5 uses
  %i.ag = icmp ult i64 %.sroa.3.03.i.i.i, %.val2.i.i.i
  br i1 %i.ag, label %bb.h, label %bb.i, !prof !359

bb.h:                                             ; preds = %bb.g
  %i.ah = getelementptr inbounds nuw [24 x i8], ptr %.val.i.i.i, i64 %.sroa.3.03.i.i.i ; 5 uses
  %i.ai = load i64, ptr %i.ah, align 8, !range !1179, !noalias !5521, !noundef !10 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ai, 2
  br i1 %.not.i.i.i.i, label %bb.i, label %_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs_1__9MultiCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCsl4q486LaARA_9typst_svg.exit.i.i.i, !prof !11

bb.i:                                             ; preds = %bb.h, %bb.g
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @210, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @58) #33
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.i
  unreachable

_RNvXs5_CsaixNeEcpA3e_4slabINtB5_4SlabINtNtCsloFShupyl5J_6comemo4tree9InnerNodeINtNvNtBE_5inputs_1__9MultiCalluEEEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutjE9index_mutCsl4q486LaARA_9typst_svg.exit.i.i.i: ; preds = %bb.h
end_hunk_2
begin_hunk_3_@_RNvMs_Csl4q486LaARA_9typst_svgNtB4_11SVGRenderer12render_frame:bb.a
  store i64 %..i.i.i.i.i.i, ptr %i.cg, align 8, !alias.scope !7469, !noalias !7465
  %i.iu = icmp eq i64 %i.ia, %..i.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  %.sroa.05.0.copyload.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !7492, !noalias !7493 ; 3 uses
  %.sroa.5.0.copyload.i.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 1, !alias.scope !7492, !noalias !7493 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(7) %.sroa.46.0..sroa_idx.i.i.i.i, i64 7, i1 false), !noalias !7493
  call void @llvm.experimental.noalias.scope.decl(metadata !7494), !noalias !7350
  br i1 %i.iu, label %bb.ag, label %bb.al

bb.ag:                                            ; preds = %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsakL8LGkl72C_4ecow6string9EcoStringE15reserve_entriesCsl4q486LaARA_9typst_svg.exit.i.i.i.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtCsjFU9swAW47b_8indexmap6BucketoNtNtCsakL8LGkl72C_4ecow6string9EcoStringEE8grow_oneCsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.cg)
          to label %bb.al unwind label %bb.ah, !noalias !7497

bb.ah:                                            ; preds = %bb.ag
  %i.iv = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtCsjFU9swAW47b_8indexmap6BucketoNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECsl4q486LaARA_9typst_svg(ptr %.sroa.05.0.copyload.i.i.i.i, i8 %.sroa.5.0.copyload.i.i.i.i) #32
          to label %.body unwind label %bb.ai, !noalias !7499

bb.ai:                                            ; preds = %bb.ah
  %i.iw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !7499
  unreachable

bb.aj:                                            ; preds = %bb.ac
  %i.ix = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.d) #32
          to label %.body unwind label %bb.ak, !noalias !7500

bb.ak:                                            ; preds = %bb.aj
  %i.iy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !7482
  unreachable

.sink.split.i.i.i:                                ; preds = %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsakL8LGkl72C_4ecow6string9EcoStringE15reserve_entriesCsl4q486LaARA_9typst_svg.exit.i.thread.i.i.i, %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i.i)
  %.sroa.05.0.copyload12.i.i.i.i = load ptr, ptr %i.d, align 8, !alias.scope !7492, !noalias !7493
  %.sroa.5.0.copyload15.i.i.i.i = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 1, !alias.scope !7492, !noalias !7493
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.i.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(7) %.sroa.46.0..sroa_idx.i.i.i.i, i64 7, i1 false), !noalias !7493
  br label %bb.al

bb.al:                                            ; preds = %.sink.split.i.i.i, %bb.ag, %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsakL8LGkl72C_4ecow6string9EcoStringE15reserve_entriesCsl4q486LaARA_9typst_svg.exit.i.i.i.i
  %.sroa.5.0.copyload17.i.i.i.i = phi i8 [ %.sroa.5.0.copyload.i.i.i.i, %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsakL8LGkl72C_4ecow6string9EcoStringE15reserve_entriesCsl4q486LaARA_9typst_svg.exit.i.i.i.i ], [ %.sroa.5.0.copyload.i.i.i.i, %bb.ag ], [ %.sroa.5.0.copyload15.i.i.i.i, %.sink.split.i.i.i ]
  %.sroa.05.0.copyload16.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i.i.i, %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsakL8LGkl72C_4ecow6string9EcoStringE15reserve_entriesCsl4q486LaARA_9typst_svg.exit.i.i.i.i ], [ %.sroa.05.0.copyload.i.i.i.i, %bb.ag ], [ %.sroa.05.0.copyload12.i.i.i.i, %.sink.split.i.i.i ]
  %i.iz = load ptr, ptr %i.ch, align 8, !alias.scope !7501, !noalias !7497, !nonnull !10, !noundef !10
  %i.ja = getelementptr inbounds nuw [48 x i8], ptr %i.iz, i64 %i.ia ; 6 uses
  store i64 %i.ew, ptr %i.ja, align 16, !noalias !7502
  %.sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 8
  store i64 %i.ex, ptr %.sroa_idx5.i, align 8, !noalias !7502
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 16
  store ptr %.sroa.05.0.copyload16.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 16, !noalias !7502
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(7) %.sroa.6.i.i.i.i, i64 7, i1 false), !noalias !7502
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 31
  store i8 %.sroa.5.0.copyload17.i.i.i.i, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 1, !noalias !7502
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ja, i64 32
  store i64 %i.ff, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 16, !noalias !7502
  %i.jb = add nuw nsw i64 %i.ia, 1                ; 2 uses
  store i64 %i.jb, ptr %i.ci, align 8, !alias.scope !7501, !noalias !7497
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i.i)
  %.not.i.i.i = icmp ugt i64 %i.gi, %i.ia
  br i1 %.not.i.i.i, label %bb.am, label %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsakL8LGkl72C_4ecow6string9EcoStringE13insert_uniqueCsl4q486LaARA_9typst_svg.exit.i.i

bb.am:                                            ; preds = %bb.al
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.gi, i64 noundef %i.jb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @227) #36
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %bb.am
  unreachable

bb.an:                                            ; preds = %_RINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtNtCsjFU9swAW47b_8indexmap3map4core8get_hashoNtNtCsakL8LGkl72C_4ecow6string9EcoStringE0ECsl4q486LaARA_9typst_svg.exit.i.i.i.i
  %i.jc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECsl4q486LaARA_9typst_svg(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.d) #32
          to label %.body unwind label %bb.ao, !noalias !7503

bb.ao:                                            ; preds = %bb.an
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !7443
  unreachable

_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsakL8LGkl72C_4ecow6string9EcoStringE13insert_uniqueCsl4q486LaARA_9typst_svg.exit.i.i: ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !7434
  br label %.loopexit

bb.ap:                                            ; preds = %bb.ar, %bb.n
  %.sroa.20.3 = phi i8 [ %.sroa.20.2, %bb.n ], [ 1, %bb.ar ] ; 2 uses
  invoke fastcc void @_RNvMs_Csl4q486LaARA_9typst_svgNtB4_11SVGRenderer12render_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(480) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ap, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(160) %i.dc)
          to label %_RNvMs_Csl4q486LaARA_9typst_svgNtB4_11SVGRenderer12render_group.exit unwind label %.loopexit.split-lp.loopexit, !noalias !7350, !inline_history !7337

.loopexit:                                        ; preds = %_RNCINvMs6_NtCs2qDE43xvXom_9hashbrown3rawINtB8_8RawTablejE4findNCINvNtNtCsjFU9swAW47b_8indexmap3map4core10equivalentoNtNtCsakL8LGkl72C_4ecow6string9EcoStringoE0E0Csl4q486LaARA_9typst_svg.exit.i.i.i.i, %_RNvMs_NtNtCsjFU9swAW47b_8indexmap3map4coreINtB4_12IndexMapCoreoNtNtCsakL8LGkl72C_4ecow6string9EcoStringE13insert_uniqueCsl4q486LaARA_9typst_svg.exit.i.i
  %i.je = load i32, ptr %i.cp, align 8, !range !554, !alias.scope !7339, !noalias !7504, !noundef !10
  %i.jf = trunc nuw i8 %.sroa.20.2 to i1
  br i1 %i.jf, label %_RNvMs0_NtCsl4q486LaARA_9typst_svg5writeNtB5_11LazySvgElem4init.exit, label %bb.aq

bb.aq:                                            ; preds = %.loopexit
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter13start_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.cv, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef 1) #35
          to label %_RNvMs0_NtCsl4q486LaARA_9typst_svg5writeNtB5_11LazySvgElem4init.exit unwind label %.loopexit.split-lp.loopexit

_RNvMs0_NtCsl4q486LaARA_9typst_svg5writeNtB5_11LazySvgElem4init.exit: ; preds = %.loopexit, %bb.aq
  call void @llvm.experimental.noalias.scope.decl(metadata !7505)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store i128 %i.fb, ptr %i.r, align 16, !noalias !7508
  store i32 %i.je, ptr %i.cq, align 16, !noalias !7508
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrINtB19_6SvgUrlNtB1b_7DedupIdEE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.cw, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @223, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %i.r) #35
          to label %bb.ar unwind label %.loopexit.split-lp.loopexit

bb.ar:                                            ; preds = %_RNvMs0_NtCsl4q486LaARA_9typst_svg5writeNtB5_11LazySvgElem4init.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.ap

bb.as:                                            ; preds = %bb.f
  %i.jg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !7350, !inline_history !7337
  unreachable

common.resume:                                    ; preds = %.body.i, %bb.av, %bb.f, %.body
  %common.resume.op = phi { ptr, i32 } [ %lpad.phi93, %bb.av ], [ %eh.lpad-body, %bb.f ], [ %eh.lpad-body, %.body ], [ %.pn3.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op

_RNvMs_Csl4q486LaARA_9typst_svgNtB4_11SVGRenderer12render_group.exit: ; preds = %bb.ap
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !7323
  %i.jh = trunc nuw i8 %.sroa.20.3 to i1
  br i1 %i.jh, label %bb.at, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write11LazySvgElemEBF_.exit

bb.at:                                            ; preds = %_RNvMs_Csl4q486LaARA_9typst_svgNtB4_11SVGRenderer12render_group.exit
  call void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.cx) #35, !noalias !7510
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write11LazySvgElemEBF_.exit

bb.au:                                            ; preds = %bb.b
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.0142, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !7513)
  call void @llvm.experimental.noalias.scope.decl(metadata !7516)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !7518
  call void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter13start_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val43.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @135, i64 noundef range(i64 1, 15) 1) #35, !noalias !7518
  store ptr %.val43.i, ptr %i.aj, align 8, !noalias !7518
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !7518
  store double 1.000000e+00, ptr %i.ai, align 8, !noalias !7518
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cb, i8 0, i64 16, i1 false)
  store double -1.000000e+00, ptr %i.cc, align 8, !noalias !7518
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cd, i8 0, i64 16, i1 false)
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout9transformNtB2_9Transform10pre_concat(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(64) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.ai)
          to label %bb.aw unwind label %.loopexit.split-lp90

.loopexit89:                                      ; preds = %bb.ax
  %lpad.loopexit91 = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

.loopexit.split-lp90:                             ; preds = %bb.aw, %bb.au
  %lpad.loopexit.split-lp92 = landingpad { ptr, i32 }
          cleanup
  br label %bb.av

bb.av:                                            ; preds = %.loopexit.split-lp90, %.loopexit89
  %lpad.phi93 = phi { ptr, i32 } [ %lpad.loopexit91, %.loopexit89 ], [ %lpad.loopexit.split-lp92, %.loopexit.split-lp90 ]
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val43.i) #35
          to label %common.resume unwind label %bb.az

bb.aw:                                            ; preds = %bb.au
  store <2 x double> %i.be, ptr %i.ce, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !7518
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrNtB19_12SvgTransformE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val43.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ah) #35
          to label %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtB3_12SvgTransformEB5_.exit45 unwind label %.loopexit.split-lp90

_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtB3_12SvgTransformEB5_.exit45: ; preds = %bb.aw
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.0142, i64 32
  %i.jk = load ptr, ptr %i.jj, align 16, !alias.scope !7516, !noalias !7521, !nonnull !10, !noundef !10 ; 2 uses
  %i.jl = getelementptr inbounds nuw i8, ptr %.sroa.0.0142, i64 40
  %i.jm = load i64, ptr %i.jl, align 8, !alias.scope !7516, !noalias !7521, !noundef !10 ; 2 uses
  %.idx144 = mul nuw nsw i64 %i.jm, 56
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jk, i64 %.idx144
  %i.jo = icmp eq i64 %i.jm, 0
  br i1 %i.jo, label %_RNvMNtCsl4q486LaARA_9typst_svg4textNtB4_11SVGRenderer11render_text.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtB3_12SvgTransformEB5_.exit45
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.0.0142, i64 160 ; 2 uses
  %.pre = load double, ptr %i.jp, align 16, !alias.scope !7516, !noalias !7521
  br label %bb.ax

bb.ax:                                            ; preds = %.lr.ph, %bb.ay
  %i.jq = phi double [ %.pre, %.lr.ph ], [ %i.kn, %bb.ay ]
  %.sroa.0.0.i141 = phi ptr [ %i.jk, %.lr.ph ], [ %i.kk, %bb.ay ] ; 6 uses
  %i.jr = phi <2 x double> [ zeroinitializer, %.lr.ph ], [ %i.kz, %bb.ay ] ; 2 uses
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i141, i64 52
  %i.jt = load i16, ptr %i.js, align 4, !noalias !7522, !noundef !10
  %i.ju = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i141, i64 24
  %i.jv = load double, ptr %i.ju, align 8, !noalias !7522, !noundef !10
  %i.jw = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i141, i64 40
  %i.jx = load double, ptr %i.jw, align 8, !noalias !7522, !noundef !10
  %i.jy = insertelement <2 x double> poison, double %i.jq, i64 0
  %i.jz = shufflevector <2 x double> %i.jy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ka = insertelement <2 x double> poison, double %i.jx, i64 0
  %i.kb = insertelement <2 x double> %i.ka, double %i.jv, i64 1
  %i.kc = fmul <2 x double> %i.jz, %i.kb          ; 2 uses
  %4 = fcmp ord <2 x double> %i.kc, zeroinitializer
  %5 = select <2 x i1> %4, <2 x double> %i.kc, <2 x double> zeroinitializer ; 2 uses
  %i.kd = call <2 x double> @llvm.fabs.v2f64(<2 x double> %5)
  %6 = fcmp ueq <2 x double> %i.kd, splat (double +inf)
  %i.ke = select <2 x i1> %6, <2 x double> zeroinitializer, <2 x double> %5
  %i.kf = fadd <2 x double> %i.jr, %i.ke          ; 2 uses
  %i.kg = fcmp ord <2 x double> %i.kf, zeroinitializer
  %i.kh = select <2 x i1> %i.kg, <2 x double> %i.kf, <2 x double> zeroinitializer ; 2 uses
  %i.ki = extractelement <2 x double> %i.kh, i64 0
  %i.kj = extractelement <2 x double> %i.kh, i64 1
  invoke fastcc void @_RNvMNtCsl4q486LaARA_9typst_svg4textNtB4_11SVGRenderer12render_glyph(ptr noalias nofree noundef nonnull align 8 dereferenceable(480) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %i.aj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.ji, i16 noundef %i.jt, double noundef %i.kj, double noundef %i.ki)
          to label %bb.ay unwind label %.loopexit89, !inline_history !7523

bb.ay:                                            ; preds = %bb.ax
  %i.kk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i141, i64 56 ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i141, i64 16
  %i.km = load double, ptr %i.kl, align 8, !noalias !7522, !noundef !10
  %i.kn = load double, ptr %i.jp, align 16, !alias.scope !7516, !noalias !7521, !noundef !10 ; 2 uses
  %i.ko = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i141, i64 32
  %i.kp = load double, ptr %i.ko, align 8, !noalias !7522, !noundef !10
  %i.kq = insertelement <2 x double> poison, double %i.kp, i64 0
  %i.kr = insertelement <2 x double> %i.kq, double %i.km, i64 1
  %i.ks = insertelement <2 x double> poison, double %i.kn, i64 0
  %i.kt = shufflevector <2 x double> %i.ks, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ku = fmul <2 x double> %i.kr, %i.kt          ; 2 uses
  %7 = fcmp ord <2 x double> %i.ku, zeroinitializer
  %8 = select <2 x i1> %7, <2 x double> %i.ku, <2 x double> zeroinitializer ; 2 uses
  %i.kv = call <2 x double> @llvm.fabs.v2f64(<2 x double> %8)
  %9 = fcmp ueq <2 x double> %i.kv, splat (double +inf)
  %i.kw = select <2 x i1> %9, <2 x double> zeroinitializer, <2 x double> %8
  %i.kx = fadd <2 x double> %i.jr, %i.kw          ; 2 uses
  %i.ky = fcmp ord <2 x double> %i.kx, zeroinitializer
  %i.kz = select <2 x i1> %i.ky, <2 x double> %i.kx, <2 x double> zeroinitializer
  %i.la = icmp eq ptr %i.kk, %i.jn
  br i1 %i.la, label %_RNvMNtCsl4q486LaARA_9typst_svg4textNtB4_11SVGRenderer11render_text.exit, label %bb.ax

bb.az:                                            ; preds = %bb.av
  %i.lb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #37, !noalias !7522, !inline_history !7523
  unreachable

_RNvMNtCsl4q486LaARA_9typst_svg4textNtB4_11SVGRenderer11render_text.exit: ; preds = %bb.ay, %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtB3_12SvgTransformEB5_.exit45
  call void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val43.i) #35, !noalias !7524
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !7518
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write11LazySvgElemEBF_.exit

bb.ba:                                            ; preds = %bb.b
  %i.lc = getelementptr inbounds nuw i8, ptr %.sroa.0.0142, i64 32
  call fastcc void @_RNvMNtCsl4q486LaARA_9typst_svg5shapeNtB4_11SVGRenderer12render_shape(ptr noalias nofree noundef align 8 dereferenceable(480) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(136) %i.lc)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write11LazySvgElemEBF_.exit

bb.bb:                                            ; preds = %bb.b
  %i.ld = getelementptr inbounds nuw i8, ptr %.sroa.0.0142, i64 40
  %i.le = getelementptr inbounds nuw i8, ptr %.sroa.0.0142, i64 24
  %.val3 = load double, ptr %i.le, align 8
  %i.lf = getelementptr i8, ptr %.sroa.0.0142, i64 32
  %.val4 = load double, ptr %i.lf, align 16
  call fastcc void @_RNvMNtCsl4q486LaARA_9typst_svg5imageNtB4_11SVGRenderer12render_image(ptr %.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ar, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ld, double %.val3, double %.val4)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsl4q486LaARA_9typst_svg5write11LazySvgElemEBF_.exit

bb.bc:                                            ; preds = %bb.b
  %i.lg = getelementptr inbounds nuw i8, ptr %.sroa.0.0142, i64 48
  %i.lh = getelementptr inbounds nuw i8, ptr %.sroa.0.0142, i64 24
  %i.li = load double, ptr %i.lh, align 8, !noundef !10
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.0.0142, i64 32
  %i.lk = load double, ptr %i.lj, align 16, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !7527)
  call void @llvm.experimental.noalias.scope.decl(metadata !7530)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  call void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter13start_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @219, i64 noundef range(i64 1, 15) 1) #35, !noalias !7532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !7532
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ar, i64 48, i1 false), !noalias !7534
  %i.ll = invoke noundef zeroext i1 @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout9transformNtB2_9Transform11is_identity(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ad)
          to label %bb.bd unwind label %.loopexit94, !noalias !7532

.body.i:                                          ; preds = %.loopexit99, %.loopexit.split-lp100, %.loopexit94, %.loopexit.split-lp95, %bb.cn, %bb.cd, %bb.bw
  %.pn3.i = phi { ptr, i32 } [ %i.so, %bb.bw ], [ %i.td, %bb.cd ], [ %i.to, %bb.cn ], [ %lpad.loopexit.split-lp97, %.loopexit.split-lp95 ], [ %lpad.loopexit96, %.loopexit94 ], [ %lpad.loopexit101, %.loopexit99 ], [ %lpad.loopexit.split-lp102, %.loopexit.split-lp100 ]
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter11end_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val5) #35
          to label %common.resume unwind label %bb.cj, !noalias !7535

.loopexit94:                                      ; preds = %bb.bc, %bb.be, %bb.bf, %bb.bh, %bb.bi, %bb.bk, %bb.bv, %bb.ca, %bb.cr, %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i10.i
  %lpad.loopexit96 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp95:                             ; preds = %bb.cm
  %lpad.loopexit.split-lp97 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !7532
  br i1 %i.ll, label %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtB3_12SvgTransformEB5_.exit.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrNtB19_12SvgTransformE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @136, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ar) #35
          to label %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtB3_12SvgTransformEB5_.exit.i unwind label %.loopexit94, !noalias !7534

_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtB3_12SvgTransformEB5_.exit.i: ; preds = %bb.be, %bb.bd
  %i.lm = load i64, ptr %i.lg, align 16, !range !1179, !alias.scope !7530, !noalias !7535, !noundef !10
  switch i64 %i.lm, label %default.unreachable192 [
    i64 0, label %bb.bh
    i64 1, label %bb.bf
    i64 2, label %bb.bg
  ]

bb.bf:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsakL8LGkl72C_4ecow6string9EcoStringBX_EECsl4q486LaARA_9typst_svg.exit, %bb.ci, %_RNvMs1_NvNtNtCsdaEETE4DqmE_13typst_library5model4links1_1__NtB5_15___ComemoSurface7resolve.exit.i, %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrReEB5_.exit13.i, %bb.bg, %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtB3_12SvgTransformEB5_.exit.i
  invoke void @_RNvMs_CsllPlovBjVoa_9xmlwriterNtB4_9XmlWriter13start_element(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @220, i64 noundef range(i64 1, 15) 4) #35
          to label %_RNvMNtCsl4q486LaARA_9typst_svg5writeNtB2_7SvgElem4elem.exit.i unwind label %.loopexit94, !noalias !7535

bb.bg:                                            ; preds = %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtB3_12SvgTransformEB5_.exit.i
  %i.ln = load ptr, ptr %i.bg, align 8, !alias.scope !7527, !noalias !7536, !noundef !10 ; 3 uses
  %.not.i7 = icmp eq ptr %i.ln, null
  br i1 %.not.i7, label %bb.bf, label %bb.bj

bb.bh:                                            ; preds = %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrNtB3_12SvgTransformEB5_.exit.i
  %i.lo = getelementptr inbounds nuw i8, ptr %.sroa.0.0142, i64 56 ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %.sroa.0.0142, i64 71
  %i.lq = load i8, ptr %i.lp, align 1, !alias.scope !7537, !noalias !7535, !noundef !10 ; 2 uses
  %.not.i.i = icmp sgt i8 %i.lq, -1               ; 2 uses
  %i.lr = and i8 %i.lq, 127
  %i.ls = zext nneg i8 %i.lr to i64
  %i.lt = load ptr, ptr %i.lo, align 8, !alias.scope !7537, !noalias !7535, !nonnull !10
  %i.lu = getelementptr inbounds nuw i8, ptr %.sroa.0.0142, i64 64
  %i.lv = load i64, ptr %i.lu, align 16, !alias.scope !7537, !noalias !7535
  %.sroa.3.0.i.i = select i1 %.not.i.i, i64 %i.lv, i64 %i.ls ; 2 uses
  %.sroa.0.0.i.i = select i1 %.not.i.i, ptr %i.lt, ptr %i.lo ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !7532
  store ptr %.sroa.0.0.i.i, ptr %i.ac, align 8, !noalias !7540
  store i64 %.sroa.3.0.i.i, ptr %i.bx, align 8, !noalias !7540
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @187, i64 noundef 4, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ac) #35
          to label %bb.bi unwind label %.loopexit94, !noalias !7535

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !7532
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !7532
  store ptr %.sroa.0.0.i.i, ptr %i.ab, align 8, !noalias !7545
  store i64 %.sroa.3.0.i.i, ptr %i.by, align 8, !noalias !7545
  invoke void @_RINvMs_CsllPlovBjVoa_9xmlwriterNtB5_9XmlWriter19write_attribute_rawNCINvMNtCsl4q486LaARA_9typst_svg5writeNtB19_7SvgElem9attr_withNCINvB18_4attrReE0E0EB1b_(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %.val5, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @146, i64 noundef 10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ab) #35
          to label %_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrReEB5_.exit13.i unwind label %.loopexit94, !noalias !7535

_RINvMNtCsl4q486LaARA_9typst_svg5writeNtB3_7SvgElem4attrReEB5_.exit13.i: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !7532
  br label %bb.bf

bb.bj:                                            ; preds = %bb.bg
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i8, align 8, !alias.scope !7527, !noalias !7536 ; 2 uses
  %.sroa.6.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx.i9, align 8, !alias.scope !7527, !noalias !7536 ; 2 uses
  %i.lw = getelementptr inbounds nuw i8, ptr %.sroa.0.0142, i64 64
  %i.lx = load i128, ptr %i.lw, align 16, !alias.scope !7530, !noalias !7535, !noundef !10 ; 3 uses
  %.not.i14.i = icmp eq ptr %.sroa.5.0.copyload.i, null
  br i1 %.not.i14.i, label %bb.bv, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !7550
  invoke void @_RNvMsR_NtNtCsdaEETE4DqmE_13typst_library5model4linkNtB5_16LateLinkResolver7resolve(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ln, i128 noundef %i.lx)
          to label %.noexc.i unwind label %.loopexit94, !noalias !7532

.noexc.i:                                         ; preds = %bb.bk
  call void @llvm.experimental.noalias.scope.decl(metadata !7554)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !7557
  call void @llvm.experimental.noalias.scope.decl(metadata !7558)
  call void @llvm.experimental.noalias.scope.decl(metadata !7561)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i.i.i, i8 0, i64 40, i1 false), !noalias !7557
  %i.ly = load i64, ptr %i.aa, align 8, !range !1179, !alias.scope !7563, !noalias !7564, !noundef !10 ; 5 uses
  %i.lz = icmp ne i64 %i.ly, 2                    ; 2 uses
  %i.ma = zext i1 %i.lz to i64                    ; 2 uses
  store i64 8, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !alias.scope !7565, !noalias !7572
  %i.mb = xor i64 %i.ma, 110374107243891
  %i.mc = select i1 %i.lz, i64 -2243131504935184429, i64 -2243131504935184428 ; 2 uses
  %i.md = call noundef i64 @llvm.fshl.i64(i64 %i.mb, i64 8387220255154660722, i64 16)
  %i.me = xor i64 %i.md, %i.mc                    ; 2 uses
  %i.mf = add i64 %i.me, -2389206912058073146     ; 2 uses
  %i.mg = call noundef i64 @llvm.fshl.i64(i64 %i.me, i64 -8882027881020349520, i64 21)
  %i.mh = xor i64 %i.mg, %i.mf                    ; 2 uses
  store i64 %i.mh, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !7573, !noalias !7572
  %i.mi = add nsw i64 %i.mc, 4148644332920354933  ; 2 uses
  %i.mj = xor i64 %i.mi, -2011800273400728795     ; 3 uses
  store i64 %i.mj, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !7573, !noalias !7572
  %i.mk = call noundef i64 @llvm.fshl.i64(i64 %i.mi, i64 1905512827985170496, i64 32) ; 2 uses
  store i64 %i.mk, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !7573, !noalias !7572
  %i.ml = xor i64 %i.mf, %i.ma                    ; 2 uses
  store i64 %i.ml, ptr %i.z, align 8, !alias.scope !7565, !noalias !7572
  %.not.i.i.i.i = icmp eq i64 %i.ly, 2
  br i1 %.not.i.i.i.i, label %bb.bx, label %_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i

_RNvYNtNtCs83m0le5ggt2_9siphasher6sip12811SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher11write_isizeCsl4q486LaARA_9typst_svg.exit.i.i.i.i.i: ; preds = %.noexc.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7576)
  call void @llvm.experimental.noalias.scope.decl(metadata !7579)
  store i64 16, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !alias.scope !7581, !noalias !7588
  %i.mm = xor i64 %i.mh, %i.ly                    ; 3 uses
  %i.mn = add nsw i64 %i.ml, %i.mj                ; 3 uses
  %i.mo = call noundef i64 @llvm.fshl.i64(i64 %i.mj, i64 -115655853030513824, i64 13)
  %i.mp = xor i64 %i.mn, %i.mo                    ; 3 uses
  %i.mq = call noundef i64 @llvm.fshl.i64(i64 %i.mn, i64 %i.mn, i64 32)
  %i.mr = add i64 %i.mm, %i.mk                    ; 2 uses
  %i.ms = call noundef i64 @llvm.fshl.i64(i64 %i.mm, i64 %i.mm, i64 16)
  %i.mt = xor i64 %i.mr, %i.ms                    ; 3 uses
  %i.mu = add i64 %i.mt, %i.mq                    ; 2 uses
  %i.mv = call noundef i64 @llvm.fshl.i64(i64 %i.mt, i64 %i.mt, i64 21)
  %i.mw = xor i64 %i.mv, %i.mu
  store i64 %i.mw, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !alias.scope !7589, !noalias !7588
  %i.mx = add i64 %i.mr, %i.mp                    ; 3 uses
  %i.my = call noundef i64 @llvm.fshl.i64(i64 %i.mp, i64 %i.mp, i64 17)
  %i.mz = xor i64 %i.mx, %i.my
  store i64 %i.mz, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !alias.scope !7589, !noalias !7588
  %i.na = call noundef i64 @llvm.fshl.i64(i64 %i.mx, i64 %i.mx, i64 32)
  store i64 %i.na, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !7589, !noalias !7588
  %i.nb = xor i64 %i.mu, %i.ly
  store i64 %i.nb, ptr %i.z, align 8, !alias.scope !7581, !noalias !7588
  %i.nc = trunc nuw i64 %i.ly to i1
  %i.nd = load i8, ptr %i.bi, align 1, !alias.scope !7592, !noalias !7593, !noundef !10 ; 2 uses
  %.not.i.i.i.i.i.i = icmp sgt i8 %i.nd, -1       ; 2 uses
  %i.ne = and i8 %i.nd, 127
  %i.nf = zext nneg i8 %i.ne to i64
  %i.ng = load ptr, ptr %i.bh, align 8, !alias.scope !7592, !noalias !7593, !nonnull !10
  %i.nh = load i64, ptr %i.bj, align 8, !alias.scope !7592, !noalias !7593
  %.sroa.3.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 %i.nh, i64 %i.nf
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr %i.ng, ptr %i.bh
  call fastcc void @_RNvXs9_NtCs83m0le5ggt2_9siphasher6sip128NtB5_11SipHasher13NtNtCs3oUPovFnLWP_4core4hash6Hasher5write(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.z, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i.i.i.i.i, i64 noundef %.sroa.3.0.i.i.i.i.i.i) #34, !noalias !7550
  %i.ni = load i64, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !alias.scope !7594, !noalias !7588, !noundef !10
  %i.nj = add i64 %i.ni, 1
  store i64 %i.nj, ptr %.sroa.12.0..sroa_idx.i.i.i, align 8, !alias.scope !7594, !noalias !7588
  %i.nk = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !alias.scope !7594, !noalias !7588, !noundef !10 ; 6 uses
  %i.nl = sub i64 8, %i.nk                        ; 3 uses
  %i.nm = shl i64 %i.nk, 3
  %i.nn = and i64 %i.nm, 56
  %i.no = shl nuw i64 255, %i.nn
end_hunk_3
