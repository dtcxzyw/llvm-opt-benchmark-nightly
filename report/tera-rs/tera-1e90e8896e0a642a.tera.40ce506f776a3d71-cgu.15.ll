Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tera-rs/original/tera-1e90e8896e0a642a.tera.40ce506f776a3d71-cgu.15?download=true
inline.NumInlined: 752
inline.NumDeleted: 395
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXs5_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtB8_3vec9into_iter8IntoItercEECs5yXxDE1DkoT_4tera:bb.a
    #dbg_value(i32 %i.k, !11955, !DIExpression(), !11719)
    #dbg_value(ptr %i.d, !3907, !DIExpression(), !11720)
    #dbg_value(ptr %i.d, !3902, !DIExpression(), !11721)
    #dbg_value(ptr %i.d, !3912, !DIExpression(), !11723)
    #dbg_value(i32 %i.k, !3908, !DIExpression(), !11720)
    #dbg_value(i32 %i.k, !3916, !DIExpression(), !11725)
    #dbg_value(i64 %i.i, !3909, !DIExpression(), !11726)
    #dbg_value(i64 %i.i, !3923, !DIExpression(), !11728)
    #dbg_value(i32 %i.k, !3928, !DIExpression(), !11730)
  %i.m = icmp samesign ult i32 %i.k, 128, !dbg !12024
  br i1 %i.m, label %bb.e, label %bb.d, !dbg !12024

bb.d:                                             ; preds = %bb.c
  %i.n = icmp samesign ult i32 %i.k, 2048, !dbg !12025 ; 2 uses
  %i.o = icmp samesign ult i32 %i.k, 65536, !dbg !12025 ; 2 uses
  %..i.i.i.i.i.i = select i1 %i.o, i64 3, i64 4, !dbg !12025
  %.sroa.0.0.ph.i.i.i.i.i.i = select i1 %i.n, i64 2, i64 %..i.i.i.i.i.i, !dbg !12025
    #dbg_value(i64 %.sroa.0.0.ph.i.i.i.i.i.i, !3910, !DIExpression(), !11731)
    #dbg_value(i64 %.sroa.0.0.ph.i.i.i.i.i.i, !3913, !DIExpression(), !11723)
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.sroa.0.0.ph.i.i.i.i.i.i)
          to label %.noexc.i.i.i unwind label %bb.j, !dbg !12026, !noalias !11973

.noexc.i.i.i:                                     ; preds = %bb.d
    #dbg_value(ptr %i.d, !3932, !DIExpression(), !11733)
  %i.p = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !12027, !alias.scope !11950, !noalias !11951, !nonnull !1418, !noundef !1418
    #dbg_value(ptr %i.p, !3926, !DIExpression(), !11728)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.i, !dbg !12028 ; 9 uses
    #dbg_value(i32 %i.k, !3948, !DIExpression(), !11738)
    #dbg_value(ptr %i.q, !3951, !DIExpression(), !11738)
    #dbg_value(ptr %i.q, !3958, !DIExpression(), !11740)
    #dbg_value(ptr %i.q, !3958, !DIExpression(), !11742)
    #dbg_value(ptr %i.q, !3958, !DIExpression(), !11744)
    #dbg_value(ptr %i.q, !3958, !DIExpression(), !11746)
    #dbg_value(ptr %i.q, !3958, !DIExpression(), !11748)
    #dbg_value(ptr %i.q, !3958, !DIExpression(), !11750)
    #dbg_value(i64 1, !3959, !DIExpression(), !11740)
    #dbg_value(i64 1, !3959, !DIExpression(), !11742)
    #dbg_value(i64 1, !3959, !DIExpression(), !11744)
    #dbg_value(i64 2, !3959, !DIExpression(), !11746)
    #dbg_value(i64 2, !3959, !DIExpression(), !11748)
    #dbg_value(i64 3, !3959, !DIExpression(), !11750)
    #dbg_value(i64 poison, !3952, !DIExpression(), !11751)
  %i.r = trunc i32 %i.k to i8, !dbg !12029
  %i.s = and i8 %i.r, 63, !dbg !12029
  %i.t = or disjoint i8 %i.s, -128, !dbg !12029   ; 3 uses
    #dbg_value(i8 %i.t, !3953, !DIExpression(), !11752)
  %i.u = lshr i32 %i.k, 6, !dbg !12030
  %i.v = trunc i32 %i.u to i8, !dbg !12031        ; 2 uses
  %i.w = and i8 %i.v, 63, !dbg !12031
  %i.x = or disjoint i8 %i.w, -128, !dbg !12031   ; 2 uses
    #dbg_value(i8 %i.x, !3954, !DIExpression(), !11753)
  %i.y = lshr i32 %i.k, 12, !dbg !12032
  %i.z = trunc i32 %i.y to i8, !dbg !12033        ; 2 uses
  %i.aa = and i8 %i.z, 63, !dbg !12033
  %i.ab = or disjoint i8 %i.aa, -128, !dbg !12033
    #dbg_value(i8 %i.ab, !3955, !DIExpression(), !11754)
  %i.ac = lshr i32 %i.k, 18, !dbg !12034
  %i.ad = trunc nuw nsw i32 %i.ac to i8, !dbg !12035
  %i.ae = or disjoint i8 %i.ad, -16, !dbg !12035
    #dbg_value(i8 %i.ae, !3956, !DIExpression(), !11755)
  br i1 %i.n, label %bb.f, label %bb.g, !dbg !12036

bb.e:                                             ; preds = %bb.c
    #dbg_value(i64 1, !3910, !DIExpression(), !11731)
    #dbg_value(i64 1, !3913, !DIExpression(), !11723)
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1)
          to label %.noexc20.i.i.i unwind label %bb.j, !dbg !12026, !noalias !11973

.noexc20.i.i.i:                                   ; preds = %bb.e
    #dbg_value(ptr %i.d, !3932, !DIExpression(), !11733)
  %i.af = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !12027, !alias.scope !11950, !noalias !11951, !nonnull !1418, !noundef !1418
    #dbg_value(ptr %i.af, !3926, !DIExpression(), !11728)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.i, !dbg !12028
    #dbg_value(i32 %i.k, !3948, !DIExpression(), !11738)
    #dbg_value(ptr %i.ag, !3951, !DIExpression(), !11738)
    #dbg_value(ptr %i.ag, !3958, !DIExpression(), !11740)
    #dbg_value(ptr %i.ag, !3958, !DIExpression(), !11742)
    #dbg_value(ptr %i.ag, !3958, !DIExpression(), !11744)
    #dbg_value(ptr %i.ag, !3958, !DIExpression(), !11746)
    #dbg_value(ptr %i.ag, !3958, !DIExpression(), !11748)
    #dbg_value(ptr %i.ag, !3958, !DIExpression(), !11750)
    #dbg_value(i64 1, !3959, !DIExpression(), !11740)
    #dbg_value(i64 1, !3959, !DIExpression(), !11742)
    #dbg_value(i64 1, !3959, !DIExpression(), !11744)
    #dbg_value(i64 2, !3959, !DIExpression(), !11746)
    #dbg_value(i64 2, !3959, !DIExpression(), !11748)
    #dbg_value(i64 3, !3959, !DIExpression(), !11750)
    #dbg_value(i64 1, !3952, !DIExpression(), !11751)
  %i.ah = trunc nuw nsw i32 %i.k to i8, !dbg !12037
  store i8 %i.ah, ptr %i.ag, align 1, !dbg !12037, !noalias !11973
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtB1r_3vec9into_iter8IntoItercEE0E0Cs5yXxDE1DkoT_4tera.exit.i.i.i, !dbg !12038

bb.f:                                             ; preds = %.noexc.i.i.i
  %i.ai = or disjoint i8 %i.v, -64, !dbg !12039
  store i8 %i.ai, ptr %i.q, align 1, !dbg !12039, !noalias !11973
  %i.aj = getelementptr inbounds nuw i8, ptr %i.q, i64 1, !dbg !12040
  store i8 %i.t, ptr %i.aj, align 1, !dbg !12041, !noalias !11973
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtB1r_3vec9into_iter8IntoItercEE0E0Cs5yXxDE1DkoT_4tera.exit.i.i.i, !dbg !12042

bb.g:                                             ; preds = %.noexc.i.i.i
  br i1 %i.o, label %bb.h, label %bb.i, !dbg !12043

bb.h:                                             ; preds = %bb.g
  %i.ak = or disjoint i8 %i.z, -32, !dbg !12044
  store i8 %i.ak, ptr %i.q, align 1, !dbg !12044, !noalias !11973
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 1, !dbg !12045
  store i8 %i.x, ptr %i.al, align 1, !dbg !12046, !noalias !11973
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 2, !dbg !12047
  store i8 %i.t, ptr %i.am, align 1, !dbg !12048, !noalias !11973
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtB1r_3vec9into_iter8IntoItercEE0E0Cs5yXxDE1DkoT_4tera.exit.i.i.i, !dbg !12042

bb.i:                                             ; preds = %bb.g
  store i8 %i.ae, ptr %i.q, align 1, !dbg !12049, !noalias !11973
  %i.an = getelementptr inbounds nuw i8, ptr %i.q, i64 1, !dbg !12050
  store i8 %i.ab, ptr %i.an, align 1, !dbg !12051, !noalias !11973
  %i.ao = getelementptr inbounds nuw i8, ptr %i.q, i64 2, !dbg !12052
  store i8 %i.x, ptr %i.ao, align 1, !dbg !12053, !noalias !11973
  %i.ap = getelementptr inbounds nuw i8, ptr %i.q, i64 3, !dbg !12054
  store i8 %i.t, ptr %i.ap, align 1, !dbg !12055, !noalias !11973
  br label %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtB1r_3vec9into_iter8IntoItercEE0E0Cs5yXxDE1DkoT_4tera.exit.i.i.i, !dbg !12056

_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtB1r_3vec9into_iter8IntoItercEE0E0Cs5yXxDE1DkoT_4tera.exit.i.i.i: ; preds = %bb.i, %bb.h, %bb.f, %.noexc20.i.i.i
  %.sroa.0.011.i.i.i.i.i.i = phi i64 [ 1, %.noexc20.i.i.i ], [ 2, %bb.f ], [ 3, %bb.h ], [ 4, %bb.i ]
    #dbg_value(ptr %i.d, !3963, !DIExpression(), !11757)
  %i.aq = add nuw i64 %.sroa.0.011.i.i.i.i.i.i, %i.i, !dbg !12057 ; 2 uses
    #dbg_value(i64 %i.aq, !3967, !DIExpression(), !11758)
  store i64 %i.aq, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !12058, !alias.scope !11950, !noalias !11951
    #dbg_value(ptr undef, !11939, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11692)
    #dbg_value(ptr undef, !11947, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !11695)
    #dbg_value(ptr poison, !11942, !DIExpression(), !11696)
    #dbg_value(ptr poison, !11948, !DIExpression(), !11697)
  %.not.not.i.i.i = icmp eq ptr %i.l, %.sroa.7.0.copyload13.i, !dbg !12019
  br i1 %.not.not.i.i.i, label %_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvBZ_8for_each4callcNCINvXsd_NtBa_6stringNtB2y_6StringINtNtB13_7collect6ExtendcE6extendBI_E0E0ECs5yXxDE1DkoT_4tera.exit.i.i, label %bb.c, !dbg !12020

bb.j:                                             ; preds = %bb.e, %bb.d
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload7.i) ]
    #dbg_value(ptr poison, !11977, !DIExpression(), !11761)
    #dbg_value(ptr poison, !11980, !DIExpression(), !11766)
    #dbg_value(ptr poison, !11986, !DIExpression(), !11769)
    #dbg_value(ptr poison, !11992, !DIExpression(), !11772)
    #dbg_declare(ptr poison, !11994, !DIExpression(), !11776)
    #dbg_declare(ptr poison, !11997, !DIExpression(), !11781)
    #dbg_value(ptr poison, !11995, !DIExpression(), !11782)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12059, !noalias !12003
    #dbg_value(ptr %.sroa.0.0.copyload7.i, !11998, !DIExpression(), !11785)
    #dbg_value(i64 %.sroa.6.0.copyload11.i, !11999, !DIExpression(), !11785)
    #dbg_value(ptr %.sroa.0.0.copyload7.i, !12000, !DIExpression(), !11786)
    #dbg_value(i64 %.sroa.6.0.copyload11.i, !12001, !DIExpression(), !11787)
  store i64 %.sroa.6.0.copyload11.i, ptr %i.b, align 8, !dbg !12060, !noalias !12003
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12060
  store ptr %.sroa.0.0.copyload7.i, ptr %i.ar, align 8, !dbg !12060, !noalias !12003
    #dbg_value(ptr %i.b, !12005, !DIExpression(), !11790)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVeccENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %.body.thread.i unwind label %bb.k, !dbg !12061, !noalias !11973

.body.thread.i:                                   ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12062, !noalias !12003
  br label %.body, !dbg !12063

bb.k:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !12064, !noalias !11973
  unreachable, !dbg !12064

_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvBZ_8for_each4callcNCINvXsd_NtBa_6stringNtB2y_6StringINtNtB13_7collect6ExtendcE6extendBI_E0E0ECs5yXxDE1DkoT_4tera.exit.i.i: ; preds = %_RNCINvNvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB1p_6StringINtNtBa_7collect6ExtendcE6extendINtNtNtB1r_3vec9into_iter8IntoItercEE0E0Cs5yXxDE1DkoT_4tera.exit.i.i.i, %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload7.i) ]
    #dbg_value(ptr %.sroa.0.0.copyload7.i, !11913, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11791)
    #dbg_value(ptr %.sroa.0.0.copyload7.i, !11927, !DIExpression(), !11792)
    #dbg_value(i64 %.sroa.6.0.copyload11.i, !11913, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11791)
    #dbg_value(i64 %.sroa.6.0.copyload11.i, !11914, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !11793)
    #dbg_value(i64 %.sroa.6.0.copyload11.i, !11928, !DIExpression(), !11792)
    #dbg_value(ptr poison, !11913, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11791)
    #dbg_value(ptr poison, !11914, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11793)
    #dbg_value(ptr poison, !11913, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !11791)
    #dbg_value(ptr poison, !11914, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !11793)
    #dbg_value(ptr %.sroa.0.0.copyload7.i, !11914, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11793)
    #dbg_value(ptr poison, !11908, !DIExpression(), !11794)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !12065, !noalias !12011
    #dbg_value(ptr %.sroa.0.0.copyload7.i, !11929, !DIExpression(), !11795)
    #dbg_value(i64 %.sroa.6.0.copyload11.i, !11930, !DIExpression(), !11796)
  store i64 %.sroa.6.0.copyload11.i, ptr %i.c, align 8, !dbg !12066, !noalias !12011
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !12066
  store ptr %.sroa.0.0.copyload7.i, ptr %i.at, align 8, !dbg !12066, !noalias !12011
    #dbg_value(ptr %i.c, !12005, !DIExpression(), !11798)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVeccENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c)
          to label %bb.o unwind label %bb.n, !dbg !12067

bb.l:                                             ; preds = %bb.a
  %i.au = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr poison, !11977, !DIExpression(), !11800)
    #dbg_value(ptr poison, !11980, !DIExpression(), !11802)
    #dbg_value(ptr poison, !11986, !DIExpression(), !11804)
    #dbg_value(ptr poison, !11992, !DIExpression(), !11806)
    #dbg_declare(ptr poison, !11994, !DIExpression(), !11808)
    #dbg_declare(ptr poison, !11997, !DIExpression(), !11810)
    #dbg_value(ptr poison, !11995, !DIExpression(), !11811)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload7.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12068, !noalias !12012
    #dbg_value(ptr %.sroa.0.0.copyload7.i, !11998, !DIExpression(), !11814)
    #dbg_value(i64 %.sroa.6.0.copyload11.i, !11999, !DIExpression(), !11814)
    #dbg_value(ptr %.sroa.0.0.copyload7.i, !12000, !DIExpression(), !11815)
    #dbg_value(i64 %.sroa.6.0.copyload11.i, !12001, !DIExpression(), !11816)
  store i64 %.sroa.6.0.copyload11.i, ptr %i.a, align 8, !dbg !12069, !noalias !12012
  %i.av = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12069
  store ptr %.sroa.0.0.copyload7.i, ptr %i.av, align 8, !dbg !12069, !noalias !12012
    #dbg_value(ptr %i.a, !12005, !DIExpression(), !11818)
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVeccENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoItercEECs5yXxDE1DkoT_4tera.exit.i unwind label %bb.m, !dbg !12070, !noalias !11841

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoItercEECs5yXxDE1DkoT_4tera.exit.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12071, !noalias !12012
  br label %.body, !dbg !12072

bb.m:                                             ; preds = %bb.l
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !12073, !noalias !11841
  unreachable, !dbg !12073

bb.n:                                             ; preds = %_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvBZ_8for_each4callcNCINvXsd_NtBa_6stringNtB2y_6StringINtNtB13_7collect6ExtendcE6extendBI_E0E0ECs5yXxDE1DkoT_4tera.exit.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !12074

.body:                                            ; preds = %.body.thread.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoItercEECs5yXxDE1DkoT_4tera.exit.i, %bb.n
  %eh.lpad-body = phi { ptr, i32 } [ %i.ax, %bb.n ], [ %lpad.thr_comm.i.i.i, %.body.thread.i ], [ %i.au, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoItercEECs5yXxDE1DkoT_4tera.exit.i ]
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #26
          to label %bb.q unwind label %bb.p, !dbg !12074

bb.o:                                             ; preds = %_RINvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB6_8IntoItercENtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4folduNCINvNvBZ_8for_each4callcNCINvXsd_NtBa_6stringNtB2y_6StringINtNtB13_7collect6ExtendcE6extendBI_E0E0ECs5yXxDE1DkoT_4tera.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !12075, !noalias !12011
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !dbg !12076
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !12074
  ret void, !dbg !12077

bb.p:                                             ; preds = %.body
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !12078
  unreachable, !dbg !12078

bb.q:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body, !dbg !12078
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBS_8adapters3rev3RevNtNtNtBU_3str4iter5CharsEECs5yXxDE1DkoT_4tera(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12081 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
    #dbg_value(ptr %1, !12128, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12133)
    #dbg_value(ptr %2, !12128, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12133)
    #dbg_declare(ptr %i.a, !12129, !DIExpression(), !12134)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12174
  store i64 0, ptr %i.a, align 8, !dbg !12175
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12175
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !12175
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12175
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !12175
    #dbg_value(ptr %i.a, !12136, !DIExpression(), !12087)
    #dbg_value(ptr %i.a, !12143, !DIExpression(), !12090)
    #dbg_value(ptr %1, !12139, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12087)
    #dbg_value(ptr %2, !12139, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12087)
    #dbg_value(ptr %1, !12140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12091)
    #dbg_value(ptr %2, !12140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12091)
    #dbg_value(ptr poison, !12147, !DIExpression(), !12094)
    #dbg_value(ptr poison, !12154, !DIExpression(), !12098)
    #dbg_value(i64 4, !12159, !DIExpression(), !12103)
    #dbg_value(ptr poison, !3986, !DIExpression(), !12105)
    #dbg_value(i64 1, !3993, !DIExpression(), !12109)
    #dbg_value(ptr %2, !3991, !DIExpression(), !12110)
    #dbg_value(ptr %2, !4007, !DIExpression(), !12111)
    #dbg_value(ptr %1, !4008, !DIExpression(), !12111)
    #dbg_value(ptr %2, !4001, !DIExpression(), !12112)
    #dbg_value(ptr %1, !4002, !DIExpression(), !12112)
    #dbg_value(ptr %1, !3997, !DIExpression(), !12113)
    #dbg_value(ptr %2, !3996, !DIExpression(), !12113)
  %i.b = ptrtoint ptr %2 to i64, !dbg !12176
  %i.c = ptrtoint ptr %1 to i64, !dbg !12176
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !12176      ; 2 uses
    #dbg_value(i64 %i.d, !12157, !DIExpression(), !12114)
    #dbg_value(i64 %i.d, !12160, !DIExpression(), !12103)
  %i.e = lshr i64 %i.d, 2, !dbg !12177
    #dbg_value(i64 %i.e, !12161, !DIExpression(), !12115)
  %i.f = and i64 %i.d, 3, !dbg !12178
    #dbg_value(i64 %i.f, !12162, !DIExpression(), !12116)
  %.not.i.i.i = icmp ne i64 %i.f, 0, !dbg !12179
  %i.g = zext i1 %.not.i.i.i to i64, !dbg !12179
  %.sroa.0.0.i.i.i = add nuw nsw i64 %i.e, %i.g, !dbg !12179
    #dbg_value(i64 %.sroa.0.0.i.i.i, !12141, !DIExpression(), !12117)
    #dbg_value(i64 %.sroa.0.0.i.i.i, !12144, !DIExpression(), !12090)
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.i.i.i)
          to label %.noexc unwind label %bb.b, !dbg !12180

.noexc:                                           ; preds = %bb.a
    #dbg_value(ptr %1, !12164, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12121)
    #dbg_value(ptr %2, !12164, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12121)
    #dbg_value(ptr %i.a, !12169, !DIExpression(), !12121)
  invoke void @_RINvXs_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3revINtB5_3RevNtNtNtBb_3str4iter5CharsENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB1l_8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB2y_6StringINtNtB1p_7collect6ExtendcE6extendBM_E0E0ECs5yXxDE1DkoT_4tera(ptr noundef nonnull %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters3rev3RevNtNtNtBU_3str4iter5CharsEECs5yXxDE1DkoT_4tera.exit unwind label %bb.b, !dbg !12181

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #26
          to label %bb.d unwind label %bb.c, !dbg !12182

_RINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendcE6extendINtNtNtBS_8adapters3rev3RevNtNtNtBU_3str4iter5CharsEECs5yXxDE1DkoT_4tera.exit: ; preds = %.noexc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !12183
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12182
  ret void, !dbg !12184

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !12185
  unreachable, !dbg !12185

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.h, !dbg !12185
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs5_NtCsgCecv3eZDcN_5alloc6stringNtB6_6StringINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect12FromIteratorcE9from_iterNtNtBU_4char11ToUppercaseECs5yXxDE1DkoT_4tera(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !12195 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
    #dbg_declare(ptr %1, !12270, !DIExpression(), !12275)
    #dbg_declare(ptr %i.b, !12271, !DIExpression(), !12276)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !12344
  store i64 0, ptr %i.b, align 8, !dbg !12345
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !12345
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8, !dbg !12345
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !12345
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !12345
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12278), !dbg !12346
    #dbg_declare(ptr poison, !12279, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !12203)
    #dbg_value(ptr %i.b, !12282, !DIExpression(), !12204)
    #dbg_value(ptr %i.b, !12286, !DIExpression(), !12207)
    #dbg_declare(ptr %1, !12283, !DIExpression(), !12208)
    #dbg_declare(ptr %1, !12289, !DIExpression(), !12211)
  %.sroa.0.0.copyload5.i = load i64, ptr %1, align 8, !dbg !12347, !alias.scope !12293 ; 2 uses
    #dbg_value(i64 %.sroa.0.0.copyload5.i, !12279, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12215)
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !12347
  %.sroa.5.0.copyload7.i = load i64, ptr %.sroa.5.0..sroa_idx6.i, align 8, !dbg !12347, !alias.scope !12293 ; 2 uses
    #dbg_value(i64 %.sroa.5.0.copyload7.i, !12279, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12215)
  %.sroa.6.0..sroa_idx8.i = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !12347
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !12348
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12348, !noalias !12294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(16) %.sroa.6.0..sroa_idx8.i, i64 16, i1 false), !dbg !12347, !noalias !12295
    #dbg_value(ptr poison, !12298, !DIExpression(), !12219)
  %i.c = sub nuw i64 %.sroa.5.0.copyload7.i, %.sroa.0.0.copyload5.i, !dbg !12349
    #dbg_value(i64 %i.c, !12284, !DIExpression(), !12232)
    #dbg_value(i64 %i.c, !12287, !DIExpression(), !12207)
  invoke void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.c)
          to label %.noexc unwind label %bb.b, !dbg !12350

.noexc:                                           ; preds = %bb.a
  store i64 %.sroa.0.0.copyload5.i, ptr %i.a, align 8, !dbg !12348, !noalias !12294
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !12348
  store i64 %.sroa.5.0.copyload7.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !12348, !noalias !12294
    #dbg_declare(ptr %i.a, !12334, !DIExpression(), !12236)
    #dbg_value(ptr %i.b, !12339, !DIExpression(), !12237)
  invoke void @_RINvXsu_NtCsf3Ta7LF998c_4core4charNtB6_11ToUppercaseNtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvBO_8for_each4callcNCINvXsd_NtCsgCecv3eZDcN_5alloc6stringNtB27_6StringINtNtBS_7collect6ExtendcE6extendBw_E0E0ECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %bb.b, !dbg !12351

bb.b:                                             ; preds = %.noexc, %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #26
          to label %bb.e unwind label %bb.d, !dbg !12352

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12353, !noalias !12294
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !dbg !12354
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !12352
  ret void, !dbg !12355

bb.d:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !12356
  unreachable, !dbg !12356

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.d, !dbg !12356
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB6_7HashSetReNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB1L_8adapters3map3MapINtNtNtNtBW_11collections4hash3set4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENCNvMNtCs5yXxDE1DkoT_4tera4teraNtB4v_4Tera22get_template_variables0EEB4x_(ptr noalias nofree noundef align 8 dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 !dbg !12374 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
    #dbg_value(ptr %0, !12445, !DIExpression(), !12450)
    #dbg_declare(ptr %1, !12446, !DIExpression(), !12451)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !12468
    #dbg_declare(ptr %1, !12452, !DIExpression(), !12379)
    #dbg_declare(ptr poison, !12461, !DIExpression(), !12380)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !dbg !12469, !alias.scope !12466
  call void @_RINvXs1i_NtCsbDKHzkXHCUM_9hashbrown3mapINtB7_7HashMapReuNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB1N_8adapters3map3MapIB2O_INtNtNtNtBY_11collections4hash3set4IterNtNtCsgCecv3eZDcN_5alloc6string6StringENCNvMNtCs5yXxDE1DkoT_4tera4teraNtB4F_4Tera22get_template_variables0ENCINvXs8_NtB9_3setINtB5P_7HashSetBP_BS_EIB1H_BP_E6extendB3f_E0EEB4H_(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !dbg !12470
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !12471
  ret void, !dbg !12472
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh11starts_withCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #3 !dbg !12474 {
bb.a:
    #dbg_value(ptr %0, !12481, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12485)
    #dbg_value(i64 %1, !12481, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12485)
    #dbg_value(ptr %2, !12482, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12485)
    #dbg_value(ptr %2, !12486, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12492)
    #dbg_value(i64 %3, !12482, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12485)
    #dbg_value(i64 %3, !12486, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12492)
    #dbg_value(i64 %3, !12483, !DIExpression(), !12496)
    #dbg_value(i64 %3, !12488, !DIExpression(), !12497)
  %.not = icmp samesign ult i64 %1, %3, !dbg !12500
  br i1 %.not, label %bb.b, label %bb.c, !dbg !12500

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ], !dbg !12501
  ret i1 %.sroa.0.0, !dbg !12502

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !12493, !DIExpression(), !12498)
    #dbg_value(ptr %0, !12487, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12492)
    #dbg_value(i64 %3, !12487, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12492)
    #dbg_value(ptr poison, !12494, !DIExpression(), !12499)
    #dbg_value(ptr %2, !4029, !DIExpression(), !12479)
    #dbg_value(ptr %0, !4033, !DIExpression(), !12479)
    #dbg_value(i64 %3, !4034, !DIExpression(), !12479)
    #dbg_value(i64 %3, !4035, !DIExpression(), !12480)
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 %3), !dbg !12503
  %i.a = icmp eq i32 %bcmp.i, 0, !dbg !12503
  br label %bb.b, !dbg !12500
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCsf3Ta7LF998c_4core5sliceSh9ends_withCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #3 !dbg !12505 {
bb.a:
    #dbg_value(ptr %0, !12516, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12521)
    #dbg_value(ptr %0, !12522, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12529)
    #dbg_value(ptr %0, !12530, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12538)
    #dbg_value(ptr %0, !12539, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12546)
    #dbg_value(i64 %1, !12516, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12521)
    #dbg_value(i64 %1, !12522, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12529)
    #dbg_value(i64 %1, !12530, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12538)
    #dbg_value(i64 %1, !12539, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12546)
    #dbg_value(ptr %2, !12517, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12521)
    #dbg_value(ptr %2, !12547, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !12553)
    #dbg_value(i64 %3, !12517, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12521)
    #dbg_value(i64 %3, !12547, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12553)
    #dbg_value(i64 %1, !12518, !DIExpression(), !12557)
    #dbg_value(i64 %3, !12519, !DIExpression(), !12557)
    #dbg_value(i64 %3, !12549, !DIExpression(), !12558)
  %.not = icmp samesign ult i64 %1, %3, !dbg !12564
  br i1 %.not, label %bb.b, label %bb.c, !dbg !12564

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.c, %bb.c ], [ false, %bb.a ], !dbg !12565
  ret i1 %.sroa.0.0, !dbg !12566

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr poison, !12554, !DIExpression(), !12559)
    #dbg_value(!DIArgList(i64 %1, i64 %3), !12525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !12529)
    #dbg_value(!DIArgList(i64 %1, i64 %3), !12534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !12538)
    #dbg_value(!DIArgList(i64 %1, i64 %3), !12542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !12546)
    #dbg_value(!DIArgList(i64 %1, i64 %3), !12525, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !12529)
    #dbg_value(!DIArgList(i64 %1, i64 %3), !12534, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !12538)
    #dbg_value(!DIArgList(i64 %1, i64 %3), !12542, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !12546)
    #dbg_value(i64 %3, !12535, !DIExpression(), !12560)
    #dbg_value(i64 %3, !12543, !DIExpression(), !12546)
    #dbg_value(!DIArgList(ptr %0, i64 %1, i64 %3), !12548, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_LLVM_arg, 2, DW_OP_minus, DW_OP_plus, DW_OP_stack_value, DW_OP_LLVM_fragment, 0, 64), !12553)
    #dbg_value(i64 %3, !12548, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !12553)
end_hunk_0
begin_hunk_1_@_RNvMs1_NtNtCs5yXxDE1DkoT_4tera2vm8for_loopNtB5_7ForLoop3new:bb.a
    #dbg_value(i64 1, !18508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18512)
  %i.by = ptrtoint ptr %.sroa.4.0.copyload.i to i64, !dbg !18750 ; 2 uses
    #dbg_value(i64 %i.by, !18508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18512)
    #dbg_value(i64 %i.by, !18508, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18512)
    #dbg_value(i64 %.sroa.0.0.copyload.i, !18508, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18512)
  %i.bz = ptrtoint ptr %i.bw to i64, !dbg !18750
    #dbg_value(i64 %i.bz, !18508, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !18512)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !18751, !noalias !18595
    #dbg_value(i64 %i.by, !18508, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18512)
    #dbg_value(i64 %.sroa.0.0.copyload.i, !18508, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18512)
    #dbg_value(i64 %i.bz, !18508, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !18512)
    #dbg_value(i64 %i.by, !18508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18512)
    #dbg_value(i64 1, !18508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18512)
    #dbg_value(i64 1, !18450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18656)
    #dbg_value(i64 %i.by, !18450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18656)
    #dbg_value(i64 %i.by, !18450, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18656)
    #dbg_value(i64 %.sroa.0.0.copyload.i, !18450, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18656)
    #dbg_value(i64 %i.bz, !18450, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !18656)
    #dbg_value(ptr undef, !5387, !DIExpression(), !18217)
  br label %_RNvXNtNtCs5yXxDE1DkoT_4tera2vm8for_loopNtB2_15ForLoopIteratorNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9size_hint.exit, !dbg !18752

bb.ad:                                            ; preds = %bb.q, %bb.r
  %.sroa.0.0.i.i.i = phi i64 [ %i.bf, %bb.q ], [ %i.bg, %bb.r ], !dbg !18753 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18754, !noalias !18595
    #dbg_value(i64 2, !18508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18512)
    #dbg_value(i64 0, !18508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18512)
    #dbg_value(i64 %.sroa.0.0.i.i.i, !18508, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18512)
  %i.ca = ptrtoint ptr %i.ba to i64, !dbg !18755
    #dbg_value(i64 %i.ca, !18508, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18512)
    #dbg_value(i64 %i.bb, !18508, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !18512)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18728, !noalias !18595
    #dbg_value(i64 %.sroa.0.0.i.i.i, !18508, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18512)
    #dbg_value(i64 %i.ca, !18508, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18512)
    #dbg_value(i64 %i.bb, !18508, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !18512)
    #dbg_value(i64 0, !18508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18512)
    #dbg_value(i64 2, !18508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18512)
    #dbg_value(i64 2, !18450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18656)
    #dbg_value(i64 0, !18450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18656)
    #dbg_value(i64 %.sroa.0.0.i.i.i, !18450, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18656)
    #dbg_value(i64 %i.ca, !18450, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18656)
    #dbg_value(i64 %i.bb, !18450, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !18656)
    #dbg_value(ptr undef, !5387, !DIExpression(), !18217)
  br label %_RNvXNtNtCs5yXxDE1DkoT_4tera2vm8for_loopNtB2_15ForLoopIteratorNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9size_hint.exit, !dbg !18756

bb.ae:                                            ; preds = %bb.e
    #dbg_value(i64 3, !18508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18512)
    #dbg_value(i64 0, !18508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18512)
  %i.cb = ptrtoint ptr %i.t to i64, !dbg !18757
    #dbg_value(i64 %i.cb, !18508, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18512)
    #dbg_value(i64 undef, !18508, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18512)
    #dbg_value(i64 undef, !18508, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !18512)
    #dbg_value(i64 0, !18508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18512)
    #dbg_value(i64 3, !18508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18512)
    #dbg_value(i64 3, !18450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18656)
    #dbg_value(i64 0, !18450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18656)
    #dbg_value(i64 %i.cb, !18450, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18656)
    #dbg_value(ptr undef, !5387, !DIExpression(), !18217)
    #dbg_value(ptr undef, !5396, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !18438)
    #dbg_value(ptr undef, !5397, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !18439)
    #dbg_value(ptr %i.t, !5409, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !18441)
  %i.cc = getelementptr inbounds nuw i8, ptr %i.t, i64 32, !dbg !18758
  %i.cd = load i64, ptr %i.cc, align 8, !dbg !18758, !noalias !18657, !noundef !1418 ; 2 uses
  %i.ce = icmp sgt i64 %i.cd, -1, !dbg !18759
  tail call void @llvm.assume(i1 %i.ce), !dbg !18760
  br label %_RNvXNtNtCs5yXxDE1DkoT_4tera2vm8for_loopNtB2_15ForLoopIteratorNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9size_hint.exit, !dbg !18761

_RNvNtNtCs5yXxDE1DkoT_4tera2vm8for_loop24create_for_loop_iterator.exit: ; preds = %bb.a
    #dbg_value(i64 undef, !18508, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18512)
    #dbg_value(i64 undef, !18508, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18512)
    #dbg_value(i64 undef, !18508, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !18512)
    #dbg_value(i64 undef, !18508, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18512)
    #dbg_value(i64 -1, !18508, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18512)
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #30
          to label %bb.af unwind label %bb.aa, !dbg !18762

bb.af:                                            ; preds = %_RNvNtNtCs5yXxDE1DkoT_4tera2vm8for_loop24create_for_loop_iterator.exit
  unreachable

_RNvXNtNtCs5yXxDE1DkoT_4tera2vm8for_loopNtB2_15ForLoopIteratorNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9size_hint.exit: ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab
  %.sroa.17.0 = phi i64 [ %i.bb, %bb.ad ], [ undef, %bb.ab ], [ %i.bz, %bb.ac ], [ undef, %bb.ae ], !dbg !18763
  %.sroa.15.0 = phi i64 [ %i.ca, %bb.ad ], [ undef, %bb.ab ], [ %.sroa.0.0.copyload.i, %bb.ac ], [ undef, %bb.ae ], !dbg !18763
  %.sroa.11.0 = phi i64 [ %.sroa.0.0.i.i.i, %bb.ad ], [ %i.br, %bb.ab ], [ %i.by, %bb.ac ], [ %i.cb, %bb.ae ], !dbg !18764
  %.sroa.7.0 = phi i64 [ 0, %bb.ad ], [ 0, %bb.ab ], [ %i.by, %bb.ac ], [ 0, %bb.ae ], !dbg !18764
  %.sroa.0.0 = phi i64 [ 2, %bb.ad ], [ 0, %bb.ab ], [ 1, %bb.ac ], [ 3, %bb.ae ], !dbg !18764
  %.sink12.i = phi i64 [ %.sroa.0.0.i.i.i, %bb.ad ], [ %i.bt, %bb.ab ], [ %.sroa.5.0.copyload.i, %bb.ac ], [ %i.cd, %bb.ae ] ; 2 uses
    #dbg_value(i64 %.sroa.0.0, !18450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18656)
    #dbg_value(i64 %.sroa.7.0, !18450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18656)
    #dbg_value(i64 %.sroa.11.0, !18450, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !18656)
    #dbg_value(i64 %.sroa.15.0, !18450, !DIExpression(DW_OP_LLVM_fragment, 192, 64), !18656)
    #dbg_value(i64 %.sroa.17.0, !18450, !DIExpression(DW_OP_LLVM_fragment, 256, 64), !18656)
    #dbg_value(i64 %.sink12.i, !18451, !DIExpression(), !18665)
    #dbg_value(i64 0, !18452, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18666)
    #dbg_value(i8 1, !18452, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !18666)
    #dbg_value(i64 %.sink12.i, !18452, !DIExpression(DW_OP_constu, 1, DW_OP_eq, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 136, 8), !18666)
    #dbg_value(i64 %.sink12.i, !18452, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18666)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !18765
  store i64 %.sroa.0.0, ptr %i.f, align 8, !dbg !18765
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !18765
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !18765
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16, !dbg !18765
  store i64 %.sroa.11.0, ptr %.sroa.11.0..sroa_idx, align 8, !dbg !18765
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !18765
  store i64 %.sroa.15.0, ptr %.sroa.15.0..sroa_idx, align 8, !dbg !18765
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32, !dbg !18765
  store i64 %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 8, !dbg !18765
  %i.cf = invoke { i64, i64 } @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @4)
          to label %bb.ah unwind label %bb.ag, !dbg !18766 ; 2 uses

bb.ag:                                            ; preds = %_RNvXNtNtCs5yXxDE1DkoT_4tera2vm8for_loopNtB2_15ForLoopIteratorNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9size_hint.exit
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera2vm8for_loop15ForLoopIteratorEBH_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.f) #26
          to label %.body unwind label %bb.ai, !dbg !18767

bb.ah:                                            ; preds = %_RNvXNtNtCs5yXxDE1DkoT_4tera2vm8for_loopNtB2_15ForLoopIteratorNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator9size_hint.exit
  %i.ch = icmp eq i64 %.sink12.i, 1, !dbg !18768
    #dbg_value(i1 %i.ch, !18452, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value, DW_OP_LLVM_fragment, 136, 8), !18666)
  %i.ci = zext i1 %i.ch to i8, !dbg !18769
    #dbg_value(i8 %i.ci, !18452, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !18666)
  %i.cj = extractvalue { i64, i64 } %i.cf, 0, !dbg !18770
  %i.ck = extractvalue { i64, i64 } %i.cf, 1, !dbg !18770
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.f, i64 40, i1 false), !dbg !18771
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 88, !dbg !18771
  store i64 0, ptr %i.cl, align 8, !dbg !18771
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96, !dbg !18771
  store i64 %.sink12.i, ptr %.sroa.45.0..sroa_idx, align 8, !dbg !18771
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104, !dbg !18771
  store i8 1, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !18771
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 105, !dbg !18771
  store i8 %i.ci, ptr %.sroa.6.0..sroa_idx, align 1, !dbg !18771
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !18771
  store i64 0, ptr %i.cm, align 8, !dbg !18771
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !18771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cn, ptr noundef nonnull align 8 dereferenceable(32) @6, i64 32, i1 false), !dbg !18771
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !18771
  store i64 %i.cj, ptr %.sroa.418.0..sroa_idx, align 8, !dbg !18771
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !18771
  store i64 %i.ck, ptr %.sroa.519.0..sroa_idx, align 8, !dbg !18771
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !18771
  store i64 0, ptr %i.co, align 8, !dbg !18771
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48, !dbg !18771
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.424.0..sroa_idx, align 8, !dbg !18771
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56, !dbg !18771
  store i64 0, ptr %.sroa.525.0..sroa_idx, align 8, !dbg !18771
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !18771
  store i64 -1, ptr %i.cp, align 8, !dbg !18771
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !18771
  store i8 -1, ptr %i.cq, align 8, !dbg !18771
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136, !dbg !18771
  store i8 2, ptr %.sroa.512.0..sroa_idx, align 8, !dbg !18771
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !18771
  store i8 0, ptr %i.cr, align 8, !dbg !18771
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 217, !dbg !18771
  store i8 0, ptr %i.cs, align 1, !dbg !18771
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !18767
    #dbg_value(ptr %1, !3203, !DIExpression(), !18447)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !18772
  ret void, !dbg !18773

bb.ai:                                            ; preds = %.body, %bb.ag
  %i.ct = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !18774
  unreachable, !dbg !18774

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit: ; preds = %.body
  resume { ptr, i32 } %.pn.pn, !dbg !18774
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryINtNtBd_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE12insert_entryB1I_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18788 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr %1, !18823, !DIExpression(), !18836)
    #dbg_declare(ptr %2, !18824, !DIExpression(), !18837)
    #dbg_declare(ptr %i.f, !18825, !DIExpression(), !18838)
    #dbg_declare(ptr %i.e, !18828, !DIExpression(), !18839)
    #dbg_declare(ptr %i.b, !18829, !DIExpression(), !18840)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !18869
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !18870 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !dbg !18870, !noundef !1418
  %.not = icmp eq ptr %i.h, null, !dbg !18870
  br i1 %.not, label %bb.b, label %bb.e, !dbg !18871

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !18842, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !18848)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !18872
  %i.j = load ptr, ptr %i.i, align 8, !dbg !18872, !nonnull !1418, !noundef !1418 ; 2 uses
    #dbg_value(ptr %i.j, !18826, !DIExpression(), !18849)
    #dbg_value(ptr %i.j, !18850, !DIExpression(), !18857)
  %i.k = invoke { ptr, i64 } @_RINvMs8_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1R_()
          to label %bb.c unwind label %bb.g, !dbg !18873 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, i64 } %i.k, 0, !dbg !18873 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ], !dbg !18874
  %3 = extractvalue { ptr, i64 } %i.k, 1, !dbg !18873 ; 2 uses
    #dbg_value(ptr %i.l, !18854, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18858)
    #dbg_value(i64 %3, !18854, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18858)
  store ptr %i.l, ptr %i.j, align 8, !dbg !18875
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !18875
  store i64 %3, ptr %i.m, align 8, !dbg !18875
    #dbg_value(ptr %i.j, !18827, !DIExpression(), !18859)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !18876
    #dbg_value(i64 %3, !18860, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18866)
    #dbg_value(ptr %i.l, !18860, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18866)
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !18877
  store i64 %3, ptr %i.n, align 8, !dbg !18877
  store ptr %i.l, ptr %i.e, align 8, !dbg !18877
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !18878
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !18878
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !18879
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !18879
  call void @_RNvMsu_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB19_4LeafE16push_with_handleB1O_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !18880
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !18881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !18881
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !18882
  br label %bb.d, !dbg !18883

bb.d:                                             ; preds = %bb.e, %bb.c
    #dbg_value(ptr %1, !18842, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !18868)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !18884 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !dbg !18884, !nonnull !1418, !noundef !1418
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !18885 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !18885, !noundef !1418
  %i.s = add i64 %i.r, 1, !dbg !18885
  store i64 %i.s, ptr %i.q, align 8, !dbg !18885
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !18886
  %i.u = load ptr, ptr %i.f, align 8, !dbg !18886, !nonnull !1418, !noundef !1418
  %i.v = load ptr, ptr %i.o, align 8, !dbg !18887, !nonnull !1418, !noundef !1418
  store ptr %i.u, ptr %0, align 8, !dbg !18888
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !18888
  %i.w = load <2 x i64>, ptr %i.t, align 8, !dbg !18886
  store <2 x i64> %i.w, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !18888
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !18888
  store ptr %i.v, ptr %i.x, align 8, !dbg !18888
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !18889
  ret void, !dbg !18890

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !18891
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !18891
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !18892
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !18892
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !18893
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !18894
  call void @_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3F_11VacantEntryB1D_B1Y_E12insert_entry0EB22_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 %i.z, ptr noundef nonnull %i.y), !dbg !18895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !18896
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !18897
  br label %bb.d, !dbg !18897

bb.f:                                             ; preds = %bb.g, %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !18898
  unreachable, !dbg !18898

bb.g:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %2, !3203, !DIExpression(), !18793)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.h unwind label %bb.f, !dbg !18899

.critedge20:                                      ; preds = %bb.h
  resume { ptr, i32 } %i.ab, !dbg !18898

bb.h:                                             ; preds = %bb.g
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc6borrow3CoweEECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #26
          to label %.critedge20 unwind label %bb.f, !dbg !18889
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringNtNtB9_7set_val9SetValZSTE12insert_entryCs5yXxDE1DkoT_4tera(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !18913 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr %1, !18946, !DIExpression(), !18961)
    #dbg_declare(ptr poison, !18947, !DIExpression(), !18962)
    #dbg_declare(ptr %i.e, !18948, !DIExpression(), !18963)
    #dbg_declare(ptr %i.d, !18953, !DIExpression(), !18964)
    #dbg_declare(ptr %i.b, !18954, !DIExpression(), !18965)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !18995
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !18996 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !dbg !18996, !noundef !1418
  %.not = icmp eq ptr %i.g, null, !dbg !18996
  br i1 %.not, label %bb.b, label %bb.e, !dbg !18997

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !18967, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !18973)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !18998
  %i.i = load ptr, ptr %i.h, align 8, !dbg !18998, !nonnull !1418, !noundef !1418 ; 2 uses
    #dbg_value(ptr %i.i, !18950, !DIExpression(), !18974)
    #dbg_value(ptr %i.i, !18976, !DIExpression(), !18983)
  %i.j = invoke { ptr, i64 } @_RINvMs8_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtB8_7set_val9SetValZSTNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalECs5yXxDE1DkoT_4tera()
          to label %bb.c unwind label %bb.h, !dbg !18999 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.k = extractvalue { ptr, i64 } %i.j, 0, !dbg !18999 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ], !dbg !19000
  %2 = extractvalue { ptr, i64 } %i.j, 1, !dbg !18999 ; 2 uses
    #dbg_value(ptr %i.k, !18980, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18984)
    #dbg_value(i64 %2, !18980, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18984)
  store ptr %i.k, ptr %i.i, align 8, !dbg !19001
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !19001
  store i64 %2, ptr %i.l, align 8, !dbg !19001
    #dbg_value(ptr %i.i, !18952, !DIExpression(), !18985)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !19002
    #dbg_value(i64 %2, !18986, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !18992)
    #dbg_value(ptr %i.k, !18986, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !18992)
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !19003
  store i64 %2, ptr %i.m, align 8, !dbg !19003
  store ptr %i.k, ptr %i.d, align 8, !dbg !19003
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !19004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !19004
  call void @_RNvMsu_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB19_4LeafE16push_with_handleCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !19005
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !19006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !19007
  br label %bb.d, !dbg !19008

bb.d:                                             ; preds = %bb.e, %bb.c
    #dbg_value(ptr %1, !18967, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !18994)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !19009 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !dbg !19009, !nonnull !1418, !noundef !1418
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !19010 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !dbg !19010, !noundef !1418
  %i.r = add i64 %i.q, 1, !dbg !19010
  store i64 %i.r, ptr %i.p, align 8, !dbg !19010
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !19011
  %i.t = load ptr, ptr %i.e, align 8, !dbg !19011, !nonnull !1418, !noundef !1418
  %i.u = load ptr, ptr %i.n, align 8, !dbg !19012, !nonnull !1418, !noundef !1418
  store ptr %i.t, ptr %0, align 8, !dbg !19013
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19013
  %i.v = load <2 x i64>, ptr %i.s, align 8, !dbg !19011
  store <2 x i64> %i.v, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !19013
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !19013
  store ptr %i.u, ptr %i.w, align 8, !dbg !19013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !19014
  ret void, !dbg !19015

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !19016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false), !dbg !19016
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !19017
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !19018
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !19019
  call void @_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtB8_7set_val9SetValZSTNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3v_11VacantEntryB1D_B1Y_E12insert_entry0ECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.y, ptr noundef nonnull %i.x), !dbg !19020
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19021
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19022
  br label %bb.d, !dbg !19022

bb.f:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !19023
  unreachable, !dbg !19023

bb.g:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.aa, !dbg !19023

bb.h:                                             ; preds = %bb.b
  %i.aa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
          to label %bb.g unwind label %bb.f, !dbg !19014
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueE12insert_entryB1I_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19037 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr %1, !19072, !DIExpression(), !19087)
    #dbg_declare(ptr %2, !19073, !DIExpression(), !19088)
    #dbg_declare(ptr %i.f, !19074, !DIExpression(), !19089)
    #dbg_declare(ptr %i.e, !19079, !DIExpression(), !19090)
    #dbg_declare(ptr %i.b, !19080, !DIExpression(), !19091)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !19121
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !19122 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !dbg !19122, !noundef !1418
  %.not = icmp eq ptr %i.h, null, !dbg !19122
  br i1 %.not, label %bb.b, label %bb.e, !dbg !19123

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !19093, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !19099)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !19124
  %i.j = load ptr, ptr %i.i, align 8, !dbg !19124, !nonnull !1418, !noundef !1418 ; 2 uses
    #dbg_value(ptr %i.j, !19076, !DIExpression(), !19100)
    #dbg_value(ptr %i.j, !19102, !DIExpression(), !19109)
  %i.k = invoke { ptr, i64 } @_RINvMs8_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1R_()
          to label %bb.c unwind label %bb.g, !dbg !19125 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, i64 } %i.k, 0, !dbg !19125 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ], !dbg !19126
  %3 = extractvalue { ptr, i64 } %i.k, 1, !dbg !19125 ; 2 uses
    #dbg_value(ptr %i.l, !19106, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19110)
    #dbg_value(i64 %3, !19106, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19110)
  store ptr %i.l, ptr %i.j, align 8, !dbg !19127
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !19127
  store i64 %3, ptr %i.m, align 8, !dbg !19127
    #dbg_value(ptr %i.j, !19078, !DIExpression(), !19111)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !19128
    #dbg_value(i64 %3, !19112, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19118)
    #dbg_value(ptr %i.l, !19112, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19118)
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !19129
  store i64 %3, ptr %i.n, align 8, !dbg !19129
  store ptr %i.l, ptr %i.e, align 8, !dbg !19129
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !19130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !19130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !19131
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !19131
  call void @_RNvMsu_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB19_4LeafE16push_with_handleB1O_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !19132
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !19133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !19133
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !19134
  br label %bb.d, !dbg !19135

bb.d:                                             ; preds = %bb.e, %bb.c
    #dbg_value(ptr %1, !19093, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !19120)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !19136 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !dbg !19136, !nonnull !1418, !noundef !1418
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !19137 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !19137, !noundef !1418
  %i.s = add i64 %i.r, 1, !dbg !19137
  store i64 %i.s, ptr %i.q, align 8, !dbg !19137
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !19138
  %i.u = load ptr, ptr %i.f, align 8, !dbg !19138, !nonnull !1418, !noundef !1418
  %i.v = load ptr, ptr %i.o, align 8, !dbg !19139, !nonnull !1418, !noundef !1418
  store ptr %i.u, ptr %0, align 8, !dbg !19140
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19140
  %i.w = load <2 x i64>, ptr %i.t, align 8, !dbg !19138
  store <2 x i64> %i.w, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !19140
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !19140
  store ptr %i.v, ptr %i.x, align 8, !dbg !19140
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !19141
  ret void, !dbg !19142

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !19143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !19143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !19144
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !19145
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !19146
  call void @_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3F_11VacantEntryB1D_B1Y_E12insert_entry0EB22_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noundef nonnull align 8 %i.z, ptr noundef nonnull %i.y), !dbg !19147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19148
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19149
  br label %bb.d, !dbg !19149

bb.f:                                             ; preds = %bb.g, %bb.h
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !19150
  unreachable, !dbg !19150

bb.g:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %2, !3203, !DIExpression(), !19042)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %bb.h unwind label %bb.f, !dbg !19151

.critedge20:                                      ; preds = %bb.h
  resume { ptr, i32 } %i.ab, !dbg !19150

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
          to label %.critedge20 unwind label %bb.f, !dbg !19141
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionE12insert_entryB1K_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19165 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr %1, !19198, !DIExpression(), !19213)
    #dbg_declare(ptr %2, !19199, !DIExpression(), !19214)
    #dbg_declare(ptr %i.f, !19200, !DIExpression(), !19215)
    #dbg_declare(ptr %i.e, !19205, !DIExpression(), !19216)
    #dbg_declare(ptr %i.b, !19206, !DIExpression(), !19217)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !19247
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !19248 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !dbg !19248, !noundef !1418
  %.not = icmp eq ptr %i.h, null, !dbg !19248
  br i1 %.not, label %bb.b, label %bb.e, !dbg !19249

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !19219, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !19225)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !19250
  %i.j = load ptr, ptr %i.i, align 8, !dbg !19250, !nonnull !1418, !noundef !1418 ; 2 uses
    #dbg_value(ptr %i.j, !19202, !DIExpression(), !19226)
    #dbg_value(ptr %i.j, !19228, !DIExpression(), !19235)
  %i.k = invoke { ptr, i64 } @_RINvMs8_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1T_()
          to label %bb.c unwind label %bb.g, !dbg !19251 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, i64 } %i.k, 0, !dbg !19251 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ], !dbg !19252
  %3 = extractvalue { ptr, i64 } %i.k, 1, !dbg !19251 ; 2 uses
    #dbg_value(ptr %i.l, !19232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19236)
    #dbg_value(i64 %3, !19232, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19236)
  store ptr %i.l, ptr %i.j, align 8, !dbg !19253
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !19253
  store i64 %3, ptr %i.m, align 8, !dbg !19253
    #dbg_value(ptr %i.j, !19204, !DIExpression(), !19237)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !19254
    #dbg_value(i64 %3, !19238, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19244)
    #dbg_value(ptr %i.l, !19238, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19244)
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !19255
  store i64 %3, ptr %i.n, align 8, !dbg !19255
  store ptr %i.l, ptr %i.e, align 8, !dbg !19255
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !19256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !19256
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !19257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(64) %2, i64 64, i1 false), !dbg !19257
  call void @_RNvMsu_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionNtB19_4LeafE16push_with_handleB1Q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.c), !dbg !19258
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !19259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !19259
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !19260
  br label %bb.d, !dbg !19261

bb.d:                                             ; preds = %bb.e, %bb.c
    #dbg_value(ptr %1, !19219, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !19246)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !19262 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !dbg !19262, !nonnull !1418, !noundef !1418
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !19263 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !19263, !noundef !1418
  %i.s = add i64 %i.r, 1, !dbg !19263
  store i64 %i.s, ptr %i.q, align 8, !dbg !19263
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !19264
  %i.u = load ptr, ptr %i.f, align 8, !dbg !19264, !nonnull !1418, !noundef !1418
  %i.v = load ptr, ptr %i.o, align 8, !dbg !19265, !nonnull !1418, !noundef !1418
  store ptr %i.u, ptr %0, align 8, !dbg !19266
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19266
  %i.w = load <2 x i64>, ptr %i.t, align 8, !dbg !19264
  store <2 x i64> %i.w, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !19266
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !19266
  store ptr %i.v, ptr %i.x, align 8, !dbg !19266
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !19267
  ret void, !dbg !19268

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !19269
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !19269
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !19270
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !19271
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !19272
  call void @_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB3T_11VacantEntryB1D_B1Y_E12insert_entry0EB24_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(64) %2, ptr noundef nonnull align 8 %i.z, ptr noundef nonnull %i.y), !dbg !19273
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19274
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19275
  br label %bb.d, !dbg !19275

bb.f:                                             ; preds = %bb.h, %bb.g
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !19276
  unreachable, !dbg !19276

bb.g:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast10ExpressionEBH_(ptr noalias nofree noundef align 8 dereferenceable(64) %2) #26
          to label %bb.h unwind label %bb.f, !dbg !19267

.critedge20:                                      ; preds = %bb.h
  resume { ptr, i32 } %i.ab, !dbg !19276

bb.h:                                             ; preds = %bb.g
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
          to label %.critedge20 unwind label %bb.f, !dbg !19267
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs4_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_11VacantEntryNtNtBd_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentE12insert_entryB1K_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19290 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
    #dbg_declare(ptr %1, !19333, !DIExpression(), !19348)
    #dbg_declare(ptr %2, !19334, !DIExpression(), !19349)
    #dbg_declare(ptr %i.f, !19335, !DIExpression(), !19350)
    #dbg_declare(ptr %i.e, !19340, !DIExpression(), !19351)
    #dbg_declare(ptr %i.b, !19341, !DIExpression(), !19352)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !19383
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !19384 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !dbg !19384, !noundef !1418
  %.not = icmp eq ptr %i.h, null, !dbg !19384
  br i1 %.not, label %bb.b, label %bb.e, !dbg !19385

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !19354, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !19360)
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !19386
  %i.j = load ptr, ptr %i.i, align 8, !dbg !19386, !nonnull !1418, !noundef !1418 ; 2 uses
    #dbg_value(ptr %i.j, !19337, !DIExpression(), !19361)
    #dbg_value(ptr %i.j, !19363, !DIExpression(), !19370)
  %i.k = invoke { ptr, i64 } @_RINvMs8_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedNtNtBc_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentNtB1a_4LeafE8new_leafNtNtBc_5alloc6GlobalEB1T_()
          to label %bb.c unwind label %bb.g, !dbg !19387 ; 2 uses

bb.c:                                             ; preds = %bb.b
  %i.l = extractvalue { ptr, i64 } %i.k, 0, !dbg !19387 ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ], !dbg !19388
  %3 = extractvalue { ptr, i64 } %i.k, 1, !dbg !19387 ; 2 uses
    #dbg_value(ptr %i.l, !19367, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19371)
    #dbg_value(i64 %3, !19367, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19371)
  store ptr %i.l, ptr %i.j, align 8, !dbg !19389
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8, !dbg !19389
  store i64 %3, ptr %i.m, align 8, !dbg !19389
    #dbg_value(ptr %i.j, !19339, !DIExpression(), !19372)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !19390
    #dbg_value(i64 %3, !19373, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !19379)
    #dbg_value(ptr %i.l, !19373, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !19379)
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !19391
  store i64 %3, ptr %i.n, align 8, !dbg !19391
  store ptr %i.l, ptr %i.e, align 8, !dbg !19391
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !19392
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !19392
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !19393
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 32, i1 false), !dbg !19393
  call void @_RNvMsu_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentNtB19_4LeafE16push_with_handleB1Q_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.c), !dbg !19394
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !19395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !19395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !19396
  br label %bb.d, !dbg !19397

bb.d:                                             ; preds = %bb.e, %bb.c
    #dbg_value(ptr %1, !19354, !DIExpression(DW_OP_plus_uconst, 24, DW_OP_stack_value), !19381)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !19398 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !dbg !19398, !nonnull !1418, !noundef !1418
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16, !dbg !19399 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !dbg !19399, !noundef !1418
  %i.s = add i64 %i.r, 1, !dbg !19399
  store i64 %i.s, ptr %i.q, align 8, !dbg !19399
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !19400
  %i.u = load ptr, ptr %i.f, align 8, !dbg !19400, !nonnull !1418, !noundef !1418
  %i.v = load ptr, ptr %i.o, align 8, !dbg !19401, !nonnull !1418, !noundef !1418
  store ptr %i.u, ptr %0, align 8, !dbg !19402
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !19402
  %i.w = load <2 x i64>, ptr %i.t, align 8, !dbg !19400
  store <2 x i64> %i.w, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !19402
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !19402
  store ptr %i.v, ptr %i.x, align 8, !dbg !19402
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !19403
  ret void, !dbg !19404

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !19405
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !19405
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19406
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !19406
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !19407
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !19408
  call void @_RINvMsN_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_6HandleINtB6_7NodeRefNtNtB6_6marker3MutNtNtBc_6string6StringNtNtNtCs5yXxDE1DkoT_4tera7parsing3ast17ComponentArgumentNtB1n_4LeafENtB1n_4EdgeE16insert_recursingNtNtBc_5alloc6GlobalNCNvMs4_NtNtB8_3map5entryINtB40_11VacantEntryB1D_B1Y_E12insert_entry0EB24_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %2, ptr noundef nonnull align 8 %i.z, ptr noundef nonnull %i.y), !dbg !19409
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19411
  br label %bb.d, !dbg !19411

bb.f:                                             ; preds = %bb.h, %.noexc21
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !19412
  unreachable, !dbg !19412

bb.g:                                             ; preds = %bb.b
  %i.ab = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %2, !5576, !DIExpression(), !19295)
    #dbg_value(ptr %2, !3474, !DIExpression(), !19297)
  %i.ac = load i8, ptr %2, align 8, !dbg !19413, !range !3480, !alias.scope !19382, !noundef !1418
  %i.ad = icmp eq i8 %i.ac, -1, !dbg !19413
  br i1 %i.ad, label %.noexc21, label %bb.h, !dbg !19413

bb.h:                                             ; preds = %bb.g
    #dbg_value(ptr %2, !3203, !DIExpression(), !19303)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2)
          to label %.noexc21 unwind label %bb.f, !dbg !19414

.critedge20:                                      ; preds = %.noexc21
  resume { ptr, i32 } %i.ab, !dbg !19412

.noexc21:                                         ; preds = %bb.h, %bb.g
  invoke void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #26
          to label %.critedge20 unwind label %bb.f, !dbg !19403
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryINtNtBd_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE6insertB1K_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19415 {
bb.a:
    #dbg_value(ptr %1, !19424, !DIExpression(), !19427)
    #dbg_value(ptr %1, !19428, !DIExpression(), !19434)
    #dbg_declare(ptr %2, !19425, !DIExpression(), !19435)
    #dbg_declare(ptr poison, !19436, !DIExpression(), !19440)
  %i.a = invoke { ptr, ptr } @_RNvMsS_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutB21_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.b, !dbg !19442

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %2, !3203, !DIExpression(), !19419)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit unwind label %bb.d, !dbg !19443

bb.c:                                             ; preds = %bb.a
  %i.c = extractvalue { ptr, ptr } %i.a, 1, !dbg !19444 ; 2 uses
    #dbg_value(ptr %i.c, !19437, !DIExpression(), !19441)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !19445
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !19446
  ret void, !dbg !19447

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !19448
  unreachable, !dbg !19448

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.b, !dbg !19448
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryINtNtBd_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE8into_mutB1K_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19449 {
bb.a:
    #dbg_declare(ptr %0, !19453, !DIExpression(), !19455)
  %i.a = tail call noundef nonnull align 8 ptr @_RNvMsQ_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutINtNtBb_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1m_14LeafOrInternalENtB1m_2KVE12into_val_mutB21_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0), !dbg !19456
  ret ptr %i.a, !dbg !19457
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryINtNtBd_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueE9remove_kvB1K_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19462 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [1 x i8], align 1                 ; 5 uses
    #dbg_declare(ptr %1, !19474, !DIExpression(), !19480)
    #dbg_declare(ptr %i.b, !19476, !DIExpression(), !19481)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !19510
    #dbg_value(i8 0, !19475, !DIExpression(), !19482)
  store i8 0, ptr %i.c, align 1, !dbg !19511
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !19512
    #dbg_value(ptr %i.c, !19475, !DIExpression(DW_OP_deref), !19482)
  call void @_RINvMNtNtNtCsgCecv3eZDcN_5alloc11collections5btree6removeINtNtB5_4node6HandleINtBW_7NodeRefNtNtBW_6marker3MutINtNtB9_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1t_14LeafOrInternalENtB1t_2KVE18remove_kv_trackingNCNvMs5_NtNtB5_3map5entryINtB3C_13OccupiedEntryB1J_B24_E9remove_kv0NtNtB9_5alloc6GlobalEB28_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr noundef nonnull %i.c), !dbg !19513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !19514
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !dbg !19514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !19515
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !19516
  %i.e = load ptr, ptr %i.d, align 8, !dbg !19516, !nonnull !1418, !noundef !1418 ; 3 uses
    #dbg_value(ptr %i.e, !19477, !DIExpression(), !19483)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !19517 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !dbg !19517, !noundef !1418
  %i.h = add i64 %i.g, -1, !dbg !19517
  store i64 %i.h, ptr %i.f, align 8, !dbg !19517
  %i.i = load i8, ptr %i.c, align 1, !dbg !19518, !range !3604, !noundef !1418
    #dbg_value(i8 %i.i, !19475, !DIExpression(), !19482)
  %i.j = trunc nuw i8 %i.i to i1, !dbg !19518
  br i1 %i.j, label %bb.b, label %bb.c, !dbg !19518

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %i.e, !19484, !DIExpression(), !19500)
  %i.k = load ptr, ptr %i.e, align 8, !dbg !19519, !noundef !1418
  %.not = icmp eq ptr %i.k, null, !dbg !19519
  br i1 %.not, label %bb.e, label %bb.d, !dbg !19520, !prof !4698

bb.c:                                             ; preds = %bb.a, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !19521
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !19522
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !19523
  ret void, !dbg !19524

bb.d:                                             ; preds = %bb.b
    #dbg_value(ptr %i.e, !19501, !DIExpression(), !19508)
    #dbg_value(ptr %i.e, !19478, !DIExpression(), !19509)
  invoke void @_RINvMss_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5OwnedINtNtBc_6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueNtB1a_14LeafOrInternalE18pop_internal_levelNtNtBc_5alloc6GlobalEB1R_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %bb.c unwind label %bb.f, !dbg !19525

bb.e:                                             ; preds = %bb.b
    #dbg_value(ptr null, !19501, !DIExpression(), !19508)
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #30
          to label %bb.g unwind label %bb.f, !dbg !19526

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueTINtNtCsgCecv3eZDcN_5alloc6borrow3CoweENtNtCs5yXxDE1DkoT_4tera5value5ValueEEB1i_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.b) #26
          to label %bb.i unwind label %bb.h, !dbg !19522

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !19527
  unreachable, !dbg !19527

bb.i:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.l, !dbg !19527
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs5_NtNtNtNtCsgCecv3eZDcN_5alloc11collections5btree3map5entryINtB5_13OccupiedEntryNtNtBd_6string6StringNtNtB9_7set_val9SetValZSTE6insertCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !19528 {
bb.a:
    #dbg_value(ptr %0, !19534, !DIExpression(), !19537)
    #dbg_value(ptr %0, !19538, !DIExpression(), !19544)
    #dbg_declare(ptr poison, !19535, !DIExpression(), !19545)
  %i.a = tail call { ptr, ptr } @_RNvMsS_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker3MutNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE6kv_mutCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0), !dbg !19546 ; 0 uses
end_hunk_1
begin_hunk_2_@_RNvXs0_NtNtCs5yXxDE1DkoT_4tera5value6numberNtB5_6NumberNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq:bb.a

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4: ; preds = %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.c, %bb.b ], [ %i.e, %bb.d ]
    #dbg_value(ptr %i.b, !3203, !DIExpression(), !23352)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit unwind label %bb.f, !dbg !23368

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4

bb.c:                                             ; preds = %bb.a
  %i.d = invoke noundef zeroext i1 @_RNvXs3_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.d, !dbg !23366

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !3203, !DIExpression(), !23354)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4 unwind label %bb.f, !dbg !23369

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr %i.a, !3203, !DIExpression(), !23356)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit5 unwind label %bb.b, !dbg !23370

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit5: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23371
    #dbg_value(ptr %i.b, !3203, !DIExpression(), !23358)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !dbg !23372
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23371
  ret i1 %i.d, !dbg !23373

bb.f:                                             ; preds = %bb.d, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !23374
  unreachable, !dbg !23374

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4
  resume { ptr, i32 } %.pn, !dbg !23374
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 -2, 2) i8 @_RNvXs1_NtNtCs5yXxDE1DkoT_4tera5value6numberNtB5_6NumberNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23379 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %0, !23400, !DIExpression(), !23403)
    #dbg_value(ptr %1, !23401, !DIExpression(), !23403)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !23404
  call void @_RNvXs_NtNtCs5yXxDE1DkoT_4tera5value6numberNtB6_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromNtB4_6NumberE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %0), !dbg !23404
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23405
  invoke void @_RNvXs_NtNtCs5yXxDE1DkoT_4tera5value6numberNtB6_5ValueINtNtCsf3Ta7LF998c_4core7convert4FromNtB4_6NumberE4from(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 16 captures(none) dereferenceable(32) %1)
          to label %bb.c unwind label %bb.b, !dbg !23405

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4: ; preds = %bb.d, %bb.b
  %.pn = phi { ptr, i32 } [ %i.c, %bb.b ], [ %i.e, %bb.d ]
    #dbg_value(ptr %i.b, !3203, !DIExpression(), !23381)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit unwind label %bb.f, !dbg !23406

bb.b:                                             ; preds = %bb.e, %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4

bb.c:                                             ; preds = %bb.a
  %i.d = invoke noundef i8 @_RNvXs5_NtCs5yXxDE1DkoT_4tera5valueNtB5_5ValueNtNtCsf3Ta7LF998c_4core3cmp10PartialOrd11partial_cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.d, !dbg !23407

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          cleanup
    #dbg_value(ptr %i.a, !3203, !DIExpression(), !23383)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4 unwind label %bb.f, !dbg !23408

bb.e:                                             ; preds = %bb.c
    #dbg_value(ptr %i.a, !3203, !DIExpression(), !23385)
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit5 unwind label %bb.b, !dbg !23409

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit5: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23410
    #dbg_value(ptr %i.b, !3203, !DIExpression(), !23387)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value10ValueInnerEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b), !dbg !23411
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !23410
  ret i8 %i.d, !dbg !23412

bb.f:                                             ; preds = %bb.d, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #25, !dbg !23413
  unreachable, !dbg !23413

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5yXxDE1DkoT_4tera5value5ValueEBF_.exit4
  resume { ptr, i32 } %.pn, !dbg !23413
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_5Debug3fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !23414 {
bb.a:
    #dbg_value(ptr %0, !23418, !DIExpression(), !23421)
    #dbg_value(ptr %1, !23419, !DIExpression(), !23421)
  %i.a = load ptr, ptr %0, align 8, !dbg !23426, !nonnull !1418, !align !3438, !noundef !1418 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !23427
  %.val = load ptr, ptr %i.b, align 8, !dbg !23427, !nonnull !1418, !noundef !1418
  %i.c = getelementptr i8, ptr %i.a, i64 16, !dbg !23427
  %.val2 = load i64, ptr %i.c, align 8, !dbg !23427, !noundef !1418
    #dbg_value(ptr poison, !23422, !DIExpression(), !23417)
    #dbg_value(ptr %1, !23424, !DIExpression(), !23417)
  %i.d = tail call noundef zeroext i1 @_RNvXsh_NtCsf3Ta7LF998c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !23428
  ret i1 %i.d, !dbg !23429
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_2io5error9ErrorKindNtB6_5Debug3fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !23430 {
switch.lookup:
    #dbg_value(ptr %0, !23438, !DIExpression(), !23443)
    #dbg_value(ptr %1, !23439, !DIExpression(), !23443)
  %i.a = load ptr, ptr %0, align 8, !dbg !23452, !nonnull !1418, !noundef !1418
  %.val = load i8, ptr %i.a, align 1, !dbg !23453, !range !23444, !noundef !1418 ; 2 uses
    #dbg_value(ptr poison, !23446, !DIExpression(), !23433)
    #dbg_value(ptr %1, !23450, !DIExpression(), !23433)
  %i.b = zext nneg i8 %.val to i64, !dbg !23454
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_2io5error9ErrorKindNtB6_5Debug3fmtCs5yXxDE1DkoT_4tera, i64 %i.b, !dbg !23454
  %switch.load = load i8, ptr %switch.gep, align 1, !dbg !23454
  %switch.ext = zext i8 %switch.load to i64, !dbg !23454
  %i.c = zext nneg i8 %.val to i64, !dbg !23454
  %switch.gep2 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtNtB8_2io5error9ErrorKindNtB6_5Debug3fmtCs5yXxDE1DkoT_4tera.199, i64 %i.c, !dbg !23454
  %switch.load3 = load ptr, ptr %switch.gep2, align 8, !dbg !23454
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load3, i64 noundef %switch.ext), !dbg !23454
  ret i1 %i.d, !dbg !23455
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_7Display3fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !1084 {
bb.a:
    #dbg_value(ptr %0, !5745, !DIExpression(), !23458)
    #dbg_value(ptr %1, !5746, !DIExpression(), !23458)
  %i.a = load ptr, ptr %0, align 8, !dbg !23459, !nonnull !1418, !align !3438, !noundef !1418 ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 8, !dbg !23460
  %.val = load ptr, ptr %i.b, align 8, !dbg !23460, !nonnull !1418, !noundef !1418
  %i.c = getelementptr i8, ptr %i.a, i64 16, !dbg !23460
  %.val2 = load i64, ptr %i.c, align 8, !dbg !23460, !noundef !1418
    #dbg_value(ptr poison, !5748, !DIExpression(), !23457)
    #dbg_value(ptr %1, !5750, !DIExpression(), !23457)
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val2, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !23461
  ret i1 %i.d, !dbg !23462
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRRNtNtCsgCecv3eZDcN_5alloc6string6StringNtB6_7Display3fmtCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 !dbg !23463 {
bb.a:
    #dbg_value(ptr %0, !23474, !DIExpression(), !23477)
    #dbg_value(ptr %1, !23475, !DIExpression(), !23477)
  %i.a = load ptr, ptr %0, align 8, !dbg !23480, !nonnull !1418, !align !3438, !noundef !1418
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23478), !dbg !23481
    #dbg_value(ptr %i.a, !5745, !DIExpression(), !23467)
    #dbg_value(ptr %1, !5746, !DIExpression(), !23467)
  %i.b = load ptr, ptr %i.a, align 8, !dbg !23482, !alias.scope !23478, !nonnull !1418, !align !3438, !noundef !1418 ; 2 uses
  %i.c = getelementptr i8, ptr %i.b, i64 8, !dbg !23483
  %.val.i = load ptr, ptr %i.c, align 8, !dbg !23483, !noalias !23479, !nonnull !1418, !noundef !1418
  %i.d = getelementptr i8, ptr %i.b, i64 16, !dbg !23483
  %.val2.i = load i64, ptr %i.d, align 8, !dbg !23483, !noalias !23479, !noundef !1418
    #dbg_value(ptr poison, !5748, !DIExpression(), !23470)
    #dbg_value(ptr %1, !5750, !DIExpression(), !23470)
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val.i, i64 noundef %.val2.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !dbg !23484, !noalias !23478
  ret i1 %i.e, !dbg !23485
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1m_NtCsgCecv3eZDcN_5alloc6stringNtB6_13FromUtf8ErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 !dbg !23486 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
    #dbg_value(ptr %0, !23490, !DIExpression(), !23493)
    #dbg_value(ptr %1, !23491, !DIExpression(), !23493)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23494
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23494
  store ptr %i.b, ptr %i.a, align 8, !dbg !23494
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @46, i64 noundef 13, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 5, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @44, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 5, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @45), !dbg !23495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23496
  ret i1 %i.c, !dbg !23497
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define hidden void @_RNvXs3_NtNtNtCsf3Ta7LF998c_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs5yXxDE1DkoT_4tera(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !23500 {
bb.a:
    #dbg_value(ptr %1, !23549, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23553)
    #dbg_value(ptr %2, !23549, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23553)
    #dbg_value(ptr %3, !23550, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23553)
    #dbg_value(ptr %4, !23550, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23553)
    #dbg_value(ptr poison, !23554, !DIExpression(), !23503)
    #dbg_value(ptr poison, !23560, !DIExpression(), !23509)
    #dbg_value(i64 1, !23567, !DIExpression(), !23517)
    #dbg_value(ptr %2, !23565, !DIExpression(), !23518)
    #dbg_value(ptr %2, !23574, !DIExpression(), !23519)
    #dbg_value(ptr %1, !23575, !DIExpression(), !23519)
    #dbg_value(ptr %2, !23571, !DIExpression(), !23520)
    #dbg_value(ptr %1, !23572, !DIExpression(), !23520)
    #dbg_value(ptr %1, !23569, !DIExpression(), !23521)
    #dbg_value(ptr %2, !23568, !DIExpression(), !23521)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2), "nonnull"(ptr %4) ]
  %i.a = ptrtoint ptr %2 to i64, !dbg !23589
  %i.b = ptrtoint ptr %1 to i64, !dbg !23589
  %i.c = sub nuw i64 %i.a, %i.b, !dbg !23589
    #dbg_value(i64 %i.c, !23577, !DIExpression(), !23581)
    #dbg_value(i64 %i.c, !23582, !DIExpression(), !23587)
    #dbg_value(ptr poison, !23554, !DIExpression(), !23525)
    #dbg_value(ptr poison, !23560, !DIExpression(), !23527)
    #dbg_value(i64 1, !23567, !DIExpression(), !23531)
    #dbg_value(ptr %4, !23565, !DIExpression(), !23532)
    #dbg_value(ptr %4, !23574, !DIExpression(), !23533)
    #dbg_value(ptr %3, !23575, !DIExpression(), !23533)
    #dbg_value(ptr %4, !23571, !DIExpression(), !23534)
    #dbg_value(ptr %3, !23572, !DIExpression(), !23534)
    #dbg_value(ptr %3, !23569, !DIExpression(), !23535)
    #dbg_value(ptr %4, !23568, !DIExpression(), !23535)
  %i.d = ptrtoint ptr %4 to i64, !dbg !23590
  %i.e = ptrtoint ptr %3 to i64, !dbg !23590
  %i.f = sub nuw i64 %i.d, %i.e, !dbg !23590
    #dbg_value(i64 %i.f, !23578, !DIExpression(), !23581)
    #dbg_value(i64 %i.f, !23584, !DIExpression(), !23587)
  %i.g = tail call i64 @llvm.umin.i64(i64 %i.c, i64 %i.f), !dbg !23591
    #dbg_value(i64 %i.g, !23551, !DIExpression(), !23588)
  store ptr %1, ptr %0, align 8, !dbg !23592
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23592
  store ptr %2, ptr %i.h, align 8, !dbg !23592
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23592
  store ptr %3, ptr %i.i, align 8, !dbg !23592
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23592
  store ptr %4, ptr %i.j, align 8, !dbg !23592
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !23592
  store i64 0, ptr %i.k, align 8, !dbg !23592
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !23592
  store i64 %i.g, ptr %i.l, align 8, !dbg !23592
  ret void, !dbg !23593
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtCs5yXxDE1DkoT_4tera4argsNtNtNtB7_5value6number6NumberNtB5_12ArgFromValue10from_value(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 16 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !23601 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
    #dbg_value(ptr %1, !23635, !DIExpression(), !23642)
    #dbg_value(ptr %1, !23643, !DIExpression(), !23646)
    #dbg_value(ptr %1, !23647, !DIExpression(), !23650)
  store ptr %1, ptr %i.c, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23651), !dbg !23660
    #dbg_value(ptr %1, !5601, !DIExpression(), !23607)
  %i.d = load i8, ptr %1, align 8, !dbg !23661, !range !2967, !alias.scope !23651, !noundef !1418 ; 3 uses
  %i.e = icmp ne i8 %i.d, 10, !dbg !23661
  tail call void @llvm.assume(i1 %i.e), !dbg !23661
  %i.f = add nsw i8 %i.d, -2, !dbg !23661
  %i.g = icmp samesign ugt i8 %i.d, 1, !dbg !23661
  %narrow.i = select i1 %i.g, i8 %i.f, i8 8, !dbg !23661 ; 4 uses
  switch i8 %narrow.i, label %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit [
    i8 3, label %bb.b
    i8 4, label %bb.c
    i8 5, label %bb.d
    i8 6, label %bb.e
    i8 7, label %bb.f
  ], !dbg !23662

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5614, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23608)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23663
  %i.i = load i64, ptr %i.h, align 8, !dbg !23663, !alias.scope !23651, !noundef !1418
  %i.j = zext i64 %i.i to i128, !dbg !23663
  br label %bb.g, !dbg !23664

bb.c:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5615, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23609)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23665
  %i.l = load i64, ptr %i.k, align 8, !dbg !23665, !alias.scope !23651, !noundef !1418
  %i.m = sext i64 %i.l to i128, !dbg !23665
  br label %bb.g, !dbg !23666

bb.d:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5616, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23610)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23667
  %i.o = load double, ptr %i.n, align 8, !dbg !23667, !alias.scope !23651, !noundef !1418
  br label %bb.g, !dbg !23668

bb.e:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5617, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23611)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23669
  %i.q = load ptr, ptr %i.p, align 8, !dbg !23669, !alias.scope !23651, !nonnull !1418, !noundef !1418
  %i.r = load i128, ptr %i.q, align 16, !dbg !23669, !noalias !23652, !noundef !1418 ; 2 uses
    #dbg_value(i128 %i.r, !5641, !DIExpression(), !23614)
  %i.s = icmp slt i128 %i.r, 0, !dbg !23670
  br i1 %i.s, label %.split, label %bb.g, !dbg !23670

bb.f:                                             ; preds = %bb.a
    #dbg_value(ptr %1, !5618, !DIExpression(DW_OP_plus_uconst, 8, DW_OP_stack_value), !23615)
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !23671
  %i.u = load ptr, ptr %i.t, align 8, !dbg !23671, !alias.scope !23651, !nonnull !1418, !noundef !1418
  %i.v = load i128, ptr %i.u, align 16, !dbg !23671, !noalias !23652, !noundef !1418
  br label %bb.g, !dbg !23672

bb.g:                                             ; preds = %bb.f, %bb.b, %bb.c, %bb.d, %bb.e
  %.sroa.13.0.ph = phi i128 [ %i.r, %bb.e ], [ undef, %bb.d ], [ %i.m, %bb.c ], [ %i.j, %bb.b ], [ %i.v, %bb.f ]
  %.sroa.12.0.ph = phi double [ undef, %bb.e ], [ %i.o, %bb.d ], [ undef, %bb.c ], [ undef, %bb.b ], [ undef, %bb.f ]
  %.sroa.0.019.ph = phi i64 [ 0, %bb.e ], [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.f ]
    #dbg_value(i64 %.sroa.0.019.ph, !23636, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23653)
    #dbg_value(double %.sroa.12.0.ph, !23636, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23653)
    #dbg_value(i128 %.sroa.13.0.ph, !23636, !DIExpression(DW_OP_LLVM_fragment, 128, 128), !23653)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !23673
  store i64 %.sroa.0.019.ph, ptr %i.w, align 16, !dbg !23673
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !23673
  store double %.sroa.12.0.ph, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !23673
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !23673
  store i128 %.sroa.13.0.ph, ptr %.sroa.5.0..sroa_idx, align 16, !dbg !23673
  br label %bb.h, !dbg !23674

_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit: ; preds = %bb.a
    #dbg_value(ptr %1, !23647, !DIExpression(), !23650)
    #dbg_value(ptr %1, !23643, !DIExpression(), !23646)
    #dbg_value(ptr %1, !23635, !DIExpression(), !23642)
  %narrow.off = add nsw i8 %narrow.i, -3, !dbg !23675
  %switch = icmp ult i8 %narrow.off, 5, !dbg !23675
  br i1 %switch, label %.split, label %switch.lookup, !dbg !23675

bb.h:                                             ; preds = %.split, %switch.lookup, %bb.g
  %.sink = phi i64 [ 1, %.split ], [ 1, %switch.lookup ], [ 0, %bb.g ]
  store i64 %.sink, ptr %0, align 16, !dbg !23642
  ret void, !dbg !23676

.split:                                           ; preds = %bb.e, %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit
    #dbg_value(ptr %i.c, !23638, !DIExpression(), !23654)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !23677
  store ptr %i.c, ptr %i.a, align 8, !dbg !23677
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !23677
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRNtNtCs5yXxDE1DkoT_4tera5value5ValueNtB6_7Display3fmtBA_, ptr %.sroa.43.0..sroa_idx, align 8, !dbg !23677
    #dbg_value(ptr @48, !23655, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23659)
    #dbg_value(ptr %i.a, !23655, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23659)
    #dbg_value(ptr null, !4712, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23618)
    #dbg_value(i64 undef, !4712, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23618)
    #dbg_value(ptr poison, !4728, !DIExpression(), !23618)
    #dbg_declare(ptr poison, !4729, !DIExpression(), !23619)
    #dbg_value(ptr poison, !4732, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !23621)
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @48, ptr noundef nonnull %i.a), !dbg !23678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !23679
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23680
  call void @_RINvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB6_5Error7messageNtNtCsgCecv3eZDcN_5alloc6string6StringEB8_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.x, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !23681
  br label %bb.h, !dbg !23682

switch.lookup:                                    ; preds = %_RNvMs7_NtCs5yXxDE1DkoT_4tera5valueNtB5_5Value9as_number.exit
    #dbg_value(ptr %1, !23647, !DIExpression(), !23650)
    #dbg_value(ptr %1, !23643, !DIExpression(), !23646)
    #dbg_value(ptr %1, !23635, !DIExpression(), !23642)
  %i.y = zext nneg i8 %narrow.i to i64, !dbg !23683
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs5_NtCs5yXxDE1DkoT_4tera4argsNtNtNtB7_5value6number6NumberNtB5_12ArgFromValue10from_value, i64 %i.y, !dbg !23683
  %switch.load = load i8, ptr %switch.gep, align 1, !dbg !23683
  %switch.ext = zext i8 %switch.load to i64, !dbg !23683
  %i.z = zext nneg i8 %narrow.i to i64, !dbg !23683
  %switch.gep33 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs5_NtCs5yXxDE1DkoT_4tera4argsNtNtNtB7_5value6number6NumberNtB5_12ArgFromValue10from_value.200, i64 %i.z, !dbg !23683
  %switch.load34 = load ptr, ptr %switch.gep33, align 8, !dbg !23683
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !23684
  tail call void @_RINvMs1_NtCs5yXxDE1DkoT_4tera6errorsNtB6_5Error16invalid_arg_typeReB11_EB8_(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.aa, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load34, i64 noundef %switch.ext), !dbg !23685
  br label %bb.h, !dbg !23682
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal { i64, ptr } @_RNvXs7_NtNtCsgCecv3eZDcN_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCsf3Ta7LF998c_4core2io5write5Write14write_vectoredCs5yXxDE1DkoT_4tera(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #6 personality ptr @rust_eh_personality !dbg !1103 {
bb.a:
    #dbg_value(ptr poison, !5806, !DIExpression(), !23725)
    #dbg_value(ptr %0, !5785, !DIExpression(), !23726)
    #dbg_value(ptr %0, !5821, !DIExpression(), !23728)
    #dbg_value(ptr %0, !5826, !DIExpression(), !23730)
    #dbg_value(ptr %0, !5833, !DIExpression(), !23732)
    #dbg_value(ptr %1, !5786, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23726)
    #dbg_value(ptr %1, !5841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23734)
    #dbg_value(ptr %1, !5845, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23736)
    #dbg_value(ptr %1, !5841, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23739)
    #dbg_value(ptr %1, !5845, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23741)
    #dbg_value(i64 %2, !5786, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23726)
    #dbg_value(i64 %2, !5841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23734)
    #dbg_value(i64 %2, !5845, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23736)
    #dbg_value(i64 %2, !5841, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23739)
    #dbg_value(i64 %2, !5845, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23741)
    #dbg_value(i64 0, !5858, !DIExpression(), !23745)
    #dbg_declare(ptr poison, !5873, !DIExpression(), !23746)
    #dbg_value(i64 1, !5891, !DIExpression(), !23748)
    #dbg_value(i64 %2, !5847, !DIExpression(), !23749)
    #dbg_value(i64 %2, !5897, !DIExpression(), !23751)
    #dbg_value(i64 %2, !5897, !DIExpression(), !23753)
    #dbg_value(ptr %1, !5848, !DIExpression(), !23754)
    #dbg_value(ptr %1, !5901, !DIExpression(), !23751)
  %.idx = shl nuw nsw i64 %2, 4, !dbg !23771
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx, !dbg !23771
    #dbg_value(ptr %1, !5881, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23755)
    #dbg_value(ptr %1, !5887, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23756)
    #dbg_value(ptr %1, !5872, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23745)
    #dbg_value(ptr %i.a, !5881, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23755)
    #dbg_value(ptr %i.a, !5887, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23756)
    #dbg_value(ptr %i.a, !5872, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23745)
    #dbg_value(ptr %1, !5904, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !23687)
    #dbg_value(ptr %i.a, !5904, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !23687)
    #dbg_value(i64 0, !5910, !DIExpression(), !23687)
    #dbg_declare(ptr poison, !5911, !DIExpression(), !23688)
    #dbg_value(i64 1, !5922, !DIExpression(), !23690)
    #dbg_value(ptr %i.a, !5913, !DIExpression(), !23691)
    #dbg_value(ptr poison, !5926, !DIExpression(), !23693)
    #dbg_value(ptr poison, !5929, !DIExpression(), !23694)
  %i.b = icmp eq i64 %2, 0, !dbg !23772
  br i1 %i.b, label %_RINvXs2J_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_4IterNtNtNtBb_2io8io_slice7IoSliceENtNtNtNtBb_4iter6traits8iterator8Iterator4foldjNCINvNtNtB1q_8adapters3map8map_foldRBQ_jjNCNvXs7_NtNtCsgCecv3eZDcN_5alloc2io5implsINtNtB2W_3vec3VechENtNtBU_5write5Write14write_vectored0NCINvXsK_NtB1o_5accumjNtB4r_3Sum3sumINtB2a_3MapBF_B2K_EE0E0ECs5yXxDE1DkoT_4tera.exit.thread, label %.preheader.preheader, !dbg !23773

.preheader.preheader:                             ; preds = %bb.a
  %min.iters.check = icmp samesign ult i64 %2, 5, !dbg !23774
  br i1 %min.iters.check, label %.preheader.preheader46, label %vector.ph, !dbg !23774

end_hunk_2
