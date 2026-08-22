Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/just-rs/original/just-b5787c51d404debe.just.f4201053fadd6f59-cgu.0?download=true
inline.NumInlined: 27272
inline.NumDeleted: 11245
loop-unroll.NumCompletelyUnrolled: 122
loop-unroll.NumRuntimeUnrolled: 597
loop-unroll.NumUnrolled: 722
begin_hunk_0_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB19_11sort_by_keyjNCNvMB1c_B1a_14public_moduless_0E0EB1e_:.lr.ph.i
  %i.av = icmp ult i64 %.sroa.0.0.i.i28.i.2, %.sroa.4.0.copyload.i6.i33.i.2
  %cond.fr7.i.2 = freeze i1 %i.av                 ; 2 uses
  %spec.select11.i.2 = select i1 %cond.fr7.i.2, ptr %i.aj, ptr %i.ai
  %.pre27.i.2 = load i64, ptr %spec.select11.i.2, align 8, !alias.scope !23351, !noalias !23359
  br label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit35.thread.i.2

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit35.thread.i.2: ; preds = %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit35.i.2, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i27.i.2
  %i.aw = phi i64 [ %i.au, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i27.i.2 ], [ %.pre27.i.2, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit35.i.2 ]
  %.sroa.0.0.i7.i3410.i.2 = phi i1 [ false, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i27.i.2 ], [ %cond.fr7.i.2, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit35.i.2 ] ; 2 uses
  %i.ax = xor i1 %.sroa.0.0.i7.i3410.i.2, true
  store i64 %i.aw, ptr %i.ak, align 8, !noalias !23363
  %.neg.i.i.2 = sext i1 %i.ax to i64
  %i.ay = getelementptr [8 x i8], ptr %i.ai, i64 %.neg.i.i.2 ; 3 uses
  %.neg13.i.i.2 = sext i1 %.sroa.0.0.i7.i3410.i.2 to i64
  %i.az = getelementptr [8 x i8], ptr %i.aj, i64 %.neg13.i.i.2 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.011.0.val.i.3 = load ptr, ptr %i.aq, align 8, !alias.scope !23351, !nonnull !29, !align !174, !noundef !29 ; 2 uses
  %.sroa.06.0.val.i.3 = load ptr, ptr %i.as, align 8, !alias.scope !23351 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.011.0.val.i.3, i64 568
  %.sroa.5.0.copyload.i.i.i.3 = load i8, ptr %.sroa.5.0..sroa_idx.i.i.i.3, align 8, !noalias !23351
  %.not.i.i.i.3 = icmp eq i8 %.sroa.5.0.copyload.i.i.i.3, -1
  %i.bb = ptrtoint ptr %.sroa.06.0.val.i.3 to i64
  br i1 %.not.i.i.i.3, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i.3, label %bb.g

bb.g:                                             ; preds = %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit35.thread.i.2
  %.sroa.4.0..sroa_idx.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.011.0.val.i.3, i64 560
  %.sroa.4.0.copyload.i.i.i.3 = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i.3, align 8, !noalias !23351
  br label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i.3

_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i.3: ; preds = %bb.g, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit35.thread.i.2
  %.sroa.0.0.i.i.i.3 = phi i64 [ %.sroa.4.0.copyload.i.i.i.3, %bb.g ], [ 0, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit35.thread.i.2 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.06.0.val.i.3) ]
  %.sroa.5.0..sroa_idx.i2.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val.i.3, i64 568
  %.sroa.5.0.copyload.i3.i.i.3 = load i8, ptr %.sroa.5.0..sroa_idx.i2.i.i.3, align 8, !noalias !23351
  %.not.i4.i.i.3 = icmp eq i8 %.sroa.5.0.copyload.i3.i.i.3, -1
  br i1 %.not.i4.i.i.3, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i.3, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.i.3

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.i.3: ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i.3
  %.sroa.4.0..sroa_idx.i5.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val.i.3, i64 560
  %.sroa.4.0.copyload.i6.i.i.3 = load i64, ptr %.sroa.4.0..sroa_idx.i5.i.i.3, align 8, !noalias !23351
  %i.bc = icmp ult i64 %.sroa.0.0.i.i.i.3, %.sroa.4.0.copyload.i6.i.i.3
  %cond.fr.i.3 = freeze i1 %i.bc                  ; 2 uses
  %spec.select.i.3 = select i1 %cond.fr.i.3, ptr %i.aq, ptr %i.as
  %.pre.i.3 = load i64, ptr %spec.select.i.3, align 8, !alias.scope !23351, !noalias !23354
  br label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i.3

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i.3: ; preds = %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.i.3, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i.3
  %i.bd = phi i64 [ %i.bb, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i.3 ], [ %.pre.i.3, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.i.3 ]
  %.sroa.0.0.i7.i6.i.3 = phi i1 [ false, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i.i.3 ], [ %cond.fr.i.3, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.i.3 ] ; 2 uses
  %i.be = xor i1 %.sroa.0.0.i7.i6.i.3, true
  store i64 %i.bd, ptr %i.at, align 8, !noalias !23358
  %i.bf = zext i1 %.sroa.0.0.i7.i6.i.3 to i64
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.bf
  %i.bh = zext i1 %i.be to i64
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.bh
  %.sroa.017.0.val.i.3 = load ptr, ptr %i.ay, align 8, !alias.scope !23351, !nonnull !29, !align !174, !noundef !29 ; 3 uses
  %.sroa.015.0.val.i.3 = load ptr, ptr %i.az, align 8, !alias.scope !23351 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i22.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.017.0.val.i.3, i64 568
  %.sroa.5.0.copyload.i.i23.i.3 = load i8, ptr %.sroa.5.0..sroa_idx.i.i22.i.3, align 8, !noalias !23351
  %.not.i.i24.i.3 = icmp eq i8 %.sroa.5.0.copyload.i.i23.i.3, -1
  %i.bj = ptrtoint ptr %.sroa.017.0.val.i.3 to i64
  br i1 %.not.i.i24.i.3, label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i27.i.3, label %bb.h

bb.h:                                             ; preds = %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i.3
  %.sroa.4.0..sroa_idx.i.i25.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.017.0.val.i.3, i64 560
  %.sroa.4.0.copyload.i.i26.i.3 = load i64, ptr %.sroa.4.0..sroa_idx.i.i25.i.3, align 8, !noalias !23351
  br label %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i27.i.3

_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i27.i.3: ; preds = %bb.h, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i.3
  %.sroa.0.0.i.i28.i.3 = phi i64 [ %.sroa.4.0.copyload.i.i26.i.3, %bb.h ], [ 0, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit.thread.i.3 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.015.0.val.i.3) ]
  %.sroa.5.0..sroa_idx.i2.i29.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.015.0.val.i.3, i64 568
  %.sroa.5.0.copyload.i3.i30.i.3 = load i8, ptr %.sroa.5.0..sroa_idx.i2.i29.i.3, align 8, !noalias !23351
  %.not.i4.i31.i.3 = icmp eq i8 %.sroa.5.0.copyload.i3.i30.i.3, -1
  br i1 %.not.i4.i31.i.3, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit35.thread.i.3, label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit35.i.3

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit35.i.3: ; preds = %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i27.i.3
  %.sroa.4.0..sroa_idx.i5.i32.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.015.0.val.i.3, i64 560
  %.sroa.4.0.copyload.i6.i33.i.3 = load i64, ptr %.sroa.4.0..sroa_idx.i5.i32.i.3, align 8, !noalias !23351
  %i.bk = icmp ult i64 %.sroa.0.0.i.i28.i.3, %.sroa.4.0.copyload.i6.i33.i.3
  %cond.fr7.i.3 = freeze i1 %i.bk                 ; 2 uses
  %spec.select11.i.3 = select i1 %cond.fr7.i.3, ptr %i.az, ptr %i.ay
  %.pre27.i.3 = load i64, ptr %spec.select11.i.3, align 8, !alias.scope !23351, !noalias !23359
  br label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit35.thread.i.3

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit35.thread.i.3: ; preds = %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit35.i.3, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i27.i.3
  %i.bl = phi i64 [ %i.bj, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i27.i.3 ], [ %.pre27.i.3, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit35.i.3 ]
  %.sroa.0.0.i7.i3410.i.3 = phi i1 [ false, %_RNCNvMNtCskXtk6F4WjxZ_4just8justfileNtB4_8Justfile14public_moduless_0B6_.exit.i27.i.3 ], [ %cond.fr7.i.3, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit35.i.3 ] ; 2 uses
  %i.bm = xor i1 %.sroa.0.0.i7.i3410.i.3, true
  store i64 %i.bl, ptr %i.ba, align 8, !noalias !23363
  %.neg.i.i.3 = sext i1 %i.bm to i64
  %i.bn = getelementptr [8 x i8], ptr %i.ay, i64 %.neg.i.i.3
  %.neg13.i.i.3 = sext i1 %.sroa.0.0.i7.i3410.i.3 to i64
  %i.bo = getelementptr [8 x i8], ptr %i.az, i64 %.neg13.i.i.3
  %i.bp = getelementptr i8, ptr %i.bo, i64 8
  %i.bq = getelementptr i8, ptr %i.bn, i64 8
  %i.br = icmp ne ptr %i.bi, %i.bp
  %i.bs = icmp ne ptr %i.bg, %i.bq
  %or.cond.i = select i1 %i.br, i1 true, i1 %i.bs, !prof !491
  br i1 %or.cond.i, label %bb.i, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1g_11sort_by_keyjNCNvMB1j_B1h_14public_moduless_0E0EB1l_.exit, !prof !491

bb.i:                                             ; preds = %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit35.thread.i.3
  tail call void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #75, !noalias !23351
  unreachable

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtNtCskXtk6F4WjxZ_4just8justfile8JustfileNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1g_11sort_by_keyjNCNvMB1j_B1h_14public_moduless_0E0EB1l_.exit: ; preds = %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just8justfile8Justfile11sort_by_keyjNCNvMBB_Bz_14public_moduless_0E0BD_.exit35.thread.i.3
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort12sort8_stableTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB19_7sort_byNCINvXs1o_NtNtNtB1l_11collections5btree3mapINtB28_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB19_E9from_iterINtNtNtB35_8adapters10filter_map9FilterMapINtNtB42_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5s_17invocation_parserNtB6c_16InvocationParser16parse_invocations0_0EE0E0EB5s_(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef nonnull writeonly captures(none) initializes((0, 128)) %1, ptr nofree noundef nonnull captures(address) initializes((0, 128)) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.i:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val8.i = load i32, ptr %i.a, align 4, !range !775, !noundef !29
  %.val9.i = load i32, ptr %0, align 4, !range !775, !noundef !29
  %i.b = icmp samesign ult i32 %.val8.i, %.val9.i ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val6.i = load i32, ptr %i.c, align 4, !range !775, !noundef !29
  %.val7.i = load i32, ptr %i.d, align 4, !range !775, !noundef !29
  %i.e = icmp samesign ult i32 %.val6.i, %.val7.i ; 2 uses
  %i.f = zext i1 %i.b to i64
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.f ; 3 uses
  %i.h = xor i1 %i.b, true
  %i.i = zext i1 %i.h to i64
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.i ; 4 uses
  %i.k = select i1 %i.e, i64 3, i64 2
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.k ; 4 uses
  %i.m = select i1 %i.e, i64 2, i64 3
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.m ; 3 uses
  %.val4.i = load i32, ptr %i.l, align 4, !range !775, !noundef !29
  %.val5.i = load i32, ptr %i.g, align 4, !range !775, !noundef !29
  %i.o = icmp samesign ult i32 %.val4.i, %.val5.i ; 3 uses
  %.val2.i = load i32, ptr %i.n, align 4, !range !775, !noundef !29
  %.val3.i = load i32, ptr %i.j, align 4, !range !775, !noundef !29
  %i.p = icmp samesign ult i32 %.val2.i, %.val3.i ; 3 uses
  %i.q = select i1 %i.o, ptr %i.l, ptr %i.g, !unpredictable !29
  %i.r = select i1 %i.p, ptr %i.j, ptr %i.n, !unpredictable !29
  %i.s = select i1 %i.p, ptr %i.l, ptr %i.j, !unpredictable !29
  %i.t = select i1 %i.o, ptr %i.g, ptr %i.s, !unpredictable !29 ; 3 uses
  %i.u = select i1 %i.o, ptr %i.j, ptr %i.l, !unpredictable !29
  %i.v = select i1 %i.p, ptr %i.n, ptr %i.u, !unpredictable !29 ; 3 uses
  %.val.i = load i32, ptr %i.v, align 4, !range !775, !noundef !29
  %.val1.i = load i32, ptr %i.t, align 4, !range !775, !noundef !29
  %i.w = icmp samesign ult i32 %.val.i, %.val1.i  ; 2 uses
  %i.x = select i1 %i.w, ptr %i.v, ptr %i.t, !unpredictable !29
  %i.y = select i1 %i.w, ptr %i.t, ptr %i.v, !unpredictable !29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.q, i64 16, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %2, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.z, ptr noundef nonnull align 8 dereferenceable(16) %i.x, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aa, ptr noundef nonnull align 8 dereferenceable(16) %i.y, i64 16, i1 false)
  %i.ab = getelementptr i8, ptr %2, i64 48        ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 5 uses
  %i.ad = getelementptr i8, ptr %2, i64 64        ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val8.i1 = load i32, ptr %i.ae, align 4, !range !775, !noundef !29
  %.val9.i2 = load i32, ptr %i.ac, align 4, !range !775, !noundef !29
  %i.af = icmp samesign ult i32 %.val8.i1, %.val9.i2 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val6.i3 = load i32, ptr %i.ag, align 4, !range !775, !noundef !29
  %.val7.i4 = load i32, ptr %i.ah, align 4, !range !775, !noundef !29
  %i.ai = icmp samesign ult i32 %.val6.i3, %.val7.i4 ; 2 uses
  %i.aj = zext i1 %i.af to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.aj ; 3 uses
  %i.al = xor i1 %i.af, true
  %i.am = zext i1 %i.al to i64
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.am ; 4 uses
  %i.ao = select i1 %i.ai, i64 3, i64 2
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.ao ; 4 uses
  %i.aq = select i1 %i.ai, i64 2, i64 3
  %i.ar = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.aq ; 3 uses
  %.val4.i5 = load i32, ptr %i.ap, align 4, !range !775, !noundef !29
  %.val5.i6 = load i32, ptr %i.ak, align 4, !range !775, !noundef !29
  %i.as = icmp samesign ult i32 %.val4.i5, %.val5.i6 ; 3 uses
  %.val2.i7 = load i32, ptr %i.ar, align 4, !range !775, !noundef !29
  %.val3.i8 = load i32, ptr %i.an, align 4, !range !775, !noundef !29
  %i.at = icmp samesign ult i32 %.val2.i7, %.val3.i8 ; 3 uses
  %i.au = select i1 %i.as, ptr %i.ap, ptr %i.ak, !unpredictable !29
  %i.av = select i1 %i.at, ptr %i.an, ptr %i.ar, !unpredictable !29
  %i.aw = select i1 %i.at, ptr %i.ap, ptr %i.an, !unpredictable !29
  %i.ax = select i1 %i.as, ptr %i.ak, ptr %i.aw, !unpredictable !29 ; 3 uses
  %i.ay = select i1 %i.as, ptr %i.an, ptr %i.ap, !unpredictable !29
  %i.az = select i1 %i.at, ptr %i.ar, ptr %i.ay, !unpredictable !29 ; 3 uses
  %.val.i9 = load i32, ptr %i.az, align 4, !range !775, !noundef !29
  %.val1.i10 = load i32, ptr %i.ax, align 4, !range !775, !noundef !29
  %i.ba = icmp samesign ult i32 %.val.i9, %.val1.i10 ; 2 uses
  %i.bb = select i1 %i.ba, ptr %i.az, ptr %i.ax, !unpredictable !29
  %i.bc = select i1 %i.ba, ptr %i.ax, ptr %i.az, !unpredictable !29
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %i.au, i64 16, i1 false)
  %i.bd = getelementptr i8, ptr %2, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 8 dereferenceable(16) %i.bb, i64 16, i1 false)
  %i.be = getelementptr i8, ptr %2, i64 96
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %i.bc, i64 16, i1 false)
  %i.bf = getelementptr i8, ptr %2, i64 112       ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bf, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23364)
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.011.0.val.i = load i32, ptr %i.ad, align 4, !range !775, !alias.scope !23364, !noundef !29
  %.sroa.06.0.val.i = load i32, ptr %2, align 4, !range !775, !alias.scope !23364, !noundef !29
  %i.bh = icmp samesign ult i32 %.sroa.011.0.val.i, %.sroa.06.0.val.i ; 3 uses
  %..i21.i = select i1 %i.bh, ptr %i.ad, ptr %2
  %i.bi = xor i1 %i.bh, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i, i64 16, i1 false), !noalias !23367
  %i.bj = zext i1 %i.bh to i64
  %i.bk = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.bj ; 3 uses
  %i.bl = zext i1 %i.bi to i64
  %i.bm = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %i.bl ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.017.0.val.i = load i32, ptr %i.bf, align 4, !range !775, !alias.scope !23364, !noundef !29
  %.sroa.015.0.val.i = load i32, ptr %i.ab, align 4, !range !775, !alias.scope !23364, !noundef !29
  %i.bo = icmp samesign ult i32 %.sroa.017.0.val.i, %.sroa.015.0.val.i ; 3 uses
  %..i.i = select i1 %i.bo, ptr %i.ab, ptr %i.bf
  %i.bp = xor i1 %i.bo, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 8 dereferenceable(16) %..i.i, i64 16, i1 false), !noalias !23371
  %.neg.i.i = sext i1 %i.bp to i64
  %i.bq = getelementptr [16 x i8], ptr %i.bf, i64 %.neg.i.i ; 3 uses
  %.neg13.i.i = sext i1 %i.bo to i64
  %i.br = getelementptr [16 x i8], ptr %i.ab, i64 %.neg13.i.i ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.011.0.val.i.1 = load i32, ptr %i.bk, align 4, !range !775, !alias.scope !23364, !noundef !29
  %.sroa.06.0.val.i.1 = load i32, ptr %i.bm, align 4, !range !775, !alias.scope !23364, !noundef !29
  %i.bt = icmp samesign ult i32 %.sroa.011.0.val.i.1, %.sroa.06.0.val.i.1 ; 3 uses
  %..i21.i.1 = select i1 %i.bt, ptr %i.bk, ptr %i.bm
  %i.bu = xor i1 %i.bt, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bn, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.1, i64 16, i1 false), !noalias !23367
  %i.bv = zext i1 %i.bt to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bk, i64 %i.bv ; 3 uses
  %i.bx = zext i1 %i.bu to i64
  %i.by = getelementptr inbounds nuw [16 x i8], ptr %i.bm, i64 %i.bx ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.017.0.val.i.1 = load i32, ptr %i.bq, align 4, !range !775, !alias.scope !23364, !noundef !29
  %.sroa.015.0.val.i.1 = load i32, ptr %i.br, align 4, !range !775, !alias.scope !23364, !noundef !29
  %i.ca = icmp samesign ult i32 %.sroa.017.0.val.i.1, %.sroa.015.0.val.i.1 ; 3 uses
  %..i.i.1 = select i1 %i.ca, ptr %i.br, ptr %i.bq
  %i.cb = xor i1 %i.ca, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bs, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.1, i64 16, i1 false), !noalias !23371
  %.neg.i.i.1 = sext i1 %i.cb to i64
  %i.cc = getelementptr [16 x i8], ptr %i.bq, i64 %.neg.i.i.1 ; 3 uses
  %.neg13.i.i.1 = sext i1 %i.ca to i64
  %i.cd = getelementptr [16 x i8], ptr %i.br, i64 %.neg13.i.i.1 ; 3 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.011.0.val.i.2 = load i32, ptr %i.bw, align 4, !range !775, !alias.scope !23364, !noundef !29
  %.sroa.06.0.val.i.2 = load i32, ptr %i.by, align 4, !range !775, !alias.scope !23364, !noundef !29
  %i.cf = icmp samesign ult i32 %.sroa.011.0.val.i.2, %.sroa.06.0.val.i.2 ; 3 uses
  %..i21.i.2 = select i1 %i.cf, ptr %i.bw, ptr %i.by
  %i.cg = xor i1 %i.cf, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bz, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.2, i64 16, i1 false), !noalias !23367
  %i.ch = zext i1 %i.cf to i64
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.bw, i64 %i.ch ; 3 uses
  %i.cj = zext i1 %i.cg to i64
  %i.ck = getelementptr inbounds nuw [16 x i8], ptr %i.by, i64 %i.cj ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.017.0.val.i.2 = load i32, ptr %i.cc, align 4, !range !775, !alias.scope !23364, !noundef !29
  %.sroa.015.0.val.i.2 = load i32, ptr %i.cd, align 4, !range !775, !alias.scope !23364, !noundef !29
  %i.cm = icmp samesign ult i32 %.sroa.017.0.val.i.2, %.sroa.015.0.val.i.2 ; 3 uses
  %..i.i.2 = select i1 %i.cm, ptr %i.cd, ptr %i.cc
  %i.cn = xor i1 %i.cm, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ce, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.2, i64 16, i1 false), !noalias !23371
  %.neg.i.i.2 = sext i1 %i.cn to i64
  %i.co = getelementptr [16 x i8], ptr %i.cc, i64 %.neg.i.i.2 ; 3 uses
  %.neg13.i.i.2 = sext i1 %i.cm to i64
  %i.cp = getelementptr [16 x i8], ptr %i.cd, i64 %.neg13.i.i.2 ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.011.0.val.i.3 = load i32, ptr %i.ci, align 4, !range !775, !alias.scope !23364, !noundef !29
  %.sroa.06.0.val.i.3 = load i32, ptr %i.ck, align 4, !range !775, !alias.scope !23364, !noundef !29
  %i.cr = icmp samesign ult i32 %.sroa.011.0.val.i.3, %.sroa.06.0.val.i.3 ; 3 uses
  %..i21.i.3 = select i1 %i.cr, ptr %i.ci, ptr %i.ck
  %i.cs = xor i1 %i.cr, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cl, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.3, i64 16, i1 false), !noalias !23367
  %i.ct = zext i1 %i.cr to i64
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.ct
  %i.cv = zext i1 %i.cs to i64
  %i.cw = getelementptr inbounds nuw [16 x i8], ptr %i.ck, i64 %i.cv
  %.sroa.017.0.val.i.3 = load i32, ptr %i.co, align 4, !range !775, !alias.scope !23364, !noundef !29
  %.sroa.015.0.val.i.3 = load i32, ptr %i.cp, align 4, !range !775, !alias.scope !23364, !noundef !29
  %i.cx = icmp samesign ult i32 %.sroa.017.0.val.i.3, %.sroa.015.0.val.i.3 ; 3 uses
  %..i.i.3 = select i1 %i.cx, ptr %i.cp, ptr %i.co
  %i.cy = xor i1 %i.cx, true
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.cq, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.3, i64 16, i1 false), !noalias !23371
  %.neg.i.i.3 = sext i1 %i.cy to i64
  %i.cz = getelementptr [16 x i8], ptr %i.co, i64 %.neg.i.i.3
  %.neg13.i.i.3 = sext i1 %i.cx to i64
  %i.da = getelementptr [16 x i8], ptr %i.cp, i64 %.neg13.i.i.3
  %i.db = getelementptr i8, ptr %i.da, i64 16
  %i.dc = getelementptr i8, ptr %i.cz, i64 16
  %i.dd = icmp ne ptr %i.cw, %i.db
  %i.de = icmp ne ptr %i.cu, %i.dc
  %or.cond.i = select i1 %i.dd, i1 true, i1 %i.de, !prof !491
  br i1 %or.cond.i, label %bb.a, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB1s_11collections5btree3mapINtB2f_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB3c_8adapters10filter_map9FilterMapINtNtB49_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5z_17invocation_parserNtB6j_16InvocationParser16parse_invocations0_0EE0E0EB5z_.exit, !prof !491

bb.a:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #75, !noalias !23364
  unreachable

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1g_7sort_byNCINvXs1o_NtNtNtB1s_11collections5btree3mapINtB2f_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1g_E9from_iterINtNtNtB3c_8adapters10filter_map9FilterMapINtNtB49_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5z_17invocation_parserNtB6j_16InvocationParser16parse_invocations0_0EE0E0EB5z_.exit: ; preds = %.lr.ph.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort19bidirectional_mergeRNtNtCskXtk6F4WjxZ_4just6recipe6RecipeNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1g_11sort_by_keyTRINtNtB20_3vec3VecjEjENCNvMNtB1l_8justfileNtB3a_8Justfile14public_recipess_0E0EB1l_(ptr noalias nofree noundef nonnull readonly align 8 captures(address) %0, i64 noundef range(i64 2, 33) %1, ptr nofree noundef writeonly captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
.lr.ph.preheader:
  %i.a = lshr i64 %1, 1                           ; 2 uses
  %i.b = add nsw i64 %1, -1                       ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %i.b
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.b
  %i.e = getelementptr [8 x i8], ptr %0, i64 %i.a ; 2 uses
  %i.f = getelementptr i8, ptr %i.e, i64 -8
  br label %.lr.ph

._crit_edge:                                      ; preds = %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit38
  %i.g = getelementptr i8, ptr %i.bb, i64 8       ; 2 uses
  %i.h = getelementptr i8, ptr %i.ba, i64 8
  %i.i = and i64 %1, 1
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.c

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit38
  %.sroa.0.014 = phi ptr [ %i.ah, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit38 ], [ %2, %.lr.ph.preheader ] ; 2 uses
  %.sroa.04.013 = phi i64 [ %i.k, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit38 ], [ 0, %.lr.ph.preheader ]
  %.sroa.06.012 = phi ptr [ %i.ag, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit38 ], [ %0, %.lr.ph.preheader ] ; 3 uses
  %.sroa.011.011 = phi ptr [ %i.ae, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit38 ], [ %i.e, %.lr.ph.preheader ] ; 3 uses
  %.sroa.015.010 = phi ptr [ %i.bb, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit38 ], [ %i.f, %.lr.ph.preheader ] ; 3 uses
  %.sroa.017.09 = phi ptr [ %i.ba, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit38 ], [ %i.d, %.lr.ph.preheader ] ; 3 uses
  %.sroa.019.08 = phi ptr [ %i.bc, %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit38 ], [ %i.c, %.lr.ph.preheader ] ; 2 uses
  %i.k = add nuw nsw i64 %.sroa.04.013, 1         ; 2 uses
  %.sroa.011.0.val = load ptr, ptr %.sroa.011.011, align 8, !nonnull !29, !align !174, !noundef !29 ; 3 uses
  %.sroa.06.0.val = load ptr, ptr %.sroa.06.012, align 8, !nonnull !29, !align !174, !noundef !29 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.011.0.val, i64 240
  %i.m = load i64, ptr %i.l, align 8, !noundef !29
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.06.0.val, i64 240
  %i.o = load i64, ptr %i.n, align 8, !noundef !29
  %i.p = getelementptr i8, ptr %.sroa.011.0.val, i64 56
  %.val.i.i.i = load ptr, ptr %i.p, align 8, !nonnull !29, !noundef !29
  %i.q = getelementptr i8, ptr %.sroa.011.0.val, i64 64
  %.val1.i.i.i = load i64, ptr %i.q, align 8, !noundef !29 ; 2 uses
  %i.r = getelementptr i8, ptr %.sroa.06.0.val, i64 56
  %.val2.i.i.i = load ptr, ptr %i.r, align 8, !nonnull !29, !noundef !29
  %i.s = getelementptr i8, ptr %.sroa.06.0.val, i64 64
  %.val3.i.i.i = load i64, ptr %i.s, align 8, !noundef !29 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23375)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23378)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23380)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23383)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23388)
  %..i.i.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.val3.i.i.i, i64 range(i64 0, 1152921504606846976) %.val1.i.i.i) ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %..i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.a:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.t = add nuw nsw i64 %.sroa.01.019.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.t, %..i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %bb.a, %.lr.ph
  %i.u = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 range(i64 0, 1152921504606846976) %.val1.i.i.i, i64 range(i64 0, 1152921504606846976) %.val3.i.i.i)
  br label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit

.loopexit.i.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.v = tail call noundef range(i8 -1, 2) i8 @llvm.ucmp.i8.i64(i64 %.val15.i.i.i.i.i.i.i.i.i, i64 %.val16.i.i.i.i.i.i.i.i.i)
  br label %_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph, %bb.a
  %.sroa.01.019.i.i.i.i.i.i.i.i.i = phi i64 [ %i.t, %bb.a ], [ 0, %.lr.ph ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.val.i.i.i, i64 %.sroa.01.019.i.i.i.i.i.i.i.i.i
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %.val2.i.i.i, i64 %.sroa.01.019.i.i.i.i.i.i.i.i.i
  %.val15.i.i.i.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !23390, !noalias !23391, !noundef !29 ; 2 uses
  %.val16.i.i.i.i.i.i.i.i.i = load i64, ptr %i.x, align 8, !alias.scope !23391, !noalias !23390, !noundef !29 ; 2 uses
  %i.y = icmp eq i64 %.val15.i.i.i.i.i.i.i.i.i, %.val16.i.i.i.i.i.i.i.i.i
  br i1 %i.y, label %bb.a, label %.loopexit.i.i.i.i.i.i.i.i.i

_RNCINvMNtCs4wP2HXfJTCR_5alloc5sliceSRNtNtCskXtk6F4WjxZ_4just6recipe6Recipe11sort_by_keyTRINtNtB7_3vec3VecjEjENCNvMNtBD_8justfileNtB1O_8Justfile14public_recipess_0E0BD_.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi i8 [ %i.u, %._crit_edge.i.i.i.i.i.i.i.i.i ], [ %i.v, %.loopexit.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %cond.i.i.i.i.i = icmp eq i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  %i.z = icmp slt i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i, 0
  %i.aa = icmp ult i64 %i.m, %i.o
  %.sroa.0.0.i.i = select i1 %cond.i.i.i.i.i, i1 %i.aa, i1 %i.z ; 3 uses
  %..i21 = select i1 %.sroa.0.0.i.i, ptr %.sroa.011.011, ptr %.sroa.06.012
  %i.ab = xor i1 %.sroa.0.0.i.i, true
  %i.ac = load i64, ptr %..i21, align 8, !noalias !23392
  store i64 %i.ac, ptr %.sroa.0.014, align 8, !noalias !23392
  %i.ad = zext i1 %.sroa.0.0.i.i to i64
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.011.011, i64 %i.ad ; 4 uses
  %i.af = zext i1 %i.ab to i64
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.sroa.06.012, i64 %i.af ; 5 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.014, i64 8 ; 2 uses
  %.sroa.017.0.val = load ptr, ptr %.sroa.017.09, align 8, !nonnull !29, !align !174, !noundef !29 ; 3 uses
  %.sroa.015.0.val = load ptr, ptr %.sroa.015.010, align 8, !nonnull !29, !align !174, !noundef !29 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.017.0.val, i64 240
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !29
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.015.0.val, i64 240
  %i.al = load i64, ptr %i.ak, align 8, !noundef !29
  %i.am = getelementptr i8, ptr %.sroa.017.0.val, i64 56
  %.val.i.i.i22 = load ptr, ptr %i.am, align 8, !nonnull !29, !noundef !29
  %i.an = getelementptr i8, ptr %.sroa.017.0.val, i64 64
  %.val1.i.i.i23 = load i64, ptr %i.an, align 8, !noundef !29 ; 2 uses
  %i.ao = getelementptr i8, ptr %.sroa.015.0.val, i64 56
  %.val2.i.i.i24 = load ptr, ptr %i.ao, align 8, !nonnull !29, !noundef !29
  %i.ap = getelementptr i8, ptr %.sroa.015.0.val, i64 64
  %.val3.i.i.i25 = load i64, ptr %i.ap, align 8, !noundef !29 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23396)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23399)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23406)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23409)
  %..i.i.i.i.i.i.i.i.i.i26 = tail call noundef i64 @llvm.umin.i64(i64 range(i64 0, 1152921504606846976) %.val3.i.i.i25, i64 range(i64 0, 1152921504606846976) %.val1.i.i.i23) ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i27 = icmp eq i64 %..i.i.i.i.i.i.i.i.i.i26, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i27, label %._crit_edge.i.i.i.i.i.i.i.i.i37, label %.lr.ph.i.i.i.i.i.i.i.i.i28

end_hunk_0
begin_hunk_1_@_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters10filter_map9FilterMapINtNtB3Y_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5o_17invocation_parserNtB68_16InvocationParser16parse_invocations0_0EE0E0EB5o_:bb.a
  %i.cw = add nuw nsw i64 %.sroa.04.09.i.i, 1     ; 2 uses
  %.sroa.011.0.val.i.i = load i32, ptr %.sroa.011.07.i.i, align 4, !range !775, !alias.scope !27597, !noalias !27586, !noundef !29
  %.sroa.06.0.val.i.i = load i32, ptr %.sroa.06.08.i.i, align 4, !range !775, !alias.scope !27597, !noalias !27586, !noundef !29
  %i.cx = icmp samesign ult i32 %.sroa.011.0.val.i.i, %.sroa.06.0.val.i.i ; 3 uses
  %..i21.i.i = select i1 %i.cx, ptr %.sroa.011.07.i.i, ptr %.sroa.06.08.i.i
  %i.cy = xor i1 %i.cx, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.010.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i21.i.i, i64 16, i1 false), !alias.scope !27591, !noalias !27600
  %i.cz = zext i1 %i.cx to i64
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %.sroa.011.07.i.i, i64 %i.cz ; 4 uses
  %i.db = zext i1 %i.cy to i64
  %i.dc = getelementptr inbounds nuw [16 x i8], ptr %.sroa.06.08.i.i, i64 %i.db ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i.i, i64 16 ; 2 uses
  %.sroa.017.0.val.i.i = load i32, ptr %.sroa.017.05.i.i, align 4, !range !775, !alias.scope !27597, !noalias !27586, !noundef !29
  %.sroa.015.0.val.i.i = load i32, ptr %.sroa.015.06.i.i, align 4, !range !775, !alias.scope !27597, !noalias !27586, !noundef !29
  %i.de = icmp samesign ult i32 %.sroa.017.0.val.i.i, %.sroa.015.0.val.i.i ; 3 uses
  %..i.i.i = select i1 %i.de, ptr %.sroa.015.06.i.i, ptr %.sroa.017.05.i.i
  %i.df = xor i1 %i.de, true
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.019.04.i.i, ptr noundef nonnull align 8 dereferenceable(16) %..i.i.i, i64 16, i1 false), !alias.scope !27591, !noalias !27604
  %.neg.i.i.i = sext i1 %i.df to i64
  %i.dg = getelementptr [16 x i8], ptr %.sroa.017.05.i.i, i64 %.neg.i.i.i ; 2 uses
  %.neg13.i.i.i = sext i1 %i.de to i64
  %i.dh = getelementptr [16 x i8], ptr %.sroa.015.06.i.i, i64 %.neg13.i.i.i ; 2 uses
  %i.di = getelementptr inbounds i8, ptr %.sroa.019.04.i.i, i64 -16
  %exitcond.not.i.i = icmp eq i64 %i.cw, %i.j
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.m:                                             ; preds = %._crit_edge.i.i
  %i.dj = icmp ult ptr %i.dc, %i.cs               ; 3 uses
  %.sroa.06.0..sroa.011.0.i.i = select i1 %i.dj, ptr %i.dc, ptr %i.da
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dd, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.06.0..sroa.011.0.i.i, i64 16, i1 false), !alias.scope !27591
  %i.dk = zext i1 %i.dj to i64
  %i.dl = getelementptr inbounds nuw [16 x i8], ptr %i.dc, i64 %i.dk
  %i.dm = xor i1 %i.dj, true
  %i.dn = zext i1 %i.dm to i64
  %i.do = getelementptr inbounds nuw [16 x i8], ptr %i.da, i64 %i.dn
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i.i
  %.sroa.011.1.i.i = phi ptr [ %i.da, %._crit_edge.i.i ], [ %i.do, %bb.m ]
  %.sroa.06.1.i.i = phi ptr [ %i.dc, %._crit_edge.i.i ], [ %i.dl, %bb.m ]
  %i.dp = icmp ne ptr %.sroa.06.1.i.i, %i.cs
  %i.dq = icmp ne ptr %.sroa.011.1.i.i, %i.ct
  %or.cond.i.i = select i1 %i.dp, i1 true, i1 %i.dq, !prof !491
  br i1 %or.cond.i.i, label %bb.o, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB1E_11collections5btree3mapINtB2r_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB3o_8adapters10filter_map9FilterMapINtNtB4l_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5L_17invocation_parserNtB6v_16InvocationParser16parse_invocations0_0EE0E0EB5L_.exit, !prof !491

bb.o:                                             ; preds = %bb.n
  invoke void @_RNvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort22panic_on_ord_violation() #75
          to label %.noexc.i unwind label %bb.p, !noalias !27586

.noexc.i:                                         ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.o
  %i.dr = landingpad { ptr, i32 }
          cleanup
  %i.ds = shl nuw nsw i64 %.sroa.16.0.lcssa, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph.lcssa118, ptr nonnull align 8 %2, i64 %i.ds, i1 false), !alias.scope !27591, !noalias !27608
  resume { ptr, i32 } %i.dr

.lr.ph.i:                                         ; preds = %bb.j, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.i
  %.sroa.05.08.i = phi i64 [ %i.ed, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.i ], [ %.sroa.0.0.i, %bb.j ] ; 4 uses
  %i.dt = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph.lcssa118, i64 %.sroa.05.08.i
  %.idx = shl nuw nsw i64 %.sroa.05.08.i, 4
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 %.idx ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %i.dt, i64 16, i1 false), !alias.scope !27591
  %i.dv = getelementptr inbounds i8, ptr %i.du, i64 -16 ; 3 uses
  %.val9.i40.i = load i32, ptr %i.du, align 8, !range !775, !alias.scope !27589, !noalias !27586, !noundef !29 ; 3 uses
  %.val10.i.i = load i32, ptr %i.dv, align 8, !range !775, !alias.scope !27589, !noalias !27586, !noundef !29
  %i.dw = icmp samesign ult i32 %.val9.i40.i, %.val10.i.i
  br i1 %i.dw, label %bb.q, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.i

bb.q:                                             ; preds = %.lr.ph.i
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dy = load i64, ptr %i.dx, align 8, !alias.scope !27589, !noalias !27586, !noundef !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.du, ptr noundef nonnull align 8 dereferenceable(16) %i.dv, i64 16, i1 false), !alias.scope !27589, !noalias !27586
  %i.dz = icmp eq i64 %.sroa.05.08.i, 1
  br i1 %i.dz, label %._crit_edge302, label %.lr.ph301

bb.r:                                             ; preds = %.lr.ph301
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i41.i299, ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i64 16, i1 false), !alias.scope !27589, !noalias !27586
  %i.ea = icmp eq ptr %i.eb, %2
  br i1 %i.ea, label %._crit_edge302, label %.lr.ph301

.lr.ph301:                                        ; preds = %bb.q, %bb.r
  %.sroa.0.0.i41.i299 = phi ptr [ %i.eb, %bb.r ], [ %i.dv, %bb.q ] ; 3 uses
  %i.eb = getelementptr inbounds i8, ptr %.sroa.0.0.i41.i299, i64 -16 ; 4 uses
  %.val8.i42.i = load i32, ptr %i.eb, align 4, !range !775, !alias.scope !27589, !noalias !27586, !noundef !29
  %i.ec = icmp samesign ult i32 %.val9.i40.i, %.val8.i42.i
  br i1 %i.ec, label %bb.r, label %._crit_edge302

._crit_edge302:                                   ; preds = %bb.r, %.lr.ph301, %bb.q
  %.sroa.0.0.i41.lcssa.i = phi ptr [ %2, %bb.q ], [ %2, %bb.r ], [ %.sroa.0.0.i41.i299, %.lr.ph301 ] ; 2 uses
  store i32 %.val9.i40.i, ptr %.sroa.0.0.i41.lcssa.i, align 8, !alias.scope !27589, !noalias !27592
  %.sroa.45.0..sroa.0.0.lcssa.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.lcssa.i, i64 8
  store i64 %i.dy, ptr %.sroa.45.0..sroa.0.0.lcssa.sroa_idx.i.i, align 8, !alias.scope !27589, !noalias !27592
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.i: ; preds = %._crit_edge302, %.lr.ph.i
  %i.ed = add nuw i64 %.sroa.05.08.i, 1           ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.ed, %i.j
  br i1 %exitcond.not.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %bb.b
  %.sroa.16.0120.lcssa = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph126, %.lr.ph ]
  call fastcc void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable5drift4sortTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBW_7sort_byNCINvXs1o_NtNtNtB18_11collections5btree3mapINtB1U_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorBW_E9from_iterINtNtNtB2R_8adapters10filter_map9FilterMapINtNtB3N_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5d_17invocation_parserNtB5X_16InvocationParser16parse_invocations0_0EE0E0EB5d_(ptr noalias nofree noundef nonnull align 8 %.sroa.0.0.ph127, i64 noundef %.sroa.16.0120.lcssa, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i1 noundef zeroext true, ptr noalias nofree noundef align 8 dereferenceable(8) %6)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB1E_11collections5btree3mapINtB2r_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB3o_8adapters10filter_map9FilterMapINtNtB4l_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5L_17invocation_parserNtB6v_16InvocationParser16parse_invocations0_0EE0E0EB5L_.exit

.lr.ph295:                                        ; preds = %.lr.ph, %bb.b
  %.sroa.025.0119294 = phi i32 [ %i.ee, %bb.b ], [ %.sroa.025.0.ph125, %.lr.ph ]
  %.sroa.16.0120293 = phi i64 [ %.sroa.27.2.lcssa.i, %bb.b ], [ %.sroa.16.0.ph126, %.lr.ph ] ; 21 uses
  %i.ee = add i32 %.sroa.025.0119294, -1          ; 4 uses
  %i.ef = lshr i64 %.sroa.16.0120293, 3           ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ef, 6
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %.idx.i ; 3 uses
  %.idx2.i = mul nuw nsw i64 %i.ef, 112
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %.idx2.i ; 3 uses
  %i.ei = icmp samesign ult i64 %.sroa.16.0120293, 64
  br i1 %i.ei, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3TcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB1X_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB2U_8adapters10filter_map9FilterMapINtNtB3Q_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5g_17invocation_parserNtB60_16InvocationParser16parse_invocations0_0EE0E0EB5g_.exit.i, label %bb.s

bb.s:                                             ; preds = %.lr.ph295
  %i.ej = call fastcc noundef ptr @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot11median3_recTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB14_7sort_byNCINvXs1o_NtNtNtB1g_11collections5btree3mapINtB23_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB14_E9from_iterINtNtNtB30_8adapters10filter_map9FilterMapINtNtB3X_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5n_17invocation_parserNtB67_16InvocationParser16parse_invocations0_0EE0E0EB5n_(ptr noundef nonnull readonly align 8 %.sroa.0.0.ph127, ptr noundef readonly %i.eg, ptr noundef readonly %i.eh, i64 noundef %i.ef)
  br label %bb.t

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3TcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB1X_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB2U_8adapters10filter_map9FilterMapINtNtB3Q_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5g_17invocation_parserNtB60_16InvocationParser16parse_invocations0_0EE0E0EB5g_.exit.i: ; preds = %.lr.ph295
  %.val6.i = load i32, ptr %.sroa.0.0.ph127, align 4, !range !775, !alias.scope !27613, !noundef !29 ; 2 uses
  %.val7.i = load i32, ptr %i.eg, align 4, !range !775, !alias.scope !27613, !noundef !29 ; 2 uses
  %i.ek = icmp samesign ult i32 %.val6.i, %.val7.i ; 2 uses
  %.val5.i = load i32, ptr %i.eh, align 4, !range !775, !alias.scope !27613, !noundef !29 ; 2 uses
  %i.el = icmp samesign ult i32 %.val6.i, %.val5.i
  %i.em = xor i1 %i.ek, %i.el
  %i.en = icmp samesign ult i32 %.val7.i, %.val5.i
  %i.eo = xor i1 %i.ek, %i.en
  %..i.i = select i1 %i.eo, ptr %i.eh, ptr %i.eg
  %.sroa.0.0.i.i = select i1 %i.em, ptr %.sroa.0.0.ph127, ptr %..i.i
  br label %bb.t

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB1E_11collections5btree3mapINtB2r_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB3o_8adapters10filter_map9FilterMapINtNtB4l_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5L_17invocation_parserNtB6v_16InvocationParser16parse_invocations0_0EE0E0EB5L_.exit: ; preds = %.outer._crit_edge.thread, %bb.n, %.outer._crit_edge, %.lr.ph._crit_edge
  ret void

bb.t:                                             ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3TcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB1X_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB2U_8adapters10filter_map9FilterMapINtNtB3Q_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5g_17invocation_parserNtB60_16InvocationParser16parse_invocations0_0EE0E0EB5g_.exit.i, %bb.s
  %.sroa.0.0.i.sink.i = phi ptr [ %.sroa.0.0.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared5pivot7median3TcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSBZ_7sort_byNCINvXs1o_NtNtNtB1b_11collections5btree3mapINtB1X_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorBZ_E9from_iterINtNtNtB2U_8adapters10filter_map9FilterMapINtNtB3Q_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5g_17invocation_parserNtB60_16InvocationParser16parse_invocations0_0EE0E0EB5g_.exit.i ], [ %i.ej, %bb.s ]
  %i.ep = ptrtoint ptr %.sroa.0.0.i.sink.i to i64
  %i.eq = sub nuw i64 %i.ep, %i.d                 ; 2 uses
  %.sroa.0.0.i37 = lshr exact i64 %i.eq, 4        ; 3 uses
  %i.er = icmp samesign ult i64 %.sroa.0.0.i37, %.sroa.16.0120293
  call void @llvm.assume(i1 %i.er)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph127, i64 %i.eq ; 6 uses
  %i.et = load i32, ptr %i.es, align 8            ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.es, i64 8
  %i.ev = load i64, ptr %i.eu, align 8
  store i32 %i.et, ptr %i.a, align 8
  store i64 %i.ev, ptr %i.c, align 8
  br i1 %.not, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %.sroa.028.0.val = load i32, ptr %.sroa.028.0.ph124, align 8, !range !775, !noundef !29
  %i.ew = icmp ult i32 %.sroa.028.0.val, %i.et
  br i1 %i.ew, label %bb.v, label %.thread

bb.v:                                             ; preds = %bb.t, %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !27616)
  %.not83 = icmp samesign ult i64 %3, %.sroa.16.0120293
  br i1 %.not83, label %bb.x, label %bb.w, !prof !491

bb.w:                                             ; preds = %bb.v
  %i.ex = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0120293 ; 4 uses
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  call void @llvm.trap()
  unreachable

bb.y:                                             ; preds = %bb.aa, %bb.w
  %.sroa.43.0.i = phi ptr [ %i.ex, %bb.w ], [ %i.gk, %bb.aa ] ; 2 uses
  %.sroa.27.0.i = phi i64 [ 0, %bb.w ], [ %.sroa.27.2.lcssa.i, %bb.aa ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.0.0.ph127, %bb.w ], [ %i.gm, %bb.aa ] ; 3 uses
  %.sroa.0.0.i38 = phi i64 [ %.sroa.0.0.i37, %bb.w ], [ %.sroa.16.0120293, %bb.aa ] ; 3 uses
  %i.ey = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i38, i64 3)
  %i.ez = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %i.ey ; 2 uses
  %i.fa = icmp ult ptr %.sroa.9.0.i, %i.ez
  br i1 %i.fa, label %.lr.ph.i40, label %._crit_edge.i

.lr.ph.i40:                                       ; preds = %bb.y
  %.val22.i = load i32, ptr %i.es, align 8, !range !775, !alias.scope !27619, !noalias !27616, !noundef !29 ; 4 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %.lr.ph.i40
  %.sroa.9.131.i = phi ptr [ %.sroa.9.0.i, %.lr.ph.i40 ], [ %i.fy, %bb.z ] ; 6 uses
  %.sroa.27.130.i = phi i64 [ %.sroa.27.0.i, %.lr.ph.i40 ], [ %i.fx, %bb.z ] ; 2 uses
  %.sroa.43.129.i = phi ptr [ %.sroa.43.0.i, %.lr.ph.i40 ], [ %i.fu, %bb.z ] ; 4 uses
  %.val21.i = load i32, ptr %.sroa.9.131.i, align 4, !range !775, !alias.scope !27619, !noalias !27616, !noundef !29
  %i.fb = icmp samesign ult i32 %.val21.i, %.val22.i ; 2 uses
  %i.fc = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -16
  %.sroa.01.0.i.i = select i1 %i.fb, ptr %2, ptr %i.fc
  %i.fd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i, i64 %.sroa.27.130.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fd, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i, i64 16, i1 false), !alias.scope !27621, !noalias !27622
  %i.fe = zext i1 %i.fb to i64
  %i.ff = add i64 %.sroa.27.130.i, %i.fe          ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 16 ; 2 uses
  %.val19.i = load i32, ptr %i.fg, align 4, !range !775, !alias.scope !27619, !noalias !27616, !noundef !29
  %i.fh = icmp samesign ult i32 %.val19.i, %.val22.i ; 2 uses
  %i.fi = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -32
  %.sroa.01.0.i23.i = select i1 %i.fh, ptr %2, ptr %i.fi
  %i.fj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i, i64 %i.ff
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fj, ptr noundef nonnull align 8 dereferenceable(16) %i.fg, i64 16, i1 false), !alias.scope !27621, !noalias !27625
  %i.fk = zext i1 %i.fh to i64
  %i.fl = add i64 %i.ff, %i.fk                    ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 32 ; 2 uses
  %.val17.i = load i32, ptr %i.fm, align 4, !range !775, !alias.scope !27619, !noalias !27616, !noundef !29
  %i.fn = icmp samesign ult i32 %.val17.i, %.val22.i ; 2 uses
  %i.fo = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -48
  %.sroa.01.0.i24.i = select i1 %i.fn, ptr %2, ptr %i.fo
  %i.fp = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i, i64 %i.fl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fp, ptr noundef nonnull align 8 dereferenceable(16) %i.fm, i64 16, i1 false), !alias.scope !27621, !noalias !27628
  %i.fq = zext i1 %i.fn to i64
  %i.fr = add i64 %i.fl, %i.fq                    ; 2 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 48 ; 2 uses
  %.val15.i = load i32, ptr %i.fs, align 4, !range !775, !alias.scope !27619, !noalias !27616, !noundef !29
  %i.ft = icmp samesign ult i32 %.val15.i, %.val22.i ; 2 uses
  %i.fu = getelementptr inbounds i8, ptr %.sroa.43.129.i, i64 -64 ; 3 uses
  %.sroa.01.0.i25.i = select i1 %i.ft, ptr %2, ptr %i.fu
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i, i64 %i.fr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fv, ptr noundef nonnull align 8 dereferenceable(16) %i.fs, i64 16, i1 false), !alias.scope !27621, !noalias !27631
  %i.fw = zext i1 %i.ft to i64
  %i.fx = add i64 %i.fr, %i.fw                    ; 2 uses
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i, i64 64 ; 3 uses
  %i.fz = icmp ult ptr %i.fy, %i.ez
  br i1 %i.fz, label %bb.z, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.z, %bb.y
  %.sroa.43.1.lcssa.i = phi ptr [ %.sroa.43.0.i, %bb.y ], [ %i.fu, %bb.z ] ; 2 uses
  %.sroa.27.1.lcssa.i = phi i64 [ %.sroa.27.0.i, %bb.y ], [ %i.fx, %bb.z ] ; 2 uses
  %.sroa.9.1.lcssa.i = phi ptr [ %.sroa.9.0.i, %bb.y ], [ %i.fy, %bb.z ] ; 3 uses
  %i.ga = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.0.0.i38 ; 2 uses
  %i.gb = icmp ult ptr %.sroa.9.1.lcssa.i, %i.ga
  br i1 %i.gb, label %.lr.ph38.i, label %._crit_edge39.i

._crit_edge39.i:                                  ; preds = %.lr.ph38.i, %._crit_edge.i
  %.sroa.43.2.lcssa.i = phi ptr [ %.sroa.43.1.lcssa.i, %._crit_edge.i ], [ %i.ge, %.lr.ph38.i ]
  %.sroa.27.2.lcssa.i = phi i64 [ %.sroa.27.1.lcssa.i, %._crit_edge.i ], [ %i.gh, %.lr.ph38.i ] ; 14 uses
  %.sroa.9.2.lcssa.i = phi ptr [ %.sroa.9.1.lcssa.i, %._crit_edge.i ], [ %i.gi, %.lr.ph38.i ] ; 2 uses
  %i.gc = icmp eq i64 %.sroa.0.0.i38, %.sroa.16.0120293
  br i1 %i.gc, label %bb.ab, label %bb.aa

.lr.ph38.i:                                       ; preds = %._crit_edge.i, %.lr.ph38.i
  %.sroa.9.236.i = phi ptr [ %i.gi, %.lr.ph38.i ], [ %.sroa.9.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.sroa.27.235.i = phi i64 [ %i.gh, %.lr.ph38.i ], [ %.sroa.27.1.lcssa.i, %._crit_edge.i ] ; 2 uses
  %.sroa.43.234.i = phi ptr [ %i.ge, %.lr.ph38.i ], [ %.sroa.43.1.lcssa.i, %._crit_edge.i ]
  %.val.i = load i32, ptr %.sroa.9.236.i, align 4, !range !775, !alias.scope !27619, !noalias !27616, !noundef !29
  %.val14.i = load i32, ptr %i.es, align 8, !range !775, !alias.scope !27619, !noalias !27616, !noundef !29
  %i.gd = icmp samesign ult i32 %.val.i, %.val14.i ; 2 uses
  %i.ge = getelementptr inbounds i8, ptr %.sroa.43.234.i, i64 -16 ; 3 uses
  %.sroa.01.0.i26.i = select i1 %i.gd, ptr %2, ptr %i.ge
  %i.gf = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i, i64 %.sroa.27.235.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gf, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i, i64 16, i1 false), !alias.scope !27621, !noalias !27634
  %i.gg = zext i1 %i.gd to i64
  %i.gh = add i64 %.sroa.27.235.i, %i.gg          ; 2 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i, i64 16 ; 3 uses
  %i.gj = icmp ult ptr %i.gi, %i.ga
  br i1 %i.gj, label %.lr.ph38.i, label %._crit_edge39.i

bb.aa:                                            ; preds = %._crit_edge39.i
  %i.gk = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i, i64 -16 ; 2 uses
  %i.gl = getelementptr inbounds nuw [16 x i8], ptr %i.gk, i64 %.sroa.27.2.lcssa.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gl, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i, i64 16, i1 false), !alias.scope !27621, !noalias !27637
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i, i64 16
  br label %bb.y

bb.ab:                                            ; preds = %._crit_edge39.i
  %i.gn = shl nuw nsw i64 %.sroa.27.2.lcssa.i, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph127, ptr nonnull align 8 %2, i64 %i.gn, i1 false), !alias.scope !27621
  %i.go = sub i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i ; 4 uses
  %.not47.i = icmp eq i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i
  br i1 %.not47.i, label %.loopexit, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.ab
  %i.gp = getelementptr [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.27.2.lcssa.i ; 3 uses
  %.neg = add i64 %.sroa.27.2.lcssa.i, 1
  %xtraiter = and i64 %i.go, 1
  %i.gq = icmp eq i64 %.sroa.16.0120293, %.neg
  br i1 %i.gq, label %.epil.preheader, label %.lr.ph45.i.new

.lr.ph45.i.new:                                   ; preds = %.lr.ph45.i
  %unroll_iter = and i64 %i.go, -2
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %.lr.ph45.i.new
  %.sroa.07.043.i = phi i64 [ 0, %.lr.ph45.i.new ], [ %i.gu, %bb.ac ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph45.i.new ], [ %niter.next.1, %bb.ac ]
  %i.gr = xor i64 %.sroa.07.043.i, -1
  %i.gs = getelementptr [16 x i8], ptr %i.ex, i64 %i.gr
  %i.gt = getelementptr [16 x i8], ptr %i.gp, i64 %.sroa.07.043.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gt, ptr noundef nonnull align 8 dereferenceable(16) %i.gs, i64 16, i1 false), !alias.scope !27621
  %i.gu = add nuw i64 %.sroa.07.043.i, 2          ; 2 uses
  %i.gv = xor i64 %.sroa.07.043.i, -2
  %i.gw = getelementptr [16 x i8], ptr %i.ex, i64 %i.gv
  %i.gx = getelementptr [16 x i8], ptr %i.gp, i64 %.sroa.07.043.i
  %i.gy = getelementptr i8, ptr %i.gx, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.gy, ptr noundef nonnull align 8 dereferenceable(16) %i.gw, i64 16, i1 false), !alias.scope !27621
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %bb.ac

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.ac
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph45.i
  %.sroa.07.043.i.epil.init = phi i64 [ 0, %.lr.ph45.i ], [ %i.gu, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod379 = trunc i64 %i.go to i1
  call void @llvm.assume(i1 %lcmp.mod379)
  %i.gz = xor i64 %.sroa.07.043.i.epil.init, -1
  %i.ha = getelementptr [16 x i8], ptr %i.ex, i64 %i.gz
  %i.hb = getelementptr [16 x i8], ptr %i.gp, i64 %.sroa.07.043.i.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hb, ptr noundef nonnull align 8 dereferenceable(16) %i.ha, i64 16, i1 false), !alias.scope !27621
  br label %.loopexit

.loopexit:                                        ; preds = %.epil.preheader, %.loopexit.loopexit.unr-lcssa, %bb.ab
  %i.hc = icmp eq i64 %.sroa.27.2.lcssa.i, 0
  br i1 %i.hc, label %.thread, label %bb.ad

bb.ad:                                            ; preds = %.loopexit
  %.not.i41 = icmp ugt i64 %.sroa.27.2.lcssa.i, %.sroa.16.0120293
  br i1 %.not.i41, label %bb.ae, label %_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit, !prof !340

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking9panic_fmt(ptr noundef nonnull @786, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @390) #75, !noalias !27640
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core5sliceSTcjE12split_at_mutCskXtk6F4WjxZ_4just.exit: ; preds = %bb.ad
  %i.hd = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.27.2.lcssa.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph127) ]
  call void @_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort9quicksortTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB15_7sort_byNCINvXs1o_NtNtNtB1h_11collections5btree3mapINtB24_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB15_E9from_iterINtNtNtB31_8adapters10filter_map9FilterMapINtNtB3Y_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5o_17invocation_parserNtB68_16InvocationParser16parse_invocations0_0EE0E0EB5o_(ptr noalias nofree noundef nonnull align 8 %i.hd, i64 noundef %i.go, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, i32 noundef %i.ee, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %6) #74
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.he = icmp ult i64 %.sroa.27.2.lcssa.i, 33
  br i1 %i.he, label %.outer._crit_edge, label %bb.b

.thread:                                          ; preds = %bb.u, %.loopexit
  call void @llvm.experimental.noalias.scope.decl(metadata !27644)
  %.not84 = icmp samesign ult i64 %3, %.sroa.16.0120293
  br i1 %.not84, label %bb.ag, label %bb.af, !prof !491

bb.af:                                            ; preds = %.thread
  %i.hf = getelementptr [16 x i8], ptr %2, i64 %.sroa.16.0120293 ; 4 uses
  br label %bb.ah

bb.ag:                                            ; preds = %.thread
  call void @llvm.trap()
  unreachable

bb.ah:                                            ; preds = %bb.aj, %bb.af
  %.sroa.43.0.i44 = phi ptr [ %i.hf, %bb.af ], [ %i.is, %bb.aj ] ; 2 uses
  %.sroa.27.0.i45 = phi i64 [ 0, %bb.af ], [ %i.iu, %bb.aj ] ; 2 uses
  %.sroa.9.0.i46 = phi ptr [ %.sroa.0.0.ph127, %bb.af ], [ %i.iv, %bb.aj ] ; 3 uses
  %.sroa.0.0.i47 = phi i64 [ %.sroa.0.0.i37, %bb.af ], [ %.sroa.16.0120293, %bb.aj ] ; 3 uses
  %i.hg = call i64 @llvm.usub.sat.i64(i64 %.sroa.0.0.i47, i64 3)
  %i.hh = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %i.hg ; 2 uses
  %i.hi = icmp ult ptr %.sroa.9.0.i46, %i.hh
  br i1 %i.hi, label %.lr.ph.i67, label %._crit_edge.i48

.lr.ph.i67:                                       ; preds = %bb.ah
  %.val22.i68 = load i32, ptr %i.es, align 4, !range !775, !alias.scope !27647, !noalias !27644, !noundef !29 ; 4 uses
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ai, %.lr.ph.i67
  %.sroa.9.131.i69 = phi ptr [ %.sroa.9.0.i46, %.lr.ph.i67 ], [ %i.ig, %bb.ai ] ; 6 uses
  %.sroa.27.130.i70 = phi i64 [ %.sroa.27.0.i45, %.lr.ph.i67 ], [ %i.if, %bb.ai ] ; 2 uses
  %.sroa.43.129.i71 = phi ptr [ %.sroa.43.0.i44, %.lr.ph.i67 ], [ %i.ic, %bb.ai ] ; 4 uses
  %.val21.i72 = load i32, ptr %.sroa.9.131.i69, align 4, !range !775, !alias.scope !27647, !noalias !27644, !noundef !29
  %i.hj = icmp samesign uge i32 %.val22.i68, %.val21.i72 ; 2 uses
  %i.hk = getelementptr inbounds i8, ptr %.sroa.43.129.i71, i64 -16
  %.sroa.01.0.i.i73 = select i1 %i.hj, ptr %2, ptr %i.hk
  %i.hl = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i.i73, i64 %.sroa.27.130.i70
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hl, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.131.i69, i64 16, i1 false), !alias.scope !27649, !noalias !27650
  %i.hm = zext i1 %i.hj to i64
  %i.hn = add i64 %.sroa.27.130.i70, %i.hm        ; 2 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i69, i64 16 ; 2 uses
  %.val19.i74 = load i32, ptr %i.ho, align 4, !range !775, !alias.scope !27647, !noalias !27644, !noundef !29
  %i.hp = icmp samesign uge i32 %.val22.i68, %.val19.i74 ; 2 uses
  %i.hq = getelementptr inbounds i8, ptr %.sroa.43.129.i71, i64 -32
  %.sroa.01.0.i23.i75 = select i1 %i.hp, ptr %2, ptr %i.hq
  %i.hr = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i23.i75, i64 %i.hn
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hr, ptr noundef nonnull align 8 dereferenceable(16) %i.ho, i64 16, i1 false), !alias.scope !27649, !noalias !27653
  %i.hs = zext i1 %i.hp to i64
  %i.ht = add i64 %i.hn, %i.hs                    ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i69, i64 32 ; 2 uses
  %.val17.i76 = load i32, ptr %i.hu, align 4, !range !775, !alias.scope !27647, !noalias !27644, !noundef !29
  %i.hv = icmp samesign uge i32 %.val22.i68, %.val17.i76 ; 2 uses
  %i.hw = getelementptr inbounds i8, ptr %.sroa.43.129.i71, i64 -48
  %.sroa.01.0.i24.i77 = select i1 %i.hv, ptr %2, ptr %i.hw
  %i.hx = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i24.i77, i64 %i.ht
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.hx, ptr noundef nonnull align 8 dereferenceable(16) %i.hu, i64 16, i1 false), !alias.scope !27649, !noalias !27656
  %i.hy = zext i1 %i.hv to i64
  %i.hz = add i64 %i.ht, %i.hy                    ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i69, i64 48 ; 2 uses
  %.val15.i78 = load i32, ptr %i.ia, align 4, !range !775, !alias.scope !27647, !noalias !27644, !noundef !29
  %i.ib = icmp samesign uge i32 %.val22.i68, %.val15.i78 ; 2 uses
  %i.ic = getelementptr inbounds i8, ptr %.sroa.43.129.i71, i64 -64 ; 3 uses
  %.sroa.01.0.i25.i79 = select i1 %i.ib, ptr %2, ptr %i.ic
  %i.id = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i25.i79, i64 %i.hz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.id, ptr noundef nonnull align 8 dereferenceable(16) %i.ia, i64 16, i1 false), !alias.scope !27649, !noalias !27659
  %i.ie = zext i1 %i.ib to i64
  %i.if = add i64 %i.hz, %i.ie                    ; 2 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %.sroa.9.131.i69, i64 64 ; 3 uses
  %i.ih = icmp ult ptr %i.ig, %i.hh
  br i1 %i.ih, label %bb.ai, label %._crit_edge.i48

._crit_edge.i48:                                  ; preds = %bb.ai, %bb.ah
  %.sroa.43.1.lcssa.i49 = phi ptr [ %.sroa.43.0.i44, %bb.ah ], [ %i.ic, %bb.ai ] ; 2 uses
  %.sroa.27.1.lcssa.i50 = phi i64 [ %.sroa.27.0.i45, %bb.ah ], [ %i.if, %bb.ai ] ; 2 uses
  %.sroa.9.1.lcssa.i51 = phi ptr [ %.sroa.9.0.i46, %bb.ah ], [ %i.ig, %bb.ai ] ; 3 uses
  %i.ii = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.0.0.i47 ; 2 uses
  %i.ij = icmp ult ptr %.sroa.9.1.lcssa.i51, %i.ii
  br i1 %i.ij, label %.lr.ph38.i60, label %._crit_edge39.i52

._crit_edge39.i52:                                ; preds = %.lr.ph38.i60, %._crit_edge.i48
  %.sroa.43.2.lcssa.i53 = phi ptr [ %.sroa.43.1.lcssa.i49, %._crit_edge.i48 ], [ %i.im, %.lr.ph38.i60 ]
  %.sroa.27.2.lcssa.i54 = phi i64 [ %.sroa.27.1.lcssa.i50, %._crit_edge.i48 ], [ %i.ip, %.lr.ph38.i60 ] ; 10 uses
  %.sroa.9.2.lcssa.i55 = phi ptr [ %.sroa.9.1.lcssa.i51, %._crit_edge.i48 ], [ %i.iq, %.lr.ph38.i60 ] ; 2 uses
  %i.ik = icmp eq i64 %.sroa.0.0.i47, %.sroa.16.0120293
  br i1 %i.ik, label %bb.ak, label %bb.aj

.lr.ph38.i60:                                     ; preds = %._crit_edge.i48, %.lr.ph38.i60
  %.sroa.9.236.i61 = phi ptr [ %i.iq, %.lr.ph38.i60 ], [ %.sroa.9.1.lcssa.i51, %._crit_edge.i48 ] ; 3 uses
  %.sroa.27.235.i62 = phi i64 [ %i.ip, %.lr.ph38.i60 ], [ %.sroa.27.1.lcssa.i50, %._crit_edge.i48 ] ; 2 uses
  %.sroa.43.234.i63 = phi ptr [ %i.im, %.lr.ph38.i60 ], [ %.sroa.43.1.lcssa.i49, %._crit_edge.i48 ]
  %.val.i64 = load i32, ptr %.sroa.9.236.i61, align 4, !range !775, !alias.scope !27647, !noalias !27644, !noundef !29
  %.val14.i65 = load i32, ptr %i.es, align 4, !range !775, !alias.scope !27647, !noalias !27644, !noundef !29
  %i.il = icmp samesign uge i32 %.val14.i65, %.val.i64 ; 2 uses
  %i.im = getelementptr inbounds i8, ptr %.sroa.43.234.i63, i64 -16 ; 3 uses
  %.sroa.01.0.i26.i66 = select i1 %i.il, ptr %2, ptr %i.im
  %i.in = getelementptr inbounds nuw [16 x i8], ptr %.sroa.01.0.i26.i66, i64 %.sroa.27.235.i62
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.in, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.236.i61, i64 16, i1 false), !alias.scope !27649, !noalias !27662
  %i.io = zext i1 %i.il to i64
  %i.ip = add i64 %.sroa.27.235.i62, %i.io        ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %.sroa.9.236.i61, i64 16 ; 3 uses
  %i.ir = icmp ult ptr %i.iq, %i.ii
  br i1 %i.ir, label %.lr.ph38.i60, label %._crit_edge39.i52

bb.aj:                                            ; preds = %._crit_edge39.i52
  %i.is = getelementptr inbounds i8, ptr %.sroa.43.2.lcssa.i53, i64 -16
  %i.it = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.sroa.27.2.lcssa.i54
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.it, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.2.lcssa.i55, i64 16, i1 false), !alias.scope !27649, !noalias !27665
  %i.iu = add i64 %.sroa.27.2.lcssa.i54, 1
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.9.2.lcssa.i55, i64 16
  br label %bb.ah

bb.ak:                                            ; preds = %._crit_edge39.i52
  %i.iw = shl nuw nsw i64 %.sroa.27.2.lcssa.i54, 4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.0.0.ph127, ptr nonnull align 8 %2, i64 %i.iw, i1 false), !alias.scope !27649
  %i.ix = sub i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i54 ; 6 uses
  %.not47.i56 = icmp eq i64 %.sroa.16.0120293, %.sroa.27.2.lcssa.i54
  br i1 %.not47.i56, label %.outer._crit_edge.thread, label %.lr.ph45.i57

.lr.ph45.i57:                                     ; preds = %bb.ak
  %i.iy = getelementptr [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.27.2.lcssa.i54 ; 3 uses
  %.neg392 = add i64 %.sroa.27.2.lcssa.i54, 1
  %xtraiter387 = and i64 %i.ix, 1
  %i.iz = icmp eq i64 %.sroa.16.0120293, %.neg392
  br i1 %i.iz, label %.epil.preheader380, label %.lr.ph45.i57.new

.lr.ph45.i57.new:                                 ; preds = %.lr.ph45.i57
  %unroll_iter390 = and i64 %i.ix, -2
  br label %bb.al

bb.al:                                            ; preds = %bb.al, %.lr.ph45.i57.new
  %.sroa.07.043.i58 = phi i64 [ 0, %.lr.ph45.i57.new ], [ %i.jd, %bb.al ] ; 5 uses
  %niter391 = phi i64 [ 0, %.lr.ph45.i57.new ], [ %niter391.next.1, %bb.al ]
  %i.ja = xor i64 %.sroa.07.043.i58, -1
  %i.jb = getelementptr [16 x i8], ptr %i.hf, i64 %i.ja
  %i.jc = getelementptr [16 x i8], ptr %i.iy, i64 %.sroa.07.043.i58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jc, ptr noundef nonnull align 8 dereferenceable(16) %i.jb, i64 16, i1 false), !alias.scope !27649
  %i.jd = add nuw i64 %.sroa.07.043.i58, 2        ; 2 uses
  %i.je = xor i64 %.sroa.07.043.i58, -2
  %i.jf = getelementptr [16 x i8], ptr %i.hf, i64 %i.je
  %i.jg = getelementptr [16 x i8], ptr %i.iy, i64 %.sroa.07.043.i58
  %i.jh = getelementptr i8, ptr %i.jg, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jh, ptr noundef nonnull align 8 dereferenceable(16) %i.jf, i64 16, i1 false), !alias.scope !27649
  %niter391.next.1 = add i64 %niter391, 2         ; 2 uses
  %niter391.ncmp.1 = icmp eq i64 %niter391.next.1, %unroll_iter390
  br i1 %niter391.ncmp.1, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionTcjENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB1L_11collections5btree3mapINtB2y_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB3v_8adapters10filter_map9FilterMapINtNtB4s_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5S_17invocation_parserNtB6C_16InvocationParser16parse_invocations0_0EE0E0E0EB5S_.exit.unr-lcssa, label %bb.al

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionTcjENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB1L_11collections5btree3mapINtB2y_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB3v_8adapters10filter_map9FilterMapINtNtB4s_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5S_17invocation_parserNtB6C_16InvocationParser16parse_invocations0_0EE0E0E0EB5S_.exit.unr-lcssa: ; preds = %bb.al
  %lcmp.mod388.not = icmp eq i64 %xtraiter387, 0
  br i1 %lcmp.mod388.not, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionTcjENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB1L_11collections5btree3mapINtB2y_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB3v_8adapters10filter_map9FilterMapINtNtB4s_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5S_17invocation_parserNtB6C_16InvocationParser16parse_invocations0_0EE0E0E0EB5S_.exit, label %.epil.preheader380

.epil.preheader380:                               ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionTcjENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB1L_11collections5btree3mapINtB2y_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB3v_8adapters10filter_map9FilterMapINtNtB4s_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5S_17invocation_parserNtB6C_16InvocationParser16parse_invocations0_0EE0E0E0EB5S_.exit.unr-lcssa, %.lr.ph45.i57
  %.sroa.07.043.i58.epil.init = phi i64 [ 0, %.lr.ph45.i57 ], [ %i.jd, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionTcjENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB1L_11collections5btree3mapINtB2y_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB3v_8adapters10filter_map9FilterMapINtNtB4s_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5S_17invocation_parserNtB6C_16InvocationParser16parse_invocations0_0EE0E0E0EB5S_.exit.unr-lcssa ] ; 2 uses
  %lcmp.mod389 = trunc i64 %i.ix to i1
  call void @llvm.assume(i1 %lcmp.mod389)
  %i.ji = xor i64 %.sroa.07.043.i58.epil.init, -1
  %i.jj = getelementptr [16 x i8], ptr %i.hf, i64 %i.ji
  %i.jk = getelementptr [16 x i8], ptr %i.iy, i64 %.sroa.07.043.i58.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jk, ptr noundef nonnull align 8 dereferenceable(16) %i.jj, i64 16, i1 false), !alias.scope !27649
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionTcjENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB1L_11collections5btree3mapINtB2y_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB3v_8adapters10filter_map9FilterMapINtNtB4s_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5S_17invocation_parserNtB6C_16InvocationParser16parse_invocations0_0EE0E0E0EB5S_.exit

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionTcjENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB1L_11collections5btree3mapINtB2y_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB3v_8adapters10filter_map9FilterMapINtNtB4s_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5S_17invocation_parserNtB6C_16InvocationParser16parse_invocations0_0EE0E0E0EB5S_.exit: ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionTcjENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB1L_11collections5btree3mapINtB2y_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB3v_8adapters10filter_map9FilterMapINtNtB4s_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5S_17invocation_parserNtB6C_16InvocationParser16parse_invocations0_0EE0E0E0EB5S_.exit.unr-lcssa, %.epil.preheader380
  %i.jl = icmp ugt i64 %.sroa.27.2.lcssa.i54, %.sroa.16.0120293
  br i1 %i.jl, label %bb.am, label %.outer, !prof !340

.outer._crit_edge.thread:                         ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort31small_sort_general_with_scratchTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1s_7sort_byNCINvXs1o_NtNtNtB1E_11collections5btree3mapINtB2r_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1s_E9from_iterINtNtNtB3o_8adapters10filter_map9FilterMapINtNtB4l_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5L_17invocation_parserNtB6v_16InvocationParser16parse_invocations0_0EE0E0EB5L_.exit

.outer:                                           ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionTcjENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB1L_11collections5btree3mapINtB2y_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB3v_8adapters10filter_map9FilterMapINtNtB4s_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5S_17invocation_parserNtB6C_16InvocationParser16parse_invocations0_0EE0E0E0EB5S_.exit
  %i.jm = getelementptr inbounds nuw [16 x i8], ptr %.sroa.0.0.ph127, i64 %.sroa.27.2.lcssa.i54 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.jn = icmp ult i64 %i.ix, 33
  br i1 %i.jn, label %.outer._crit_edge, label %.lr.ph

bb.am:                                            ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6stable9quicksort16stable_partitionTcjENCINvB2_9quicksortB1d_NCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB1d_7sort_byNCINvXs1o_NtNtNtB1L_11collections5btree3mapINtB2y_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB1d_E9from_iterINtNtNtB3v_8adapters10filter_map9FilterMapINtNtB4s_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5S_17invocation_parserNtB6C_16InvocationParser16parse_invocations0_0EE0E0E0EB5S_.exit
  call void @_RNvNtNtCsj6eKBz9Db1c_4core5slice5index16slice_index_fail(i64 noundef %.sroa.27.2.lcssa.i54, i64 noundef %.sroa.16.0120293, i64 noundef %.sroa.16.0120293, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @391) #75
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric10write_yearNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i32 noundef range(i32 -2097152, 2097152) %1, i8 noundef range(i8 0, 3) %2) unnamed_addr #1 {
bb.a:
  %i.a = add nsw i32 %1, -1000
  %or.cond = icmp ult i32 %i.a, 9000
  br i1 %or.cond, label %bb.b, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskXtk6F4WjxZ_4just.exit.thread

_RINvYINtNtNtCsj6eKBz9Db1c_4core3ops5range14RangeInclusivelEINtB6_11RangeBoundslE8containslECskXtk6F4WjxZ_4just.exit.thread: ; preds = %bb.a
  %i.b = sext i32 %1 to i64
  %spec.select.i = icmp ugt i32 %1, 9999
  %i.c = tail call fastcc noundef zeroext i1 @_RINvNvMNtNtCs2uF6e5yHHeh_6chrono6format10formattingINtB5_13DelayedFormatpE14format_numeric7write_nNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i64 noundef 4, i64 noundef %i.b, i8 noundef %2, i1 noundef zeroext %spec.select.i)
  br label %_RINvNtNtCs2uF6e5yHHeh_6chrono6format10formatting14write_hundredsNtNtCs4wP2HXfJTCR_5alloc6string6StringECskXtk6F4WjxZ_4just.exit6

bb.b:                                             ; preds = %bb.a
  %.lhs.trunc = trunc nuw nsw i32 %1 to i16       ; 2 uses
  %i.d = udiv i16 %.lhs.trunc, 100
  %i.e = urem i16 %.lhs.trunc, 100
  %i.f = trunc nuw nsw i16 %i.d to i8             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27668)
  %i.g = udiv i8 %i.f, 10
  %i.h = urem i8 %i.f, 10
  %i.i = or disjoint i8 %i.g, 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27671)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27674)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !27677, !noundef !29 ; 8 uses
  %i.l = icmp sgt i64 %i.k, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = load i64, ptr %0, align 8, !range !306, !alias.scope !27678, !noundef !29 ; 2 uses
  %i.n = icmp eq i64 %i.m, %i.k
  br i1 %i.n, label %bb.c, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i, !prof !340

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.k, i64 noundef 1, i64 noundef 1, i64 noundef 1)
  %.pre.i = load i64, ptr %0, align 8, !range !306, !alias.scope !27681
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i: ; preds = %bb.c, %bb.b
  %i.o = phi i64 [ %.pre.i, %bb.c ], [ %i.m, %bb.b ] ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !27677, !nonnull !29, !noundef !29 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.k
  store i8 %i.i, ptr %i.r, align 1, !noalias !27677
  %i.s = add nuw nsw i64 %i.k, 1                  ; 3 uses
  store i64 %i.s, ptr %i.j, align 8, !alias.scope !27677
  %i.t = or disjoint i8 %i.h, 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27689)
  %i.u = icmp eq i64 %i.o, %i.s
  br i1 %i.u, label %bb.d, label %bb.e, !prof !340

bb.d:                                             ; preds = %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.o, i64 noundef 1, i64 noundef 1, i64 noundef 1)
  %.pre4.i = load ptr, ptr %i.p, align 8, !alias.scope !27690
  %.pre = load i64, ptr %0, align 8, !range !306, !alias.scope !27691
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i
  %i.v = phi i64 [ %.pre, %bb.d ], [ %i.o, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i ] ; 3 uses
  %i.w = phi ptr [ %.pre4.i, %bb.d ], [ %i.q, %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.s
  store i8 %i.t, ptr %i.x, align 1, !noalias !27690
  %i.y = add nuw nsw i64 %i.k, 2                  ; 3 uses
  store i64 %i.y, ptr %i.j, align 8, !alias.scope !27690
  %i.z = trunc nuw nsw i16 %i.e to i8             ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27700)
  %i.aa = udiv i8 %i.z, 10
  %i.ab = urem i8 %i.z, 10
  %i.ac = or disjoint i8 %i.aa, 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27701)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27702)
  %i.ad = icmp eq i64 %i.v, %i.y
  br i1 %i.ad, label %bb.f, label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i2, !prof !340

bb.f:                                             ; preds = %bb.e
  tail call fastcc void @_RINvNvMs2_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.v, i64 noundef 1, i64 noundef 1, i64 noundef 1)
  %.pre.i5 = load i64, ptr %0, align 8, !range !306, !alias.scope !27703
  %.pre11 = load ptr, ptr %i.p, align 8, !alias.scope !27710
  br label %_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i2

_RNvXsZ_NtCs4wP2HXfJTCR_5alloc6stringNtB5_6StringNtNtCsj6eKBz9Db1c_4core3fmt5Write10write_char.exit.i2: ; preds = %bb.f, %bb.e
end_hunk_1
begin_hunk_2_@_RNvMNtCskXtk6F4WjxZ_4just17invocation_parserNtB2_16InvocationParser16parse_invocation:bb.a
  br label %.lr.ph.i.i.i.i340

.lr.ph.i.i.i.i340:                                ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.i.i.i.i, %bb.ex
  %.sroa.0.04.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.i.i.i.i ], [ %.sroa.0.01.i.i.i.i339, %bb.ex ] ; 4 uses
  %.pn3.i.i.i.i = phi ptr [ %.sroa.0.04.i.i.i.i, %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.i.i.i.i ], [ %.sroa.8.0.copyload12.i, %bb.ex ] ; 5 uses
  %.val9.i.i.i.i.i = load i32, ptr %.sroa.0.04.i.i.i.i, align 4, !range !775, !alias.scope !36617, !noalias !36622, !noundef !29 ; 3 uses
  %.val10.i.i.i.i5.i = load i32, ptr %.pn3.i.i.i.i, align 4, !range !775, !alias.scope !36617, !noalias !36622, !noundef !29
  %i.zz = icmp samesign ult i32 %.val9.i.i.i.i.i, %.val10.i.i.i.i5.i
  br i1 %i.zz, label %bb.ey, label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.i.i.i.i

bb.ey:                                            ; preds = %.lr.ph.i.i.i.i340
  %i.aaa = getelementptr inbounds nuw i8, ptr %.pn3.i.i.i.i, i64 24
  %i.aab = load i64, ptr %i.aaa, align 8, !alias.scope !36617, !noalias !36622, !noundef !29
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.04.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.pn3.i.i.i.i, i64 16, i1 false), !alias.scope !36617, !noalias !36622
  %i.aac = icmp eq ptr %.pn3.i.i.i.i, %.sroa.8.0.copyload12.i
  br i1 %i.aac, label %._crit_edge2621, label %.lr.ph2620

bb.ez:                                            ; preds = %.lr.ph2620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.0.i.i.i.i.i2618, ptr noundef nonnull align 8 dereferenceable(16) %i.aae, i64 16, i1 false), !alias.scope !36617, !noalias !36622
  %i.aad = icmp eq ptr %i.aae, %.sroa.8.0.copyload12.i
  br i1 %i.aad, label %._crit_edge2621, label %.lr.ph2620

.lr.ph2620:                                       ; preds = %bb.ey, %bb.ez
  %.sroa.0.0.i.i.i.i.i2618 = phi ptr [ %i.aae, %bb.ez ], [ %.pn3.i.i.i.i, %bb.ey ] ; 3 uses
  %i.aae = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.i2618, i64 -16 ; 4 uses
  %.val8.i.i.i.i.i = load i32, ptr %i.aae, align 4, !range !775, !alias.scope !36617, !noalias !36622, !noundef !29
  %i.aaf = icmp samesign ult i32 %.val9.i.i.i.i.i, %.val8.i.i.i.i.i
  br i1 %i.aaf, label %bb.ez, label %._crit_edge2621

._crit_edge2621:                                  ; preds = %bb.ez, %.lr.ph2620, %bb.ey
  %.sroa.0.0.i.lcssa.i.i.i.i = phi ptr [ %.sroa.8.0.copyload12.i, %bb.ey ], [ %.sroa.8.0.copyload12.i, %bb.ez ], [ %.sroa.0.0.i.i.i.i.i2618, %.lr.ph2620 ] ; 2 uses
  store i32 %.val9.i.i.i.i.i, ptr %.sroa.0.0.i.lcssa.i.i.i.i, align 8, !alias.scope !36617, !noalias !36624
  %.sroa.45.0..sroa.0.0.lcssa.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.lcssa.i.i.i.i, i64 8
  store i64 %i.aab, ptr %.sroa.45.0..sroa.0.0.lcssa.sroa_idx.i.i.i.i.i, align 8, !alias.scope !36617, !noalias !36624
  br label %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.i.i.i.i

_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.i.i.i.i: ; preds = %._crit_edge2621, %.lr.ph.i.i.i.i340
  %.sroa.0.0.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.04.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i341 = icmp eq ptr %.sroa.0.0.i.i.i.i, %i.zy
  br i1 %.not.i.i.i.i341, label %.loopexit40.i, label %.lr.ph.i.i.i.i340

.loopexit40.i:                                    ; preds = %_RINvNtNtNtNtCsj6eKBz9Db1c_4core5slice4sort6shared9smallsort11insert_tailTcjENCINvMNtCs4wP2HXfJTCR_5alloc5sliceSB18_7sort_byNCINvXs1o_NtNtNtB1k_11collections5btree3mapINtB27_8BTreeMapcjEINtNtNtNtBa_4iter6traits7collect12FromIteratorB18_E9from_iterINtNtNtB34_8adapters10filter_map9FilterMapINtNtB41_9enumerate9EnumerateINtNtB8_4iter4IterNtNtCskXtk6F4WjxZ_4just9parameter9ParameterEENCNvMNtB5r_17invocation_parserNtB6b_16InvocationParser16parse_invocations0_0EE0E0EB5r_.exit.i.i.i.i, %bb.ew, %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !36615
  call void @llvm.experimental.noalias.scope.decl(metadata !36629)
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !36632
  %i.aag = call noalias noundef align 8 dereferenceable_or_null(144) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !36632 ; 5 uses
  %i.aah = icmp eq ptr %i.aag, null
  br i1 %i.aah, label %bb.fa, label %.loopexit81.i.i.i, !prof !340

bb.fa:                                            ; preds = %.loopexit40.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #71
          to label %.noexc.i.i338 unwind label %bb.ga, !noalias !36632

.noexc.i.i338:                                    ; preds = %bb.fa
  unreachable

.loopexit81.i.i.i:                                ; preds = %.loopexit40.i
  store ptr null, ptr %i.aag, align 8, !noalias !36632
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aag, i64 142
  store i16 0, ptr %i.aai, align 2, !noalias !36632
  %i.aaj = getelementptr inbounds nuw [16 x i8], ptr %.sroa.8.0.copyload12.i, i64 %.sroa.12.0.copyload14.i ; 3 uses
  br label %bb.fb

bb.fb:                                            ; preds = %.loopexit.i.i.i331, %.loopexit81.i.i.i
  %.sroa.014.0.i.i309 = phi i64 [ 0, %.loopexit81.i.i.i ], [ %i.aht, %.loopexit.i.i.i331 ] ; 2 uses
  %.sroa.8.0.i.i310 = phi i64 [ 0, %.loopexit81.i.i.i ], [ %.sroa.8.2.i.i332, %.loopexit.i.i.i331 ] ; 7 uses
  %.sroa.0.0.i.i311 = phi ptr [ %i.aag, %.loopexit81.i.i.i ], [ %.sroa.0.2.i.i333, %.loopexit.i.i.i331 ] ; 11 uses
  %.sroa.9.0.i.i.i = phi ptr [ %.sroa.8.0.copyload12.i, %.loopexit81.i.i.i ], [ %.sroa.9.3.i.i.i, %.loopexit.i.i.i331 ]
  %.sroa.549.0.i.i.i = phi i64 [ undef, %.loopexit81.i.i.i ], [ %.sroa.549.2.i.i.i, %.loopexit.i.i.i331 ]
  %.sroa.048.0.i.i.i = phi i32 [ -2, %.loopexit81.i.i.i ], [ %storemerge.i.i.i.i, %.loopexit.i.i.i331 ]
  %.sroa.0.0.i.i.i312 = phi ptr [ %i.aag, %.loopexit81.i.i.i ], [ %.sroa.0.1.i.i.i334, %.loopexit.i.i.i331 ] ; 6 uses
  br label %bb.fc

bb.fc:                                            ; preds = %bb.ff, %bb.fb
  %.sroa.9.1.i.i.i = phi ptr [ %.sroa.9.0.i.i.i, %bb.fb ], [ %i.aar, %bb.ff ] ; 5 uses
  %.sroa.549.1.i.i.i = phi i64 [ %.sroa.549.0.i.i.i, %bb.fb ], [ %i.aau, %bb.ff ] ; 2 uses
  %i.aak = phi i32 [ %.sroa.048.0.i.i.i, %bb.fb ], [ %.sroa.01.036.i.i.i.i, %bb.ff ] ; 2 uses
  switch i32 %i.aak, label %bb.fe [
    i32 -2, label %bb.fd
    i32 -1, label %bb.fh
  ]

bb.fd:                                            ; preds = %bb.fc
  %i.aal = icmp eq ptr %.sroa.9.1.i.i.i, %i.aaj
  br i1 %i.aal, label %bb.fh, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTcjEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread31.i.i.i.i

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTcjEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread31.i.i.i.i: ; preds = %bb.fd
  %i.aam = getelementptr inbounds nuw i8, ptr %.sroa.9.1.i.i.i, i64 16
  %i.aan = load i32, ptr %.sroa.9.1.i.i.i, align 8, !range !775, !noalias !36634, !noundef !29
  %i.aao = getelementptr inbounds nuw i8, ptr %.sroa.9.1.i.i.i, i64 8
  %i.aap = load i64, ptr %i.aao, align 8, !noalias !36634, !noundef !29
  br label %bb.fe

bb.fe:                                            ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTcjEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread31.i.i.i.i, %bb.fc
  %.sroa.9.2.i.i.i = phi ptr [ %.sroa.9.1.i.i.i, %bb.fc ], [ %i.aam, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTcjEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread31.i.i.i.i ] ; 4 uses
  %.sroa.01.036.i.i.i.i = phi i32 [ %i.aak, %bb.fc ], [ %i.aan, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTcjEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread31.i.i.i.i ] ; 4 uses
  %.sroa.73.035.i.i.i.i = phi i64 [ %.sroa.549.1.i.i.i, %bb.fc ], [ %i.aap, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTcjEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextCskXtk6F4WjxZ_4just.exit.thread31.i.i.i.i ] ; 2 uses
  %i.aaq = icmp eq ptr %.sroa.9.2.i.i.i, %i.aaj
  br i1 %i.aaq, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  %i.aar = getelementptr inbounds nuw i8, ptr %.sroa.9.2.i.i.i, i64 16 ; 2 uses
  %i.aas = load i32, ptr %.sroa.9.2.i.i.i, align 8, !range !775, !noalias !36643, !noundef !29 ; 2 uses
  %i.aat = getelementptr inbounds nuw i8, ptr %.sroa.9.2.i.i.i, i64 8
  %i.aau = load i64, ptr %i.aat, align 8, !noalias !36643, !noundef !29 ; 2 uses
  %.not17.i.i.i.i = icmp eq i32 %.sroa.01.036.i.i.i.i, %i.aas
  br i1 %.not17.i.i.i.i, label %bb.fc, label %bb.fg

bb.fg:                                            ; preds = %bb.ff, %bb.fe
  %.sroa.9.3.i.i.i = phi ptr [ %i.aaj, %bb.fe ], [ %i.aar, %bb.ff ]
  %.sroa.549.2.i.i.i = phi i64 [ %.sroa.549.1.i.i.i, %bb.fe ], [ %i.aau, %bb.ff ]
  %storemerge.i.i.i.i = phi i32 [ -1, %bb.fe ], [ %i.aas, %bb.ff ]
  %i.aav = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i312, i64 142 ; 2 uses
  %i.aaw = load i16, ptr %i.aav, align 2, !noalias !36651, !noundef !29 ; 3 uses
  %i.aax = icmp ult i16 %i.aaw, 11
  br i1 %i.aax, label %bb.fz, label %.preheader.i.i.i322

bb.fh:                                            ; preds = %bb.fd, %bb.fc
  %i.aay = icmp eq i64 %.sroa.0.0.copyload10.i, 0
  br i1 %i.aay, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree17dedup_sorted_iter15DedupSortedItercjINtNtNtBK_3vec9into_iter8IntoIterTcjEEEECskXtk6F4WjxZ_4just.exit26.i.i.i, label %bb.fi

bb.fi:                                            ; preds = %bb.fh
  %i.aaz = shl nuw i64 %.sroa.0.0.copyload10.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.0.copyload12.i, i64 noundef %i.aaz, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !36652
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree17dedup_sorted_iter15DedupSortedItercjINtNtNtBK_3vec9into_iter8IntoIterTcjEEEECskXtk6F4WjxZ_4just.exit26.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree17dedup_sorted_iter15DedupSortedItercjINtNtNtBK_3vec9into_iter8IntoIterTcjEEEECskXtk6F4WjxZ_4just.exit26.i.i.i: ; preds = %bb.fi, %bb.fh
  %i.aba = icmp eq i64 %.sroa.8.0.i.i310, 0
  br i1 %i.aba, label %.loopexit.i315, label %.lr.ph.i27.preheader.i.i.i

.lr.ph.i27.preheader.i.i.i:                       ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree17dedup_sorted_iter15DedupSortedItercjINtNtNtBK_3vec9into_iter8IntoIterTcjEEEECskXtk6F4WjxZ_4just.exit26.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i311) ]
  br label %.lr.ph.i27.i.i.i

.lr.ph.i27.i.i.i:                                 ; preds = %_RNvMs10_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_16BalancingContextcjE15bulk_steal_leftCskXtk6F4WjxZ_4just.exit.i.i.i.i, %.lr.ph.i27.preheader.i.i.i
  %.sroa.01.010.i.i.i.i313 = phi i64 [ %i.abl, %_RNvMs10_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_16BalancingContextcjE15bulk_steal_leftCskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ %.sroa.8.0.i.i310, %.lr.ph.i27.preheader.i.i.i ]
  %.sroa.03.09.i.i.i.i314 = phi ptr [ %i.abo, %_RNvMs10_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_16BalancingContextcjE15bulk_steal_leftCskXtk6F4WjxZ_4just.exit.i.i.i.i ], [ %.sroa.0.0.i.i311, %.lr.ph.i27.preheader.i.i.i ] ; 4 uses
  %i.abb = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i314, i64 142
  %i.abc = load i16, ptr %i.abb, align 2, !noalias !36651, !noundef !29 ; 3 uses
  %.not.i.i.i6.i = icmp eq i16 %i.abc, 0
  br i1 %.not.i.i.i6.i, label %.noexc.i.i.i321.invoke, label %bb.fj, !prof !340

.noexc.i.i.i321.invoke:                           ; preds = %bb.fk, %.lr.ph.i27.i.i.i
  %i.abd = phi ptr [ @1031, %.lr.ph.i27.i.i.i ], [ @1035, %bb.fk ]
  %i.abe = phi i64 [ 25, %.lr.ph.i27.i.i.i ], [ 39, %bb.fk ]
  %i.abf = phi ptr [ @1032, %.lr.ph.i27.i.i.i ], [ @1036, %bb.fk ]
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.abd, i64 noundef %i.abe, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.abf) #75
          to label %.noexc.i.i.i321.cont unwind label %.loopexit.split-lp

.noexc.i.i.i321.cont:                             ; preds = %.noexc.i.i.i321.invoke
  unreachable

bb.fj:                                            ; preds = %.lr.ph.i27.i.i.i
  %i.abg = zext nneg i16 %i.abc to i64            ; 2 uses
  %i.abh = add nsw i64 %i.abg, -1                 ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i314, i64 144
  %i.abj = getelementptr inbounds nuw [8 x i8], ptr %i.abi, i64 %i.abh ; 2 uses
  %i.abk = load ptr, ptr %i.abj, align 8, !noalias !36655, !nonnull !29, !noundef !29 ; 4 uses
  %i.abl = add i64 %.sroa.01.010.i.i.i.i313, -1   ; 3 uses
  %i.abm = icmp ult i16 %i.abc, 12
  call void @llvm.assume(i1 %i.abm)
  %i.abn = getelementptr inbounds nuw i8, ptr %i.abj, i64 8
  %i.abo = load ptr, ptr %i.abn, align 8, !noalias !36655, !nonnull !29, !noundef !29 ; 17 uses
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 142 ; 2 uses
  %i.abq = load i16, ptr %i.abp, align 2, !noalias !36651, !noundef !29 ; 3 uses
  %i.abr = icmp ult i16 %i.abq, 5
  br i1 %i.abr, label %bb.fk, label %_RNvMs10_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_16BalancingContextcjE15bulk_steal_leftCskXtk6F4WjxZ_4just.exit.i.i.i.i

_RNvMs10_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_16BalancingContextcjE15bulk_steal_leftCskXtk6F4WjxZ_4just.exit.i.i.i.i: ; preds = %_RNvMs10_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_16BalancingContextcjE15bulk_steal_leftCskXtk6F4WjxZ_4just.exit.loopexit.i.i.i.i, %bb.fj
  %i.abs = icmp eq i64 %i.abl, 0
  br i1 %i.abs, label %.loopexit.i315, label %.lr.ph.i27.i.i.i

bb.fk:                                            ; preds = %bb.fj
  %narrow.i.i.i.i317 = sub nuw nsw i16 5, %i.abq  ; 2 uses
  %i.abt = zext nneg i16 %narrow.i.i.i.i317 to i64 ; 6 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %i.abk, i64 142 ; 2 uses
  %i.abv = load i16, ptr %i.abu, align 2, !noalias !36659, !noundef !29 ; 2 uses
  %.not.i.i.i.i.i318 = icmp ugt i16 %narrow.i.i.i.i317, %i.abv
  br i1 %.not.i.i.i.i.i318, label %.noexc.i.i.i321.invoke, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_slicejECskXtk6F4WjxZ_4just.exit.i.i.i.i.i319, !prof !340

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_slicejECskXtk6F4WjxZ_4just.exit.i.i.i.i.i319: ; preds = %bb.fk
  %i.abw = zext i16 %i.abv to i64                 ; 2 uses
  %i.abx = zext nneg i16 %i.abq to i64            ; 2 uses
  %i.aby = sub nuw nsw i64 %i.abw, %i.abt         ; 4 uses
  %i.abz = trunc nuw i64 %i.aby to i16
  store i16 %i.abz, ptr %i.abu, align 2, !noalias !36659
  store i16 5, ptr %i.abp, align 2, !noalias !36659
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abo, i64 96 ; 4 uses
  %i.acb = getelementptr inbounds nuw [4 x i8], ptr %i.aca, i64 %i.abt
  %i.acc = shl nuw nsw i64 %i.abx, 2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.acb, ptr nonnull align 4 %i.aca, i64 %i.acc, i1 false), !alias.scope !36662, !noalias !36659
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abo, i64 8 ; 3 uses
  %i.ace = getelementptr inbounds nuw [8 x i8], ptr %i.acd, i64 %i.abt
  %i.acf = shl nuw nsw i64 %i.abx, 3              ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ace, ptr nonnull align 8 %i.acd, i64 %i.acf, i1 false), !alias.scope !36665, !noalias !36659
  %i.acg = add nuw nsw i64 %i.aby, 1              ; 4 uses
  %i.ach = sub nuw nsw i64 %i.abw, %i.acg         ; 3 uses
  %i.aci = getelementptr inbounds nuw i8, ptr %i.abk, i64 96 ; 2 uses
  %i.acj = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %i.acg
  %i.ack = shl nuw nsw i64 %i.ach, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aca, ptr nonnull readonly align 4 %i.acj, i64 %i.ack, i1 false), !alias.scope !36668, !noalias !36659
  %i.acl = getelementptr inbounds nuw i8, ptr %i.abk, i64 8 ; 2 uses
  %i.acm = getelementptr inbounds nuw [8 x i8], ptr %i.acl, i64 %i.acg
  %i.acn = shl nuw nsw i64 %i.ach, 3
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.acd, ptr nonnull readonly align 8 %i.acm, i64 %i.acn, i1 false), !alias.scope !36672, !noalias !36659
  %i.aco = getelementptr inbounds nuw [4 x i8], ptr %i.aci, i64 %i.aby
  %i.acp = load i32, ptr %i.aco, align 4, !range !775, !noalias !36659, !noundef !29
  %i.acq = getelementptr inbounds nuw [8 x i8], ptr %i.acl, i64 %i.aby
  %i.acr = load i64, ptr %i.acq, align 8, !noalias !36659, !noundef !29
  %i.acs = getelementptr inbounds nuw i8, ptr %.sroa.03.09.i.i.i.i314, i64 96
  %i.act = getelementptr inbounds nuw [4 x i8], ptr %i.acs, i64 %i.abh ; 2 uses
  %i.acu = getelementptr [8 x i8], ptr %.sroa.03.09.i.i.i.i314, i64 %i.abg ; 2 uses
  %i.acv = load i32, ptr %i.act, align 4, !range !775, !noalias !36659, !noundef !29
  store i32 %i.acp, ptr %i.act, align 4, !noalias !36659
  %i.acw = load i64, ptr %i.acu, align 8, !noalias !36659, !noundef !29
  store i64 %i.acr, ptr %i.acu, align 8, !noalias !36659
  %i.acx = getelementptr inbounds nuw [4 x i8], ptr %i.aca, i64 %i.ach
  store i32 %i.acv, ptr %i.acx, align 4, !noalias !36659
  %i.acy = getelementptr [8 x i8], ptr %i.abo, i64 %i.abt
  store i64 %i.acw, ptr %i.acy, align 8, !noalias !36659
  %cond.i.i.i.i320 = icmp eq i64 %i.abl, 0
  br i1 %cond.i.i.i.i320, label %.loopexit.i315, label %_RNvMs10_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_16BalancingContextcjE15bulk_steal_leftCskXtk6F4WjxZ_4just.exit.loopexit.i.i.i.i

_RNvMs10_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_16BalancingContextcjE15bulk_steal_leftCskXtk6F4WjxZ_4just.exit.loopexit.i.i.i.i: ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_slicejECskXtk6F4WjxZ_4just.exit.i.i.i.i.i319
  %i.acz = getelementptr inbounds nuw i8, ptr %i.abo, i64 144 ; 4 uses
  %i.ada = getelementptr inbounds nuw [8 x i8], ptr %i.acz, i64 %i.abt
  %i.adb = add nuw nsw i64 %i.acf, 8
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ada, ptr noundef nonnull align 8 dereferenceable(1) %i.acz, i64 %i.adb, i1 false), !alias.scope !36676, !noalias !36659
  %i.adc = getelementptr inbounds nuw i8, ptr %i.abk, i64 144
  %i.add = getelementptr inbounds nuw [8 x i8], ptr %i.adc, i64 %i.acg
  %i.ade = shl nuw nsw i64 %i.abt, 3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.acz, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.add, i64 %i.ade, i1 false), !alias.scope !36679, !noalias !36659
  %i.adf = load ptr, ptr %i.acz, align 8, !noalias !36659, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.abo, ptr %i.adf, align 8, !noalias !36659
  %i.adg = getelementptr inbounds nuw i8, ptr %i.adf, i64 140
  store i16 0, ptr %i.adg, align 4, !noalias !36659
  %i.adh = getelementptr inbounds nuw i8, ptr %i.abo, i64 152
  %i.adi = load ptr, ptr %i.adh, align 8, !noalias !36659, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.abo, ptr %i.adi, align 8, !noalias !36659
  %i.adj = getelementptr inbounds nuw i8, ptr %i.adi, i64 140
  store i16 1, ptr %i.adj, align 4, !noalias !36659
  %i.adk = getelementptr inbounds nuw i8, ptr %i.abo, i64 160
  %i.adl = load ptr, ptr %i.adk, align 8, !noalias !36659, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.abo, ptr %i.adl, align 8, !noalias !36659
  %i.adm = getelementptr inbounds nuw i8, ptr %i.adl, i64 140
  store i16 2, ptr %i.adm, align 4, !noalias !36659
  %i.adn = getelementptr inbounds nuw i8, ptr %i.abo, i64 168
  %i.ado = load ptr, ptr %i.adn, align 8, !noalias !36659, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.abo, ptr %i.ado, align 8, !noalias !36659
  %i.adp = getelementptr inbounds nuw i8, ptr %i.ado, i64 140
  store i16 3, ptr %i.adp, align 4, !noalias !36659
  %i.adq = getelementptr inbounds nuw i8, ptr %i.abo, i64 176
  %i.adr = load ptr, ptr %i.adq, align 8, !noalias !36659, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.abo, ptr %i.adr, align 8, !noalias !36659
  %i.ads = getelementptr inbounds nuw i8, ptr %i.adr, i64 140
  store i16 4, ptr %i.ads, align 4, !noalias !36659
  %i.adt = getelementptr inbounds nuw i8, ptr %i.abo, i64 184
  %i.adu = load ptr, ptr %i.adt, align 8, !noalias !36659, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.abo, ptr %i.adu, align 8, !noalias !36659
  %i.adv = getelementptr inbounds nuw i8, ptr %i.adu, i64 140
  store i16 5, ptr %i.adv, align 4, !noalias !36659
  br label %_RNvMs10_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_16BalancingContextcjE15bulk_steal_leftCskXtk6F4WjxZ_4just.exit.i.i.i.i

.preheader.i.i.i322:                              ; preds = %bb.fg, %bb.fm
  %.sroa.3.0.i.i.i323 = phi i64 [ %i.adz, %bb.fm ], [ 0, %bb.fg ]
  %.sroa.04.0.i.i.i = phi ptr [ %i.adw, %bb.fm ], [ %.sroa.0.0.i.i.i312, %bb.fg ]
  %i.adw = load ptr, ptr %.sroa.04.0.i.i.i, align 8, !noalias !36683, !noundef !29 ; 4 uses
  %.not.i30.i.i.i = icmp eq ptr %i.adw, null
  br i1 %.not.i30.i.i.i, label %bb.fn, label %bb.fm

bb.fl:                                            ; preds = %bb.fw, %bb.fu
  %i.adx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ady = icmp eq i64 %.sroa.0.0.copyload10.i, 0
  br i1 %i.ady, label %.body344, label %.thread.sink.split.i.i330

bb.fm:                                            ; preds = %.preheader.i.i.i322
  %i.adz = add i64 %.sroa.3.0.i.i.i323, 1         ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.adw, i64 142
  %i.aeb = load i16, ptr %i.aea, align 2, !noalias !36651, !noundef !29
  %i.aec = icmp ult i16 %i.aeb, 11
  br i1 %i.aec, label %.loopexit80.i.i.i, label %.preheader.i.i.i322

bb.fn:                                            ; preds = %.preheader.i.i.i322
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i311) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !36686
  %i.aed = call noalias noundef align 8 dereferenceable_or_null(240) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 240, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !36686 ; 8 uses
  %i.aee = icmp eq ptr %i.aed, null
  br i1 %i.aee, label %bb.fo, label %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodecjEE13new_uninit_inCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i, !prof !340

bb.fo:                                            ; preds = %bb.fn
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 240) #71
          to label %.noexc.i.i.i.i337 unwind label %bb.fs, !noalias !36686

.noexc.i.i.i.i337:                                ; preds = %bb.fo
  unreachable

_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodecjEE13new_uninit_inCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i: ; preds = %bb.fn
  store ptr null, ptr %i.aed, align 8, !noalias !36686
  %i.aef = getelementptr inbounds nuw i8, ptr %i.aed, i64 142
  store i16 0, ptr %i.aef, align 2, !noalias !36686
  %i.aeg = getelementptr inbounds nuw i8, ptr %i.aed, i64 144
  store ptr %.sroa.0.0.i.i311, ptr %i.aeg, align 8, !noalias !36686
  %i.aeh = add i64 %.sroa.8.0.i.i310, 1           ; 3 uses
  %.not.i.i.i.i.i.i.i335 = icmp eq i64 %i.aeh, 0
  br i1 %.not.i.i.i.i.i.i.i335, label %bb.fp, label %bb.ft, !prof !340

bb.fp:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodecjEE13new_uninit_inCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @153) #71
          to label %bb.fq unwind label %bb.fr, !noalias !36686

bb.fq:                                            ; preds = %bb.fp
  unreachable

bb.fr:                                            ; preds = %bb.fp
  %i.aei = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aed, i64 noundef 240, i64 noundef 8) #70, !noalias !36686
  br label %.body.i.i.i.i336

bb.fs:                                            ; preds = %bb.fo
  %i.aej = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  br label %.body.i.i.i.i336

.body.i.i.i.i336:                                 ; preds = %bb.fs, %bb.fr
  call void @llvm.trap()
  unreachable

bb.ft:                                            ; preds = %_RNvMs_NtCs4wP2HXfJTCR_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodecjEE13new_uninit_inCskXtk6F4WjxZ_4just.exit.i.i.i.i.i.i.i
  store ptr %i.aed, ptr %.sroa.0.0.i.i311, align 8, !noalias !36689
  %i.aek = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i311, i64 140
  store i16 0, ptr %i.aek, align 4, !noalias !36694
  br label %.loopexit80.i.i.i

.loopexit80.i.i.i:                                ; preds = %bb.fm, %bb.ft
  %.sroa.8.1.i.i324 = phi i64 [ %i.aeh, %bb.ft ], [ %.sroa.8.0.i.i310, %bb.fm ] ; 3 uses
  %.sroa.0.1.i.i325 = phi ptr [ %i.aed, %bb.ft ], [ %.sroa.0.0.i.i311, %bb.fm ] ; 3 uses
  %.sroa.657.0.i.i.i = phi i64 [ %i.aeh, %bb.ft ], [ %i.adz, %bb.fm ] ; 6 uses
  %.sroa.056.0.i.i.i = phi ptr [ %i.aed, %bb.ft ], [ %i.adw, %bb.fm ] ; 8 uses
  %i.ael = add i64 %.sroa.657.0.i.i.i, -1         ; 2 uses
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !36651
  %i.aem = call noalias noundef align 8 dereferenceable_or_null(144) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef 144, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !36651 ; 5 uses
  %i.aen = icmp eq ptr %i.aem, null
  br i1 %i.aen, label %bb.fu, label %bb.fv, !prof !340

bb.fu:                                            ; preds = %.loopexit80.i.i.i
  invoke void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 144) #71
          to label %.noexc31.i.i.i unwind label %bb.fl, !noalias !36651

.noexc31.i.i.i:                                   ; preds = %bb.fu
  unreachable

bb.fv:                                            ; preds = %.loopexit80.i.i.i
  store ptr null, ptr %i.aem, align 8, !noalias !36651
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aem, i64 142
  store i16 0, ptr %i.aeo, align 2, !noalias !36651
  %.not.i.i.i326 = icmp eq i64 %i.ael, 0
  br i1 %.not.i.i.i326, label %._crit_edge.i.i.i329, label %.lr.ph.i.i.i327

._crit_edge.i.i.i329:                             ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedcjNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECskXtk6F4WjxZ_4just.exit43.i.i.i, %bb.fv
  %.sroa.063.0.lcssa.i.i.i = phi ptr [ %i.aem, %bb.fv ], [ %i.ahu, %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mem7replaceINtNtB4_4node7NodeRefNtNtB10_6marker5OwnedcjNtB1k_14LeafOrInternalEuNCINvB2_8take_mutBX_NCINvMss_B10_BX_19push_internal_levelNtNtB8_5alloc6GlobalE0E0ECskXtk6F4WjxZ_4just.exit43.i.i.i ] ; 3 uses
  %i.aep = getelementptr inbounds nuw i8, ptr %.sroa.056.0.i.i.i, i64 142 ; 2 uses
  %i.aeq = load i16, ptr %i.aep, align 2, !noalias !36651, !noundef !29 ; 3 uses
  %i.aer = icmp ult i16 %i.aeq, 11
  br i1 %i.aer, label %bb.fx, label %bb.fw, !prof !36

bb.fw:                                            ; preds = %._crit_edge.i.i.i329
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1311, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1315) #75
          to label %.noexc33.i.i.i unwind label %bb.fl, !noalias !36651

.noexc33.i.i.i:                                   ; preds = %bb.fw
  unreachable

bb.fx:                                            ; preds = %._crit_edge.i.i.i329
  %i.aes = zext nneg i16 %i.aeq to i64            ; 3 uses
  %i.aet = add nuw nsw i16 %i.aeq, 1
  store i16 %i.aet, ptr %i.aep, align 2, !noalias !36651
  %i.aeu = getelementptr inbounds nuw i8, ptr %.sroa.056.0.i.i.i, i64 96
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %i.aeu, i64 %i.aes
  store i32 %.sroa.01.036.i.i.i.i, ptr %i.aev, align 4, !noalias !36651
  %i.aew = getelementptr inbounds nuw i8, ptr %.sroa.056.0.i.i.i, i64 8
  %i.aex = getelementptr inbounds nuw [8 x i8], ptr %i.aew, i64 %i.aes
  store i64 %.sroa.73.035.i.i.i.i, ptr %i.aex, align 8, !noalias !36651
  %i.aey = add nuw nsw i64 %i.aes, 1              ; 2 uses
  %i.aez = getelementptr inbounds nuw i8, ptr %.sroa.056.0.i.i.i, i64 144
  %i.afa = getelementptr inbounds nuw [8 x i8], ptr %i.aez, i64 %i.aey
  store ptr %.sroa.063.0.lcssa.i.i.i, ptr %i.afa, align 8, !noalias !36651
  store ptr %.sroa.056.0.i.i.i, ptr %.sroa.063.0.lcssa.i.i.i, align 8, !noalias !36651
  %i.afb = trunc nuw nsw i64 %i.aey to i16
  %i.afc = getelementptr inbounds nuw i8, ptr %.sroa.063.0.lcssa.i.i.i, i64 140
  store i16 %i.afb, ptr %i.afc, align 4, !noalias !36651
  %i.afd = icmp eq i64 %.sroa.657.0.i.i.i, 0
  br i1 %i.afd, label %.loopexit.i.i.i331, label %.lr.ph.i34.i.i.i.preheader

.lr.ph.i34.i.i.i.preheader:                       ; preds = %bb.fx
  %xtraiter3022 = and i64 %.sroa.657.0.i.i.i, 7   ; 2 uses
  %lcmp.mod3023.not = icmp eq i64 %xtraiter3022, 0
  br i1 %lcmp.mod3023.not, label %.lr.ph.i34.i.i.i.prol.loopexit, label %.lr.ph.i34.i.i.i.prol

.lr.ph.i34.i.i.i.prol:                            ; preds = %.lr.ph.i34.i.i.i.preheader, %.lr.ph.i34.i.i.i.prol
end_hunk_2
begin_hunk_3_@_RNvMNtCskXtk6F4WjxZ_4just8analyzerNtB2_8Analyzer8justfile:bb.a
  %i.yv = invoke fastcc ptr @_RNvXsk_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3mapINtB5_4IterNtNtCskXtk6F4WjxZ_4just9attribute9AttributeNtNtB17_4name4NameENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB17_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %.sroa.0273.sroa.3.0..sroa_idx)
          to label %.noexc5759 unwind label %.loopexit.split-lp2217.loopexit.loopexit ; 2 uses

.noexc5759:                                       ; preds = %bb.bu
  %.not4.i8.i = icmp eq ptr %i.yv, null
  br i1 %.not4.i8.i, label %.loopexit5955, label %_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterRINtNtCskXtk6F4WjxZ_4just6recipe6RecipeNtNtB1X_21unresolved_dependency20UnresolvedDependencyEENCNvMNtB1X_8analyzerNtB3s_8Analyzer8justfiles1_0EINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map4KeysNtNtB1X_9attribute9AttributeNtNtB1X_4name4NameEENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit

_RNvXsi_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterRINtNtCskXtk6F4WjxZ_4just6recipe6RecipeNtNtB1X_21unresolved_dependency20UnresolvedDependencyEENCNvMNtB1X_8analyzerNtB3s_8Analyzer8justfiles1_0EINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map4KeysNtNtB1X_9attribute9AttributeNtNtB1X_4name4NameEENtNtNtB9_6traits8iterator8Iterator4nextB1X_.exit: ; preds = %.noexc5758, %.noexc5759
  %.sroa.0.0.i = phi ptr [ %i.yv, %.noexc5759 ], [ %i.yo, %.noexc5758 ] ; 4 uses
  %i.yw = load i64, ptr %.sroa.0.0.i, align 8, !range !13678, !noundef !29 ; 3 uses
  %i.yx = icmp ne i64 %i.yw, 3
  call void @llvm.assume(i1 %i.yx)
  %i.yy = add nsw i64 %i.yw, -2
  %i.yz = icmp samesign ugt i64 %i.yw, 1
  %i.za = select i1 %i.yz, i64 %i.yy, i64 1
  switch i64 %i.za, label %bb.kg [
    i64 1, label %bb.kh
    i64 6, label %bb.ki
  ]

.loopexit5955:                                    ; preds = %.loopexit7945, %.noexc5759
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ee)
  %i.zb = load ptr, ptr %i.hl, align 8, !nonnull !29, !noundef !29 ; 5 uses
  %i.zc = load i64, ptr %i.hm, align 8, !noundef !29 ; 3 uses
  %.idx3385 = mul nuw nsw i64 %i.zc, 144
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zb, i64 %.idx3385 ; 4 uses
  %i.ze = icmp eq i64 %i.zc, 0                    ; 2 uses
  br i1 %i.ze, label %._crit_edge3353, label %.lr.ph3352

.lr.ph3352:                                       ; preds = %.loopexit5955, %bb.bv
  %.sroa.057.03350 = phi ptr [ %i.zg, %bb.bv ], [ %i.zb, %.loopexit5955 ] ; 2 uses
  %i.zf = getelementptr inbounds nuw i8, ptr %.sroa.057.03350, i64 16
  invoke fastcc void @_RNCNvMNtCskXtk6F4WjxZ_4just8analyzerNtB4_8Analyzer8justfiles0_0B6_(ptr nonnull %i.em, ptr nonnull %i.el, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.zf)
          to label %bb.bv unwind label %.loopexit2216

._crit_edge3353:                                  ; preds = %bb.bv, %.loopexit5955
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.060)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.51799.0.copyload) ]
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just9evaluatorNtB2_9Evaluator26evaluate_const_assignments(ptr noalias nofree noundef align 8 captures(none) dereferenceable(256) %i.ed, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ez, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.51799.0.copyload, i64 noundef %.sroa.61800.0.copyload, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %11, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.eh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.el, i1 noundef zeroext %i.vu)
          to label %bb.bw unwind label %.loopexit.split-lp2217.loopexit.split-lp

bb.bv:                                            ; preds = %.lr.ph3352
  %i.zg = getelementptr inbounds nuw i8, ptr %.sroa.057.03350, i64 144 ; 2 uses
  %i.zh = icmp eq ptr %i.zg, %i.zd
  br i1 %i.zh, label %._crit_edge3353, label %.lr.ph3352

bb.bw:                                            ; preds = %._crit_edge3353
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ed, i64 249
  %i.zj = load i8, ptr %i.zi, align 1, !range !190, !noundef !29 ; 2 uses
  %i.zk = icmp eq i8 %i.zj, 2
  br i1 %i.zk, label %bb.bx, label %bb.by

bb.bx:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.060, ptr noundef nonnull align 8 dereferenceable(80) %i.ed, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  %i.zl = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.zl, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.060, i64 80, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.060)
  br label %bb.kd

bb.by:                                            ; preds = %bb.bw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(249) %.sroa.060, ptr noundef nonnull align 8 dereferenceable(249) %i.ed, i64 249, i1 false)
  %.sroa.5280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ed, i64 250
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.568.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.5280.0..sroa_idx, i64 6, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ed)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(249) %i.eg, ptr noundef nonnull align 8 dereferenceable(249) %.sroa.060, i64 249, i1 false)
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eg, i64 249
  store i8 %i.zj, ptr %.sroa.467.0..sroa_idx, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.060)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.671)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ea, ptr noundef nonnull align 8 dereferenceable(24) %i.iv, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just9evaluatorNtB2_9Evaluator13evaluate_sets(ptr noalias nofree noundef align 8 captures(none) dereferenceable(304) %i.eb, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %i.eg, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ea)
          to label %bb.ca unwind label %bb.bz

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit.thread2133: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit.thread, %bb.gv, %bb.bz
  %.sroa.0187.11 = phi i8 [ 1, %bb.bz ], [ 1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit.thread ], [ 0, %bb.gv ]
  %.sroa.0183.8 = phi i8 [ 1, %bb.bz ], [ %.sroa.0183.91872, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit.thread ], [ %.sroa.0183.18, %bb.gv ]
  %.sroa.0160.18 = phi i8 [ 1, %bb.bz ], [ %.sroa.0160.201874, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit.thread ], [ 0, %bb.gv ]
  %.sroa.0158.18 = phi i8 [ 1, %bb.bz ], [ %.sroa.0158.201875, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit.thread ], [ 0, %bb.gv ]
  %.sroa.0156.14 = phi i8 [ 1, %bb.bz ], [ %.sroa.0156.161876, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit.thread ], [ 0, %bb.gv ]
  %.sroa.0151.14 = phi i8 [ 1, %bb.bz ], [ %.sroa.0151.171877, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit.thread ], [ %.sroa.0151.16, %bb.gv ]
  %.pn427 = phi { ptr, i32 } [ %i.zm, %bb.bz ], [ %.pn4251878, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit.thread ], [ %.pn394.pn.pn.pn.pn.pn, %bb.gv ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just9evaluator9EvaluatorEBF_(ptr noalias nofree noundef align 8 dereferenceable(256) %i.eg) #72
          to label %.loopexit.split-lp2217 unwind label %.loopexit.split-lp5947.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bz:                                            ; preds = %bb.by
  %i.zm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit.thread2133

bb.ca:                                            ; preds = %bb.by
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea)
  %i.zn = load i64, ptr %i.eb, align 8, !range !183, !noundef !29 ; 2 uses
  %i.zo = icmp eq i64 %i.zn, -1
  %i.zp = getelementptr inbounds nuw i8, ptr %i.eb, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.671, ptr noundef nonnull align 8 dereferenceable(80) %i.zp, i64 80, i1 false)
  br i1 %i.zo, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  %i.zq = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.zq, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.671, i64 80, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.671)
  br label %bb.kc

bb.cc:                                            ; preds = %bb.ca
  %.sroa.5283.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eb, i64 88
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.577.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5283.0..sroa_idx, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb)
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.476.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.671, i64 80, i1 false)
  store i64 %i.zn, ptr %i.ec, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.671)
  %i.zr = getelementptr inbounds nuw i8, ptr %i.ec, i64 292
  %i.zs = load i8, ptr %i.zr, align 4, !range !273, !noundef !29
  %i.zt = trunc nuw i8 %i.zs to i1
  br i1 %i.zt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit719, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  %i.zu = load ptr, ptr %i.hj, align 8, !nonnull !29, !noundef !29 ; 5 uses
  %i.zv = load i64, ptr %i.fx, align 8, !range !306, !noundef !29 ; 6 uses
  %i.zw = load i64, ptr %i.hk, align 8, !noundef !29 ; 3 uses
  %i.zx = icmp ult i64 %i.zw, 115292150460684698
  call void @llvm.assume(i1 %i.zx)
  %.idx3386 = mul nuw nsw i64 %i.zw, 80
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zu, i64 %.idx3386
  %i.zz = icmp eq i64 %i.zw, 0
  br i1 %i.zz, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB11_5token5TokenEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB11_5token5TokenEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB11_.exit.lr.ph

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB11_5token5TokenEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB11_.exit.lr.ph: ; preds = %bb.cd
  %i.aaa = getelementptr inbounds nuw i8, ptr %i.ev, i64 8
  br label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB11_5token5TokenEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB11_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit719: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB11_5token5TokenEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread, %bb.ch, %bb.cc
  %.sroa.0151.16 = phi i8 [ 1, %bb.cc ], [ 0, %bb.ch ], [ 0, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB11_5token5TokenEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread ] ; 14 uses
  %i.aab = load i64, ptr %i.fw, align 8, !range !306, !noundef !29
  %i.aac = icmp ult i64 %i.zc, 64051194700380388
  call void @llvm.assume(i1 %i.aac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dw)
  store ptr %i.zb, ptr %i.dw, align 8
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8 ; 8 uses
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  store i64 %i.aab, ptr %.sroa.684.0..sroa_idx, align 8
  %.sroa.785.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  store ptr %i.zd, ptr %.sroa.785.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.101658)
  br i1 %i.ze, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTReNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB13_.exit.thread, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTReNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB13_.exit.lr.ph

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTReNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB13_.exit.lr.ph: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit719
  %.sroa.101658.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.aad = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 2 uses
  %.sroa.42.0..sroa_idx.i721 = getelementptr inbounds nuw i8, ptr %i.dt, i64 32
  %.sroa.53.0..sroa_idx.i722 = getelementptr inbounds nuw i8, ptr %i.dt, i64 40
  %i.aae = getelementptr inbounds nuw i8, ptr %i.du, i64 72
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.dr, i64 72
  %i.aag = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.aah = getelementptr inbounds nuw i8, ptr %i.ds, i64 8
  %.sroa.71662.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %.sroa.81667.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.aai = getelementptr inbounds nuw i8, ptr %1, i64 128
  br label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTReNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB13_.exit

.loopexit2211:                                    ; preds = %bb.cj
  %lpad.loopexit2213 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

.loopexit.split-lp2212:                           ; preds = %_RNvMNtCskXtk6F4WjxZ_4just12list_featureNtB2_11ListFeature8function.exit
  %lpad.loopexit.split-lp2214 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.ce:                                            ; preds = %.loopexit.split-lp2212, %.loopexit2211
  %lpad.phi2215 = phi { ptr, i32 } [ %lpad.loopexit2213, %.loopexit2211 ], [ %lpad.loopexit.split-lp2214, %.loopexit.split-lp2212 ] ; 2 uses
  %i.aaj = icmp eq i64 %i.zv, 0
  br i1 %i.aaj, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit.thread, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.aak = mul nuw i64 %i.zv, 80
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.zu, i64 noundef %i.aak, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !50415
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit.thread

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB11_5token5TokenEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB11_.exit: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB11_5token5TokenEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB11_.exit.lr.ph, %bb.cl
  %.sroa.71648.03354 = phi ptr [ %i.zu, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB11_5token5TokenEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB11_.exit.lr.ph ], [ %i.aal, %bb.cl ] ; 3 uses
  %i.aal = getelementptr inbounds nuw i8, ptr %.sroa.71648.03354, i64 80 ; 2 uses
  %.sroa.01653.0.copyload = load i8, ptr %.sroa.71648.03354, align 8, !noalias !50418 ; 3 uses
  %.not369 = icmp eq i8 %.sroa.01653.0.copyload, -1
  br i1 %.not369, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB11_5token5TokenEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread, label %bb.cg

bb.cg:                                            ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB11_5token5TokenEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB11_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz)
  %i.aam = getelementptr inbounds nuw i8, ptr %.sroa.71648.03354, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.dz, ptr noundef nonnull align 1 dereferenceable(72) %i.aam, i64 72, i1 false)
  switch i8 %.sroa.01653.0.copyload, label %default.unreachable1.i [
    i8 0, label %_RNvMNtCskXtk6F4WjxZ_4just12list_featureNtB2_11ListFeature8function.exit
    i8 1, label %_RNvMNtCskXtk6F4WjxZ_4just12list_featureNtB2_11ListFeature8function.exit
    i8 2, label %bb.cj
    i8 3, label %_RNvMNtCskXtk6F4WjxZ_4just12list_featureNtB2_11ListFeature8function.exit
    i8 4, label %_RNvMNtCskXtk6F4WjxZ_4just12list_featureNtB2_11ListFeature8function.exit
    i8 5, label %_RNvMNtCskXtk6F4WjxZ_4just12list_featureNtB2_11ListFeature8function.exit
    i8 6, label %bb.cj
    i8 7, label %_RNvMNtCskXtk6F4WjxZ_4just12list_featureNtB2_11ListFeature8function.exit
    i8 8, label %_RNvMNtCskXtk6F4WjxZ_4just12list_featureNtB2_11ListFeature8function.exit
    i8 9, label %_RNvMNtCskXtk6F4WjxZ_4just12list_featureNtB2_11ListFeature8function.exit
    i8 10, label %_RNvMNtCskXtk6F4WjxZ_4just12list_featureNtB2_11ListFeature8function.exit
    i8 11, label %_RNvMNtCskXtk6F4WjxZ_4just12list_featureNtB2_11ListFeature8function.exit
    i8 12, label %_RNvMNtCskXtk6F4WjxZ_4just12list_featureNtB2_11ListFeature8function.exit
    i8 13, label %bb.cj
    i8 14, label %bb.cj
    i8 15, label %bb.cj
    i8 16, label %bb.cj
  ]

default.unreachable1.i:                           ; preds = %bb.cg
  unreachable

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB11_5token5TokenEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB11_5token5TokenEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB11_.exit, %bb.cl, %bb.cd
  %i.aan = icmp eq i64 %i.zv, 0
  br i1 %i.aan, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit719, label %bb.ch

bb.ch:                                            ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB11_5token5TokenEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread
  %i.aao = mul nuw i64 %i.zv, 80
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.zu, i64 noundef %i.aao, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !50421
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit719

bb.ci:                                            ; preds = %bb.ka, %.thread2013, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTReNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB13_.exit.thread
  %.sroa.0160.21 = phi i8 [ 1, %bb.ka ], [ 0, %.thread2013 ], [ 1, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTReNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB13_.exit.thread ]
  %i.aap = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit.thread

_RNvMNtCskXtk6F4WjxZ_4just12list_featureNtB2_11ListFeature8function.exit: ; preds = %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx)
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  store i8 %.sroa.01653.0.copyload, ptr %i.aaq, align 8
  store i64 -9223372036854775754, ptr %i.dx, align 8
  invoke fastcc void @_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token5error(ptr noalias nofree noundef align 8 captures(address) dereferenceable(80) %i.dy, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.dz, ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.dx)
          to label %bb.cm unwind label %.loopexit.split-lp2212

bb.cj:                                            ; preds = %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg, %bb.cg
  %i.aar = invoke { ptr, i64 } @_RNvMNtCskXtk6F4WjxZ_4just5tokenNtB2_5Token6lexeme(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.dz)
          to label %bb.ck unwind label %.loopexit2211 ; 2 uses

bb.ck:                                            ; preds = %bb.cj
  %i.aas = extractvalue { ptr, i64 } %i.aar, 0
  %i.aat = extractvalue { ptr, i64 } %i.aar, 1
  %.val584 = load ptr, ptr %i.ev, align 8, !noundef !29
  %.val585 = load i64, ptr %i.aaa, align 8
  %i.aau = call fastcc noundef zeroext i1 @_RNvMNtCskXtk6F4WjxZ_4just5tableINtB2_5TableNtNtB4_19function_definition18FunctionDefinitionE12contains_keyB4_(ptr %.val584, i64 %.val585, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aas, i64 noundef %i.aat)
  br i1 %i.aau, label %bb.cl, label %_RNvMNtCskXtk6F4WjxZ_4just12list_featureNtB2_11ListFeature8function.exit

bb.cl:                                            ; preds = %bb.ck
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  %i.aav = icmp eq ptr %i.aal, %i.zy
  br i1 %i.aav, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB11_5token5TokenEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB11_.exit.thread, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB11_5token5TokenEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB11_.exit

bb.cm:                                            ; preds = %_RNvMNtCskXtk6F4WjxZ_4just12list_featureNtB2_11ListFeature8function.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx)
  %i.aaw = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.aaw, ptr noundef nonnull align 8 dereferenceable(80) %i.dy, i64 80, i1 false)
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz)
  %i.aax = icmp eq i64 %i.zv, 0
  br i1 %i.aax, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit720, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.aay = mul nuw i64 %i.zv, 80
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.zu, i64 noundef %i.aay, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !50424
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit720

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit720: ; preds = %bb.cw, %.thread2013, %bb.gw, %bb.cm, %bb.cn, %bb.kb
  %.sroa.0160.22 = phi i8 [ 1, %bb.kb ], [ 1, %bb.cm ], [ 1, %bb.cn ], [ 0, %bb.gw ], [ 0, %.thread2013 ], [ 0, %bb.cw ]
  %.sroa.0158.22 = phi i8 [ 1, %bb.kb ], [ 1, %bb.cm ], [ 1, %bb.cn ], [ 0, %bb.gw ], [ 1, %.thread2013 ], [ 1, %bb.cw ]
  %.sroa.0156.18 = phi i8 [ 0, %bb.kb ], [ 1, %bb.cm ], [ 1, %bb.cn ], [ 0, %bb.gw ], [ 0, %.thread2013 ], [ 0, %bb.cw ]
  %.sroa.0151.19 = phi i8 [ %.sroa.0151.16, %bb.kb ], [ 0, %bb.cm ], [ 0, %bb.cn ], [ %.sroa.0151.16, %bb.gw ], [ %.sroa.0151.16, %.thread2013 ], [ %.sroa.0151.16, %bb.cw ]
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8settings8SettingsEBF_(ptr noalias nofree noundef align 8 dereferenceable(304) %i.ec)
  br label %bb.kc

.loopexit.split-lp5947.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i5825, %_RNvMsT_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB5_6HandleINtB5_7NodeRefNtNtB5_6marker5DyingNtNtBb_6string6StringNtNtB7_7set_val9SetValZSTNtB1m_14LeafOrInternalENtB1m_2KVE12drop_key_valCskXtk6F4WjxZ_4just.exit.i.i.i.i.i5883, %.lr.ph.i.i.i.i.i5789, %bb.aku, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapReNtNtCskXtk6F4WjxZ_4just3set3SetEEB1G_.exit.i5858, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapReNtNtCskXtk6F4WjxZ_4just5alias5AliasEEB1G_.exit.i5841, %bb.ajz, %bb.ajq, %bb.akm, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCskXtk6F4WjxZ_4just19function_definition18FunctionDefinitionEEB1d_.exit1500, %bb.gy, %bb.fn, %bb.ey, %bb.eq, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCskXtk6F4WjxZ_4just8namepath8NamepathEBF_.exit805, %bb.ajn, %bb.ajf, %bb.ve, %bb.qd, %.body881, %bb.jf, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRINtNtCskXtk6F4WjxZ_4just6recipe6RecipeNtNtB1v_21unresolved_dependency20UnresolvedDependencyEEEB1v_.exit, %bb.iz, %bb.hx, %bb.hd, %bb.hc, %.thread5942, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit789.thread.thread, %bb.hb, %bb.ez, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCskXtk6F4WjxZ_4just6recipe6RecipeEEEB1z_.exit, %bb.ev, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit, %bb.ep, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCsaKJjC64KgbL_3std4path7PathBufECskXtk6F4WjxZ_4just.exit, %bb.em, %bb.el, %bb.ea, %bb.du, %bb.co, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit.thread2133, %.loopexit.split-lp2217, %bb.bd
  %lpad.loopexit.split-lp10301 = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  br label %.body5803

.body5803:                                        ; preds = %.loopexit.split-lp5947.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i5799, %bb.aju
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #73
  unreachable

bb.co:                                            ; preds = %.loopexit2206, %.loopexit.split-lp2207, %bb.jf
  %.pn423 = phi { ptr, i32 } [ %.pn421, %bb.jf ], [ %lpad.loopexit2208, %.loopexit2206 ], [ %lpad.loopexit.split-lp2209, %.loopexit.split-lp2207 ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTReNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEEEB1w_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.dw) #72
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit.thread unwind label %.loopexit.split-lp5947.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit2206:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs4wP2HXfJTCR_5alloc6string6StringEECskXtk6F4WjxZ_4just.exit828
  %lpad.loopexit2208 = landingpad { ptr, i32 }
          cleanup
  store ptr %i.aba, ptr %.sroa.583.0..sroa_idx, align 8
  br label %bb.co

.loopexit.split-lp2207:                           ; preds = %bb.jz
  %lpad.loopexit.split-lp2209 = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTReNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB13_.exit: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTReNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB13_.exit.lr.ph, %bb.jw
  %i.aaz = phi ptr [ %i.zb, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTReNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB13_.exit.lr.ph ], [ %i.aba, %bb.jw ] ; 5 uses
  %i.aba = getelementptr inbounds nuw i8, ptr %i.aaz, i64 144 ; 10 uses
  %.sroa.01655.0.copyload = load ptr, ptr %i.aaz, align 8, !noalias !50427 ; 2 uses
  %.sroa.61656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aaz, i64 8
  %.sroa.61656.0.copyload = load i64, ptr %.sroa.61656.0..sroa_idx, align 8, !noalias !50427
  %.sroa.71657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aaz, i64 16
  %.sroa.71657.0.copyload = load i64, ptr %.sroa.71657.0..sroa_idx, align 8, !noalias !50427 ; 2 uses
  %.sroa.101658.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aaz, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.101658, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.101658.0..sroa_idx, i64 120, i1 false), !noalias !50427
  %.not370 = icmp eq i64 %.sroa.71657.0.copyload, -1
  br i1 %.not370, label %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTReNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB13_.exit.thread, label %bb.cp

bb.cp:                                            ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTReNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB13_.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01655.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dv)
  store i64 %.sroa.71657.0.copyload, ptr %i.dv, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %.sroa.101658.16..sroa_idx, ptr noundef nonnull align 8 dereferenceable(120) %.sroa.101658, i64 120, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.du)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dt)
  call void @llvm.experimental.noalias.scope.decl(metadata !50430)
  %i.abb = load i8, ptr %i.gc, align 8, !range !273, !noalias !50433, !noundef !29
  %i.abc = trunc nuw i8 %i.abb to i1
  br i1 %i.abc, label %._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i, label %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i.i, !prof !36

._RNvYNCNKNvNvMNtNtCsaKJjC64KgbL_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCskXtk6F4WjxZ_4just.exit_crit_edge.i.i.i: ; preds = %bb.cp
  %.pre.i.i.i = load i64, ptr %i.gb, align 8, !noalias !50442
  %.pre1.i.i.i = load i64, ptr %i.aad, align 8, !noalias !50442
  br label %bb.jh

_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i.i: ; preds = %bb.cp
  %i.abd = invoke { i64, i64 } @_RNvNtNtNtCsaKJjC64KgbL_3std3sys6random5linux19hashmap_random_keys()
          to label %.noexc723 unwind label %bb.jg ; 2 uses

.noexc723:                                        ; preds = %_RINvMs0_NtNtNtNtCsaKJjC64KgbL_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsj6eKBz9Db1c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECskXtk6F4WjxZ_4just.exit.i.i.i
  %i.abe = extractvalue { i64, i64 } %i.abd, 0
  %i.abf = extractvalue { i64, i64 } %i.abd, 1    ; 2 uses
  store i64 %i.abf, ptr %i.aad, align 8, !noalias !50443
  store i8 1, ptr %i.gc, align 8, !noalias !50443
  br label %bb.jh

_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTReNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB13_.exit.thread: ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTReNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB13_.exit, %bb.jw, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit719
  %i.abg = phi ptr [ %i.zb, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTNtNtCskXtk6F4WjxZ_4just12list_feature11ListFeatureNtNtB1u_5token5TokenEEEB1u_.exit719 ], [ %i.zd, %bb.jw ], [ %i.aba, %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTReNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB13_.exit ]
  store ptr %i.abg, ptr %.sroa.583.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.101658)
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterTReNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEEEB1w_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.dw)
          to label %bb.cq unwind label %bb.ci

bb.cq:                                            ; preds = %_RNvXs4_NtNtCs4wP2HXfJTCR_5alloc3vec9into_iterINtB5_8IntoIterTReNtNtCskXtk6F4WjxZ_4just10expression10ExpressionEENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4nextB13_.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dw)
  store ptr null, ptr %i.db, align 8
  %.sroa.5.0..sroa_idx.i724 = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i724, align 8
  %i.abh = load ptr, ptr %i.jq, align 8, !nonnull !29, !noundef !29 ; 5 uses
  %i.abi = load i64, ptr %i.jo, align 8, !range !306, !noundef !29 ; 6 uses
  %i.abj = load i64, ptr %i.jp, align 8, !noundef !29 ; 3 uses
  %i.abk = icmp ult i64 %i.abj, 1152921504606846976
  call void @llvm.assume(i1 %i.abk)
  %.idx3387 = shl nuw nsw i64 %i.abj, 3
  %i.abl = getelementptr inbounds nuw i8, ptr %i.abh, i64 %.idx3387
  %i.abm = icmp eq i64 %i.abj, 0
  br i1 %i.abm, label %._crit_edge3375, label %.lr.ph3374

.lr.ph3374:                                       ; preds = %bb.cq
  %i.abn = getelementptr inbounds nuw i8, ptr %i.ec, i64 280
  %i.abo = load i8, ptr %i.abn, align 8, !range !273, !noundef !29
  %i.abp = trunc nuw i8 %i.abo to i1
  %i.abq = getelementptr inbounds nuw i8, ptr %i.dp, i64 72
  %i.abr = getelementptr inbounds nuw i8, ptr %i.db, i64 8
  %i.abs = getelementptr inbounds nuw i8, ptr %i.ec, i64 283
  %.val596 = load i8, ptr %i.abs, align 1
  %i.abt = trunc nuw i8 %.val596 to i1
  %i.abu = getelementptr inbounds nuw i8, ptr %i.ec, i64 290
  %i.abv = load i8, ptr %i.abu, align 2, !range !273
  %i.abw = trunc nuw i8 %i.abv to i1
  %i.abx = getelementptr inbounds nuw i8, ptr %i.ec, i64 289
  %.val517 = load i8, ptr %i.abx, align 1
  %i.aby = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  br label %bb.cs

.body:                                            ; preds = %.loopexit2188, %.loopexit.split-lp2189, %.loopexit2193, %.loopexit.split-lp2194.loopexit.split-lp, %.loopexit.split-lp2194.loopexit, %bb.ix, %bb.iz, %bb.hx
  %.pn411 = phi { ptr, i32 } [ %i.ako, %bb.ix ], [ %lpad.phi2202, %bb.hx ], [ %i.akq, %bb.iz ], [ %lpad.loopexit.split-lp2204, %.loopexit.split-lp2194.loopexit.split-lp ], [ %lpad.loopexit2195, %.loopexit2193 ], [ %lpad.loopexit2203, %.loopexit.split-lp2194.loopexit ], [ %lpad.loopexit2190, %.loopexit2188 ], [ %lpad.loopexit.split-lp2191, %.loopexit.split-lp2189 ]
  %i.abz = icmp eq i64 %i.abi, 0
  br i1 %i.abz, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterRINtNtCskXtk6F4WjxZ_4just6recipe6RecipeNtNtB1v_21unresolved_dependency20UnresolvedDependencyEEEB1v_.exit, label %bb.cr

bb.cr:                                            ; preds = %.body
  %i.aca = shl nuw i64 %i.abi, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.abh, i64 noundef %i.aca, i64 noundef range(i64 1, -9223372036854775807) 8) #70, !noalias !50446
end_hunk_3
begin_hunk_4_@_RNvMs10_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_16BalancingContextReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1p_10expression10ExpressionEEE16bulk_steal_rightB1p_:bb.a

_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1x_10expression10ExpressionEENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB25_3ops5range5RangejEEB1x_.exit25: ; preds = %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1x_10expression10ExpressionEENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB25_3ops5range5RangejEEB1x_.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1x_10expression10ExpressionEENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB25_3ops5range5RangejEEB1x_.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1042) #75
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 2392 ; 8 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.d, i64 2392 ; 6 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.aj
  %i.bi = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bh, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bf, i64 %i.bi, i1 false), !alias.scope !62223
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %1
  %i.bk = shl nuw nsw i64 %i.o, 3
  %i.bl = add nuw nsw i64 %i.bk, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bf, ptr noundef nonnull align 8 dereferenceable(1) %i.bj, i64 %i.bl, i1 false), !alias.scope !62227
  %i.bm = icmp ult i16 %i.f, 11
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.aj
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 176
  store ptr %i.d, ptr %i.bp, align 8
  %i.bq = trunc nuw nsw i64 %i.aj to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 2384
  store i16 %i.bq, ptr %i.br, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1x_10expression10ExpressionEENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB25_3ops5range5RangejEEB1x_.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bs = add nuw nsw i64 %i.g, 2                 ; 2 uses
  %i.bt = icmp samesign ult i16 %i.f, 10
  tail call void @llvm.assume(i1 %i.bt)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bs
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 176
  store ptr %i.d, ptr %i.bw, align 8
  %i.bx = trunc nuw nsw i64 %i.bs to i16
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 2384
  store i16 %i.bx, ptr %i.by, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1x_10expression10ExpressionEENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB25_3ops5range5RangejEEB1x_.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bz = add nuw nsw i64 %i.g, 3                 ; 2 uses
  %i.ca = icmp samesign ult i16 %i.f, 9
  tail call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bz
  %i.cc = load ptr, ptr %i.cb, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 176
  store ptr %i.d, ptr %i.cd, align 8
  %i.ce = trunc nuw nsw i64 %i.bz to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cc, i64 2384
  store i16 %i.ce, ptr %i.cf, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1x_10expression10ExpressionEENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB25_3ops5range5RangejEEB1x_.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = add nuw nsw i64 %i.g, 4                 ; 2 uses
  %i.ch = icmp samesign ult i16 %i.f, 8
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.cg
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 176
  store ptr %i.d, ptr %i.ck, align 8
  %i.cl = trunc nuw nsw i64 %i.cg to i16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cj, i64 2384
  store i16 %i.cl, ptr %i.cm, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1x_10expression10ExpressionEENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB25_3ops5range5RangejEEB1x_.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cn = add nuw nsw i64 %i.g, 5                 ; 2 uses
  %i.co = icmp ne i16 %i.f, 7
  tail call void @llvm.assume(i1 %i.co)
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.cn
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 176
  store ptr %i.d, ptr %i.cr, align 8
  %i.cs = trunc nuw nsw i64 %i.cn to i16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cq, i64 2384
  store i16 %i.cs, ptr %i.ct, align 8
  br label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1x_10expression10ExpressionEENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB25_3ops5range5RangejEEB1x_.exit.preheader

_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1x_10expression10ExpressionEENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB25_3ops5range5RangejEEB1x_.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.cu = add nuw nsw i64 %i.l, 1
  %i.cv = sub nsw i64 %i.cu, %1                   ; 2 uses
  %xtraiter = and i64 %i.cv, 3                    ; 3 uses
  %i.cw = icmp samesign ult i64 %i.o, 3
  br i1 %i.cw, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1x_10expression10ExpressionEENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB25_3ops5range5RangejEEB1x_.exit.epil.preheader, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1x_10expression10ExpressionEENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB25_3ops5range5RangejEEB1x_.exit.preheader.new

_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1x_10expression10ExpressionEENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB25_3ops5range5RangejEEB1x_.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1x_10expression10ExpressionEENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB25_3ops5range5RangejEEB1x_.exit.preheader
  %unroll_iter = and i64 %i.cv, -4
  br label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1x_10expression10ExpressionEENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB25_3ops5range5RangejEEB1x_.exit

_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1x_10expression10ExpressionEENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB25_3ops5range5RangejEEB1x_.exit: ; preds = %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1x_10expression10ExpressionEENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB25_3ops5range5RangejEEB1x_.exit, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1x_10expression10ExpressionEENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB25_3ops5range5RangejEEB1x_.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1x_10expression10ExpressionEENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB25_3ops5range5RangejEEB1x_.exit.preheader.new ], [ %i.dp, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1x_10expression10ExpressionEENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB25_3ops5range5RangejEEB1x_.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1x_10expression10ExpressionEENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB25_3ops5range5RangejEEB1x_.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1x_10expression10ExpressionEENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB25_3ops5range5RangejEEB1x_.exit ]
  %i.cx = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %.sroa.0.06.i23
  %i.cz = load ptr, ptr %i.cy, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 176
  store ptr %i.i, ptr %i.da, align 8
  %i.db = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 2384
  store i16 %i.db, ptr %i.dc, align 8
  %i.dd = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.cx
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 176
  store ptr %i.i, ptr %i.dg, align 8
  %i.dh = trunc nuw nsw i64 %i.cx to i16
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 2384
  store i16 %i.dh, ptr %i.di, align 8
  %i.dj = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.dd
  %i.dl = load ptr, ptr %i.dk, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 176
  store ptr %i.i, ptr %i.dm, align 8
  %i.dn = trunc nuw nsw i64 %i.dd to i16
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 2384
  store i16 %i.dn, ptr %i.do, align 8
  %i.dp = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.dq = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.dq)
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %i.dj
  %i.ds = load ptr, ptr %i.dr, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 176
  store ptr %i.i, ptr %i.dt, align 8
  %i.du = trunc nuw nsw i64 %i.dj to i16
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 2384
  store i16 %i.du, ptr %i.dv, align 8
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1x_10expression10ExpressionEENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB25_3ops5range5RangejEEB1x_.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutReTNtNtCskXtk6F4WjxZ_4just4name4NameINtNtCsj6eKBz9Db1c_4core6option6OptionNtNtB1x_10expression10ExpressionEENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB25_3ops5range5RangejEEB1x_.exit
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_16BalancingContextlNtNtCsaKJjC64KgbL_3std7process7CommandE15bulk_steal_leftCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [200 x i8], align 8               ; 4 uses
  %.sroa.4 = alloca [204 x i8], align 4           ; 3 uses
  %i.b = alloca [200 x i8], align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !29, !noundef !29 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2254 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !noundef !29
  %i.g = zext i16 %i.f to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !29, !noundef !29 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2254 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !noundef !29
  %i.l = zext i16 %i.k to i64                     ; 5 uses
  %i.m = add nuw nsw i64 %1, %i.l                 ; 3 uses
  %i.n = icmp samesign ult i64 %i.m, 12
  br i1 %i.n, label %bb.c, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1033, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1034) #75
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.g
  br i1 %.not, label %bb.d, label %bb.e, !prof !340

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1035, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1036) #75
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = sub nuw nsw i64 %i.g, %1                 ; 4 uses
  %i.p = trunc nuw i64 %i.o to i16
  store i16 %i.p, ptr %i.e, align 2
  %i.q = trunc nuw nsw i64 %i.m to i16
  store i16 %i.q, ptr %i.j, align 2
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 2208 ; 4 uses
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %1
  %i.t = shl nuw nsw i64 %i.l, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.s, ptr nonnull align 4 %i.r, i64 %i.t, i1 false), !alias.scope !62230
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw [200 x i8], ptr %i.u, i64 %1
  %i.w = mul nuw nsw i64 %i.l, 200
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.u, i64 %i.w, i1 false), !alias.scope !62233
  %i.x = add nuw nsw i64 %i.o, 1                  ; 4 uses
  %i.y = sub nuw nsw i64 %i.g, %i.x               ; 5 uses
  %i.z = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !62239)
  %i.aa = icmp eq i64 %i.y, %i.z
  br i1 %i.aa, label %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceNtNtCsaKJjC64KgbL_3std7process7CommandECskXtk6F4WjxZ_4just.exit, label %bb.f, !prof !36

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @387, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @388) #75, !noalias !62241
  unreachable

_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceNtNtCsaKJjC64KgbL_3std7process7CommandECskXtk6F4WjxZ_4just.exit: ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 2208 ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.x
  %i.ad = shl nuw nsw i64 %i.y, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.r, ptr nonnull readonly align 4 %i.ac, i64 %i.ad, i1 false), !alias.scope !62241
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw [200 x i8], ptr %i.ae, i64 %i.x
  %i.ag = mul nuw nsw i64 %i.y, 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.u, ptr nonnull readonly align 8 %i.af, i64 %i.ag, i1 false), !alias.scope !62242
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.o
  %i.ai = load i32, ptr %i.ah, align 4, !noundef !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.aj = getelementptr inbounds nuw [200 x i8], ptr %i.ae, i64 %i.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.b, ptr noundef nonnull align 8 dereferenceable(200) %i.aj, i64 200, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.val18 = load ptr, ptr %0, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val19 = load i64, ptr %i.ak, align 8, !noundef !29 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.val18, i64 2208
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %.val19 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.val18, i64 8
  %i.ao = getelementptr inbounds nuw [200 x i8], ptr %i.an, i64 %.val19 ; 2 uses
  %i.ap = load i32, ptr %i.am, align 4, !noalias !62246, !noundef !29
  store i32 %i.ai, ptr %i.am, align 4, !noalias !62246
  %.sroa.4.8..sroa_idx20 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(200) %.sroa.4.8..sroa_idx20, ptr noundef nonnull align 8 dereferenceable(200) %i.ao, i64 200, i1 false), !noalias !62250
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(200) %i.b, i64 200, i1 false), !noalias !62251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.a, ptr noundef nonnull align 4 dereferenceable(200) %.sroa.4.8..sroa_idx20, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %i.y
  store i32 %i.ap, ptr %i.aq, align 4
  %i.ar = getelementptr inbounds nuw [200 x i8], ptr %i.u, i64 %i.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ar, ptr noundef nonnull align 8 dereferenceable(200) %i.a, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load i64, ptr %i.as, align 8, !noundef !29
  %i.au = icmp eq i64 %i.at, 0
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aw = load i64, ptr %i.av, align 8, !noundef !29
  %i.ax = icmp eq i64 %i.aw, 0                    ; 2 uses
  br i1 %i.au, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceNtNtCsaKJjC64KgbL_3std7process7CommandECskXtk6F4WjxZ_4just.exit
  br i1 %i.ax, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit, label %bb.j, !prof !36

bb.h:                                             ; preds = %_RINvNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4node13move_to_sliceNtNtCsaKJjC64KgbL_3std7process7CommandECskXtk6F4WjxZ_4just.exit
  br i1 %i.ax, label %bb.j, label %bb.k, !prof !340

_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.cc, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.loopexit.unr-lcssa ]
  %lcmp.mod25 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod25)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.ay, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.ay = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.sroa.0.06.i.epil
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.i, ptr %i.ba, align 8
  %i.bb = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 2252
  store i16 %i.bb, ptr %i.bc, align 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit, label %bb.i, !llvm.loop !62252

_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit: ; preds = %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1037) #75
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 2256 ; 8 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %1
  %i.bf = shl nuw nsw i64 %i.l, 3
  %i.bg = add nuw nsw i64 %i.bf, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull align 8 dereferenceable(1) %i.bd, i64 %i.bg, i1 false), !alias.scope !62253
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 2256
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.x
  %i.bj = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bd, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bi, i64 %i.bj, i1 false), !alias.scope !62256
  %i.bk = add nuw nsw i64 %1, %i.l
  %i.bl = add nuw nsw i64 %i.bk, 1                ; 2 uses
  %xtraiter = and i64 %i.bl, 3                    ; 3 uses
  %i.bm = icmp samesign ult i64 %i.m, 3
  br i1 %i.bm, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.bl, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.cc, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bn = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.sroa.0.06.i
  %i.bp = load ptr, ptr %i.bo, align 8, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.i, ptr %i.bp, align 8
  %i.bq = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bp, i64 2252
  store i16 %i.bq, ptr %i.br, align 4
  %i.bs = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bn
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.i, ptr %i.bu, align 8
  %i.bv = trunc nuw nsw i64 %i.bn to i16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bu, i64 2252
  store i16 %i.bv, ptr %i.bw, align 4
  %i.bx = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bs
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.i, ptr %i.bz, align 8
  %i.ca = trunc nuw nsw i64 %i.bs to i16
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bz, i64 2252
  store i16 %i.ca, ptr %i.cb, align 4
  %i.cc = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bx
  %i.ce = load ptr, ptr %i.cd, align 8, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.i, ptr %i.ce, align 8
  %i.cf = trunc nuw nsw i64 %i.bx to i16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 2252
  store i16 %i.cf, ptr %i.cg, align 4
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_16BalancingContextlNtNtCsaKJjC64KgbL_3std7process7CommandE16bulk_steal_rightCskXtk6F4WjxZ_4just(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [200 x i8], align 8               ; 4 uses
  %.sroa.4 = alloca [204 x i8], align 4           ; 3 uses
  %i.b = alloca [200 x i8], align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !29, !noundef !29 ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 2254 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !noundef !29 ; 6 uses
  %i.g = zext i16 %i.f to i64                     ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !29, !noundef !29 ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 2254 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !noundef !29
  %i.l = zext i16 %i.k to i64                     ; 3 uses
  %i.m = add nuw nsw i64 %1, %i.g                 ; 2 uses
  %i.n = icmp samesign ult i64 %i.m, 12
  br i1 %i.n, label %bb.c, label %bb.b, !prof !36

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1038, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1039) #75
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.l
  br i1 %.not, label %bb.d, label %bb.e, !prof !340

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1040, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1041) #75
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.o = sub nuw nsw i64 %i.l, %1                 ; 5 uses
  %i.p = trunc nuw nsw i64 %i.m to i16
  store i16 %i.p, ptr %i.e, align 2
  %i.q = trunc nuw i64 %i.o to i16
  store i16 %i.q, ptr %i.j, align 2
  %i.r = add nsw i64 %1, -1                       ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 2208 ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %i.r
  %i.u = load i32, ptr %i.t, align 4, !noundef !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw [200 x i8], ptr %i.v, i64 %i.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.b, ptr noundef nonnull align 8 dereferenceable(200) %i.w, i64 200, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  %.val21 = load ptr, ptr %0, align 8, !nonnull !29, !noundef !29 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val22 = load i64, ptr %i.x, align 8, !noundef !29 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.val21, i64 2208
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.val22 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.val21, i64 8
  %i.ab = getelementptr inbounds nuw [200 x i8], ptr %i.aa, i64 %.val22 ; 2 uses
  %i.ac = load i32, ptr %i.z, align 4, !noalias !62260, !noundef !29
  store i32 %i.u, ptr %i.z, align 4, !noalias !62260
  %.sroa.4.8..sroa_idx26 = getelementptr inbounds nuw i8, ptr %.sroa.4, i64 4 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(200) %.sroa.4.8..sroa_idx26, ptr noundef nonnull align 8 dereferenceable(200) %i.ab, i64 200, i1 false), !noalias !62264
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ab, ptr noundef nonnull readonly align 8 dereferenceable(200) %i.b, i64 200, i1 false), !noalias !62265
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.a, ptr noundef nonnull align 4 dereferenceable(200) %.sroa.4.8..sroa_idx26, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 2208 ; 2 uses
  %i.ae = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.g
  store i32 %i.ac, ptr %i.ae, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw [200 x i8], ptr %i.af, i64 %i.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(200) %i.ag, ptr noundef nonnull align 8 dereferenceable(200) %i.a, i64 200, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ah = add nuw nsw i64 %i.g, 1                 ; 5 uses
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.ah
  %i.aj = shl nuw nsw i64 %i.r, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr nonnull readonly align 4 %i.s, i64 %i.aj, i1 false), !alias.scope !62266
  %i.ak = getelementptr inbounds nuw [200 x i8], ptr %i.af, i64 %i.ah
  %i.al = mul nuw nsw i64 %i.r, 200
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr nonnull readonly align 8 %i.v, i64 %i.al, i1 false), !alias.scope !62270
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %1
  %i.an = shl nuw nsw i64 %i.o, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.s, ptr nonnull align 4 %i.am, i64 %i.an, i1 false), !alias.scope !62274
  %i.ao = getelementptr inbounds nuw [200 x i8], ptr %i.v, i64 %1
  %i.ap = mul nuw nsw i64 %i.o, 200
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.v, ptr nonnull align 8 %i.ao, i64 %i.ap, i1 false), !alias.scope !62277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !29
  %i.as = icmp eq i64 %i.ar, 0
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.au = load i64, ptr %i.at, align 8, !noundef !29
  %i.av = icmp eq i64 %i.au, 0                    ; 2 uses
  br i1 %i.as, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.av, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit25, label %bb.h, !prof !36

bb.g:                                             ; preds = %bb.e
  br i1 %i.av, label %bb.h, label %bb.i, !prof !340

_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit25, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil.preheader

_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader ], [ %i.de, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit25.loopexit.unr-lcssa ]
  %lcmp.mod32 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod32)
  br label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil

_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil: ; preds = %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.aw, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil ], [ 0, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil.preheader ]
  %i.aw = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.ax = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.ax)
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.0.06.i23.epil
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.i, ptr %i.az, align 8
  %i.ba = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 2252
  store i16 %i.ba, ptr %i.bb, align 4
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit25, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil, !llvm.loop !62280

_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit25: ; preds = %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @193, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1042) #75
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.i, i64 2256 ; 8 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 2256 ; 6 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ah
  %i.bf = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.be, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bc, i64 %i.bf, i1 false), !alias.scope !62281
  %i.bg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %1
  %i.bh = shl nuw nsw i64 %i.o, 3
  %i.bi = add nuw nsw i64 %i.bh, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.bc, ptr noundef nonnull align 8 dereferenceable(1) %i.bg, i64 %i.bi, i1 false), !alias.scope !62285
  %i.bj = icmp ult i16 %i.f, 11
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ah
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.d, ptr %i.bl, align 8
  %i.bm = trunc nuw nsw i64 %i.ah to i16
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 2252
  store i16 %i.bm, ptr %i.bn, align 4
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bo = add nuw nsw i64 %i.g, 2                 ; 2 uses
  %i.bp = icmp samesign ult i16 %i.f, 10
  tail call void @llvm.assume(i1 %i.bp)
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bo
  %i.br = load ptr, ptr %i.bq, align 8, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.d, ptr %i.br, align 8
  %i.bs = trunc nuw nsw i64 %i.bo to i16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 2252
  store i16 %i.bs, ptr %i.bt, align 4
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bu = add nuw nsw i64 %i.g, 3                 ; 2 uses
  %i.bv = icmp samesign ult i16 %i.f, 9
  tail call void @llvm.assume(i1 %i.bv)
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bu
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.d, ptr %i.bx, align 8
  %i.by = trunc nuw nsw i64 %i.bu to i16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 2252
  store i16 %i.by, ptr %i.bz, align 4
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = add nuw nsw i64 %i.g, 4                 ; 2 uses
  %i.cb = icmp samesign ult i16 %i.f, 8
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ca
  %i.cd = load ptr, ptr %i.cc, align 8, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.d, ptr %i.cd, align 8
  %i.ce = trunc nuw nsw i64 %i.ca to i16
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 2252
  store i16 %i.ce, ptr %i.cf, align 4
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cg = add nuw nsw i64 %i.g, 5                 ; 2 uses
  %i.ch = icmp ne i16 %i.f, 7
  tail call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cg
  %i.cj = load ptr, ptr %i.ci, align 8, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.d, ptr %i.cj, align 8
  %i.ck = trunc nuw nsw i64 %i.cg to i16
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cj, i64 2252
  store i16 %i.ck, ptr %i.cl, align 4
  br label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader

_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.cm = add nuw nsw i64 %i.l, 1
  %i.cn = sub nsw i64 %i.cm, %1                   ; 2 uses
  %xtraiter = and i64 %i.cn, 3                    ; 3 uses
  %i.co = icmp samesign ult i64 %i.o, 3
  br i1 %i.co, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.epil.preheader, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader.new

_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader
  %unroll_iter = and i64 %i.cn, -4
  br label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit

_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit: ; preds = %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader.new ], [ %i.de, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit ]
  %i.cp = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %.sroa.0.06.i23
  %i.cr = load ptr, ptr %i.cq, align 8, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.i, ptr %i.cr, align 8
  %i.cs = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 2252
  store i16 %i.cs, ptr %i.ct, align 4
  %i.cu = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cp
  %i.cw = load ptr, ptr %i.cv, align 8, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.i, ptr %i.cw, align 8
  %i.cx = trunc nuw nsw i64 %i.cp to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cw, i64 2252
  store i16 %i.cx, ptr %i.cy, align 4
  %i.cz = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cu
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.i, ptr %i.db, align 8
  %i.dc = trunc nuw nsw i64 %i.cu to i16
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 2252
  store i16 %i.dc, ptr %i.dd, align 4
  %i.de = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.df = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.df)
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bc, i64 %i.cz
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !29, !noundef !29 ; 2 uses
  store ptr %i.i, ptr %i.dh, align 8
  %i.di = trunc nuw nsw i64 %i.cz to i16
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 2252
  store i16 %i.di, ptr %i.dj, align 4
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCs4wP2HXfJTCR_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutlNtNtCsaKJjC64KgbL_3std7process7CommandNtB1a_8InternalE30correct_childrens_parent_linksINtNtNtCsj6eKBz9Db1c_4core3ops5range5RangejEECskXtk6F4WjxZ_4just.exit
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs1_CscRggLTdVSaO_11typed_arenaINtB5_9ChunkListINtNtNtNtCs4wP2HXfJTCR_5alloc11collections5btree3map8BTreeMapNtNtBV_6string6StringB1L_EE7reserveCskXtk6F4WjxZ_4just(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %0, i64 noundef %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = icmp ult i64 %1, 2
  %i.c = add i64 %1, -1
  %i.d = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.c, i1 true)
  %i.e = lshr i64 -1, %i.d
  %.sroa.05.0 = select i1 %i.b, i64 0, i64 %i.e   ; 2 uses
  %i.f = icmp eq i64 %.sroa.05.0, -1
  br i1 %i.f, label %bb.f, label %bb.b, !prof !340

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !306, !noundef !29
  %i.h = shl nuw i64 %i.g, 1
  %i.i = add nuw i64 %.sroa.05.0, 1
  %..i = tail call noundef i64 @llvm.umax.i64(i64 %i.i, i64 %i.h) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = mul i64 %..i, 24                         ; 3 uses
  %or.cond.i = icmp ugt i64 %..i, 384307168202282325
  br i1 %or.cond.i, label %bb.g, label %bb.c, !prof !297

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskXtk6F4WjxZ_4just.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #70, !noalias !62288
end_hunk_4
