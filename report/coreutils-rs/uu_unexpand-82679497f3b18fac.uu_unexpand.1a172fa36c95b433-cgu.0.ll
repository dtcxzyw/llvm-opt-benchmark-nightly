inline.NumInlined: 556
inline.NumDeleted: 388
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvCs2eSwMnb0Awh_11uu_unexpand8unexpand:bb.a
  store i64 %..i.i.i, ptr %.sroa.5.0..sroa_idx.i30, align 8, !alias.scope !552, !noalias !555
  br label %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtCs2eSwMnb0Awh_11uu_unexpand5InputENtNtB9_4read4Read4readB19_.exit.i

_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtCs2eSwMnb0Awh_11uu_unexpand5InputENtNtB9_4read4Read4readB19_.exit.i: ; preds = %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtCs2eSwMnb0Awh_11uu_unexpand5InputEB1m_.exit.thread.i.i, %bb.av, %bb.au
  %.merged.i.i = phi { i64, ptr } [ %i.gx, %_RNvXs5_NtNtCs7tKScEop1B6_5alloc2io5implsRShNtNtB7_4read4Read4read.exit.i.i ], [ %i.gk, %_RINvMNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6bufferNtB3_6Buffer8fill_bufQNtCs2eSwMnb0Awh_11uu_unexpand5InputEB1m_.exit.thread.i.i ], [ %i.gh, %bb.au ], [ %i.gi, %bb.av ] ; 2 uses
  %i.gz = extractvalue { i64, ptr } %.merged.i.i, 0
  %i.ha = extractvalue { i64, ptr } %.merged.i.i, 1 ; 4 uses
  %i.hb = ptrtoint ptr %i.ha to i64               ; 2 uses
  %i.hc = trunc nuw i64 %i.gz to i1
  br i1 %i.hc, label %bb.ax, label %bb.ba

bb.ax:                                            ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtCs2eSwMnb0Awh_11uu_unexpand5InputENtNtB9_4read4Read4readB19_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !488
  store i64 1, ptr %i.x, align 8, !noalias !488
  store ptr %.sroa.03.0.val, ptr %.sroa.445.0..sroa_idx.i, align 8, !noalias !488
  store i64 %.sroa.03.0.val24, ptr %.sroa.546.0..sroa_idx.i, align 8, !noalias !488
  store i8 0, ptr %i.bs, align 8, !noalias !488
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !604
  store i64 0, ptr %i.i, align 8, !noalias !604
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i55.i, align 8, !noalias !604
  store i64 0, ptr %.sroa.5.0..sroa_idx.i56.i, align 8, !noalias !604
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !604
  store i64 1610612768, ptr %i.bt, align 8, !noalias !604
  store ptr %i.i, ptr %i.h, align 8, !noalias !604
  store ptr @69, ptr %i.bu, align 8, !noalias !604
  %i.hd = call noundef zeroext i1 @_RNvXs_Cs46VsjAK4zfE_10os_displayNtB4_6QuotedNtNtCs6JMX4GRUq9U_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h) #21, !noalias !608
  br i1 %i.hd, label %bb.ay, label %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2eSwMnb0Awh_11uu_unexpand.exit.i, !prof !189

bb.ay:                                            ; preds = %bb.ax
  call void @_RNvNtCs6JMX4GRUq9U_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 55, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @59, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #22, !noalias !608
  unreachable

_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2eSwMnb0Awh_11uu_unexpand.exit.i: ; preds = %bb.ax
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.i, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !488
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !604
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !488
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #21, !noalias !609
  %i.he = call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef 8) #21, !noalias !609 ; 4 uses
  %i.hf = icmp eq ptr %i.he, null
  br i1 %i.hf, label %bb.az, label %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i, !prof !189

bb.az:                                            ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2eSwMnb0Awh_11uu_unexpand.exit.i
  call void @_RNvNtCs7tKScEop1B6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #24, !noalias !609
  unreachable

_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i: ; preds = %_RNvXsC_NtCs7tKScEop1B6_5alloc6stringNtCs46VsjAK4zfE_10os_display6QuotedNtB5_12SpecToString14spec_to_stringCs2eSwMnb0Awh_11uu_unexpand.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.he, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.05.i, i64 24, i1 false), !noalias !591
  %.sroa.4.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.he, i64 24
  store ptr %i.ha, ptr %.sroa.4.0..sroa_idx6.i, align 8, !noalias !591
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.05.i)
  br label %bb.bi

bb.ba:                                            ; preds = %_RNvXs4_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreaderINtB5_9BufReaderNtCs2eSwMnb0Awh_11uu_unexpand5InputENtNtB9_4read4Read4readB19_.exit.i
  %i.hg = icmp eq ptr %i.ha, null
  br i1 %i.hg, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.hh = call fastcc { ptr, ptr } @_RNvCs2eSwMnb0Awh_11uu_unexpand10write_tabs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %i.y, i1 noundef zeroext %i.bm) #21 ; 2 uses
  %i.hi = extractvalue { ptr, ptr } %i.hh, 0      ; 2 uses
  %.not51.i = icmp eq ptr %i.hi, null
  br i1 %.not51.i, label %bb.be, label %bb.bd

bb.bc:                                            ; preds = %bb.ba
  %i.hj = icmp ult ptr %i.ha, inttoptr (i64 129 to ptr)
  br i1 %i.hj, label %.preheader.i, label %bb.bm, !prof !612

bb.bd:                                            ; preds = %bb.bb
  %i.hk = extractvalue { ptr, ptr } %i.hh, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hk) ]
  br label %bb.bi

bb.be:                                            ; preds = %bb.bb
  call void @llvm.experimental.noalias.scope.decl(metadata !613)
  call void @llvm.experimental.noalias.scope.decl(metadata !616), !noalias !591
  %.val.i.i46 = load ptr, ptr %.sroa.414.0..sroa_idx.i, align 8, !alias.scope !619, !noalias !591, !nonnull !4, !noundef !4 ; 2 uses
  %.val1.i.i47 = load i64, ptr %.sroa.515.0..sroa_idx.i, align 8, !alias.scope !619, !noalias !591, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !620), !noalias !591
  %i.hl = icmp eq i64 %.val1.i.i47, 0
  br i1 %i.hl, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTjjIBw_hEEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs2eSwMnb0Awh_11uu_unexpand.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.be, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTjjINtNtCs7tKScEop1B6_5alloc3vec3VechEEECs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i.i
  %.sroa.0.04.i.i.i.i = phi i64 [ %i.hn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTjjINtNtCs7tKScEop1B6_5alloc3vec3VechEEECs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i.i ], [ 0, %bb.be ] ; 2 uses
  %i.hm = getelementptr inbounds nuw [40 x i8], ptr %.val.i.i46, i64 %.sroa.0.04.i.i.i.i ; 2 uses
  %i.hn = add nuw nsw i64 %.sroa.0.04.i.i.i.i, 1  ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hm, i64 16
  %.val.i.i.i.i = load i64, ptr %i.ho, align 8, !range !40, !alias.scope !620, !noalias !623, !noundef !4 ; 2 uses
  %i.hp = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.hp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTjjINtNtCs7tKScEop1B6_5alloc3vec3VechEEECs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i.i, label %bb.bf

bb.bf:                                            ; preds = %.lr.ph.i.i.i.i
  %i.hq = getelementptr i8, ptr %i.hm, i64 24
  %.val3.i.i.i.i = load ptr, ptr %i.hq, align 8, !alias.scope !620, !noalias !623, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !624
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTjjINtNtCs7tKScEop1B6_5alloc3vec3VechEEECs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTjjINtNtCs7tKScEop1B6_5alloc3vec3VechEEECs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i.i: ; preds = %bb.bf, %.lr.ph.i.i.i.i
  %i.hr = icmp eq i64 %i.hn, %.val1.i.i47
  br i1 %i.hr, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTjjIBw_hEEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs2eSwMnb0Awh_11uu_unexpand.exit.i.i, label %.lr.ph.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTjjIBw_hEEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs2eSwMnb0Awh_11uu_unexpand.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTjjINtNtCs7tKScEop1B6_5alloc3vec3VechEEECs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i.i, %bb.be
  %.val2.i.i48 = load i64, ptr %i.y, align 8, !range !40, !alias.scope !619, !noalias !591, !noundef !4 ; 2 uses
  %i.hs = icmp eq i64 %.val2.i.i48, 0
  br i1 %i.hs, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs2eSwMnb0Awh_11uu_unexpand10PrintStateEBD_.exit, label %bb.bg

bb.bg:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTjjIBw_hEEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs2eSwMnb0Awh_11uu_unexpand.exit.i.i
  %i.ht = mul nuw i64 %.val2.i.i48, 40
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i46, i64 noundef %i.ht, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !623
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs2eSwMnb0Awh_11uu_unexpand10PrintStateEBD_.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs2eSwMnb0Awh_11uu_unexpand10PrintStateEBD_.exit: ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTjjIBw_hEEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs2eSwMnb0Awh_11uu_unexpand.exit.i.i, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !488
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %.val1.i44 = load i64, ptr %.sroa.4.0..sroa_idx.i31, align 8, !alias.scope !625, !noalias !591, !noundef !4 ; 2 uses
  %i.hu = icmp eq i64 %.val1.i44, 0
  br i1 %i.hu, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs2eSwMnb0Awh_11uu_unexpand.exit.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs2eSwMnb0Awh_11uu_unexpand10PrintStateEBD_.exit
  %.val.i45 = load ptr, ptr %i.z, align 8, !alias.scope !625, !noalias !591, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i45, i64 noundef %.val1.i44, i64 noundef 1) #21, !noalias !628
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs2eSwMnb0Awh_11uu_unexpand.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs2eSwMnb0Awh_11uu_unexpand.exit.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs2eSwMnb0Awh_11uu_unexpand10PrintStateEBD_.exit
  %.val2.i = load i32, ptr %.sroa.611.0..sroa_idx.i, align 8, !range !513, !alias.scope !625, !noalias !591, !noundef !4
  %i.hv = icmp eq i32 %.val2.i, 0
  br i1 %i.hv, label %_RNvCs2eSwMnb0Awh_11uu_unexpand13unexpand_file.exit, label %bb.bh

bb.bh:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs2eSwMnb0Awh_11uu_unexpand.exit.i
  %.val3.i = load i32, ptr %.sroa.712.0..sroa_idx.i, align 4, !alias.scope !625, !noalias !591
  %i.hw = call noundef i32 @close(i32 noundef %.val3.i) #21, !noalias !628 ; 0 uses
  br label %_RNvCs2eSwMnb0Awh_11uu_unexpand13unexpand_file.exit

bb.bi:                                            ; preds = %_RNvCs2eSwMnb0Awh_11uu_unexpand12unexpand_buf.exit.thread38.i, %bb.bd, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i
  %.sroa.6.1.i = phi ptr [ %i.hk, %bb.bd ], [ @22, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %.sroa.13.1.i44.i, %_RNvCs2eSwMnb0Awh_11uu_unexpand12unexpand_buf.exit.thread38.i ] ; 2 uses
  %.sroa.0.1.i = phi ptr [ %i.hi, %bb.bd ], [ %i.he, %_RNvNtCs7tKScEop1B6_5alloc5boxed14box_new_uninit.exit.i ], [ %.sroa.0.1.i45.i, %_RNvCs2eSwMnb0Awh_11uu_unexpand12unexpand_buf.exit.thread38.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !629)
  call void @llvm.experimental.noalias.scope.decl(metadata !632)
  %.val.i.i.i = load ptr, ptr %.sroa.414.0..sroa_idx.i, align 8, !alias.scope !635, !noalias !488, !nonnull !4, !noundef !4 ; 2 uses
  %.val1.i.i.i = load i64, ptr %.sroa.515.0..sroa_idx.i, align 8, !alias.scope !635, !noalias !488, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !636)
  %i.hx = icmp eq i64 %.val1.i.i.i, 0
  br i1 %i.hx, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTjjIBw_hEEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.bi, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTjjINtNtCs7tKScEop1B6_5alloc3vec3VechEEECs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i.i.i
  %.sroa.0.04.i.i.i.i.i = phi i64 [ %i.hz, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTjjINtNtCs7tKScEop1B6_5alloc3vec3VechEEECs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i.i.i ], [ 0, %bb.bi ] ; 2 uses
  %i.hy = getelementptr inbounds nuw [40 x i8], ptr %.val.i.i.i, i64 %.sroa.0.04.i.i.i.i.i ; 2 uses
  %i.hz = add nuw nsw i64 %.sroa.0.04.i.i.i.i.i, 1 ; 2 uses
  %i.ia = getelementptr i8, ptr %i.hy, i64 16
  %.val.i.i.i.i.i = load i64, ptr %i.ia, align 8, !range !40, !alias.scope !636, !noalias !639, !noundef !4 ; 2 uses
  %i.ib = icmp eq i64 %.val.i.i.i.i.i, 0
  br i1 %i.ib, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTjjINtNtCs7tKScEop1B6_5alloc3vec3VechEEECs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i.i.i, label %bb.bj

bb.bj:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.ic = getelementptr i8, ptr %i.hy, i64 24
  %.val3.i.i.i.i.i = load ptr, ptr %i.ic, align 8, !alias.scope !636, !noalias !639, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #21, !noalias !640
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTjjINtNtCs7tKScEop1B6_5alloc3vec3VechEEECs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTjjINtNtCs7tKScEop1B6_5alloc3vec3VechEEECs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i.i.i: ; preds = %bb.bj, %.lr.ph.i.i.i.i.i
  %i.id = icmp eq i64 %i.hz, %.val1.i.i.i
  br i1 %i.id, label %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTjjIBw_hEEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTjjIBw_hEEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueTjjINtNtCs7tKScEop1B6_5alloc3vec3VechEEECs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i.i.i, %bb.bi
  %.val2.i.i.i = load i64, ptr %i.y, align 8, !range !40, !alias.scope !635, !noalias !488, !noundef !4 ; 2 uses
  %i.ie = icmp eq i64 %.val2.i.i.i, 0
  br i1 %i.ie, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs2eSwMnb0Awh_11uu_unexpand10PrintStateEBD_.exit.i, label %bb.bk

bb.bk:                                            ; preds = %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTjjIBw_hEEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i
  %i.if = mul nuw i64 %.val2.i.i.i, 40
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef %i.if, i64 noundef range(i64 1, -9223372036854775807) 8) #21, !noalias !639
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs2eSwMnb0Awh_11uu_unexpand10PrintStateEBD_.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs2eSwMnb0Awh_11uu_unexpand10PrintStateEBD_.exit.i: ; preds = %bb.bk, %_RNvXsp_NtCs7tKScEop1B6_5alloc3vecINtB5_3VecTjjIBw_hEEENtNtNtCs6JMX4GRUq9U_4core3ops4drop4Drop4dropCs2eSwMnb0Awh_11uu_unexpand.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !488
  call void @llvm.experimental.noalias.scope.decl(metadata !641)
  %.val1.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i31, align 8, !alias.scope !641, !noalias !488, !noundef !4 ; 2 uses
  %i.ig = icmp eq i64 %.val1.i.i, 0
  br i1 %i.ig, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs2eSwMnb0Awh_11uu_unexpand.exit.i.i, label %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i

_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs2eSwMnb0Awh_11uu_unexpand10PrintStateEBD_.exit.i
  %.val.i.i = load ptr, ptr %i.z, align 8, !alias.scope !641, !noalias !488, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val1.i.i, i64 noundef 1) #21, !noalias !644
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs2eSwMnb0Awh_11uu_unexpand.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs2eSwMnb0Awh_11uu_unexpand.exit.i.i: ; preds = %_RNvXs_NtCs7tKScEop1B6_5alloc5allocNtB4_6GlobalNtNtCs6JMX4GRUq9U_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs2eSwMnb0Awh_11uu_unexpand10PrintStateEBD_.exit.i
  %.val2.i.i = load i32, ptr %.sroa.611.0..sroa_idx.i, align 8, !range !513, !alias.scope !641, !noalias !488, !noundef !4
  %i.ih = icmp eq i32 %.val2.i.i, 0
  br i1 %i.ih, label %bb.dv, label %bb.bl

bb.bl:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufreader6buffer6BufferECs2eSwMnb0Awh_11uu_unexpand.exit.i.i
  %.val3.i.i = load i32, ptr %.sroa.712.0..sroa_idx.i, align 4, !alias.scope !641, !noalias !488
  %i.ii = call noundef i32 @close(i32 noundef %.val3.i.i) #21, !noalias !644 ; 0 uses
  br label %bb.dv

bb.bm:                                            ; preds = %bb.bc
  call void @_RNvNtNtCs6JMX4GRUq9U_4core5slice5index16slice_index_fail(i64 noundef 0, i64 noundef %i.hb, i64 noundef 128, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33) #22, !noalias !591
  unreachable

.preheader.i:                                     ; preds = %bb.bc, %_RNvMs1_Cs2eSwMnb0Awh_11uu_unexpandNtB5_10PrintState8new_line.exit.i
  %.sroa.03.0137.i = phi ptr [ %3, %_RNvMs1_Cs2eSwMnb0Awh_11uu_unexpandNtB5_10PrintState8new_line.exit.i ], [ %i.ag, %bb.bc ] ; 11 uses
  %.sroa.6.08136.i = phi i64 [ %i.it, %_RNvMs1_Cs2eSwMnb0Awh_11uu_unexpandNtB5_10PrintState8new_line.exit.i ], [ %i.hb, %bb.bc ] ; 5 uses
  %i.ij = getelementptr i8, ptr %.sroa.03.0137.i, i64 %.sroa.6.08136.i ; 2 uses
  %i.ik = icmp samesign eq i64 %.sroa.6.08136.i, 0
  br i1 %i.ik, label %_RNvXsm_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_14SplitInclusivehNCNvCs2eSwMnb0Awh_11uu_unexpand13unexpand_file0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB14_.exit.thread.loopexit.i, label %.lr.ph.i.i57.i

.lr.ph.i.i57.i:                                   ; preds = %.preheader.i, %bb.bn
  %.sroa.02.07.i.i.i = phi i64 [ %i.io, %bb.bn ], [ 0, %.preheader.i ] ; 3 uses
  %i.il = phi ptr [ %i.in, %bb.bn ], [ %.sroa.03.0137.i, %.preheader.i ] ; 2 uses
  %.val.i.i58.i = load i8, ptr %i.il, align 1, !alias.scope !486, !noalias !645, !noundef !4
  %i.im = icmp eq i8 %.val.i.i58.i, 10
  br i1 %i.im, label %_RNvXsm_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_14SplitInclusivehNCNvCs2eSwMnb0Awh_11uu_unexpand13unexpand_file0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB14_.exit.thread273.i, label %bb.bn

bb.bn:                                            ; preds = %.lr.ph.i.i57.i
  %i.in = getelementptr inbounds nuw i8, ptr %i.il, i64 1 ; 2 uses
  %i.io = add nuw i64 %.sroa.02.07.i.i.i, 1
  %i.ip = icmp eq ptr %i.in, %i.ij
  br i1 %i.ip, label %_RNvXsm_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_14SplitInclusivehNCNvCs2eSwMnb0Awh_11uu_unexpand13unexpand_file0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB14_.exit.i, label %.lr.ph.i.i57.i

_RNvXsm_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_14SplitInclusivehNCNvCs2eSwMnb0Awh_11uu_unexpand13unexpand_file0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB14_.exit.thread273.i: ; preds = %.lr.ph.i.i57.i
  %i.iq = add nuw i64 %.sroa.02.07.i.i.i, 1       ; 3 uses
  %i.ir = icmp eq i64 %i.iq, %.sroa.6.08136.i
  %i.is = sub nuw i64 %.sroa.6.08136.i, %i.iq
  %1 = getelementptr i8, ptr %.sroa.03.0137.i, i64 %.sroa.02.07.i.i.i
  %2 = getelementptr i8, ptr %1, i64 1
  br label %bb.bo

_RNvXsm_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_14SplitInclusivehNCNvCs2eSwMnb0Awh_11uu_unexpand13unexpand_file0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB14_.exit.i: ; preds = %bb.bn
  call void @llvm.experimental.noalias.scope.decl(metadata !650)
  call void @llvm.experimental.noalias.scope.decl(metadata !653)
  call void @llvm.experimental.noalias.scope.decl(metadata !655)
  br label %bb.bo

bb.bo:                                            ; preds = %_RNvXsm_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_14SplitInclusivehNCNvCs2eSwMnb0Awh_11uu_unexpand13unexpand_file0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB14_.exit.i, %_RNvXsm_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_14SplitInclusivehNCNvCs2eSwMnb0Awh_11uu_unexpand13unexpand_file0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB14_.exit.thread273.i
  %3 = phi ptr [ %2, %_RNvXsm_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_14SplitInclusivehNCNvCs2eSwMnb0Awh_11uu_unexpand13unexpand_file0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB14_.exit.thread273.i ], [ %i.ij, %_RNvXsm_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_14SplitInclusivehNCNvCs2eSwMnb0Awh_11uu_unexpand13unexpand_file0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB14_.exit.i ] ; 2 uses
  %i.it = phi i64 [ %i.is, %_RNvXsm_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_14SplitInclusivehNCNvCs2eSwMnb0Awh_11uu_unexpand13unexpand_file0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB14_.exit.thread273.i ], [ 0, %_RNvXsm_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_14SplitInclusivehNCNvCs2eSwMnb0Awh_11uu_unexpand13unexpand_file0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB14_.exit.i ]
  %.sroa.94.120278.i = phi i1 [ %i.ir, %_RNvXsm_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_14SplitInclusivehNCNvCs2eSwMnb0Awh_11uu_unexpand13unexpand_file0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB14_.exit.thread273.i ], [ true, %_RNvXsm_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_14SplitInclusivehNCNvCs2eSwMnb0Awh_11uu_unexpand13unexpand_file0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB14_.exit.i ]
  %.sroa.0.0.i19.i21277.i = phi i64 [ %i.iq, %_RNvXsm_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_14SplitInclusivehNCNvCs2eSwMnb0Awh_11uu_unexpand13unexpand_file0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB14_.exit.thread273.i ], [ %.sroa.6.08136.i, %_RNvXsm_NtNtCs6JMX4GRUq9U_4core5slice4iterINtB5_14SplitInclusivehNCNvCs2eSwMnb0Awh_11uu_unexpand13unexpand_file0ENtNtNtNtB9_4iter6traits8iterator8Iterator4nextB14_.exit.i ] ; 17 uses
  %i.iu = getelementptr i8, ptr %3, i64 -1        ; 2 uses
  %i.iv = load i8, ptr %i.iu, align 1, !alias.scope !657, !noalias !658, !noundef !4
  %i.iw = icmp ne i8 %i.iv, 10
  %or.cond141.i.i = select i1 %i.iw, i1 true, i1 %i.bm
  br i1 %or.cond141.i.i, label %..lr.ph.i_crit_edge.i, label %bb.bp

..lr.ph.i_crit_edge.i:                            ; preds = %bb.bo
  %.pre.i.pre.i = load i64, ptr %i.bg, align 8, !alias.scope !655, !noalias !660
  br label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.cb, %bb.bx, %..lr.ph.i_crit_edge.i
  %.ph = phi i64 [ %.pre.i.pre221.i, %bb.bx ], [ %.pre.i.pre221.i, %bb.cb ], [ %.pre.i.pre.i, %..lr.ph.i_crit_edge.i ]
  br label %.lr.ph.i.i

bb.bp:                                            ; preds = %bb.bo
  %i.ix = load i8, ptr %.sroa.03.0137.i, align 1, !alias.scope !657, !noalias !658, !noundef !4 ; 2 uses
  %i.iy = icmp eq i8 %i.ix, 32
  br i1 %i.iy, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %.old1.i.i = load i8, ptr %i.bi, align 8, !range !173, !alias.scope !655, !noalias !660, !noundef !4
  %.old2.i.i = trunc nuw i8 %.old1.i.i to i1
  br i1 %.old2.i.i, label %bb.bx, label %bb.bs

bb.br:                                            ; preds = %bb.bp
  %i.iz = icmp eq i8 %i.ix, 9
  %i.ja = load i8, ptr %i.bi, align 8, !range !173, !alias.scope !655, !noalias !660
  %i.jb = trunc nuw i8 %i.ja to i1
  %or.cond3.i.i = select i1 %i.iz, i1 %i.jb, i1 false
  br i1 %or.cond3.i.i, label %bb.bx, label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.jc = call fastcc { ptr, ptr } @_RNvCs2eSwMnb0Awh_11uu_unexpand10write_tabs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.y, i1 noundef zeroext false) #21 ; 2 uses
  %i.jd = extractvalue { ptr, ptr } %i.jc, 0      ; 2 uses
  %.not109.i.i = icmp eq ptr %i.jd, null
  br i1 %.not109.i.i, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.je = extractvalue { ptr, ptr } %i.jc, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.je) ]
  br label %_RNvCs2eSwMnb0Awh_11uu_unexpand12unexpand_buf.exit.thread38.i

bb.bu:                                            ; preds = %bb.bs
  %i.jf = load i64, ptr %i.bg, align 8, !alias.scope !655, !noalias !660, !noundef !4 ; 2 uses
  store i64 %i.jf, ptr %i.bh, align 8, !alias.scope !655, !noalias !660
  %i.jg = add i64 %i.jf, %.sroa.0.0.i19.i21277.i
  store i64 %i.jg, ptr %i.bg, align 8, !alias.scope !655, !noalias !660
  %i.jh = load i64, ptr %i.af, align 8, !range !40, !alias.scope !661, !noalias !662, !noundef !4
  %i.ji = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !661, !noalias !662, !noundef !4 ; 4 uses
  %i.jj = icmp sgt i64 %i.ji, -1
  call void @llvm.assume(i1 %i.jj)
  %i.jk = sub nsw i64 %i.jh, %i.ji
  %i.jl = icmp ult i64 %.sroa.0.0.i19.i21277.i, %i.jk
  br i1 %i.jl, label %bb.bw, label %bb.bv, !prof !179

bb.bv:                                            ; preds = %bb.bu
  %i.jm = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs2eSwMnb0Awh_11uu_unexpand(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0137.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i19.i21277.i) #20, !noalias !663 ; 2 uses
  %.not110.i.i = icmp eq ptr %i.jm, null
  br i1 %.not110.i.i, label %_RNvCs2eSwMnb0Awh_11uu_unexpand12unexpand_buf.exit.thread.thread.i, label %_RNvCs2eSwMnb0Awh_11uu_unexpand12unexpand_buf.exit.i

bb.bw:                                            ; preds = %bb.bu
  %i.jn = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !661, !noalias !662, !nonnull !4, !noundef !4
  %i.jo = getelementptr inbounds nuw i8, ptr %i.jn, i64 %i.ji
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.jo, ptr nonnull readonly align 1 %.sroa.03.0137.i, i64 range(i64 0, -9223372036854775808) %.sroa.0.0.i19.i21277.i, i1 false), !noalias !663
  %i.jp = add nuw i64 %i.ji, %.sroa.0.0.i19.i21277.i
  store i64 %i.jp, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !661, !noalias !662
  br label %_RNvCs2eSwMnb0Awh_11uu_unexpand12unexpand_buf.exit.thread.thread.i

bb.bx:                                            ; preds = %bb.br, %bb.bq
  %.pre.i.pre221.i = load i64, ptr %i.bg, align 8, !alias.scope !655, !noalias !660 ; 3 uses
  br i1 %i.bn, label %.preheader, label %.lr.ph.i.i.preheader

.preheader:                                       ; preds = %bb.bx, %bb.ca
  %.sroa.051.0135.i.i = phi i1 [ %.sroa.051.1.i.i, %bb.ca ], [ false, %bb.bx ] ; 2 uses
  %.sroa.047.0134.i.i = phi i64 [ %.sroa.047.1.i.i, %bb.ca ], [ %.pre.i.pre221.i, %bb.bx ] ; 4 uses
  %.sroa.036.0133.i.i = phi i64 [ %i.jy, %bb.ca ], [ 0, %bb.bx ] ; 3 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.03.0137.i, i64 %.sroa.036.0133.i.i
  %i.jr = load i8, ptr %i.jq, align 1, !alias.scope !657, !noalias !658, !noundef !4 ; 2 uses
  switch i8 %i.jr, label %bb.cb [
    i8 32, label %bb.by
    i8 9, label %bb.bz
  ]

bb.by:                                            ; preds = %.preheader
  %i.js = add i64 %.sroa.047.0134.i.i, 1
  br label %bb.ca

bb.bz:                                            ; preds = %.preheader
  %i.jt = call fastcc { i64, i64 } @_RNvCs2eSwMnb0Awh_11uu_unexpand12next_tabstop(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, i64 noundef %.sroa.047.0134.i.i) #21, !noalias !655 ; 2 uses
  %i.ju = extractvalue { i64, i64 } %i.jt, 0
  %i.jv = trunc nuw i64 %i.ju to i1
  %i.jw = extractvalue { i64, i64 } %i.jt, 1
  %.sroa.052.0.i.i = select i1 %i.jv, i64 %i.jw, i64 1
  %i.jx = add i64 %.sroa.052.0.i.i, %.sroa.047.0134.i.i
  br label %bb.ca

bb.ca:                                            ; preds = %bb.bz, %bb.by
  %.sroa.047.1.i.i = phi i64 [ %i.js, %bb.by ], [ %i.jx, %bb.bz ] ; 2 uses
  %.sroa.051.1.i.i = phi i1 [ %.sroa.051.0135.i.i, %bb.by ], [ true, %bb.bz ] ; 2 uses
  %i.jy = add nuw nsw i64 %.sroa.036.0133.i.i, 1  ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.jy, %.sroa.0.0.i19.i21277.i
  br i1 %exitcond.not.i.i, label %.thread11.i.i, label %.preheader

bb.cb:                                            ; preds = %.preheader
  %i.jz = icmp sgt i8 %i.jr, -1
  br i1 %i.jz, label %.thread11.i.i, label %.lr.ph.i.i.preheader

.thread11.i.i:                                    ; preds = %bb.ca, %bb.cb
  %.sroa.036.0132.i.i = phi i64 [ %.sroa.036.0133.i.i, %bb.cb ], [ %.sroa.0.0.i19.i21277.i, %bb.ca ] ; 3 uses
  %.sroa.047.0130.i.i = phi i64 [ %.sroa.047.0134.i.i, %bb.cb ], [ %.sroa.047.1.i.i, %bb.ca ]
  %.sroa.051.0128.i.i = phi i1 [ %.sroa.051.0135.i.i, %bb.cb ], [ %.sroa.051.1.i.i, %bb.ca ]
  %i.ka = phi i1 [ true, %bb.cb ], [ false, %bb.ca ]
  store i64 %.sroa.047.0130.i.i, ptr %i.bg, align 8, !alias.scope !655, !noalias !660
  br i1 %.sroa.051.0128.i.i, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cd, %.thread11.i.i
  %.not120.i.i = icmp eq i64 %.sroa.036.0132.i.i, 0
  br i1 %.not120.i.i, label %bb.cf, label %bb.ce

bb.cd:                                            ; preds = %.thread11.i.i
  store i8 2, ptr %i.bj, align 1, !alias.scope !655, !noalias !660
  br label %bb.cc

bb.ce:                                            ; preds = %bb.cc
  %i.kb = call fastcc { ptr, ptr } @_RNvCs2eSwMnb0Awh_11uu_unexpand10write_tabs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.af, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.y, i1 noundef zeroext false) #21 ; 2 uses
  %i.kc = extractvalue { ptr, ptr } %i.kb, 0      ; 2 uses
  %.not121.i.i = icmp eq ptr %i.kc, null
  br i1 %.not121.i.i, label %bb.cf, label %bb.cg

bb.cf:                                            ; preds = %bb.ce, %bb.cc
  br i1 %i.ka, label %bb.ch, label %_RNvCs2eSwMnb0Awh_11uu_unexpand12unexpand_buf.exit.thread.thread.i

bb.cg:                                            ; preds = %bb.ce
  %i.kd = extractvalue { ptr, ptr } %i.kb, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kd) ]
  br label %_RNvCs2eSwMnb0Awh_11uu_unexpand12unexpand_buf.exit.thread38.i

bb.ch:                                            ; preds = %bb.cf
  store i8 0, ptr %i.bi, align 8, !alias.scope !655, !noalias !660
  %i.ke = sub nuw nsw i64 %.sroa.0.0.i19.i21277.i, %.sroa.036.0132.i.i ; 4 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.03.0137.i, i64 %.sroa.036.0132.i.i ; 2 uses
  %i.kg = load i64, ptr %i.af, align 8, !range !40, !alias.scope !661, !noalias !662, !noundef !4
  %i.kh = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !661, !noalias !662, !noundef !4 ; 4 uses
  %i.ki = icmp sgt i64 %i.kh, -1
  call void @llvm.assume(i1 %i.ki)
  %i.kj = sub nsw i64 %i.kg, %i.kh
  %i.kk = icmp ult i64 %i.ke, %i.kj
  br i1 %i.kk, label %bb.cj, label %bb.ci, !prof !179

bb.ci:                                            ; preds = %bb.ch
  %i.kl = call noundef ptr @_RNvMs_NtNtNtCs7tKScEop1B6_5alloc2io8buffered9bufwriterINtB4_9BufWriterNtNtNtCs2vKOLqTMYjT_3std2io5stdio6StdoutE14write_all_coldCs2eSwMnb0Awh_11uu_unexpand(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.af, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.kf, i64 noundef %i.ke) #20, !noalias !663 ; 2 uses
  %.not122.i.i = icmp eq ptr %i.kl, null
  br i1 %.not122.i.i, label %_RNvCs2eSwMnb0Awh_11uu_unexpand12unexpand_buf.exit.thread.thread.i, label %_RNvCs2eSwMnb0Awh_11uu_unexpand12unexpand_buf.exit.i

bb.cj:                                            ; preds = %bb.ch
  %i.km = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !661, !noalias !662, !nonnull !4, !noundef !4
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kh
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.kn, ptr nonnull readonly align 1 %i.kf, i64 %i.ke, i1 false), !noalias !663
  %i.ko = add nuw i64 %i.kh, %i.ke
  store i64 %i.ko, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !661, !noalias !662
  br label %_RNvCs2eSwMnb0Awh_11uu_unexpand12unexpand_buf.exit.thread.thread.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.de
  %i.kp = phi i64 [ %i.mp, %bb.de ], [ %.ph, %.lr.ph.i.i.preheader ]
  %.sroa.022.0137.i.i = phi i64 [ %i.mq, %bb.de ], [ 0, %.lr.ph.i.i.preheader ] ; 14 uses
  %.sroa.106.0136.i.i = phi i64 [ %.sroa.106.5.i.i, %bb.de ], [ undef, %.lr.ph.i.i.preheader ] ; 6 uses
  %i.kq = freeze i64 %i.kp                        ; 8 uses
  %or.cond13.i.i = icmp ult i64 %i.bo, %i.kq
  br i1 %or.cond13.i.i, label %bb.co, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !664)
  %i.kr = getelementptr inbounds nuw i8, ptr %.sroa.03.0137.i, i64 %.sroa.022.0137.i.i ; 6 uses
  %i.ks = load i8, ptr %i.kr, align 1, !alias.scope !667, !noalias !668, !noundef !4 ; 2 uses
  %i.kt = icmp sgt i8 %i.ks, -1
  br i1 %i.kt, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  br i1 %i.bp, label %bb.cn, label %bb.cp

bb.cm:                                            ; preds = %bb.ck
  switch i8 %i.ks, label %bb.cp [
    i8 32, label %.thread63.i.i
    i8 9, label %.thread29.i.i
    i8 8, label %.thread191.i.i
  ]

bb.cn:                                            ; preds = %bb.cl
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !670
  call void @_RNvNtNtCsh036I4OHgIr_6uucore8features10char_width12char_info_at(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0137.i, i64 noundef range(i64 0, -9223372036854775808) %.sroa.0.0.i19.i21277.i, i64 noundef range(i64 0, 9223372036854775807) %.sroa.022.0137.i.i) #21, !noalias !671
  %i.ku = load i32, ptr %i.bq, align 8, !range !672, !noalias !670, !noundef !4
  %i.kv = load i64, ptr %i.g, align 8, !noalias !670, !noundef !4 ; 5 uses
  %i.kw = load i64, ptr %i.br, align 8, !noalias !670, !noundef !4 ; 12 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !670
  switch i32 %i.ku, label %bb.cp [
    i32 8192, label %bb.cq
    i32 5760, label %bb.cq
    i32 8287, label %bb.cq
    i32 12288, label %bb.cq
    i32 8202, label %bb.cq
    i32 8201, label %bb.cq
end_hunk_0
