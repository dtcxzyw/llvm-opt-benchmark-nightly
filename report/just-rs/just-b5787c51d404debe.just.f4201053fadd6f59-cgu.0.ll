Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27266
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 595
loop-unroll.NumUnrolled: 720
begin_hunk_0_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms9histogram9diff_implINtNtB4_5utils12OffsetLookupjEBY_INtNtB4_4hook12NoFinishHookQINtNtB4_7compact7CompactINtNtB6_4text12TextDiffSideeEB2l_INtNtB4_7replace7ReplaceNtNtB4_7capture7CaptureEEEECskXtk6F4WjxZ_4just:bb.a

bb.au:                                            ; preds = %bb.q, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit83, %bb.ao, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit82
  %.not54 = icmp eq i64 %.sroa.0.0.i77, 0
  br i1 %.not54, label %bb.az, label %bb.ax

bb.av:                                            ; preds = %bb.q
  %i.gs = sub nuw i64 %i.bk, %.sroa.092.0
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21606)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21607)
  %i.gt = load ptr, ptr %0, align 8, !alias.scope !21608, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gt, i64 120 ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gt, i64 136 ; 2 uses
  %i.gw = load i64, ptr %i.gv, align 8, !alias.scope !21609, !noalias !21610, !noundef !28 ; 3 uses
  %i.gx = load i64, ptr %i.gu, align 8, !range !43, !alias.scope !21609, !noalias !21610, !noundef !28
  %i.gy = icmp eq i64 %i.gw, %i.gx
  br i1 %i.gy, label %bb.aw, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit83

bb.aw:                                            ; preds = %bb.av
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gu) #73, !noalias !21610
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit83

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit83: ; preds = %bb.av, %bb.aw
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gt, i64 128
  %i.ha = load ptr, ptr %i.gz, align 8, !alias.scope !21609, !noalias !21610, !nonnull !28, !noundef !28
  %i.hb = getelementptr inbounds nuw [40 x i8], ptr %i.ha, i64 %i.gw ; 4 uses
  store i64 2, ptr %i.hb, align 8, !noalias !21608
  %.sroa.4133.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hb, i64 8
  store i64 %.sroa.0.0142, ptr %.sroa.4133.0..sroa_idx, align 8, !noalias !21608
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hb, i64 16
  store i64 %.sroa.092.0, ptr %.sroa.5134.0..sroa_idx, align 8, !noalias !21608
  %.sroa.6135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hb, i64 24
  store i64 %i.gs, ptr %.sroa.6135.0..sroa_idx, align 8, !noalias !21608
  %i.hc = add i64 %i.gw, 1
  store i64 %i.hc, ptr %i.gv, align 8, !alias.scope !21609, !noalias !21610
  br label %bb.au

bb.ax:                                            ; preds = %bb.au
  call void @llvm.experimental.noalias.scope.decl(metadata !21611)
  call void @llvm.experimental.noalias.scope.decl(metadata !21612)
  %i.hd = load ptr, ptr %0, align 8, !alias.scope !21613, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 120 ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 136 ; 2 uses
  %i.hg = load i64, ptr %i.hf, align 8, !alias.scope !21614, !noalias !21615, !noundef !28 ; 3 uses
  %i.hh = load i64, ptr %i.he, align 8, !range !43, !alias.scope !21614, !noalias !21615, !noundef !28
  %i.hi = icmp eq i64 %i.hg, %i.hh
  br i1 %i.hi, label %bb.ay, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit84

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.he) #73, !noalias !21615
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit84

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit84: ; preds = %bb.ax, %bb.ay
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hd, i64 128
  %i.hk = load ptr, ptr %i.hj, align 8, !alias.scope !21614, !noalias !21615, !nonnull !28, !noundef !28
  %i.hl = getelementptr inbounds nuw [40 x i8], ptr %i.hk, i64 %i.hg ; 4 uses
  store i64 0, ptr %i.hl, align 8, !noalias !21613
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 8
  store i64 %i.bj, ptr %.sroa.4108.0..sroa_idx, align 8, !noalias !21613
  %.sroa.5109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 16
  store i64 %i.bk, ptr %.sroa.5109.0..sroa_idx, align 8, !noalias !21613
  %.sroa.6110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  store i64 %.sroa.0.0.i77, ptr %.sroa.6110.0..sroa_idx, align 8, !noalias !21613
  %i.hm = add i64 %i.hg, 1
  store i64 %i.hm, ptr %i.hf, align 8, !alias.scope !21614, !noalias !21615
  br label %bb.az

bb.az:                                            ; preds = %bb.au, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit84, %bb.b, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit85
  ret void

bb.ba:                                            ; preds = %.critedge
  %i.hn = sub nuw i64 %3, %2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !21617)
  %i.ho = load ptr, ptr %0, align 8, !alias.scope !21618, !nonnull !28, !align !35, !noundef !28 ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 120 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.ho, i64 136 ; 2 uses
  %i.hr = load i64, ptr %i.hq, align 8, !alias.scope !21619, !noalias !21620, !noundef !28 ; 3 uses
  %i.hs = load i64, ptr %i.hp, align 8, !range !43, !alias.scope !21619, !noalias !21620, !noundef !28
  %i.ht = icmp eq i64 %i.hr, %i.hs
  br i1 %i.ht, label %bb.bb, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit85

bb.bb:                                            ; preds = %bb.ba
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.hp) #73, !noalias !21620
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit85

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsdftwklc2oBO_7similar5types6DiffOpE8push_mutCskXtk6F4WjxZ_4just.exit85: ; preds = %bb.ba, %bb.bb
  %i.hu = getelementptr inbounds nuw i8, ptr %i.ho, i64 128
  %i.hv = load ptr, ptr %i.hu, align 8, !alias.scope !21619, !noalias !21620, !nonnull !28, !noundef !28
  %i.hw = getelementptr inbounds nuw [40 x i8], ptr %i.hv, i64 %i.hr ; 4 uses
  store i64 1, ptr %i.hw, align 8, !noalias !21618
  %.sroa.4123.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hw, i64 8
  store i64 %2, ptr %.sroa.4123.0..sroa_idx, align 8, !noalias !21618
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  store i64 %i.hn, ptr %.sroa.5124.0..sroa_idx, align 8, !noalias !21618
  %.sroa.6125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hw, i64 24
  store i64 %5, ptr %.sroa.6125.0..sroa_idx, align 8, !noalias !21618
  %i.hx = add i64 %i.hr, 1
  store i64 %i.hx, ptr %i.hq, align 8, !alias.scope !21619, !noalias !21620
  br label %bb.az
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB4_5utils12OffsetLookupjEB15_ECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i64 noundef %4, i64 noundef %5, i64 %6, i32 noundef range(i32 -1, 1000000000) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !40, !noalias !21713, !noundef !28
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i, !prof !29

._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.d, align 8, !noalias !21714
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !21714
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit

_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RNvNtNtNtCsaKJjC64KgbL_3std3sys6random5linux19hashmap_random_keys(), !noalias !21715 ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.j, ptr %i.k, align 8, !noalias !21715
  store i8 1, ptr %i.e, align 8, !noalias !21715
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit

_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit: ; preds = %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i
  %.pre-phi177 = phi i64 [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i ], [ %i.j, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i ]
  %i.l = phi i64 [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i ], [ %i.i, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i ] ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.d, align 8, !noalias !21714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @125, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store i64 %.pre-phi177, ptr %.sroa.5.0..sroa_idx, align 8
  %i.n = icmp ult i64 %1, %2
  br i1 %i.n, label %.lr.ph, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.preheader

.lr.ph:                                           ; preds = %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.w = sub nuw i64 %2, %1
  br label %bb.b

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.preheader: ; preds = %bb.ak, %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit
  %i.x = icmp ult i64 %4, %5
  br i1 %i.x, label %.lr.ph155, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit17

.lr.ph155:                                        ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !28
  %i.am = sub nuw i64 %5, %4
  br label %bb.c

.loopexit:                                        ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.aj, %bb.ae, %bb.w
  %lpad.loopexit127 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke
  %lpad.loopexit.split-lp128 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit127, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp128, %.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #71
  resume { ptr, i32 } %lpad.phi

bb.b:                                             ; preds = %.lr.ph, %bb.ak
  %.sroa.0.092152 = phi i64 [ %1, %.lr.ph ], [ %i.an, %bb.ak ] ; 3 uses
  %.sroa.8.0151 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.ak ] ; 2 uses
  %i.an = add nuw i64 %.sroa.0.092152, 1
  %i.ao = add i64 %.sroa.8.0151, 1                ; 2 uses
  %i.ap = and i64 %.sroa.8.0151, 1023
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.w, label %bb.y

bb.c:                                             ; preds = %.lr.ph155, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit
  %.sroa.071.0154 = phi i64 [ %4, %.lr.ph155 ], [ %i.ar, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit ] ; 2 uses
  %.sroa.873.0153 = phi i64 [ 0, %.lr.ph155 ], [ %i.as, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit ] ; 2 uses
  %i.ar = add nuw i64 %.sroa.071.0154, 1
  %i.as = add i64 %.sroa.873.0153, 1              ; 2 uses
  %i.at = and i64 %.sroa.873.0153, 1023
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.h, label %bb.j

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit17: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !21716)
  call void @llvm.experimental.noalias.scope.decl(metadata !21717)
  call void @llvm.experimental.noalias.scope.decl(metadata !21718)
  call void @llvm.experimental.noalias.scope.decl(metadata !21719)
  call void @llvm.experimental.noalias.scope.decl(metadata !21720)
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !21721, !noundef !28 ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37, label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit17
  call void @llvm.experimental.noalias.scope.decl(metadata !21722)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !21723, !noundef !28 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.c, align 8, !alias.scope !21723, !nonnull !28, !noundef !28 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bb, align 16, !noalias !21724
  %i.bc = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.be = bitcast <16 x i1> %i.bc to i16
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, %bb.e
  %.sroa.06.017.i.i.i.i.i.i = phi ptr [ %i.bb, %bb.e ], [ %.sroa.06.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.e ], [ %.sroa.6.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i = phi i16 [ %i.be, %bb.e ], [ %i.bn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i = phi i64 [ %i.az, %bb.e ], [ %i.bq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %i.bf = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.bg = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i, %bb.f ]
  %.val9.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bf, align 16, !noalias !21725
  %i.bh = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -512 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bh to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i, %bb.f ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i, %bb.f ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i, %bb.f ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.bk = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.bl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = and i16 %i.bk, %.lcssa.i.i.i.i.i.i.i
  %i.bo = sub nsw i64 0, %i.bm
  %i.bp = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i, i64 %i.bo ; 2 uses
  %i.bq = add i64 %.sroa.108.014.i.i.i.i.i.i, -1  ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 -24
  %.val.i.i.i.i.i.i = load i64, ptr %i.br, align 8, !alias.scope !21726, !noalias !21723 ; 2 uses
  %i.bs = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.bs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %i.bt = getelementptr i8, ptr %i.bp, i64 -16
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !noalias !21723, !nonnull !28, !noundef !28
  %i.bu = shl nuw i64 %.val.i.i.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !21727
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %bb.g, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %i.bv = icmp eq i64 %i.bq, 0
  br i1 %i.bv, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.f

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, %bb.d
  %i.bw = shl i64 %i.aw, 5                        ; 2 uses
  %i.bx = add i64 %i.bw, 32                       ; 2 uses
  %i.by = add i64 %i.aw, 17
  %i.bz = add i64 %i.by, %i.bx                    ; 4 uses
  %i.ca = icmp uge i64 %i.bz, %i.bx
  %i.cb = icmp ult i64 %i.bz, 9223372036854775793
  call void @llvm.assume(i1 %i.ca)
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.bz, 0
  br i1 %i.cc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37.sink.split: ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i32
  %.sink = phi i64 [ %i.fx, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i32 ], [ %i.bw, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ]
  %.sink224 = phi i64 [ %i.ga, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i32 ], [ %i.bz, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ]
  %.sroa.0.0.ph = phi i8 [ %.sroa.0.2, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i32 ], [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ]
  %i.cd = load ptr, ptr %i.c, align 8, !nonnull !28, !noundef !28
  %i.ce = sub nuw nsw i64 -32, %.sink
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef %.sink224, i64 noundef range(i64 1, -9223372036854775807) 16) #69, !noalias !28
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37.sink.split, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit17, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i32, %.loopexit126
  %.sroa.0.0 = phi i8 [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ], [ %.sroa.0.2, %.loopexit126 ], [ %.sroa.0.2, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i32 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit17 ], [ %.sroa.0.0.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i8 %.sroa.0.0

bb.h:                                             ; preds = %bb.c
  %i.cg = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %6, i32 noundef %7)
          to label %bb.i unwind label %.loopexit

bb.i:                                             ; preds = %bb.h
  br i1 %i.cg, label %.loopexit126, label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ch = sub i64 %.sroa.071.0154, %i.z           ; 3 uses
  %i.ci = icmp ult i64 %i.ch, %i.ab
  br i1 %i.ci, label %bb.k, label %.invoke

bb.k:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ch
  %.val15 = load i64, ptr %i.cj, align 8, !noundef !28 ; 9 uses
  %.sroa.4.0.extract.shift.i.i = lshr i64 %.val15, 8
  %.sroa.5.0.extract.shift.i.i = lshr i64 %.val15, 16
  %.sroa.6.0.extract.shift.i.i = lshr i64 %.val15, 24
  %.sroa.7.0.extract.shift.i.i = lshr i64 %.val15, 32
  %.sroa.8.0.extract.shift.i.i = lshr i64 %.val15, 40
  %.sroa.9.0.extract.shift.i.i = lshr i64 %.val15, 48
  %.sroa.10.0.extract.shift.i.i = lshr i64 %.val15, 56
  %i.ck = and i64 %.val15, 255
  %i.cl = xor i64 %i.ck, -3750763034362895579
  %i.cm = mul i64 %i.cl, 1099511628211
  %i.cn = and i64 %.sroa.4.0.extract.shift.i.i, 255
  %i.co = xor i64 %i.cm, %i.cn
  %i.cp = mul i64 %i.co, 1099511628211
  %i.cq = and i64 %.sroa.5.0.extract.shift.i.i, 255
  %i.cr = xor i64 %i.cp, %i.cq
  %i.cs = mul i64 %i.cr, 1099511628211
  %i.ct = and i64 %.sroa.6.0.extract.shift.i.i, 255
  %i.cu = xor i64 %i.cs, %i.ct
  %i.cv = mul i64 %i.cu, 1099511628211
  %i.cw = and i64 %.sroa.7.0.extract.shift.i.i, 255
  %i.cx = xor i64 %i.cv, %i.cw
  %i.cy = mul i64 %i.cx, 1099511628211
  %i.cz = and i64 %.sroa.8.0.extract.shift.i.i, 255
  %i.da = xor i64 %i.cy, %i.cz
  %i.db = mul i64 %i.da, 1099511628211
  %i.dc = and i64 %.sroa.9.0.extract.shift.i.i, 255
  %i.dd = xor i64 %i.db, %i.dc
  %i.de = mul i64 %i.dd, 1099511628211
  %i.df = xor i64 %i.de, %.sroa.10.0.extract.shift.i.i
  %i.dg = mul i64 %i.df, 1099511628211            ; 2 uses
  store i64 %i.dg, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !21728)
  %i.dh = load i64, ptr %i.ae, align 8, !alias.scope !21728, !noalias !21729, !noundef !28
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !21728, !noalias !21729, !noundef !28
  %.val5.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !21728, !noalias !21729, !noundef !28
  %i.dj = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECskXtk6F4WjxZ_4just(i64 %.val.i, i64 %.val5.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !21728 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21730)
  call void @llvm.experimental.noalias.scope.decl(metadata !21731)
  %i.dk = lshr i64 %i.dj, 57
  %i.dl = trunc nuw nsw i64 %i.dk to i8
  %i.dm = load i64, ptr %i.af, align 8, !alias.scope !21732, !noalias !21733, !noundef !28 ; 2 uses
  %i.dn = load ptr, ptr %i.c, align 8, !alias.scope !21732, !noalias !21733, !nonnull !28, !noundef !28 ; 2 uses
  %i.do = insertelement <16 x i8> poison, i8 %i.dl, i64 0
  %i.dp = shufflevector <16 x i8> %i.do, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.l ], [ %i.eg, %bb.o ]
  %.pn.i.i = phi i64 [ %i.dj, %bb.l ], [ %i.eh, %bb.o ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.dm     ; 3 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.dq, align 1, !noalias !21734 ; 2 uses
  %i.dr = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.dp
  %i.ds = bitcast <16 x i1> %i.dr to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.ds, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %bb.n
  %.sroa.06.0.i31.i.i = phi i16 [ %i.ef, %bb.n ], [ %i.ds, %bb.m ] ; 3 uses
  %i.dt = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.du = zext nneg i16 %i.dt to i64
  %i.dv = add i64 %.sroa.01.0.i.i.i, %i.du
  %i.dw = and i64 %i.dv, %i.dm
  %i.dx = sub nsw i64 0, %i.dw
  %i.dy = getelementptr inbounds [32 x i8], ptr %i.dn, i64 %i.dx ; 3 uses
  %i.dz = getelementptr inbounds i8, ptr %i.dy, i64 -32
  %.val2.i.i.i = load i64, ptr %i.dz, align 8, !noalias !21735, !noundef !28
  %i.ea = icmp eq i64 %i.dg, %.val2.i.i.i
  br i1 %i.ea, label %bb.p, label %bb.n, !prof !29

._crit_edge.i.i:                                  ; preds = %bb.n, %bb.m
  %i.eb = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.ec = bitcast <16 x i1> %i.eb to i16
  %i.ed = icmp eq i16 %i.ec, 0
  br i1 %i.ed, label %bb.o, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit, !prof !44

bb.n:                                             ; preds = %.lr.ph.i.i
end_hunk_0
begin_hunk_1_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB4_5utils12OffsetLookupjEB15_ECskXtk6F4WjxZ_4just:bb.a
  %.sroa.0.07.i.i.i = and i64 %.val3.i.i, %i.hf   ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %.val.i.i60, i64 %.sroa.0.07.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i = load <16 x i8>, ptr %i.ih, align 1, !noalias !21762
  %i.ii = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i, zeroinitializer
  %i.ij = bitcast <16 x i1> %i.ii to i16          ; 2 uses
  %.not.i9.i.i.i = icmp eq i16 %i.ij, 0
  br i1 %.not.i9.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !65

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.af
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.07.i.i.i, %bb.af ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.ij, %bb.af ], [ %i.ja, %.lr.ph.i.i.i ]
  %i.ik = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.il = zext nneg i16 %i.ik to i64
  %i.im = add i64 %.sroa.0.0.lcssa.i.i.i, %i.il
  %i.in = and i64 %i.im, %.val3.i.i               ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.val.i.i60, i64 %i.in
  %i.ip = load i8, ptr %i.io, align 1, !noalias !21763, !noundef !28 ; 2 uses
  %i.iq = icmp sgt i8 %i.ip, -1
  br i1 %i.iq, label %bb.ag, label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i, !prof !44

bb.ag:                                            ; preds = %._crit_edge.i.i.i
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i60, align 16, !noalias !21763
  %i.ir = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.is = bitcast <16 x i1> %i.ir to i16          ; 2 uses
  %.not.i6.i.i.i = icmp ne i16 %i.is, 0
  %i.it = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.is, i1 true)
  %i.iu = zext nneg i16 %i.it to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i)
  %.phi.trans.insert.i.i62 = getelementptr inbounds nuw i8, ptr %.val.i.i60, i64 %i.iu
  %.pre.i.i63 = load i8, ptr %.phi.trans.insert.i.i62, align 1, !noalias !21763
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.af, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i, %bb.af ]
  %i.iv = phi i64 [ %i.iw, %.lr.ph.i.i.i ], [ 0, %bb.af ]
  %i.iw = add i64 %i.iv, 16                       ; 2 uses
  %i.ix = add i64 %i.iw, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i = and i64 %i.ix, %.val3.i.i    ; 3 uses
  %i.iy = getelementptr inbounds nuw i8, ptr %.val.i.i60, i64 %.sroa.0.0.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.iy, align 1, !noalias !21762
  %i.iz = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.ja = bitcast <16 x i1> %i.iz to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ja, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !66

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.ag, %._crit_edge.i.i.i
  %i.jb = phi i8 [ %.pre.i.i63, %bb.ag ], [ %i.ip, %._crit_edge.i.i.i ]
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.iu, %bb.ag ], [ %i.in, %._crit_edge.i.i.i ] ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %.val.i.i60, i64 %.sroa.0.0.i5.i.i.i
  %i.jd = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.je = and i64 %i.jd, %.val3.i.i
  store i8 %i.hh, ptr %i.jc, align 1, !noalias !21763
  %i.jf = getelementptr i8, ptr %.val.i.i60, i64 %i.je
  %i.jg = getelementptr i8, ptr %i.jf, i64 16
  store i8 %i.hh, ptr %i.jg, align 1, !noalias !21763
  %i.jh = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.ji = getelementptr inbounds [32 x i8], ptr %.val.i.i60, i64 %i.jh ; 5 uses
  %i.jj = and i8 %i.jb, 1
  %i.jk = zext nneg i8 %i.jj to i64
  %i.jl = getelementptr inbounds i8, ptr %i.ji, i64 -32
  store i64 %i.he, ptr %i.jl, align 8, !noalias !21764
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ji, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !21764
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ji, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !21764
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.ji, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !21764
  %i.jm = load <2 x i64>, ptr %i.v, align 8, !alias.scope !21760, !noalias !21761
  %i.jn = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.jk, i64 0
  %i.jo = sub <2 x i64> %i.jm, %i.jn
  store <2 x i64> %i.jo, ptr %i.v, align 8, !alias.scope !21760, !noalias !21761
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i.i53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i
  %.pn.i = phi ptr [ %i.ji, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i ], [ %i.hu, %bb.ah ] ; 3 uses
  %.sroa.0.0.i61 = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.jp = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.jq = load i64, ptr %i.jp, align 8, !alias.scope !21765, !noundef !28 ; 3 uses
  %i.jr = load i64, ptr %.sroa.0.0.i61, align 8, !range !43, !alias.scope !21765, !noundef !28
  %i.js = icmp eq i64 %i.jq, %i.jr
  br i1 %i.js, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs2FJGJNE9lTN_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i61) #73
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.jt = getelementptr inbounds i8, ptr %.pn.i, i64 -16
  %i.ju = load ptr, ptr %i.jt, align 8, !alias.scope !21765, !nonnull !28, !noundef !28
  %i.jv = getelementptr inbounds nuw [8 x i8], ptr %i.ju, i64 %i.jq
  store i64 %.sroa.0.092152, ptr %i.jv, align 8
  %i.jw = add i64 %i.jq, 1
  store i64 %i.jw, ptr %i.jp, align 8, !alias.scope !21765
  %exitcond.not = icmp eq i64 %i.ao, %i.w
  br i1 %exitcond.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.preheader, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB4_5utils12OffsetLookupmEB15_ECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i64 noundef %4, i64 noundef %5, i64 %6, i32 noundef range(i32 -1, 1000000000) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !40, !noalias !21858, !noundef !28
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i, !prof !29

._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.d, align 8, !noalias !21859
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !21859
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit

_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RNvNtNtNtCsaKJjC64KgbL_3std3sys6random5linux19hashmap_random_keys(), !noalias !21860 ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.j, ptr %i.k, align 8, !noalias !21860
  store i8 1, ptr %i.e, align 8, !noalias !21860
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit

_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit: ; preds = %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i
  %.pre-phi174 = phi i64 [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i ], [ %i.j, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i ]
  %i.l = phi i64 [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i ], [ %i.i, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i ] ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.d, align 8, !noalias !21859
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @125, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store i64 %.pre-phi174, ptr %.sroa.5.0..sroa_idx, align 8
  %i.n = icmp ult i64 %1, %2
  br i1 %i.n, label %.lr.ph, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.preheader

.lr.ph:                                           ; preds = %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !28
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.w = sub nuw i64 %2, %1
  br label %bb.b

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.preheader: ; preds = %bb.ak, %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit
  %i.x = icmp ult i64 %4, %5
  br i1 %i.x, label %.lr.ph152, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit17

.lr.ph152:                                        ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.preheader
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load i64, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ab = load i64, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !28
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !28
  %i.am = sub nuw i64 %5, %4
  br label %bb.c

.loopexit:                                        ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.aj, %bb.ae, %bb.w
  %lpad.loopexit124 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke
  %lpad.loopexit.split-lp125 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit124, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp125, %.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #71
  resume { ptr, i32 } %lpad.phi

bb.b:                                             ; preds = %.lr.ph, %bb.ak
  %.sroa.0.089149 = phi i64 [ %1, %.lr.ph ], [ %i.an, %bb.ak ] ; 3 uses
  %.sroa.8.0148 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.ak ] ; 2 uses
  %i.an = add nuw i64 %.sroa.0.089149, 1
  %i.ao = add i64 %.sroa.8.0148, 1                ; 2 uses
  %i.ap = and i64 %.sroa.8.0148, 1023
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.w, label %bb.y

bb.c:                                             ; preds = %.lr.ph152, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit
  %.sroa.068.0151 = phi i64 [ %4, %.lr.ph152 ], [ %i.ar, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit ] ; 2 uses
  %.sroa.870.0150 = phi i64 [ 0, %.lr.ph152 ], [ %i.as, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit ] ; 2 uses
  %i.ar = add nuw i64 %.sroa.068.0151, 1
  %i.as = add i64 %.sroa.870.0150, 1              ; 2 uses
  %i.at = and i64 %.sroa.870.0150, 1023
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.h, label %bb.j

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit17: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !21861)
  call void @llvm.experimental.noalias.scope.decl(metadata !21862)
  call void @llvm.experimental.noalias.scope.decl(metadata !21863)
  call void @llvm.experimental.noalias.scope.decl(metadata !21864)
  call void @llvm.experimental.noalias.scope.decl(metadata !21865)
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !21866, !noundef !28 ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37, label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit17
  call void @llvm.experimental.noalias.scope.decl(metadata !21867)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !21868, !noundef !28 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.c, align 8, !alias.scope !21868, !nonnull !28, !noundef !28 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bb, align 16, !noalias !21869
  %i.bc = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.be = bitcast <16 x i1> %i.bc to i16
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, %bb.e
  %.sroa.06.017.i.i.i.i.i.i = phi ptr [ %i.bb, %bb.e ], [ %.sroa.06.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.e ], [ %.sroa.6.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i = phi i16 [ %i.be, %bb.e ], [ %i.bn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i = phi i64 [ %i.az, %bb.e ], [ %i.bq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %i.bf = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.bg = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i, %bb.f ]
  %.val9.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bf, align 16, !noalias !21870
  %i.bh = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -512 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bh to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i, %bb.f ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i, %bb.f ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i, %bb.f ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.bk = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.bl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = and i16 %i.bk, %.lcssa.i.i.i.i.i.i.i
  %i.bo = sub nsw i64 0, %i.bm
  %i.bp = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i, i64 %i.bo ; 2 uses
  %i.bq = add i64 %.sroa.108.014.i.i.i.i.i.i, -1  ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 -24
  %.val.i.i.i.i.i.i = load i64, ptr %i.br, align 8, !alias.scope !21871, !noalias !21868 ; 2 uses
  %i.bs = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.bs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %i.bt = getelementptr i8, ptr %i.bp, i64 -16
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !noalias !21868, !nonnull !28, !noundef !28
  %i.bu = shl nuw i64 %.val.i.i.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !21872
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %bb.g, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %i.bv = icmp eq i64 %i.bq, 0
  br i1 %i.bv, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.f

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, %bb.d
  %i.bw = shl i64 %i.aw, 5                        ; 2 uses
  %i.bx = add i64 %i.bw, 32                       ; 2 uses
  %i.by = add i64 %i.aw, 17
  %i.bz = add i64 %i.by, %i.bx                    ; 4 uses
  %i.ca = icmp uge i64 %i.bz, %i.bx
  %i.cb = icmp ult i64 %i.bz, 9223372036854775793
  call void @llvm.assume(i1 %i.ca)
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.bz, 0
  br i1 %i.cc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37.sink.split: ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i32
  %.sink = phi i64 [ %i.fo, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i32 ], [ %i.bw, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ]
  %.sink221 = phi i64 [ %i.fr, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i32 ], [ %i.bz, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ]
  %.sroa.0.0.ph = phi i8 [ %.sroa.0.2, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i32 ], [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ]
  %i.cd = load ptr, ptr %i.c, align 8, !nonnull !28, !noundef !28
  %i.ce = sub nuw nsw i64 -32, %.sink
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef %.sink221, i64 noundef range(i64 1, -9223372036854775807) 16) #69, !noalias !28
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37.sink.split, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit17, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i32, %.loopexit123
  %.sroa.0.0 = phi i8 [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ], [ %.sroa.0.2, %.loopexit123 ], [ %.sroa.0.2, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i32 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit17 ], [ %.sroa.0.0.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit37.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i8 %.sroa.0.0

bb.h:                                             ; preds = %bb.c
  %i.cg = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %6, i32 noundef %7)
          to label %bb.i unwind label %.loopexit

bb.i:                                             ; preds = %bb.h
  br i1 %i.cg, label %.loopexit123, label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ch = sub i64 %.sroa.068.0151, %i.z           ; 3 uses
  %i.ci = icmp ult i64 %i.ch, %i.ab
  br i1 %i.ci, label %bb.k, label %.invoke

bb.k:                                             ; preds = %bb.j
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ch
  %.val15 = load i32, ptr %i.cj, align 4, !noundef !28 ; 5 uses
  %.sroa.4.0.extract.shift.i.i = lshr i32 %.val15, 8
  %.sroa.5.0.extract.shift.i.i = lshr i32 %.val15, 16
  %.sroa.6.0.extract.shift.i.i = lshr i32 %.val15, 24
  %.sroa.6.0.extract.trunc.i.i = zext nneg i32 %.sroa.6.0.extract.shift.i.i to i64
  %i.ck = and i32 %.val15, 255
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = xor i64 %i.cl, -3750763034362895579
  %i.cn = mul i64 %i.cm, 1099511628211
  %i.co = and i32 %.sroa.4.0.extract.shift.i.i, 255
  %i.cp = zext nneg i32 %i.co to i64
  %i.cq = xor i64 %i.cn, %i.cp
  %i.cr = mul i64 %i.cq, 1099511628211
  %i.cs = and i32 %.sroa.5.0.extract.shift.i.i, 255
  %i.ct = zext nneg i32 %i.cs to i64
  %i.cu = xor i64 %i.cr, %i.ct
  %i.cv = mul i64 %i.cu, 1099511628211
  %i.cw = xor i64 %i.cv, %.sroa.6.0.extract.trunc.i.i
  %i.cx = mul i64 %i.cw, 1099511628211            ; 2 uses
  store i64 %i.cx, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !21873)
  %i.cy = load i64, ptr %i.ae, align 8, !alias.scope !21873, !noalias !21874, !noundef !28
  %i.cz = icmp eq i64 %i.cy, 0
  br i1 %i.cz, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !21873, !noalias !21874, !noundef !28
  %.val5.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !21873, !noalias !21874, !noundef !28
  %i.da = call fastcc noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRyECskXtk6F4WjxZ_4just(i64 %.val.i, i64 %.val5.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b), !noalias !21873 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !21875)
  call void @llvm.experimental.noalias.scope.decl(metadata !21876)
  %i.db = lshr i64 %i.da, 57
  %i.dc = trunc nuw nsw i64 %i.db to i8
  %i.dd = load i64, ptr %i.af, align 8, !alias.scope !21877, !noalias !21878, !noundef !28 ; 2 uses
  %i.de = load ptr, ptr %i.c, align 8, !alias.scope !21877, !noalias !21878, !nonnull !28, !noundef !28 ; 2 uses
  %i.df = insertelement <16 x i8> poison, i8 %i.dc, i64 0
  %i.dg = shufflevector <16 x i8> %i.df, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %bb.l
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.l ], [ %i.dx, %bb.o ]
  %.pn.i.i = phi i64 [ %i.da, %bb.l ], [ %i.dy, %bb.o ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i, %i.dd     ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.de, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i24.i.i = load <16 x i8>, ptr %i.dh, align 1, !noalias !21879 ; 2 uses
  %i.di = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, %i.dg
  %i.dj = bitcast <16 x i1> %i.di to i16          ; 2 uses
  %.not.i.not30.i.i = icmp eq i16 %i.dj, 0
  br i1 %.not.i.not30.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.m, %bb.n
  %.sroa.06.0.i31.i.i = phi i16 [ %i.dw, %bb.n ], [ %i.dj, %bb.m ] ; 3 uses
  %i.dk = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i, i1 true)
  %i.dl = zext nneg i16 %i.dk to i64
  %i.dm = add i64 %.sroa.01.0.i.i.i, %i.dl
  %i.dn = and i64 %i.dm, %i.dd
  %i.do = sub nsw i64 0, %i.dn
  %i.dp = getelementptr inbounds [32 x i8], ptr %i.de, i64 %i.do ; 3 uses
  %i.dq = getelementptr inbounds i8, ptr %i.dp, i64 -32
  %.val2.i.i.i = load i64, ptr %i.dq, align 8, !noalias !21880, !noundef !28
  %i.dr = icmp eq i64 %i.cx, %.val2.i.i.i
  br i1 %i.dr, label %bb.p, label %bb.n, !prof !29

._crit_edge.i.i:                                  ; preds = %bb.n, %bb.m
  %i.ds = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i, splat (i8 -1)
  %i.dt = bitcast <16 x i1> %i.ds to i16
  %i.du = icmp eq i16 %i.dt, 0
  br i1 %i.du, label %bb.o, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit, !prof !44

bb.n:                                             ; preds = %.lr.ph.i.i
  %i.dv = add i16 %.sroa.06.0.i31.i.i, -1
  %i.dw = and i16 %i.dv, %.sroa.06.0.i31.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.dw, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.o:                                             ; preds = %._crit_edge.i.i
  %i.dx = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.dy = add i64 %.sroa.01.0.i.i.i, %i.dx
  br label %bb.m

bb.p:                                             ; preds = %.lr.ph.i.i
  %i.dz = getelementptr inbounds i8, ptr %i.dp, i64 -16
end_hunk_1
begin_hunk_2_@_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB4_5utils12OffsetLookupmEB15_ECskXtk6F4WjxZ_4just:bb.a
  %.sroa.0.07.i.i.i = and i64 %.val3.i.i, %i.gn   ; 3 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %.val.i.i57, i64 %.sroa.0.07.i.i.i
  %.sroa.0.0.copyload.i68.i.i.i = load <16 x i8>, ptr %i.hp, align 1, !noalias !21907
  %i.hq = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i.i.i, zeroinitializer
  %i.hr = bitcast <16 x i1> %i.hq to i16          ; 2 uses
  %.not.i9.i.i.i = icmp eq i16 %i.hr, 0
  br i1 %.not.i9.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !65

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.af
  %.sroa.0.0.lcssa.i.i.i = phi i64 [ %.sroa.0.07.i.i.i, %bb.af ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ]
  %.lcssa.i.i.i = phi i16 [ %i.hr, %bb.af ], [ %i.ii, %.lr.ph.i.i.i ]
  %i.hs = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.ht = zext nneg i16 %i.hs to i64
  %i.hu = add i64 %.sroa.0.0.lcssa.i.i.i, %i.ht
  %i.hv = and i64 %i.hu, %.val3.i.i               ; 2 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %.val.i.i57, i64 %i.hv
  %i.hx = load i8, ptr %i.hw, align 1, !noalias !21908, !noundef !28 ; 2 uses
  %i.hy = icmp sgt i8 %i.hx, -1
  br i1 %i.hy, label %bb.ag, label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i, !prof !44

bb.ag:                                            ; preds = %._crit_edge.i.i.i
  %.val2.i.i.i.i = load <16 x i8>, ptr %.val.i.i57, align 16, !noalias !21908
  %i.hz = icmp slt <16 x i8> %.val2.i.i.i.i, zeroinitializer
  %i.ia = bitcast <16 x i1> %i.hz to i16          ; 2 uses
  %.not.i6.i.i.i = icmp ne i16 %i.ia, 0
  %i.ib = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ia, i1 true)
  %i.ic = zext nneg i16 %i.ib to i64              ; 2 uses
  call void @llvm.assume(i1 %.not.i6.i.i.i)
  %.phi.trans.insert.i.i59 = getelementptr inbounds nuw i8, ptr %.val.i.i57, i64 %i.ic
  %.pre.i.i60 = load i8, ptr %.phi.trans.insert.i.i59, align 1, !noalias !21908
  br label %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i

.lr.ph.i.i.i:                                     ; preds = %bb.af, %.lr.ph.i.i.i
  %.sroa.0.010.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.07.i.i.i, %bb.af ]
  %i.id = phi i64 [ %i.ie, %.lr.ph.i.i.i ], [ 0, %bb.af ]
  %i.ie = add i64 %i.id, 16                       ; 2 uses
  %i.if = add i64 %i.ie, %.sroa.0.010.i.i.i
  %.sroa.0.0.i.i.i = and i64 %i.if, %.val3.i.i    ; 3 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.val.i.i57, i64 %.sroa.0.0.i.i.i
  %.sroa.0.0.copyload.i6.i.i.i = load <16 x i8>, ptr %i.ig, align 1, !noalias !21907
  %i.ih = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i.i.i, zeroinitializer
  %i.ii = bitcast <16 x i1> %i.ih to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.ii, 0
  br i1 %.not.i.i.i.i, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i, !prof !66

_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i: ; preds = %bb.ag, %._crit_edge.i.i.i
  %i.ij = phi i8 [ %.pre.i.i60, %bb.ag ], [ %i.hx, %._crit_edge.i.i.i ]
  %.sroa.0.0.i5.i.i.i = phi i64 [ %i.ic, %bb.ag ], [ %i.hv, %._crit_edge.i.i.i ] ; 3 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %.val.i.i57, i64 %.sroa.0.0.i5.i.i.i
  %i.il = add i64 %.sroa.0.0.i5.i.i.i, -16
  %i.im = and i64 %i.il, %.val3.i.i
  store i8 %i.gp, ptr %i.ik, align 1, !noalias !21908
  %i.in = getelementptr i8, ptr %.val.i.i57, i64 %i.im
  %i.io = getelementptr i8, ptr %i.in, i64 16
  store i8 %i.gp, ptr %i.io, align 1, !noalias !21908
  %i.ip = sub nsw i64 0, %.sroa.0.0.i5.i.i.i
  %i.iq = getelementptr inbounds [32 x i8], ptr %.val.i.i57, i64 %i.ip ; 5 uses
  %i.ir = and i8 %i.ij, 1
  %i.is = zext nneg i8 %i.ir to i64
  %i.it = getelementptr inbounds i8, ptr %i.iq, i64 -32
  store i64 %i.gm, ptr %i.it, align 8, !noalias !21909
  %.sroa.49.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.iq, i64 -24
  store i64 0, ptr %.sroa.49.0..sroa_idx.i, align 8, !noalias !21909
  %.sroa.510.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.iq, i64 -16
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.510.0..sroa_idx.i, align 8, !noalias !21909
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds i8, ptr %i.iq, i64 -8
  store i64 0, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !21909
  %i.iu = load <2 x i64>, ptr %i.v, align 8, !alias.scope !21905, !noalias !21906
  %i.iv = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.is, i64 0
  %i.iw = sub <2 x i64> %i.iu, %i.iv
  store <2 x i64> %i.iw, ptr %i.v, align 8, !alias.scope !21905, !noalias !21906
  br label %bb.ai

bb.ah:                                            ; preds = %.lr.ph.i.i50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i
  %.pn.i = phi ptr [ %i.iq, %_RNvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB5_8RawTableTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE14insert_no_growCskXtk6F4WjxZ_4just.exit.i ], [ %i.hc, %bb.ah ] ; 3 uses
  %.sroa.0.0.i58 = getelementptr inbounds i8, ptr %.pn.i, i64 -24 ; 2 uses
  %i.ix = getelementptr inbounds i8, ptr %.pn.i, i64 -8 ; 2 uses
  %i.iy = load i64, ptr %i.ix, align 8, !alias.scope !21910, !noundef !28 ; 3 uses
  %i.iz = load i64, ptr %.sroa.0.0.i58, align 8, !range !43, !alias.scope !21910, !noundef !28
  %i.ja = icmp eq i64 %i.iy, %i.iz
  br i1 %i.ja, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCs2FJGJNE9lTN_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.0.0.i58) #73
          to label %bb.ak unwind label %.loopexit.split-lp.loopexit

bb.ak:                                            ; preds = %bb.ai, %bb.aj
  %i.jb = getelementptr inbounds i8, ptr %.pn.i, i64 -16
  %i.jc = load ptr, ptr %i.jb, align 8, !alias.scope !21910, !nonnull !28, !noundef !28
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jc, i64 %i.iy
  store i64 %.sroa.0.089149, ptr %i.jd, align 8
  %i.je = add i64 %i.iy, 1
  store i64 %i.je, ptr %i.ix, align 8, !alias.scope !21910
  %exitcond.not = icmp eq i64 %i.ao, %i.w
  br i1 %exitcond.not, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.preheader, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i8 0, 3) i8 @_RINvNtNtCsdftwklc2oBO_7similar10algorithms9preflight15has_common_itemINtNtB6_4text12TextDiffSideeEB15_ECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %3, i64 noundef %4, i64 noundef %5, i64 %6, i32 noundef range(i32 -1, 1000000000) %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 21 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !40, !noalias !22046, !noundef !28
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i, label %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i, !prof !29

._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i: ; preds = %bb.a
  %.pre.i.i = load i64, ptr %i.d, align 8, !noalias !22047
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.pre1.i.i = load i64, ptr %.phi.trans.insert.i.i, align 8, !noalias !22047
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit

_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i: ; preds = %bb.a
  %i.h = tail call { i64, i64 } @_RNvNtNtNtCsaKJjC64KgbL_3std3sys6random5linux19hashmap_random_keys(), !noalias !22048 ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0
  %i.j = extractvalue { i64, i64 } %i.h, 1        ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.j, ptr %i.k, align 8, !noalias !22048
  store i8 1, ptr %i.e, align 8, !noalias !22048
  br label %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit

_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit: ; preds = %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i
  %.pre-phi176 = phi i64 [ %.pre1.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i ], [ %i.j, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i ]
  %i.l = phi i64 [ %.pre.i.i, %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i ], [ %i.i, %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i ] ; 2 uses
  %i.m = add i64 %i.l, 1
  store i64 %i.m, ptr %i.d, align 8, !noalias !22047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) @125, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 4 uses
  store i64 %i.l, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store i64 %.pre-phi176, ptr %.sroa.5.0..sroa_idx, align 8
  %i.n = icmp ult i64 %1, %2
  br i1 %i.n, label %.lr.ph, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.preheader

.lr.ph:                                           ; preds = %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit
  %i.o = load i64, ptr %0, align 8, !range !41
  %i.p = trunc nuw i64 %i.o to i1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.r = load i64, ptr %i.q, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !28 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.w = sub nuw i64 %2, %1
  br label %bb.b

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.preheader: ; preds = %bb.au, %_RINvMs2_NtNtCsaKJjC64KgbL_3std6thread5localINtB6_8LocalKeyINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskXtk6F4WjxZ_4just.exit
  %i.x = icmp ult i64 %4, %5
  br i1 %i.x, label %.lr.ph157, label %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12

.lr.ph157:                                        ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.preheader
  %i.y = load i64, ptr %3, align 8, !range !41
  %i.z = trunc nuw i64 %i.y to i1                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !28 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ag = load i64, ptr %0, align 8, !range !41
  %i.ah = trunc nuw i64 %i.ag to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !28 ; 2 uses
  %i.am = sub nuw i64 %5, %4
  br label %bb.c

.loopexit136:                                     ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit:                      ; preds = %bb.at, %bb.ao, %bb.ac
  %lpad.loopexit139 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke
  %lpad.loopexit.split-lp140 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp

.loopexit.split-lp:                               ; preds = %.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp, %.loopexit136
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit136 ], [ %lpad.loopexit139, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp140, %.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(48) %i.c) #71
  resume { ptr, i32 } %lpad.phi

bb.b:                                             ; preds = %.lr.ph, %bb.au
  %.sroa.0.097154 = phi i64 [ %1, %.lr.ph ], [ %i.an, %bb.au ] ; 5 uses
  %.sroa.8.0153 = phi i64 [ 0, %.lr.ph ], [ %i.ao, %bb.au ] ; 2 uses
  %i.an = add nuw i64 %.sroa.0.097154, 1
  %i.ao = add i64 %.sroa.8.0153, 1                ; 2 uses
  %i.ap = and i64 %.sroa.8.0153, 1023
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.ac, label %bb.ae

bb.c:                                             ; preds = %.lr.ph157, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit
  %.sroa.076.0156 = phi i64 [ %4, %.lr.ph157 ], [ %i.ar, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit ] ; 6 uses
  %.sroa.878.0155 = phi i64 [ 0, %.lr.ph157 ], [ %i.as, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit ] ; 2 uses
  %i.ar = add nuw i64 %.sroa.076.0156, 1
  %i.as = add i64 %.sroa.878.0155, 1              ; 2 uses
  %i.at = and i64 %.sroa.878.0155, 1023
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %bb.h, label %bb.j

_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12: ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.preheader
  call void @llvm.experimental.noalias.scope.decl(metadata !22049)
  call void @llvm.experimental.noalias.scope.decl(metadata !22050)
  call void @llvm.experimental.noalias.scope.decl(metadata !22051)
  call void @llvm.experimental.noalias.scope.decl(metadata !22052)
  call void @llvm.experimental.noalias.scope.decl(metadata !22053)
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !22054, !noundef !28 ; 3 uses
  %i.ax = icmp eq i64 %i.aw, 0
  br i1 %i.ax, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit40, label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12
  call void @llvm.experimental.noalias.scope.decl(metadata !22055)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.az = load i64, ptr %i.ay, align 8, !alias.scope !22056, !noundef !28 ; 2 uses
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bb = load ptr, ptr %i.c, align 8, !alias.scope !22056, !nonnull !28, !noundef !28 ; 3 uses
  %.val3.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bb, align 16, !noalias !22057
  %i.bc = icmp sgt <16 x i8> %.val3.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  %i.be = bitcast <16 x i1> %i.bc to i16
  br label %bb.f

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, %bb.e
  %.sroa.06.017.i.i.i.i.i.i = phi ptr [ %i.bb, %bb.e ], [ %.sroa.06.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.016.i.i.i.i.i.i = phi ptr [ %i.bd, %bb.e ], [ %.sroa.6.1.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.87.015.i.i.i.i.i.i = phi i16 [ %i.be, %bb.e ], [ %i.bn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ] ; 2 uses
  %.sroa.108.014.i.i.i.i.i.i = phi i64 [ %i.az, %bb.e ], [ %i.bq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i = icmp eq i16 %.sroa.87.015.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.f, %.lr.ph.i.i.i.i.i.i.i
  %i.bf = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.6.016.i.i.i.i.i.i, %bb.f ] ; 2 uses
  %i.bg = phi ptr [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ], [ %.sroa.06.017.i.i.i.i.i.i, %bb.f ]
  %.val9.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.bf, align 16, !noalias !22058
  %i.bh = icmp sgt <16 x i8> %.val9.i.i.i.i.i.i.i, splat (i8 -1)
  %i.bi = getelementptr inbounds i8, ptr %i.bg, i64 -512 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bf, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.bh to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.f
  %.sroa.6.1.i.i.i.i.i.i = phi ptr [ %.sroa.6.016.i.i.i.i.i.i, %bb.f ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.06.1.i.i.i.i.i.i = phi ptr [ %.sroa.06.017.i.i.i.i.i.i, %bb.f ], [ %i.bi, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %.sroa.87.015.i.i.i.i.i.i, %bb.f ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.bk = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.bl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.bm = zext nneg i16 %i.bl to i64
  %i.bn = and i16 %i.bk, %.lcssa.i.i.i.i.i.i.i
  %i.bo = sub nsw i64 0, %i.bm
  %i.bp = getelementptr inbounds [32 x i8], ptr %.sroa.06.1.i.i.i.i.i.i, i64 %i.bo ; 2 uses
  %i.bq = add i64 %.sroa.108.014.i.i.i.i.i.i, -1  ; 2 uses
  %i.br = getelementptr i8, ptr %i.bp, i64 -24
  %.val.i.i.i.i.i.i = load i64, ptr %i.br, align 8, !alias.scope !22059, !noalias !22056 ; 2 uses
  %i.bs = icmp eq i64 %.val.i.i.i.i.i.i, 0
  br i1 %i.bs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %i.bt = getelementptr i8, ptr %i.bp, i64 -16
  %.val5.i.i.i.i.i.i = load ptr, ptr %i.bt, align 8, !noalias !22056, !nonnull !28, !noundef !28
  %i.bu = shl nuw i64 %.val.i.i.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val5.i.i.i.i.i.i, i64 noundef %i.bu, i64 noundef range(i64 1, -9223372036854775807) 8) #69, !noalias !22060
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i: ; preds = %bb.g, %_RINvMsi_NtCs37Y8JGf013z_9hashbrown3rawINtB6_12RawIterRangeTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEE9next_implKb0_ECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i
  %i.bv = icmp eq i64 %i.bq, 0
  br i1 %i.bv, label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, label %bb.f

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i, %bb.d
  %i.bw = shl i64 %i.aw, 5                        ; 2 uses
  %i.bx = add i64 %i.bw, 32                       ; 2 uses
  %i.by = add i64 %i.aw, 17
  %i.bz = add i64 %i.by, %i.bx                    ; 4 uses
  %i.ca = icmp uge i64 %i.bz, %i.bx
  %i.cb = icmp ult i64 %i.bz, 9223372036854775793
  call void @llvm.assume(i1 %i.ca)
  call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp eq i64 %i.bz, 0
  br i1 %i.cc, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit40, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit40.sink.split

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit40.sink.split: ; preds = %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i35
  %.sink = phi i64 [ %i.hn, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i35 ], [ %i.bw, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ]
  %.sink213 = phi i64 [ %i.hq, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i35 ], [ %i.bz, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ]
  %.sroa.0.0.ph = phi i8 [ %.sroa.0.2, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i35 ], [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ]
  %i.cd = load ptr, ptr %i.c, align 8, !nonnull !28, !noundef !28
  %i.ce = sub nuw nsw i64 -32, %.sink
  %i.cf = getelementptr inbounds i8, ptr %i.cd, i64 %i.ce
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cf, i64 noundef %.sink213, i64 noundef range(i64 1, -9223372036854775807) 16) #69, !noalias !28
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit40

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit40: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit40.sink.split, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i35, %.loopexit137
  %.sroa.0.0 = phi i8 [ 0, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i ], [ %.sroa.0.2, %.loopexit137 ], [ %.sroa.0.2, %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit.i.i.i.i.i35 ], [ 0, %_RNvXs_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_3ops5range5RangejEENtNtNtB8_6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit12 ], [ %.sroa.0.0.ph, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std11collections4hash3map7HashMapyINtNtCs4wP2HXfJTCR_5alloc3vec3VecjEEECskXtk6F4WjxZ_4just.exit40.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i8 %.sroa.0.0

bb.h:                                             ; preds = %bb.c
  %i.cg = invoke noundef zeroext i1 @_RNvNtCsdftwklc2oBO_7similar16deadline_support17deadline_exceeded(i64 %6, i32 noundef %7)
          to label %bb.i unwind label %.loopexit136

bb.i:                                             ; preds = %bb.h
  br i1 %i.cg, label %.loopexit137, label %bb.j

bb.j:                                             ; preds = %bb.c, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ch = icmp ult i64 %.sroa.076.0156, %i.ab     ; 4 uses
  br i1 %i.z, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  br i1 %i.ch, label %bb.n, label %.invoke

bb.l:                                             ; preds = %bb.j
  br i1 %i.ch, label %bb.m, label %.invoke

bb.m:                                             ; preds = %bb.l
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %.sroa.076.0156 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  br label %bb.o

bb.n:                                             ; preds = %bb.k
  %i.ck = getelementptr inbounds nuw [24 x i8], ptr %i.ad, i64 %.sroa.076.0156 ; 2 uses
  %i.cl = getelementptr i8, ptr %i.ck, i64 8
  %i.cm = getelementptr i8, ptr %i.ck, i64 16
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.5.1.i.in.i = phi ptr [ %i.cm, %bb.n ], [ %i.cj, %bb.m ]
  %.sroa.0.1.i.in.i = phi ptr [ %i.cl, %bb.n ], [ %i.ci, %bb.m ]
  %.sroa.0.1.i.i = load ptr, ptr %.sroa.0.1.i.in.i, align 8, !noalias !22061, !nonnull !28, !noundef !28 ; 2 uses
  %.sroa.5.1.i.i = load i64, ptr %.sroa.5.1.i.in.i, align 8, !noalias !22061, !noundef !28 ; 4 uses
  %i.cn = icmp samesign eq i64 %.sroa.5.1.i.i, 0
  br i1 %i.cn, label %.loopexit135, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.o
  %xtraiter252 = and i64 %.sroa.5.1.i.i, 7        ; 3 uses
  %i.co = icmp ult i64 %.sroa.5.1.i.i, 8
  br i1 %i.co, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter259 = and i64 %.sroa.5.1.i.i, -8
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %.sroa.0.0.i1.i.i = phi ptr [ %.sroa.0.1.i.i, %.lr.ph.i.i.preheader.new ], [ %i.dz, %.lr.ph.i.i ] ; 9 uses
  %i.cp = phi i64 [ -3750763034362895579, %.lr.ph.i.i.preheader.new ], [ %i.ed, %.lr.ph.i.i ]
  %niter260 = phi i64 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter260.next.7, %.lr.ph.i.i ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 1
  %i.cr = load i8, ptr %.sroa.0.0.i1.i.i, align 1, !alias.scope !22062, !noalias !22063, !noundef !28
  %i.cs = zext i8 %i.cr to i64
  %i.ct = xor i64 %i.cp, %i.cs
  %i.cu = mul i64 %i.ct, 1099511628211
  %i.cv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 2
  %i.cw = load i8, ptr %i.cq, align 1, !alias.scope !22062, !noalias !22063, !noundef !28
  %i.cx = zext i8 %i.cw to i64
  %i.cy = xor i64 %i.cu, %i.cx
  %i.cz = mul i64 %i.cy, 1099511628211
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 3
  %i.db = load i8, ptr %i.cv, align 1, !alias.scope !22062, !noalias !22063, !noundef !28
  %i.dc = zext i8 %i.db to i64
  %i.dd = xor i64 %i.cz, %i.dc
  %i.de = mul i64 %i.dd, 1099511628211
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 4
  %i.dg = load i8, ptr %i.da, align 1, !alias.scope !22062, !noalias !22063, !noundef !28
  %i.dh = zext i8 %i.dg to i64
  %i.di = xor i64 %i.de, %i.dh
  %i.dj = mul i64 %i.di, 1099511628211
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 5
  %i.dl = load i8, ptr %i.df, align 1, !alias.scope !22062, !noalias !22063, !noundef !28
  %i.dm = zext i8 %i.dl to i64
  %i.dn = xor i64 %i.dj, %i.dm
  %i.do = mul i64 %i.dn, 1099511628211
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 6
  %i.dq = load i8, ptr %i.dk, align 1, !alias.scope !22062, !noalias !22063, !noundef !28
  %i.dr = zext i8 %i.dq to i64
  %i.ds = xor i64 %i.do, %i.dr
  %i.dt = mul i64 %i.ds, 1099511628211
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 7
  %i.dv = load i8, ptr %i.dp, align 1, !alias.scope !22062, !noalias !22063, !noundef !28
  %i.dw = zext i8 %i.dv to i64
  %i.dx = xor i64 %i.dt, %i.dw
  %i.dy = mul i64 %i.dx, 1099511628211
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i1.i.i, i64 8 ; 2 uses
  %i.ea = load i8, ptr %i.du, align 1, !alias.scope !22062, !noalias !22063, !noundef !28
  %i.eb = zext i8 %i.ea to i64
  %i.ec = xor i64 %i.dy, %i.eb
  %i.ed = mul i64 %i.ec, 1099511628211            ; 3 uses
  %niter260.next.7 = add nuw i64 %niter260, 8     ; 2 uses
  %niter260.ncmp.7 = icmp eq i64 %niter260.next.7, %unroll_iter259
  br i1 %niter260.ncmp.7, label %.loopexit135.loopexit.unr-lcssa, label %.lr.ph.i.i

.loopexit135.loopexit.unr-lcssa:                  ; preds = %.lr.ph.i.i
  %lcmp.mod256.not = icmp eq i64 %xtraiter252, 0
  br i1 %lcmp.mod256.not, label %.loopexit135.loopexit, label %.lr.ph.i.i.epil.preheader
end_hunk_2
