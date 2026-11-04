Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/foundations-rs/original/foundations-0829c0e58918e871.foundations.822e5dc8be635b49-cgu.09?download=true
inline.NumInlined: 892
inline.NumDeleted: 394
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECsbaWXNhtWAp9_11foundations:bb.a
  %i.s = load ptr, ptr %1, align 8                ; 6 uses
  %i.t = icmp eq ptr %i.s, null                   ; 3 uses
  %i.u = load i8, ptr %i.q, align 8, !range !587
  %i.v = load i64, ptr %i.r, align 8              ; 3 uses
  %i.w = load ptr, ptr %i.q, align 8              ; 2 uses
  %.not = icmp eq i64 %i.k, 0
  br label %.outer, !dbg !3672

.outer:                                           ; preds = %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, %bb.b
  %.sroa.05.0.i.i.i.ph = phi i64 [ %i.aj, %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i.i ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0.0.i.i.i.ph = phi i64 [ %i.ak, %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i.i ], [ %i.i, %bb.b ] ; 2 uses
  %i.x = icmp ult i64 %.sroa.0.0.i.i.i.ph, %i.k, !dbg !3673 ; 2 uses
  %.not.not = xor i1 %.not, true, !dbg !3673
  %brmerge = or i1 %i.x, %.not.not, !dbg !3673
  %.sroa.0.0.i.i.i.ph.mux = select i1 %i.x, i64 %.sroa.0.0.i.i.i.ph, i64 0, !dbg !3673 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop, !dbg !3673

.loopexit:                                        ; preds = %.outer
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0.0.i.i.i.ph.mux, !dbg !3674 ; 2 uses
  %i.z = load i16, ptr %i.y, align 2, !dbg !3675, !noalias !3645, !noundef !396 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.z, -1, !dbg !3675
  br i1 %.not.i.i.i, label %_RINvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit, label %bb.c, !dbg !3676

bb.c:                                             ; preds = %.loopexit
  %i.aa = zext i16 %i.z to i64, !dbg !3677        ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 2, !dbg !3678
  %i.ac = load i16, ptr %i.ab, align 2, !dbg !3678, !noalias !3645, !noundef !396 ; 2 uses
  %i.ad = and i16 %i.ac, %i.g, !dbg !3679
  %i.ae = zext i16 %i.ad to i64, !dbg !3679
  %i.af = sub i64 %.sroa.0.0.i.i.i.ph.mux, %i.ae, !dbg !3680
  %i.ag = and i64 %i.af, %i.n, !dbg !3681
  %i.ah = icmp samesign ugt i64 %.sroa.05.0.i.i.i.ph, %i.ag, !dbg !3682
  br i1 %i.ah, label %_RINvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit, label %bb.d, !dbg !3682

bb.d:                                             ; preds = %bb.c
  %i.ai = icmp eq i16 %i.ac, %i.e, !dbg !3683
  br i1 %i.ai, label %bb.e, label %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, !dbg !3684

_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i.i: ; preds = %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i.i, %.split.i.i.i, %bb.h, %bb.f, %bb.d
  %i.aj = add nuw nsw i64 %.sroa.05.0.i.i.i.ph, 1, !dbg !3685
  %i.ak = add nuw i64 %.sroa.0.0.i.i.i.ph.mux, 1, !dbg !3686
  br label %.outer, !dbg !3687

bb.e:                                             ; preds = %bb.d
  %i.al = icmp samesign ugt i64 %i.b, %i.aa, !dbg !3688
  br i1 %i.al, label %bb.f, label %bb.i, !dbg !3688

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw [104 x i8], ptr %i.p, i64 %i.aa, !dbg !3689 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64, !dbg !3690
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !3691, !noalias !3645, !noundef !396
  %i.ap = icmp ne ptr %i.ao, null, !dbg !3691     ; 2 uses
  %i.aq = xor i1 %i.ap, %i.t, !dbg !3692
  br i1 %i.aq, label %bb.g, label %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, !dbg !3692

bb.g:                                             ; preds = %bb.f
  br i1 %i.ap, label %bb.h, label %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i.i, !dbg !3692

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ], !dbg !3692
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 80, !dbg !3693
  %i.as = load i64, ptr %i.ar, align 8, !dbg !3693, !noalias !3645, !noundef !396
  %i.at = icmp eq i64 %i.as, %i.v, !dbg !3694
  br i1 %i.at, label %.split.i.i.i, label %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, !dbg !3694

.split.i.i.i:                                     ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %i.am, i64 72, !dbg !3695
  %i.av = load ptr, ptr %i.au, align 8, !dbg !3695, !noalias !3645, !noundef !396
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.av, ptr %i.w, i64 %i.v), !dbg !3696, !noalias !3645
  %i.aw = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0, !dbg !3696
  br i1 %i.aw, label %_RINvXs0_NtNtNtCs74LoFwSioHw_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i, label %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, !dbg !3690

_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i.i: ; preds = %bb.g
  tail call void @llvm.assume(i1 %i.t), !dbg !3692
  %i.ax = getelementptr inbounds nuw i8, ptr %i.am, i64 72, !dbg !3697
  %i.ay = load i8, ptr %i.ax, align 8, !dbg !3697, !range !587, !noalias !3645, !noundef !396
  %i.az = icmp eq i8 %i.ay, %i.u, !dbg !3698
  br i1 %i.az, label %_RINvXs0_NtNtNtCs74LoFwSioHw_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i, label %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, !dbg !3690

bb.i:                                             ; preds = %bb.e
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.aa, i64 noundef %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #28
          to label %.noexc unwind label %bb.j, !dbg !3688

.noexc:                                           ; preds = %bb.i
  unreachable, !dbg !3688

_RINvXs0_NtNtNtCs74LoFwSioHw_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %_RNvXsy_NtNtCs74LoFwSioHw_4http6header4nameNtB5_10HeaderNameNtNtCs3oUPovFnLWP_4core3cmp9PartialEq2eq.exit.i.i.i, %.split.i.i.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.am, i64 24, !dbg !3699
  br label %_RINvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit, !dbg !3700

bb.j:                                             ; preds = %bb.i
  %i.bb = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3646), !dbg !3701
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3647), !dbg !3702
  br i1 %i.t, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit, label %bb.k, !dbg !3703

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3648), !dbg !3703
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3649), !dbg !3704
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3650), !dbg !3705
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3651), !dbg !3706
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !3707
  %i.bd = load ptr, ptr %i.bc, align 8, !dbg !3708, !alias.scope !3652, !noundef !396
  %i.be = getelementptr inbounds nuw i8, ptr %i.s, i64 32, !dbg !3709
  %i.bf = load ptr, ptr %i.be, align 8, !dbg !3709, !noalias !3652, !nonnull !396, !noundef !396
  invoke void %i.bf(ptr noundef %i.bd, ptr noundef %i.w, i64 noundef %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit unwind label %bb.m, !dbg !3709, !inline_history !58

_RINvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.c, %.loopexit, %._RINvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit_crit_edge, %_RINvXs0_NtNtNtCs74LoFwSioHw_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i
  %i.bg = phi ptr [ %i.s, %_RINvXs0_NtNtNtCs74LoFwSioHw_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i ], [ %.pre, %._RINvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit_crit_edge ], [ %i.s, %.loopexit ], [ %i.s, %bb.c ], !dbg !3668 ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.ba, %_RINvXs0_NtNtNtCs74LoFwSioHw_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit.i ], [ null, %._RINvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit_crit_edge ], [ null, %.loopexit ], [ null, %bb.c ], !dbg !3710
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3653), !dbg !3701
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3654), !dbg !3711
  %i.bh = icmp eq ptr %i.bg, null, !dbg !3668
  br i1 %i.bh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit2, label %bb.l, !dbg !3668

bb.l:                                             ; preds = %_RINvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3655), !dbg !3668
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3656), !dbg !3712
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3657), !dbg !3713
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3658), !dbg !3714
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !3715
  %i.bj = load ptr, ptr %i.bi, align 8, !dbg !3716, !alias.scope !3659, !noundef !396
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 32, !dbg !3717
  %i.bl = load ptr, ptr %i.bk, align 8, !dbg !3717, !noalias !3659, !nonnull !396, !noundef !396
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3718
  %i.bn = load ptr, ptr %i.bm, align 8, !dbg !3718, !alias.scope !3659, !noundef !396
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !3719
  %i.bp = load i64, ptr %i.bo, align 8, !dbg !3719, !alias.scope !3659, !noundef !396
  tail call void %i.bl(ptr noundef %i.bj, ptr noundef %i.bn, i64 noundef %i.bp), !dbg !3717, !noalias !3659, !inline_history !96
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit2, !dbg !3668

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit2: ; preds = %_RINvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit, %bb.l
  ret ptr %.sroa.0.0.i, !dbg !3720

bb.m:                                             ; preds = %bb.k
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !3721
  unreachable, !dbg !3721

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header4name10HeaderNameECsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.j, %bb.k
  resume { ptr, i32 } %i.bb, !dbg !3721

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtNtNtCsb6T6P0NKlCh_2h25proto7streams5storeINtB6_5QueueNtNtB8_6stream16NextSendCapacityE3popNtB6_5StoreECsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 4 captures(none) dereferenceable(20) %1, ptr noalias nofree noundef align 8 dereferenceable(112) %2) unnamed_addr #0 !dbg !3722 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = load i32, ptr %1, align 4, !dbg !3761, !range !440, !noundef !396
  %i.c = trunc nuw i32 %i.b to i1, !dbg !3762
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !3762

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !3763 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.d, align 4, !dbg !3763 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3763
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !dbg !3763 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12, !dbg !3763
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4, !dbg !3763
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !3763
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4, !dbg !3763
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3764
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3765
  store i32 %.sroa.0.0.copyload, ptr %i.e, align 8, !dbg !3765, !alias.scope !3750
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !3765
  store i32 %.sroa.5.0.copyload, ptr %i.f, align 4, !dbg !3765, !alias.scope !3750
  store ptr %2, ptr %i.a, align 8, !dbg !3765, !alias.scope !3750
  %i.g = icmp eq i32 %.sroa.0.0.copyload, %.sroa.8.0.copyload, !dbg !3766
  %i.h = icmp eq i32 %.sroa.5.0.copyload, %.sroa.9.0.copyload
  %or.cond = select i1 %i.g, i1 %i.h, i1 false, !dbg !3752
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !3752

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !dbg !3767
  br label %bb.k, !dbg !3768

bb.d:                                             ; preds = %bb.b
  %i.i = call noundef nonnull align 8 ptr @_RNvXs8_NtNtNtCsb6T6P0NKlCh_2h25proto7streams5storeNtB5_3PtrNtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !3769 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3753), !dbg !3770
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 220, !dbg !3771 ; 2 uses
  %.sroa.017.0.copyload = load i32, ptr %i.j, align 4, !dbg !3771, !alias.scope !3755
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 224, !dbg !3771
  %i.k = load <2 x i32>, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !3771, !alias.scope !3755
  store i32 0, ptr %i.j, align 4, !dbg !3772, !alias.scope !3756
  %i.l = trunc nuw i32 %.sroa.017.0.copyload to i1, !dbg !3773
  br i1 %i.l, label %bb.f, label %bb.g, !dbg !3773, !prof !422

bb.e:                                             ; preds = %bb.b
  %i.m = call noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCsb6T6P0NKlCh_2h25proto7streams5storeNtB5_3PtrNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !dbg !3774
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 220, !dbg !3775
  %.sroa.0.0.copyload14 = load i32, ptr %i.n, align 4, !dbg !3775
  %.not = icmp eq i32 %.sroa.0.0.copyload14, 0, !dbg !3776
  br i1 %.not, label %bb.j, label %bb.i, !dbg !3777, !prof !422

bb.f:                                             ; preds = %bb.d
  store i32 1, ptr %1, align 4, !dbg !3778
  store <2 x i32> %i.k, ptr %i.d, align 4, !dbg !3778
  br label %bb.h, !dbg !3779

bb.g:                                             ; preds = %bb.d
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28, !dbg !3780
  unreachable, !dbg !3780

bb.h:                                             ; preds = %bb.j, %bb.f
  %i.o = call noundef nonnull align 8 ptr @_RNvXs8_NtNtNtCsb6T6P0NKlCh_2h25proto7streams5storeNtB5_3PtrNtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !3781
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 314, !dbg !3782
  store i8 0, ptr %i.p, align 2, !dbg !3782, !alias.scope !3760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !3783
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3784
  br label %bb.k, !dbg !3768

bb.i:                                             ; preds = %bb.e
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #28, !dbg !3785
  unreachable, !dbg !3785

bb.j:                                             ; preds = %bb.e
  store i32 0, ptr %1, align 4, !dbg !3786
  br label %bb.h, !dbg !3779

bb.k:                                             ; preds = %bb.h, %bb.c
  ret void, !dbg !3768
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtNtNtCsb6T6P0NKlCh_2h25proto7streams5storeINtB6_5QueueNtNtB8_6stream16NextWindowUpdateE3popNtB6_5StoreECsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 4 captures(none) dereferenceable(20) %1, ptr noalias nofree noundef align 8 dereferenceable(112) %2) unnamed_addr #0 !dbg !3787 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = load i32, ptr %1, align 4, !dbg !3826, !range !440, !noundef !396
  %i.c = trunc nuw i32 %i.b to i1, !dbg !3827
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !3827

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !3828 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.d, align 4, !dbg !3828 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3828
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !dbg !3828 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12, !dbg !3828
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4, !dbg !3828
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !3828
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4, !dbg !3828
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3829
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3830
  store i32 %.sroa.0.0.copyload, ptr %i.e, align 8, !dbg !3830, !alias.scope !3815
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !3830
  store i32 %.sroa.5.0.copyload, ptr %i.f, align 4, !dbg !3830, !alias.scope !3815
  store ptr %2, ptr %i.a, align 8, !dbg !3830, !alias.scope !3815
  %i.g = icmp eq i32 %.sroa.0.0.copyload, %.sroa.8.0.copyload, !dbg !3831
  %i.h = icmp eq i32 %.sroa.5.0.copyload, %.sroa.9.0.copyload
  %or.cond = select i1 %i.g, i1 %i.h, i1 false, !dbg !3817
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !3817

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !dbg !3832
  br label %bb.k, !dbg !3833

bb.d:                                             ; preds = %bb.b
  %i.i = call noundef nonnull align 8 ptr @_RNvXs8_NtNtNtCsb6T6P0NKlCh_2h25proto7streams5storeNtB5_3PtrNtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !3834 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3818), !dbg !3835
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 256, !dbg !3836 ; 2 uses
  %.sroa.017.0.copyload = load i32, ptr %i.j, align 8, !dbg !3836, !alias.scope !3820
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 260, !dbg !3836
  %i.k = load <2 x i32>, ptr %.sroa.4.0..sroa_idx, align 4, !dbg !3836, !alias.scope !3820
  store i32 0, ptr %i.j, align 8, !dbg !3837, !alias.scope !3821
  %i.l = trunc nuw i32 %.sroa.017.0.copyload to i1, !dbg !3838
  br i1 %i.l, label %bb.f, label %bb.g, !dbg !3838, !prof !422

bb.e:                                             ; preds = %bb.b
  %i.m = call noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCsb6T6P0NKlCh_2h25proto7streams5storeNtB5_3PtrNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !dbg !3839
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 256, !dbg !3840
  %.sroa.0.0.copyload14 = load i32, ptr %i.n, align 8, !dbg !3840
  %.not = icmp eq i32 %.sroa.0.0.copyload14, 0, !dbg !3841
  br i1 %.not, label %bb.j, label %bb.i, !dbg !3842, !prof !422

bb.f:                                             ; preds = %bb.d
  store i32 1, ptr %1, align 4, !dbg !3843
  store <2 x i32> %i.k, ptr %i.d, align 4, !dbg !3843
  br label %bb.h, !dbg !3844

bb.g:                                             ; preds = %bb.d
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28, !dbg !3845
  unreachable, !dbg !3845

bb.h:                                             ; preds = %bb.j, %bb.f
  %i.o = call noundef nonnull align 8 ptr @_RNvXs8_NtNtNtCsb6T6P0NKlCh_2h25proto7streams5storeNtB5_3PtrNtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !3846
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 319, !dbg !3847
  store i8 0, ptr %i.p, align 1, !dbg !3847, !alias.scope !3825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !3848
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3849
  br label %bb.k, !dbg !3833

bb.i:                                             ; preds = %bb.e
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #28, !dbg !3850
  unreachable, !dbg !3850

bb.j:                                             ; preds = %bb.e
  store i32 0, ptr %1, align 4, !dbg !3851
  br label %bb.h, !dbg !3844

bb.k:                                             ; preds = %bb.h, %bb.c
  ret void, !dbg !3833
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtNtNtCsb6T6P0NKlCh_2h25proto7streams5storeINtB6_5QueueNtNtB8_6stream8NextSendE3popNtB6_5StoreECsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 4 captures(none) dereferenceable(20) %1, ptr noalias nofree noundef align 8 dereferenceable(112) %2) unnamed_addr #0 !dbg !3852 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 9 uses
  %i.b = load i32, ptr %1, align 4, !dbg !3889, !range !440, !noundef !396
  %i.c = trunc nuw i32 %i.b to i1, !dbg !3890
  br i1 %i.c, label %bb.b, label %bb.c, !dbg !3890

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4, !dbg !3891 ; 2 uses
  %.sroa.0.0.copyload = load i32, ptr %i.d, align 4, !dbg !3891 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !3891
  %.sroa.5.0.copyload = load i32, ptr %.sroa.5.0..sroa_idx, align 4, !dbg !3891 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 12, !dbg !3891
  %.sroa.8.0.copyload = load i32, ptr %.sroa.8.0..sroa_idx, align 4, !dbg !3891
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !3891
  %.sroa.9.0.copyload = load i32, ptr %.sroa.9.0..sroa_idx, align 4, !dbg !3891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !3892
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !3893
  store i32 %.sroa.0.0.copyload, ptr %i.e, align 8, !dbg !3893, !alias.scope !3879
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 12, !dbg !3893
  store i32 %.sroa.5.0.copyload, ptr %i.f, align 4, !dbg !3893, !alias.scope !3879
  store ptr %2, ptr %i.a, align 8, !dbg !3893, !alias.scope !3879
  %i.g = icmp eq i32 %.sroa.0.0.copyload, %.sroa.8.0.copyload, !dbg !3894
  %i.h = icmp eq i32 %.sroa.5.0.copyload, %.sroa.9.0.copyload
  %or.cond = select i1 %i.g, i1 %i.h, i1 false, !dbg !3881
  br i1 %or.cond, label %bb.e, label %bb.d, !dbg !3881

bb.c:                                             ; preds = %bb.a
  store ptr null, ptr %0, align 8, !dbg !3895
  br label %bb.k, !dbg !3896

bb.d:                                             ; preds = %bb.b
  %i.i = call noundef nonnull align 8 ptr @_RNvXs8_NtNtNtCsb6T6P0NKlCh_2h25proto7streams5storeNtB5_3PtrNtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !3897 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3882), !dbg !3898
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 208, !dbg !3899 ; 2 uses
  %.sroa.017.0.copyload = load i32, ptr %i.j, align 8, !dbg !3899, !alias.scope !3883
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 212, !dbg !3899
  %i.k = load <2 x i32>, ptr %.sroa.4.0..sroa_idx, align 4, !dbg !3899, !alias.scope !3883
  store i32 0, ptr %i.j, align 8, !dbg !3900, !alias.scope !3884
  %i.l = trunc nuw i32 %.sroa.017.0.copyload to i1, !dbg !3901
  br i1 %i.l, label %bb.f, label %bb.g, !dbg !3901, !prof !422

bb.e:                                             ; preds = %bb.b
  %i.m = call noundef nonnull align 8 ptr @_RNvXs7_NtNtNtCsb6T6P0NKlCh_2h25proto7streams5storeNtB5_3PtrNtNtNtCs3oUPovFnLWP_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a), !dbg !3902
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 208, !dbg !3903
  %.sroa.0.0.copyload14 = load i32, ptr %i.n, align 8, !dbg !3903
  %.not = icmp eq i32 %.sroa.0.0.copyload14, 0, !dbg !3904
  br i1 %.not, label %bb.j, label %bb.i, !dbg !3905, !prof !422

bb.f:                                             ; preds = %bb.d
  store i32 1, ptr %1, align 4, !dbg !3906
  store <2 x i32> %i.k, ptr %i.d, align 4, !dbg !3906
  br label %bb.h, !dbg !3907

bb.g:                                             ; preds = %bb.d
  call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @64) #28, !dbg !3908
  unreachable, !dbg !3908

bb.h:                                             ; preds = %bb.j, %bb.f
  %i.o = call noundef nonnull align 8 ptr @_RNvXs8_NtNtNtCsb6T6P0NKlCh_2h25proto7streams5storeNtB5_3PtrNtNtNtCs3oUPovFnLWP_4core3ops5deref8DerefMut9deref_mut(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a), !dbg !3909
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 313, !dbg !3910
  store i8 0, ptr %i.p, align 1, !dbg !3910, !alias.scope !3888
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false), !dbg !3911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !3912
  br label %bb.k, !dbg !3896

bb.i:                                             ; preds = %bb.e
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @65, i64 noundef 44, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #28, !dbg !3913
  unreachable, !dbg !3913

bb.j:                                             ; preds = %bb.e
  store i32 0, ptr %1, align 4, !dbg !3914
  br label %bb.h, !dbg !3907

bb.k:                                             ; preds = %bb.h, %bb.c
  ret void, !dbg !3896
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvMs_NtCs74LoFwSioHw_4http10extensionsNtB5_10Extensions6insertNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !3915 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4026), !dbg !4034
  %i.e = load ptr, ptr %0, align 8, !dbg !4035, !alias.scope !4026, !align !403, !noundef !396 ; 2 uses
  %.not.i = icmp eq ptr %i.e, null, !dbg !4035
  br i1 %.not.i, label %bb.b, label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtB5_3any6TypeIdIBJ_DNtNtCs74LoFwSioHw_4http10extensions8AnyCloneNtNtB5_6marker4SendNtB3j_4SyncEL_EINtNtB5_4hash18BuildHasherDefaultNtB2B_8IdHasherEEEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsbaWXNhtWAp9_11foundations.exit, !dbg !4036

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !dbg !4037, !noalias !4026
  %i.f = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 97) 32, i64 noundef range(i64 2, 9) 8) #32, !dbg !4038, !noalias !4026 ; 4 uses
  %i.g = icmp eq ptr %i.f, null, !dbg !4039
  br i1 %i.g, label %bb.c, label %_RNvYNvYINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCs3oUPovFnLWP_4core3any6TypeIdIB6_DNtNtCs74LoFwSioHw_4http10extensions8AnyCloneNtNtB1D_6marker4SendNtB2W_4SyncEL_EINtNtB1D_4hash18BuildHasherDefaultNtB2e_8IdHasherEEENtNtB1D_7default7Default7defaultINtNtNtB1D_3ops8function6FnOnceuE9call_onceCsbaWXNhtWAp9_11foundations.exit.i, !dbg !4040, !prof !639

bb.c:                                             ; preds = %bb.b
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #30
          to label %.noexc unwind label %bb.t, !dbg !4041

.noexc:                                           ; preds = %bb.c
  unreachable, !dbg !4041

_RNvYNvYINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCs3oUPovFnLWP_4core3any6TypeIdIB6_DNtNtCs74LoFwSioHw_4http10extensions8AnyCloneNtNtB1D_6marker4SendNtB2W_4SyncEL_EINtNtB1D_4hash18BuildHasherDefaultNtB2e_8IdHasherEEENtNtB1D_7default7Default7defaultINtNtNtB1D_3ops8function6FnOnceuE9call_onceCsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.f, ptr noundef nonnull align 8 dereferenceable(32) @203, i64 32, i1 false), !dbg !4042, !noalias !4026
  store ptr %i.f, ptr %0, align 8, !dbg !4043, !alias.scope !4026
  br label %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtB5_3any6TypeIdIBJ_DNtNtCs74LoFwSioHw_4http10extensions8AnyCloneNtNtB5_6marker4SendNtB3j_4SyncEL_EINtNtB5_4hash18BuildHasherDefaultNtB2B_8IdHasherEEEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsbaWXNhtWAp9_11foundations.exit, !dbg !4044

_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtB5_3any6TypeIdIBJ_DNtNtCs74LoFwSioHw_4http10extensions8AnyCloneNtNtB5_6marker4SendNtB3j_4SyncEL_EINtNtB5_4hash18BuildHasherDefaultNtB2B_8IdHasherEEEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsbaWXNhtWAp9_11foundations.exit: ; preds = %_RNvYNvYINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCs3oUPovFnLWP_4core3any6TypeIdIB6_DNtNtCs74LoFwSioHw_4http10extensions8AnyCloneNtNtB1D_6marker4SendNtB2W_4SyncEL_EINtNtB1D_4hash18BuildHasherDefaultNtB2e_8IdHasherEEENtNtB1D_7default7Default7defaultINtNtNtB1D_3ops8function6FnOnceuE9call_onceCsbaWXNhtWAp9_11foundations.exit.i, %bb.a
  %i.h = phi ptr [ %i.f, %_RNvYNvYINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtCs3oUPovFnLWP_4core3any6TypeIdIB6_DNtNtCs74LoFwSioHw_4http10extensions8AnyCloneNtNtB1D_6marker4SendNtB2W_4SyncEL_EINtNtB1D_4hash18BuildHasherDefaultNtB2e_8IdHasherEEENtNtB1D_7default7Default7defaultINtNtNtB1D_3ops8function6FnOnceuE9call_onceCsbaWXNhtWAp9_11foundations.exit.i ], [ %i.e, %bb.a ], !dbg !4045
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #32, !dbg !4046
  %i.i = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 0, 97) 8, i64 noundef range(i64 2, 9) 8) #32, !dbg !4047 ; 3 uses
  %i.j = icmp eq ptr %i.i, null, !dbg !4048
  br i1 %i.j, label %bb.d, label %bb.i, !dbg !4049, !prof !639

bb.d:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtB5_3any6TypeIdIBJ_DNtNtCs74LoFwSioHw_4http10extensions8AnyCloneNtNtB5_6marker4SendNtB3j_4SyncEL_EINtNtB5_4hash18BuildHasherDefaultNtB2B_8IdHasherEEEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsbaWXNhtWAp9_11foundations.exit
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #30
          to label %.noexc6 unwind label %bb.e, !dbg !4050

.noexc6:                                          ; preds = %bb.d
  unreachable, !dbg !4050

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %i.l = icmp eq ptr %1, null, !dbg !4051
  br i1 %i.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeECsbaWXNhtWAp9_11foundations.exit13, label %bb.f, !dbg !4051

bb.f:                                             ; preds = %bb.e
  %i.m = atomicrmw add ptr %1, i64 -1 release, align 8, !dbg !4052, !noalias !4027
  %i.n = icmp eq i64 %i.m, 1, !dbg !4053
  br i1 %i.n, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeECsbaWXNhtWAp9_11foundations.exit13, !dbg !4053

bb.g:                                             ; preds = %bb.f
  fence acquire, !dbg !4054
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex5MutexINtNtNtCs3zuhHmEJ01l_5tokio4sync7oneshot8ReceiverINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCsaCYLheajBls_5hyper7upgrade8UpgradedNtNtB2Y_5error5ErrorEEEE9drop_slowB2Y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #29
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeECsbaWXNhtWAp9_11foundations.exit13 unwind label %bb.h, !dbg !4055

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !4056
  unreachable, !dbg !4056

bb.i:                                             ; preds = %_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionINtNtCs1xwejQucwHj_5alloc5boxed3BoxINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3map7HashMapNtNtB5_3any6TypeIdIBJ_DNtNtCs74LoFwSioHw_4http10extensions8AnyCloneNtNtB5_6marker4SendNtB3j_4SyncEL_EINtNtB5_4hash18BuildHasherDefaultNtB2B_8IdHasherEEEE18get_or_insert_withNvYBI_NtNtB5_7default7Default7defaultECsbaWXNhtWAp9_11foundations.exit
  store ptr %1, ptr %i.i, align 8, !dbg !4057
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !4058
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !4059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) @68, i64 16, i1 false), !dbg !4059
  %i.p = call { ptr, ptr } @_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB5_7HashMapNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtCs74LoFwSioHw_4http10extensions8AnyCloneNtNtBR_6marker4SendNtB2F_4SyncEL_EINtNtBR_4hash18BuildHasherDefaultNtB1X_8IdHasherEE6insertCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.c, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) @67), !dbg !4060 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !4059
  %i.q = extractvalue { ptr, ptr } %i.p, 0, !dbg !4059 ; 2 uses
  %.not = icmp eq ptr %i.q, null, !dbg !4061
  br i1 %.not, label %bb.s, label %.noexc8, !dbg !4062

.noexc8:                                          ; preds = %bb.i
  %i.r = extractvalue { ptr, ptr } %i.p, 1, !dbg !4059 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %i.s = getelementptr i8, ptr %i.r, i64 56, !dbg !4063
  %.val = load ptr, ptr %i.s, align 8, !dbg !4063
  %i.t = call { ptr, ptr } %.val(ptr noundef nonnull %i.q) #31, !dbg !4064, !inline_history !3955 ; 2 uses
  %i.u = extractvalue { ptr, ptr } %i.t, 0, !dbg !4064 ; 7 uses
  %i.v = extractvalue { ptr, ptr } %i.t, 1, !dbg !4064 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !4030), !dbg !4065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !4066, !noalias !4031
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24, !dbg !4067
  %i.x = load ptr, ptr %i.w, align 8, !dbg !4067, !invariant.load !396, !alias.scope !4030, !nonnull !396
  invoke void %i.x(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.u)
          to label %_RINvMsa_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB8_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyEL_E8downcastNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeECsbaWXNhtWAp9_11foundations.exit.i unwind label %bb.j, !dbg !4068, !noalias !4031

bb.j:                                             ; preds = %.noexc8
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyEL_EECsbaWXNhtWAp9_11foundations(ptr nonnull %i.u, ptr nonnull readonly align 8 dereferenceable(32) %i.v) #27
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeECsbaWXNhtWAp9_11foundations.exit13 unwind label %bb.k, !dbg !4069, !noalias !4032

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !4070, !noalias !4031
  unreachable, !dbg !4070

_RINvMsa_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB8_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyEL_E8downcastNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %.noexc8
  %i.aa = load i128, ptr %i.a, align 16, !dbg !4071, !noalias !4031, !noundef !396
  %i.ab = icmp eq i128 %i.aa, 166086610763620986585138096432315067946, !dbg !4072 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !4073, !noalias !4031
  %.sroa.01.0.i = select i1 %i.ab, ptr %i.u, ptr null, !dbg !4074 ; 2 uses
  br i1 %i.ab, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeEIBY_DNtNtB4_3any3AnyEL_EEECsbaWXNhtWAp9_11foundations.exit.i, label %bb.l, !dbg !4075

bb.l:                                             ; preds = %_RINvMsa_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB8_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyEL_E8downcastNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeECsbaWXNhtWAp9_11foundations.exit.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.ac = load ptr, ptr %i.v, align 8, !dbg !4076, !invariant.load !396 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ac, null, !dbg !4076
  br i1 %.not.i.i.i, label %bb.n, label %bb.m, !dbg !4076

bb.m:                                             ; preds = %bb.l
  invoke void %i.ac(ptr noundef nonnull %i.u)
          to label %bb.n unwind label %bb.p, !dbg !4076

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !4077
  %i.ae = load i64, ptr %i.ad, align 8, !dbg !4077, !range !592, !invariant.load !396 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0, !dbg !4078
  br i1 %i.af, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeEIBY_DNtNtB4_3any3AnyEL_EEECsbaWXNhtWAp9_11foundations.exit.i, label %bb.o, !dbg !4078

bb.o:                                             ; preds = %bb.n
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !4077
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !4079, !range !662, !invariant.load !396
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #32, !dbg !4080
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeEIBY_DNtNtB4_3any3AnyEL_EEECsbaWXNhtWAp9_11foundations.exit.i, !dbg !4081

bb.p:                                             ; preds = %bb.m
  %i.ai = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 8, !dbg !4082
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !4082, !range !592, !invariant.load !396 ; 2 uses
  %i.al = icmp eq i64 %i.ak, 0, !dbg !4083
  br i1 %i.al, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeECsbaWXNhtWAp9_11foundations.exit13, label %bb.q, !dbg !4083

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !4082
  %i.an = load i64, ptr %i.am, align 8, !dbg !4084, !range !662, !invariant.load !396
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.u, i64 noundef range(i64 1, 0) %i.ak, i64 noundef range(i64 1, 536870913) %i.an) #32, !dbg !4085
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeECsbaWXNhtWAp9_11foundations.exit13, !dbg !4086

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeEIBY_DNtNtB4_3any3AnyEL_EEECsbaWXNhtWAp9_11foundations.exit.i: ; preds = %bb.o, %bb.n, %_RINvMsa_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB8_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyEL_E8downcastNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeECsbaWXNhtWAp9_11foundations.exit.i
  %.not4.i = icmp eq ptr %.sroa.01.0.i, null, !dbg !4087
  br i1 %.not4.i, label %bb.s, label %bb.r, !dbg !4088

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeEIBY_DNtNtB4_3any3AnyEL_EEECsbaWXNhtWAp9_11foundations.exit.i
  %i.ao = load ptr, ptr %i.u, align 8, !dbg !4089, !noundef !396
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.01.0.i, i64 noundef 8, i64 noundef 8) #32, !dbg !4090
  br label %bb.s, !dbg !4091

bb.s:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeEIBY_DNtNtB4_3any3AnyEL_EEECsbaWXNhtWAp9_11foundations.exit.i, %bb.r, %bb.i
  %.sroa.3.0 = phi ptr [ undef, %bb.i ], [ %i.ao, %bb.r ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeEIBY_DNtNtB4_3any3AnyEL_EEECsbaWXNhtWAp9_11foundations.exit.i ]
  %.sroa.0.0 = phi i64 [ 0, %bb.i ], [ 1, %bb.r ], [ 0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeEIBY_DNtNtB4_3any3AnyEL_EEECsbaWXNhtWAp9_11foundations.exit.i ], !dbg !4092
  %i.ap = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0, !dbg !4093
  %i.aq = insertvalue { i64, ptr } %i.ap, ptr %.sroa.3.0, 1, !dbg !4093
  ret { i64, ptr } %i.aq, !dbg !4093

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsaCYLheajBls_5hyper7upgrade9OnUpgradeECsbaWXNhtWAp9_11foundations.exit13: ; preds = %bb.j, %bb.p, %bb.q, %bb.g, %bb.e, %bb.f, %bb.u, %bb.t, %bb.v
  %eh.lpad-body16 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.u ], [ %i.ai, %bb.p ], [ %lpad.thr_comm.split-lp, %bb.v ], [ %lpad.thr_comm.split-lp, %bb.t ], [ %i.k, %bb.g ], [ %i.k, %bb.f ], [ %i.k, %bb.e ], [ %i.y, %bb.j ], [ %i.ai, %bb.q ]
  resume { ptr, i32 } %eh.lpad-body16, !dbg !4094

bb.t:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
end_hunk_0
begin_hunk_1_@_RINvXs6_NtNtCs74LoFwSioHw_4http6header3mapNtB6_9HeaderMapINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect6ExtendTINtNtB12_6option6OptionNtNtB8_4name10HeaderNameENtNtB8_5value11HeaderValueEE6extendBE_ECsbaWXNhtWAp9_11foundations:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.gq, ptr noundef nonnull readonly align 8 dereferenceable(104) %i.b, i64 104, i1 false), !dbg !9034, !noalias !8808
  %i.gr = add nuw nsw i64 %i.eb, 1, !dbg !9035
  store i64 %i.gr, ptr %i.s, align 8, !dbg !9035, !alias.scope !8805, !noalias !8806
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9036, !noalias !8802
  %i.gs = load ptr, ptr %i.ad, align 8, !dbg !9037, !alias.scope !8812, !noalias !8806, !nonnull !396, !noundef !396
  %i.gt = load i64, ptr %i.ae, align 8, !dbg !9037, !alias.scope !8812, !noalias !8806, !noundef !396 ; 2 uses
  %i.gu = trunc nuw nsw i64 %i.eb to i16, !dbg !9038
  %.not1279 = icmp eq i64 %i.gt, 0
  br label %.outer, !dbg !9039

.outer:                                           ; preds = %bb.bc, %bb.bb
  %.sroa.6.0.i.i.ph = phi i16 [ %i.hb, %bb.bc ], [ %i.du, %bb.bb ] ; 2 uses
  %.sroa.09.0.i.i.ph = phi i16 [ %i.gx, %bb.bc ], [ %i.gu, %bb.bb ] ; 2 uses
  %.sroa.07.0.i.i.ph = phi i64 [ %i.ha, %bb.bc ], [ 0, %bb.bb ] ; 2 uses
  %.sroa.0.0.i.i.ph = phi i64 [ %i.hc, %bb.bc ], [ %.sroa.0.0.i30.ph.mux, %bb.bb ] ; 2 uses
  %i.gv = icmp ult i64 %.sroa.0.0.i.i.ph, %i.gt, !dbg !9040 ; 2 uses
  %.not1279.not = xor i1 %.not1279, true, !dbg !9040
  %brmerge1473 = or i1 %i.gv, %.not1279.not, !dbg !9040
  %.sroa.0.0.i.i.ph.mux = select i1 %i.gv, i64 %.sroa.0.0.i.i.ph, i64 0, !dbg !9040 ; 2 uses
  br i1 %brmerge1473, label %.loopexit1278, label %infloop1472, !dbg !9040

.loopexit1278:                                    ; preds = %.outer
  %i.gw = getelementptr inbounds nuw [4 x i8], ptr %i.gs, i64 %.sroa.0.0.i.i.ph.mux, !dbg !9041 ; 4 uses
  %i.gx = load i16, ptr %i.gw, align 2, !dbg !9042, !noalias !8813, !noundef !396 ; 2 uses
  %i.gy = icmp eq i16 %i.gx, -1, !dbg !9042
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gw, i64 2, !dbg !9043 ; 3 uses
  br i1 %i.gy, label %bb.bd, label %bb.bc, !dbg !9044

bb.bc:                                            ; preds = %.loopexit1278
  %i.ha = add i64 %.sroa.07.0.i.i.ph, 1, !dbg !9045
  %i.hb = load i16, ptr %i.gz, align 2, !dbg !9046, !noalias !8813, !noundef !396
  store i16 %.sroa.09.0.i.i.ph, ptr %i.gw, align 2, !dbg !9047, !noalias !8813
  store i16 %.sroa.6.0.i.i.ph, ptr %i.gz, align 2, !dbg !9047, !noalias !8813
  %i.hc = add nuw i64 %.sroa.0.0.i.i.ph.mux, 1, !dbg !9048
  br label %.outer, !dbg !9049

bb.bd:                                            ; preds = %.loopexit1278
  store i16 %.sroa.09.0.i.i.ph, ptr %i.gw, align 2, !dbg !9050, !noalias !8813
  store i16 %.sroa.6.0.i.i.ph, ptr %i.gz, align 2, !dbg !9050, !noalias !8813
  %i.hd = icmp ugt i64 %.sroa.07.0.i.i.ph, 127
  %or.cond.i.i = select i1 %narrow81.i, i1 true, i1 %i.hd, !dbg !9051
  %i.he = load i64, ptr %0, align 8, !range !619, !alias.scope !8812, !noalias !8806
  %i.hf = icmp eq i64 %i.he, 0
  %or.cond3.i.i = select i1 %or.cond.i.i, i1 %i.hf, i1 false, !dbg !9051
  br i1 %or.cond3.i.i, label %bb.be, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit47, !dbg !9051

bb.be:                                            ; preds = %bb.bd
  store i64 1, ptr %0, align 8, !dbg !9052, !alias.scope !8812, !noalias !8806
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit47, !dbg !9053

bb.bf:                                            ; preds = %.thread
  %i.hg = load ptr, ptr %i.cv, align 8, !dbg !9054, !alias.scope !8786, !nonnull !396, !noundef !396
  %i.hh = getelementptr inbounds nuw [104 x i8], ptr %i.hg, i64 %i.el, !dbg !9055 ; 2 uses
  %i.hi = load i64, ptr %i.hh, align 8, !dbg !9056, !range !399, !noalias !8814, !noundef !396
  %i.hj = trunc nuw i64 %i.hi to i1, !dbg !9057
  br i1 %i.hj, label %bb.bg, label %bb.bh, !dbg !9057

.loopexit.split-lp298.loopexit.split-lp:          ; preds = %bb.bg, %.invoke.i
  %lpad.loopexit.split-lp1075 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.081.0) ]
  %i.hk = getelementptr inbounds nuw i8, ptr %.sroa.081.0, i64 32, !dbg !9058
  %i.hl = load ptr, ptr %i.hk, align 8, !dbg !9058, !noalias !8815, !nonnull !396, !noundef !396
  invoke void %i.hl(ptr noundef %.sroa.9.0, ptr noundef %.sroa.7.0, i64 noundef %.sroa.8.0)
          to label %.body unwind label %bb.bi, !dbg !9058, !noalias !8814, !inline_history !43

bb.bg:                                            ; preds = %bb.bf
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 8, !dbg !9059
  %i.hn = load i64, ptr %i.hm, align 8, !dbg !9059, !noalias !8814, !noundef !396
  invoke void @_RNvMs0_NtNtCs74LoFwSioHw_4http6header3mapNtB5_9HeaderMap23remove_all_extra_valuesCsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0, i64 noundef %i.hn)
          to label %._crit_edge.i unwind label %.loopexit.split-lp298.loopexit.split-lp, !dbg !9060, !noalias !8816

._crit_edge.i:                                    ; preds = %bb.bg
  %.pre.i = load i64, ptr %i.s, align 8, !dbg !9061, !alias.scope !8786
  br label %bb.bh, !dbg !9060

bb.bh:                                            ; preds = %._crit_edge.i, %bb.bf
  %i.ho = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.fw, %bb.bf ], !dbg !9061 ; 2 uses
  %i.hp = icmp ugt i64 %i.ho, %i.el, !dbg !9062
  br i1 %i.hp, label %bb.bj, label %.invoke.i, !dbg !9062

.invoke.i:                                        ; preds = %bb.bh, %.thread
  %i.hq = phi i64 [ %i.ho, %bb.bh ], [ %i.fw, %.thread ]
  %i.hr = phi ptr [ @143, %bb.bh ], [ @142, %.thread ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.el, i64 noundef %i.hq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.hr) #30
          to label %.cont.i unwind label %.loopexit.split-lp298.loopexit.split-lp, !dbg !9063, !noalias !8814

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.bi:                                            ; preds = %.loopexit.split-lp298.loopexit.split-lp
  %i.hs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !9064, !noalias !8814
  unreachable, !dbg !9064

bb.bj:                                            ; preds = %bb.bh
  %i.ht = load ptr, ptr %i.cv, align 8, !dbg !9065, !alias.scope !8786, !nonnull !396, !noundef !396
  %i.hu = getelementptr inbounds nuw [104 x i8], ptr %i.ht, i64 %i.el, !dbg !9066 ; 5 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 24, !dbg !9067 ; 2 uses
  %.sroa.0159.0.copyload = load ptr, ptr %i.hv, align 8, !dbg !9067, !noalias !8817, !nonnull !396, !noundef !396
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hu, i64 32, !dbg !9067 ; 2 uses
  %.sroa.4160.0.copyload = load ptr, ptr %.sroa.4160.0..sroa_idx, align 8, !dbg !9067, !noalias !8817
  %.sroa.5161.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hu, i64 40, !dbg !9067 ; 2 uses
  %.sroa.5161.0.copyload = load i64, ptr %.sroa.5161.0..sroa_idx, align 8, !dbg !9067, !noalias !8817
  %.sroa.6162.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hu, i64 48, !dbg !9067 ; 2 uses
  %.sroa.6162.0.copyload = load ptr, ptr %.sroa.6162.0..sroa_idx, align 8, !dbg !9067, !noalias !8817
  %.sroa.7163.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hu, i64 56, !dbg !9067
  store ptr %.sroa.081.0, ptr %i.hv, align 8, !dbg !9068, !noalias !8818
  store ptr %.sroa.7.0, ptr %.sroa.4160.0..sroa_idx, align 8, !dbg !9068, !noalias !8818
  store i64 %.sroa.8.0, ptr %.sroa.5161.0..sroa_idx, align 8, !dbg !9068, !noalias !8818
  store ptr %.sroa.9.0, ptr %.sroa.6162.0..sroa_idx, align 8, !dbg !9068, !noalias !8818
  store i64 %.sroa.10.0, ptr %.sroa.7163.0..sroa_idx, align 8, !dbg !9068, !noalias !8818
  %i.hw = getelementptr inbounds nuw i8, ptr %.sroa.0159.0.copyload, i64 32, !dbg !9069
  %i.hx = load ptr, ptr %i.hw, align 8, !dbg !9069, !noalias !8819, !nonnull !396, !noundef !396
  invoke void %i.hx(ptr noundef %.sroa.6162.0.copyload, ptr noundef %.sroa.4160.0.copyload, i64 noundef %.sroa.5161.0.copyload)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit47 unwind label %.body34.thread249.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !9069, !inline_history !43

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit47: ; preds = %bb.bd, %bb.be, %bb.bj
  %.sroa.7136.0 = phi i64 [ %i.el, %bb.bj ], [ %i.eb, %bb.be ], [ %i.eb, %bb.bd ], !dbg !9070 ; 6 uses
  %i.hy = load i64, ptr %i.h, align 8, !dbg !9071, !range !399, !alias.scope !8820, !noundef !396
  %i.hz = trunc nuw i64 %i.hy to i1, !dbg !9072
  br i1 %i.hz, label %.lr.ph, label %._crit_edge, !dbg !9072

.lr.ph:                                           ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit47, %_RNvMsO_NtNtCs74LoFwSioHw_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsbaWXNhtWAp9_11foundations.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !8821), !dbg !9073
  %i.ia = load i64, ptr %i.by, align 8, !dbg !9074, !alias.scope !8821, !noundef !396 ; 3 uses
  %i.ib = load i64, ptr %i.dc, align 8, !dbg !9075, !alias.scope !8821, !noundef !396 ; 2 uses
  %i.ic = icmp ult i64 %i.ia, %i.ib, !dbg !9076
  br i1 %i.ic, label %bb.bk, label %.invoke876, !dbg !9076

._crit_edge:                                      ; preds = %_RNvMsO_NtNtCs74LoFwSioHw_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsbaWXNhtWAp9_11foundations.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs74LoFwSioHw_4http6header5value11HeaderValueECsbaWXNhtWAp9_11foundations.exit47
  call void @llvm.experimental.noalias.scope.decl(metadata !8822), !dbg !9077
  %i.id = load ptr, ptr %.sroa.6.0..sroa_idx.i, align 8, !dbg !9078, !alias.scope !8823, !nonnull !396, !noundef !396
  %i.ie = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !9079, !alias.scope !8823, !nonnull !396, !noundef !396 ; 10 uses
  %i.if = icmp eq ptr %i.ie, %i.id, !dbg !9079
  br i1 %i.if, label %.loopexit1080, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs74LoFwSioHw_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit.i49, !dbg !9080

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs74LoFwSioHw_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit.i49: ; preds = %._crit_edge
  %i.ig = getelementptr inbounds nuw i8, ptr %i.ie, i64 104, !dbg !9081
  store ptr %i.ig, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !9082, !alias.scope !8823
  %.sroa.0.0.copyload.i50 = load i64, ptr %i.ie, align 8, !dbg !9083, !noalias !8824 ; 3 uses
  %.not.i51 = icmp eq i64 %.sroa.0.0.copyload.i50, 2, !dbg !9084
  br i1 %.not.i51, label %.loopexit1080, label %bb.bm, !dbg !9085

bb.bk:                                            ; preds = %.lr.ph
  %i.ih = load ptr, ptr %i.dd, align 8, !dbg !9086, !alias.scope !8821, !nonnull !396, !noundef !396
  %i.ii = getelementptr inbounds nuw [72 x i8], ptr %i.ih, i64 %i.ia, !dbg !9087 ; 7 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 16, !dbg !9088
  %i.ik = load i64, ptr %i.ij, align 8, !dbg !9088, !range !399, !noalias !8825, !noundef !396
  %i.il = trunc nuw i64 %i.ik to i1, !dbg !9089
  br i1 %i.il, label %bb.bl, label %bb.bn, !dbg !9089

bb.bl:                                            ; preds = %bb.bk
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 24, !dbg !9088
  %i.in = load i64, ptr %i.im, align 8, !dbg !9090, !noalias !8825, !noundef !396
  br label %bb.bn, !dbg !9091

bb.bm:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs74LoFwSioHw_4http6header3map6BucketNtNtB11_5value11HeaderValueEENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCsbaWXNhtWAp9_11foundations.exit.i49
  %.sroa.9.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.ie, i64 64, !dbg !9083
  %.sroa.7.0..sroa_idx.i53 = getelementptr inbounds nuw i8, ptr %i.ie, i64 8, !dbg !9083
  %.sroa.7.0.copyload.i54 = load i64, ptr %.sroa.7.0..sroa_idx.i53, align 8, !dbg !9083, !noalias !8824
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.0..sroa_idx.i52, i64 32, i1 false), !dbg !9092
  %i.io = getelementptr inbounds nuw i8, ptr %i.ie, i64 24, !dbg !9092
  %.sroa.10183.sroa.0.0.copyload189 = load ptr, ptr %i.io, align 8, !dbg !9092, !noalias !8821
  %.sroa.10183.sroa.8.0..sroa_idx191 = getelementptr inbounds nuw i8, ptr %i.ie, i64 32, !dbg !9092
  %.sroa.10183.sroa.8.0.copyload192 = load ptr, ptr %.sroa.10183.sroa.8.0..sroa_idx191, align 8, !dbg !9092, !noalias !8821
  %.sroa.10183.sroa.9.0..sroa_idx195 = getelementptr inbounds nuw i8, ptr %i.ie, i64 40, !dbg !9092
  %.sroa.10183.sroa.9.0.copyload196 = load i64, ptr %.sroa.10183.sroa.9.0..sroa_idx195, align 8, !dbg !9092, !noalias !8821
  %.sroa.10183.sroa.10.0..sroa_idx199 = getelementptr inbounds nuw i8, ptr %i.ie, i64 48, !dbg !9092
  %.sroa.10183.sroa.10.0.copyload200 = load ptr, ptr %.sroa.10183.sroa.10.0..sroa_idx199, align 8, !dbg !9092, !noalias !8821
  %.sroa.10183.sroa.11.0..sroa_idx203 = getelementptr inbounds nuw i8, ptr %i.ie, i64 56, !dbg !9092
  %.sroa.10183.sroa.11.0.copyload204 = load i64, ptr %.sroa.10183.sroa.11.0..sroa_idx203, align 8, !dbg !9092, !noalias !8821
  %i.ip = trunc nuw i64 %.sroa.0.0.copyload.i50 to i1, !dbg !9093
  %.sroa.56.0.i57 = select i1 %i.ip, i64 %.sroa.7.0.copyload.i54, i64 undef, !dbg !9093
  store i64 %.sroa.0.0.copyload.i50, ptr %i.h, align 8, !dbg !9094, !alias.scope !8821
  store i64 %.sroa.56.0.i57, ptr %i.by, align 8, !dbg !9094, !alias.scope !8821
  br label %bb.z, !dbg !9095

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  %.sroa.5.0.i59 = phi i64 [ %i.in, %bb.bl ], [ undef, %bb.bk ], !dbg !9096
  %.sroa.0.0.i60 = phi i64 [ 1, %bb.bl ], [ 0, %bb.bk ], !dbg !9096
  store i64 %.sroa.0.0.i60, ptr %i.h, align 8, !dbg !9097, !alias.scope !8821
  store i64 %.sroa.5.0.i59, ptr %i.by, align 8, !dbg !9097, !alias.scope !8821
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ii, i64 32, !dbg !9098
  %.sroa.10183.sroa.0.0.copyload190 = load ptr, ptr %i.iq, align 8, !dbg !9098, !noalias !8821 ; 8 uses
  %.sroa.10183.sroa.8.0..sroa_idx193 = getelementptr inbounds nuw i8, ptr %i.ii, i64 40, !dbg !9098
  %.sroa.10183.sroa.8.0.copyload194 = load ptr, ptr %.sroa.10183.sroa.8.0..sroa_idx193, align 8, !dbg !9098, !noalias !8821 ; 5 uses
  %.sroa.10183.sroa.9.0..sroa_idx197 = getelementptr inbounds nuw i8, ptr %i.ii, i64 48, !dbg !9098
  %.sroa.10183.sroa.9.0.copyload198 = load i64, ptr %.sroa.10183.sroa.9.0..sroa_idx197, align 8, !dbg !9098, !noalias !8821 ; 5 uses
  %.sroa.10183.sroa.10.0..sroa_idx201 = getelementptr inbounds nuw i8, ptr %i.ii, i64 56, !dbg !9098
  %.sroa.10183.sroa.10.0.copyload202 = load ptr, ptr %.sroa.10183.sroa.10.0..sroa_idx201, align 8, !dbg !9098, !noalias !8821 ; 5 uses
  %.sroa.10183.sroa.11.0..sroa_idx205 = getelementptr inbounds nuw i8, ptr %i.ii, i64 64, !dbg !9098
  %.sroa.10183.sroa.11.0.copyload206 = load i64, ptr %.sroa.10183.sroa.11.0..sroa_idx205, align 8, !dbg !9098, !noalias !8821 ; 2 uses
  %i.ir = load i64, ptr %i.s, align 8, !dbg !9099, !noalias !8827, !noundef !396 ; 2 uses
  %.not.i64 = icmp ult i64 %.sroa.7136.0, %i.ir, !dbg !9100
  br i1 %.not.i64, label %bb.bo, label %bb.by, !dbg !9100

bb.bo:                                            ; preds = %bb.bn
  %i.is = load ptr, ptr %i.cv, align 8, !dbg !9101, !noalias !8827, !nonnull !396, !noundef !396
  %i.it = getelementptr inbounds nuw [104 x i8], ptr %i.is, i64 %.sroa.7136.0, !dbg !9102 ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8828), !dbg !9103
  call void @llvm.experimental.noalias.scope.decl(metadata !8829), !dbg !9103
  %i.iu = load i64, ptr %i.it, align 8, !dbg !9104, !range !399, !alias.scope !8828, !noalias !8827, !noundef !396
  %i.iv = trunc nuw i64 %i.iu to i1, !dbg !9105
  br i1 %i.iv, label %bb.bp, label %bb.bt, !dbg !9105

bb.bp:                                            ; preds = %bb.bo
  %i.iw = getelementptr inbounds nuw i8, ptr %i.it, i64 16, !dbg !9106 ; 2 uses
  %i.ix = load i64, ptr %i.iw, align 8, !dbg !9106, !alias.scope !8828, !noalias !8827, !noundef !396 ; 4 uses
  %i.iy = load i64, ptr %i.df, align 8, !dbg !9107, !alias.scope !8829, !noalias !8827, !noundef !396 ; 7 uses
  %i.iz = icmp ult i64 %i.iy, 128102389400760776, !dbg !9108
  call void @llvm.assume(i1 %i.iz), !dbg !9109
  %i.ja = load i64, ptr %i.de, align 8, !dbg !9110, !range !592, !alias.scope !8830, !noalias !8827, !noundef !396
  %i.jb = icmp eq i64 %i.iy, %i.ja, !dbg !9111
  br i1 %i.jb, label %bb.bq, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !9111

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCsb6T6P0NKlCh_2h2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit.i.i unwind label %bb.br, !dbg !9112, !noalias !8831

bb.br:                                            ; preds = %bb.bq
  %i.jc = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10183.sroa.0.0.copyload190) ]
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.10183.sroa.0.0.copyload190, i64 32, !dbg !9113
  %i.je = load ptr, ptr %i.jd, align 8, !dbg !9113, !noalias !8832, !nonnull !396, !noundef !396
  invoke void %i.je(ptr noundef %.sroa.10183.sroa.10.0.copyload202, ptr noundef %.sroa.10183.sroa.8.0.copyload194, i64 noundef %.sroa.10183.sroa.9.0.copyload198)
          to label %.body unwind label %bb.bs, !dbg !9113, !noalias !8831, !inline_history !330

bb.bs:                                            ; preds = %bb.br
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !9114, !noalias !8831
  unreachable, !dbg !9114

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %bb.bq, %bb.bp
  %i.jg = load ptr, ptr %i.dg, align 8, !dbg !9115, !alias.scope !8830, !noalias !8827, !nonnull !396, !noundef !396
  %i.jh = getelementptr inbounds nuw [72 x i8], ptr %i.jg, i64 %i.iy, !dbg !9116 ; 9 uses
  store i64 1, ptr %i.jh, align 8, !dbg !9117, !noalias !8833
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jh, i64 8, !dbg !9117
  store i64 %i.ix, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !9117, !noalias !8833
  %.sroa.5.0..sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %i.jh, i64 16, !dbg !9117
  store i64 0, ptr %.sroa.5.0..sroa_idx10.i.i, align 8, !dbg !9117, !noalias !8833
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jh, i64 24, !dbg !9117
  store i64 %.sroa.7136.0, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !dbg !9117, !noalias !8833
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jh, i64 32, !dbg !9117
  store ptr %.sroa.10183.sroa.0.0.copyload190, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !dbg !9117, !noalias !8833
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jh, i64 40, !dbg !9117
  store ptr %.sroa.10183.sroa.8.0.copyload194, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !dbg !9117, !noalias !8833
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jh, i64 48, !dbg !9117
  store i64 %.sroa.10183.sroa.9.0.copyload198, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !dbg !9117, !noalias !8833
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jh, i64 56, !dbg !9117
  store ptr %.sroa.10183.sroa.10.0.copyload202, ptr %.sroa.11.0..sroa_idx.i.i, align 8, !dbg !9117, !noalias !8833
  %.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.jh, i64 64, !dbg !9117
  store i64 %.sroa.10183.sroa.11.0.copyload206, ptr %.sroa.12.0..sroa_idx.i.i, align 8, !dbg !9117, !noalias !8833
  %i.ji = add nuw nsw i64 %i.iy, 1, !dbg !9118    ; 2 uses
  store i64 %i.ji, ptr %i.df, align 8, !dbg !9118, !alias.scope !8830, !noalias !8827
  %.not.i.i = icmp ugt i64 %i.ix, %i.iy, !dbg !9119
  br i1 %.not.i.i, label %.noexc.i71, label %bb.bx, !dbg !9119

bb.bt:                                            ; preds = %bb.bo
  %i.jj = load i64, ptr %i.df, align 8, !dbg !9120, !alias.scope !8829, !noalias !8827, !noundef !396 ; 6 uses
  %i.jk = icmp ult i64 %i.jj, 128102389400760776, !dbg !9121
  call void @llvm.assume(i1 %i.jk), !dbg !9122
  %i.jl = load i64, ptr %i.de, align 8, !dbg !9123, !range !592, !alias.scope !8834, !noalias !8827, !noundef !396
  %i.jm = icmp eq i64 %i.jj, %i.jl, !dbg !9124
  br i1 %i.jm, label %bb.bu, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit9.i.i, !dbg !9124

bb.bu:                                            ; preds = %bb.bt
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBR_5value11HeaderValueEE8grow_oneCsb6T6P0NKlCh_2h2(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.de)
          to label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit9.i.i unwind label %bb.bv, !dbg !9125, !noalias !8835

bb.bv:                                            ; preds = %bb.bu
  %i.jn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10183.sroa.0.0.copyload190) ]
  %i.jo = getelementptr inbounds nuw i8, ptr %.sroa.10183.sroa.0.0.copyload190, i64 32, !dbg !9126
  %i.jp = load ptr, ptr %i.jo, align 8, !dbg !9126, !noalias !8836, !nonnull !396, !noundef !396
  invoke void %i.jp(ptr noundef %.sroa.10183.sroa.10.0.copyload202, ptr noundef %.sroa.10183.sroa.8.0.copyload194, i64 noundef %.sroa.10183.sroa.9.0.copyload198)
          to label %.body unwind label %bb.bw, !dbg !9126, !noalias !8835, !inline_history !330

bb.bw:                                            ; preds = %bb.bv
  %i.jq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !9127, !noalias !8835
  unreachable, !dbg !9127

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit9.i.i: ; preds = %bb.bu, %bb.bt
  %i.jr = load ptr, ptr %i.dg, align 8, !dbg !9128, !alias.scope !8834, !noalias !8827, !nonnull !396, !noundef !396
  %i.js = getelementptr inbounds nuw [72 x i8], ptr %i.jr, i64 %i.jj, !dbg !9129 ; 9 uses
  store i64 0, ptr %i.js, align 8, !dbg !9130, !noalias !8833
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.js, i64 8, !dbg !9130
  store i64 %.sroa.7136.0, ptr %.sroa.417.0..sroa_idx.i.i, align 8, !dbg !9130, !noalias !8833
  %.sroa.518.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.js, i64 16, !dbg !9130
  store i64 0, ptr %.sroa.518.0..sroa_idx.i.i, align 8, !dbg !9130, !noalias !8833
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.js, i64 24, !dbg !9130
  store i64 %.sroa.7136.0, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !dbg !9130, !noalias !8833
  %.sroa.720.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.js, i64 32, !dbg !9130
  store ptr %.sroa.10183.sroa.0.0.copyload190, ptr %.sroa.720.0..sroa_idx.i.i, align 8, !dbg !9130, !noalias !8833
  %.sroa.921.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.js, i64 40, !dbg !9130
  store ptr %.sroa.10183.sroa.8.0.copyload194, ptr %.sroa.921.0..sroa_idx.i.i, align 8, !dbg !9130, !noalias !8833
  %.sroa.1022.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.js, i64 48, !dbg !9130
  store i64 %.sroa.10183.sroa.9.0.copyload198, ptr %.sroa.1022.0..sroa_idx.i.i, align 8, !dbg !9130, !noalias !8833
  %.sroa.1123.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.js, i64 56, !dbg !9130
  store ptr %.sroa.10183.sroa.10.0.copyload202, ptr %.sroa.1123.0..sroa_idx.i.i, align 8, !dbg !9130, !noalias !8833
  %.sroa.1224.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.js, i64 64, !dbg !9130
  store i64 %.sroa.10183.sroa.11.0.copyload206, ptr %.sroa.1224.0..sroa_idx.i.i, align 8, !dbg !9130, !noalias !8833
  %i.jt = add nuw nsw i64 %i.jj, 1, !dbg !9131
  store i64 %i.jt, ptr %i.df, align 8, !dbg !9131, !alias.scope !8834, !noalias !8827
  store i64 1, ptr %i.it, align 8, !dbg !9132, !alias.scope !8828, !noalias !8827
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.it, i64 8, !dbg !9132
  store i64 %i.jj, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !9132, !alias.scope !8828, !noalias !8827
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.it, i64 16, !dbg !9132
  store i64 %i.jj, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !9132, !alias.scope !8828, !noalias !8827
  br label %_RNvMsO_NtNtCs74LoFwSioHw_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsbaWXNhtWAp9_11foundations.exit, !dbg !9133

bb.bx:                                            ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit.i.i
  %i.ju = load ptr, ptr %i.dg, align 8, !dbg !9134, !alias.scope !8829, !noalias !8827, !nonnull !396, !noundef !396
  %i.jv = getelementptr inbounds nuw [72 x i8], ptr %i.ju, i64 %i.ix, !dbg !9135 ; 2 uses
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 16, !dbg !9136
  store i64 1, ptr %i.jw, align 8, !dbg !9136, !noalias !8833
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 24, !dbg !9136
  store i64 %i.iy, ptr %i.jx, align 8, !dbg !9136, !noalias !8833
  store i64 1, ptr %i.it, align 8, !dbg !9137, !alias.scope !8828, !noalias !8827
  store i64 %i.iy, ptr %i.iw, align 8, !dbg !9137, !alias.scope !8828, !noalias !8827
  br label %_RNvMsO_NtNtCs74LoFwSioHw_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsbaWXNhtWAp9_11foundations.exit, !dbg !9138

.noexc.i71:                                       ; preds = %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ix, i64 noundef %i.ji, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @77) #30
          to label %.noexc72 unwind label %.body34.thread249.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !9119

.noexc72:                                         ; preds = %.noexc.i71
  unreachable

bb.by:                                            ; preds = %bb.bn
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.7136.0, i64 noundef %i.ir, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @171) #30
          to label %bb.bz unwind label %bb.ca, !dbg !9100, !noalias !8827

bb.bz:                                            ; preds = %bb.by
  unreachable

bb.ca:                                            ; preds = %bb.by
  %i.jy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10183.sroa.0.0.copyload190) ]
  %i.jz = getelementptr inbounds nuw i8, ptr %.sroa.10183.sroa.0.0.copyload190, i64 32, !dbg !9139
  %i.ka = load ptr, ptr %i.jz, align 8, !dbg !9139, !noalias !8837, !nonnull !396, !noundef !396
  invoke void %i.ka(ptr noundef %.sroa.10183.sroa.10.0.copyload202, ptr noundef %.sroa.10183.sroa.8.0.copyload194, i64 noundef %.sroa.10183.sroa.9.0.copyload198)
          to label %.body unwind label %bb.cb, !dbg !9139, !noalias !8827, !inline_history !43

bb.cb:                                            ; preds = %bb.ca
  %i.kb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !9140, !noalias !8827
  unreachable, !dbg !9140

_RNvMsO_NtNtCs74LoFwSioHw_4http6header3mapINtB5_13OccupiedEntryNtNtB7_5value11HeaderValueE6appendCsbaWXNhtWAp9_11foundations.exit: ; preds = %bb.bx, %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtCs74LoFwSioHw_4http6header3map10ExtraValueNtNtBK_5value11HeaderValueEE8push_mutCsbaWXNhtWAp9_11foundations.exit9.i.i
  %i.kc = load i64, ptr %i.h, align 8, !dbg !9071, !range !399, !alias.scope !8838, !noundef !396
  %i.kd = trunc nuw i64 %i.kc to i1, !dbg !9072
  br i1 %i.kd, label %.lr.ph, label %._crit_edge, !dbg !9072

.body34.thread244:                                ; preds = %.body34.loopexit.split-lp.loopexit.split-lp, %bb.ao, %bb.an
  %eh.lpad-body35247 = phi { ptr, i32 } [ %lpad.phi, %bb.ao ], [ %lpad.phi, %bb.an ], [ %lpad.loopexit.split-lp1072, %.body34.loopexit.split-lp.loopexit.split-lp ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.081.0) ]
  %i.ke = getelementptr inbounds nuw i8, ptr %.sroa.081.0, i64 32, !dbg !9141
  %i.kf = load ptr, ptr %i.ke, align 8, !dbg !9141, !noalias !8839, !nonnull !396, !noundef !396
  invoke void %i.kf(ptr noundef %.sroa.9.0, ptr noundef %.sroa.7.0, i64 noundef %.sroa.8.0)
          to label %.body unwind label %bb.y, !dbg !9141, !inline_history !43

bb.cc:                                            ; preds = %.body
  resume { ptr, i32 } %.pn, !dbg !8949

infloop:                                          ; preds = %.outer1070, %infloop
  br label %infloop

infloop1472:                                      ; preds = %.outer, %infloop1472
  br label %infloop1472
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtCsfUalJnHtWpm_5tonic7requestINtB2_7RequestNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestE3newCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([128 x i8]) align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9142 {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9143
  invoke void @_RNvMs0_NtNtCsfUalJnHtWpm_5tonic8metadata3mapNtB5_11MetadataMap3new(ptr noalias nofree noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.a)
          to label %bb.c unwind label %bb.b, !dbg !9143

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtNtNtCsaT4Vka5cwtN_19opentelemetry_proto5proto5tonic9collector5trace2v125ExportTraceServiceRequestECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #27
          to label %bb.e unwind label %bb.d, !dbg !9144

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !9145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !9146
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(96) %i.a, i64 96, i1 false), !dbg !9145
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !9145
  store ptr null, ptr %i.d, align 8, !dbg !9145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9147
  ret void, !dbg !9148

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !9149
  unreachable, !dbg !9149

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !9149
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMNtNtNtCsb6T6P0NKlCh_2h25proto7streams7streamsINtB2_7StreamsINtNtNtCsaCYLheajBls_5hyper5proto2h27SendBufNtNtCs8QTyv2gZm5j_5bytes5bytes5BytesENtNtB8_6client4PeerE12send_requestCsbaWXNhtWAp9_11foundations(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(224) %2, i1 noundef zeroext %3, ptr noalias nofree noundef readonly align 8 captures(address_is_null) dereferenceable_or_null(16) %4) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !9150 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [288 x i8], align 8               ; 4 uses
  %i.h = alloca [328 x i8], align 8               ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 8 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [224 x i8], align 8               ; 4 uses
  %i.l = alloca [288 x i8], align 8               ; 7 uses
  %.sroa.622 = alloca [40 x i8], align 8          ; 6 uses
  %i.m = alloca [288 x i8], align 8               ; 9 uses
  %i.n = alloca [328 x i8], align 8               ; 9 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [40 x i8], align 8                ; 6 uses
  %i.q = alloca [24 x i8], align 8                ; 8 uses
  %i.r = alloca [24 x i8], align 8                ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 208, !dbg !9419 ; 2 uses
  %.val86 = load ptr, ptr %i.s, align 8, !dbg !9420, !align !403, !noundef !396 ; 2 uses
  %.not.i = icmp eq ptr %.val86, null, !dbg !9421
  br i1 %.not.i, label %_RINvMs_NtCs74LoFwSioHw_4http10extensionsNtB5_10Extensions6removeNtNtCsb6T6P0NKlCh_2h23ext8ProtocolECsbaWXNhtWAp9_11foundations.exit.thread, label %bb.b, !dbg !9422

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !9423, !noalias !9360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) @70, i64 16, i1 false), !dbg !9424, !noalias !9360
  %i.t = invoke { ptr, ptr } @_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtCs3oUPovFnLWP_4core3any6TypeIdINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtCs74LoFwSioHw_4http10extensions8AnyCloneNtNtBS_6marker4SendNtB2G_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtB1Y_8IdHasherEE6removeBO_ECsbaWXNhtWAp9_11foundations(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %.val86, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %.noexc unwind label %bb.m, !dbg !9425 ; 2 uses

.noexc:                                           ; preds = %bb.b
  %i.u = extractvalue { ptr, ptr } %i.t, 0, !dbg !9425 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !9426, !noalias !9360
  %.not4.i = icmp eq ptr %i.u, null, !dbg !9427
  br i1 %.not4.i, label %_RINvMs_NtCs74LoFwSioHw_4http10extensionsNtB5_10Extensions6removeNtNtCsb6T6P0NKlCh_2h23ext8ProtocolECsbaWXNhtWAp9_11foundations.exit, label %bb.c, !dbg !9428

bb.c:                                             ; preds = %.noexc
  %i.v = extractvalue { ptr, ptr } %i.t, 1, !dbg !9425 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.w = getelementptr i8, ptr %i.v, i64 56, !dbg !9429
  %.val.i = load ptr, ptr %i.w, align 8, !dbg !9429, !noalias !9360
  %i.x = invoke { ptr, ptr } %.val.i(ptr noundef nonnull %i.u) #31
          to label %.noexc88 unwind label %bb.m, !dbg !9430, !inline_history !9170 ; 2 uses

.noexc88:                                         ; preds = %bb.c
  %i.y = extractvalue { ptr, ptr } %i.x, 0, !dbg !9430 ; 10 uses
  %i.z = extractvalue { ptr, ptr } %i.x, 1, !dbg !9430 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9361), !dbg !9431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !9432, !noalias !9362
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 24, !dbg !9433
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !9433, !invariant.load !396, !alias.scope !9361, !noalias !9363, !nonnull !396
  invoke void %i.ab(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.y)
          to label %_RINvMsa_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB8_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyEL_E8downcastNtNtCsb6T6P0NKlCh_2h23ext8ProtocolECsbaWXNhtWAp9_11foundations.exit.i.i unwind label %bb.d, !dbg !9434, !noalias !9362

bb.d:                                             ; preds = %.noexc88
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc5boxed3BoxDNtNtB4_3any3AnyEL_EECsbaWXNhtWAp9_11foundations(ptr nonnull %i.y, ptr nonnull readonly align 8 dereferenceable(32) %i.z) #27
          to label %bb.bx unwind label %bb.e, !dbg !9435, !noalias !9364

bb.e:                                             ; preds = %bb.d
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #26, !dbg !9436, !noalias !9362
  unreachable, !dbg !9436

_RINvMsa_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB8_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyEL_E8downcastNtNtCsb6T6P0NKlCh_2h23ext8ProtocolECsbaWXNhtWAp9_11foundations.exit.i.i: ; preds = %.noexc88
  %i.ae = load i128, ptr %i.a, align 16, !dbg !9437, !noalias !9362, !noundef !396
  %i.af = icmp eq i128 %i.ae, 14875265749004133437674184497904184777, !dbg !9438 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !9439, !noalias !9362
  %.sroa.0.0.i.i = select i1 %i.af, ptr %i.y, ptr null, !dbg !9440 ; 2 uses
  br i1 %i.af, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsb6T6P0NKlCh_2h23ext8ProtocolEIBY_DNtNtB4_3any3AnyEL_EEECsbaWXNhtWAp9_11foundations.exit.i.i, label %bb.f, !dbg !9441

bb.f:                                             ; preds = %_RINvMsa_NtNtCs1xwejQucwHj_5alloc5boxed7convertINtB8_3BoxDNtNtCs3oUPovFnLWP_4core3any3AnyEL_E8downcastNtNtCsb6T6P0NKlCh_2h23ext8ProtocolECsbaWXNhtWAp9_11foundations.exit.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.z) ]
  %i.ag = load ptr, ptr %i.z, align 8, !dbg !9442, !invariant.load !396, !noalias !9363 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ag, null, !dbg !9442
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.g, !dbg !9442

bb.g:                                             ; preds = %bb.f
  invoke void %i.ag(ptr noundef nonnull %i.y)
          to label %bb.h unwind label %bb.j, !dbg !9442, !noalias !9363

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ah = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !9443
  %i.ai = load i64, ptr %i.ah, align 8, !dbg !9443, !range !592, !invariant.load !396, !noalias !9363 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 0, !dbg !9444
  br i1 %i.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsb6T6P0NKlCh_2h23ext8ProtocolEIBY_DNtNtB4_3any3AnyEL_EEECsbaWXNhtWAp9_11foundations.exit.i.i, label %bb.i, !dbg !9444

bb.i:                                             ; preds = %bb.h
  %i.ak = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !9443
  %i.al = load i64, ptr %i.ak, align 8, !dbg !9445, !range !662, !invariant.load !396, !noalias !9363
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef range(i64 1, 0) %i.ai, i64 noundef range(i64 1, 536870913) %i.al) #32, !dbg !9446, !noalias !9363
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtCsb6T6P0NKlCh_2h23ext8ProtocolEIBY_DNtNtB4_3any3AnyEL_EEECsbaWXNhtWAp9_11foundations.exit.i.i, !dbg !9447

bb.j:                                             ; preds = %bb.g
  %i.am = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.z, i64 8, !dbg !9448
  %i.ao = load i64, ptr %i.an, align 8, !dbg !9448, !range !592, !invariant.load !396, !noalias !9363 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 0, !dbg !9449
  br i1 %i.ap, label %bb.bx, label %bb.k, !dbg !9449

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr inbounds nuw i8, ptr %i.z, i64 16, !dbg !9448
  %i.ar = load i64, ptr %i.aq, align 8, !dbg !9450, !range !662, !invariant.load !396, !noalias !9363
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.y, i64 noundef range(i64 1, 0) %i.ao, i64 noundef range(i64 1, 536870913) %i.ar) #32, !dbg !9451, !noalias !9363
  br label %bb.bx, !dbg !9452

end_hunk_1
