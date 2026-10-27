Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex-9ce8876e423090b4.regex.6a0fe4e1bbca0ee6-cgu.1?download=true
inline.NumInlined: 444
inline.NumDeleted: 225
begin_hunk_0_@_RNvMs_NtCs96z5GJ9HwjO_5regex8buildersNtB4_7Builder17build_many_string:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !10554
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !10570
  store i64 %i.bz, ptr %i.b, align 8, !dbg !10570
  %.sroa.53.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !10570
  store ptr %i.cb, ptr %.sroa.53.0..sroa_idx4, align 8, !dbg !10570
  %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !10570
  store ptr %i.cd, ptr %.sroa.53.sroa.6.0..sroa.53.0..sroa_idx4.sroa_idx, align 8, !dbg !10570
  %.sroa.53.sroa.7.0..sroa.53.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !10570
  store ptr %.sroa.659.0.copyload, ptr %.sroa.53.sroa.7.0..sroa.53.0..sroa_idx4.sroa_idx, align 8, !dbg !10570
  %.sroa.53.sroa.8.0..sroa.53.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !10570
  store i64 %.sroa.760.0.copyload, ptr %.sroa.53.sroa.8.0..sroa.53.0..sroa_idx4.sroa_idx, align 8, !dbg !10570
  %.sroa.75.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.b, i64 40, !dbg !10570
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.75.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.75, i64 96, i1 false), !dbg !10570
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10494
  invoke void @_RNvMNtCs96z5GJ9HwjO_5regex5errorNtB2_5Error21from_meta_build_error(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(136) %i.b)
          to label %bb.r unwind label %bb.g, !dbg !10571

bb.r:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNCNvMs_NtCs96z5GJ9HwjO_5regex8buildersNtBI_7Builder17build_many_string0EBK_.exit
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10572
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !10572
  store ptr null, ptr %0, align 8, !dbg !10572
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10574
  br label %bb.n, !dbg !10574

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtBG_6string6StringEECs96z5GJ9HwjO_5regex.exit: ; preds = %bb.s, %bb.t, %bb.g
  %lpad.phi118 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.g ], [ %lpad.thr_comm, %bb.t ], [ %lpad.thr_comm, %bb.s ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta5regex7BuilderECs96z5GJ9HwjO_5regex(ptr noalias nofree noundef align 8 dereferenceable(160) %i.e) #19
          to label %bb.v unwind label %bb.u, !dbg !10536

bb.s:                                             ; preds = %bb.i, %bb.h, %bb.f
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr %i.g, !4061, !DIExpression(), !10330)
    #dbg_value(ptr %i.g, !4067, !DIExpression(), !10332)
    #dbg_value(i64 1, !4069, !DIExpression(), !10334)
    #dbg_value(i8 1, !4071, !DIExpression(), !10334)
    #dbg_value(i64 1, !4073, !DIExpression(), !10336)
    #dbg_value(i8 1, !4075, !DIExpression(), !10336)
    #dbg_value(ptr %i.bq, !4070, !DIExpression(), !10337)
    #dbg_value(ptr %i.bq, !4074, !DIExpression(), !10336)
  %i.co = atomicrmw add ptr %i.bq, i64 -1 release, align 8, !dbg !10575, !noalias !10495
  %i.cp = icmp eq i64 %i.co, 1, !dbg !10576
  br i1 %i.cp, label %bb.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtBG_6string6StringEECs96z5GJ9HwjO_5regex.exit, !dbg !10576

bb.t:                                             ; preds = %bb.s
    #dbg_value(i8 2, !2073, !DIExpression(), !10343)
  fence acquire, !dbg !10577
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcSNtNtB7_6string6StringE9drop_slowCs96z5GJ9HwjO_5regex(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.g) #24
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtBG_6string6StringEECs96z5GJ9HwjO_5regex.exit unwind label %bb.u, !dbg !10578

bb.u:                                             ; preds = %bb.t, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtBG_6string6StringEECs96z5GJ9HwjO_5regex.exit, %bb.e
  %i.cq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !dbg !10579
  unreachable, !dbg !10579

bb.v:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtBG_6string6StringEECs96z5GJ9HwjO_5regex.exit, %bb.e
  %.pn = phi { ptr, i32 } [ %lpad.phi118, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcSNtNtBG_6string6StringEECs96z5GJ9HwjO_5regex.exit ], [ %i.bp, %bb.e ]
  resume { ptr, i32 } %.pn, !dbg !10579
}

; Function Attrs: noinline nonlazybind uwtable
define void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcSNtNtB7_6string6StringE9drop_slowCs96z5GJ9HwjO_5regex(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality !dbg !10581 {
bb.a:
    #dbg_value(ptr %0, !10629, !DIExpression(), !10632)
  %i.a = load ptr, ptr %0, align 8, !dbg !10639, !nonnull !1068, !noundef !1068 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !10639
  %i.c = load i64, ptr %i.b, align 8, !dbg !10639, !noundef !1068 ; 6 uses
    #dbg_value(ptr %i.a, !10630, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10633)
    #dbg_value(i64 %i.c, !10630, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10633)
    #dbg_value(ptr %0, !10630, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value, DW_OP_LLVM_fragment, 128, 64), !10633)
    #dbg_value(ptr %i.a, !10635, !DIExpression(DW_OP_plus_uconst, 16, DW_OP_stack_value), !10638)
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10640 ; 2 uses
    #dbg_value(ptr %i.d, !3102, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10584)
    #dbg_value(i64 %i.c, !3102, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10584)
  %i.e = icmp eq i64 %i.c, 0, !dbg !10641
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECs96z5GJ9HwjO_5regex.exit, label %.lr.ph, !dbg !10641

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs96z5GJ9HwjO_5regex.exit.i: ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.c, !dbg !10641
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECs96z5GJ9HwjO_5regex.exit, label %.lr.ph, !dbg !10641

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs96z5GJ9HwjO_5regex.exit.i
  %.sroa.0.0.i8 = phi i64 [ %i.h, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs96z5GJ9HwjO_5regex.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.0.i8, !dbg !10641
  %i.h = add nuw nsw i64 %.sroa.0.0.i8, 1, !dbg !10641 ; 4 uses
    #dbg_value(ptr %i.g, !2235, !DIExpression(), !10586)
    #dbg_value(ptr %i.g, !2240, !DIExpression(), !10588)
    #dbg_value(ptr %i.g, !2247, !DIExpression(), !10590)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs96z5GJ9HwjO_5regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs96z5GJ9HwjO_5regex.exit.i unwind label %bb.b, !dbg !10642

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs96z5GJ9HwjO_5regex.exit8.i: ; preds = %.lr.ph10
  %i.i = add i64 %.sroa.0.1.i9, 1, !dbg !10641    ; 2 uses
  %i.j = icmp eq i64 %i.i, %i.c, !dbg !10641
  br i1 %i.j, label %.body, label %.lr.ph10, !dbg !10641

bb.b:                                             ; preds = %.lr.ph
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = icmp eq i64 %i.h, %i.c, !dbg !10641
  br i1 %i.l, label %.body, label %.lr.ph10, !dbg !10641

.lr.ph10:                                         ; preds = %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs96z5GJ9HwjO_5regex.exit8.i
  %.sroa.0.1.i9 = phi i64 [ %i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs96z5GJ9HwjO_5regex.exit8.i ], [ %i.h, %bb.b ] ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %.sroa.0.1.i9, !dbg !10641
    #dbg_value(ptr %i.m, !2235, !DIExpression(), !10592)
    #dbg_value(ptr %i.m, !2240, !DIExpression(), !10594)
    #dbg_value(ptr %i.m, !2247, !DIExpression(), !10596)
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVechENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs96z5GJ9HwjO_5regex(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs96z5GJ9HwjO_5regex.exit8.i unwind label %bb.c, !dbg !10643

bb.c:                                             ; preds = %.lr.ph10
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #21, !dbg !10641
  unreachable, !dbg !10641

.body:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs96z5GJ9HwjO_5regex.exit8.i, %bb.b
  tail call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakSNtNtBG_6string6StringRNtNtBG_5alloc6GlobalEECs96z5GJ9HwjO_5regex(ptr nonnull %i.a, i64 %i.c) #19, !dbg !10644
  resume { ptr, i32 } %i.k, !dbg !10645

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECs96z5GJ9HwjO_5regex.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs4wP2HXfJTCR_5alloc6string6StringECs96z5GJ9HwjO_5regex.exit.i, %bb.a
    #dbg_value(ptr poison, !2085, !DIExpression(), !10598)
    #dbg_value(ptr poison, !2089, !DIExpression(), !10600)
    #dbg_value(ptr poison, !2097, !DIExpression(), !10602)
    #dbg_value(i64 1, !2113, !DIExpression(), !10604)
    #dbg_value(i8 1, !2115, !DIExpression(), !10604)
    #dbg_value(i64 1, !2117, !DIExpression(), !10606)
    #dbg_value(i8 1, !2119, !DIExpression(), !10606)
    #dbg_value(ptr %i.a, !2111, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10607)
    #dbg_value(i64 poison, !2111, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10607)
    #dbg_value(ptr %i.a, !2122, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10609)
    #dbg_value(i64 poison, !2122, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10609)
  %i.o = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr), !dbg !10646
  br i1 %i.o, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakSNtNtBG_6string6StringRNtNtBG_5alloc6GlobalEECs96z5GJ9HwjO_5regex.exit, label %bb.d, !dbg !10647

bb.d:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECs96z5GJ9HwjO_5regex.exit
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10648
    #dbg_value(ptr %i.p, !2091, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10610)
    #dbg_value(ptr %i.p, !2092, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10611)
    #dbg_value(ptr %i.p, !2114, !DIExpression(), !10604)
    #dbg_value(ptr %i.a, !2091, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10610)
    #dbg_value(ptr %i.a, !2092, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10611)
    #dbg_value(ptr %i.p, !2118, !DIExpression(), !10606)
  %i.q = atomicrmw add ptr %i.p, i64 -1 release, align 8, !dbg !10649
  %i.r = icmp eq i64 %i.q, 1, !dbg !10650
  br i1 %i.r, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakSNtNtBG_6string6StringRNtNtBG_5alloc6GlobalEECs96z5GJ9HwjO_5regex.exit, !dbg !10650

bb.e:                                             ; preds = %bb.d
    #dbg_value(i8 2, !2073, !DIExpression(), !10613)
  fence acquire, !dbg !10651
    #dbg_value(ptr %i.a, !2127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10615)
    #dbg_value(ptr %i.a, !2131, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10617)
    #dbg_value(i64 %i.c, !2127, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10615)
    #dbg_value(i64 %i.c, !2131, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10617)
  %i.s = mul nuw nsw i64 %i.c, 24, !dbg !10652
  %i.t = add nuw i64 %i.s, 16, !dbg !10652
    #dbg_value(ptr poison, !2135, !DIExpression(), !10619)
    #dbg_value(ptr %i.a, !2139, !DIExpression(), !10619)
    #dbg_value(i64 8, !2140, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10619)
    #dbg_value(i64 %i.t, !2140, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10619)
    #dbg_value(ptr poison, !2142, !DIExpression(), !10621)
    #dbg_value(ptr poison, !2148, !DIExpression(), !10623)
    #dbg_value(ptr %i.a, !2145, !DIExpression(), !10621)
    #dbg_value(ptr %i.a, !2151, !DIExpression(), !10623)
    #dbg_value(ptr %i.a, !2154, !DIExpression(), !10625)
    #dbg_value(ptr %i.a, !2160, !DIExpression(), !10627)
    #dbg_value(i64 8, !2146, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10621)
    #dbg_value(i64 8, !2152, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10623)
    #dbg_value(i64 8, !2158, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10625)
    #dbg_value(i64 8, !2161, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10627)
    #dbg_value(i64 %i.t, !2146, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10621)
    #dbg_value(i64 %i.t, !2152, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10623)
    #dbg_value(i64 %i.t, !2158, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10625)
    #dbg_value(i64 %i.t, !2161, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10627)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef range(i64 16, -9223372036854775785) %i.t, i64 noundef 8) #23, !dbg !10653
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakSNtNtBG_6string6StringRNtNtBG_5alloc6GlobalEECs96z5GJ9HwjO_5regex.exit, !dbg !10654

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync4WeakSNtNtBG_6string6StringRNtNtBG_5alloc6GlobalEECs96z5GJ9HwjO_5regex.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSNtNtCs4wP2HXfJTCR_5alloc6string6StringECs96z5GJ9HwjO_5regex.exit, %bb.d, %bb.e
  ret void, !dbg !10655
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec14spec_from_iterINtB4_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEINtB2_12SpecFromIterBU_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB26_5slice4iter4IterBV_ENCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB3p_7Builder19build_many_from_hirBV_E0EE9from_iterCs96z5GJ9HwjO_5regex(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !10659 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
    #dbg_value(ptr %1, !10831, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10835)
    #dbg_value(ptr %2, !10831, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10835)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10836), !dbg !11022
    #dbg_value(ptr poison, !10837, !DIExpression(), !10678)
    #dbg_value(ptr poison, !10860, !DIExpression(), !10679)
    #dbg_value(ptr %1, !10867, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10680)
    #dbg_value(ptr %2, !10867, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10680)
    #dbg_declare(ptr poison, !10871, !DIExpression(), !10685)
    #dbg_declare(ptr poison, !10882, !DIExpression(), !10688)
    #dbg_value(ptr poison, !10889, !DIExpression(), !10691)
    #dbg_value(ptr poison, !10897, !DIExpression(), !10697)
    #dbg_value(i64 48, !10905, !DIExpression(), !10705)
    #dbg_value(ptr %2, !10903, !DIExpression(), !10706)
    #dbg_value(ptr %2, !10919, !DIExpression(), !10707)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
    #dbg_value(ptr %1, !10920, !DIExpression(), !10707)
    #dbg_value(ptr %2, !10913, !DIExpression(), !10708)
    #dbg_value(ptr %1, !10914, !DIExpression(), !10708)
    #dbg_value(ptr %1, !10909, !DIExpression(), !10709)
    #dbg_value(ptr %2, !10908, !DIExpression(), !10709)
  %i.b = ptrtoint ptr %2 to i64, !dbg !11023
  %i.c = ptrtoint ptr %1 to i64, !dbg !11023
  %i.d = sub nuw i64 %i.b, %i.c, !dbg !11023      ; 2 uses
  %i.e = udiv exact i64 %i.d, 48, !dbg !11023     ; 6 uses
    #dbg_value(i64 %i.e, !10869, !DIExpression(), !10710)
    #dbg_value(i64 %i.e, !10880, !DIExpression(), !10711)
    #dbg_value(i64 %i.e, !10875, !DIExpression(), !10712)
    #dbg_value(i64 %i.e, !10886, !DIExpression(), !10713)
    #dbg_value(i64 %i.e, !10922, !DIExpression(), !10718)
    #dbg_value(i64 %i.e, !10928, !DIExpression(), !10721)
    #dbg_declare(ptr poison, !10923, !DIExpression(), !10722)
    #dbg_value(i64 8, !10924, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10718)
    #dbg_value(i64 8, !10931, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10721)
    #dbg_value(i64 8, !10924, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10718)
    #dbg_value(i64 8, !10931, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10721)
    #dbg_value(i64 0, !10930, !DIExpression(), !10721)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11024, !noalias !10836
  call void @_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs96z5GJ9HwjO_5regex(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.e, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8), !dbg !11024, !noalias !10836
  %i.f = load i64, ptr %i.a, align 8, !dbg !11024, !range !1468, !noalias !10836, !noundef !1068
  %i.g = trunc nuw i64 %i.f to i1, !dbg !11025
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !11026
  %i.i = load i64, ptr %i.h, align 8, !dbg !11026, !range !1469, !noalias !10836, !noundef !1068 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !11026 ; 2 uses
  br i1 %i.g, label %bb.b, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE7reserveCs96z5GJ9HwjO_5regex.exit.i.i.i, !dbg !11025, !prof !1470

bb.b:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.j, align 8, !dbg !11027, !noalias !10836
    #dbg_value(i64 %i.i, !10926, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10723)
    #dbg_value(i64 %i.k, !10926, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10723)
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #20, !dbg !11028, !noalias !10836
  unreachable, !dbg !11028

_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE7reserveCs96z5GJ9HwjO_5regex.exit.i.i.i: ; preds = %bb.a
  %i.l = load ptr, ptr %i.j, align 8, !dbg !11029, !noalias !10836, !nonnull !1068, !noundef !1068 ; 3 uses
    #dbg_value(i64 %i.i, !10925, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10724)
    #dbg_value(ptr %i.l, !10925, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10724)
    #dbg_value(ptr poison, !10929, !DIExpression(), !10725)
  %i.m = icmp ule i64 %i.e, %i.i, !dbg !11030
    #dbg_value(i1 true, !10933, !DIExpression(DW_OP_not, DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10728)
  tail call void @llvm.assume(i1 %i.m), !dbg !11031
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11032, !noalias !10836
    #dbg_value(i64 %i.i, !10868, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10729)
    #dbg_value(ptr %i.l, !10868, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10729)
    #dbg_value(i64 0, !10868, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10729)
    #dbg_value(ptr undef, !10860, !DIExpression(), !10679)
    #dbg_value(ptr %1, !10861, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10679)
    #dbg_value(ptr %2, !10861, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10679)
    #dbg_value(ptr %1, !10843, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10678)
    #dbg_value(ptr %2, !10843, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10678)
    #dbg_value(ptr undef, !10837, !DIExpression(), !10678)
    #dbg_value(ptr poison, !10889, !DIExpression(), !10731)
    #dbg_value(ptr poison, !10897, !DIExpression(), !10733)
    #dbg_value(i64 48, !10905, !DIExpression(), !10737)
    #dbg_value(ptr %2, !10903, !DIExpression(), !10738)
    #dbg_value(ptr %2, !10919, !DIExpression(), !10739)
    #dbg_value(ptr %1, !10920, !DIExpression(), !10739)
    #dbg_value(ptr %2, !10913, !DIExpression(), !10740)
    #dbg_value(ptr %1, !10914, !DIExpression(), !10740)
    #dbg_value(ptr %1, !10909, !DIExpression(), !10741)
    #dbg_value(ptr %2, !10908, !DIExpression(), !10741)
    #dbg_value(i64 poison, !10844, !DIExpression(), !10742)
    #dbg_value(i64 1, !10845, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10742)
    #dbg_value(i64 %i.e, !10845, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10742)
    #dbg_value(i64 %i.e, !10846, !DIExpression(), !10743)
    #dbg_value(ptr %i.l, !10857, !DIExpression(), !10744)
    #dbg_value(ptr undef, !10858, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10745)
    #dbg_value(i64 0, !10858, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10745)
    #dbg_value(ptr %i.l, !10935, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10749)
    #dbg_value(ptr %i.l, !10946, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10753)
    #dbg_value(ptr undef, !10935, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10749)
    #dbg_value(ptr undef, !10946, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10753)
    #dbg_value(i64 0, !10935, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10749)
    #dbg_value(i64 0, !10946, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10753)
    #dbg_value(ptr %1, !10941, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10754)
    #dbg_value(ptr %2, !10941, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10754)
    #dbg_value(ptr %1, !10951, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10755)
    #dbg_value(ptr %2, !10951, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10755)
    #dbg_declare(ptr poison, !10952, !DIExpression(), !10756)
    #dbg_value(ptr undef, !10956, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10767)
    #dbg_value(i64 0, !10956, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10767)
    #dbg_value(ptr %i.l, !10956, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10767)
    #dbg_value(ptr %1, !10962, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10768)
    #dbg_value(ptr %2, !10962, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10768)
    #dbg_declare(ptr poison, !10963, !DIExpression(), !10769)
    #dbg_declare(ptr poison, !10966, !DIExpression(), !10770)
    #dbg_value(ptr %2, !10965, !DIExpression(), !10771)
    #dbg_value(ptr poison, !10975, !DIExpression(), !10774)
    #dbg_value(ptr poison, !10979, !DIExpression(), !10775)
  %i.n = icmp eq ptr %1, %2, !dbg !11033
  br i1 %i.n, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2m_5slice4iter4IterB14_ENCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB3G_7Builder19build_many_from_hirB14_E0EE9from_iterCs96z5GJ9HwjO_5regex.exit, label %.preheader.i.i.i.preheader, !dbg !11034

.preheader.i.i.i.preheader:                       ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE7reserveCs96z5GJ9HwjO_5regex.exit.i.i.i
  %min.iters.check = icmp ult i64 %i.d, 192, !dbg !11035
  br i1 %min.iters.check, label %.preheader.i.i.i.preheader2, label %vector.ph, !dbg !11035

vector.ph:                                        ; preds = %.preheader.i.i.i.preheader
  %n.vec = and i64 %i.e, 576460752303423484       ; 3 uses
  br label %vector.body, !dbg !11035

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ], !dbg !11036 ; 2 uses
  %vec.ind = phi <2 x i64> [ <i64 0, i64 1>, %vector.ph ], [ %vec.ind.next, %vector.body ], !dbg !11036 ; 3 uses
  %step.add = add nuw <2 x i64> %vec.ind, splat (i64 2), !dbg !11036
  %wide.gep = getelementptr inbounds nuw [48 x i8], ptr %1, <2 x i64> %vec.ind, !dbg !11036
  %wide.gep1 = getelementptr inbounds nuw [48 x i8], ptr %1, <2 x i64> %step.add, !dbg !11036
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index, !dbg !11037 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16, !dbg !11038
  store <2 x ptr> %wide.gep, ptr %i.o, align 8, !dbg !11038, !noalias !11018
  store <2 x ptr> %wide.gep1, ptr %i.p, align 8, !dbg !11038, !noalias !11018
  %index.next = add nuw i64 %index, 4, !dbg !11036 ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4), !dbg !11036
  %i.q = icmp eq i64 %index.next, %n.vec, !dbg !11035
  br i1 %i.q, label %middle.block, label %vector.body, !dbg !11035, !llvm.loop !10803

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec, !dbg !11035
  br i1 %cmp.n, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2m_5slice4iter4IterB14_ENCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB3G_7Builder19build_many_from_hirB14_E0EE9from_iterCs96z5GJ9HwjO_5regex.exit, label %.preheader.i.i.i.preheader2, !dbg !11035

.preheader.i.i.i.preheader2:                      ; preds = %.preheader.i.i.i.preheader, %middle.block
  %.ph = phi i64 [ 0, %.preheader.i.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader.i.i.i, !dbg !11035

.preheader.i.i.i:                                 ; preds = %.preheader.i.i.i.preheader2, %.preheader.i.i.i
  %i.r = phi i64 [ %i.u, %.preheader.i.i.i ], [ %.ph, %.preheader.i.i.i.preheader2 ], !dbg !11036 ; 3 uses
    #dbg_value(i64 %i.r, !10967, !DIExpression(), !10804)
    #dbg_value(ptr %1, !10984, !DIExpression(), !10805)
    #dbg_value(i64 %i.r, !10985, !DIExpression(), !10805)
  %i.s = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %i.r, !dbg !11036
    #dbg_value(ptr poison, !11010, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !10806)
    #dbg_declare(ptr poison, !11008, !DIExpression(), !10807)
    #dbg_value(ptr %i.s, !11009, !DIExpression(), !10806)
    #dbg_value(ptr poison, !11000, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !10808)
    #dbg_declare(ptr poison, !11001, !DIExpression(), !10809)
    #dbg_value(ptr %i.s, !10999, !DIExpression(), !10808)
    #dbg_value(ptr poison, !10993, !DIExpression(DW_OP_deref, DW_OP_plus_uconst, 16), !10810)
    #dbg_value(ptr poison, !10994, !DIExpression(DW_OP_deref, DW_OP_LLVM_fragment, 0, 64), !10810)
    #dbg_value(ptr %i.s, !10992, !DIExpression(), !10810)
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.r, !dbg !11037
  store ptr %i.s, ptr %i.t, align 8, !dbg !11038, !noalias !11018, !captures !11021
  %i.u = add nuw i64 %i.r, 1, !dbg !11039         ; 2 uses
    #dbg_value(i64 %i.u, !10967, !DIExpression(), !10804)
  %i.v = icmp eq i64 %i.u, %i.e, !dbg !11035
  br i1 %i.v, label %_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2m_5slice4iter4IterB14_ENCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB3G_7Builder19build_many_from_hirB14_E0EE9from_iterCs96z5GJ9HwjO_5regex.exit, label %.preheader.i.i.i, !dbg !11035, !llvm.loop !10813

_RNvXs_NtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters3map3MapINtNtNtB2m_5slice4iter4IterB14_ENCINvMsj_NtNtCs9GYDdpCSJ4S_14regex_automata4meta5regexNtB3G_7Builder19build_many_from_hirB14_E0EE9from_iterCs96z5GJ9HwjO_5regex.exit: ; preds = %.preheader.i.i.i, %middle.block, %_RNvMs_NtCs4wP2HXfJTCR_5alloc3vecINtB4_3VecRNtNtCs3roNzt6HBWW_12regex_syntax3hir3HirE7reserveCs96z5GJ9HwjO_5regex.exit.i.i.i
    #dbg_value(i64 %i.e, !10868, !DIExpression(DW_OP_LLVM_fragment, 128, 64), !10729)
  store i64 %i.i, ptr %0, align 8, !dbg !11040, !alias.scope !10836
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11040
  store ptr %i.l, ptr %.sroa.4.0..sroa_idx.i, align 8, !dbg !11040, !alias.scope !10836
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11040
  store i64 %i.e, ptr %.sroa.5.0..sroa_idx.i, align 8, !dbg !11040, !alias.scope !10836
  ret void, !dbg !11041
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsd_NtNtCsj6eKBz9Db1c_4core5alloc6layoutNtB5_11LayoutErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 !dbg !11042 {
bb.a:
    #dbg_value(ptr poison, !11047, !DIExpression(), !11050)
    #dbg_value(ptr %1, !11048, !DIExpression(), !11050)
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsj6eKBz9Db1c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @8, i64 noundef 11), !dbg !11051
  ret i1 %i.a, !dbg !11052
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta5regex5CacheEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropCs96z5GJ9HwjO_5regex(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 personality ptr @rust_eh_personality !dbg !825 {
bb.a:
    #dbg_value(ptr %0, !4092, !DIExpression(), !11057)
    #dbg_value(ptr %0, !4094, !DIExpression(), !11059)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !11068
  %i.b = load ptr, ptr %i.a, align 8, !dbg !11068, !nonnull !1068, !noundef !1068 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !11069
  %i.d = load i64, ptr %i.c, align 8, !dbg !11069, !noundef !1068 ; 4 uses
    #dbg_value(ptr %i.b, !4114, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11064)
    #dbg_value(ptr %i.b, !4125, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11066)
    #dbg_value(i64 %i.d, !4114, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11064)
    #dbg_value(i64 %i.d, !4125, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11066)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11067), !dbg !11070
    #dbg_value(ptr %i.b, !4127, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !11056)
    #dbg_value(i64 %i.d, !4127, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !11056)
  %i.e = icmp eq i64 %i.d, 0, !dbg !11071
  br i1 %i.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta5regex5CacheEECs96z5GJ9HwjO_5regex.exit, label %.lr.ph, !dbg !11071

bb.b:                                             ; preds = %.lr.ph
  %i.f = icmp eq i64 %i.h, %i.d, !dbg !11071
  br i1 %i.f, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueSINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta5regex5CacheEECs96z5GJ9HwjO_5regex.exit, label %.lr.ph, !dbg !11071

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.0.i4 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %.sroa.0.0.i4, !dbg !11071
  %i.h = add nuw nsw i64 %.sroa.0.0.i4, 1, !dbg !11071 ; 4 uses
  %.val8.i = load ptr, ptr %i.g, align 8, !dbg !11071, !alias.scope !11067, !nonnull !1068, !noundef !1068
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCs9GYDdpCSJ4S_14regex_automata4meta5regex5CacheEECs96z5GJ9HwjO_5regex(ptr nonnull %.val8.i)
          to label %bb.b unwind label %bb.d, !dbg !11071, !noalias !11067

bb.c:                                             ; preds = %.lr.ph6
end_hunk_0
