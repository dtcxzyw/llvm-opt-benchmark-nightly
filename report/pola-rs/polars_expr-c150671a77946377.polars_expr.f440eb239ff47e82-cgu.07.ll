Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_expr-c150671a77946377.polars_expr.f440eb239ff47e82-cgu.07?download=true
inline.NumInlined: 8874
inline.NumDeleted: 3985
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 94
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtCs8774dFTUdNv_12polars_arrow11trusted_len13TrustMyLengthINtNtNtB15_8adapters3map3MapINtNtB3e_6filter6FilterINtNtNtB17_3ops5range5RangemENCNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_0s_00ENCB4t_s_0EmEEB4D_:bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !85819 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85773), !dbg !85820
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85774), !dbg !85821
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !85775
  store ptr %i.i, ptr %i.d, align 8, !noalias !85776
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 12 ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !85777, !noalias !85778, !noundef !3509 ; 2 uses
  %.promoted.i.i.i.i.i = load i32, ptr %i.j, align 8, !alias.scope !85779, !noalias !85780 ; 3 uses
  %umax.i.i.i.i.i = call i32 @llvm.umax.i32(i32 %i.l, i32 %.promoted.i.i.i.i.i), !dbg !85822
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i43.not = icmp ult i32 %.promoted.i.i.i.i.i, %i.l, !dbg !85823
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i43.not, label %.lr.ph, label %._crit_edge45, !dbg !85824

bb.b:                                             ; preds = %.lr.ph
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i = icmp eq i32 %i.n, %umax.i.i.i.i.i, !dbg !85823
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i, label %._crit_edge45.loopexit, label %.lr.ph, !dbg !85824

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.m = phi i32 [ %i.n, %bb.b ], [ %.promoted.i.i.i.i.i, %bb.a ] ; 3 uses
  %i.n = add i32 %i.m, 1, !dbg !85825             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !85776
  store i32 %i.m, ptr %i.c, align 4, !noalias !85781
  %i.o = call noundef zeroext i1 @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_0s_00INtB7_5FnMutTRmEE8call_mutB10_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.c), !dbg !85826, !noalias !85782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !85827, !noalias !85776
  br i1 %i.o, label %bb.c, label %bb.b, !dbg !85828

bb.c:                                             ; preds = %.lr.ph
  store i32 %i.n, ptr %i.j, align 8, !dbg !85829, !alias.scope !85779, !noalias !85780
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !85830, !noalias !85775
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !85831 ; 2 uses
  %.val.i.i = load ptr, ptr %i.p, align 8, !dbg !85832, !alias.scope !85783, !nonnull !3509, !align !3810, !noundef !3509
  %i.q = load i32, ptr %.val.i.i, align 4, !dbg !85833, !noundef !3509
  %i.r = add i32 %i.q, %i.m, !dbg !85834          ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85787), !dbg !85835
  call void @llvm.experimental.noalias.scope.decl(metadata !85788), !dbg !85836
  call void @llvm.experimental.noalias.scope.decl(metadata !85789), !dbg !85837
  call void @llvm.experimental.noalias.scope.decl(metadata !85790), !dbg !85838
  call void @llvm.experimental.noalias.scope.decl(metadata !85791), !dbg !85839
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !85792
  store ptr %i.i, ptr %i.b, align 8, !noalias !85793
  %i.s = load i32, ptr %i.k, align 4, !alias.scope !85794, !noalias !85795, !noundef !3509 ; 2 uses
  %.promoted.i.i.i.i.i14 = load i32, ptr %i.j, align 8, !alias.scope !85796, !noalias !85797 ; 3 uses
  %umax.i.i.i.i.i15 = call i32 @llvm.umax.i32(i32 %i.s, i32 %.promoted.i.i.i.i.i14), !dbg !85840
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i1646.not = icmp ult i32 %.promoted.i.i.i.i.i14, %i.s, !dbg !85841
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i1646.not, label %.lr.ph48, label %._crit_edge49, !dbg !85842

bb.d:                                             ; preds = %.lr.ph48
  %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i16 = icmp eq i32 %i.u, %umax.i.i.i.i.i15, !dbg !85841
  br i1 %exitcond.not.i.not.not.not.not.i.not.not.not.i.not.i.i16, label %._crit_edge49.loopexit, label %.lr.ph48, !dbg !85842

.lr.ph48:                                         ; preds = %bb.c, %bb.d
  %i.t = phi i32 [ %i.u, %bb.d ], [ %.promoted.i.i.i.i.i14, %bb.c ] ; 3 uses
  %i.u = add i32 %i.t, 1, !dbg !85843             ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85793
  store i32 %i.t, ptr %i.a, align 4, !noalias !85798
  %i.v = call noundef zeroext i1 @_RNvXs1_NtNtNtCscgRAwXFJnXP_4core3ops8function5implsQNCNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_0s_00INtB7_5FnMutTRmEE8call_mutB10_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a), !dbg !85844, !noalias !85799
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !85845, !noalias !85793
  br i1 %i.v, label %bb.e, label %bb.d, !dbg !85846

._crit_edge45.loopexit:                           ; preds = %bb.b
  store i32 %i.n, ptr %i.j, align 8, !dbg !85829, !alias.scope !85779, !noalias !85780
  br label %._crit_edge45, !dbg !85830

._crit_edge45:                                    ; preds = %._crit_edge45.loopexit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !85830, !noalias !85775
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !85847
  store i32 0, ptr %i.w, align 8, !dbg !85847
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !85847
  store i32 1, ptr %i.x, align 4, !dbg !85847
  store ptr null, ptr %0, align 8, !dbg !85847
  br label %bb.m, !dbg !85800

bb.e:                                             ; preds = %.lr.ph48
  store i32 %i.u, ptr %i.j, align 8, !dbg !85848, !alias.scope !85796, !noalias !85797
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !85849, !noalias !85792
  %.val.i.i17 = load ptr, ptr %i.p, align 8, !dbg !85850, !alias.scope !85801, !nonnull !3509, !align !3810, !noundef !3509
  %i.y = load i32, ptr %.val.i.i17, align 4, !dbg !85851, !noundef !3509
  %i.z = add i32 %i.y, %i.t, !dbg !85852
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !85853
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 24, !dbg !85854
  %.val = load i64, ptr %i.aa, align 8, !dbg !85854, !noundef !3509
  %i.ab = add i64 %.val, 2, !dbg !85855           ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !85856
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, i64 noundef %i.ab, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !dbg !85856
  %i.ac = load i64, ptr %i.e, align 8, !dbg !85856, !range !3569, !noundef !3509
  %i.ad = trunc nuw i64 %i.ac to i1, !dbg !85857
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !85858
  %i.af = load i64, ptr %i.ae, align 8, !dbg !85858, !range !3572, !noundef !3509 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !85858 ; 2 uses
  br i1 %i.ad, label %bb.f, label %bb.g, !dbg !85857, !prof !3571

._crit_edge49.loopexit:                           ; preds = %bb.d
  store i32 %i.u, ptr %i.j, align 8, !dbg !85848, !alias.scope !85796, !noalias !85797
  br label %._crit_edge49, !dbg !85849

._crit_edge49:                                    ; preds = %._crit_edge49.loopexit, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !85849, !noalias !85792
  %.sroa.0.0.insert.ext = zext i32 %i.r to i64, !dbg !85859
  %i.ah = inttoptr i64 %.sroa.0.0.insert.ext to ptr, !dbg !85859
  store ptr %i.ah, ptr %0, align 8, !dbg !85860
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !85860
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !85860
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !85860
  store i32 1, ptr %.sroa.7.0..sroa_idx, align 4, !dbg !85860
  br label %bb.m, !dbg !85861

bb.f:                                             ; preds = %bb.e
  %i.ai = load i64, ptr %i.ag, align 8, !dbg !85862
  call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.af, i64 %i.ai) #57, !dbg !85863
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.aj = load ptr, ptr %i.ag, align 8, !dbg !85864, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.ak = icmp ule i64 %i.ab, %i.af, !dbg !85865
  call void @llvm.assume(i1 %i.ak), !dbg !85866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !85867
  store i64 %i.af, ptr %i.h, align 8, !dbg !85868
  %i.al = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !85868 ; 3 uses
  store ptr %i.aj, ptr %i.al, align 8, !dbg !85868
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 16, !dbg !85868 ; 3 uses
  store i64 0, ptr %i.am, align 8, !dbg !85868
  %i.an = icmp eq i64 %i.af, 0, !dbg !85869
  br i1 %i.an, label %bb.h, label %bb.i, !dbg !85869

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs2xBDrd9T7Le_3url(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %._crit_edge unwind label %bb.n, !dbg !85870

._crit_edge:                                      ; preds = %bb.h
  %.pre = load ptr, ptr %i.al, align 8, !dbg !85871, !alias.scope !85810
  br label %bb.i, !dbg !85870

bb.i:                                             ; preds = %._crit_edge, %bb.g
  %i.ao = phi ptr [ %.pre, %._crit_edge ], [ %i.aj, %bb.g ], !dbg !85871
  store i32 %i.r, ptr %i.ao, align 4, !dbg !85872
  store i64 1, ptr %i.am, align 8, !dbg !85873, !alias.scope !85810
  %i.ap = load i64, ptr %i.h, align 8, !dbg !85874, !range !3583, !alias.scope !85811, !noundef !3509
  %i.aq = icmp eq i64 %i.ap, 1, !dbg !85875
  br i1 %i.aq, label %bb.j, label %bb.k, !dbg !85875

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs2xBDrd9T7Le_3url(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.k unwind label %bb.n, !dbg !85876

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.ar = load ptr, ptr %i.al, align 8, !dbg !85877, !alias.scope !85811, !nonnull !3509, !noundef !3509
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 4, !dbg !85878
  store i32 %i.z, ptr %i.as, align 4, !dbg !85879
  store i64 2, ptr %i.am, align 8, !dbg !85880, !alias.scope !85811
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false), !dbg !85881
  invoke void @_RNvXNtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB4_3VecmEINtB2_10SpecExtendmINtNtCs8774dFTUdNv_12polars_arrow11trusted_len13TrustMyLengthINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtB2g_6filter6FilterINtNtNtB2k_3ops5range5RangemENCNCNCNvNtNtCskY9G75ZWc4U_11polars_expr8dispatch15groups_dispatch10drop_itemss_0s_00ENCB3R_s_0EmEE11spec_extendB41_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.g)
          to label %bb.l unwind label %bb.n, !dbg !85882

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !85883
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !dbg !85883
  call fastcc void @_RNvXsj_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmEINtNtCscgRAwXFJnXP_4core7convert4FromINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEE4fromCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.f), !dbg !85884
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !85885
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !85886
  br label %bb.m, !dbg !85887

bb.m:                                             ; preds = %._crit_edge45, %._crit_edge49, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !85887
  ret void, !dbg !85888

bb.n:                                             ; preds = %bb.k, %bb.j, %bb.h
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.h) #54
          to label %bb.p unwind label %bb.o, !dbg !85886

bb.o:                                             ; preds = %bb.n
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !85889
  unreachable, !dbg !85889

bb.p:                                             ; preds = %bb.n
  resume { ptr, i32 } %lpad.thr_comm, !dbg !85889
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB15_7sources8repeat_n7RepeatNmEECskY9G75ZWc4U_11polars_expr(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i32 %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !85890 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 11 uses
  switch i64 %1, label %bb.c [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ], !dbg !85955

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !85956
  store i32 0, ptr %i.d, align 8, !dbg !85956
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !85956
  store i32 1, ptr %i.e, align 4, !dbg !85956
  store ptr null, ptr %0, align 8, !dbg !85956
  br label %bb.l, !dbg !85942

bb.c:                                             ; preds = %bb.a
  %i.f = add i64 %1, -2, !dbg !85957
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !85958
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !85959
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %1, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !dbg !85959
  %i.g = load i64, ptr %i.a, align 8, !dbg !85959, !range !3569, !noundef !3509
  %i.h = trunc nuw i64 %i.g to i1, !dbg !85960
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !85961
  %i.j = load i64, ptr %i.i, align 8, !dbg !85961, !range !3572, !noundef !3509 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !85961 ; 2 uses
  br i1 %i.h, label %bb.e, label %bb.f, !dbg !85960, !prof !3571

bb.d:                                             ; preds = %bb.a
  %.sroa.0.0.insert.ext = zext i32 %2 to i64, !dbg !85962
  %i.l = inttoptr i64 %.sroa.0.0.insert.ext to ptr, !dbg !85962
  store ptr %i.l, ptr %0, align 8, !dbg !85963
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !85963
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !85963
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !85963
  store i32 1, ptr %.sroa.7.0..sroa_idx, align 4, !dbg !85963
  br label %bb.l, !dbg !85964

bb.e:                                             ; preds = %bb.c
  %i.m = load i64, ptr %i.k, align 8, !dbg !85965
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.m) #57, !dbg !85966
  unreachable

bb.f:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.k, align 8, !dbg !85967, !nonnull !3509, !noundef !3509 ; 2 uses
  %i.o = icmp ule i64 %1, %i.j, !dbg !85968
  tail call void @llvm.assume(i1 %i.o), !dbg !85969
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !85970
  store i64 %i.j, ptr %i.c, align 8, !dbg !85971
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !85971 ; 3 uses
  store ptr %i.n, ptr %i.p, align 8, !dbg !85971
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !85971 ; 3 uses
  store i64 0, ptr %i.q, align 8, !dbg !85971
  %i.r = icmp eq i64 %i.j, 0, !dbg !85972
  br i1 %i.r, label %bb.g, label %bb.h, !dbg !85972

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs2xBDrd9T7Le_3url(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %._crit_edge unwind label %bb.m, !dbg !85973

._crit_edge:                                      ; preds = %bb.g
  %.pre = load ptr, ptr %i.p, align 8, !dbg !85974, !alias.scope !85951
  br label %bb.h, !dbg !85973

bb.h:                                             ; preds = %._crit_edge, %bb.f
  %i.s = phi ptr [ %.pre, %._crit_edge ], [ %i.n, %bb.f ], !dbg !85974
  store i32 %2, ptr %i.s, align 4, !dbg !85975
  store i64 1, ptr %i.q, align 8, !dbg !85976, !alias.scope !85951
  %i.t = load i64, ptr %i.c, align 8, !dbg !85977, !range !3583, !alias.scope !85952, !noundef !3509
  %i.u = icmp eq i64 %i.t, 1, !dbg !85978
  br i1 %i.u, label %bb.i, label %bb.j, !dbg !85978

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecmE8grow_oneCs2xBDrd9T7Le_3url(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %bb.j unwind label %bb.m, !dbg !85979

bb.j:                                             ; preds = %bb.h, %bb.i
  %i.v = load ptr, ptr %i.p, align 8, !dbg !85980, !alias.scope !85952, !nonnull !3509, !noundef !3509
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 4, !dbg !85981
  store i32 %2, ptr %i.w, align 4, !dbg !85982
  store i64 2, ptr %i.q, align 8, !dbg !85983, !alias.scope !85952
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecmEINtB4_10SpecExtendmINtNtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_n7RepeatNmEE11spec_extendCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.f, i32 %2)
          to label %bb.k unwind label %bb.m, !dbg !85984

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !85985
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !85985
  call fastcc void @_RNvXsj_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmEINtNtCscgRAwXFJnXP_4core7convert4FromINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEE4fromCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !dbg !85986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !85987
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !85988
  br label %bb.l, !dbg !85989

bb.l:                                             ; preds = %bb.b, %bb.d, %bb.k
  ret void, !dbg !85990

bb.m:                                             ; preds = %bb.j, %bb.i, %bb.g
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEECskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 dereferenceable(24) %i.c) #54
          to label %bb.o unwind label %bb.n, !dbg !85988

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #55, !dbg !85991
  unreachable, !dbg !85991

bb.o:                                             ; preds = %bb.m
  resume { ptr, i32 } %lpad.thr_comm, !dbg !85991
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXse_NtCs2mZqlW55729_12polars_utils7idx_vecINtB6_7UnitVecmEINtNtNtNtCscgRAwXFJnXP_4core4iter6traits7collect12FromIteratormE9from_iterINtNtNtB15_8adapters3map3MapINtNtNtB17_5slice4iter4ItermENCNvNtNtCskY9G75ZWc4U_11polars_expr11expressions4sort31map_sorted_indices_to_group_idx0EEB3d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !85992 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.0.0.copyload26 = load ptr, ptr %1, align 8, !dbg !86077, !alias.scope !86061, !nonnull !3509, !noundef !3509 ; 4 uses
  %.sroa.10.0..sroa_idx27 = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !86077
  %.sroa.10.0.copyload28 = load ptr, ptr %.sroa.10.0..sroa_idx27, align 8, !dbg !86077, !alias.scope !86061, !nonnull !3509, !noundef !3509 ; 4 uses
  %.sroa.13.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !86077
  %.sroa.13.0.copyload31 = load ptr, ptr %.sroa.13.0..sroa_idx30, align 8, !dbg !86077, !alias.scope !86061 ; 4 uses
  %.sroa.15.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !86077
  %.sroa.15.0.copyload33 = load i64, ptr %.sroa.15.0..sroa_idx32, align 8, !dbg !86077, !alias.scope !86061 ; 3 uses
  %i.e = icmp eq ptr %.sroa.0.0.copyload26, %.sroa.10.0.copyload28, !dbg !86078
  br i1 %i.e, label %bb.c, label %bb.b, !dbg !86079

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload26, i64 4, !dbg !86080 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.13.0.copyload31) ]
  %.val4.i = load i32, ptr %.sroa.0.0.copyload26, align 4, !dbg !86081, !noalias !86062, !noundef !3509
  %i.g = zext i32 %.val4.i to i64, !dbg !86082    ; 2 uses
  %i.h = icmp ugt i64 %.sroa.15.0.copyload33, %i.g, !dbg !86083
  tail call void @llvm.assume(i1 %i.h), !dbg !86084
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.0.copyload31, i64 %i.g, !dbg !86085
  %i.j = load i32, ptr %i.i, align 4, !dbg !86086, !noalias !86062, !noundef !3509 ; 2 uses
  %i.k = icmp eq ptr %i.f, %.sroa.10.0.copyload28, !dbg !86087
  br i1 %i.k, label %bb.e, label %bb.d, !dbg !86088

bb.c:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86089
  store i32 0, ptr %i.l, align 8, !dbg !86089
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !86089
  store i32 1, ptr %i.m, align 4, !dbg !86089
  store ptr null, ptr %0, align 8, !dbg !86089
  br label %bb.i, !dbg !86064

bb.d:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload26, i64 8, !dbg !86090 ; 2 uses
  %.val4.i18 = load i32, ptr %i.f, align 4, !dbg !86091, !noalias !86065, !noundef !3509
  %i.o = zext i32 %.val4.i18 to i64, !dbg !86092  ; 2 uses
  %i.p = icmp ugt i64 %.sroa.15.0.copyload33, %i.o, !dbg !86093
  tail call void @llvm.assume(i1 %i.p), !dbg !86094
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %.sroa.13.0.copyload31, i64 %i.o, !dbg !86095
  %i.r = load i32, ptr %i.q, align 4, !dbg !86096, !noalias !86065, !noundef !3509
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !86097
  %i.s = ptrtoint ptr %.sroa.10.0.copyload28 to i64, !dbg !86098
  %i.t = ptrtoint ptr %i.n to i64, !dbg !86098
  %i.u = sub nuw i64 %i.s, %i.t, !dbg !86098
  %i.v = lshr exact i64 %i.u, 2, !dbg !86098
  %i.w = add nuw nsw i64 %i.v, 2, !dbg !86099     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !86100
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskY9G75ZWc4U_11polars_expr(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.w, i1 noundef zeroext false, i64 noundef 4, i64 noundef 4), !dbg !86100
  %i.x = load i64, ptr %i.a, align 8, !dbg !86100, !range !3569, !noundef !3509
  %i.y = trunc nuw i64 %i.x to i1, !dbg !86101
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !86102
  %i.aa = load i64, ptr %i.z, align 8, !dbg !86102, !range !3572, !noundef !3509 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !86102 ; 2 uses
  br i1 %i.y, label %bb.f, label %bb.g, !dbg !86101, !prof !3571

bb.e:                                             ; preds = %bb.b
  %.sroa.0.0.insert.ext = zext i32 %i.j to i64, !dbg !86103
  %i.ac = inttoptr i64 %.sroa.0.0.insert.ext to ptr, !dbg !86103
  store ptr %i.ac, ptr %0, align 8, !dbg !86104
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !86104
  store i32 1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !86104
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12, !dbg !86104
  store i32 1, ptr %.sroa.7.0..sroa_idx, align 4, !dbg !86104
  br label %bb.i, !dbg !86105

bb.f:                                             ; preds = %bb.d
  %i.ad = load i64, ptr %i.ab, align 8, !dbg !86106
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.aa, i64 %i.ad) #57, !dbg !86107
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.ae = load ptr, ptr %i.ab, align 8, !dbg !86108, !nonnull !3509, !noundef !3509 ; 3 uses
  %i.af = icmp samesign ule i64 %i.w, %i.aa, !dbg !86109
  tail call void @llvm.assume(i1 %i.af), !dbg !86110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !86111
  store i64 %i.aa, ptr %i.d, align 8, !dbg !86112
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !86112
  store ptr %i.ae, ptr %i.ag, align 8, !dbg !86112
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !86112
  store i32 %i.j, ptr %i.ae, align 4, !dbg !86113
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 4, !dbg !86114
  store i32 %i.r, ptr %i.ai, align 4, !dbg !86115
  store i64 2, ptr %i.ah, align 8, !dbg !86116, !alias.scope !86075
  store ptr %i.n, ptr %i.c, align 8, !dbg !86117
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !86117
  store ptr %.sroa.10.0.copyload28, ptr %.sroa.10.0..sroa_idx, align 8, !dbg !86117
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !86117
  store ptr %.sroa.13.0.copyload31, ptr %.sroa.13.0..sroa_idx, align 8, !dbg !86117
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24, !dbg !86117
  store i64 %.sroa.15.0.copyload33, ptr %.sroa.15.0..sroa_idx, align 8, !dbg !86117
  invoke void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec11spec_extendINtB6_3VecmEINtB4_10SpecExtendmINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1n_5slice4iter4ItermENCNvNtNtCskY9G75ZWc4U_11polars_expr11expressions4sort31map_sorted_indices_to_group_idx0EE11spec_extendB2D_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.c)
          to label %bb.h unwind label %bb.j, !dbg !86118

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !86119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !86119
  call fastcc void @_RNvXsj_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecmEINtNtCscgRAwXFJnXP_4core7convert4FromINtNtCsgZ49sUHp3tW_5alloc3vec3VecmEE4fromCskY9G75ZWc4U_11polars_expr(ptr noalias noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b), !dbg !86120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !86121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !86122
  br label %bb.i, !dbg !86123

bb.i:                                             ; preds = %bb.c, %bb.e, %bb.h
end_hunk_0
