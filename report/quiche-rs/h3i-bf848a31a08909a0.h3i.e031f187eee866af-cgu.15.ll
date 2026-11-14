Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/quiche-rs/original/h3i-bf848a31a08909a0.h3i.e031f187eee866af-cgu.15?download=true
inline.NumInlined: 312
inline.NumDeleted: 129
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvMs_NtNtCs8Nb2mar7w9E_7inquire7prompts4textNtB5_4Text17with_autocompleteRNvNtNtNtCsjfnSKV9Rz3v_3h3i7prompts2h38settings23settings_type_suggestorEB1k_:bb.a
    #dbg_value(i64 %i.r, !2465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6153)
    #dbg_value(i64 %i.r, !2468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6155)
    #dbg_value(i64 %i.o, !2453, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6149)
    #dbg_value(i64 %i.o, !2459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6151)
    #dbg_value(i64 %i.o, !2465, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6153)
    #dbg_value(i64 %i.o, !2468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6155)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.o, i64 noundef range(i64 1, -9223372036854775807) %i.r) #30, !dbg !6184
  br label %.body, !dbg !6185

.body:                                            ; preds = %bb.i, %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i5.i.i
  store ptr %i.a, ptr %i.d, align 8, !dbg !6173
  store ptr @24, ptr %i.e, align 8, !dbg !6173
  br label %bb.c, !dbg !6173

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtCs8Nb2mar7w9E_7inquire14autocompletion12AutocompleteEL_EEECsjfnSKV9Rz3v_3h3i.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i.i, %bb.h, %bb.e
  store ptr %i.a, ptr %i.d, align 8, !dbg !6173
  store ptr @24, ptr %i.e, align 8, !dbg !6173
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %0, ptr noundef nonnull align 8 dereferenceable(616) %1, i64 616, i1 false), !dbg !6186
  ret void, !dbg !6187

bb.j:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #29, !dbg !6188
  unreachable, !dbg !6188

bb.k:                                             ; preds = %bb.c
  resume { ptr, i32 } %.pn, !dbg !6188
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs8Nb2mar7w9E_7inquire5utils8paginateINtNtB4_11list_option10ListOptionRReEECsjfnSKV9Rz3v_3h3i(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef range(i64 0, 576460752303423488) %3, i64 noundef range(i64 0, 2) %4, i64 %5) unnamed_addr #0 !dbg !6206 {
bb.a:
    #dbg_value(i64 %1, !6230, !DIExpression(), !6251)
    #dbg_value(i64 %1, !6234, !DIExpression(), !6252)
    #dbg_value(i64 %1, !6253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6269)
    #dbg_value(i64 %1, !6270, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6277)
    #dbg_value(i64 %1, !6278, !DIExpression(), !6282)
    #dbg_value(i64 %4, !6232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6251)
    #dbg_value(i64 %4, !6235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6252)
    #dbg_value(i64 %5, !6232, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6251)
    #dbg_value(i64 %5, !6235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6252)
    #dbg_value(ptr %2, !6231, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6251)
    #dbg_value(ptr %2, !6265, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6269)
    #dbg_value(ptr %2, !6273, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6277)
    #dbg_value(ptr %2, !6283, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6293)
    #dbg_value(i64 %3, !6231, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6251)
    #dbg_value(i64 %3, !6265, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6269)
    #dbg_value(i64 %3, !6273, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6277)
    #dbg_value(i64 %3, !6283, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6293)
    #dbg_value(i64 %3, !6241, !DIExpression(), !6294)
  %.not = icmp ugt i64 %3, %1, !dbg !6309
  br i1 %.not, label %bb.b, label %bb.g, !dbg !6309

bb.b:                                             ; preds = %bb.a
  %i.a = trunc nuw i64 %4 to i1, !dbg !6310
  br i1 %i.a, label %bb.c, label %bb.g, !dbg !6310

bb.c:                                             ; preds = %bb.b
    #dbg_value(i64 %5, !6236, !DIExpression(), !6295)
  %i.b = lshr i64 %1, 1, !dbg !6311               ; 5 uses
    #dbg_value(i64 %i.b, !6243, !DIExpression(), !6296)
  %i.c = icmp ult i64 %5, %i.b, !dbg !6312
  br i1 %i.c, label %bb.g, label %bb.d, !dbg !6312

bb.d:                                             ; preds = %bb.c
  %i.d = xor i64 %5, -1, !dbg !6313
  %i.e = add i64 %3, %i.d, !dbg !6313
  %i.f = icmp ult i64 %i.e, %i.b, !dbg !6313
  br i1 %i.f, label %bb.f, label %bb.e, !dbg !6313

bb.e:                                             ; preds = %bb.d
  %i.g = sub nsw i64 %1, %i.b, !dbg !6314
    #dbg_value(i64 %i.g, !6244, !DIExpression(), !6297)
  %i.h = sub nuw i64 %5, %i.b, !dbg !6315
    #dbg_value(i64 %i.h, !6233, !DIExpression(), !6252)
    #dbg_value(i64 %i.h, !6240, !DIExpression(), !6298)
    #dbg_value(i64 %i.h, !6245, !DIExpression(), !6299)
    #dbg_value(i64 %i.h, !6253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6269)
    #dbg_value(i64 %i.h, !6270, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6277)
    #dbg_value(i64 %i.h, !6279, !DIExpression(), !6282)
    #dbg_value(i64 %i.h, !6289, !DIExpression(), !6293)
  %i.i = add i64 %i.g, %5, !dbg !6316
    #dbg_value(i64 %i.i, !6230, !DIExpression(), !6251)
    #dbg_value(i64 %i.i, !6234, !DIExpression(), !6252)
    #dbg_value(i64 %i.i, !6253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6269)
    #dbg_value(i64 %i.i, !6270, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6277)
    #dbg_value(i64 %i.i, !6278, !DIExpression(), !6282)
    #dbg_value(i64 %i.b, !6232, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6251)
    #dbg_value(i64 %i.b, !6235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6252)
    #dbg_value(i64 1, !6232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6251)
    #dbg_value(i64 1, !6235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6252)
  br label %bb.g, !dbg !6317

bb.f:                                             ; preds = %bb.d
  %i.j = sub nuw nsw i64 %3, %1, !dbg !6318       ; 2 uses
    #dbg_value(i64 %i.j, !6233, !DIExpression(), !6252)
    #dbg_value(i64 %i.j, !6240, !DIExpression(), !6298)
    #dbg_value(i64 %i.j, !6245, !DIExpression(), !6299)
    #dbg_value(i64 %i.j, !6253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6269)
    #dbg_value(i64 %i.j, !6270, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6277)
    #dbg_value(i64 %i.j, !6279, !DIExpression(), !6282)
    #dbg_value(i64 %i.j, !6289, !DIExpression(), !6293)
  %i.k = sub i64 %5, %i.j, !dbg !6319
    #dbg_value(i64 %i.k, !6232, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6251)
    #dbg_value(i64 %i.k, !6235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6252)
    #dbg_value(i64 1, !6232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6251)
    #dbg_value(i64 1, !6235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6252)
    #dbg_value(i64 %3, !6230, !DIExpression(), !6251)
    #dbg_value(i64 %3, !6234, !DIExpression(), !6252)
    #dbg_value(i64 %3, !6253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6269)
    #dbg_value(i64 %3, !6270, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6277)
    #dbg_value(i64 %3, !6278, !DIExpression(), !6282)
  br label %bb.g, !dbg !6317

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.f, %bb.e
  %.sroa.012.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %i.j, %bb.f ], [ %i.h, %bb.e ], [ 0, %bb.c ], !dbg !6251 ; 4 uses
  %.sroa.5.0 = phi i64 [ %5, %bb.a ], [ %5, %bb.b ], [ %i.k, %bb.f ], [ %i.b, %bb.e ], [ %5, %bb.c ]
  %.sroa.0.0 = phi i64 [ %3, %bb.a ], [ %1, %bb.b ], [ %3, %bb.f ], [ %i.i, %bb.e ], [ %1, %bb.c ] ; 4 uses
    #dbg_value(i64 %.sroa.0.0, !6278, !DIExpression(), !6282)
    #dbg_value(i64 %.sroa.0.0, !6270, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6277)
    #dbg_value(i64 %.sroa.0.0, !6253, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6269)
    #dbg_value(i64 %.sroa.0.0, !6234, !DIExpression(), !6252)
    #dbg_value(i64 %.sroa.0.0, !6230, !DIExpression(), !6251)
    #dbg_value(i64 %4, !6235, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6252)
    #dbg_value(i64 %4, !6232, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6251)
    #dbg_value(i64 %.sroa.5.0, !6235, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6252)
    #dbg_value(i64 %.sroa.5.0, !6232, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6251)
    #dbg_value(i64 %.sroa.012.0, !6289, !DIExpression(), !6293)
    #dbg_value(i64 %.sroa.012.0, !6279, !DIExpression(), !6282)
    #dbg_value(i64 %.sroa.012.0, !6270, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6277)
    #dbg_value(i64 %.sroa.012.0, !6253, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6269)
    #dbg_value(i64 %.sroa.012.0, !6245, !DIExpression(), !6299)
    #dbg_value(i64 %.sroa.012.0, !6240, !DIExpression(), !6298)
    #dbg_value(i64 %.sroa.012.0, !6233, !DIExpression(), !6252)
  %i.l = icmp ult i64 %.sroa.0.0, %.sroa.012.0, !dbg !6320
    #dbg_value(!DIArgList(i64 %.sroa.0.0, i64 %.sroa.012.0), !6274, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !6277)
    #dbg_value(!DIArgList(i64 %.sroa.0.0, i64 %.sroa.012.0), !6290, !DIExpression(DW_OP_LLVM_arg, 0, DW_OP_LLVM_arg, 1, DW_OP_minus, DW_OP_stack_value), !6293)
  %.not35 = icmp ugt i64 %.sroa.0.0, %3
  %or.cond = or i1 %i.l, %.not35, !dbg !6320
  br i1 %or.cond, label %bb.i, label %bb.h, !dbg !6320, !prof !6300

bb.h:                                             ; preds = %bb.g
  %i.m = sub nuw i64 %.sroa.0.0, %.sroa.012.0, !dbg !6321
    #dbg_value(i64 %i.m, !6274, !DIExpression(), !6277)
    #dbg_value(i64 %i.m, !6290, !DIExpression(), !6293)
  %i.n = icmp eq i64 %.sroa.0.0, %3, !dbg !6322
  %i.o = icmp eq i64 %.sroa.012.0, 0, !dbg !6323
  %i.p = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.012.0, !dbg !6324
    #dbg_value(ptr %i.p, !6301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6308)
    #dbg_value(i64 %i.m, !6301, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6308)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !6325
  %i.r = zext i1 %i.o to i8, !dbg !6325
  store i8 %i.r, ptr %i.q, align 8, !dbg !6325
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 41, !dbg !6325
  %i.t = zext i1 %i.n to i8, !dbg !6325
  store i8 %i.t, ptr %i.s, align 1, !dbg !6325
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !6325
  store ptr %i.p, ptr %i.u, align 8, !dbg !6325
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !6325
  store i64 %i.m, ptr %i.v, align 8, !dbg !6325
  store i64 %4, ptr %0, align 8, !dbg !6325
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6325
  store i64 %.sroa.5.0, ptr %i.w, align 8, !dbg !6325
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !6325
  store i64 %3, ptr %i.x, align 8, !dbg !6325
  ret void, !dbg !6326

bb.i:                                             ; preds = %bb.g
    #dbg_value(ptr poison, !6301, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6308)
    #dbg_value(i64 poison, !6301, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6308)
  tail call void @_RNvNtCskKLDkoKarTP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #32, !dbg !6327
  unreachable, !dbg !6327
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(none) uwtable
define hidden noundef i64 @_RINvNtCs8Nb2mar7w9E_7inquire5utils9int_log10jECsjfnSKV9Rz3v_3h3i(i64 noundef %0) unnamed_addr #1 !dbg !6331 {
bb.a:
    #dbg_value(ptr poison, !6345, !DIExpression(), !6334)
    #dbg_value(i64 0, !6339, !DIExpression(), !6352)
    #dbg_value(i64 10, !6341, !DIExpression(), !6353)
    #dbg_value(ptr undef, !6338, !DIExpression(DW_OP_deref), !6354)
    #dbg_value(ptr undef, !6340, !DIExpression(DW_OP_deref), !6355)
    #dbg_value(ptr undef, !6356, !DIExpression(), !6337)
    #dbg_value(ptr undef, !6357, !DIExpression(), !6337)
  %.not6 = icmp eq i64 %0, 0, !dbg !6359
  br i1 %.not6, label %._crit_edge, label %.lr.ph, !dbg !6360

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.b, %.lr.ph ], !dbg !6354
  ret i64 %.sroa.0.0.lcssa, !dbg !6361

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.08 = phi i64 [ %i.b, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.0.057 = phi i64 [ %i.a, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
    #dbg_value(i64 %.sroa.0.08, !6339, !DIExpression(), !6352)
    #dbg_value(ptr undef, !6338, !DIExpression(DW_OP_deref), !6354)
    #dbg_value(ptr undef, !6345, !DIExpression(), !6334)
    #dbg_value(i64 10, !6350, !DIExpression(), !6334)
  %i.a = udiv i64 %.sroa.0.057, 10, !dbg !6362
  %i.b = add nuw nsw i64 %.sroa.0.08, 1, !dbg !6363 ; 2 uses
    #dbg_value(i64 %i.b, !6339, !DIExpression(), !6352)
    #dbg_value(ptr undef, !6340, !DIExpression(DW_OP_deref), !6355)
    #dbg_value(ptr undef, !6356, !DIExpression(), !6337)
    #dbg_value(ptr undef, !6357, !DIExpression(), !6337)
  %.not = icmp ult i64 %.sroa.0.057, 10, !dbg !6359
  br i1 %.not, label %._crit_edge, label %.lr.ph, !dbg !6360
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VecTyyEEEECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !317 {
bb.a:
    #dbg_value(ptr %0, !2536, !DIExpression(), !6412)
  %i.a = load i64, ptr %0, align 8, !dbg !6417, !range !2540, !noundef !1445
  %i.b = icmp eq i64 %i.a, -1, !dbg !6417
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyyEEECsjfnSKV9Rz3v_3h3i.exit, label %bb.b, !dbg !6417

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyyEEECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.f, %bb.e, %bb.a
  ret void, !dbg !6417

bb.b:                                             ; preds = %bb.a
    #dbg_value(ptr %0, !2542, !DIExpression(), !6365)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecTyyEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.e unwind label %bb.c, !dbg !6418

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val3.i = load i64, ptr %0, align 8, !dbg !6418, !range !2294, !alias.scope !6413, !noundef !1445 ; 2 uses
    #dbg_value(ptr poison, !2547, !DIExpression(), !6371)
    #dbg_value(ptr poison, !2553, !DIExpression(), !6373)
    #dbg_value(ptr poison, !2558, !DIExpression(), !6375)
    #dbg_value(i64 8, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6375)
    #dbg_value(i64 16, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6375)
    #dbg_value(ptr poison, !2567, !DIExpression(), !6377)
    #dbg_value(i64 8, !2584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6377)
    #dbg_value(i64 16, !2584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6377)
    #dbg_value(i64 16, !2588, !DIExpression(), !6379)
  %i.d = icmp eq i64 %.val3.i, 0, !dbg !6419
  br i1 %i.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTyyEEECsjfnSKV9Rz3v_3h3i.exit.i, label %bb.d, !dbg !6419

bb.d:                                             ; preds = %bb.c
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6418
  %.val4.i = load ptr, ptr %i.e, align 8, !dbg !6418, !alias.scope !6414, !nonnull !1445, !noundef !1445
    #dbg_value(i64 %.val3.i, !2591, !DIExpression(), !6379)
  %i.f = shl nuw i64 %.val3.i, 4, !dbg !6420
    #dbg_value(ptr %.val4.i, !2564, !DIExpression(), !6380)
    #dbg_value(i64 8, !2565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6380)
    #dbg_value(i64 %i.f, !2565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6380)
    #dbg_value(ptr poison, !2449, !DIExpression(), !6382)
    #dbg_value(ptr poison, !2455, !DIExpression(), !6384)
    #dbg_value(ptr %.val4.i, !2452, !DIExpression(), !6382)
    #dbg_value(ptr %.val4.i, !2458, !DIExpression(), !6384)
    #dbg_value(ptr %.val4.i, !2461, !DIExpression(), !6386)
    #dbg_value(ptr %.val4.i, !2467, !DIExpression(), !6388)
    #dbg_value(i64 8, !2453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6382)
    #dbg_value(i64 8, !2459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6384)
    #dbg_value(i64 8, !2465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6386)
    #dbg_value(i64 8, !2468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6388)
    #dbg_value(i64 %i.f, !2453, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6382)
    #dbg_value(i64 %i.f, !2459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6384)
    #dbg_value(i64 %i.f, !2465, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6386)
    #dbg_value(i64 %i.f, !2468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6388)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.f, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !dbg !6421, !noalias !6415
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTyyEEECsjfnSKV9Rz3v_3h3i.exit.i, !dbg !6422

bb.e:                                             ; preds = %bb.b
  %.val.i = load i64, ptr %0, align 8, !dbg !6418, !range !2294, !alias.scope !6413, !noundef !1445 ; 2 uses
    #dbg_value(ptr poison, !2547, !DIExpression(), !6392)
    #dbg_value(ptr poison, !2553, !DIExpression(), !6394)
    #dbg_value(ptr poison, !2558, !DIExpression(), !6396)
    #dbg_value(i64 8, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6396)
    #dbg_value(i64 16, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6396)
    #dbg_value(ptr poison, !2567, !DIExpression(), !6398)
    #dbg_value(i64 8, !2584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6398)
    #dbg_value(i64 16, !2584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6398)
    #dbg_value(i64 16, !2588, !DIExpression(), !6400)
  %i.g = icmp eq i64 %.val.i, 0, !dbg !6423
  br i1 %i.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyyEEECsjfnSKV9Rz3v_3h3i.exit, label %bb.f, !dbg !6423

bb.f:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6418
  %.val2.i = load ptr, ptr %i.h, align 8, !dbg !6418, !alias.scope !6414, !nonnull !1445, !noundef !1445
    #dbg_value(i64 %.val.i, !2591, !DIExpression(), !6400)
  %i.i = shl nuw i64 %.val.i, 4, !dbg !6424
    #dbg_value(ptr %.val2.i, !2564, !DIExpression(), !6401)
    #dbg_value(i64 8, !2565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6401)
    #dbg_value(i64 %i.i, !2565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6401)
    #dbg_value(ptr poison, !2449, !DIExpression(), !6403)
    #dbg_value(ptr poison, !2455, !DIExpression(), !6405)
    #dbg_value(ptr %.val2.i, !2452, !DIExpression(), !6403)
    #dbg_value(ptr %.val2.i, !2458, !DIExpression(), !6405)
    #dbg_value(ptr %.val2.i, !2461, !DIExpression(), !6407)
    #dbg_value(ptr %.val2.i, !2467, !DIExpression(), !6409)
    #dbg_value(i64 8, !2453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6403)
    #dbg_value(i64 8, !2459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6405)
    #dbg_value(i64 8, !2465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6407)
    #dbg_value(i64 8, !2468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6409)
    #dbg_value(i64 %i.i, !2453, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6403)
    #dbg_value(i64 %i.i, !2459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6405)
    #dbg_value(i64 %i.i, !2465, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6407)
    #dbg_value(i64 %i.i, !2468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6409)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i, i64 noundef %i.i, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !dbg !6425, !noalias !6416
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecTyyEEECsjfnSKV9Rz3v_3h3i.exit, !dbg !6426

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecTyyEEECsjfnSKV9Rz3v_3h3i.exit.i: ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.c, !dbg !6418
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtBG_5boxed3BoxDNtNtCs8Nb2mar7w9E_7inquire9validator15StringValidatorEL_EEECsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !332 {
bb.a:
    #dbg_value(ptr %0, !2595, !DIExpression(), !6465)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtB7_5boxed3BoxDNtNtCs8Nb2mar7w9E_7inquire9validator15StringValidatorEL_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsjfnSKV9Rz3v_3h3i(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %bb.d unwind label %bb.b, !dbg !6466

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  %.val3 = load i64, ptr %0, align 8, !dbg !6466, !range !2294, !noundef !1445 ; 2 uses
    #dbg_value(ptr poison, !2600, !DIExpression(), !6428)
    #dbg_value(ptr poison, !2606, !DIExpression(), !6430)
    #dbg_value(ptr poison, !2558, !DIExpression(), !6432)
    #dbg_value(i64 8, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6432)
    #dbg_value(i64 16, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6432)
    #dbg_value(ptr poison, !2567, !DIExpression(), !6434)
    #dbg_value(i64 8, !2584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6434)
    #dbg_value(i64 16, !2584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6434)
    #dbg_value(i64 16, !2588, !DIExpression(), !6436)
  %i.b = icmp eq i64 %.val3, 0, !dbg !6467
  br i1 %i.b, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtCs8Nb2mar7w9E_7inquire9validator15StringValidatorEL_EEECsjfnSKV9Rz3v_3h3i.exit, label %bb.c, !dbg !6467

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6466
  %.val4 = load ptr, ptr %i.c, align 8, !dbg !6466, !nonnull !1445, !noundef !1445
    #dbg_value(i64 %.val3, !2591, !DIExpression(), !6436)
  %i.d = shl nuw i64 %.val3, 4, !dbg !6468
    #dbg_value(ptr %.val4, !2564, !DIExpression(), !6437)
    #dbg_value(i64 8, !2565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6437)
    #dbg_value(i64 %i.d, !2565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6437)
    #dbg_value(ptr poison, !2449, !DIExpression(), !6439)
    #dbg_value(ptr poison, !2455, !DIExpression(), !6441)
    #dbg_value(ptr %.val4, !2452, !DIExpression(), !6439)
    #dbg_value(ptr %.val4, !2458, !DIExpression(), !6441)
    #dbg_value(ptr %.val4, !2461, !DIExpression(), !6443)
    #dbg_value(ptr %.val4, !2467, !DIExpression(), !6445)
    #dbg_value(i64 8, !2453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6439)
    #dbg_value(i64 8, !2459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6441)
    #dbg_value(i64 8, !2465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6443)
    #dbg_value(i64 8, !2468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6445)
    #dbg_value(i64 %i.d, !2453, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6439)
    #dbg_value(i64 %i.d, !2459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6441)
    #dbg_value(i64 %i.d, !2465, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6443)
    #dbg_value(i64 %i.d, !2468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6445)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !dbg !6469
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtCs8Nb2mar7w9E_7inquire9validator15StringValidatorEL_EEECsjfnSKV9Rz3v_3h3i.exit, !dbg !6470

bb.d:                                             ; preds = %bb.a
  %.val = load i64, ptr %0, align 8, !dbg !6466, !range !2294, !noundef !1445 ; 2 uses
    #dbg_value(ptr poison, !2600, !DIExpression(), !6447)
    #dbg_value(ptr poison, !2606, !DIExpression(), !6449)
    #dbg_value(ptr poison, !2558, !DIExpression(), !6451)
    #dbg_value(i64 8, !2563, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6451)
    #dbg_value(i64 16, !2563, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6451)
    #dbg_value(ptr poison, !2567, !DIExpression(), !6453)
    #dbg_value(i64 8, !2584, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6453)
    #dbg_value(i64 16, !2584, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6453)
    #dbg_value(i64 16, !2588, !DIExpression(), !6455)
  %i.e = icmp eq i64 %.val, 0, !dbg !6471
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtCs8Nb2mar7w9E_7inquire9validator15StringValidatorEL_EEECsjfnSKV9Rz3v_3h3i.exit5, label %bb.e, !dbg !6471

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !6466
  %.val2 = load ptr, ptr %i.f, align 8, !dbg !6466, !nonnull !1445, !noundef !1445
    #dbg_value(i64 %.val, !2591, !DIExpression(), !6455)
  %i.g = shl nuw i64 %.val, 4, !dbg !6472
    #dbg_value(ptr %.val2, !2564, !DIExpression(), !6456)
    #dbg_value(i64 8, !2565, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6456)
    #dbg_value(i64 %i.g, !2565, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6456)
    #dbg_value(ptr poison, !2449, !DIExpression(), !6458)
    #dbg_value(ptr poison, !2455, !DIExpression(), !6460)
    #dbg_value(ptr %.val2, !2452, !DIExpression(), !6458)
    #dbg_value(ptr %.val2, !2458, !DIExpression(), !6460)
    #dbg_value(ptr %.val2, !2461, !DIExpression(), !6462)
    #dbg_value(ptr %.val2, !2467, !DIExpression(), !6464)
    #dbg_value(i64 8, !2453, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6458)
    #dbg_value(i64 8, !2459, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6460)
    #dbg_value(i64 8, !2465, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6462)
    #dbg_value(i64 8, !2468, !DIExpression(DW_OP_LLVM_fragment, 0, 64), !6464)
    #dbg_value(i64 %i.g, !2453, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6458)
    #dbg_value(i64 %i.g, !2459, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6460)
    #dbg_value(i64 %i.g, !2465, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6462)
    #dbg_value(i64 %i.g, !2468, !DIExpression(DW_OP_LLVM_fragment, 64, 64), !6464)
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2, i64 noundef %i.g, i64 noundef range(i64 1, -9223372036854775807) 8) #30, !dbg !6473
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtCs8Nb2mar7w9E_7inquire9validator15StringValidatorEL_EEECsjfnSKV9Rz3v_3h3i.exit5, !dbg !6474

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtCs8Nb2mar7w9E_7inquire9validator15StringValidatorEL_EEECsjfnSKV9Rz3v_3h3i.exit5: ; preds = %bb.d, %bb.e
  ret void, !dbg !6466

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc7raw_vec6RawVecINtNtBG_5boxed3BoxDNtNtCs8Nb2mar7w9E_7inquire9validator15StringValidatorEL_EEECsjfnSKV9Rz3v_3h3i.exit: ; preds = %bb.c, %bb.b
  resume { ptr, i32 } %i.a, !dbg !6466
end_hunk_0
