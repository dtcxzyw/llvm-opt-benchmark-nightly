Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/regex-rs/original/regex_automata-c16a8546804556f4.regex_automata.70e7117356d4e434-cgu.12?download=true
inline.NumInlined: 262
inline.NumDeleted: 147
begin_hunk_0_@_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util8capturesNtB2_8Captures7matches:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !10392
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10393
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !10393
  ret void, !dbg !10394

bb.e:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !10395
  unreachable, !dbg !10395

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs9GYDdpCSJ4S_14regex_automata4util8captures9GroupInfoEBH_.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.g, !dbg !10395
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilterNtB2_9Prefilter11from_choice(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly align 32 captures(none) dead_on_return dereferenceable(544) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10405 {
bb.a:
    #dbg_declare(ptr poison, !10671, !DIExpression(DW_OP_LLVM_fragment, 128, 24), !10415)
  %.sroa.579 = alloca [272 x i8], align 16        ; 4 uses
    #dbg_declare(ptr %.sroa.579, !10702, !DIExpression(DW_OP_LLVM_fragment, 128, 2176), !10425)
    #dbg_value(ptr poison, !10731, !DIExpression(), !10428)
  %i.a = alloca [544 x i8], align 8               ; 7 uses
    #dbg_declare(ptr poison, !10736, !DIExpression(DW_OP_LLVM_fragment, 128, 2048), !10438)
  %i.b = alloca [40 x i8], align 8                ; 6 uses
    #dbg_declare(ptr poison, !10726, !DIExpression(DW_OP_LLVM_fragment, 0, 2048), !10767)
    #dbg_declare(ptr poison, !10664, !DIExpression(DW_OP_LLVM_fragment, 0, 2048), !10768)
  %i.c = alloca [16 x i8], align 8                ; 5 uses
    #dbg_declare(ptr %1, !10658, !DIExpression(), !10769)
    #dbg_value(i64 %2, !10659, !DIExpression(), !10770)
    #dbg_declare(ptr %i.c, !10660, !DIExpression(), !10771)
    #dbg_declare(ptr poison, !10663, !DIExpression(), !10772)
    #dbg_declare(ptr poison, !10697, !DIExpression(), !10773)
    #dbg_declare(ptr %1, !10665, !DIExpression(), !10774)
    #dbg_declare(ptr %1, !10775, !DIExpression(), !10791)
    #dbg_declare(ptr poison, !10666, !DIExpression(), !10792)
    #dbg_declare(ptr poison, !10762, !DIExpression(), !10793)
    #dbg_declare(ptr poison, !10667, !DIExpression(), !10794)
    #dbg_declare(ptr poison, !10795, !DIExpression(), !10817)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !10953
  %i.d = load i64, ptr %1, align 32, !dbg !10954, !range !3556, !noundef !1225 ; 3 uses
  %i.e = icmp ne i64 %i.d, -9223372036854775804, !dbg !10954
  tail call void @llvm.assume(i1 %i.e), !dbg !10954
  %i.f = xor i64 %i.d, -9223372036854775808, !dbg !10954
  %i.g = icmp slt i64 %i.d, 0, !dbg !10954
  %i.h = select i1 %i.g, i64 %i.f, i64 4, !dbg !10954
  switch i64 %i.h, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.e
    i64 2, label %bb.g
    i64 3, label %bb.i
    i64 4, label %bb.m
    i64 5, label %bb.q
    i64 6, label %bb.s
  ], !dbg !10955

bb.b:                                             ; preds = %bb.a
  unreachable, !dbg !10954

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10956
  %i.j = load i8, ptr %i.i, align 8, !dbg !10956, !noundef !1225
    #dbg_value(i8 %i.j, !10661, !DIExpression(), !10818)
    #dbg_value(i8 %i.j, !10819, !DIExpression(), !10843)
    #dbg_value(i64 1, !10844, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10850)
    #dbg_value(i64 1, !10844, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10850)
    #dbg_value(i8 %i.j, !10844, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !10850)
    #dbg_value(i64 8, !4421, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10460)
    #dbg_value(i64 8, !4426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10462)
    #dbg_value(i64 8, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10464)
    #dbg_value(i64 24, !4421, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10460)
    #dbg_value(i64 24, !4426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10462)
    #dbg_value(i64 24, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10464)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4441, !DIExpression(), !10462)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4447, !DIExpression(), !10464)
    #dbg_value(i8 0, !4448, !DIExpression(), !10464)
    #dbg_value(i64 8, !4450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10466)
    #dbg_value(i64 8, !4470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10468)
    #dbg_value(i64 24, !4450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10466)
    #dbg_value(i64 24, !4470, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10468)
    #dbg_value(i1 false, !4454, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10466)
    #dbg_value(i64 24, !4455, !DIExpression(), !10469)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !dbg !10957, !noalias !10852
  %i.k = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 545) 24, i64 noundef range(i64 8, 33) 8) #29, !dbg !10958, !noalias !10852 ; 5 uses
  %i.l = icmp eq ptr %i.k, null, !dbg !10959
  br i1 %i.l, label %bb.d, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit, !dbg !10960, !prof !3261

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #27, !dbg !10961, !noalias !10852
  unreachable, !dbg !10961

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.c
    #dbg_value(ptr %i.k, !10848, !DIExpression(), !10472)
  store i64 1, ptr %i.k, align 8, !dbg !10962
  %.sroa.496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8, !dbg !10962
  store i64 1, ptr %.sroa.496.0..sroa_idx, align 8, !dbg !10962
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16, !dbg !10962
  store i8 %i.j, ptr %.sroa.597.0..sroa_idx, align 8, !dbg !10962
  br label %bb.x, !dbg !10963

bb.e:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10964
  %i.n = load i8, ptr %i.m, align 8, !dbg !10964, !noundef !1225
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 9, !dbg !10964
  %i.p = load i8, ptr %i.o, align 1, !dbg !10964, !noundef !1225
    #dbg_value(i8 %i.n, !10662, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !10853)
    #dbg_value(i8 %i.n, !10854, !DIExpression(DW_OP_LLVM_fragment, 0, 8), !10878)
    #dbg_value(i8 %i.p, !10662, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !10853)
    #dbg_value(i8 %i.p, !10854, !DIExpression(DW_OP_LLVM_fragment, 8, 8), !10878)
    #dbg_value(i64 1, !10880, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10886)
    #dbg_value(i64 1, !10880, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10886)
    #dbg_value(i8 %i.n, !10880, !DIExpression(DW_OP_LLVM_fragment, 128, 8), !10886)
    #dbg_value(i8 %i.p, !10880, !DIExpression(DW_OP_LLVM_fragment, 136, 8), !10886)
    #dbg_value(i64 8, !4421, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10483)
    #dbg_value(i64 8, !4426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10485)
    #dbg_value(i64 8, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10487)
    #dbg_value(i64 24, !4421, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10483)
    #dbg_value(i64 24, !4426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10485)
    #dbg_value(i64 24, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10487)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4441, !DIExpression(), !10485)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4447, !DIExpression(), !10487)
    #dbg_value(i8 0, !4448, !DIExpression(), !10487)
    #dbg_value(i64 8, !4450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10489)
    #dbg_value(i64 8, !4470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10491)
    #dbg_value(i64 24, !4450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10489)
    #dbg_value(i64 24, !4470, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10491)
    #dbg_value(i1 false, !4454, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10489)
    #dbg_value(i64 24, !4455, !DIExpression(), !10492)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !dbg !10965, !noalias !10888
  %i.q = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 545) 24, i64 noundef range(i64 8, 33) 8) #29, !dbg !10966, !noalias !10888 ; 6 uses
  %i.r = icmp eq ptr %i.q, null, !dbg !10967
  br i1 %i.r, label %bb.f, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit65, !dbg !10968, !prof !3261

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #27, !dbg !10969, !noalias !10888
  unreachable, !dbg !10969

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit65: ; preds = %bb.e
    #dbg_value(ptr %i.q, !10884, !DIExpression(), !10495)
  store i64 1, ptr %i.q, align 8, !dbg !10970
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !10970
  store i64 1, ptr %.sroa.491.0..sroa_idx, align 8, !dbg !10970
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !10970
  store i8 %i.n, ptr %.sroa.592.0..sroa_idx, align 8, !dbg !10970
  %.sroa.693.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 17, !dbg !10970
  store i8 %i.p, ptr %.sroa.693.0..sroa_idx, align 1, !dbg !10970
  br label %bb.x, !dbg !10971

bb.g:                                             ; preds = %bb.a
    #dbg_value(i64 1, !10671, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10889)
    #dbg_value(i64 1, !10671, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10889)
    #dbg_value(i64 8, !4421, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10497)
    #dbg_value(i64 8, !4426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10499)
    #dbg_value(i64 8, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10501)
    #dbg_value(i64 24, !4421, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10497)
    #dbg_value(i64 24, !4426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10499)
    #dbg_value(i64 24, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10501)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4441, !DIExpression(), !10499)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4447, !DIExpression(), !10501)
    #dbg_value(i8 0, !4448, !DIExpression(), !10501)
    #dbg_value(i64 8, !4450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10503)
    #dbg_value(i64 8, !4470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10505)
    #dbg_value(i64 24, !4450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10503)
    #dbg_value(i64 24, !4470, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10505)
    #dbg_value(i1 false, !4454, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10503)
    #dbg_value(i64 24, !4455, !DIExpression(), !10506)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !dbg !10972, !noalias !10890
  %i.s = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 545) 24, i64 noundef range(i64 8, 33) 8) #29, !dbg !10973, !noalias !10890 ; 5 uses
  %i.t = icmp eq ptr %i.s, null, !dbg !10974
  br i1 %i.t, label %bb.h, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit66, !dbg !10975, !prof !3261

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #27, !dbg !10976, !noalias !10890
  unreachable, !dbg !10976

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit66: ; preds = %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !10977
    #dbg_value(ptr %i.s, !10682, !DIExpression(), !10509)
  store i64 1, ptr %i.s, align 8, !dbg !10978
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !10978
  store i64 1, ptr %.sroa.487.0..sroa_idx, align 8, !dbg !10978
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !10978
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %.sroa.588.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(3) %i.u, i64 3, i1 false), !dbg !10978
  br label %bb.x, !dbg !10979

bb.i:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !10980
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 288, !dbg !10980
  %.sroa.482.0.copyload = load i64, ptr %.sroa.482.0..sroa_idx, align 32, !dbg !10980 ; 2 uses
    #dbg_value(i64 %.sroa.482.0.copyload, !10664, !DIExpression(DW_OP_LLVM_fragment, 2048, 64), !10892)
    #dbg_value(i64 %.sroa.482.0.copyload, !10726, !DIExpression(DW_OP_LLVM_fragment, 2048, 64), !10893)
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 296, !dbg !10980
  %.sroa.583.0.copyload = load ptr, ptr %.sroa.583.0..sroa_idx, align 8, !dbg !10980 ; 3 uses
    #dbg_value(ptr %.sroa.583.0.copyload, !10664, !DIExpression(DW_OP_LLVM_fragment, 2112, 64), !10892)
    #dbg_value(ptr %.sroa.583.0.copyload, !10726, !DIExpression(DW_OP_LLVM_fragment, 2112, 64), !10893)
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 304, !dbg !10980 ; 2 uses
    #dbg_value(i64 poison, !10664, !DIExpression(DW_OP_LLVM_fragment, 2176, 64), !10892)
    #dbg_value(i64 poison, !10726, !DIExpression(DW_OP_LLVM_fragment, 2176, 64), !10893)
  %i.w = load <2 x i64>, ptr %.sroa.684.0..sroa_idx, align 16, !dbg !10980
  %.sroa.684.0.copyload = load i64, ptr %.sroa.684.0..sroa_idx, align 16, !dbg !10980 ; 2 uses
    #dbg_value(i64 %.sroa.684.0.copyload, !10664, !DIExpression(DW_OP_LLVM_fragment, 2176, 64), !10892)
    #dbg_value(i64 %.sroa.684.0.copyload, !10726, !DIExpression(DW_OP_LLVM_fragment, 2176, 64), !10893)
    #dbg_value(i64 poison, !10664, !DIExpression(DW_OP_LLVM_fragment, 2240, 64), !10892)
    #dbg_value(i64 poison, !10726, !DIExpression(DW_OP_LLVM_fragment, 2240, 64), !10893)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.579), !dbg !10981
    #dbg_value(i64 1, !10702, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10897)
    #dbg_value(i64 1, !10702, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10897)
  %.sroa.579.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.579, i64 16, !dbg !10981
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(256) %.sroa.579.32..sroa_idx, ptr noundef nonnull align 32 dereferenceable(256) %i.v, i64 256, i1 false), !dbg !10981
    #dbg_value(i64 %.sroa.482.0.copyload, !10702, !DIExpression(DW_OP_LLVM_fragment, 2304, 64), !10897)
    #dbg_value(ptr %.sroa.583.0.copyload, !10702, !DIExpression(DW_OP_LLVM_fragment, 2368, 64), !10897)
    #dbg_value(i64 %.sroa.684.0.copyload, !10702, !DIExpression(DW_OP_LLVM_fragment, 2432, 64), !10897)
    #dbg_value(i64 poison, !10702, !DIExpression(DW_OP_LLVM_fragment, 2496, 64), !10897)
    #dbg_value(i64 32, !4421, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10511)
    #dbg_value(i64 32, !4426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10513)
    #dbg_value(i64 32, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10515)
    #dbg_value(i64 320, !4421, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10511)
    #dbg_value(i64 320, !4426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10513)
    #dbg_value(i64 320, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10515)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4441, !DIExpression(), !10513)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4447, !DIExpression(), !10515)
    #dbg_value(i8 0, !4448, !DIExpression(), !10515)
    #dbg_value(i64 32, !4450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10517)
    #dbg_value(i64 32, !4470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10519)
    #dbg_value(i64 320, !4450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10517)
    #dbg_value(i64 320, !4470, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10519)
    #dbg_value(i1 false, !4454, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10517)
    #dbg_value(i64 320, !4455, !DIExpression(), !10520)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !dbg !10982, !noalias !10902
  %i.x = tail call noundef align 32 dereferenceable_or_null(320) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 545) 320, i64 noundef range(i64 8, 33) 32) #29, !dbg !10983, !noalias !10902 ; 8 uses
  %i.y = icmp eq ptr %i.x, null, !dbg !10984
  br i1 %i.y, label %bb.j, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter6memmem6MemmemEE3newB18_.exit, !dbg !10985, !prof !3261

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 32, i64 noundef 320) #27
          to label %.noexc unwind label %bb.k, !dbg !10986

.noexc:                                           ; preds = %bb.j
  unreachable, !dbg !10986

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
    #dbg_value(ptr undef, !10731, !DIExpression(), !10428)
    #dbg_value(ptr undef, !3603, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !10524)
    #dbg_value(ptr undef, !3610, !DIExpression(DW_OP_plus_uconst, 32, DW_OP_stack_value), !10526)
    #dbg_value(ptr undef, !3617, !DIExpression(), !10528)
    #dbg_value(ptr undef, !3624, !DIExpression(), !10530)
  %i.aa = icmp eq i64 %.sroa.482.0.copyload, 0, !dbg !10987
    #dbg_value(ptr poison, !3631, !DIExpression(), !10532)
    #dbg_value(ptr poison, !3637, !DIExpression(), !10534)
    #dbg_value(ptr poison, !3639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10535)
    #dbg_value(i64 poison, !3639, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10535)
    #dbg_value(i64 1, !3640, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10536)
    #dbg_value(i64 poison, !3640, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10536)
  %i.ab = icmp eq i64 %.sroa.684.0.copyload, 0
  %or.cond = select i1 %i.aa, i1 true, i1 %i.ab, !dbg !10987
  br i1 %or.cond, label %common.resume, label %bb.l, !dbg !10987

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.583.0.copyload) ]
    #dbg_value(ptr %.sroa.583.0.copyload, !3639, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10535)
    #dbg_value(ptr poison, !3649, !DIExpression(), !10538)
    #dbg_value(ptr poison, !3656, !DIExpression(), !10540)
    #dbg_value(ptr %.sroa.583.0.copyload, !3653, !DIExpression(), !10538)
    #dbg_value(ptr %.sroa.583.0.copyload, !3659, !DIExpression(), !10540)
    #dbg_value(ptr %.sroa.583.0.copyload, !3662, !DIExpression(), !10542)
    #dbg_value(ptr %.sroa.583.0.copyload, !3668, !DIExpression(), !10544)
    #dbg_value(i64 1, !3654, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10538)
    #dbg_value(i64 1, !3660, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10540)
    #dbg_value(i64 1, !3666, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10542)
    #dbg_value(i64 1, !3669, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10544)
    #dbg_value(i64 poison, !3654, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10538)
    #dbg_value(i64 poison, !3660, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10540)
    #dbg_value(i64 poison, !3666, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10542)
    #dbg_value(i64 poison, !3669, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10544)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.583.0.copyload, i64 noundef range(i64 1, 0) %.sroa.684.0.copyload, i64 noundef 1) #29, !dbg !10988, !noalias !10903
  br label %common.resume, !dbg !10989

common.resume:                                    ; preds = %bb.z, %bb.y, %bb.v, %bb.u, %bb.o, %bb.k, %bb.l
  %common.resume.op = phi { ptr, i32 } [ %i.aq, %bb.v ], [ %i.z, %bb.k ], [ %i.ag, %bb.o ], [ %i.z, %bb.l ], [ %i.aq, %bb.u ], [ %i.bh, %bb.y ], [ %i.bh, %bb.z ]
  resume { ptr, i32 } %common.resume.op, !dbg !10770

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter6memmem6MemmemEE3newB18_.exit: ; preds = %bb.i
    #dbg_value(ptr %i.x, !10711, !DIExpression(), !10555)
  store i64 1, ptr %i.x, align 32, !dbg !10990
  %.sroa.478.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !10990
  store i64 1, ptr %.sroa.478.0..sroa_idx, align 8, !dbg !10990
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16, !dbg !10990
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(272) %.sroa.579.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(272) %.sroa.579, i64 272, i1 false), !dbg !10990
  %.sroa.6.0..sroa_idx80 = getelementptr inbounds nuw i8, ptr %i.x, i64 288, !dbg !10990
  store i64 %.sroa.482.0.copyload, ptr %.sroa.6.0..sroa_idx80, align 32, !dbg !10990
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 296, !dbg !10990
  store ptr %.sroa.583.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !10990
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 304, !dbg !10990
  store <2 x i64> %i.w, ptr %.sroa.8.0..sroa_idx, align 16, !dbg !10990
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.579), !dbg !10991
  br label %bb.x, !dbg !10992

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !10993
  store i64 1, ptr %i.a, align 8, !dbg !10993
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !10993
  store i64 1, ptr %i.ac, align 8, !dbg !10993
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !10993
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(528) %i.ad, ptr noundef nonnull align 32 dereferenceable(528) %1, i64 528, i1 false), !dbg !10993
    #dbg_declare(ptr %i.a, !10904, !DIExpression(), !10559)
    #dbg_value(i64 8, !4421, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10561)
    #dbg_value(i64 8, !4426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10563)
    #dbg_value(i64 8, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10565)
    #dbg_value(i64 544, !4421, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10561)
    #dbg_value(i64 544, !4426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10563)
    #dbg_value(i64 544, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10565)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4441, !DIExpression(), !10563)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4447, !DIExpression(), !10565)
    #dbg_value(i8 0, !4448, !DIExpression(), !10565)
    #dbg_value(i64 8, !4450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10567)
    #dbg_value(i64 8, !4470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10569)
    #dbg_value(i64 544, !4450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10567)
    #dbg_value(i64 544, !4470, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10569)
    #dbg_value(i1 false, !4454, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10567)
    #dbg_value(i64 544, !4455, !DIExpression(), !10570)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !dbg !10994, !noalias !10910
  %i.ae = tail call noundef align 8 dereferenceable_or_null(544) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 545) 544, i64 noundef range(i64 8, 33) 8) #29, !dbg !10995, !noalias !10910 ; 3 uses
  %i.af = icmp eq ptr %i.ae, null, !dbg !10996
  br i1 %i.af, label %bb.n, label %_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter5teddy5TeddyEE3newB18_.exit, !dbg !10997, !prof !3261

bb.n:                                             ; preds = %bb.m
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 544) #27
          to label %.noexc68 unwind label %bb.o, !dbg !10998

.noexc68:                                         ; preds = %bb.n
  unreachable, !dbg !10998

bb.o:                                             ; preds = %bb.n
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync8ArcInnerNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter5teddy5TeddyEEB1m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(544) %i.a) #24
          to label %common.resume unwind label %bb.p, !dbg !10999

bb.p:                                             ; preds = %bb.o
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !dbg !11000
  unreachable, !dbg !11000

_RNvMNtCs4wP2HXfJTCR_5alloc5boxedINtB2_3BoxINtNtB4_4sync8ArcInnerNtNtNtNtCs9GYDdpCSJ4S_14regex_automata4util9prefilter5teddy5TeddyEE3newB18_.exit: ; preds = %bb.m
    #dbg_value(ptr %i.ae, !10908, !DIExpression(), !10573)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(544) %i.ae, ptr noundef nonnull align 8 dereferenceable(544) %i.a, i64 544, i1 false), !dbg !11001
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11002
  br label %bb.x, !dbg !11003

bb.q:                                             ; preds = %bb.a
    #dbg_value(i64 1, !10736, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10911)
    #dbg_value(i64 1, !10736, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10911)
    #dbg_value(i64 8, !4421, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10575)
    #dbg_value(i64 8, !4426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10577)
    #dbg_value(i64 8, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10579)
    #dbg_value(i64 272, !4421, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10575)
    #dbg_value(i64 272, !4426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10577)
    #dbg_value(i64 272, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10579)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4441, !DIExpression(), !10577)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4447, !DIExpression(), !10579)
    #dbg_value(i8 0, !4448, !DIExpression(), !10579)
    #dbg_value(i64 8, !4450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10581)
    #dbg_value(i64 8, !4470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10583)
    #dbg_value(i64 272, !4450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10581)
    #dbg_value(i64 272, !4470, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10583)
    #dbg_value(i1 false, !4454, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10581)
    #dbg_value(i64 272, !4455, !DIExpression(), !10584)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #29, !dbg !11004, !noalias !10912
  %i.ai = tail call noundef align 8 dereferenceable_or_null(272) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 16, 545) 272, i64 noundef range(i64 8, 33) 8) #29, !dbg !11005, !noalias !10912 ; 5 uses
  %i.aj = icmp eq ptr %i.ai, null, !dbg !11006
  br i1 %i.aj, label %bb.r, label %_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit70, !dbg !11007, !prof !3261

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 272) #27, !dbg !11008, !noalias !10912
  unreachable, !dbg !11008

_RNvNtCs4wP2HXfJTCR_5alloc5boxed14box_new_uninit.exit70: ; preds = %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11009
    #dbg_value(ptr %i.ai, !10747, !DIExpression(), !10587)
  store i64 1, ptr %i.ai, align 8, !dbg !11010
  %.sroa.4.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !11010
  store i64 1, ptr %.sroa.4.0..sroa_idx75, align 8, !dbg !11010
  %.sroa.5.0..sroa_idx76 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16, !dbg !11010
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(256) %.sroa.5.0..sroa_idx76, ptr noundef nonnull align 8 dereferenceable(256) %i.ak, i64 256, i1 false), !dbg !11010
  br label %bb.x, !dbg !11011

bb.s:                                             ; preds = %bb.a
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !11012
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !11013 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.am, ptr noundef nonnull align 8 dereferenceable(24) %i.al, i64 24, i1 false), !dbg !11012
  store i64 1, ptr %i.b, align 8, !dbg !11013
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !11013
  store i64 1, ptr %i.an, align 8, !dbg !11013
    #dbg_declare(ptr %i.b, !10913, !DIExpression(), !10591)
    #dbg_value(i64 8, !4421, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10593)
    #dbg_value(i64 8, !4426, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10595)
    #dbg_value(i64 8, !4443, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10597)
    #dbg_value(i64 40, !4421, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10593)
    #dbg_value(i64 40, !4426, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10595)
    #dbg_value(i64 40, !4443, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10597)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4441, !DIExpression(), !10595)
    #dbg_value(ptr inttoptr (i64 1 to ptr), !4447, !DIExpression(), !10597)
    #dbg_value(i8 0, !4448, !DIExpression(), !10597)
    #dbg_value(i64 8, !4450, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10599)
    #dbg_value(i64 8, !4470, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !10601)
    #dbg_value(i64 40, !4450, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10599)
    #dbg_value(i64 40, !4470, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !10601)
    #dbg_value(i1 false, !4454, !DIExpression(DW_OP_LLVM_convert, 1, DW_ATE_unsigned, DW_OP_LLVM_convert, 8, DW_ATE_unsigned, DW_OP_stack_value), !10599)
end_hunk_0
