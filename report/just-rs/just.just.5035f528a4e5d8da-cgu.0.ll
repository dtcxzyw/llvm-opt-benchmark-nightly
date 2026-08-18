inline.NumInlined: 1390
inline.NumDeleted: 637
loop-unroll.NumRuntimeUnrolled: 15
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvCs6SXwsBSuFuw_4just4main:bb.a
bb.ad:                                            ; preds = %bb.ac
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2564
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i

bb.ae:                                            ; preds = %bb.z
  %i.eg = ptrtoint ptr %i.do to i64
  %i.eh = sub nuw i64 %i.db, %i.eg
  %i.ei = udiv exact i64 %i.eh, 24
  %i.ej = add nuw nsw i64 %i.ei, 1
  invoke fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs6SXwsBSuFuw_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.at, i64 noundef %i.dn, i64 noundef %i.ej, i64 noundef 8, i64 noundef 24)
          to label %._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i_crit_edge.i.i.i.i unwind label %bb.ac, !noalias !2567

._RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i_crit_edge.i.i.i.i: ; preds = %bb.ae
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2537, !noalias !2538
  br label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE7reserveCs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB39_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBR_B2J_E0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %bb.ab, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !2471
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 24, i1 false), !noalias !2483
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !2471
  br label %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB3f_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBU_B2O_E0EE9from_iterCs6SXwsBSuFuw_4just.exit.i.i

bb.af:                                            ; preds = %bb.u, %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !2568), !noalias !2468
  %i.ek = icmp eq ptr %.sroa.6.0.copyload.i, %i.ck
  br i1 %i.ek, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.af, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i
  %.sroa.0.011.i.i.i.i.i.i.i.i.i = phi i64 [ %i.em, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i ], [ 0, %bb.af ] ; 2 uses
  %i.el = getelementptr inbounds nuw [24 x i8], ptr %i.ck, i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.em = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i.i.i = load i64, ptr %i.el, align 8, !range !23, !alias.scope !2571, !noalias !2574, !noundef !25 ; 2 uses
  %i.en = icmp eq i64 %.val8.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.en, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.eo = getelementptr i8, ptr %i.el, i64 8
  %.val9.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.eo, align 8, !alias.scope !2568, !noalias !2574, !nonnull !25, !noundef !25
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2585
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ag, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.ep = icmp eq i64 %i.em, %i.de
  br i1 %i.ep, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i, %bb.af
  %i.eq = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %i.eq, label %.body.i.i, label %bb.ah

bb.ah:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.020.0.copyload.i) ]
  %i.er = mul nuw i64 %.sroa.5.0.copyload.i, 24
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.020.0.copyload.i, i64 noundef %i.er, i64 noundef range(i64 1, -9223372036854775807) 8) #26, !noalias !2574
  br label %.body.i.i

_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB3f_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBU_B2O_E0EE9from_iterCs6SXwsBSuFuw_4just.exit.i.i: ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec11spec_extendINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_10SpecExtendBR_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtBX_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB39_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBR_B2J_E0EE11spec_extendCs6SXwsBSuFuw_4just.exit.i.i.i.i, %bb.s, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2588)
  call void @llvm.experimental.noalias.scope.decl(metadata !2591)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !2593
  %i.es = getelementptr inbounds nuw i8, ptr %i.av, i64 48
  %i.et = load ptr, ptr %i.es, align 8, !alias.scope !2588, !noalias !2596, !nonnull !25, !noundef !25 ; 4 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.av, i64 56
  %i.ev = load i64, ptr %i.eu, align 8, !alias.scope !2588, !noalias !2596, !noundef !25 ; 4 uses
  invoke void @_RNvNtNtNtCsaKJjC64KgbL_3std3sys3env4unix6getenv(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ar, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.et, i64 noundef %i.ev)
          to label %_RINvNtCsaKJjC64KgbL_3std3env6var_osReECs6SXwsBSuFuw_4just.exit.i.i.i unwind label %.thread.i.i.i, !noalias !2597

bb.ai:                                            ; preds = %bb.am, %bb.al
  %i.ew = trunc nuw i8 %.sroa.021.2.i.i.i to i1
  br i1 %i.ew, label %bb.dw, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.i.i

.thread.i.i.i:                                    ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB3f_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBU_B2O_E0EE9from_iterCs6SXwsBSuFuw_4just.exit.i.i
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

_RINvNtCsaKJjC64KgbL_3std3env6var_osReECs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapNtNtB10_3env6ArgsOsNCINvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB3f_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE12try_completeBU_B2O_E0EE9from_iterCs6SXwsBSuFuw_4just.exit.i.i
  %i.ey = load i64, ptr %i.ar, align 8, !range !95, !noalias !2593, !noundef !25 ; 9 uses
  %.not.i.i.i = icmp eq i64 %i.ey, -1
  br i1 %.not.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCsaKJjC64KgbL_3std3env6var_osReECs6SXwsBSuFuw_4just.exit.i.i.i
  %.sroa.9.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.9.0.copyload.i.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i.i, align 8, !noalias !2593 ; 10 uses
  %.sroa.15.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  %.sroa.15.0.copyload.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx.i.i.i, align 8, !noalias !2593 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2593
  switch i64 %.sroa.15.0.copyload.i.i.i, label %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.thread.i.i.i [
    i64 0, label %bb.du
    i64 1, label %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.i.i.i
  ]

bb.ak:                                            ; preds = %_RINvNtCsaKJjC64KgbL_3std3env6var_osReECs6SXwsBSuFuw_4just.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !2593
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit97.i.i.i

bb.al:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit96.i.i.i, %bb.an
  %.pn33.i.i.i = phi { ptr, i32 } [ %i.fa, %bb.an ], [ %.pn.pn.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit96.i.i.i ] ; 2 uses
  %.sroa.021.2.i.i.i = phi i8 [ %.sroa.021.3.i.i.i, %bb.an ], [ %.sroa.021.4.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit96.i.i.i ]
  %i.ez = icmp eq i64 %i.ey, 0
  br i1 %i.ez, label %bb.ai, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i.i) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9.0.copyload.i.i.i, i64 noundef %i.ey, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2598
  br label %bb.ai

bb.an:                                            ; preds = %bb.ar, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit74.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit70.i.i.i, %bb.as, %bb.ap, %bb.ao, %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.thread.i.i.i
  %.sroa.021.3.i.i.i = phi i8 [ 1, %bb.ar ], [ %.sroa.021.9.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit74.i.i.i ], [ %.sroa.021.8.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit70.i.i.i ], [ 1, %bb.as ], [ 1, %bb.ap ], [ 1, %bb.ao ], [ 1, %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.thread.i.i.i ]
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.al

_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.i.i.i: ; preds = %bb.aj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i.i) ]
  %lhsc.i.i.i = load i8, ptr %.sroa.9.0.copyload.i.i.i, align 1, !noalias !2601
  %i.fb = icmp eq i8 %lhsc.i.i.i, 48
  br i1 %i.fb, label %bb.du, label %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.thread.i.i.i

_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.thread.i.i.i: ; preds = %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.i.i.i, %bb.aj
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !2602
  store ptr %i.et, ptr %i.aj, align 8, !noalias !2602
  %i.fc = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store i64 %i.ev, ptr %i.fc, align 8, !noalias !2602
  %i.fd = invoke noundef ptr @_RNvNtNtNtCsaKJjC64KgbL_3std3sys3env4unix8unsetenv(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.et, i64 noundef %i.ev)
          to label %.noexc.i.i.i unwind label %bb.an, !noalias !2601 ; 2 uses

.noexc.i.i.i:                                     ; preds = %_RNvXsb_NtNtCsaKJjC64KgbL_3std3ffi6os_strNtB5_8OsStringINtNtCsj6eKBz9Db1c_4core3cmp9PartialEqReE2eq.exit.thread.i.i.i
  %.not.i.i.i.i = icmp eq ptr %i.fd, null
  br i1 %.not.i.i.i.i, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.noexc.i.i.i
  invoke fastcc void @_RNCINvNtCsaKJjC64KgbL_3std3env10remove_varReE0Cs6SXwsBSuFuw_4just(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj, ptr noundef nonnull %i.fd) #32
          to label %.noexc57.i.i.i unwind label %bb.an, !noalias !2601

.noexc57.i.i.i:                                   ; preds = %bb.ao
  unreachable

bb.ap:                                            ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !2602
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !2593
  %i.fe = getelementptr inbounds nuw i8, ptr %i.av, i64 64
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.9.0.copyload.i.i.i) ]
  invoke void @_RNvMs0_NtCsgYJ0xFPoqCG_13clap_complete3envNtB5_6Shells18completer_for_path(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.aq, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.fe, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.9.0.copyload.i.i.i, i64 noundef %.sroa.15.0.copyload.i.i.i)
          to label %bb.aq unwind label %bb.an, !noalias !2601

bb.aq:                                            ; preds = %bb.ap
  %i.ff = load ptr, ptr %i.aq, align 8, !noalias !2593, !noundef !25 ; 3 uses
  %i.fg = icmp eq ptr %i.ff, null
  %i.fh = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.fi = load ptr, ptr %i.fh, align 8, !noalias !2593, !nonnull !25, !noundef !25 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !2593
  br i1 %i.fg, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fj = invoke fastcc noundef nonnull align 8 ptr @_RINvMNtCs2FJGJNE9lTN_12clap_builder5errorNtB3_5Error3rawNtNtNtCsj6eKBz9Db1c_4core2io5error5ErrorECs6SXwsBSuFuw_4just(ptr noundef nonnull %i.fi)
          to label %bb.du unwind label %bb.an

bb.as:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !2593
  invoke void @_RNvXs2_NtCskXtk6F4WjxZ_4just9argumentsNtB5_9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7command(ptr noalias nofree noundef nonnull sret([760 x i8]) align 8 captures(address) dereferenceable(760) %i.ap)
          to label %_RNvYNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandINtNtNtCsj6eKBz9Db1c_4core3ops8function2FnuE4callCs6SXwsBSuFuw_4just.exit.i.i.i unwind label %bb.an, !noalias !2601

_RNvYNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandINtNtNtCsj6eKBz9Db1c_4core3ops8function2FnuE4callCs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %bb.as
  invoke void @_RNvMs3_NtNtCs2FJGJNE9lTN_12clap_builder7builder7commandNtB5_7Command5build(ptr noalias nofree noundef nonnull align 8 dereferenceable(760) %i.ap)
          to label %bb.au unwind label %bb.at, !noalias !2601

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit96.i.i.i: ; preds = %bb.dt, %bb.ds, %bb.cy, %.body.i.i.i, %bb.at
  %.pn.pn.i.i.i = phi { ptr, i32 } [ %eh.lpad-body.i.i.i, %.body.i.i.i ], [ %i.fk, %bb.at ], [ %eh.lpad-body.i.i.i, %bb.cy ], [ %i.iz, %bb.ds ], [ %i.iz, %bb.dt ]
  %.sroa.021.4.i.i.i = phi i8 [ 1, %.body.i.i.i ], [ 1, %bb.at ], [ 1, %bb.cy ], [ 0, %bb.ds ], [ 0, %bb.dt ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs2FJGJNE9lTN_12clap_builder7builder7command7CommandECs6SXwsBSuFuw_4just(ptr noalias nofree noundef align 8 dereferenceable(760) %i.ap) #28
          to label %bb.al unwind label %bb.cw, !noalias !2601

bb.at:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE10try_removeCs6SXwsBSuFuw_4just.exit.thread.i.i.i.i, %_RNvYNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandINtNtNtCsj6eKBz9Db1c_4core3ops8function2FnuE4callCs6SXwsBSuFuw_4just.exit.i.i.i
  %i.fk = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit96.i.i.i

bb.au:                                            ; preds = %_RNvYNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandINtNtNtCsj6eKBz9Db1c_4core3ops8function2FnuE4callCs6SXwsBSuFuw_4just.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !2605)
  call void @llvm.experimental.noalias.scope.decl(metadata !2608)
  %i.fl = getelementptr inbounds nuw i8, ptr %i.au, i64 16 ; 6 uses
  %i.fm = load i64, ptr %i.fl, align 8, !alias.scope !2611, !noalias !2612, !noundef !25 ; 4 uses
  %i.fn = icmp ult i64 %i.fm, 384307168202282326
  call void @llvm.assume(i1 %i.fn)
  %i.fo = icmp eq i64 %i.fm, 0
  br i1 %i.fo, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE10try_removeCs6SXwsBSuFuw_4just.exit.thread.i.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE10try_removeCs6SXwsBSuFuw_4just.exit.i.i.i.i

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE10try_removeCs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %bb.au
  %i.fp = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.fq = load ptr, ptr %i.fp, align 8, !alias.scope !2611, !noalias !2612, !nonnull !25, !noundef !25 ; 10 uses
  %.sroa.0.0.copyload1.i.i.i.i = load i64, ptr %i.fq, align 8, !noalias !2615 ; 23 uses
  %.sroa.6.0..sroa_idx2.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fq, i64 8
  %.sroa.6.i.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i.i.i.i, align 8, !noalias !2615 ; 23 uses
  %.sroa.6.i.sroa.4.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.fq, i64 16
  %.sroa.6.i.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.6.i.sroa.4.0..sroa.6.0..sroa_idx2.i.sroa_idx.i.i.i, align 8, !noalias !2615 ; 5 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 24
  %i.fs = mul nuw nsw i64 %i.fm, 24
  %i.ft = add nsw i64 %i.fs, -24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fq, ptr nonnull align 8 %i.fr, i64 %i.ft, i1 false), !noalias !2616
  %i.fu = add nsw i64 %i.fm, -1                   ; 8 uses
  store i64 %i.fu, ptr %i.fl, align 8, !alias.scope !2611, !noalias !2612
  %.not.i59.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, -1
  br i1 %.not.i59.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE10try_removeCs6SXwsBSuFuw_4just.exit.thread.i.i.i.i, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6removeCs6SXwsBSuFuw_4just.exit.i.i.i, !prof !2617

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE10try_removeCs6SXwsBSuFuw_4just.exit.thread.i.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE10try_removeCs6SXwsBSuFuw_4just.exit.i.i.i.i, %bb.au
  %i.fv = phi i64 [ 0, %bb.au ], [ %i.fu, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE10try_removeCs6SXwsBSuFuw_4just.exit.i.i.i.i ]
  invoke void @_RNvNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB6_3VecppE6remove13assert_failed(i64 noundef 0, i64 noundef %i.fv, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @30) #30
          to label %.noexc60.i.i.i unwind label %bb.at, !noalias !2601

.noexc60.i.i.i:                                   ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE10try_removeCs6SXwsBSuFuw_4just.exit.thread.i.i.i.i
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6removeCs6SXwsBSuFuw_4just.exit.i.i.i: ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE10try_removeCs6SXwsBSuFuw_4just.exit.i.i.i.i
  %.idx.i.i.i = mul nuw nsw i64 %i.fu, 24
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.idx.i.i.i
  %i.fx = icmp eq i64 %i.fu, 0
  br i1 %i.fx, label %.thread157.i.i.i, label %.lr.ph.i.i.i.i

.thread157.i.i.i:                                 ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6removeCs6SXwsBSuFuw_4just.exit.i.i.i
  store i64 0, ptr %i.fl, align 8, !alias.scope !2618, !noalias !2621
  br label %bb.ax

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6removeCs6SXwsBSuFuw_4just.exit.i.i.i, %_RNCNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB6_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE13try_complete_0Cs6SXwsBSuFuw_4just.exit.thread.i.i.i.i
  %.sroa.02.09.i.i.i.i = phi i64 [ %i.gh, %_RNCNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB6_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE13try_complete_0Cs6SXwsBSuFuw_4just.exit.thread.i.i.i.i ], [ 0, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6removeCs6SXwsBSuFuw_4just.exit.i.i.i ] ; 3 uses
  %i.fy = phi ptr [ %i.fz, %_RNCNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB6_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE13try_complete_0Cs6SXwsBSuFuw_4just.exit.thread.i.i.i.i ], [ %i.fq, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringE6removeCs6SXwsBSuFuw_4just.exit.i.i.i ] ; 3 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 24 ; 2 uses
  %i.ga = getelementptr i8, ptr %i.fy, i64 16
  %.val6.i.i.i.i = load i64, ptr %i.ga, align 8, !noalias !2623, !noundef !25
  %i.gb = icmp eq i64 %.val6.i.i.i.i, 2
  br i1 %i.gb, label %_RNCNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB6_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE13try_complete_0Cs6SXwsBSuFuw_4just.exit.i.i.i.i, label %_RNCNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB6_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE13try_complete_0Cs6SXwsBSuFuw_4just.exit.thread.i.i.i.i

_RNCNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB6_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE13try_complete_0Cs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.gc = getelementptr i8, ptr %i.fy, i64 8
  %.val.i.i.i.i = load ptr, ptr %i.gc, align 8, !noalias !2623, !nonnull !25, !noundef !25
  %i.gd = load i16, ptr %.val.i.i.i.i, align 1
  %i.ge = icmp ne i16 %i.gd, 11565
  %i.gf = zext i1 %i.ge to i32
  %i.gg = icmp eq i32 %i.gf, 0
  br i1 %i.gg, label %.thread124.thread153.i.i.i, label %_RNCNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB6_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE13try_complete_0Cs6SXwsBSuFuw_4just.exit.thread.i.i.i.i

_RNCNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB6_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE13try_complete_0Cs6SXwsBSuFuw_4just.exit.thread.i.i.i.i: ; preds = %_RNCNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB6_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE13try_complete_0Cs6SXwsBSuFuw_4just.exit.i.i.i.i, %.lr.ph.i.i.i.i
  %i.gh = add nuw nsw i64 %.sroa.02.09.i.i.i.i, 1
  %i.gi = icmp eq ptr %i.fz, %i.fw
  br i1 %i.gi, label %.thread124.i.i.i, label %.lr.ph.i.i.i.i

.thread124.thread153.i.i.i:                       ; preds = %_RNCNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB6_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE13try_complete_0Cs6SXwsBSuFuw_4just.exit.i.i.i.i
  %i.gj = icmp ult i64 %.sroa.02.09.i.i.i.i, %i.fu
  call void @llvm.assume(i1 %i.gj)
  %i.gk = add nuw nsw i64 %.sroa.02.09.i.i.i.i, 1 ; 2 uses
  store i64 0, ptr %i.fl, align 8, !alias.scope !2618, !noalias !2621
  %i.gl = sub nuw nsw i64 %i.fu, %i.gk
  br label %bb.av

.thread124.i.i.i:                                 ; preds = %_RNCNvMs_NtCsgYJ0xFPoqCG_13clap_complete3envINtB6_11CompleteEnvNvYNtNtCskXtk6F4WjxZ_4just9arguments9ArgumentsNtNtCs2FJGJNE9lTN_12clap_builder6derive14CommandFactory7commandE13try_complete_0Cs6SXwsBSuFuw_4just.exit.thread.i.i.i.i
  store i64 0, ptr %i.fl, align 8, !alias.scope !2618, !noalias !2621
  br label %bb.av

bb.av:                                            ; preds = %.thread124.i.i.i, %.thread124.thread153.i.i.i
  %i.gm = phi i64 [ %i.gl, %.thread124.thread153.i.i.i ], [ 0, %.thread124.i.i.i ] ; 2 uses
  %.sroa.05.0126156.i.i.i = phi i64 [ %i.gk, %.thread124.thread153.i.i.i ], [ %i.fu, %.thread124.i.i.i ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2626)
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i2.i.i, %bb.av
  %.sroa.0.011.i.i.i.i.i.i = phi i64 [ %i.go, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i2.i.i ], [ 0, %bb.av ] ; 2 uses
  %i.gn = getelementptr inbounds nuw [24 x i8], ptr %i.fq, i64 %.sroa.0.011.i.i.i.i.i.i ; 2 uses
  %i.go = add nuw nsw i64 %.sroa.0.011.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i = load i64, ptr %i.gn, align 8, !range !23, !alias.scope !2629, !noalias !2632, !noundef !25 ; 2 uses
  %i.gp = icmp eq i64 %.val8.i.i.i.i.i.i, 0
  br i1 %i.gp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i2.i.i, label %bb.aw

bb.aw:                                            ; preds = %.lr.ph.i.i.i.i.i.i
  %i.gq = getelementptr i8, ptr %i.gn, i64 8
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.gq, align 8, !alias.scope !2626, !noalias !2632, !nonnull !25, !noundef !25
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2637
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i2.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i2.i.i: ; preds = %bb.aw, %.lr.ph.i.i.i.i.i.i
  %i.gr = icmp eq i64 %i.go, %.sroa.05.0126156.i.i.i
  br i1 %i.gr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i2.i.i
  %.not.i.i4.i.i.i.i.i = icmp eq i64 %i.fu, %.sroa.05.0126156.i.i.i
  br i1 %.not.i.i4.i.i.i.i.i, label %bb.ax, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.thread.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec5drain5DrainNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringEECs6SXwsBSuFuw_4just.exit.thread.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i
  %.idx130155.pn.i.i.i = mul nuw nsw i64 %.sroa.05.0126156.i.i.i, 24
  %i.gs = getelementptr inbounds nuw i8, ptr %i.fq, i64 %.idx130155.pn.i.i.i
  %i.gt = mul nuw nsw i64 %i.gm, 24
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.fq, ptr nonnull align 8 %i.gs, i64 %i.gt, i1 false), !noalias !2632
  store i64 %i.gm, ptr %i.fl, align 8, !alias.scope !2591, !noalias !2640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !2593
  store i64 0, ptr %i.am, align 8, !noalias !2593
  %i.gu = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.gu, align 8, !noalias !2593
  %i.gv = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  store i64 0, ptr %i.gv, align 8, !noalias !2593
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !2593
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false), !noalias !2641
  %i.gw = getelementptr inbounds nuw i8, ptr %i.fi, i64 48
  %i.gx = load ptr, ptr %i.gw, align 8, !invariant.load !25, !noalias !2601, !nonnull !25
  %i.gy = invoke noundef ptr %i.gx(ptr noundef nonnull %i.ff, ptr noalias nofree noundef nonnull align 8 dereferenceable(760) %i.ap, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.al, ptr noalias nofree noundef readonly captures(address, read_provenance) %.sroa.01.0.i, i64 %.sroa.5.0.i, ptr noundef nonnull %i.am, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @31)
          to label %bb.cj unwind label %bb.ch, !noalias !2601 ; 2 uses

bb.ax:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringECs6SXwsBSuFuw_4just.exit.i.i.i.i.i, %.thread157.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !2593
  store i64 0, ptr %i.ao, align 8, !noalias !2593
  %i.gz = getelementptr inbounds nuw i8, ptr %i.ao, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.gz, align 8, !noalias !2593
  %i.ha = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  store i64 0, ptr %i.ha, align 8, !noalias !2593
  %i.hb = getelementptr i8, ptr %i.fi, i64 40
  %.val56.i.i.i = load ptr, ptr %i.hb, align 8, !noalias !2601
  call void @llvm.experimental.noalias.scope.decl(metadata !2642)
  call void @llvm.experimental.noalias.scope.decl(metadata !2645)
  %i.hc = getelementptr inbounds nuw i8, ptr %i.ap, i64 608
  %i.hd = load ptr, ptr %i.hc, align 8, !alias.scope !2645, !noalias !2647, !nonnull !25, !noundef !25 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %i.ap, i64 616
  %i.hf = load i64, ptr %i.he, align 8, !alias.scope !2645, !noalias !2647, !noundef !25 ; 2 uses
  %i.hg = load i64, ptr %i.av, align 8, !range !95, !alias.scope !2650, !noalias !2651, !noundef !25
  %.not.i63.i.i.i = icmp eq i64 %i.hg, -1
  %i.hh = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.hi = load ptr, ptr %i.hh, align 8, !alias.scope !2650, !noalias !2651, !nonnull !25
  %i.hj = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.hk = load i64, ptr %i.hj, align 8, !alias.scope !2650, !noalias !2651
  br i1 %.not.i63.i.i.i, label %bb.ay, label %bb.ba

bb.ay:                                            ; preds = %bb.ax
  %i.hl = getelementptr inbounds nuw i8, ptr %i.ap, i64 344
  %i.hm = load i64, ptr %i.hl, align 8, !range !95, !alias.scope !2652, !noalias !2657, !noundef !25
  %.not.i.i.i.i.i.i = icmp eq i64 %i.hm, -1       ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.ap, i64 352
  %i.ho = load ptr, ptr %i.hn, align 8, !alias.scope !2652, !noalias !2657, !nonnull !25
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ap, i64 360
  %i.hq = load i64, ptr %i.hp, align 8, !alias.scope !2652, !noalias !2657
  %.sroa.3.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 undef, i64 %i.hq
  %.sroa.0.0.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr null, ptr %i.ho
  br label %bb.ba

bb.az:                                            ; preds = %bb.bz, %bb.by
  br i1 %.not27.not.i.i.i.i, label %.body.i.i.i, label %bb.cf

.thread29.i.i.i.i:                                ; preds = %bb.bw
  %i.hr = landingpad { ptr, i32 }
          cleanup
  br label %bb.cf

bb.ba:                                            ; preds = %bb.ay, %bb.ax
  %.pn4.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %bb.ay ], [ %i.hi, %bb.ax ] ; 2 uses
  %.pn2.i.i.i.i.i = phi i64 [ %.sroa.3.0.i.i.i.i.i.i, %bb.ay ], [ %i.hk, %bb.ax ]
  %.not26.i.i.i.i = icmp eq ptr %.pn4.i.i.i.i.i, null ; 2 uses
  %.sroa.35.0.i.i.i.i = select i1 %.not26.i.i.i.i, i64 %i.hf, i64 %.pn2.i.i.i.i.i
  %.sroa.04.0.i.i.i.i = select i1 %.not26.i.i.i.i, ptr %i.hd, ptr %.pn4.i.i.i.i.i
  %i.hs = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  %i.ht = load i64, ptr %i.hs, align 8, !range !95, !alias.scope !2650, !noalias !2651, !noundef !25
  %.not27.not.i.i.i.i = icmp eq i64 %i.ht, -1     ; 4 uses
  br i1 %.not27.not.i.i.i.i, label %bb.bd, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hu = getelementptr inbounds nuw i8, ptr %i.av, i64 32
  %i.hv = load ptr, ptr %i.hu, align 8, !alias.scope !2650, !noalias !2651, !nonnull !25, !noundef !25
  %i.hw = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  %i.hx = load i64, ptr %i.hw, align 8, !alias.scope !2650, !noalias !2651, !noundef !25 ; 7 uses
  %.not.i.i.i3.i.i = icmp slt i64 %i.hx, 0
  br i1 %.not.i.i.i3.i.i, label %bb.bw, label %bb.bc, !prof !2508

bb.bc:                                            ; preds = %bb.bb
  %i.hy = icmp eq i64 %i.hx, 0
  br i1 %i.hy, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i.i.i.i: ; preds = %bb.bc
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2659
  %i.hz = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.hx, i64 noundef range(i64 1, 9) 1) #26, !noalias !2659 ; 3 uses
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %bb.bw, label %bb.bx

bb.bd:                                            ; preds = %bb.ba
  br i1 %i.ca, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !2662
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.i.sroa.0.0.copyload.i.i.i) ]
  invoke void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path10components(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.i.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.6.i.sroa.4.0.copyload.i.i.i)
          to label %bb.bg unwind label %.loopexit.split-lp.i.i.i.i, !noalias !2663

bb.bf:                                            ; preds = %_RINvMs16_NtCsaKJjC64KgbL_3std4pathNtB7_4Path4joinNtB7_7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i, %bb.bh, %.thread41.i.i.i.i, %bb.bd
  %.sroa.11.0.i.i.i.i = phi i64 [ %.sroa.6.i.sroa.4.0.copyload.i.i.i, %bb.bd ], [ %.sroa.11.0.copyload12.i.i.i.i, %_RINvMs16_NtCsaKJjC64KgbL_3std4pathNtB7_4Path4joinNtB7_7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i ], [ %.sroa.6.i.sroa.4.0.copyload.i.i.i, %bb.bh ], [ %.sroa.6.i.sroa.4.0.copyload.i.i.i, %.thread41.i.i.i.i ]
  %.sroa.7.0.i.i.i.i = phi ptr [ %.sroa.6.i.sroa.0.0.copyload.i.i.i, %bb.bd ], [ %.sroa.7.0.copyload7.i.i.i.i, %_RINvMs16_NtCsaKJjC64KgbL_3std4pathNtB7_4Path4joinNtB7_7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i ], [ %.sroa.6.i.sroa.0.0.copyload.i.i.i, %bb.bh ], [ %.sroa.6.i.sroa.0.0.copyload.i.i.i, %.thread41.i.i.i.i ] ; 5 uses
  %.sroa.01.0.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i, %bb.bd ], [ %.sroa.01.0.copyload3.i.i.i.i, %_RINvMs16_NtCsaKJjC64KgbL_3std4pathNtB7_4Path4joinNtB7_7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i ], [ %.sroa.0.0.copyload1.i.i.i.i, %bb.bh ], [ %.sroa.0.0.copyload1.i.i.i.i, %.thread41.i.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !2662
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.i.i.i.i) ]
  invoke void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.7.0.i.i.i.i, i64 noundef %.sroa.11.0.i.i.i.i)
          to label %bb.bn unwind label %.loopexit.split-lp.i.i.i.i, !noalias !2663

bb.bg:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2664
  invoke void @_RNvXsi_NtCsaKJjC64KgbL_3std4pathNtB5_10ComponentsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ai)
          to label %.noexc.i.i4.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !2663

.noexc.i.i4.i.i:                                  ; preds = %bb.bg
  %i.ib = load i8, ptr %i.af, align 8, !range !2667, !noalias !2664, !noundef !25
  %.not3.i.i.i.i.i = icmp eq i8 %i.ib, -1
  br i1 %.not3.i.i.i.i.i, label %.thread41.i.i.i.i, label %.lr.ph.i.i.i.i.i

.thread41.i.i.i.i:                                ; preds = %.noexc.i.i4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2662
  br label %bb.bf

.lr.ph.i.i.i.i.i:                                 ; preds = %.noexc.i.i4.i.i, %.noexc44.i.i.i.i
  %.sroa.0.04.i.i.i.i.i = phi i64 [ %i.ic, %.noexc44.i.i.i.i ], [ 0, %.noexc.i.i4.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2664
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !2664
  invoke void @_RNvXsi_NtCsaKJjC64KgbL_3std4pathNtB5_10ComponentsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.af, ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %i.ai)
          to label %.noexc44.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !2663

.noexc44.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i
  %i.ic = add i64 %.sroa.0.04.i.i.i.i.i, 1        ; 2 uses
  %i.id = load i8, ptr %i.af, align 8, !range !2667, !noalias !2664, !noundef !25
  %.not.i43.i.i.i.i = icmp eq i8 %i.id, -1
  br i1 %.not.i43.i.i.i.i, label %bb.bh, label %.lr.ph.i.i.i.i.i

bb.bh:                                            ; preds = %.noexc44.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !2664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !2662
  %i.ie = icmp ugt i64 %i.ic, 1
  br i1 %i.ie, label %bb.bi, label %bb.bf

bb.bi:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !2662
  invoke void @_RNvMs16_NtCsaKJjC64KgbL_3std4pathNtB6_4Path5__join(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ah, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.7.038.i, i64 noundef %.sroa.5.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.6.i.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.6.i.sroa.4.0.copyload.i.i.i)
          to label %bb.bl unwind label %bb.bj, !noalias !2668

bb.bj:                                            ; preds = %bb.bi
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ig = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, 0
  br i1 %i.ig, label %.body.i.i.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.i.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2671
  br label %.body.i.i.i

bb.bl:                                            ; preds = %bb.bi
  %i.ih = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i, 0
  br i1 %i.ih, label %_RINvMs16_NtCsaKJjC64KgbL_3std4pathNtB7_4Path4joinNtB7_7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.i.sroa.0.0.copyload.i.i.i, i64 noundef %.sroa.0.0.copyload1.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !2675
  br label %_RINvMs16_NtCsaKJjC64KgbL_3std4pathNtB7_4Path4joinNtB7_7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i

_RINvMs16_NtCsaKJjC64KgbL_3std4pathNtB7_4Path4joinNtB7_7PathBufECs6SXwsBSuFuw_4just.exit.i.i.i.i: ; preds = %bb.bm, %bb.bl
  %.sroa.01.0.copyload3.i.i.i.i = load i64, ptr %i.ah, align 8, !noalias !2662
  %.sroa.7.0..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.7.0.copyload7.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx6.i.i.i.i, align 8, !noalias !2662
  %.sroa.11.0..sroa_idx11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ah, i64 16
  %.sroa.11.0.copyload12.i.i.i.i = load i64, ptr %.sroa.11.0..sroa_idx11.i.i.i.i, align 8, !noalias !2662
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !2662
  br label %bb.bf

bb.bn:                                            ; preds = %bb.bf
  %i.ii = load i64, ptr %i.ag, align 8, !range !95, !noalias !2662, !noundef !25 ; 2 uses
  %.not29.i.i.i.i = icmp eq i64 %i.ii, -1
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8, !noalias !2662 ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.im = load i64, ptr %i.il, align 8, !noalias !2662 ; 8 uses
  br i1 %.not29.i.i.i.i, label %bb.bo, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6SXwsBSuFuw_4just.exit48.thread48.i.i.i.i

bb.bo:                                            ; preds = %bb.bn
  %.not.i45.i.i.i.i = icmp slt i64 %i.im, 0
  br i1 %.not.i45.i.i.i.i, label %bb.bq, label %bb.bp, !prof !2508

bb.bp:                                            ; preds = %bb.bo
  %i.in = icmp eq i64 %i.im, 0
  br i1 %i.in, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6SXwsBSuFuw_4just.exit48.thread48.i.i.i.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i46.i.i.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i46.i.i.i.i: ; preds = %bb.bp
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #26, !noalias !2678
  %i.io = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.im, i64 noundef range(i64 1, 9) 1) #26, !noalias !2678 ; 3 uses
  %i.ip = icmp eq ptr %i.io, null
  br i1 %i.ip, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i46.i.i.i.i, %bb.bo
  %.sroa.423.0.ph.i.i.i.i = phi i64 [ 1, %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i46.i.i.i.i ], [ 0, %bb.bo ]
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %.sroa.423.0.ph.i.i.i.i, i64 %i.im) #27
          to label %bb.bt unwind label %.loopexit.split-lp.i.i.i.i, !noalias !2663

bb.br:                                            ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i46.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.io, ptr nonnull align 1 %i.ik, i64 %i.im, i1 false), !noalias !2663
  br label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs6SXwsBSuFuw_4just.exit48.thread48.i.i.i.i
end_hunk_0
