Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/coreutils.coreutils.f62e4db4eae9fc3c-cgu.0?download=true
inline.NumInlined: 9927
inline.NumDeleted: 3951
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 60
loop-unroll.NumUnrolled: 89
begin_hunk_0_@_RINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBJ_6cloned6ClonedINtNtNtBN_5slice4iter4IterB2k_EEEECsl8pJiQOn4hA_9coreutils:bb.a
  %.sroa.4708.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.acv, i64 8
  store i64 %.sroa.15.0, ptr %.sroa.4708.0..sroa_idx, align 8
  %.sroa.4708.sroa.4.0..sroa.4708.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.acv, i64 16
  store ptr %.sroa.9.0, ptr %.sroa.4708.sroa.4.0..sroa.4708.0..sroa_idx.sroa_idx, align 8
  %.sroa.4708.sroa.5.0..sroa.4708.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.acv, i64 24
  store i64 %.sroa.15.0, ptr %.sroa.4708.sroa.5.0..sroa.4708.0..sroa_idx.sroa_idx, align 8
  call fastcc void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils(ptr noalias nofree noundef align 8 dereferenceable(24) %i.fd) #45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fd)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit523

bb.fm:                                            ; preds = %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit
  %i.acw = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  %i.acx = load ptr, ptr %i.acw, align 8, !nonnull !12, !noundef !12 ; 12 uses
  %i.acy = getelementptr inbounds nuw i8, ptr %i.xt, i64 16
  %i.acz = load i64, ptr %i.acy, align 8, !noundef !12
  switch i64 %i.acz, label %bb.ft [
    i64 13, label %bb.fn
    i64 5, label %bb.fo
    i64 15, label %bb.fp
    i64 7, label %bb.fq
    i64 6, label %bb.fs
  ]

bb.fn:                                            ; preds = %bb.fm
  %i.ada = load i64, ptr %i.acx, align 1
  %i.adb = xor i64 %i.ada, 8461750701979956584
  %i.adc = getelementptr i8, ptr %i.acx, i64 5
  %i.add = load i64, ptr %i.adc, align 1
  %i.ade = xor i64 %i.add, 7163382462263160365
  %i.adf = or i64 %i.adb, %i.ade
  %i.adg = icmp ne i64 %i.adf, 0
  %i.adh = zext i1 %i.adg to i32
  %i.adi = icmp eq i32 %i.adh, 0
  %. = select i1 %i.adi, i8 1, i8 %i.xl
  br label %bb.ft

bb.fo:                                            ; preds = %bb.fm
  %i.adj = load i32, ptr %i.acx, align 1
  %i.adk = xor i32 %i.adj, 1953394541
  %i.adl = getelementptr i8, ptr %i.acx, i64 4
  %i.adm = load i8, ptr %i.adl, align 1
  %i.adn = zext i8 %i.adm to i32
  %i.ado = xor i32 %i.adn, 104
  %i.adp = or i32 %i.adk, %i.ado
  %i.adq = icmp ne i32 %i.adp, 0
  %i.adr = zext i1 %i.adq to i32
  %i.ads = icmp eq i32 %i.adr, 0
  %spec.select967 = select i1 %i.ads, i8 1, i8 %i.xm
  br label %bb.ft

bb.fp:                                            ; preds = %bb.fm
  %i.adt = load i64, ptr %i.acx, align 1
  %i.adu = xor i64 %i.adt, 3273098173147407719
  %i.adv = getelementptr i8, ptr %i.acx, i64 7
  %i.adw = load i64, ptr %i.adv, align 1
  %i.adx = xor i64 %i.adw, 7163382462263160365
  %i.ady = or i64 %i.adu, %i.adx
  %i.adz = icmp ne i64 %i.ady, 0
  %i.aea = zext i1 %i.adz to i32
  %i.aeb = icmp eq i32 %i.aea, 0
  %spec.select968 = select i1 %i.aeb, i8 1, i8 %i.xk
  br label %bb.ft

bb.fq:                                            ; preds = %bb.fm
  %i.aec = load i32, ptr %i.acx, align 1
  %i.aed = xor i32 %i.aec, 1701672302
  %i.aee = getelementptr i8, ptr %i.acx, i64 3
  %i.aef = load i32, ptr %i.aee, align 1
  %i.aeg = xor i32 %i.aef, 1667854949
  %i.aeh = or i32 %i.aed, %i.aeg
  %i.aei = icmp ne i32 %i.aeh, 0
  %i.aej = zext i1 %i.aei to i32
  %i.aek = icmp eq i32 %i.aej, 0
  br i1 %i.aek, label %bb.ft, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.ael = load i32, ptr %i.acx, align 1
  %i.aem = xor i32 %i.ael, 1936876918
  %i.aen = getelementptr i8, ptr %i.acx, i64 3
  %i.aeo = load i32, ptr %i.aen, align 1
  %i.aep = xor i32 %i.aeo, 1852795251
  %i.aeq = or i32 %i.aem, %i.aep
  %i.aer = icmp ne i32 %i.aeq, 0
  %i.aes = zext i1 %i.aer to i32
  %i.aet = icmp eq i32 %i.aes, 0
  %.406 = select i1 %i.aet, i8 1, i8 %i.xn
  br label %bb.ft

bb.fs:                                            ; preds = %bb.fm
  %i.aeu = load i32, ptr %i.acx, align 1
  %i.aev = xor i32 %i.aeu, 1684955506
  %i.aew = getelementptr i8, ptr %i.acx, i64 4
  %i.aex = load i16, ptr %i.aew, align 1
  %i.aey = zext i16 %i.aex to i32
  %i.aez = xor i32 %i.aey, 28015
  %i.afa = or i32 %i.aev, %i.aez
  %i.afb = icmp ne i32 %i.afa, 0
  %i.afc = zext i1 %i.afb to i32
  %i.afd = icmp eq i32 %i.afc, 0
  %spec.select = select i1 %i.afd, i8 1, i8 %i.xo
  br label %bb.ft

bb.ft:                                            ; preds = %bb.fp, %bb.fo, %bb.fs, %bb.fm, %bb.fn, %bb.fq, %bb.fr, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit
  %.sroa.13.1 = phi i8 [ %i.xo, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit ], [ %i.xo, %bb.fm ], [ %i.xo, %bb.fr ], [ %i.xo, %bb.fn ], [ %spec.select, %bb.fs ], [ %i.xo, %bb.fq ], [ %i.xo, %bb.fp ], [ %i.xo, %bb.fo ] ; 4 uses
  %.sroa.11.1 = phi i8 [ %i.xn, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit ], [ %i.xn, %bb.fm ], [ %.406, %bb.fr ], [ %i.xn, %bb.fn ], [ %i.xn, %bb.fs ], [ %i.xn, %bb.fq ], [ %i.xn, %bb.fp ], [ %i.xn, %bb.fo ] ; 2 uses
  %.sroa.963.1 = phi i8 [ %i.xm, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit ], [ %i.xm, %bb.fm ], [ %i.xm, %bb.fr ], [ %i.xm, %bb.fn ], [ %i.xm, %bb.fs ], [ %i.xm, %bb.fq ], [ %i.xm, %bb.fp ], [ %spec.select967, %bb.fo ] ; 3 uses
  %.sroa.758.1 = phi i8 [ %i.xl, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit ], [ %i.xl, %bb.fm ], [ %i.xl, %bb.fr ], [ %., %bb.fn ], [ %i.xl, %bb.fs ], [ %i.xl, %bb.fq ], [ %i.xl, %bb.fp ], [ %i.xl, %bb.fo ] ; 3 uses
  %.sroa.553.1 = phi i8 [ %i.xk, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit ], [ %i.xk, %bb.fm ], [ %i.xk, %bb.fr ], [ %i.xk, %bb.fn ], [ %i.xk, %bb.fs ], [ %i.xk, %bb.fq ], [ %spec.select968, %bb.fp ], [ %i.xk, %bb.fo ] ; 3 uses
  %.sroa.050.1.shrunk = phi i1 [ %i.xh, %_RINvMNtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB3_12MatchesError6unwrapINtNtCs6JMX4GRUq9U_4core6option6OptionRNtNtCs7tKScEop1B6_5alloc6string6StringEECsl8pJiQOn4hA_9coreutils.exit ], [ %i.xh, %bb.fm ], [ %i.xh, %bb.fr ], [ %i.xh, %bb.fn ], [ %i.xh, %bb.fs ], [ true, %bb.fq ], [ %i.xh, %bb.fp ], [ %i.xh, %bb.fo ] ; 3 uses
  %i.afe = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @588, i64 noundef 16) #45 ; 3 uses
  %i.aff = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @589, i64 noundef 18) #45 ; 3 uses
  %i.afg = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches8get_flag(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @590, i64 noundef 11) #45 ; 2 uses
  %i.afh = call noundef zeroext i1 @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11arg_matchesNtB2_10ArgMatches11contains_id(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.fh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @591, i64 noundef 3) #45
  br i1 %i.afh, label %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread915, label %bb.fu

bb.fu:                                            ; preds = %bb.ft
  %.sroa.0350.0.insert.ext = zext i1 %.sroa.050.1.shrunk to i48
  %.sroa.0350.1.insert.ext = zext nneg i8 %.sroa.553.1 to i48
  %.sroa.0350.1.insert.shift = shl nuw nsw i48 %.sroa.0350.1.insert.ext, 8
  %.sroa.0350.1.insert.insert = or disjoint i48 %.sroa.0350.1.insert.shift, %.sroa.0350.0.insert.ext
  %.sroa.0350.2.insert.ext = zext nneg i8 %.sroa.758.1 to i48
  %.sroa.0350.2.insert.shift = shl nuw nsw i48 %.sroa.0350.2.insert.ext, 16
  %.sroa.0350.3.insert.ext = zext nneg i8 %.sroa.963.1 to i48
  %.sroa.0350.3.insert.shift = shl nuw nsw i48 %.sroa.0350.3.insert.ext, 24
  %i.afi = or disjoint i48 %.sroa.0350.1.insert.insert, %.sroa.0350.3.insert.shift
  %.sroa.0350.3.insert.insert = or disjoint i48 %i.afi, %.sroa.0350.2.insert.shift
  %.sroa.0350.4.insert.ext = zext nneg i8 %.sroa.11.1 to i48
  %.sroa.0350.4.insert.shift = shl nuw nsw i48 %.sroa.0350.4.insert.ext, 32
  %.sroa.0350.5.insert.ext = zext nneg i8 %.sroa.13.1 to i48
  %.sroa.0350.5.insert.shift = shl nuw nsw i48 %.sroa.0350.5.insert.ext, 40
  %i.afj = or disjoint i48 %.sroa.0350.3.insert.insert, %.sroa.0350.4.insert.shift ; 2 uses
  %.sroa.0350.5.insert.insert = or disjoint i48 %i.afj, %.sroa.0350.5.insert.shift
  %.sroa.01.0.extract.trunc.i = zext i1 %.sroa.050.1.shrunk to i8
  %i.afk = add nuw nsw i8 %.sroa.758.1, %.sroa.963.1
  %i.afl = add nuw nsw i8 %i.afk, %.sroa.553.1
  %i.afm = add nuw nsw i8 %i.afl, %.sroa.01.0.extract.trunc.i ; 2 uses
  %i.afn = icmp samesign ugt i8 %i.afm, 1
  br i1 %i.afn, label %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.afo = icmp eq i8 %i.afm, 1
  br i1 %i.afo, label %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit, label %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread915

_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit: ; preds = %bb.fv
  %i.afp = and i48 %i.afj, 4294967296
  %.not.i506 = icmp ne i48 %i.afp, 0
  %i.afq = icmp ne i8 %.sroa.13.1, 0
  %brmerge.i = or i1 %i.afq, %i.afe
  %or.cond.i507 = select i1 %.not.i506, i1 true, i1 %brmerge.i
  %spec.select.i508 = or i1 %i.aff, %or.cond.i507
  br i1 %spec.select.i508, label %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread, label %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread915

_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread: ; preds = %bb.fu, %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.fb)
  call void @_RNvCsgcf5BHVXlUt_7uu_sort20ordering_opts_string(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.fb, i48 %.sroa.0350.5.insert.insert, i1 noundef zeroext %i.afe, i1 noundef zeroext %i.aff, i1 noundef zeroext %i.afg) #45
  %i.afr = getelementptr inbounds nuw i8, ptr %i.fb, i64 8
  %i.afs = load ptr, ptr %i.afr, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.aft = getelementptr inbounds nuw i8, ptr %i.fb, i64 16
  %i.afu = load i64, ptr %i.aft, align 8, !noundef !12
  %i.afv = call { ptr, ptr } @_RNvCsgcf5BHVXlUt_7uu_sort26incompatible_options_error(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.afs, i64 noundef %i.afu) #45 ; 2 uses
  %i.afw = extractvalue { ptr, ptr } %i.afv, 0
  %i.afx = extractvalue { ptr, ptr } %i.afv, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !29635)
  call void @llvm.experimental.noalias.scope.decl(metadata !29636)
  %.val.i.i509 = load i64, ptr %i.fb, align 8, !range !19, !alias.scope !29637, !noundef !12 ; 2 uses
  %i.afy = icmp eq i64 %.val.i.i509, 0
  br i1 %i.afy, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit, label %bb.fw

bb.fw:                                            ; preds = %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %i.afs, i64 noundef %.val.i.i509, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !29637
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit: ; preds = %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread, %bb.fw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fb)
  br label %bb.gb

_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread915: ; preds = %bb.fv, %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit, %bb.ft
  br i1 %.sroa.050.1.shrunk, label %_RNvMs6_Csgcf5BHVXlUt_7uu_sortNtB5_9ModeFlags7to_mode.exit, label %bb.fx

bb.fx:                                            ; preds = %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread915
  %.not.i511 = icmp eq i8 %.sroa.553.1, 0
  br i1 %.not.i511, label %bb.fy, label %_RNvMs6_Csgcf5BHVXlUt_7uu_sortNtB5_9ModeFlags7to_mode.exit

bb.fy:                                            ; preds = %bb.fx
  %.not3.i = icmp eq i8 %.sroa.758.1, 0
  br i1 %.not3.i, label %bb.fz, label %_RNvMs6_Csgcf5BHVXlUt_7uu_sortNtB5_9ModeFlags7to_mode.exit

bb.fz:                                            ; preds = %bb.fy
  %.not4.i = icmp eq i8 %.sroa.963.1, 0
  br i1 %.not4.i, label %bb.ga, label %_RNvMs6_Csgcf5BHVXlUt_7uu_sortNtB5_9ModeFlags7to_mode.exit

bb.ga:                                            ; preds = %bb.fz
  %.not5.i = icmp eq i8 %.sroa.13.1, 0
  br i1 %.not5.i, label %_RNvMs6_Csgcf5BHVXlUt_7uu_sortNtB5_9ModeFlags7to_mode.exit.thread1317, label %_RNvMs6_Csgcf5BHVXlUt_7uu_sortNtB5_9ModeFlags7to_mode.exit.thread

_RNvMs6_Csgcf5BHVXlUt_7uu_sortNtB5_9ModeFlags7to_mode.exit.thread: ; preds = %bb.ga
  store i8 5, ptr %i.fo, align 1
  br label %bb.gm

_RNvMs6_Csgcf5BHVXlUt_7uu_sortNtB5_9ModeFlags7to_mode.exit.thread1317: ; preds = %bb.ga
  %.not6.i = icmp eq i8 %.sroa.11.1, 0
  %..i513 = select i1 %.not6.i, i8 6, i8 4
  store i8 %..i513, ptr %i.fo, align 1
  br label %bb.ge

_RNvMs6_Csgcf5BHVXlUt_7uu_sortNtB5_9ModeFlags7to_mode.exit: ; preds = %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread915, %bb.fx, %bb.fy, %bb.fz
  %.sroa.02.0.i512 = phi i8 [ 3, %bb.fz ], [ 0, %_RNvCsgcf5BHVXlUt_7uu_sort21ordering_incompatible.exit.thread915 ], [ 2, %bb.fx ], [ 1, %bb.fy ]
  store i8 %.sroa.02.0.i512, ptr %i.fo, align 1
  %i.afz = trunc nuw i8 %.sroa.13.1 to i1
  br i1 %i.afz, label %bb.gm, label %bb.ge

bb.gb:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort7tmp_dir13TmpDirWrapperECsl8pJiQOn4hA_9coreutils.exit, %_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEEs2_0Csl8pJiQOn4hA_9coreutils.exit, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit
  %.sroa.24.1 = phi ptr [ @56, %_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEEs2_0Csl8pJiQOn4hA_9coreutils.exit ], [ %.sroa.24.3, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort7tmp_dir13TmpDirWrapperECsl8pJiQOn4hA_9coreutils.exit ], [ %i.afx, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit ] ; 2 uses
  %.sroa.0.1 = phi ptr [ %i.ajo, %_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEEs2_0Csl8pJiQOn4hA_9coreutils.exit ], [ %.sroa.0.3, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCsgcf5BHVXlUt_7uu_sort7tmp_dir13TmpDirWrapperECsl8pJiQOn4hA_9coreutils.exit ], [ %i.afw, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECsl8pJiQOn4hA_9coreutils.exit ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29638)
  %i.aga = getelementptr inbounds nuw i8, ptr %i.fe, i64 8
  %.val2.i514 = load ptr, ptr %i.aga, align 8, !alias.scope !29638, !nonnull !12, !noundef !12 ; 2 uses
  %i.agb = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %.val3.i515 = load i64, ptr %i.agb, align 8, !alias.scope !29638, !noundef !12 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29639)
  %i.agc = icmp eq i64 %.val3.i515, 0
  br i1 %i.agc, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i521, label %.lr.ph.i.i.i516

.lr.ph.i.i.i516:                                  ; preds = %bb.gb, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i520
  %.sroa.0.03.i.i.i517 = phi i64 [ %i.age, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i520 ], [ 0, %bb.gb ] ; 2 uses
  %i.agd = getelementptr inbounds nuw [24 x i8], ptr %.val2.i514, i64 %.sroa.0.03.i.i.i517 ; 2 uses
  %i.age = add nuw nsw i64 %.sroa.0.03.i.i.i517, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !29640)
  %.val.i.i.i.i518 = load i64, ptr %i.agd, align 8, !range !19, !alias.scope !29641, !noalias !29638, !noundef !12 ; 2 uses
  %i.agf = icmp eq i64 %.val.i.i.i.i518, 0
  br i1 %i.agf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i520, label %bb.gc

bb.gc:                                            ; preds = %.lr.ph.i.i.i516
  %i.agg = getelementptr inbounds nuw i8, ptr %i.agd, i64 8
  %.val1.i.i.i.i519 = load ptr, ptr %i.agg, align 8, !alias.scope !29642, !noalias !29638, !nonnull !12, !noundef !12
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i519, i64 noundef %.val.i.i.i.i518, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !29643
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i520

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i520: ; preds = %bb.gc, %.lr.ph.i.i.i516
  %i.agh = icmp eq i64 %i.age, %.val3.i515
  br i1 %i.agh, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i521, label %.lr.ph.i.i.i516

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i521: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECsl8pJiQOn4hA_9coreutils.exit.i.i.i520, %bb.gb
  %.val.i522 = load i64, ptr %i.fe, align 8, !range !19, !alias.scope !29638, !noundef !12 ; 2 uses
  %i.agi = icmp eq i64 %.val.i522, 0
  br i1 %i.agi, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit523, label %bb.gd

bb.gd:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCsl8pJiQOn4hA_9coreutils.exit.i521
  %i.agj = mul nuw i64 %.val.i522, 24
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i514, i64 noundef %i.agj, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !29638
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc3vec3VecNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEECsl8pJiQOn4hA_9coreutils.exit523

bb.ge:                                            ; preds = %_RNvMs6_Csgcf5BHVXlUt_7uu_sortNtB5_9ModeFlags7to_mode.exit.thread1317, %bb.gm, %_RNvMs6_Csgcf5BHVXlUt_7uu_sortNtB5_9ModeFlags7to_mode.exit
  %i.agk = zext i1 %i.afe to i8
  store i8 %i.agk, ptr %i.fs, align 1
  %i.agl = zext i1 %i.aff to i8
  store i8 %i.agl, ptr %i.ft, align 2
  %i.agm = zext i1 %i.afg to i8
  store i8 %i.agm, ptr %i.fr, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !29644)
  call void @llvm.experimental.noalias.scope.decl(metadata !29645)
  call void @llvm.experimental.noalias.scope.decl(metadata !29646)
  %i.agn = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !29647, !noalias !29648, !noundef !12 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.agn, 4
  %i.ago = getelementptr inbounds nuw i8, ptr %i.rw, i64 %.idx.i.i.i
  %i.agp = icmp eq i64 %i.agn, 0
  br i1 %i.agp, label %.loopexit974, label %.lr.ph.i.i.i524

.lr.ph.i.i.i524:                                  ; preds = %bb.ge, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i
  %.sroa.0.0917.i.i.i = phi ptr [ %i.agq, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ], [ %i.rw, %bb.ge ] ; 3 uses
  %.sroa.8.016.i.i.i = phi i64 [ %i.agr, %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i ], [ 0, %bb.ge ] ; 4 uses
  %i.agq = getelementptr inbounds nuw i8, ptr %.sroa.0.0917.i.i.i, i64 16 ; 2 uses
  %i.agr = add nuw nsw i64 %.sroa.8.016.i.i.i, 1
  %i.ags = getelementptr i8, ptr %.sroa.0.0917.i.i.i, i64 8
  %.val7.i.i.i = load i64, ptr %i.ags, align 8, !noalias !29649, !noundef !12
  %i.agt = icmp eq i64 %.val7.i.i.i, 8
  br i1 %i.agt, label %.split.i.i.i, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i524
  %.val.i.i.i526 = load ptr, ptr %.sroa.0.0917.i.i.i, align 8, !noalias !29649, !nonnull !12, !noundef !12
  %i.agu = load i64, ptr %.val.i.i.i526, align 1
  %i.agv = icmp ne i64 %i.agu, 7810768341491147120
  %i.agw = zext i1 %i.agv to i32
  %i.agx = icmp eq i32 %i.agw, 0
  br i1 %i.agx, label %bb.gf, label %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i

_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i: ; preds = %.split.i.i.i, %.lr.ph.i.i.i524
  %i.agy = icmp eq ptr %i.agq, %i.ago
  br i1 %i.agy, label %.loopexit974, label %.lr.ph.i.i.i524

bb.gf:                                            ; preds = %.split.i.i.i
  %i.agz = getelementptr inbounds nuw i8, ptr %i.fh, i64 40
  %i.aha = load i64, ptr %i.agz, align 8, !alias.scope !29647, !noalias !29648, !noundef !12 ; 2 uses
  %i.ahb = icmp ult i64 %.sroa.8.016.i.i.i, %i.aha
  br i1 %i.ahb, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.016.i.i.i, i64 noundef %i.aha, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @225) #50, !noalias !29649
  unreachable

bb.gh:                                            ; preds = %bb.gf
  %i.ahc = getelementptr inbounds nuw i8, ptr %i.fh, i64 32
  %i.ahd = load ptr, ptr %i.ahc, align 8, !alias.scope !29647, !noalias !29648, !nonnull !12, !noundef !12
  %i.ahe = getelementptr inbounds nuw [104 x i8], ptr %i.ahd, i64 %.sroa.8.016.i.i.i ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !29650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !29650
  store i128 -147457254988281438159280264631028149675, ptr %i.ad, align 16, !noalias !29650
  call void @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg13infer_type_id(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.ae, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ahe, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(16) %i.ad) #45, !noalias !29650
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !29650
  %.sroa.013.0.copyload.i.i = load i128, ptr %i.ae, align 16, !noalias !29650 ; 3 uses
  %i.ahf = icmp eq i128 %.sroa.013.0.copyload.i.i, -147457254988281438159280264631028149675
  br i1 %i.ahf, label %bb.gi, label %bb.gl

bb.gi:                                            ; preds = %bb.gh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !29650
  %i.ahg = call noundef align 8 ptr @_RNvMNtNtNtCsgNwXemyrBWj_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg5first(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ahe) #45, !noalias !29651 ; 3 uses
  %.not8.i = icmp eq ptr %i.ahg, null
  br i1 %.not8.i, label %.loopexit974, label %bb.gj

bb.gj:                                            ; preds = %bb.gi
  %.val.i530 = load ptr, ptr %i.ahg, align 8, !noalias !29651, !nonnull !12, !noundef !12
  %i.ahh = getelementptr i8, ptr %i.ahg, i64 8
  %.val10.i = load ptr, ptr %i.ahh, align 8, !noalias !29651, !nonnull !12, !align !23, !noundef !12 ; 2 uses
  %i.ahi = getelementptr inbounds nuw i8, ptr %.val10.i, i64 16
  %i.ahj = load i64, ptr %i.ahi, align 8, !range !25, !invariant.load !12, !noalias !29651
  %i.ahk = add nsw i64 %i.ahj, -1
  %i.ahl = and i64 %i.ahk, -16
  %i.ahm = getelementptr inbounds nuw i8, ptr %.val.i530, i64 %i.ahl
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !29651
  %i.aho = getelementptr inbounds nuw i8, ptr %.val10.i, i64 24
  %i.ahp = load ptr, ptr %i.aho, align 8, !invariant.load !12, !noalias !29651, !nonnull !12
  call void %i.ahp(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.ac, ptr noundef nonnull %i.ahn) #51, !noalias !29651, !inline_history !29258
  %i.ahq = load i128, ptr %i.ac, align 16, !noalias !29651, !noundef !12
  %.not.i531 = icmp eq i128 %i.ahq, -147457254988281438159280264631028149675
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !29651
  br i1 %.not.i531, label %bb.gn, label %bb.gk, !prof !11

bb.gk:                                            ; preds = %bb.gj
  call void @_RNvNtCs6JMX4GRUq9U_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @238, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @240) #50, !noalias !29651
  unreachable

bb.gl:                                            ; preds = %bb.gh
  %i.ahr = lshr i128 %.sroa.013.0.copyload.i.i, 64
  %i.ahs = trunc nuw i128 %i.ahr to i64
  %i.aht = trunc i128 %.sroa.013.0.copyload.i.i to i64
  %i.ahu = inttoptr i64 %i.aht to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !29650
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr @592, ptr %i.ab, align 8, !noalias !29652
  %i.ahv = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store i64 8, ptr %i.ahv, align 8, !noalias !29652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !29652
  store i64 0, ptr %i.aa, align 8
  %.sroa.7838.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %i.ahu, ptr %.sroa.7838.0..sroa_idx, align 8
  %.sroa.11839.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %i.ahs, ptr %.sroa.11839.0..sroa_idx, align 8
  %.sroa.12840.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i128 -147457254988281438159280264631028149675, ptr %.sroa.12840.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !29652
  store ptr %i.ab, ptr %i.z, align 8, !noalias !29652
  %.sroa.42.0..sroa_idx.i533 = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store ptr @_RNvXs1i_NtCs6JMX4GRUq9U_4core3fmtReNtB6_7Display3fmtCsl8pJiQOn4hA_9coreutils, ptr %.sroa.42.0..sroa_idx.i533, align 8, !noalias !29652
  %i.ahw = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.aa, ptr %i.ahw, align 8, !noalias !29652
  %.sroa.46.0..sroa_idx.i534 = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store ptr @_RNvXs0_NtNtCsgNwXemyrBWj_12clap_builder6parser5errorNtB5_12MatchesErrorNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i534, align 8, !noalias !29652
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @226, ptr noundef nonnull %i.z, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228) #50, !noalias !29652
  unreachable

bb.gm:                                            ; preds = %_RNvMs6_Csgcf5BHVXlUt_7uu_sortNtB5_9ModeFlags7to_mode.exit.thread, %_RNvMs6_Csgcf5BHVXlUt_7uu_sortNtB5_9ModeFlags7to_mode.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.491)
  call void @_RNvCsgcf5BHVXlUt_7uu_sort15get_rand_string(ptr noalias nofree noundef nonnull sret([16 x i8]) align 1 captures(none) dereferenceable(16) %.sroa.491) #45
  store i8 1, ptr %i.gf, align 1
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.fk, i64 138
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(16) %.sroa.491.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.491, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.491)
  br label %bb.ge

bb.gn:                                            ; preds = %bb.gj
  %i.ahx = load i64, ptr %i.ahn, align 8, !noundef !12
  br label %_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEEs1_0Csl8pJiQOn4hA_9coreutils.exit

.loopexit974:                                     ; preds = %_RNvXs_NtNtCs6JMX4GRUq9U_4core3str6traitseNtNtB8_3cmp9PartialEq2eq.exit.backedge.i.i.i, %bb.gi, %bb.ge
  %i.ahy = call { i64, ptr } @_RNvNtNtCs2vKOLqTMYjT_3std6thread9functions21available_parallelism() #45 ; 2 uses
  %i.ahz = extractvalue { i64, ptr } %i.ahy, 0
  %i.aia = extractvalue { i64, ptr } %i.ahy, 1    ; 4 uses
  %i.aib = ptrtoint ptr %i.aia to i64             ; 3 uses
  %i.aic = trunc nuw i64 %i.ahz to i1
  br i1 %i.aic, label %bb.go, label %_RNCINvNvCsgcf5BHVXlUt_7uu_sort6uumain6uumainINtNtNtNtCs6JMX4GRUq9U_4core4iter8adapters5chain5ChainINtNtNtCs7tKScEop1B6_5alloc3vec9into_iter8IntoIterNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringEINtNtBL_6cloned6ClonedINtNtNtBP_5slice4iter4IterB2m_EEEEs1_0Csl8pJiQOn4hA_9coreutils.exit

bb.go:                                            ; preds = %.loopexit974
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aia) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !29653
  %i.aid = and i64 %i.aib, 3
  switch i64 %i.aid, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i.i
    i64 3, label %bb.gp
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECsl8pJiQOn4hA_9coreutils.exit.i.i
    i64 1, label %bb.gq
  ], !prof !22
end_hunk_0
