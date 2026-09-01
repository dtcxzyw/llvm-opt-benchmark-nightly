Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ty_ide-5238a03d733167e5.ty_ide.f0a32a9ffe11fdd8-cgu.09?download=true
inline.NumInlined: 900
inline.NumDeleted: 465
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMNtCskEUeM34gmJU_6ty_ide7symbolsNtB2_12QueryPattern20is_match_symbol_name:bb.a

._crit_edge.i:                                    ; preds = %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECskEUeM34gmJU_6ty_ide.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 168
  %i.p = load ptr, ptr %i.o, align 8, !noalias !384 ; 6 uses
  %i.q = load i64, ptr %i.p, align 8, !range !106, !noalias !384, !noundef !13
  %i.r = trunc nuw i64 %i.q to i1
  br i1 %i.r, label %bb.b, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i

bb.b:                                             ; preds = %._crit_edge.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.t = load i64, ptr %i.s, align 8, !noalias !384
  %i.u = icmp ult i64 %2, %i.t
  br i1 %i.u, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.p, i64 60
  %i.w = load i32, ptr %i.v, align 4, !noalias !384, !noundef !13
  %i.x = and i32 %i.w, 1
  %.not8.i.i = icmp eq i32 %i.x, 0
  br i1 %.not8.i.i, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.z = load i32, ptr %i.y, align 8, !noalias !384, !noundef !13
  %i.aa = and i32 %i.z, 2
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !range !106, !noalias !384, !noundef !13
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i: ; preds = %bb.e
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ag = load i64, ptr %i.af, align 8, !noalias !384
  %i.ah = icmp ugt i64 %2, %i.ag
  br i1 %i.ah, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i, label %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i: ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i, %bb.b, %_RINvMNtNtCs98D8VPWzHuM_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECskEUeM34gmJU_6ty_ide.exit
  store i64 0, ptr %i.e, align 8, !alias.scope !379, !noalias !388
  br label %_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_5Regex11search_half.exit

_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i: ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.i, %bb.e, %bb.d, %bb.c, %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.ai = tail call noundef i64 @_RINvMs2_NtNtCs2AWtUsOyxgP_3std6thread5localINtB6_8LocalKeyjE4withNCNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB19_4PoolNtNtNtB1f_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB2b_NtNtB3i_6marker4SendNtNtNtB3i_5panic11unwind_safe13RefUnwindSafeNtB4r_10UnwindSafeNtB47_4SyncEL_EE3get0jECskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @59), !noalias !389 ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.val3, i64 40 ; 2 uses
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8, !noalias !389 ; 2 uses
  %i.al = icmp eq i64 %i.ai, %i.ak
  br i1 %i.al, label %_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCskEUeM34gmJU_6ty_ide.exit.i.thread, label %_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCskEUeM34gmJU_6ty_ide.exit.i, !prof !6

_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCskEUeM34gmJU_6ty_ide.exit.i.thread: ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i
  store atomic i64 1, ptr %i.aj release, align 8, !noalias !389
  %i.am = inttoptr i64 %i.ai to ptr
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %.val3, ptr %i.an, align 8, !noalias !382
  store i64 1, ptr %i.d, align 8, !noalias !382
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.am, ptr %i.ao, align 8, !noalias !382
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i8 0, ptr %i.ap, align 8, !noalias !382
  %i.aq = load ptr, ptr %i.j, align 8, !noalias !382, !nonnull !13, !noundef !13
  %i.ar = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !382, !nonnull !13, !align !83, !noundef !13 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 8, !range !85, !invariant.load !13, !noalias !382
  %i.av = add nsw i64 %i.au, -1
  %i.aw = and i64 %i.av, -16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 %i.aw
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  br label %bb.f

_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCskEUeM34gmJU_6ty_ide.exit.i: ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread.i
  call fastcc void @_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE8get_slowCskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(32) %i.d, ptr noundef nonnull align 8 %.val3, i64 noundef %i.ai, i64 noundef %i.ak), !noalias !382
  %.pre = load i64, ptr %i.d, align 8, !range !106, !noalias !382
  %i.az = trunc nuw i64 %.pre to i1
  %i.ba = load ptr, ptr %i.j, align 8, !noalias !382, !nonnull !13, !noundef !13
  %i.bb = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !382, !nonnull !13, !align !83, !noundef !13 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !range !85, !invariant.load !13, !noalias !382
  %i.bf = add nsw i64 %i.be, -1
  %i.bg = and i64 %i.bf, -16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  br i1 %i.az, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCskEUeM34gmJU_6ty_ide.exit.i.thread, %_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCskEUeM34gmJU_6ty_ide.exit.i
  %i.bj = phi ptr [ %i.ay, %_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCskEUeM34gmJU_6ty_ide.exit.i.thread ], [ %i.bi, %_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCskEUeM34gmJU_6ty_ide.exit.i ]
  %i.bk = phi ptr [ %i.as, %_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCskEUeM34gmJU_6ty_ide.exit.i.thread ], [ %i.bc, %_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCskEUeM34gmJU_6ty_ide.exit.i ]
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !382, !nonnull !13, !align !83, !noundef !13
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 48
  br label %bb.h

bb.g:                                             ; preds = %_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE3getCskEUeM34gmJU_6ty_ide.exit.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !382, !nonnull !13, !noundef !13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.bq = phi ptr [ %i.bj, %bb.f ], [ %i.bi, %bb.g ]
  %i.br = phi ptr [ %i.bk, %bb.f ], [ %i.bc, %bb.g ]
  %i.bs = phi i1 [ true, %bb.f ], [ false, %bb.g ]
  %.sroa.0.0.i = phi ptr [ %i.bn, %bb.f ], [ %i.bp, %bb.g ]
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 88
  %i.bu = load ptr, ptr %i.bt, align 8, !invariant.load !13, !noalias !382, !nonnull !13
  invoke void %i.bu(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noundef nonnull %i.bq, ptr noalias noundef nonnull align 8 dereferenceable(1400) %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f)
          to label %bb.i unwind label %bb.o

bb.i:                                             ; preds = %bb.h
  %.sroa.46.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.46.0.copyload.i = load ptr, ptr %.sroa.46.0..sroa_idx.i4, align 8, !noalias !382 ; 7 uses
  %.sroa.57.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.57.0.copyload.i = load ptr, ptr %.sroa.57.0..sroa_idx.i, align 8, !noalias !382 ; 4 uses
  %i.bv = ptrtoint ptr %.sroa.46.0.copyload.i to i64 ; 2 uses
  br i1 %i.bs, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !392
  store i64 %i.bv, ptr %i.c, align 8, !noalias !392
  %i.bw = icmp eq ptr %.sroa.46.0.copyload.i, inttoptr (i64 2 to ptr)
  br i1 %i.bw, label %.noexc9.i, label %.noexc10.i, !prof !49

bb.k:                                             ; preds = %bb.i
  %.sroa.68.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.68.0.copyload.i = load i8, ptr %.sroa.68.0..sroa_idx.i, align 8, !noalias !382
  %i.bx = trunc nuw i8 %.sroa.68.0.copyload.i to i1
  br i1 %i.bx, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload.i) ]
  call fastcc void @_RNvMs2_NtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5innerINtB5_4PoolNtNtNtBb_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtCs4NRVxsYgnAr_4core3ops8function2FnuEp6OutputB16_NtNtB2c_6marker4SendNtNtNtB2c_5panic11unwind_safe13RefUnwindSafeNtB3l_10UnwindSafeNtB31_4SyncEL_EE9put_valueCskEUeM34gmJU_6ty_ide(ptr noundef nonnull align 8 %.sroa.57.0.copyload.i, ptr noalias noundef nonnull align 8 %.sroa.46.0.copyload.i), !noalias !379
  br label %_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_5Regex11search_half.exit

bb.m:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.46.0.copyload.i) ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs98D8VPWzHuM_14regex_automata4meta5regex5CacheECskEUeM34gmJU_6ty_ide(ptr noalias noundef nonnull align 8 dereferenceable(1400) %.sroa.46.0.copyload.i)
          to label %.noexc8.i unwind label %.body.thread.i, !noalias !379

.body.thread.i:                                   ; preds = %bb.m
  %i.by = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload.i, i64 noundef 1400, i64 noundef 8) #32, !noalias !379
  br label %bb.n

.noexc8.i:                                        ; preds = %bb.m
  call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.46.0.copyload.i, i64 noundef 1400, i64 noundef 8) #32, !noalias !379
  br label %_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_5Regex11search_half.exit

.noexc9.i:                                        ; preds = %bb.j
  call void @_RINvNtCs4NRVxsYgnAr_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @_RNvNtNtNtCs98D8VPWzHuM_14regex_automata4util4pool5inner17THREAD_ID_DROPPED, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @66) #30, !noalias !379
  unreachable

.noexc10.i:                                       ; preds = %bb.j
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.57.0.copyload.i) ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.57.0.copyload.i, i64 40
  store atomic i64 %i.bv, ptr %i.bz release, align 8, !noalias !379
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !392
  br label %_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_5Regex11search_half.exit

bb.n:                                             ; preds = %bb.o, %.body.thread.i
  %eh.lpad-body17.i = phi { ptr, i32 } [ %i.by, %.body.thread.i ], [ %lpad.thr_comm.split-lp.i, %bb.o ]
  resume { ptr, i32 } %eh.lpad-body17.i

bb.o:                                             ; preds = %bb.h
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCs98D8VPWzHuM_14regex_automata4util4pool9PoolGuardNtNtNtBI_4meta5regex5CacheINtNtCscdodAO9FK5_5alloc5boxed3BoxDINtNtNtB4_3ops8function2FnuEp6OutputB1w_NtNtB4_6marker4SendNtNtNtB4_5panic11unwind_safe13RefUnwindSafeNtB3u_10UnwindSafeNtB3b_4SyncEL_EEECskEUeM34gmJU_6ty_ide(ptr noalias noundef align 8 dereferenceable(32) %i.d) #33
          to label %bb.n unwind label %bb.p, !noalias !379

bb.p:                                             ; preds = %bb.o
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #31, !noalias !379
  unreachable

_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_5Regex11search_half.exit: ; preds = %_RNvMs4_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_9RegexInfo13is_impossible.exit.thread13.i, %bb.l, %.noexc8.i, %.noexc10.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.cb = load i64, ptr %i.e, align 8, !range !106, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.cc = trunc nuw i64 %i.cb to i1
  br label %bb.r

bb.q:                                             ; preds = %bb.a
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ce = load i8, ptr %i.cd, align 8, !range !108, !noundef !13
  %i.cf = trunc nuw i8 %i.ce to i1
  br i1 %i.cf, label %bb.cc, label %bb.s

bb.r:                                             ; preds = %bb.cc, %bb.cd, %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, %_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_5Regex11search_half.exit
  %.sroa.0.0 = phi i1 [ %i.cc, %_RNvMs0_NtNtCs98D8VPWzHuM_14regex_automata4meta5regexNtB5_5Regex11search_half.exit ], [ %i.ny, %bb.cd ], [ %i.ns, %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit ], [ false, %bb.cc ]
  ret i1 %.sroa.0.0

bb.s:                                             ; preds = %bb.q
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ch = load ptr, ptr %i.cg, align 8, !nonnull !13, !noundef !13 ; 9 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cj = load i64, ptr %i.ci, align 8, !noundef !13 ; 18 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !398)
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cl = icmp ult i64 %i.cj, %2
  br i1 %i.cl, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.cm = icmp eq i64 %i.cj, 1
  br i1 %i.cm, label %bb.x, label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.cn = icmp eq i64 %i.cj, %2
  br i1 %i.cn, label %bb.cb, label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

bb.w:                                             ; preds = %bb.u
  %i.co = icmp ult i64 %i.cj, 33
  br i1 %i.co, label %bb.bl, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i

bb.x:                                             ; preds = %bb.u
  %i.cp = load i8, ptr %i.ch, align 1, !alias.scope !395, !noalias !398, !noundef !13 ; 2 uses
  %i.cq = icmp samesign ult i64 %2, 16
  br i1 %i.cq, label %.lr.ph.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cr = tail call { i64, i64 } @_RNvNtNtCs4NRVxsYgnAr_4core5slice6memchr14memchr_aligned(i8 noundef %i.cp, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2)
  %i.cs = extractvalue { i64, i64 } %i.cr, 0
  %i.ct = icmp eq i64 %i.cs, 1
  %i.cu = zext i1 %i.ct to i8
  br label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

.lr.ph.i.i:                                       ; preds = %bb.x, %bb.z
  %.sroa.01.05.i.i = phi i64 [ %i.cy, %bb.z ], [ 0, %bb.x ] ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.i.i
  %i.cw = load i8, ptr %i.cv, align 1, !alias.scope !400, !noalias !395, !noundef !13
  %i.cx = icmp eq i8 %i.cw, %i.cp
  br i1 %i.cx, label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i
  %i.cy = add nuw nsw i64 %.sroa.01.05.i.i, 1     ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.cy, %2
  br i1 %exitcond.not.i.i, label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %.lr.ph.i.i

_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i: ; preds = %bb.bn, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !403
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ch, i64 noundef %i.cj)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  %i.cz = load i64, ptr %i.b, align 8, !range !106, !alias.scope !404, !noalias !407, !noundef !13
  %i.da = trunc nuw i64 %i.cz to i1
  %i.db = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  br i1 %i.da, label %bb.aj, label %.preheader.i4.i

.preheader.i4.i:                                  ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.b, i64 26
  %i.dd = load i8, ptr %i.dc, align 2, !range !108, !alias.scope !409, !noalias !412, !noundef !13
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph.i5.i

.lr.ph.i5.i:                                      ; preds = %.preheader.i4.i
  %.promoted.i.i = load i64, ptr %i.db, align 8, !alias.scope !404, !noalias !407 ; 12 uses
  %i.df = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.dg = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.dh = load ptr, ptr %i.dg, align 8, !alias.scope !409, !noalias !412, !nonnull !13, !noundef !13 ; 5 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.dj = load i64, ptr %i.di, align 8, !alias.scope !409, !noalias !412, !noundef !13 ; 14 uses
  %.promoted26.i.i = load i8, ptr %i.df, align 8, !alias.scope !409, !noalias !412 ; 2 uses
  %i.dk = trunc nuw i8 %.promoted26.i.i to i1
  %i.dl = icmp eq i64 %.promoted.i.i, 0
  br i1 %i.dl, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i5.i
  %.not.i.i.i.peel.i = icmp ult i64 %.promoted.i.i, %i.dj
  br i1 %.not.i.i.i.peel.i, label %bb.ab, label %.split.i.i.i.peel.i

.split.i.i.i.peel.i:                              ; preds = %bb.aa
  %i.dm = icmp eq i64 %.promoted.i.i, %i.dj
  br i1 %i.dm, label %bb.ac, label %.loopexit.i

bb.ab:                                            ; preds = %bb.aa
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.promoted.i.i
  %i.do = load i8, ptr %i.dn, align 1, !alias.scope !414, !noalias !417, !noundef !13
  %i.dp = icmp sgt i8 %i.do, -65
  br i1 %i.dp, label %bb.ac, label %.loopexit.i

bb.ac:                                            ; preds = %bb.ab, %.split.i.i.i.peel.i, %.lr.ph.i5.i
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dh, i64 %.promoted.i.i ; 4 uses
  %i.dr = icmp samesign eq i64 %.promoted.i.i, %i.dj
  br i1 %i.dr, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ds = load i8, ptr %i.dq, align 1, !noalias !419, !noundef !13 ; 5 uses
  %i.dt = icmp sgt i8 %i.ds, -1
  br i1 %i.dt, label %bb.ae, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.peel.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.peel.i: ; preds = %bb.ad
  %i.du = getelementptr inbounds nuw i8, ptr %i.dq, i64 1
  %i.dv = and i8 %i.ds, 31
  %i.dw = zext nneg i8 %i.dv to i32               ; 3 uses
  %i.dx = add nuw nsw i64 %.promoted.i.i, 1
  %i.dy = icmp samesign ne i64 %i.dx, %i.dj
  tail call void @llvm.assume(i1 %i.dy)
  %i.dz = load i8, ptr %i.du, align 1, !noalias !419, !noundef !13
  %i.ea = shl nuw nsw i32 %i.dw, 6
  %i.eb = and i8 %i.dz, 63
  %i.ec = zext nneg i8 %i.eb to i32               ; 2 uses
  %i.ed = or disjoint i32 %i.ea, %i.ec
  %i.ee = icmp samesign ugt i8 %i.ds, -33
  br i1 %i.ee, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.peel.i, label %bb.af

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.peel.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dq, i64 2
  %i.eg = add nuw nsw i64 %.promoted.i.i, 2
  %i.eh = icmp samesign ne i64 %i.eg, %i.dj
  tail call void @llvm.assume(i1 %i.eh)
  %i.ei = load i8, ptr %i.ef, align 1, !noalias !419, !noundef !13
  %i.ej = shl nuw nsw i32 %i.ec, 6
  %i.ek = and i8 %i.ei, 63
  %i.el = zext nneg i8 %i.ek to i32
  %i.em = or disjoint i32 %i.ej, %i.el            ; 2 uses
  %i.en = shl nuw nsw i32 %i.dw, 12
  %i.eo = or disjoint i32 %i.em, %i.en
  %i.ep = icmp samesign ugt i8 %i.ds, -17
  br i1 %i.ep, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.peel.i, label %bb.af

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.peel.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.peel.i
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dq, i64 3
  %i.er = add nuw nsw i64 %.promoted.i.i, 3
  %i.es = icmp samesign ne i64 %i.er, %i.dj
  tail call void @llvm.assume(i1 %i.es)
  %i.et = load i8, ptr %i.eq, align 1, !noalias !419, !noundef !13
  %i.eu = shl nuw nsw i32 %i.dw, 18
  %i.ev = and i32 %i.eu, 1835008
  %i.ew = shl nuw nsw i32 %i.em, 6
  %i.ex = and i8 %i.et, 63
  %i.ey = zext nneg i8 %i.ex to i32
  %i.ez = or disjoint i32 %i.ew, %i.ey
  %i.fa = or disjoint i32 %i.ez, %i.ev
  br label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.fb = zext nneg i8 %i.ds to i32
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.peel.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.peel.i
  %.sroa.4.0.i.ph.i.i.peel.i = phi i32 [ %i.eo, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.peel.i ], [ %i.fa, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.peel.i ], [ %i.ed, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.peel.i ], [ %i.fb, %bb.ae ] ; 4 uses
  %i.fc = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 1114112
  tail call void @llvm.assume(i1 %i.fc)
  br i1 %i.dk, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fd = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 128
  br i1 %i.fd, label %bb.ak, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.fe = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 2048
  br i1 %i.fe, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ff = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel.i, 65536
  %..i.i.peel.i = select i1 %i.ff, i64 3, i64 4
  br label %bb.ak

bb.aj:                                            ; preds = %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i
  %i.fg = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.fh = load i64, ptr %i.fg, align 8, !alias.scope !404, !noalias !407, !noundef !13 ; 2 uses
  %i.fi = icmp eq i64 %i.fh, -1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.fk = load ptr, ptr %i.fj, align 8, !alias.scope !404, !noalias !407, !nonnull !13, !noundef !13 ; 6 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !404, !noalias !407, !noundef !13 ; 14 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.fo = load ptr, ptr %i.fn, align 8, !alias.scope !404, !noalias !407, !nonnull !13, !noundef !13 ; 4 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.fq = load i64, ptr %i.fp, align 8, !alias.scope !404, !noalias !407, !noundef !13 ; 12 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.fs = add nsw i64 %i.fq, -1                   ; 4 uses
  br i1 %i.fi, label %bb.ap, label %bb.ay

bb.ak:                                            ; preds = %bb.ai, %bb.ah, %bb.ag
  %.sroa.01.0.i.i.peel.i = phi i64 [ 2, %bb.ah ], [ %..i.i.peel.i, %bb.ai ], [ 1, %bb.ag ]
  %i.ft = add i64 %.sroa.01.0.i.i.peel.i, %.promoted.i.i ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.fu = icmp eq i64 %i.ft, 0
  br i1 %i.fu, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not.i.i.i.i = icmp ult i64 %i.ft, %i.dj
  br i1 %.not.i.i.i.i, label %bb.am, label %.split.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.al
  %i.fv = icmp eq i64 %i.ft, %i.dj
  br i1 %i.fv, label %bb.an, label %.loopexit.i

bb.am:                                            ; preds = %bb.al
  %i.fw = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ft
  %i.fx = load i8, ptr %i.fw, align 1, !alias.scope !414, !noalias !423, !noundef !13
  %i.fy = icmp sgt i8 %i.fx, -65
  br i1 %i.fy, label %bb.an, label %.loopexit.i

bb.an:                                            ; preds = %bb.am, %.split.i.i.i.i, %bb.ak
  %i.fz = icmp samesign eq i64 %i.ft, %i.dj
  br i1 %i.fz, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ga = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.ft
  %i.gb = load i8, ptr %i.ga, align 1, !noalias !424, !noundef !13 ; 3 uses
  %i.gc = icmp sgt i8 %i.gb, -1
  br i1 %i.gc, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.i: ; preds = %bb.ao
  %i.gd = add nuw nsw i64 %i.ft, 1
  %i.ge = icmp samesign ne i64 %i.gd, %i.dj
  tail call void @llvm.assume(i1 %i.ge)
  %i.gf = icmp samesign ugt i8 %i.gb, -33
  br i1 %i.gf, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.i
  %i.gg = add nuw nsw i64 %i.ft, 2
  %i.gh = icmp samesign ne i64 %i.gg, %i.dj
  tail call void @llvm.assume(i1 %i.gh)
  %i.gi = icmp samesign ugt i8 %i.gb, -17
  br i1 %i.gi, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.i
  %i.gj = add nuw nsw i64 %i.ft, 3
  %i.gk = icmp samesign ne i64 %i.gj, %i.dj
  tail call void @llvm.assume(i1 %i.gk)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.loopexit.i:                                      ; preds = %bb.am, %.split.i.i.i.i, %bb.ab, %.split.i.i.i.peel.i
  %.lcssa150.i = phi i64 [ %.promoted.i.i, %.split.i.i.i.peel.i ], [ %.promoted.i.i, %bb.ab ], [ %i.ft, %.split.i.i.i.i ], [ %i.ft, %bb.am ]
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.dh, i64 noundef %i.dj, i64 noundef %.lcssa150.i, i64 noundef %i.dj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @145) #30, !noalias !423
  unreachable

bb.ap:                                            ; preds = %bb.aj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !430)
  %.promoted.i17.i = load i64, ptr %i.fr, align 8, !alias.scope !425, !noalias !432 ; 2 uses
  %i.gl = add i64 %.promoted.i17.i, %i.fs         ; 2 uses
  %i.gm = icmp ult i64 %i.gl, %i.fm
  br i1 %i.gm, label %.lr.ph.i20.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.lr.ph.i20.i:                                     ; preds = %bb.ap
end_hunk_0
begin_hunk_1_@_RNvMNtCskEUeM34gmJU_6ty_ide7symbolsNtB2_12QueryPattern20is_match_symbol_name:bb.a
  %exitcond.not.i25.i = icmp eq i64 %i.hg, %umax49.i23.i
  br i1 %exitcond.not.i25.i, label %.preheader.i.preheader, label %.lr.ph205

.preheader.i.preheader:                           ; preds = %.preheader96.i, %.preheader96.i.preheader
  br i1 %.first_iter.i, label %.preheader.i.us.preheader, label %.preheader.i

.preheader.i.us.preheader:                        ; preds = %.preheader.i.preheader
  br i1 %.not.i6.us206, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph208

.preheader.i.us:                                  ; preds = %bb.at
  %.not.i6.us = icmp eq i64 %i.hh, 0
  br i1 %.not.i6.us, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %.lr.ph208

.lr.ph208:                                        ; preds = %.preheader.i.us.preheader, %.preheader.i.us
  %.sroa.2.0.i28.i.us207 = phi i64 [ %i.hh, %.preheader.i.us ], [ %.fr50, %.preheader.i.us.preheader ]
  %i.hh = add i64 %.sroa.2.0.i28.i.us207, -1      ; 4 uses
  %i.hi = add i64 %i.hh, %i.gt                    ; 3 uses
  %i.hj = icmp ult i64 %i.hi, %i.fm
  br i1 %i.hj, label %bb.at, label %.split.us

bb.at:                                            ; preds = %.lr.ph208
  %i.hk = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.hh
  %i.hl = load i8, ptr %i.hk, align 1, !alias.scope !430, !noalias !435, !noundef !13
  %i.hm = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.hi
  %i.hn = load i8, ptr %i.hm, align 1, !alias.scope !428, !noalias !434, !noundef !13
  %.not.i29.i.us = icmp eq i8 %i.hl, %i.hn
  br i1 %.not.i29.i.us, label %.preheader.i.us, label %.split49.us

.split49.us:                                      ; preds = %bb.at
  %i.ho = add i64 %i.gt, %i.gr
  br label %bb.as

.lr.ph205:                                        ; preds = %.preheader96.i.preheader, %.preheader96.i
  %.sroa.02.0.i24.i204 = phi i64 [ %i.hg, %.preheader96.i ], [ %.fr50, %.preheader96.i.preheader ] ; 4 uses
  %i.hp = add i64 %.sroa.02.0.i24.i204, %i.gt     ; 2 uses
  %i.hq = icmp ult i64 %i.hp, %i.fm
  br i1 %i.hq, label %bb.av, label %bb.aw

.preheader.i:                                     ; preds = %.preheader.i.preheader
  br i1 %.not.i6.us206, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i, label %bb.au

bb.au:                                            ; preds = %.preheader.i
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.gs, i64 noundef range(i64 0, -9223372036854775808) %i.fq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #30, !noalias !436
  unreachable

.split.us:                                        ; preds = %.lr.ph208
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.hi, i64 noundef range(i64 0, -9223372036854775808) %i.fm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #30, !noalias !436
  unreachable

bb.av:                                            ; preds = %.lr.ph205
  %i.hr = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.sroa.02.0.i24.i204
  %i.hs = load i8, ptr %i.hr, align 1, !alias.scope !430, !noalias !435, !noundef !13
  %i.ht = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.hp
  %i.hu = load i8, ptr %i.ht, align 1, !alias.scope !428, !noalias !434, !noundef !13
  %.not21.i27.i = icmp eq i8 %i.hs, %i.hu
  br i1 %.not21.i27.i, label %.preheader96.i, label %bb.ax

bb.aw:                                            ; preds = %.lr.ph205
  %i.hv = add i64 %i.gt, %.fr50
  %umax.i26.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.fm, i64 %i.hv)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i26.i, i64 noundef range(i64 0, -9223372036854775808) %i.fm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #30, !noalias !436
  unreachable

bb.ax:                                            ; preds = %bb.av
  %.reass235.i.reass.reass = add i64 %i.gt, %invariant.op285
  %i.hw = add i64 %.reass235.i.reass.reass, %.sroa.02.0.i24.i204
  br label %bb.as

bb.ay:                                            ; preds = %bb.aj
  tail call void @llvm.experimental.noalias.scope.decl(metadata !437)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !440)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !442)
  %.promoted.i11.i = load i64, ptr %i.fr, align 8, !alias.scope !437, !noalias !444 ; 2 uses
  %i.hx = add i64 %.promoted.i11.i, %i.fs         ; 2 uses
  %i.hy = icmp ult i64 %i.hx, %i.fm
  br i1 %i.hy, label %.lr.ph.i14.i, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.lr.ph.i14.i:                                     ; preds = %bb.ay
  %i.hz = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ia = load i64, ptr %i.hz, align 8, !alias.scope !437, !noalias !444, !noundef !13
  %i.ib = load i64, ptr %i.db, align 8, !alias.scope !437, !noalias !444 ; 4 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.id = load i64, ptr %i.ic, align 8, !alias.scope !437, !noalias !444 ; 2 uses
  %i.ie = sub i64 %i.fq, %i.id
  %invariant.op = sub i64 1, %i.ib
  br label %bb.az

bb.az:                                            ; preds = %.sink.split.i.i, %.lr.ph.i14.i
  %i.if = phi i64 [ %.promoted.i11.i, %.lr.ph.i14.i ], [ %.ph71.i.i, %.sink.split.i.i ] ; 6 uses
  %i.ig = phi i64 [ %i.fh, %.lr.ph.i14.i ], [ %.sink.i.i, %.sink.split.i.i ] ; 3 uses
  %i.ih = phi i64 [ %i.hx, %.lr.ph.i14.i ], [ %i.iq, %.sink.split.i.i ]
  %i.ii = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.ih
  %i.ij = load i8, ptr %i.ii, align 1, !alias.scope !440, !noalias !446, !noundef !13
  %i.ik = and i8 %i.ij, 63
  %i.il = zext nneg i8 %i.ik to i64
  %i.im = shl nuw i64 1, %i.il
  %i.in = and i64 %i.im, %i.ia
  %i.io = icmp eq i64 %i.in, 0
  br i1 %i.io, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.ip = add i64 %i.if, %i.fq
  br label %.sink.split.i.i

bb.bb:                                            ; preds = %bb.az
  %.sroa.0.0.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ig, i64 %i.ib) ; 4 uses
  %umax49.i.i = tail call i64 @llvm.umax.i64(i64 %.sroa.0.0.i.i.i, i64 range(i64 0, -9223372036854775808) %i.fq)
  %exitcond.not.i15.i198.not = icmp ult i64 %.sroa.0.0.i.i.i, %i.fq
  br i1 %exitcond.not.i15.i198.not, label %.lr.ph200, label %.preheader35.i.preheader

.sink.split.i.i:                                  ; preds = %bb.bk, %bb.bh, %bb.ba
  %.sink.i.i = phi i64 [ %i.ie, %bb.bh ], [ 0, %bb.bk ], [ 0, %bb.ba ]
  %.ph71.i.i = phi i64 [ %i.jf, %bb.bh ], [ %i.jl, %bb.bk ], [ %i.ip, %bb.ba ] ; 2 uses
  %i.iq = add i64 %.ph71.i.i, %i.fs               ; 2 uses
  %i.ir = icmp ult i64 %i.iq, %i.fm
  br i1 %i.ir, label %bb.az, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

bb.bc:                                            ; preds = %bb.bi
  %i.is = add i64 %.sroa.02.0.i.i199, 1           ; 2 uses
  %exitcond.not.i15.i = icmp eq i64 %i.is, %umax49.i.i
  br i1 %exitcond.not.i15.i, label %.preheader35.i.preheader, label %.lr.ph200

.preheader35.i.preheader:                         ; preds = %bb.bc, %bb.bb
  %i.it = icmp ult i64 %i.ig, %i.ib
  br i1 %i.it, label %.lr.ph202, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.lr.ph200:                                        ; preds = %bb.bb, %bb.bc
  %.sroa.02.0.i.i199 = phi i64 [ %i.is, %bb.bc ], [ %.sroa.0.0.i.i.i, %bb.bb ] ; 4 uses
  %i.iu = add i64 %.sroa.02.0.i.i199, %i.if       ; 2 uses
  %i.iv = icmp ult i64 %i.iu, %i.fm
  br i1 %i.iv, label %bb.bi, label %bb.bj

.preheader35.i:                                   ; preds = %bb.bf
  %i.iw = icmp ult i64 %i.ig, %i.ix
  br i1 %i.iw, label %.lr.ph202, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i

.lr.ph202:                                        ; preds = %.preheader35.i.preheader, %.preheader35.i
  %.sroa.2.0.i.i201 = phi i64 [ %i.ix, %.preheader35.i ], [ %i.ib, %.preheader35.i.preheader ]
  %i.ix = add i64 %.sroa.2.0.i.i201, -1           ; 6 uses
  %i.iy = icmp ult i64 %i.ix, %i.fq
  br i1 %i.iy, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %.lr.ph202
  %i.iz = add i64 %i.ix, %i.if                    ; 3 uses
  %i.ja = icmp ult i64 %i.iz, %i.fm
  br i1 %i.ja, label %bb.bf, label %bb.bg

bb.be:                                            ; preds = %.lr.ph202
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.ix, i64 noundef range(i64 0, -9223372036854775808) %i.fq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #30, !noalias !447
  unreachable

bb.bf:                                            ; preds = %bb.bd
  %i.jb = getelementptr inbounds nuw i8, ptr %i.fo, i64 %i.ix
  %i.jc = load i8, ptr %i.jb, align 1, !alias.scope !442, !noalias !448, !noundef !13
  %i.jd = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.iz
  %i.je = load i8, ptr %i.jd, align 1, !alias.scope !440, !noalias !446, !noundef !13
  %.not.i16.i = icmp eq i8 %i.jc, %i.je
  br i1 %.not.i16.i, label %.preheader35.i, label %bb.bh

bb.bg:                                            ; preds = %bb.bd
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.iz, i64 noundef range(i64 0, -9223372036854775808) %i.fm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #30, !noalias !447
  unreachable

bb.bh:                                            ; preds = %bb.bf
  %i.jf = add i64 %i.if, %i.id
  br label %.sink.split.i.i

bb.bi:                                            ; preds = %.lr.ph200
  %i.jg = getelementptr inbounds nuw i8, ptr %i.fo, i64 %.sroa.02.0.i.i199
  %i.jh = load i8, ptr %i.jg, align 1, !alias.scope !442, !noalias !448, !noundef !13
  %i.ji = getelementptr inbounds nuw i8, ptr %i.fk, i64 %i.iu
  %i.jj = load i8, ptr %i.ji, align 1, !alias.scope !440, !noalias !446, !noundef !13
  %.not21.i.i = icmp eq i8 %i.jh, %i.jj
  br i1 %.not21.i.i, label %bb.bc, label %bb.bk

bb.bj:                                            ; preds = %.lr.ph200
  %i.jk = add i64 %.sroa.0.0.i.i.i, %i.if
  %umax.i.i = tail call i64 @llvm.umax.i64(i64 range(i64 0, -9223372036854775808) %i.fm, i64 %i.jk)
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %umax.i.i, i64 noundef range(i64 0, -9223372036854775808) %i.fm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #30, !noalias !447
  unreachable

bb.bk:                                            ; preds = %bb.bi
  %.reass.i.reass.reass = add i64 %i.if, %invariant.op
  %i.jl = add i64 %.reass.i.reass.reass, %.sroa.02.0.i.i199
  br label %.sink.split.i.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit.i: ; preds = %.sink.split.i.i, %.preheader35.i.preheader, %.preheader35.i, %bb.as, %.preheader.i.us.preheader, %.preheader.i.us, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.i, %bb.ao, %.preheader.i, %bb.ac, %bb.ay, %bb.ap, %bb.an, %bb.af, %.preheader.i4.i
  %.sroa.0.031.i = phi i8 [ 1, %.preheader.i.us ], [ 0, %bb.ap ], [ 0, %.preheader.i4.i ], [ 1, %bb.an ], [ 1, %.preheader35.i ], [ 1, %bb.af ], [ %.promoted26.i.i, %bb.ac ], [ 0, %bb.ay ], [ 1, %.preheader.i.us.preheader ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit12.i.i.i.i ], [ 1, %.preheader.i ], [ 1, %bb.ao ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit16.i.i.i.i ], [ 1, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCskEUeM34gmJU_6ty_ide.exit14.i.i.i.i ], [ 0, %bb.as ], [ 0, %.sink.split.i.i ], [ 1, %.preheader35.i.preheader ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !403
  br label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit

bb.bl:                                            ; preds = %bb.w
  tail call void @llvm.experimental.noalias.scope.decl(metadata !449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %i.jm = load i8, ptr %i.ch, align 1, !alias.scope !454, !noalias !455, !noundef !13 ; 3 uses
  %i.jn = add nsw i64 %i.cj, -1                   ; 2 uses
  %i.jo = icmp eq i64 %i.cj, 2
  br i1 %i.jo, label %.thread.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.jp = tail call i64 @llvm.usub.sat.i64(i64 range(i64 2, 33) %i.cj, i64 4)
  br label %.lr.ph

bb.bn:                                            ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i
  %i.jq = icmp ult i64 %i.jp, %i.js
  br i1 %i.jq, label %.lr.ph, label %_RNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_contains.exit.i

.lr.ph:                                           ; preds = %bb.bm, %bb.bn
  %i.jr = phi i64 [ %i.cj, %bb.bm ], [ %i.js, %bb.bn ]
  %i.js = add nsw i64 %i.jr, -1                   ; 6 uses
  %i.jt = icmp ult i64 %i.js, %i.cj
  br i1 %i.jt, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i, label %bb.bo

bb.bo:                                            ; preds = %.lr.ph
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.js, i64 noundef range(i64 2, 33) %i.cj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @36) #30, !noalias !456
  unreachable

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i: ; preds = %.lr.ph
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.js
  %i.jv = load i8, ptr %i.ju, align 1, !alias.scope !454, !noalias !464, !noundef !13 ; 2 uses
  %.not.i.not.i.i.i = icmp eq i8 %i.jv, %i.jm
  br i1 %.not.i.not.i.i.i, label %bb.bn, label %bb.bp

bb.bp:                                            ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits12double_ended19DoubleEndedIterator5rfind5checkjNCNvNtNtBe_3str7pattern13simd_contains0E0CskEUeM34gmJU_6ty_ide.exit.i.i.i
  %i.jw = add nuw nsw i64 %i.cj, 15
  %i.jx = icmp ult i64 %2, %i.jw
  br i1 %i.jx, label %.lr.ph.split.us.i.i.i, label %bb.bq

.thread.i.i:                                      ; preds = %bb.bl
  %i.jy = icmp ult i64 %2, 17
  br i1 %i.jy, label %.lr.ph.split.us.i.i.i, label %.thread93.i.i

.thread93.i.i:                                    ; preds = %.thread.i.i
  %i.jz = insertelement <16 x i8> poison, i8 %i.jm, i64 0
  %i.ka = shufflevector <16 x i8> %i.jz, <16 x i8> poison, <16 x i32> zeroinitializer
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  %.pre.i.i = load i8, ptr %.phi.trans.insert.i.i, align 1, !alias.scope !454, !noalias !455
  br label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.kb = insertelement <16 x i8> poison, i8 %i.jm, i64 0
  %i.kc = shufflevector <16 x i8> %i.kb, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.br

.lr.ph.split.us.i.i.i:                            ; preds = %.thread.i.i, %bb.bp
  %bcmp.i.i.us23.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %1, ptr noundef nonnull readonly dereferenceable(1) %i.ch, i64 range(i64 2, 33) %i.cj), !alias.scope !465, !noalias !466
  %i.kd = icmp eq i32 %bcmp.i.i.us23.i.i.i, 0
  br i1 %i.kd, label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskEUeM34gmJU_6ty_ide.exit.backedge.us.i.i.i

.split.us.i.i.i:                                  ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskEUeM34gmJU_6ty_ide.exit.backedge.us.i.i.i
  %i.ke = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i = tail call i32 @bcmp(ptr noundef nonnull readonly dereferenceable(1) %i.ke, ptr noundef nonnull readonly dereferenceable(1) %i.ch, i64 range(i64 2, 33) %i.cj), !alias.scope !465, !noalias !466
  %i.kf = icmp eq i32 %bcmp.i.i.us.i.i.i, 0
  br i1 %i.kf, label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskEUeM34gmJU_6ty_ide.exit.backedge.us.i.i.i

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator3any5checkRShNCNvNtNtBe_3str7pattern13simd_containss_0E0CskEUeM34gmJU_6ty_ide.exit.backedge.us.i.i.i: ; preds = %.lr.ph.split.us.i.i.i, %.split.us.i.i.i
  %.pn.i.i = phi ptr [ %i.ke, %.split.us.i.i.i ], [ %1, %.lr.ph.split.us.i.i.i ]
  %.in.i.i = phi i64 [ %i.kg, %.split.us.i.i.i ], [ %2, %.lr.ph.split.us.i.i.i ]
  %i.kg = add i64 %.in.i.i, -1                    ; 2 uses
  %.not28.i.i.i = icmp ugt i64 %i.cj, %i.kg
  br i1 %.not28.i.i.i, label %_RNvXst_NtNtCs4NRVxsYgnAr_4core3str7patternReNtB5_7Pattern15is_contained_in.exit, label %.split.us.i.i.i

bb.br:                                            ; preds = %bb.bq, %.thread93.i.i
  %i.kh = phi i8 [ %.pre.i.i, %.thread93.i.i ], [ %i.jv, %bb.bq ]
  %i.ki = phi <16 x i8> [ %i.ka, %.thread93.i.i ], [ %i.kc, %bb.bq ] ; 6 uses
  %storemerge9295.i.i = phi i64 [ 1, %.thread93.i.i ], [ %i.js, %bb.bq ] ; 6 uses
  %i.kj = insertelement <16 x i8> poison, i8 %i.kh, i64 0
  %i.kk = shufflevector <16 x i8> %i.kj, <16 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ch, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !465
  store ptr %1, ptr %i.a, align 8, !noalias !465
  %i.km = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.km, align 8, !noalias !465
  %i.kn = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.kl, ptr %i.kn, align 8, !noalias !465
  %i.ko = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.jn, ptr %i.ko, align 8, !noalias !465
  %i.kp = add nuw nsw i64 %i.cj, 63               ; 2 uses
  %.not.i7.i = icmp ult i64 %i.kp, %2
  br i1 %.not.i7.i, label %.lr.ph.i10.i, label %.preheader.i8.i

.preheader.i8.i:                                  ; preds = %bb.bv, %bb.br
  %.sroa.014.0.lcssa.i.i = phi i8 [ 0, %bb.br ], [ %.sroa.014.2.3.i.i, %bb.bv ] ; 2 uses
  %.sroa.06.0.lcssa.i.i = phi i64 [ 0, %bb.br ], [ %i.ml, %bb.bv ] ; 2 uses
  %i.kq = add nuw nsw i64 %i.cj, 15               ; 2 uses
  %i.kr = add i64 %.sroa.06.0.lcssa.i.i, %i.kq
  %i.ks = icmp uge i64 %i.kr, %2
  %i.kt = trunc nuw i8 %.sroa.014.0.lcssa.i.i to i1 ; 2 uses
  %or.cond3105.i.i = select i1 %i.ks, i1 true, i1 %i.kt
  br i1 %or.cond3105.i.i, label %._crit_edge.i9.i, label %.lr.ph107.i.i

.lr.ph.i10.i:                                     ; preds = %bb.br, %bb.bv
  %.sroa.06.0103.i.i = phi i64 [ %i.ml, %bb.bv ], [ 0, %bb.br ] ; 6 uses
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.0103.i.i ; 5 uses
  %.sroa.0.0.copyload.i.i.i = load <16 x i8>, ptr %i.ku, align 1, !alias.scope !455, !noalias !470
  %i.kv = getelementptr inbounds nuw i8, ptr %i.ku, i64 %storemerge9295.i.i
  %.sroa.02.0.copyload.i.i.i = load <16 x i8>, ptr %i.kv, align 1, !alias.scope !455, !noalias !470
  %i.kw = icmp eq <16 x i8> %.sroa.0.0.copyload.i.i.i, %i.ki
  %i.kx = icmp eq <16 x i8> %.sroa.02.0.copyload.i.i.i, %i.kk
  %i.ky = and <16 x i1> %i.kw, %i.kx
  %i.kz = bitcast <16 x i1> %i.ky to i16          ; 2 uses
  %i.la = getelementptr inbounds nuw i8, ptr %i.ku, i64 16 ; 2 uses
  %.sroa.0.0.copyload.i.1.i.i = load <16 x i8>, ptr %i.la, align 1, !alias.scope !455, !noalias !470
  %i.lb = getelementptr inbounds nuw i8, ptr %i.la, i64 %storemerge9295.i.i
  %.sroa.02.0.copyload.i.1.i.i = load <16 x i8>, ptr %i.lb, align 1, !alias.scope !455, !noalias !470
  %i.lc = icmp eq <16 x i8> %.sroa.0.0.copyload.i.1.i.i, %i.ki
  %i.ld = icmp eq <16 x i8> %.sroa.02.0.copyload.i.1.i.i, %i.kk
  %i.le = and <16 x i1> %i.lc, %i.ld
  %i.lf = bitcast <16 x i1> %i.le to i16          ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %i.ku, i64 32 ; 2 uses
  %.sroa.0.0.copyload.i.2.i.i = load <16 x i8>, ptr %i.lg, align 1, !alias.scope !455, !noalias !470
  %i.lh = getelementptr inbounds nuw i8, ptr %i.lg, i64 %storemerge9295.i.i
  %.sroa.02.0.copyload.i.2.i.i = load <16 x i8>, ptr %i.lh, align 1, !alias.scope !455, !noalias !470
  %i.li = icmp eq <16 x i8> %.sroa.0.0.copyload.i.2.i.i, %i.ki
  %i.lj = icmp eq <16 x i8> %.sroa.02.0.copyload.i.2.i.i, %i.kk
  %i.lk = and <16 x i1> %i.li, %i.lj
  %i.ll = bitcast <16 x i1> %i.lk to i16          ; 2 uses
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ku, i64 48 ; 2 uses
  %.sroa.0.0.copyload.i.3.i.i = load <16 x i8>, ptr %i.lm, align 1, !alias.scope !455, !noalias !470
  %i.ln = getelementptr inbounds nuw i8, ptr %i.lm, i64 %storemerge9295.i.i
  %.sroa.02.0.copyload.i.3.i.i = load <16 x i8>, ptr %i.ln, align 1, !alias.scope !455, !noalias !470
  %i.lo = icmp eq <16 x i8> %.sroa.0.0.copyload.i.3.i.i, %i.ki
  %i.lp = icmp eq <16 x i8> %.sroa.02.0.copyload.i.3.i.i, %i.kk
  %i.lq = and <16 x i1> %i.lo, %i.lp
  %i.lr = bitcast <16 x i1> %i.lq to i16          ; 2 uses
  %i.ls = icmp eq i16 %i.kz, 0
  br i1 %i.ls, label %.preheader96.1.i.i, label %bb.bw

.preheader96.1.i.i:                               ; preds = %bb.bw, %.lr.ph.i10.i
  %.sroa.014.2.i.i = phi i8 [ 0, %.lr.ph.i10.i ], [ %i.mq, %bb.bw ] ; 3 uses
  %i.lt = icmp eq i16 %i.lf, 0
  br i1 %i.lt, label %.preheader96.2.i.i, label %bb.bs

bb.bs:                                            ; preds = %.preheader96.1.i.i
  %i.lu = or disjoint i64 %.sroa.06.0103.i.i, 16
  %i.lv = trunc nuw i8 %.sroa.014.2.i.i to i1
  %i.lw = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.lu, i16 noundef %i.lf, i1 noundef zeroext %i.lv)
  %i.lx = zext i1 %i.lw to i8
  %i.ly = or i8 %.sroa.014.2.i.i, %i.lx
  br label %.preheader96.2.i.i

.preheader96.2.i.i:                               ; preds = %bb.bs, %.preheader96.1.i.i
  %.sroa.014.2.1.i.i = phi i8 [ %.sroa.014.2.i.i, %.preheader96.1.i.i ], [ %i.ly, %bb.bs ] ; 3 uses
  %i.lz = icmp eq i16 %i.ll, 0
  br i1 %i.lz, label %.preheader96.3.i.i, label %bb.bt

bb.bt:                                            ; preds = %.preheader96.2.i.i
  %i.ma = or disjoint i64 %.sroa.06.0103.i.i, 32
  %i.mb = trunc nuw i8 %.sroa.014.2.1.i.i to i1
  %i.mc = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.ma, i16 noundef %i.ll, i1 noundef zeroext %i.mb)
  %i.md = zext i1 %i.mc to i8
  %i.me = or i8 %.sroa.014.2.1.i.i, %i.md
  br label %.preheader96.3.i.i

.preheader96.3.i.i:                               ; preds = %bb.bt, %.preheader96.2.i.i
  %.sroa.014.2.2.i.i = phi i8 [ %.sroa.014.2.1.i.i, %.preheader96.2.i.i ], [ %i.me, %bb.bt ] ; 3 uses
  %i.mf = icmp eq i16 %i.lr, 0
  br i1 %i.mf, label %bb.bv, label %bb.bu

bb.bu:                                            ; preds = %.preheader96.3.i.i
  %i.mg = or disjoint i64 %.sroa.06.0103.i.i, 48
  %i.mh = trunc nuw i8 %.sroa.014.2.2.i.i to i1
  %i.mi = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.mg, i16 noundef %i.lr, i1 noundef zeroext %i.mh)
  %i.mj = zext i1 %i.mi to i8
  %i.mk = or i8 %.sroa.014.2.2.i.i, %i.mj
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %.preheader96.3.i.i
  %.sroa.014.2.3.i.i = phi i8 [ %.sroa.014.2.2.i.i, %.preheader96.3.i.i ], [ %i.mk, %bb.bu ] ; 2 uses
  %i.ml = add i64 %.sroa.06.0103.i.i, 64          ; 3 uses
  %i.mm = add i64 %i.ml, %i.kp
  %i.mn = icmp uge i64 %i.mm, %2
  %i.mo = trunc nuw i8 %.sroa.014.2.3.i.i to i1
  %or.cond.i.i = select i1 %i.mn, i1 true, i1 %i.mo
  br i1 %or.cond.i.i, label %.preheader.i8.i, label %.lr.ph.i10.i

bb.bw:                                            ; preds = %.lr.ph.i10.i
  %i.mp = call fastcc noundef zeroext i1 @_RNCNvNtNtCs4NRVxsYgnAr_4core3str7pattern13simd_containss0_0CskEUeM34gmJU_6ty_ide(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.06.0103.i.i, i16 noundef %i.kz, i1 noundef zeroext false)
  %i.mq = zext i1 %i.mp to i8
  br label %.preheader96.1.i.i

._crit_edge.i9.i:                                 ; preds = %bb.bx, %.preheader.i8.i
  %.sroa.014.3.lcssa.i.i = phi i8 [ %.sroa.014.0.lcssa.i.i, %.preheader.i8.i ], [ %.sroa.014.4.i.i, %bb.bx ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.kt, %.preheader.i8.i ], [ %i.nk, %bb.bx ]
  %i.mr = sub nuw i64 %2, %i.jn
  %i.ms = add i64 %i.mr, -16                      ; 2 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %1, i64 %i.ms ; 2 uses
  %.sroa.0.0.copyload.i58.i.i = load <16 x i8>, ptr %i.mt, align 1, !alias.scope !455, !noalias !473
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mt, i64 %storemerge9295.i.i
  %.sroa.02.0.copyload.i59.i.i = load <16 x i8>, ptr %i.mu, align 1, !alias.scope !455, !noalias !473
  %i.mv = icmp eq <16 x i8> %.sroa.0.0.copyload.i58.i.i, %i.ki
  %i.mw = icmp eq <16 x i8> %.sroa.02.0.copyload.i59.i.i, %i.kk
  %i.mx = and <16 x i1> %i.mv, %i.mw
  %i.my = bitcast <16 x i1> %i.mx to i16          ; 2 uses
  %i.mz = icmp eq i16 %i.my, 0
  br i1 %i.mz, label %bb.bz, label %bb.ca

.lr.ph107.i.i:                                    ; preds = %.preheader.i8.i, %bb.bx
  %.sroa.06.1106.i.i = phi i64 [ %i.nh, %bb.bx ], [ %.sroa.06.0.lcssa.i.i, %.preheader.i8.i ] ; 3 uses
  %i.na = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.06.1106.i.i ; 2 uses
  %.sroa.0.0.copyload.i60.i.i = load <16 x i8>, ptr %i.na, align 1, !alias.scope !455, !noalias !476
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 %storemerge9295.i.i
  %.sroa.02.0.copyload.i61.i.i = load <16 x i8>, ptr %i.nb, align 1, !alias.scope !455, !noalias !476
  %i.nc = icmp eq <16 x i8> %.sroa.0.0.copyload.i60.i.i, %i.ki
  %i.nd = icmp eq <16 x i8> %.sroa.02.0.copyload.i61.i.i, %i.kk
  %i.ne = and <16 x i1> %i.nc, %i.nd
  %i.nf = bitcast <16 x i1> %i.ne to i16          ; 2 uses
  %i.ng = icmp eq i16 %i.nf, 0
  br i1 %i.ng, label %bb.bx, label %bb.by
end_hunk_1
