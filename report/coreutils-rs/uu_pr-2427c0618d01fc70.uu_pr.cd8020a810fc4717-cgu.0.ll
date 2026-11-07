Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_pr-2427c0618d01fc70.uu_pr.cd8020a810fc4717-cgu.0?download=true
inline.NumInlined: 1527
inline.NumDeleted: 885
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_RNvCshDScVpnq8df_5uu_pr18recreate_arguments:bb.a
  store i8 1, ptr %.sroa.11.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %.val37 = load ptr, ptr %i.t, align 8, !nonnull !4, !noundef !4
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.val38 = load ptr, ptr %i.ck, align 8
  call fastcc void @_RNvMs0_NtNtCs5skpMncfVhl_14regex_automata4meta5regexNtB5_5Regex11search_half(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.i, ptr nonnull %.val37, ptr %.val38, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.j) #34
  %i.cl = load i64, ptr %i.i, align 8, !range !7, !noundef !4
  %.not30 = icmp eq i64 %i.cl, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %.not30, label %.split, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_arguments0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s_0EB2c_.exit.thread

.split:                                           ; preds = %_RINvMNtNtCs5skpMncfVhl_14regex_automata4util6searchNtB3_5Input8set_spanINtNtNtCs6JMX4GRUq9U_4core3ops5range5RangejEECshDScVpnq8df_5uu_pr.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.experimental.noalias.scope.decl(metadata !2200)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2201)
  %i.cm = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2202, !noundef !4 ; 5 uses
  %i.cn = icmp ult i64 %i.cm, 384307168202282326
  call void @llvm.assume(i1 %i.cn)
  %.not.i.i = icmp samesign ult i64 %i.bh, %i.cm
  br i1 %.not.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCshDScVpnq8df_5uu_pr.exit.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCshDScVpnq8df_5uu_pr.exit.thread.i

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCshDScVpnq8df_5uu_pr.exit.i: ; preds = %.split
  %i.co = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2202, !nonnull !4, !noundef !4
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.co, i64 %i.bh ; 4 uses
  %.sroa.0.0.copyload1.i = load i64, ptr %i.cp, align 8, !noalias !2203 ; 2 uses
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i, i64 16, i1 false), !noalias !2203
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %reass.sub = sub nsw i64 %i.cm, %i.at
  %i.cr = mul i64 %reass.sub, 24
  %i.cs = add i64 %i.cr, -48
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cp, ptr nonnull align 8 %i.cq, i64 %i.cs, i1 false), !noalias !2204
  %i.ct = add nsw i64 %i.cm, -1                   ; 2 uses
  store i64 %i.ct, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2202
  %.not.i55 = icmp eq i64 %.sroa.0.0.copyload1.i, -1
  br i1 %.not.i55, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCshDScVpnq8df_5uu_pr.exit.thread.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE6removeCshDScVpnq8df_5uu_pr.exit, !prof !2205

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCshDScVpnq8df_5uu_pr.exit.thread.i: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCshDScVpnq8df_5uu_pr.exit.i, %.split
  %i.cu = phi i64 [ %i.cm, %.split ], [ %i.ct, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCshDScVpnq8df_5uu_pr.exit.i ]
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef range(i64 0, 384307168202282325) %i.bh, i64 noundef %i.cu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #32, !noalias !2206
  unreachable

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE6removeCshDScVpnq8df_5uu_pr.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10try_removeCshDScVpnq8df_5uu_pr.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, i64 16, i1 false), !noalias !2200
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !2207)
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !2208
  %i.cv = call noundef dereferenceable_or_null(1) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 1, i64 noundef range(i64 1, 9) 1) #30, !noalias !2208 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.k, label %_RNvXs0_CshDScVpnq8df_5uu_prNtB5_13NumberingModeNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit

bb.k:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE6removeCshDScVpnq8df_5uu_pr.exit
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 1) #31, !noalias !2207
  unreachable

_RNvXs0_CshDScVpnq8df_5uu_prNtB5_13NumberingModeNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE6removeCshDScVpnq8df_5uu_pr.exit
  store i8 9, ptr %i.cv, align 1, !noalias !2207
  %i.cx = getelementptr inbounds nuw i8, ptr %i.l, i64 24 ; 2 uses
  store i64 5, ptr %i.cx, align 8, !alias.scope !2207
  store i64 1, ptr %i.l, align 8, !alias.scope !2207
  %.sroa.42.0..sroa_idx.i56 = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.cv, ptr %.sroa.42.0..sroa_idx.i56, align 8, !alias.scope !2207
  %.sroa.5.0..sroa_idx.i57 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx.i57, align 8, !alias.scope !2207
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store i64 1, ptr %i.cy, align 8, !alias.scope !2207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.cx, ptr %i.k, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXsi_NtNtNtCs6JMX4GRUq9U_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.417.0..sroa_idx, align 8
  call void @_RNvNvNtCs7tKScEop1B6_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noundef nonnull @100, ptr noundef nonnull %i.k) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %.val = load i64, ptr %i.l, align 8, !range !6, !alias.scope !2209, !noundef !4 ; 2 uses
  %i.cz = icmp eq i64 %.val, 0
  br i1 %i.cz, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr13NumberingModeEBD_.exit, label %bb.l

bb.l:                                             ; preds = %_RNvXs0_CshDScVpnq8df_5uu_prNtB5_13NumberingModeNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit
  %.val34 = load ptr, ptr %.sroa.42.0..sroa_idx.i56, align 8, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val34, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2210
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr13NumberingModeEBD_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr13NumberingModeEBD_.exit: ; preds = %_RNvXs0_CshDScVpnq8df_5uu_prNtB5_13NumberingModeNtNtCs6JMX4GRUq9U_4core7default7Default7default.exit, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.experimental.noalias.scope.decl(metadata !2211)
  %i.da = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2211, !noundef !4 ; 10 uses
  %i.db = icmp ult i64 %i.da, 384307168202282326
  call void @llvm.assume(i1 %i.db)
  %i.dc = icmp samesign ugt i64 %i.bh, %i.da
  br i1 %i.dc, label %bb.n, label %bb.m, !prof !8

bb.m:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr13NumberingModeEBD_.exit
  %i.dd = load i64, ptr %i.n, align 8, !range !6, !alias.scope !2211, !noundef !4
  %i.de = icmp eq i64 %i.da, %i.dd
  br i1 %i.de, label %bb.o, label %bb.p

bb.n:                                             ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCshDScVpnq8df_5uu_pr13NumberingModeEBD_.exit
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef %i.bh, i64 noundef %i.da, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @101) #32, !noalias !2212
  unreachable

bb.o:                                             ; preds = %bb.m
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2vKOLqTMYjT_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #33, !noalias !2213
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.m
  %i.df = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2211, !nonnull !4, !noundef !4
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.df, i64 %i.bh ; 3 uses
  %i.dh = icmp samesign ult i64 %i.bh, %i.da
  br i1 %i.dh, label %bb.q, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10insert_mutCshDScVpnq8df_5uu_pr.exit

bb.q:                                             ; preds = %bb.p
  %i.di = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dj = sub nuw nsw i64 %i.da, %i.bh
  %i.dk = mul nuw nsw i64 %i.dj, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.di, ptr nonnull align 8 %i.dg, i64 %i.dk, i1 false), !noalias !2213
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10insert_mutCshDScVpnq8df_5uu_pr.exit

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10insert_mutCshDScVpnq8df_5uu_pr.exit: ; preds = %bb.p, %bb.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dg, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.m, i64 24, i1 false), !noalias !2214
  %i.dl = add nuw nsw i64 %i.da, 1                ; 5 uses
  store i64 %i.dl, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2211
  %i.dm = add nuw nsw i64 %i.at, 2                ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2215)
  %i.dn = icmp samesign ult i64 %i.da, 384307168202282325
  call void @llvm.assume(i1 %i.dn)
  %i.do = icmp samesign ugt i64 %i.dm, %i.dl
  br i1 %i.do, label %bb.s, label %bb.r, !prof !8

bb.r:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10insert_mutCshDScVpnq8df_5uu_pr.exit
  %i.dp = load i64, ptr %i.n, align 8, !range !6, !alias.scope !2215, !noundef !4
  %i.dq = icmp eq i64 %i.dl, %i.dp
  br i1 %i.dq, label %bb.t, label %bb.u

bb.s:                                             ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10insert_mutCshDScVpnq8df_5uu_pr.exit
  call void @_RNvNvMs_NtCs7tKScEop1B6_5alloc3vecINtB6_3VecppE10insert_mut13assert_failed(i64 noundef %i.dm, i64 noundef %i.dl, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @102) #32, !noalias !2216
  unreachable

bb.t:                                             ; preds = %bb.r
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCs2vKOLqTMYjT_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.n) #33, !noalias !2217
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.r
  %i.dr = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !2215, !nonnull !4, !noundef !4
  %i.ds = getelementptr inbounds nuw [24 x i8], ptr %i.dr, i64 %i.dm ; 4 uses
  %.not = icmp samesign ugt i64 %i.dm, %i.da
  br i1 %.not, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10insert_mutCshDScVpnq8df_5uu_pr.exit58, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.du = sub nuw nsw i64 %i.dl, %i.dm
  %i.dv = mul nuw nsw i64 %i.du, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dt, ptr nonnull align 8 %i.ds, i64 %i.dv, i1 false), !noalias !2217
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10insert_mutCshDScVpnq8df_5uu_pr.exit58

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VecNtNtB6_6string6StringE10insert_mutCshDScVpnq8df_5uu_pr.exit58: ; preds = %bb.u, %bb.v
  store i64 %.sroa.0.0.copyload1.i, ptr %i.ds, align 8, !noalias !2218
  %.sroa.4.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx63, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4, i64 16, i1 false), !noalias !2218
  %i.dw = add nuw nsw i64 %i.da, 2
  store i64 %i.dw, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !2215
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  br label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_arguments0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s_0EB2c_.exit.thread

bb.w:                                             ; preds = %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0B3_.exit.thread.i.i.i.i.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  %i.dy = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !nonnull !4, !noundef !4
  %i.ea = load i64, ptr %i.dx, align 8, !noundef !4
  %i.eb = call fastcc { ptr, i64 } @_RINvMNtCs6JMX4GRUq9U_4core3stre12trim_matchesNvMNtNtB5_4char7methodsc13is_whitespaceECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dz, i64 noundef %i.ea) #30
  %i.ec = extractvalue { ptr, i64 } %i.eb, 1
  %i.ed = icmp ult i64 %i.ec, 3
  br i1 %i.ed, label %bb.ac, label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s1_0EB2c_.exit.thread

_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s1_0EB2c_.exit.thread: ; preds = %bb.j, %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0B3_.exit.i.i.i.i.i, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_arguments0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s_0EB2c_.exit.thread, %bb.w, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit
  %i.ee = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !nonnull !4, !noundef !4 ; 6 uses
  %i.ef = load i64, ptr %i.n, align 8, !range !6, !noundef !4
  %i.eg = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noundef !4 ; 3 uses
  %i.eh = icmp ult i64 %i.eg, 384307168202282326
  call void @llvm.assume(i1 %i.eh)
  %.idx = mul nuw nsw i64 %i.eg, 24
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.idx
  call void @llvm.experimental.noalias.scope.decl(metadata !2219)
  %.not14.i.i.i.i = icmp eq i64 %i.eg, 0
  br i1 %.not14.i.i.i.i, label %_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0EB2r_EB2R_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s1_0EB2c_.exit.thread, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter15filter_try_foldNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB19_3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B2Z_.exit.i.i.i.i
  %.sroa.0.0 = phi i1 [ %.sroa.0.1, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter15filter_try_foldNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB19_3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B2Z_.exit.i.i.i.i ], [ false, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s1_0EB2c_.exit.thread ]
  %i.ej = phi ptr [ %i.ek, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter15filter_try_foldNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB19_3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B2Z_.exit.i.i.i.i ], [ %i.ee, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s1_0EB2c_.exit.thread ] ; 4 uses
  %.sroa.4.015.i.i.i.i = phi ptr [ %.pn5.i.i.i.i.i, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter15filter_try_foldNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB19_3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B2Z_.exit.i.i.i.i ], [ %i.ee, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s1_0EB2c_.exit.thread ] ; 6 uses
  %.sroa.012.0.copyload.i.i.i.i = load i64, ptr %i.ej, align 8, !noalias !2220 ; 3 uses
  %.sroa.413.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %.sroa.413.0.copyload.i.i.i.i = load ptr, ptr %.sroa.413.0..sroa_idx.i.i.i.i, align 8, !noalias !2220 ; 8 uses
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !2220 ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24 ; 2 uses
  br i1 %.sroa.0.0, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.413.0.copyload.i.i.i.i) ]
  switch i64 %.sroa.5.0.copyload.i.i.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i.i.i.i.i.i.i [
    i64 2, label %bb.y
    i64 0, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.i.i.i.i.i
  ]

bb.y:                                             ; preds = %bb.x
  %i.el = load i16, ptr %.sroa.413.0.copyload.i.i.i.i, align 1
  %i.em = icmp ne i16 %i.el, 11565
  %i.en = zext i1 %i.em to i32
  %i.eo = icmp eq i32 %i.en, 0
  br i1 %i.eo, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread.i.i.i.i.i, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i.i.i.i.i.i.i

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  %rhsc.i.i.i.i.i.i.i = load i8, ptr %.sroa.413.0.copyload.i.i.i.i, align 1, !alias.scope !2221, !noalias !2222
  %rhsc.fr.i.i.i.i.i.i.i = freeze i8 %rhsc.i.i.i.i.i.i.i
  %i.ep = icmp ne i8 %rhsc.fr.i.i.i.i.i.i.i, 45
  %i.eq = icmp eq i64 %.sroa.5.0.copyload.i.i.i.i, 1
  %or.cond.i.i.i.i.i.i.i = or i1 %i.eq, %i.ep
  br i1 %or.cond.i.i.i.i.i.i.i, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.i.i.i.i.i, label %.lr.ph144

.lr.ph144:                                        ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i.i.i.i.i.i.i
  %i.er = getelementptr i8, ptr %.sroa.413.0.copyload.i.i.i.i, i64 %.sroa.5.0.copyload.i.i.i.i
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.413.0.copyload.i.i.i.i, i64 1
  br label %bb.aa

bb.z:                                             ; preds = %bb.aa
  %i.et = getelementptr inbounds nuw i8, ptr %i.eu, i64 1 ; 2 uses
  %.not.not.not.i.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.et, %i.er
  br i1 %.not.not.not.i.not.i.i.i.i.i.i.i.i.i, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread2.i.i.i.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph144, %bb.z
  %i.eu = phi ptr [ %i.es, %.lr.ph144 ], [ %i.et, %bb.z ] ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.eu, align 1, !alias.scope !2223, !noalias !2224, !noundef !4
  %i.ev = add i8 %.val.i.i.i.i.i.i.i.i.i.i, -58
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i8 %i.ev, -10
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.i.i.i.i.i, label %bb.z

_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.i.i.i.i.i: ; preds = %bb.aa, %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i.i.i.i.i.i.i, %bb.x
  %i.ew = call fastcc { ptr, i64 } @_RNvCshDScVpnq8df_5uu_pr15as_page_operand(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.413.0.copyload.i.i.i.i, i64 noundef %.sroa.5.0.copyload.i.i.i.i) #30, !noalias !2222
  %i.ex = extractvalue { ptr, i64 } %i.ew, 0
  %.not1.i.i.i.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not1.i.i.i.i.i.i, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread.i.i.i.i.i, label %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread2.i.i.i.i.i

_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread2.i.i.i.i.i: ; preds = %bb.z, %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.i.i.i.i.i
  %i.ey = icmp eq i64 %.sroa.012.0.copyload.i.i.i.i, 0
  br i1 %i.ey, label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter15filter_try_foldNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB19_3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B2Z_.exit.i.i.i.i, label %bb.ab

bb.ab:                                            ; preds = %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread2.i.i.i.i.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.413.0.copyload.i.i.i.i, i64 noundef %.sroa.012.0.copyload.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2225
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter15filter_try_foldNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB19_3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B2Z_.exit.i.i.i.i

_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread.i.i.i.i.i: ; preds = %bb.y, %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.0.2 = phi i1 [ true, %.lr.ph.i.i.i.i ], [ false, %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.i.i.i.i.i ], [ true, %bb.y ]
  store i64 %.sroa.012.0.copyload.i.i.i.i, ptr %.sroa.4.015.i.i.i.i, align 8, !noalias !2220
  %.sroa.7.16..sroa.4.0.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.015.i.i.i.i, i64 8
  store ptr %.sroa.413.0.copyload.i.i.i.i, ptr %.sroa.7.16..sroa.4.0.sroa_idx.i.i.i.i, align 8, !noalias !2220
  %.sroa.8.16..sroa.4.0.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.015.i.i.i.i, i64 16
  store i64 %.sroa.5.0.copyload.i.i.i.i, ptr %.sroa.8.16..sroa.4.0.sroa_idx.i.i.i.i, align 8, !noalias !2220
  %i.ez = getelementptr inbounds nuw i8, ptr %.sroa.4.015.i.i.i.i, i64 24
  br label %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter15filter_try_foldNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB19_3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B2Z_.exit.i.i.i.i

_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter15filter_try_foldNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB19_3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B2Z_.exit.i.i.i.i: ; preds = %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread.i.i.i.i.i, %bb.ab, %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread2.i.i.i.i.i
  %.sroa.0.1 = phi i1 [ %.sroa.0.2, %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread.i.i.i.i.i ], [ false, %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread2.i.i.i.i.i ], [ false, %bb.ab ]
  %.pn5.i.i.i.i.i = phi ptr [ %i.ez, %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread.i.i.i.i.i ], [ %.sroa.4.015.i.i.i.i, %_RNCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0B3_.exit.thread2.i.i.i.i.i ], [ %.sroa.4.015.i.i.i.i, %bb.ab ] ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ek, %i.ei
  br i1 %.not.i.i.i.i, label %_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0EB2r_EB2R_.exit, label %.lr.ph.i.i.i.i

_RINvNtNtCs7tKScEop1B6_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0EB2r_EB2R_.exit: ; preds = %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter15filter_try_foldNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB19_3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B2Z_.exit.i.i.i.i, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s1_0EB2c_.exit.thread
  %.sroa.4.0.lcssa.i.i.i.i130 = phi ptr [ %i.ee, %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s1_0EB2c_.exit.thread ], [ %.pn5.i.i.i.i.i, %_RNCINvNtNtNtCs6JMX4GRUq9U_4core4iter8adapters6filter15filter_try_foldNtNtCs7tKScEop1B6_5alloc6string6StringINtNtNtB19_3vec13in_place_drop11InPlaceDropB15_EINtNtBa_6result6ResultB1H_zENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss2_0NCINvNtB1M_16in_place_collect24write_in_place_with_dropB15_E0E0B2Z_.exit.i.i.i.i ]
  %i.fa = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i130 to i64
  %i.fb = ptrtoint ptr %i.ee to i64
  %i.fc = sub nuw i64 %i.fa, %i.fb
  %i.fd = udiv exact i64 %i.fc, 24
  store i64 %i.ef, ptr %0, align 8, !alias.scope !2219
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ee, ptr %i.fe, align 8, !alias.scope !2219
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fd, ptr %i.ff, align 8, !alias.scope !2219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.p) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.r) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCsipSpXIjCLRi_5regex5regex6string5RegexECshDScVpnq8df_5uu_pr(ptr noalias nofree noundef align 8 dereferenceable(32) %i.t) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

bb.ac:                                            ; preds = %bb.w
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !2226
  %i.fg = call noundef dereferenceable_or_null(4) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 4, i64 noundef range(i64 1, 9) 1) #30, !noalias !2226 ; 3 uses
  %i.fh = icmp eq ptr %i.fg, null
  br i1 %i.fh, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef 1, i64 4) #31
  unreachable

bb.ae:                                            ; preds = %bb.ac
  store i32 940139821, ptr %i.fg, align 1
  %i.fi = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noundef !4 ; 2 uses
  %i.fj = icmp ult i64 %i.br, %i.fi
  br i1 %i.fj, label %bb.af, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %i.fk = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !nonnull !4, !noundef !4
  %i.fl = getelementptr inbounds nuw [24 x i8], ptr %i.fk, i64 %i.br ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2227)
  call void @llvm.experimental.noalias.scope.decl(metadata !2228)
  %.val.i.i60 = load i64, ptr %i.fl, align 8, !range !6, !alias.scope !2229, !noundef !4 ; 2 uses
  %i.fm = icmp eq i64 %.val.i.i60, 0
  br i1 %i.fm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  %.val1.i.i61 = load ptr, ptr %i.fn, align 8, !alias.scope !2229, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i61, i64 noundef %.val.i.i60, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !2229
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECshDScVpnq8df_5uu_pr.exit: ; preds = %bb.af, %bb.ag
  store i64 4, ptr %i.fl, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store ptr %i.fg, ptr %.sroa.424.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fl, i64 16
  store i64 4, ptr %.sroa.525.0..sroa_idx, align 8
  br label %_RINvYINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters10take_while9TakeWhileINtNtNtBc_5slice4iter4IterNtNtCs7tKScEop1B6_5alloc6string6StringENCNvCshDScVpnq8df_5uu_pr18recreate_argumentss0_0ENtCseEyoWS67Tvd_9itertools9Itertools13find_positionNCB2a_s1_0EB2c_.exit.thread

bb.ah:                                            ; preds = %bb.ae
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %i.br, i64 noundef %i.fi, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @103) #32
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
define void @_RNvCshDScVpnq8df_5uu_pr26parse_column_page_operands(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 384307168202282326) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.idx = mul nuw nsw i64 %2, 24
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %.outer._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46
  %.sroa.0.0.ph144 = phi ptr [ %i.c, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46 ], [ %1, %bb.a ]
  %.sroa.0.054.ph143 = phi i64 [ %.sroa.0.054115, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46 ], [ -1, %bb.a ]
  %.sroa.7.0.ph142 = phi ptr [ %.sroa.7.0114, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46 ], [ undef, %bb.a ]
  %.sroa.9.0.ph141 = phi i64 [ %.sroa.9.0113, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46 ], [ undef, %bb.a ]
  %.sroa.10.0.ph139 = phi i64 [ %.sroa.10.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46 ], [ -1, %bb.a ] ; 4 uses
  %.sroa.14.0.ph137 = phi ptr [ %.sroa.14.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46 ], [ undef, %bb.a ] ; 4 uses
  %.sroa.16.0.ph135 = phi i64 [ %.sroa.16.1, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46 ], [ undef, %bb.a ] ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit
  %.sroa.0.0116 = phi ptr [ %.sroa.0.0.ph144, %.lr.ph ], [ %i.c, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit ] ; 3 uses
  %.sroa.0.054115 = phi i64 [ %.sroa.0.054.ph143, %.lr.ph ], [ %i.o, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit ] ; 7 uses
  %.sroa.7.0114 = phi ptr [ %.sroa.7.0.ph142, %.lr.ph ], [ %i.v, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit ] ; 5 uses
  %.sroa.9.0113 = phi i64 [ %.sroa.9.0.ph141, %.lr.ph ], [ %i.o, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit ] ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.sroa.0.0116, i64 24 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.sroa.0.0116, i64 8 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.sroa.0.0116, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !4 ; 6 uses
  %i.g = icmp eq i64 %i.f, 2
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.i = load i16, ptr %i.h, align 1
  %i.j = icmp ne i16 %i.i, 11565
  %i.k = zext i1 %i.j to i32
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %.outer._crit_edge, label %.thread

bb.d:                                             ; preds = %bb.b
  %.not = icmp ne i64 %.sroa.0.054115, -1
  %.not.i.i = icmp eq i64 %i.f, 0
  %or.cond = or i1 %.not, %.not.i.i
  br i1 %or.cond, label %_RNvCshDScVpnq8df_5uu_pr17as_column_operand.exit.thread, label %._RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i_crit_edge

._RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i_crit_edge: ; preds = %bb.d
  %.pre = load ptr, ptr %i.d, align 8
  br label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i

.thread:                                          ; preds = %bb.c
  %.not55 = icmp eq i64 %.sroa.0.054115, -1
  br i1 %.not55, label %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i, label %_RNvCshDScVpnq8df_5uu_pr17as_column_operand.exit.thread

_RNvCshDScVpnq8df_5uu_pr17as_column_operand.exit.thread: ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i, %.thread, %bb.d, %.lr.ph276
  %.not32 = icmp eq i64 %.sroa.10.0.ph139, -1
  br i1 %.not32, label %bb.j, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs7tKScEop1B6_5alloc6string6StringEECshDScVpnq8df_5uu_pr.exit46

_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i: ; preds = %._RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i_crit_edge, %.thread
  %i.m = phi ptr [ %.pre, %._RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i_crit_edge ], [ %i.h, %.thread ] ; 3 uses
  %rhsc.i = load i8, ptr %i.m, align 1, !alias.scope !2244
  %rhsc.fr.i = freeze i8 %rhsc.i
  %i.n = icmp ne i8 %rhsc.fr.i, 45
  %i.o = add i64 %i.f, -1                         ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 2 uses
  %i.q = icmp eq i64 %i.o, 0
  %or.cond.i = or i1 %i.q, %i.n
  br i1 %or.cond.i, label %_RNvCshDScVpnq8df_5uu_pr17as_column_operand.exit.thread, label %bb.e

bb.e:                                             ; preds = %_RNvMNtCs6JMX4GRUq9U_4core5sliceSh11starts_withCshDScVpnq8df_5uu_pr.exit.i
  %i.r = getelementptr i8, ptr %i.m, i64 %i.f
  %.not.not.not.i.not.i.i.i275 = icmp eq i64 %i.f, 1
  br i1 %.not.not.not.i.not.i.i.i275, label %._crit_edge, label %.lr.ph276

bb.f:                                             ; preds = %.lr.ph276
  %i.s = getelementptr inbounds nuw i8, ptr %i.t, i64 1 ; 2 uses
  %.not.not.not.i.not.i.i.i = icmp eq ptr %i.s, %i.r
end_hunk_0
